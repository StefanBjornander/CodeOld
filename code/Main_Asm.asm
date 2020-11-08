	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 33 54
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 33 54 0 0

main:	; call header integral zero 0 stack zero 0

main$1:	; call function noellipse-noellipse strtol_test
x283:	mov word [bp + 6], main$2	; 5: -57 70 6 41 1
x288:	mov [bp + 8], bp	; 3: -119 110 8
x291:	add bp, 6	; 3: -125 -59 6
x294:	nop	; 1: -112
x295:	jmp strtol_test	; 2: -21 23

main$2:	; post call

main$3:	; return
x297:	cmp word [bp], 0	; 4: -125 126 0 0
x301:	je return_label$0	; 2: 116 11
x303:	mov ax, [bp]	; 3: -117 70 0
x306:	mov di, [bp + 4]	; 3: -117 126 4
x309:	mov bp, [bp + 2]	; 3: -117 110 2
x312:	jmp ax	; 2: -1 -32

return_label$0:
x314:	mov al, 0	; 2: -80 0
x316:	mov ah, 76	; 2: -76 76
x318:	int 33	; 2: -51 33

main$4:	; function end main

strtol_test:	; text[0] = 43
x320:	mov byte [bp + 6], 43	; 4: -58 70 6 43

strtol_test$1:	; text[1] = 49
x324:	mov byte [bp + 7], 49	; 4: -58 70 7 49

strtol_test$2:	; text[2] = 50
x328:	mov byte [bp + 8], 50	; 4: -58 70 8 50

strtol_test$3:	; text[3] = 51
x332:	mov byte [bp + 9], 51	; 4: -58 70 9 51

strtol_test$4:	; text[4] = 97
x336:	mov byte [bp + 10], 97	; 4: -58 70 10 97

strtol_test$5:	; text[5] = 98
x340:	mov byte [bp + 11], 98	; 4: -58 70 11 98

strtol_test$6:	; text[6] = 99
x344:	mov byte [bp + 12], 99	; 4: -58 70 12 99

strtol_test$7:	; text[7] = 0
x348:	mov byte [bp + 13], 0	; 4: -58 70 13 0

strtol_test$8:	; call header integral zero 0 stack zero 0

strtol_test$9:	; parameter text, offset 6
x352:	mov [bp + 22], bp	; 3: -119 110 22
x355:	add word [bp + 22], 6	; 4: -125 70 22 6

strtol_test$10:	; £temporary2494 = &pointer
x359:	mov si, bp	; 2: -119 -18
x361:	add si, 14	; 3: -125 -58 14

strtol_test$11:	; parameter £temporary2494, offset 8
x364:	mov [bp + 24], si	; 3: -119 118 24

strtol_test$12:	; parameter 9, offset 10
x367:	mov word [bp + 26], 9	; 5: -57 70 26 9 0

strtol_test$13:	; call function noellipse-noellipse strtol
x372:	mov word [bp + 16], strtol_test$14	; 5: -57 70 16 -126 1
x377:	mov [bp + 18], bp	; 3: -119 110 18
x380:	add bp, 16	; 3: -125 -59 16
x383:	jmp strtol	; 3: -23 -115 2

strtol_test$14:	; post call

strtol_test$15:	; £temporary2495 = return_value

strtol_test$16:	; value = £temporary2495
x386:	mov [bp + 16], ebx	; 4: 102 -119 94 16

strtol_test$17:	; call header integral zero 0 stack zero 0

strtol_test$18:	; parameter string_3C25s3E203C25li3E203C25s3E0A0A#, offset 6
x390:	mov word [bp + 26], string_3C25s3E203C25li3E203C25s3E0A0A#	; 5: -57 70 26 -3 3

strtol_test$19:	; parameter text, offset 8
x395:	mov [bp + 28], bp	; 3: -119 110 28
x398:	add word [bp + 28], 6	; 4: -125 70 28 6

strtol_test$20:	; parameter value, offset 10
x402:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x406:	mov [bp + 30], eax	; 4: 102 -119 70 30

strtol_test$21:	; parameter pointer, offset 14
x410:	mov ax, [bp + 14]	; 3: -117 70 14
x413:	mov [bp + 34], ax	; 3: -119 70 34

strtol_test$22:	; call function noellipse-ellipse printf, extra 0
x416:	mov word [bp + 20], strtol_test$23	; 5: -57 70 20 -77 1
x421:	mov [bp + 22], bp	; 3: -119 110 22
x424:	add bp, 20	; 3: -125 -59 20
x427:	mov di, bp	; 2: -119 -17
x429:	add di, 8	; 3: -125 -57 8
x432:	jmp printf	; 3: -23 -5 28

strtol_test$23:	; post call

strtol_test$24:	; text[0] = 43
x435:	mov byte [bp + 6], 43	; 4: -58 70 6 43

strtol_test$25:	; text[1] = 49
x439:	mov byte [bp + 7], 49	; 4: -58 70 7 49

strtol_test$26:	; text[2] = 50
x443:	mov byte [bp + 8], 50	; 4: -58 70 8 50

strtol_test$27:	; text[3] = 51
x447:	mov byte [bp + 9], 51	; 4: -58 70 9 51

strtol_test$28:	; text[4] = 97
x451:	mov byte [bp + 10], 97	; 4: -58 70 10 97

strtol_test$29:	; text[5] = 98
x455:	mov byte [bp + 11], 98	; 4: -58 70 11 98

strtol_test$30:	; text[6] = 99
x459:	mov byte [bp + 12], 99	; 4: -58 70 12 99

strtol_test$31:	; text[7] = 0
x463:	mov byte [bp + 13], 0	; 4: -58 70 13 0

strtol_test$32:	; call header integral zero 0 stack zero 0

strtol_test$33:	; parameter text, offset 6
x467:	mov [bp + 22], bp	; 3: -119 110 22
x470:	add word [bp + 22], 6	; 4: -125 70 22 6

strtol_test$34:	; £temporary2505 = &pointer
x474:	mov si, bp	; 2: -119 -18
x476:	add si, 14	; 3: -125 -58 14

strtol_test$35:	; parameter £temporary2505, offset 8
x479:	mov [bp + 24], si	; 3: -119 118 24

strtol_test$36:	; parameter 10, offset 10
x482:	mov word [bp + 26], 10	; 5: -57 70 26 10 0

strtol_test$37:	; call function noellipse-noellipse strtol
x487:	mov word [bp + 16], strtol_test$38	; 5: -57 70 16 -11 1
x492:	mov [bp + 18], bp	; 3: -119 110 18
x495:	add bp, 16	; 3: -125 -59 16
x498:	jmp strtol	; 3: -23 26 2

strtol_test$38:	; post call

strtol_test$39:	; £temporary2506 = return_value

strtol_test$40:	; value = £temporary2506
x501:	mov [bp + 16], ebx	; 4: 102 -119 94 16

strtol_test$41:	; call header integral zero 0 stack zero 0

strtol_test$42:	; parameter string_3C25s3E203C25li3E203C25s3E0A0A#, offset 6
x505:	mov word [bp + 26], string_3C25s3E203C25li3E203C25s3E0A0A#	; 5: -57 70 26 -3 3

strtol_test$43:	; parameter text, offset 8
x510:	mov [bp + 28], bp	; 3: -119 110 28
x513:	add word [bp + 28], 6	; 4: -125 70 28 6

strtol_test$44:	; parameter value, offset 10
x517:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x521:	mov [bp + 30], eax	; 4: 102 -119 70 30

strtol_test$45:	; parameter pointer, offset 14
x525:	mov ax, [bp + 14]	; 3: -117 70 14
x528:	mov [bp + 34], ax	; 3: -119 70 34

strtol_test$46:	; call function noellipse-ellipse printf, extra 0
x531:	mov word [bp + 20], strtol_test$47	; 5: -57 70 20 38 2
x536:	mov [bp + 22], bp	; 3: -119 110 22
x539:	add bp, 20	; 3: -125 -59 20
x542:	mov di, bp	; 2: -119 -17
x544:	add di, 8	; 3: -125 -57 8
x547:	jmp printf	; 3: -23 -120 28

strtol_test$47:	; post call

strtol_test$48:	; text[0] = 43
x550:	mov byte [bp + 6], 43	; 4: -58 70 6 43

strtol_test$49:	; text[1] = 49
x554:	mov byte [bp + 7], 49	; 4: -58 70 7 49

strtol_test$50:	; text[2] = 50
x558:	mov byte [bp + 8], 50	; 4: -58 70 8 50

strtol_test$51:	; text[3] = 51
x562:	mov byte [bp + 9], 51	; 4: -58 70 9 51

strtol_test$52:	; text[4] = 97
x566:	mov byte [bp + 10], 97	; 4: -58 70 10 97

strtol_test$53:	; text[5] = 98
x570:	mov byte [bp + 11], 98	; 4: -58 70 11 98

strtol_test$54:	; text[6] = 99
x574:	mov byte [bp + 12], 99	; 4: -58 70 12 99

strtol_test$55:	; text[7] = 0
x578:	mov byte [bp + 13], 0	; 4: -58 70 13 0

strtol_test$56:	; call header integral zero 0 stack zero 0

strtol_test$57:	; parameter text, offset 6
x582:	mov [bp + 22], bp	; 3: -119 110 22
x585:	add word [bp + 22], 6	; 4: -125 70 22 6

strtol_test$58:	; £temporary2516 = &pointer
x589:	mov si, bp	; 2: -119 -18
x591:	add si, 14	; 3: -125 -58 14

strtol_test$59:	; parameter £temporary2516, offset 8
x594:	mov [bp + 24], si	; 3: -119 118 24

strtol_test$60:	; parameter 11, offset 10
x597:	mov word [bp + 26], 11	; 5: -57 70 26 11 0

strtol_test$61:	; call function noellipse-noellipse strtol
x602:	mov word [bp + 16], strtol_test$62	; 5: -57 70 16 104 2
x607:	mov [bp + 18], bp	; 3: -119 110 18
x610:	add bp, 16	; 3: -125 -59 16
x613:	jmp strtol	; 3: -23 -89 1

strtol_test$62:	; post call

strtol_test$63:	; £temporary2517 = return_value

strtol_test$64:	; value = £temporary2517
x616:	mov [bp + 16], ebx	; 4: 102 -119 94 16

strtol_test$65:	; call header integral zero 0 stack zero 0

strtol_test$66:	; parameter string_3C25s3E203C25li3E203C25s3E0A0A#, offset 6
x620:	mov word [bp + 26], string_3C25s3E203C25li3E203C25s3E0A0A#	; 5: -57 70 26 -3 3

strtol_test$67:	; parameter text, offset 8
x625:	mov [bp + 28], bp	; 3: -119 110 28
x628:	add word [bp + 28], 6	; 4: -125 70 28 6

strtol_test$68:	; parameter value, offset 10
x632:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x636:	mov [bp + 30], eax	; 4: 102 -119 70 30

strtol_test$69:	; parameter pointer, offset 14
x640:	mov ax, [bp + 14]	; 3: -117 70 14
x643:	mov [bp + 34], ax	; 3: -119 70 34

strtol_test$70:	; call function noellipse-ellipse printf, extra 0
x646:	mov word [bp + 20], strtol_test$71	; 5: -57 70 20 -103 2
x651:	mov [bp + 22], bp	; 3: -119 110 22
x654:	add bp, 20	; 3: -125 -59 20
x657:	mov di, bp	; 2: -119 -17
x659:	add di, 8	; 3: -125 -57 8
x662:	jmp printf	; 3: -23 21 28

strtol_test$71:	; post call

strtol_test$72:	; text[0] = 45
x665:	mov byte [bp + 6], 45	; 4: -58 70 6 45

strtol_test$73:	; text[1] = 49
x669:	mov byte [bp + 7], 49	; 4: -58 70 7 49

strtol_test$74:	; text[2] = 50
x673:	mov byte [bp + 8], 50	; 4: -58 70 8 50

strtol_test$75:	; text[3] = 51
x677:	mov byte [bp + 9], 51	; 4: -58 70 9 51

strtol_test$76:	; text[4] = 97
x681:	mov byte [bp + 10], 97	; 4: -58 70 10 97

strtol_test$77:	; text[5] = 98
x685:	mov byte [bp + 11], 98	; 4: -58 70 11 98

strtol_test$78:	; text[6] = 99
x689:	mov byte [bp + 12], 99	; 4: -58 70 12 99

strtol_test$79:	; text[7] = 0
x693:	mov byte [bp + 13], 0	; 4: -58 70 13 0

strtol_test$80:	; call header integral zero 0 stack zero 0

strtol_test$81:	; parameter text, offset 6
x697:	mov [bp + 22], bp	; 3: -119 110 22
x700:	add word [bp + 22], 6	; 4: -125 70 22 6

strtol_test$82:	; £temporary2527 = &pointer
x704:	mov si, bp	; 2: -119 -18
x706:	add si, 14	; 3: -125 -58 14

strtol_test$83:	; parameter £temporary2527, offset 8
x709:	mov [bp + 24], si	; 3: -119 118 24

strtol_test$84:	; parameter 9, offset 10
x712:	mov word [bp + 26], 9	; 5: -57 70 26 9 0

strtol_test$85:	; call function noellipse-noellipse strtol
x717:	mov word [bp + 16], strtol_test$86	; 5: -57 70 16 -37 2
x722:	mov [bp + 18], bp	; 3: -119 110 18
x725:	add bp, 16	; 3: -125 -59 16
x728:	jmp strtol	; 3: -23 52 1

strtol_test$86:	; post call

strtol_test$87:	; £temporary2528 = return_value

strtol_test$88:	; value = £temporary2528
x731:	mov [bp + 16], ebx	; 4: 102 -119 94 16

strtol_test$89:	; call header integral zero 0 stack zero 0

strtol_test$90:	; parameter string_3C25s3E203C25li3E203C25s3E0A0A#, offset 6
x735:	mov word [bp + 26], string_3C25s3E203C25li3E203C25s3E0A0A#	; 5: -57 70 26 -3 3

strtol_test$91:	; parameter text, offset 8
x740:	mov [bp + 28], bp	; 3: -119 110 28
x743:	add word [bp + 28], 6	; 4: -125 70 28 6

strtol_test$92:	; parameter value, offset 10
x747:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x751:	mov [bp + 30], eax	; 4: 102 -119 70 30

strtol_test$93:	; parameter pointer, offset 14
x755:	mov ax, [bp + 14]	; 3: -117 70 14
x758:	mov [bp + 34], ax	; 3: -119 70 34

strtol_test$94:	; call function noellipse-ellipse printf, extra 0
x761:	mov word [bp + 20], strtol_test$95	; 5: -57 70 20 12 3
x766:	mov [bp + 22], bp	; 3: -119 110 22
x769:	add bp, 20	; 3: -125 -59 20
x772:	mov di, bp	; 2: -119 -17
x774:	add di, 8	; 3: -125 -57 8
x777:	jmp printf	; 3: -23 -94 27

strtol_test$95:	; post call

strtol_test$96:	; text[0] = 45
x780:	mov byte [bp + 6], 45	; 4: -58 70 6 45

strtol_test$97:	; text[1] = 49
x784:	mov byte [bp + 7], 49	; 4: -58 70 7 49

strtol_test$98:	; text[2] = 50
x788:	mov byte [bp + 8], 50	; 4: -58 70 8 50

strtol_test$99:	; text[3] = 51
x792:	mov byte [bp + 9], 51	; 4: -58 70 9 51

strtol_test$100:	; text[4] = 97
x796:	mov byte [bp + 10], 97	; 4: -58 70 10 97

strtol_test$101:	; text[5] = 98
x800:	mov byte [bp + 11], 98	; 4: -58 70 11 98

strtol_test$102:	; text[6] = 99
x804:	mov byte [bp + 12], 99	; 4: -58 70 12 99

strtol_test$103:	; text[7] = 0
x808:	mov byte [bp + 13], 0	; 4: -58 70 13 0

strtol_test$104:	; call header integral zero 0 stack zero 0

strtol_test$105:	; parameter text, offset 6
x812:	mov [bp + 22], bp	; 3: -119 110 22
x815:	add word [bp + 22], 6	; 4: -125 70 22 6

strtol_test$106:	; £temporary2538 = &pointer
x819:	mov si, bp	; 2: -119 -18
x821:	add si, 14	; 3: -125 -58 14

strtol_test$107:	; parameter £temporary2538, offset 8
x824:	mov [bp + 24], si	; 3: -119 118 24

strtol_test$108:	; parameter 10, offset 10
x827:	mov word [bp + 26], 10	; 5: -57 70 26 10 0

strtol_test$109:	; call function noellipse-noellipse strtol
x832:	mov word [bp + 16], strtol_test$110	; 5: -57 70 16 78 3
x837:	mov [bp + 18], bp	; 3: -119 110 18
x840:	add bp, 16	; 3: -125 -59 16
x843:	jmp strtol	; 3: -23 -63 0

strtol_test$110:	; post call

strtol_test$111:	; £temporary2539 = return_value

strtol_test$112:	; value = £temporary2539
x846:	mov [bp + 16], ebx	; 4: 102 -119 94 16

strtol_test$113:	; call header integral zero 0 stack zero 0

strtol_test$114:	; parameter string_3C25s3E203C25li3E203C25s3E0A0A#, offset 6
x850:	mov word [bp + 26], string_3C25s3E203C25li3E203C25s3E0A0A#	; 5: -57 70 26 -3 3

strtol_test$115:	; parameter text, offset 8
x855:	mov [bp + 28], bp	; 3: -119 110 28
x858:	add word [bp + 28], 6	; 4: -125 70 28 6

strtol_test$116:	; parameter value, offset 10
x862:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x866:	mov [bp + 30], eax	; 4: 102 -119 70 30

strtol_test$117:	; parameter pointer, offset 14
x870:	mov ax, [bp + 14]	; 3: -117 70 14
x873:	mov [bp + 34], ax	; 3: -119 70 34

strtol_test$118:	; call function noellipse-ellipse printf, extra 0
x876:	mov word [bp + 20], strtol_test$119	; 5: -57 70 20 127 3
x881:	mov [bp + 22], bp	; 3: -119 110 22
x884:	add bp, 20	; 3: -125 -59 20
x887:	mov di, bp	; 2: -119 -17
x889:	add di, 8	; 3: -125 -57 8
x892:	jmp printf	; 3: -23 47 27

strtol_test$119:	; post call

strtol_test$120:	; text[0] = 45
x895:	mov byte [bp + 6], 45	; 4: -58 70 6 45

strtol_test$121:	; text[1] = 49
x899:	mov byte [bp + 7], 49	; 4: -58 70 7 49

strtol_test$122:	; text[2] = 50
x903:	mov byte [bp + 8], 50	; 4: -58 70 8 50

strtol_test$123:	; text[3] = 51
x907:	mov byte [bp + 9], 51	; 4: -58 70 9 51

strtol_test$124:	; text[4] = 97
x911:	mov byte [bp + 10], 97	; 4: -58 70 10 97

strtol_test$125:	; text[5] = 98
x915:	mov byte [bp + 11], 98	; 4: -58 70 11 98

strtol_test$126:	; text[6] = 99
x919:	mov byte [bp + 12], 99	; 4: -58 70 12 99

strtol_test$127:	; text[7] = 0
x923:	mov byte [bp + 13], 0	; 4: -58 70 13 0

strtol_test$128:	; call header integral zero 0 stack zero 0

strtol_test$129:	; parameter text, offset 6
x927:	mov [bp + 22], bp	; 3: -119 110 22
x930:	add word [bp + 22], 6	; 4: -125 70 22 6

strtol_test$130:	; £temporary2549 = &pointer
x934:	mov si, bp	; 2: -119 -18
x936:	add si, 14	; 3: -125 -58 14

strtol_test$131:	; parameter £temporary2549, offset 8
x939:	mov [bp + 24], si	; 3: -119 118 24

strtol_test$132:	; parameter 11, offset 10
x942:	mov word [bp + 26], 11	; 5: -57 70 26 11 0

strtol_test$133:	; call function noellipse-noellipse strtol
x947:	mov word [bp + 16], strtol_test$134	; 5: -57 70 16 -63 3
x952:	mov [bp + 18], bp	; 3: -119 110 18
x955:	add bp, 16	; 3: -125 -59 16
x958:	nop	; 1: -112
x959:	jmp strtol	; 2: -21 78

strtol_test$134:	; post call

strtol_test$135:	; £temporary2550 = return_value

strtol_test$136:	; value = £temporary2550
x961:	mov [bp + 16], ebx	; 4: 102 -119 94 16

strtol_test$137:	; call header integral zero 0 stack zero 0

strtol_test$138:	; parameter string_3C25s3E203C25li3E203C25s3E0A0A#, offset 6
x965:	mov word [bp + 26], string_3C25s3E203C25li3E203C25s3E0A0A#	; 5: -57 70 26 -3 3

strtol_test$139:	; parameter text, offset 8
x970:	mov [bp + 28], bp	; 3: -119 110 28
x973:	add word [bp + 28], 6	; 4: -125 70 28 6

strtol_test$140:	; parameter value, offset 10
x977:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x981:	mov [bp + 30], eax	; 4: 102 -119 70 30

strtol_test$141:	; parameter pointer, offset 14
x985:	mov ax, [bp + 14]	; 3: -117 70 14
x988:	mov [bp + 34], ax	; 3: -119 70 34

strtol_test$142:	; call function noellipse-ellipse printf, extra 0
x991:	mov word [bp + 20], strtol_test$143	; 5: -57 70 20 -14 3
x996:	mov [bp + 22], bp	; 3: -119 110 22
x999:	add bp, 20	; 3: -125 -59 20
x1002:	mov di, bp	; 2: -119 -17
x1004:	add di, 8	; 3: -125 -57 8
x1007:	jmp printf	; 3: -23 -68 26

strtol_test$143:	; post call

strtol_test$144:	; return
x1010:	mov ax, [bp]	; 3: -117 70 0
x1013:	mov di, [bp + 4]	; 3: -117 126 4
x1016:	mov bp, [bp + 2]	; 3: -117 110 2
x1019:	jmp ax	; 2: -1 -32

strtol_test$145:	; function end strtol_test

string_3C25s3E203C25li3E203C25s3E0A0A#:
x1021:	db "<%s> <%li> <%s>", 10, 10, 0	; 18: 60 37 115 62 32 60 37 108 105 62 32 60 37 115 62 10 10 0

strtol:	; if base != 0 goto 17
x1039:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x1043:	jne strtol$17	; 2: 117 91

strtol$1:	; chars = 0
x1045:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strtol$2:	; value = 0
x1050:	mov dword [bp + 14], 0	; 8: 102 -57 70 14 0 0 0 0

strtol$3:	; call header integral zero 0 stack zero 0

strtol$4:	; parameter s, offset 6
x1058:	mov ax, [bp + 6]	; 3: -117 70 6
x1061:	mov [bp + 24], ax	; 3: -119 70 24

strtol$5:	; parameter string_25li25n#, offset 8
x1064:	mov word [bp + 26], string_25li25n#	; 5: -57 70 26 110 5

strtol$6:	; £temporary2439 = &value
x1069:	mov si, bp	; 2: -119 -18
x1071:	add si, 14	; 3: -125 -58 14

strtol$7:	; parameter £temporary2439, offset 10
x1074:	mov [bp + 28], si	; 3: -119 118 28

strtol$8:	; £temporary2440 = &chars
x1077:	mov si, bp	; 2: -119 -18
x1079:	add si, 12	; 3: -125 -58 12

strtol$9:	; parameter £temporary2440, offset 12
x1082:	mov [bp + 30], si	; 3: -119 118 30

strtol$10:	; call function noellipse-ellipse sscanf, extra 0
x1085:	mov word [bp + 18], strtol$11	; 5: -57 70 18 80 4
x1090:	mov [bp + 20], bp	; 3: -119 110 20
x1093:	add bp, 18	; 3: -125 -59 18
x1096:	mov di, bp	; 2: -119 -17
x1098:	add di, 4	; 3: -125 -57 4
x1101:	jmp sscanf	; 3: -23 36 1

strtol$11:	; post call

strtol$12:	; if endp == 0 goto 15
x1104:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x1108:	je strtol$15	; 2: 116 11

strtol$13:	; £temporary2443 -> endp = *endp
x1110:	mov si, [bp + 8]	; 3: -117 118 8

strtol$14:	; £temporary2443 -> endp = s + chars
x1113:	mov ax, [bp + 6]	; 3: -117 70 6
x1116:	add ax, [bp + 12]	; 3: 3 70 12
x1119:	mov [si], ax	; 2: -119 4

strtol$15:	; return_value = value
x1121:	mov ebx, [bp + 14]	; 4: 102 -117 94 14

strtol$16:	; return
x1125:	mov ax, [bp]	; 3: -117 70 0
x1128:	mov di, [bp + 4]	; 3: -117 126 4
x1131:	mov bp, [bp + 2]	; 3: -117 110 2
x1134:	jmp ax	; 2: -1 -32

strtol$17:	; if base <= 0 goto 65
x1136:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x1140:	jle strtol$65	; 4: 15 -114 -27 0

strtol$18:	; if base > 36 goto 65
x1144:	cmp word [bp + 10], 36	; 4: -125 126 10 36
x1148:	jg strtol$65	; 4: 15 -113 -35 0

strtol$19:	; minus = 0
x1152:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strtol$20:	; £temporary2448 -> s = *s
x1157:	mov si, [bp + 6]	; 3: -117 118 6

strtol$21:	; if £temporary2448 -> s != 43 goto 24
x1160:	cmp byte [si], 43	; 3: -128 60 43
x1163:	jne strtol$24	; 2: 117 5

strtol$22:	; ++s
x1165:	inc word [bp + 6]	; 3: -1 70 6

strtol$23:	; goto 28
x1168:	jmp strtol$28	; 2: -21 16

strtol$24:	; £temporary2451 -> s = *s
x1170:	mov si, [bp + 6]	; 3: -117 118 6

strtol$25:	; if £temporary2451 -> s != 45 goto 28
x1173:	cmp byte [si], 45	; 3: -128 60 45
x1176:	jne strtol$28	; 2: 117 8

strtol$26:	; minus = 1
x1178:	mov word [bp + 12], 1	; 5: -57 70 12 1 0

strtol$27:	; ++s
x1183:	inc word [bp + 6]	; 3: -1 70 6

strtol$28:	; value = 0
x1186:	mov dword [bp + 14], 0	; 8: 102 -57 70 14 0 0 0 0

strtol$29:	; index = 0
x1194:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

strtol$30:	; £temporary2456 = s + index
x1199:	mov si, [bp + 6]	; 3: -117 118 6
x1202:	add si, [bp + 18]	; 3: 3 118 18

strtol$31:	; £temporary2455 -> £temporary2456 = *£temporary2456

strtol$32:	; c = £temporary2455 -> £temporary2456
x1205:	mov al, [si]	; 2: -118 4
x1207:	mov [bp + 20], al	; 3: -120 70 20

strtol$33:	; call header integral zero 0 stack zero 0

strtol$34:	; parameter c, offset 6
x1210:	mov al, [bp + 20]	; 3: -118 70 20
x1213:	mov [bp + 27], al	; 3: -120 70 27

strtol$35:	; parameter base, offset 7
x1216:	mov ax, [bp + 10]	; 3: -117 70 10
x1219:	mov [bp + 28], ax	; 3: -119 70 28

strtol$36:	; call function noellipse-noellipse isbasedigit
x1222:	mov word [bp + 21], strtol$37	; 5: -57 70 21 -44 4
x1227:	mov [bp + 23], bp	; 3: -119 110 23
x1230:	add bp, 21	; 3: -125 -59 21
x1233:	jmp @24$isbasedigit	; 3: -23 87 47

strtol$37:	; post call

strtol$38:	; £temporary2457 = return_value

strtol$39:	; if £temporary2457 == 0 goto 52
x1236:	cmp bx, 0	; 3: -125 -5 0
x1239:	je strtol$52	; 2: 116 85

strtol$40:	; £temporary2460 = int_to_int base (Signed_Int -> Signed_Long_Int)
x1241:	mov bx, [bp + 10]	; 3: -117 94 10
x1244:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x1251:	cmp bx, 0	; 3: -125 -5 0
x1254:	jge strtol$41	; 2: 125 5
x1256:	neg bx	; 2: -9 -37
x1258:	neg ebx	; 3: 102 -9 -37

strtol$41:	; value = value * £temporary2460
x1261:	mov eax, [bp + 14]	; 4: 102 -117 70 14
x1265:	xor edx, edx	; 3: 102 49 -46
x1268:	imul ebx	; 3: 102 -9 -21
x1271:	mov [bp + 14], eax	; 4: 102 -119 70 14

strtol$42:	; call header integral zero 0 stack zero 0

strtol$43:	; parameter c, offset 6
x1275:	mov al, [bp + 20]	; 3: -118 70 20
x1278:	mov [bp + 27], al	; 3: -120 70 27

strtol$44:	; call function noellipse-noellipse tobasevalue
x1281:	mov word [bp + 21], strtol$45	; 5: -57 70 21 15 5
x1286:	mov [bp + 23], bp	; 3: -119 110 23
x1289:	add bp, 21	; 3: -125 -59 21
x1292:	jmp @25$tobasevalue	; 3: -23 56 48

strtol$45:	; post call

strtol$46:	; £temporary2462 = return_value

strtol$47:	; digit = £temporary2462
x1295:	mov [bp + 21], bx	; 3: -119 94 21

strtol$48:	; £temporary2463 = int_to_int digit (Signed_Int -> Signed_Long_Int)
x1298:	mov ax, [bp + 21]	; 3: -117 70 21
x1301:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x1307:	cmp ax, 0	; 3: -125 -8 0
x1310:	jge strtol$49	; 2: 125 5
x1312:	neg ax	; 2: -9 -40
x1314:	neg eax	; 3: 102 -9 -40

strtol$49:	; value = value + £temporary2463
x1317:	add [bp + 14], eax	; 4: 102 1 70 14

strtol$50:	; ++index
x1321:	inc word [bp + 18]	; 3: -1 70 18

strtol$51:	; goto 30
x1324:	jmp strtol$30	; 2: -21 -127

strtol$52:	; if endp == 0 goto 58
x1326:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x1330:	je strtol$58	; 2: 116 11

strtol$53:	; £temporary2467 -> endp = *endp
x1332:	mov si, [bp + 8]	; 3: -117 118 8

strtol$54:	; £temporary2469 = s + index
x1335:	mov di, [bp + 6]	; 3: -117 126 6
x1338:	add di, [bp + 18]	; 3: 3 126 18

strtol$55:	; £temporary2468 -> £temporary2469 = *£temporary2469

strtol$56:	; £temporary2470 = &£temporary2468 -> £temporary2469

strtol$57:	; £temporary2467 -> endp = £temporary2470
x1341:	mov [si], di	; 2: -119 60

strtol$58:	; if minus == 0 goto 62
x1343:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x1347:	je strtol$62	; 2: 116 9

strtol$59:	; £temporary2471 = -value
x1349:	mov ebx, [bp + 14]	; 4: 102 -117 94 14
x1353:	neg ebx	; 3: 102 -9 -37

strtol$60:	; £temporary2476 = £temporary2471

strtol$61:	; goto 63
x1356:	jmp strtol$63	; 2: -21 4

strtol$62:	; £temporary2476 = value
x1358:	mov ebx, [bp + 14]	; 4: 102 -117 94 14

strtol$63:	; return_value = £temporary2476

strtol$64:	; return
x1362:	mov ax, [bp]	; 3: -117 70 0
x1365:	mov di, [bp + 4]	; 3: -117 126 4
x1368:	mov bp, [bp + 2]	; 3: -117 110 2
x1371:	jmp ax	; 2: -1 -32

strtol$65:	; return_value = 0
x1373:	mov ebx, 0	; 6: 102 -69 0 0 0 0

strtol$66:	; return
x1379:	mov ax, [bp]	; 3: -117 70 0
x1382:	mov di, [bp + 4]	; 3: -117 126 4
x1385:	mov bp, [bp + 2]	; 3: -117 110 2
x1388:	jmp ax	; 2: -1 -32

strtol$67:	; function end strtol

string_25li25n#:
x1390:	db "%li%n", 0	; 6: 37 108 105 37 110 0

sscanf:	; £temporary1723 = &format
x1396:	mov si, bp	; 2: -119 -18
x1398:	add si, 8	; 3: -125 -58 8

sscanf$1:	; £temporary1724 = int_to_int £temporary1723 (Pointer -> Pointer)

sscanf$2:	; arg_list = £temporary1724 + 2
x1401:	add si, 2	; 3: -125 -58 2
x1404:	mov [di + 10], si	; 3: -119 117 10

sscanf$3:	; call header integral zero 0 stack zero 0

sscanf$4:	; parameter inString, offset 6
x1407:	mov ax, [bp + 6]	; 3: -117 70 6
x1410:	mov [di + 18], ax	; 3: -119 69 18

sscanf$5:	; parameter format, offset 8
x1413:	mov ax, [bp + 8]	; 3: -117 70 8
x1416:	mov [di + 20], ax	; 3: -119 69 20

sscanf$6:	; parameter arg_list, offset 10
x1419:	mov ax, [di + 10]	; 3: -117 69 10
x1422:	mov [di + 22], ax	; 3: -119 69 22

sscanf$7:	; call function ellipse-noellipse vsscanf
x1425:	mov word [di + 12], sscanf$8	; 5: -57 69 12 -92 5
x1430:	mov [di + 14], bp	; 3: -119 109 14
x1433:	mov [di + 16], di	; 3: -119 125 16
x1436:	add di, 12	; 3: -125 -57 12
x1439:	mov bp, di	; 2: -119 -3
x1441:	nop	; 1: -112
x1442:	jmp vsscanf	; 2: -21 11

sscanf$8:	; post call

sscanf$9:	; £temporary1726 = return_value

sscanf$10:	; return_value = £temporary1726

sscanf$11:	; return
x1444:	mov ax, [bp]	; 3: -117 70 0
x1447:	mov di, [bp + 4]	; 3: -117 126 4
x1450:	mov bp, [bp + 2]	; 3: -117 110 2
x1453:	jmp ax	; 2: -1 -32

sscanf$12:	; function end sscanf

vsscanf:	; g_inStatus = 1
x1455:	mov word [g_inStatus], 1	; 6: -57 6 -32 5 1 0

vsscanf$1:	; £temporary1731 = int_to_int inString (Pointer -> Pointer)
x1461:	mov ax, [bp + 6]	; 3: -117 70 6

vsscanf$2:	; g_inDevice = £temporary1731
x1464:	mov [g_inDevice], ax	; 3: -93 -30 5

vsscanf$3:	; call header integral zero 0 stack zero 0

vsscanf$4:	; parameter format, offset 6
x1467:	mov ax, [bp + 8]	; 3: -117 70 8
x1470:	mov [bp + 18], ax	; 3: -119 70 18

vsscanf$5:	; parameter arg_list, offset 8
x1473:	mov ax, [bp + 10]	; 3: -117 70 10
x1476:	mov [bp + 20], ax	; 3: -119 70 20

vsscanf$6:	; call function noellipse-noellipse scanFormat
x1479:	mov word [bp + 12], vsscanf$7	; 5: -57 70 12 -43 5
x1484:	mov [bp + 14], bp	; 3: -119 110 14
x1487:	add bp, 12	; 3: -125 -59 12
x1490:	nop	; 1: -112
x1491:	jmp scanFormat	; 2: -21 15

vsscanf$7:	; post call

vsscanf$8:	; £temporary1732 = return_value

vsscanf$9:	; return_value = £temporary1732

vsscanf$10:	; return
x1493:	mov ax, [bp]	; 3: -117 70 0
x1496:	mov di, [bp + 4]	; 3: -117 126 4
x1499:	mov bp, [bp + 2]	; 3: -117 110 2
x1502:	jmp ax	; 2: -1 -32

vsscanf$11:	; function end vsscanf

g_inStatus:
x1504:	db 0, 0	; 2: 0 0

g_inDevice:
x1506:	db 0, 0	; 2: 0 0

scanFormat:	; percent = 0
x1508:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$1:	; shortInt = 0
x1513:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$2:	; longIntOrDouble = 0
x1518:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$3:	; longDouble = 0
x1523:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$4:	; star = 0
x1528:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$5:	; g_inCount = 0
x1533:	mov word [g_inCount], 0	; 6: -57 6 6 11 0 0

scanFormat$6:	; g_inChars = 0
x1539:	mov word [g_inChars], 0	; 6: -57 6 8 11 0 0

scanFormat$7:	; index = 0
x1545:	mov word [bp + 31], 0	; 5: -57 70 31 0 0

scanFormat$8:	; £temporary1510 = format + index
x1550:	mov si, [bp + 6]	; 3: -117 118 6
x1553:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$9:	; £temporary1509 -> £temporary1510 = *£temporary1510

scanFormat$10:	; if £temporary1509 -> £temporary1510 == 0 goto 325
x1556:	cmp byte [si], 0	; 3: -128 60 0
x1559:	je scanFormat$325	; 4: 15 -124 -36 4

scanFormat$11:	; £temporary1514 = format + index
x1563:	mov si, [bp + 6]	; 3: -117 118 6
x1566:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$12:	; £temporary1513 -> £temporary1514 = *£temporary1514

scanFormat$13:	; c = £temporary1513 -> £temporary1514
x1569:	mov al, [si]	; 2: -118 4
x1571:	mov [bp + 10], al	; 3: -120 70 10

scanFormat$14:	; £temporary1515 = int_to_int c (Signed_Char -> Signed_Int)
x1574:	mov al, [bp + 10]	; 3: -118 70 10
x1577:	and ax, 255	; 3: 37 -1 0
x1580:	cmp al, 0	; 2: 60 0
x1582:	jge scanFormat$15	; 2: 125 4
x1584:	neg al	; 2: -10 -40
x1586:	neg ax	; 2: -9 -40

scanFormat$15:	; d = £temporary1515 + 1
x1588:	inc ax	; 1: 64
x1589:	mov [bp + 55], ax	; 3: -119 70 55

scanFormat$16:	; if percent == 0 goto 317
x1592:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x1596:	je scanFormat$317	; 4: 15 -124 -110 4

scanFormat$17:	; £temporary1517 = d - 1
x1600:	mov ax, [bp + 55]	; 3: -117 70 55
x1603:	dec ax	; 1: 72

scanFormat$18:	; case £temporary1517 == 104 goto 36
x1604:	cmp ax, 104	; 3: -125 -8 104
x1607:	je scanFormat$36	; 2: 116 100

scanFormat$19:	; case £temporary1517 == 108 goto 38
x1609:	cmp ax, 108	; 3: -125 -8 108
x1612:	je scanFormat$38	; 2: 116 103

scanFormat$20:	; case £temporary1517 == 76 goto 40
x1614:	cmp ax, 76	; 3: -125 -8 76
x1617:	je scanFormat$40	; 2: 116 106

scanFormat$21:	; case £temporary1517 == 42 goto 42
x1619:	cmp ax, 42	; 3: -125 -8 42
x1622:	je scanFormat$42	; 2: 116 109

scanFormat$22:	; case £temporary1517 == 99 goto 44
x1624:	cmp ax, 99	; 3: -125 -8 99
x1627:	je scanFormat$44	; 2: 116 112

scanFormat$23:	; case £temporary1517 == 115 goto 62
x1629:	cmp ax, 115	; 3: -125 -8 115
x1632:	je scanFormat$62	; 4: 15 -124 -72 0

scanFormat$24:	; case £temporary1517 == 100 goto 81
x1636:	cmp ax, 100	; 3: -125 -8 100
x1639:	je scanFormat$81	; 4: 15 -124 1 1

scanFormat$25:	; case £temporary1517 == 105 goto 81
x1643:	cmp ax, 105	; 3: -125 -8 105
x1646:	je scanFormat$81	; 4: 15 -124 -6 0

scanFormat$26:	; case £temporary1517 == 111 goto 116
x1650:	cmp ax, 111	; 3: -125 -8 111
x1653:	je scanFormat$116	; 4: 15 -124 -126 1

scanFormat$27:	; case £temporary1517 == 120 goto 152
x1657:	cmp ax, 120	; 3: -125 -8 120
x1660:	je scanFormat$152	; 4: 15 -124 -4 1

scanFormat$28:	; case £temporary1517 == 117 goto 188
x1664:	cmp ax, 117	; 3: -125 -8 117
x1667:	je scanFormat$188	; 4: 15 -124 118 2

scanFormat$29:	; case £temporary1517 == 103 goto 224
x1671:	cmp ax, 103	; 3: -125 -8 103
x1674:	je scanFormat$224	; 4: 15 -124 -16 2

scanFormat$30:	; case £temporary1517 == 102 goto 224
x1678:	cmp ax, 102	; 3: -125 -8 102
x1681:	je scanFormat$224	; 4: 15 -124 -23 2

scanFormat$31:	; case £temporary1517 == 101 goto 224
x1685:	cmp ax, 101	; 3: -125 -8 101
x1688:	je scanFormat$224	; 4: 15 -124 -30 2

scanFormat$32:	; case £temporary1517 == 91 goto 260
x1692:	cmp ax, 91	; 3: -125 -8 91
x1695:	je scanFormat$260	; 4: 15 -124 79 3

scanFormat$33:	; case £temporary1517 == 110 goto 301
x1699:	cmp ax, 110	; 3: -125 -8 110
x1702:	je scanFormat$301	; 4: 15 -124 -33 3

scanFormat$34:	; case end £temporary1517

scanFormat$35:	; goto 310
x1706:	jmp scanFormat$310	; 3: -23 -6 3

scanFormat$36:	; shortInt = 1
x1709:	mov word [bp + 15], 1	; 5: -57 70 15 1 0

scanFormat$37:	; goto 323
x1714:	jmp scanFormat$323	; 3: -23 60 4

scanFormat$38:	; longIntOrDouble = 1
x1717:	mov word [bp + 17], 1	; 5: -57 70 17 1 0

scanFormat$39:	; goto 323
x1722:	jmp scanFormat$323	; 3: -23 52 4

scanFormat$40:	; longDouble = 1
x1725:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanFormat$41:	; goto 323
x1730:	jmp scanFormat$323	; 3: -23 44 4

scanFormat$42:	; star = 1
x1733:	mov word [bp + 21], 1	; 5: -57 70 21 1 0

scanFormat$43:	; goto 323
x1738:	jmp scanFormat$323	; 3: -23 36 4

scanFormat$44:	; call header integral zero 0 stack zero 0

scanFormat$45:	; call function noellipse-noellipse scanChar
x1741:	mov word [bp + 57], scanFormat$46	; 5: -57 70 57 -37 6
x1746:	mov [bp + 59], bp	; 3: -119 110 59
x1749:	add bp, 57	; 3: -125 -59 57
x1752:	jmp scanChar	; 3: -23 68 4

scanFormat$46:	; post call

scanFormat$47:	; £temporary1518 = return_value

scanFormat$48:	; charValue = £temporary1518
x1755:	mov [bp + 57], bl	; 3: -120 94 57

scanFormat$49:	; if star != 0 goto 57
x1758:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x1762:	jne scanFormat$57	; 2: 117 23

scanFormat$50:	; arg_list = arg_list + 2
x1764:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$51:	; £temporary1522 = arg_list - 2
x1768:	mov si, [bp + 8]	; 3: -117 118 8
x1771:	sub si, 2	; 3: -125 -18 2

scanFormat$52:	; £temporary1523 = int_to_int £temporary1522 (Signed_Int -> Pointer)

scanFormat$53:	; £temporary1524 -> £temporary1523 = *£temporary1523

scanFormat$54:	; charPtr = £temporary1524 -> £temporary1523
x1774:	mov ax, [si]	; 2: -117 4
x1776:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$55:	; £temporary1525 -> charPtr = *charPtr
x1779:	mov si, [bp + 11]	; 3: -117 118 11

scanFormat$56:	; £temporary1525 -> charPtr = charValue
x1782:	mov al, [bp + 57]	; 3: -118 70 57
x1785:	mov [si], al	; 2: -120 4

scanFormat$57:	; percent = 0
x1787:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$58:	; £temporary1526 = int_to_int charValue (Signed_Char -> Signed_Int)
x1792:	mov al, [bp + 57]	; 3: -118 70 57
x1795:	and ax, 255	; 3: 37 -1 0
x1798:	cmp al, 0	; 2: 60 0
x1800:	jge scanFormat$59	; 2: 125 4
x1802:	neg al	; 2: -10 -40
x1804:	neg ax	; 2: -9 -40

scanFormat$59:	; if £temporary1526 == -1 goto 323
x1806:	cmp ax, -1	; 3: -125 -8 -1
x1809:	je scanFormat$323	; 4: 15 -124 -36 3

scanFormat$60:	; ++g_inCount
x1813:	inc word [g_inCount]	; 4: -1 6 6 11

scanFormat$61:	; goto 323
x1817:	jmp scanFormat$323	; 3: -23 -43 3

scanFormat$62:	; if star != 0 goto 74
x1820:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x1824:	jne scanFormat$74	; 2: 117 42

scanFormat$63:	; arg_list = arg_list + 2
x1826:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$64:	; £temporary1532 = arg_list - 2
x1830:	mov si, [bp + 8]	; 3: -117 118 8
x1833:	sub si, 2	; 3: -125 -18 2

scanFormat$65:	; £temporary1533 = int_to_int £temporary1532 (Signed_Int -> Pointer)

scanFormat$66:	; £temporary1534 -> £temporary1533 = *£temporary1533

scanFormat$67:	; charPtr = £temporary1534 -> £temporary1533
x1836:	mov ax, [si]	; 2: -117 4
x1838:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$68:	; call header integral zero 0 stack zero 0

scanFormat$69:	; parameter charPtr, offset 6
x1841:	mov ax, [bp + 11]	; 3: -117 70 11
x1844:	mov [bp + 63], ax	; 3: -119 70 63

scanFormat$70:	; parameter 0, offset 8
x1847:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$71:	; call function noellipse-noellipse scanString
x1852:	mov word [bp + 57], scanFormat$72	; 5: -57 70 57 74 7
x1857:	mov [bp + 59], bp	; 3: -119 110 59
x1860:	add bp, 57	; 3: -125 -59 57
x1863:	jmp scanString	; 3: -23 68 4

scanFormat$72:	; post call

scanFormat$73:	; goto 79
x1866:	jmp scanFormat$79	; 2: -21 24

scanFormat$74:	; call header integral zero 0 stack zero 0

scanFormat$75:	; parameter 0, offset 6
x1868:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

scanFormat$76:	; parameter 0, offset 8
x1873:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$77:	; call function noellipse-noellipse scanString
x1878:	mov word [bp + 57], scanFormat$78	; 5: -57 70 57 100 7
x1883:	mov [bp + 59], bp	; 3: -119 110 59
x1886:	add bp, 57	; 3: -125 -59 57
x1889:	jmp scanString	; 3: -23 42 4

scanFormat$78:	; post call

scanFormat$79:	; percent = 0
x1892:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$80:	; goto 323
x1897:	jmp scanFormat$323	; 3: -23 -123 3

scanFormat$81:	; call header integral zero 0 stack zero 0

scanFormat$82:	; call function noellipse-noellipse scanLongInt
x1900:	mov word [bp + 57], scanFormat$83	; 5: -57 70 57 122 7
x1905:	mov [bp + 59], bp	; 3: -119 110 59
x1908:	add bp, 57	; 3: -125 -59 57
x1911:	jmp scanLongInt	; 3: -23 -104 6

scanFormat$83:	; post call

scanFormat$84:	; £temporary1537 = return_value

scanFormat$85:	; longValue = £temporary1537
x1914:	mov [bp + 23], ebx	; 4: 102 -119 94 23

scanFormat$86:	; if star != 0 goto 114
x1918:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x1922:	jne scanFormat$114	; 2: 117 111

scanFormat$87:	; if shortInt == 0 goto 97
x1924:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x1928:	je scanFormat$97	; 2: 116 37

scanFormat$88:	; arg_list = arg_list + 2
x1930:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$89:	; £temporary1541 = arg_list - 2
x1934:	mov si, [bp + 8]	; 3: -117 118 8
x1937:	sub si, 2	; 3: -125 -18 2

scanFormat$90:	; £temporary1542 = int_to_int £temporary1541 (Signed_Int -> Pointer)

scanFormat$91:	; £temporary1543 -> £temporary1542 = *£temporary1542

scanFormat$92:	; shortPtr = £temporary1543 -> £temporary1542
x1940:	mov ax, [si]	; 2: -117 4
x1942:	mov [bp + 29], ax	; 3: -119 70 29

scanFormat$93:	; £temporary1544 -> shortPtr = *shortPtr
x1945:	mov si, [bp + 29]	; 3: -117 118 29

scanFormat$94:	; £temporary1545 = int_to_int longValue (Signed_Long_Int -> Signed_Short_Int)
x1948:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x1952:	cmp eax, 0	; 4: 102 -125 -8 0
x1956:	jge scanFormat$95	; 2: 125 5
x1958:	neg eax	; 3: 102 -9 -40
x1961:	neg al	; 2: -10 -40

scanFormat$95:	; £temporary1544 -> shortPtr = £temporary1545
x1963:	mov [si], al	; 2: -120 4

scanFormat$96:	; goto 114
x1965:	jmp scanFormat$114	; 2: -21 68

scanFormat$97:	; if longIntOrDouble != 0 goto 107
x1967:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x1971:	jne scanFormat$107	; 2: 117 37

scanFormat$98:	; arg_list = arg_list + 2
x1973:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$99:	; £temporary1549 = arg_list - 2
x1977:	mov si, [bp + 8]	; 3: -117 118 8
x1980:	sub si, 2	; 3: -125 -18 2

scanFormat$100:	; £temporary1550 = int_to_int £temporary1549 (Signed_Int -> Pointer)

scanFormat$101:	; £temporary1551 -> £temporary1550 = *£temporary1550

scanFormat$102:	; intPtr = £temporary1551 -> £temporary1550
x1983:	mov ax, [si]	; 2: -117 4
x1985:	mov [bp + 33], ax	; 3: -119 70 33

scanFormat$103:	; £temporary1552 -> intPtr = *intPtr
x1988:	mov si, [bp + 33]	; 3: -117 118 33

scanFormat$104:	; £temporary1553 = int_to_int longValue (Signed_Long_Int -> Signed_Int)
x1991:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x1995:	cmp eax, 0	; 4: 102 -125 -8 0
x1999:	jge scanFormat$105	; 2: 125 5
x2001:	neg eax	; 3: 102 -9 -40
x2004:	neg ax	; 2: -9 -40

scanFormat$105:	; £temporary1552 -> intPtr = £temporary1553
x2006:	mov [si], ax	; 2: -119 4

scanFormat$106:	; goto 114
x2008:	jmp scanFormat$114	; 2: -21 25

scanFormat$107:	; arg_list = arg_list + 2
x2010:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$108:	; £temporary1555 = arg_list - 2
x2014:	mov si, [bp + 8]	; 3: -117 118 8
x2017:	sub si, 2	; 3: -125 -18 2

scanFormat$109:	; £temporary1556 = int_to_int £temporary1555 (Signed_Int -> Pointer)

scanFormat$110:	; £temporary1557 -> £temporary1556 = *£temporary1556

scanFormat$111:	; longPtr = £temporary1557 -> £temporary1556
x2020:	mov ax, [si]	; 2: -117 4
x2022:	mov [bp + 27], ax	; 3: -119 70 27

scanFormat$112:	; £temporary1558 -> longPtr = *longPtr
x2025:	mov si, [bp + 27]	; 3: -117 118 27

scanFormat$113:	; £temporary1558 -> longPtr = longValue
x2028:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x2032:	mov [si], eax	; 3: 102 -119 4

scanFormat$114:	; percent = 0
x2035:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$115:	; goto 323
x2040:	jmp scanFormat$323	; 3: -23 -10 2

scanFormat$116:	; call header integral zero 0 stack zero 0

scanFormat$117:	; parameter 8, offset 6
x2043:	mov dword [bp + 63], 8	; 8: 102 -57 70 63 8 0 0 0

scanFormat$118:	; call function noellipse-noellipse scanUnsignedLongInt
x2051:	mov word [bp + 57], scanFormat$119	; 5: -57 70 57 17 8
x2056:	mov [bp + 59], bp	; 3: -119 110 59
x2059:	add bp, 57	; 3: -125 -59 57
x2062:	jmp scanUnsignedLongInt	; 3: -23 123 7

scanFormat$119:	; post call

scanFormat$120:	; £temporary1560 = return_value

scanFormat$121:	; unsignedLongValue = £temporary1560
x2065:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$122:	; if star != 0 goto 150
x2069:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x2073:	jne scanFormat$150	; 2: 117 89

scanFormat$123:	; if shortInt == 0 goto 133
x2075:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x2079:	je scanFormat$133	; 2: 116 26

scanFormat$124:	; arg_list = arg_list + 2
x2081:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$125:	; £temporary1564 = arg_list - 2
x2085:	mov si, [bp + 8]	; 3: -117 118 8
x2088:	sub si, 2	; 3: -125 -18 2

scanFormat$126:	; £temporary1565 = int_to_int £temporary1564 (Signed_Int -> Pointer)

scanFormat$127:	; £temporary1566 -> £temporary1565 = *£temporary1565

scanFormat$128:	; unsignedShortPtr = £temporary1566 -> £temporary1565
x2091:	mov ax, [si]	; 2: -117 4
x2093:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$129:	; £temporary1567 -> unsignedShortPtr = *unsignedShortPtr
x2096:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$130:	; £temporary1568 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x2099:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$131:	; £temporary1567 -> unsignedShortPtr = £temporary1568
x2103:	mov [si], al	; 2: -120 4

scanFormat$132:	; goto 150
x2105:	jmp scanFormat$150	; 2: -21 57

scanFormat$133:	; if longIntOrDouble != 0 goto 143
x2107:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x2111:	jne scanFormat$143	; 2: 117 26

scanFormat$134:	; arg_list = arg_list + 2
x2113:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$135:	; £temporary1572 = arg_list - 2
x2117:	mov si, [bp + 8]	; 3: -117 118 8
x2120:	sub si, 2	; 3: -125 -18 2

scanFormat$136:	; £temporary1573 = int_to_int £temporary1572 (Signed_Int -> Pointer)

scanFormat$137:	; £temporary1574 -> £temporary1573 = *£temporary1573

scanFormat$138:	; unsignedIntPtr = £temporary1574 -> £temporary1573
x2123:	mov ax, [si]	; 2: -117 4
x2125:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$139:	; £temporary1575 -> unsignedIntPtr = *unsignedIntPtr
x2128:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$140:	; £temporary1576 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x2131:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$141:	; £temporary1575 -> unsignedIntPtr = £temporary1576
x2135:	mov [si], ax	; 2: -119 4

scanFormat$142:	; goto 150
x2137:	jmp scanFormat$150	; 2: -21 25

scanFormat$143:	; arg_list = arg_list + 2
x2139:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$144:	; £temporary1578 = arg_list - 2
x2143:	mov si, [bp + 8]	; 3: -117 118 8
x2146:	sub si, 2	; 3: -125 -18 2

scanFormat$145:	; £temporary1579 = int_to_int £temporary1578 (Signed_Int -> Pointer)

scanFormat$146:	; £temporary1580 -> £temporary1579 = *£temporary1579

scanFormat$147:	; unsignedLongPtr = £temporary1580 -> £temporary1579
x2149:	mov ax, [si]	; 2: -117 4
x2151:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$148:	; £temporary1581 -> unsignedLongPtr = *unsignedLongPtr
x2154:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$149:	; £temporary1581 -> unsignedLongPtr = unsignedLongValue
x2157:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x2161:	mov [si], eax	; 3: 102 -119 4

scanFormat$150:	; percent = 0
x2164:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$151:	; goto 323
x2169:	jmp scanFormat$323	; 3: -23 117 2

scanFormat$152:	; call header integral zero 0 stack zero 0

scanFormat$153:	; parameter 16, offset 6
x2172:	mov dword [bp + 63], 16	; 8: 102 -57 70 63 16 0 0 0

scanFormat$154:	; call function noellipse-noellipse scanUnsignedLongInt
x2180:	mov word [bp + 57], scanFormat$155	; 5: -57 70 57 -110 8
x2185:	mov [bp + 59], bp	; 3: -119 110 59
x2188:	add bp, 57	; 3: -125 -59 57
x2191:	jmp scanUnsignedLongInt	; 3: -23 -6 6

scanFormat$155:	; post call

scanFormat$156:	; £temporary1583 = return_value

scanFormat$157:	; unsignedLongValue = £temporary1583
x2194:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$158:	; if star != 0 goto 186
x2198:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x2202:	jne scanFormat$186	; 2: 117 89

scanFormat$159:	; if shortInt == 0 goto 169
x2204:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x2208:	je scanFormat$169	; 2: 116 26

scanFormat$160:	; arg_list = arg_list + 2
x2210:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$161:	; £temporary1587 = arg_list - 2
x2214:	mov si, [bp + 8]	; 3: -117 118 8
x2217:	sub si, 2	; 3: -125 -18 2

scanFormat$162:	; £temporary1588 = int_to_int £temporary1587 (Signed_Int -> Pointer)

scanFormat$163:	; £temporary1589 -> £temporary1588 = *£temporary1588

scanFormat$164:	; unsignedShortPtr = £temporary1589 -> £temporary1588
x2220:	mov ax, [si]	; 2: -117 4
x2222:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$165:	; £temporary1590 -> unsignedShortPtr = *unsignedShortPtr
x2225:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$166:	; £temporary1591 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x2228:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$167:	; £temporary1590 -> unsignedShortPtr = £temporary1591
x2232:	mov [si], al	; 2: -120 4

scanFormat$168:	; goto 186
x2234:	jmp scanFormat$186	; 2: -21 57

scanFormat$169:	; if longIntOrDouble != 0 goto 179
x2236:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x2240:	jne scanFormat$179	; 2: 117 26

scanFormat$170:	; arg_list = arg_list + 2
x2242:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$171:	; £temporary1595 = arg_list - 2
x2246:	mov si, [bp + 8]	; 3: -117 118 8
x2249:	sub si, 2	; 3: -125 -18 2

scanFormat$172:	; £temporary1596 = int_to_int £temporary1595 (Signed_Int -> Pointer)

scanFormat$173:	; £temporary1597 -> £temporary1596 = *£temporary1596

scanFormat$174:	; unsignedIntPtr = £temporary1597 -> £temporary1596
x2252:	mov ax, [si]	; 2: -117 4
x2254:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$175:	; £temporary1598 -> unsignedIntPtr = *unsignedIntPtr
x2257:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$176:	; £temporary1599 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x2260:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$177:	; £temporary1598 -> unsignedIntPtr = £temporary1599
x2264:	mov [si], ax	; 2: -119 4

scanFormat$178:	; goto 186
x2266:	jmp scanFormat$186	; 2: -21 25

scanFormat$179:	; arg_list = arg_list + 2
x2268:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$180:	; £temporary1601 = arg_list - 2
x2272:	mov si, [bp + 8]	; 3: -117 118 8
x2275:	sub si, 2	; 3: -125 -18 2

scanFormat$181:	; £temporary1602 = int_to_int £temporary1601 (Signed_Int -> Pointer)

scanFormat$182:	; £temporary1603 -> £temporary1602 = *£temporary1602

scanFormat$183:	; unsignedLongPtr = £temporary1603 -> £temporary1602
x2278:	mov ax, [si]	; 2: -117 4
x2280:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$184:	; £temporary1604 -> unsignedLongPtr = *unsignedLongPtr
x2283:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$185:	; £temporary1604 -> unsignedLongPtr = unsignedLongValue
x2286:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x2290:	mov [si], eax	; 3: 102 -119 4

scanFormat$186:	; percent = 0
x2293:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$187:	; goto 323
x2298:	jmp scanFormat$323	; 3: -23 -12 1

scanFormat$188:	; call header integral zero 0 stack zero 0

scanFormat$189:	; parameter 0, offset 6
x2301:	mov dword [bp + 63], 0	; 8: 102 -57 70 63 0 0 0 0

scanFormat$190:	; call function noellipse-noellipse scanUnsignedLongInt
x2309:	mov word [bp + 57], scanFormat$191	; 5: -57 70 57 19 9
x2314:	mov [bp + 59], bp	; 3: -119 110 59
x2317:	add bp, 57	; 3: -125 -59 57
x2320:	jmp scanUnsignedLongInt	; 3: -23 121 6

scanFormat$191:	; post call

scanFormat$192:	; £temporary1606 = return_value

scanFormat$193:	; unsignedLongValue = £temporary1606
x2323:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$194:	; if star != 0 goto 222
x2327:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x2331:	jne scanFormat$222	; 2: 117 89

scanFormat$195:	; if shortInt == 0 goto 205
x2333:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x2337:	je scanFormat$205	; 2: 116 26

scanFormat$196:	; arg_list = arg_list + 2
x2339:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$197:	; £temporary1610 = arg_list - 2
x2343:	mov si, [bp + 8]	; 3: -117 118 8
x2346:	sub si, 2	; 3: -125 -18 2

scanFormat$198:	; £temporary1611 = int_to_int £temporary1610 (Signed_Int -> Pointer)

scanFormat$199:	; £temporary1612 -> £temporary1611 = *£temporary1611

scanFormat$200:	; unsignedShortPtr = £temporary1612 -> £temporary1611
x2349:	mov ax, [si]	; 2: -117 4
x2351:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$201:	; £temporary1613 -> unsignedShortPtr = *unsignedShortPtr
x2354:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$202:	; £temporary1614 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x2357:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$203:	; £temporary1613 -> unsignedShortPtr = £temporary1614
x2361:	mov [si], al	; 2: -120 4

scanFormat$204:	; goto 222
x2363:	jmp scanFormat$222	; 2: -21 57

scanFormat$205:	; if longIntOrDouble != 0 goto 215
x2365:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x2369:	jne scanFormat$215	; 2: 117 26

scanFormat$206:	; arg_list = arg_list + 2
x2371:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$207:	; £temporary1618 = arg_list - 2
x2375:	mov si, [bp + 8]	; 3: -117 118 8
x2378:	sub si, 2	; 3: -125 -18 2

scanFormat$208:	; £temporary1619 = int_to_int £temporary1618 (Signed_Int -> Pointer)

scanFormat$209:	; £temporary1620 -> £temporary1619 = *£temporary1619

scanFormat$210:	; unsignedIntPtr = £temporary1620 -> £temporary1619
x2381:	mov ax, [si]	; 2: -117 4
x2383:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$211:	; £temporary1621 -> unsignedIntPtr = *unsignedIntPtr
x2386:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$212:	; £temporary1622 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x2389:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$213:	; £temporary1621 -> unsignedIntPtr = £temporary1622
x2393:	mov [si], ax	; 2: -119 4

scanFormat$214:	; goto 222
x2395:	jmp scanFormat$222	; 2: -21 25

scanFormat$215:	; arg_list = arg_list + 2
x2397:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$216:	; £temporary1624 = arg_list - 2
x2401:	mov si, [bp + 8]	; 3: -117 118 8
x2404:	sub si, 2	; 3: -125 -18 2

scanFormat$217:	; £temporary1625 = int_to_int £temporary1624 (Signed_Int -> Pointer)

scanFormat$218:	; £temporary1626 -> £temporary1625 = *£temporary1625

scanFormat$219:	; unsignedLongPtr = £temporary1626 -> £temporary1625
x2407:	mov ax, [si]	; 2: -117 4
x2409:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$220:	; £temporary1627 -> unsignedLongPtr = *unsignedLongPtr
x2412:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$221:	; £temporary1627 -> unsignedLongPtr = unsignedLongValue
x2415:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x2419:	mov [si], eax	; 3: 102 -119 4

scanFormat$222:	; percent = 0
x2422:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$223:	; goto 323
x2427:	jmp scanFormat$323	; 3: -23 115 1

scanFormat$224:	; call header integral zero 0 stack zero 0

scanFormat$225:	; call function noellipse-noellipse scanLongDouble
x2430:	mov word [bp + 57], scanFormat$226	; 5: -57 70 57 -116 9
x2435:	mov [bp + 59], bp	; 3: -119 110 59
x2438:	add bp, 57	; 3: -125 -59 57
x2441:	jmp scanLongDouble	; 3: -23 99 13

scanFormat$226:	; post call

scanFormat$227:	; £temporary1629 = return_value

scanFormat$228:	; pop float longDoubleValue
x2444:	fstp qword [bp + 47]	; 3: -35 94 47

scanFormat$229:	; if star != 0 goto 258
x2447:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x2451:	jne scanFormat$258	; 2: 117 85

scanFormat$230:	; if longIntOrDouble == 0 goto 240
x2453:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x2457:	je scanFormat$240	; 2: 116 25

scanFormat$231:	; arg_list = arg_list + 2
x2459:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$232:	; £temporary1633 = arg_list - 2
x2463:	mov si, [bp + 8]	; 3: -117 118 8
x2466:	sub si, 2	; 3: -125 -18 2

scanFormat$233:	; £temporary1634 = int_to_int £temporary1633 (Signed_Int -> Pointer)

scanFormat$234:	; £temporary1635 -> £temporary1634 = *£temporary1634

scanFormat$235:	; doublePtr = £temporary1635 -> £temporary1634
x2469:	mov ax, [si]	; 2: -117 4
x2471:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$236:	; £temporary1636 -> doublePtr = *doublePtr
x2474:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$237:	; push float longDoubleValue
x2477:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$238:	; pop float £temporary1636 -> doublePtr
x2480:	fstp qword [si]	; 2: -35 28

scanFormat$239:	; goto 258
x2482:	jmp scanFormat$258	; 2: -21 54

scanFormat$240:	; if longDouble == 0 goto 250
x2484:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x2488:	je scanFormat$250	; 2: 116 25

scanFormat$241:	; arg_list = arg_list + 2
x2490:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$242:	; £temporary1639 = arg_list - 2
x2494:	mov si, [bp + 8]	; 3: -117 118 8
x2497:	sub si, 2	; 3: -125 -18 2

scanFormat$243:	; £temporary1640 = int_to_int £temporary1639 (Signed_Int -> Pointer)

scanFormat$244:	; £temporary1641 -> £temporary1640 = *£temporary1640

scanFormat$245:	; longDoublePtr = £temporary1641 -> £temporary1640
x2500:	mov ax, [si]	; 2: -117 4
x2502:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$246:	; £temporary1642 -> longDoublePtr = *longDoublePtr
x2505:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$247:	; push float longDoubleValue
x2508:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$248:	; pop float £temporary1642 -> longDoublePtr
x2511:	fstp qword [si]	; 2: -35 28

scanFormat$249:	; goto 258
x2513:	jmp scanFormat$258	; 2: -21 23

scanFormat$250:	; arg_list = arg_list + 2
x2515:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$251:	; £temporary1644 = arg_list - 2
x2519:	mov si, [bp + 8]	; 3: -117 118 8
x2522:	sub si, 2	; 3: -125 -18 2

scanFormat$252:	; £temporary1645 = int_to_int £temporary1644 (Signed_Int -> Pointer)

scanFormat$253:	; £temporary1646 -> £temporary1645 = *£temporary1645

scanFormat$254:	; floatPtr = £temporary1646 -> £temporary1645
x2525:	mov ax, [si]	; 2: -117 4
x2527:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$255:	; £temporary1647 -> floatPtr = *floatPtr
x2530:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$256:	; push float longDoubleValue
x2533:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$257:	; pop float £temporary1647 -> floatPtr
x2536:	fstp dword [si]	; 2: -39 28

scanFormat$258:	; percent = 0
x2538:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$259:	; goto 323
x2543:	jmp scanFormat$323	; 3: -23 -1 0

scanFormat$260:	; not = 0
x2546:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

scanFormat$261:	; ++index
x2551:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$262:	; £temporary1653 = format + index
x2554:	mov si, [bp + 6]	; 3: -117 118 6
x2557:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$263:	; £temporary1652 -> £temporary1653 = *£temporary1653

scanFormat$264:	; if £temporary1652 -> £temporary1653 != 94 goto 267
x2560:	cmp byte [si], 94	; 3: -128 60 94
x2563:	jne scanFormat$267	; 2: 117 12

scanFormat$265:	; not = 1
x2565:	mov word [bp + 57], 1	; 5: -57 70 57 1 0

scanFormat$266:	; startIndex = index + 1
x2570:	mov ax, [bp + 31]	; 3: -117 70 31
x2573:	inc ax	; 1: 64
x2574:	mov [bp + 59], ax	; 3: -119 70 59

scanFormat$267:	; £temporary1657 = format + index
x2577:	mov si, [bp + 6]	; 3: -117 118 6
x2580:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$268:	; £temporary1656 -> £temporary1657 = *£temporary1657

scanFormat$269:	; if £temporary1656 -> £temporary1657 == 93 goto 272
x2583:	cmp byte [si], 93	; 3: -128 60 93
x2586:	je scanFormat$272	; 2: 116 5

scanFormat$270:	; ++index
x2588:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$271:	; goto 267
x2591:	jmp scanFormat$267	; 2: -21 -16

scanFormat$272:	; £temporary1661 = format + index
x2593:	mov si, [bp + 6]	; 3: -117 118 6
x2596:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$273:	; £temporary1660 -> £temporary1661 = *£temporary1661

scanFormat$274:	; £temporary1660 -> £temporary1661 = 0
x2599:	mov byte [si], 0	; 3: -58 4 0

scanFormat$275:	; if star != 0 goto 291
x2602:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x2606:	jne scanFormat$291	; 2: 117 53

scanFormat$276:	; arg_list = arg_list + 2
x2608:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$277:	; £temporary1665 = arg_list - 2
x2612:	mov si, [bp + 8]	; 3: -117 118 8
x2615:	sub si, 2	; 3: -125 -18 2

scanFormat$278:	; £temporary1666 = int_to_int £temporary1665 (Signed_Int -> Pointer)

scanFormat$279:	; £temporary1667 -> £temporary1666 = *£temporary1666

scanFormat$280:	; string = £temporary1667 -> £temporary1666
x2618:	mov ax, [si]	; 2: -117 4
x2620:	mov [bp + 61], ax	; 3: -119 70 61

scanFormat$281:	; call header integral zero 0 stack zero 0

scanFormat$282:	; parameter string, offset 6
x2623:	mov ax, [bp + 61]	; 3: -117 70 61
x2626:	mov [bp + 69], ax	; 3: -119 70 69

scanFormat$283:	; £temporary1669 = format + startIndex
x2629:	mov si, [bp + 6]	; 3: -117 118 6
x2632:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$284:	; £temporary1668 -> £temporary1669 = *£temporary1669

scanFormat$285:	; £temporary1670 = &£temporary1668 -> £temporary1669

scanFormat$286:	; parameter £temporary1670, offset 8
x2635:	mov [bp + 71], si	; 3: -119 118 71

scanFormat$287:	; parameter not, offset 10
x2638:	mov ax, [bp + 57]	; 3: -117 70 57
x2641:	mov [bp + 73], ax	; 3: -119 70 73

scanFormat$288:	; call function noellipse-noellipse scanPattern
x2644:	mov word [bp + 63], scanFormat$289	; 5: -57 70 63 98 10
x2649:	mov [bp + 65], bp	; 3: -119 110 65
x2652:	add bp, 63	; 3: -125 -59 63
x2655:	jmp scanPattern	; 3: -23 -22 18

scanFormat$289:	; post call

scanFormat$290:	; goto 323
x2658:	jmp scanFormat$323	; 3: -23 -116 0

scanFormat$291:	; call header integral zero 0 stack zero 0

scanFormat$292:	; parameter 0, offset 6
x2661:	mov word [bp + 67], 0	; 5: -57 70 67 0 0

scanFormat$293:	; £temporary1673 = format + startIndex
x2666:	mov si, [bp + 6]	; 3: -117 118 6
x2669:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$294:	; £temporary1672 -> £temporary1673 = *£temporary1673

scanFormat$295:	; £temporary1674 = &£temporary1672 -> £temporary1673

scanFormat$296:	; parameter £temporary1674, offset 8
x2672:	mov [bp + 69], si	; 3: -119 118 69

scanFormat$297:	; parameter not, offset 10
x2675:	mov ax, [bp + 57]	; 3: -117 70 57
x2678:	mov [bp + 71], ax	; 3: -119 70 71

scanFormat$298:	; call function noellipse-noellipse scanPattern
x2681:	mov word [bp + 61], scanFormat$299	; 5: -57 70 61 -121 10
x2686:	mov [bp + 63], bp	; 3: -119 110 63
x2689:	add bp, 61	; 3: -125 -59 61
x2692:	jmp scanPattern	; 3: -23 -59 18

scanFormat$299:	; post call

scanFormat$300:	; goto 323
x2695:	jmp scanFormat$323	; 2: -21 104

scanFormat$301:	; arg_list = arg_list + 2
x2697:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$302:	; £temporary1677 = arg_list - 2
x2701:	mov si, [bp + 8]	; 3: -117 118 8
x2704:	sub si, 2	; 3: -125 -18 2

scanFormat$303:	; £temporary1678 = int_to_int £temporary1677 (Signed_Int -> Pointer)

scanFormat$304:	; £temporary1679 -> £temporary1678 = *£temporary1678

scanFormat$305:	; charsPtr = £temporary1679 -> £temporary1678
x2707:	mov ax, [si]	; 2: -117 4
x2709:	mov [bp + 35], ax	; 3: -119 70 35

scanFormat$306:	; £temporary1680 -> charsPtr = *charsPtr
x2712:	mov si, [bp + 35]	; 3: -117 118 35

scanFormat$307:	; £temporary1680 -> charsPtr = g_inChars
x2715:	mov ax, [g_inChars]	; 3: -95 8 11
x2718:	mov [si], ax	; 2: -119 4

scanFormat$308:	; percent = 0
x2720:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$309:	; goto 323
x2725:	jmp scanFormat$323	; 2: -21 74

scanFormat$310:	; call header integral zero 0 stack zero 0

scanFormat$311:	; parameter string_scanFormat20c203D202725c270A#, offset 6
x2727:	mov word [bp + 63], string_scanFormat20c203D202725c270A#	; 5: -57 70 63 10 11

scanFormat$312:	; £temporary1681 = int_to_int c (Signed_Char -> Signed_Int)
x2732:	mov al, [bp + 10]	; 3: -118 70 10
x2735:	and ax, 255	; 3: 37 -1 0
x2738:	cmp al, 0	; 2: 60 0
x2740:	jge scanFormat$313	; 2: 125 4
x2742:	neg al	; 2: -10 -40
x2744:	neg ax	; 2: -9 -40

scanFormat$313:	; parameter £temporary1681, offset 8
x2746:	mov [bp + 65], ax	; 3: -119 70 65

scanFormat$314:	; call function noellipse-ellipse printf, extra 0
x2749:	mov word [bp + 57], scanFormat$315	; 5: -57 70 57 -48 10
x2754:	mov [bp + 59], bp	; 3: -119 110 59
x2757:	add bp, 57	; 3: -125 -59 57
x2760:	mov di, bp	; 2: -119 -17
x2762:	add di, 2	; 3: -125 -57 2
x2765:	jmp printf	; 3: -23 -34 19

scanFormat$315:	; post call

scanFormat$316:	; goto 323
x2768:	jmp scanFormat$323	; 2: -21 31

scanFormat$317:	; if c != 37 goto 323
x2770:	cmp byte [bp + 10], 37	; 4: -128 126 10 37
x2774:	jne scanFormat$323	; 2: 117 25

scanFormat$318:	; percent = 1
x2776:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanFormat$319:	; shortInt = 0
x2781:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$320:	; longIntOrDouble = 0
x2786:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$321:	; longDouble = 0
x2791:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$322:	; star = 0
x2796:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$323:	; ++index
x2801:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$324:	; goto 8
x2804:	jmp scanFormat$8	; 3: -23 23 -5

scanFormat$325:	; return_value = g_inCount
x2807:	mov bx, [g_inCount]	; 4: -117 30 6 11

scanFormat$326:	; return
x2811:	mov ax, [bp]	; 3: -117 70 0
x2814:	mov di, [bp + 4]	; 3: -117 126 4
x2817:	mov bp, [bp + 2]	; 3: -117 110 2
x2820:	jmp ax	; 2: -1 -32

scanFormat$327:	; function end scanFormat

g_inCount:
x2822:	db 0, 0	; 2: 0 0

g_inChars:
x2824:	db 0, 0	; 2: 0 0

string_scanFormat20c203D202725c270A#:
x2826:	db "scanFormat c = ", 39, "%c", 39, 10, 0	; 21: 115 99 97 110 70 111 114 109 97 116 32 99 32 61 32 39 37 99 39 10 0

scanChar:	; c = 0
x2847:	mov byte [bp + 6], 0	; 4: -58 70 6 0

scanChar$1:	; case g_inStatus == 0 goto 5
x2851:	mov ax, [g_inStatus]	; 3: -95 -32 5
x2854:	cmp ax, 0	; 3: -125 -8 0
x2857:	je scanChar$5	; 2: 116 7

scanChar$2:	; case g_inStatus == 1 goto 18
x2859:	cmp ax, 1	; 3: -125 -8 1
x2862:	je scanChar$18	; 2: 116 50

scanChar$3:	; case end g_inStatus

scanChar$4:	; goto 26
x2864:	jmp scanChar$26	; 2: -21 79

scanChar$5:	; £temporary1235 = int_to_int g_inDevice (Pointer -> Pointer)
x2866:	mov ax, [g_inDevice]	; 3: -95 -30 5

scanChar$6:	; stream = £temporary1235
x2869:	mov [bp + 7], ax	; 3: -119 70 7

scanChar$7:	; £temporary1236 -> stream = *stream, offset 2
x2872:	mov si, [bp + 7]	; 3: -117 118 7

scanChar$8:	; handle = £temporary1236 -> stream
x2875:	mov ax, [si + 2]	; 3: -117 68 2
x2878:	mov [bp + 9], ax	; 3: -119 70 9

scanChar$9:	; ah = 63
x2881:	mov ah, 63	; 2: -76 63

scanChar$10:	; bx = handle
x2883:	mov bx, [bp + 9]	; 3: -117 94 9

scanChar$11:	; cx = 1
x2886:	mov cx, 1	; 3: -71 1 0

scanChar$12:	; £temporary1241 = &c
x2889:	mov dx, bp	; 2: -119 -22
x2891:	add dx, 6	; 3: -125 -62 6

scanChar$13:	; dx = £temporary1241

scanChar$14:	; interrupt 33
x2894:	int 33	; 2: -51 33

scanChar$15:	; ++g_inChars
x2896:	inc word [g_inChars]	; 4: -1 6 8 11

scanChar$16:	; return_value = c
x2900:	mov bl, [bp + 6]	; 3: -118 94 6

scanChar$17:	; return
x2903:	mov ax, [bp]	; 3: -117 70 0
x2906:	mov di, [bp + 4]	; 3: -117 126 4
x2909:	mov bp, [bp + 2]	; 3: -117 110 2
x2912:	jmp ax	; 2: -1 -32

scanChar$18:	; £temporary1243 = int_to_int g_inDevice (Pointer -> Pointer)
x2914:	mov ax, [g_inDevice]	; 3: -95 -30 5

scanChar$19:	; inString = £temporary1243
x2917:	mov [bp + 11], ax	; 3: -119 70 11

scanChar$20:	; £temporary1244 = g_inChars
x2920:	mov ax, [g_inChars]	; 3: -95 8 11

scanChar$21:	; ++g_inChars
x2923:	inc word [g_inChars]	; 4: -1 6 8 11

scanChar$22:	; £temporary1246 = inString + £temporary1244
x2927:	mov si, [bp + 11]	; 3: -117 118 11
x2930:	add si, ax	; 2: 1 -58

scanChar$23:	; £temporary1245 -> £temporary1246 = *£temporary1246

scanChar$24:	; return_value = £temporary1245 -> £temporary1246
x2932:	mov bl, [si]	; 2: -118 28

scanChar$25:	; return
x2934:	mov ax, [bp]	; 3: -117 70 0
x2937:	mov di, [bp + 4]	; 3: -117 126 4
x2940:	mov bp, [bp + 2]	; 3: -117 110 2
x2943:	jmp ax	; 2: -1 -32

scanChar$26:	; return_value = 0
x2945:	mov bl, 0	; 2: -77 0

scanChar$27:	; return
x2947:	mov ax, [bp]	; 3: -117 70 0
x2950:	mov di, [bp + 4]	; 3: -117 126 4
x2953:	mov bp, [bp + 2]	; 3: -117 110 2
x2956:	jmp ax	; 2: -1 -32

scanChar$28:	; function end scanChar

scanString:	; index = 0
x2958:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanString$1:	; call header integral zero 0 stack zero 0

scanString$2:	; call function noellipse-noellipse scanChar
x2963:	mov word [bp + 12], scanString$3	; 5: -57 70 12 -95 11
x2968:	mov [bp + 14], bp	; 3: -119 110 14
x2971:	add bp, 12	; 3: -125 -59 12
x2974:	jmp scanChar	; 3: -23 126 -1

scanString$3:	; post call

scanString$4:	; £temporary1298 = return_value

scanString$5:	; input = £temporary1298
x2977:	mov [bp + 12], bl	; 3: -120 94 12

scanString$6:	; found = 0
x2980:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanString$7:	; call header integral zero 0 stack zero 0

scanString$8:	; £temporary1299 = int_to_int input (Signed_Char -> Signed_Int)
x2985:	mov al, [bp + 12]	; 3: -118 70 12
x2988:	and ax, 255	; 3: 37 -1 0
x2991:	cmp al, 0	; 2: 60 0
x2993:	jge scanString$9	; 2: 125 4
x2995:	neg al	; 2: -10 -40
x2997:	neg ax	; 2: -9 -40

scanString$9:	; parameter £temporary1299, offset 6
x2999:	mov [bp + 21], ax	; 3: -119 70 21

scanString$10:	; call function noellipse-noellipse isspace
x3002:	mov word [bp + 15], scanString$11	; 5: -57 70 15 -56 11
x3007:	mov [bp + 17], bp	; 3: -119 110 17
x3010:	add bp, 15	; 3: -125 -59 15
x3013:	jmp isspace	; 3: -23 19 2

scanString$11:	; post call

scanString$12:	; £temporary1300 = return_value

scanString$13:	; if £temporary1300 == 0 goto 20
x3016:	cmp bx, 0	; 3: -125 -5 0
x3019:	je scanString$20	; 2: 116 19

scanString$14:	; call header integral zero 0 stack zero 0

scanString$15:	; call function noellipse-noellipse scanChar
x3021:	mov word [bp + 15], scanString$16	; 5: -57 70 15 -37 11
x3026:	mov [bp + 17], bp	; 3: -119 110 17
x3029:	add bp, 15	; 3: -125 -59 15
x3032:	jmp scanChar	; 3: -23 68 -1

scanString$16:	; post call

scanString$17:	; £temporary1301 = return_value

scanString$18:	; input = £temporary1301
x3035:	mov [bp + 12], bl	; 3: -120 94 12

scanString$19:	; goto 7
x3038:	jmp scanString$7	; 2: -21 -55

scanString$20:	; if string == 0 goto 82
x3040:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x3044:	je scanString$82	; 4: 15 -124 11 1

scanString$21:	; if precision != 0 goto 50
x3048:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x3052:	jne scanString$50	; 2: 117 121

scanString$22:	; call header integral zero 0 stack zero 0

scanString$23:	; £temporary1305 = int_to_int input (Signed_Char -> Signed_Int)
x3054:	mov al, [bp + 12]	; 3: -118 70 12
x3057:	and ax, 255	; 3: 37 -1 0
x3060:	cmp al, 0	; 2: 60 0
x3062:	jge scanString$24	; 2: 125 4
x3064:	neg al	; 2: -10 -40
x3066:	neg ax	; 2: -9 -40

scanString$24:	; parameter £temporary1305, offset 6
x3068:	mov [bp + 21], ax	; 3: -119 70 21

scanString$25:	; call function noellipse-noellipse isspace
x3071:	mov word [bp + 15], scanString$26	; 5: -57 70 15 13 12
x3076:	mov [bp + 17], bp	; 3: -119 110 17
x3079:	add bp, 15	; 3: -125 -59 15
x3082:	jmp isspace	; 3: -23 -50 1

scanString$26:	; post call

scanString$27:	; £temporary1306 = return_value

scanString$28:	; if £temporary1306 != 0 goto 45
x3085:	cmp bx, 0	; 3: -125 -5 0
x3088:	jne scanString$45	; 2: 117 69

scanString$29:	; £temporary1309 = int_to_int input (Signed_Char -> Signed_Int)
x3090:	mov al, [bp + 12]	; 3: -118 70 12
x3093:	and ax, 255	; 3: 37 -1 0
x3096:	cmp al, 0	; 2: 60 0
x3098:	jge scanString$30	; 2: 125 4
x3100:	neg al	; 2: -10 -40
x3102:	neg ax	; 2: -9 -40

scanString$30:	; if £temporary1309 == -1 goto 45
x3104:	cmp ax, -1	; 3: -125 -8 -1
x3107:	je scanString$45	; 2: 116 50

scanString$31:	; if input == 10 goto 45
x3109:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x3113:	je scanString$45	; 2: 116 44

scanString$32:	; £temporary1314 = index
x3115:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$33:	; ++index
x3118:	inc word [bp + 10]	; 3: -1 70 10

scanString$34:	; £temporary1316 = string + £temporary1314
x3121:	mov si, [bp + 6]	; 3: -117 118 6
x3124:	add si, ax	; 2: 1 -58

scanString$35:	; £temporary1315 -> £temporary1316 = *£temporary1316

scanString$36:	; £temporary1315 -> £temporary1316 = input
x3126:	mov al, [bp + 12]	; 3: -118 70 12
x3129:	mov [si], al	; 2: -120 4

scanString$37:	; call header integral zero 0 stack zero 0

scanString$38:	; call function noellipse-noellipse scanChar
x3131:	mov word [bp + 15], scanString$39	; 5: -57 70 15 73 12
x3136:	mov [bp + 17], bp	; 3: -119 110 17
x3139:	add bp, 15	; 3: -125 -59 15
x3142:	jmp scanChar	; 3: -23 -42 -2

scanString$39:	; post call

scanString$40:	; £temporary1317 = return_value

scanString$41:	; input = £temporary1317
x3145:	mov [bp + 12], bl	; 3: -120 94 12

scanString$42:	; found = 1
x3148:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$43:	; ++g_inChars
x3153:	inc word [g_inChars]	; 4: -1 6 8 11

scanString$44:	; goto 22
x3157:	jmp scanString$22	; 2: -21 -105

scanString$45:	; £temporary1320 = string + index
x3159:	mov si, [bp + 6]	; 3: -117 118 6
x3162:	add si, [bp + 10]	; 3: 3 118 10

scanString$46:	; £temporary1319 -> £temporary1320 = *£temporary1320

scanString$47:	; £temporary1319 -> £temporary1320 = 0
x3165:	mov byte [si], 0	; 3: -58 4 0

scanString$48:	; ++g_inChars
x3168:	inc word [g_inChars]	; 4: -1 6 8 11

scanString$49:	; goto 126
x3172:	jmp scanString$126	; 3: -23 95 1

scanString$50:	; £temporary1322 = precision
x3175:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$51:	; --precision
x3178:	dec word [bp + 8]	; 3: -1 78 8

scanString$52:	; if £temporary1322 <= 0 goto 76
x3181:	cmp ax, 0	; 3: -125 -8 0
x3184:	jle scanString$76	; 2: 126 105

scanString$53:	; call header integral zero 0 stack zero 0

scanString$54:	; £temporary1324 = int_to_int input (Signed_Char -> Signed_Int)
x3186:	mov al, [bp + 12]	; 3: -118 70 12
x3189:	and ax, 255	; 3: 37 -1 0
x3192:	cmp al, 0	; 2: 60 0
x3194:	jge scanString$55	; 2: 125 4
x3196:	neg al	; 2: -10 -40
x3198:	neg ax	; 2: -9 -40

scanString$55:	; parameter £temporary1324, offset 6
x3200:	mov [bp + 21], ax	; 3: -119 70 21

scanString$56:	; call function noellipse-noellipse isspace
x3203:	mov word [bp + 15], scanString$57	; 5: -57 70 15 -111 12
x3208:	mov [bp + 17], bp	; 3: -119 110 17
x3211:	add bp, 15	; 3: -125 -59 15
x3214:	jmp isspace	; 3: -23 74 1

scanString$57:	; post call

scanString$58:	; £temporary1325 = return_value

scanString$59:	; if £temporary1325 != 0 goto 76
x3217:	cmp bx, 0	; 3: -125 -5 0
x3220:	jne scanString$76	; 2: 117 69

scanString$60:	; £temporary1328 = int_to_int input (Signed_Char -> Signed_Int)
x3222:	mov al, [bp + 12]	; 3: -118 70 12
x3225:	and ax, 255	; 3: 37 -1 0
x3228:	cmp al, 0	; 2: 60 0
x3230:	jge scanString$61	; 2: 125 4
x3232:	neg al	; 2: -10 -40
x3234:	neg ax	; 2: -9 -40

scanString$61:	; if £temporary1328 == -1 goto 76
x3236:	cmp ax, -1	; 3: -125 -8 -1
x3239:	je scanString$76	; 2: 116 50

scanString$62:	; if input == 10 goto 76
x3241:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x3245:	je scanString$76	; 2: 116 44

scanString$63:	; £temporary1334 = index
x3247:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$64:	; ++index
x3250:	inc word [bp + 10]	; 3: -1 70 10

scanString$65:	; £temporary1336 = string + £temporary1334
x3253:	mov si, [bp + 6]	; 3: -117 118 6
x3256:	add si, ax	; 2: 1 -58

scanString$66:	; £temporary1335 -> £temporary1336 = *£temporary1336

scanString$67:	; £temporary1335 -> £temporary1336 = input
x3258:	mov al, [bp + 12]	; 3: -118 70 12
x3261:	mov [si], al	; 2: -120 4

scanString$68:	; call header integral zero 0 stack zero 0

scanString$69:	; call function noellipse-noellipse scanChar
x3263:	mov word [bp + 15], scanString$70	; 5: -57 70 15 -51 12
x3268:	mov [bp + 17], bp	; 3: -119 110 17
x3271:	add bp, 15	; 3: -125 -59 15
x3274:	jmp scanChar	; 3: -23 82 -2

scanString$70:	; post call

scanString$71:	; £temporary1337 = return_value

scanString$72:	; input = £temporary1337
x3277:	mov [bp + 12], bl	; 3: -120 94 12

scanString$73:	; found = 1
x3280:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$74:	; ++g_inChars
x3285:	inc word [g_inChars]	; 4: -1 6 8 11

scanString$75:	; goto 50
x3289:	jmp scanString$50	; 2: -21 -116

scanString$76:	; if precision <= 0 goto 126
x3291:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x3295:	jle scanString$126	; 4: 15 -114 -29 0

scanString$77:	; £temporary1341 = string + index
x3299:	mov si, [bp + 6]	; 3: -117 118 6
x3302:	add si, [bp + 10]	; 3: 3 118 10

scanString$78:	; £temporary1340 -> £temporary1341 = *£temporary1341

scanString$79:	; £temporary1340 -> £temporary1341 = 0
x3305:	mov byte [si], 0	; 3: -58 4 0

scanString$80:	; ++g_inChars
x3308:	inc word [g_inChars]	; 4: -1 6 8 11

scanString$81:	; goto 126
x3312:	jmp scanString$126	; 3: -23 -45 0

scanString$82:	; if precision != 0 goto 103
x3315:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x3319:	jne scanString$103	; 2: 117 95

scanString$83:	; call header integral zero 0 stack zero 0

scanString$84:	; £temporary1344 = int_to_int input (Signed_Char -> Signed_Int)
x3321:	mov al, [bp + 12]	; 3: -118 70 12
x3324:	and ax, 255	; 3: 37 -1 0
x3327:	cmp al, 0	; 2: 60 0
x3329:	jge scanString$85	; 2: 125 4
x3331:	neg al	; 2: -10 -40
x3333:	neg ax	; 2: -9 -40

scanString$85:	; parameter £temporary1344, offset 6
x3335:	mov [bp + 21], ax	; 3: -119 70 21

scanString$86:	; call function noellipse-noellipse isspace
x3338:	mov word [bp + 15], scanString$87	; 5: -57 70 15 24 13
x3343:	mov [bp + 17], bp	; 3: -119 110 17
x3346:	add bp, 15	; 3: -125 -59 15
x3349:	jmp isspace	; 3: -23 -61 0

scanString$87:	; post call

scanString$88:	; £temporary1345 = return_value

scanString$89:	; if £temporary1345 != 0 goto 101
x3352:	cmp bx, 0	; 3: -125 -5 0
x3355:	jne scanString$101	; 2: 117 53

scanString$90:	; £temporary1348 = int_to_int input (Signed_Char -> Signed_Int)
x3357:	mov al, [bp + 12]	; 3: -118 70 12
x3360:	and ax, 255	; 3: 37 -1 0
x3363:	cmp al, 0	; 2: 60 0
x3365:	jge scanString$91	; 2: 125 4
x3367:	neg al	; 2: -10 -40
x3369:	neg ax	; 2: -9 -40

scanString$91:	; if £temporary1348 == -1 goto 101
x3371:	cmp ax, -1	; 3: -125 -8 -1
x3374:	je scanString$101	; 2: 116 34

scanString$92:	; if input == 10 goto 101
x3376:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x3380:	je scanString$101	; 2: 116 28

scanString$93:	; call header integral zero 0 stack zero 0

scanString$94:	; call function noellipse-noellipse scanChar
x3382:	mov word [bp + 15], scanString$95	; 5: -57 70 15 68 13
x3387:	mov [bp + 17], bp	; 3: -119 110 17
x3390:	add bp, 15	; 3: -125 -59 15
x3393:	jmp scanChar	; 3: -23 -37 -3

scanString$95:	; post call

scanString$96:	; £temporary1353 = return_value

scanString$97:	; input = £temporary1353
x3396:	mov [bp + 12], bl	; 3: -120 94 12

scanString$98:	; found = 1
x3399:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$99:	; ++g_inChars
x3404:	inc word [g_inChars]	; 4: -1 6 8 11

scanString$100:	; goto 83
x3408:	jmp scanString$83	; 2: -21 -89

scanString$101:	; ++g_inChars
x3410:	inc word [g_inChars]	; 4: -1 6 8 11

scanString$102:	; goto 126
x3414:	jmp scanString$126	; 2: -21 110

scanString$103:	; £temporary1356 = precision
x3416:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$104:	; --precision
x3419:	dec word [bp + 8]	; 3: -1 78 8

scanString$105:	; if £temporary1356 <= 0 goto 124
x3422:	cmp ax, 0	; 3: -125 -8 0
x3425:	jle scanString$124	; 2: 126 89

scanString$106:	; call header integral zero 0 stack zero 0

scanString$107:	; £temporary1358 = int_to_int input (Signed_Char -> Signed_Int)
x3427:	mov al, [bp + 12]	; 3: -118 70 12
x3430:	and ax, 255	; 3: 37 -1 0
x3433:	cmp al, 0	; 2: 60 0
x3435:	jge scanString$108	; 2: 125 4
x3437:	neg al	; 2: -10 -40
x3439:	neg ax	; 2: -9 -40

scanString$108:	; parameter £temporary1358, offset 6
x3441:	mov [bp + 21], ax	; 3: -119 70 21

scanString$109:	; call function noellipse-noellipse isspace
x3444:	mov word [bp + 15], scanString$110	; 5: -57 70 15 -126 13
x3449:	mov [bp + 17], bp	; 3: -119 110 17
x3452:	add bp, 15	; 3: -125 -59 15
x3455:	nop	; 1: -112
x3456:	jmp isspace	; 2: -21 89

scanString$110:	; post call

scanString$111:	; £temporary1359 = return_value

scanString$112:	; if £temporary1359 != 0 goto 124
x3458:	cmp bx, 0	; 3: -125 -5 0
x3461:	jne scanString$124	; 2: 117 53

scanString$113:	; £temporary1362 = int_to_int input (Signed_Char -> Signed_Int)
x3463:	mov al, [bp + 12]	; 3: -118 70 12
x3466:	and ax, 255	; 3: 37 -1 0
x3469:	cmp al, 0	; 2: 60 0
x3471:	jge scanString$114	; 2: 125 4
x3473:	neg al	; 2: -10 -40
x3475:	neg ax	; 2: -9 -40

scanString$114:	; if £temporary1362 == -1 goto 124
x3477:	cmp ax, -1	; 3: -125 -8 -1
x3480:	je scanString$124	; 2: 116 34

scanString$115:	; if input == 10 goto 124
x3482:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x3486:	je scanString$124	; 2: 116 28

scanString$116:	; call header integral zero 0 stack zero 0

scanString$117:	; call function noellipse-noellipse scanChar
x3488:	mov word [bp + 15], scanString$118	; 5: -57 70 15 -82 13
x3493:	mov [bp + 17], bp	; 3: -119 110 17
x3496:	add bp, 15	; 3: -125 -59 15
x3499:	jmp scanChar	; 3: -23 113 -3

scanString$118:	; post call

scanString$119:	; £temporary1368 = return_value

scanString$120:	; input = £temporary1368
x3502:	mov [bp + 12], bl	; 3: -120 94 12

scanString$121:	; found = 1
x3505:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$122:	; ++g_inChars
x3510:	inc word [g_inChars]	; 4: -1 6 8 11

scanString$123:	; goto 103
x3514:	jmp scanString$103	; 2: -21 -100

scanString$124:	; if precision <= 0 goto 126
x3516:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x3520:	jle scanString$126	; 2: 126 4

scanString$125:	; ++g_inChars
x3522:	inc word [g_inChars]	; 4: -1 6 8 11

scanString$126:	; if found == 0 goto 128
x3526:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x3530:	je scanString$128	; 2: 116 4

scanString$127:	; ++g_inCount
x3532:	inc word [g_inCount]	; 4: -1 6 6 11

scanString$128:	; return
x3536:	mov ax, [bp]	; 3: -117 70 0
x3539:	mov di, [bp + 4]	; 3: -117 126 4
x3542:	mov bp, [bp + 2]	; 3: -117 110 2
x3545:	jmp ax	; 2: -1 -32

scanString$129:	; function end scanString

isspace:	; if c == 32 goto 6
x3547:	cmp word [bp + 6], 32	; 4: -125 126 6 32
x3551:	je isspace$6	; 2: 116 30

isspace$1:	; if c == 12 goto 6
x3553:	cmp word [bp + 6], 12	; 4: -125 126 6 12
x3557:	je isspace$6	; 2: 116 24

isspace$2:	; if c == 10 goto 6
x3559:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x3563:	je isspace$6	; 2: 116 18

isspace$3:	; if c == 13 goto 6
x3565:	cmp word [bp + 6], 13	; 4: -125 126 6 13
x3569:	je isspace$6	; 2: 116 12

isspace$4:	; if c == 9 goto 6
x3571:	cmp word [bp + 6], 9	; 4: -125 126 6 9
x3575:	je isspace$6	; 2: 116 6

isspace$5:	; if c != 11 goto 8
x3577:	cmp word [bp + 6], 11	; 4: -125 126 6 11
x3581:	jne isspace$8	; 2: 117 5

isspace$6:	; £temporary462 = 1
x3583:	mov bx, 1	; 3: -69 1 0

isspace$7:	; goto 9
x3586:	jmp isspace$9	; 2: -21 3

isspace$8:	; £temporary462 = 0
x3588:	mov bx, 0	; 3: -69 0 0

isspace$9:	; return_value = £temporary462

isspace$10:	; return
x3591:	mov ax, [bp]	; 3: -117 70 0
x3594:	mov di, [bp + 4]	; 3: -117 126 4
x3597:	mov bp, [bp + 2]	; 3: -117 110 2
x3600:	jmp ax	; 2: -1 -32

isspace$11:	; function end isspace

scanLongInt:	; longValue = 0
x3602:	mov dword [bp + 6], 0	; 8: 102 -57 70 6 0 0 0 0

scanLongInt$1:	; minus = 0
x3610:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanLongInt$2:	; found = 0
x3615:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanLongInt$3:	; call header integral zero 0 stack zero 0

scanLongInt$4:	; call function noellipse-noellipse scanChar
x3620:	mov word [bp + 14], scanLongInt$5	; 5: -57 70 14 50 14
x3625:	mov [bp + 16], bp	; 3: -119 110 16
x3628:	add bp, 14	; 3: -125 -59 14
x3631:	jmp scanChar	; 3: -23 -19 -4

scanLongInt$5:	; post call

scanLongInt$6:	; £temporary1395 = return_value

scanLongInt$7:	; input = £temporary1395
x3634:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$8:	; call header integral zero 0 stack zero 0

scanLongInt$9:	; £temporary1396 = int_to_int input (Signed_Char -> Signed_Int)
x3637:	mov al, [bp + 14]	; 3: -118 70 14
x3640:	and ax, 255	; 3: 37 -1 0
x3643:	cmp al, 0	; 2: 60 0
x3645:	jge scanLongInt$10	; 2: 125 4
x3647:	neg al	; 2: -10 -40
x3649:	neg ax	; 2: -9 -40

scanLongInt$10:	; parameter £temporary1396, offset 6
x3651:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$11:	; call function noellipse-noellipse isspace
x3654:	mov word [bp + 15], scanLongInt$12	; 5: -57 70 15 84 14
x3659:	mov [bp + 17], bp	; 3: -119 110 17
x3662:	add bp, 15	; 3: -125 -59 15
x3665:	nop	; 1: -112
x3666:	jmp isspace	; 2: -21 -121

scanLongInt$12:	; post call

scanLongInt$13:	; £temporary1397 = return_value

scanLongInt$14:	; if £temporary1397 == 0 goto 21
x3668:	cmp bx, 0	; 3: -125 -5 0
x3671:	je scanLongInt$21	; 2: 116 19

scanLongInt$15:	; call header integral zero 0 stack zero 0

scanLongInt$16:	; call function noellipse-noellipse scanChar
x3673:	mov word [bp + 15], scanLongInt$17	; 5: -57 70 15 103 14
x3678:	mov [bp + 17], bp	; 3: -119 110 17
x3681:	add bp, 15	; 3: -125 -59 15
x3684:	jmp scanChar	; 3: -23 -72 -4

scanLongInt$17:	; post call

scanLongInt$18:	; £temporary1398 = return_value

scanLongInt$19:	; input = £temporary1398
x3687:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$20:	; goto 8
x3690:	jmp scanLongInt$8	; 2: -21 -55

scanLongInt$21:	; if input != 43 goto 28
x3692:	cmp byte [bp + 14], 43	; 4: -128 126 14 43
x3696:	jne scanLongInt$28	; 2: 117 19

scanLongInt$22:	; call header integral zero 0 stack zero 0

scanLongInt$23:	; call function noellipse-noellipse scanChar
x3698:	mov word [bp + 15], scanLongInt$24	; 5: -57 70 15 -128 14
x3703:	mov [bp + 17], bp	; 3: -119 110 17
x3706:	add bp, 15	; 3: -125 -59 15
x3709:	jmp scanChar	; 3: -23 -97 -4

scanLongInt$24:	; post call

scanLongInt$25:	; £temporary1401 = return_value

scanLongInt$26:	; input = £temporary1401
x3712:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$27:	; goto 35
x3715:	jmp scanLongInt$35	; 2: -21 28

scanLongInt$28:	; if input != 45 goto 35
x3717:	cmp byte [bp + 14], 45	; 4: -128 126 14 45
x3721:	jne scanLongInt$35	; 2: 117 22

scanLongInt$29:	; minus = 1
x3723:	mov word [bp + 10], 1	; 5: -57 70 10 1 0

scanLongInt$30:	; call header integral zero 0 stack zero 0

scanLongInt$31:	; call function noellipse-noellipse scanChar
x3728:	mov word [bp + 15], scanLongInt$32	; 5: -57 70 15 -98 14
x3733:	mov [bp + 17], bp	; 3: -119 110 17
x3736:	add bp, 15	; 3: -125 -59 15
x3739:	jmp scanChar	; 3: -23 -127 -4

scanLongInt$32:	; post call

scanLongInt$33:	; £temporary1403 = return_value

scanLongInt$34:	; input = £temporary1403
x3742:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$35:	; call header integral zero 0 stack zero 0

scanLongInt$36:	; £temporary1404 = int_to_int input (Signed_Char -> Signed_Int)
x3745:	mov al, [bp + 14]	; 3: -118 70 14
x3748:	and ax, 255	; 3: 37 -1 0
x3751:	cmp al, 0	; 2: 60 0
x3753:	jge scanLongInt$37	; 2: 125 4
x3755:	neg al	; 2: -10 -40
x3757:	neg ax	; 2: -9 -40

scanLongInt$37:	; parameter £temporary1404, offset 6
x3759:	mov [bp + 21], ax	; 3: -119 70 21

scanLongInt$38:	; call function noellipse-noellipse isdigit
x3762:	mov word [bp + 15], scanLongInt$39	; 5: -57 70 15 -64 14
x3767:	mov [bp + 17], bp	; 3: -119 110 17
x3770:	add bp, 15	; 3: -125 -59 15
x3773:	jmp isdigit	; 3: -23 -119 0

scanLongInt$39:	; post call

scanLongInt$40:	; £temporary1405 = return_value

scanLongInt$41:	; if £temporary1405 == 0 goto 53
x3776:	cmp bx, 0	; 3: -125 -5 0
x3779:	je scanLongInt$53	; 2: 116 66

scanLongInt$42:	; £temporary1406 = longValue * 10
x3781:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x3785:	xor edx, edx	; 3: 102 49 -46
x3788:	imul dword [int4$10#]	; 5: 102 -9 46 69 15

scanLongInt$43:	; £temporary1407 = input - 48
x3793:	mov bl, [bp + 14]	; 3: -118 94 14
x3796:	sub bl, 48	; 3: -128 -21 48

scanLongInt$44:	; £temporary1408 = int_to_int £temporary1407 (Signed_Char -> Signed_Long_Int)
x3799:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0
x3806:	cmp bl, 0	; 3: -128 -5 0
x3809:	jge scanLongInt$45	; 2: 125 5
x3811:	neg bl	; 2: -10 -37
x3813:	neg ebx	; 3: 102 -9 -37

scanLongInt$45:	; longValue = £temporary1406 + £temporary1408
x3816:	add eax, ebx	; 3: 102 1 -40
x3819:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$46:	; call header integral zero 0 stack zero 0

scanLongInt$47:	; call function noellipse-noellipse scanChar
x3823:	mov word [bp + 15], scanLongInt$48	; 5: -57 70 15 -3 14
x3828:	mov [bp + 17], bp	; 3: -119 110 17
x3831:	add bp, 15	; 3: -125 -59 15
x3834:	jmp scanChar	; 3: -23 34 -4

scanLongInt$48:	; post call

scanLongInt$49:	; £temporary1410 = return_value

scanLongInt$50:	; input = £temporary1410
x3837:	mov [bp + 14], bl	; 3: -120 94 14

scanLongInt$51:	; found = 1
x3840:	mov word [bp + 12], 1	; 5: -57 70 12 1 0

scanLongInt$52:	; goto 35
x3845:	jmp scanLongInt$35	; 2: -21 -102

scanLongInt$53:	; if minus == 0 goto 56
x3847:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x3851:	je scanLongInt$56	; 2: 116 11

scanLongInt$54:	; £temporary1412 = -longValue
x3853:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x3857:	neg eax	; 3: 102 -9 -40

scanLongInt$55:	; longValue = £temporary1412
x3860:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanLongInt$56:	; if found == 0 goto 58
x3864:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x3868:	je scanLongInt$58	; 2: 116 4

scanLongInt$57:	; ++g_inCount
x3870:	inc word [g_inCount]	; 4: -1 6 6 11

scanLongInt$58:	; call header integral zero 0 stack zero 0

scanLongInt$59:	; parameter input, offset 6
x3874:	mov al, [bp + 14]	; 3: -118 70 14
x3877:	mov [bp + 21], al	; 3: -120 70 21

scanLongInt$60:	; call function noellipse-noellipse unscanChar
x3880:	mov word [bp + 15], scanLongInt$61	; 5: -57 70 15 54 15
x3885:	mov [bp + 17], bp	; 3: -119 110 17
x3888:	add bp, 15	; 3: -125 -59 15
x3891:	nop	; 1: -112
x3892:	jmp unscanChar	; 2: -21 50

scanLongInt$61:	; post call

scanLongInt$62:	; return_value = longValue
x3894:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

scanLongInt$63:	; return
x3898:	mov ax, [bp]	; 3: -117 70 0
x3901:	mov di, [bp + 4]	; 3: -117 126 4
x3904:	mov bp, [bp + 2]	; 3: -117 110 2
x3907:	jmp ax	; 2: -1 -32

scanLongInt$64:	; function end scanLongInt

int4$10#:
x3909:	dd 10	; 4: 10 0 0 0

isdigit:	; if c < 48 goto 4
x3913:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x3917:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x3919:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x3923:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary406 = 1
x3925:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x3928:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary406 = 0
x3930:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary406

isdigit$6:	; return
x3933:	mov ax, [bp]	; 3: -117 70 0
x3936:	mov di, [bp + 4]	; 3: -117 126 4
x3939:	mov bp, [bp + 2]	; 3: -117 110 2
x3942:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

unscanChar:	; case g_inStatus == 0 goto 4
x3944:	mov ax, [g_inStatus]	; 3: -95 -32 5
x3947:	cmp ax, 0	; 3: -125 -8 0
x3950:	je unscanChar$4	; 2: 116 7

unscanChar$1:	; case g_inStatus == 1 goto 6
x3952:	cmp ax, 1	; 3: -125 -8 1
x3955:	je unscanChar$6	; 2: 116 8

unscanChar$2:	; case end g_inStatus

unscanChar$3:	; goto 7
x3957:	jmp unscanChar$7	; 2: -21 10

unscanChar$4:	; --g_inChars
x3959:	dec word [g_inChars]	; 4: -1 14 8 11

unscanChar$5:	; goto 7
x3963:	jmp unscanChar$7	; 2: -21 4

unscanChar$6:	; --g_inChars
x3965:	dec word [g_inChars]	; 4: -1 14 8 11

unscanChar$7:	; return
x3969:	mov ax, [bp]	; 3: -117 70 0
x3972:	mov di, [bp + 4]	; 3: -117 126 4
x3975:	mov bp, [bp + 2]	; 3: -117 110 2
x3978:	jmp ax	; 2: -1 -32

unscanChar$8:	; function end unscanChar

scanUnsignedLongInt:	; unsignedLongValue = 0
x3980:	mov dword [bp + 10], 0	; 8: 102 -57 70 10 0 0 0 0

scanUnsignedLongInt$1:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$2:	; call function noellipse-noellipse scanChar
x3988:	mov word [bp + 18], scanUnsignedLongInt$3	; 5: -57 70 18 -94 15
x3993:	mov [bp + 20], bp	; 3: -119 110 20
x3996:	add bp, 18	; 3: -125 -59 18
x3999:	jmp scanChar	; 3: -23 125 -5

scanUnsignedLongInt$3:	; post call

scanUnsignedLongInt$4:	; £temporary1420 = return_value

scanUnsignedLongInt$5:	; input = £temporary1420
x4002:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$6:	; found = 1
x4005:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$7:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$8:	; £temporary1421 = int_to_int input (Signed_Char -> Signed_Int)
x4010:	mov al, [bp + 18]	; 3: -118 70 18
x4013:	and ax, 255	; 3: 37 -1 0
x4016:	cmp al, 0	; 2: 60 0
x4018:	jge scanUnsignedLongInt$9	; 2: 125 4
x4020:	neg al	; 2: -10 -40
x4022:	neg ax	; 2: -9 -40

scanUnsignedLongInt$9:	; parameter £temporary1421, offset 6
x4024:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$10:	; call function noellipse-noellipse isspace
x4027:	mov word [bp + 21], scanUnsignedLongInt$11	; 5: -57 70 21 -55 15
x4032:	mov [bp + 23], bp	; 3: -119 110 23
x4035:	add bp, 21	; 3: -125 -59 21
x4038:	jmp isspace	; 3: -23 18 -2

scanUnsignedLongInt$11:	; post call

scanUnsignedLongInt$12:	; £temporary1422 = return_value

scanUnsignedLongInt$13:	; if £temporary1422 == 0 goto 20
x4041:	cmp bx, 0	; 3: -125 -5 0
x4044:	je scanUnsignedLongInt$20	; 2: 116 19

scanUnsignedLongInt$14:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$15:	; call function noellipse-noellipse scanChar
x4046:	mov word [bp + 21], scanUnsignedLongInt$16	; 5: -57 70 21 -36 15
x4051:	mov [bp + 23], bp	; 3: -119 110 23
x4054:	add bp, 21	; 3: -125 -59 21
x4057:	jmp scanChar	; 3: -23 67 -5

scanUnsignedLongInt$16:	; post call

scanUnsignedLongInt$17:	; £temporary1423 = return_value

scanUnsignedLongInt$18:	; input = £temporary1423
x4060:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$19:	; goto 7
x4063:	jmp scanUnsignedLongInt$7	; 2: -21 -55

scanUnsignedLongInt$20:	; if input != 48 goto 49
x4065:	cmp byte [bp + 18], 48	; 4: -128 126 18 48
x4069:	jne scanUnsignedLongInt$49	; 2: 117 118

scanUnsignedLongInt$21:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$22:	; call function noellipse-noellipse scanChar
x4071:	mov word [bp + 21], scanUnsignedLongInt$23	; 5: -57 70 21 -11 15
x4076:	mov [bp + 23], bp	; 3: -119 110 23
x4079:	add bp, 21	; 3: -125 -59 21
x4082:	jmp scanChar	; 3: -23 42 -5

scanUnsignedLongInt$23:	; post call

scanUnsignedLongInt$24:	; £temporary1426 = return_value

scanUnsignedLongInt$25:	; input = £temporary1426
x4085:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$26:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$27:	; £temporary1427 = int_to_int input (Signed_Char -> Signed_Int)
x4088:	mov al, [bp + 18]	; 3: -118 70 18
x4091:	and ax, 255	; 3: 37 -1 0
x4094:	cmp al, 0	; 2: 60 0
x4096:	jge scanUnsignedLongInt$28	; 2: 125 4
x4098:	neg al	; 2: -10 -40
x4100:	neg ax	; 2: -9 -40

scanUnsignedLongInt$28:	; parameter £temporary1427, offset 6
x4102:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$29:	; call function noellipse-noellipse tolower
x4105:	mov word [bp + 21], scanUnsignedLongInt$30	; 5: -57 70 21 23 16
x4110:	mov [bp + 23], bp	; 3: -119 110 23
x4113:	add bp, 21	; 3: -125 -59 21
x4116:	jmp tolower	; 3: -23 -13 0

scanUnsignedLongInt$30:	; post call

scanUnsignedLongInt$31:	; £temporary1428 = return_value

scanUnsignedLongInt$32:	; if £temporary1428 != 120 goto 44
x4119:	cmp bx, 120	; 3: -125 -5 120
x4122:	jne scanUnsignedLongInt$44	; 2: 117 42

scanUnsignedLongInt$33:	; if base != 0 goto 36
x4124:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4129:	jne scanUnsignedLongInt$36	; 2: 117 8

scanUnsignedLongInt$34:	; £temporary1434 = 16
x4131:	mov eax, 16	; 6: 102 -72 16 0 0 0

scanUnsignedLongInt$35:	; goto 37
x4137:	jmp scanUnsignedLongInt$37	; 2: -21 4

scanUnsignedLongInt$36:	; £temporary1434 = base
x4139:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$37:	; base = £temporary1434
x4143:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$38:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$39:	; call function noellipse-noellipse scanChar
x4147:	mov word [bp + 21], scanUnsignedLongInt$40	; 5: -57 70 21 65 16
x4152:	mov [bp + 23], bp	; 3: -119 110 23
x4155:	add bp, 21	; 3: -125 -59 21
x4158:	jmp scanChar	; 3: -23 -34 -6

scanUnsignedLongInt$40:	; post call

scanUnsignedLongInt$41:	; £temporary1435 = return_value

scanUnsignedLongInt$42:	; input = £temporary1435
x4161:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$43:	; goto 49
x4164:	jmp scanUnsignedLongInt$49	; 2: -21 23

scanUnsignedLongInt$44:	; if base != 0 goto 47
x4166:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4171:	jne scanUnsignedLongInt$47	; 2: 117 8

scanUnsignedLongInt$45:	; £temporary1440 = 8
x4173:	mov eax, 8	; 6: 102 -72 8 0 0 0

scanUnsignedLongInt$46:	; goto 48
x4179:	jmp scanUnsignedLongInt$48	; 2: -21 4

scanUnsignedLongInt$47:	; £temporary1440 = base
x4181:	mov eax, [bp + 6]	; 4: 102 -117 70 6

scanUnsignedLongInt$48:	; base = £temporary1440
x4185:	mov [bp + 6], eax	; 4: 102 -119 70 6

scanUnsignedLongInt$49:	; if base != 0 goto 51
x4189:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4194:	jne scanUnsignedLongInt$51	; 2: 117 8

scanUnsignedLongInt$50:	; base = 10
x4196:	mov dword [bp + 6], 10	; 8: 102 -57 70 6 10 0 0 0

scanUnsignedLongInt$51:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$52:	; £temporary1442 = int_to_int input (Signed_Char -> Signed_Int)
x4204:	mov al, [bp + 18]	; 3: -118 70 18
x4207:	and ax, 255	; 3: 37 -1 0
x4210:	cmp al, 0	; 2: 60 0
x4212:	jge scanUnsignedLongInt$53	; 2: 125 4
x4214:	neg al	; 2: -10 -40
x4216:	neg ax	; 2: -9 -40

scanUnsignedLongInt$53:	; parameter £temporary1442, offset 6
x4218:	mov [bp + 27], ax	; 3: -119 70 27

scanUnsignedLongInt$54:	; call function noellipse-noellipse isxdigit
x4221:	mov word [bp + 21], scanUnsignedLongInt$55	; 5: -57 70 21 -117 16
x4226:	mov [bp + 23], bp	; 3: -119 110 23
x4229:	add bp, 21	; 3: -125 -59 21
x4232:	jmp isxdigit	; 3: -23 29 5

scanUnsignedLongInt$55:	; post call

scanUnsignedLongInt$56:	; £temporary1443 = return_value

scanUnsignedLongInt$57:	; if £temporary1443 == 0 goto 74
x4235:	cmp bx, 0	; 3: -125 -5 0
x4238:	je scanUnsignedLongInt$74	; 2: 116 77

scanUnsignedLongInt$58:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$59:	; parameter input, offset 6
x4240:	mov al, [bp + 18]	; 3: -118 70 18
x4243:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$60:	; call function noellipse-noellipse digitToValue
x4246:	mov word [bp + 21], scanUnsignedLongInt$61	; 5: -57 70 21 -92 16
x4251:	mov [bp + 23], bp	; 3: -119 110 23
x4254:	add bp, 21	; 3: -125 -59 21
x4257:	jmp digitToValue	; 3: -23 72 5

scanUnsignedLongInt$61:	; post call

scanUnsignedLongInt$62:	; £temporary1444 = return_value

scanUnsignedLongInt$63:	; digit = £temporary1444
x4260:	mov [bp + 14], ebx	; 4: 102 -119 94 14

scanUnsignedLongInt$64:	; if digit >= base goto 74
x4264:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4268:	cmp [bp + 14], eax	; 4: 102 57 70 14
x4272:	jae scanUnsignedLongInt$74	; 2: 115 43

scanUnsignedLongInt$65:	; £temporary1446 = unsignedLongValue * base
x4274:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x4278:	xor edx, edx	; 3: 102 49 -46
x4281:	mul dword [bp + 6]	; 4: 102 -9 102 6

scanUnsignedLongInt$66:	; unsignedLongValue = £temporary1446 + digit
x4285:	add eax, [bp + 14]	; 4: 102 3 70 14
x4289:	mov [bp + 10], eax	; 4: 102 -119 70 10

scanUnsignedLongInt$67:	; found = 1
x4293:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanUnsignedLongInt$68:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$69:	; call function noellipse-noellipse scanChar
x4298:	mov word [bp + 21], scanUnsignedLongInt$70	; 5: -57 70 21 -40 16
x4303:	mov [bp + 23], bp	; 3: -119 110 23
x4306:	add bp, 21	; 3: -125 -59 21
x4309:	jmp scanChar	; 3: -23 71 -6

scanUnsignedLongInt$70:	; post call

scanUnsignedLongInt$71:	; £temporary1448 = return_value

scanUnsignedLongInt$72:	; input = £temporary1448
x4312:	mov [bp + 18], bl	; 3: -120 94 18

scanUnsignedLongInt$73:	; goto 51
x4315:	jmp scanUnsignedLongInt$51	; 2: -21 -113

scanUnsignedLongInt$74:	; if found == 0 goto 76
x4317:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x4321:	je scanUnsignedLongInt$76	; 2: 116 4

scanUnsignedLongInt$75:	; ++g_inCount
x4323:	inc word [g_inCount]	; 4: -1 6 6 11

scanUnsignedLongInt$76:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$77:	; parameter input, offset 6
x4327:	mov al, [bp + 18]	; 3: -118 70 18
x4330:	mov [bp + 27], al	; 3: -120 70 27

scanUnsignedLongInt$78:	; call function noellipse-noellipse unscanChar
x4333:	mov word [bp + 21], scanUnsignedLongInt$79	; 5: -57 70 21 -5 16
x4338:	mov [bp + 23], bp	; 3: -119 110 23
x4341:	add bp, 21	; 3: -125 -59 21
x4344:	jmp unscanChar	; 3: -23 109 -2

scanUnsignedLongInt$79:	; post call

scanUnsignedLongInt$80:	; return_value = unsignedLongValue
x4347:	mov ebx, [bp + 10]	; 4: 102 -117 94 10

scanUnsignedLongInt$81:	; return
x4351:	mov ax, [bp]	; 3: -117 70 0
x4354:	mov di, [bp + 4]	; 3: -117 126 4
x4357:	mov bp, [bp + 2]	; 3: -117 110 2
x4360:	jmp ax	; 2: -1 -32

scanUnsignedLongInt$82:	; function end scanUnsignedLongInt

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x4362:	mov ax, [bp + 6]	; 3: -117 70 6
x4365:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x4368:	mov word [bp + 8], tolower$3	; 5: -57 70 8 30 17
x4373:	mov [bp + 10], bp	; 3: -119 110 10
x4376:	add bp, 8	; 3: -125 -59 8
x4379:	jmp isupper	; 3: -23 -115 0

tolower$3:	; post call

tolower$4:	; £temporary463 = return_value

tolower$5:	; if £temporary463 == 0 goto 31
x4382:	cmp bx, 0	; 3: -125 -5 0
x4385:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x4387:	mov word [bp + 8], tolower$8	; 5: -57 70 8 49 17
x4392:	mov [bp + 10], bp	; 3: -119 110 10
x4395:	add bp, 8	; 3: -125 -59 8
x4398:	jmp localeconv	; 3: -23 -27 0

tolower$8:	; post call

tolower$9:	; £temporary464 = return_value

tolower$10:	; localeConvPtr = £temporary464
x4401:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x4404:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4408:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary466 -> localeConvPtr = *localeConvPtr, offset 12
x4410:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary466 -> localeConvPtr
x4413:	mov ax, [si + 12]	; 3: -117 68 12
x4416:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary467 -> localeConvPtr = *localeConvPtr, offset 14
x4419:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary467 -> localeConvPtr
x4422:	mov ax, [si + 14]	; 3: -117 68 14
x4425:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x4428:	mov ax, [bp + 12]	; 3: -117 70 12
x4431:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x4434:	mov ax, [bp + 6]	; 3: -117 70 6
x4437:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x4440:	mov word [bp + 14], tolower$20	; 5: -57 70 14 102 17
x4445:	mov [bp + 16], bp	; 3: -119 110 16
x4448:	add bp, 14	; 3: -125 -59 14
x4451:	jmp strchr	; 3: -23 -14 3

tolower$20:	; post call

tolower$21:	; £temporary468 = return_value

tolower$22:	; index = £temporary468 - upperCase
x4454:	sub bx, [bp + 12]	; 3: 43 94 12
x4457:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary471 = lowerCase + index
x4460:	mov si, [bp + 10]	; 3: -117 118 10
x4463:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary470 -> £temporary471 = *£temporary471

tolower$25:	; £temporary472 = int_to_int £temporary470 -> £temporary471 (Signed_Char -> Signed_Int)
x4466:	mov bl, [si]	; 2: -118 28
x4468:	and bx, 255	; 4: -127 -29 -1 0
x4472:	cmp bl, 0	; 3: -128 -5 0
x4475:	jge tolower$26	; 2: 125 4
x4477:	neg bl	; 2: -10 -37
x4479:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary472

tolower$27:	; return
x4481:	mov ax, [bp]	; 3: -117 70 0
x4484:	mov di, [bp + 4]	; 3: -117 126 4
x4487:	mov bp, [bp + 2]	; 3: -117 110 2
x4490:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary473 = c + 32
x4492:	mov bx, [bp + 6]	; 3: -117 94 6
x4495:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary473

tolower$30:	; return
x4498:	mov ax, [bp]	; 3: -117 70 0
x4501:	mov di, [bp + 4]	; 3: -117 126 4
x4504:	mov bp, [bp + 2]	; 3: -117 110 2
x4507:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x4509:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x4512:	mov ax, [bp]	; 3: -117 70 0
x4515:	mov di, [bp + 4]	; 3: -117 126 4
x4518:	mov bp, [bp + 2]	; 3: -117 110 2
x4521:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x4523:	mov word [bp + 8], isupper$2	; 5: -57 70 8 -71 17
x4528:	mov [bp + 10], bp	; 3: -119 110 10
x4531:	add bp, 8	; 3: -125 -59 8
x4534:	nop	; 1: -112
x4535:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary383 = return_value

isupper$4:	; localeConvPtr = £temporary383
x4537:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x4540:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4544:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary385 -> localeConvPtr = *localeConvPtr, offset 14
x4546:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary385 -> localeConvPtr, offset 6
x4549:	mov ax, [si + 14]	; 3: -117 68 14
x4552:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x4555:	mov ax, [bp + 6]	; 3: -117 70 6
x4558:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x4561:	mov word [bp + 10], isupper$11	; 5: -57 70 10 -33 17
x4566:	mov [bp + 12], bp	; 3: -119 110 12
x4569:	add bp, 10	; 3: -125 -59 10
x4572:	jmp strchr	; 3: -23 121 3

isupper$11:	; post call

isupper$12:	; £temporary386 = return_value

isupper$13:	; if £temporary386 == 0 goto 16
x4575:	cmp bx, 0	; 3: -125 -5 0
x4578:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary388 = 1
x4580:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x4583:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary388 = 0
x4585:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary388

isupper$18:	; return
x4588:	mov ax, [bp]	; 3: -117 70 0
x4591:	mov di, [bp + 4]	; 3: -117 126 4
x4594:	mov bp, [bp + 2]	; 3: -117 110 2
x4597:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x4599:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x4603:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x4605:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x4609:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary392 = 1
x4611:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x4614:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary392 = 0
x4616:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary392

isupper$25:	; return
x4619:	mov ax, [bp]	; 3: -117 70 0
x4622:	mov di, [bp + 4]	; 3: -117 126 4
x4625:	mov bp, [bp + 2]	; 3: -117 110 2
x4628:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x4630:	cmp word [@16$g_currStructPtr], 0	; 5: -125 62 52 18 0
x4635:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary516 -> g_currStructPtr = *g_currStructPtr, offset 2
x4637:	mov si, [@16$g_currStructPtr]	; 4: -117 54 52 18

localeconv$2:	; £temporary520 = £temporary516 -> g_currStructPtr
x4641:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x4644:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary520 = 0
x4646:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary520

localeconv$6:	; return
x4649:	mov ax, [bp]	; 3: -117 70 0
x4652:	mov di, [bp + 4]	; 3: -117 126 4
x4655:	mov bp, [bp + 2]	; 3: -117 110 2
x4658:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@16$g_currStructPtr:
x4660:	dw @14$sArray	; 2: 54 18

@14$sArray:
x4662:	dw string_# ; 2: 66 18
x4664:	dw @13$en_US_utf8	; 2: 67 18
x4666:	dw string_C# ; 2: 83 21
x4668:	dw @13$en_US_utf8	; 2: 67 18
x4670:	dw string_US# ; 2: 85 21
x4672:	dw @13$en_US_utf8	; 2: 67 18

string_#:
x4674:	db 0	; 1: 0

@13$en_US_utf8:
x4675:	dw -5	; 2: -5 -1
x4677:	dw -4	; 2: -4 -1
x4679:	dw @9$enShortDayList ; 2: 85 18
x4681:	dw @10$enLongDayList ; 2: 127 18
x4683:	dw @11$enShortMonthList ; 2: -58 18
x4685:	dw @12$enLongMonthList ; 2: 14 19
x4687:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: 120 19
x4689:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -109 19
x4691:	dw enMessageList ; 2: -82 19

@9$enShortDayList:
x4693:	dw string_Sun# ; 2: 99 18
x4695:	dw string_Mon# ; 2: 103 18
x4697:	dw string_Tue# ; 2: 107 18
x4699:	dw string_Wed# ; 2: 111 18
x4701:	dw string_Thu# ; 2: 115 18
x4703:	dw string_Fri# ; 2: 119 18
x4705:	dw string_Sat# ; 2: 123 18

string_Sun#:
x4707:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x4711:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x4715:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x4719:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x4723:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x4727:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x4731:	db "Sat", 0	; 4: 83 97 116 0

@10$enLongDayList:
x4735:	dw string_Sunday# ; 2: -115 18
x4737:	dw string_Monday# ; 2: -108 18
x4739:	dw string_Tuesday# ; 2: -101 18
x4741:	dw string_Wednesday# ; 2: -93 18
x4743:	dw string_Thursday# ; 2: -83 18
x4745:	dw string_Friday# ; 2: -74 18
x4747:	dw string_Saturday# ; 2: -67 18

string_Sunday#:
x4749:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x4756:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x4763:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x4771:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x4781:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x4790:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x4797:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@11$enShortMonthList:
x4806:	dw string_Jan# ; 2: -34 18
x4808:	dw string_Feb# ; 2: -30 18
x4810:	dw string_Mar# ; 2: -26 18
x4812:	dw string_Apr# ; 2: -22 18
x4814:	dw string_May# ; 2: -18 18
x4816:	dw string_Jun# ; 2: -14 18
x4818:	dw string_Jul# ; 2: -10 18
x4820:	dw string_Aug# ; 2: -6 18
x4822:	dw string_Sep# ; 2: -2 18
x4824:	dw string_Oct# ; 2: 2 19
x4826:	dw string_Nov# ; 2: 6 19
x4828:	dw string_Dec# ; 2: 10 19

string_Jan#:
x4830:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x4834:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x4838:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x4842:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x4846:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x4850:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x4854:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x4858:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x4862:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x4866:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x4870:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x4874:	db "Dec", 0	; 4: 68 101 99 0

@12$enLongMonthList:
x4878:	dw string_January# ; 2: 38 19
x4880:	dw string_February# ; 2: 46 19
x4882:	dw string_March# ; 2: 55 19
x4884:	dw string_April# ; 2: 61 19
x4886:	dw string_May# ; 2: -18 18
x4888:	dw string_June# ; 2: 67 19
x4890:	dw string_July# ; 2: 72 19
x4892:	dw string_August# ; 2: 77 19
x4894:	dw string_September# ; 2: 84 19
x4896:	dw string_October# ; 2: 94 19
x4898:	dw string_November# ; 2: 102 19
x4900:	dw string_December# ; 2: 111 19

string_January#:
x4902:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x4910:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x4919:	db "March", 0	; 6: 77 97 114 99 104 0

string_April#:
x4925:	db "April", 0	; 6: 65 112 114 105 108 0

string_June#:
x4931:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x4936:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x4941:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_September#:
x4948:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_October#:
x4958:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

string_November#:
x4966:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x4975:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x4984:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x5011:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

enMessageList:
x5038:	dw string_no20error# ; 2: -42 19
x5040:	dw string_function20number20invalid# ; 2: -33 19
x5042:	dw string_file20not20found# ; 2: -9 19
x5044:	dw string_path20not20found# ; 2: 6 20
x5046:	dw string_no20handle20available# ; 2: 21 20
x5048:	dw string_access20denied# ; 2: 41 20
x5050:	dw string_out20of20domain# ; 2: 55 20
x5052:	dw string_out20of20range# ; 2: 69 20
x5054:	dw string_invalid20multibyte20sequence# ; 2: 82 20
x5056:	dw string_error20while20opening# ; 2: 109 20
x5058:	dw string_error20while20flushing# ; 2: -127 20
x5060:	dw string_error20while20closing# ; 2: -106 20
x5062:	dw string_open20mode20invalid# ; 2: -86 20
x5064:	dw string_error20while20writing# ; 2: -68 20
x5066:	dw string_error20while20reading# ; 2: -48 20
x5068:	dw string_error20while20seeking# ; 2: -28 20
x5070:	dw string_error20while20telling# ; 2: -8 20
x5072:	dw string_error20while20sizing# ; 2: 12 21
x5074:	dw string_error20while20removing20file# ; 2: 31 21
x5076:	dw string_error20while20renaming20file# ; 2: 57 21

string_no20error#:
x5078:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x5087:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x5111:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x5126:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x5141:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x5161:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x5175:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x5189:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x5202:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x5229:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x5249:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x5270:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x5290:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x5308:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x5328:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x5348:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x5368:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x5388:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x5407:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x5433:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_C#:
x5459:	db "C", 0	; 2: 67 0

string_US#:
x5461:	db "US", 0	; 3: 85 83 0

strchr:	; £temporary3365 = int_to_int i (Signed_Int -> Signed_Char)
x5464:	mov ax, [bp + 8]	; 3: -117 70 8
x5467:	cmp ax, 0	; 3: -125 -8 0
x5470:	jge strchr$1	; 2: 125 4
x5472:	neg ax	; 2: -9 -40
x5474:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary3365
x5476:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x5479:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary3367 = text + index
x5484:	mov si, [bp + 6]	; 3: -117 118 6
x5487:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary3366 -> £temporary3367 = *£temporary3367

strchr$5:	; if £temporary3366 -> £temporary3367 == 0 goto 16
x5490:	cmp byte [si], 0	; 3: -128 60 0
x5493:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary3371 = text + index
x5495:	mov si, [bp + 6]	; 3: -117 118 6
x5498:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary3370 -> £temporary3371 = *£temporary3371

strchr$8:	; if £temporary3370 -> £temporary3371 != c goto 14
x5501:	mov al, [bp + 12]	; 3: -118 70 12
x5504:	cmp [si], al	; 2: 56 4
x5506:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary3374 = text + index
x5508:	mov bx, [bp + 6]	; 3: -117 94 6
x5511:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary3373 -> £temporary3374 = *£temporary3374

strchr$11:	; £temporary3375 = &£temporary3373 -> £temporary3374

strchr$12:	; return_value = £temporary3375

strchr$13:	; return
x5514:	mov ax, [bp]	; 3: -117 70 0
x5517:	mov di, [bp + 4]	; 3: -117 126 4
x5520:	mov bp, [bp + 2]	; 3: -117 110 2
x5523:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x5525:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x5528:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x5530:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x5533:	mov ax, [bp]	; 3: -117 70 0
x5536:	mov di, [bp + 4]	; 3: -117 126 4
x5539:	mov bp, [bp + 2]	; 3: -117 110 2
x5542:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

isxdigit:	; call header integral zero 0 stack zero 0

isxdigit$1:	; parameter c, offset 6
x5544:	mov ax, [bp + 6]	; 3: -117 70 6
x5547:	mov [bp + 14], ax	; 3: -119 70 14

isxdigit$2:	; call function noellipse-noellipse isdigit
x5550:	mov word [bp + 8], isxdigit$3	; 5: -57 70 8 -68 21
x5555:	mov [bp + 10], bp	; 3: -119 110 10
x5558:	add bp, 8	; 3: -125 -59 8
x5561:	jmp isdigit	; 3: -23 -115 -7

isxdigit$3:	; post call

isxdigit$4:	; £temporary415 = return_value

isxdigit$5:	; if £temporary415 != 0 goto 10
x5564:	cmp bx, 0	; 3: -125 -5 0
x5567:	jne isxdigit$10	; 2: 117 24

isxdigit$6:	; if c < 97 goto 8
x5569:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x5573:	jl isxdigit$8	; 2: 124 6

isxdigit$7:	; if c <= 102 goto 10
x5575:	cmp word [bp + 6], 102	; 4: -125 126 6 102
x5579:	jle isxdigit$10	; 2: 126 12

isxdigit$8:	; if c < 65 goto 12
x5581:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x5585:	jl isxdigit$12	; 2: 124 11

isxdigit$9:	; if c > 70 goto 12
x5587:	cmp word [bp + 6], 70	; 4: -125 126 6 70
x5591:	jg isxdigit$12	; 2: 127 5

isxdigit$10:	; £temporary425 = 1
x5593:	mov bx, 1	; 3: -69 1 0

isxdigit$11:	; goto 13
x5596:	jmp isxdigit$13	; 2: -21 3

isxdigit$12:	; £temporary425 = 0
x5598:	mov bx, 0	; 3: -69 0 0

isxdigit$13:	; return_value = £temporary425

isxdigit$14:	; return
x5601:	mov ax, [bp]	; 3: -117 70 0
x5604:	mov di, [bp + 4]	; 3: -117 126 4
x5607:	mov bp, [bp + 2]	; 3: -117 110 2
x5610:	jmp ax	; 2: -1 -32

isxdigit$15:	; function end isxdigit

digitToValue:	; call header integral zero 0 stack zero 0

digitToValue$1:	; £temporary1379 = int_to_int input (Signed_Char -> Signed_Int)
x5612:	mov al, [bp + 6]	; 3: -118 70 6
x5615:	and ax, 255	; 3: 37 -1 0
x5618:	cmp al, 0	; 2: 60 0
x5620:	jge digitToValue$2	; 2: 125 4
x5622:	neg al	; 2: -10 -40
x5624:	neg ax	; 2: -9 -40

digitToValue$2:	; parameter £temporary1379, offset 6
x5626:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$3:	; call function noellipse-noellipse isdigit
x5629:	mov word [bp + 7], digitToValue$4	; 5: -57 70 7 11 22
x5634:	mov [bp + 9], bp	; 3: -119 110 9
x5637:	add bp, 7	; 3: -125 -59 7
x5640:	jmp isdigit	; 3: -23 62 -7

digitToValue$4:	; post call

digitToValue$5:	; £temporary1380 = return_value

digitToValue$6:	; if £temporary1380 == 0 goto 11
x5643:	cmp bx, 0	; 3: -125 -5 0
x5646:	je digitToValue$11	; 2: 116 24

digitToValue$7:	; £temporary1381 = input - 48
x5648:	mov bl, [bp + 6]	; 3: -118 94 6
x5651:	sub bl, 48	; 3: -128 -21 48

digitToValue$8:	; £temporary1382 = int_to_int £temporary1381 (Signed_Char -> Unsigned_Long_Int)
x5654:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$9:	; return_value = £temporary1382

digitToValue$10:	; return
x5661:	mov ax, [bp]	; 3: -117 70 0
x5664:	mov di, [bp + 4]	; 3: -117 126 4
x5667:	mov bp, [bp + 2]	; 3: -117 110 2
x5670:	jmp ax	; 2: -1 -32

digitToValue$11:	; call header integral zero 0 stack zero 0

digitToValue$12:	; £temporary1383 = int_to_int input (Signed_Char -> Signed_Int)
x5672:	mov al, [bp + 6]	; 3: -118 70 6
x5675:	and ax, 255	; 3: 37 -1 0
x5678:	cmp al, 0	; 2: 60 0
x5680:	jge digitToValue$13	; 2: 125 4
x5682:	neg al	; 2: -10 -40
x5684:	neg ax	; 2: -9 -40

digitToValue$13:	; parameter £temporary1383, offset 6
x5686:	mov [bp + 13], ax	; 3: -119 70 13

digitToValue$14:	; call function noellipse-noellipse islower
x5689:	mov word [bp + 7], digitToValue$15	; 5: -57 70 7 71 22
x5694:	mov [bp + 9], bp	; 3: -119 110 9
x5697:	add bp, 7	; 3: -125 -59 7
x5700:	nop	; 1: -112
x5701:	jmp islower	; 2: -21 61

digitToValue$15:	; post call

digitToValue$16:	; £temporary1384 = return_value

digitToValue$17:	; if £temporary1384 == 0 goto 23
x5703:	cmp bx, 0	; 3: -125 -5 0
x5706:	je digitToValue$23	; 2: 116 28

digitToValue$18:	; £temporary1385 = input - 97
x5708:	mov bl, [bp + 6]	; 3: -118 94 6
x5711:	sub bl, 97	; 3: -128 -21 97

digitToValue$19:	; £temporary1386 = int_to_int £temporary1385 (Signed_Char -> Unsigned_Long_Int)
x5714:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$20:	; £temporary1387 = £temporary1386 + 10
x5721:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$21:	; return_value = £temporary1387

digitToValue$22:	; return
x5725:	mov ax, [bp]	; 3: -117 70 0
x5728:	mov di, [bp + 4]	; 3: -117 126 4
x5731:	mov bp, [bp + 2]	; 3: -117 110 2
x5734:	jmp ax	; 2: -1 -32

digitToValue$23:	; £temporary1388 = input - 65
x5736:	mov bl, [bp + 6]	; 3: -118 94 6
x5739:	sub bl, 65	; 3: -128 -21 65

digitToValue$24:	; £temporary1389 = int_to_int £temporary1388 (Signed_Char -> Unsigned_Long_Int)
x5742:	and ebx, 255	; 7: 102 -127 -29 -1 0 0 0

digitToValue$25:	; £temporary1390 = £temporary1389 + 10
x5749:	add ebx, 10	; 4: 102 -125 -61 10

digitToValue$26:	; return_value = £temporary1390

digitToValue$27:	; return
x5753:	mov ax, [bp]	; 3: -117 70 0
x5756:	mov di, [bp + 4]	; 3: -117 126 4
x5759:	mov bp, [bp + 2]	; 3: -117 110 2
x5762:	jmp ax	; 2: -1 -32

digitToValue$28:	; function end digitToValue

islower:	; call header integral zero 0 stack zero 0

islower$1:	; call function noellipse-noellipse localeconv
x5764:	mov word [bp + 8], islower$2	; 5: -57 70 8 -110 22
x5769:	mov [bp + 10], bp	; 3: -119 110 10
x5772:	add bp, 8	; 3: -125 -59 8
x5775:	jmp localeconv	; 3: -23 -124 -5

islower$2:	; post call

islower$3:	; £temporary371 = return_value

islower$4:	; localeConvPtr = £temporary371
x5778:	mov [bp + 8], bx	; 3: -119 94 8

islower$5:	; if localeConvPtr == 0 goto 19
x5781:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x5785:	je islower$19	; 2: 116 53

islower$6:	; call header integral zero 0 stack zero 0

islower$7:	; £temporary373 -> localeConvPtr = *localeConvPtr, offset 12
x5787:	mov si, [bp + 8]	; 3: -117 118 8

islower$8:	; parameter £temporary373 -> localeConvPtr, offset 6
x5790:	mov ax, [si + 12]	; 3: -117 68 12
x5793:	mov [bp + 16], ax	; 3: -119 70 16

islower$9:	; parameter c, offset 8
x5796:	mov ax, [bp + 6]	; 3: -117 70 6
x5799:	mov [bp + 18], ax	; 3: -119 70 18

islower$10:	; call function noellipse-noellipse strchr
x5802:	mov word [bp + 10], islower$11	; 5: -57 70 10 -72 22
x5807:	mov [bp + 12], bp	; 3: -119 110 12
x5810:	add bp, 10	; 3: -125 -59 10
x5813:	jmp strchr	; 3: -23 -96 -2

islower$11:	; post call

islower$12:	; £temporary374 = return_value

islower$13:	; if £temporary374 == 0 goto 16
x5816:	cmp bx, 0	; 3: -125 -5 0
x5819:	je islower$16	; 2: 116 5

islower$14:	; £temporary376 = 1
x5821:	mov bx, 1	; 3: -69 1 0

islower$15:	; goto 17
x5824:	jmp islower$17	; 2: -21 3

islower$16:	; £temporary376 = 0
x5826:	mov bx, 0	; 3: -69 0 0

islower$17:	; return_value = £temporary376

islower$18:	; return
x5829:	mov ax, [bp]	; 3: -117 70 0
x5832:	mov di, [bp + 4]	; 3: -117 126 4
x5835:	mov bp, [bp + 2]	; 3: -117 110 2
x5838:	jmp ax	; 2: -1 -32

islower$19:	; if c < 97 goto 23
x5840:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x5844:	jl islower$23	; 2: 124 11

islower$20:	; if c > 122 goto 23
x5846:	cmp word [bp + 6], 122	; 4: -125 126 6 122
x5850:	jg islower$23	; 2: 127 5

islower$21:	; £temporary380 = 1
x5852:	mov bx, 1	; 3: -69 1 0

islower$22:	; goto 24
x5855:	jmp islower$24	; 2: -21 3

islower$23:	; £temporary380 = 0
x5857:	mov bx, 0	; 3: -69 0 0

islower$24:	; return_value = £temporary380

islower$25:	; return
x5860:	mov ax, [bp]	; 3: -117 70 0
x5863:	mov di, [bp + 4]	; 3: -117 126 4
x5866:	mov bp, [bp + 2]	; 3: -117 110 2
x5869:	jmp ax	; 2: -1 -32

islower$26:	; function end islower

scanLongDouble:	; minus = 0
x5871:	mov word [bp + 6], 0	; 5: -57 70 6 0 0

scanLongDouble$1:	; found = 0
x5876:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

scanLongDouble$2:	; push float 0.0
x5881:	fldz	; 2: -39 -18

scanLongDouble$3:	; pop float value
x5883:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$4:	; push float 1.0
x5886:	fld1	; 2: -39 -24

scanLongDouble$5:	; pop float factor
x5888:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$6:	; call header integral zero 0 stack zero 0

scanLongDouble$7:	; call function noellipse-noellipse scanChar
x5891:	mov word [bp + 26], scanLongDouble$8	; 5: -57 70 26 17 23
x5896:	mov [bp + 28], bp	; 3: -119 110 28
x5899:	add bp, 26	; 3: -125 -59 26
x5902:	jmp scanChar	; 3: -23 14 -12

scanLongDouble$8:	; post call

scanLongDouble$9:	; £temporary1458 = return_value

scanLongDouble$10:	; input = £temporary1458
x5905:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$11:	; call header integral zero 0 stack zero 0

scanLongDouble$12:	; £temporary1459 = int_to_int input (Signed_Char -> Signed_Int)
x5908:	mov al, [bp + 26]	; 3: -118 70 26
x5911:	and ax, 255	; 3: 37 -1 0
x5914:	cmp al, 0	; 2: 60 0
x5916:	jge scanLongDouble$13	; 2: 125 4
x5918:	neg al	; 2: -10 -40
x5920:	neg ax	; 2: -9 -40

scanLongDouble$13:	; parameter £temporary1459, offset 6
x5922:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$14:	; call function noellipse-noellipse isspace
x5925:	mov word [bp + 27], scanLongDouble$15	; 5: -57 70 27 51 23
x5930:	mov [bp + 29], bp	; 3: -119 110 29
x5933:	add bp, 27	; 3: -125 -59 27
x5936:	jmp isspace	; 3: -23 -88 -10

scanLongDouble$15:	; post call

scanLongDouble$16:	; £temporary1460 = return_value

scanLongDouble$17:	; if £temporary1460 == 0 goto 24
x5939:	cmp bx, 0	; 3: -125 -5 0
x5942:	je scanLongDouble$24	; 2: 116 19

scanLongDouble$18:	; call header integral zero 0 stack zero 0

scanLongDouble$19:	; call function noellipse-noellipse scanChar
x5944:	mov word [bp + 27], scanLongDouble$20	; 5: -57 70 27 70 23
x5949:	mov [bp + 29], bp	; 3: -119 110 29
x5952:	add bp, 27	; 3: -125 -59 27
x5955:	jmp scanChar	; 3: -23 -39 -13

scanLongDouble$20:	; post call

scanLongDouble$21:	; £temporary1461 = return_value

scanLongDouble$22:	; input = £temporary1461
x5958:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$23:	; goto 11
x5961:	jmp scanLongDouble$11	; 2: -21 -55

scanLongDouble$24:	; if input != 43 goto 31
x5963:	cmp byte [bp + 26], 43	; 4: -128 126 26 43
x5967:	jne scanLongDouble$31	; 2: 117 19

scanLongDouble$25:	; call header integral zero 0 stack zero 0

scanLongDouble$26:	; call function noellipse-noellipse scanChar
x5969:	mov word [bp + 27], scanLongDouble$27	; 5: -57 70 27 95 23
x5974:	mov [bp + 29], bp	; 3: -119 110 29
x5977:	add bp, 27	; 3: -125 -59 27
x5980:	jmp scanChar	; 3: -23 -64 -13

scanLongDouble$27:	; post call

scanLongDouble$28:	; £temporary1464 = return_value

scanLongDouble$29:	; input = £temporary1464
x5983:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$30:	; goto 38
x5986:	jmp scanLongDouble$38	; 2: -21 28

scanLongDouble$31:	; if input != 45 goto 38
x5988:	cmp byte [bp + 26], 45	; 4: -128 126 26 45
x5992:	jne scanLongDouble$38	; 2: 117 22

scanLongDouble$32:	; minus = 1
x5994:	mov word [bp + 6], 1	; 5: -57 70 6 1 0

scanLongDouble$33:	; call header integral zero 0 stack zero 0

scanLongDouble$34:	; call function noellipse-noellipse scanChar
x5999:	mov word [bp + 27], scanLongDouble$35	; 5: -57 70 27 125 23
x6004:	mov [bp + 29], bp	; 3: -119 110 29
x6007:	add bp, 27	; 3: -125 -59 27
x6010:	jmp scanChar	; 3: -23 -94 -13

scanLongDouble$35:	; post call

scanLongDouble$36:	; £temporary1466 = return_value

scanLongDouble$37:	; input = £temporary1466
x6013:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$38:	; call header integral zero 0 stack zero 0

scanLongDouble$39:	; £temporary1467 = int_to_int input (Signed_Char -> Signed_Int)
x6016:	mov al, [bp + 26]	; 3: -118 70 26
x6019:	and ax, 255	; 3: 37 -1 0
x6022:	cmp al, 0	; 2: 60 0
x6024:	jge scanLongDouble$40	; 2: 125 4
x6026:	neg al	; 2: -10 -40
x6028:	neg ax	; 2: -9 -40

scanLongDouble$40:	; parameter £temporary1467, offset 6
x6030:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$41:	; call function noellipse-noellipse isdigit
x6033:	mov word [bp + 27], scanLongDouble$42	; 5: -57 70 27 -97 23
x6038:	mov [bp + 29], bp	; 3: -119 110 29
x6041:	add bp, 27	; 3: -125 -59 27
x6044:	jmp isdigit	; 3: -23 -86 -9

scanLongDouble$42:	; post call

scanLongDouble$43:	; £temporary1468 = return_value

scanLongDouble$44:	; if £temporary1468 == 0 goto 60
x6047:	cmp bx, 0	; 3: -125 -5 0
x6050:	je scanLongDouble$60	; 2: 116 61

scanLongDouble$45:	; push float 10.0
x6052:	fld qword [float8$10.0#]	; 4: -35 6 33 25

scanLongDouble$46:	; push float value
x6056:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$47:	; £temporary1469 = 10.0 * value
x6059:	fmul	; 2: -34 -55

scanLongDouble$48:	; £temporary1470 = input - 48
x6061:	mov al, [bp + 26]	; 3: -118 70 26
x6064:	sub al, 48	; 2: 44 48

scanLongDouble$49:	; £temporary1472 = int_to_int £temporary1470 (Signed_Char -> Signed_Int)
x6066:	and ax, 255	; 3: 37 -1 0
x6069:	cmp al, 0	; 2: 60 0
x6071:	jge scanLongDouble$50	; 2: 125 4
x6073:	neg al	; 2: -10 -40
x6075:	neg ax	; 2: -9 -40

scanLongDouble$50:	; £temporary1471 = int_to_float £temporary1472 (Signed_Int -> Long_Double)
x6077:	mov [container2bytes#], ax	; 3: -93 41 25
x6080:	fild word [container2bytes#]	; 4: -33 6 41 25

scanLongDouble$51:	; £temporary1473 = £temporary1469 + £temporary1471
x6084:	fadd	; 2: -34 -63

scanLongDouble$52:	; pop float value
x6086:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$53:	; call header integral zero 0 stack zero 0

scanLongDouble$54:	; call function noellipse-noellipse scanChar
x6089:	mov word [bp + 27], scanLongDouble$55	; 5: -57 70 27 -41 23
x6094:	mov [bp + 29], bp	; 3: -119 110 29
x6097:	add bp, 27	; 3: -125 -59 27
x6100:	jmp scanChar	; 3: -23 72 -13

scanLongDouble$55:	; post call

scanLongDouble$56:	; £temporary1474 = return_value

scanLongDouble$57:	; input = £temporary1474
x6103:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$58:	; found = 1
x6106:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$59:	; goto 38
x6111:	jmp scanLongDouble$38	; 2: -21 -97

scanLongDouble$60:	; if input != 46 goto 92
x6113:	cmp byte [bp + 26], 46	; 4: -128 126 26 46
x6117:	jne scanLongDouble$92	; 2: 117 125

scanLongDouble$61:	; call header integral zero 0 stack zero 0

scanLongDouble$62:	; call function noellipse-noellipse scanChar
x6119:	mov word [bp + 27], scanLongDouble$63	; 5: -57 70 27 -11 23
x6124:	mov [bp + 29], bp	; 3: -119 110 29
x6127:	add bp, 27	; 3: -125 -59 27
x6130:	jmp scanChar	; 3: -23 42 -13

scanLongDouble$63:	; post call

scanLongDouble$64:	; £temporary1477 = return_value

scanLongDouble$65:	; input = £temporary1477
x6133:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$66:	; call header integral zero 0 stack zero 0

scanLongDouble$67:	; £temporary1478 = int_to_int input (Signed_Char -> Signed_Int)
x6136:	mov al, [bp + 26]	; 3: -118 70 26
x6139:	and ax, 255	; 3: 37 -1 0
x6142:	cmp al, 0	; 2: 60 0
x6144:	jge scanLongDouble$68	; 2: 125 4
x6146:	neg al	; 2: -10 -40
x6148:	neg ax	; 2: -9 -40

scanLongDouble$68:	; parameter £temporary1478, offset 6
x6150:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$69:	; call function noellipse-noellipse isdigit
x6153:	mov word [bp + 27], scanLongDouble$70	; 5: -57 70 27 23 24
x6158:	mov [bp + 29], bp	; 3: -119 110 29
x6161:	add bp, 27	; 3: -125 -59 27
x6164:	jmp isdigit	; 3: -23 50 -9

scanLongDouble$70:	; post call

scanLongDouble$71:	; £temporary1479 = return_value

scanLongDouble$72:	; if £temporary1479 == 0 goto 92
x6167:	cmp bx, 0	; 3: -125 -5 0
x6170:	je scanLongDouble$92	; 2: 116 72

scanLongDouble$73:	; push float factor
x6172:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$74:	; push float 10.0
x6175:	fld qword [float8$10.0#]	; 4: -35 6 33 25

scanLongDouble$75:	; £temporary1480 = factor / 10.0
x6179:	fdiv	; 2: -34 -7

scanLongDouble$76:	; pop float factor
x6181:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$77:	; push float value
x6184:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$78:	; push float factor
x6187:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$79:	; £temporary1481 = input - 48
x6190:	mov al, [bp + 26]	; 3: -118 70 26
x6193:	sub al, 48	; 2: 44 48

scanLongDouble$80:	; £temporary1483 = int_to_int £temporary1481 (Signed_Char -> Signed_Int)
x6195:	and ax, 255	; 3: 37 -1 0
x6198:	cmp al, 0	; 2: 60 0
x6200:	jge scanLongDouble$81	; 2: 125 4
x6202:	neg al	; 2: -10 -40
x6204:	neg ax	; 2: -9 -40

scanLongDouble$81:	; £temporary1482 = int_to_float £temporary1483 (Signed_Int -> Long_Double)
x6206:	mov [container2bytes#], ax	; 3: -93 41 25
x6209:	fild word [container2bytes#]	; 4: -33 6 41 25

scanLongDouble$82:	; £temporary1484 = factor * £temporary1482
x6213:	fmul	; 2: -34 -55

scanLongDouble$83:	; £temporary1485 = value + £temporary1484
x6215:	fadd	; 2: -34 -63

scanLongDouble$84:	; pop float value
x6217:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$85:	; call header integral zero 0 stack zero 0

scanLongDouble$86:	; call function noellipse-noellipse scanChar
x6220:	mov word [bp + 27], scanLongDouble$87	; 5: -57 70 27 90 24
x6225:	mov [bp + 29], bp	; 3: -119 110 29
x6228:	add bp, 27	; 3: -125 -59 27
x6231:	jmp scanChar	; 3: -23 -59 -14

scanLongDouble$87:	; post call

scanLongDouble$88:	; £temporary1486 = return_value

scanLongDouble$89:	; input = £temporary1486
x6234:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$90:	; found = 1
x6237:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$91:	; goto 66
x6242:	jmp scanLongDouble$66	; 2: -21 -108

scanLongDouble$92:	; call header integral zero 0 stack zero 0

scanLongDouble$93:	; parameter input, offset 6
x6244:	mov al, [bp + 26]	; 3: -118 70 26
x6247:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$94:	; call function noellipse-noellipse unscanChar
x6250:	mov word [bp + 27], scanLongDouble$95	; 5: -57 70 27 120 24
x6255:	mov [bp + 29], bp	; 3: -119 110 29
x6258:	add bp, 27	; 3: -125 -59 27
x6261:	jmp unscanChar	; 3: -23 -16 -10

scanLongDouble$95:	; post call

scanLongDouble$96:	; call header integral zero 0 stack zero 0

scanLongDouble$97:	; £temporary1489 = int_to_int input (Signed_Char -> Signed_Int)
x6264:	mov al, [bp + 26]	; 3: -118 70 26
x6267:	and ax, 255	; 3: 37 -1 0
x6270:	cmp al, 0	; 2: 60 0
x6272:	jge scanLongDouble$98	; 2: 125 4
x6274:	neg al	; 2: -10 -40
x6276:	neg ax	; 2: -9 -40

scanLongDouble$98:	; parameter £temporary1489, offset 6
x6278:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$99:	; call function noellipse-noellipse tolower
x6281:	mov word [bp + 27], scanLongDouble$100	; 5: -57 70 27 -105 24
x6286:	mov [bp + 29], bp	; 3: -119 110 29
x6289:	add bp, 27	; 3: -125 -59 27
x6292:	jmp tolower	; 3: -23 115 -8

scanLongDouble$100:	; post call

scanLongDouble$101:	; £temporary1490 = return_value

scanLongDouble$102:	; if £temporary1490 != 101 goto 121
x6295:	cmp bx, 101	; 3: -125 -5 101
x6298:	jne scanLongDouble$121	; 2: 117 75

scanLongDouble$103:	; call header integral zero 0 stack zero 0

scanLongDouble$104:	; call function noellipse-noellipse scanLongInt
x6300:	mov word [bp + 27], scanLongDouble$105	; 5: -57 70 27 -86 24
x6305:	mov [bp + 29], bp	; 3: -119 110 29
x6308:	add bp, 27	; 3: -125 -59 27
x6311:	jmp scanLongInt	; 3: -23 104 -11

scanLongDouble$105:	; post call

scanLongDouble$106:	; £temporary1492 = return_value

scanLongDouble$107:	; £temporary1493 = int_to_float £temporary1492 (Signed_Long_Int -> Double)
x6314:	mov [container4bytes#], ebx	; 5: 102 -119 30 43 25
x6319:	fild dword [container4bytes#]	; 4: -37 6 43 25

scanLongDouble$108:	; pop float exponent
x6323:	fstp qword [bp + 27]	; 3: -35 94 27

scanLongDouble$109:	; push float value
x6326:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$110:	; call header integral zero 0 stack no zero 1
x6329:	fstp qword [bp + 35]	; 3: -35 94 35

scanLongDouble$111:	; push float 10.0
x6332:	fld qword [float8$10.0#]	; 4: -35 6 33 25

scanLongDouble$112:	; parameter 10.0, offset 6
x6336:	fstp qword [bp + 49]	; 3: -35 94 49

scanLongDouble$113:	; push float exponent
x6339:	fld qword [bp + 27]	; 3: -35 70 27

scanLongDouble$114:	; parameter exponent, offset 14
x6342:	fstp qword [bp + 57]	; 3: -35 94 57

scanLongDouble$115:	; call function noellipse-noellipse pow
x6345:	mov word [bp + 43], scanLongDouble$116	; 5: -57 70 43 -41 24
x6350:	mov [bp + 45], bp	; 3: -119 110 45
x6353:	add bp, 43	; 3: -125 -59 43
x6356:	nop	; 1: -112
x6357:	jmp pow	; 2: -21 88

scanLongDouble$116:	; post call
x6359:	fstp qword [bp + 43]	; 3: -35 94 43
x6362:	fld qword [bp + 35]	; 3: -35 70 35
x6365:	fld qword [bp + 43]	; 3: -35 70 43

scanLongDouble$117:	; £temporary1494 = return_value

scanLongDouble$118:	; £temporary1495 = value * £temporary1494
x6368:	fmul	; 2: -34 -55

scanLongDouble$119:	; pop float value
x6370:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$120:	; goto 125
x6373:	jmp scanLongDouble$125	; 2: -21 20

scanLongDouble$121:	; call header integral zero 0 stack zero 0

scanLongDouble$122:	; parameter input, offset 6
x6375:	mov al, [bp + 26]	; 3: -118 70 26
x6378:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$123:	; call function noellipse-noellipse unscanChar
x6381:	mov word [bp + 27], scanLongDouble$124	; 5: -57 70 27 -5 24
x6386:	mov [bp + 29], bp	; 3: -119 110 29
x6389:	add bp, 27	; 3: -125 -59 27
x6392:	jmp unscanChar	; 3: -23 109 -10

scanLongDouble$124:	; post call

scanLongDouble$125:	; if minus == 0 goto 129
x6395:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x6399:	je scanLongDouble$129	; 2: 116 8

scanLongDouble$126:	; push float value
x6401:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$127:	; £temporary1497 = -value
x6404:	fchs	; 2: -39 -32

scanLongDouble$128:	; pop float value
x6406:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$129:	; if found == 0 goto 131
x6409:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6413:	je scanLongDouble$131	; 2: 116 4

scanLongDouble$130:	; ++g_inCount
x6415:	inc word [g_inCount]	; 4: -1 6 6 11

scanLongDouble$131:	; push float value
x6419:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$132:	; return_value = value

scanLongDouble$133:	; return
x6422:	mov ax, [bp]	; 3: -117 70 0
x6425:	mov di, [bp + 4]	; 3: -117 126 4
x6428:	mov bp, [bp + 2]	; 3: -117 110 2
x6431:	jmp ax	; 2: -1 -32

scanLongDouble$134:	; function end scanLongDouble

float8$10.0#:
x6433:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

container2bytes#:
x6441:	db 0, 0	; 2: 0 0

container4bytes#:
x6443:	db 0, 0, 0, 0	; 4: 0 0 0 0

pow:	; push float x
x6447:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x6450:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x6452:	fcompp	; 2: -34 -39
x6454:	fstsw ax	; 3: -101 -33 -32
x6457:	sahf	; 1: -98
x6458:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x6460:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x6463:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x6466:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x6469:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x6472:	mov word [bp + 30], pow$9	; 5: -57 70 30 86 25
x6477:	mov [bp + 32], bp	; 3: -119 110 32
x6480:	add bp, 30	; 3: -125 -59 30
x6483:	jmp log	; 3: -23 -124 1

pow$9:	; post call
x6486:	fstp qword [bp + 30]	; 3: -35 94 30
x6489:	fld qword [bp + 22]	; 3: -35 70 22
x6492:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary554 = return_value

pow$11:	; £temporary555 = y * £temporary554
x6495:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary555, offset 6
x6497:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x6500:	mov word [bp + 22], pow$14	; 5: -57 70 22 114 25
x6505:	mov [bp + 24], bp	; 3: -119 110 24
x6508:	add bp, 22	; 3: -125 -59 22
x6511:	jmp exp	; 3: -23 -70 2

pow$14:	; post call

pow$15:	; £temporary556 = return_value

pow$16:	; return_value = £temporary556

pow$17:	; return
x6514:	mov ax, [bp]	; 3: -117 70 0
x6517:	mov di, [bp + 4]	; 3: -117 126 4
x6520:	mov bp, [bp + 2]	; 3: -117 110 2
x6523:	jmp ax	; 2: -1 -32

pow$18:	; push float x
x6525:	fld qword [bp + 6]	; 3: -35 70 6

pow$19:	; push 0
x6528:	fldz	; 2: -39 -18

pow$20:	; if x != 0 goto 27
x6530:	fcompp	; 2: -34 -39
x6532:	fstsw ax	; 3: -101 -33 -32
x6535:	sahf	; 1: -98
x6536:	jne pow$27	; 2: 117 26

pow$21:	; push float y
x6538:	fld qword [bp + 14]	; 3: -35 70 14

pow$22:	; push 0
x6541:	fldz	; 2: -39 -18

pow$23:	; if y != 0 goto 27
x6543:	fcompp	; 2: -34 -39
x6545:	fstsw ax	; 3: -101 -33 -32
x6548:	sahf	; 1: -98
x6549:	jne pow$27	; 2: 117 13

pow$24:	; push 1
x6551:	fld1	; 2: -39 -24

pow$25:	; return_value = 1

pow$26:	; return
x6553:	mov ax, [bp]	; 3: -117 70 0
x6556:	mov di, [bp + 4]	; 3: -117 126 4
x6559:	mov bp, [bp + 2]	; 3: -117 110 2
x6562:	jmp ax	; 2: -1 -32

pow$27:	; push float x
x6564:	fld qword [bp + 6]	; 3: -35 70 6

pow$28:	; push 0
x6567:	fldz	; 2: -39 -18

pow$29:	; if x != 0 goto 36
x6569:	fcompp	; 2: -34 -39
x6571:	fstsw ax	; 3: -101 -33 -32
x6574:	sahf	; 1: -98
x6575:	jne pow$36	; 2: 117 26

pow$30:	; push float y
x6577:	fld qword [bp + 14]	; 3: -35 70 14

pow$31:	; push 0
x6580:	fldz	; 2: -39 -18

pow$32:	; if y <= 0 goto 36
x6582:	fcompp	; 2: -34 -39
x6584:	fstsw ax	; 3: -101 -33 -32
x6587:	sahf	; 1: -98
x6588:	jae pow$36	; 2: 115 13

pow$33:	; push 0
x6590:	fldz	; 2: -39 -18

pow$34:	; return_value = 0

pow$35:	; return
x6592:	mov ax, [bp]	; 3: -117 70 0
x6595:	mov di, [bp + 4]	; 3: -117 126 4
x6598:	mov bp, [bp + 2]	; 3: -117 110 2
x6601:	jmp ax	; 2: -1 -32

pow$36:	; push float x
x6603:	fld qword [bp + 6]	; 3: -35 70 6

pow$37:	; push 0
x6606:	fldz	; 2: -39 -18

pow$38:	; if x >= 0 goto 90
x6608:	fcompp	; 2: -34 -39
x6610:	fstsw ax	; 3: -101 -33 -32
x6613:	sahf	; 1: -98
x6614:	jbe pow$90	; 4: 15 -122 -25 0

pow$39:	; call header integral zero 0 stack zero 0

pow$40:	; push float y
x6618:	fld qword [bp + 14]	; 3: -35 70 14

pow$41:	; parameter y, offset 6
x6621:	fstp qword [bp + 28]	; 3: -35 94 28

pow$42:	; call function noellipse-noellipse floor
x6624:	mov word [bp + 22], pow$43	; 5: -57 70 22 -18 25
x6629:	mov [bp + 24], bp	; 3: -119 110 24
x6632:	add bp, 22	; 3: -125 -59 22
x6635:	jmp floor	; 3: -23 -76 2

pow$43:	; post call

pow$44:	; £temporary564 = return_value

pow$45:	; call header integral zero 0 stack no zero 1
x6638:	fstp qword [bp + 22]	; 3: -35 94 22

pow$46:	; push float y
x6641:	fld qword [bp + 14]	; 3: -35 70 14

pow$47:	; parameter y, offset 6
x6644:	fstp qword [bp + 36]	; 3: -35 94 36

pow$48:	; call function noellipse-noellipse ceil
x6647:	mov word [bp + 30], pow$49	; 5: -57 70 30 5 26
x6652:	mov [bp + 32], bp	; 3: -119 110 32
x6655:	add bp, 30	; 3: -125 -59 30
x6658:	jmp ceil	; 3: -23 -21 2

pow$49:	; post call
x6661:	fstp qword [bp + 30]	; 3: -35 94 30
x6664:	fld qword [bp + 22]	; 3: -35 70 22
x6667:	fld qword [bp + 30]	; 3: -35 70 30

pow$50:	; £temporary565 = return_value

pow$51:	; if £temporary564 != £temporary565 goto 90
x6670:	fcompp	; 2: -34 -39
x6672:	fstsw ax	; 3: -101 -33 -32
x6675:	sahf	; 1: -98
x6676:	jne pow$90	; 4: 15 -123 -87 0

pow$52:	; push float y
x6680:	fld qword [bp + 14]	; 3: -35 70 14

pow$53:	; £temporary568 = float_to_int y (Double -> Signed_Long_Int)
x6683:	fistp dword [container4bytes#]	; 4: -37 30 43 25
x6687:	mov eax, [container4bytes#]	; 4: 102 -95 43 25

pow$54:	; long_y = £temporary568
x6691:	mov [bp + 22], eax	; 4: 102 -119 70 22

pow$55:	; £temporary569 = long_y % 2
x6695:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x6699:	xor edx, edx	; 3: 102 49 -46
x6702:	idiv dword [int4$2#]	; 5: 102 -9 62 -44 26

pow$56:	; if £temporary569 != 0 goto 73
x6707:	cmp edx, 0	; 4: 102 -125 -6 0
x6711:	jne pow$73	; 2: 117 67

pow$57:	; call header integral zero 0 stack zero 0

pow$58:	; push float y
x6713:	fld qword [bp + 14]	; 3: -35 70 14

pow$59:	; call header integral zero 0 stack no zero 1
x6716:	fstp qword [bp + 26]	; 3: -35 94 26

pow$60:	; push float x
x6719:	fld qword [bp + 6]	; 3: -35 70 6

pow$61:	; £temporary571 = -x
x6722:	fchs	; 2: -39 -32

pow$62:	; parameter £temporary571, offset 6
x6724:	fstp qword [bp + 40]	; 3: -35 94 40

pow$63:	; call function noellipse-noellipse log
x6727:	mov word [bp + 34], pow$64	; 5: -57 70 34 85 26
x6732:	mov [bp + 36], bp	; 3: -119 110 36
x6735:	add bp, 34	; 3: -125 -59 34
x6738:	jmp log	; 3: -23 -123 0

pow$64:	; post call
x6741:	fstp qword [bp + 34]	; 3: -35 94 34
x6744:	fld qword [bp + 26]	; 3: -35 70 26
x6747:	fld qword [bp + 34]	; 3: -35 70 34

pow$65:	; £temporary572 = return_value

pow$66:	; £temporary573 = y * £temporary572
x6750:	fmul	; 2: -34 -55

pow$67:	; parameter £temporary573, offset 6
x6752:	fstp qword [bp + 32]	; 3: -35 94 32

pow$68:	; call function noellipse-noellipse exp
x6755:	mov word [bp + 26], pow$69	; 5: -57 70 26 113 26
x6760:	mov [bp + 28], bp	; 3: -119 110 28
x6763:	add bp, 26	; 3: -125 -59 26
x6766:	jmp exp	; 3: -23 -69 1

pow$69:	; post call

pow$70:	; £temporary574 = return_value

pow$71:	; return_value = £temporary574

pow$72:	; return
x6769:	mov ax, [bp]	; 3: -117 70 0
x6772:	mov di, [bp + 4]	; 3: -117 126 4
x6775:	mov bp, [bp + 2]	; 3: -117 110 2
x6778:	jmp ax	; 2: -1 -32

pow$73:	; call header integral zero 0 stack zero 0

pow$74:	; push float y
x6780:	fld qword [bp + 14]	; 3: -35 70 14

pow$75:	; call header integral zero 0 stack no zero 1
x6783:	fstp qword [bp + 26]	; 3: -35 94 26

pow$76:	; push float x
x6786:	fld qword [bp + 6]	; 3: -35 70 6

pow$77:	; £temporary575 = -x
x6789:	fchs	; 2: -39 -32

pow$78:	; parameter £temporary575, offset 6
x6791:	fstp qword [bp + 40]	; 3: -35 94 40

pow$79:	; call function noellipse-noellipse log
x6794:	mov word [bp + 34], pow$80	; 5: -57 70 34 -104 26
x6799:	mov [bp + 36], bp	; 3: -119 110 36
x6802:	add bp, 34	; 3: -125 -59 34
x6805:	nop	; 1: -112
x6806:	jmp log	; 2: -21 66

pow$80:	; post call
x6808:	fstp qword [bp + 34]	; 3: -35 94 34
x6811:	fld qword [bp + 26]	; 3: -35 70 26
x6814:	fld qword [bp + 34]	; 3: -35 70 34

pow$81:	; £temporary576 = return_value

pow$82:	; £temporary577 = y * £temporary576
x6817:	fmul	; 2: -34 -55

pow$83:	; parameter £temporary577, offset 6
x6819:	fstp qword [bp + 32]	; 3: -35 94 32

pow$84:	; call function noellipse-noellipse exp
x6822:	mov word [bp + 26], pow$85	; 5: -57 70 26 -76 26
x6827:	mov [bp + 28], bp	; 3: -119 110 28
x6830:	add bp, 26	; 3: -125 -59 26
x6833:	jmp exp	; 3: -23 120 1

pow$85:	; post call

pow$86:	; £temporary578 = return_value

pow$87:	; £temporary579 = -£temporary578
x6836:	fchs	; 2: -39 -32

pow$88:	; return_value = £temporary579

pow$89:	; return
x6838:	mov ax, [bp]	; 3: -117 70 0
x6841:	mov di, [bp + 4]	; 3: -117 126 4
x6844:	mov bp, [bp + 2]	; 3: -117 110 2
x6847:	jmp ax	; 2: -1 -32

pow$90:	; errno = 6
x6849:	mov word [errno], 6	; 6: -57 6 -40 26 6 0

pow$91:	; push 0
x6855:	fldz	; 2: -39 -18

pow$92:	; return_value = 0

pow$93:	; return
x6857:	mov ax, [bp]	; 3: -117 70 0
x6860:	mov di, [bp + 4]	; 3: -117 126 4
x6863:	mov bp, [bp + 2]	; 3: -117 110 2
x6866:	jmp ax	; 2: -1 -32

pow$94:	; function end pow

int4$2#:
x6868:	dd 2	; 4: 2 0 0 0

errno:
x6872:	dw 0	; 2: 0 0

log:	; push float x
x6874:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x6877:	fldz	; 2: -39 -18

log$2:	; if x <= 0 goto 76
x6879:	fcompp	; 2: -34 -39
x6881:	fstsw ax	; 3: -101 -33 -32
x6884:	sahf	; 1: -98
x6885:	jae log$76	; 4: 15 -125 -18 0

log$3:	; n = 0
x6889:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x
x6894:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push 1
x6897:	fld1	; 2: -39 -24

log$6:	; if x <= 1 goto 16
x6899:	fcompp	; 2: -34 -39
x6901:	fstsw ax	; 3: -101 -33 -32
x6904:	sahf	; 1: -98
x6905:	jae log$16	; 2: 115 30

log$7:	; push float x
x6907:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push 1
x6910:	fld1	; 2: -39 -24

log$9:	; if x <= 1 goto 28
x6912:	fcompp	; 2: -34 -39
x6914:	fstsw ax	; 3: -101 -33 -32
x6917:	sahf	; 1: -98
x6918:	jae log$28	; 2: 115 64

log$10:	; push float x
x6920:	fld qword [bp + 6]	; 3: -35 70 6

log$11:	; push float 2.7182818284590452353602874
x6923:	fld qword [float8$2.7182818284590452353602874#]	; 4: -35 6 -22 27

log$12:	; £temporary532 = x / 2.7182818284590452353602874
x6927:	fdiv	; 2: -34 -7

log$13:	; pop float x
x6929:	fstp qword [bp + 6]	; 3: -35 94 6

log$14:	; ++n
x6932:	inc word [bp + 14]	; 3: -1 70 14

log$15:	; goto 7
x6935:	jmp log$7	; 2: -21 -30

log$16:	; push float x
x6937:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 0.3678794411714423215955237798
x6940:	fld qword [float8$0.3678794411714423215955237798#]	; 4: -35 6 -14 27

log$18:	; if x >= 0.3678794411714423215955237798 goto 28
x6944:	fcompp	; 2: -34 -39
x6946:	fstsw ax	; 3: -101 -33 -32
x6949:	sahf	; 1: -98
x6950:	jbe log$28	; 2: 118 32

log$19:	; push float x
x6952:	fld qword [bp + 6]	; 3: -35 70 6

log$20:	; push float 0.3678794411714423215955237798
x6955:	fld qword [float8$0.3678794411714423215955237798#]	; 4: -35 6 -14 27

log$21:	; if x >= 0.3678794411714423215955237798 goto 28
x6959:	fcompp	; 2: -34 -39
x6961:	fstsw ax	; 3: -101 -33 -32
x6964:	sahf	; 1: -98
x6965:	jbe log$28	; 2: 118 17

log$22:	; push float x
x6967:	fld qword [bp + 6]	; 3: -35 70 6

log$23:	; push float 2.7182818284590452353602874
x6970:	fld qword [float8$2.7182818284590452353602874#]	; 4: -35 6 -22 27

log$24:	; £temporary536 = x * 2.7182818284590452353602874
x6974:	fmul	; 2: -34 -55

log$25:	; pop float x
x6976:	fstp qword [bp + 6]	; 3: -35 94 6

log$26:	; --n
x6979:	dec word [bp + 14]	; 3: -1 78 14

log$27:	; goto 19
x6982:	jmp log$19	; 2: -21 -32

log$28:	; push 1
x6984:	fld1	; 2: -39 -24

log$29:	; pop float index
x6986:	fstp qword [bp + 16]	; 3: -35 94 16

log$30:	; push 0
x6989:	fldz	; 2: -39 -18

log$31:	; pop float sum
x6991:	fstp qword [bp + 32]	; 3: -35 94 32

log$32:	; push 1
x6994:	fld1	; 2: -39 -24

log$33:	; pop float sign
x6996:	fstp qword [bp + 40]	; 3: -35 94 40

log$34:	; push float x
x6999:	fld qword [bp + 6]	; 3: -35 70 6

log$35:	; push 1
x7002:	fld1	; 2: -39 -24

log$36:	; £temporary538 = x - 1
x7004:	fsub	; 2: -34 -23

log$37:	; pop float x_minus_1
x7006:	fstp qword [bp + 48]	; 3: -35 94 48

log$38:	; push float x_minus_1
x7009:	fld qword [bp + 48]	; 3: -35 70 48

log$39:	; pop float power
x7012:	fstp qword [bp + 56]	; 3: -35 94 56

log$40:	; push float sign
x7015:	fld qword [bp + 40]	; 3: -35 70 40

log$41:	; push float power
x7018:	fld qword [bp + 56]	; 3: -35 70 56

log$42:	; £temporary539 = sign * power
x7021:	fmul	; 2: -34 -55

log$43:	; push float index
x7023:	fld qword [bp + 16]	; 3: -35 70 16

log$44:	; push 1
x7026:	fld1	; 2: -39 -24

log$45:	; index = index + 1
x7028:	fadd	; 2: -34 -63

log$46:	; top float index
x7030:	fst qword [bp + 16]	; 3: -35 86 16

log$47:	; push 1
x7033:	fld1	; 2: -39 -24

log$48:	; index = index - 1
x7035:	fsub	; 2: -34 -23

log$49:	; £temporary541 = £temporary539 / £temporary540
x7037:	fdiv	; 2: -34 -7

log$50:	; pop float term
x7039:	fstp qword [bp + 24]	; 3: -35 94 24

log$51:	; push float sum
x7042:	fld qword [bp + 32]	; 3: -35 70 32

log$52:	; push float term
x7045:	fld qword [bp + 24]	; 3: -35 70 24

log$53:	; £temporary542 = sum + term
x7048:	fadd	; 2: -34 -63

log$54:	; pop float sum
x7050:	fstp qword [bp + 32]	; 3: -35 94 32

log$55:	; push float power
x7053:	fld qword [bp + 56]	; 3: -35 70 56

log$56:	; push float x_minus_1
x7056:	fld qword [bp + 48]	; 3: -35 70 48

log$57:	; £temporary543 = power * x_minus_1
x7059:	fmul	; 2: -34 -55

log$58:	; pop float power
x7061:	fstp qword [bp + 56]	; 3: -35 94 56

log$59:	; push float sign
x7064:	fld qword [bp + 40]	; 3: -35 70 40

log$60:	; push float -1.0
x7067:	fld qword [float8$minus1.0#]	; 4: -35 6 -6 27

log$61:	; £temporary544 = sign * -1.0
x7071:	fmul	; 2: -34 -55

log$62:	; pop float sign
x7073:	fstp qword [bp + 40]	; 3: -35 94 40

log$63:	; call header integral zero 0 stack zero 0

log$64:	; push float term
x7076:	fld qword [bp + 24]	; 3: -35 70 24

log$65:	; parameter term, offset 6
x7079:	fstp qword [bp + 70]	; 3: -35 94 70

log$66:	; call function noellipse-noellipse fabs
x7082:	mov word [bp + 64], log$67	; 5: -57 70 64 -72 27
x7087:	mov [bp + 66], bp	; 3: -119 110 66
x7090:	add bp, 64	; 3: -125 -59 64
x7093:	nop	; 1: -112
x7094:	jmp fabs	; 2: -21 82

log$67:	; post call

log$68:	; £temporary545 = return_value

log$69:	; push float 0.000000001
x7096:	fld qword [float8$0.000000001#]	; 4: -35 6 2 28

log$70:	; if £temporary545 >= 0.000000001 goto 40
x7100:	fcompp	; 2: -34 -39
x7102:	fstsw ax	; 3: -101 -33 -32
x7105:	sahf	; 1: -98
x7106:	jbe log$40	; 2: 118 -93

log$71:	; push float sum
x7108:	fld qword [bp + 32]	; 3: -35 70 32

log$72:	; £temporary547 = int_to_float n (Signed_Int -> Double)
x7111:	fild word [bp + 14]	; 3: -33 70 14

log$73:	; £temporary548 = sum + £temporary547
x7114:	fadd	; 2: -34 -63

log$74:	; return_value = £temporary548

log$75:	; return
x7116:	mov ax, [bp]	; 3: -117 70 0
x7119:	mov di, [bp + 4]	; 3: -117 126 4
x7122:	mov bp, [bp + 2]	; 3: -117 110 2
x7125:	jmp ax	; 2: -1 -32

log$76:	; errno = 6
x7127:	mov word [errno], 6	; 6: -57 6 -40 26 6 0

log$77:	; push 0
x7133:	fldz	; 2: -39 -18

log$78:	; return_value = 0

log$79:	; return
x7135:	mov ax, [bp]	; 3: -117 70 0
x7138:	mov di, [bp + 4]	; 3: -117 126 4
x7141:	mov bp, [bp + 2]	; 3: -117 110 2
x7144:	jmp ax	; 2: -1 -32

log$80:	; function end log

float8$2.7182818284590452353602874#:
x7146:	dq 2.7182818284590452353602874	; 8: 104 87 20 -117 10 -65 5 64

float8$0.3678794411714423215955237798#:
x7154:	dq 0.3678794411714423215955237798	; 8: 56 -17 44 54 86 -117 -41 63

float8$minus1.0#:
x7162:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x7170:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

fabs:	; push float x
x7178:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x7181:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x7183:	fcompp	; 2: -34 -39
x7185:	fstsw ax	; 3: -101 -33 -32
x7188:	sahf	; 1: -98
x7189:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x7191:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary829 = -x
x7194:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x7196:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x7198:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary833

fabs$9:	; return
x7201:	mov ax, [bp]	; 3: -117 70 0
x7204:	mov di, [bp + 4]	; 3: -117 126 4
x7207:	mov bp, [bp + 2]	; 3: -117 110 2
x7210:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

exp:	; push 1
x7212:	fld1	; 2: -39 -24

exp$1:	; pop float index
x7214:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x7217:	fld1	; 2: -39 -24

exp$3:	; pop float sum
x7219:	fstp qword [bp + 30]	; 3: -35 94 30

exp$4:	; push 1
x7222:	fld1	; 2: -39 -24

exp$5:	; pop float faculty
x7224:	fstp qword [bp + 38]	; 3: -35 94 38

exp$6:	; push float x
x7227:	fld qword [bp + 6]	; 3: -35 70 6

exp$7:	; pop float power
x7230:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x7233:	fld qword [bp + 46]	; 3: -35 70 46

exp$9:	; push float faculty
x7236:	fld qword [bp + 38]	; 3: -35 70 38

exp$10:	; £temporary521 = power / faculty
x7239:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x7241:	fstp qword [bp + 22]	; 3: -35 94 22

exp$12:	; push float sum
x7244:	fld qword [bp + 30]	; 3: -35 70 30

exp$13:	; push float term
x7247:	fld qword [bp + 22]	; 3: -35 70 22

exp$14:	; £temporary522 = sum + term
x7250:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x7252:	fstp qword [bp + 30]	; 3: -35 94 30

exp$16:	; push float power
x7255:	fld qword [bp + 46]	; 3: -35 70 46

exp$17:	; push float x
x7258:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary523 = power * x
x7261:	fmul	; 2: -34 -55

exp$19:	; pop float power
x7263:	fstp qword [bp + 46]	; 3: -35 94 46

exp$20:	; push float faculty
x7266:	fld qword [bp + 38]	; 3: -35 70 38

exp$21:	; push float index
x7269:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x7272:	fld1	; 2: -39 -24

exp$23:	; index = index + 1
x7274:	fadd	; 2: -34 -63

exp$24:	; top float index
x7276:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary525 = faculty * £temporary524
x7279:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x7281:	fstp qword [bp + 38]	; 3: -35 94 38

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x7284:	fld qword [bp + 22]	; 3: -35 70 22

exp$29:	; parameter term, offset 6
x7287:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x7290:	mov word [bp + 54], exp$31	; 5: -57 70 54 -120 28
x7295:	mov [bp + 56], bp	; 3: -119 110 56
x7298:	add bp, 54	; 3: -125 -59 54
x7301:	nop	; 1: -112
x7302:	jmp fabs	; 2: -21 -126

exp$31:	; post call

exp$32:	; £temporary526 = return_value

exp$33:	; push float 0.000000001
x7304:	fld qword [float8$0.000000001#]	; 4: -35 6 2 28

exp$34:	; if £temporary526 >= 0.000000001 goto 8
x7308:	fcompp	; 2: -34 -39
x7310:	fstsw ax	; 3: -101 -33 -32
x7313:	sahf	; 1: -98
x7314:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x7316:	fld qword [bp + 30]	; 3: -35 70 30

exp$36:	; return_value = sum

exp$37:	; return
x7319:	mov ax, [bp]	; 3: -117 70 0
x7322:	mov di, [bp + 4]	; 3: -117 126 4
x7325:	mov bp, [bp + 2]	; 3: -117 110 2
x7328:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

floor:	; push float x
x7330:	fld qword [bp + 6]	; 3: -35 70 6

floor$1:	; push 0
x7333:	fldz	; 2: -39 -18

floor$2:	; if x >= 0 goto 13
x7335:	fcompp	; 2: -34 -39
x7337:	fstsw ax	; 3: -101 -33 -32
x7340:	sahf	; 1: -98
x7341:	jbe floor$13	; 2: 118 35

floor$3:	; call header integral zero 0 stack zero 0

floor$4:	; push float x
x7343:	fld qword [bp + 6]	; 3: -35 70 6

floor$5:	; £temporary805 = -x
x7346:	fchs	; 2: -39 -32

floor$6:	; parameter £temporary805, offset 6
x7348:	fstp qword [bp + 20]	; 3: -35 94 20

floor$7:	; call function noellipse-noellipse ceil
x7351:	mov word [bp + 14], floor$8	; 5: -57 70 14 -59 28
x7356:	mov [bp + 16], bp	; 3: -119 110 16
x7359:	add bp, 14	; 3: -125 -59 14
x7362:	nop	; 1: -112
x7363:	jmp ceil	; 2: -21 43

floor$8:	; post call

floor$9:	; £temporary806 = return_value

floor$10:	; £temporary807 = -£temporary806
x7365:	fchs	; 2: -39 -32

floor$11:	; return_value = £temporary807

floor$12:	; return
x7367:	mov ax, [bp]	; 3: -117 70 0
x7370:	mov di, [bp + 4]	; 3: -117 126 4
x7373:	mov bp, [bp + 2]	; 3: -117 110 2
x7376:	jmp ax	; 2: -1 -32

floor$13:	; push float x
x7378:	fld qword [bp + 6]	; 3: -35 70 6

floor$14:	; £temporary808 = float_to_int x (Double -> Signed_Long_Int)
x7381:	fistp dword [container4bytes#]	; 4: -37 30 43 25
x7385:	mov eax, [container4bytes#]	; 4: 102 -95 43 25

floor$15:	; £temporary809 = int_to_float £temporary808 (Signed_Long_Int -> Double)
x7389:	mov [container4bytes#], eax	; 4: 102 -93 43 25
x7393:	fild dword [container4bytes#]	; 4: -37 6 43 25

floor$16:	; return_value = £temporary809

floor$17:	; return
x7397:	mov ax, [bp]	; 3: -117 70 0
x7400:	mov di, [bp + 4]	; 3: -117 126 4
x7403:	mov bp, [bp + 2]	; 3: -117 110 2
x7406:	jmp ax	; 2: -1 -32

floor$18:	; function end floor

ceil:	; push float x
x7408:	fld qword [bp + 6]	; 3: -35 70 6

ceil$1:	; push 0
x7411:	fldz	; 2: -39 -18

ceil$2:	; if x >= 0 goto 13
x7413:	fcompp	; 2: -34 -39
x7415:	fstsw ax	; 3: -101 -33 -32
x7418:	sahf	; 1: -98
x7419:	jbe ceil$13	; 2: 118 35

ceil$3:	; call header integral zero 0 stack zero 0

ceil$4:	; push float x
x7421:	fld qword [bp + 6]	; 3: -35 70 6

ceil$5:	; £temporary812 = -x
x7424:	fchs	; 2: -39 -32

ceil$6:	; parameter £temporary812, offset 6
x7426:	fstp qword [bp + 20]	; 3: -35 94 20

ceil$7:	; call function noellipse-noellipse floor
x7429:	mov word [bp + 14], ceil$8	; 5: -57 70 14 19 29
x7434:	mov [bp + 16], bp	; 3: -119 110 16
x7437:	add bp, 14	; 3: -125 -59 14
x7440:	nop	; 1: -112
x7441:	jmp floor	; 2: -21 -113

ceil$8:	; post call

ceil$9:	; £temporary813 = return_value

ceil$10:	; £temporary814 = -£temporary813
x7443:	fchs	; 2: -39 -32

ceil$11:	; return_value = £temporary814

ceil$12:	; return
x7445:	mov ax, [bp]	; 3: -117 70 0
x7448:	mov di, [bp + 4]	; 3: -117 126 4
x7451:	mov bp, [bp + 2]	; 3: -117 110 2
x7454:	jmp ax	; 2: -1 -32

ceil$13:	; push float x
x7456:	fld qword [bp + 6]	; 3: -35 70 6

ceil$14:	; push float 0.999999999999
x7459:	fld qword [float8$0.999999999999#]	; 4: -35 6 68 29

ceil$15:	; £temporary815 = x + 0.999999999999
x7463:	fadd	; 2: -34 -63

ceil$16:	; £temporary816 = float_to_int £temporary815 (Double -> Signed_Long_Int)
x7465:	fistp dword [container4bytes#]	; 4: -37 30 43 25
x7469:	mov eax, [container4bytes#]	; 4: 102 -95 43 25

ceil$17:	; £temporary817 = int_to_float £temporary816 (Signed_Long_Int -> Double)
x7473:	mov [container4bytes#], eax	; 4: 102 -93 43 25
x7477:	fild dword [container4bytes#]	; 4: -37 6 43 25

ceil$18:	; return_value = £temporary817

ceil$19:	; return
x7481:	mov ax, [bp]	; 3: -117 70 0
x7484:	mov di, [bp + 4]	; 3: -117 126 4
x7487:	mov bp, [bp + 2]	; 3: -117 110 2
x7490:	jmp ax	; 2: -1 -32

ceil$20:	; function end ceil

float8$0.999999999999#:
x7492:	dq 0.999999999999	; 8: -47 -36 -1 -1 -1 -1 -17 63

scanPattern:	; index = 0
x7500:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanPattern$1:	; call header integral zero 0 stack zero 0

scanPattern$2:	; call function noellipse-noellipse scanChar
x7505:	mov word [bp + 14], scanPattern$3	; 5: -57 70 14 95 29
x7510:	mov [bp + 16], bp	; 3: -119 110 16
x7513:	add bp, 14	; 3: -125 -59 14
x7516:	jmp scanChar	; 3: -23 -64 -19

scanPattern$3:	; post call

scanPattern$4:	; £temporary1250 = return_value

scanPattern$5:	; input = £temporary1250
x7519:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$6:	; call header integral zero 0 stack zero 0

scanPattern$7:	; £temporary1251 = int_to_int input (Signed_Char -> Signed_Int)
x7522:	mov al, [bp + 14]	; 3: -118 70 14
x7525:	and ax, 255	; 3: 37 -1 0
x7528:	cmp al, 0	; 2: 60 0
x7530:	jge scanPattern$8	; 2: 125 4
x7532:	neg al	; 2: -10 -40
x7534:	neg ax	; 2: -9 -40

scanPattern$8:	; parameter £temporary1251, offset 6
x7536:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$9:	; call function noellipse-noellipse isspace
x7539:	mov word [bp + 15], scanPattern$10	; 5: -57 70 15 -127 29
x7544:	mov [bp + 17], bp	; 3: -119 110 17
x7547:	add bp, 15	; 3: -125 -59 15
x7550:	jmp isspace	; 3: -23 90 -16

scanPattern$10:	; post call

scanPattern$11:	; £temporary1252 = return_value

scanPattern$12:	; if £temporary1252 == 0 goto 19
x7553:	cmp bx, 0	; 3: -125 -5 0
x7556:	je scanPattern$19	; 2: 116 19

scanPattern$13:	; call header integral zero 0 stack zero 0

scanPattern$14:	; call function noellipse-noellipse scanChar
x7558:	mov word [bp + 15], scanPattern$15	; 5: -57 70 15 -108 29
x7563:	mov [bp + 17], bp	; 3: -119 110 17
x7566:	add bp, 15	; 3: -125 -59 15
x7569:	jmp scanChar	; 3: -23 -117 -19

scanPattern$15:	; post call

scanPattern$16:	; £temporary1253 = return_value

scanPattern$17:	; input = £temporary1253
x7572:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$18:	; goto 6
x7575:	jmp scanPattern$6	; 2: -21 -55

scanPattern$19:	; if string == 0 goto 53
x7577:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x7581:	je scanPattern$53	; 4: 15 -124 -113 0

scanPattern$20:	; if not != 0 goto 29
x7585:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x7589:	jne scanPattern$29	; 2: 117 42

scanPattern$21:	; call header integral zero 0 stack zero 0

scanPattern$22:	; parameter pattern, offset 6
x7591:	mov ax, [bp + 8]	; 3: -117 70 8
x7594:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$23:	; £temporary1258 = int_to_int input (Signed_Char -> Signed_Int)
x7597:	mov al, [bp + 14]	; 3: -118 70 14
x7600:	and ax, 255	; 3: 37 -1 0
x7603:	cmp al, 0	; 2: 60 0
x7605:	jge scanPattern$24	; 2: 125 4
x7607:	neg al	; 2: -10 -40
x7609:	neg ax	; 2: -9 -40

scanPattern$24:	; parameter £temporary1258, offset 8
x7611:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$25:	; call function noellipse-noellipse strchr
x7614:	mov word [bp + 15], scanPattern$26	; 5: -57 70 15 -52 29
x7619:	mov [bp + 17], bp	; 3: -119 110 17
x7622:	add bp, 15	; 3: -125 -59 15
x7625:	jmp strchr	; 3: -23 -116 -9

scanPattern$26:	; post call

scanPattern$27:	; £temporary1259 = return_value

scanPattern$28:	; if £temporary1259 != 0 goto 38
x7628:	cmp bx, 0	; 3: -125 -5 0
x7631:	jne scanPattern$38	; 2: 117 48

scanPattern$29:	; if not == 0 goto 49
x7633:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x7637:	je scanPattern$49	; 2: 116 78

scanPattern$30:	; call header integral zero 0 stack zero 0

scanPattern$31:	; parameter pattern, offset 6
x7639:	mov ax, [bp + 8]	; 3: -117 70 8
x7642:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$32:	; £temporary1262 = int_to_int input (Signed_Char -> Signed_Int)
x7645:	mov al, [bp + 14]	; 3: -118 70 14
x7648:	and ax, 255	; 3: 37 -1 0
x7651:	cmp al, 0	; 2: 60 0
x7653:	jge scanPattern$33	; 2: 125 4
x7655:	neg al	; 2: -10 -40
x7657:	neg ax	; 2: -9 -40

scanPattern$33:	; parameter £temporary1262, offset 8
x7659:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$34:	; call function noellipse-noellipse strchr
x7662:	mov word [bp + 15], scanPattern$35	; 5: -57 70 15 -4 29
x7667:	mov [bp + 17], bp	; 3: -119 110 17
x7670:	add bp, 15	; 3: -125 -59 15
x7673:	jmp strchr	; 3: -23 92 -9

scanPattern$35:	; post call

scanPattern$36:	; £temporary1263 = return_value

scanPattern$37:	; if £temporary1263 != 0 goto 49
x7676:	cmp bx, 0	; 3: -125 -5 0
x7679:	jne scanPattern$49	; 2: 117 36

scanPattern$38:	; £temporary1269 = index
x7681:	mov ax, [bp + 12]	; 3: -117 70 12

scanPattern$39:	; ++index
x7684:	inc word [bp + 12]	; 3: -1 70 12

scanPattern$40:	; £temporary1271 = string + £temporary1269
x7687:	mov si, [bp + 6]	; 3: -117 118 6
x7690:	add si, ax	; 2: 1 -58

scanPattern$41:	; £temporary1270 -> £temporary1271 = *£temporary1271

scanPattern$42:	; £temporary1270 -> £temporary1271 = input
x7692:	mov al, [bp + 14]	; 3: -118 70 14
x7695:	mov [si], al	; 2: -120 4

scanPattern$43:	; call header integral zero 0 stack zero 0

scanPattern$44:	; call function noellipse-noellipse scanChar
x7697:	mov word [bp + 15], scanPattern$45	; 5: -57 70 15 31 30
x7702:	mov [bp + 17], bp	; 3: -119 110 17
x7705:	add bp, 15	; 3: -125 -59 15
x7708:	jmp scanChar	; 3: -23 0 -19

scanPattern$45:	; post call

scanPattern$46:	; £temporary1272 = return_value

scanPattern$47:	; input = £temporary1272
x7711:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$48:	; goto 20
x7714:	jmp scanPattern$20	; 3: -23 124 -1

scanPattern$49:	; £temporary1274 = string + index
x7717:	mov si, [bp + 6]	; 3: -117 118 6
x7720:	add si, [bp + 12]	; 3: 3 118 12

scanPattern$50:	; £temporary1273 -> £temporary1274 = *£temporary1274

scanPattern$51:	; £temporary1273 -> £temporary1274 = 0
x7723:	mov byte [si], 0	; 3: -58 4 0

scanPattern$52:	; goto 77
x7726:	jmp scanPattern$77	; 2: -21 115

scanPattern$53:	; if not != 0 goto 62
x7728:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x7732:	jne scanPattern$62	; 2: 117 42

scanPattern$54:	; call header integral zero 0 stack zero 0

scanPattern$55:	; parameter pattern, offset 6
x7734:	mov ax, [bp + 8]	; 3: -117 70 8
x7737:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$56:	; £temporary1277 = int_to_int input (Signed_Char -> Signed_Int)
x7740:	mov al, [bp + 14]	; 3: -118 70 14
x7743:	and ax, 255	; 3: 37 -1 0
x7746:	cmp al, 0	; 2: 60 0
x7748:	jge scanPattern$57	; 2: 125 4
x7750:	neg al	; 2: -10 -40
x7752:	neg ax	; 2: -9 -40

scanPattern$57:	; parameter £temporary1277, offset 8
x7754:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$58:	; call function noellipse-noellipse strchr
x7757:	mov word [bp + 15], scanPattern$59	; 5: -57 70 15 91 30
x7762:	mov [bp + 17], bp	; 3: -119 110 17
x7765:	add bp, 15	; 3: -125 -59 15
x7768:	jmp strchr	; 3: -23 -3 -10

scanPattern$59:	; post call

scanPattern$60:	; £temporary1278 = return_value

scanPattern$61:	; if £temporary1278 != 0 goto 71
x7771:	cmp bx, 0	; 3: -125 -5 0
x7774:	jne scanPattern$71	; 2: 117 48

scanPattern$62:	; if not == 0 goto 77
x7776:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x7780:	je scanPattern$77	; 2: 116 61

scanPattern$63:	; call header integral zero 0 stack zero 0

scanPattern$64:	; parameter pattern, offset 6
x7782:	mov ax, [bp + 8]	; 3: -117 70 8
x7785:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$65:	; £temporary1281 = int_to_int input (Signed_Char -> Signed_Int)
x7788:	mov al, [bp + 14]	; 3: -118 70 14
x7791:	and ax, 255	; 3: 37 -1 0
x7794:	cmp al, 0	; 2: 60 0
x7796:	jge scanPattern$66	; 2: 125 4
x7798:	neg al	; 2: -10 -40
x7800:	neg ax	; 2: -9 -40

scanPattern$66:	; parameter £temporary1281, offset 8
x7802:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$67:	; call function noellipse-noellipse strchr
x7805:	mov word [bp + 15], scanPattern$68	; 5: -57 70 15 -117 30
x7810:	mov [bp + 17], bp	; 3: -119 110 17
x7813:	add bp, 15	; 3: -125 -59 15
x7816:	jmp strchr	; 3: -23 -51 -10

scanPattern$68:	; post call

scanPattern$69:	; £temporary1282 = return_value

scanPattern$70:	; if £temporary1282 != 0 goto 77
x7819:	cmp bx, 0	; 3: -125 -5 0
x7822:	jne scanPattern$77	; 2: 117 19

scanPattern$71:	; call header integral zero 0 stack zero 0

scanPattern$72:	; call function noellipse-noellipse scanChar
x7824:	mov word [bp + 15], scanPattern$73	; 5: -57 70 15 -98 30
x7829:	mov [bp + 17], bp	; 3: -119 110 17
x7832:	add bp, 15	; 3: -125 -59 15
x7835:	jmp scanChar	; 3: -23 -127 -20

scanPattern$73:	; post call

scanPattern$74:	; £temporary1288 = return_value

scanPattern$75:	; input = £temporary1288
x7838:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$76:	; goto 53
x7841:	jmp scanPattern$53	; 2: -21 -115

scanPattern$77:	; return
x7843:	mov ax, [bp]	; 3: -117 70 0
x7846:	mov di, [bp + 4]	; 3: -117 126 4
x7849:	mov bp, [bp + 2]	; 3: -117 110 2
x7852:	jmp ax	; 2: -1 -32

scanPattern$78:	; function end scanPattern

printf:	; £temporary2342 = &format
x7854:	mov si, bp	; 2: -119 -18
x7856:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2343 = int_to_int £temporary2342 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2343 + 2
x7859:	add si, 2	; 3: -125 -58 2
x7862:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; call header integral zero 0 stack zero 0

printf$4:	; parameter format, offset 6
x7865:	mov ax, [bp + 6]	; 3: -117 70 6
x7868:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; parameter arg_list, offset 8
x7871:	mov ax, [di + 8]	; 3: -117 69 8
x7874:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; call function ellipse-noellipse vprintf
x7877:	mov word [di + 10], printf$7	; 5: -57 69 10 -40 30
x7882:	mov [di + 12], bp	; 3: -119 109 12
x7885:	mov [di + 14], di	; 3: -119 125 14
x7888:	add di, 10	; 3: -125 -57 10
x7891:	mov bp, di	; 2: -119 -3
x7893:	nop	; 1: -112
x7894:	jmp vprintf	; 2: -21 11

printf$7:	; post call

printf$8:	; £temporary2345 = return_value

printf$9:	; return_value = £temporary2345

printf$10:	; return
x7896:	mov ax, [bp]	; 3: -117 70 0
x7899:	mov di, [bp + 4]	; 3: -117 126 4
x7902:	mov bp, [bp + 2]	; 3: -117 110 2
x7905:	jmp ax	; 2: -1 -32

printf$11:	; function end printf

vprintf:	; call header integral zero 0 stack zero 0

vprintf$1:	; parameter stdout, offset 6
x7907:	mov ax, [stdout]	; 3: -95 14 31
x7910:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; parameter format, offset 8
x7913:	mov ax, [bp + 6]	; 3: -117 70 6
x7916:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; parameter arg_list, offset 10
x7919:	mov ax, [bp + 8]	; 3: -117 70 8
x7922:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; call function noellipse-noellipse vfprintf
x7925:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 3 31
x7930:	mov [bp + 12], bp	; 3: -119 110 12
x7933:	add bp, 10	; 3: -125 -59 10
x7936:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; post call

vprintf$6:	; £temporary2349 = return_value

vprintf$7:	; return_value = £temporary2349

vprintf$8:	; return
x7939:	mov ax, [bp]	; 3: -117 70 0
x7942:	mov di, [bp + 4]	; 3: -117 126 4
x7945:	mov bp, [bp + 2]	; 3: -117 110 2
x7948:	jmp ax	; 2: -1 -32

vprintf$9:	; function end vprintf

stdout:
x7950:	dw g_fileArray + 29	; 2: 45 31

g_fileArray:
x7952:	dw 1	; 2: 1 0
x7954:	dw 0	; 2: 0 0
x7956:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x7981:	dw 1	; 2: 1 0
x7983:	dw 1	; 2: 1 0
x7985:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x8010:	dw 1	; 2: 1 0
x8012:	dw 2	; 2: 2 0
x8014:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x8039:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

vfprintf:	; g_outStatus = 0
x8532:	mov word [g_outStatus], 0	; 6: -57 6 -123 33 0 0

vfprintf$1:	; £temporary2361 = int_to_int outStream (Pointer -> Pointer)
x8538:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2361
x8541:	mov [g_outDevice], ax	; 3: -93 -121 33

vfprintf$3:	; call header integral zero 0 stack zero 0

vfprintf$4:	; parameter format, offset 6
x8544:	mov ax, [bp + 8]	; 3: -117 70 8
x8547:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; parameter arg_list, offset 8
x8550:	mov ax, [bp + 10]	; 3: -117 70 10
x8553:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; call function noellipse-noellipse printFormat
x8556:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 122 33
x8561:	mov [bp + 14], bp	; 3: -119 110 14
x8564:	add bp, 12	; 3: -125 -59 12
x8567:	nop	; 1: -112
x8568:	jmp printFormat	; 2: -21 15

vfprintf$7:	; post call

vfprintf$8:	; £temporary2362 = return_value

vfprintf$9:	; return_value = £temporary2362

vfprintf$10:	; return
x8570:	mov ax, [bp]	; 3: -117 70 0
x8573:	mov di, [bp + 4]	; 3: -117 126 4
x8576:	mov bp, [bp + 2]	; 3: -117 110 2
x8579:	jmp ax	; 2: -1 -32

vfprintf$11:	; function end vfprintf

g_outStatus:
x8581:	db 0, 0	; 2: 0 0

g_outDevice:
x8583:	db 0, 0	; 2: 0 0

printFormat:	; width = 0
x8585:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; precision = 0
x8590:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; percent = 0
x8595:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; plus = 0
x8600:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; minus = 0
x8605:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; space = 0
x8610:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; zero = 0
x8615:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; grid = 0
x8620:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; widthStar = 0
x8625:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; period = 0
x8630:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; precisionStar = 0
x8635:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; shortInt = 0
x8640:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; longInt = 0
x8645:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; longDouble = 0
x8650:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; g_outChars = 0
x8655:	mov word [g_outChars], 0	; 6: -57 6 -21 38 0 0

printFormat$15:	; index = 0
x8661:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2194 = format + index
x8666:	mov si, [bp + 6]	; 3: -117 118 6
x8669:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2193 -> £temporary2194 = *£temporary2194

printFormat$18:	; if £temporary2193 -> £temporary2194 == 0 goto 286
x8672:	cmp byte [si], 0	; 3: -128 60 0
x8675:	je printFormat$286	; 4: 15 -124 -34 4

printFormat$19:	; £temporary2198 = format + index
x8679:	mov si, [bp + 6]	; 3: -117 118 6
x8682:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2197 -> £temporary2198 = *£temporary2198

printFormat$21:	; c = £temporary2197 -> £temporary2198
x8685:	mov al, [si]	; 2: -118 4
x8687:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 264
x8690:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x8694:	je printFormat$264	; 4: 15 -124 99 4

printFormat$23:	; case c == 43 goto 52
x8698:	mov al, [bp + 40]	; 3: -118 70 40
x8701:	cmp al, 43	; 2: 60 43
x8703:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; case c == 45 goto 54
x8707:	cmp al, 45	; 2: 60 45
x8709:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; case c == 32 goto 56
x8713:	cmp al, 32	; 2: 60 32
x8715:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; case c == 48 goto 58
x8719:	cmp al, 48	; 2: 60 48
x8721:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; case c == 35 goto 60
x8725:	cmp al, 35	; 2: 60 35
x8727:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; case c == 46 goto 62
x8731:	cmp al, 46	; 2: 60 46
x8733:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; case c == 42 goto 64
x8737:	cmp al, 42	; 2: 60 42
x8739:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; case c == 104 goto 69
x8743:	cmp al, 104	; 2: 60 104
x8745:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; case c == 108 goto 71
x8749:	cmp al, 108	; 2: 60 108
x8751:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; case c == 76 goto 73
x8755:	cmp al, 76	; 2: 60 76
x8757:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; case c == 37 goto 75
x8761:	cmp al, 37	; 2: 60 37
x8763:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; case c == 110 goto 75
x8767:	cmp al, 110	; 2: 60 110
x8769:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; case c == 112 goto 75
x8773:	cmp al, 112	; 2: 60 112
x8775:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; case c == 71 goto 75
x8779:	cmp al, 71	; 2: 60 71
x8781:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; case c == 103 goto 75
x8785:	cmp al, 103	; 2: 60 103
x8787:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; case c == 69 goto 75
x8791:	cmp al, 69	; 2: 60 69
x8793:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; case c == 101 goto 75
x8797:	cmp al, 101	; 2: 60 101
x8799:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; case c == 102 goto 75
x8803:	cmp al, 102	; 2: 60 102
x8805:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; case c == 115 goto 75
x8809:	cmp al, 115	; 2: 60 115
x8811:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; case c == 99 goto 75
x8815:	cmp al, 99	; 2: 60 99
x8817:	je printFormat$75	; 2: 116 125

printFormat$43:	; case c == 88 goto 75
x8819:	cmp al, 88	; 2: 60 88
x8821:	je printFormat$75	; 2: 116 121

printFormat$44:	; case c == 120 goto 75
x8823:	cmp al, 120	; 2: 60 120
x8825:	je printFormat$75	; 2: 116 117

printFormat$45:	; case c == 111 goto 75
x8827:	cmp al, 111	; 2: 60 111
x8829:	je printFormat$75	; 2: 116 113

printFormat$46:	; case c == 98 goto 75
x8831:	cmp al, 98	; 2: 60 98
x8833:	je printFormat$75	; 2: 116 109

printFormat$47:	; case c == 117 goto 75
x8835:	cmp al, 117	; 2: 60 117
x8837:	je printFormat$75	; 2: 116 105

printFormat$48:	; case c == 100 goto 75
x8839:	cmp al, 100	; 2: 60 100
x8841:	je printFormat$75	; 2: 116 101

printFormat$49:	; case c == 105 goto 75
x8843:	cmp al, 105	; 2: 60 105
x8845:	je printFormat$75	; 2: 116 97

printFormat$50:	; case end c

printFormat$51:	; goto 241
x8847:	jmp printFormat$241	; 3: -23 88 3

printFormat$52:	; plus = 1
x8850:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 284
x8855:	jmp printFormat$284	; 3: -23 37 4

printFormat$54:	; minus = 1
x8858:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 284
x8863:	jmp printFormat$284	; 3: -23 29 4

printFormat$56:	; space = 1
x8866:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 284
x8871:	jmp printFormat$284	; 3: -23 21 4

printFormat$58:	; zero = 1
x8874:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 284
x8879:	jmp printFormat$284	; 3: -23 13 4

printFormat$60:	; grid = 1
x8882:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 284
x8887:	jmp printFormat$284	; 3: -23 5 4

printFormat$62:	; period = 1
x8890:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 284
x8895:	jmp printFormat$284	; 3: -23 -3 3

printFormat$64:	; if period != 0 goto 67
x8898:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x8902:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x8904:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 284
x8909:	jmp printFormat$284	; 3: -23 -17 3

printFormat$67:	; precision = -1
x8912:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 284
x8917:	jmp printFormat$284	; 3: -23 -25 3

printFormat$69:	; shortInt = 1
x8920:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 284
x8925:	jmp printFormat$284	; 3: -23 -33 3

printFormat$71:	; longInt = 1
x8928:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 284
x8933:	jmp printFormat$284	; 3: -23 -41 3

printFormat$73:	; longDouble = 1
x8936:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 284
x8941:	jmp printFormat$284	; 3: -23 -49 3

printFormat$75:	; if minus == 0 goto 106
x8944:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x8948:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x8952:	mov ax, [g_outChars]	; 3: -95 -21 38
x8955:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; call header integral zero 0 stack zero 0

printFormat$78:	; £temporary2202 = format + index
x8958:	mov si, [bp + 6]	; 3: -117 118 6
x8961:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2201 -> £temporary2202 = *£temporary2202

printFormat$80:	; £temporary2203 = &£temporary2201 -> £temporary2202

printFormat$81:	; parameter £temporary2203, offset 6
x8964:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; parameter arg_list, offset 8
x8967:	mov ax, [bp + 8]	; 3: -117 70 8
x8970:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; parameter plus, offset 10
x8973:	mov ax, [bp + 18]	; 3: -117 70 18
x8976:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; parameter space, offset 12
x8979:	mov ax, [bp + 22]	; 3: -117 70 22
x8982:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; parameter grid, offset 14
x8985:	mov ax, [bp + 26]	; 3: -117 70 26
x8988:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; £temporary2204 = &width
x8991:	mov si, bp	; 2: -119 -18
x8993:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2204, offset 16
x8996:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; parameter precision, offset 18
x8999:	mov ax, [bp + 14]	; 3: -117 70 14
x9002:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; parameter shortInt, offset 20
x9005:	mov ax, [bp + 34]	; 3: -117 70 34
x9008:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; parameter longInt, offset 22
x9011:	mov ax, [bp + 36]	; 3: -117 70 36
x9014:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; parameter longDouble, offset 24
x9017:	mov ax, [bp + 38]	; 3: -117 70 38
x9020:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; parameter 1, offset 26
x9023:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; parameter 0, offset 28
x9028:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; call function noellipse-noellipse printArgument
x9033:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 87 35
x9038:	mov [bp + 45], bp	; 3: -119 110 45
x9041:	add bp, 43	; 3: -125 -59 43
x9044:	jmp printArgument	; 3: -23 -104 3

printFormat$95:	; post call

printFormat$96:	; £temporary2205 = return_value

printFormat$97:	; arg_list = £temporary2205
x9047:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2207 = g_outChars - startChars
x9050:	mov ax, [g_outChars]	; 3: -95 -21 38
x9053:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x9056:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2207 >= width goto 239
x9059:	cmp ax, [bp + 12]	; 3: 59 70 12
x9062:	jge printFormat$239	; 4: 15 -115 120 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x9066:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x9070:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 124 35
x9075:	mov [bp + 47], bp	; 3: -119 110 47
x9078:	add bp, 45	; 3: -125 -59 45
x9081:	jmp printChar	; 3: -23 -124 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x9084:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 186
x9086:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x9090:	je printFormat$186	; 4: 15 -124 100 1

printFormat$107:	; startChars = g_outChars
x9094:	mov ax, [g_outChars]	; 3: -95 -21 38
x9097:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$108:	; oldOutStatus = g_outStatus
x9100:	mov ax, [g_outStatus]	; 3: -95 -123 33
x9103:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$109:	; negative = 0
x9106:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$110:	; g_outStatus = 2
x9111:	mov word [g_outStatus], 2	; 6: -57 6 -123 33 2 0

printFormat$111:	; call header integral zero 0 stack zero 0

printFormat$112:	; £temporary2211 = format + index
x9117:	mov si, [bp + 6]	; 3: -117 118 6
x9120:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2210 -> £temporary2211 = *£temporary2211

printFormat$114:	; £temporary2212 = &£temporary2210 -> £temporary2211

printFormat$115:	; parameter £temporary2212, offset 6
x9123:	mov [bp + 53], si	; 3: -119 118 53

printFormat$116:	; parameter arg_list, offset 8
x9126:	mov ax, [bp + 8]	; 3: -117 70 8
x9129:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$117:	; parameter 0, offset 10
x9132:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$118:	; parameter 0, offset 12
x9137:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$119:	; parameter grid, offset 14
x9142:	mov ax, [bp + 26]	; 3: -117 70 26
x9145:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$120:	; £temporary2213 = &width
x9148:	mov si, bp	; 2: -119 -18
x9150:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2213, offset 16
x9153:	mov [bp + 63], si	; 3: -119 118 63

printFormat$122:	; parameter precision, offset 18
x9156:	mov ax, [bp + 14]	; 3: -117 70 14
x9159:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$123:	; parameter shortInt, offset 20
x9162:	mov ax, [bp + 34]	; 3: -117 70 34
x9165:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$124:	; parameter longInt, offset 22
x9168:	mov ax, [bp + 36]	; 3: -117 70 36
x9171:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$125:	; parameter longDouble, offset 24
x9174:	mov ax, [bp + 38]	; 3: -117 70 38
x9177:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$126:	; parameter 0, offset 26
x9180:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$127:	; £temporary2214 = &negative
x9185:	mov si, bp	; 2: -119 -18
x9187:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2214, offset 28
x9190:	mov [bp + 75], si	; 3: -119 118 75

printFormat$129:	; call function noellipse-noellipse printArgument
x9193:	mov word [bp + 47], printFormat$130	; 5: -57 70 47 -9 35
x9198:	mov [bp + 49], bp	; 3: -119 110 49
x9201:	add bp, 47	; 3: -125 -59 47
x9204:	jmp printArgument	; 3: -23 -8 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x9207:	mov ax, [bp + 43]	; 3: -117 70 43
x9210:	mov [g_outStatus], ax	; 3: -93 -123 33

printFormat$132:	; field = g_outChars - startChars
x9213:	mov ax, [g_outChars]	; 3: -95 -21 38
x9216:	sub ax, [bp + 41]	; 3: 43 70 41
x9219:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x9222:	mov ax, [bp + 41]	; 3: -117 70 41
x9225:	mov [g_outChars], ax	; 3: -93 -21 38

printFormat$134:	; if negative == 0 goto 145
x9228:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x9232:	je printFormat$145	; 2: 116 41

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 88, offset 6
x9234:	mov byte [bp + 55], 88	; 4: -58 70 55 88

printFormat$137:	; call function noellipse-noellipse printChar
x9238:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 36 36
x9243:	mov [bp + 51], bp	; 3: -119 110 51
x9246:	add bp, 49	; 3: -125 -59 49
x9249:	jmp printChar	; 3: -23 -36 9

printFormat$138:	; post call

printFormat$139:	; call header integral zero 0 stack zero 0

printFormat$140:	; parameter 45, offset 6
x9252:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$141:	; call function noellipse-noellipse printChar
x9256:	mov word [bp + 49], printFormat$142	; 5: -57 70 49 54 36
x9261:	mov [bp + 51], bp	; 3: -119 110 51
x9264:	add bp, 49	; 3: -125 -59 49
x9267:	jmp printChar	; 3: -23 -54 9

printFormat$142:	; post call

printFormat$143:	; ++field
x9270:	inc word [bp + 47]	; 3: -1 70 47

printFormat$144:	; goto 158
x9273:	jmp printFormat$158	; 2: -21 57

printFormat$145:	; if plus == 0 goto 152
x9275:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x9279:	je printFormat$152	; 2: 116 23

printFormat$146:	; call header integral zero 0 stack zero 0

printFormat$147:	; parameter 43, offset 6
x9281:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$148:	; call function noellipse-noellipse printChar
x9285:	mov word [bp + 49], printFormat$149	; 5: -57 70 49 83 36
x9290:	mov [bp + 51], bp	; 3: -119 110 51
x9293:	add bp, 49	; 3: -125 -59 49
x9296:	jmp printChar	; 3: -23 -83 9

printFormat$149:	; post call

printFormat$150:	; ++field
x9299:	inc word [bp + 47]	; 3: -1 70 47

printFormat$151:	; goto 158
x9302:	jmp printFormat$158	; 2: -21 28

printFormat$152:	; if space == 0 goto 158
x9304:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x9308:	je printFormat$158	; 2: 116 22

printFormat$153:	; call header integral zero 0 stack zero 0

printFormat$154:	; parameter 32, offset 6
x9310:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$155:	; call function noellipse-noellipse printChar
x9314:	mov word [bp + 49], printFormat$156	; 5: -57 70 49 112 36
x9319:	mov [bp + 51], bp	; 3: -119 110 51
x9322:	add bp, 49	; 3: -125 -59 49
x9325:	jmp printChar	; 3: -23 -112 9

printFormat$156:	; post call

printFormat$157:	; £temporary2227 = field + 1
x9328:	mov ax, [bp + 47]	; 3: -117 70 47
x9331:	inc ax	; 1: 64

printFormat$158:	; ++field
x9332:	inc word [bp + 47]	; 3: -1 70 47

printFormat$159:	; if £temporary2227 >= width goto 165
x9335:	cmp ax, [bp + 12]	; 3: 59 70 12
x9338:	jge printFormat$165	; 2: 125 20

printFormat$160:	; call header integral zero 0 stack zero 0

printFormat$161:	; parameter 48, offset 6
x9340:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$162:	; call function noellipse-noellipse printChar
x9344:	mov word [bp + 49], printFormat$163	; 5: -57 70 49 -114 36
x9349:	mov [bp + 51], bp	; 3: -119 110 51
x9352:	add bp, 49	; 3: -125 -59 49
x9355:	jmp printChar	; 3: -23 114 9

printFormat$163:	; post call

printFormat$164:	; goto 158
x9358:	jmp printFormat$158	; 2: -21 -28

printFormat$165:	; call header integral zero 0 stack zero 0

printFormat$166:	; £temporary2231 = format + index
x9360:	mov si, [bp + 6]	; 3: -117 118 6
x9363:	add si, [bp + 10]	; 3: 3 118 10

printFormat$167:	; £temporary2230 -> £temporary2231 = *£temporary2231

printFormat$168:	; £temporary2232 = &£temporary2230 -> £temporary2231

printFormat$169:	; parameter £temporary2232, offset 6
x9366:	mov [bp + 55], si	; 3: -119 118 55

printFormat$170:	; parameter arg_list, offset 8
x9369:	mov ax, [bp + 8]	; 3: -117 70 8
x9372:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$171:	; parameter 0, offset 10
x9375:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$172:	; parameter 0, offset 12
x9380:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$173:	; parameter grid, offset 14
x9385:	mov ax, [bp + 26]	; 3: -117 70 26
x9388:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$174:	; parameter 0, offset 16
x9391:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$175:	; parameter precision, offset 18
x9396:	mov ax, [bp + 14]	; 3: -117 70 14
x9399:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$176:	; parameter shortInt, offset 20
x9402:	mov ax, [bp + 34]	; 3: -117 70 34
x9405:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$177:	; parameter longInt, offset 22
x9408:	mov ax, [bp + 36]	; 3: -117 70 36
x9411:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$178:	; parameter longDouble, offset 24
x9414:	mov ax, [bp + 38]	; 3: -117 70 38
x9417:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$179:	; parameter 0, offset 26
x9420:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$180:	; parameter 0, offset 28
x9425:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$181:	; call function noellipse-noellipse printArgument
x9430:	mov word [bp + 49], printFormat$182	; 5: -57 70 49 -28 36
x9435:	mov [bp + 51], bp	; 3: -119 110 51
x9438:	add bp, 49	; 3: -125 -59 49
x9441:	jmp printArgument	; 3: -23 11 2

printFormat$182:	; post call

printFormat$183:	; £temporary2233 = return_value

printFormat$184:	; arg_list = £temporary2233
x9444:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$185:	; goto 239
x9447:	jmp printFormat$239	; 3: -23 -8 0

printFormat$186:	; startChars = g_outChars
x9450:	mov ax, [g_outChars]	; 3: -95 -21 38
x9453:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$187:	; oldOutStatus = g_outStatus
x9456:	mov ax, [g_outStatus]	; 3: -95 -123 33
x9459:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$188:	; g_outStatus = 2
x9462:	mov word [g_outStatus], 2	; 6: -57 6 -123 33 2 0

printFormat$189:	; call header integral zero 0 stack zero 0

printFormat$190:	; £temporary2235 = format + index
x9468:	mov si, [bp + 6]	; 3: -117 118 6
x9471:	add si, [bp + 10]	; 3: 3 118 10

printFormat$191:	; £temporary2234 -> £temporary2235 = *£temporary2235

printFormat$192:	; £temporary2236 = &£temporary2234 -> £temporary2235

printFormat$193:	; parameter £temporary2236, offset 6
x9474:	mov [bp + 51], si	; 3: -119 118 51

printFormat$194:	; parameter arg_list, offset 8
x9477:	mov ax, [bp + 8]	; 3: -117 70 8
x9480:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$195:	; parameter plus, offset 10
x9483:	mov ax, [bp + 18]	; 3: -117 70 18
x9486:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$196:	; parameter space, offset 12
x9489:	mov ax, [bp + 22]	; 3: -117 70 22
x9492:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$197:	; parameter grid, offset 14
x9495:	mov ax, [bp + 26]	; 3: -117 70 26
x9498:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$198:	; £temporary2237 = &width
x9501:	mov si, bp	; 2: -119 -18
x9503:	add si, 12	; 3: -125 -58 12

printFormat$199:	; parameter £temporary2237, offset 16
x9506:	mov [bp + 61], si	; 3: -119 118 61

printFormat$200:	; parameter precision, offset 18
x9509:	mov ax, [bp + 14]	; 3: -117 70 14
x9512:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$201:	; parameter shortInt, offset 20
x9515:	mov ax, [bp + 34]	; 3: -117 70 34
x9518:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$202:	; parameter longInt, offset 22
x9521:	mov ax, [bp + 36]	; 3: -117 70 36
x9524:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$203:	; parameter longDouble, offset 24
x9527:	mov ax, [bp + 38]	; 3: -117 70 38
x9530:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$204:	; parameter 1, offset 26
x9533:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$205:	; parameter 0, offset 28
x9538:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$206:	; call function noellipse-noellipse printArgument
x9543:	mov word [bp + 45], printFormat$207	; 5: -57 70 45 85 37
x9548:	mov [bp + 47], bp	; 3: -119 110 47
x9551:	add bp, 45	; 3: -125 -59 45
x9554:	jmp printArgument	; 3: -23 -102 1

printFormat$207:	; post call

printFormat$208:	; g_outStatus = oldOutStatus
x9557:	mov ax, [bp + 43]	; 3: -117 70 43
x9560:	mov [g_outStatus], ax	; 3: -93 -123 33

printFormat$209:	; field = g_outChars - startChars
x9563:	mov ax, [g_outChars]	; 3: -95 -21 38
x9566:	sub ax, [bp + 41]	; 3: 43 70 41
x9569:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$210:	; g_outChars = startChars
x9572:	mov ax, [bp + 41]	; 3: -117 70 41
x9575:	mov [g_outChars], ax	; 3: -93 -21 38

printFormat$211:	; £temporary2240 = field
x9578:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$212:	; ++field
x9581:	inc word [bp + 45]	; 3: -1 70 45

printFormat$213:	; if £temporary2240 >= width goto 219
x9584:	cmp ax, [bp + 12]	; 3: 59 70 12
x9587:	jge printFormat$219	; 2: 125 20

printFormat$214:	; call header integral zero 0 stack zero 0

printFormat$215:	; parameter 32, offset 6
x9589:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$216:	; call function noellipse-noellipse printChar
x9593:	mov word [bp + 47], printFormat$217	; 5: -57 70 47 -121 37
x9598:	mov [bp + 49], bp	; 3: -119 110 49
x9601:	add bp, 47	; 3: -125 -59 47
x9604:	jmp printChar	; 3: -23 121 8

printFormat$217:	; post call

printFormat$218:	; goto 211
x9607:	jmp printFormat$211	; 2: -21 -31

printFormat$219:	; call header integral zero 0 stack zero 0

printFormat$220:	; £temporary2244 = format + index
x9609:	mov si, [bp + 6]	; 3: -117 118 6
x9612:	add si, [bp + 10]	; 3: 3 118 10

printFormat$221:	; £temporary2243 -> £temporary2244 = *£temporary2244

printFormat$222:	; £temporary2245 = &£temporary2243 -> £temporary2244

printFormat$223:	; parameter £temporary2245, offset 6
x9615:	mov [bp + 53], si	; 3: -119 118 53

printFormat$224:	; parameter arg_list, offset 8
x9618:	mov ax, [bp + 8]	; 3: -117 70 8
x9621:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$225:	; parameter plus, offset 10
x9624:	mov ax, [bp + 18]	; 3: -117 70 18
x9627:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$226:	; parameter space, offset 12
x9630:	mov ax, [bp + 22]	; 3: -117 70 22
x9633:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$227:	; parameter grid, offset 14
x9636:	mov ax, [bp + 26]	; 3: -117 70 26
x9639:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$228:	; parameter 0, offset 16
x9642:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$229:	; parameter precision, offset 18
x9647:	mov ax, [bp + 14]	; 3: -117 70 14
x9650:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$230:	; parameter shortInt, offset 20
x9653:	mov ax, [bp + 34]	; 3: -117 70 34
x9656:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$231:	; parameter longInt, offset 22
x9659:	mov ax, [bp + 36]	; 3: -117 70 36
x9662:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$232:	; parameter longDouble, offset 24
x9665:	mov ax, [bp + 38]	; 3: -117 70 38
x9668:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$233:	; parameter 1, offset 26
x9671:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$234:	; parameter 0, offset 28
x9676:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$235:	; call function noellipse-noellipse printArgument
x9681:	mov word [bp + 47], printFormat$236	; 5: -57 70 47 -33 37
x9686:	mov [bp + 49], bp	; 3: -119 110 49
x9689:	add bp, 47	; 3: -125 -59 47
x9692:	jmp printArgument	; 3: -23 16 1

printFormat$236:	; post call

printFormat$237:	; £temporary2246 = return_value

printFormat$238:	; arg_list = £temporary2246
x9695:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$239:	; percent = 0
x9698:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$240:	; goto 284
x9703:	jmp printFormat$284	; 3: -23 -43 0

printFormat$241:	; value = 0
x9706:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$242:	; call header integral zero 0 stack zero 0

printFormat$243:	; £temporary2249 = int_to_int c (Signed_Char -> Signed_Int)
x9711:	mov al, [bp + 40]	; 3: -118 70 40
x9714:	and ax, 255	; 3: 37 -1 0
x9717:	cmp al, 0	; 2: 60 0
x9719:	jge printFormat$244	; 2: 125 4
x9721:	neg al	; 2: -10 -40
x9723:	neg ax	; 2: -9 -40

printFormat$244:	; parameter £temporary2249, offset 6
x9725:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$245:	; call function noellipse-noellipse isdigit
x9728:	mov word [bp + 43], printFormat$246	; 5: -57 70 43 14 38
x9733:	mov [bp + 45], bp	; 3: -119 110 45
x9736:	add bp, 43	; 3: -125 -59 43
x9739:	jmp isdigit	; 3: -23 59 -23

printFormat$246:	; post call

printFormat$247:	; £temporary2250 = return_value

printFormat$248:	; if £temporary2250 == 0 goto 258
x9742:	cmp bx, 0	; 3: -125 -5 0
x9745:	je printFormat$258	; 2: 116 49

printFormat$249:	; £temporary2251 = value * 10
x9747:	mov ax, [bp + 41]	; 3: -117 70 41
x9750:	xor dx, dx	; 2: 49 -46
x9752:	imul word [int2$10#]	; 4: -9 46 -19 38

printFormat$250:	; £temporary2252 = c - 48
x9756:	mov bl, [bp + 40]	; 3: -118 94 40
x9759:	sub bl, 48	; 3: -128 -21 48

printFormat$251:	; £temporary2253 = int_to_int £temporary2252 (Signed_Char -> Signed_Int)
x9762:	and bx, 255	; 4: -127 -29 -1 0
x9766:	cmp bl, 0	; 3: -128 -5 0
x9769:	jge printFormat$252	; 2: 125 4
x9771:	neg bl	; 2: -10 -37
x9773:	neg bx	; 2: -9 -37

printFormat$252:	; value = £temporary2251 + £temporary2253
x9775:	add ax, bx	; 2: 1 -40
x9777:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$253:	; £temporary2255 = index + 1
x9780:	mov ax, [bp + 10]	; 3: -117 70 10
x9783:	inc ax	; 1: 64

printFormat$254:	; £temporary2257 = format + £temporary2255
x9784:	mov si, [bp + 6]	; 3: -117 118 6
x9787:	add si, ax	; 2: 1 -58

printFormat$255:	; £temporary2256 -> £temporary2257 = *£temporary2257

printFormat$256:	; c = £temporary2256 -> £temporary2257
x9789:	mov al, [si]	; 2: -118 4
x9791:	mov [bp + 40], al	; 3: -120 70 40

printFormat$257:	; goto 242
x9794:	jmp printFormat$242	; 2: -21 -85

printFormat$258:	; --index
x9796:	dec word [bp + 10]	; 3: -1 78 10

printFormat$259:	; if period != 0 goto 262
x9799:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x9803:	jne printFormat$262	; 2: 117 8

printFormat$260:	; width = value
x9805:	mov ax, [bp + 41]	; 3: -117 70 41
x9808:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$261:	; goto 284
x9811:	jmp printFormat$284	; 2: -21 106

printFormat$262:	; precision = value
x9813:	mov ax, [bp + 41]	; 3: -117 70 41
x9816:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$263:	; goto 284
x9819:	jmp printFormat$284	; 2: -21 98

printFormat$264:	; if c != 37 goto 280
x9821:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x9825:	jne printFormat$280	; 2: 117 72

printFormat$265:	; percent = 1
x9827:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$266:	; plus = 0
x9832:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$267:	; minus = 0
x9837:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$268:	; space = 0
x9842:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$269:	; zero = 0
x9847:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$270:	; grid = 0
x9852:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$271:	; widthStar = 0
x9857:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$272:	; period = 0
x9862:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$273:	; precisionStar = 0
x9867:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$274:	; shortInt = 0
x9872:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$275:	; longInt = 0
x9877:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$276:	; longDouble = 0
x9882:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$277:	; width = 0
x9887:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$278:	; precision = 0
x9892:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$279:	; goto 284
x9897:	jmp printFormat$284	; 2: -21 20

printFormat$280:	; call header integral zero 0 stack zero 0

printFormat$281:	; parameter c, offset 6
x9899:	mov al, [bp + 40]	; 3: -118 70 40
x9902:	mov [bp + 47], al	; 3: -120 70 47

printFormat$282:	; call function noellipse-noellipse printChar
x9905:	mov word [bp + 41], printFormat$283	; 5: -57 70 41 -65 38
x9910:	mov [bp + 43], bp	; 3: -119 110 43
x9913:	add bp, 41	; 3: -125 -59 41
x9916:	jmp printChar	; 3: -23 65 7

printFormat$283:	; post call

printFormat$284:	; ++index
x9919:	inc word [bp + 10]	; 3: -1 70 10

printFormat$285:	; goto 16
x9922:	jmp printFormat$16	; 3: -23 21 -5

printFormat$286:	; if g_outStatus != 1 goto 292
x9925:	cmp word [g_outStatus], 1	; 5: -125 62 -123 33 1
x9930:	jne printFormat$292	; 2: 117 16

printFormat$287:	; £temporary2266 = int_to_int g_outDevice (Pointer -> Pointer)
x9932:	mov ax, [g_outDevice]	; 3: -95 -121 33

printFormat$288:	; outString = £temporary2266
x9935:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$289:	; £temporary2268 = outString + g_outChars
x9938:	mov si, [bp + 40]	; 3: -117 118 40
x9941:	add si, [g_outChars]	; 4: 3 54 -21 38

printFormat$290:	; £temporary2267 -> £temporary2268 = *£temporary2268

printFormat$291:	; £temporary2267 -> £temporary2268 = 0
x9945:	mov byte [si], 0	; 3: -58 4 0

printFormat$292:	; return_value = g_outChars
x9948:	mov bx, [g_outChars]	; 4: -117 30 -21 38

printFormat$293:	; return
x9952:	mov ax, [bp]	; 3: -117 70 0
x9955:	mov di, [bp + 4]	; 3: -117 126 4
x9958:	mov bp, [bp + 2]	; 3: -117 110 2
x9961:	jmp ax	; 2: -1 -32

printFormat$294:	; function end printFormat

g_outChars:
x9963:	db 0, 0	; 2: 0 0

int2$10#:
x9965:	dw 10	; 2: 10 0

printArgument:	; £temporary1967 -> format = *format
x9967:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary1967 -> format
x9970:	mov al, [si]	; 2: -118 4
x9972:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x9975:	mov al, [bp + 30]	; 3: -118 70 30
x9978:	cmp al, 100	; 2: 60 100
x9980:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x9982:	cmp al, 105	; 2: 60 105
x9984:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x9986:	cmp al, 99	; 2: 60 99
x9988:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x9992:	cmp al, 115	; 2: 60 115
x9994:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x9998:	cmp al, 88	; 2: 60 88
x10000:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x10004:	cmp al, 120	; 2: 60 120
x10006:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x10010:	cmp al, 98	; 2: 60 98
x10012:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x10016:	cmp al, 111	; 2: 60 111
x10018:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x10022:	cmp al, 117	; 2: 60 117
x10024:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x10028:	cmp al, 71	; 2: 60 71
x10030:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x10034:	cmp al, 103	; 2: 60 103
x10036:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x10040:	cmp al, 69	; 2: 60 69
x10042:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x10046:	cmp al, 101	; 2: 60 101
x10048:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x10052:	cmp al, 102	; 2: 60 102
x10054:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x10058:	cmp al, 112	; 2: 60 112
x10060:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x10064:	cmp al, 110	; 2: 60 110
x10066:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x10070:	cmp al, 37	; 2: 60 37
x10072:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x10076:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x10079:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x10083:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x10085:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary1969 = arg_list - 2
x10089:	mov si, [bp + 8]	; 3: -117 118 8
x10092:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary1970 = int_to_int £temporary1969 (Signed_Int -> Pointer)

printArgument$25:	; £temporary1971 -> £temporary1970 = *£temporary1970

printArgument$26:	; £temporary1972 = int_to_int £temporary1971 -> £temporary1970 (Signed_Int -> Signed_Short_Int)
x10095:	mov ax, [si]	; 2: -117 4
x10097:	cmp ax, 0	; 3: -125 -8 0
x10100:	jge printArgument$27	; 2: 125 4
x10102:	neg ax	; 2: -9 -40
x10104:	neg al	; 2: -10 -40

printArgument$27:	; £temporary1973 = int_to_int £temporary1972 (Signed_Short_Int -> Signed_Long_Int)
x10106:	and eax, 255	; 6: 102 37 -1 0 0 0
x10112:	cmp al, 0	; 2: 60 0
x10114:	jge printArgument$28	; 2: 125 5
x10116:	neg al	; 2: -10 -40
x10118:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary1973
x10121:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x10125:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x10127:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x10131:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x10133:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary1975 = arg_list - 4
x10137:	mov si, [bp + 8]	; 3: -117 118 8
x10140:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary1976 = int_to_int £temporary1975 (Signed_Int -> Pointer)

printArgument$34:	; £temporary1977 -> £temporary1976 = *£temporary1976

printArgument$35:	; longValue = £temporary1977 -> £temporary1976
x10143:	mov eax, [si]	; 3: 102 -117 4
x10146:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x10150:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x10152:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary1979 = arg_list - 2
x10156:	mov si, [bp + 8]	; 3: -117 118 8
x10159:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary1980 = int_to_int £temporary1979 (Signed_Int -> Pointer)

printArgument$40:	; £temporary1981 -> £temporary1980 = *£temporary1980

printArgument$41:	; £temporary1982 = int_to_int £temporary1981 -> £temporary1980 (Signed_Int -> Signed_Long_Int)
x10162:	mov ax, [si]	; 2: -117 4
x10164:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x10170:	cmp ax, 0	; 3: -125 -8 0
x10173:	jge printArgument$42	; 2: 125 5
x10175:	neg ax	; 2: -9 -40
x10177:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary1982
x10180:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x10184:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x10188:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary1986 -> negativePtr = *negativePtr
x10190:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x10193:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x10198:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary1988 = 1
x10200:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x10203:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary1988 = 0
x10205:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary1986 -> negativePtr = £temporary1988
x10208:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x10210:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x10214:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x10216:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x10220:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x10224:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 -2 39
x10229:	mov [bp + 50], bp	; 3: -119 110 50
x10232:	add bp, 48	; 3: -125 -59 48
x10235:	jmp labs	; 3: -23 3 5

printArgument$54:	; post call

printArgument$55:	; £temporary1991 = return_value

printArgument$56:	; longValue = £temporary1991
x10238:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x10242:	mov ax, [bp + 8]	; 3: -117 70 8
x10245:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x10248:	mov ax, [bp + 16]	; 3: -117 70 16
x10251:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary1992 = &precision
x10254:	mov si, bp	; 2: -119 -18
x10256:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary1992, offset 10
x10259:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x10262:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 36 40
x10267:	mov [bp + 50], bp	; 3: -119 110 50
x10270:	add bp, 48	; 3: -125 -59 48
x10273:	jmp checkWidthAndPrecision	; 3: -23 -4 4

printArgument$63:	; post call

printArgument$64:	; £temporary1993 = return_value

printArgument$65:	; arg_list = £temporary1993
x10276:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x10279:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x10283:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x10287:	mov ax, [bp + 10]	; 3: -117 70 10
x10290:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x10293:	mov ax, [bp + 12]	; 3: -117 70 12
x10296:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x10299:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 73 40
x10304:	mov [bp + 50], bp	; 3: -119 110 50
x10307:	add bp, 48	; 3: -125 -59 48
x10310:	jmp printLongInt	; 3: -23 35 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x10313:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x10316:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary1996 = arg_list - 2
x10320:	mov si, [bp + 8]	; 3: -117 118 8
x10323:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary1997 = int_to_int £temporary1996 (Signed_Int -> Pointer)

printArgument$76:	; £temporary1998 -> £temporary1997 = *£temporary1997

printArgument$77:	; £temporary1999 = int_to_int £temporary1998 -> £temporary1997 (Signed_Int -> Signed_Char)
x10326:	mov ax, [si]	; 2: -117 4
x10328:	cmp ax, 0	; 3: -125 -8 0
x10331:	jge printArgument$78	; 2: 125 4
x10333:	neg ax	; 2: -9 -40
x10335:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary1999
x10337:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x10340:	mov ax, [bp + 8]	; 3: -117 70 8
x10343:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x10346:	mov ax, [bp + 16]	; 3: -117 70 16
x10349:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary2000 = &precision
x10352:	mov si, bp	; 2: -119 -18
x10354:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary2000, offset 10
x10357:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x10360:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 -122 40
x10365:	mov [bp + 46], bp	; 3: -119 110 46
x10368:	add bp, 44	; 3: -125 -59 44
x10371:	jmp checkWidthAndPrecision	; 3: -23 -102 4

printArgument$85:	; post call

printArgument$86:	; £temporary2001 = return_value

printArgument$87:	; arg_list = £temporary2001
x10374:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x10377:	mov al, [bp + 31]	; 3: -118 70 31
x10380:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x10383:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 -99 40
x10388:	mov [bp + 46], bp	; 3: -119 110 46
x10391:	add bp, 44	; 3: -125 -59 44
x10394:	jmp printChar	; 3: -23 99 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x10397:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x10400:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2004 = arg_list - 2
x10404:	mov si, [bp + 8]	; 3: -117 118 8
x10407:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2005 = int_to_int £temporary2004 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2006 -> £temporary2005 = *£temporary2005

printArgument$97:	; stringValue = £temporary2006 -> £temporary2005
x10410:	mov ax, [si]	; 2: -117 4
x10412:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x10415:	mov ax, [bp + 8]	; 3: -117 70 8
x10418:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x10421:	mov ax, [bp + 16]	; 3: -117 70 16
x10424:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2007 = &precision
x10427:	mov si, bp	; 2: -119 -18
x10429:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2007, offset 10
x10432:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x10435:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 -47 40
x10440:	mov [bp + 48], bp	; 3: -119 110 48
x10443:	add bp, 46	; 3: -125 -59 46
x10446:	jmp checkWidthAndPrecision	; 3: -23 79 4

printArgument$104:	; post call

printArgument$105:	; £temporary2008 = return_value

printArgument$106:	; arg_list = £temporary2008
x10449:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x10452:	mov ax, [bp + 44]	; 3: -117 70 44
x10455:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x10458:	mov ax, [bp + 18]	; 3: -117 70 18
x10461:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x10464:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 -18 40
x10469:	mov [bp + 48], bp	; 3: -119 110 48
x10472:	add bp, 46	; 3: -125 -59 46
x10475:	jmp printString	; 3: -23 -42 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x10478:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x10481:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x10485:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2024 = 10
x10487:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x10493:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x10495:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x10499:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2020 = 8
x10501:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x10507:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x10509:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x10513:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2016 = 2
x10515:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x10521:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2016 = 16
x10523:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2020 = £temporary2016

printArgument$124:	; £temporary2024 = £temporary2020

printArgument$125:	; base = £temporary2024
x10529:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x10533:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x10537:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x10539:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2026 = arg_list - 2
x10543:	mov si, [bp + 8]	; 3: -117 118 8
x10546:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2027 = int_to_int £temporary2026 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2028 -> £temporary2027 = *£temporary2027

printArgument$131:	; £temporary2029 = int_to_int £temporary2028 -> £temporary2027 (Unsigned_Int -> Unsigned_Short_Int)
x10549:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2030 = int_to_int £temporary2029 (Unsigned_Short_Int -> Unsigned_Long_Int)
x10551:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2030
x10557:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x10561:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x10563:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x10567:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x10569:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2032 = arg_list - 4
x10573:	mov si, [bp + 8]	; 3: -117 118 8
x10576:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2033 = int_to_int £temporary2032 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2034 -> £temporary2033 = *£temporary2033

printArgument$140:	; value = £temporary2034 -> £temporary2033
x10579:	mov eax, [si]	; 3: 102 -117 4
x10582:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x10586:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x10588:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2036 = arg_list - 2
x10592:	mov si, [bp + 8]	; 3: -117 118 8
x10595:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2037 = int_to_int £temporary2036 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2038 -> £temporary2037 = *£temporary2037

printArgument$146:	; £temporary2039 = int_to_int £temporary2038 -> £temporary2037 (Unsigned_Int -> Unsigned_Long_Int)
x10598:	mov ax, [si]	; 2: -117 4
x10600:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2039
x10606:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x10610:	mov ax, [bp + 8]	; 3: -117 70 8
x10613:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x10616:	mov ax, [bp + 16]	; 3: -117 70 16
x10619:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2042 = &precision
x10622:	mov si, bp	; 2: -119 -18
x10624:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2042, offset 10
x10627:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x10630:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 -108 41
x10635:	mov [bp + 54], bp	; 3: -119 110 54
x10638:	add bp, 52	; 3: -125 -59 52
x10641:	jmp checkWidthAndPrecision	; 3: -23 -116 3

printArgument$154:	; post call

printArgument$155:	; £temporary2043 = return_value

printArgument$156:	; arg_list = £temporary2043
x10644:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x10647:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x10651:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x10655:	mov ax, [bp + 10]	; 3: -117 70 10
x10658:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x10661:	mov ax, [bp + 12]	; 3: -117 70 12
x10664:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x10667:	mov ax, [bp + 14]	; 3: -117 70 14
x10670:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x10673:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x10677:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2044 = int_to_int c (Signed_Char -> Signed_Int)
x10681:	mov al, [bp + 30]	; 3: -118 70 30
x10684:	and ax, 255	; 3: 37 -1 0
x10687:	cmp al, 0	; 2: 60 0
x10689:	jge printArgument$165	; 2: 125 4
x10691:	neg al	; 2: -10 -40
x10693:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2044, offset 26
x10695:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x10698:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 -40 41
x10703:	mov [bp + 74], bp	; 3: -119 110 74
x10706:	add bp, 72	; 3: -125 -59 72
x10709:	jmp isupper	; 3: -23 -45 -25

printArgument$167:	; post call

printArgument$168:	; £temporary2045 = return_value

printArgument$169:	; parameter £temporary2045, offset 20
x10712:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x10715:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 -23 41
x10720:	mov [bp + 54], bp	; 3: -119 110 54
x10723:	add bp, 52	; 3: -125 -59 52
x10726:	jmp printUnsignedLong	; 3: -23 -53 5

printArgument$171:	; post call

printArgument$172:	; goto 359
x10729:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x10732:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x10736:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x10738:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2048 = arg_list - 8
x10742:	mov si, [bp + 8]	; 3: -117 118 8
x10745:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2049 = int_to_int £temporary2048 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2050 -> £temporary2049 = *£temporary2049

printArgument$178:	; push float £temporary2050 -> £temporary2049
x10748:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x10750:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x10753:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x10756:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x10759:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x10764:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x10769:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x10774:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x10779:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 41 42
x10784:	mov [bp + 46], bp	; 3: -119 110 46
x10787:	add bp, 44	; 3: -125 -59 44
x10790:	jmp printLongDoublePlain	; 3: -23 54 7

printArgument$188:	; post call

printArgument$189:	; goto 196
x10793:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x10795:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2053 = arg_list - 8
x10799:	mov si, [bp + 8]	; 3: -117 118 8
x10802:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2054 = int_to_int £temporary2053 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2055 -> £temporary2054 = *£temporary2054

printArgument$194:	; push float £temporary2055 -> £temporary2054
x10805:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x10807:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x10810:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x10814:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2059 -> negativePtr = *negativePtr
x10816:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x10819:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x10822:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x10824:	fcompp	; 2: -34 -39
x10826:	fstsw ax	; 3: -101 -33 -32
x10829:	sahf	; 1: -98
x10830:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2061 = 1
x10832:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x10835:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2061 = 0
x10837:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2059 -> negativePtr = £temporary2061
x10840:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x10842:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x10846:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x10848:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x10851:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x10854:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 116 42
x10859:	mov [bp + 46], bp	; 3: -119 110 46
x10862:	add bp, 44	; 3: -125 -59 44
x10865:	jmp fabs	; 3: -23 -106 -15

printArgument$210:	; post call

printArgument$211:	; £temporary2064 = return_value

printArgument$212:	; pop float longDoubleValue
x10868:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x10871:	mov ax, [bp + 8]	; 3: -117 70 8
x10874:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x10877:	mov ax, [bp + 16]	; 3: -117 70 16
x10880:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2065 = &precision
x10883:	mov si, bp	; 2: -119 -18
x10885:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2065, offset 10
x10888:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x10891:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 -103 42
x10896:	mov [bp + 46], bp	; 3: -119 110 46
x10899:	add bp, 44	; 3: -125 -59 44
x10902:	jmp checkWidthAndPrecision	; 3: -23 -121 2

printArgument$219:	; post call

printArgument$220:	; £temporary2066 = return_value

printArgument$221:	; arg_list = £temporary2066
x10905:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x10908:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x10912:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x10914:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x10917:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x10920:	mov ax, [bp + 10]	; 3: -117 70 10
x10923:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x10926:	mov ax, [bp + 12]	; 3: -117 70 12
x10929:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x10932:	mov ax, [bp + 14]	; 3: -117 70 14
x10935:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x10938:	mov ax, [bp + 18]	; 3: -117 70 18
x10941:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x10944:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 -50 42
x10949:	mov [bp + 46], bp	; 3: -119 110 46
x10952:	add bp, 44	; 3: -125 -59 44
x10955:	jmp printLongDoublePlain	; 3: -23 -111 6

printArgument$231:	; post call

printArgument$232:	; goto 359
x10958:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2069 = int_to_int c (Signed_Char -> Signed_Int)
x10961:	mov al, [bp + 30]	; 3: -118 70 30
x10964:	and ax, 255	; 3: 37 -1 0
x10967:	cmp al, 0	; 2: 60 0
x10969:	jge printArgument$235	; 2: 125 4
x10971:	neg al	; 2: -10 -40
x10973:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2069, offset 6
x10975:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x10978:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 -16 42
x10983:	mov [bp + 46], bp	; 3: -119 110 46
x10986:	add bp, 44	; 3: -125 -59 44
x10989:	jmp tolower	; 3: -23 26 -26

printArgument$237:	; post call

printArgument$238:	; £temporary2070 = return_value

printArgument$239:	; if £temporary2070 != 101 goto 257
x10992:	cmp bx, 101	; 3: -125 -5 101
x10995:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x10997:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x11000:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x11003:	mov ax, [bp + 10]	; 3: -117 70 10
x11006:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x11009:	mov ax, [bp + 12]	; 3: -117 70 12
x11012:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x11015:	mov ax, [bp + 14]	; 3: -117 70 14
x11018:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x11021:	mov ax, [bp + 18]	; 3: -117 70 18
x11024:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2072 = int_to_int c (Signed_Char -> Signed_Int)
x11027:	mov al, [bp + 30]	; 3: -118 70 30
x11030:	and ax, 255	; 3: 37 -1 0
x11033:	cmp al, 0	; 2: 60 0
x11035:	jge printArgument$249	; 2: 125 4
x11037:	neg al	; 2: -10 -40
x11039:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2072, offset 28
x11041:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x11044:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 50 43
x11049:	mov [bp + 68], bp	; 3: -119 110 68
x11052:	add bp, 66	; 3: -125 -59 66
x11055:	jmp isupper	; 3: -23 121 -26

printArgument$251:	; post call

printArgument$252:	; £temporary2073 = return_value

printArgument$253:	; parameter £temporary2073, offset 22
x11058:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x11061:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 67 43
x11066:	mov [bp + 46], bp	; 3: -119 110 46
x11069:	add bp, 44	; 3: -125 -59 44
x11072:	jmp printLongDoubleExpo	; 3: -23 84 7

printArgument$255:	; post call

printArgument$256:	; goto 359
x11075:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x11078:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x11081:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x11084:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 90 43
x11089:	mov [bp + 46], bp	; 3: -119 110 46
x11092:	add bp, 44	; 3: -125 -59 44
x11095:	jmp fabs	; 3: -23 -80 -16

printArgument$262:	; post call

printArgument$263:	; £temporary2075 = return_value

printArgument$264:	; parameter £temporary2075, offset 6
x11098:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x11101:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 107 43
x11106:	mov [bp + 46], bp	; 3: -119 110 46
x11109:	add bp, 44	; 3: -125 -59 44
x11112:	jmp log10	; 3: -23 -109 8

printArgument$266:	; post call

printArgument$267:	; £temporary2076 = return_value

printArgument$268:	; £temporary2077 = float_to_int £temporary2076 (Double -> Signed_Int)
x11115:	fistp word [container2bytes#]	; 4: -33 30 41 25
x11119:	mov ax, [container2bytes#]	; 3: -95 41 25

printArgument$269:	; expo = £temporary2077
x11122:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x11125:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x11129:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x11131:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x11135:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x11137:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x11140:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x11143:	mov ax, [bp + 10]	; 3: -117 70 10
x11146:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x11149:	mov ax, [bp + 12]	; 3: -117 70 12
x11152:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x11155:	mov ax, [bp + 14]	; 3: -117 70 14
x11158:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x11161:	mov ax, [bp + 18]	; 3: -117 70 18
x11164:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x11167:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 -83 43
x11172:	mov [bp + 48], bp	; 3: -119 110 48
x11175:	add bp, 46	; 3: -125 -59 46
x11178:	jmp printLongDoublePlain	; 3: -23 -78 5

printArgument$280:	; post call

printArgument$281:	; goto 359
x11181:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x11184:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x11187:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x11190:	mov ax, [bp + 10]	; 3: -117 70 10
x11193:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x11196:	mov ax, [bp + 12]	; 3: -117 70 12
x11199:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x11202:	mov ax, [bp + 14]	; 3: -117 70 14
x11205:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x11208:	mov ax, [bp + 18]	; 3: -117 70 18
x11211:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2082 = int_to_int c (Signed_Char -> Signed_Int)
x11214:	mov al, [bp + 30]	; 3: -118 70 30
x11217:	and ax, 255	; 3: 37 -1 0
x11220:	cmp al, 0	; 2: 60 0
x11222:	jge printArgument$291	; 2: 125 4
x11224:	neg al	; 2: -10 -40
x11226:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2082, offset 28
x11228:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x11231:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 -19 43
x11236:	mov [bp + 70], bp	; 3: -119 110 70
x11239:	add bp, 68	; 3: -125 -59 68
x11242:	jmp isupper	; 3: -23 -66 -27

printArgument$293:	; post call

printArgument$294:	; £temporary2083 = return_value

printArgument$295:	; parameter £temporary2083, offset 22
x11245:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x11248:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 -2 43
x11253:	mov [bp + 48], bp	; 3: -119 110 48
x11256:	add bp, 46	; 3: -125 -59 46
x11259:	jmp printLongDoubleExpo	; 3: -23 -103 6

printArgument$297:	; post call

printArgument$298:	; goto 359
x11262:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x11265:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2086 = arg_list - 2
x11269:	mov si, [bp + 8]	; 3: -117 118 8
x11272:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2087 = int_to_int £temporary2086 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2088 -> £temporary2087 = *£temporary2087

printArgument$303:	; ptrValue = £temporary2088 -> £temporary2087
x11275:	mov ax, [si]	; 2: -117 4
x11277:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x11280:	mov ax, [bp + 8]	; 3: -117 70 8
x11283:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x11286:	mov ax, [bp + 16]	; 3: -117 70 16
x11289:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2089 = &precision
x11292:	mov si, bp	; 2: -119 -18
x11294:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2089, offset 10
x11297:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x11300:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 50 44
x11305:	mov [bp + 46], bp	; 3: -119 110 46
x11308:	add bp, 44	; 3: -125 -59 44
x11311:	jmp checkWidthAndPrecision	; 3: -23 -18 0

printArgument$310:	; post call

printArgument$311:	; £temporary2090 = return_value

printArgument$312:	; arg_list = £temporary2090
x11314:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2091 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x11317:	mov ax, [bp + 42]	; 3: -117 70 42
x11320:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2091, offset 6
x11326:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x11330:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x11335:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x11340:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x11345:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x11353:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x11358:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 108 44
x11363:	mov [bp + 46], bp	; 3: -119 110 46
x11366:	add bp, 44	; 3: -125 -59 44
x11369:	jmp printUnsignedLong	; 3: -23 72 3

printArgument$322:	; post call

printArgument$323:	; goto 359
x11372:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x11375:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2094 = arg_list - 2
x11379:	mov si, [bp + 8]	; 3: -117 118 8
x11382:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2095 = int_to_int £temporary2094 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2096 -> £temporary2095 = *£temporary2095

printArgument$328:	; ptrValue = £temporary2096 -> £temporary2095
x11385:	mov ax, [si]	; 2: -117 4
x11387:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x11390:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2098 = arg_list - 2
x11394:	mov si, [bp + 8]	; 3: -117 118 8
x11397:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2099 = int_to_int £temporary2098 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2100 -> £temporary2099 = *£temporary2099

printArgument$333:	; intPtr = £temporary2100 -> £temporary2099
x11400:	mov ax, [si]	; 2: -117 4
x11402:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x11405:	mov ax, [bp + 8]	; 3: -117 70 8
x11408:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x11411:	mov ax, [bp + 16]	; 3: -117 70 16
x11414:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2101 = &precision
x11417:	mov si, bp	; 2: -119 -18
x11419:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2101, offset 10
x11422:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x11425:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 -81 44
x11430:	mov [bp + 46], bp	; 3: -119 110 46
x11433:	add bp, 44	; 3: -125 -59 44
x11436:	nop	; 1: -112
x11437:	jmp checkWidthAndPrecision	; 2: -21 113

printArgument$340:	; post call

printArgument$341:	; £temporary2102 = return_value

printArgument$342:	; arg_list = £temporary2102
x11439:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2103 -> intPtr = *intPtr
x11442:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2103 -> intPtr = g_outChars
x11445:	mov ax, [g_outChars]	; 3: -95 -21 38
x11448:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x11450:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x11452:	mov ax, [bp + 8]	; 3: -117 70 8
x11455:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x11458:	mov ax, [bp + 16]	; 3: -117 70 16
x11461:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2104 = &precision
x11464:	mov si, bp	; 2: -119 -18
x11466:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2104, offset 10
x11469:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x11472:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 -34 44
x11477:	mov [bp + 46], bp	; 3: -119 110 46
x11480:	add bp, 44	; 3: -125 -59 44
x11483:	nop	; 1: -112
x11484:	jmp checkWidthAndPrecision	; 2: -21 66

printArgument$352:	; post call

printArgument$353:	; £temporary2105 = return_value

printArgument$354:	; arg_list = £temporary2105
x11486:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x11489:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x11493:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 -13 44
x11498:	mov [bp + 46], bp	; 3: -119 110 46
x11501:	add bp, 44	; 3: -125 -59 44
x11504:	jmp printChar	; 3: -23 13 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x11507:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x11510:	mov ax, [bp]	; 3: -117 70 0
x11513:	mov di, [bp + 4]	; 3: -117 126 4
x11516:	mov bp, [bp + 2]	; 3: -117 110 2
x11519:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

labs:	; if value >= 0 goto 4
x11521:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11526:	jge labs$4	; 2: 125 9

labs$1:	; £temporary2762 = -value
x11528:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x11532:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary2766 = £temporary2762

labs$3:	; goto 5
x11535:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary2766 = value
x11537:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary2766

labs$6:	; return
x11541:	mov ax, [bp]	; 3: -117 70 0
x11544:	mov di, [bp + 4]	; 3: -117 126 4
x11547:	mov bp, [bp + 2]	; 3: -117 110 2
x11550:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x11552:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11556:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary1950 -> widthPtr = *widthPtr
x11558:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary1950 -> widthPtr != -1 goto 9
x11561:	cmp word [si], -1	; 3: -125 60 -1
x11564:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary1953 -> widthPtr = *widthPtr
x11566:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x11569:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary1955 = arg_list - 2
x11573:	mov di, [bp + 6]	; 3: -117 126 6
x11576:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary1956 = int_to_int £temporary1955 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary1957 -> £temporary1956 = *£temporary1956

checkWidthAndPrecision$8:	; £temporary1953 -> widthPtr = £temporary1957 -> £temporary1956
x11579:	mov ax, [di]	; 2: -117 5
x11581:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x11583:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x11587:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary1959 -> precisionPtr = *precisionPtr
x11589:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary1959 -> precisionPtr != -1 goto 18
x11592:	cmp word [si], -1	; 3: -125 60 -1
x11595:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary1962 -> precisionPtr = *precisionPtr
x11597:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x11600:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary1964 = arg_list - 2
x11604:	mov di, [bp + 6]	; 3: -117 126 6
x11607:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary1965 = int_to_int £temporary1964 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary1966 -> £temporary1965 = *£temporary1965

checkWidthAndPrecision$17:	; £temporary1962 -> precisionPtr = £temporary1966 -> £temporary1965
x11610:	mov ax, [di]	; 2: -117 5
x11612:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x11614:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x11617:	mov ax, [bp]	; 3: -117 70 0
x11620:	mov di, [bp + 4]	; 3: -117 126 4
x11623:	mov bp, [bp + 2]	; 3: -117 110 2
x11626:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x11628:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11633:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1805 = -longValue
x11635:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11639:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1805
x11642:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x11646:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x11650:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 -112 45
x11655:	mov [bp + 16], bp	; 3: -119 110 16
x11658:	add bp, 14	; 3: -125 -59 14
x11661:	nop	; 1: -112
x11662:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x11664:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x11666:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x11670:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x11672:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x11676:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 -86 45
x11681:	mov [bp + 16], bp	; 3: -119 110 16
x11684:	add bp, 14	; 3: -125 -59 14
x11687:	nop	; 1: -112
x11688:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x11690:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x11692:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x11696:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x11698:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x11702:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 -60 45
x11707:	mov [bp + 16], bp	; 3: -119 110 16
x11710:	add bp, 14	; 3: -125 -59 14
x11713:	nop	; 1: -112
x11714:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x11716:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11721:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x11723:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x11727:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 -35 45
x11732:	mov [bp + 16], bp	; 3: -119 110 16
x11735:	add bp, 14	; 3: -125 -59 14
x11738:	nop	; 1: -112
x11739:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x11741:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x11743:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11747:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x11751:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 -11 45
x11756:	mov [bp + 16], bp	; 3: -119 110 16
x11759:	add bp, 14	; 3: -125 -59 14
x11762:	nop	; 1: -112
x11763:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x11765:	mov ax, [bp]	; 3: -117 70 0
x11768:	mov di, [bp + 4]	; 3: -117 126 4
x11771:	mov bp, [bp + 2]	; 3: -117 110 2
x11774:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x11776:	mov ax, [g_outStatus]	; 3: -95 -123 33
x11779:	cmp ax, 0	; 3: -125 -8 0
x11782:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x11784:	cmp ax, 1	; 3: -125 -8 1
x11787:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x11789:	cmp ax, 2	; 3: -125 -8 2
x11792:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x11794:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1747 = int_to_int g_outDevice (Pointer -> Pointer)
x11796:	mov ax, [g_outDevice]	; 3: -95 -121 33

printChar$6:	; stream = £temporary1747
x11799:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x11802:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1750 -> stream = *stream, offset 2
x11804:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1750 -> stream
x11807:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x11810:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1753 = &c
x11813:	mov dx, bp	; 2: -119 -22
x11815:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1753

printChar$13:	; interrupt 33
x11818:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x11820:	inc word [g_outChars]	; 4: -1 6 -21 38

printChar$15:	; goto 25
x11824:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1755 = int_to_int g_outDevice (Pointer -> Pointer)
x11826:	mov ax, [g_outDevice]	; 3: -95 -121 33

printChar$17:	; outString = £temporary1755
x11829:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1756 = g_outChars
x11832:	mov ax, [g_outChars]	; 3: -95 -21 38

printChar$19:	; ++g_outChars
x11835:	inc word [g_outChars]	; 4: -1 6 -21 38

printChar$20:	; £temporary1758 = outString + £temporary1756
x11839:	mov si, [bp + 9]	; 3: -117 118 9
x11842:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1757 -> £temporary1758 = *£temporary1758

printChar$22:	; £temporary1757 -> £temporary1758 = c
x11844:	mov al, [bp + 6]	; 3: -118 70 6
x11847:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x11849:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x11851:	inc word [g_outChars]	; 4: -1 6 -21 38

printChar$25:	; return
x11855:	mov ax, [bp]	; 3: -117 70 0
x11858:	mov di, [bp + 4]	; 3: -117 126 4
x11861:	mov bp, [bp + 2]	; 3: -117 110 2
x11864:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x11866:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x11871:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1795 = longValue % 10
x11873:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11877:	xor edx, edx	; 3: 102 49 -46
x11880:	idiv dword [int4$10#]	; 5: 102 -9 62 69 15

printLongIntRec$2:	; £temporary1796 = int_to_int £temporary1795 (Signed_Long_Int -> Signed_Int)
x11885:	cmp edx, 0	; 4: 102 -125 -6 0
x11889:	jge printLongIntRec$3	; 2: 125 5
x11891:	neg edx	; 3: 102 -9 -38
x11894:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1796
x11896:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1797 = longValue / 10
x11899:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x11903:	xor edx, edx	; 3: 102 49 -46
x11906:	idiv dword [int4$10#]	; 5: 102 -9 62 69 15

printLongIntRec$6:	; parameter £temporary1797, offset 6
x11911:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x11915:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 -103 46
x11920:	mov [bp + 14], bp	; 3: -119 110 14
x11923:	add bp, 12	; 3: -125 -59 12
x11926:	nop	; 1: -112
x11927:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1799 = digit + 48
x11929:	mov ax, [bp + 10]	; 3: -117 70 10
x11932:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1800 = int_to_int £temporary1799 (Signed_Int -> Signed_Char)
x11935:	cmp ax, 0	; 3: -125 -8 0
x11938:	jge printLongIntRec$12	; 2: 125 4
x11940:	neg ax	; 2: -9 -40
x11942:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1800, offset 6
x11944:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x11947:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 -71 46
x11952:	mov [bp + 14], bp	; 3: -119 110 14
x11955:	add bp, 12	; 3: -125 -59 12
x11958:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x11961:	mov ax, [bp]	; 3: -117 70 0
x11964:	mov di, [bp + 4]	; 3: -117 126 4
x11967:	mov bp, [bp + 2]	; 3: -117 110 2
x11970:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

printString:	; if s == 0 goto 29
x11972:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x11976:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x11978:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11982:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x11984:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1764 = s + index
x11989:	mov si, [bp + 6]	; 3: -117 118 6
x11992:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1763 -> £temporary1764 = *£temporary1764

printString$5:	; if £temporary1763 -> £temporary1764 == 0 goto 53
x11995:	cmp byte [si], 0	; 3: -128 60 0
x11998:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1768 = s + index
x12002:	mov si, [bp + 6]	; 3: -117 118 6
x12005:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1767 -> £temporary1768 = *£temporary1768

printString$9:	; parameter £temporary1767 -> £temporary1768, offset 6
x12008:	mov al, [si]	; 2: -118 4
x12010:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x12013:	mov word [bp + 12], printString$11	; 5: -57 70 12 -5 46
x12018:	mov [bp + 14], bp	; 3: -119 110 14
x12021:	add bp, 12	; 3: -125 -59 12
x12024:	jmp printChar	; 3: -23 5 -1

printString$11:	; post call

printString$12:	; ++index
x12027:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x12030:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x12032:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1770 = precision
x12037:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x12040:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1770 <= 0 goto 53
x12043:	cmp ax, 0	; 3: -125 -8 0
x12046:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1773 = s + index
x12050:	mov si, [bp + 6]	; 3: -117 118 6
x12053:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1772 -> £temporary1773 = *£temporary1773

printString$20:	; if £temporary1772 -> £temporary1773 == 0 goto 53
x12056:	cmp byte [si], 0	; 3: -128 60 0
x12059:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1778 = s + index
x12063:	mov si, [bp + 6]	; 3: -117 118 6
x12066:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1777 -> £temporary1778 = *£temporary1778

printString$24:	; parameter £temporary1777 -> £temporary1778, offset 6
x12069:	mov al, [si]	; 2: -118 4
x12071:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x12074:	mov word [bp + 12], printString$26	; 5: -57 70 12 56 47
x12079:	mov [bp + 14], bp	; 3: -119 110 14
x12082:	add bp, 12	; 3: -125 -59 12
x12085:	jmp printChar	; 3: -23 -56 -2

printString$26:	; post call

printString$27:	; ++index
x12088:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x12091:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x12093:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x12097:	mov word [bp + 10], printString$32	; 5: -57 70 10 79 47
x12102:	mov [bp + 12], bp	; 3: -119 110 12
x12105:	add bp, 10	; 3: -125 -59 10
x12108:	jmp printChar	; 3: -23 -79 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x12111:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x12115:	mov word [bp + 10], printString$36	; 5: -57 70 10 97 47
x12120:	mov [bp + 12], bp	; 3: -119 110 12
x12123:	add bp, 10	; 3: -125 -59 10
x12126:	jmp printChar	; 3: -23 -97 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x12129:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x12133:	mov word [bp + 10], printString$40	; 5: -57 70 10 115 47
x12138:	mov [bp + 12], bp	; 3: -119 110 12
x12141:	add bp, 10	; 3: -125 -59 10
x12144:	jmp printChar	; 3: -23 -115 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x12147:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x12151:	mov word [bp + 10], printString$44	; 5: -57 70 10 -123 47
x12156:	mov [bp + 12], bp	; 3: -119 110 12
x12159:	add bp, 10	; 3: -125 -59 10
x12162:	jmp printChar	; 3: -23 123 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x12165:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x12169:	mov word [bp + 10], printString$48	; 5: -57 70 10 -105 47
x12174:	mov [bp + 12], bp	; 3: -119 110 12
x12177:	add bp, 10	; 3: -125 -59 10
x12180:	jmp printChar	; 3: -23 105 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x12183:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x12187:	mov word [bp + 10], printString$52	; 5: -57 70 10 -87 47
x12192:	mov [bp + 12], bp	; 3: -119 110 12
x12195:	add bp, 10	; 3: -125 -59 10
x12198:	jmp printChar	; 3: -23 87 -2

printString$52:	; post call

printString$53:	; return
x12201:	mov ax, [bp]	; 3: -117 70 0
x12204:	mov di, [bp + 4]	; 3: -117 126 4
x12207:	mov bp, [bp + 2]	; 3: -117 110 2
x12210:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

printUnsignedLong:	; if plus == 0 goto 5
x12212:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x12216:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x12218:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x12222:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 -52 47
x12227:	mov [bp + 24], bp	; 3: -119 110 24
x12230:	add bp, 22	; 3: -125 -59 22
x12233:	jmp printChar	; 3: -23 52 -2

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x12236:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x12240:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x12242:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x12246:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 -28 47
x12251:	mov [bp + 24], bp	; 3: -119 110 24
x12254:	add bp, 22	; 3: -125 -59 22
x12257:	jmp printChar	; 3: -23 28 -2

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x12260:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x12264:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x12266:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x12271:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x12273:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x12277:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 3 48
x12282:	mov [bp + 24], bp	; 3: -119 110 24
x12285:	add bp, 22	; 3: -125 -59 22
x12288:	jmp printChar	; 3: -23 -3 -3

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x12291:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x12296:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x12298:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x12302:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 28 48
x12307:	mov [bp + 24], bp	; 3: -119 110 24
x12310:	add bp, 22	; 3: -125 -59 22
x12313:	jmp printChar	; 3: -23 -28 -3

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x12316:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x12320:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1854 = 88
x12322:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x12324:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1854 = 120
x12326:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1854, offset 6
x12328:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x12331:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 57 48
x12336:	mov [bp + 24], bp	; 3: -119 110 24
x12339:	add bp, 22	; 3: -125 -59 22
x12342:	jmp printChar	; 3: -23 -57 -3

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x12345:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12350:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x12352:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x12356:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 82 48
x12361:	mov [bp + 24], bp	; 3: -119 110 24
x12364:	add bp, 22	; 3: -125 -59 22
x12367:	jmp printChar	; 3: -23 -82 -3

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x12370:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x12372:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x12376:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x12380:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x12384:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x12388:	mov ax, [bp + 20]	; 3: -117 70 20
x12391:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x12394:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 120 48
x12399:	mov [bp + 24], bp	; 3: -119 110 24
x12402:	add bp, 22	; 3: -125 -59 22
x12405:	nop	; 1: -112
x12406:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x12408:	mov ax, [bp]	; 3: -117 70 0
x12411:	mov di, [bp + 4]	; 3: -117 126 4
x12414:	mov bp, [bp + 2]	; 3: -117 110 2
x12417:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x12419:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12424:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1830 = unsignedValue % base
x12426:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x12430:	xor edx, edx	; 3: 102 49 -46
x12433:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1831 = int_to_int £temporary1830 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1831
x12437:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1832 = unsignedValue / base
x12440:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x12444:	xor edx, edx	; 3: 102 49 -46
x12447:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1832, offset 6
x12451:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x12455:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x12459:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x12463:	mov ax, [bp + 14]	; 3: -117 70 14
x12466:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x12469:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 -61 48
x12474:	mov [bp + 20], bp	; 3: -119 110 20
x12477:	add bp, 18	; 3: -125 -59 18
x12480:	nop	; 1: -112
x12481:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x12483:	mov ax, [bp + 16]	; 3: -117 70 16
x12486:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x12489:	mov ax, [bp + 14]	; 3: -117 70 14
x12492:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x12495:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 -35 48
x12500:	mov [bp + 20], bp	; 3: -119 110 20
x12503:	add bp, 18	; 3: -125 -59 18
x12506:	nop	; 1: -112
x12507:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1834 = return_value

printUnsignedLongRec$17:	; c = £temporary1834
x12509:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x12512:	mov al, [bp + 18]	; 3: -118 70 18
x12515:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x12518:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 -12 48
x12523:	mov [bp + 21], bp	; 3: -119 110 21
x12526:	add bp, 19	; 3: -125 -59 19
x12529:	jmp printChar	; 3: -23 12 -3

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x12532:	mov ax, [bp]	; 3: -117 70 0
x12535:	mov di, [bp + 4]	; 3: -117 126 4
x12538:	mov bp, [bp + 2]	; 3: -117 110 2
x12541:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x12543:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x12547:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1820 = digit + 48
x12549:	mov bx, [bp + 6]	; 3: -117 94 6
x12552:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1821 = int_to_int £temporary1820 (Signed_Int -> Signed_Char)
x12555:	cmp bx, 0	; 3: -125 -5 0
x12558:	jge digitToChar$3	; 2: 125 4
x12560:	neg bx	; 2: -9 -37
x12562:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1821

digitToChar$4:	; return
x12564:	mov ax, [bp]	; 3: -117 70 0
x12567:	mov di, [bp + 4]	; 3: -117 126 4
x12570:	mov bp, [bp + 2]	; 3: -117 110 2
x12573:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x12575:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12579:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1822 = digit - 10
x12581:	mov bx, [bp + 6]	; 3: -117 94 6
x12584:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1823 = £temporary1822 + 65
x12587:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1824 = int_to_int £temporary1823 (Signed_Int -> Signed_Char)
x12590:	cmp bx, 0	; 3: -125 -5 0
x12593:	jge digitToChar$9	; 2: 125 4
x12595:	neg bx	; 2: -9 -37
x12597:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1824

digitToChar$10:	; return
x12599:	mov ax, [bp]	; 3: -117 70 0
x12602:	mov di, [bp + 4]	; 3: -117 126 4
x12605:	mov bp, [bp + 2]	; 3: -117 110 2
x12608:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1825 = digit - 10
x12610:	mov bx, [bp + 6]	; 3: -117 94 6
x12613:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1826 = £temporary1825 + 97
x12616:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1827 = int_to_int £temporary1826 (Signed_Int -> Signed_Char)
x12619:	cmp bx, 0	; 3: -125 -5 0
x12622:	jge digitToChar$14	; 2: 125 4
x12624:	neg bx	; 2: -9 -37
x12626:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1827

digitToChar$15:	; return
x12628:	mov ax, [bp]	; 3: -117 70 0
x12631:	mov di, [bp + 4]	; 3: -117 126 4
x12634:	mov bp, [bp + 2]	; 3: -117 110 2
x12637:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x12639:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x12642:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x12644:	fcompp	; 2: -34 -39
x12646:	fstsw ax	; 3: -101 -33 -32
x12649:	sahf	; 1: -98
x12650:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x12652:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x12656:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 126 49
x12661:	mov [bp + 24], bp	; 3: -119 110 24
x12664:	add bp, 22	; 3: -125 -59 22
x12667:	jmp printChar	; 3: -23 -126 -4

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x12670:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1890 = -longDoubleValue
x12673:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x12675:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x12678:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x12683:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x12688:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1891 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x12691:	fistp dword [container4bytes#]	; 4: -37 30 43 25
x12695:	mov eax, [container4bytes#]	; 4: 102 -95 43 25

printLongDoublePlain$14:	; longValue = £temporary1891
x12699:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x12703:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x12707:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x12711:	mov ax, [bp + 14]	; 3: -117 70 14
x12714:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x12717:	mov ax, [bp + 16]	; 3: -117 70 16
x12720:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x12723:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 -63 49
x12728:	mov [bp + 28], bp	; 3: -119 110 28
x12731:	add bp, 26	; 3: -125 -59 26
x12734:	jmp printLongInt	; 3: -23 -85 -5

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x12737:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1893 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x12740:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1894 = longDoubleValue - £temporary1893
x12743:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x12745:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x12748:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x12751:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x12754:	mov ax, [bp + 18]	; 3: -117 70 18
x12757:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x12760:	mov ax, [bp + 20]	; 3: -117 70 20
x12763:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x12766:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 -20 49
x12771:	mov [bp + 28], bp	; 3: -119 110 28
x12774:	add bp, 26	; 3: -125 -59 26
x12777:	nop	; 1: -112
x12778:	jmp printLongDoubleFraction	; 2: -21 11

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x12780:	mov ax, [bp]	; 3: -117 70 0
x12783:	mov di, [bp + 4]	; 3: -117 126 4
x12786:	mov bp, [bp + 2]	; 3: -117 110 2
x12789:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

printLongDoubleFraction:	; push float longDoubleValue
x12791:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x12794:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1869 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x12797:	fistp dword [container4bytes#]	; 4: -37 30 43 25
x12801:	mov eax, [container4bytes#]	; 4: 102 -95 43 25

printLongDoubleFraction$3:	; £temporary1870 = int_to_float £temporary1869 (Signed_Long_Int -> Long_Double)
x12805:	mov [container4bytes#], eax	; 4: 102 -93 43 25
x12809:	fild dword [container4bytes#]	; 4: -37 6 43 25

printLongDoubleFraction$4:	; £temporary1871 = longDoubleValue - £temporary1870
x12813:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x12815:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x12818:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x12822:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 6
x12824:	mov word [bp + 16], 6	; 5: -57 70 16 6 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x12829:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x12833:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x12835:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x12839:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x12841:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x12845:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 59 50
x12850:	mov [bp + 20], bp	; 3: -119 110 20
x12853:	add bp, 18	; 3: -125 -59 18
x12856:	jmp printChar	; 3: -23 -59 -5

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1877 = precision
x12859:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x12862:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1877 <= 0 goto 35
x12865:	cmp ax, 0	; 3: -125 -8 0
x12868:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; push float 10.0
x12870:	fld qword [float8$10.0#]	; 4: -35 6 33 25

printLongDoubleFraction$18:	; push float longDoubleValue
x12874:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1879 = 10.0 * longDoubleValue
x12877:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; pop float longDoubleValue10
x12879:	fstp qword [bp + 18]	; 3: -35 94 18

printLongDoubleFraction$21:	; push float longDoubleValue10
x12882:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$22:	; £temporary1880 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x12885:	fistp word [container2bytes#]	; 4: -33 30 41 25
x12889:	mov ax, [container2bytes#]	; 3: -95 41 25

printLongDoubleFraction$23:	; digitValue = £temporary1880
x12892:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$24:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$25:	; £temporary1881 = digitValue + 48
x12895:	mov ax, [bp + 26]	; 3: -117 70 26
x12898:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$26:	; £temporary1882 = int_to_int £temporary1881 (Signed_Int -> Signed_Char)
x12901:	cmp ax, 0	; 3: -125 -8 0
x12904:	jge printLongDoubleFraction$27	; 2: 125 4
x12906:	neg ax	; 2: -9 -40
x12908:	neg al	; 2: -10 -40

printLongDoubleFraction$27:	; parameter £temporary1882, offset 6
x12910:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$28:	; call function noellipse-noellipse printChar
x12913:	mov word [bp + 28], printLongDoubleFraction$29	; 5: -57 70 28 127 50
x12918:	mov [bp + 30], bp	; 3: -119 110 30
x12921:	add bp, 28	; 3: -125 -59 28
x12924:	jmp printChar	; 3: -23 -127 -5

printLongDoubleFraction$29:	; post call

printLongDoubleFraction$30:	; push float longDoubleValue10
x12927:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$31:	; £temporary1884 = int_to_float digitValue (Signed_Int -> Long_Double)
x12930:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$32:	; £temporary1885 = longDoubleValue10 - £temporary1884
x12933:	fsub	; 2: -34 -23

printLongDoubleFraction$33:	; pop float longDoubleValue
x12935:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$34:	; goto 14
x12938:	jmp printLongDoubleFraction$14	; 2: -21 -81

printLongDoubleFraction$35:	; return
x12940:	mov ax, [bp]	; 3: -117 70 0
x12943:	mov di, [bp + 4]	; 3: -117 126 4
x12946:	mov bp, [bp + 2]	; 3: -117 110 2
x12949:	jmp ax	; 2: -1 -32

printLongDoubleFraction$36:	; function end printLongDoubleFraction

printLongDoubleExpo:	; push float value
x12951:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x12954:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x12956:	fcompp	; 2: -34 -39
x12958:	fstsw ax	; 3: -101 -33 -32
x12961:	sahf	; 1: -98
x12962:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x12964:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x12968:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 -74 50
x12973:	mov [bp + 26], bp	; 3: -119 110 26
x12976:	add bp, 24	; 3: -125 -59 24
x12979:	jmp printChar	; 3: -23 74 -5

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x12982:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x12984:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x12987:	mov ax, [bp + 20]	; 3: -117 70 20
x12990:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x12993:	mov ax, [bp + 18]	; 3: -117 70 18
x12996:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x12999:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 -43 50
x13004:	mov [bp + 26], bp	; 3: -119 110 26
x13007:	add bp, 24	; 3: -125 -59 24
x13010:	jmp printLongDoubleFraction	; 3: -23 34 -1

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x13013:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x13017:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary1910 = 69
x13019:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x13021:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary1910 = 101
x13023:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary1910, offset 6
x13025:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x13028:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 -14 50
x13033:	mov [bp + 26], bp	; 3: -119 110 26
x13036:	add bp, 24	; 3: -125 -59 24
x13039:	jmp printChar	; 3: -23 14 -5

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x13042:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x13046:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 4 51
x13051:	mov [bp + 26], bp	; 3: -119 110 26
x13054:	add bp, 24	; 3: -125 -59 24
x13057:	jmp printChar	; 3: -23 -4 -6

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x13060:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x13063:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x13066:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x13068:	fcompp	; 2: -34 -39
x13070:	fstsw ax	; 3: -101 -33 -32
x13073:	sahf	; 1: -98
x13074:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x13076:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x13080:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 38 51
x13085:	mov [bp + 26], bp	; 3: -119 110 26
x13088:	add bp, 24	; 3: -125 -59 24
x13091:	jmp printChar	; 3: -23 -38 -6

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x13094:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary1915 = -value
x13097:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x13099:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x13102:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x13105:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x13108:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 66 51
x13113:	mov [bp + 26], bp	; 3: -119 110 26
x13116:	add bp, 24	; 3: -125 -59 24
x13119:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary1916 = return_value

printLongDoubleExpo$43:	; £temporary1917 = float_to_int £temporary1916 (Double -> Signed_Int)
x13122:	fistp word [container2bytes#]	; 4: -33 30 41 25
x13126:	mov ax, [container2bytes#]	; 3: -95 41 25

printLongDoubleExpo$44:	; expo = £temporary1917
x13129:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x13132:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x13135:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x13138:	fld qword [float8$10.0#]	; 4: -35 6 33 25

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x13142:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary1918 = int_to_float expo (Signed_Int -> Double)
x13145:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary1918, offset 14
x13148:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x13151:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 109 51
x13156:	mov [bp + 36], bp	; 3: -119 110 36
x13159:	add bp, 34	; 3: -125 -59 34
x13162:	jmp pow	; 3: -23 -62 -27

printLongDoubleExpo$52:	; post call
x13165:	fstp qword [bp + 34]	; 3: -35 94 34
x13168:	fld qword [bp + 26]	; 3: -35 70 26
x13171:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary1919 = return_value

printLongDoubleExpo$54:	; £temporary1920 = value / £temporary1919
x13174:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x13176:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x13179:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x13182:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x13185:	mov ax, [bp + 14]	; 3: -117 70 14
x13188:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x13191:	mov ax, [bp + 16]	; 3: -117 70 16
x13194:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x13197:	mov ax, [bp + 18]	; 3: -117 70 18
x13200:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x13203:	mov ax, [bp + 20]	; 3: -117 70 20
x13206:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x13209:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 -89 51
x13214:	mov [bp + 28], bp	; 3: -119 110 28
x13217:	add bp, 26	; 3: -125 -59 26
x13220:	jmp printLongDoublePlain	; 3: -23 -72 -3

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x13223:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x13227:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary1926 = 69
x13229:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x13231:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary1926 = 101
x13233:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary1926, offset 6
x13235:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x13238:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 -60 51
x13243:	mov [bp + 28], bp	; 3: -119 110 28
x13246:	add bp, 26	; 3: -125 -59 26
x13249:	jmp printChar	; 3: -23 60 -6

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary1928 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x13252:	mov ax, [bp + 24]	; 3: -117 70 24
x13255:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x13261:	cmp ax, 0	; 3: -125 -8 0
x13264:	jge printLongDoubleExpo$75	; 2: 125 5
x13266:	neg ax	; 2: -9 -40
x13268:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary1928, offset 6
x13271:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x13275:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x13280:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x13285:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 -13 51
x13290:	mov [bp + 28], bp	; 3: -119 110 28
x13293:	add bp, 26	; 3: -125 -59 26
x13296:	jmp printLongInt	; 3: -23 121 -7

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x13299:	mov ax, [bp]	; 3: -117 70 0
x13302:	mov di, [bp + 4]	; 3: -117 126 4
x13305:	mov bp, [bp + 2]	; 3: -117 110 2
x13308:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; call header integral zero 0 stack zero 0

log10$1:	; push float x
x13310:	fld qword [bp + 6]	; 3: -35 70 6

log10$2:	; parameter x, offset 6
x13313:	fstp qword [bp + 20]	; 3: -35 94 20

log10$3:	; call function noellipse-noellipse log
x13316:	mov word [bp + 14], log10$4	; 5: -57 70 14 18 52
x13321:	mov [bp + 16], bp	; 3: -119 110 16
x13324:	add bp, 14	; 3: -125 -59 14
x13327:	jmp log	; 3: -23 -56 -26

log10$4:	; post call

log10$5:	; £temporary550 = return_value

log10$6:	; push float 2.3025850929940456840179914
x13330:	fld qword [float8$2.3025850929940456840179914#]	; 4: -35 6 35 52

log10$7:	; £temporary551 = £temporary550 / 2.3025850929940456840179914
x13334:	fdiv	; 2: -34 -7

log10$8:	; return_value = £temporary551

log10$9:	; return
x13336:	mov ax, [bp]	; 3: -117 70 0
x13339:	mov di, [bp + 4]	; 3: -117 126 4
x13342:	mov bp, [bp + 2]	; 3: -117 110 2
x13345:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$2.3025850929940456840179914#:
x13347:	dq 2.3025850929940456840179914	; 8: 21 85 -75 -69 -79 107 2 64

@24$isbasedigit:	; call header integral zero 0 stack zero 0

@24$isbasedigit$1:	; £temporary2386 = int_to_int c (Signed_Char -> Signed_Int)
x13355:	mov al, [bp + 6]	; 3: -118 70 6
x13358:	and ax, 255	; 3: 37 -1 0
x13361:	cmp al, 0	; 2: 60 0
x13363:	jge @24$isbasedigit$2	; 2: 125 4
x13365:	neg al	; 2: -10 -40
x13367:	neg ax	; 2: -9 -40

@24$isbasedigit$2:	; parameter £temporary2386, offset 6
x13369:	mov [bp + 17], ax	; 3: -119 70 17

@24$isbasedigit$3:	; call function noellipse-noellipse isdigit
x13372:	mov word [bp + 11], @24$isbasedigit$4	; 5: -57 70 11 74 52
x13377:	mov [bp + 13], bp	; 3: -119 110 13
x13380:	add bp, 11	; 3: -125 -59 11
x13383:	jmp isdigit	; 3: -23 -1 -38

@24$isbasedigit$4:	; post call

@24$isbasedigit$5:	; £temporary2387 = return_value

@24$isbasedigit$6:	; if £temporary2387 == 0 goto 17
x13386:	cmp bx, 0	; 3: -125 -5 0
x13389:	je @24$isbasedigit$17	; 2: 116 52

@24$isbasedigit$7:	; £temporary2388 = c - 48
x13391:	mov al, [bp + 6]	; 3: -118 70 6
x13394:	sub al, 48	; 2: 44 48

@24$isbasedigit$8:	; £temporary2389 = int_to_int £temporary2388 (Signed_Char -> Signed_Int)
x13396:	and ax, 255	; 3: 37 -1 0
x13399:	cmp al, 0	; 2: 60 0
x13401:	jge @24$isbasedigit$9	; 2: 125 4
x13403:	neg al	; 2: -10 -40
x13405:	neg ax	; 2: -9 -40

@24$isbasedigit$9:	; value = £temporary2389
x13407:	mov [bp + 11], ax	; 3: -119 70 11

@24$isbasedigit$10:	; if value < 0 goto 14
x13410:	cmp word [bp + 11], 0	; 4: -125 126 11 0
x13414:	jl @24$isbasedigit$14	; 2: 124 13

@24$isbasedigit$11:	; if value >= base goto 14
x13416:	mov ax, [bp + 7]	; 3: -117 70 7
x13419:	cmp [bp + 11], ax	; 3: 57 70 11
x13422:	jge @24$isbasedigit$14	; 2: 125 5

@24$isbasedigit$12:	; £temporary2393 = 1
x13424:	mov bx, 1	; 3: -69 1 0

@24$isbasedigit$13:	; goto 15
x13427:	jmp @24$isbasedigit$15	; 2: -21 3

@24$isbasedigit$14:	; £temporary2393 = 0
x13429:	mov bx, 0	; 3: -69 0 0

@24$isbasedigit$15:	; return_value = £temporary2393

@24$isbasedigit$16:	; return
x13432:	mov ax, [bp]	; 3: -117 70 0
x13435:	mov di, [bp + 4]	; 3: -117 126 4
x13438:	mov bp, [bp + 2]	; 3: -117 110 2
x13441:	jmp ax	; 2: -1 -32

@24$isbasedigit$17:	; call header integral zero 0 stack zero 0

@24$isbasedigit$18:	; £temporary2394 = int_to_int c (Signed_Char -> Signed_Int)
x13443:	mov al, [bp + 6]	; 3: -118 70 6
x13446:	and ax, 255	; 3: 37 -1 0
x13449:	cmp al, 0	; 2: 60 0
x13451:	jge @24$isbasedigit$19	; 2: 125 4
x13453:	neg al	; 2: -10 -40
x13455:	neg ax	; 2: -9 -40

@24$isbasedigit$19:	; parameter £temporary2394, offset 6
x13457:	mov [bp + 17], ax	; 3: -119 70 17

@24$isbasedigit$20:	; call function noellipse-noellipse islower
x13460:	mov word [bp + 11], @24$isbasedigit$21	; 5: -57 70 11 -94 52
x13465:	mov [bp + 13], bp	; 3: -119 110 13
x13468:	add bp, 11	; 3: -125 -59 11
x13471:	jmp islower	; 3: -23 -30 -31

@24$isbasedigit$21:	; post call

@24$isbasedigit$22:	; £temporary2395 = return_value

@24$isbasedigit$23:	; if £temporary2395 == 0 goto 34
x13474:	cmp bx, 0	; 3: -125 -5 0
x13477:	je @24$isbasedigit$34	; 2: 116 55

@24$isbasedigit$24:	; £temporary2396 = c - 97
x13479:	mov al, [bp + 6]	; 3: -118 70 6
x13482:	sub al, 97	; 2: 44 97

@24$isbasedigit$25:	; £temporary2397 = int_to_int £temporary2396 (Signed_Char -> Signed_Int)
x13484:	and ax, 255	; 3: 37 -1 0
x13487:	cmp al, 0	; 2: 60 0
x13489:	jge @24$isbasedigit$26	; 2: 125 4
x13491:	neg al	; 2: -10 -40
x13493:	neg ax	; 2: -9 -40

@24$isbasedigit$26:	; value = £temporary2397 + 10
x13495:	add ax, 10	; 3: -125 -64 10
x13498:	mov [bp + 11], ax	; 3: -119 70 11

@24$isbasedigit$27:	; if value < 0 goto 31
x13501:	cmp word [bp + 11], 0	; 4: -125 126 11 0
x13505:	jl @24$isbasedigit$31	; 2: 124 13

@24$isbasedigit$28:	; if value >= base goto 31
x13507:	mov ax, [bp + 7]	; 3: -117 70 7
x13510:	cmp [bp + 11], ax	; 3: 57 70 11
x13513:	jge @24$isbasedigit$31	; 2: 125 5

@24$isbasedigit$29:	; £temporary2402 = 1
x13515:	mov bx, 1	; 3: -69 1 0

@24$isbasedigit$30:	; goto 32
x13518:	jmp @24$isbasedigit$32	; 2: -21 3

@24$isbasedigit$31:	; £temporary2402 = 0
x13520:	mov bx, 0	; 3: -69 0 0

@24$isbasedigit$32:	; return_value = £temporary2402

@24$isbasedigit$33:	; return
x13523:	mov ax, [bp]	; 3: -117 70 0
x13526:	mov di, [bp + 4]	; 3: -117 126 4
x13529:	mov bp, [bp + 2]	; 3: -117 110 2
x13532:	jmp ax	; 2: -1 -32

@24$isbasedigit$34:	; call header integral zero 0 stack zero 0

@24$isbasedigit$35:	; £temporary2403 = int_to_int c (Signed_Char -> Signed_Int)
x13534:	mov al, [bp + 6]	; 3: -118 70 6
x13537:	and ax, 255	; 3: 37 -1 0
x13540:	cmp al, 0	; 2: 60 0
x13542:	jge @24$isbasedigit$36	; 2: 125 4
x13544:	neg al	; 2: -10 -40
x13546:	neg ax	; 2: -9 -40

@24$isbasedigit$36:	; parameter £temporary2403, offset 6
x13548:	mov [bp + 17], ax	; 3: -119 70 17

@24$isbasedigit$37:	; call function noellipse-noellipse isupper
x13551:	mov word [bp + 11], @24$isbasedigit$38	; 5: -57 70 11 -3 52
x13556:	mov [bp + 13], bp	; 3: -119 110 13
x13559:	add bp, 11	; 3: -125 -59 11
x13562:	jmp isupper	; 3: -23 -82 -36

@24$isbasedigit$38:	; post call

@24$isbasedigit$39:	; £temporary2404 = return_value

@24$isbasedigit$40:	; if £temporary2404 == 0 goto 51
x13565:	cmp bx, 0	; 3: -125 -5 0
x13568:	je @24$isbasedigit$51	; 2: 116 55

@24$isbasedigit$41:	; £temporary2405 = c - 65
x13570:	mov al, [bp + 6]	; 3: -118 70 6
x13573:	sub al, 65	; 2: 44 65

@24$isbasedigit$42:	; £temporary2406 = int_to_int £temporary2405 (Signed_Char -> Signed_Int)
x13575:	and ax, 255	; 3: 37 -1 0
x13578:	cmp al, 0	; 2: 60 0
x13580:	jge @24$isbasedigit$43	; 2: 125 4
x13582:	neg al	; 2: -10 -40
x13584:	neg ax	; 2: -9 -40

@24$isbasedigit$43:	; value = £temporary2406 + 10
x13586:	add ax, 10	; 3: -125 -64 10
x13589:	mov [bp + 11], ax	; 3: -119 70 11

@24$isbasedigit$44:	; if value < 0 goto 48
x13592:	cmp word [bp + 11], 0	; 4: -125 126 11 0
x13596:	jl @24$isbasedigit$48	; 2: 124 13

@24$isbasedigit$45:	; if value >= base goto 48
x13598:	mov ax, [bp + 7]	; 3: -117 70 7
x13601:	cmp [bp + 11], ax	; 3: 57 70 11
x13604:	jge @24$isbasedigit$48	; 2: 125 5

@24$isbasedigit$46:	; £temporary2411 = 1
x13606:	mov bx, 1	; 3: -69 1 0

@24$isbasedigit$47:	; goto 49
x13609:	jmp @24$isbasedigit$49	; 2: -21 3

@24$isbasedigit$48:	; £temporary2411 = 0
x13611:	mov bx, 0	; 3: -69 0 0

@24$isbasedigit$49:	; return_value = £temporary2411

@24$isbasedigit$50:	; return
x13614:	mov ax, [bp]	; 3: -117 70 0
x13617:	mov di, [bp + 4]	; 3: -117 126 4
x13620:	mov bp, [bp + 2]	; 3: -117 110 2
x13623:	jmp ax	; 2: -1 -32

@24$isbasedigit$51:	; return_value = 0
x13625:	mov bx, 0	; 3: -69 0 0

@24$isbasedigit$52:	; return
x13628:	mov ax, [bp]	; 3: -117 70 0
x13631:	mov di, [bp + 4]	; 3: -117 126 4
x13634:	mov bp, [bp + 2]	; 3: -117 110 2
x13637:	jmp ax	; 2: -1 -32

@24$isbasedigit$53:	; function end isbasedigit

@25$tobasevalue:	; call header integral zero 0 stack zero 0

@25$tobasevalue$1:	; £temporary2418 = int_to_int c (Signed_Char -> Signed_Int)
x13639:	mov al, [bp + 6]	; 3: -118 70 6
x13642:	and ax, 255	; 3: 37 -1 0
x13645:	cmp al, 0	; 2: 60 0
x13647:	jge @25$tobasevalue$2	; 2: 125 4
x13649:	neg al	; 2: -10 -40
x13651:	neg ax	; 2: -9 -40

@25$tobasevalue$2:	; parameter £temporary2418, offset 6
x13653:	mov [bp + 13], ax	; 3: -119 70 13

@25$tobasevalue$3:	; call function noellipse-noellipse isdigit
x13656:	mov word [bp + 7], @25$tobasevalue$4	; 5: -57 70 7 102 53
x13661:	mov [bp + 9], bp	; 3: -119 110 9
x13664:	add bp, 7	; 3: -125 -59 7
x13667:	jmp isdigit	; 3: -23 -29 -39

@25$tobasevalue$4:	; post call

@25$tobasevalue$5:	; £temporary2419 = return_value

@25$tobasevalue$6:	; if £temporary2419 == 0 goto 11
x13670:	cmp bx, 0	; 3: -125 -5 0
x13673:	je @25$tobasevalue$11	; 2: 116 30

@25$tobasevalue$7:	; £temporary2420 = c - 48
x13675:	mov bl, [bp + 6]	; 3: -118 94 6
x13678:	sub bl, 48	; 3: -128 -21 48

@25$tobasevalue$8:	; £temporary2421 = int_to_int £temporary2420 (Signed_Char -> Signed_Int)
x13681:	and bx, 255	; 4: -127 -29 -1 0
x13685:	cmp bl, 0	; 3: -128 -5 0
x13688:	jge @25$tobasevalue$9	; 2: 125 4
x13690:	neg bl	; 2: -10 -37
x13692:	neg bx	; 2: -9 -37

@25$tobasevalue$9:	; return_value = £temporary2421

@25$tobasevalue$10:	; return
x13694:	mov ax, [bp]	; 3: -117 70 0
x13697:	mov di, [bp + 4]	; 3: -117 126 4
x13700:	mov bp, [bp + 2]	; 3: -117 110 2
x13703:	jmp ax	; 2: -1 -32

@25$tobasevalue$11:	; call header integral zero 0 stack zero 0

@25$tobasevalue$12:	; £temporary2422 = int_to_int c (Signed_Char -> Signed_Int)
x13705:	mov al, [bp + 6]	; 3: -118 70 6
x13708:	and ax, 255	; 3: 37 -1 0
x13711:	cmp al, 0	; 2: 60 0
x13713:	jge @25$tobasevalue$13	; 2: 125 4
x13715:	neg al	; 2: -10 -40
x13717:	neg ax	; 2: -9 -40

@25$tobasevalue$13:	; parameter £temporary2422, offset 6
x13719:	mov [bp + 13], ax	; 3: -119 70 13

@25$tobasevalue$14:	; call function noellipse-noellipse islower
x13722:	mov word [bp + 7], @25$tobasevalue$15	; 5: -57 70 7 -88 53
x13727:	mov [bp + 9], bp	; 3: -119 110 9
x13730:	add bp, 7	; 3: -125 -59 7
x13733:	jmp islower	; 3: -23 -36 -32

@25$tobasevalue$15:	; post call

@25$tobasevalue$16:	; £temporary2423 = return_value

@25$tobasevalue$17:	; if £temporary2423 == 0 goto 23
x13736:	cmp bx, 0	; 3: -125 -5 0
x13739:	je @25$tobasevalue$23	; 2: 116 33

@25$tobasevalue$18:	; £temporary2424 = c - 97
x13741:	mov bl, [bp + 6]	; 3: -118 94 6
x13744:	sub bl, 97	; 3: -128 -21 97

@25$tobasevalue$19:	; £temporary2425 = int_to_int £temporary2424 (Signed_Char -> Signed_Int)
x13747:	and bx, 255	; 4: -127 -29 -1 0
x13751:	cmp bl, 0	; 3: -128 -5 0
x13754:	jge @25$tobasevalue$20	; 2: 125 4
x13756:	neg bl	; 2: -10 -37
x13758:	neg bx	; 2: -9 -37

@25$tobasevalue$20:	; £temporary2426 = £temporary2425 + 10
x13760:	add bx, 10	; 3: -125 -61 10

@25$tobasevalue$21:	; return_value = £temporary2426

@25$tobasevalue$22:	; return
x13763:	mov ax, [bp]	; 3: -117 70 0
x13766:	mov di, [bp + 4]	; 3: -117 126 4
x13769:	mov bp, [bp + 2]	; 3: -117 110 2
x13772:	jmp ax	; 2: -1 -32

@25$tobasevalue$23:	; call header integral zero 0 stack zero 0

@25$tobasevalue$24:	; £temporary2427 = int_to_int c (Signed_Char -> Signed_Int)
x13774:	mov al, [bp + 6]	; 3: -118 70 6
x13777:	and ax, 255	; 3: 37 -1 0
x13780:	cmp al, 0	; 2: 60 0
x13782:	jge @25$tobasevalue$25	; 2: 125 4
x13784:	neg al	; 2: -10 -40
x13786:	neg ax	; 2: -9 -40

@25$tobasevalue$25:	; parameter £temporary2427, offset 6
x13788:	mov [bp + 13], ax	; 3: -119 70 13

@25$tobasevalue$26:	; call function noellipse-noellipse isupper
x13791:	mov word [bp + 7], @25$tobasevalue$27	; 5: -57 70 7 -19 53
x13796:	mov [bp + 9], bp	; 3: -119 110 9
x13799:	add bp, 7	; 3: -125 -59 7
x13802:	jmp isupper	; 3: -23 -66 -37

@25$tobasevalue$27:	; post call

@25$tobasevalue$28:	; £temporary2428 = return_value

@25$tobasevalue$29:	; if £temporary2428 == 0 goto 35
x13805:	cmp bx, 0	; 3: -125 -5 0
x13808:	je @25$tobasevalue$35	; 2: 116 33

@25$tobasevalue$30:	; £temporary2429 = c - 65
x13810:	mov bl, [bp + 6]	; 3: -118 94 6
x13813:	sub bl, 65	; 3: -128 -21 65

@25$tobasevalue$31:	; £temporary2430 = int_to_int £temporary2429 (Signed_Char -> Signed_Int)
x13816:	and bx, 255	; 4: -127 -29 -1 0
x13820:	cmp bl, 0	; 3: -128 -5 0
x13823:	jge @25$tobasevalue$32	; 2: 125 4
x13825:	neg bl	; 2: -10 -37
x13827:	neg bx	; 2: -9 -37

@25$tobasevalue$32:	; £temporary2431 = £temporary2430 + 10
x13829:	add bx, 10	; 3: -125 -61 10

@25$tobasevalue$33:	; return_value = £temporary2431

@25$tobasevalue$34:	; return
x13832:	mov ax, [bp]	; 3: -117 70 0
x13835:	mov di, [bp + 4]	; 3: -117 126 4
x13838:	mov bp, [bp + 2]	; 3: -117 110 2
x13841:	jmp ax	; 2: -1 -32

@25$tobasevalue$35:	; return_value = 0
x13843:	mov bx, 0	; 3: -69 0 0

@25$tobasevalue$36:	; return
x13846:	mov ax, [bp]	; 3: -117 70 0
x13849:	mov di, [bp + 4]	; 3: -117 126 4
x13852:	mov bp, [bp + 2]	; 3: -117 110 2
x13855:	jmp ax	; 2: -1 -32

@25$tobasevalue$37:	; function end tobasevalue

$StackTop:
x13857:
