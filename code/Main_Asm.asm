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
x279:	mov word [bp], $Path	; 5: -57 70 0 -51 51
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
x346:	mov word [bp + 16], string_argc3A2025i0A#	; 5: -57 70 16 -23 2

main$2:	; parameter argc, offset 8
x351:	mov ax, [bp + 6]	; 3: -117 70 6
x354:	mov [bp + 18], ax	; 3: -119 70 18

main$3:	; call function noellipse-ellipse printf, extra 0
x357:	mov word [bp + 10], main$4	; 5: -57 70 10 120 1
x362:	mov [bp + 12], bp	; 3: -119 110 12
x365:	add bp, 10	; 3: -125 -59 10
x368:	mov di, bp	; 2: -119 -17
x370:	add di, 2	; 3: -125 -57 2
x373:	jmp printf	; 3: -23 48 2

main$4:	; post call

main$5:	; index = 0
x376:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

main$6:	; if index >= argc goto 18
x381:	mov ax, [bp + 6]	; 3: -117 70 6
x384:	cmp [bp + 10], ax	; 3: 57 70 10
x387:	jge main$18	; 2: 125 54

main$7:	; call header integral zero 0 stack zero 0

main$8:	; parameter string_25i3A203C25s3E0A#, offset 6
x389:	mov word [bp + 18], string_25i3A203C25s3E0A#	; 5: -57 70 18 -13 2

main$9:	; parameter index, offset 8
x394:	mov ax, [bp + 10]	; 3: -117 70 10
x397:	mov [bp + 20], ax	; 3: -119 70 20

main$10:	; £temporary60 = index * 2
x400:	mov ax, [bp + 10]	; 3: -117 70 10
x403:	xor dx, dx	; 2: 49 -46
x405:	mul word [int2$2#]	; 4: -9 38 -3 2

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
x435:	jmp printf	; 3: -23 -14 1

main$15:	; post call

main$16:	; ++index
x438:	inc word [bp + 10]	; 3: -1 70 10

main$17:	; goto 6
x441:	jmp main$6	; 2: -21 -62

main$18:	; call header integral zero 0 stack zero 0

main$19:	; parameter string_0A#, offset 6
x443:	mov word [bp + 18], string_0A#	; 5: -57 70 18 -1 2

main$20:	; call function noellipse-ellipse printf, extra 0
x448:	mov word [bp + 12], main$21	; 5: -57 70 12 -48 1
x453:	mov [bp + 14], bp	; 3: -119 110 14
x456:	add bp, 12	; 3: -125 -59 12
x459:	mov di, bp	; 2: -119 -17
x461:	jmp printf	; 3: -23 -40 1

main$21:	; post call

main$22:	; index = 0
x464:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

main$23:	; £temporary65 = index * 2
x469:	mov ax, [bp + 10]	; 3: -117 70 10
x472:	xor dx, dx	; 2: 49 -46
x474:	mul word [int2$2#]	; 4: -9 38 -3 2

main$24:	; £temporary66 = argv + £temporary65
x478:	mov si, [bp + 8]	; 3: -117 118 8
x481:	add si, ax	; 2: 1 -58

main$25:	; £temporary64 -> £temporary66 = *£temporary66

main$26:	; if £temporary64 -> £temporary66 == 0 goto 38
x483:	cmp word [si], 0	; 3: -125 60 0
x486:	je main$38	; 2: 116 54

main$27:	; call header integral zero 0 stack zero 0

main$28:	; parameter string_25i3A203C25s3E0A#, offset 6
x488:	mov word [bp + 18], string_25i3A203C25s3E0A#	; 5: -57 70 18 -13 2

main$29:	; parameter index, offset 8
x493:	mov ax, [bp + 10]	; 3: -117 70 10
x496:	mov [bp + 20], ax	; 3: -119 70 20

main$30:	; £temporary70 = index * 2
x499:	mov ax, [bp + 10]	; 3: -117 70 10
x502:	xor dx, dx	; 2: 49 -46
x504:	mul word [int2$2#]	; 4: -9 38 -3 2

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
x534:	jmp printf	; 3: -23 -113 1

main$35:	; post call

main$36:	; ++index
x537:	inc word [bp + 10]	; 3: -1 70 10

main$37:	; goto 23
x540:	jmp main$23	; 2: -21 -73

main$38:	; call header integral zero 0 stack zero 0

main$39:	; parameter string_0A#, offset 6
x542:	mov word [bp + 18], string_0A#	; 5: -57 70 18 -1 2

main$40:	; call function noellipse-ellipse printf, extra 0
x547:	mov word [bp + 12], main$41	; 5: -57 70 12 51 2
x552:	mov [bp + 14], bp	; 3: -119 110 14
x555:	add bp, 12	; 3: -125 -59 12
x558:	mov di, bp	; 2: -119 -17
x560:	jmp printf	; 3: -23 117 1

main$41:	; post call

main$42:	; call header integral zero 0 stack zero 0

main$43:	; parameter 0, offset 6
x563:	mov word [bp + 49], 0	; 5: -57 70 49 0 0

main$44:	; call function noellipse-noellipse mktime
x568:	mov word [bp + 43], main$45	; 5: -57 70 43 70 2
x573:	mov [bp + 45], bp	; 3: -119 110 45
x576:	add bp, 43	; 3: -125 -59 43
x579:	jmp mktime	; 3: -23 17 32

main$45:	; post call

main$46:	; call header integral zero 0 stack zero 0

main$47:	; parameter string_Hello210A#, offset 6
x582:	mov word [bp + 49], string_Hello210A#	; 5: -57 70 49 1 3

main$48:	; call function noellipse-ellipse printf, extra 0
x587:	mov word [bp + 43], main$49	; 5: -57 70 43 91 2
x592:	mov [bp + 45], bp	; 3: -119 110 45
x595:	add bp, 43	; 3: -125 -59 43
x598:	mov di, bp	; 2: -119 -17
x600:	jmp printf	; 3: -23 77 1

main$49:	; post call

main$50:	; call header integral zero 0 stack zero 0

main$51:	; parameter string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#, offset 6
x603:	mov word [bp + 49], string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#	; 5: -57 70 49 9 3

main$52:	; call function noellipse-ellipse printf, extra 0
x608:	mov word [bp + 43], main$53	; 5: -57 70 43 112 2
x613:	mov [bp + 45], bp	; 3: -119 110 45
x616:	add bp, 43	; 3: -125 -59 43
x619:	mov di, bp	; 2: -119 -17
x621:	jmp printf	; 3: -23 56 1

main$53:	; post call

main$54:	; call header integral zero 0 stack zero 0

main$55:	; parameter string_25c2025s2025i2025lf#, offset 6
x624:	mov word [bp + 49], string_25c2025s2025i2025lf#	; 5: -57 70 49 72 3

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
x676:	jmp scanf	; 3: -23 -79 32

main$64:	; post call

main$65:	; call header integral zero 0 stack zero 0

main$66:	; parameter string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#, offset 6
x679:	mov word [bp + 49], string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#	; 5: -57 70 49 85 3

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
x736:	jmp printf	; 3: -23 -59 0

main$74:	; post call

main$75:	; exit 0
x739:	mov al, 0	; 2: -80 0
x741:	mov ah, 76	; 2: -76 76
x743:	int 33	; 2: -51 33

main$76:	; function end main

string_argc3A2025i0A#:
x745:	db "argc: %i", 10, 0	; 10: 97 114 103 99 58 32 37 105 10 0

string_25i3A203C25s3E0A#:
x755:	db "%i: <%s>", 10, 0	; 10: 37 105 58 32 60 37 115 62 10 0

int2$2#:
x765:	dw 2	; 2: 2 0

string_0A#:
x767:	db 10, 0	; 2: 10 0

string_Hello210A#:
x769:	db "Hello!", 10, 0	; 8: 72 101 108 108 111 33 10 0

string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#:
x777:	db "Please write a character, a string, an integer, and a double: ", 0	; 63: 80 108 101 97 115 101 32 119 114 105 116 101 32 97 32 99 104 97 114 97 99 116 101 114 44 32 97 32 115 116 114 105 110 103 44 32 97 110 32 105 110 116 101 103 101 114 44 32 97 110 100 32 97 32 100 111 117 98 108 101 58 32 0

string_25c2025s2025i2025lf#:
x840:	db "%c %s %i %lf", 0	; 13: 37 99 32 37 115 32 37 105 32 37 108 102 0

string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#:
x853:	db "You wrote the character ", 39, "%c", 39, ", the string ", 34, "%s", 34, ", the integer %i, and the double %f.", 10, 0	; 83: 89 111 117 32 119 114 111 116 101 32 116 104 101 32 99 104 97 114 97 99 116 101 114 32 39 37 99 39 44 32 116 104 101 32 115 116 114 105 110 103 32 34 37 115 34 44 32 116 104 101 32 105 110 116 101 103 101 114 32 37 105 44 32 97 110 100 32 116 104 101 32 100 111 117 98 108 101 32 37 102 46 10 0

printf:	; £temporary2432 = &format
x936:	mov si, bp	; 2: -119 -18
x938:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2433 = int_to_int £temporary2432 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2433 + 2
x941:	add si, 2	; 3: -125 -58 2
x944:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; call header integral zero 0 stack zero 0

printf$4:	; parameter format, offset 6
x947:	mov ax, [bp + 6]	; 3: -117 70 6
x950:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; parameter arg_list, offset 8
x953:	mov ax, [di + 8]	; 3: -117 69 8
x956:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; call function ellipse-noellipse vprintf
x959:	mov word [di + 10], printf$7	; 5: -57 69 10 -46 3
x964:	mov [di + 12], bp	; 3: -119 109 12
x967:	mov [di + 14], di	; 3: -119 125 14
x970:	add di, 10	; 3: -125 -57 10
x973:	mov bp, di	; 2: -119 -3
x975:	nop	; 1: -112
x976:	jmp vprintf	; 2: -21 11

printf$7:	; post call

printf$8:	; £temporary2435 = return_value

printf$9:	; return_value = £temporary2435

printf$10:	; return
x978:	mov ax, [bp]	; 3: -117 70 0
x981:	mov di, [bp + 4]	; 3: -117 126 4
x984:	mov bp, [bp + 2]	; 3: -117 110 2
x987:	jmp ax	; 2: -1 -32

printf$11:	; function end printf

vprintf:	; call header integral zero 0 stack zero 0

vprintf$1:	; parameter stdout, offset 6
x989:	mov ax, [stdout]	; 3: -95 8 4
x992:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; parameter format, offset 8
x995:	mov ax, [bp + 6]	; 3: -117 70 6
x998:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; parameter arg_list, offset 10
x1001:	mov ax, [bp + 8]	; 3: -117 70 8
x1004:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; call function noellipse-noellipse vfprintf
x1007:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 -3 3
x1012:	mov [bp + 12], bp	; 3: -119 110 12
x1015:	add bp, 10	; 3: -125 -59 10
x1018:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; post call

vprintf$6:	; £temporary2439 = return_value

vprintf$7:	; return_value = £temporary2439

vprintf$8:	; return
x1021:	mov ax, [bp]	; 3: -117 70 0
x1024:	mov di, [bp + 4]	; 3: -117 126 4
x1027:	mov bp, [bp + 2]	; 3: -117 110 2
x1030:	jmp ax	; 2: -1 -32

vprintf$9:	; function end vprintf

stdout:
x1032:	dw g_fileArray + 29	; 2: 39 4

g_fileArray:
x1034:	dw 1	; 2: 1 0
x1036:	dw 0	; 2: 0 0
x1038:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x1063:	dw 1	; 2: 1 0
x1065:	dw 1	; 2: 1 0
x1067:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x1092:	dw 1	; 2: 1 0
x1094:	dw 2	; 2: 2 0
x1096:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x1121:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

vfprintf:	; g_outStatus = 0
x1614:	mov word [g_outStatus], 0	; 6: -57 6 127 6 0 0

vfprintf$1:	; £temporary2451 = int_to_int outStream (Pointer -> Pointer)
x1620:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2451
x1623:	mov [g_outDevice], ax	; 3: -93 -127 6

vfprintf$3:	; call header integral zero 0 stack zero 0

vfprintf$4:	; parameter format, offset 6
x1626:	mov ax, [bp + 8]	; 3: -117 70 8
x1629:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; parameter arg_list, offset 8
x1632:	mov ax, [bp + 10]	; 3: -117 70 10
x1635:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; call function noellipse-noellipse printFormat
x1638:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 116 6
x1643:	mov [bp + 14], bp	; 3: -119 110 14
x1646:	add bp, 12	; 3: -125 -59 12
x1649:	nop	; 1: -112
x1650:	jmp printFormat	; 2: -21 15

vfprintf$7:	; post call

vfprintf$8:	; £temporary2452 = return_value

vfprintf$9:	; return_value = £temporary2452

vfprintf$10:	; return
x1652:	mov ax, [bp]	; 3: -117 70 0
x1655:	mov di, [bp + 4]	; 3: -117 126 4
x1658:	mov bp, [bp + 2]	; 3: -117 110 2
x1661:	jmp ax	; 2: -1 -32

vfprintf$11:	; function end vfprintf

g_outStatus:
x1663:	db 0, 0	; 2: 0 0

g_outDevice:
x1665:	db 0, 0	; 2: 0 0

printFormat:	; width = 0
x1667:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; precision = 0
x1672:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; percent = 0
x1677:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; plus = 0
x1682:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; minus = 0
x1687:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; space = 0
x1692:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; zero = 0
x1697:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; grid = 0
x1702:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; widthStar = 0
x1707:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; period = 0
x1712:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; precisionStar = 0
x1717:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; shortInt = 0
x1722:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; longInt = 0
x1727:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; longDouble = 0
x1732:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; g_outChars = 0
x1737:	mov word [g_outChars], 0	; 6: -57 6 -45 11 0 0

printFormat$15:	; index = 0
x1743:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2286 = format + index
x1748:	mov si, [bp + 6]	; 3: -117 118 6
x1751:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2285 -> £temporary2286 = *£temporary2286

printFormat$18:	; if £temporary2285 -> £temporary2286 == 0 goto 282
x1754:	cmp byte [si], 0	; 3: -128 60 0
x1757:	je printFormat$282	; 4: 15 -124 -52 4

printFormat$19:	; £temporary2290 = format + index
x1761:	mov si, [bp + 6]	; 3: -117 118 6
x1764:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2289 -> £temporary2290 = *£temporary2290

printFormat$21:	; c = £temporary2289 -> £temporary2290
x1767:	mov al, [si]	; 2: -118 4
x1769:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 260
x1772:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x1776:	je printFormat$260	; 4: 15 -124 81 4

printFormat$23:	; case c == 43 goto 52
x1780:	mov al, [bp + 40]	; 3: -118 70 40
x1783:	cmp al, 43	; 2: 60 43
x1785:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; case c == 45 goto 54
x1789:	cmp al, 45	; 2: 60 45
x1791:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; case c == 32 goto 56
x1795:	cmp al, 32	; 2: 60 32
x1797:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; case c == 48 goto 58
x1801:	cmp al, 48	; 2: 60 48
x1803:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; case c == 35 goto 60
x1807:	cmp al, 35	; 2: 60 35
x1809:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; case c == 46 goto 62
x1813:	cmp al, 46	; 2: 60 46
x1815:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; case c == 42 goto 64
x1819:	cmp al, 42	; 2: 60 42
x1821:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; case c == 104 goto 69
x1825:	cmp al, 104	; 2: 60 104
x1827:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; case c == 108 goto 71
x1831:	cmp al, 108	; 2: 60 108
x1833:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; case c == 76 goto 73
x1837:	cmp al, 76	; 2: 60 76
x1839:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; case c == 37 goto 75
x1843:	cmp al, 37	; 2: 60 37
x1845:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; case c == 110 goto 75
x1849:	cmp al, 110	; 2: 60 110
x1851:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; case c == 112 goto 75
x1855:	cmp al, 112	; 2: 60 112
x1857:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; case c == 71 goto 75
x1861:	cmp al, 71	; 2: 60 71
x1863:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; case c == 103 goto 75
x1867:	cmp al, 103	; 2: 60 103
x1869:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; case c == 69 goto 75
x1873:	cmp al, 69	; 2: 60 69
x1875:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; case c == 101 goto 75
x1879:	cmp al, 101	; 2: 60 101
x1881:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; case c == 102 goto 75
x1885:	cmp al, 102	; 2: 60 102
x1887:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; case c == 115 goto 75
x1891:	cmp al, 115	; 2: 60 115
x1893:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; case c == 99 goto 75
x1897:	cmp al, 99	; 2: 60 99
x1899:	je printFormat$75	; 2: 116 125

printFormat$43:	; case c == 88 goto 75
x1901:	cmp al, 88	; 2: 60 88
x1903:	je printFormat$75	; 2: 116 121

printFormat$44:	; case c == 120 goto 75
x1905:	cmp al, 120	; 2: 60 120
x1907:	je printFormat$75	; 2: 116 117

printFormat$45:	; case c == 111 goto 75
x1909:	cmp al, 111	; 2: 60 111
x1911:	je printFormat$75	; 2: 116 113

printFormat$46:	; case c == 98 goto 75
x1913:	cmp al, 98	; 2: 60 98
x1915:	je printFormat$75	; 2: 116 109

printFormat$47:	; case c == 117 goto 75
x1917:	cmp al, 117	; 2: 60 117
x1919:	je printFormat$75	; 2: 116 105

printFormat$48:	; case c == 100 goto 75
x1921:	cmp al, 100	; 2: 60 100
x1923:	je printFormat$75	; 2: 116 101

printFormat$49:	; case c == 105 goto 75
x1925:	cmp al, 105	; 2: 60 105
x1927:	je printFormat$75	; 2: 116 97

printFormat$50:	; case end c

printFormat$51:	; goto 237
x1929:	jmp printFormat$237	; 3: -23 70 3

printFormat$52:	; plus = 1
x1932:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 280
x1937:	jmp printFormat$280	; 3: -23 19 4

printFormat$54:	; minus = 1
x1940:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 280
x1945:	jmp printFormat$280	; 3: -23 11 4

printFormat$56:	; space = 1
x1948:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 280
x1953:	jmp printFormat$280	; 3: -23 3 4

printFormat$58:	; zero = 1
x1956:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 280
x1961:	jmp printFormat$280	; 3: -23 -5 3

printFormat$60:	; grid = 1
x1964:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 280
x1969:	jmp printFormat$280	; 3: -23 -13 3

printFormat$62:	; period = 1
x1972:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 280
x1977:	jmp printFormat$280	; 3: -23 -21 3

printFormat$64:	; if period != 0 goto 67
x1980:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x1984:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x1986:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 280
x1991:	jmp printFormat$280	; 3: -23 -35 3

printFormat$67:	; precision = -1
x1994:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 280
x1999:	jmp printFormat$280	; 3: -23 -43 3

printFormat$69:	; shortInt = 1
x2002:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 280
x2007:	jmp printFormat$280	; 3: -23 -51 3

printFormat$71:	; longInt = 1
x2010:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 280
x2015:	jmp printFormat$280	; 3: -23 -59 3

printFormat$73:	; longDouble = 1
x2018:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 280
x2023:	jmp printFormat$280	; 3: -23 -67 3

printFormat$75:	; if minus == 0 goto 106
x2026:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x2030:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x2034:	mov ax, [g_outChars]	; 3: -95 -45 11
x2037:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; call header integral zero 0 stack zero 0

printFormat$78:	; £temporary2294 = format + index
x2040:	mov si, [bp + 6]	; 3: -117 118 6
x2043:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2293 -> £temporary2294 = *£temporary2294

printFormat$80:	; £temporary2295 = &£temporary2293 -> £temporary2294

printFormat$81:	; parameter £temporary2295, offset 6
x2046:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; parameter arg_list, offset 8
x2049:	mov ax, [bp + 8]	; 3: -117 70 8
x2052:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; parameter plus, offset 10
x2055:	mov ax, [bp + 18]	; 3: -117 70 18
x2058:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; parameter space, offset 12
x2061:	mov ax, [bp + 22]	; 3: -117 70 22
x2064:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; parameter grid, offset 14
x2067:	mov ax, [bp + 26]	; 3: -117 70 26
x2070:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; £temporary2296 = &width
x2073:	mov si, bp	; 2: -119 -18
x2075:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2296, offset 16
x2078:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; parameter precision, offset 18
x2081:	mov ax, [bp + 14]	; 3: -117 70 14
x2084:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; parameter shortInt, offset 20
x2087:	mov ax, [bp + 34]	; 3: -117 70 34
x2090:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; parameter longInt, offset 22
x2093:	mov ax, [bp + 36]	; 3: -117 70 36
x2096:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; parameter longDouble, offset 24
x2099:	mov ax, [bp + 38]	; 3: -117 70 38
x2102:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; parameter 1, offset 26
x2105:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; parameter 0, offset 28
x2110:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; call function noellipse-noellipse printArgument
x2115:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 81 8
x2120:	mov [bp + 45], bp	; 3: -119 110 45
x2123:	add bp, 43	; 3: -125 -59 43
x2126:	jmp printArgument	; 3: -23 -122 3

printFormat$95:	; post call

printFormat$96:	; £temporary2297 = return_value

printFormat$97:	; arg_list = £temporary2297
x2129:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2299 = g_outChars - startChars
x2132:	mov ax, [g_outChars]	; 3: -95 -45 11
x2135:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x2138:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2299 >= width goto 235
x2141:	cmp ax, [bp + 12]	; 3: 59 70 12
x2144:	jge printFormat$235	; 4: 15 -115 102 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x2148:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x2152:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 118 8
x2157:	mov [bp + 47], bp	; 3: -119 110 47
x2160:	add bp, 45	; 3: -125 -59 45
x2163:	jmp printChar	; 3: -23 116 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x2166:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 182
x2168:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x2172:	je printFormat$182	; 4: 15 -124 82 1

printFormat$107:	; startChars = g_outChars
x2176:	mov ax, [g_outChars]	; 3: -95 -45 11
x2179:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$108:	; oldOutStatus = g_outStatus
x2182:	mov ax, [g_outStatus]	; 3: -95 127 6
x2185:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$109:	; negative = 0
x2188:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$110:	; g_outStatus = 2
x2193:	mov word [g_outStatus], 2	; 6: -57 6 127 6 2 0

printFormat$111:	; call header integral zero 0 stack zero 0

printFormat$112:	; £temporary2303 = format + index
x2199:	mov si, [bp + 6]	; 3: -117 118 6
x2202:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2302 -> £temporary2303 = *£temporary2303

printFormat$114:	; £temporary2304 = &£temporary2302 -> £temporary2303

printFormat$115:	; parameter £temporary2304, offset 6
x2205:	mov [bp + 53], si	; 3: -119 118 53

printFormat$116:	; parameter arg_list, offset 8
x2208:	mov ax, [bp + 8]	; 3: -117 70 8
x2211:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$117:	; parameter 0, offset 10
x2214:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$118:	; parameter 0, offset 12
x2219:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$119:	; parameter grid, offset 14
x2224:	mov ax, [bp + 26]	; 3: -117 70 26
x2227:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$120:	; £temporary2305 = &width
x2230:	mov si, bp	; 2: -119 -18
x2232:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2305, offset 16
x2235:	mov [bp + 63], si	; 3: -119 118 63

printFormat$122:	; parameter precision, offset 18
x2238:	mov ax, [bp + 14]	; 3: -117 70 14
x2241:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$123:	; parameter shortInt, offset 20
x2244:	mov ax, [bp + 34]	; 3: -117 70 34
x2247:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$124:	; parameter longInt, offset 22
x2250:	mov ax, [bp + 36]	; 3: -117 70 36
x2253:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$125:	; parameter longDouble, offset 24
x2256:	mov ax, [bp + 38]	; 3: -117 70 38
x2259:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$126:	; parameter 0, offset 26
x2262:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$127:	; £temporary2306 = &negative
x2267:	mov si, bp	; 2: -119 -18
x2269:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2306, offset 28
x2272:	mov [bp + 75], si	; 3: -119 118 75

printFormat$129:	; call function noellipse-noellipse printArgument
x2275:	mov word [bp + 47], printFormat$130	; 5: -57 70 47 -15 8
x2280:	mov [bp + 49], bp	; 3: -119 110 49
x2283:	add bp, 47	; 3: -125 -59 47
x2286:	jmp printArgument	; 3: -23 -26 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x2289:	mov ax, [bp + 43]	; 3: -117 70 43
x2292:	mov [g_outStatus], ax	; 3: -93 127 6

printFormat$132:	; field = g_outChars - startChars
x2295:	mov ax, [g_outChars]	; 3: -95 -45 11
x2298:	sub ax, [bp + 41]	; 3: 43 70 41
x2301:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x2304:	mov ax, [bp + 41]	; 3: -117 70 41
x2307:	mov [g_outChars], ax	; 3: -93 -45 11

printFormat$134:	; if negative == 0 goto 141
x2310:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x2314:	je printFormat$141	; 2: 116 23

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 45, offset 6
x2316:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$137:	; call function noellipse-noellipse printChar
x2320:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 30 9
x2325:	mov [bp + 51], bp	; 3: -119 110 51
x2328:	add bp, 49	; 3: -125 -59 49
x2331:	jmp printChar	; 3: -23 -52 9

printFormat$138:	; post call

printFormat$139:	; ++field
x2334:	inc word [bp + 47]	; 3: -1 70 47

printFormat$140:	; goto 154
x2337:	jmp printFormat$154	; 2: -21 57

printFormat$141:	; if plus == 0 goto 148
x2339:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x2343:	je printFormat$148	; 2: 116 23

printFormat$142:	; call header integral zero 0 stack zero 0

printFormat$143:	; parameter 43, offset 6
x2345:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$144:	; call function noellipse-noellipse printChar
x2349:	mov word [bp + 49], printFormat$145	; 5: -57 70 49 59 9
x2354:	mov [bp + 51], bp	; 3: -119 110 51
x2357:	add bp, 49	; 3: -125 -59 49
x2360:	jmp printChar	; 3: -23 -81 9

printFormat$145:	; post call

printFormat$146:	; ++field
x2363:	inc word [bp + 47]	; 3: -1 70 47

printFormat$147:	; goto 154
x2366:	jmp printFormat$154	; 2: -21 28

printFormat$148:	; if space == 0 goto 154
x2368:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x2372:	je printFormat$154	; 2: 116 22

printFormat$149:	; call header integral zero 0 stack zero 0

printFormat$150:	; parameter 32, offset 6
x2374:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$151:	; call function noellipse-noellipse printChar
x2378:	mov word [bp + 49], printFormat$152	; 5: -57 70 49 88 9
x2383:	mov [bp + 51], bp	; 3: -119 110 51
x2386:	add bp, 49	; 3: -125 -59 49
x2389:	jmp printChar	; 3: -23 -110 9

printFormat$152:	; post call

printFormat$153:	; £temporary2318 = field + 1
x2392:	mov ax, [bp + 47]	; 3: -117 70 47
x2395:	inc ax	; 1: 64

printFormat$154:	; ++field
x2396:	inc word [bp + 47]	; 3: -1 70 47

printFormat$155:	; if £temporary2318 >= width goto 161
x2399:	cmp ax, [bp + 12]	; 3: 59 70 12
x2402:	jge printFormat$161	; 2: 125 20

printFormat$156:	; call header integral zero 0 stack zero 0

printFormat$157:	; parameter 48, offset 6
x2404:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$158:	; call function noellipse-noellipse printChar
x2408:	mov word [bp + 49], printFormat$159	; 5: -57 70 49 118 9
x2413:	mov [bp + 51], bp	; 3: -119 110 51
x2416:	add bp, 49	; 3: -125 -59 49
x2419:	jmp printChar	; 3: -23 116 9

printFormat$159:	; post call

printFormat$160:	; goto 154
x2422:	jmp printFormat$154	; 2: -21 -28

printFormat$161:	; call header integral zero 0 stack zero 0

printFormat$162:	; £temporary2322 = format + index
x2424:	mov si, [bp + 6]	; 3: -117 118 6
x2427:	add si, [bp + 10]	; 3: 3 118 10

printFormat$163:	; £temporary2321 -> £temporary2322 = *£temporary2322

printFormat$164:	; £temporary2323 = &£temporary2321 -> £temporary2322

printFormat$165:	; parameter £temporary2323, offset 6
x2430:	mov [bp + 55], si	; 3: -119 118 55

printFormat$166:	; parameter arg_list, offset 8
x2433:	mov ax, [bp + 8]	; 3: -117 70 8
x2436:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$167:	; parameter 0, offset 10
x2439:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$168:	; parameter 0, offset 12
x2444:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$169:	; parameter grid, offset 14
x2449:	mov ax, [bp + 26]	; 3: -117 70 26
x2452:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$170:	; parameter 0, offset 16
x2455:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$171:	; parameter precision, offset 18
x2460:	mov ax, [bp + 14]	; 3: -117 70 14
x2463:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$172:	; parameter shortInt, offset 20
x2466:	mov ax, [bp + 34]	; 3: -117 70 34
x2469:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$173:	; parameter longInt, offset 22
x2472:	mov ax, [bp + 36]	; 3: -117 70 36
x2475:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$174:	; parameter longDouble, offset 24
x2478:	mov ax, [bp + 38]	; 3: -117 70 38
x2481:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$175:	; parameter 0, offset 26
x2484:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$176:	; parameter 0, offset 28
x2489:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$177:	; call function noellipse-noellipse printArgument
x2494:	mov word [bp + 49], printFormat$178	; 5: -57 70 49 -52 9
x2499:	mov [bp + 51], bp	; 3: -119 110 51
x2502:	add bp, 49	; 3: -125 -59 49
x2505:	jmp printArgument	; 3: -23 11 2

printFormat$178:	; post call

printFormat$179:	; £temporary2324 = return_value

printFormat$180:	; arg_list = £temporary2324
x2508:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$181:	; goto 235
x2511:	jmp printFormat$235	; 3: -23 -8 0

printFormat$182:	; startChars = g_outChars
x2514:	mov ax, [g_outChars]	; 3: -95 -45 11
x2517:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$183:	; oldOutStatus = g_outStatus
x2520:	mov ax, [g_outStatus]	; 3: -95 127 6
x2523:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$184:	; g_outStatus = 2
x2526:	mov word [g_outStatus], 2	; 6: -57 6 127 6 2 0

printFormat$185:	; call header integral zero 0 stack zero 0

printFormat$186:	; £temporary2326 = format + index
x2532:	mov si, [bp + 6]	; 3: -117 118 6
x2535:	add si, [bp + 10]	; 3: 3 118 10

printFormat$187:	; £temporary2325 -> £temporary2326 = *£temporary2326

printFormat$188:	; £temporary2327 = &£temporary2325 -> £temporary2326

printFormat$189:	; parameter £temporary2327, offset 6
x2538:	mov [bp + 51], si	; 3: -119 118 51

printFormat$190:	; parameter arg_list, offset 8
x2541:	mov ax, [bp + 8]	; 3: -117 70 8
x2544:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$191:	; parameter plus, offset 10
x2547:	mov ax, [bp + 18]	; 3: -117 70 18
x2550:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$192:	; parameter space, offset 12
x2553:	mov ax, [bp + 22]	; 3: -117 70 22
x2556:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$193:	; parameter grid, offset 14
x2559:	mov ax, [bp + 26]	; 3: -117 70 26
x2562:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$194:	; £temporary2328 = &width
x2565:	mov si, bp	; 2: -119 -18
x2567:	add si, 12	; 3: -125 -58 12

printFormat$195:	; parameter £temporary2328, offset 16
x2570:	mov [bp + 61], si	; 3: -119 118 61

printFormat$196:	; parameter precision, offset 18
x2573:	mov ax, [bp + 14]	; 3: -117 70 14
x2576:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$197:	; parameter shortInt, offset 20
x2579:	mov ax, [bp + 34]	; 3: -117 70 34
x2582:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$198:	; parameter longInt, offset 22
x2585:	mov ax, [bp + 36]	; 3: -117 70 36
x2588:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$199:	; parameter longDouble, offset 24
x2591:	mov ax, [bp + 38]	; 3: -117 70 38
x2594:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$200:	; parameter 1, offset 26
x2597:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$201:	; parameter 0, offset 28
x2602:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$202:	; call function noellipse-noellipse printArgument
x2607:	mov word [bp + 45], printFormat$203	; 5: -57 70 45 61 10
x2612:	mov [bp + 47], bp	; 3: -119 110 47
x2615:	add bp, 45	; 3: -125 -59 45
x2618:	jmp printArgument	; 3: -23 -102 1

printFormat$203:	; post call

printFormat$204:	; g_outStatus = oldOutStatus
x2621:	mov ax, [bp + 43]	; 3: -117 70 43
x2624:	mov [g_outStatus], ax	; 3: -93 127 6

printFormat$205:	; field = g_outChars - startChars
x2627:	mov ax, [g_outChars]	; 3: -95 -45 11
x2630:	sub ax, [bp + 41]	; 3: 43 70 41
x2633:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$206:	; g_outChars = startChars
x2636:	mov ax, [bp + 41]	; 3: -117 70 41
x2639:	mov [g_outChars], ax	; 3: -93 -45 11

printFormat$207:	; £temporary2331 = field
x2642:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$208:	; ++field
x2645:	inc word [bp + 45]	; 3: -1 70 45

printFormat$209:	; if £temporary2331 >= width goto 215
x2648:	cmp ax, [bp + 12]	; 3: 59 70 12
x2651:	jge printFormat$215	; 2: 125 20

printFormat$210:	; call header integral zero 0 stack zero 0

printFormat$211:	; parameter 32, offset 6
x2653:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$212:	; call function noellipse-noellipse printChar
x2657:	mov word [bp + 47], printFormat$213	; 5: -57 70 47 111 10
x2662:	mov [bp + 49], bp	; 3: -119 110 49
x2665:	add bp, 47	; 3: -125 -59 47
x2668:	jmp printChar	; 3: -23 123 8

printFormat$213:	; post call

printFormat$214:	; goto 207
x2671:	jmp printFormat$207	; 2: -21 -31

printFormat$215:	; call header integral zero 0 stack zero 0

printFormat$216:	; £temporary2335 = format + index
x2673:	mov si, [bp + 6]	; 3: -117 118 6
x2676:	add si, [bp + 10]	; 3: 3 118 10

printFormat$217:	; £temporary2334 -> £temporary2335 = *£temporary2335

printFormat$218:	; £temporary2336 = &£temporary2334 -> £temporary2335

printFormat$219:	; parameter £temporary2336, offset 6
x2679:	mov [bp + 53], si	; 3: -119 118 53

printFormat$220:	; parameter arg_list, offset 8
x2682:	mov ax, [bp + 8]	; 3: -117 70 8
x2685:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$221:	; parameter plus, offset 10
x2688:	mov ax, [bp + 18]	; 3: -117 70 18
x2691:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$222:	; parameter space, offset 12
x2694:	mov ax, [bp + 22]	; 3: -117 70 22
x2697:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$223:	; parameter grid, offset 14
x2700:	mov ax, [bp + 26]	; 3: -117 70 26
x2703:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$224:	; parameter 0, offset 16
x2706:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$225:	; parameter precision, offset 18
x2711:	mov ax, [bp + 14]	; 3: -117 70 14
x2714:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$226:	; parameter shortInt, offset 20
x2717:	mov ax, [bp + 34]	; 3: -117 70 34
x2720:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$227:	; parameter longInt, offset 22
x2723:	mov ax, [bp + 36]	; 3: -117 70 36
x2726:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$228:	; parameter longDouble, offset 24
x2729:	mov ax, [bp + 38]	; 3: -117 70 38
x2732:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$229:	; parameter 1, offset 26
x2735:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$230:	; parameter 0, offset 28
x2740:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$231:	; call function noellipse-noellipse printArgument
x2745:	mov word [bp + 47], printFormat$232	; 5: -57 70 47 -57 10
x2750:	mov [bp + 49], bp	; 3: -119 110 49
x2753:	add bp, 47	; 3: -125 -59 47
x2756:	jmp printArgument	; 3: -23 16 1

printFormat$232:	; post call

printFormat$233:	; £temporary2337 = return_value

printFormat$234:	; arg_list = £temporary2337
x2759:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$235:	; percent = 0
x2762:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$236:	; goto 280
x2767:	jmp printFormat$280	; 3: -23 -43 0

printFormat$237:	; value = 0
x2770:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$238:	; call header integral zero 0 stack zero 0

printFormat$239:	; £temporary2340 = int_to_int c (Signed_Char -> Signed_Int)
x2775:	mov al, [bp + 40]	; 3: -118 70 40
x2778:	and ax, 255	; 3: 37 -1 0
x2781:	cmp al, 0	; 2: 60 0
x2783:	jge printFormat$240	; 2: 125 4
x2785:	neg al	; 2: -10 -40
x2787:	neg ax	; 2: -9 -40

printFormat$240:	; parameter £temporary2340, offset 6
x2789:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$241:	; call function noellipse-noellipse isdigit
x2792:	mov word [bp + 43], printFormat$242	; 5: -57 70 43 -10 10
x2797:	mov [bp + 45], bp	; 3: -119 110 45
x2800:	add bp, 43	; 3: -125 -59 43
x2803:	jmp isdigit	; 3: -23 66 23

printFormat$242:	; post call

printFormat$243:	; £temporary2341 = return_value

printFormat$244:	; if £temporary2341 == 0 goto 254
x2806:	cmp bx, 0	; 3: -125 -5 0
x2809:	je printFormat$254	; 2: 116 49

printFormat$245:	; £temporary2342 = value * 10
x2811:	mov ax, [bp + 41]	; 3: -117 70 41
x2814:	xor dx, dx	; 2: 49 -46
x2816:	imul word [int2$10#]	; 4: -9 46 -43 11

printFormat$246:	; £temporary2343 = c - 48
x2820:	mov bl, [bp + 40]	; 3: -118 94 40
x2823:	sub bl, 48	; 3: -128 -21 48

printFormat$247:	; £temporary2344 = int_to_int £temporary2343 (Signed_Char -> Signed_Int)
x2826:	and bx, 255	; 4: -127 -29 -1 0
x2830:	cmp bl, 0	; 3: -128 -5 0
x2833:	jge printFormat$248	; 2: 125 4
x2835:	neg bl	; 2: -10 -37
x2837:	neg bx	; 2: -9 -37

printFormat$248:	; value = £temporary2342 + £temporary2344
x2839:	add ax, bx	; 2: 1 -40
x2841:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$249:	; £temporary2346 = index + 1
x2844:	mov ax, [bp + 10]	; 3: -117 70 10
x2847:	inc ax	; 1: 64

printFormat$250:	; £temporary2348 = format + £temporary2346
x2848:	mov si, [bp + 6]	; 3: -117 118 6
x2851:	add si, ax	; 2: 1 -58

printFormat$251:	; £temporary2347 -> £temporary2348 = *£temporary2348

printFormat$252:	; c = £temporary2347 -> £temporary2348
x2853:	mov al, [si]	; 2: -118 4
x2855:	mov [bp + 40], al	; 3: -120 70 40

printFormat$253:	; goto 238
x2858:	jmp printFormat$238	; 2: -21 -85

printFormat$254:	; --index
x2860:	dec word [bp + 10]	; 3: -1 78 10

printFormat$255:	; if period != 0 goto 258
x2863:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x2867:	jne printFormat$258	; 2: 117 8

printFormat$256:	; width = value
x2869:	mov ax, [bp + 41]	; 3: -117 70 41
x2872:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$257:	; goto 280
x2875:	jmp printFormat$280	; 2: -21 106

printFormat$258:	; precision = value
x2877:	mov ax, [bp + 41]	; 3: -117 70 41
x2880:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$259:	; goto 280
x2883:	jmp printFormat$280	; 2: -21 98

printFormat$260:	; if c != 37 goto 276
x2885:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x2889:	jne printFormat$276	; 2: 117 72

printFormat$261:	; percent = 1
x2891:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$262:	; plus = 0
x2896:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$263:	; minus = 0
x2901:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$264:	; space = 0
x2906:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$265:	; zero = 0
x2911:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$266:	; grid = 0
x2916:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$267:	; widthStar = 0
x2921:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$268:	; period = 0
x2926:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$269:	; precisionStar = 0
x2931:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$270:	; shortInt = 0
x2936:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$271:	; longInt = 0
x2941:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$272:	; longDouble = 0
x2946:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$273:	; width = 0
x2951:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$274:	; precision = 0
x2956:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$275:	; goto 280
x2961:	jmp printFormat$280	; 2: -21 20

printFormat$276:	; call header integral zero 0 stack zero 0

printFormat$277:	; parameter c, offset 6
x2963:	mov al, [bp + 40]	; 3: -118 70 40
x2966:	mov [bp + 47], al	; 3: -120 70 47

printFormat$278:	; call function noellipse-noellipse printChar
x2969:	mov word [bp + 41], printFormat$279	; 5: -57 70 41 -89 11
x2974:	mov [bp + 43], bp	; 3: -119 110 43
x2977:	add bp, 41	; 3: -125 -59 41
x2980:	jmp printChar	; 3: -23 67 7

printFormat$279:	; post call

printFormat$280:	; ++index
x2983:	inc word [bp + 10]	; 3: -1 70 10

printFormat$281:	; goto 16
x2986:	jmp printFormat$16	; 3: -23 39 -5

printFormat$282:	; if g_outStatus != 1 goto 288
x2989:	cmp word [g_outStatus], 1	; 5: -125 62 127 6 1
x2994:	jne printFormat$288	; 2: 117 16

printFormat$283:	; £temporary2357 = int_to_int g_outDevice (Pointer -> Pointer)
x2996:	mov ax, [g_outDevice]	; 3: -95 -127 6

printFormat$284:	; outString = £temporary2357
x2999:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$285:	; £temporary2359 = outString + g_outChars
x3002:	mov si, [bp + 40]	; 3: -117 118 40
x3005:	add si, [g_outChars]	; 4: 3 54 -45 11

printFormat$286:	; £temporary2358 -> £temporary2359 = *£temporary2359

printFormat$287:	; £temporary2358 -> £temporary2359 = 0
x3009:	mov byte [si], 0	; 3: -58 4 0

printFormat$288:	; return_value = g_outChars
x3012:	mov bx, [g_outChars]	; 4: -117 30 -45 11

printFormat$289:	; return
x3016:	mov ax, [bp]	; 3: -117 70 0
x3019:	mov di, [bp + 4]	; 3: -117 126 4
x3022:	mov bp, [bp + 2]	; 3: -117 110 2
x3025:	jmp ax	; 2: -1 -32

printFormat$290:	; function end printFormat

g_outChars:
x3027:	db 0, 0	; 2: 0 0

int2$10#:
x3029:	dw 10	; 2: 10 0

printArgument:	; £temporary2059 -> format = *format
x3031:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary2059 -> format
x3034:	mov al, [si]	; 2: -118 4
x3036:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x3039:	mov al, [bp + 30]	; 3: -118 70 30
x3042:	cmp al, 100	; 2: 60 100
x3044:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x3046:	cmp al, 105	; 2: 60 105
x3048:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x3050:	cmp al, 99	; 2: 60 99
x3052:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x3056:	cmp al, 115	; 2: 60 115
x3058:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x3062:	cmp al, 88	; 2: 60 88
x3064:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x3068:	cmp al, 120	; 2: 60 120
x3070:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x3074:	cmp al, 98	; 2: 60 98
x3076:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x3080:	cmp al, 111	; 2: 60 111
x3082:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x3086:	cmp al, 117	; 2: 60 117
x3088:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x3092:	cmp al, 71	; 2: 60 71
x3094:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x3098:	cmp al, 103	; 2: 60 103
x3100:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x3104:	cmp al, 69	; 2: 60 69
x3106:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x3110:	cmp al, 101	; 2: 60 101
x3112:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x3116:	cmp al, 102	; 2: 60 102
x3118:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x3122:	cmp al, 112	; 2: 60 112
x3124:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x3128:	cmp al, 110	; 2: 60 110
x3130:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x3134:	cmp al, 37	; 2: 60 37
x3136:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x3140:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x3143:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3147:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x3149:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary2061 = arg_list - 2
x3153:	mov si, [bp + 8]	; 3: -117 118 8
x3156:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary2062 = int_to_int £temporary2061 (Signed_Int -> Pointer)

printArgument$25:	; £temporary2063 -> £temporary2062 = *£temporary2062

printArgument$26:	; £temporary2064 = int_to_int £temporary2063 -> £temporary2062 (Signed_Int -> Signed_Short_Int)
x3159:	mov ax, [si]	; 2: -117 4
x3161:	cmp ax, 0	; 3: -125 -8 0
x3164:	jge printArgument$27	; 2: 125 4
x3166:	neg ax	; 2: -9 -40
x3168:	neg al	; 2: -10 -40

printArgument$27:	; £temporary2065 = int_to_int £temporary2064 (Signed_Short_Int -> Signed_Long_Int)
x3170:	and eax, 255	; 6: 102 37 -1 0 0 0
x3176:	cmp al, 0	; 2: 60 0
x3178:	jge printArgument$28	; 2: 125 5
x3180:	neg al	; 2: -10 -40
x3182:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary2065
x3185:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x3189:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x3191:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3195:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x3197:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary2067 = arg_list - 4
x3201:	mov si, [bp + 8]	; 3: -117 118 8
x3204:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary2068 = int_to_int £temporary2067 (Signed_Int -> Pointer)

printArgument$34:	; £temporary2069 -> £temporary2068 = *£temporary2068

printArgument$35:	; longValue = £temporary2069 -> £temporary2068
x3207:	mov eax, [si]	; 3: 102 -117 4
x3210:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x3214:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x3216:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary2071 = arg_list - 2
x3220:	mov si, [bp + 8]	; 3: -117 118 8
x3223:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary2072 = int_to_int £temporary2071 (Signed_Int -> Pointer)

printArgument$40:	; £temporary2073 -> £temporary2072 = *£temporary2072

printArgument$41:	; £temporary2074 = int_to_int £temporary2073 -> £temporary2072 (Signed_Int -> Signed_Long_Int)
x3226:	mov ax, [si]	; 2: -117 4
x3228:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x3234:	cmp ax, 0	; 3: -125 -8 0
x3237:	jge printArgument$42	; 2: 125 5
x3239:	neg ax	; 2: -9 -40
x3241:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary2074
x3244:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x3248:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3252:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary2078 -> negativePtr = *negativePtr
x3254:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x3257:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x3262:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary2080 = 1
x3264:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x3267:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary2080 = 0
x3269:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary2078 -> negativePtr = £temporary2080
x3272:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x3274:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3278:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x3280:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3284:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x3288:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 -26 12
x3293:	mov [bp + 50], bp	; 3: -119 110 50
x3296:	add bp, 48	; 3: -125 -59 48
x3299:	jmp labs	; 3: -23 5 5

printArgument$54:	; post call

printArgument$55:	; £temporary2083 = return_value

printArgument$56:	; longValue = £temporary2083
x3302:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x3306:	mov ax, [bp + 8]	; 3: -117 70 8
x3309:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x3312:	mov ax, [bp + 16]	; 3: -117 70 16
x3315:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary2084 = &precision
x3318:	mov si, bp	; 2: -119 -18
x3320:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary2084, offset 10
x3323:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x3326:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 12 13
x3331:	mov [bp + 50], bp	; 3: -119 110 50
x3334:	add bp, 48	; 3: -125 -59 48
x3337:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; post call

printArgument$64:	; £temporary2085 = return_value

printArgument$65:	; arg_list = £temporary2085
x3340:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x3343:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3347:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x3351:	mov ax, [bp + 10]	; 3: -117 70 10
x3354:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x3357:	mov ax, [bp + 12]	; 3: -117 70 12
x3360:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x3363:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 49 13
x3368:	mov [bp + 50], bp	; 3: -119 110 50
x3371:	add bp, 48	; 3: -125 -59 48
x3374:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x3377:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x3380:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary2088 = arg_list - 2
x3384:	mov si, [bp + 8]	; 3: -117 118 8
x3387:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary2089 = int_to_int £temporary2088 (Signed_Int -> Pointer)

printArgument$76:	; £temporary2090 -> £temporary2089 = *£temporary2089

printArgument$77:	; £temporary2091 = int_to_int £temporary2090 -> £temporary2089 (Signed_Int -> Signed_Char)
x3390:	mov ax, [si]	; 2: -117 4
x3392:	cmp ax, 0	; 3: -125 -8 0
x3395:	jge printArgument$78	; 2: 125 4
x3397:	neg ax	; 2: -9 -40
x3399:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary2091
x3401:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x3404:	mov ax, [bp + 8]	; 3: -117 70 8
x3407:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x3410:	mov ax, [bp + 16]	; 3: -117 70 16
x3413:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary2092 = &precision
x3416:	mov si, bp	; 2: -119 -18
x3418:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary2092, offset 10
x3421:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x3424:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 110 13
x3429:	mov [bp + 46], bp	; 3: -119 110 46
x3432:	add bp, 44	; 3: -125 -59 44
x3435:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; post call

printArgument$86:	; £temporary2093 = return_value

printArgument$87:	; arg_list = £temporary2093
x3438:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x3441:	mov al, [bp + 31]	; 3: -118 70 31
x3444:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x3447:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 -123 13
x3452:	mov [bp + 46], bp	; 3: -119 110 46
x3455:	add bp, 44	; 3: -125 -59 44
x3458:	jmp printChar	; 3: -23 101 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x3461:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x3464:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2096 = arg_list - 2
x3468:	mov si, [bp + 8]	; 3: -117 118 8
x3471:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2097 = int_to_int £temporary2096 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2098 -> £temporary2097 = *£temporary2097

printArgument$97:	; stringValue = £temporary2098 -> £temporary2097
x3474:	mov ax, [si]	; 2: -117 4
x3476:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x3479:	mov ax, [bp + 8]	; 3: -117 70 8
x3482:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x3485:	mov ax, [bp + 16]	; 3: -117 70 16
x3488:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2099 = &precision
x3491:	mov si, bp	; 2: -119 -18
x3493:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2099, offset 10
x3496:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x3499:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 -71 13
x3504:	mov [bp + 48], bp	; 3: -119 110 48
x3507:	add bp, 46	; 3: -125 -59 46
x3510:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; post call

printArgument$105:	; £temporary2100 = return_value

printArgument$106:	; arg_list = £temporary2100
x3513:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x3516:	mov ax, [bp + 44]	; 3: -117 70 44
x3519:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x3522:	mov ax, [bp + 18]	; 3: -117 70 18
x3525:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x3528:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 -42 13
x3533:	mov [bp + 48], bp	; 3: -119 110 48
x3536:	add bp, 46	; 3: -125 -59 46
x3539:	jmp printString	; 3: -23 -36 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x3542:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x3545:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x3549:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2116 = 10
x3551:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x3557:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x3559:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x3563:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2112 = 8
x3565:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x3571:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x3573:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x3577:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2108 = 2
x3579:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x3585:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2108 = 16
x3587:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2112 = £temporary2108

printArgument$124:	; £temporary2116 = £temporary2112

printArgument$125:	; base = £temporary2116
x3593:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x3597:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3601:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x3603:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2118 = arg_list - 2
x3607:	mov si, [bp + 8]	; 3: -117 118 8
x3610:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2119 = int_to_int £temporary2118 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2120 -> £temporary2119 = *£temporary2119

printArgument$131:	; £temporary2121 = int_to_int £temporary2120 -> £temporary2119 (Unsigned_Int -> Unsigned_Short_Int)
x3613:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2122 = int_to_int £temporary2121 (Unsigned_Short_Int -> Unsigned_Long_Int)
x3615:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2122
x3621:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x3625:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x3627:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3631:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x3633:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2124 = arg_list - 4
x3637:	mov si, [bp + 8]	; 3: -117 118 8
x3640:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2125 = int_to_int £temporary2124 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2126 -> £temporary2125 = *£temporary2125

printArgument$140:	; value = £temporary2126 -> £temporary2125
x3643:	mov eax, [si]	; 3: 102 -117 4
x3646:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x3650:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x3652:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2128 = arg_list - 2
x3656:	mov si, [bp + 8]	; 3: -117 118 8
x3659:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2129 = int_to_int £temporary2128 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2130 -> £temporary2129 = *£temporary2129

printArgument$146:	; £temporary2131 = int_to_int £temporary2130 -> £temporary2129 (Unsigned_Int -> Unsigned_Long_Int)
x3662:	mov ax, [si]	; 2: -117 4
x3664:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2131
x3670:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x3674:	mov ax, [bp + 8]	; 3: -117 70 8
x3677:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x3680:	mov ax, [bp + 16]	; 3: -117 70 16
x3683:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2134 = &precision
x3686:	mov si, bp	; 2: -119 -18
x3688:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2134, offset 10
x3691:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x3694:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 124 14
x3699:	mov [bp + 54], bp	; 3: -119 110 54
x3702:	add bp, 52	; 3: -125 -59 52
x3705:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; post call

printArgument$155:	; £temporary2135 = return_value

printArgument$156:	; arg_list = £temporary2135
x3708:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x3711:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x3715:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x3719:	mov ax, [bp + 10]	; 3: -117 70 10
x3722:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x3725:	mov ax, [bp + 12]	; 3: -117 70 12
x3728:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x3731:	mov ax, [bp + 14]	; 3: -117 70 14
x3734:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x3737:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3741:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2136 = int_to_int c (Signed_Char -> Signed_Int)
x3745:	mov al, [bp + 30]	; 3: -118 70 30
x3748:	and ax, 255	; 3: 37 -1 0
x3751:	cmp al, 0	; 2: 60 0
x3753:	jge printArgument$165	; 2: 125 4
x3755:	neg al	; 2: -10 -40
x3757:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2136, offset 26
x3759:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x3762:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 -64 14
x3767:	mov [bp + 74], bp	; 3: -119 110 74
x3770:	add bp, 72	; 3: -125 -59 72
x3773:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; post call

printArgument$168:	; £temporary2137 = return_value

printArgument$169:	; parameter £temporary2137, offset 20
x3776:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x3779:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 -47 14
x3784:	mov [bp + 54], bp	; 3: -119 110 54
x3787:	add bp, 52	; 3: -125 -59 52
x3790:	jmp printUnsignedLong	; 3: -23 34 12

printArgument$171:	; post call

printArgument$172:	; goto 359
x3793:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x3796:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x3800:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x3802:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2140 = arg_list - 8
x3806:	mov si, [bp + 8]	; 3: -117 118 8
x3809:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2141 = int_to_int £temporary2140 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2142 -> £temporary2141 = *£temporary2141

printArgument$178:	; push float £temporary2142 -> £temporary2141
x3812:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x3814:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x3817:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x3820:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x3823:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x3828:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x3833:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x3838:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x3843:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 17 15
x3848:	mov [bp + 46], bp	; 3: -119 110 46
x3851:	add bp, 44	; 3: -125 -59 44
x3854:	jmp printLongDoublePlain	; 3: -23 -115 13

printArgument$188:	; post call

printArgument$189:	; goto 196
x3857:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x3859:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2145 = arg_list - 8
x3863:	mov si, [bp + 8]	; 3: -117 118 8
x3866:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2146 = int_to_int £temporary2145 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2147 -> £temporary2146 = *£temporary2146

printArgument$194:	; push float £temporary2147 -> £temporary2146
x3869:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x3871:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x3874:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3878:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2151 -> negativePtr = *negativePtr
x3880:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x3883:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x3886:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x3888:	fcompp	; 2: -34 -39
x3890:	fstsw ax	; 3: -101 -33 -32
x3893:	sahf	; 1: -98
x3894:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2153 = 1
x3896:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x3899:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2153 = 0
x3901:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2151 -> negativePtr = £temporary2153
x3904:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x3906:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3910:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x3912:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x3915:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x3918:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 92 15
x3923:	mov [bp + 46], bp	; 3: -119 110 46
x3926:	add bp, 44	; 3: -125 -59 44
x3929:	jmp fabs	; 3: -23 -125 14

printArgument$210:	; post call

printArgument$211:	; £temporary2156 = return_value

printArgument$212:	; pop float longDoubleValue
x3932:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x3935:	mov ax, [bp + 8]	; 3: -117 70 8
x3938:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x3941:	mov ax, [bp + 16]	; 3: -117 70 16
x3944:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2157 = &precision
x3947:	mov si, bp	; 2: -119 -18
x3949:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2157, offset 10
x3952:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x3955:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 -127 15
x3960:	mov [bp + 46], bp	; 3: -119 110 46
x3963:	add bp, 44	; 3: -125 -59 44
x3966:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; post call

printArgument$220:	; £temporary2158 = return_value

printArgument$221:	; arg_list = £temporary2158
x3969:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x3972:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x3976:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x3978:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x3981:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x3984:	mov ax, [bp + 10]	; 3: -117 70 10
x3987:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x3990:	mov ax, [bp + 12]	; 3: -117 70 12
x3993:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x3996:	mov ax, [bp + 14]	; 3: -117 70 14
x3999:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x4002:	mov ax, [bp + 18]	; 3: -117 70 18
x4005:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x4008:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 -74 15
x4013:	mov [bp + 46], bp	; 3: -119 110 46
x4016:	add bp, 44	; 3: -125 -59 44
x4019:	jmp printLongDoublePlain	; 3: -23 -24 12

printArgument$231:	; post call

printArgument$232:	; goto 359
x4022:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2161 = int_to_int c (Signed_Char -> Signed_Int)
x4025:	mov al, [bp + 30]	; 3: -118 70 30
x4028:	and ax, 255	; 3: 37 -1 0
x4031:	cmp al, 0	; 2: 60 0
x4033:	jge printArgument$235	; 2: 125 4
x4035:	neg al	; 2: -10 -40
x4037:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2161, offset 6
x4039:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x4042:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 -40 15
x4047:	mov [bp + 46], bp	; 3: -119 110 46
x4050:	add bp, 44	; 3: -125 -59 44
x4053:	jmp tolower	; 3: -23 41 14

printArgument$237:	; post call

printArgument$238:	; £temporary2162 = return_value

printArgument$239:	; if £temporary2162 != 101 goto 257
x4056:	cmp bx, 101	; 3: -125 -5 101
x4059:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x4061:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x4064:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x4067:	mov ax, [bp + 10]	; 3: -117 70 10
x4070:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x4073:	mov ax, [bp + 12]	; 3: -117 70 12
x4076:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x4079:	mov ax, [bp + 14]	; 3: -117 70 14
x4082:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x4085:	mov ax, [bp + 18]	; 3: -117 70 18
x4088:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2164 = int_to_int c (Signed_Char -> Signed_Int)
x4091:	mov al, [bp + 30]	; 3: -118 70 30
x4094:	and ax, 255	; 3: 37 -1 0
x4097:	cmp al, 0	; 2: 60 0
x4099:	jge printArgument$249	; 2: 125 4
x4101:	neg al	; 2: -10 -40
x4103:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2164, offset 28
x4105:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x4108:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 26 16
x4113:	mov [bp + 68], bp	; 3: -119 110 68
x4116:	add bp, 66	; 3: -125 -59 66
x4119:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; post call

printArgument$252:	; £temporary2165 = return_value

printArgument$253:	; parameter £temporary2165, offset 22
x4122:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x4125:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 43 16
x4130:	mov [bp + 46], bp	; 3: -119 110 46
x4133:	add bp, 44	; 3: -125 -59 44
x4136:	jmp printLongDoubleExpo	; 3: -23 119 14

printArgument$255:	; post call

printArgument$256:	; goto 359
x4139:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x4142:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x4145:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x4148:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 66 16
x4153:	mov [bp + 46], bp	; 3: -119 110 46
x4156:	add bp, 44	; 3: -125 -59 44
x4159:	jmp fabs	; 3: -23 -99 13

printArgument$262:	; post call

printArgument$263:	; £temporary2167 = return_value

printArgument$264:	; parameter £temporary2167, offset 6
x4162:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x4165:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 83 16
x4170:	mov [bp + 46], bp	; 3: -119 110 46
x4173:	add bp, 44	; 3: -125 -59 44
x4176:	jmp log10	; 3: -23 -74 15

printArgument$266:	; post call

printArgument$267:	; £temporary2168 = return_value

printArgument$268:	; £temporary2169 = float_to_int £temporary2168 (Double -> Signed_Int)
x4179:	fistp word [container2bytes#]	; 4: -33 30 -23 17
x4183:	mov ax, [container2bytes#]	; 3: -95 -23 17

printArgument$269:	; expo = £temporary2169
x4186:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x4189:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x4193:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x4195:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x4199:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x4201:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x4204:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x4207:	mov ax, [bp + 10]	; 3: -117 70 10
x4210:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x4213:	mov ax, [bp + 12]	; 3: -117 70 12
x4216:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x4219:	mov ax, [bp + 14]	; 3: -117 70 14
x4222:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x4225:	mov ax, [bp + 18]	; 3: -117 70 18
x4228:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x4231:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 -107 16
x4236:	mov [bp + 48], bp	; 3: -119 110 48
x4239:	add bp, 46	; 3: -125 -59 46
x4242:	jmp printLongDoublePlain	; 3: -23 9 12

printArgument$280:	; post call

printArgument$281:	; goto 359
x4245:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x4248:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x4251:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x4254:	mov ax, [bp + 10]	; 3: -117 70 10
x4257:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x4260:	mov ax, [bp + 12]	; 3: -117 70 12
x4263:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x4266:	mov ax, [bp + 14]	; 3: -117 70 14
x4269:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x4272:	mov ax, [bp + 18]	; 3: -117 70 18
x4275:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2174 = int_to_int c (Signed_Char -> Signed_Int)
x4278:	mov al, [bp + 30]	; 3: -118 70 30
x4281:	and ax, 255	; 3: 37 -1 0
x4284:	cmp al, 0	; 2: 60 0
x4286:	jge printArgument$291	; 2: 125 4
x4288:	neg al	; 2: -10 -40
x4290:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2174, offset 28
x4292:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x4295:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 -43 16
x4300:	mov [bp + 70], bp	; 3: -119 110 70
x4303:	add bp, 68	; 3: -125 -59 68
x4306:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; post call

printArgument$294:	; £temporary2175 = return_value

printArgument$295:	; parameter £temporary2175, offset 22
x4309:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x4312:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 -26 16
x4317:	mov [bp + 48], bp	; 3: -119 110 48
x4320:	add bp, 46	; 3: -125 -59 46
x4323:	jmp printLongDoubleExpo	; 3: -23 -68 13

printArgument$297:	; post call

printArgument$298:	; goto 359
x4326:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x4329:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2178 = arg_list - 2
x4333:	mov si, [bp + 8]	; 3: -117 118 8
x4336:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2179 = int_to_int £temporary2178 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2180 -> £temporary2179 = *£temporary2179

printArgument$303:	; ptrValue = £temporary2180 -> £temporary2179
x4339:	mov ax, [si]	; 2: -117 4
x4341:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x4344:	mov ax, [bp + 8]	; 3: -117 70 8
x4347:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x4350:	mov ax, [bp + 16]	; 3: -117 70 16
x4353:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2181 = &precision
x4356:	mov si, bp	; 2: -119 -18
x4358:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2181, offset 10
x4361:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x4364:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 26 17
x4369:	mov [bp + 46], bp	; 3: -119 110 46
x4372:	add bp, 44	; 3: -125 -59 44
x4375:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; post call

printArgument$311:	; £temporary2182 = return_value

printArgument$312:	; arg_list = £temporary2182
x4378:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2183 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x4381:	mov ax, [bp + 42]	; 3: -117 70 42
x4384:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2183, offset 6
x4390:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x4394:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x4399:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x4404:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x4409:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x4417:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x4422:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 84 17
x4427:	mov [bp + 46], bp	; 3: -119 110 46
x4430:	add bp, 44	; 3: -125 -59 44
x4433:	jmp printUnsignedLong	; 3: -23 -97 9

printArgument$322:	; post call

printArgument$323:	; goto 359
x4436:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x4439:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2186 = arg_list - 2
x4443:	mov si, [bp + 8]	; 3: -117 118 8
x4446:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2187 = int_to_int £temporary2186 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2188 -> £temporary2187 = *£temporary2187

printArgument$328:	; ptrValue = £temporary2188 -> £temporary2187
x4449:	mov ax, [si]	; 2: -117 4
x4451:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x4454:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2190 = arg_list - 2
x4458:	mov si, [bp + 8]	; 3: -117 118 8
x4461:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2191 = int_to_int £temporary2190 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2192 -> £temporary2191 = *£temporary2191

printArgument$333:	; intPtr = £temporary2192 -> £temporary2191
x4464:	mov ax, [si]	; 2: -117 4
x4466:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x4469:	mov ax, [bp + 8]	; 3: -117 70 8
x4472:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x4475:	mov ax, [bp + 16]	; 3: -117 70 16
x4478:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2193 = &precision
x4481:	mov si, bp	; 2: -119 -18
x4483:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2193, offset 10
x4486:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x4489:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 -105 17
x4494:	mov [bp + 46], bp	; 3: -119 110 46
x4497:	add bp, 44	; 3: -125 -59 44
x4500:	nop	; 1: -112
x4501:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; post call

printArgument$341:	; £temporary2194 = return_value

printArgument$342:	; arg_list = £temporary2194
x4503:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2195 -> intPtr = *intPtr
x4506:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2195 -> intPtr = g_outChars
x4509:	mov ax, [g_outChars]	; 3: -95 -45 11
x4512:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x4514:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x4516:	mov ax, [bp + 8]	; 3: -117 70 8
x4519:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x4522:	mov ax, [bp + 16]	; 3: -117 70 16
x4525:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2196 = &precision
x4528:	mov si, bp	; 2: -119 -18
x4530:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2196, offset 10
x4533:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x4536:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 -58 17
x4541:	mov [bp + 46], bp	; 3: -119 110 46
x4544:	add bp, 44	; 3: -125 -59 44
x4547:	nop	; 1: -112
x4548:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; post call

printArgument$353:	; £temporary2197 = return_value

printArgument$354:	; arg_list = £temporary2197
x4550:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x4553:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x4557:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 -37 17
x4562:	mov [bp + 46], bp	; 3: -119 110 46
x4565:	add bp, 44	; 3: -125 -59 44
x4568:	jmp printChar	; 3: -23 15 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x4571:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x4574:	mov ax, [bp]	; 3: -117 70 0
x4577:	mov di, [bp + 4]	; 3: -117 126 4
x4580:	mov bp, [bp + 2]	; 3: -117 110 2
x4583:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

container2bytes#:
x4585:	db 0, 0	; 2: 0 0

labs:	; if value >= 0 goto 4
x4587:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4592:	jge labs$4	; 2: 125 9

labs$1:	; £temporary2663 = -value
x4594:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x4598:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary2667 = £temporary2663

labs$3:	; goto 5
x4601:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary2667 = value
x4603:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary2667

labs$6:	; return
x4607:	mov ax, [bp]	; 3: -117 70 0
x4610:	mov di, [bp + 4]	; 3: -117 126 4
x4613:	mov bp, [bp + 2]	; 3: -117 110 2
x4616:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x4618:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4622:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary2041 -> widthPtr = *widthPtr
x4624:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary2041 -> widthPtr != -1 goto 9
x4627:	cmp word [si], -1	; 3: -125 60 -1
x4630:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary2044 -> widthPtr = *widthPtr
x4632:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x4635:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary2046 = arg_list - 2
x4639:	mov di, [bp + 6]	; 3: -117 126 6
x4642:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary2047 = int_to_int £temporary2046 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary2048 -> £temporary2047 = *£temporary2047

checkWidthAndPrecision$8:	; £temporary2044 -> widthPtr = £temporary2048 -> £temporary2047
x4645:	mov ax, [di]	; 2: -117 5
x4647:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x4649:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4653:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary2050 -> precisionPtr = *precisionPtr
x4655:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary2050 -> precisionPtr != -1 goto 18
x4658:	cmp word [si], -1	; 3: -125 60 -1
x4661:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary2053 -> precisionPtr = *precisionPtr
x4663:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x4666:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary2055 = arg_list - 2
x4670:	mov di, [bp + 6]	; 3: -117 126 6
x4673:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary2056 = int_to_int £temporary2055 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary2057 -> £temporary2056 = *£temporary2056

checkWidthAndPrecision$17:	; £temporary2053 -> precisionPtr = £temporary2057 -> £temporary2056
x4676:	mov ax, [di]	; 2: -117 5
x4678:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x4680:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x4683:	mov ax, [bp]	; 3: -117 70 0
x4686:	mov di, [bp + 4]	; 3: -117 126 4
x4689:	mov bp, [bp + 2]	; 3: -117 110 2
x4692:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x4694:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4699:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1896 = -longValue
x4701:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4705:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1896
x4708:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x4712:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x4716:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 122 18
x4721:	mov [bp + 16], bp	; 3: -119 110 16
x4724:	add bp, 14	; 3: -125 -59 14
x4727:	nop	; 1: -112
x4728:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x4730:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x4732:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x4736:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x4738:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x4742:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 -108 18
x4747:	mov [bp + 16], bp	; 3: -119 110 16
x4750:	add bp, 14	; 3: -125 -59 14
x4753:	nop	; 1: -112
x4754:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x4756:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x4758:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4762:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x4764:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x4768:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 -82 18
x4773:	mov [bp + 16], bp	; 3: -119 110 16
x4776:	add bp, 14	; 3: -125 -59 14
x4779:	nop	; 1: -112
x4780:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x4782:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4787:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x4789:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x4793:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 -57 18
x4798:	mov [bp + 16], bp	; 3: -119 110 16
x4801:	add bp, 14	; 3: -125 -59 14
x4804:	nop	; 1: -112
x4805:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x4807:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x4809:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4813:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x4817:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 -33 18
x4822:	mov [bp + 16], bp	; 3: -119 110 16
x4825:	add bp, 14	; 3: -125 -59 14
x4828:	nop	; 1: -112
x4829:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x4831:	mov ax, [bp]	; 3: -117 70 0
x4834:	mov di, [bp + 4]	; 3: -117 126 4
x4837:	mov bp, [bp + 2]	; 3: -117 110 2
x4840:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x4842:	mov ax, [g_outStatus]	; 3: -95 127 6
x4845:	cmp ax, 0	; 3: -125 -8 0
x4848:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x4850:	cmp ax, 1	; 3: -125 -8 1
x4853:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x4855:	cmp ax, 2	; 3: -125 -8 2
x4858:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x4860:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1838 = int_to_int g_outDevice (Pointer -> Pointer)
x4862:	mov ax, [g_outDevice]	; 3: -95 -127 6

printChar$6:	; stream = £temporary1838
x4865:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x4868:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1841 -> stream = *stream, offset 2
x4870:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1841 -> stream
x4873:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x4876:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1844 = &c
x4879:	mov dx, bp	; 2: -119 -22
x4881:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1844

printChar$13:	; interrupt 33
x4884:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x4886:	inc word [g_outChars]	; 4: -1 6 -45 11

printChar$15:	; goto 25
x4890:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1846 = int_to_int g_outDevice (Pointer -> Pointer)
x4892:	mov ax, [g_outDevice]	; 3: -95 -127 6

printChar$17:	; outString = £temporary1846
x4895:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1847 = g_outChars
x4898:	mov ax, [g_outChars]	; 3: -95 -45 11

printChar$19:	; ++g_outChars
x4901:	inc word [g_outChars]	; 4: -1 6 -45 11

printChar$20:	; £temporary1849 = outString + £temporary1847
x4905:	mov si, [bp + 9]	; 3: -117 118 9
x4908:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1848 -> £temporary1849 = *£temporary1849

printChar$22:	; £temporary1848 -> £temporary1849 = c
x4910:	mov al, [bp + 6]	; 3: -118 70 6
x4913:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x4915:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x4917:	inc word [g_outChars]	; 4: -1 6 -45 11

printChar$25:	; return
x4921:	mov ax, [bp]	; 3: -117 70 0
x4924:	mov di, [bp + 4]	; 3: -117 126 4
x4927:	mov bp, [bp + 2]	; 3: -117 110 2
x4930:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x4932:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4937:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1886 = longValue % 10
x4939:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4943:	xor edx, edx	; 3: 102 49 -46
x4946:	idiv dword [int4$10#]	; 5: 102 -9 62 -82 19

printLongIntRec$2:	; £temporary1887 = int_to_int £temporary1886 (Signed_Long_Int -> Signed_Int)
x4951:	cmp edx, 0	; 4: 102 -125 -6 0
x4955:	jge printLongIntRec$3	; 2: 125 5
x4957:	neg edx	; 3: 102 -9 -38
x4960:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1887
x4962:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1888 = longValue / 10
x4965:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4969:	xor edx, edx	; 3: 102 49 -46
x4972:	idiv dword [int4$10#]	; 5: 102 -9 62 -82 19

printLongIntRec$6:	; parameter £temporary1888, offset 6
x4977:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x4981:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 -125 19
x4986:	mov [bp + 14], bp	; 3: -119 110 14
x4989:	add bp, 12	; 3: -125 -59 12
x4992:	nop	; 1: -112
x4993:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1890 = digit + 48
x4995:	mov ax, [bp + 10]	; 3: -117 70 10
x4998:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1891 = int_to_int £temporary1890 (Signed_Int -> Signed_Char)
x5001:	cmp ax, 0	; 3: -125 -8 0
x5004:	jge printLongIntRec$12	; 2: 125 4
x5006:	neg ax	; 2: -9 -40
x5008:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1891, offset 6
x5010:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x5013:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 -93 19
x5018:	mov [bp + 14], bp	; 3: -119 110 14
x5021:	add bp, 12	; 3: -125 -59 12
x5024:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x5027:	mov ax, [bp]	; 3: -117 70 0
x5030:	mov di, [bp + 4]	; 3: -117 126 4
x5033:	mov bp, [bp + 2]	; 3: -117 110 2
x5036:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x5038:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x5042:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x5046:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x5048:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5052:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x5054:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1855 = s + index
x5059:	mov si, [bp + 6]	; 3: -117 118 6
x5062:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1854 -> £temporary1855 = *£temporary1855

printString$5:	; if £temporary1854 -> £temporary1855 == 0 goto 53
x5065:	cmp byte [si], 0	; 3: -128 60 0
x5068:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1859 = s + index
x5072:	mov si, [bp + 6]	; 3: -117 118 6
x5075:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1858 -> £temporary1859 = *£temporary1859

printString$9:	; parameter £temporary1858 -> £temporary1859, offset 6
x5078:	mov al, [si]	; 2: -118 4
x5080:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x5083:	mov word [bp + 12], printString$11	; 5: -57 70 12 -23 19
x5088:	mov [bp + 14], bp	; 3: -119 110 14
x5091:	add bp, 12	; 3: -125 -59 12
x5094:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x5097:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x5100:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x5102:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1861 = precision
x5107:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x5110:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1861 <= 0 goto 53
x5113:	cmp ax, 0	; 3: -125 -8 0
x5116:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1864 = s + index
x5120:	mov si, [bp + 6]	; 3: -117 118 6
x5123:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1863 -> £temporary1864 = *£temporary1864

printString$20:	; if £temporary1863 -> £temporary1864 == 0 goto 53
x5126:	cmp byte [si], 0	; 3: -128 60 0
x5129:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1869 = s + index
x5133:	mov si, [bp + 6]	; 3: -117 118 6
x5136:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1868 -> £temporary1869 = *£temporary1869

printString$24:	; parameter £temporary1868 -> £temporary1869, offset 6
x5139:	mov al, [si]	; 2: -118 4
x5141:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x5144:	mov word [bp + 12], printString$26	; 5: -57 70 12 38 20
x5149:	mov [bp + 14], bp	; 3: -119 110 14
x5152:	add bp, 12	; 3: -125 -59 12
x5155:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x5158:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x5161:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x5163:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x5167:	mov word [bp + 10], printString$32	; 5: -57 70 10 61 20
x5172:	mov [bp + 12], bp	; 3: -119 110 12
x5175:	add bp, 10	; 3: -125 -59 10
x5178:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x5181:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x5185:	mov word [bp + 10], printString$36	; 5: -57 70 10 79 20
x5190:	mov [bp + 12], bp	; 3: -119 110 12
x5193:	add bp, 10	; 3: -125 -59 10
x5196:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x5199:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x5203:	mov word [bp + 10], printString$40	; 5: -57 70 10 97 20
x5208:	mov [bp + 12], bp	; 3: -119 110 12
x5211:	add bp, 10	; 3: -125 -59 10
x5214:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x5217:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x5221:	mov word [bp + 10], printString$44	; 5: -57 70 10 115 20
x5226:	mov [bp + 12], bp	; 3: -119 110 12
x5229:	add bp, 10	; 3: -125 -59 10
x5232:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x5235:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x5239:	mov word [bp + 10], printString$48	; 5: -57 70 10 -123 20
x5244:	mov [bp + 12], bp	; 3: -119 110 12
x5247:	add bp, 10	; 3: -125 -59 10
x5250:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x5253:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x5257:	mov word [bp + 10], printString$52	; 5: -57 70 10 -105 20
x5262:	mov [bp + 12], bp	; 3: -119 110 12
x5265:	add bp, 10	; 3: -125 -59 10
x5268:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x5271:	mov ax, [bp]	; 3: -117 70 0
x5274:	mov di, [bp + 4]	; 3: -117 126 4
x5277:	mov bp, [bp + 2]	; 3: -117 110 2
x5280:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x5282:	mov word [bp + 8], isupper$2	; 5: -57 70 8 -80 20
x5287:	mov [bp + 10], bp	; 3: -119 110 10
x5290:	add bp, 8	; 3: -125 -59 8
x5293:	nop	; 1: -112
x5294:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary329 = return_value

isupper$4:	; localeConvPtr = £temporary329
x5296:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x5299:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5303:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary331 -> localeConvPtr = *localeConvPtr, offset 14
x5305:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary331 -> localeConvPtr, offset 6
x5308:	mov ax, [si + 14]	; 3: -117 68 14
x5311:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x5314:	mov ax, [bp + 6]	; 3: -117 70 6
x5317:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x5320:	mov word [bp + 10], isupper$11	; 5: -57 70 10 -42 20
x5325:	mov [bp + 12], bp	; 3: -119 110 12
x5328:	add bp, 10	; 3: -125 -59 10
x5331:	jmp strchr	; 3: -23 -51 5

isupper$11:	; post call

isupper$12:	; £temporary332 = return_value

isupper$13:	; if £temporary332 == 0 goto 16
x5334:	cmp bx, 0	; 3: -125 -5 0
x5337:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary334 = 1
x5339:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x5342:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary334 = 0
x5344:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary334

isupper$18:	; return
x5347:	mov ax, [bp]	; 3: -117 70 0
x5350:	mov di, [bp + 4]	; 3: -117 126 4
x5353:	mov bp, [bp + 2]	; 3: -117 110 2
x5356:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x5358:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x5362:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x5364:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x5368:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary338 = 1
x5370:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x5373:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary338 = 0
x5375:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary338

isupper$25:	; return
x5378:	mov ax, [bp]	; 3: -117 70 0
x5381:	mov di, [bp + 4]	; 3: -117 126 4
x5384:	mov bp, [bp + 2]	; 3: -117 110 2
x5387:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x5389:	cmp word [@22$g_currStructPtr], 0	; 5: -125 62 43 21 0
x5394:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary478 -> g_currStructPtr = *g_currStructPtr, offset 2
x5396:	mov si, [@22$g_currStructPtr]	; 4: -117 54 43 21

localeconv$2:	; £temporary482 = £temporary478 -> g_currStructPtr
x5400:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x5403:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary482 = 0
x5405:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary482

localeconv$6:	; return
x5408:	mov ax, [bp]	; 3: -117 70 0
x5411:	mov di, [bp + 4]	; 3: -117 126 4
x5414:	mov bp, [bp + 2]	; 3: -117 110 2
x5417:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@22$g_currStructPtr:
x5419:	dw @20$sArray	; 2: 45 21

@20$sArray:
x5421:	dw string_# ; 2: 61 21
x5423:	dw @19$sw_EN_utf8	; 2: 62 21
x5425:	dw string_C# ; 2: 43 24
x5427:	dw @13$en_US_utf8	; 2: 45 24
x5429:	dw string_US# ; 2: -99 26
x5431:	dw @13$en_US_utf8	; 2: 45 24
x5433:	dw string_SE# ; 2: -96 26
x5435:	dw @19$sw_EN_utf8	; 2: 62 21

string_#:
x5437:	db 0	; 1: 0

@19$sw_EN_utf8:
x5438:	dw 1	; 2: 1 0
x5440:	dw 2	; 2: 2 0
x5442:	dw @14$swShortDayList ; 2: 80 21
x5444:	dw @15$swLongDayList ; 2: 122 21
x5446:	dw @11$enShortMonthList ; 2: -70 21
x5448:	dw @17$swLongMonthList ; 2: 2 22
x5450:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: 112 22
x5452:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -117 22
x5454:	dw @18$swMessageList ; 2: -90 22

@14$swShortDayList:
x5456:	dw string_Son# ; 2: 94 21
x5458:	dw string_Man# ; 2: 98 21
x5460:	dw string_Tis# ; 2: 102 21
x5462:	dw string_Ons# ; 2: 106 21
x5464:	dw string_Tor# ; 2: 110 21
x5466:	dw string_Fre# ; 2: 114 21
x5468:	dw string_Lor# ; 2: 118 21

string_Son#:
x5470:	db "Son", 0	; 4: 83 111 110 0

string_Man#:
x5474:	db "Man", 0	; 4: 77 97 110 0

string_Tis#:
x5478:	db "Tis", 0	; 4: 84 105 115 0

string_Ons#:
x5482:	db "Ons", 0	; 4: 79 110 115 0

string_Tor#:
x5486:	db "Tor", 0	; 4: 84 111 114 0

string_Fre#:
x5490:	db "Fre", 0	; 4: 70 114 101 0

string_Lor#:
x5494:	db "Lor", 0	; 4: 76 111 114 0

@15$swLongDayList:
x5498:	dw string_Sondag# ; 2: -120 21
x5500:	dw string_Mandag# ; 2: -113 21
x5502:	dw string_Tisdag# ; 2: -106 21
x5504:	dw string_Onsdag# ; 2: -99 21
x5506:	dw string_Torsdag# ; 2: -92 21
x5508:	dw string_Fredag# ; 2: -84 21
x5510:	dw string_Lordag# ; 2: -77 21

string_Sondag#:
x5512:	db "Sondag", 0	; 7: 83 111 110 100 97 103 0

string_Mandag#:
x5519:	db "Mandag", 0	; 7: 77 97 110 100 97 103 0

string_Tisdag#:
x5526:	db "Tisdag", 0	; 7: 84 105 115 100 97 103 0

string_Onsdag#:
x5533:	db "Onsdag", 0	; 7: 79 110 115 100 97 103 0

string_Torsdag#:
x5540:	db "Torsdag", 0	; 8: 84 111 114 115 100 97 103 0

string_Fredag#:
x5548:	db "Fredag", 0	; 7: 70 114 101 100 97 103 0

string_Lordag#:
x5555:	db "Lordag", 0	; 7: 76 111 114 100 97 103 0

@11$enShortMonthList:
x5562:	dw string_Jan# ; 2: -46 21
x5564:	dw string_Feb# ; 2: -42 21
x5566:	dw string_Mar# ; 2: -38 21
x5568:	dw string_Apr# ; 2: -34 21
x5570:	dw string_May# ; 2: -30 21
x5572:	dw string_Jun# ; 2: -26 21
x5574:	dw string_Jul# ; 2: -22 21
x5576:	dw string_Aug# ; 2: -18 21
x5578:	dw string_Sep# ; 2: -14 21
x5580:	dw string_Oct# ; 2: -10 21
x5582:	dw string_Nov# ; 2: -6 21
x5584:	dw string_Dec# ; 2: -2 21

string_Jan#:
x5586:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x5590:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x5594:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x5598:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x5602:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x5606:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x5610:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x5614:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x5618:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x5622:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x5626:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x5630:	db "Dec", 0	; 4: 68 101 99 0

@17$swLongMonthList:
x5634:	dw string_Januari# ; 2: 26 22
x5636:	dw string_Februari# ; 2: 34 22
x5638:	dw string_Mars# ; 2: 43 22
x5640:	dw string_April# ; 2: 48 22
x5642:	dw string_Maj# ; 2: 54 22
x5644:	dw string_Juni# ; 2: 58 22
x5646:	dw string_Juli# ; 2: 63 22
x5648:	dw string_Augusit# ; 2: 68 22
x5650:	dw string_September# ; 2: 76 22
x5652:	dw string_Oktober# ; 2: 86 22
x5654:	dw string_November# ; 2: 94 22
x5656:	dw string_December# ; 2: 103 22

string_Januari#:
x5658:	db "Januari", 0	; 8: 74 97 110 117 97 114 105 0

string_Februari#:
x5666:	db "Februari", 0	; 9: 70 101 98 114 117 97 114 105 0

string_Mars#:
x5675:	db "Mars", 0	; 5: 77 97 114 115 0

string_April#:
x5680:	db "April", 0	; 6: 65 112 114 105 108 0

string_Maj#:
x5686:	db "Maj", 0	; 4: 77 97 106 0

string_Juni#:
x5690:	db "Juni", 0	; 5: 74 117 110 105 0

string_Juli#:
x5695:	db "Juli", 0	; 5: 74 117 108 105 0

string_Augusit#:
x5700:	db "Augusit", 0	; 8: 65 117 103 117 115 105 116 0

string_September#:
x5708:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_Oktober#:
x5718:	db "Oktober", 0	; 8: 79 107 116 111 98 101 114 0

string_November#:
x5726:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x5735:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x5744:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x5771:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

@18$swMessageList:
x5798:	dw string_inga20fel# ; 2: -52 22
x5800:	dw string_felaktigt20functionsnummer# ; 2: -43 22
x5802:	dw string_hittar20ej20filen# ; 2: -17 22
x5804:	dw string_hittar20ej20sokvagen# ; 2: -1 22
x5806:	dw string_inget20handtag20tillgangligt# ; 2: 18 23
x5808:	dw string_atkomst20nekad# ; 2: 45 23
x5810:	dw string_utanfor20doman# ; 2: 59 23
x5812:	dw string_utanfor20range# ; 2: 73 23
x5814:	dw string_felaktig20multibyte2Dsekvens# ; 2: 87 23
x5816:	dw string_fel20vid20oppning# ; 2: 114 23
x5818:	dw string_fel20vid20flushing# ; 2: -126 23
x5820:	dw string_fel20vid20stangning# ; 2: -109 23
x5822:	dw string_fel20oppningslage# ; 2: -91 23
x5824:	dw string_fel20vid20skrivning# ; 2: -74 23
x5826:	dw string_fel20vid20lasning# ; 2: -56 23
x5828:	dw string_fel20vid20sokning# ; 2: -40 23
x5830:	dw string_fel20vid20telling# ; 2: -24 23
x5832:	dw string_fel20vid20borttagning20av20fil# ; 2: -8 23
x5834:	dw string_fel20vid20namnbyte20av20fil# ; 2: 19 24

string_inga20fel#:
x5836:	db "inga fel", 0	; 9: 105 110 103 97 32 102 101 108 0

string_felaktigt20functionsnummer#:
x5845:	db "felaktigt functionsnummer", 0	; 26: 102 101 108 97 107 116 105 103 116 32 102 117 110 99 116 105 111 110 115 110 117 109 109 101 114 0

string_hittar20ej20filen#:
x5871:	db "hittar ej filen", 0	; 16: 104 105 116 116 97 114 32 101 106 32 102 105 108 101 110 0

string_hittar20ej20sokvagen#:
x5887:	db "hittar ej sokvagen", 0	; 19: 104 105 116 116 97 114 32 101 106 32 115 111 107 118 97 103 101 110 0

string_inget20handtag20tillgangligt#:
x5906:	db "inget handtag tillgangligt", 0	; 27: 105 110 103 101 116 32 104 97 110 100 116 97 103 32 116 105 108 108 103 97 110 103 108 105 103 116 0

string_atkomst20nekad#:
x5933:	db "atkomst nekad", 0	; 14: 97 116 107 111 109 115 116 32 110 101 107 97 100 0

string_utanfor20doman#:
x5947:	db "utanfor doman", 0	; 14: 117 116 97 110 102 111 114 32 100 111 109 97 110 0

string_utanfor20range#:
x5961:	db "utanfor range", 0	; 14: 117 116 97 110 102 111 114 32 114 97 110 103 101 0

string_felaktig20multibyte2Dsekvens#:
x5975:	db "felaktig multibyte-sekvens", 0	; 27: 102 101 108 97 107 116 105 103 32 109 117 108 116 105 98 121 116 101 45 115 101 107 118 101 110 115 0

string_fel20vid20oppning#:
x6002:	db "fel vid oppning", 0	; 16: 102 101 108 32 118 105 100 32 111 112 112 110 105 110 103 0

string_fel20vid20flushing#:
x6018:	db "fel vid flushing", 0	; 17: 102 101 108 32 118 105 100 32 102 108 117 115 104 105 110 103 0

string_fel20vid20stangning#:
x6035:	db "fel vid stangning", 0	; 18: 102 101 108 32 118 105 100 32 115 116 97 110 103 110 105 110 103 0

string_fel20oppningslage#:
x6053:	db "fel oppningslage", 0	; 17: 102 101 108 32 111 112 112 110 105 110 103 115 108 97 103 101 0

string_fel20vid20skrivning#:
x6070:	db "fel vid skrivning", 0	; 18: 102 101 108 32 118 105 100 32 115 107 114 105 118 110 105 110 103 0

string_fel20vid20lasning#:
x6088:	db "fel vid lasning", 0	; 16: 102 101 108 32 118 105 100 32 108 97 115 110 105 110 103 0

string_fel20vid20sokning#:
x6104:	db "fel vid sokning", 0	; 16: 102 101 108 32 118 105 100 32 115 111 107 110 105 110 103 0

string_fel20vid20telling#:
x6120:	db "fel vid telling", 0	; 16: 102 101 108 32 118 105 100 32 116 101 108 108 105 110 103 0

string_fel20vid20borttagning20av20fil#:
x6136:	db "fel vid borttagning av fil", 0	; 27: 102 101 108 32 118 105 100 32 98 111 114 116 116 97 103 110 105 110 103 32 97 118 32 102 105 108 0

string_fel20vid20namnbyte20av20fil#:
x6163:	db "fel vid namnbyte av fil", 0	; 24: 102 101 108 32 118 105 100 32 110 97 109 110 98 121 116 101 32 97 118 32 102 105 108 0

string_C#:
x6187:	db "C", 0	; 2: 67 0

@13$en_US_utf8:
x6189:	dw -5	; 2: -5 -1
x6191:	dw -4	; 2: -4 -1
x6193:	dw @9$enShortDayList ; 2: 63 24
x6195:	dw @10$enLongDayList ; 2: 105 24
x6197:	dw @11$enShortMonthList ; 2: -70 21
x6199:	dw @12$enLongMonthList ; 2: -80 24
x6201:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: 112 22
x6203:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -117 22
x6205:	dw enMessageList ; 2: -8 24

@9$enShortDayList:
x6207:	dw string_Sun# ; 2: 77 24
x6209:	dw string_Mon# ; 2: 81 24
x6211:	dw string_Tue# ; 2: 85 24
x6213:	dw string_Wed# ; 2: 89 24
x6215:	dw string_Thu# ; 2: 93 24
x6217:	dw string_Fri# ; 2: 97 24
x6219:	dw string_Sat# ; 2: 101 24

string_Sun#:
x6221:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x6225:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x6229:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x6233:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x6237:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x6241:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x6245:	db "Sat", 0	; 4: 83 97 116 0

@10$enLongDayList:
x6249:	dw string_Sunday# ; 2: 119 24
x6251:	dw string_Monday# ; 2: 126 24
x6253:	dw string_Tuesday# ; 2: -123 24
x6255:	dw string_Wednesday# ; 2: -115 24
x6257:	dw string_Thursday# ; 2: -105 24
x6259:	dw string_Friday# ; 2: -96 24
x6261:	dw string_Saturday# ; 2: -89 24

string_Sunday#:
x6263:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x6270:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x6277:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x6285:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x6295:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x6304:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x6311:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@12$enLongMonthList:
x6320:	dw string_January# ; 2: -56 24
x6322:	dw string_February# ; 2: -48 24
x6324:	dw string_March# ; 2: -39 24
x6326:	dw string_April# ; 2: 48 22
x6328:	dw string_May# ; 2: -30 21
x6330:	dw string_June# ; 2: -33 24
x6332:	dw string_July# ; 2: -28 24
x6334:	dw string_August# ; 2: -23 24
x6336:	dw string_September# ; 2: 76 22
x6338:	dw string_October# ; 2: -16 24
x6340:	dw string_November# ; 2: 94 22
x6342:	dw string_December# ; 2: 103 22

string_January#:
x6344:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x6352:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x6361:	db "March", 0	; 6: 77 97 114 99 104 0

string_June#:
x6367:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x6372:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x6377:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_October#:
x6384:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

enMessageList:
x6392:	dw string_no20error# ; 2: 32 25
x6394:	dw string_function20number20invalid# ; 2: 41 25
x6396:	dw string_file20not20found# ; 2: 65 25
x6398:	dw string_path20not20found# ; 2: 80 25
x6400:	dw string_no20handle20available# ; 2: 95 25
x6402:	dw string_access20denied# ; 2: 115 25
x6404:	dw string_out20of20domain# ; 2: -127 25
x6406:	dw string_out20of20range# ; 2: -113 25
x6408:	dw string_invalid20multibyte20sequence# ; 2: -100 25
x6410:	dw string_error20while20opening# ; 2: -73 25
x6412:	dw string_error20while20flushing# ; 2: -53 25
x6414:	dw string_error20while20closing# ; 2: -32 25
x6416:	dw string_open20mode20invalid# ; 2: -12 25
x6418:	dw string_error20while20writing# ; 2: 6 26
x6420:	dw string_error20while20reading# ; 2: 26 26
x6422:	dw string_error20while20seeking# ; 2: 46 26
x6424:	dw string_error20while20telling# ; 2: 66 26
x6426:	dw string_error20while20sizing# ; 2: 86 26
x6428:	dw string_error20while20removing20file# ; 2: 105 26
x6430:	dw string_error20while20renaming20file# ; 2: -125 26

string_no20error#:
x6432:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x6441:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x6465:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x6480:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x6495:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x6515:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x6529:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x6543:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x6556:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x6583:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x6603:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x6624:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x6644:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x6662:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x6682:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x6702:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x6722:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x6742:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x6761:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x6787:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_US#:
x6813:	db "US", 0	; 3: 85 83 0

string_SE#:
x6816:	db "SE", 0	; 3: 83 69 0

strchr:	; £temporary3288 = int_to_int i (Signed_Int -> Signed_Char)
x6819:	mov ax, [bp + 8]	; 3: -117 70 8
x6822:	cmp ax, 0	; 3: -125 -8 0
x6825:	jge strchr$1	; 2: 125 4
x6827:	neg ax	; 2: -9 -40
x6829:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary3288
x6831:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x6834:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary3290 = text + index
x6839:	mov si, [bp + 6]	; 3: -117 118 6
x6842:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary3289 -> £temporary3290 = *£temporary3290

strchr$5:	; if £temporary3289 -> £temporary3290 == 0 goto 16
x6845:	cmp byte [si], 0	; 3: -128 60 0
x6848:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary3294 = text + index
x6850:	mov si, [bp + 6]	; 3: -117 118 6
x6853:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary3293 -> £temporary3294 = *£temporary3294

strchr$8:	; if £temporary3293 -> £temporary3294 != c goto 14
x6856:	mov al, [bp + 12]	; 3: -118 70 12
x6859:	cmp [si], al	; 2: 56 4
x6861:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary3297 = text + index
x6863:	mov bx, [bp + 6]	; 3: -117 94 6
x6866:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary3296 -> £temporary3297 = *£temporary3297

strchr$11:	; £temporary3298 = &£temporary3296 -> £temporary3297

strchr$12:	; return_value = £temporary3298

strchr$13:	; return
x6869:	mov ax, [bp]	; 3: -117 70 0
x6872:	mov di, [bp + 4]	; 3: -117 126 4
x6875:	mov bp, [bp + 2]	; 3: -117 110 2
x6878:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x6880:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x6883:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x6885:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x6888:	mov ax, [bp]	; 3: -117 70 0
x6891:	mov di, [bp + 4]	; 3: -117 126 4
x6894:	mov bp, [bp + 2]	; 3: -117 110 2
x6897:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x6899:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6903:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x6905:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x6909:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 11 27
x6914:	mov [bp + 24], bp	; 3: -119 110 24
x6917:	add bp, 22	; 3: -125 -59 22
x6920:	jmp printChar	; 3: -23 -33 -9

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x6923:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x6927:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x6929:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x6933:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 35 27
x6938:	mov [bp + 24], bp	; 3: -119 110 24
x6941:	add bp, 22	; 3: -125 -59 22
x6944:	jmp printChar	; 3: -23 -57 -9

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x6947:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x6951:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x6953:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x6958:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x6960:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x6964:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 66 27
x6969:	mov [bp + 24], bp	; 3: -119 110 24
x6972:	add bp, 22	; 3: -125 -59 22
x6975:	jmp printChar	; 3: -23 -88 -9

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x6978:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x6983:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x6985:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x6989:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 91 27
x6994:	mov [bp + 24], bp	; 3: -119 110 24
x6997:	add bp, 22	; 3: -125 -59 22
x7000:	jmp printChar	; 3: -23 -113 -9

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x7003:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x7007:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1945 = 88
x7009:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x7011:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1945 = 120
x7013:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1945, offset 6
x7015:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x7018:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 120 27
x7023:	mov [bp + 24], bp	; 3: -119 110 24
x7026:	add bp, 22	; 3: -125 -59 22
x7029:	jmp printChar	; 3: -23 114 -9

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x7032:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7037:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x7039:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x7043:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 -111 27
x7048:	mov [bp + 24], bp	; 3: -119 110 24
x7051:	add bp, 22	; 3: -125 -59 22
x7054:	jmp printChar	; 3: -23 89 -9

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x7057:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x7059:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7063:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x7067:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x7071:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x7075:	mov ax, [bp + 20]	; 3: -117 70 20
x7078:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x7081:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 -73 27
x7086:	mov [bp + 24], bp	; 3: -119 110 24
x7089:	add bp, 22	; 3: -125 -59 22
x7092:	nop	; 1: -112
x7093:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x7095:	mov ax, [bp]	; 3: -117 70 0
x7098:	mov di, [bp + 4]	; 3: -117 126 4
x7101:	mov bp, [bp + 2]	; 3: -117 110 2
x7104:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x7106:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7111:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1921 = unsignedValue % base
x7113:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7117:	xor edx, edx	; 3: 102 49 -46
x7120:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1922 = int_to_int £temporary1921 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1922
x7124:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1923 = unsignedValue / base
x7127:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7131:	xor edx, edx	; 3: 102 49 -46
x7134:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1923, offset 6
x7138:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x7142:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x7146:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x7150:	mov ax, [bp + 14]	; 3: -117 70 14
x7153:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x7156:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 2 28
x7161:	mov [bp + 20], bp	; 3: -119 110 20
x7164:	add bp, 18	; 3: -125 -59 18
x7167:	nop	; 1: -112
x7168:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x7170:	mov ax, [bp + 16]	; 3: -117 70 16
x7173:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x7176:	mov ax, [bp + 14]	; 3: -117 70 14
x7179:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x7182:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 28 28
x7187:	mov [bp + 20], bp	; 3: -119 110 20
x7190:	add bp, 18	; 3: -125 -59 18
x7193:	nop	; 1: -112
x7194:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1925 = return_value

printUnsignedLongRec$17:	; c = £temporary1925
x7196:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x7199:	mov al, [bp + 18]	; 3: -118 70 18
x7202:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x7205:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 51 28
x7210:	mov [bp + 21], bp	; 3: -119 110 21
x7213:	add bp, 19	; 3: -125 -59 19
x7216:	jmp printChar	; 3: -23 -73 -10

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x7219:	mov ax, [bp]	; 3: -117 70 0
x7222:	mov di, [bp + 4]	; 3: -117 126 4
x7225:	mov bp, [bp + 2]	; 3: -117 110 2
x7228:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x7230:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x7234:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1911 = digit + 48
x7236:	mov bx, [bp + 6]	; 3: -117 94 6
x7239:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1912 = int_to_int £temporary1911 (Signed_Int -> Signed_Char)
x7242:	cmp bx, 0	; 3: -125 -5 0
x7245:	jge digitToChar$3	; 2: 125 4
x7247:	neg bx	; 2: -9 -37
x7249:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1912

digitToChar$4:	; return
x7251:	mov ax, [bp]	; 3: -117 70 0
x7254:	mov di, [bp + 4]	; 3: -117 126 4
x7257:	mov bp, [bp + 2]	; 3: -117 110 2
x7260:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x7262:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7266:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1913 = digit - 10
x7268:	mov bx, [bp + 6]	; 3: -117 94 6
x7271:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1914 = £temporary1913 + 65
x7274:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1915 = int_to_int £temporary1914 (Signed_Int -> Signed_Char)
x7277:	cmp bx, 0	; 3: -125 -5 0
x7280:	jge digitToChar$9	; 2: 125 4
x7282:	neg bx	; 2: -9 -37
x7284:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1915

digitToChar$10:	; return
x7286:	mov ax, [bp]	; 3: -117 70 0
x7289:	mov di, [bp + 4]	; 3: -117 126 4
x7292:	mov bp, [bp + 2]	; 3: -117 110 2
x7295:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1916 = digit - 10
x7297:	mov bx, [bp + 6]	; 3: -117 94 6
x7300:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1917 = £temporary1916 + 97
x7303:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1918 = int_to_int £temporary1917 (Signed_Int -> Signed_Char)
x7306:	cmp bx, 0	; 3: -125 -5 0
x7309:	jge digitToChar$14	; 2: 125 4
x7311:	neg bx	; 2: -9 -37
x7313:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1918

digitToChar$15:	; return
x7315:	mov ax, [bp]	; 3: -117 70 0
x7318:	mov di, [bp + 4]	; 3: -117 126 4
x7321:	mov bp, [bp + 2]	; 3: -117 110 2
x7324:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x7326:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x7329:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x7331:	fcompp	; 2: -34 -39
x7333:	fstsw ax	; 3: -101 -33 -32
x7336:	sahf	; 1: -98
x7337:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x7339:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x7343:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 -67 28
x7348:	mov [bp + 24], bp	; 3: -119 110 24
x7351:	add bp, 22	; 3: -125 -59 22
x7354:	jmp printChar	; 3: -23 45 -10

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x7357:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1981 = -longDoubleValue
x7360:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x7362:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x7365:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x7370:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x7375:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1982 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7378:	fistp dword [container4bytes#]	; 4: -37 30 54 29
x7382:	mov eax, [container4bytes#]	; 4: 102 -95 54 29

printLongDoublePlain$14:	; longValue = £temporary1982
x7386:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x7390:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x7394:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x7398:	mov ax, [bp + 14]	; 3: -117 70 14
x7401:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x7404:	mov ax, [bp + 16]	; 3: -117 70 16
x7407:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x7410:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 0 29
x7415:	mov [bp + 28], bp	; 3: -119 110 28
x7418:	add bp, 26	; 3: -125 -59 26
x7421:	jmp printLongInt	; 3: -23 86 -11

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x7424:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1984 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x7427:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1985 = longDoubleValue - £temporary1984
x7430:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x7432:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x7435:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x7438:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x7441:	mov ax, [bp + 18]	; 3: -117 70 18
x7444:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x7447:	mov ax, [bp + 20]	; 3: -117 70 20
x7450:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x7453:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 43 29
x7458:	mov [bp + 28], bp	; 3: -119 110 28
x7461:	add bp, 26	; 3: -125 -59 26
x7464:	nop	; 1: -112
x7465:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x7467:	mov ax, [bp]	; 3: -117 70 0
x7470:	mov di, [bp + 4]	; 3: -117 126 4
x7473:	mov bp, [bp + 2]	; 3: -117 110 2
x7476:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

container4bytes#:
x7478:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; push float longDoubleValue
x7482:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x7485:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1960 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x7488:	fistp dword [container4bytes#]	; 4: -37 30 54 29
x7492:	mov eax, [container4bytes#]	; 4: 102 -95 54 29

printLongDoubleFraction$3:	; £temporary1961 = int_to_float £temporary1960 (Signed_Long_Int -> Long_Double)
x7496:	mov [container4bytes#], eax	; 4: 102 -93 54 29
x7500:	fild dword [container4bytes#]	; 4: -37 6 54 29

printLongDoubleFraction$4:	; £temporary1962 = longDoubleValue - £temporary1961
x7504:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x7506:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x7509:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7513:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 9
x7515:	mov word [bp + 16], 9	; 5: -57 70 16 9 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x7520:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x7524:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x7526:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x7530:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x7532:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x7536:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 126 29
x7541:	mov [bp + 20], bp	; 3: -119 110 20
x7544:	add bp, 18	; 3: -125 -59 18
x7547:	jmp printChar	; 3: -23 108 -11

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1968 = precision
x7550:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x7553:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1968 <= 0 goto 34
x7556:	cmp ax, 0	; 3: -125 -8 0
x7559:	jle printLongDoubleFraction$34	; 2: 126 67

printLongDoubleFraction$17:	; push float 10.0
x7561:	fld qword [float8$10.0#]	; 4: -35 6 -41 29

printLongDoubleFraction$18:	; push float longDoubleValue
x7565:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1970 = 10.0 * longDoubleValue
x7568:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; top float longDoubleValue10
x7570:	fst qword [bp + 18]	; 3: -35 86 18

printLongDoubleFraction$21:	; £temporary1971 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x7573:	fistp word [container2bytes#]	; 4: -33 30 -23 17
x7577:	mov ax, [container2bytes#]	; 3: -95 -23 17

printLongDoubleFraction$22:	; digitValue = £temporary1971
x7580:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$23:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$24:	; £temporary1972 = digitValue + 48
x7583:	mov ax, [bp + 26]	; 3: -117 70 26
x7586:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$25:	; £temporary1973 = int_to_int £temporary1972 (Signed_Int -> Signed_Char)
x7589:	cmp ax, 0	; 3: -125 -8 0
x7592:	jge printLongDoubleFraction$26	; 2: 125 4
x7594:	neg ax	; 2: -9 -40
x7596:	neg al	; 2: -10 -40

printLongDoubleFraction$26:	; parameter £temporary1973, offset 6
x7598:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$27:	; call function noellipse-noellipse printChar
x7601:	mov word [bp + 28], printLongDoubleFraction$28	; 5: -57 70 28 -65 29
x7606:	mov [bp + 30], bp	; 3: -119 110 30
x7609:	add bp, 28	; 3: -125 -59 28
x7612:	jmp printChar	; 3: -23 43 -11

printLongDoubleFraction$28:	; post call

printLongDoubleFraction$29:	; push float longDoubleValue10
x7615:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$30:	; £temporary1975 = int_to_float digitValue (Signed_Int -> Long_Double)
x7618:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$31:	; £temporary1976 = longDoubleValue10 - £temporary1975
x7621:	fsub	; 2: -34 -23

printLongDoubleFraction$32:	; pop float longDoubleValue
x7623:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$33:	; goto 14
x7626:	jmp printLongDoubleFraction$14	; 2: -21 -78

printLongDoubleFraction$34:	; return
x7628:	mov ax, [bp]	; 3: -117 70 0
x7631:	mov di, [bp + 4]	; 3: -117 126 4
x7634:	mov bp, [bp + 2]	; 3: -117 110 2
x7637:	jmp ax	; 2: -1 -32

printLongDoubleFraction$35:	; function end printLongDoubleFraction

float8$10.0#:
x7639:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x7647:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x7650:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x7652:	fcompp	; 2: -34 -39
x7654:	fstsw ax	; 3: -101 -33 -32
x7657:	sahf	; 1: -98
x7658:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x7660:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary883 = -x
x7663:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x7665:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x7667:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary887

fabs$9:	; return
x7670:	mov ax, [bp]	; 3: -117 70 0
x7673:	mov di, [bp + 4]	; 3: -117 126 4
x7676:	mov bp, [bp + 2]	; 3: -117 110 2
x7679:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x7681:	mov ax, [bp + 6]	; 3: -117 70 6
x7684:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x7687:	mov word [bp + 8], tolower$3	; 5: -57 70 8 21 30
x7692:	mov [bp + 10], bp	; 3: -119 110 10
x7695:	add bp, 8	; 3: -125 -59 8
x7698:	jmp isupper	; 3: -23 -115 -10

tolower$3:	; post call

tolower$4:	; £temporary417 = return_value

tolower$5:	; if £temporary417 == 0 goto 31
x7701:	cmp bx, 0	; 3: -125 -5 0
x7704:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x7706:	mov word [bp + 8], tolower$8	; 5: -57 70 8 40 30
x7711:	mov [bp + 10], bp	; 3: -119 110 10
x7714:	add bp, 8	; 3: -125 -59 8
x7717:	jmp localeconv	; 3: -23 -27 -10

tolower$8:	; post call

tolower$9:	; £temporary418 = return_value

tolower$10:	; localeConvPtr = £temporary418
x7720:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x7723:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7727:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary420 -> localeConvPtr = *localeConvPtr, offset 12
x7729:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary420 -> localeConvPtr
x7732:	mov ax, [si + 12]	; 3: -117 68 12
x7735:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary421 -> localeConvPtr = *localeConvPtr, offset 14
x7738:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary421 -> localeConvPtr
x7741:	mov ax, [si + 14]	; 3: -117 68 14
x7744:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x7747:	mov ax, [bp + 12]	; 3: -117 70 12
x7750:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x7753:	mov ax, [bp + 6]	; 3: -117 70 6
x7756:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x7759:	mov word [bp + 14], tolower$20	; 5: -57 70 14 93 30
x7764:	mov [bp + 16], bp	; 3: -119 110 16
x7767:	add bp, 14	; 3: -125 -59 14
x7770:	jmp strchr	; 3: -23 70 -4

tolower$20:	; post call

tolower$21:	; £temporary422 = return_value

tolower$22:	; index = £temporary422 - upperCase
x7773:	sub bx, [bp + 12]	; 3: 43 94 12
x7776:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary425 = lowerCase + index
x7779:	mov si, [bp + 10]	; 3: -117 118 10
x7782:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary424 -> £temporary425 = *£temporary425

tolower$25:	; £temporary426 = int_to_int £temporary424 -> £temporary425 (Signed_Char -> Signed_Int)
x7785:	mov bl, [si]	; 2: -118 28
x7787:	and bx, 255	; 4: -127 -29 -1 0
x7791:	cmp bl, 0	; 3: -128 -5 0
x7794:	jge tolower$26	; 2: 125 4
x7796:	neg bl	; 2: -10 -37
x7798:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary426

tolower$27:	; return
x7800:	mov ax, [bp]	; 3: -117 70 0
x7803:	mov di, [bp + 4]	; 3: -117 126 4
x7806:	mov bp, [bp + 2]	; 3: -117 110 2
x7809:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary427 = c + 32
x7811:	mov bx, [bp + 6]	; 3: -117 94 6
x7814:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary427

tolower$30:	; return
x7817:	mov ax, [bp]	; 3: -117 70 0
x7820:	mov di, [bp + 4]	; 3: -117 126 4
x7823:	mov bp, [bp + 2]	; 3: -117 110 2
x7826:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x7828:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x7831:	mov ax, [bp]	; 3: -117 70 0
x7834:	mov di, [bp + 4]	; 3: -117 126 4
x7837:	mov bp, [bp + 2]	; 3: -117 110 2
x7840:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x7842:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x7845:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x7847:	fcompp	; 2: -34 -39
x7849:	fstsw ax	; 3: -101 -33 -32
x7852:	sahf	; 1: -98
x7853:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x7855:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x7859:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 -63 30
x7864:	mov [bp + 26], bp	; 3: -119 110 26
x7867:	add bp, 24	; 3: -125 -59 24
x7870:	jmp printChar	; 3: -23 41 -12

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x7873:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x7875:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x7878:	mov ax, [bp + 20]	; 3: -117 70 20
x7881:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x7884:	mov ax, [bp + 18]	; 3: -117 70 18
x7887:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x7890:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 -32 30
x7895:	mov [bp + 26], bp	; 3: -119 110 26
x7898:	add bp, 24	; 3: -125 -59 24
x7901:	jmp printLongDoubleFraction	; 3: -23 90 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x7904:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x7908:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary2001 = 69
x7910:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x7912:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary2001 = 101
x7914:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary2001, offset 6
x7916:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x7919:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 -3 30
x7924:	mov [bp + 26], bp	; 3: -119 110 26
x7927:	add bp, 24	; 3: -125 -59 24
x7930:	jmp printChar	; 3: -23 -19 -13

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x7933:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x7937:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 15 31
x7942:	mov [bp + 26], bp	; 3: -119 110 26
x7945:	add bp, 24	; 3: -125 -59 24
x7948:	jmp printChar	; 3: -23 -37 -13

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x7951:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x7954:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x7957:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x7959:	fcompp	; 2: -34 -39
x7961:	fstsw ax	; 3: -101 -33 -32
x7964:	sahf	; 1: -98
x7965:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x7967:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x7971:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 49 31
x7976:	mov [bp + 26], bp	; 3: -119 110 26
x7979:	add bp, 24	; 3: -125 -59 24
x7982:	jmp printChar	; 3: -23 -71 -13

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x7985:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary2006 = -value
x7988:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x7990:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x7993:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x7996:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x7999:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 77 31
x8004:	mov [bp + 26], bp	; 3: -119 110 26
x8007:	add bp, 24	; 3: -125 -59 24
x8010:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary2007 = return_value

printLongDoubleExpo$43:	; £temporary2008 = float_to_int £temporary2007 (Double -> Signed_Int)
x8013:	fistp word [container2bytes#]	; 4: -33 30 -23 17
x8017:	mov ax, [container2bytes#]	; 3: -95 -23 17

printLongDoubleExpo$44:	; expo = £temporary2008
x8020:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x8023:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x8026:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x8029:	fld qword [float8$10.0#]	; 4: -35 6 -41 29

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x8033:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary2009 = int_to_float expo (Signed_Int -> Double)
x8036:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary2009, offset 14
x8039:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x8042:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 120 31
x8047:	mov [bp + 36], bp	; 3: -119 110 36
x8050:	add bp, 34	; 3: -125 -59 34
x8053:	jmp pow	; 3: -23 -22 1

printLongDoubleExpo$52:	; post call
x8056:	fstp qword [bp + 34]	; 3: -35 94 34
x8059:	fld qword [bp + 26]	; 3: -35 70 26
x8062:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary2010 = return_value

printLongDoubleExpo$54:	; £temporary2011 = value / £temporary2010
x8065:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x8067:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x8070:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x8073:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x8076:	mov ax, [bp + 14]	; 3: -117 70 14
x8079:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x8082:	mov ax, [bp + 16]	; 3: -117 70 16
x8085:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x8088:	mov ax, [bp + 18]	; 3: -117 70 18
x8091:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x8094:	mov ax, [bp + 20]	; 3: -117 70 20
x8097:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x8100:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 -78 31
x8105:	mov [bp + 28], bp	; 3: -119 110 28
x8108:	add bp, 26	; 3: -125 -59 26
x8111:	jmp printLongDoublePlain	; 3: -23 -20 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x8114:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x8118:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary2017 = 69
x8120:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x8122:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary2017 = 101
x8124:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary2017, offset 6
x8126:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x8129:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 -49 31
x8134:	mov [bp + 28], bp	; 3: -119 110 28
x8137:	add bp, 26	; 3: -125 -59 26
x8140:	jmp printChar	; 3: -23 27 -13

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary2019 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x8143:	mov ax, [bp + 24]	; 3: -117 70 24
x8146:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8152:	cmp ax, 0	; 3: -125 -8 0
x8155:	jge printLongDoubleExpo$75	; 2: 125 5
x8157:	neg ax	; 2: -9 -40
x8159:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary2019, offset 6
x8162:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x8166:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x8171:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x8176:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 -2 31
x8181:	mov [bp + 28], bp	; 3: -119 110 28
x8184:	add bp, 26	; 3: -125 -59 26
x8187:	jmp printLongInt	; 3: -23 88 -14

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x8190:	mov ax, [bp]	; 3: -117 70 0
x8193:	mov di, [bp + 4]	; 3: -117 126 4
x8196:	mov bp, [bp + 2]	; 3: -117 110 2
x8199:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; push float 0.4342944820
x8201:	fld qword [float8$0.4342944820#]	; 4: -35 6 58 32

log10$1:	; call header integral zero 0 stack no zero 1
x8205:	fstp qword [bp + 14]	; 3: -35 94 14

log10$2:	; push float x
x8208:	fld qword [bp + 6]	; 3: -35 70 6

log10$3:	; parameter x, offset 6
x8211:	fstp qword [bp + 28]	; 3: -35 94 28

log10$4:	; call function noellipse-noellipse log
x8214:	mov word [bp + 22], log10$5	; 5: -57 70 22 36 32
x8219:	mov [bp + 24], bp	; 3: -119 110 24
x8222:	add bp, 22	; 3: -125 -59 22
x8225:	nop	; 1: -112
x8226:	jmp log	; 2: -21 30

log10$5:	; post call
x8228:	fstp qword [bp + 22]	; 3: -35 94 22
x8231:	fld qword [bp + 14]	; 3: -35 70 14
x8234:	fld qword [bp + 22]	; 3: -35 70 22

log10$6:	; £temporary510 = return_value

log10$7:	; £temporary511 = 0.4342944820 * £temporary510
x8237:	fmul	; 2: -34 -55

log10$8:	; return_value = £temporary511

log10$9:	; return
x8239:	mov ax, [bp]	; 3: -117 70 0
x8242:	mov di, [bp + 4]	; 3: -117 126 4
x8245:	mov bp, [bp + 2]	; 3: -117 110 2
x8248:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$0.4342944820#:
x8250:	dq 0.4342944820	; 8: 26 125 65 21 123 -53 -37 63

log:	; push float x_plus_1
x8258:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x8261:	fldz	; 2: -39 -18

log$2:	; if x_plus_1 <= 0 goto 70
x8263:	fcompp	; 2: -34 -39
x8265:	fstsw ax	; 3: -101 -33 -32
x8268:	sahf	; 1: -98
x8269:	jae log$70	; 4: 15 -125 -44 0

log$3:	; expo = 0
x8273:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x_plus_1
x8278:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push float 0.3678794411714423216036827922
x8281:	fld qword [float8$0.3678794411714423216036827922#]	; 4: -35 6 56 33

log$6:	; if x_plus_1 >= 0.3678794411714423216036827922 goto 13
x8285:	fcompp	; 2: -34 -39
x8287:	fstsw ax	; 3: -101 -33 -32
x8290:	sahf	; 1: -98
x8291:	jbe log$13	; 2: 118 17

log$7:	; push float x_plus_1
x8293:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push float 2.7182818284590452353
x8296:	fld qword [float8$2.7182818284590452353#]	; 4: -35 6 64 33

log$9:	; £temporary493 = x_plus_1 * 2.7182818284590452353
x8300:	fmul	; 2: -34 -55

log$10:	; pop float x_plus_1
x8302:	fstp qword [bp + 6]	; 3: -35 94 6

log$11:	; --expo
x8305:	dec word [bp + 14]	; 3: -1 78 14

log$12:	; goto 4
x8308:	jmp log$4	; 2: -21 -32

log$13:	; push float x_plus_1
x8310:	fld qword [bp + 6]	; 3: -35 70 6

log$14:	; push float 0.7357588823428846432073655843
x8313:	fld qword [float8$0.7357588823428846432073655843#]	; 4: -35 6 72 33

log$15:	; if x_plus_1 <= 0.7357588823428846432073655843 goto 22
x8317:	fcompp	; 2: -34 -39
x8319:	fstsw ax	; 3: -101 -33 -32
x8322:	sahf	; 1: -98
x8323:	jae log$22	; 2: 115 17

log$16:	; push float x_plus_1
x8325:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 2.7182818284590452353
x8328:	fld qword [float8$2.7182818284590452353#]	; 4: -35 6 64 33

log$18:	; £temporary496 = x_plus_1 / 2.7182818284590452353
x8332:	fdiv	; 2: -34 -7

log$19:	; pop float x_plus_1
x8334:	fstp qword [bp + 6]	; 3: -35 94 6

log$20:	; ++expo
x8337:	inc word [bp + 14]	; 3: -1 70 14

log$21:	; goto 13
x8340:	jmp log$13	; 2: -21 -32

log$22:	; push 1
x8342:	fld1	; 2: -39 -24

log$23:	; pop float n
x8344:	fstp qword [bp + 16]	; 3: -35 94 16

log$24:	; push 1
x8347:	fld1	; 2: -39 -24

log$25:	; pop float plusMinusOne
x8349:	fstp qword [bp + 24]	; 3: -35 94 24

log$26:	; push float x_plus_1
x8352:	fld qword [bp + 6]	; 3: -35 70 6

log$27:	; push 1
x8355:	fld1	; 2: -39 -24

log$28:	; £temporary498 = x_plus_1 - 1
x8357:	fsub	; 2: -34 -23

log$29:	; pop float x
x8359:	fstp qword [bp + 32]	; 3: -35 94 32

log$30:	; push 0
x8362:	fldz	; 2: -39 -18

log$31:	; pop float sum
x8364:	fstp qword [bp + 48]	; 3: -35 94 48

log$32:	; push float x
x8367:	fld qword [bp + 32]	; 3: -35 70 32

log$33:	; pop float power
x8370:	fstp qword [bp + 56]	; 3: -35 94 56

log$34:	; push float plusMinusOne
x8373:	fld qword [bp + 24]	; 3: -35 70 24

log$35:	; push float power
x8376:	fld qword [bp + 56]	; 3: -35 70 56

log$36:	; push float n
x8379:	fld qword [bp + 16]	; 3: -35 70 16

log$37:	; push 1
x8382:	fld1	; 2: -39 -24

log$38:	; n = n + 1
x8384:	fadd	; 2: -34 -63

log$39:	; top float n
x8386:	fst qword [bp + 16]	; 3: -35 86 16

log$40:	; push 1
x8389:	fld1	; 2: -39 -24

log$41:	; n = n - 1
x8391:	fsub	; 2: -34 -23

log$42:	; £temporary500 = power / £temporary499
x8393:	fdiv	; 2: -34 -7

log$43:	; £temporary501 = plusMinusOne * £temporary500
x8395:	fmul	; 2: -34 -55

log$44:	; pop float term
x8397:	fstp qword [bp + 40]	; 3: -35 94 40

log$45:	; push float sum
x8400:	fld qword [bp + 48]	; 3: -35 70 48

log$46:	; push float term
x8403:	fld qword [bp + 40]	; 3: -35 70 40

log$47:	; £temporary502 = sum + term
x8406:	fadd	; 2: -34 -63

log$48:	; pop float sum
x8408:	fstp qword [bp + 48]	; 3: -35 94 48

log$49:	; push float power
x8411:	fld qword [bp + 56]	; 3: -35 70 56

log$50:	; push float x
x8414:	fld qword [bp + 32]	; 3: -35 70 32

log$51:	; £temporary503 = power * x
x8417:	fmul	; 2: -34 -55

log$52:	; pop float power
x8419:	fstp qword [bp + 56]	; 3: -35 94 56

log$53:	; push float plusMinusOne
x8422:	fld qword [bp + 24]	; 3: -35 70 24

log$54:	; push float -1.0
x8425:	fld qword [float8$minus1.0#]	; 4: -35 6 80 33

log$55:	; £temporary504 = plusMinusOne * -1.0
x8429:	fmul	; 2: -34 -55

log$56:	; pop float plusMinusOne
x8431:	fstp qword [bp + 24]	; 3: -35 94 24

log$57:	; call header integral zero 0 stack zero 0

log$58:	; push float term
x8434:	fld qword [bp + 40]	; 3: -35 70 40

log$59:	; parameter term, offset 6
x8437:	fstp qword [bp + 70]	; 3: -35 94 70

log$60:	; call function noellipse-noellipse fabs
x8440:	mov word [bp + 64], log$61	; 5: -57 70 64 6 33
x8445:	mov [bp + 66], bp	; 3: -119 110 66
x8448:	add bp, 64	; 3: -125 -59 64
x8451:	jmp fabs	; 3: -23 -39 -4

log$61:	; post call

log$62:	; £temporary505 = return_value

log$63:	; push float 0.000000001
x8454:	fld qword [float8$0.000000001#]	; 4: -35 6 88 33

log$64:	; if £temporary505 > 0.000000001 goto 34
x8458:	fcompp	; 2: -34 -39
x8460:	fstsw ax	; 3: -101 -33 -32
x8463:	sahf	; 1: -98
x8464:	jb log$34	; 2: 114 -93

log$65:	; push float sum
x8466:	fld qword [bp + 48]	; 3: -35 70 48

log$66:	; £temporary507 = int_to_float expo (Signed_Int -> Double)
x8469:	fild word [bp + 14]	; 3: -33 70 14

log$67:	; £temporary508 = sum + £temporary507
x8472:	fadd	; 2: -34 -63

log$68:	; return_value = £temporary508

log$69:	; return
x8474:	mov ax, [bp]	; 3: -117 70 0
x8477:	mov di, [bp + 4]	; 3: -117 126 4
x8480:	mov bp, [bp + 2]	; 3: -117 110 2
x8483:	jmp ax	; 2: -1 -32

log$70:	; errno = 6
x8485:	mov word [errno], 6	; 6: -57 6 96 33 6 0

log$71:	; push 0
x8491:	fldz	; 2: -39 -18

log$72:	; return_value = 0

log$73:	; return
x8493:	mov ax, [bp]	; 3: -117 70 0
x8496:	mov di, [bp + 4]	; 3: -117 126 4
x8499:	mov bp, [bp + 2]	; 3: -117 110 2
x8502:	jmp ax	; 2: -1 -32

log$74:	; function end log

float8$0.3678794411714423216036827922#:
x8504:	dq 0.3678794411714423216036827922	; 8: 56 -17 44 54 86 -117 -41 63

float8$2.7182818284590452353#:
x8512:	dq 2.7182818284590452353	; 8: 105 87 20 -117 10 -65 5 64

float8$0.7357588823428846432073655843#:
x8520:	dq 0.7357588823428846432073655843	; 8: 56 -17 44 54 86 -117 -25 63

float8$minus1.0#:
x8528:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x8536:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

errno:
x8544:	dw 0	; 2: 0 0

pow:	; push float x
x8546:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x8549:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x8551:	fcompp	; 2: -34 -39
x8553:	fstsw ax	; 3: -101 -33 -32
x8556:	sahf	; 1: -98
x8557:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x8559:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x8562:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x8565:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x8568:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x8571:	mov word [bp + 30], pow$9	; 5: -57 70 30 -119 33
x8576:	mov [bp + 32], bp	; 3: -119 110 32
x8579:	add bp, 30	; 3: -125 -59 30
x8582:	jmp log	; 3: -23 -71 -2

pow$9:	; post call
x8585:	fstp qword [bp + 30]	; 3: -35 94 30
x8588:	fld qword [bp + 22]	; 3: -35 70 22
x8591:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary536 = return_value

pow$11:	; £temporary537 = y * £temporary536
x8594:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary537, offset 6
x8596:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x8599:	mov word [bp + 22], pow$14	; 5: -57 70 22 -91 33
x8604:	mov [bp + 24], bp	; 3: -119 110 24
x8607:	add bp, 22	; 3: -125 -59 22
x8610:	nop	; 1: -112
x8611:	jmp exp	; 2: -21 30

pow$14:	; post call

pow$15:	; £temporary538 = return_value

pow$16:	; return_value = £temporary538

pow$17:	; return
x8613:	mov ax, [bp]	; 3: -117 70 0
x8616:	mov di, [bp + 4]	; 3: -117 126 4
x8619:	mov bp, [bp + 2]	; 3: -117 110 2
x8622:	jmp ax	; 2: -1 -32

pow$18:	; errno = 6
x8624:	mov word [errno], 6	; 6: -57 6 96 33 6 0

pow$19:	; push 0
x8630:	fldz	; 2: -39 -18

pow$20:	; return_value = 0

pow$21:	; return
x8632:	mov ax, [bp]	; 3: -117 70 0
x8635:	mov di, [bp + 4]	; 3: -117 126 4
x8638:	mov bp, [bp + 2]	; 3: -117 110 2
x8641:	jmp ax	; 2: -1 -32

pow$22:	; function end pow

exp:	; push 0
x8643:	fldz	; 2: -39 -18

exp$1:	; pop float n
x8645:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x8648:	fld1	; 2: -39 -24

exp$3:	; pop float faculty
x8650:	fstp qword [bp + 22]	; 3: -35 94 22

exp$4:	; push 1
x8653:	fld1	; 2: -39 -24

exp$5:	; pop float power
x8655:	fstp qword [bp + 30]	; 3: -35 94 30

exp$6:	; push 0
x8658:	fldz	; 2: -39 -18

exp$7:	; pop float sum
x8660:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x8663:	fld qword [bp + 30]	; 3: -35 70 30

exp$9:	; push float faculty
x8666:	fld qword [bp + 22]	; 3: -35 70 22

exp$10:	; £temporary483 = power / faculty
x8669:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x8671:	fstp qword [bp + 38]	; 3: -35 94 38

exp$12:	; push float sum
x8674:	fld qword [bp + 46]	; 3: -35 70 46

exp$13:	; push float term
x8677:	fld qword [bp + 38]	; 3: -35 70 38

exp$14:	; £temporary484 = sum + term
x8680:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x8682:	fstp qword [bp + 46]	; 3: -35 94 46

exp$16:	; push float power
x8685:	fld qword [bp + 30]	; 3: -35 70 30

exp$17:	; push float x
x8688:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary485 = power * x
x8691:	fmul	; 2: -34 -55

exp$19:	; pop float power
x8693:	fstp qword [bp + 30]	; 3: -35 94 30

exp$20:	; push float faculty
x8696:	fld qword [bp + 22]	; 3: -35 70 22

exp$21:	; push float n
x8699:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x8702:	fld1	; 2: -39 -24

exp$23:	; n = n + 1
x8704:	fadd	; 2: -34 -63

exp$24:	; top float n
x8706:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary487 = faculty * £temporary486
x8709:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x8711:	fstp qword [bp + 22]	; 3: -35 94 22

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x8714:	fld qword [bp + 38]	; 3: -35 70 38

exp$29:	; parameter term, offset 6
x8717:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x8720:	mov word [bp + 54], exp$31	; 5: -57 70 54 30 34
x8725:	mov [bp + 56], bp	; 3: -119 110 56
x8728:	add bp, 54	; 3: -125 -59 54
x8731:	jmp fabs	; 3: -23 -63 -5

exp$31:	; post call

exp$32:	; £temporary488 = return_value

exp$33:	; push float 0.000000001
x8734:	fld qword [float8$0.000000001#]	; 4: -35 6 88 33

exp$34:	; if £temporary488 >= 0.000000001 goto 8
x8738:	fcompp	; 2: -34 -39
x8740:	fstsw ax	; 3: -101 -33 -32
x8743:	sahf	; 1: -98
x8744:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x8746:	fld qword [bp + 46]	; 3: -35 70 46

exp$36:	; return_value = sum

exp$37:	; return
x8749:	mov ax, [bp]	; 3: -117 70 0
x8752:	mov di, [bp + 4]	; 3: -117 126 4
x8755:	mov bp, [bp + 2]	; 3: -117 110 2
x8758:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

isdigit:	; if c < 48 goto 4
x8760:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x8764:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x8766:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x8770:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary352 = 1
x8772:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x8775:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary352 = 0
x8777:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary352

isdigit$6:	; return
x8780:	mov ax, [bp]	; 3: -117 70 0
x8783:	mov di, [bp + 4]	; 3: -117 126 4
x8786:	mov bp, [bp + 2]	; 3: -117 110 2
x8789:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

mktime:	; if tp == 0 goto 28
x8791:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x8795:	je mktime$28	; 4: 15 -124 -40 0

mktime$1:	; £temporary2758 -> tp = *tp, offset 10
x8799:	mov si, [bp + 6]	; 3: -117 118 6

mktime$2:	; £temporary2759 = £temporary2758 -> tp - 69
x8802:	mov ax, [si + 10]	; 3: -117 68 10
x8805:	sub ax, 69	; 3: -125 -24 69

mktime$3:	; £temporary2760 = £temporary2759 / 4
x8808:	xor dx, dx	; 2: 49 -46
x8810:	idiv word [int2$4#]	; 4: -9 62 72 35

mktime$4:	; £temporary2761 = int_to_int £temporary2760 (Signed_Int -> Signed_Long_Int)
x8814:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8820:	cmp ax, 0	; 3: -125 -8 0
x8823:	jge mktime$5	; 2: 125 5
x8825:	neg ax	; 2: -9 -40
x8827:	neg eax	; 3: 102 -9 -40

mktime$5:	; leapDays = £temporary2761
x8830:	mov [bp + 8], eax	; 4: 102 -119 70 8

mktime$6:	; £temporary2762 -> tp = *tp, offset 10
x8834:	mov si, [bp + 6]	; 3: -117 118 6

mktime$7:	; £temporary2763 = £temporary2762 -> tp - 70
x8837:	mov ax, [si + 10]	; 3: -117 68 10
x8840:	sub ax, 70	; 3: -125 -24 70

mktime$8:	; £temporary2764 = £temporary2763 * 365
x8843:	xor dx, dx	; 2: 49 -46
x8845:	imul word [int2$365#]	; 4: -9 46 74 35

mktime$9:	; £temporary2765 = int_to_int £temporary2764 (Signed_Int -> Signed_Long_Int)
x8849:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8855:	cmp ax, 0	; 3: -125 -8 0
x8858:	jge mktime$10	; 2: 125 5
x8860:	neg ax	; 2: -9 -40
x8862:	neg eax	; 3: 102 -9 -40

mktime$10:	; £temporary2766 = £temporary2765 + leapDays
x8865:	add eax, [bp + 8]	; 4: 102 3 70 8

mktime$11:	; £temporary2767 -> tp = *tp, offset 14
x8869:	mov si, [bp + 6]	; 3: -117 118 6

mktime$12:	; £temporary2768 = int_to_int £temporary2767 -> tp (Signed_Int -> Signed_Long_Int)
x8872:	mov bx, [si + 14]	; 3: -117 92 14
x8875:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x8882:	cmp bx, 0	; 3: -125 -5 0
x8885:	jge mktime$13	; 2: 125 5
x8887:	neg bx	; 2: -9 -37
x8889:	neg ebx	; 3: 102 -9 -37

mktime$13:	; totalDays = £temporary2766 + £temporary2768
x8892:	add eax, ebx	; 3: 102 1 -40
x8895:	mov [bp + 12], eax	; 4: 102 -119 70 12

mktime$14:	; £temporary2770 = totalDays * 86400
x8899:	mov eax, [bp + 12]	; 4: 102 -117 70 12
x8903:	xor edx, edx	; 3: 102 49 -46
x8906:	imul dword [int4$86400#]	; 5: 102 -9 46 76 35
x8911:	mov ebx, eax	; 3: 102 -119 -61

mktime$15:	; £temporary2771 -> tp = *tp, offset 4
x8914:	mov si, [bp + 6]	; 3: -117 118 6

mktime$16:	; £temporary2772 = int_to_int £temporary2771 -> tp (Signed_Int -> Signed_Long_Int)
x8917:	mov ax, [si + 4]	; 3: -117 68 4
x8920:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8926:	cmp ax, 0	; 3: -125 -8 0
x8929:	jge mktime$17	; 2: 125 5
x8931:	neg ax	; 2: -9 -40
x8933:	neg eax	; 3: 102 -9 -40

mktime$17:	; £temporary2773 = £temporary2772 * 3600
x8936:	xor edx, edx	; 3: 102 49 -46
x8939:	imul dword [int4$3600#]	; 5: 102 -9 46 80 35

mktime$18:	; £temporary2774 = £temporary2770 + £temporary2773
x8944:	add ebx, eax	; 3: 102 1 -61

mktime$19:	; £temporary2775 -> tp = *tp, offset 2
x8947:	mov si, [bp + 6]	; 3: -117 118 6

mktime$20:	; £temporary2776 = int_to_int £temporary2775 -> tp (Signed_Int -> Signed_Long_Int)
x8950:	mov ax, [si + 2]	; 3: -117 68 2
x8953:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8959:	cmp ax, 0	; 3: -125 -8 0
x8962:	jge mktime$21	; 2: 125 5
x8964:	neg ax	; 2: -9 -40
x8966:	neg eax	; 3: 102 -9 -40

mktime$21:	; £temporary2777 = £temporary2776 * 60
x8969:	xor edx, edx	; 3: 102 49 -46
x8972:	imul dword [int4$60#]	; 5: 102 -9 46 84 35

mktime$22:	; £temporary2778 = £temporary2774 + £temporary2777
x8977:	add ebx, eax	; 3: 102 1 -61

mktime$23:	; £temporary2779 -> tp = *tp
x8980:	mov si, [bp + 6]	; 3: -117 118 6

mktime$24:	; £temporary2780 = int_to_int £temporary2779 -> tp (Signed_Int -> Signed_Long_Int)
x8983:	mov ax, [si]	; 2: -117 4
x8985:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8991:	cmp ax, 0	; 3: -125 -8 0
x8994:	jge mktime$25	; 2: 125 5
x8996:	neg ax	; 2: -9 -40
x8998:	neg eax	; 3: 102 -9 -40

mktime$25:	; £temporary2781 = £temporary2778 + £temporary2780
x9001:	add ebx, eax	; 3: 102 1 -61

mktime$26:	; return_value = £temporary2781

mktime$27:	; return
x9004:	mov ax, [bp]	; 3: -117 70 0
x9007:	mov di, [bp + 4]	; 3: -117 126 4
x9010:	mov bp, [bp + 2]	; 3: -117 110 2
x9013:	jmp ax	; 2: -1 -32

mktime$28:	; return_value = 0
x9015:	mov ebx, 0	; 6: 102 -69 0 0 0 0

mktime$29:	; return
x9021:	mov ax, [bp]	; 3: -117 70 0
x9024:	mov di, [bp + 4]	; 3: -117 126 4
x9027:	mov bp, [bp + 2]	; 3: -117 110 2
x9030:	jmp ax	; 2: -1 -32

mktime$30:	; function end mktime

int2$4#:
x9032:	dw 4	; 2: 4 0

int2$365#:
x9034:	dw 365	; 2: 109 1

int4$86400#:
x9036:	dd 86400	; 4: -128 81 1 0

int4$3600#:
x9040:	dd 3600	; 4: 16 14 0 0

int4$60#:
x9044:	dd 60	; 4: 60 0 0 0

scanf:	; £temporary1791 = &format
x9048:	mov si, bp	; 2: -119 -18
x9050:	add si, 6	; 3: -125 -58 6

scanf$1:	; £temporary1792 = int_to_int £temporary1791 (Pointer -> Pointer)

scanf$2:	; arg_list = £temporary1792 + 2
x9053:	add si, 2	; 3: -125 -58 2
x9056:	mov [di + 8], si	; 3: -119 117 8

scanf$3:	; call header integral zero 0 stack zero 0

scanf$4:	; parameter format, offset 6
x9059:	mov ax, [bp + 6]	; 3: -117 70 6
x9062:	mov [di + 16], ax	; 3: -119 69 16

scanf$5:	; parameter arg_list, offset 8
x9065:	mov ax, [di + 8]	; 3: -117 69 8
x9068:	mov [di + 18], ax	; 3: -119 69 18

scanf$6:	; call function ellipse-noellipse vscanf
x9071:	mov word [di + 10], scanf$7	; 5: -57 69 10 -126 35
x9076:	mov [di + 12], bp	; 3: -119 109 12
x9079:	mov [di + 14], di	; 3: -119 125 14
x9082:	add di, 10	; 3: -125 -57 10
x9085:	mov bp, di	; 2: -119 -3
x9087:	nop	; 1: -112
x9088:	jmp vscanf	; 2: -21 11

scanf$7:	; post call

scanf$8:	; £temporary1794 = return_value

scanf$9:	; return_value = £temporary1794

scanf$10:	; return
x9090:	mov ax, [bp]	; 3: -117 70 0
x9093:	mov di, [bp + 4]	; 3: -117 126 4
x9096:	mov bp, [bp + 2]	; 3: -117 110 2
x9099:	jmp ax	; 2: -1 -32

scanf$11:	; function end scanf

vscanf:	; call header integral zero 0 stack zero 0

vscanf$1:	; parameter stdin, offset 6
x9101:	mov ax, [stdin]	; 3: -95 -72 35
x9104:	mov [bp + 16], ax	; 3: -119 70 16

vscanf$2:	; parameter format, offset 8
x9107:	mov ax, [bp + 6]	; 3: -117 70 6
x9110:	mov [bp + 18], ax	; 3: -119 70 18

vscanf$3:	; parameter arg_list, offset 10
x9113:	mov ax, [bp + 8]	; 3: -117 70 8
x9116:	mov [bp + 20], ax	; 3: -119 70 20

vscanf$4:	; call function noellipse-noellipse vfscanf
x9119:	mov word [bp + 10], vscanf$5	; 5: -57 70 10 -83 35
x9124:	mov [bp + 12], bp	; 3: -119 110 12
x9127:	add bp, 10	; 3: -125 -59 10
x9130:	nop	; 1: -112
x9131:	jmp vfscanf	; 2: -21 13

vscanf$5:	; post call

vscanf$6:	; £temporary1798 = return_value

vscanf$7:	; return_value = £temporary1798

vscanf$8:	; return
x9133:	mov ax, [bp]	; 3: -117 70 0
x9136:	mov di, [bp + 4]	; 3: -117 126 4
x9139:	mov bp, [bp + 2]	; 3: -117 110 2
x9142:	jmp ax	; 2: -1 -32

vscanf$9:	; function end vscanf

stdin:
x9144:	dw g_fileArray	; 2: 10 4

vfscanf:	; g_inStatus = 0
x9146:	mov word [g_inStatus], 0	; 6: -57 6 -21 35 0 0

vfscanf$1:	; £temporary1810 = int_to_int inStream (Pointer -> Pointer)
x9152:	mov ax, [bp + 6]	; 3: -117 70 6

vfscanf$2:	; g_inDevice = £temporary1810
x9155:	mov [g_inDevice], ax	; 3: -93 -19 35

vfscanf$3:	; call header integral zero 0 stack zero 0

vfscanf$4:	; parameter format, offset 6
x9158:	mov ax, [bp + 8]	; 3: -117 70 8
x9161:	mov [bp + 18], ax	; 3: -119 70 18

vfscanf$5:	; parameter arg_list, offset 8
x9164:	mov ax, [bp + 10]	; 3: -117 70 10
x9167:	mov [bp + 20], ax	; 3: -119 70 20

vfscanf$6:	; call function noellipse-noellipse scanFormat
x9170:	mov word [bp + 12], vfscanf$7	; 5: -57 70 12 -32 35
x9175:	mov [bp + 14], bp	; 3: -119 110 14
x9178:	add bp, 12	; 3: -125 -59 12
x9181:	nop	; 1: -112
x9182:	jmp scanFormat	; 2: -21 15

vfscanf$7:	; post call

vfscanf$8:	; £temporary1811 = return_value

vfscanf$9:	; return_value = £temporary1811

vfscanf$10:	; return
x9184:	mov ax, [bp]	; 3: -117 70 0
x9187:	mov di, [bp + 4]	; 3: -117 126 4
x9190:	mov bp, [bp + 2]	; 3: -117 110 2
x9193:	jmp ax	; 2: -1 -32

vfscanf$11:	; function end vfscanf

g_inStatus:
x9195:	db 0, 0	; 2: 0 0

g_inDevice:
x9197:	db 0, 0	; 2: 0 0

scanFormat:	; percent = 0
x9199:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$1:	; shortInt = 0
x9204:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$2:	; longIntOrDouble = 0
x9209:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$3:	; longDouble = 0
x9214:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$4:	; star = 0
x9219:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$5:	; g_inCount = 0
x9224:	mov word [g_inCount], 0	; 6: -57 6 17 41 0 0

scanFormat$6:	; g_inChars = 0
x9230:	mov word [g_inChars], 0	; 6: -57 6 19 41 0 0

scanFormat$7:	; index = 0
x9236:	mov word [bp + 31], 0	; 5: -57 70 31 0 0

scanFormat$8:	; £temporary1601 = format + index
x9241:	mov si, [bp + 6]	; 3: -117 118 6
x9244:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$9:	; £temporary1600 -> £temporary1601 = *£temporary1601

scanFormat$10:	; if £temporary1600 -> £temporary1601 == 0 goto 325
x9247:	cmp byte [si], 0	; 3: -128 60 0
x9250:	je scanFormat$325	; 4: 15 -124 -36 4

scanFormat$11:	; £temporary1605 = format + index
x9254:	mov si, [bp + 6]	; 3: -117 118 6
x9257:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$12:	; £temporary1604 -> £temporary1605 = *£temporary1605

scanFormat$13:	; c = £temporary1604 -> £temporary1605
x9260:	mov al, [si]	; 2: -118 4
x9262:	mov [bp + 10], al	; 3: -120 70 10

scanFormat$14:	; £temporary1606 = int_to_int c (Signed_Char -> Signed_Int)
x9265:	mov al, [bp + 10]	; 3: -118 70 10
x9268:	and ax, 255	; 3: 37 -1 0
x9271:	cmp al, 0	; 2: 60 0
x9273:	jge scanFormat$15	; 2: 125 4
x9275:	neg al	; 2: -10 -40
x9277:	neg ax	; 2: -9 -40

scanFormat$15:	; d = £temporary1606 + 1
x9279:	inc ax	; 1: 64
x9280:	mov [bp + 55], ax	; 3: -119 70 55

scanFormat$16:	; if percent == 0 goto 317
x9283:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x9287:	je scanFormat$317	; 4: 15 -124 -110 4

scanFormat$17:	; £temporary1608 = d - 1
x9291:	mov ax, [bp + 55]	; 3: -117 70 55
x9294:	dec ax	; 1: 72

scanFormat$18:	; case £temporary1608 == 104 goto 36
x9295:	cmp ax, 104	; 3: -125 -8 104
x9298:	je scanFormat$36	; 2: 116 100

scanFormat$19:	; case £temporary1608 == 108 goto 38
x9300:	cmp ax, 108	; 3: -125 -8 108
x9303:	je scanFormat$38	; 2: 116 103

scanFormat$20:	; case £temporary1608 == 76 goto 40
x9305:	cmp ax, 76	; 3: -125 -8 76
x9308:	je scanFormat$40	; 2: 116 106

scanFormat$21:	; case £temporary1608 == 42 goto 42
x9310:	cmp ax, 42	; 3: -125 -8 42
x9313:	je scanFormat$42	; 2: 116 109

scanFormat$22:	; case £temporary1608 == 99 goto 44
x9315:	cmp ax, 99	; 3: -125 -8 99
x9318:	je scanFormat$44	; 2: 116 112

scanFormat$23:	; case £temporary1608 == 115 goto 62
x9320:	cmp ax, 115	; 3: -125 -8 115
x9323:	je scanFormat$62	; 4: 15 -124 -72 0

scanFormat$24:	; case £temporary1608 == 100 goto 81
x9327:	cmp ax, 100	; 3: -125 -8 100
x9330:	je scanFormat$81	; 4: 15 -124 1 1

scanFormat$25:	; case £temporary1608 == 105 goto 81
x9334:	cmp ax, 105	; 3: -125 -8 105
x9337:	je scanFormat$81	; 4: 15 -124 -6 0

scanFormat$26:	; case £temporary1608 == 111 goto 116
x9341:	cmp ax, 111	; 3: -125 -8 111
x9344:	je scanFormat$116	; 4: 15 -124 -126 1

scanFormat$27:	; case £temporary1608 == 120 goto 152
x9348:	cmp ax, 120	; 3: -125 -8 120
x9351:	je scanFormat$152	; 4: 15 -124 -4 1

scanFormat$28:	; case £temporary1608 == 117 goto 188
x9355:	cmp ax, 117	; 3: -125 -8 117
x9358:	je scanFormat$188	; 4: 15 -124 118 2

scanFormat$29:	; case £temporary1608 == 103 goto 224
x9362:	cmp ax, 103	; 3: -125 -8 103
x9365:	je scanFormat$224	; 4: 15 -124 -16 2

scanFormat$30:	; case £temporary1608 == 102 goto 224
x9369:	cmp ax, 102	; 3: -125 -8 102
x9372:	je scanFormat$224	; 4: 15 -124 -23 2

scanFormat$31:	; case £temporary1608 == 101 goto 224
x9376:	cmp ax, 101	; 3: -125 -8 101
x9379:	je scanFormat$224	; 4: 15 -124 -30 2

scanFormat$32:	; case £temporary1608 == 91 goto 260
x9383:	cmp ax, 91	; 3: -125 -8 91
x9386:	je scanFormat$260	; 4: 15 -124 79 3

scanFormat$33:	; case £temporary1608 == 110 goto 301
x9390:	cmp ax, 110	; 3: -125 -8 110
x9393:	je scanFormat$301	; 4: 15 -124 -33 3

scanFormat$34:	; case end £temporary1608

scanFormat$35:	; goto 310
x9397:	jmp scanFormat$310	; 3: -23 -6 3

scanFormat$36:	; shortInt = 1
x9400:	mov word [bp + 15], 1	; 5: -57 70 15 1 0

scanFormat$37:	; goto 323
x9405:	jmp scanFormat$323	; 3: -23 60 4

scanFormat$38:	; longIntOrDouble = 1
x9408:	mov word [bp + 17], 1	; 5: -57 70 17 1 0

scanFormat$39:	; goto 323
x9413:	jmp scanFormat$323	; 3: -23 52 4

scanFormat$40:	; longDouble = 1
x9416:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanFormat$41:	; goto 323
x9421:	jmp scanFormat$323	; 3: -23 44 4

scanFormat$42:	; star = 1
x9424:	mov word [bp + 21], 1	; 5: -57 70 21 1 0

scanFormat$43:	; goto 323
x9429:	jmp scanFormat$323	; 3: -23 36 4

scanFormat$44:	; call header integral zero 0 stack zero 0

scanFormat$45:	; call function noellipse-noellipse scanChar
x9432:	mov word [bp + 57], scanFormat$46	; 5: -57 70 57 -26 36
x9437:	mov [bp + 59], bp	; 3: -119 110 59
x9440:	add bp, 57	; 3: -125 -59 57
x9443:	jmp scanChar	; 3: -23 68 4

scanFormat$46:	; post call

scanFormat$47:	; £temporary1609 = return_value

scanFormat$48:	; charValue = £temporary1609
x9446:	mov [bp + 57], bl	; 3: -120 94 57

scanFormat$49:	; if star != 0 goto 57
x9449:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9453:	jne scanFormat$57	; 2: 117 23

scanFormat$50:	; arg_list = arg_list + 2
x9455:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$51:	; £temporary1613 = arg_list - 2
x9459:	mov si, [bp + 8]	; 3: -117 118 8
x9462:	sub si, 2	; 3: -125 -18 2

scanFormat$52:	; £temporary1614 = int_to_int £temporary1613 (Signed_Int -> Pointer)

scanFormat$53:	; £temporary1615 -> £temporary1614 = *£temporary1614

scanFormat$54:	; charPtr = £temporary1615 -> £temporary1614
x9465:	mov ax, [si]	; 2: -117 4
x9467:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$55:	; £temporary1616 -> charPtr = *charPtr
x9470:	mov si, [bp + 11]	; 3: -117 118 11

scanFormat$56:	; £temporary1616 -> charPtr = charValue
x9473:	mov al, [bp + 57]	; 3: -118 70 57
x9476:	mov [si], al	; 2: -120 4

scanFormat$57:	; percent = 0
x9478:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$58:	; £temporary1617 = int_to_int charValue (Signed_Char -> Signed_Int)
x9483:	mov al, [bp + 57]	; 3: -118 70 57
x9486:	and ax, 255	; 3: 37 -1 0
x9489:	cmp al, 0	; 2: 60 0
x9491:	jge scanFormat$59	; 2: 125 4
x9493:	neg al	; 2: -10 -40
x9495:	neg ax	; 2: -9 -40

scanFormat$59:	; if £temporary1617 == -1 goto 323
x9497:	cmp ax, -1	; 3: -125 -8 -1
x9500:	je scanFormat$323	; 4: 15 -124 -36 3

scanFormat$60:	; ++g_inCount
x9504:	inc word [g_inCount]	; 4: -1 6 17 41

scanFormat$61:	; goto 323
x9508:	jmp scanFormat$323	; 3: -23 -43 3

scanFormat$62:	; if star != 0 goto 74
x9511:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9515:	jne scanFormat$74	; 2: 117 42

scanFormat$63:	; arg_list = arg_list + 2
x9517:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$64:	; £temporary1623 = arg_list - 2
x9521:	mov si, [bp + 8]	; 3: -117 118 8
x9524:	sub si, 2	; 3: -125 -18 2

scanFormat$65:	; £temporary1624 = int_to_int £temporary1623 (Signed_Int -> Pointer)

scanFormat$66:	; £temporary1625 -> £temporary1624 = *£temporary1624

scanFormat$67:	; charPtr = £temporary1625 -> £temporary1624
x9527:	mov ax, [si]	; 2: -117 4
x9529:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$68:	; call header integral zero 0 stack zero 0

scanFormat$69:	; parameter charPtr, offset 6
x9532:	mov ax, [bp + 11]	; 3: -117 70 11
x9535:	mov [bp + 63], ax	; 3: -119 70 63

scanFormat$70:	; parameter 0, offset 8
x9538:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$71:	; call function noellipse-noellipse scanString
x9543:	mov word [bp + 57], scanFormat$72	; 5: -57 70 57 85 37
x9548:	mov [bp + 59], bp	; 3: -119 110 59
x9551:	add bp, 57	; 3: -125 -59 57
x9554:	jmp scanString	; 3: -23 68 4

scanFormat$72:	; post call

scanFormat$73:	; goto 79
x9557:	jmp scanFormat$79	; 2: -21 24

scanFormat$74:	; call header integral zero 0 stack zero 0

scanFormat$75:	; parameter 0, offset 6
x9559:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

scanFormat$76:	; parameter 0, offset 8
x9564:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$77:	; call function noellipse-noellipse scanString
x9569:	mov word [bp + 57], scanFormat$78	; 5: -57 70 57 111 37
x9574:	mov [bp + 59], bp	; 3: -119 110 59
x9577:	add bp, 57	; 3: -125 -59 57
x9580:	jmp scanString	; 3: -23 42 4

scanFormat$78:	; post call

scanFormat$79:	; percent = 0
x9583:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$80:	; goto 323
x9588:	jmp scanFormat$323	; 3: -23 -123 3

scanFormat$81:	; call header integral zero 0 stack zero 0

scanFormat$82:	; call function noellipse-noellipse scanLongInt
x9591:	mov word [bp + 57], scanFormat$83	; 5: -57 70 57 -123 37
x9596:	mov [bp + 59], bp	; 3: -119 110 59
x9599:	add bp, 57	; 3: -125 -59 57
x9602:	jmp scanLongInt	; 3: -23 -104 6

scanFormat$83:	; post call

scanFormat$84:	; £temporary1628 = return_value

scanFormat$85:	; longValue = £temporary1628
x9605:	mov [bp + 23], ebx	; 4: 102 -119 94 23

scanFormat$86:	; if star != 0 goto 114
x9609:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9613:	jne scanFormat$114	; 2: 117 111

scanFormat$87:	; if shortInt == 0 goto 97
x9615:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9619:	je scanFormat$97	; 2: 116 37

scanFormat$88:	; arg_list = arg_list + 2
x9621:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$89:	; £temporary1632 = arg_list - 2
x9625:	mov si, [bp + 8]	; 3: -117 118 8
x9628:	sub si, 2	; 3: -125 -18 2

scanFormat$90:	; £temporary1633 = int_to_int £temporary1632 (Signed_Int -> Pointer)

scanFormat$91:	; £temporary1634 -> £temporary1633 = *£temporary1633

scanFormat$92:	; shortPtr = £temporary1634 -> £temporary1633
x9631:	mov ax, [si]	; 2: -117 4
x9633:	mov [bp + 29], ax	; 3: -119 70 29

scanFormat$93:	; £temporary1635 -> shortPtr = *shortPtr
x9636:	mov si, [bp + 29]	; 3: -117 118 29

scanFormat$94:	; £temporary1636 = int_to_int longValue (Signed_Long_Int -> Signed_Short_Int)
x9639:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9643:	cmp eax, 0	; 4: 102 -125 -8 0
x9647:	jge scanFormat$95	; 2: 125 5
x9649:	neg eax	; 3: 102 -9 -40
x9652:	neg al	; 2: -10 -40

scanFormat$95:	; £temporary1635 -> shortPtr = £temporary1636
x9654:	mov [si], al	; 2: -120 4

scanFormat$96:	; goto 114
x9656:	jmp scanFormat$114	; 2: -21 68

scanFormat$97:	; if longIntOrDouble != 0 goto 107
x9658:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9662:	jne scanFormat$107	; 2: 117 37

scanFormat$98:	; arg_list = arg_list + 2
x9664:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$99:	; £temporary1640 = arg_list - 2
x9668:	mov si, [bp + 8]	; 3: -117 118 8
x9671:	sub si, 2	; 3: -125 -18 2

scanFormat$100:	; £temporary1641 = int_to_int £temporary1640 (Signed_Int -> Pointer)

scanFormat$101:	; £temporary1642 -> £temporary1641 = *£temporary1641

scanFormat$102:	; intPtr = £temporary1642 -> £temporary1641
x9674:	mov ax, [si]	; 2: -117 4
x9676:	mov [bp + 33], ax	; 3: -119 70 33

scanFormat$103:	; £temporary1643 -> intPtr = *intPtr
x9679:	mov si, [bp + 33]	; 3: -117 118 33

scanFormat$104:	; £temporary1644 = int_to_int longValue (Signed_Long_Int -> Signed_Int)
x9682:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9686:	cmp eax, 0	; 4: 102 -125 -8 0
x9690:	jge scanFormat$105	; 2: 125 5
x9692:	neg eax	; 3: 102 -9 -40
x9695:	neg ax	; 2: -9 -40

scanFormat$105:	; £temporary1643 -> intPtr = £temporary1644
x9697:	mov [si], ax	; 2: -119 4

scanFormat$106:	; goto 114
x9699:	jmp scanFormat$114	; 2: -21 25

scanFormat$107:	; arg_list = arg_list + 2
x9701:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$108:	; £temporary1646 = arg_list - 2
x9705:	mov si, [bp + 8]	; 3: -117 118 8
x9708:	sub si, 2	; 3: -125 -18 2

scanFormat$109:	; £temporary1647 = int_to_int £temporary1646 (Signed_Int -> Pointer)

scanFormat$110:	; £temporary1648 -> £temporary1647 = *£temporary1647

scanFormat$111:	; longPtr = £temporary1648 -> £temporary1647
x9711:	mov ax, [si]	; 2: -117 4
x9713:	mov [bp + 27], ax	; 3: -119 70 27

scanFormat$112:	; £temporary1649 -> longPtr = *longPtr
x9716:	mov si, [bp + 27]	; 3: -117 118 27

scanFormat$113:	; £temporary1649 -> longPtr = longValue
x9719:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x9723:	mov [si], eax	; 3: 102 -119 4

scanFormat$114:	; percent = 0
x9726:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$115:	; goto 323
x9731:	jmp scanFormat$323	; 3: -23 -10 2

scanFormat$116:	; call header integral zero 0 stack zero 0

scanFormat$117:	; parameter 8, offset 6
x9734:	mov dword [bp + 63], 8	; 8: 102 -57 70 63 8 0 0 0

scanFormat$118:	; call function noellipse-noellipse scanUnsignedLongInt
x9742:	mov word [bp + 57], scanFormat$119	; 5: -57 70 57 28 38
x9747:	mov [bp + 59], bp	; 3: -119 110 59
x9750:	add bp, 57	; 3: -125 -59 57
x9753:	jmp scanUnsignedLongInt	; 3: -23 88 7

scanFormat$119:	; post call

scanFormat$120:	; £temporary1651 = return_value

scanFormat$121:	; unsignedLongValue = £temporary1651
x9756:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$122:	; if star != 0 goto 150
x9760:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9764:	jne scanFormat$150	; 2: 117 89

scanFormat$123:	; if shortInt == 0 goto 133
x9766:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9770:	je scanFormat$133	; 2: 116 26

scanFormat$124:	; arg_list = arg_list + 2
x9772:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$125:	; £temporary1655 = arg_list - 2
x9776:	mov si, [bp + 8]	; 3: -117 118 8
x9779:	sub si, 2	; 3: -125 -18 2

scanFormat$126:	; £temporary1656 = int_to_int £temporary1655 (Signed_Int -> Pointer)

scanFormat$127:	; £temporary1657 -> £temporary1656 = *£temporary1656

scanFormat$128:	; unsignedShortPtr = £temporary1657 -> £temporary1656
x9782:	mov ax, [si]	; 2: -117 4
x9784:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$129:	; £temporary1658 -> unsignedShortPtr = *unsignedShortPtr
x9787:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$130:	; £temporary1659 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x9790:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$131:	; £temporary1658 -> unsignedShortPtr = £temporary1659
x9794:	mov [si], al	; 2: -120 4

scanFormat$132:	; goto 150
x9796:	jmp scanFormat$150	; 2: -21 57

scanFormat$133:	; if longIntOrDouble != 0 goto 143
x9798:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9802:	jne scanFormat$143	; 2: 117 26

scanFormat$134:	; arg_list = arg_list + 2
x9804:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$135:	; £temporary1663 = arg_list - 2
x9808:	mov si, [bp + 8]	; 3: -117 118 8
x9811:	sub si, 2	; 3: -125 -18 2

scanFormat$136:	; £temporary1664 = int_to_int £temporary1663 (Signed_Int -> Pointer)

scanFormat$137:	; £temporary1665 -> £temporary1664 = *£temporary1664

scanFormat$138:	; unsignedIntPtr = £temporary1665 -> £temporary1664
x9814:	mov ax, [si]	; 2: -117 4
x9816:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$139:	; £temporary1666 -> unsignedIntPtr = *unsignedIntPtr
x9819:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$140:	; £temporary1667 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x9822:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$141:	; £temporary1666 -> unsignedIntPtr = £temporary1667
x9826:	mov [si], ax	; 2: -119 4

scanFormat$142:	; goto 150
x9828:	jmp scanFormat$150	; 2: -21 25

scanFormat$143:	; arg_list = arg_list + 2
x9830:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$144:	; £temporary1669 = arg_list - 2
x9834:	mov si, [bp + 8]	; 3: -117 118 8
x9837:	sub si, 2	; 3: -125 -18 2

scanFormat$145:	; £temporary1670 = int_to_int £temporary1669 (Signed_Int -> Pointer)

scanFormat$146:	; £temporary1671 -> £temporary1670 = *£temporary1670

scanFormat$147:	; unsignedLongPtr = £temporary1671 -> £temporary1670
x9840:	mov ax, [si]	; 2: -117 4
x9842:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$148:	; £temporary1672 -> unsignedLongPtr = *unsignedLongPtr
x9845:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$149:	; £temporary1672 -> unsignedLongPtr = unsignedLongValue
x9848:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x9852:	mov [si], eax	; 3: 102 -119 4

scanFormat$150:	; percent = 0
x9855:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$151:	; goto 323
x9860:	jmp scanFormat$323	; 3: -23 117 2

scanFormat$152:	; call header integral zero 0 stack zero 0

scanFormat$153:	; parameter 16, offset 6
x9863:	mov dword [bp + 63], 16	; 8: 102 -57 70 63 16 0 0 0

scanFormat$154:	; call function noellipse-noellipse scanUnsignedLongInt
x9871:	mov word [bp + 57], scanFormat$155	; 5: -57 70 57 -99 38
x9876:	mov [bp + 59], bp	; 3: -119 110 59
x9879:	add bp, 57	; 3: -125 -59 57
x9882:	jmp scanUnsignedLongInt	; 3: -23 -41 6

scanFormat$155:	; post call

scanFormat$156:	; £temporary1674 = return_value

scanFormat$157:	; unsignedLongValue = £temporary1674
x9885:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$158:	; if star != 0 goto 186
x9889:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x9893:	jne scanFormat$186	; 2: 117 89

scanFormat$159:	; if shortInt == 0 goto 169
x9895:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x9899:	je scanFormat$169	; 2: 116 26

scanFormat$160:	; arg_list = arg_list + 2
x9901:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$161:	; £temporary1678 = arg_list - 2
x9905:	mov si, [bp + 8]	; 3: -117 118 8
x9908:	sub si, 2	; 3: -125 -18 2

scanFormat$162:	; £temporary1679 = int_to_int £temporary1678 (Signed_Int -> Pointer)

scanFormat$163:	; £temporary1680 -> £temporary1679 = *£temporary1679

scanFormat$164:	; unsignedShortPtr = £temporary1680 -> £temporary1679
x9911:	mov ax, [si]	; 2: -117 4
x9913:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$165:	; £temporary1681 -> unsignedShortPtr = *unsignedShortPtr
x9916:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$166:	; £temporary1682 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x9919:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$167:	; £temporary1681 -> unsignedShortPtr = £temporary1682
x9923:	mov [si], al	; 2: -120 4

scanFormat$168:	; goto 186
x9925:	jmp scanFormat$186	; 2: -21 57

scanFormat$169:	; if longIntOrDouble != 0 goto 179
x9927:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x9931:	jne scanFormat$179	; 2: 117 26

scanFormat$170:	; arg_list = arg_list + 2
x9933:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$171:	; £temporary1686 = arg_list - 2
x9937:	mov si, [bp + 8]	; 3: -117 118 8
x9940:	sub si, 2	; 3: -125 -18 2

scanFormat$172:	; £temporary1687 = int_to_int £temporary1686 (Signed_Int -> Pointer)

scanFormat$173:	; £temporary1688 -> £temporary1687 = *£temporary1687

scanFormat$174:	; unsignedIntPtr = £temporary1688 -> £temporary1687
x9943:	mov ax, [si]	; 2: -117 4
x9945:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$175:	; £temporary1689 -> unsignedIntPtr = *unsignedIntPtr
x9948:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$176:	; £temporary1690 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x9951:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$177:	; £temporary1689 -> unsignedIntPtr = £temporary1690
x9955:	mov [si], ax	; 2: -119 4

scanFormat$178:	; goto 186
x9957:	jmp scanFormat$186	; 2: -21 25

scanFormat$179:	; arg_list = arg_list + 2
x9959:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$180:	; £temporary1692 = arg_list - 2
x9963:	mov si, [bp + 8]	; 3: -117 118 8
x9966:	sub si, 2	; 3: -125 -18 2

scanFormat$181:	; £temporary1693 = int_to_int £temporary1692 (Signed_Int -> Pointer)

scanFormat$182:	; £temporary1694 -> £temporary1693 = *£temporary1693

scanFormat$183:	; unsignedLongPtr = £temporary1694 -> £temporary1693
x9969:	mov ax, [si]	; 2: -117 4
x9971:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$184:	; £temporary1695 -> unsignedLongPtr = *unsignedLongPtr
x9974:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$185:	; £temporary1695 -> unsignedLongPtr = unsignedLongValue
x9977:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x9981:	mov [si], eax	; 3: 102 -119 4

scanFormat$186:	; percent = 0
x9984:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$187:	; goto 323
x9989:	jmp scanFormat$323	; 3: -23 -12 1

scanFormat$188:	; call header integral zero 0 stack zero 0

scanFormat$189:	; parameter 0, offset 6
x9992:	mov dword [bp + 63], 0	; 8: 102 -57 70 63 0 0 0 0

scanFormat$190:	; call function noellipse-noellipse scanUnsignedLongInt
x10000:	mov word [bp + 57], scanFormat$191	; 5: -57 70 57 30 39
x10005:	mov [bp + 59], bp	; 3: -119 110 59
x10008:	add bp, 57	; 3: -125 -59 57
x10011:	jmp scanUnsignedLongInt	; 3: -23 86 6

scanFormat$191:	; post call

scanFormat$192:	; £temporary1697 = return_value

scanFormat$193:	; unsignedLongValue = £temporary1697
x10014:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$194:	; if star != 0 goto 222
x10018:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10022:	jne scanFormat$222	; 2: 117 89

scanFormat$195:	; if shortInt == 0 goto 205
x10024:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x10028:	je scanFormat$205	; 2: 116 26

scanFormat$196:	; arg_list = arg_list + 2
x10030:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$197:	; £temporary1701 = arg_list - 2
x10034:	mov si, [bp + 8]	; 3: -117 118 8
x10037:	sub si, 2	; 3: -125 -18 2

scanFormat$198:	; £temporary1702 = int_to_int £temporary1701 (Signed_Int -> Pointer)

scanFormat$199:	; £temporary1703 -> £temporary1702 = *£temporary1702

scanFormat$200:	; unsignedShortPtr = £temporary1703 -> £temporary1702
x10040:	mov ax, [si]	; 2: -117 4
x10042:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$201:	; £temporary1704 -> unsignedShortPtr = *unsignedShortPtr
x10045:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$202:	; £temporary1705 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x10048:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$203:	; £temporary1704 -> unsignedShortPtr = £temporary1705
x10052:	mov [si], al	; 2: -120 4

scanFormat$204:	; goto 222
x10054:	jmp scanFormat$222	; 2: -21 57

scanFormat$205:	; if longIntOrDouble != 0 goto 215
x10056:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10060:	jne scanFormat$215	; 2: 117 26

scanFormat$206:	; arg_list = arg_list + 2
x10062:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$207:	; £temporary1709 = arg_list - 2
x10066:	mov si, [bp + 8]	; 3: -117 118 8
x10069:	sub si, 2	; 3: -125 -18 2

scanFormat$208:	; £temporary1710 = int_to_int £temporary1709 (Signed_Int -> Pointer)

scanFormat$209:	; £temporary1711 -> £temporary1710 = *£temporary1710

scanFormat$210:	; unsignedIntPtr = £temporary1711 -> £temporary1710
x10072:	mov ax, [si]	; 2: -117 4
x10074:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$211:	; £temporary1712 -> unsignedIntPtr = *unsignedIntPtr
x10077:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$212:	; £temporary1713 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x10080:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$213:	; £temporary1712 -> unsignedIntPtr = £temporary1713
x10084:	mov [si], ax	; 2: -119 4

scanFormat$214:	; goto 222
x10086:	jmp scanFormat$222	; 2: -21 25

scanFormat$215:	; arg_list = arg_list + 2
x10088:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$216:	; £temporary1715 = arg_list - 2
x10092:	mov si, [bp + 8]	; 3: -117 118 8
x10095:	sub si, 2	; 3: -125 -18 2

scanFormat$217:	; £temporary1716 = int_to_int £temporary1715 (Signed_Int -> Pointer)

scanFormat$218:	; £temporary1717 -> £temporary1716 = *£temporary1716

scanFormat$219:	; unsignedLongPtr = £temporary1717 -> £temporary1716
x10098:	mov ax, [si]	; 2: -117 4
x10100:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$220:	; £temporary1718 -> unsignedLongPtr = *unsignedLongPtr
x10103:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$221:	; £temporary1718 -> unsignedLongPtr = unsignedLongValue
x10106:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x10110:	mov [si], eax	; 3: 102 -119 4

scanFormat$222:	; percent = 0
x10113:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$223:	; goto 323
x10118:	jmp scanFormat$323	; 3: -23 115 1

scanFormat$224:	; call header integral zero 0 stack zero 0

scanFormat$225:	; call function noellipse-noellipse scanLongDouble
x10121:	mov word [bp + 57], scanFormat$226	; 5: -57 70 57 -105 39
x10126:	mov [bp + 59], bp	; 3: -119 110 59
x10129:	add bp, 57	; 3: -125 -59 57
x10132:	jmp scanLongDouble	; 3: -23 -94 8

scanFormat$226:	; post call

scanFormat$227:	; £temporary1720 = return_value

scanFormat$228:	; pop float longDoubleValue
x10135:	fstp qword [bp + 47]	; 3: -35 94 47

scanFormat$229:	; if star != 0 goto 258
x10138:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10142:	jne scanFormat$258	; 2: 117 85

scanFormat$230:	; if longIntOrDouble == 0 goto 240
x10144:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x10148:	je scanFormat$240	; 2: 116 25

scanFormat$231:	; arg_list = arg_list + 2
x10150:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$232:	; £temporary1724 = arg_list - 2
x10154:	mov si, [bp + 8]	; 3: -117 118 8
x10157:	sub si, 2	; 3: -125 -18 2

scanFormat$233:	; £temporary1725 = int_to_int £temporary1724 (Signed_Int -> Pointer)

scanFormat$234:	; £temporary1726 -> £temporary1725 = *£temporary1725

scanFormat$235:	; doublePtr = £temporary1726 -> £temporary1725
x10160:	mov ax, [si]	; 2: -117 4
x10162:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$236:	; £temporary1727 -> doublePtr = *doublePtr
x10165:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$237:	; push float longDoubleValue
x10168:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$238:	; pop float £temporary1727 -> doublePtr
x10171:	fstp qword [si]	; 2: -35 28

scanFormat$239:	; goto 258
x10173:	jmp scanFormat$258	; 2: -21 54

scanFormat$240:	; if longDouble == 0 goto 250
x10175:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x10179:	je scanFormat$250	; 2: 116 25

scanFormat$241:	; arg_list = arg_list + 2
x10181:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$242:	; £temporary1730 = arg_list - 2
x10185:	mov si, [bp + 8]	; 3: -117 118 8
x10188:	sub si, 2	; 3: -125 -18 2

scanFormat$243:	; £temporary1731 = int_to_int £temporary1730 (Signed_Int -> Pointer)

scanFormat$244:	; £temporary1732 -> £temporary1731 = *£temporary1731

scanFormat$245:	; longDoublePtr = £temporary1732 -> £temporary1731
x10191:	mov ax, [si]	; 2: -117 4
x10193:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$246:	; £temporary1733 -> longDoublePtr = *longDoublePtr
x10196:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$247:	; push float longDoubleValue
x10199:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$248:	; pop float £temporary1733 -> longDoublePtr
x10202:	fstp qword [si]	; 2: -35 28

scanFormat$249:	; goto 258
x10204:	jmp scanFormat$258	; 2: -21 23

scanFormat$250:	; arg_list = arg_list + 2
x10206:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$251:	; £temporary1735 = arg_list - 2
x10210:	mov si, [bp + 8]	; 3: -117 118 8
x10213:	sub si, 2	; 3: -125 -18 2

scanFormat$252:	; £temporary1736 = int_to_int £temporary1735 (Signed_Int -> Pointer)

scanFormat$253:	; £temporary1737 -> £temporary1736 = *£temporary1736

scanFormat$254:	; floatPtr = £temporary1737 -> £temporary1736
x10216:	mov ax, [si]	; 2: -117 4
x10218:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$255:	; £temporary1738 -> floatPtr = *floatPtr
x10221:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$256:	; push float longDoubleValue
x10224:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$257:	; pop float £temporary1738 -> floatPtr
x10227:	fstp dword [si]	; 2: -39 28

scanFormat$258:	; percent = 0
x10229:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$259:	; goto 323
x10234:	jmp scanFormat$323	; 3: -23 -1 0

scanFormat$260:	; not = 0
x10237:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

scanFormat$261:	; ++index
x10242:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$262:	; £temporary1744 = format + index
x10245:	mov si, [bp + 6]	; 3: -117 118 6
x10248:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$263:	; £temporary1743 -> £temporary1744 = *£temporary1744

scanFormat$264:	; if £temporary1743 -> £temporary1744 != 94 goto 267
x10251:	cmp byte [si], 94	; 3: -128 60 94
x10254:	jne scanFormat$267	; 2: 117 12

scanFormat$265:	; not = 1
x10256:	mov word [bp + 57], 1	; 5: -57 70 57 1 0

scanFormat$266:	; startIndex = index + 1
x10261:	mov ax, [bp + 31]	; 3: -117 70 31
x10264:	inc ax	; 1: 64
x10265:	mov [bp + 59], ax	; 3: -119 70 59

scanFormat$267:	; £temporary1748 = format + index
x10268:	mov si, [bp + 6]	; 3: -117 118 6
x10271:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$268:	; £temporary1747 -> £temporary1748 = *£temporary1748

scanFormat$269:	; if £temporary1747 -> £temporary1748 == 93 goto 272
x10274:	cmp byte [si], 93	; 3: -128 60 93
x10277:	je scanFormat$272	; 2: 116 5

scanFormat$270:	; ++index
x10279:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$271:	; goto 267
x10282:	jmp scanFormat$267	; 2: -21 -16

scanFormat$272:	; £temporary1752 = format + index
x10284:	mov si, [bp + 6]	; 3: -117 118 6
x10287:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$273:	; £temporary1751 -> £temporary1752 = *£temporary1752

scanFormat$274:	; £temporary1751 -> £temporary1752 = 0
x10290:	mov byte [si], 0	; 3: -58 4 0

scanFormat$275:	; if star != 0 goto 291
x10293:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x10297:	jne scanFormat$291	; 2: 117 53

scanFormat$276:	; arg_list = arg_list + 2
x10299:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$277:	; £temporary1756 = arg_list - 2
x10303:	mov si, [bp + 8]	; 3: -117 118 8
x10306:	sub si, 2	; 3: -125 -18 2

scanFormat$278:	; £temporary1757 = int_to_int £temporary1756 (Signed_Int -> Pointer)

scanFormat$279:	; £temporary1758 -> £temporary1757 = *£temporary1757

scanFormat$280:	; string = £temporary1758 -> £temporary1757
x10309:	mov ax, [si]	; 2: -117 4
x10311:	mov [bp + 61], ax	; 3: -119 70 61

scanFormat$281:	; call header integral zero 0 stack zero 0

scanFormat$282:	; parameter string, offset 6
x10314:	mov ax, [bp + 61]	; 3: -117 70 61
x10317:	mov [bp + 69], ax	; 3: -119 70 69

scanFormat$283:	; £temporary1760 = format + startIndex
x10320:	mov si, [bp + 6]	; 3: -117 118 6
x10323:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$284:	; £temporary1759 -> £temporary1760 = *£temporary1760

scanFormat$285:	; £temporary1761 = &£temporary1759 -> £temporary1760

scanFormat$286:	; parameter £temporary1761, offset 8
x10326:	mov [bp + 71], si	; 3: -119 118 71

scanFormat$287:	; parameter not, offset 10
x10329:	mov ax, [bp + 57]	; 3: -117 70 57
x10332:	mov [bp + 73], ax	; 3: -119 70 73

scanFormat$288:	; call function noellipse-noellipse scanPattern
x10335:	mov word [bp + 63], scanFormat$289	; 5: -57 70 63 109 40
x10340:	mov [bp + 65], bp	; 3: -119 110 65
x10343:	add bp, 63	; 3: -125 -59 63
x10346:	jmp scanPattern	; 3: -23 -2 9

scanFormat$289:	; post call

scanFormat$290:	; goto 323
x10349:	jmp scanFormat$323	; 3: -23 -116 0

scanFormat$291:	; call header integral zero 0 stack zero 0

scanFormat$292:	; parameter 0, offset 6
x10352:	mov word [bp + 67], 0	; 5: -57 70 67 0 0

scanFormat$293:	; £temporary1764 = format + startIndex
x10357:	mov si, [bp + 6]	; 3: -117 118 6
x10360:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$294:	; £temporary1763 -> £temporary1764 = *£temporary1764

scanFormat$295:	; £temporary1765 = &£temporary1763 -> £temporary1764

scanFormat$296:	; parameter £temporary1765, offset 8
x10363:	mov [bp + 69], si	; 3: -119 118 69

scanFormat$297:	; parameter not, offset 10
x10366:	mov ax, [bp + 57]	; 3: -117 70 57
x10369:	mov [bp + 71], ax	; 3: -119 70 71

scanFormat$298:	; call function noellipse-noellipse scanPattern
x10372:	mov word [bp + 61], scanFormat$299	; 5: -57 70 61 -110 40
x10377:	mov [bp + 63], bp	; 3: -119 110 63
x10380:	add bp, 61	; 3: -125 -59 61
x10383:	jmp scanPattern	; 3: -23 -39 9

scanFormat$299:	; post call

scanFormat$300:	; goto 323
x10386:	jmp scanFormat$323	; 2: -21 104

scanFormat$301:	; arg_list = arg_list + 2
x10388:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$302:	; £temporary1768 = arg_list - 2
x10392:	mov si, [bp + 8]	; 3: -117 118 8
x10395:	sub si, 2	; 3: -125 -18 2

scanFormat$303:	; £temporary1769 = int_to_int £temporary1768 (Signed_Int -> Pointer)

scanFormat$304:	; £temporary1770 -> £temporary1769 = *£temporary1769

scanFormat$305:	; charsPtr = £temporary1770 -> £temporary1769
x10398:	mov ax, [si]	; 2: -117 4
x10400:	mov [bp + 35], ax	; 3: -119 70 35

scanFormat$306:	; £temporary1771 -> charsPtr = *charsPtr
x10403:	mov si, [bp + 35]	; 3: -117 118 35

scanFormat$307:	; £temporary1771 -> charsPtr = g_inChars
x10406:	mov ax, [g_inChars]	; 3: -95 19 41
x10409:	mov [si], ax	; 2: -119 4

scanFormat$308:	; percent = 0
x10411:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$309:	; goto 323
x10416:	jmp scanFormat$323	; 2: -21 74

scanFormat$310:	; call header integral zero 0 stack zero 0

scanFormat$311:	; parameter string_scanFormat20c203D202725c270A#, offset 6
x10418:	mov word [bp + 63], string_scanFormat20c203D202725c270A#	; 5: -57 70 63 21 41

scanFormat$312:	; £temporary1772 = int_to_int c (Signed_Char -> Signed_Int)
x10423:	mov al, [bp + 10]	; 3: -118 70 10
x10426:	and ax, 255	; 3: 37 -1 0
x10429:	cmp al, 0	; 2: 60 0
x10431:	jge scanFormat$313	; 2: 125 4
x10433:	neg al	; 2: -10 -40
x10435:	neg ax	; 2: -9 -40

scanFormat$313:	; parameter £temporary1772, offset 8
x10437:	mov [bp + 65], ax	; 3: -119 70 65

scanFormat$314:	; call function noellipse-ellipse printf, extra 0
x10440:	mov word [bp + 57], scanFormat$315	; 5: -57 70 57 -37 40
x10445:	mov [bp + 59], bp	; 3: -119 110 59
x10448:	add bp, 57	; 3: -125 -59 57
x10451:	mov di, bp	; 2: -119 -17
x10453:	add di, 2	; 3: -125 -57 2
x10456:	jmp printf	; 3: -23 -51 -38

scanFormat$315:	; post call

scanFormat$316:	; goto 323
x10459:	jmp scanFormat$323	; 2: -21 31

scanFormat$317:	; if c != 37 goto 323
x10461:	cmp byte [bp + 10], 37	; 4: -128 126 10 37
x10465:	jne scanFormat$323	; 2: 117 25

scanFormat$318:	; percent = 1
x10467:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanFormat$319:	; shortInt = 0
x10472:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$320:	; longIntOrDouble = 0
x10477:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$321:	; longDouble = 0
x10482:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$322:	; star = 0
x10487:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$323:	; ++index
x10492:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$324:	; goto 8
x10495:	jmp scanFormat$8	; 3: -23 23 -5

scanFormat$325:	; return_value = g_inCount
x10498:	mov bx, [g_inCount]	; 4: -117 30 17 41

scanFormat$326:	; return
x10502:	mov ax, [bp]	; 3: -117 70 0
x10505:	mov di, [bp + 4]	; 3: -117 126 4
x10508:	mov bp, [bp + 2]	; 3: -117 110 2
x10511:	jmp ax	; 2: -1 -32

scanFormat$327:	; function end scanFormat

g_inCount:
x10513:	db 0, 0	; 2: 0 0

g_inChars:
x10515:	db 0, 0	; 2: 0 0

string_scanFormat20c203D202725c270A#:
x10517:	db "scanFormat c = ", 39, "%c", 39, 10, 0	; 21: 115 99 97 110 70 111 114 109 97 116 32 99 32 61 32 39 37 99 39 10 0

scanChar:	; c = 0
x10538:	mov byte [bp + 6], 0	; 4: -58 70 6 0

scanChar$1:	; case g_inStatus == 0 goto 5
x10542:	mov ax, [g_inStatus]	; 3: -95 -21 35
x10545:	cmp ax, 0	; 3: -125 -8 0
x10548:	je scanChar$5	; 2: 116 7

scanChar$2:	; case g_inStatus == 1 goto 18
x10550:	cmp ax, 1	; 3: -125 -8 1
x10553:	je scanChar$18	; 2: 116 50

scanChar$3:	; case end g_inStatus

scanChar$4:	; goto 26
x10555:	jmp scanChar$26	; 2: -21 79

scanChar$5:	; £temporary1326 = int_to_int g_inDevice (Pointer -> Pointer)
x10557:	mov ax, [g_inDevice]	; 3: -95 -19 35

scanChar$6:	; stream = £temporary1326
x10560:	mov [bp + 7], ax	; 3: -119 70 7

scanChar$7:	; £temporary1327 -> stream = *stream, offset 2
x10563:	mov si, [bp + 7]	; 3: -117 118 7

scanChar$8:	; handle = £temporary1327 -> stream
x10566:	mov ax, [si + 2]	; 3: -117 68 2
x10569:	mov [bp + 9], ax	; 3: -119 70 9

scanChar$9:	; ah = 63
x10572:	mov ah, 63	; 2: -76 63

scanChar$10:	; bx = handle
x10574:	mov bx, [bp + 9]	; 3: -117 94 9

scanChar$11:	; cx = 1
x10577:	mov cx, 1	; 3: -71 1 0

scanChar$12:	; £temporary1332 = &c
x10580:	mov dx, bp	; 2: -119 -22
x10582:	add dx, 6	; 3: -125 -62 6

scanChar$13:	; dx = £temporary1332

scanChar$14:	; interrupt 33
x10585:	int 33	; 2: -51 33

scanChar$15:	; ++g_inChars
x10587:	inc word [g_inChars]	; 4: -1 6 19 41

scanChar$16:	; return_value = c
x10591:	mov bl, [bp + 6]	; 3: -118 94 6

scanChar$17:	; return
x10594:	mov ax, [bp]	; 3: -117 70 0
x10597:	mov di, [bp + 4]	; 3: -117 126 4
x10600:	mov bp, [bp + 2]	; 3: -117 110 2
x10603:	jmp ax	; 2: -1 -32

scanChar$18:	; £temporary1334 = int_to_int g_inDevice (Pointer -> Pointer)
x10605:	mov ax, [g_inDevice]	; 3: -95 -19 35

scanChar$19:	; inString = £temporary1334
x10608:	mov [bp + 11], ax	; 3: -119 70 11

scanChar$20:	; £temporary1335 = g_inChars
x10611:	mov ax, [g_inChars]	; 3: -95 19 41

scanChar$21:	; ++g_inChars
x10614:	inc word [g_inChars]	; 4: -1 6 19 41

scanChar$22:	; £temporary1337 = inString + £temporary1335
x10618:	mov si, [bp + 11]	; 3: -117 118 11
x10621:	add si, ax	; 2: 1 -58

scanChar$23:	; £temporary1336 -> £temporary1337 = *£temporary1337

scanChar$24:	; return_value = £temporary1336 -> £temporary1337
x10623:	mov bl, [si]	; 2: -118 28

scanChar$25:	; return
x10625:	mov ax, [bp]	; 3: -117 70 0
x10628:	mov di, [bp + 4]	; 3: -117 126 4
x10631:	mov bp, [bp + 2]	; 3: -117 110 2
x10634:	jmp ax	; 2: -1 -32

scanChar$26:	; return_value = 0
x10636:	mov bl, 0	; 2: -77 0

scanChar$27:	; return
x10638:	mov ax, [bp]	; 3: -117 70 0
x10641:	mov di, [bp + 4]	; 3: -117 126 4
x10644:	mov bp, [bp + 2]	; 3: -117 110 2
x10647:	jmp ax	; 2: -1 -32

scanChar$28:	; function end scanChar

scanString:	; index = 0
x10649:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanString$1:	; call header integral zero 0 stack zero 0

scanString$2:	; call function noellipse-noellipse scanChar
x10654:	mov word [bp + 12], scanString$3	; 5: -57 70 12 -84 41
x10659:	mov [bp + 14], bp	; 3: -119 110 14
x10662:	add bp, 12	; 3: -125 -59 12
x10665:	jmp scanChar	; 3: -23 126 -1

scanString$3:	; post call

scanString$4:	; £temporary1389 = return_value

scanString$5:	; input = £temporary1389
x10668:	mov [bp + 12], bl	; 3: -120 94 12

scanString$6:	; found = 0
x10671:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanString$7:	; call header integral zero 0 stack zero 0

scanString$8:	; £temporary1390 = int_to_int input (Signed_Char -> Signed_Int)
x10676:	mov al, [bp + 12]	; 3: -118 70 12
x10679:	and ax, 255	; 3: 37 -1 0
x10682:	cmp al, 0	; 2: 60 0
x10684:	jge scanString$9	; 2: 125 4
x10686:	neg al	; 2: -10 -40
x10688:	neg ax	; 2: -9 -40

scanString$9:	; parameter £temporary1390, offset 6
x10690:	mov [bp + 21], ax	; 3: -119 70 21

scanString$10:	; call function noellipse-noellipse isspace
x10693:	mov word [bp + 15], scanString$11	; 5: -57 70 15 -45 41
x10698:	mov [bp + 17], bp	; 3: -119 110 17
x10701:	add bp, 15	; 3: -125 -59 15
x10704:	jmp isspace	; 3: -23 19 2

scanString$11:	; post call

scanString$12:	; £temporary1391 = return_value

scanString$13:	; if £temporary1391 == 0 goto 20
x10707:	cmp bx, 0	; 3: -125 -5 0
x10710:	je scanString$20	; 2: 116 19

scanString$14:	; call header integral zero 0 stack zero 0

scanString$15:	; call function noellipse-noellipse scanChar
x10712:	mov word [bp + 15], scanString$16	; 5: -57 70 15 -26 41
x10717:	mov [bp + 17], bp	; 3: -119 110 17
x10720:	add bp, 15	; 3: -125 -59 15
x10723:	jmp scanChar	; 3: -23 68 -1

scanString$16:	; post call

scanString$17:	; £temporary1392 = return_value

scanString$18:	; input = £temporary1392
x10726:	mov [bp + 12], bl	; 3: -120 94 12

scanString$19:	; goto 7
x10729:	jmp scanString$7	; 2: -21 -55

scanString$20:	; if string == 0 goto 82
x10731:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x10735:	je scanString$82	; 4: 15 -124 11 1

scanString$21:	; if precision != 0 goto 50
x10739:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10743:	jne scanString$50	; 2: 117 121

scanString$22:	; call header integral zero 0 stack zero 0

scanString$23:	; £temporary1396 = int_to_int input (Signed_Char -> Signed_Int)
x10745:	mov al, [bp + 12]	; 3: -118 70 12
x10748:	and ax, 255	; 3: 37 -1 0
x10751:	cmp al, 0	; 2: 60 0
x10753:	jge scanString$24	; 2: 125 4
x10755:	neg al	; 2: -10 -40
x10757:	neg ax	; 2: -9 -40

scanString$24:	; parameter £temporary1396, offset 6
x10759:	mov [bp + 21], ax	; 3: -119 70 21

scanString$25:	; call function noellipse-noellipse isspace
x10762:	mov word [bp + 15], scanString$26	; 5: -57 70 15 24 42
x10767:	mov [bp + 17], bp	; 3: -119 110 17
x10770:	add bp, 15	; 3: -125 -59 15
x10773:	jmp isspace	; 3: -23 -50 1

scanString$26:	; post call

scanString$27:	; £temporary1397 = return_value

scanString$28:	; if £temporary1397 != 0 goto 45
x10776:	cmp bx, 0	; 3: -125 -5 0
x10779:	jne scanString$45	; 2: 117 69

scanString$29:	; £temporary1400 = int_to_int input (Signed_Char -> Signed_Int)
x10781:	mov al, [bp + 12]	; 3: -118 70 12
x10784:	and ax, 255	; 3: 37 -1 0
x10787:	cmp al, 0	; 2: 60 0
x10789:	jge scanString$30	; 2: 125 4
x10791:	neg al	; 2: -10 -40
x10793:	neg ax	; 2: -9 -40

scanString$30:	; if £temporary1400 == -1 goto 45
x10795:	cmp ax, -1	; 3: -125 -8 -1
x10798:	je scanString$45	; 2: 116 50

scanString$31:	; if input == 10 goto 45
x10800:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x10804:	je scanString$45	; 2: 116 44

scanString$32:	; £temporary1405 = index
x10806:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$33:	; ++index
x10809:	inc word [bp + 10]	; 3: -1 70 10

scanString$34:	; £temporary1407 = string + £temporary1405
x10812:	mov si, [bp + 6]	; 3: -117 118 6
x10815:	add si, ax	; 2: 1 -58

scanString$35:	; £temporary1406 -> £temporary1407 = *£temporary1407

scanString$36:	; £temporary1406 -> £temporary1407 = input
x10817:	mov al, [bp + 12]	; 3: -118 70 12
x10820:	mov [si], al	; 2: -120 4

scanString$37:	; call header integral zero 0 stack zero 0

scanString$38:	; call function noellipse-noellipse scanChar
x10822:	mov word [bp + 15], scanString$39	; 5: -57 70 15 84 42
x10827:	mov [bp + 17], bp	; 3: -119 110 17
x10830:	add bp, 15	; 3: -125 -59 15
x10833:	jmp scanChar	; 3: -23 -42 -2

scanString$39:	; post call

scanString$40:	; £temporary1408 = return_value

scanString$41:	; input = £temporary1408
x10836:	mov [bp + 12], bl	; 3: -120 94 12

scanString$42:	; found = 1
x10839:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$43:	; ++g_inChars
x10844:	inc word [g_inChars]	; 4: -1 6 19 41

scanString$44:	; goto 22
x10848:	jmp scanString$22	; 2: -21 -105

scanString$45:	; £temporary1411 = string + index
x10850:	mov si, [bp + 6]	; 3: -117 118 6
x10853:	add si, [bp + 10]	; 3: 3 118 10

scanString$46:	; £temporary1410 -> £temporary1411 = *£temporary1411

scanString$47:	; £temporary1410 -> £temporary1411 = 0
x10856:	mov byte [si], 0	; 3: -58 4 0

scanString$48:	; ++g_inChars
x10859:	inc word [g_inChars]	; 4: -1 6 19 41

scanString$49:	; goto 126
x10863:	jmp scanString$126	; 3: -23 95 1

scanString$50:	; £temporary1413 = precision
x10866:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$51:	; --precision
x10869:	dec word [bp + 8]	; 3: -1 78 8

scanString$52:	; if £temporary1413 <= 0 goto 76
x10872:	cmp ax, 0	; 3: -125 -8 0
x10875:	jle scanString$76	; 2: 126 105

scanString$53:	; call header integral zero 0 stack zero 0

scanString$54:	; £temporary1415 = int_to_int input (Signed_Char -> Signed_Int)
x10877:	mov al, [bp + 12]	; 3: -118 70 12
x10880:	and ax, 255	; 3: 37 -1 0
x10883:	cmp al, 0	; 2: 60 0
x10885:	jge scanString$55	; 2: 125 4
x10887:	neg al	; 2: -10 -40
x10889:	neg ax	; 2: -9 -40

scanString$55:	; parameter £temporary1415, offset 6
x10891:	mov [bp + 21], ax	; 3: -119 70 21

scanString$56:	; call function noellipse-noellipse isspace
x10894:	mov word [bp + 15], scanString$57	; 5: -57 70 15 -100 42
x10899:	mov [bp + 17], bp	; 3: -119 110 17
x10902:	add bp, 15	; 3: -125 -59 15
x10905:	jmp isspace	; 3: -23 74 1

scanString$57:	; post call

scanString$58:	; £temporary1416 = return_value

scanString$59:	; if £temporary1416 != 0 goto 76
x10908:	cmp bx, 0	; 3: -125 -5 0
x10911:	jne scanString$76	; 2: 117 69

scanString$60:	; £temporary1419 = int_to_int input (Signed_Char -> Signed_Int)
x10913:	mov al, [bp + 12]	; 3: -118 70 12
x10916:	and ax, 255	; 3: 37 -1 0
x10919:	cmp al, 0	; 2: 60 0
x10921:	jge scanString$61	; 2: 125 4
x10923:	neg al	; 2: -10 -40
x10925:	neg ax	; 2: -9 -40

scanString$61:	; if £temporary1419 == -1 goto 76
x10927:	cmp ax, -1	; 3: -125 -8 -1
x10930:	je scanString$76	; 2: 116 50

scanString$62:	; if input == 10 goto 76
x10932:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x10936:	je scanString$76	; 2: 116 44

scanString$63:	; £temporary1425 = index
x10938:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$64:	; ++index
x10941:	inc word [bp + 10]	; 3: -1 70 10

scanString$65:	; £temporary1427 = string + £temporary1425
x10944:	mov si, [bp + 6]	; 3: -117 118 6
x10947:	add si, ax	; 2: 1 -58

scanString$66:	; £temporary1426 -> £temporary1427 = *£temporary1427

scanString$67:	; £temporary1426 -> £temporary1427 = input
x10949:	mov al, [bp + 12]	; 3: -118 70 12
x10952:	mov [si], al	; 2: -120 4

scanString$68:	; call header integral zero 0 stack zero 0

scanString$69:	; call function noellipse-noellipse scanChar
x10954:	mov word [bp + 15], scanString$70	; 5: -57 70 15 -40 42
x10959:	mov [bp + 17], bp	; 3: -119 110 17
x10962:	add bp, 15	; 3: -125 -59 15
x10965:	jmp scanChar	; 3: -23 82 -2

scanString$70:	; post call

scanString$71:	; £temporary1428 = return_value

scanString$72:	; input = £temporary1428
x10968:	mov [bp + 12], bl	; 3: -120 94 12

scanString$73:	; found = 1
x10971:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$74:	; ++g_inChars
x10976:	inc word [g_inChars]	; 4: -1 6 19 41

scanString$75:	; goto 50
x10980:	jmp scanString$50	; 2: -21 -116

scanString$76:	; if precision <= 0 goto 126
x10982:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10986:	jle scanString$126	; 4: 15 -114 -29 0

scanString$77:	; £temporary1432 = string + index
x10990:	mov si, [bp + 6]	; 3: -117 118 6
x10993:	add si, [bp + 10]	; 3: 3 118 10

scanString$78:	; £temporary1431 -> £temporary1432 = *£temporary1432

scanString$79:	; £temporary1431 -> £temporary1432 = 0
x10996:	mov byte [si], 0	; 3: -58 4 0

scanString$80:	; ++g_inChars
x10999:	inc word [g_inChars]	; 4: -1 6 19 41

scanString$81:	; goto 126
x11003:	jmp scanString$126	; 3: -23 -45 0

scanString$82:	; if precision != 0 goto 103
x11006:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11010:	jne scanString$103	; 2: 117 95

scanString$83:	; call header integral zero 0 stack zero 0

scanString$84:	; £temporary1435 = int_to_int input (Signed_Char -> Signed_Int)
x11012:	mov al, [bp + 12]	; 3: -118 70 12
x11015:	and ax, 255	; 3: 37 -1 0
x11018:	cmp al, 0	; 2: 60 0
x11020:	jge scanString$85	; 2: 125 4
x11022:	neg al	; 2: -10 -40
x11024:	neg ax	; 2: -9 -40

scanString$85:	; parameter £temporary1435, offset 6
x11026:	mov [bp + 21], ax	; 3: -119 70 21

scanString$86:	; call function noellipse-noellipse isspace
x11029:	mov word [bp + 15], scanString$87	; 5: -57 70 15 35 43
x11034:	mov [bp + 17], bp	; 3: -119 110 17
x11037:	add bp, 15	; 3: -125 -59 15
x11040:	jmp isspace	; 3: -23 -61 0

scanString$87:	; post call

scanString$88:	; £temporary1436 = return_value

scanString$89:	; if £temporary1436 != 0 goto 101
x11043:	cmp bx, 0	; 3: -125 -5 0
x11046:	jne scanString$101	; 2: 117 53

scanString$90:	; £temporary1439 = int_to_int input (Signed_Char -> Signed_Int)
x11048:	mov al, [bp + 12]	; 3: -118 70 12
x11051:	and ax, 255	; 3: 37 -1 0
x11054:	cmp al, 0	; 2: 60 0
x11056:	jge scanString$91	; 2: 125 4
x11058:	neg al	; 2: -10 -40
x11060:	neg ax	; 2: -9 -40

scanString$91:	; if £temporary1439 == -1 goto 101
x11062:	cmp ax, -1	; 3: -125 -8 -1
x11065:	je scanString$101	; 2: 116 34

scanString$92:	; if input == 10 goto 101
x11067:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11071:	je scanString$101	; 2: 116 28

scanString$93:	; call header integral zero 0 stack zero 0

scanString$94:	; call function noellipse-noellipse scanChar
x11073:	mov word [bp + 15], scanString$95	; 5: -57 70 15 79 43
x11078:	mov [bp + 17], bp	; 3: -119 110 17
x11081:	add bp, 15	; 3: -125 -59 15
x11084:	jmp scanChar	; 3: -23 -37 -3

scanString$95:	; post call

scanString$96:	; £temporary1444 = return_value

scanString$97:	; input = £temporary1444
x11087:	mov [bp + 12], bl	; 3: -120 94 12

scanString$98:	; found = 1
x11090:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$99:	; ++g_inChars
x11095:	inc word [g_inChars]	; 4: -1 6 19 41

scanString$100:	; goto 83
x11099:	jmp scanString$83	; 2: -21 -89

scanString$101:	; ++g_inChars
x11101:	inc word [g_inChars]	; 4: -1 6 19 41

scanString$102:	; goto 126
x11105:	jmp scanString$126	; 2: -21 110

scanString$103:	; £temporary1447 = precision
x11107:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$104:	; --precision
x11110:	dec word [bp + 8]	; 3: -1 78 8

scanString$105:	; if £temporary1447 <= 0 goto 124
x11113:	cmp ax, 0	; 3: -125 -8 0
x11116:	jle scanString$124	; 2: 126 89

scanString$106:	; call header integral zero 0 stack zero 0

scanString$107:	; £temporary1449 = int_to_int input (Signed_Char -> Signed_Int)
x11118:	mov al, [bp + 12]	; 3: -118 70 12
x11121:	and ax, 255	; 3: 37 -1 0
x11124:	cmp al, 0	; 2: 60 0
x11126:	jge scanString$108	; 2: 125 4
x11128:	neg al	; 2: -10 -40
x11130:	neg ax	; 2: -9 -40

scanString$108:	; parameter £temporary1449, offset 6
x11132:	mov [bp + 21], ax	; 3: -119 70 21

scanString$109:	; call function noellipse-noellipse isspace
x11135:	mov word [bp + 15], scanString$110	; 5: -57 70 15 -115 43
x11140:	mov [bp + 17], bp	; 3: -119 110 17
x11143:	add bp, 15	; 3: -125 -59 15
x11146:	nop	; 1: -112
x11147:	jmp isspace	; 2: -21 89

scanString$110:	; post call

scanString$111:	; £temporary1450 = return_value

scanString$112:	; if £temporary1450 != 0 goto 124
x11149:	cmp bx, 0	; 3: -125 -5 0
x11152:	jne scanString$124	; 2: 117 53

scanString$113:	; £temporary1453 = int_to_int input (Signed_Char -> Signed_Int)
x11154:	mov al, [bp + 12]	; 3: -118 70 12
x11157:	and ax, 255	; 3: 37 -1 0
x11160:	cmp al, 0	; 2: 60 0
x11162:	jge scanString$114	; 2: 125 4
x11164:	neg al	; 2: -10 -40
x11166:	neg ax	; 2: -9 -40

scanString$114:	; if £temporary1453 == -1 goto 124
x11168:	cmp ax, -1	; 3: -125 -8 -1
x11171:	je scanString$124	; 2: 116 34

scanString$115:	; if input == 10 goto 124
x11173:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x11177:	je scanString$124	; 2: 116 28

scanString$116:	; call header integral zero 0 stack zero 0

scanString$117:	; call function noellipse-noellipse scanChar
x11179:	mov word [bp + 15], scanString$118	; 5: -57 70 15 -71 43
x11184:	mov [bp + 17], bp	; 3: -119 110 17
x11187:	add bp, 15	; 3: -125 -59 15
x11190:	jmp scanChar	; 3: -23 113 -3

scanString$118:	; post call

scanString$119:	; £temporary1459 = return_value

scanString$120:	; input = £temporary1459
x11193:	mov [bp + 12], bl	; 3: -120 94 12

scanString$121:	; found = 1
x11196:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$122:	; ++g_inChars
x11201:	inc word [g_inChars]	; 4: -1 6 19 41

scanString$123:	; goto 103
x11205:	jmp scanString$103	; 2: -21 -100

scanString$124:	; if precision <= 0 goto 126
x11207:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11211:	jle scanString$126	; 2: 126 4

scanString$125:	; ++g_inChars
x11213:	inc word [g_inChars]	; 4: -1 6 19 41

scanString$126:	; if found == 0 goto 128
x11217:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x11221:	je scanString$128	; 2: 116 4

scanString$127:	; ++g_inCount
x11223:	inc word [g_inCount]	; 4: -1 6 17 41

scanString$128:	; return
x11227:	mov ax, [bp]	; 3: -117 70 0
x11230:	mov di, [bp + 4]	; 3: -117 126 4
x11233:	mov bp, [bp + 2]	; 3: -117 110 2
x11236:	jmp ax	; 2: -1 -32

scanString$129:	; function end scanString

isspace:	; if c == 32 goto 6
x11238:	cmp word [bp + 6], 32	; 4: -125 126 6 32
x11242:	je isspace$6	; 2: 116 30

isspace$1:	; if c == 12 goto 6
x11244:	cmp word [bp + 6], 12	; 4: -125 126 6 12
x11248:	je isspace$6	; 2: 116 24

isspace$2:	; if c == 10 goto 6
x11250:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x11254:	je isspace$6	; 2: 116 18

isspace$3:	; if c == 13 goto 6
x11256:	cmp word [bp + 6], 13	; 4: -125 126 6 13
x11260:	je isspace$6	; 2: 116 12

isspace$4:	; if c == 9 goto 6
x11262:	cmp word [bp + 6], 9	; 4: -125 126 6 9
x11266:	je isspace$6	; 2: 116 6

isspace$5:	; if c != 11 goto 8
x11268:	cmp word [bp + 6], 11	; 4: -125 126 6 11
x11272:	jne isspace$8	; 2: 117 5

isspace$6:	; £temporary408 = 1
x11274:	mov bx, 1	; 3: -69 1 0

isspace$7:	; goto 9
x11277:	jmp isspace$9	; 2: -21 3

isspace$8:	; £temporary408 = 0
x11279:	mov bx, 0	; 3: -69 0 0

isspace$9:	; return_value = £temporary408

isspace$10:	; return
x11282:	mov ax, [bp]	; 3: -117 70 0
x11285:	mov di, [bp + 4]	; 3: -117 126 4
x11288:	mov bp, [bp + 2]	; 3: -117 110 2
x11291:	jmp ax	; 2: -1 -32

isspace$11:	; function end isspace

scanLongInt:	; longValue = 0
x11293:	mov dword [bp + 6], 0	; 8: 102 -57 70 6 0 0 0 0

scanLongInt$1:	; minus = 0
x11301:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanLongInt$2:	; found = 0
x11306:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanLongInt$3:	; call header integral zero 0 stack zero 0

scanLongInt$4:	; call function noellipse-noellipse scanChar
x11311:	mov word [bp + 14], scanLongInt$5	; 5: -57 70 14 61 44
x11316:	mov [bp + 16], bp	; 3: -119 110 16
x11319:	add bp, 14	; 3: -125 -59 14
x11322:	jmp scanChar	; 3: -23 -19 -4

scanLongInt$5:	; post call

scanLongInt$6:	; £temporary1486 = return_value

scanLongInt$7:	; input = £temporary1486
x11325:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$8:	; call header integral zero 0 stack zero 0

scanLongInt$9:	; £temporary1487 = int_to_int input (Signed_Char -> Signed_Int)
x11328:	mov al, [bp + 14]	; 3: -118 70 14
x11331:	and ax, 255	; 3: 37 -1 0
x11334:	cmp al, 0	; 2: 60 0
x11336:	jge scanLongInt$10	; 2: 125 4
x11338:	neg al	; 2: -10 -40
x11340:	neg ax	; 2: -9 -40

scanLongInt$10:	; parameter £temporary1487, offset 6
x11342:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$11:	; call function noellipse-noellipse isspace
x11345:	mov word [bp + 15], scanLongInt$12	; 5: -57 70 15 95 44
x11350:	mov [bp + 17], bp	; 3: -119 110 17
x11353:	add bp, 15	; 3: -125 -59 15
x11356:	nop	; 1: -112
x11357:	jmp isspace	; 2: -21 -121

scanLongInt$12:	; post call

scanLongInt$13:	; £temporary1488 = return_value

scanLongInt$14:	; if £temporary1488 == 0 goto 21
x11359:	cmp bx, 0	; 3: -125 -5 0
x11362:	je scanLongInt$21	; 2: 116 19

scanLongInt$15:	; call header integral zero 0 stack zero 0

scanLongInt$16:	; call function noellipse-noellipse scanChar
x11364:	mov word [bp + 15], scanLongInt$17	; 5: -57 70 15 114 44
x11369:	mov [bp + 17], bp	; 3: -119 110 17
x11372:	add bp, 15	; 3: -125 -59 15
x11375:	jmp scanChar	; 3: -23 -72 -4

scanLongInt$17:	; post call

scanLongInt$18:	; £temporary1489 = return_value

scanLongInt$19:	; input = £temporary1489
x11378:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$20:	; goto 8
x11381:	jmp scanLongInt$8	; 2: -21 -55

scanLongInt$21:	; if input != 43 goto 28
x11383:	cmp byte [bp + 14], 43	; 4: -128 126 14 43
x11387:	jne scanLongInt$28	; 2: 117 19

scanLongInt$22:	; call header integral zero 0 stack zero 0

scanLongInt$23:	; call function noellipse-noellipse scanChar
x11389:	mov word [bp + 15], scanLongInt$24	; 5: -57 70 15 -117 44
x11394:	mov [bp + 17], bp	; 3: -119 110 17
x11397:	add bp, 15	; 3: -125 -59 15
x11400:	jmp scanChar	; 3: -23 -97 -4

scanLongInt$24:	; post call

scanLongInt$25:	; £temporary1492 = return_value

scanLongInt$26:	; input = £temporary1492
x11403:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$27:	; goto 35
x11406:	jmp scanLongInt$35	; 2: -21 28

scanLongInt$28:	; if input != 45 goto 35
x11408:	cmp byte [bp + 14], 45	; 4: -128 126 14 45
x11412:	jne scanLongInt$35	; 2: 117 22

scanLongInt$29:	; minus = 1
x11414:	mov word [bp + 10], 1	; 5: -57 70 10 1 0

scanLongInt$30:	; call header integral zero 0 stack zero 0

scanLongInt$31:	; call function noellipse-noellipse scanChar
x11419:	mov word [bp + 15], scanLongInt$32	; 5: -57 70 15 -87 44
x11424:	mov [bp + 17], bp	; 3: -119 110 17
x11427:	add bp, 15	; 3: -125 -59 15
x11430:	jmp scanChar	; 3: -23 -127 -4

scanLongInt$32:	; post call

scanLongInt$33:	; £temporary1494 = return_value

scanLongInt$34:	; input = £temporary1494
x11433:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$35:	; call header integral zero 0 stack zero 0

scanLongInt$36:	; £temporary1495 = int_to_int input (Signed_Char -> Signed_Int)
x11436:	mov al, [bp + 14]	; 3: -118 70 14
x11439:	and ax, 255	; 3: 37 -1 0
x11442:	cmp al, 0	; 2: 60 0
x11444:	jge scanLongInt$37	; 2: 125 4
x11446:	neg al	; 2: -10 -40
x11448:	neg ax	; 2: -9 -40

scanLongInt$37:	; parameter £temporary1495, offset 6
x11450:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$38:	; call function noellipse-noellipse isdigit
x11453:	mov word [bp + 15], scanLongInt$39	; 5: -57 70 15 -53 44
x11458:	mov [bp + 17], bp	; 3: -119 110 17
x11461:	add bp, 15	; 3: -125 -59 15
x11464:	jmp isdigit	; 3: -23 109 -11

scanLongInt$39:	; post call

scanLongInt$40:	; £temporary1496 = return_value

scanLongInt$41:	; if £temporary1496 == 0 goto 53
x11467:	cmp bx, 0	; 3: -125 -5 0
x11470:	je scanLongInt$53	; 2: 116 66

scanLongInt$42:	; £temporary1497 = longValue * 10
x11472:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11476:	xor edx, edx	; 3: 102 49 -46
x11479:	imul dword [int4$10#]	; 5: 102 -9 46 -82 19

scanLongInt$43:	; £temporary1498 = input - 48
x11484:	mov bl, [bp + 14]	; 3: -118 94 14
x11487:	sub bl, 48	; 3: -128 -21 48

scanLongInt$44:	; £temporary1499 = int_to_int £temporary1498 (Signed_Char -> Signed_Long_Int)
x11490:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0
x11497:	cmp bl, 0	; 3: -128 -5 0
x11500:	jge scanLongInt$45	; 2: 125 5
x11502:	neg bl	; 2: -10 -37
x11504:	neg ebx	; 3: 102 -9 -37

scanLongInt$45:	; longValue = £temporary1497 + £temporary1499
x11507:	add eax, ebx	; 3: 102 1 -40
x11510:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$46:	; call header integral zero 0 stack zero 0

scanLongInt$47:	; call function noellipse-noellipse scanChar
x11514:	mov word [bp + 15], scanLongInt$48	; 5: -57 70 15 8 45
x11519:	mov [bp + 17], bp	; 3: -119 110 17
x11522:	add bp, 15	; 3: -125 -59 15
x11525:	jmp scanChar	; 3: -23 34 -4

scanLongInt$48:	; post call

scanLongInt$49:	; £temporary1501 = return_value

scanLongInt$50:	; input = £temporary1501
x11528:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$51:	; found = 1
x11531:	mov word [bp + 12], 1	; 5: -57 70 12 1 0

scanLongInt$52:	; goto 35
x11536:	jmp scanLongInt$35	; 2: -21 -102

scanLongInt$53:	; if minus == 0 goto 56
x11538:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x11542:	je scanLongInt$56	; 2: 116 11

scanLongInt$54:	; £temporary1503 = -longValue
x11544:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11548:	neg eax	; 3: 102 -9 -40

scanLongInt$55:	; longValue = £temporary1503
x11551:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$56:	; if found == 0 goto 58
x11555:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x11559:	je scanLongInt$58	; 2: 116 4

scanLongInt$57:	; ++g_inCount
x11561:	inc word [g_inCount]	; 4: -1 6 17 41

scanLongInt$58:	; call header integral zero 0 stack zero 0

scanLongInt$59:	; parameter input, offset 6
x11565:	mov al, [bp + 14]	; 3: -118 70 14
x11568:	mov [bp + 21], al	; 3: -120 70 21

scanLongInt$60:	; call function noellipse-noellipse unscanChar
x11571:	mov word [bp + 15], scanLongInt$61	; 5: -57 70 15 65 45
x11576:	mov [bp + 17], bp	; 3: -119 110 17
x11579:	add bp, 15	; 3: -125 -59 15
x11582:	nop	; 1: -112
x11583:	jmp unscanChar	; 2: -21 15

scanLongInt$61:	; post call

scanLongInt$62:	; return_value = longValue
x11585:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

scanLongInt$63:	; return
x11589:	mov ax, [bp]	; 3: -117 70 0
x11592:	mov di, [bp + 4]	; 3: -117 126 4
x11595:	mov bp, [bp + 2]	; 3: -117 110 2
x11598:	jmp ax	; 2: -1 -32

scanLongInt$64:	; function end scanLongInt

unscanChar:	; case g_inStatus == 0 goto 4
x11600:	mov ax, [g_inStatus]	; 3: -95 -21 35
x11603:	cmp ax, 0	; 3: -125 -8 0
x11606:	je unscanChar$4	; 2: 116 7

unscanChar$1:	; case g_inStatus == 1 goto 6
x11608:	cmp ax, 1	; 3: -125 -8 1
x11611:	je unscanChar$6	; 2: 116 8

unscanChar$2:	; case end g_inStatus

unscanChar$3:	; goto 7
x11613:	jmp unscanChar$7	; 2: -21 10

unscanChar$4:	; --g_inChars
x11615:	dec word [g_inChars]	; 4: -1 14 19 41

unscanChar$5:	; goto 7
x11619:	jmp unscanChar$7	; 2: -21 4

unscanChar$6:	; --g_inChars
x11621:	dec word [g_inChars]	; 4: -1 14 19 41

unscanChar$7:	; return
x11625:	mov ax, [bp]	; 3: -117 70 0
x11628:	mov di, [bp + 4]	; 3: -117 126 4
x11631:	mov bp, [bp + 2]	; 3: -117 110 2
x11634:	jmp ax	; 2: -1 -32

unscanChar$8:	; function end unscanChar

scanUnsignedLongInt:	; unsignedLongValue = 0
x11636:	mov dword [bp + 10], 0	; 8: 102 -57 70 10 0 0 0 0

scanUnsignedLongInt$1:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$2:	; call function noellipse-noellipse scanChar
x11644:	mov word [bp + 18], scanUnsignedLongInt$3	; 5: -57 70 18 -118 45
x11649:	mov [bp + 20], bp	; 3: -119 110 20
x11652:	add bp, 18	; 3: -125 -59 18
x11655:	jmp scanChar	; 3: -23 -96 -5

scanUnsignedLongInt$3:	; post call

scanUnsignedLongInt$4:	; £temporary1511 = return_value

scanUnsignedLongInt$5:	; input = £temporary1511
x11658:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$6:	; found = 1
x11661:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$7:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$8:	; £temporary1512 = int_to_int input (Signed_Char -> Signed_Int)
x11666:	mov al, [bp + 18]	; 3: -118 70 18
x11669:	and ax, 255	; 3: 37 -1 0
x11672:	cmp al, 0	; 2: 60 0
x11674:	jge scanUnsignedLongInt$9	; 2: 125 4
x11676:	neg al	; 2: -10 -40
x11678:	neg ax	; 2: -9 -40

scanUnsignedLongInt$9:	; parameter £temporary1512, offset 6
x11680:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$10:	; call function noellipse-noellipse isspace
x11683:	mov word [bp + 21], scanUnsignedLongInt$11	; 5: -57 70 21 -79 45
x11688:	mov [bp + 23], bp	; 3: -119 110 23
x11691:	add bp, 21	; 3: -125 -59 21
x11694:	jmp isspace	; 3: -23 53 -2

scanUnsignedLongInt$11:	; post call

scanUnsignedLongInt$12:	; £temporary1513 = return_value

scanUnsignedLongInt$13:	; if £temporary1513 == 0 goto 20
x11697:	cmp bx, 0	; 3: -125 -5 0
x11700:	je scanUnsignedLongInt$20	; 2: 116 19

scanUnsignedLongInt$14:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$15:	; call function noellipse-noellipse scanChar
x11702:	mov word [bp + 21], scanUnsignedLongInt$16	; 5: -57 70 21 -60 45
x11707:	mov [bp + 23], bp	; 3: -119 110 23
x11710:	add bp, 21	; 3: -125 -59 21
x11713:	jmp scanChar	; 3: -23 102 -5

scanUnsignedLongInt$16:	; post call

scanUnsignedLongInt$17:	; £temporary1514 = return_value

scanUnsignedLongInt$18:	; input = £temporary1514
x11716:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$19:	; goto 7
x11719:	jmp scanUnsignedLongInt$7	; 2: -21 -55

scanUnsignedLongInt$20:	; if input != 48 goto 49
x11721:	cmp byte [bp + 18], 48	; 4: -128 126 18 48
x11725:	jne scanUnsignedLongInt$49	; 2: 117 118

scanUnsignedLongInt$21:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$22:	; call function noellipse-noellipse scanChar
x11727:	mov word [bp + 21], scanUnsignedLongInt$23	; 5: -57 70 21 -35 45
x11732:	mov [bp + 23], bp	; 3: -119 110 23
x11735:	add bp, 21	; 3: -125 -59 21
x11738:	jmp scanChar	; 3: -23 77 -5

scanUnsignedLongInt$23:	; post call

scanUnsignedLongInt$24:	; £temporary1517 = return_value

scanUnsignedLongInt$25:	; input = £temporary1517
x11741:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$26:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$27:	; £temporary1518 = int_to_int input (Signed_Char -> Signed_Int)
x11744:	mov al, [bp + 18]	; 3: -118 70 18
x11747:	and ax, 255	; 3: 37 -1 0
x11750:	cmp al, 0	; 2: 60 0
x11752:	jge scanUnsignedLongInt$28	; 2: 125 4
x11754:	neg al	; 2: -10 -40
x11756:	neg ax	; 2: -9 -40

scanUnsignedLongInt$28:	; parameter £temporary1518, offset 6
x11758:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$29:	; call function noellipse-noellipse tolower
x11761:	mov word [bp + 21], scanUnsignedLongInt$30	; 5: -57 70 21 -1 45
x11766:	mov [bp + 23], bp	; 3: -119 110 23
x11769:	add bp, 21	; 3: -125 -59 21
x11772:	jmp tolower	; 3: -23 2 -16

scanUnsignedLongInt$30:	; post call

scanUnsignedLongInt$31:	; £temporary1519 = return_value

scanUnsignedLongInt$32:	; if £temporary1519 != 120 goto 44
x11775:	cmp bx, 120	; 3: -125 -5 120
x11778:	jne scanUnsignedLongInt$44	; 2: 117 42

scanUnsignedLongInt$33:	; if base != 0 goto 36
x11780:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11785:	jne scanUnsignedLongInt$36	; 2: 117 8

scanUnsignedLongInt$34:	; £temporary1525 = 16
x11787:	mov eax, 16	; 6: 102 -72 16 0 0 0

scanUnsignedLongInt$35:	; goto 37
x11793:	jmp scanUnsignedLongInt$37	; 2: -21 4

scanUnsignedLongInt$36:	; £temporary1525 = base
x11795:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$37:	; base = £temporary1525
x11799:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$38:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$39:	; call function noellipse-noellipse scanChar
x11803:	mov word [bp + 21], scanUnsignedLongInt$40	; 5: -57 70 21 41 46
x11808:	mov [bp + 23], bp	; 3: -119 110 23
x11811:	add bp, 21	; 3: -125 -59 21
x11814:	jmp scanChar	; 3: -23 1 -5

scanUnsignedLongInt$40:	; post call

scanUnsignedLongInt$41:	; £temporary1526 = return_value

scanUnsignedLongInt$42:	; input = £temporary1526
x11817:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$43:	; goto 49
x11820:	jmp scanUnsignedLongInt$49	; 2: -21 23

scanUnsignedLongInt$44:	; if base != 0 goto 47
x11822:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11827:	jne scanUnsignedLongInt$47	; 2: 117 8

scanUnsignedLongInt$45:	; £temporary1531 = 8
x11829:	mov eax, 8	; 6: 102 -72 8 0 0 0

scanUnsignedLongInt$46:	; goto 48
x11835:	jmp scanUnsignedLongInt$48	; 2: -21 4

scanUnsignedLongInt$47:	; £temporary1531 = base
x11837:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$48:	; base = £temporary1531
x11841:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$49:	; if base != 0 goto 51
x11845:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11850:	jne scanUnsignedLongInt$51	; 2: 117 8

scanUnsignedLongInt$50:	; base = 10
x11852:	mov dword [bp + 6], 10	; 8: 102 -57 70 6 10 0 0 0

scanUnsignedLongInt$51:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$52:	; £temporary1533 = int_to_int input (Signed_Char -> Signed_Int)
x11860:	mov al, [bp + 18]	; 3: -118 70 18
x11863:	and ax, 255	; 3: 37 -1 0
x11866:	cmp al, 0	; 2: 60 0
x11868:	jge scanUnsignedLongInt$53	; 2: 125 4
x11870:	neg al	; 2: -10 -40
x11872:	neg ax	; 2: -9 -40

scanUnsignedLongInt$53:	; parameter £temporary1533, offset 6
x11874:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$54:	; call function noellipse-noellipse isxdigit
x11877:	mov word [bp + 21], scanUnsignedLongInt$55	; 5: -57 70 21 115 46
x11882:	mov [bp + 23], bp	; 3: -119 110 23
x11885:	add bp, 21	; 3: -125 -59 21
x11888:	nop	; 1: -112
x11889:	jmp isxdigit	; 2: -21 127

scanUnsignedLongInt$55:	; post call

scanUnsignedLongInt$56:	; £temporary1534 = return_value

scanUnsignedLongInt$57:	; if £temporary1534 == 0 goto 74
x11891:	cmp bx, 0	; 3: -125 -5 0
x11894:	je scanUnsignedLongInt$74	; 2: 116 77

scanUnsignedLongInt$58:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$59:	; parameter input, offset 6
x11896:	mov al, [bp + 18]	; 3: -118 70 18
x11899:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$60:	; call function noellipse-noellipse digitToValue
x11902:	mov word [bp + 21], scanUnsignedLongInt$61	; 5: -57 70 21 -116 46
x11907:	mov [bp + 23], bp	; 3: -119 110 23
x11910:	add bp, 21	; 3: -125 -59 21
x11913:	jmp digitToValue	; 3: -23 -86 0

scanUnsignedLongInt$61:	; post call

scanUnsignedLongInt$62:	; £temporary1535 = return_value

scanUnsignedLongInt$63:	; digit = £temporary1535
x11916:	mov [bp + 14], ebx	; 4: 102 -119 94 14

scanUnsignedLongInt$64:	; if digit >= base goto 74
x11920:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11924:	cmp [bp + 14], eax	; 4: 102 57 70 14
x11928:	jae scanUnsignedLongInt$74	; 2: 115 43

scanUnsignedLongInt$65:	; £temporary1537 = unsignedLongValue * base
x11930:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x11934:	xor edx, edx	; 3: 102 49 -46
x11937:	mul dword [bp + 6]	; 4: 102 -9 102 6

scanUnsignedLongInt$66:	; unsignedLongValue = £temporary1537 + digit
x11941:	add eax, [bp + 14]	; 4: 102 3 70 14
x11945:	mov [bp + 10], eax	; 4: 102 -119 70 10

scanUnsignedLongInt$67:	; found = 1
x11949:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$68:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$69:	; call function noellipse-noellipse scanChar
x11954:	mov word [bp + 21], scanUnsignedLongInt$70	; 5: -57 70 21 -64 46
x11959:	mov [bp + 23], bp	; 3: -119 110 23
x11962:	add bp, 21	; 3: -125 -59 21
x11965:	jmp scanChar	; 3: -23 106 -6

scanUnsignedLongInt$70:	; post call

scanUnsignedLongInt$71:	; £temporary1539 = return_value

scanUnsignedLongInt$72:	; input = £temporary1539
x11968:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$73:	; goto 51
x11971:	jmp scanUnsignedLongInt$51	; 2: -21 -113

scanUnsignedLongInt$74:	; if found == 0 goto 76
x11973:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x11977:	je scanUnsignedLongInt$76	; 2: 116 4

scanUnsignedLongInt$75:	; ++g_inCount
x11979:	inc word [g_inCount]	; 4: -1 6 17 41

scanUnsignedLongInt$76:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$77:	; parameter input, offset 6
x11983:	mov al, [bp + 18]	; 3: -118 70 18
x11986:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$78:	; call function noellipse-noellipse unscanChar
x11989:	mov word [bp + 21], scanUnsignedLongInt$79	; 5: -57 70 21 -29 46
x11994:	mov [bp + 23], bp	; 3: -119 110 23
x11997:	add bp, 21	; 3: -125 -59 21
x12000:	jmp unscanChar	; 3: -23 109 -2

scanUnsignedLongInt$79:	; post call

scanUnsignedLongInt$80:	; return_value = unsignedLongValue
x12003:	mov ebx, [bp + 10]	; 4: 102 -117 94 10

scanUnsignedLongInt$81:	; return
x12007:	mov ax, [bp]	; 3: -117 70 0
x12010:	mov di, [bp + 4]	; 3: -117 126 4
x12013:	mov bp, [bp + 2]	; 3: -117 110 2
x12016:	jmp ax	; 2: -1 -32

scanUnsignedLongInt$82:	; function end scanUnsignedLongInt

isxdigit:	; call header integral zero 0 stack zero 0

isxdigit$1:	; parameter c, offset 6
x12018:	mov ax, [bp + 6]	; 3: -117 70 6
x12021:	mov [bp + 14], ax	; 3: -119 70 14

isxdigit$2:	; call function noellipse-noellipse isdigit
x12024:	mov word [bp + 8], isxdigit$3	; 5: -57 70 8 6 47
x12029:	mov [bp + 10], bp	; 3: -119 110 10
x12032:	add bp, 8	; 3: -125 -59 8
x12035:	jmp isdigit	; 3: -23 50 -13

isxdigit$3:	; post call

isxdigit$4:	; £temporary361 = return_value

isxdigit$5:	; if £temporary361 != 0 goto 10
x12038:	cmp bx, 0	; 3: -125 -5 0
x12041:	jne isxdigit$10	; 2: 117 24

isxdigit$6:	; if c < 97 goto 8
x12043:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12047:	jl isxdigit$8	; 2: 124 6

isxdigit$7:	; if c <= 102 goto 10
x12049:	cmp word [bp + 6], 102	; 4: -125 126 6 102
x12053:	jle isxdigit$10	; 2: 126 12

isxdigit$8:	; if c < 65 goto 12
x12055:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x12059:	jl isxdigit$12	; 2: 124 11

isxdigit$9:	; if c > 70 goto 12
x12061:	cmp word [bp + 6], 70	; 4: -125 126 6 70
x12065:	jg isxdigit$12	; 2: 127 5

isxdigit$10:	; £temporary371 = 1
x12067:	mov bx, 1	; 3: -69 1 0

isxdigit$11:	; goto 13
x12070:	jmp isxdigit$13	; 2: -21 3

isxdigit$12:	; £temporary371 = 0
x12072:	mov bx, 0	; 3: -69 0 0

isxdigit$13:	; return_value = £temporary371

isxdigit$14:	; return
x12075:	mov ax, [bp]	; 3: -117 70 0
x12078:	mov di, [bp + 4]	; 3: -117 126 4
x12081:	mov bp, [bp + 2]	; 3: -117 110 2
x12084:	jmp ax	; 2: -1 -32

isxdigit$15:	; function end isxdigit

digitToValue:	; call header integral zero 0 stack zero 0

digitToValue$1:	; £temporary1470 = int_to_int input (Signed_Char -> Signed_Int)
x12086:	mov al, [bp + 6]	; 3: -118 70 6
x12089:	and ax, 255	; 3: 37 -1 0
x12092:	cmp al, 0	; 2: 60 0
x12094:	jge digitToValue$2	; 2: 125 4
x12096:	neg al	; 2: -10 -40
x12098:	neg ax	; 2: -9 -40

digitToValue$2:	; parameter £temporary1470, offset 6
x12100:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$3:	; call function noellipse-noellipse isdigit
x12103:	mov word [bp + 7], digitToValue$4	; 5: -57 70 7 85 47
x12108:	mov [bp + 9], bp	; 3: -119 110 9
x12111:	add bp, 7	; 3: -125 -59 7
x12114:	jmp isdigit	; 3: -23 -29 -14

digitToValue$4:	; post call

digitToValue$5:	; £temporary1471 = return_value

digitToValue$6:	; if £temporary1471 == 0 goto 11
x12117:	cmp bx, 0	; 3: -125 -5 0
x12120:	je digitToValue$11	; 2: 116 24

digitToValue$7:	; £temporary1472 = input - 48
x12122:	mov bl, [bp + 6]	; 3: -118 94 6
x12125:	sub bl, 48	; 3: -128 -21 48

digitToValue$8:	; £temporary1473 = int_to_int £temporary1472 (Signed_Char -> Unsigned_Long_Int)
x12128:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$9:	; return_value = £temporary1473

digitToValue$10:	; return
x12135:	mov ax, [bp]	; 3: -117 70 0
x12138:	mov di, [bp + 4]	; 3: -117 126 4
x12141:	mov bp, [bp + 2]	; 3: -117 110 2
x12144:	jmp ax	; 2: -1 -32

digitToValue$11:	; call header integral zero 0 stack zero 0

digitToValue$12:	; £temporary1474 = int_to_int input (Signed_Char -> Signed_Int)
x12146:	mov al, [bp + 6]	; 3: -118 70 6
x12149:	and ax, 255	; 3: 37 -1 0
x12152:	cmp al, 0	; 2: 60 0
x12154:	jge digitToValue$13	; 2: 125 4
x12156:	neg al	; 2: -10 -40
x12158:	neg ax	; 2: -9 -40

digitToValue$13:	; parameter £temporary1474, offset 6
x12160:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$14:	; call function noellipse-noellipse islower
x12163:	mov word [bp + 7], digitToValue$15	; 5: -57 70 7 -111 47
x12168:	mov [bp + 9], bp	; 3: -119 110 9
x12171:	add bp, 7	; 3: -125 -59 7
x12174:	nop	; 1: -112
x12175:	jmp islower	; 2: -21 61

digitToValue$15:	; post call

digitToValue$16:	; £temporary1475 = return_value

digitToValue$17:	; if £temporary1475 == 0 goto 23
x12177:	cmp bx, 0	; 3: -125 -5 0
x12180:	je digitToValue$23	; 2: 116 28

digitToValue$18:	; £temporary1476 = input - 97
x12182:	mov bl, [bp + 6]	; 3: -118 94 6
x12185:	sub bl, 97	; 3: -128 -21 97

digitToValue$19:	; £temporary1477 = int_to_int £temporary1476 (Signed_Char -> Unsigned_Long_Int)
x12188:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$20:	; £temporary1478 = £temporary1477 + 10
x12195:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$21:	; return_value = £temporary1478

digitToValue$22:	; return
x12199:	mov ax, [bp]	; 3: -117 70 0
x12202:	mov di, [bp + 4]	; 3: -117 126 4
x12205:	mov bp, [bp + 2]	; 3: -117 110 2
x12208:	jmp ax	; 2: -1 -32

digitToValue$23:	; £temporary1479 = input - 65
x12210:	mov bl, [bp + 6]	; 3: -118 94 6
x12213:	sub bl, 65	; 3: -128 -21 65

digitToValue$24:	; £temporary1480 = int_to_int £temporary1479 (Signed_Char -> Unsigned_Long_Int)
x12216:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$25:	; £temporary1481 = £temporary1480 + 10
x12223:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$26:	; return_value = £temporary1481

digitToValue$27:	; return
x12227:	mov ax, [bp]	; 3: -117 70 0
x12230:	mov di, [bp + 4]	; 3: -117 126 4
x12233:	mov bp, [bp + 2]	; 3: -117 110 2
x12236:	jmp ax	; 2: -1 -32

digitToValue$28:	; function end digitToValue

islower:	; call header integral zero 0 stack zero 0

islower$1:	; call function noellipse-noellipse localeconv
x12238:	mov word [bp + 8], islower$2	; 5: -57 70 8 -36 47
x12243:	mov [bp + 10], bp	; 3: -119 110 10
x12246:	add bp, 8	; 3: -125 -59 8
x12249:	jmp localeconv	; 3: -23 49 -27

islower$2:	; post call

islower$3:	; £temporary309 = return_value

islower$4:	; localeConvPtr = £temporary309
x12252:	mov [bp + 8], bx	; 3: -119 94 8

islower$5:	; if localeConvPtr == 0 goto 19
x12255:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12259:	je islower$19	; 2: 116 53

islower$6:	; call header integral zero 0 stack zero 0

islower$7:	; £temporary311 -> localeConvPtr = *localeConvPtr, offset 12
x12261:	mov si, [bp + 8]	; 3: -117 118 8

islower$8:	; parameter £temporary311 -> localeConvPtr, offset 6
x12264:	mov ax, [si + 12]	; 3: -117 68 12
x12267:	mov [bp + 16], ax	; 3: -119 70 16

islower$9:	; parameter c, offset 8
x12270:	mov ax, [bp + 6]	; 3: -117 70 6
x12273:	mov [bp + 18], ax	; 3: -119 70 18

islower$10:	; call function noellipse-noellipse strchr
x12276:	mov word [bp + 10], islower$11	; 5: -57 70 10 2 48
x12281:	mov [bp + 12], bp	; 3: -119 110 12
x12284:	add bp, 10	; 3: -125 -59 10
x12287:	jmp strchr	; 3: -23 -95 -22

islower$11:	; post call

islower$12:	; £temporary312 = return_value

islower$13:	; if £temporary312 == 0 goto 16
x12290:	cmp bx, 0	; 3: -125 -5 0
x12293:	je islower$16	; 2: 116 5

islower$14:	; £temporary314 = 1
x12295:	mov bx, 1	; 3: -69 1 0

islower$15:	; goto 17
x12298:	jmp islower$17	; 2: -21 3

islower$16:	; £temporary314 = 0
x12300:	mov bx, 0	; 3: -69 0 0

islower$17:	; return_value = £temporary314

islower$18:	; return
x12303:	mov ax, [bp]	; 3: -117 70 0
x12306:	mov di, [bp + 4]	; 3: -117 126 4
x12309:	mov bp, [bp + 2]	; 3: -117 110 2
x12312:	jmp ax	; 2: -1 -32

islower$19:	; if c < 97 goto 23
x12314:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x12318:	jl islower$23	; 2: 124 11

islower$20:	; if c > 122 goto 23
x12320:	cmp word [bp + 6], 122	; 4: -125 126 6 122
x12324:	jg islower$23	; 2: 127 5

islower$21:	; £temporary318 = 1
x12326:	mov bx, 1	; 3: -69 1 0

islower$22:	; goto 24
x12329:	jmp islower$24	; 2: -21 3

islower$23:	; £temporary318 = 0
x12331:	mov bx, 0	; 3: -69 0 0

islower$24:	; return_value = £temporary318

islower$25:	; return
x12334:	mov ax, [bp]	; 3: -117 70 0
x12337:	mov di, [bp + 4]	; 3: -117 126 4
x12340:	mov bp, [bp + 2]	; 3: -117 110 2
x12343:	jmp ax	; 2: -1 -32

islower$26:	; function end islower

scanLongDouble:	; minus = 0
x12345:	mov word [bp + 6], 0	; 5: -57 70 6 0 0

scanLongDouble$1:	; found = 0
x12350:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

scanLongDouble$2:	; push float 0.0
x12355:	fldz	; 2: -39 -18

scanLongDouble$3:	; pop float value
x12357:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$4:	; push float 1.0
x12360:	fld1	; 2: -39 -24

scanLongDouble$5:	; pop float factor
x12362:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$6:	; call header integral zero 0 stack zero 0

scanLongDouble$7:	; call function noellipse-noellipse scanChar
x12365:	mov word [bp + 26], scanLongDouble$8	; 5: -57 70 26 91 48
x12370:	mov [bp + 28], bp	; 3: -119 110 28
x12373:	add bp, 26	; 3: -125 -59 26
x12376:	jmp scanChar	; 3: -23 -49 -8

scanLongDouble$8:	; post call

scanLongDouble$9:	; £temporary1549 = return_value

scanLongDouble$10:	; input = £temporary1549
x12379:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$11:	; call header integral zero 0 stack zero 0

scanLongDouble$12:	; £temporary1550 = int_to_int input (Signed_Char -> Signed_Int)
x12382:	mov al, [bp + 26]	; 3: -118 70 26
x12385:	and ax, 255	; 3: 37 -1 0
x12388:	cmp al, 0	; 2: 60 0
x12390:	jge scanLongDouble$13	; 2: 125 4
x12392:	neg al	; 2: -10 -40
x12394:	neg ax	; 2: -9 -40

scanLongDouble$13:	; parameter £temporary1550, offset 6
x12396:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$14:	; call function noellipse-noellipse isspace
x12399:	mov word [bp + 27], scanLongDouble$15	; 5: -57 70 27 125 48
x12404:	mov [bp + 29], bp	; 3: -119 110 29
x12407:	add bp, 27	; 3: -125 -59 27
x12410:	jmp isspace	; 3: -23 105 -5

scanLongDouble$15:	; post call

scanLongDouble$16:	; £temporary1551 = return_value

scanLongDouble$17:	; if £temporary1551 == 0 goto 24
x12413:	cmp bx, 0	; 3: -125 -5 0
x12416:	je scanLongDouble$24	; 2: 116 19

scanLongDouble$18:	; call header integral zero 0 stack zero 0

scanLongDouble$19:	; call function noellipse-noellipse scanChar
x12418:	mov word [bp + 27], scanLongDouble$20	; 5: -57 70 27 -112 48
x12423:	mov [bp + 29], bp	; 3: -119 110 29
x12426:	add bp, 27	; 3: -125 -59 27
x12429:	jmp scanChar	; 3: -23 -102 -8

scanLongDouble$20:	; post call

scanLongDouble$21:	; £temporary1552 = return_value

scanLongDouble$22:	; input = £temporary1552
x12432:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$23:	; goto 11
x12435:	jmp scanLongDouble$11	; 2: -21 -55

scanLongDouble$24:	; if input != 43 goto 31
x12437:	cmp byte [bp + 26], 43	; 4: -128 126 26 43
x12441:	jne scanLongDouble$31	; 2: 117 19

scanLongDouble$25:	; call header integral zero 0 stack zero 0

scanLongDouble$26:	; call function noellipse-noellipse scanChar
x12443:	mov word [bp + 27], scanLongDouble$27	; 5: -57 70 27 -87 48
x12448:	mov [bp + 29], bp	; 3: -119 110 29
x12451:	add bp, 27	; 3: -125 -59 27
x12454:	jmp scanChar	; 3: -23 -127 -8

scanLongDouble$27:	; post call

scanLongDouble$28:	; £temporary1555 = return_value

scanLongDouble$29:	; input = £temporary1555
x12457:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$30:	; goto 38
x12460:	jmp scanLongDouble$38	; 2: -21 28

scanLongDouble$31:	; if input != 45 goto 38
x12462:	cmp byte [bp + 26], 45	; 4: -128 126 26 45
x12466:	jne scanLongDouble$38	; 2: 117 22

scanLongDouble$32:	; minus = 1
x12468:	mov word [bp + 6], 1	; 5: -57 70 6 1 0

scanLongDouble$33:	; call header integral zero 0 stack zero 0

scanLongDouble$34:	; call function noellipse-noellipse scanChar
x12473:	mov word [bp + 27], scanLongDouble$35	; 5: -57 70 27 -57 48
x12478:	mov [bp + 29], bp	; 3: -119 110 29
x12481:	add bp, 27	; 3: -125 -59 27
x12484:	jmp scanChar	; 3: -23 99 -8

scanLongDouble$35:	; post call

scanLongDouble$36:	; £temporary1557 = return_value

scanLongDouble$37:	; input = £temporary1557
x12487:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$38:	; call header integral zero 0 stack zero 0

scanLongDouble$39:	; £temporary1558 = int_to_int input (Signed_Char -> Signed_Int)
x12490:	mov al, [bp + 26]	; 3: -118 70 26
x12493:	and ax, 255	; 3: 37 -1 0
x12496:	cmp al, 0	; 2: 60 0
x12498:	jge scanLongDouble$40	; 2: 125 4
x12500:	neg al	; 2: -10 -40
x12502:	neg ax	; 2: -9 -40

scanLongDouble$40:	; parameter £temporary1558, offset 6
x12504:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$41:	; call function noellipse-noellipse isdigit
x12507:	mov word [bp + 27], scanLongDouble$42	; 5: -57 70 27 -23 48
x12512:	mov [bp + 29], bp	; 3: -119 110 29
x12515:	add bp, 27	; 3: -125 -59 27
x12518:	jmp isdigit	; 3: -23 79 -15

scanLongDouble$42:	; post call

scanLongDouble$43:	; £temporary1559 = return_value

scanLongDouble$44:	; if £temporary1559 == 0 goto 60
x12521:	cmp bx, 0	; 3: -125 -5 0
x12524:	je scanLongDouble$60	; 2: 116 61

scanLongDouble$45:	; push float 10.0
x12526:	fld qword [float8$10.0#]	; 4: -35 6 -41 29

scanLongDouble$46:	; push float value
x12530:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$47:	; £temporary1560 = 10.0 * value
x12533:	fmul	; 2: -34 -55

scanLongDouble$48:	; £temporary1561 = input - 48
x12535:	mov al, [bp + 26]	; 3: -118 70 26
x12538:	sub al, 48	; 2: 44 48

scanLongDouble$49:	; £temporary1563 = int_to_int £temporary1561 (Signed_Char -> Signed_Int)
x12540:	and ax, 255	; 3: 37 -1 0
x12543:	cmp al, 0	; 2: 60 0
x12545:	jge scanLongDouble$50	; 2: 125 4
x12547:	neg al	; 2: -10 -40
x12549:	neg ax	; 2: -9 -40

scanLongDouble$50:	; £temporary1562 = int_to_float £temporary1563 (Signed_Int -> Long_Double)
x12551:	mov [container2bytes#], ax	; 3: -93 -23 17
x12554:	fild word [container2bytes#]	; 4: -33 6 -23 17

scanLongDouble$51:	; £temporary1564 = £temporary1560 + £temporary1562
x12558:	fadd	; 2: -34 -63

scanLongDouble$52:	; pop float value
x12560:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$53:	; call header integral zero 0 stack zero 0

scanLongDouble$54:	; call function noellipse-noellipse scanChar
x12563:	mov word [bp + 27], scanLongDouble$55	; 5: -57 70 27 33 49
x12568:	mov [bp + 29], bp	; 3: -119 110 29
x12571:	add bp, 27	; 3: -125 -59 27
x12574:	jmp scanChar	; 3: -23 9 -8

scanLongDouble$55:	; post call

scanLongDouble$56:	; £temporary1565 = return_value

scanLongDouble$57:	; input = £temporary1565
x12577:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$58:	; found = 1
x12580:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$59:	; goto 38
x12585:	jmp scanLongDouble$38	; 2: -21 -97

scanLongDouble$60:	; if input != 46 goto 92
x12587:	cmp byte [bp + 26], 46	; 4: -128 126 26 46
x12591:	jne scanLongDouble$92	; 2: 117 125

scanLongDouble$61:	; call header integral zero 0 stack zero 0

scanLongDouble$62:	; call function noellipse-noellipse scanChar
x12593:	mov word [bp + 27], scanLongDouble$63	; 5: -57 70 27 63 49
x12598:	mov [bp + 29], bp	; 3: -119 110 29
x12601:	add bp, 27	; 3: -125 -59 27
x12604:	jmp scanChar	; 3: -23 -21 -9

scanLongDouble$63:	; post call

scanLongDouble$64:	; £temporary1568 = return_value

scanLongDouble$65:	; input = £temporary1568
x12607:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$66:	; call header integral zero 0 stack zero 0

scanLongDouble$67:	; £temporary1569 = int_to_int input (Signed_Char -> Signed_Int)
x12610:	mov al, [bp + 26]	; 3: -118 70 26
x12613:	and ax, 255	; 3: 37 -1 0
x12616:	cmp al, 0	; 2: 60 0
x12618:	jge scanLongDouble$68	; 2: 125 4
x12620:	neg al	; 2: -10 -40
x12622:	neg ax	; 2: -9 -40

scanLongDouble$68:	; parameter £temporary1569, offset 6
x12624:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$69:	; call function noellipse-noellipse isdigit
x12627:	mov word [bp + 27], scanLongDouble$70	; 5: -57 70 27 97 49
x12632:	mov [bp + 29], bp	; 3: -119 110 29
x12635:	add bp, 27	; 3: -125 -59 27
x12638:	jmp isdigit	; 3: -23 -41 -16

scanLongDouble$70:	; post call

scanLongDouble$71:	; £temporary1570 = return_value

scanLongDouble$72:	; if £temporary1570 == 0 goto 92
x12641:	cmp bx, 0	; 3: -125 -5 0
x12644:	je scanLongDouble$92	; 2: 116 72

scanLongDouble$73:	; push float factor
x12646:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$74:	; push float 10.0
x12649:	fld qword [float8$10.0#]	; 4: -35 6 -41 29

scanLongDouble$75:	; £temporary1571 = factor / 10.0
x12653:	fdiv	; 2: -34 -7

scanLongDouble$76:	; pop float factor
x12655:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$77:	; push float value
x12658:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$78:	; push float factor
x12661:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$79:	; £temporary1572 = input - 48
x12664:	mov al, [bp + 26]	; 3: -118 70 26
x12667:	sub al, 48	; 2: 44 48

scanLongDouble$80:	; £temporary1574 = int_to_int £temporary1572 (Signed_Char -> Signed_Int)
x12669:	and ax, 255	; 3: 37 -1 0
x12672:	cmp al, 0	; 2: 60 0
x12674:	jge scanLongDouble$81	; 2: 125 4
x12676:	neg al	; 2: -10 -40
x12678:	neg ax	; 2: -9 -40

scanLongDouble$81:	; £temporary1573 = int_to_float £temporary1574 (Signed_Int -> Long_Double)
x12680:	mov [container2bytes#], ax	; 3: -93 -23 17
x12683:	fild word [container2bytes#]	; 4: -33 6 -23 17

scanLongDouble$82:	; £temporary1575 = factor * £temporary1573
x12687:	fmul	; 2: -34 -55

scanLongDouble$83:	; £temporary1576 = value + £temporary1575
x12689:	fadd	; 2: -34 -63

scanLongDouble$84:	; pop float value
x12691:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$85:	; call header integral zero 0 stack zero 0

scanLongDouble$86:	; call function noellipse-noellipse scanChar
x12694:	mov word [bp + 27], scanLongDouble$87	; 5: -57 70 27 -92 49
x12699:	mov [bp + 29], bp	; 3: -119 110 29
x12702:	add bp, 27	; 3: -125 -59 27
x12705:	jmp scanChar	; 3: -23 -122 -9

scanLongDouble$87:	; post call

scanLongDouble$88:	; £temporary1577 = return_value

scanLongDouble$89:	; input = £temporary1577
x12708:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$90:	; found = 1
x12711:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$91:	; goto 66
x12716:	jmp scanLongDouble$66	; 2: -21 -108

scanLongDouble$92:	; call header integral zero 0 stack zero 0

scanLongDouble$93:	; parameter input, offset 6
x12718:	mov al, [bp + 26]	; 3: -118 70 26
x12721:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$94:	; call function noellipse-noellipse unscanChar
x12724:	mov word [bp + 27], scanLongDouble$95	; 5: -57 70 27 -62 49
x12729:	mov [bp + 29], bp	; 3: -119 110 29
x12732:	add bp, 27	; 3: -125 -59 27
x12735:	jmp unscanChar	; 3: -23 -114 -5

scanLongDouble$95:	; post call

scanLongDouble$96:	; call header integral zero 0 stack zero 0

scanLongDouble$97:	; £temporary1580 = int_to_int input (Signed_Char -> Signed_Int)
x12738:	mov al, [bp + 26]	; 3: -118 70 26
x12741:	and ax, 255	; 3: 37 -1 0
x12744:	cmp al, 0	; 2: 60 0
x12746:	jge scanLongDouble$98	; 2: 125 4
x12748:	neg al	; 2: -10 -40
x12750:	neg ax	; 2: -9 -40

scanLongDouble$98:	; parameter £temporary1580, offset 6
x12752:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$99:	; call function noellipse-noellipse tolower
x12755:	mov word [bp + 27], scanLongDouble$100	; 5: -57 70 27 -31 49
x12760:	mov [bp + 29], bp	; 3: -119 110 29
x12763:	add bp, 27	; 3: -125 -59 27
x12766:	jmp tolower	; 3: -23 32 -20

scanLongDouble$100:	; post call

scanLongDouble$101:	; £temporary1581 = return_value

scanLongDouble$102:	; if £temporary1581 != 101 goto 121
x12769:	cmp bx, 101	; 3: -125 -5 101
x12772:	jne scanLongDouble$121	; 2: 117 75

scanLongDouble$103:	; call header integral zero 0 stack zero 0

scanLongDouble$104:	; call function noellipse-noellipse scanLongInt
x12774:	mov word [bp + 27], scanLongDouble$105	; 5: -57 70 27 -12 49
x12779:	mov [bp + 29], bp	; 3: -119 110 29
x12782:	add bp, 27	; 3: -125 -59 27
x12785:	jmp scanLongInt	; 3: -23 41 -6

scanLongDouble$105:	; post call

scanLongDouble$106:	; £temporary1583 = return_value

scanLongDouble$107:	; £temporary1584 = int_to_float £temporary1583 (Signed_Long_Int -> Double)
x12788:	mov [container4bytes#], ebx	; 5: 102 -119 30 54 29
x12793:	fild dword [container4bytes#]	; 4: -37 6 54 29

scanLongDouble$108:	; pop float exponent
x12797:	fstp qword [bp + 27]	; 3: -35 94 27

scanLongDouble$109:	; push float value
x12800:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$110:	; call header integral zero 0 stack no zero 1
x12803:	fstp qword [bp + 35]	; 3: -35 94 35

scanLongDouble$111:	; push float 10.0
x12806:	fld qword [float8$10.0#]	; 4: -35 6 -41 29

scanLongDouble$112:	; parameter 10.0, offset 6
x12810:	fstp qword [bp + 49]	; 3: -35 94 49

scanLongDouble$113:	; push float exponent
x12813:	fld qword [bp + 27]	; 3: -35 70 27

scanLongDouble$114:	; parameter exponent, offset 14
x12816:	fstp qword [bp + 57]	; 3: -35 94 57

scanLongDouble$115:	; call function noellipse-noellipse pow
x12819:	mov word [bp + 43], scanLongDouble$116	; 5: -57 70 43 33 50
x12824:	mov [bp + 45], bp	; 3: -119 110 45
x12827:	add bp, 43	; 3: -125 -59 43
x12830:	jmp pow	; 3: -23 65 -17

scanLongDouble$116:	; post call
x12833:	fstp qword [bp + 43]	; 3: -35 94 43
x12836:	fld qword [bp + 35]	; 3: -35 70 35
x12839:	fld qword [bp + 43]	; 3: -35 70 43

scanLongDouble$117:	; £temporary1585 = return_value

scanLongDouble$118:	; £temporary1586 = value * £temporary1585
x12842:	fmul	; 2: -34 -55

scanLongDouble$119:	; pop float value
x12844:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$120:	; goto 125
x12847:	jmp scanLongDouble$125	; 2: -21 20

scanLongDouble$121:	; call header integral zero 0 stack zero 0

scanLongDouble$122:	; parameter input, offset 6
x12849:	mov al, [bp + 26]	; 3: -118 70 26
x12852:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$123:	; call function noellipse-noellipse unscanChar
x12855:	mov word [bp + 27], scanLongDouble$124	; 5: -57 70 27 69 50
x12860:	mov [bp + 29], bp	; 3: -119 110 29
x12863:	add bp, 27	; 3: -125 -59 27
x12866:	jmp unscanChar	; 3: -23 11 -5

scanLongDouble$124:	; post call

scanLongDouble$125:	; if minus == 0 goto 129
x12869:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x12873:	je scanLongDouble$129	; 2: 116 8

scanLongDouble$126:	; push float value
x12875:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$127:	; £temporary1588 = -value
x12878:	fchs	; 2: -39 -32

scanLongDouble$128:	; pop float value
x12880:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$129:	; if found == 0 goto 131
x12883:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12887:	je scanLongDouble$131	; 2: 116 4

scanLongDouble$130:	; ++g_inCount
x12889:	inc word [g_inCount]	; 4: -1 6 17 41

scanLongDouble$131:	; push float value
x12893:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$132:	; return_value = value

scanLongDouble$133:	; return
x12896:	mov ax, [bp]	; 3: -117 70 0
x12899:	mov di, [bp + 4]	; 3: -117 126 4
x12902:	mov bp, [bp + 2]	; 3: -117 110 2
x12905:	jmp ax	; 2: -1 -32

scanLongDouble$134:	; function end scanLongDouble

scanPattern:	; index = 0
x12907:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanPattern$1:	; call header integral zero 0 stack zero 0

scanPattern$2:	; call function noellipse-noellipse scanChar
x12912:	mov word [bp + 14], scanPattern$3	; 5: -57 70 14 126 50
x12917:	mov [bp + 16], bp	; 3: -119 110 16
x12920:	add bp, 14	; 3: -125 -59 14
x12923:	jmp scanChar	; 3: -23 -84 -10

scanPattern$3:	; post call

scanPattern$4:	; £temporary1341 = return_value

scanPattern$5:	; input = £temporary1341
x12926:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$6:	; call header integral zero 0 stack zero 0

scanPattern$7:	; £temporary1342 = int_to_int input (Signed_Char -> Signed_Int)
x12929:	mov al, [bp + 14]	; 3: -118 70 14
x12932:	and ax, 255	; 3: 37 -1 0
x12935:	cmp al, 0	; 2: 60 0
x12937:	jge scanPattern$8	; 2: 125 4
x12939:	neg al	; 2: -10 -40
x12941:	neg ax	; 2: -9 -40

scanPattern$8:	; parameter £temporary1342, offset 6
x12943:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$9:	; call function noellipse-noellipse isspace
x12946:	mov word [bp + 15], scanPattern$10	; 5: -57 70 15 -96 50
x12951:	mov [bp + 17], bp	; 3: -119 110 17
x12954:	add bp, 15	; 3: -125 -59 15
x12957:	jmp isspace	; 3: -23 70 -7

scanPattern$10:	; post call

scanPattern$11:	; £temporary1343 = return_value

scanPattern$12:	; if £temporary1343 == 0 goto 19
x12960:	cmp bx, 0	; 3: -125 -5 0
x12963:	je scanPattern$19	; 2: 116 19

scanPattern$13:	; call header integral zero 0 stack zero 0

scanPattern$14:	; call function noellipse-noellipse scanChar
x12965:	mov word [bp + 15], scanPattern$15	; 5: -57 70 15 -77 50
x12970:	mov [bp + 17], bp	; 3: -119 110 17
x12973:	add bp, 15	; 3: -125 -59 15
x12976:	jmp scanChar	; 3: -23 119 -10

scanPattern$15:	; post call

scanPattern$16:	; £temporary1344 = return_value

scanPattern$17:	; input = £temporary1344
x12979:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$18:	; goto 6
x12982:	jmp scanPattern$6	; 2: -21 -55

scanPattern$19:	; if string == 0 goto 53
x12984:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x12988:	je scanPattern$53	; 4: 15 -124 -113 0

scanPattern$20:	; if not != 0 goto 29
x12992:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x12996:	jne scanPattern$29	; 2: 117 42

scanPattern$21:	; call header integral zero 0 stack zero 0

scanPattern$22:	; parameter pattern, offset 6
x12998:	mov ax, [bp + 8]	; 3: -117 70 8
x13001:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$23:	; £temporary1349 = int_to_int input (Signed_Char -> Signed_Int)
x13004:	mov al, [bp + 14]	; 3: -118 70 14
x13007:	and ax, 255	; 3: 37 -1 0
x13010:	cmp al, 0	; 2: 60 0
x13012:	jge scanPattern$24	; 2: 125 4
x13014:	neg al	; 2: -10 -40
x13016:	neg ax	; 2: -9 -40

scanPattern$24:	; parameter £temporary1349, offset 8
x13018:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$25:	; call function noellipse-noellipse strchr
x13021:	mov word [bp + 15], scanPattern$26	; 5: -57 70 15 -21 50
x13026:	mov [bp + 17], bp	; 3: -119 110 17
x13029:	add bp, 15	; 3: -125 -59 15
x13032:	jmp strchr	; 3: -23 -72 -25

scanPattern$26:	; post call

scanPattern$27:	; £temporary1350 = return_value

scanPattern$28:	; if £temporary1350 != 0 goto 38
x13035:	cmp bx, 0	; 3: -125 -5 0
x13038:	jne scanPattern$38	; 2: 117 48

scanPattern$29:	; if not == 0 goto 49
x13040:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13044:	je scanPattern$49	; 2: 116 78

scanPattern$30:	; call header integral zero 0 stack zero 0

scanPattern$31:	; parameter pattern, offset 6
x13046:	mov ax, [bp + 8]	; 3: -117 70 8
x13049:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$32:	; £temporary1353 = int_to_int input (Signed_Char -> Signed_Int)
x13052:	mov al, [bp + 14]	; 3: -118 70 14
x13055:	and ax, 255	; 3: 37 -1 0
x13058:	cmp al, 0	; 2: 60 0
x13060:	jge scanPattern$33	; 2: 125 4
x13062:	neg al	; 2: -10 -40
x13064:	neg ax	; 2: -9 -40

scanPattern$33:	; parameter £temporary1353, offset 8
x13066:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$34:	; call function noellipse-noellipse strchr
x13069:	mov word [bp + 15], scanPattern$35	; 5: -57 70 15 27 51
x13074:	mov [bp + 17], bp	; 3: -119 110 17
x13077:	add bp, 15	; 3: -125 -59 15
x13080:	jmp strchr	; 3: -23 -120 -25

scanPattern$35:	; post call

scanPattern$36:	; £temporary1354 = return_value

scanPattern$37:	; if £temporary1354 != 0 goto 49
x13083:	cmp bx, 0	; 3: -125 -5 0
x13086:	jne scanPattern$49	; 2: 117 36

scanPattern$38:	; £temporary1360 = index
x13088:	mov ax, [bp + 12]	; 3: -117 70 12

scanPattern$39:	; ++index
x13091:	inc word [bp + 12]	; 3: -1 70 12

scanPattern$40:	; £temporary1362 = string + £temporary1360
x13094:	mov si, [bp + 6]	; 3: -117 118 6
x13097:	add si, ax	; 2: 1 -58

scanPattern$41:	; £temporary1361 -> £temporary1362 = *£temporary1362

scanPattern$42:	; £temporary1361 -> £temporary1362 = input
x13099:	mov al, [bp + 14]	; 3: -118 70 14
x13102:	mov [si], al	; 2: -120 4

scanPattern$43:	; call header integral zero 0 stack zero 0

scanPattern$44:	; call function noellipse-noellipse scanChar
x13104:	mov word [bp + 15], scanPattern$45	; 5: -57 70 15 62 51
x13109:	mov [bp + 17], bp	; 3: -119 110 17
x13112:	add bp, 15	; 3: -125 -59 15
x13115:	jmp scanChar	; 3: -23 -20 -11

scanPattern$45:	; post call

scanPattern$46:	; £temporary1363 = return_value

scanPattern$47:	; input = £temporary1363
x13118:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$48:	; goto 20
x13121:	jmp scanPattern$20	; 3: -23 124 -1

scanPattern$49:	; £temporary1365 = string + index
x13124:	mov si, [bp + 6]	; 3: -117 118 6
x13127:	add si, [bp + 12]	; 3: 3 118 12

scanPattern$50:	; £temporary1364 -> £temporary1365 = *£temporary1365

scanPattern$51:	; £temporary1364 -> £temporary1365 = 0
x13130:	mov byte [si], 0	; 3: -58 4 0

scanPattern$52:	; goto 77
x13133:	jmp scanPattern$77	; 2: -21 115

scanPattern$53:	; if not != 0 goto 62
x13135:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13139:	jne scanPattern$62	; 2: 117 42

scanPattern$54:	; call header integral zero 0 stack zero 0

scanPattern$55:	; parameter pattern, offset 6
x13141:	mov ax, [bp + 8]	; 3: -117 70 8
x13144:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$56:	; £temporary1368 = int_to_int input (Signed_Char -> Signed_Int)
x13147:	mov al, [bp + 14]	; 3: -118 70 14
x13150:	and ax, 255	; 3: 37 -1 0
x13153:	cmp al, 0	; 2: 60 0
x13155:	jge scanPattern$57	; 2: 125 4
x13157:	neg al	; 2: -10 -40
x13159:	neg ax	; 2: -9 -40

scanPattern$57:	; parameter £temporary1368, offset 8
x13161:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$58:	; call function noellipse-noellipse strchr
x13164:	mov word [bp + 15], scanPattern$59	; 5: -57 70 15 122 51
x13169:	mov [bp + 17], bp	; 3: -119 110 17
x13172:	add bp, 15	; 3: -125 -59 15
x13175:	jmp strchr	; 3: -23 41 -25

scanPattern$59:	; post call

scanPattern$60:	; £temporary1369 = return_value

scanPattern$61:	; if £temporary1369 != 0 goto 71
x13178:	cmp bx, 0	; 3: -125 -5 0
x13181:	jne scanPattern$71	; 2: 117 48

scanPattern$62:	; if not == 0 goto 77
x13183:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13187:	je scanPattern$77	; 2: 116 61

scanPattern$63:	; call header integral zero 0 stack zero 0

scanPattern$64:	; parameter pattern, offset 6
x13189:	mov ax, [bp + 8]	; 3: -117 70 8
x13192:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$65:	; £temporary1372 = int_to_int input (Signed_Char -> Signed_Int)
x13195:	mov al, [bp + 14]	; 3: -118 70 14
x13198:	and ax, 255	; 3: 37 -1 0
x13201:	cmp al, 0	; 2: 60 0
x13203:	jge scanPattern$66	; 2: 125 4
x13205:	neg al	; 2: -10 -40
x13207:	neg ax	; 2: -9 -40

scanPattern$66:	; parameter £temporary1372, offset 8
x13209:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$67:	; call function noellipse-noellipse strchr
x13212:	mov word [bp + 15], scanPattern$68	; 5: -57 70 15 -86 51
x13217:	mov [bp + 17], bp	; 3: -119 110 17
x13220:	add bp, 15	; 3: -125 -59 15
x13223:	jmp strchr	; 3: -23 -7 -26

scanPattern$68:	; post call

scanPattern$69:	; £temporary1373 = return_value

scanPattern$70:	; if £temporary1373 != 0 goto 77
x13226:	cmp bx, 0	; 3: -125 -5 0
x13229:	jne scanPattern$77	; 2: 117 19

scanPattern$71:	; call header integral zero 0 stack zero 0

scanPattern$72:	; call function noellipse-noellipse scanChar
x13231:	mov word [bp + 15], scanPattern$73	; 5: -57 70 15 -67 51
x13236:	mov [bp + 17], bp	; 3: -119 110 17
x13239:	add bp, 15	; 3: -125 -59 15
x13242:	jmp scanChar	; 3: -23 109 -11

scanPattern$73:	; post call

scanPattern$74:	; £temporary1379 = return_value

scanPattern$75:	; input = £temporary1379
x13245:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$76:	; goto 53
x13248:	jmp scanPattern$53	; 2: -21 -115

scanPattern$77:	; return
x13250:	mov ax, [bp]	; 3: -117 70 0
x13253:	mov di, [bp + 4]	; 3: -117 126 4
x13256:	mov bp, [bp + 2]	; 3: -117 110 2
x13259:	jmp ax	; 2: -1 -32

scanPattern$78:	; function end scanPattern

$Path:
x13261:	db "C:\D\Main.com", 0	; 14: 67 58 92 68 92 77 97 105 110 46 99 111 109 0

$StackTop:
x13275:
