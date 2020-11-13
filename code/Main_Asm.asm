	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 84 52
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 84 52 0 0

main:	; call header integral zero 0 stack zero 0

main$1:	; call function noellipse-noellipse time_test
x283:	mov word [bp + 6], main$2	; 5: -57 70 6 41 1
x288:	mov [bp + 8], bp	; 3: -119 110 8
x291:	add bp, 6	; 3: -125 -59 6
x294:	nop	; 1: -112
x295:	jmp time_test	; 2: -21 23

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

time_test:	; weekdays[0] = string_Sun#
x320:	mov word [bp + 6], string_Sun#	; 5: -57 70 6 5 4

time_test$1:	; weekdays[1] = string_Mon#
x325:	mov word [bp + 8], string_Mon#	; 5: -57 70 8 9 4

time_test$2:	; weekdays[2] = string_Tue#
x330:	mov word [bp + 10], string_Tue#	; 5: -57 70 10 13 4

time_test$3:	; weekdays[3] = string_Wed#
x335:	mov word [bp + 12], string_Wed#	; 5: -57 70 12 17 4

time_test$4:	; weekdays[4] = string_Thu#
x340:	mov word [bp + 14], string_Thu#	; 5: -57 70 14 21 4

time_test$5:	; weekdays[5] = string_Fri#
x345:	mov word [bp + 16], string_Fri#	; 5: -57 70 16 25 4

time_test$6:	; weekdays[6] = string_Sat#
x350:	mov word [bp + 18], string_Sat#	; 5: -57 70 18 29 4

time_test$7:	; call header integral zero 0 stack zero 0

time_test$8:	; parameter 0, offset 6
x355:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

time_test$9:	; call function noellipse-noellipse time
x360:	mov word [bp + 20], time_test$10	; 5: -57 70 20 118 1
x365:	mov [bp + 22], bp	; 3: -119 110 22
x368:	add bp, 20	; 3: -125 -59 20
x371:	jmp time	; 3: -23 -109 4

time_test$10:	; post call

time_test$11:	; £temporary6141 = return_value

time_test$12:	; now = £temporary6141
x374:	mov [bp + 20], ebx	; 4: 102 -119 94 20

time_test$13:	; call header integral zero 0 stack zero 0

time_test$14:	; £temporary6142 = &now
x378:	mov si, bp	; 2: -119 -18
x380:	add si, 20	; 3: -125 -58 20

time_test$15:	; parameter £temporary6142, offset 6
x383:	mov [bp + 30], si	; 3: -119 118 30

time_test$16:	; call function noellipse-noellipse gmtime
x386:	mov word [bp + 24], time_test$17	; 5: -57 70 24 -112 1
x391:	mov [bp + 26], bp	; 3: -119 110 26
x394:	add bp, 24	; 3: -125 -59 24
x397:	jmp gmtime	; 3: -23 -29 6

time_test$17:	; post call

time_test$18:	; £temporary6143 = return_value

time_test$19:	; p = £temporary6143
x400:	mov [bp + 24], bx	; 3: -119 94 24

time_test$20:	; call header integral zero 0 stack zero 0

time_test$21:	; parameter p, offset 6
x403:	mov ax, [bp + 24]	; 3: -117 70 24
x406:	mov [bp + 32], ax	; 3: -119 70 32

time_test$22:	; call function noellipse-noellipse mktime
x409:	mov word [bp + 26], time_test$23	; 5: -57 70 26 -89 1
x414:	mov [bp + 28], bp	; 3: -119 110 28
x417:	add bp, 26	; 3: -125 -59 26
x420:	jmp mktime	; 3: -23 -51 5

time_test$23:	; post call

time_test$24:	; £temporary6144 = return_value

time_test$25:	; now2 = £temporary6144
x423:	mov [bp + 26], ebx	; 4: 102 -119 94 26

time_test$26:	; £temporary6145 -> p = *p
x427:	mov si, [bp + 24]	; 3: -117 118 24

time_test$27:	; s = £temporary6145 -> p
x430:	mov di, bp	; 2: -119 -17
x432:	add di, 30	; 3: -125 -57 30
x435:	mov al, 18	; 2: -80 18

time_test$27$Loop:
x437:	mov ah, [si]	; 2: -118 36
x439:	mov [di], ah	; 2: -120 37
x441:	inc si	; 1: 70
x442:	inc di	; 1: 71
x443:	dec al	; 2: -2 -56
x445:	cmp al, 0	; 2: 60 0
x447:	jne time_test$27$Loop	; 2: 117 -12

time_test$28:	; call header integral zero 0 stack zero 0

time_test$29:	; parameter string_now2013A2025lu0A#, offset 6
x449:	mov word [bp + 54], string_now2013A2025lu0A#	; 5: -57 70 54 33 4

time_test$30:	; parameter now, offset 8
x454:	mov eax, [bp + 20]	; 4: 102 -117 70 20
x458:	mov [bp + 56], eax	; 4: 102 -119 70 56

time_test$31:	; call function noellipse-ellipse printf, extra 0
x462:	mov word [bp + 48], time_test$32	; 5: -57 70 48 -31 1
x467:	mov [bp + 50], bp	; 3: -119 110 50
x470:	add bp, 48	; 3: -125 -59 48
x473:	mov di, bp	; 2: -119 -17
x475:	add di, 4	; 3: -125 -57 4
x478:	jmp printf	; 3: -23 -11 8

time_test$32:	; post call

time_test$33:	; call header integral zero 0 stack zero 0

time_test$34:	; parameter string_now2023A2025lu0A#, offset 6
x481:	mov word [bp + 54], string_now2023A2025lu0A#	; 5: -57 70 54 45 4

time_test$35:	; parameter now2, offset 8
x486:	mov eax, [bp + 26]	; 4: 102 -117 70 26
x490:	mov [bp + 56], eax	; 4: 102 -119 70 56

time_test$36:	; call function noellipse-ellipse printf, extra 0
x494:	mov word [bp + 48], time_test$37	; 5: -57 70 48 1 2
x499:	mov [bp + 50], bp	; 3: -119 110 50
x502:	add bp, 48	; 3: -125 -59 48
x505:	mov di, bp	; 2: -119 -17
x507:	add di, 4	; 3: -125 -57 4
x510:	jmp printf	; 3: -23 -43 8

time_test$37:	; post call

time_test$38:	; call header integral zero 0 stack zero 0

time_test$39:	; parameter string_202020gm20time3A2025s2025i2D25i2D25i2025i3A25i3A25i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#, offset 6
x513:	mov word [bp + 54], string_202020gm20time3A2025s2025i2D25i2D25i2025i3A25i3A25i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#	; 5: -57 70 54 57 4

time_test$40:	; £temporary6150 = s$tm_wday * 2
x518:	mov ax, [bp + 42]	; 3: -117 70 42
x521:	xor dx, dx	; 2: 49 -46
x523:	mul word [int2$2#]	; 4: -9 38 -114 4

time_test$41:	; £temporary6151 = weekdays + £temporary6150
x527:	mov si, bp	; 2: -119 -18
x529:	add si, 6	; 3: -125 -58 6
x532:	add si, ax	; 2: 1 -58

time_test$42:	; £temporary6149 -> £temporary6151 = *£temporary6151

time_test$43:	; parameter £temporary6149 -> £temporary6151, offset 8
x534:	mov ax, [si]	; 2: -117 4
x536:	mov [bp + 56], ax	; 3: -119 70 56

time_test$44:	; £temporary6153 = s$tm_year + 1900
x539:	mov ax, [bp + 40]	; 3: -117 70 40
x542:	add ax, 1900	; 3: 5 108 7

time_test$45:	; parameter £temporary6153, offset 10
x545:	mov [bp + 58], ax	; 3: -119 70 58

time_test$46:	; £temporary6155 = s$tm_mon + 1
x548:	mov ax, [bp + 38]	; 3: -117 70 38
x551:	inc ax	; 1: 64

time_test$47:	; parameter £temporary6155, offset 12
x552:	mov [bp + 60], ax	; 3: -119 70 60

time_test$48:	; parameter s$tm_mday, offset 14
x555:	mov ax, [bp + 36]	; 3: -117 70 36
x558:	mov [bp + 62], ax	; 3: -119 70 62

time_test$49:	; parameter s$tm_hour, offset 16
x561:	mov ax, [bp + 34]	; 3: -117 70 34
x564:	mov [bp + 64], ax	; 3: -119 70 64

time_test$50:	; parameter s$tm_min, offset 18
x567:	mov ax, [bp + 32]	; 3: -117 70 32
x570:	mov [bp + 66], ax	; 3: -119 70 66

time_test$51:	; parameter s$tm_sec, offset 20
x573:	mov ax, [bp + 30]	; 3: -117 70 30
x576:	mov [bp + 68], ax	; 3: -119 70 68

time_test$52:	; parameter s$tm_yday, offset 22
x579:	mov ax, [bp + 44]	; 3: -117 70 44
x582:	mov [bp + 70], ax	; 3: -119 70 70

time_test$53:	; parameter s$tm_wday, offset 24
x585:	mov ax, [bp + 42]	; 3: -117 70 42
x588:	mov [bp + 72], ax	; 3: -119 70 72

time_test$54:	; parameter s$tm_isdst, offset 26
x591:	mov ax, [bp + 46]	; 3: -117 70 46
x594:	mov [bp + 74], ax	; 3: -119 70 74

time_test$55:	; call function noellipse-ellipse printf, extra 0
x597:	mov word [bp + 48], time_test$56	; 5: -57 70 48 104 2
x602:	mov [bp + 50], bp	; 3: -119 110 50
x605:	add bp, 48	; 3: -125 -59 48
x608:	mov di, bp	; 2: -119 -17
x610:	add di, 20	; 3: -125 -57 20
x613:	jmp printf	; 3: -23 110 8

time_test$56:	; post call

time_test$57:	; call header integral zero 0 stack zero 0

time_test$58:	; £temporary6164 = &now
x616:	mov si, bp	; 2: -119 -18
x618:	add si, 20	; 3: -125 -58 20

time_test$59:	; parameter £temporary6164, offset 6
x621:	mov [bp + 54], si	; 3: -119 118 54

time_test$60:	; call function noellipse-noellipse localtime
x624:	mov word [bp + 48], time_test$61	; 5: -57 70 48 126 2
x629:	mov [bp + 50], bp	; 3: -119 110 50
x632:	add bp, 48	; 3: -125 -59 48
x635:	jmp localtime	; 3: -23 -91 38

time_test$61:	; post call

time_test$62:	; £temporary6165 = return_value

time_test$63:	; £temporary6166 -> £temporary6165 = *£temporary6165

time_test$64:	; s = £temporary6166 -> £temporary6165
x638:	mov si, bp	; 2: -119 -18
x640:	add si, 30	; 3: -125 -58 30
x643:	mov al, 18	; 2: -80 18

time_test$64$Loop:
x645:	mov ah, [bx]	; 2: -118 39
x647:	mov [si], ah	; 2: -120 36
x649:	inc bx	; 1: 67
x650:	inc si	; 1: 70
x651:	dec al	; 2: -2 -56
x653:	cmp al, 0	; 2: 60 0
x655:	jne time_test$64$Loop	; 2: 117 -12

time_test$65:	; call header integral zero 0 stack zero 0

time_test$66:	; parameter string_local20time3A2025s2025i2D25i2D25i2025i3A25i3A25i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#, offset 6
x657:	mov word [bp + 54], string_local20time3A2025s2025i2D25i2D25i2025i3A25i3A25i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#	; 5: -57 70 54 -112 4

time_test$67:	; £temporary6169 = s$tm_wday * 2
x662:	mov ax, [bp + 42]	; 3: -117 70 42
x665:	xor dx, dx	; 2: 49 -46
x667:	mul word [int2$2#]	; 4: -9 38 -114 4

time_test$68:	; £temporary6170 = weekdays + £temporary6169
x671:	mov si, bp	; 2: -119 -18
x673:	add si, 6	; 3: -125 -58 6
x676:	add si, ax	; 2: 1 -58

time_test$69:	; £temporary6168 -> £temporary6170 = *£temporary6170

time_test$70:	; parameter £temporary6168 -> £temporary6170, offset 8
x678:	mov ax, [si]	; 2: -117 4
x680:	mov [bp + 56], ax	; 3: -119 70 56

time_test$71:	; £temporary6172 = s$tm_year + 1900
x683:	mov ax, [bp + 40]	; 3: -117 70 40
x686:	add ax, 1900	; 3: 5 108 7

time_test$72:	; parameter £temporary6172, offset 10
x689:	mov [bp + 58], ax	; 3: -119 70 58

time_test$73:	; £temporary6174 = s$tm_mon + 1
x692:	mov ax, [bp + 38]	; 3: -117 70 38
x695:	inc ax	; 1: 64

time_test$74:	; parameter £temporary6174, offset 12
x696:	mov [bp + 60], ax	; 3: -119 70 60

time_test$75:	; parameter s$tm_mday, offset 14
x699:	mov ax, [bp + 36]	; 3: -117 70 36
x702:	mov [bp + 62], ax	; 3: -119 70 62

time_test$76:	; parameter s$tm_hour, offset 16
x705:	mov ax, [bp + 34]	; 3: -117 70 34
x708:	mov [bp + 64], ax	; 3: -119 70 64

time_test$77:	; parameter s$tm_min, offset 18
x711:	mov ax, [bp + 32]	; 3: -117 70 32
x714:	mov [bp + 66], ax	; 3: -119 70 66

time_test$78:	; parameter s$tm_sec, offset 20
x717:	mov ax, [bp + 30]	; 3: -117 70 30
x720:	mov [bp + 68], ax	; 3: -119 70 68

time_test$79:	; parameter s$tm_yday, offset 22
x723:	mov ax, [bp + 44]	; 3: -117 70 44
x726:	mov [bp + 70], ax	; 3: -119 70 70

time_test$80:	; parameter s$tm_wday, offset 24
x729:	mov ax, [bp + 42]	; 3: -117 70 42
x732:	mov [bp + 72], ax	; 3: -119 70 72

time_test$81:	; parameter s$tm_isdst, offset 26
x735:	mov ax, [bp + 46]	; 3: -117 70 46
x738:	mov [bp + 74], ax	; 3: -119 70 74

time_test$82:	; call function noellipse-ellipse printf, extra 0
x741:	mov word [bp + 48], time_test$83	; 5: -57 70 48 -8 2
x746:	mov [bp + 50], bp	; 3: -119 110 50
x749:	add bp, 48	; 3: -125 -59 48
x752:	mov di, bp	; 2: -119 -17
x754:	add di, 20	; 3: -125 -57 20
x757:	jmp printf	; 3: -23 -34 7

time_test$83:	; post call

time_test$84:	; call header integral zero 0 stack zero 0

time_test$85:	; parameter buffer1, offset 6
x760:	mov [bp + 556], bp	; 4: -119 -82 44 2
x764:	add word [bp + 556], 48	; 5: -125 -122 44 2 48

time_test$86:	; call header integral zero 0 stack zero 0

time_test$87:	; £temporary6183 = &s
x769:	mov si, bp	; 2: -119 -18
x771:	add si, 30	; 3: -125 -58 30

time_test$88:	; parameter £temporary6183, offset 112
x774:	mov [bp + 662], si	; 4: -119 -74 -106 2

time_test$89:	; call function noellipse-noellipse asctime
x778:	mov word [bp + 656], time_test$90	; 6: -57 -122 -112 2 27 3
x784:	mov [bp + 658], bp	; 4: -119 -82 -110 2
x788:	add bp, 656	; 4: -127 -59 -112 2
x792:	jmp asctime	; 3: -23 -109 38

time_test$90:	; post call

time_test$91:	; £temporary6184 = return_value

time_test$92:	; parameter £temporary6184, offset 8
x795:	mov [bp + 558], bx	; 4: -119 -98 46 2

time_test$93:	; call function noellipse-noellipse strcpy
x799:	mov word [bp + 550], time_test$94	; 6: -57 -122 38 2 48 3
x805:	mov [bp + 552], bp	; 4: -119 -82 40 2
x809:	add bp, 550	; 4: -127 -59 38 2
x813:	jmp strcpy	; 3: -23 -6 40

time_test$94:	; post call

time_test$95:	; call header integral zero 0 stack zero 0

time_test$96:	; parameter buffer2, offset 6
x816:	mov [bp + 556], bp	; 4: -119 -82 44 2
x820:	add word [bp + 556], 148	; 6: -127 -122 44 2 -108 0

time_test$97:	; call header integral zero 0 stack zero 0

time_test$98:	; £temporary6186 = &now
x826:	mov si, bp	; 2: -119 -18
x828:	add si, 20	; 3: -125 -58 20

time_test$99:	; parameter £temporary6186, offset 112
x831:	mov [bp + 662], si	; 4: -119 -74 -106 2

time_test$100:	; call function noellipse-noellipse ctime
x835:	mov word [bp + 656], time_test$101	; 6: -57 -122 -112 2 84 3
x841:	mov [bp + 658], bp	; 4: -119 -82 -110 2
x845:	add bp, 656	; 4: -127 -59 -112 2
x849:	jmp ctime	; 3: -23 18 41

time_test$101:	; post call

time_test$102:	; £temporary6187 = return_value

time_test$103:	; parameter £temporary6187, offset 8
x852:	mov [bp + 558], bx	; 4: -119 -98 46 2

time_test$104:	; call function noellipse-noellipse strcpy
x856:	mov word [bp + 550], time_test$105	; 6: -57 -122 38 2 105 3
x862:	mov [bp + 552], bp	; 4: -119 -82 40 2
x866:	add bp, 550	; 4: -127 -59 38 2
x870:	jmp strcpy	; 3: -23 -63 40

time_test$105:	; post call

time_test$106:	; call header integral zero 0 stack zero 0

time_test$107:	; parameter string_asctime203C25s3E2C20ctime203C25s3E0A#, offset 6
x873:	mov word [bp + 556], string_asctime203C25s3E2C20ctime203C25s3E0A#	; 6: -57 -122 44 2 -27 4

time_test$108:	; parameter buffer1, offset 8
x879:	mov [bp + 558], bp	; 4: -119 -82 46 2
x883:	add word [bp + 558], 48	; 5: -125 -122 46 2 48

time_test$109:	; parameter buffer2, offset 10
x888:	mov [bp + 560], bp	; 4: -119 -82 48 2
x892:	add word [bp + 560], 148	; 6: -127 -122 48 2 -108 0

time_test$110:	; call function noellipse-ellipse printf, extra 0
x898:	mov word [bp + 550], time_test$111	; 6: -57 -122 38 2 -104 3
x904:	mov [bp + 552], bp	; 4: -119 -82 40 2
x908:	add bp, 550	; 4: -127 -59 38 2
x912:	mov di, bp	; 2: -119 -17
x914:	add di, 4	; 3: -125 -57 4
x917:	jmp printf	; 3: -23 62 7

time_test$111:	; post call

time_test$112:	; call header integral zero 0 stack zero 0

time_test$113:	; parameter buffer, offset 6
x920:	mov [bp + 556], bp	; 4: -119 -82 44 2
x924:	add word [bp + 556], 248	; 6: -127 -122 44 2 -8 0

time_test$114:	; parameter 300, offset 8
x930:	mov word [bp + 558], 300	; 6: -57 -122 46 2 44 1

time_test$115:	; parameter string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y#, offset 10
x936:	mov word [bp + 560], string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y#	; 6: -57 -122 48 2 -1 4

time_test$116:	; £temporary6190 = &s
x942:	mov si, bp	; 2: -119 -18
x944:	add si, 30	; 3: -125 -58 30

time_test$117:	; parameter £temporary6190, offset 12
x947:	mov [bp + 562], si	; 4: -119 -74 50 2

time_test$118:	; call function noellipse-noellipse strftime
x951:	mov word [bp + 550], time_test$119	; 6: -57 -122 38 2 -56 3
x957:	mov [bp + 552], bp	; 4: -119 -82 40 2
x961:	add bp, 550	; 4: -127 -59 38 2
x965:	jmp strftime	; 3: -23 -50 40

time_test$119:	; post call

time_test$120:	; £temporary6191 = return_value

time_test$121:	; i = £temporary6191
x968:	mov [bp + 548], bx	; 4: -119 -98 36 2

time_test$122:	; call header integral zero 0 stack zero 0

time_test$123:	; parameter string_strftime203C25i3E203C25s3E0A#, offset 6
x972:	mov word [bp + 556], string_strftime203C25i3E203C25s3E0A#	; 6: -57 -122 44 2 -11 5

time_test$124:	; parameter i, offset 8
x978:	mov ax, [bp + 548]	; 4: -117 -122 36 2
x982:	mov [bp + 558], ax	; 4: -119 -122 46 2

time_test$125:	; parameter buffer, offset 10
x986:	mov [bp + 560], bp	; 4: -119 -82 48 2
x990:	add word [bp + 560], 248	; 6: -127 -122 48 2 -8 0

time_test$126:	; call function noellipse-ellipse printf, extra 0
x996:	mov word [bp + 550], time_test$127	; 6: -57 -122 38 2 -6 3
x1002:	mov [bp + 552], bp	; 4: -119 -82 40 2
x1006:	add bp, 550	; 4: -127 -59 38 2
x1010:	mov di, bp	; 2: -119 -17
x1012:	add di, 4	; 3: -125 -57 4
x1015:	jmp printf	; 3: -23 -36 6

time_test$127:	; post call

time_test$128:	; return
x1018:	mov ax, [bp]	; 3: -117 70 0
x1021:	mov di, [bp + 4]	; 3: -117 126 4
x1024:	mov bp, [bp + 2]	; 3: -117 110 2
x1027:	jmp ax	; 2: -1 -32

time_test$129:	; function end time_test

string_Sun#:
x1029:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x1033:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x1037:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x1041:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x1045:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x1049:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x1053:	db "Sat", 0	; 4: 83 97 116 0

string_now2013A2025lu0A#:
x1057:	db "now 1: %lu", 10, 0	; 12: 110 111 119 32 49 58 32 37 108 117 10 0

string_now2023A2025lu0A#:
x1069:	db "now 2: %lu", 10, 0	; 12: 110 111 119 32 50 58 32 37 108 117 10 0

string_202020gm20time3A2025s2025i2D25i2D25i2025i3A25i3A25i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#:
x1081:	db "   gm time: %s %i-%i-%i %i:%i:%i, year day %i, week day %i, daylight saving time %i", 10, 0	; 85: 32 32 32 103 109 32 116 105 109 101 58 32 37 115 32 37 105 45 37 105 45 37 105 32 37 105 58 37 105 58 37 105 44 32 121 101 97 114 32 100 97 121 32 37 105 44 32 119 101 101 107 32 100 97 121 32 37 105 44 32 100 97 121 108 105 103 104 116 32 115 97 118 105 110 103 32 116 105 109 101 32 37 105 10 0

int2$2#:
x1166:	dw 2	; 2: 2 0

string_local20time3A2025s2025i2D25i2D25i2025i3A25i3A25i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#:
x1168:	db "local time: %s %i-%i-%i %i:%i:%i, year day %i, week day %i, daylight saving time %i", 10, 0	; 85: 108 111 99 97 108 32 116 105 109 101 58 32 37 115 32 37 105 45 37 105 45 37 105 32 37 105 58 37 105 58 37 105 44 32 121 101 97 114 32 100 97 121 32 37 105 44 32 119 101 101 107 32 100 97 121 32 37 105 44 32 100 97 121 108 105 103 104 116 32 115 97 118 105 110 103 32 116 105 109 101 32 37 105 10 0

string_asctime203C25s3E2C20ctime203C25s3E0A#:
x1253:	db "asctime <%s>, ctime <%s>", 10, 0	; 26: 97 115 99 116 105 109 101 32 60 37 115 62 44 32 99 116 105 109 101 32 60 37 115 62 10 0

string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y#:
x1279:	db "short day %a, long day %A, short month %b, long month %B, date-time %c, mday %d, hour %H, gm hour %I, yday %j, month %m, min %M, am/pm %p, sec %S, week number sun %U, week day %w, week number mon %W, date %x, time %X, short year %y, long year %Y", 0	; 246: 115 104 111 114 116 32 100 97 121 32 37 97 44 32 108 111 110 103 32 100 97 121 32 37 65 44 32 115 104 111 114 116 32 109 111 110 116 104 32 37 98 44 32 108 111 110 103 32 109 111 110 116 104 32 37 66 44 32 100 97 116 101 45 116 105 109 101 32 37 99 44 32 109 100 97 121 32 37 100 44 32 104 111 117 114 32 37 72 44 32 103 109 32 104 111 117 114 32 37 73 44 32 121 100 97 121 32 37 106 44 32 109 111 110 116 104 32 37 109 44 32 109 105 110 32 37 77 44 32 97 109 47 112 109 32 37 112 44 32 115 101 99 32 37 83 44 32 119 101 101 107 32 110 117 109 98 101 114 32 115 117 110 32 37 85 44 32 119 101 101 107 32 100 97 121 32 37 119 44 32 119 101 101 107 32 110 117 109 98 101 114 32 109 111 110 32 37 87 44 32 100 97 116 101 32 37 120 44 32 116 105 109 101 32 37 88 44 32 115 104 111 114 116 32 121 101 97 114 32 37 121 44 32 108 111 110 103 32 121 101 97 114 32 37 89 0

string_strftime203C25i3E203C25s3E0A#:
x1525:	db "strftime <%i> <%s>", 10, 0	; 20: 115 116 114 102 116 105 109 101 32 60 37 105 62 32 60 37 115 62 10 0

time:	; ah = 42
x1545:	mov ah, 42	; 2: -76 42

time$1:	; interrupt 33
x1547:	int 33	; 2: -51 33

time$2:	; £temporary3418 = cx

time$3:	; year = £temporary3418 - 1900
x1549:	sub cx, 1900	; 4: -127 -23 108 7
x1553:	mov [bp + 12], cx	; 3: -119 78 12

time$4:	; £temporary3420 = dh

time$5:	; month = £temporary3420 - 1
x1556:	dec dh	; 2: -2 -50
x1558:	mov [bp + 14], dh	; 3: -120 118 14

time$6:	; £temporary3422 = dl

time$7:	; monthDay = £temporary3422
x1561:	mov [bp + 15], dl	; 3: -120 86 15

time$8:	; ah = 44
x1564:	mov ah, 44	; 2: -76 44

time$9:	; interrupt 33
x1566:	int 33	; 2: -51 33

time$10:	; £temporary3424 = ch

time$11:	; hour = £temporary3424
x1568:	mov [bp + 16], ch	; 3: -120 110 16

time$12:	; £temporary3425 = cl

time$13:	; min = £temporary3425
x1571:	mov [bp + 17], cl	; 3: -120 78 17

time$14:	; £temporary3426 = dh

time$15:	; sec = £temporary3426
x1574:	mov [bp + 18], dh	; 3: -120 118 18

time$16:	; £temporary3427 = year % 4
x1577:	mov ax, [bp + 12]	; 3: -117 70 12
x1580:	xor dx, dx	; 2: 49 -46
x1582:	idiv word [int2$4#]	; 4: -9 62 114 7

time$17:	; if £temporary3427 != 0 goto 20
x1586:	cmp dx, 0	; 3: -125 -6 0
x1589:	jne time$20	; 2: 117 5

time$18:	; £temporary3429 = 1
x1591:	mov ax, 1	; 3: -72 1 0

time$19:	; goto 21
x1594:	jmp time$21	; 2: -21 3

time$20:	; £temporary3429 = 0
x1596:	mov ax, 0	; 3: -72 0 0

time$21:	; leapYear = £temporary3429
x1599:	mov [bp + 19], ax	; 3: -119 70 19

time$22:	; daysOfMonths[0] = 31
x1602:	mov word [bp + 21], 31	; 5: -57 70 21 31 0

time$23:	; if leapYear == 0 goto 26
x1607:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x1611:	je time$26	; 2: 116 5

time$24:	; £temporary3434 = 29
x1613:	mov ax, 29	; 3: -72 29 0

time$25:	; goto 27
x1616:	jmp time$27	; 2: -21 3

time$26:	; £temporary3434 = 28
x1618:	mov ax, 28	; 3: -72 28 0

time$27:	; daysOfMonths[1] = £temporary3434
x1621:	mov [bp + 23], ax	; 3: -119 70 23

time$28:	; daysOfMonths[2] = 31
x1624:	mov word [bp + 25], 31	; 5: -57 70 25 31 0

time$29:	; daysOfMonths[3] = 30
x1629:	mov word [bp + 27], 30	; 5: -57 70 27 30 0

time$30:	; daysOfMonths[4] = 31
x1634:	mov word [bp + 29], 31	; 5: -57 70 29 31 0

time$31:	; daysOfMonths[5] = 30
x1639:	mov word [bp + 31], 30	; 5: -57 70 31 30 0

time$32:	; daysOfMonths[6] = 30
x1644:	mov word [bp + 33], 30	; 5: -57 70 33 30 0

time$33:	; daysOfMonths[7] = 31
x1649:	mov word [bp + 35], 31	; 5: -57 70 35 31 0

time$34:	; daysOfMonths[8] = 30
x1654:	mov word [bp + 37], 30	; 5: -57 70 37 30 0

time$35:	; daysOfMonths[9] = 31
x1659:	mov word [bp + 39], 31	; 5: -57 70 39 31 0

time$36:	; daysOfMonths[10] = 30
x1664:	mov word [bp + 41], 30	; 5: -57 70 41 30 0

time$37:	; daysOfMonths[11] = 31
x1669:	mov word [bp + 43], 31	; 5: -57 70 43 31 0

time$38:	; £temporary3447 = int_to_int monthDay (Signed_Short_Int -> Signed_Int)
x1674:	mov al, [bp + 15]	; 3: -118 70 15
x1677:	and ax, 255	; 3: 37 -1 0
x1680:	cmp al, 0	; 2: 60 0
x1682:	jge time$39	; 2: 125 4
x1684:	neg al	; 2: -10 -40
x1686:	neg ax	; 2: -9 -40

time$39:	; yearDay = £temporary3447 - 1
x1688:	dec ax	; 1: 72
x1689:	mov [bp + 45], ax	; 3: -119 70 45

time$40:	; mon = 0
x1692:	mov word [bp + 47], 0	; 5: -57 70 47 0 0

time$41:	; £temporary3449 = int_to_int month (Signed_Short_Int -> Signed_Int)
x1697:	mov al, [bp + 14]	; 3: -118 70 14
x1700:	and ax, 255	; 3: 37 -1 0
x1703:	cmp al, 0	; 2: 60 0
x1705:	jge time$42	; 2: 125 4
x1707:	neg al	; 2: -10 -40
x1709:	neg ax	; 2: -9 -40

time$42:	; if mon >= £temporary3449 goto 49
x1711:	cmp [bp + 47], ax	; 3: 57 70 47
x1714:	jge time$49	; 2: 125 26

time$43:	; £temporary3453 = mon * 2
x1716:	mov ax, [bp + 47]	; 3: -117 70 47
x1719:	xor dx, dx	; 2: 49 -46
x1721:	mul word [int2$2#]	; 4: -9 38 -114 4

time$44:	; £temporary3454 = daysOfMonths + £temporary3453
x1725:	mov si, bp	; 2: -119 -18
x1727:	add si, 21	; 3: -125 -58 21
x1730:	add si, ax	; 2: 1 -58

time$45:	; £temporary3452 -> £temporary3454 = *£temporary3454

time$46:	; yearDay = yearDay + £temporary3452 -> £temporary3454
x1732:	mov ax, [si]	; 2: -117 4
x1734:	add [bp + 45], ax	; 3: 1 70 45

time$47:	; ++mon
x1737:	inc word [bp + 47]	; 3: -1 70 47

time$48:	; goto 41
x1740:	jmp time$41	; 2: -21 -45

time$49:	; £temporary3457 = int_to_int sec (Signed_Short_Int -> Signed_Int)
x1742:	mov al, [bp + 18]	; 3: -118 70 18
x1745:	and ax, 255	; 3: 37 -1 0
x1748:	cmp al, 0	; 2: 60 0
x1750:	jge time$50	; 2: 125 4
x1752:	neg al	; 2: -10 -40
x1754:	neg ax	; 2: -9 -40

time$50:	; s$tm_sec = £temporary3457
x1756:	mov [bp + 49], ax	; 3: -119 70 49

time$51:	; £temporary3459 = int_to_int min (Signed_Short_Int -> Signed_Int)
x1759:	mov al, [bp + 17]	; 3: -118 70 17
x1762:	and ax, 255	; 3: 37 -1 0
x1765:	cmp al, 0	; 2: 60 0
x1767:	jge time$52	; 2: 125 4
x1769:	neg al	; 2: -10 -40
x1771:	neg ax	; 2: -9 -40

time$52:	; s$tm_min = £temporary3459
x1773:	mov [bp + 51], ax	; 3: -119 70 51

time$53:	; £temporary3461 = int_to_int hour (Signed_Short_Int -> Signed_Int)
x1776:	mov al, [bp + 16]	; 3: -118 70 16
x1779:	and ax, 255	; 3: 37 -1 0
x1782:	cmp al, 0	; 2: 60 0
x1784:	jge time$54	; 2: 125 4
x1786:	neg al	; 2: -10 -40
x1788:	neg ax	; 2: -9 -40

time$54:	; s$tm_hour = £temporary3461
x1790:	mov [bp + 53], ax	; 3: -119 70 53

time$55:	; £temporary3463 = int_to_int monthDay (Signed_Short_Int -> Signed_Int)
x1793:	mov al, [bp + 15]	; 3: -118 70 15
x1796:	and ax, 255	; 3: 37 -1 0
x1799:	cmp al, 0	; 2: 60 0
x1801:	jge time$56	; 2: 125 4
x1803:	neg al	; 2: -10 -40
x1805:	neg ax	; 2: -9 -40

time$56:	; s$tm_mday = £temporary3463
x1807:	mov [bp + 55], ax	; 3: -119 70 55

time$57:	; £temporary3465 = int_to_int month (Signed_Short_Int -> Signed_Int)
x1810:	mov al, [bp + 14]	; 3: -118 70 14
x1813:	and ax, 255	; 3: 37 -1 0
x1816:	cmp al, 0	; 2: 60 0
x1818:	jge time$58	; 2: 125 4
x1820:	neg al	; 2: -10 -40
x1822:	neg ax	; 2: -9 -40

time$58:	; s$tm_mon = £temporary3465
x1824:	mov [bp + 57], ax	; 3: -119 70 57

time$59:	; s$tm_year = year
x1827:	mov ax, [bp + 12]	; 3: -117 70 12
x1830:	mov [bp + 59], ax	; 3: -119 70 59

time$60:	; s$tm_wday = 0
x1833:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

time$61:	; s$tm_yday = yearDay
x1838:	mov ax, [bp + 45]	; 3: -117 70 45
x1841:	mov [bp + 63], ax	; 3: -119 70 63

time$62:	; s$tm_isdst = 0
x1844:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

time$63:	; call header integral zero 0 stack zero 0

time$64:	; £temporary3470 = &s
x1849:	mov si, bp	; 2: -119 -18
x1851:	add si, 49	; 3: -125 -58 49

time$65:	; parameter £temporary3470, offset 6
x1854:	mov [bp + 73], si	; 3: -119 118 73

time$66:	; call function noellipse-noellipse mktime
x1857:	mov word [bp + 67], time$67	; 5: -57 70 67 79 7
x1862:	mov [bp + 69], bp	; 3: -119 110 69
x1865:	add bp, 67	; 3: -125 -59 67
x1868:	nop	; 1: -112
x1869:	jmp mktime	; 2: -21 37

time$67:	; post call

time$68:	; £temporary3471 = return_value

time$69:	; time = £temporary3471
x1871:	mov [bp + 8], ebx	; 4: 102 -119 94 8

time$70:	; if timePtr == 0 goto 73
x1875:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x1879:	je time$73	; 2: 116 10

time$71:	; £temporary3473 -> timePtr = *timePtr
x1881:	mov si, [bp + 6]	; 3: -117 118 6

time$72:	; £temporary3473 -> timePtr = time
x1884:	mov eax, [bp + 8]	; 4: 102 -117 70 8
x1888:	mov [si], eax	; 3: 102 -119 4

time$73:	; return_value = time
x1891:	mov ebx, [bp + 8]	; 4: 102 -117 94 8

time$74:	; return
x1895:	mov ax, [bp]	; 3: -117 70 0
x1898:	mov di, [bp + 4]	; 3: -117 126 4
x1901:	mov bp, [bp + 2]	; 3: -117 110 2
x1904:	jmp ax	; 2: -1 -32

time$75:	; function end time

int2$4#:
x1906:	dw 4	; 2: 4 0

mktime:	; if tp == 0 goto 28
x1908:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x1912:	je mktime$28	; 4: 15 -124 -40 0

mktime$1:	; £temporary3477 -> tp = *tp, offset 10
x1916:	mov si, [bp + 6]	; 3: -117 118 6

mktime$2:	; £temporary3478 = £temporary3477 -> tp - 69
x1919:	mov ax, [si + 10]	; 3: -117 68 10
x1922:	sub ax, 69	; 3: -125 -24 69

mktime$3:	; £temporary3479 = £temporary3478 / 4
x1925:	xor dx, dx	; 2: 49 -46
x1927:	idiv word [int2$4#]	; 4: -9 62 114 7

mktime$4:	; £temporary3480 = int_to_int £temporary3479 (Signed_Int -> Signed_Long_Int)
x1931:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x1937:	cmp ax, 0	; 3: -125 -8 0
x1940:	jge mktime$5	; 2: 125 5
x1942:	neg ax	; 2: -9 -40
x1944:	neg eax	; 3: 102 -9 -40

mktime$5:	; leapDays = £temporary3480
x1947:	mov [bp + 8], eax	; 4: 102 -119 70 8

mktime$6:	; £temporary3481 -> tp = *tp, offset 10
x1951:	mov si, [bp + 6]	; 3: -117 118 6

mktime$7:	; £temporary3482 = £temporary3481 -> tp - 70
x1954:	mov ax, [si + 10]	; 3: -117 68 10
x1957:	sub ax, 70	; 3: -125 -24 70

mktime$8:	; £temporary3483 = £temporary3482 * 365
x1960:	xor dx, dx	; 2: 49 -46
x1962:	imul word [int2$365#]	; 4: -9 46 101 8

mktime$9:	; £temporary3484 = int_to_int £temporary3483 (Signed_Int -> Signed_Long_Int)
x1966:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x1972:	cmp ax, 0	; 3: -125 -8 0
x1975:	jge mktime$10	; 2: 125 5
x1977:	neg ax	; 2: -9 -40
x1979:	neg eax	; 3: 102 -9 -40

mktime$10:	; £temporary3485 = £temporary3484 + leapDays
x1982:	add eax, [bp + 8]	; 4: 102 3 70 8

mktime$11:	; £temporary3486 -> tp = *tp, offset 14
x1986:	mov si, [bp + 6]	; 3: -117 118 6

mktime$12:	; £temporary3487 = int_to_int £temporary3486 -> tp (Signed_Int -> Signed_Long_Int)
x1989:	mov bx, [si + 14]	; 3: -117 92 14
x1992:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x1999:	cmp bx, 0	; 3: -125 -5 0
x2002:	jge mktime$13	; 2: 125 5
x2004:	neg bx	; 2: -9 -37
x2006:	neg ebx	; 3: 102 -9 -37

mktime$13:	; totalDays = £temporary3485 + £temporary3487
x2009:	add eax, ebx	; 3: 102 1 -40
x2012:	mov [bp + 12], eax	; 4: 102 -119 70 12

mktime$14:	; £temporary3489 = totalDays * 86400
x2016:	mov eax, [bp + 12]	; 4: 102 -117 70 12
x2020:	xor edx, edx	; 3: 102 49 -46
x2023:	imul dword [int4$86400#]	; 5: 102 -9 46 103 8
x2028:	mov ebx, eax	; 3: 102 -119 -61

mktime$15:	; £temporary3490 -> tp = *tp, offset 4
x2031:	mov si, [bp + 6]	; 3: -117 118 6

mktime$16:	; £temporary3491 = int_to_int £temporary3490 -> tp (Signed_Int -> Signed_Long_Int)
x2034:	mov ax, [si + 4]	; 3: -117 68 4
x2037:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2043:	cmp ax, 0	; 3: -125 -8 0
x2046:	jge mktime$17	; 2: 125 5
x2048:	neg ax	; 2: -9 -40
x2050:	neg eax	; 3: 102 -9 -40

mktime$17:	; £temporary3492 = £temporary3491 * 3600
x2053:	xor edx, edx	; 3: 102 49 -46
x2056:	imul dword [int4$3600#]	; 5: 102 -9 46 107 8

mktime$18:	; £temporary3493 = £temporary3489 + £temporary3492
x2061:	add ebx, eax	; 3: 102 1 -61

mktime$19:	; £temporary3494 -> tp = *tp, offset 2
x2064:	mov si, [bp + 6]	; 3: -117 118 6

mktime$20:	; £temporary3495 = int_to_int £temporary3494 -> tp (Signed_Int -> Signed_Long_Int)
x2067:	mov ax, [si + 2]	; 3: -117 68 2
x2070:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2076:	cmp ax, 0	; 3: -125 -8 0
x2079:	jge mktime$21	; 2: 125 5
x2081:	neg ax	; 2: -9 -40
x2083:	neg eax	; 3: 102 -9 -40

mktime$21:	; £temporary3496 = £temporary3495 * 60
x2086:	xor edx, edx	; 3: 102 49 -46
x2089:	imul dword [int4$60#]	; 5: 102 -9 46 111 8

mktime$22:	; £temporary3497 = £temporary3493 + £temporary3496
x2094:	add ebx, eax	; 3: 102 1 -61

mktime$23:	; £temporary3498 -> tp = *tp
x2097:	mov si, [bp + 6]	; 3: -117 118 6

mktime$24:	; £temporary3499 = int_to_int £temporary3498 -> tp (Signed_Int -> Signed_Long_Int)
x2100:	mov ax, [si]	; 2: -117 4
x2102:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2108:	cmp ax, 0	; 3: -125 -8 0
x2111:	jge mktime$25	; 2: 125 5
x2113:	neg ax	; 2: -9 -40
x2115:	neg eax	; 3: 102 -9 -40

mktime$25:	; £temporary3500 = £temporary3497 + £temporary3499
x2118:	add ebx, eax	; 3: 102 1 -61

mktime$26:	; return_value = £temporary3500

mktime$27:	; return
x2121:	mov ax, [bp]	; 3: -117 70 0
x2124:	mov di, [bp + 4]	; 3: -117 126 4
x2127:	mov bp, [bp + 2]	; 3: -117 110 2
x2130:	jmp ax	; 2: -1 -32

mktime$28:	; return_value = 0
x2132:	mov ebx, 0	; 6: 102 -69 0 0 0 0

mktime$29:	; return
x2138:	mov ax, [bp]	; 3: -117 70 0
x2141:	mov di, [bp + 4]	; 3: -117 126 4
x2144:	mov bp, [bp + 2]	; 3: -117 110 2
x2147:	jmp ax	; 2: -1 -32

mktime$30:	; function end mktime

int2$365#:
x2149:	dw 365	; 2: 109 1

int4$86400#:
x2151:	dd 86400	; 4: -128 81 1 0

int4$3600#:
x2155:	dd 3600	; 4: 16 14 0 0

int4$60#:
x2159:	dd 60	; 4: 60 0 0 0

gmtime:	; year = 1970
x2163:	mov word [bp + 8], 1970	; 5: -57 70 8 -78 7

gmtime$1:	; if timePtr == 0 goto 85
x2168:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x2172:	je gmtime$85	; 4: 15 -124 46 2

gmtime$2:	; £temporary3516 -> timePtr = *timePtr
x2176:	mov si, [bp + 6]	; 3: -117 118 6

gmtime$3:	; time = £temporary3516 -> timePtr
x2179:	mov eax, [si]	; 3: 102 -117 4
x2182:	mov [bp + 10], eax	; 4: 102 -119 70 10

gmtime$4:	; totalDays = time / 86400
x2186:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x2190:	xor edx, edx	; 3: 102 49 -46
x2193:	idiv dword [int4$86400#]	; 5: 102 -9 62 103 8
x2198:	mov [bp + 14], eax	; 4: 102 -119 70 14

gmtime$5:	; secondsOfDay = time % 86400
x2202:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x2206:	xor edx, edx	; 3: 102 49 -46
x2209:	idiv dword [int4$86400#]	; 5: 102 -9 62 103 8
x2214:	mov [bp + 18], edx	; 4: 102 -119 86 18

gmtime$6:	; secondsOfHour = secondsOfDay % 3600
x2218:	mov eax, [bp + 18]	; 4: 102 -117 70 18
x2222:	xor edx, edx	; 3: 102 49 -46
x2225:	idiv dword [int4$3600#]	; 5: 102 -9 62 107 8
x2230:	mov [bp + 22], edx	; 4: 102 -119 86 22

gmtime$7:	; £temporary3521 = secondsOfDay / 3600
x2234:	mov eax, [bp + 18]	; 4: 102 -117 70 18
x2238:	xor edx, edx	; 3: 102 49 -46
x2241:	idiv dword [int4$3600#]	; 5: 102 -9 62 107 8

gmtime$8:	; £temporary3522 = int_to_int £temporary3521 (Signed_Long_Int -> Signed_Int)
x2246:	cmp eax, 0	; 4: 102 -125 -8 0
x2250:	jge gmtime$9	; 2: 125 5
x2252:	neg eax	; 3: 102 -9 -40
x2255:	neg ax	; 2: -9 -40

gmtime$9:	; g_timeStruct$tm_hour = £temporary3522
x2257:	mov [@27$g_timeStruct + 4], ax	; 3: -93 -64 10

gmtime$10:	; £temporary3524 = secondsOfHour / 60
x2260:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x2264:	xor edx, edx	; 3: 102 49 -46
x2267:	idiv dword [int4$60#]	; 5: 102 -9 62 111 8

gmtime$11:	; £temporary3525 = int_to_int £temporary3524 (Signed_Long_Int -> Signed_Int)
x2272:	cmp eax, 0	; 4: 102 -125 -8 0
x2276:	jge gmtime$12	; 2: 125 5
x2278:	neg eax	; 3: 102 -9 -40
x2281:	neg ax	; 2: -9 -40

gmtime$12:	; g_timeStruct$tm_min = £temporary3525
x2283:	mov [@27$g_timeStruct + 2], ax	; 3: -93 -66 10

gmtime$13:	; £temporary3527 = secondsOfHour % 60
x2286:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x2290:	xor edx, edx	; 3: 102 49 -46
x2293:	idiv dword [int4$60#]	; 5: 102 -9 62 111 8

gmtime$14:	; £temporary3528 = int_to_int £temporary3527 (Signed_Long_Int -> Signed_Int)
x2298:	cmp edx, 0	; 4: 102 -125 -6 0
x2302:	jge gmtime$15	; 2: 125 5
x2304:	neg edx	; 3: 102 -9 -38
x2307:	neg dx	; 2: -9 -38

gmtime$15:	; g_timeStruct$tm_sec = £temporary3528
x2309:	mov [@27$g_timeStruct], dx	; 4: -119 22 -68 10

gmtime$16:	; if totalDays >= 3 goto 21
x2313:	cmp dword [bp + 14], 3	; 5: 102 -125 126 14 3
x2318:	jge gmtime$21	; 2: 125 24

gmtime$17:	; £temporary3531 = totalDays + 4
x2320:	mov eax, [bp + 14]	; 4: 102 -117 70 14
x2324:	add eax, 4	; 4: 102 -125 -64 4

gmtime$18:	; £temporary3532 = int_to_int £temporary3531 (Signed_Long_Int -> Signed_Int)
x2328:	cmp eax, 0	; 4: 102 -125 -8 0
x2332:	jge gmtime$19	; 2: 125 5
x2334:	neg eax	; 3: 102 -9 -40
x2337:	neg ax	; 2: -9 -40

gmtime$19:	; g_timeStruct$tm_wday = £temporary3532
x2339:	mov [@27$g_timeStruct + 12], ax	; 3: -93 -56 10

gmtime$20:	; goto 25
x2342:	jmp gmtime$25	; 2: -21 31

gmtime$21:	; £temporary3534 = totalDays - 3
x2344:	mov eax, [bp + 14]	; 4: 102 -117 70 14
x2348:	sub eax, 3	; 4: 102 -125 -24 3

gmtime$22:	; £temporary3535 = £temporary3534 % 7
x2352:	xor edx, edx	; 3: 102 49 -46
x2355:	idiv dword [int4$7#]	; 5: 102 -9 62 -50 10

gmtime$23:	; £temporary3536 = int_to_int £temporary3535 (Signed_Long_Int -> Signed_Int)
x2360:	cmp edx, 0	; 4: 102 -125 -6 0
x2364:	jge gmtime$24	; 2: 125 5
x2366:	neg edx	; 3: 102 -9 -38
x2369:	neg dx	; 2: -9 -38

gmtime$24:	; g_timeStruct$tm_wday = £temporary3536
x2371:	mov [@27$g_timeStruct + 12], dx	; 4: -119 22 -56 10

gmtime$25:	; £temporary3537 = year % 4
x2375:	mov ax, [bp + 8]	; 3: -117 70 8
x2378:	xor dx, dx	; 2: 49 -46
x2380:	idiv word [int2$4#]	; 4: -9 62 114 7

gmtime$26:	; if £temporary3537 != 0 goto 29
x2384:	cmp dx, 0	; 3: -125 -6 0
x2387:	jne gmtime$29	; 2: 117 14

gmtime$27:	; £temporary3539 = year % 100
x2389:	mov ax, [bp + 8]	; 3: -117 70 8
x2392:	xor dx, dx	; 2: 49 -46
x2394:	idiv word [int2$100#]	; 4: -9 62 -46 10

gmtime$28:	; if £temporary3539 != 0 goto 31
x2398:	cmp dx, 0	; 3: -125 -6 0
x2401:	jne gmtime$31	; 2: 117 14

gmtime$29:	; £temporary3542 = year % 400
x2403:	mov ax, [bp + 8]	; 3: -117 70 8
x2406:	xor dx, dx	; 2: 49 -46
x2408:	idiv word [int2$400#]	; 4: -9 62 -44 10

gmtime$30:	; if £temporary3542 != 0 goto 33
x2412:	cmp dx, 0	; 3: -125 -6 0
x2415:	jne gmtime$33	; 2: 117 5

gmtime$31:	; £temporary3545 = 1
x2417:	mov ax, 1	; 3: -72 1 0

gmtime$32:	; goto 34
x2420:	jmp gmtime$34	; 2: -21 3

gmtime$33:	; £temporary3545 = 0
x2422:	mov ax, 0	; 3: -72 0 0

gmtime$34:	; leapYear = £temporary3545
x2425:	mov [bp + 26], ax	; 3: -119 70 26

gmtime$35:	; if leapYear == 0 goto 38
x2428:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x2432:	je gmtime$38	; 2: 116 5

gmtime$36:	; £temporary3550 = 366
x2434:	mov ax, 366	; 3: -72 110 1

gmtime$37:	; goto 39
x2437:	jmp gmtime$39	; 2: -21 3

gmtime$38:	; £temporary3550 = 365
x2439:	mov ax, 365	; 3: -72 109 1

gmtime$39:	; daysOfYear = £temporary3550
x2442:	mov [bp + 28], ax	; 3: -119 70 28

gmtime$40:	; £temporary3551 = int_to_int daysOfYear (Signed_Int -> Signed_Long_Int)
x2445:	mov ax, [bp + 28]	; 3: -117 70 28
x2448:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2454:	cmp ax, 0	; 3: -125 -8 0
x2457:	jge gmtime$41	; 2: 125 5
x2459:	neg ax	; 2: -9 -40
x2461:	neg eax	; 3: 102 -9 -40

gmtime$41:	; if totalDays >= £temporary3551 goto 81
x2464:	cmp [bp + 14], eax	; 4: 102 57 70 14
x2468:	jge gmtime$81	; 4: 15 -115 -23 0

gmtime$42:	; daysOfMonths[0] = 31
x2472:	mov word [bp + 30], 31	; 5: -57 70 30 31 0

gmtime$43:	; if leapYear == 0 goto 46
x2477:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x2481:	je gmtime$46	; 2: 116 5

gmtime$44:	; £temporary3557 = 29
x2483:	mov ax, 29	; 3: -72 29 0

gmtime$45:	; goto 47
x2486:	jmp gmtime$47	; 2: -21 3

gmtime$46:	; £temporary3557 = 28
x2488:	mov ax, 28	; 3: -72 28 0

gmtime$47:	; daysOfMonths[1] = £temporary3557
x2491:	mov [bp + 32], ax	; 3: -119 70 32

gmtime$48:	; daysOfMonths[2] = 31
x2494:	mov word [bp + 34], 31	; 5: -57 70 34 31 0

gmtime$49:	; daysOfMonths[3] = 30
x2499:	mov word [bp + 36], 30	; 5: -57 70 36 30 0

gmtime$50:	; daysOfMonths[4] = 31
x2504:	mov word [bp + 38], 31	; 5: -57 70 38 31 0

gmtime$51:	; daysOfMonths[5] = 30
x2509:	mov word [bp + 40], 30	; 5: -57 70 40 30 0

gmtime$52:	; daysOfMonths[6] = 30
x2514:	mov word [bp + 42], 30	; 5: -57 70 42 30 0

gmtime$53:	; daysOfMonths[7] = 31
x2519:	mov word [bp + 44], 31	; 5: -57 70 44 31 0

gmtime$54:	; daysOfMonths[8] = 30
x2524:	mov word [bp + 46], 30	; 5: -57 70 46 30 0

gmtime$55:	; daysOfMonths[9] = 31
x2529:	mov word [bp + 48], 31	; 5: -57 70 48 31 0

gmtime$56:	; daysOfMonths[10] = 30
x2534:	mov word [bp + 50], 30	; 5: -57 70 50 30 0

gmtime$57:	; daysOfMonths[11] = 31
x2539:	mov word [bp + 52], 31	; 5: -57 70 52 31 0

gmtime$58:	; month = 0
x2544:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

gmtime$59:	; g_timeStruct$tm_year = year - 1900
x2549:	mov ax, [bp + 8]	; 3: -117 70 8
x2552:	sub ax, 1900	; 3: 45 108 7
x2555:	mov [@27$g_timeStruct], ax	; 3: -93 -68 10

gmtime$60:	; £temporary3573 = int_to_int totalDays (Signed_Long_Int -> Signed_Int)
x2558:	mov eax, [bp + 14]	; 4: 102 -117 70 14
x2562:	cmp eax, 0	; 4: 102 -125 -8 0
x2566:	jge gmtime$61	; 2: 125 5
x2568:	neg eax	; 3: 102 -9 -40
x2571:	neg ax	; 2: -9 -40

gmtime$61:	; g_timeStruct$tm_yday = £temporary3573
x2573:	mov [@27$g_timeStruct + 14], ax	; 3: -93 -54 10

gmtime$62:	; £temporary3575 = month * 2
x2576:	mov ax, [bp + 54]	; 3: -117 70 54
x2579:	xor dx, dx	; 2: 49 -46
x2581:	mul word [int2$2#]	; 4: -9 38 -114 4

gmtime$63:	; £temporary3576 = daysOfMonths + £temporary3575
x2585:	mov si, bp	; 2: -119 -18
x2587:	add si, 30	; 3: -125 -58 30
x2590:	add si, ax	; 2: 1 -58

gmtime$64:	; £temporary3574 -> £temporary3576 = *£temporary3576

gmtime$65:	; £temporary3577 = int_to_int £temporary3574 -> £temporary3576 (Signed_Int -> Signed_Long_Int)
x2592:	mov ax, [si]	; 2: -117 4
x2594:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2600:	cmp ax, 0	; 3: -125 -8 0
x2603:	jge gmtime$66	; 2: 125 5
x2605:	neg ax	; 2: -9 -40
x2607:	neg eax	; 3: 102 -9 -40

gmtime$66:	; if totalDays < £temporary3577 goto 74
x2610:	cmp [bp + 14], eax	; 4: 102 57 70 14
x2614:	jl gmtime$74	; 2: 124 43

gmtime$67:	; £temporary3580 = month * 2
x2616:	mov ax, [bp + 54]	; 3: -117 70 54
x2619:	xor dx, dx	; 2: 49 -46
x2621:	mul word [int2$2#]	; 4: -9 38 -114 4

gmtime$68:	; £temporary3581 = daysOfMonths + £temporary3580
x2625:	mov si, bp	; 2: -119 -18
x2627:	add si, 30	; 3: -125 -58 30
x2630:	add si, ax	; 2: 1 -58

gmtime$69:	; £temporary3579 -> £temporary3581 = *£temporary3581

gmtime$70:	; £temporary3582 = int_to_int £temporary3579 -> £temporary3581 (Signed_Int -> Signed_Long_Int)
x2632:	mov ax, [si]	; 2: -117 4
x2634:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2640:	cmp ax, 0	; 3: -125 -8 0
x2643:	jge gmtime$71	; 2: 125 5
x2645:	neg ax	; 2: -9 -40
x2647:	neg eax	; 3: 102 -9 -40

gmtime$71:	; totalDays = totalDays - £temporary3582
x2650:	sub [bp + 14], eax	; 4: 102 41 70 14

gmtime$72:	; ++month
x2654:	inc word [bp + 54]	; 3: -1 70 54

gmtime$73:	; goto 62
x2657:	jmp gmtime$62	; 2: -21 -83

gmtime$74:	; g_timeStruct$tm_mon = month
x2659:	mov ax, [bp + 54]	; 3: -117 70 54
x2662:	mov [@27$g_timeStruct + 8], ax	; 3: -93 -60 10

gmtime$75:	; £temporary3587 = totalDays + 1
x2665:	mov eax, [bp + 14]	; 4: 102 -117 70 14
x2669:	inc eax	; 2: 102 64

gmtime$76:	; £temporary3588 = int_to_int £temporary3587 (Signed_Long_Int -> Signed_Int)
x2671:	cmp eax, 0	; 4: 102 -125 -8 0
x2675:	jge gmtime$77	; 2: 125 5
x2677:	neg eax	; 3: 102 -9 -40
x2680:	neg ax	; 2: -9 -40

gmtime$77:	; g_timeStruct$tm_mday = £temporary3588
x2682:	mov [@27$g_timeStruct + 6], ax	; 3: -93 -62 10

gmtime$78:	; g_timeStruct$tm_isdst = -1
x2685:	mov word [@27$g_timeStruct + 16], -1	; 6: -57 6 -52 10 -1 -1

gmtime$79:	; return_value = (@27$g_timeStruct,0)
x2691:	mov bx, @27$g_timeStruct	; 3: -69 -68 10

gmtime$80:	; return
x2694:	mov ax, [bp]	; 3: -117 70 0
x2697:	mov di, [bp + 4]	; 3: -117 126 4
x2700:	mov bp, [bp + 2]	; 3: -117 110 2
x2703:	jmp ax	; 2: -1 -32

gmtime$81:	; ++year
x2705:	inc word [bp + 8]	; 3: -1 70 8

gmtime$82:	; £temporary3591 = int_to_int daysOfYear (Signed_Int -> Signed_Long_Int)
x2708:	mov ax, [bp + 28]	; 3: -117 70 28
x2711:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2717:	cmp ax, 0	; 3: -125 -8 0
x2720:	jge gmtime$83	; 2: 125 5
x2722:	neg ax	; 2: -9 -40
x2724:	neg eax	; 3: 102 -9 -40

gmtime$83:	; totalDays = totalDays - £temporary3591
x2727:	sub [bp + 14], eax	; 4: 102 41 70 14

gmtime$84:	; goto 25
x2731:	jmp gmtime$25	; 3: -23 -103 -2

gmtime$85:	; return_value = 0
x2734:	mov bx, 0	; 3: -69 0 0

gmtime$86:	; return
x2737:	mov ax, [bp]	; 3: -117 70 0
x2740:	mov di, [bp + 4]	; 3: -117 126 4
x2743:	mov bp, [bp + 2]	; 3: -117 110 2
x2746:	jmp ax	; 2: -1 -32

gmtime$87:	; function end gmtime

@27$g_timeStruct:
x2748:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 18: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

int4$7#:
x2766:	dd 7	; 4: 7 0 0 0

int2$100#:
x2770:	dw 100	; 2: 100 0

int2$400#:
x2772:	dw 400	; 2: -112 1

printf:	; £temporary2381 = &format
x2774:	mov si, bp	; 2: -119 -18
x2776:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2382 = int_to_int £temporary2381 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2382 + 2
x2779:	add si, 2	; 3: -125 -58 2
x2782:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; call header integral zero 0 stack zero 0

printf$4:	; parameter format, offset 6
x2785:	mov ax, [bp + 6]	; 3: -117 70 6
x2788:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; parameter arg_list, offset 8
x2791:	mov ax, [di + 8]	; 3: -117 69 8
x2794:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; call function ellipse-noellipse vprintf
x2797:	mov word [di + 10], printf$7	; 5: -57 69 10 0 11
x2802:	mov [di + 12], bp	; 3: -119 109 12
x2805:	mov [di + 14], di	; 3: -119 125 14
x2808:	add di, 10	; 3: -125 -57 10
x2811:	mov bp, di	; 2: -119 -3
x2813:	nop	; 1: -112
x2814:	jmp vprintf	; 2: -21 11

printf$7:	; post call

printf$8:	; £temporary2384 = return_value

printf$9:	; return_value = £temporary2384

printf$10:	; return
x2816:	mov ax, [bp]	; 3: -117 70 0
x2819:	mov di, [bp + 4]	; 3: -117 126 4
x2822:	mov bp, [bp + 2]	; 3: -117 110 2
x2825:	jmp ax	; 2: -1 -32

printf$11:	; function end printf

vprintf:	; call header integral zero 0 stack zero 0

vprintf$1:	; parameter stdout, offset 6
x2827:	mov ax, [stdout]	; 3: -95 54 11
x2830:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; parameter format, offset 8
x2833:	mov ax, [bp + 6]	; 3: -117 70 6
x2836:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; parameter arg_list, offset 10
x2839:	mov ax, [bp + 8]	; 3: -117 70 8
x2842:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; call function noellipse-noellipse vfprintf
x2845:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 43 11
x2850:	mov [bp + 12], bp	; 3: -119 110 12
x2853:	add bp, 10	; 3: -125 -59 10
x2856:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; post call

vprintf$6:	; £temporary2388 = return_value

vprintf$7:	; return_value = £temporary2388

vprintf$8:	; return
x2859:	mov ax, [bp]	; 3: -117 70 0
x2862:	mov di, [bp + 4]	; 3: -117 126 4
x2865:	mov bp, [bp + 2]	; 3: -117 110 2
x2868:	jmp ax	; 2: -1 -32

vprintf$9:	; function end vprintf

stdout:
x2870:	dw g_fileArray + 29	; 2: 85 11

g_fileArray:
x2872:	dw 1	; 2: 1 0
x2874:	dw 0	; 2: 0 0
x2876:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x2901:	dw 1	; 2: 1 0
x2903:	dw 1	; 2: 1 0
x2905:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x2930:	dw 1	; 2: 1 0
x2932:	dw 2	; 2: 2 0
x2934:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x2959:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

vfprintf:	; g_outStatus = 0
x3452:	mov word [g_outStatus], 0	; 6: -57 6 -83 13 0 0

vfprintf$1:	; £temporary2400 = int_to_int outStream (Pointer -> Pointer)
x3458:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2400
x3461:	mov [g_outDevice], ax	; 3: -93 -81 13

vfprintf$3:	; call header integral zero 0 stack zero 0

vfprintf$4:	; parameter format, offset 6
x3464:	mov ax, [bp + 8]	; 3: -117 70 8
x3467:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; parameter arg_list, offset 8
x3470:	mov ax, [bp + 10]	; 3: -117 70 10
x3473:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; call function noellipse-noellipse printFormat
x3476:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 -94 13
x3481:	mov [bp + 14], bp	; 3: -119 110 14
x3484:	add bp, 12	; 3: -125 -59 12
x3487:	nop	; 1: -112
x3488:	jmp printFormat	; 2: -21 15

vfprintf$7:	; post call

vfprintf$8:	; £temporary2401 = return_value

vfprintf$9:	; return_value = £temporary2401

vfprintf$10:	; return
x3490:	mov ax, [bp]	; 3: -117 70 0
x3493:	mov di, [bp + 4]	; 3: -117 126 4
x3496:	mov bp, [bp + 2]	; 3: -117 110 2
x3499:	jmp ax	; 2: -1 -32

vfprintf$11:	; function end vfprintf

g_outStatus:
x3501:	db 0, 0	; 2: 0 0

g_outDevice:
x3503:	db 0, 0	; 2: 0 0

printFormat:	; width = 0
x3505:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; precision = 0
x3510:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; percent = 0
x3515:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; plus = 0
x3520:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; minus = 0
x3525:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; space = 0
x3530:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; zero = 0
x3535:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; grid = 0
x3540:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; widthStar = 0
x3545:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; period = 0
x3550:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; precisionStar = 0
x3555:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; shortInt = 0
x3560:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; longInt = 0
x3565:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; longDouble = 0
x3570:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; g_outChars = 0
x3575:	mov word [g_outChars], 0	; 6: -57 6 19 19 0 0

printFormat$15:	; index = 0
x3581:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2233 = format + index
x3586:	mov si, [bp + 6]	; 3: -117 118 6
x3589:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2232 -> £temporary2233 = *£temporary2233

printFormat$18:	; if £temporary2232 -> £temporary2233 == 0 goto 286
x3592:	cmp byte [si], 0	; 3: -128 60 0
x3595:	je printFormat$286	; 4: 15 -124 -34 4

printFormat$19:	; £temporary2237 = format + index
x3599:	mov si, [bp + 6]	; 3: -117 118 6
x3602:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2236 -> £temporary2237 = *£temporary2237

printFormat$21:	; c = £temporary2236 -> £temporary2237
x3605:	mov al, [si]	; 2: -118 4
x3607:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 264
x3610:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x3614:	je printFormat$264	; 4: 15 -124 99 4

printFormat$23:	; case c == 43 goto 52
x3618:	mov al, [bp + 40]	; 3: -118 70 40
x3621:	cmp al, 43	; 2: 60 43
x3623:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; case c == 45 goto 54
x3627:	cmp al, 45	; 2: 60 45
x3629:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; case c == 32 goto 56
x3633:	cmp al, 32	; 2: 60 32
x3635:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; case c == 48 goto 58
x3639:	cmp al, 48	; 2: 60 48
x3641:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; case c == 35 goto 60
x3645:	cmp al, 35	; 2: 60 35
x3647:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; case c == 46 goto 62
x3651:	cmp al, 46	; 2: 60 46
x3653:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; case c == 42 goto 64
x3657:	cmp al, 42	; 2: 60 42
x3659:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; case c == 104 goto 69
x3663:	cmp al, 104	; 2: 60 104
x3665:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; case c == 108 goto 71
x3669:	cmp al, 108	; 2: 60 108
x3671:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; case c == 76 goto 73
x3675:	cmp al, 76	; 2: 60 76
x3677:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; case c == 37 goto 75
x3681:	cmp al, 37	; 2: 60 37
x3683:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; case c == 110 goto 75
x3687:	cmp al, 110	; 2: 60 110
x3689:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; case c == 112 goto 75
x3693:	cmp al, 112	; 2: 60 112
x3695:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; case c == 71 goto 75
x3699:	cmp al, 71	; 2: 60 71
x3701:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; case c == 103 goto 75
x3705:	cmp al, 103	; 2: 60 103
x3707:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; case c == 69 goto 75
x3711:	cmp al, 69	; 2: 60 69
x3713:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; case c == 101 goto 75
x3717:	cmp al, 101	; 2: 60 101
x3719:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; case c == 102 goto 75
x3723:	cmp al, 102	; 2: 60 102
x3725:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; case c == 115 goto 75
x3729:	cmp al, 115	; 2: 60 115
x3731:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; case c == 99 goto 75
x3735:	cmp al, 99	; 2: 60 99
x3737:	je printFormat$75	; 2: 116 125

printFormat$43:	; case c == 88 goto 75
x3739:	cmp al, 88	; 2: 60 88
x3741:	je printFormat$75	; 2: 116 121

printFormat$44:	; case c == 120 goto 75
x3743:	cmp al, 120	; 2: 60 120
x3745:	je printFormat$75	; 2: 116 117

printFormat$45:	; case c == 111 goto 75
x3747:	cmp al, 111	; 2: 60 111
x3749:	je printFormat$75	; 2: 116 113

printFormat$46:	; case c == 98 goto 75
x3751:	cmp al, 98	; 2: 60 98
x3753:	je printFormat$75	; 2: 116 109

printFormat$47:	; case c == 117 goto 75
x3755:	cmp al, 117	; 2: 60 117
x3757:	je printFormat$75	; 2: 116 105

printFormat$48:	; case c == 100 goto 75
x3759:	cmp al, 100	; 2: 60 100
x3761:	je printFormat$75	; 2: 116 101

printFormat$49:	; case c == 105 goto 75
x3763:	cmp al, 105	; 2: 60 105
x3765:	je printFormat$75	; 2: 116 97

printFormat$50:	; case end c

printFormat$51:	; goto 241
x3767:	jmp printFormat$241	; 3: -23 88 3

printFormat$52:	; plus = 1
x3770:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 284
x3775:	jmp printFormat$284	; 3: -23 37 4

printFormat$54:	; minus = 1
x3778:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 284
x3783:	jmp printFormat$284	; 3: -23 29 4

printFormat$56:	; space = 1
x3786:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 284
x3791:	jmp printFormat$284	; 3: -23 21 4

printFormat$58:	; zero = 1
x3794:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 284
x3799:	jmp printFormat$284	; 3: -23 13 4

printFormat$60:	; grid = 1
x3802:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 284
x3807:	jmp printFormat$284	; 3: -23 5 4

printFormat$62:	; period = 1
x3810:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 284
x3815:	jmp printFormat$284	; 3: -23 -3 3

printFormat$64:	; if period != 0 goto 67
x3818:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x3822:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x3824:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 284
x3829:	jmp printFormat$284	; 3: -23 -17 3

printFormat$67:	; precision = -1
x3832:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 284
x3837:	jmp printFormat$284	; 3: -23 -25 3

printFormat$69:	; shortInt = 1
x3840:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 284
x3845:	jmp printFormat$284	; 3: -23 -33 3

printFormat$71:	; longInt = 1
x3848:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 284
x3853:	jmp printFormat$284	; 3: -23 -41 3

printFormat$73:	; longDouble = 1
x3856:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 284
x3861:	jmp printFormat$284	; 3: -23 -49 3

printFormat$75:	; if minus == 0 goto 106
x3864:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3868:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x3872:	mov ax, [g_outChars]	; 3: -95 19 19
x3875:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; call header integral zero 0 stack zero 0

printFormat$78:	; £temporary2241 = format + index
x3878:	mov si, [bp + 6]	; 3: -117 118 6
x3881:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2240 -> £temporary2241 = *£temporary2241

printFormat$80:	; £temporary2242 = &£temporary2240 -> £temporary2241

printFormat$81:	; parameter £temporary2242, offset 6
x3884:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; parameter arg_list, offset 8
x3887:	mov ax, [bp + 8]	; 3: -117 70 8
x3890:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; parameter plus, offset 10
x3893:	mov ax, [bp + 18]	; 3: -117 70 18
x3896:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; parameter space, offset 12
x3899:	mov ax, [bp + 22]	; 3: -117 70 22
x3902:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; parameter grid, offset 14
x3905:	mov ax, [bp + 26]	; 3: -117 70 26
x3908:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; £temporary2243 = &width
x3911:	mov si, bp	; 2: -119 -18
x3913:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2243, offset 16
x3916:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; parameter precision, offset 18
x3919:	mov ax, [bp + 14]	; 3: -117 70 14
x3922:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; parameter shortInt, offset 20
x3925:	mov ax, [bp + 34]	; 3: -117 70 34
x3928:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; parameter longInt, offset 22
x3931:	mov ax, [bp + 36]	; 3: -117 70 36
x3934:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; parameter longDouble, offset 24
x3937:	mov ax, [bp + 38]	; 3: -117 70 38
x3940:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; parameter 1, offset 26
x3943:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; parameter 0, offset 28
x3948:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; call function noellipse-noellipse printArgument
x3953:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 127 15
x3958:	mov [bp + 45], bp	; 3: -119 110 45
x3961:	add bp, 43	; 3: -125 -59 43
x3964:	jmp printArgument	; 3: -23 -104 3

printFormat$95:	; post call

printFormat$96:	; £temporary2244 = return_value

printFormat$97:	; arg_list = £temporary2244
x3967:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2246 = g_outChars - startChars
x3970:	mov ax, [g_outChars]	; 3: -95 19 19
x3973:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x3976:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2246 >= width goto 239
x3979:	cmp ax, [bp + 12]	; 3: 59 70 12
x3982:	jge printFormat$239	; 4: 15 -115 120 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x3986:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x3990:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 -92 15
x3995:	mov [bp + 47], bp	; 3: -119 110 47
x3998:	add bp, 45	; 3: -125 -59 45
x4001:	jmp printChar	; 3: -23 -122 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x4004:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 186
x4006:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x4010:	je printFormat$186	; 4: 15 -124 100 1

printFormat$107:	; startChars = g_outChars
x4014:	mov ax, [g_outChars]	; 3: -95 19 19
x4017:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$108:	; oldOutStatus = g_outStatus
x4020:	mov ax, [g_outStatus]	; 3: -95 -83 13
x4023:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$109:	; negative = 0
x4026:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$110:	; g_outStatus = 2
x4031:	mov word [g_outStatus], 2	; 6: -57 6 -83 13 2 0

printFormat$111:	; call header integral zero 0 stack zero 0

printFormat$112:	; £temporary2250 = format + index
x4037:	mov si, [bp + 6]	; 3: -117 118 6
x4040:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2249 -> £temporary2250 = *£temporary2250

printFormat$114:	; £temporary2251 = &£temporary2249 -> £temporary2250

printFormat$115:	; parameter £temporary2251, offset 6
x4043:	mov [bp + 53], si	; 3: -119 118 53

printFormat$116:	; parameter arg_list, offset 8
x4046:	mov ax, [bp + 8]	; 3: -117 70 8
x4049:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$117:	; parameter 0, offset 10
x4052:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$118:	; parameter 0, offset 12
x4057:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$119:	; parameter grid, offset 14
x4062:	mov ax, [bp + 26]	; 3: -117 70 26
x4065:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$120:	; £temporary2252 = &width
x4068:	mov si, bp	; 2: -119 -18
x4070:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2252, offset 16
x4073:	mov [bp + 63], si	; 3: -119 118 63

printFormat$122:	; parameter precision, offset 18
x4076:	mov ax, [bp + 14]	; 3: -117 70 14
x4079:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$123:	; parameter shortInt, offset 20
x4082:	mov ax, [bp + 34]	; 3: -117 70 34
x4085:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$124:	; parameter longInt, offset 22
x4088:	mov ax, [bp + 36]	; 3: -117 70 36
x4091:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$125:	; parameter longDouble, offset 24
x4094:	mov ax, [bp + 38]	; 3: -117 70 38
x4097:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$126:	; parameter 0, offset 26
x4100:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$127:	; £temporary2253 = &negative
x4105:	mov si, bp	; 2: -119 -18
x4107:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2253, offset 28
x4110:	mov [bp + 75], si	; 3: -119 118 75

printFormat$129:	; call function noellipse-noellipse printArgument
x4113:	mov word [bp + 47], printFormat$130	; 5: -57 70 47 31 16
x4118:	mov [bp + 49], bp	; 3: -119 110 49
x4121:	add bp, 47	; 3: -125 -59 47
x4124:	jmp printArgument	; 3: -23 -8 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x4127:	mov ax, [bp + 43]	; 3: -117 70 43
x4130:	mov [g_outStatus], ax	; 3: -93 -83 13

printFormat$132:	; field = g_outChars - startChars
x4133:	mov ax, [g_outChars]	; 3: -95 19 19
x4136:	sub ax, [bp + 41]	; 3: 43 70 41
x4139:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x4142:	mov ax, [bp + 41]	; 3: -117 70 41
x4145:	mov [g_outChars], ax	; 3: -93 19 19

printFormat$134:	; if negative == 0 goto 145
x4148:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x4152:	je printFormat$145	; 2: 116 41

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 88, offset 6
x4154:	mov byte [bp + 55], 88	; 4: -58 70 55 88

printFormat$137:	; call function noellipse-noellipse printChar
x4158:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 76 16
x4163:	mov [bp + 51], bp	; 3: -119 110 51
x4166:	add bp, 49	; 3: -125 -59 49
x4169:	jmp printChar	; 3: -23 -34 9

printFormat$138:	; post call

printFormat$139:	; call header integral zero 0 stack zero 0

printFormat$140:	; parameter 45, offset 6
x4172:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$141:	; call function noellipse-noellipse printChar
x4176:	mov word [bp + 49], printFormat$142	; 5: -57 70 49 94 16
x4181:	mov [bp + 51], bp	; 3: -119 110 51
x4184:	add bp, 49	; 3: -125 -59 49
x4187:	jmp printChar	; 3: -23 -52 9

printFormat$142:	; post call

printFormat$143:	; ++field
x4190:	inc word [bp + 47]	; 3: -1 70 47

printFormat$144:	; goto 158
x4193:	jmp printFormat$158	; 2: -21 57

printFormat$145:	; if plus == 0 goto 152
x4195:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x4199:	je printFormat$152	; 2: 116 23

printFormat$146:	; call header integral zero 0 stack zero 0

printFormat$147:	; parameter 43, offset 6
x4201:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$148:	; call function noellipse-noellipse printChar
x4205:	mov word [bp + 49], printFormat$149	; 5: -57 70 49 123 16
x4210:	mov [bp + 51], bp	; 3: -119 110 51
x4213:	add bp, 49	; 3: -125 -59 49
x4216:	jmp printChar	; 3: -23 -81 9

printFormat$149:	; post call

printFormat$150:	; ++field
x4219:	inc word [bp + 47]	; 3: -1 70 47

printFormat$151:	; goto 158
x4222:	jmp printFormat$158	; 2: -21 28

printFormat$152:	; if space == 0 goto 158
x4224:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x4228:	je printFormat$158	; 2: 116 22

printFormat$153:	; call header integral zero 0 stack zero 0

printFormat$154:	; parameter 32, offset 6
x4230:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$155:	; call function noellipse-noellipse printChar
x4234:	mov word [bp + 49], printFormat$156	; 5: -57 70 49 -104 16
x4239:	mov [bp + 51], bp	; 3: -119 110 51
x4242:	add bp, 49	; 3: -125 -59 49
x4245:	jmp printChar	; 3: -23 -110 9

printFormat$156:	; post call

printFormat$157:	; £temporary2266 = field + 1
x4248:	mov ax, [bp + 47]	; 3: -117 70 47
x4251:	inc ax	; 1: 64

printFormat$158:	; ++field
x4252:	inc word [bp + 47]	; 3: -1 70 47

printFormat$159:	; if £temporary2266 >= width goto 165
x4255:	cmp ax, [bp + 12]	; 3: 59 70 12
x4258:	jge printFormat$165	; 2: 125 20

printFormat$160:	; call header integral zero 0 stack zero 0

printFormat$161:	; parameter 48, offset 6
x4260:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$162:	; call function noellipse-noellipse printChar
x4264:	mov word [bp + 49], printFormat$163	; 5: -57 70 49 -74 16
x4269:	mov [bp + 51], bp	; 3: -119 110 51
x4272:	add bp, 49	; 3: -125 -59 49
x4275:	jmp printChar	; 3: -23 116 9

printFormat$163:	; post call

printFormat$164:	; goto 158
x4278:	jmp printFormat$158	; 2: -21 -28

printFormat$165:	; call header integral zero 0 stack zero 0

printFormat$166:	; £temporary2270 = format + index
x4280:	mov si, [bp + 6]	; 3: -117 118 6
x4283:	add si, [bp + 10]	; 3: 3 118 10

printFormat$167:	; £temporary2269 -> £temporary2270 = *£temporary2270

printFormat$168:	; £temporary2271 = &£temporary2269 -> £temporary2270

printFormat$169:	; parameter £temporary2271, offset 6
x4286:	mov [bp + 55], si	; 3: -119 118 55

printFormat$170:	; parameter arg_list, offset 8
x4289:	mov ax, [bp + 8]	; 3: -117 70 8
x4292:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$171:	; parameter 0, offset 10
x4295:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$172:	; parameter 0, offset 12
x4300:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$173:	; parameter grid, offset 14
x4305:	mov ax, [bp + 26]	; 3: -117 70 26
x4308:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$174:	; parameter 0, offset 16
x4311:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$175:	; parameter precision, offset 18
x4316:	mov ax, [bp + 14]	; 3: -117 70 14
x4319:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$176:	; parameter shortInt, offset 20
x4322:	mov ax, [bp + 34]	; 3: -117 70 34
x4325:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$177:	; parameter longInt, offset 22
x4328:	mov ax, [bp + 36]	; 3: -117 70 36
x4331:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$178:	; parameter longDouble, offset 24
x4334:	mov ax, [bp + 38]	; 3: -117 70 38
x4337:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$179:	; parameter 0, offset 26
x4340:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$180:	; parameter 0, offset 28
x4345:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$181:	; call function noellipse-noellipse printArgument
x4350:	mov word [bp + 49], printFormat$182	; 5: -57 70 49 12 17
x4355:	mov [bp + 51], bp	; 3: -119 110 51
x4358:	add bp, 49	; 3: -125 -59 49
x4361:	jmp printArgument	; 3: -23 11 2

printFormat$182:	; post call

printFormat$183:	; £temporary2272 = return_value

printFormat$184:	; arg_list = £temporary2272
x4364:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$185:	; goto 239
x4367:	jmp printFormat$239	; 3: -23 -8 0

printFormat$186:	; startChars = g_outChars
x4370:	mov ax, [g_outChars]	; 3: -95 19 19
x4373:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$187:	; oldOutStatus = g_outStatus
x4376:	mov ax, [g_outStatus]	; 3: -95 -83 13
x4379:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$188:	; g_outStatus = 2
x4382:	mov word [g_outStatus], 2	; 6: -57 6 -83 13 2 0

printFormat$189:	; call header integral zero 0 stack zero 0

printFormat$190:	; £temporary2274 = format + index
x4388:	mov si, [bp + 6]	; 3: -117 118 6
x4391:	add si, [bp + 10]	; 3: 3 118 10

printFormat$191:	; £temporary2273 -> £temporary2274 = *£temporary2274

printFormat$192:	; £temporary2275 = &£temporary2273 -> £temporary2274

printFormat$193:	; parameter £temporary2275, offset 6
x4394:	mov [bp + 51], si	; 3: -119 118 51

printFormat$194:	; parameter arg_list, offset 8
x4397:	mov ax, [bp + 8]	; 3: -117 70 8
x4400:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$195:	; parameter plus, offset 10
x4403:	mov ax, [bp + 18]	; 3: -117 70 18
x4406:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$196:	; parameter space, offset 12
x4409:	mov ax, [bp + 22]	; 3: -117 70 22
x4412:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$197:	; parameter grid, offset 14
x4415:	mov ax, [bp + 26]	; 3: -117 70 26
x4418:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$198:	; £temporary2276 = &width
x4421:	mov si, bp	; 2: -119 -18
x4423:	add si, 12	; 3: -125 -58 12

printFormat$199:	; parameter £temporary2276, offset 16
x4426:	mov [bp + 61], si	; 3: -119 118 61

printFormat$200:	; parameter precision, offset 18
x4429:	mov ax, [bp + 14]	; 3: -117 70 14
x4432:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$201:	; parameter shortInt, offset 20
x4435:	mov ax, [bp + 34]	; 3: -117 70 34
x4438:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$202:	; parameter longInt, offset 22
x4441:	mov ax, [bp + 36]	; 3: -117 70 36
x4444:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$203:	; parameter longDouble, offset 24
x4447:	mov ax, [bp + 38]	; 3: -117 70 38
x4450:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$204:	; parameter 1, offset 26
x4453:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$205:	; parameter 0, offset 28
x4458:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$206:	; call function noellipse-noellipse printArgument
x4463:	mov word [bp + 45], printFormat$207	; 5: -57 70 45 125 17
x4468:	mov [bp + 47], bp	; 3: -119 110 47
x4471:	add bp, 45	; 3: -125 -59 45
x4474:	jmp printArgument	; 3: -23 -102 1

printFormat$207:	; post call

printFormat$208:	; g_outStatus = oldOutStatus
x4477:	mov ax, [bp + 43]	; 3: -117 70 43
x4480:	mov [g_outStatus], ax	; 3: -93 -83 13

printFormat$209:	; field = g_outChars - startChars
x4483:	mov ax, [g_outChars]	; 3: -95 19 19
x4486:	sub ax, [bp + 41]	; 3: 43 70 41
x4489:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$210:	; g_outChars = startChars
x4492:	mov ax, [bp + 41]	; 3: -117 70 41
x4495:	mov [g_outChars], ax	; 3: -93 19 19

printFormat$211:	; £temporary2279 = field
x4498:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$212:	; ++field
x4501:	inc word [bp + 45]	; 3: -1 70 45

printFormat$213:	; if £temporary2279 >= width goto 219
x4504:	cmp ax, [bp + 12]	; 3: 59 70 12
x4507:	jge printFormat$219	; 2: 125 20

printFormat$214:	; call header integral zero 0 stack zero 0

printFormat$215:	; parameter 32, offset 6
x4509:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$216:	; call function noellipse-noellipse printChar
x4513:	mov word [bp + 47], printFormat$217	; 5: -57 70 47 -81 17
x4518:	mov [bp + 49], bp	; 3: -119 110 49
x4521:	add bp, 47	; 3: -125 -59 47
x4524:	jmp printChar	; 3: -23 123 8

printFormat$217:	; post call

printFormat$218:	; goto 211
x4527:	jmp printFormat$211	; 2: -21 -31

printFormat$219:	; call header integral zero 0 stack zero 0

printFormat$220:	; £temporary2283 = format + index
x4529:	mov si, [bp + 6]	; 3: -117 118 6
x4532:	add si, [bp + 10]	; 3: 3 118 10

printFormat$221:	; £temporary2282 -> £temporary2283 = *£temporary2283

printFormat$222:	; £temporary2284 = &£temporary2282 -> £temporary2283

printFormat$223:	; parameter £temporary2284, offset 6
x4535:	mov [bp + 53], si	; 3: -119 118 53

printFormat$224:	; parameter arg_list, offset 8
x4538:	mov ax, [bp + 8]	; 3: -117 70 8
x4541:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$225:	; parameter plus, offset 10
x4544:	mov ax, [bp + 18]	; 3: -117 70 18
x4547:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$226:	; parameter space, offset 12
x4550:	mov ax, [bp + 22]	; 3: -117 70 22
x4553:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$227:	; parameter grid, offset 14
x4556:	mov ax, [bp + 26]	; 3: -117 70 26
x4559:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$228:	; parameter 0, offset 16
x4562:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$229:	; parameter precision, offset 18
x4567:	mov ax, [bp + 14]	; 3: -117 70 14
x4570:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$230:	; parameter shortInt, offset 20
x4573:	mov ax, [bp + 34]	; 3: -117 70 34
x4576:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$231:	; parameter longInt, offset 22
x4579:	mov ax, [bp + 36]	; 3: -117 70 36
x4582:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$232:	; parameter longDouble, offset 24
x4585:	mov ax, [bp + 38]	; 3: -117 70 38
x4588:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$233:	; parameter 1, offset 26
x4591:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$234:	; parameter 0, offset 28
x4596:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$235:	; call function noellipse-noellipse printArgument
x4601:	mov word [bp + 47], printFormat$236	; 5: -57 70 47 7 18
x4606:	mov [bp + 49], bp	; 3: -119 110 49
x4609:	add bp, 47	; 3: -125 -59 47
x4612:	jmp printArgument	; 3: -23 16 1

printFormat$236:	; post call

printFormat$237:	; £temporary2285 = return_value

printFormat$238:	; arg_list = £temporary2285
x4615:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$239:	; percent = 0
x4618:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$240:	; goto 284
x4623:	jmp printFormat$284	; 3: -23 -43 0

printFormat$241:	; value = 0
x4626:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$242:	; call header integral zero 0 stack zero 0

printFormat$243:	; £temporary2288 = int_to_int c (Signed_Char -> Signed_Int)
x4631:	mov al, [bp + 40]	; 3: -118 70 40
x4634:	and ax, 255	; 3: 37 -1 0
x4637:	cmp al, 0	; 2: 60 0
x4639:	jge printFormat$244	; 2: 125 4
x4641:	neg al	; 2: -10 -40
x4643:	neg ax	; 2: -9 -40

printFormat$244:	; parameter £temporary2288, offset 6
x4645:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$245:	; call function noellipse-noellipse isdigit
x4648:	mov word [bp + 43], printFormat$246	; 5: -57 70 43 54 18
x4653:	mov [bp + 45], bp	; 3: -119 110 45
x4656:	add bp, 43	; 3: -125 -59 43
x4659:	jmp isdigit	; 3: -23 -50 22

printFormat$246:	; post call

printFormat$247:	; £temporary2289 = return_value

printFormat$248:	; if £temporary2289 == 0 goto 258
x4662:	cmp bx, 0	; 3: -125 -5 0
x4665:	je printFormat$258	; 2: 116 49

printFormat$249:	; £temporary2290 = value * 10
x4667:	mov ax, [bp + 41]	; 3: -117 70 41
x4670:	xor dx, dx	; 2: 49 -46
x4672:	imul word [int2$10#]	; 4: -9 46 21 19

printFormat$250:	; £temporary2291 = c - 48
x4676:	mov bl, [bp + 40]	; 3: -118 94 40
x4679:	sub bl, 48	; 3: -128 -21 48

printFormat$251:	; £temporary2292 = int_to_int £temporary2291 (Signed_Char -> Signed_Int)
x4682:	and bx, 255	; 4: -127 -29 -1 0
x4686:	cmp bl, 0	; 3: -128 -5 0
x4689:	jge printFormat$252	; 2: 125 4
x4691:	neg bl	; 2: -10 -37
x4693:	neg bx	; 2: -9 -37

printFormat$252:	; value = £temporary2290 + £temporary2292
x4695:	add ax, bx	; 2: 1 -40
x4697:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$253:	; £temporary2294 = index + 1
x4700:	mov ax, [bp + 10]	; 3: -117 70 10
x4703:	inc ax	; 1: 64

printFormat$254:	; £temporary2296 = format + £temporary2294
x4704:	mov si, [bp + 6]	; 3: -117 118 6
x4707:	add si, ax	; 2: 1 -58

printFormat$255:	; £temporary2295 -> £temporary2296 = *£temporary2296

printFormat$256:	; c = £temporary2295 -> £temporary2296
x4709:	mov al, [si]	; 2: -118 4
x4711:	mov [bp + 40], al	; 3: -120 70 40

printFormat$257:	; goto 242
x4714:	jmp printFormat$242	; 2: -21 -85

printFormat$258:	; --index
x4716:	dec word [bp + 10]	; 3: -1 78 10

printFormat$259:	; if period != 0 goto 262
x4719:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x4723:	jne printFormat$262	; 2: 117 8

printFormat$260:	; width = value
x4725:	mov ax, [bp + 41]	; 3: -117 70 41
x4728:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$261:	; goto 284
x4731:	jmp printFormat$284	; 2: -21 106

printFormat$262:	; precision = value
x4733:	mov ax, [bp + 41]	; 3: -117 70 41
x4736:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$263:	; goto 284
x4739:	jmp printFormat$284	; 2: -21 98

printFormat$264:	; if c != 37 goto 280
x4741:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x4745:	jne printFormat$280	; 2: 117 72

printFormat$265:	; percent = 1
x4747:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$266:	; plus = 0
x4752:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$267:	; minus = 0
x4757:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$268:	; space = 0
x4762:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$269:	; zero = 0
x4767:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$270:	; grid = 0
x4772:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$271:	; widthStar = 0
x4777:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$272:	; period = 0
x4782:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$273:	; precisionStar = 0
x4787:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$274:	; shortInt = 0
x4792:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$275:	; longInt = 0
x4797:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$276:	; longDouble = 0
x4802:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$277:	; width = 0
x4807:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$278:	; precision = 0
x4812:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$279:	; goto 284
x4817:	jmp printFormat$284	; 2: -21 20

printFormat$280:	; call header integral zero 0 stack zero 0

printFormat$281:	; parameter c, offset 6
x4819:	mov al, [bp + 40]	; 3: -118 70 40
x4822:	mov [bp + 47], al	; 3: -120 70 47

printFormat$282:	; call function noellipse-noellipse printChar
x4825:	mov word [bp + 41], printFormat$283	; 5: -57 70 41 -25 18
x4830:	mov [bp + 43], bp	; 3: -119 110 43
x4833:	add bp, 41	; 3: -125 -59 41
x4836:	jmp printChar	; 3: -23 67 7

printFormat$283:	; post call

printFormat$284:	; ++index
x4839:	inc word [bp + 10]	; 3: -1 70 10

printFormat$285:	; goto 16
x4842:	jmp printFormat$16	; 3: -23 21 -5

printFormat$286:	; if g_outStatus != 1 goto 292
x4845:	cmp word [g_outStatus], 1	; 5: -125 62 -83 13 1
x4850:	jne printFormat$292	; 2: 117 16

printFormat$287:	; £temporary2305 = int_to_int g_outDevice (Pointer -> Pointer)
x4852:	mov ax, [g_outDevice]	; 3: -95 -81 13

printFormat$288:	; outString = £temporary2305
x4855:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$289:	; £temporary2307 = outString + g_outChars
x4858:	mov si, [bp + 40]	; 3: -117 118 40
x4861:	add si, [g_outChars]	; 4: 3 54 19 19

printFormat$290:	; £temporary2306 -> £temporary2307 = *£temporary2307

printFormat$291:	; £temporary2306 -> £temporary2307 = 0
x4865:	mov byte [si], 0	; 3: -58 4 0

printFormat$292:	; return_value = g_outChars
x4868:	mov bx, [g_outChars]	; 4: -117 30 19 19

printFormat$293:	; return
x4872:	mov ax, [bp]	; 3: -117 70 0
x4875:	mov di, [bp + 4]	; 3: -117 126 4
x4878:	mov bp, [bp + 2]	; 3: -117 110 2
x4881:	jmp ax	; 2: -1 -32

printFormat$294:	; function end printFormat

g_outChars:
x4883:	db 0, 0	; 2: 0 0

int2$10#:
x4885:	dw 10	; 2: 10 0

printArgument:	; £temporary2006 -> format = *format
x4887:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary2006 -> format
x4890:	mov al, [si]	; 2: -118 4
x4892:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x4895:	mov al, [bp + 30]	; 3: -118 70 30
x4898:	cmp al, 100	; 2: 60 100
x4900:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x4902:	cmp al, 105	; 2: 60 105
x4904:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x4906:	cmp al, 99	; 2: 60 99
x4908:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x4912:	cmp al, 115	; 2: 60 115
x4914:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x4918:	cmp al, 88	; 2: 60 88
x4920:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x4924:	cmp al, 120	; 2: 60 120
x4926:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x4930:	cmp al, 98	; 2: 60 98
x4932:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x4936:	cmp al, 111	; 2: 60 111
x4938:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x4942:	cmp al, 117	; 2: 60 117
x4944:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x4948:	cmp al, 71	; 2: 60 71
x4950:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x4954:	cmp al, 103	; 2: 60 103
x4956:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x4960:	cmp al, 69	; 2: 60 69
x4962:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x4966:	cmp al, 101	; 2: 60 101
x4968:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x4972:	cmp al, 102	; 2: 60 102
x4974:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x4978:	cmp al, 112	; 2: 60 112
x4980:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x4984:	cmp al, 110	; 2: 60 110
x4986:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x4990:	cmp al, 37	; 2: 60 37
x4992:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x4996:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x4999:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x5003:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x5005:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary2008 = arg_list - 2
x5009:	mov si, [bp + 8]	; 3: -117 118 8
x5012:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary2009 = int_to_int £temporary2008 (Signed_Int -> Pointer)

printArgument$25:	; £temporary2010 -> £temporary2009 = *£temporary2009

printArgument$26:	; £temporary2011 = int_to_int £temporary2010 -> £temporary2009 (Signed_Int -> Signed_Short_Int)
x5015:	mov ax, [si]	; 2: -117 4
x5017:	cmp ax, 0	; 3: -125 -8 0
x5020:	jge printArgument$27	; 2: 125 4
x5022:	neg ax	; 2: -9 -40
x5024:	neg al	; 2: -10 -40

printArgument$27:	; £temporary2012 = int_to_int £temporary2011 (Signed_Short_Int -> Signed_Long_Int)
x5026:	and eax, 255	; 6: 102 37 -1 0 0 0
x5032:	cmp al, 0	; 2: 60 0
x5034:	jge printArgument$28	; 2: 125 5
x5036:	neg al	; 2: -10 -40
x5038:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary2012
x5041:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x5045:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x5047:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x5051:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x5053:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary2014 = arg_list - 4
x5057:	mov si, [bp + 8]	; 3: -117 118 8
x5060:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary2015 = int_to_int £temporary2014 (Signed_Int -> Pointer)

printArgument$34:	; £temporary2016 -> £temporary2015 = *£temporary2015

printArgument$35:	; longValue = £temporary2016 -> £temporary2015
x5063:	mov eax, [si]	; 3: 102 -117 4
x5066:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x5070:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x5072:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary2018 = arg_list - 2
x5076:	mov si, [bp + 8]	; 3: -117 118 8
x5079:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary2019 = int_to_int £temporary2018 (Signed_Int -> Pointer)

printArgument$40:	; £temporary2020 -> £temporary2019 = *£temporary2019

printArgument$41:	; £temporary2021 = int_to_int £temporary2020 -> £temporary2019 (Signed_Int -> Signed_Long_Int)
x5082:	mov ax, [si]	; 2: -117 4
x5084:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x5090:	cmp ax, 0	; 3: -125 -8 0
x5093:	jge printArgument$42	; 2: 125 5
x5095:	neg ax	; 2: -9 -40
x5097:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary2021
x5100:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x5104:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x5108:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary2025 -> negativePtr = *negativePtr
x5110:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x5113:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x5118:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary2027 = 1
x5120:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x5123:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary2027 = 0
x5125:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary2025 -> negativePtr = £temporary2027
x5128:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x5130:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x5134:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x5136:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x5140:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x5144:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 38 20
x5149:	mov [bp + 50], bp	; 3: -119 110 50
x5152:	add bp, 48	; 3: -125 -59 48
x5155:	jmp labs	; 3: -23 5 5

printArgument$54:	; post call

printArgument$55:	; £temporary2030 = return_value

printArgument$56:	; longValue = £temporary2030
x5158:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x5162:	mov ax, [bp + 8]	; 3: -117 70 8
x5165:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x5168:	mov ax, [bp + 16]	; 3: -117 70 16
x5171:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary2031 = &precision
x5174:	mov si, bp	; 2: -119 -18
x5176:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary2031, offset 10
x5179:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x5182:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 76 20
x5187:	mov [bp + 50], bp	; 3: -119 110 50
x5190:	add bp, 48	; 3: -125 -59 48
x5193:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; post call

printArgument$64:	; £temporary2032 = return_value

printArgument$65:	; arg_list = £temporary2032
x5196:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x5199:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x5203:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x5207:	mov ax, [bp + 10]	; 3: -117 70 10
x5210:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x5213:	mov ax, [bp + 12]	; 3: -117 70 12
x5216:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x5219:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 113 20
x5224:	mov [bp + 50], bp	; 3: -119 110 50
x5227:	add bp, 48	; 3: -125 -59 48
x5230:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x5233:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x5236:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary2035 = arg_list - 2
x5240:	mov si, [bp + 8]	; 3: -117 118 8
x5243:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary2036 = int_to_int £temporary2035 (Signed_Int -> Pointer)

printArgument$76:	; £temporary2037 -> £temporary2036 = *£temporary2036

printArgument$77:	; £temporary2038 = int_to_int £temporary2037 -> £temporary2036 (Signed_Int -> Signed_Char)
x5246:	mov ax, [si]	; 2: -117 4
x5248:	cmp ax, 0	; 3: -125 -8 0
x5251:	jge printArgument$78	; 2: 125 4
x5253:	neg ax	; 2: -9 -40
x5255:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary2038
x5257:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x5260:	mov ax, [bp + 8]	; 3: -117 70 8
x5263:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x5266:	mov ax, [bp + 16]	; 3: -117 70 16
x5269:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary2039 = &precision
x5272:	mov si, bp	; 2: -119 -18
x5274:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary2039, offset 10
x5277:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x5280:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 -82 20
x5285:	mov [bp + 46], bp	; 3: -119 110 46
x5288:	add bp, 44	; 3: -125 -59 44
x5291:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; post call

printArgument$86:	; £temporary2040 = return_value

printArgument$87:	; arg_list = £temporary2040
x5294:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x5297:	mov al, [bp + 31]	; 3: -118 70 31
x5300:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x5303:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 -59 20
x5308:	mov [bp + 46], bp	; 3: -119 110 46
x5311:	add bp, 44	; 3: -125 -59 44
x5314:	jmp printChar	; 3: -23 101 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x5317:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x5320:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2043 = arg_list - 2
x5324:	mov si, [bp + 8]	; 3: -117 118 8
x5327:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2044 = int_to_int £temporary2043 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2045 -> £temporary2044 = *£temporary2044

printArgument$97:	; stringValue = £temporary2045 -> £temporary2044
x5330:	mov ax, [si]	; 2: -117 4
x5332:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x5335:	mov ax, [bp + 8]	; 3: -117 70 8
x5338:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x5341:	mov ax, [bp + 16]	; 3: -117 70 16
x5344:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2046 = &precision
x5347:	mov si, bp	; 2: -119 -18
x5349:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2046, offset 10
x5352:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x5355:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 -7 20
x5360:	mov [bp + 48], bp	; 3: -119 110 48
x5363:	add bp, 46	; 3: -125 -59 46
x5366:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; post call

printArgument$105:	; £temporary2047 = return_value

printArgument$106:	; arg_list = £temporary2047
x5369:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x5372:	mov ax, [bp + 44]	; 3: -117 70 44
x5375:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x5378:	mov ax, [bp + 18]	; 3: -117 70 18
x5381:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x5384:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 22 21
x5389:	mov [bp + 48], bp	; 3: -119 110 48
x5392:	add bp, 46	; 3: -125 -59 46
x5395:	jmp printString	; 3: -23 -36 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x5398:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x5401:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x5405:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2063 = 10
x5407:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x5413:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x5415:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x5419:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2059 = 8
x5421:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x5427:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x5429:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x5433:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2055 = 2
x5435:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x5441:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2055 = 16
x5443:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2059 = £temporary2055

printArgument$124:	; £temporary2063 = £temporary2059

printArgument$125:	; base = £temporary2063
x5449:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x5453:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x5457:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x5459:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2065 = arg_list - 2
x5463:	mov si, [bp + 8]	; 3: -117 118 8
x5466:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2066 = int_to_int £temporary2065 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2067 -> £temporary2066 = *£temporary2066

printArgument$131:	; £temporary2068 = int_to_int £temporary2067 -> £temporary2066 (Unsigned_Int -> Unsigned_Short_Int)
x5469:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2069 = int_to_int £temporary2068 (Unsigned_Short_Int -> Unsigned_Long_Int)
x5471:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2069
x5477:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x5481:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x5483:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x5487:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x5489:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2071 = arg_list - 4
x5493:	mov si, [bp + 8]	; 3: -117 118 8
x5496:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2072 = int_to_int £temporary2071 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2073 -> £temporary2072 = *£temporary2072

printArgument$140:	; value = £temporary2073 -> £temporary2072
x5499:	mov eax, [si]	; 3: 102 -117 4
x5502:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x5506:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x5508:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2075 = arg_list - 2
x5512:	mov si, [bp + 8]	; 3: -117 118 8
x5515:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2076 = int_to_int £temporary2075 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2077 -> £temporary2076 = *£temporary2076

printArgument$146:	; £temporary2078 = int_to_int £temporary2077 -> £temporary2076 (Unsigned_Int -> Unsigned_Long_Int)
x5518:	mov ax, [si]	; 2: -117 4
x5520:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2078
x5526:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x5530:	mov ax, [bp + 8]	; 3: -117 70 8
x5533:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x5536:	mov ax, [bp + 16]	; 3: -117 70 16
x5539:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2081 = &precision
x5542:	mov si, bp	; 2: -119 -18
x5544:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2081, offset 10
x5547:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x5550:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 -68 21
x5555:	mov [bp + 54], bp	; 3: -119 110 54
x5558:	add bp, 52	; 3: -125 -59 52
x5561:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; post call

printArgument$155:	; £temporary2082 = return_value

printArgument$156:	; arg_list = £temporary2082
x5564:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x5567:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x5571:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x5575:	mov ax, [bp + 10]	; 3: -117 70 10
x5578:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x5581:	mov ax, [bp + 12]	; 3: -117 70 12
x5584:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x5587:	mov ax, [bp + 14]	; 3: -117 70 14
x5590:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x5593:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x5597:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2083 = int_to_int c (Signed_Char -> Signed_Int)
x5601:	mov al, [bp + 30]	; 3: -118 70 30
x5604:	and ax, 255	; 3: 37 -1 0
x5607:	cmp al, 0	; 2: 60 0
x5609:	jge printArgument$165	; 2: 125 4
x5611:	neg al	; 2: -10 -40
x5613:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2083, offset 26
x5615:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x5618:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 0 22
x5623:	mov [bp + 74], bp	; 3: -119 110 74
x5626:	add bp, 72	; 3: -125 -59 72
x5629:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; post call

printArgument$168:	; £temporary2084 = return_value

printArgument$169:	; parameter £temporary2084, offset 20
x5632:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x5635:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 17 22
x5640:	mov [bp + 54], bp	; 3: -119 110 54
x5643:	add bp, 52	; 3: -125 -59 52
x5646:	jmp printUnsignedLong	; 3: -23 -78 9

printArgument$171:	; post call

printArgument$172:	; goto 359
x5649:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x5652:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x5656:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x5658:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2087 = arg_list - 8
x5662:	mov si, [bp + 8]	; 3: -117 118 8
x5665:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2088 = int_to_int £temporary2087 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2089 -> £temporary2088 = *£temporary2088

printArgument$178:	; push float £temporary2089 -> £temporary2088
x5668:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x5670:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x5673:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x5676:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x5679:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x5684:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x5689:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x5694:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x5699:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 81 22
x5704:	mov [bp + 46], bp	; 3: -119 110 46
x5707:	add bp, 44	; 3: -125 -59 44
x5710:	jmp printLongDoublePlain	; 3: -23 29 11

printArgument$188:	; post call

printArgument$189:	; goto 196
x5713:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x5715:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2092 = arg_list - 8
x5719:	mov si, [bp + 8]	; 3: -117 118 8
x5722:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2093 = int_to_int £temporary2092 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2094 -> £temporary2093 = *£temporary2093

printArgument$194:	; push float £temporary2094 -> £temporary2093
x5725:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x5727:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x5730:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x5734:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2098 -> negativePtr = *negativePtr
x5736:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x5739:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x5742:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x5744:	fcompp	; 2: -34 -39
x5746:	fstsw ax	; 3: -101 -33 -32
x5749:	sahf	; 1: -98
x5750:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2100 = 1
x5752:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x5755:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2100 = 0
x5757:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2098 -> negativePtr = £temporary2100
x5760:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x5762:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x5766:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x5768:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x5771:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x5774:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 -100 22
x5779:	mov [bp + 46], bp	; 3: -119 110 46
x5782:	add bp, 44	; 3: -125 -59 44
x5785:	jmp fabs	; 3: -23 22 12

printArgument$210:	; post call

printArgument$211:	; £temporary2103 = return_value

printArgument$212:	; pop float longDoubleValue
x5788:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x5791:	mov ax, [bp + 8]	; 3: -117 70 8
x5794:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x5797:	mov ax, [bp + 16]	; 3: -117 70 16
x5800:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2104 = &precision
x5803:	mov si, bp	; 2: -119 -18
x5805:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2104, offset 10
x5808:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x5811:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 -63 22
x5816:	mov [bp + 46], bp	; 3: -119 110 46
x5819:	add bp, 44	; 3: -125 -59 44
x5822:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; post call

printArgument$220:	; £temporary2105 = return_value

printArgument$221:	; arg_list = £temporary2105
x5825:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x5828:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x5832:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x5834:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x5837:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x5840:	mov ax, [bp + 10]	; 3: -117 70 10
x5843:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x5846:	mov ax, [bp + 12]	; 3: -117 70 12
x5849:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x5852:	mov ax, [bp + 14]	; 3: -117 70 14
x5855:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x5858:	mov ax, [bp + 18]	; 3: -117 70 18
x5861:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x5864:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 -10 22
x5869:	mov [bp + 46], bp	; 3: -119 110 46
x5872:	add bp, 44	; 3: -125 -59 44
x5875:	jmp printLongDoublePlain	; 3: -23 120 10

printArgument$231:	; post call

printArgument$232:	; goto 359
x5878:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2108 = int_to_int c (Signed_Char -> Signed_Int)
x5881:	mov al, [bp + 30]	; 3: -118 70 30
x5884:	and ax, 255	; 3: 37 -1 0
x5887:	cmp al, 0	; 2: 60 0
x5889:	jge printArgument$235	; 2: 125 4
x5891:	neg al	; 2: -10 -40
x5893:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2108, offset 6
x5895:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x5898:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 24 23
x5903:	mov [bp + 46], bp	; 3: -119 110 46
x5906:	add bp, 44	; 3: -125 -59 44
x5909:	jmp tolower	; 3: -23 -68 11

printArgument$237:	; post call

printArgument$238:	; £temporary2109 = return_value

printArgument$239:	; if £temporary2109 != 101 goto 257
x5912:	cmp bx, 101	; 3: -125 -5 101
x5915:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x5917:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x5920:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x5923:	mov ax, [bp + 10]	; 3: -117 70 10
x5926:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x5929:	mov ax, [bp + 12]	; 3: -117 70 12
x5932:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x5935:	mov ax, [bp + 14]	; 3: -117 70 14
x5938:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x5941:	mov ax, [bp + 18]	; 3: -117 70 18
x5944:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2111 = int_to_int c (Signed_Char -> Signed_Int)
x5947:	mov al, [bp + 30]	; 3: -118 70 30
x5950:	and ax, 255	; 3: 37 -1 0
x5953:	cmp al, 0	; 2: 60 0
x5955:	jge printArgument$249	; 2: 125 4
x5957:	neg al	; 2: -10 -40
x5959:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2111, offset 28
x5961:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x5964:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 90 23
x5969:	mov [bp + 68], bp	; 3: -119 110 68
x5972:	add bp, 66	; 3: -125 -59 66
x5975:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; post call

printArgument$252:	; £temporary2112 = return_value

printArgument$253:	; parameter £temporary2112, offset 22
x5978:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x5981:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 107 23
x5986:	mov [bp + 46], bp	; 3: -119 110 46
x5989:	add bp, 44	; 3: -125 -59 44
x5992:	jmp printLongDoubleExpo	; 3: -23 10 12

printArgument$255:	; post call

printArgument$256:	; goto 359
x5995:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x5998:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x6001:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x6004:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 -126 23
x6009:	mov [bp + 46], bp	; 3: -119 110 46
x6012:	add bp, 44	; 3: -125 -59 44
x6015:	jmp fabs	; 3: -23 48 11

printArgument$262:	; post call

printArgument$263:	; £temporary2114 = return_value

printArgument$264:	; parameter £temporary2114, offset 6
x6018:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x6021:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 -109 23
x6026:	mov [bp + 46], bp	; 3: -119 110 46
x6029:	add bp, 44	; 3: -125 -59 44
x6032:	jmp log10	; 3: -23 73 13

printArgument$266:	; post call

printArgument$267:	; £temporary2115 = return_value

printArgument$268:	; £temporary2116 = float_to_int £temporary2115 (Double -> Signed_Int)
x6035:	fistp word [container2bytes#]	; 4: -33 30 41 25
x6039:	mov ax, [container2bytes#]	; 3: -95 41 25

printArgument$269:	; expo = £temporary2116
x6042:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x6045:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x6049:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x6051:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x6055:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x6057:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x6060:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x6063:	mov ax, [bp + 10]	; 3: -117 70 10
x6066:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x6069:	mov ax, [bp + 12]	; 3: -117 70 12
x6072:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x6075:	mov ax, [bp + 14]	; 3: -117 70 14
x6078:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x6081:	mov ax, [bp + 18]	; 3: -117 70 18
x6084:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x6087:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 -43 23
x6092:	mov [bp + 48], bp	; 3: -119 110 48
x6095:	add bp, 46	; 3: -125 -59 46
x6098:	jmp printLongDoublePlain	; 3: -23 -103 9

printArgument$280:	; post call

printArgument$281:	; goto 359
x6101:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x6104:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x6107:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x6110:	mov ax, [bp + 10]	; 3: -117 70 10
x6113:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x6116:	mov ax, [bp + 12]	; 3: -117 70 12
x6119:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x6122:	mov ax, [bp + 14]	; 3: -117 70 14
x6125:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x6128:	mov ax, [bp + 18]	; 3: -117 70 18
x6131:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2121 = int_to_int c (Signed_Char -> Signed_Int)
x6134:	mov al, [bp + 30]	; 3: -118 70 30
x6137:	and ax, 255	; 3: 37 -1 0
x6140:	cmp al, 0	; 2: 60 0
x6142:	jge printArgument$291	; 2: 125 4
x6144:	neg al	; 2: -10 -40
x6146:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2121, offset 28
x6148:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x6151:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 21 24
x6156:	mov [bp + 70], bp	; 3: -119 110 70
x6159:	add bp, 68	; 3: -125 -59 68
x6162:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; post call

printArgument$294:	; £temporary2122 = return_value

printArgument$295:	; parameter £temporary2122, offset 22
x6165:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x6168:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 38 24
x6173:	mov [bp + 48], bp	; 3: -119 110 48
x6176:	add bp, 46	; 3: -125 -59 46
x6179:	jmp printLongDoubleExpo	; 3: -23 79 11

printArgument$297:	; post call

printArgument$298:	; goto 359
x6182:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x6185:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2125 = arg_list - 2
x6189:	mov si, [bp + 8]	; 3: -117 118 8
x6192:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2126 = int_to_int £temporary2125 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2127 -> £temporary2126 = *£temporary2126

printArgument$303:	; ptrValue = £temporary2127 -> £temporary2126
x6195:	mov ax, [si]	; 2: -117 4
x6197:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x6200:	mov ax, [bp + 8]	; 3: -117 70 8
x6203:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x6206:	mov ax, [bp + 16]	; 3: -117 70 16
x6209:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2128 = &precision
x6212:	mov si, bp	; 2: -119 -18
x6214:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2128, offset 10
x6217:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x6220:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 90 24
x6225:	mov [bp + 46], bp	; 3: -119 110 46
x6228:	add bp, 44	; 3: -125 -59 44
x6231:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; post call

printArgument$311:	; £temporary2129 = return_value

printArgument$312:	; arg_list = £temporary2129
x6234:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2130 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x6237:	mov ax, [bp + 42]	; 3: -117 70 42
x6240:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2130, offset 6
x6246:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x6250:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x6255:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x6260:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x6265:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x6273:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x6278:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 -108 24
x6283:	mov [bp + 46], bp	; 3: -119 110 46
x6286:	add bp, 44	; 3: -125 -59 44
x6289:	jmp printUnsignedLong	; 3: -23 47 7

printArgument$322:	; post call

printArgument$323:	; goto 359
x6292:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x6295:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2133 = arg_list - 2
x6299:	mov si, [bp + 8]	; 3: -117 118 8
x6302:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2134 = int_to_int £temporary2133 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2135 -> £temporary2134 = *£temporary2134

printArgument$328:	; ptrValue = £temporary2135 -> £temporary2134
x6305:	mov ax, [si]	; 2: -117 4
x6307:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x6310:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2137 = arg_list - 2
x6314:	mov si, [bp + 8]	; 3: -117 118 8
x6317:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2138 = int_to_int £temporary2137 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2139 -> £temporary2138 = *£temporary2138

printArgument$333:	; intPtr = £temporary2139 -> £temporary2138
x6320:	mov ax, [si]	; 2: -117 4
x6322:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x6325:	mov ax, [bp + 8]	; 3: -117 70 8
x6328:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x6331:	mov ax, [bp + 16]	; 3: -117 70 16
x6334:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2140 = &precision
x6337:	mov si, bp	; 2: -119 -18
x6339:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2140, offset 10
x6342:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x6345:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 -41 24
x6350:	mov [bp + 46], bp	; 3: -119 110 46
x6353:	add bp, 44	; 3: -125 -59 44
x6356:	nop	; 1: -112
x6357:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; post call

printArgument$341:	; £temporary2141 = return_value

printArgument$342:	; arg_list = £temporary2141
x6359:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2142 -> intPtr = *intPtr
x6362:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2142 -> intPtr = g_outChars
x6365:	mov ax, [g_outChars]	; 3: -95 19 19
x6368:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x6370:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x6372:	mov ax, [bp + 8]	; 3: -117 70 8
x6375:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x6378:	mov ax, [bp + 16]	; 3: -117 70 16
x6381:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2143 = &precision
x6384:	mov si, bp	; 2: -119 -18
x6386:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2143, offset 10
x6389:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x6392:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 6 25
x6397:	mov [bp + 46], bp	; 3: -119 110 46
x6400:	add bp, 44	; 3: -125 -59 44
x6403:	nop	; 1: -112
x6404:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; post call

printArgument$353:	; £temporary2144 = return_value

printArgument$354:	; arg_list = £temporary2144
x6406:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x6409:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x6413:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 27 25
x6418:	mov [bp + 46], bp	; 3: -119 110 46
x6421:	add bp, 44	; 3: -125 -59 44
x6424:	jmp printChar	; 3: -23 15 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x6427:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x6430:	mov ax, [bp]	; 3: -117 70 0
x6433:	mov di, [bp + 4]	; 3: -117 126 4
x6436:	mov bp, [bp + 2]	; 3: -117 110 2
x6439:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

container2bytes#:
x6441:	db 0, 0	; 2: 0 0

labs:	; if value >= 0 goto 4
x6443:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6448:	jge labs$4	; 2: 125 9

labs$1:	; £temporary3394 = -value
x6450:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x6454:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary3398 = £temporary3394

labs$3:	; goto 5
x6457:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary3398 = value
x6459:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary3398

labs$6:	; return
x6463:	mov ax, [bp]	; 3: -117 70 0
x6466:	mov di, [bp + 4]	; 3: -117 126 4
x6469:	mov bp, [bp + 2]	; 3: -117 110 2
x6472:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x6474:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6478:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary1989 -> widthPtr = *widthPtr
x6480:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary1989 -> widthPtr != -1 goto 9
x6483:	cmp word [si], -1	; 3: -125 60 -1
x6486:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary1992 -> widthPtr = *widthPtr
x6488:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x6491:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary1994 = arg_list - 2
x6495:	mov di, [bp + 6]	; 3: -117 126 6
x6498:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary1995 = int_to_int £temporary1994 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary1996 -> £temporary1995 = *£temporary1995

checkWidthAndPrecision$8:	; £temporary1992 -> widthPtr = £temporary1996 -> £temporary1995
x6501:	mov ax, [di]	; 2: -117 5
x6503:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x6505:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6509:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary1998 -> precisionPtr = *precisionPtr
x6511:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary1998 -> precisionPtr != -1 goto 18
x6514:	cmp word [si], -1	; 3: -125 60 -1
x6517:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary2001 -> precisionPtr = *precisionPtr
x6519:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x6522:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary2003 = arg_list - 2
x6526:	mov di, [bp + 6]	; 3: -117 126 6
x6529:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary2004 = int_to_int £temporary2003 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary2005 -> £temporary2004 = *£temporary2004

checkWidthAndPrecision$17:	; £temporary2001 -> precisionPtr = £temporary2005 -> £temporary2004
x6532:	mov ax, [di]	; 2: -117 5
x6534:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x6536:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x6539:	mov ax, [bp]	; 3: -117 70 0
x6542:	mov di, [bp + 4]	; 3: -117 126 4
x6545:	mov bp, [bp + 2]	; 3: -117 110 2
x6548:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x6550:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6555:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1844 = -longValue
x6557:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6561:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1844
x6564:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x6568:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x6572:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 -70 25
x6577:	mov [bp + 16], bp	; 3: -119 110 16
x6580:	add bp, 14	; 3: -125 -59 14
x6583:	nop	; 1: -112
x6584:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x6586:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x6588:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x6592:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x6594:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x6598:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 -44 25
x6603:	mov [bp + 16], bp	; 3: -119 110 16
x6606:	add bp, 14	; 3: -125 -59 14
x6609:	nop	; 1: -112
x6610:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x6612:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x6614:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6618:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x6620:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x6624:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 -18 25
x6629:	mov [bp + 16], bp	; 3: -119 110 16
x6632:	add bp, 14	; 3: -125 -59 14
x6635:	nop	; 1: -112
x6636:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x6638:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6643:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x6645:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x6649:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 7 26
x6654:	mov [bp + 16], bp	; 3: -119 110 16
x6657:	add bp, 14	; 3: -125 -59 14
x6660:	nop	; 1: -112
x6661:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x6663:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x6665:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6669:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x6673:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 31 26
x6678:	mov [bp + 16], bp	; 3: -119 110 16
x6681:	add bp, 14	; 3: -125 -59 14
x6684:	nop	; 1: -112
x6685:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x6687:	mov ax, [bp]	; 3: -117 70 0
x6690:	mov di, [bp + 4]	; 3: -117 126 4
x6693:	mov bp, [bp + 2]	; 3: -117 110 2
x6696:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x6698:	mov ax, [g_outStatus]	; 3: -95 -83 13
x6701:	cmp ax, 0	; 3: -125 -8 0
x6704:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x6706:	cmp ax, 1	; 3: -125 -8 1
x6709:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x6711:	cmp ax, 2	; 3: -125 -8 2
x6714:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x6716:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1786 = int_to_int g_outDevice (Pointer -> Pointer)
x6718:	mov ax, [g_outDevice]	; 3: -95 -81 13

printChar$6:	; stream = £temporary1786
x6721:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x6724:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1789 -> stream = *stream, offset 2
x6726:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1789 -> stream
x6729:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x6732:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1792 = &c
x6735:	mov dx, bp	; 2: -119 -22
x6737:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1792

printChar$13:	; interrupt 33
x6740:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x6742:	inc word [g_outChars]	; 4: -1 6 19 19

printChar$15:	; goto 25
x6746:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1794 = int_to_int g_outDevice (Pointer -> Pointer)
x6748:	mov ax, [g_outDevice]	; 3: -95 -81 13

printChar$17:	; outString = £temporary1794
x6751:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1795 = g_outChars
x6754:	mov ax, [g_outChars]	; 3: -95 19 19

printChar$19:	; ++g_outChars
x6757:	inc word [g_outChars]	; 4: -1 6 19 19

printChar$20:	; £temporary1797 = outString + £temporary1795
x6761:	mov si, [bp + 9]	; 3: -117 118 9
x6764:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1796 -> £temporary1797 = *£temporary1797

printChar$22:	; £temporary1796 -> £temporary1797 = c
x6766:	mov al, [bp + 6]	; 3: -118 70 6
x6769:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x6771:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x6773:	inc word [g_outChars]	; 4: -1 6 19 19

printChar$25:	; return
x6777:	mov ax, [bp]	; 3: -117 70 0
x6780:	mov di, [bp + 4]	; 3: -117 126 4
x6783:	mov bp, [bp + 2]	; 3: -117 110 2
x6786:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x6788:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6793:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1834 = longValue % 10
x6795:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6799:	xor edx, edx	; 3: 102 49 -46
x6802:	idiv dword [int4$10#]	; 5: 102 -9 62 -18 26

printLongIntRec$2:	; £temporary1835 = int_to_int £temporary1834 (Signed_Long_Int -> Signed_Int)
x6807:	cmp edx, 0	; 4: 102 -125 -6 0
x6811:	jge printLongIntRec$3	; 2: 125 5
x6813:	neg edx	; 3: 102 -9 -38
x6816:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1835
x6818:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1836 = longValue / 10
x6821:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6825:	xor edx, edx	; 3: 102 49 -46
x6828:	idiv dword [int4$10#]	; 5: 102 -9 62 -18 26

printLongIntRec$6:	; parameter £temporary1836, offset 6
x6833:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x6837:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 -61 26
x6842:	mov [bp + 14], bp	; 3: -119 110 14
x6845:	add bp, 12	; 3: -125 -59 12
x6848:	nop	; 1: -112
x6849:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1838 = digit + 48
x6851:	mov ax, [bp + 10]	; 3: -117 70 10
x6854:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1839 = int_to_int £temporary1838 (Signed_Int -> Signed_Char)
x6857:	cmp ax, 0	; 3: -125 -8 0
x6860:	jge printLongIntRec$12	; 2: 125 4
x6862:	neg ax	; 2: -9 -40
x6864:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1839, offset 6
x6866:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x6869:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 -29 26
x6874:	mov [bp + 14], bp	; 3: -119 110 14
x6877:	add bp, 12	; 3: -125 -59 12
x6880:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x6883:	mov ax, [bp]	; 3: -117 70 0
x6886:	mov di, [bp + 4]	; 3: -117 126 4
x6889:	mov bp, [bp + 2]	; 3: -117 110 2
x6892:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x6894:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x6898:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x6902:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x6904:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6908:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x6910:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1803 = s + index
x6915:	mov si, [bp + 6]	; 3: -117 118 6
x6918:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1802 -> £temporary1803 = *£temporary1803

printString$5:	; if £temporary1802 -> £temporary1803 == 0 goto 53
x6921:	cmp byte [si], 0	; 3: -128 60 0
x6924:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1807 = s + index
x6928:	mov si, [bp + 6]	; 3: -117 118 6
x6931:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1806 -> £temporary1807 = *£temporary1807

printString$9:	; parameter £temporary1806 -> £temporary1807, offset 6
x6934:	mov al, [si]	; 2: -118 4
x6936:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x6939:	mov word [bp + 12], printString$11	; 5: -57 70 12 41 27
x6944:	mov [bp + 14], bp	; 3: -119 110 14
x6947:	add bp, 12	; 3: -125 -59 12
x6950:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x6953:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x6956:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x6958:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1809 = precision
x6963:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x6966:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1809 <= 0 goto 53
x6969:	cmp ax, 0	; 3: -125 -8 0
x6972:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1812 = s + index
x6976:	mov si, [bp + 6]	; 3: -117 118 6
x6979:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1811 -> £temporary1812 = *£temporary1812

printString$20:	; if £temporary1811 -> £temporary1812 == 0 goto 53
x6982:	cmp byte [si], 0	; 3: -128 60 0
x6985:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1817 = s + index
x6989:	mov si, [bp + 6]	; 3: -117 118 6
x6992:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1816 -> £temporary1817 = *£temporary1817

printString$24:	; parameter £temporary1816 -> £temporary1817, offset 6
x6995:	mov al, [si]	; 2: -118 4
x6997:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x7000:	mov word [bp + 12], printString$26	; 5: -57 70 12 102 27
x7005:	mov [bp + 14], bp	; 3: -119 110 14
x7008:	add bp, 12	; 3: -125 -59 12
x7011:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x7014:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x7017:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x7019:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x7023:	mov word [bp + 10], printString$32	; 5: -57 70 10 125 27
x7028:	mov [bp + 12], bp	; 3: -119 110 12
x7031:	add bp, 10	; 3: -125 -59 10
x7034:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x7037:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x7041:	mov word [bp + 10], printString$36	; 5: -57 70 10 -113 27
x7046:	mov [bp + 12], bp	; 3: -119 110 12
x7049:	add bp, 10	; 3: -125 -59 10
x7052:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x7055:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x7059:	mov word [bp + 10], printString$40	; 5: -57 70 10 -95 27
x7064:	mov [bp + 12], bp	; 3: -119 110 12
x7067:	add bp, 10	; 3: -125 -59 10
x7070:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x7073:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x7077:	mov word [bp + 10], printString$44	; 5: -57 70 10 -77 27
x7082:	mov [bp + 12], bp	; 3: -119 110 12
x7085:	add bp, 10	; 3: -125 -59 10
x7088:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x7091:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x7095:	mov word [bp + 10], printString$48	; 5: -57 70 10 -59 27
x7100:	mov [bp + 12], bp	; 3: -119 110 12
x7103:	add bp, 10	; 3: -125 -59 10
x7106:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x7109:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x7113:	mov word [bp + 10], printString$52	; 5: -57 70 10 -41 27
x7118:	mov [bp + 12], bp	; 3: -119 110 12
x7121:	add bp, 10	; 3: -125 -59 10
x7124:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x7127:	mov ax, [bp]	; 3: -117 70 0
x7130:	mov di, [bp + 4]	; 3: -117 126 4
x7133:	mov bp, [bp + 2]	; 3: -117 110 2
x7136:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x7138:	mov word [bp + 8], isupper$2	; 5: -57 70 8 -16 27
x7143:	mov [bp + 10], bp	; 3: -119 110 10
x7146:	add bp, 8	; 3: -125 -59 8
x7149:	nop	; 1: -112
x7150:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary383 = return_value

isupper$4:	; localeConvPtr = £temporary383
x7152:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x7155:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7159:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary385 -> localeConvPtr = *localeConvPtr, offset 14
x7161:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary385 -> localeConvPtr, offset 6
x7164:	mov ax, [si + 14]	; 3: -117 68 14
x7167:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x7170:	mov ax, [bp + 6]	; 3: -117 70 6
x7173:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x7176:	mov word [bp + 10], isupper$11	; 5: -57 70 10 22 28
x7181:	mov [bp + 12], bp	; 3: -119 110 12
x7184:	add bp, 10	; 3: -125 -59 10
x7187:	jmp strchr	; 3: -23 93 3

isupper$11:	; post call

isupper$12:	; £temporary386 = return_value

isupper$13:	; if £temporary386 == 0 goto 16
x7190:	cmp bx, 0	; 3: -125 -5 0
x7193:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary388 = 1
x7195:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x7198:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary388 = 0
x7200:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary388

isupper$18:	; return
x7203:	mov ax, [bp]	; 3: -117 70 0
x7206:	mov di, [bp + 4]	; 3: -117 126 4
x7209:	mov bp, [bp + 2]	; 3: -117 110 2
x7212:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x7214:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x7218:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x7220:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x7224:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary392 = 1
x7226:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x7229:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary392 = 0
x7231:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary392

isupper$25:	; return
x7234:	mov ax, [bp]	; 3: -117 70 0
x7237:	mov di, [bp + 4]	; 3: -117 126 4
x7240:	mov bp, [bp + 2]	; 3: -117 110 2
x7243:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x7245:	cmp word [@15$g_currStructPtr], 0	; 5: -125 62 107 28 0
x7250:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary516 -> g_currStructPtr = *g_currStructPtr, offset 2
x7252:	mov si, [@15$g_currStructPtr]	; 4: -117 54 107 28

localeconv$2:	; £temporary520 = £temporary516 -> g_currStructPtr
x7256:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x7259:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary520 = 0
x7261:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary520

localeconv$6:	; return
x7264:	mov ax, [bp]	; 3: -117 70 0
x7267:	mov di, [bp + 4]	; 3: -117 126 4
x7270:	mov bp, [bp + 2]	; 3: -117 110 2
x7273:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@15$g_currStructPtr:
x7275:	dw @13$sArray	; 2: 109 28

@13$sArray:
x7277:	dw string_# ; 2: 121 28
x7279:	dw @12$en_US_utf8	; 2: 122 28
x7281:	dw string_C# ; 2: 110 31
x7283:	dw @12$en_US_utf8	; 2: 122 28
x7285:	dw string_US# ; 2: 112 31
x7287:	dw @12$en_US_utf8	; 2: 122 28

string_#:
x7289:	db 0	; 1: 0

@12$en_US_utf8:
x7290:	dw -5	; 2: -5 -1
x7292:	dw -4	; 2: -4 -1
x7294:	dw @8$enShortDayList ; 2: -116 28
x7296:	dw @9$enLongDayList ; 2: -102 28
x7298:	dw @10$enShortMonthList ; 2: -31 28
x7300:	dw @11$enLongMonthList ; 2: 41 29
x7302:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -109 29
x7304:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -82 29
x7306:	dw enMessageList ; 2: -55 29

@8$enShortDayList:
x7308:	dw string_Sun# ; 2: 5 4
x7310:	dw string_Mon# ; 2: 9 4
x7312:	dw string_Tue# ; 2: 13 4
x7314:	dw string_Wed# ; 2: 17 4
x7316:	dw string_Thu# ; 2: 21 4
x7318:	dw string_Fri# ; 2: 25 4
x7320:	dw string_Sat# ; 2: 29 4

@9$enLongDayList:
x7322:	dw string_Sunday# ; 2: -88 28
x7324:	dw string_Monday# ; 2: -81 28
x7326:	dw string_Tuesday# ; 2: -74 28
x7328:	dw string_Wednesday# ; 2: -66 28
x7330:	dw string_Thursday# ; 2: -56 28
x7332:	dw string_Friday# ; 2: -47 28
x7334:	dw string_Saturday# ; 2: -40 28

string_Sunday#:
x7336:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x7343:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x7350:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x7358:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x7368:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x7377:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x7384:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@10$enShortMonthList:
x7393:	dw string_Jan# ; 2: -7 28
x7395:	dw string_Feb# ; 2: -3 28
x7397:	dw string_Mar# ; 2: 1 29
x7399:	dw string_Apr# ; 2: 5 29
x7401:	dw string_May# ; 2: 9 29
x7403:	dw string_Jun# ; 2: 13 29
x7405:	dw string_Jul# ; 2: 17 29
x7407:	dw string_Aug# ; 2: 21 29
x7409:	dw string_Sep# ; 2: 25 29
x7411:	dw string_Oct# ; 2: 29 29
x7413:	dw string_Nov# ; 2: 33 29
x7415:	dw string_Dec# ; 2: 37 29

string_Jan#:
x7417:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x7421:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x7425:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x7429:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x7433:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x7437:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x7441:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x7445:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x7449:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x7453:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x7457:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x7461:	db "Dec", 0	; 4: 68 101 99 0

@11$enLongMonthList:
x7465:	dw string_January# ; 2: 65 29
x7467:	dw string_February# ; 2: 73 29
x7469:	dw string_March# ; 2: 82 29
x7471:	dw string_April# ; 2: 88 29
x7473:	dw string_May# ; 2: 9 29
x7475:	dw string_June# ; 2: 94 29
x7477:	dw string_July# ; 2: 99 29
x7479:	dw string_August# ; 2: 104 29
x7481:	dw string_September# ; 2: 111 29
x7483:	dw string_October# ; 2: 121 29
x7485:	dw string_November# ; 2: -127 29
x7487:	dw string_December# ; 2: -118 29

string_January#:
x7489:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x7497:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x7506:	db "March", 0	; 6: 77 97 114 99 104 0

string_April#:
x7512:	db "April", 0	; 6: 65 112 114 105 108 0

string_June#:
x7518:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x7523:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x7528:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_September#:
x7535:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_October#:
x7545:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

string_November#:
x7553:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x7562:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x7571:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x7598:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

enMessageList:
x7625:	dw string_no20error# ; 2: -15 29
x7627:	dw string_function20number20invalid# ; 2: -6 29
x7629:	dw string_file20not20found# ; 2: 18 30
x7631:	dw string_path20not20found# ; 2: 33 30
x7633:	dw string_no20handle20available# ; 2: 48 30
x7635:	dw string_access20denied# ; 2: 68 30
x7637:	dw string_out20of20domain# ; 2: 82 30
x7639:	dw string_out20of20range# ; 2: 96 30
x7641:	dw string_invalid20multibyte20sequence# ; 2: 109 30
x7643:	dw string_error20while20opening# ; 2: -120 30
x7645:	dw string_error20while20flushing# ; 2: -100 30
x7647:	dw string_error20while20closing# ; 2: -79 30
x7649:	dw string_open20mode20invalid# ; 2: -59 30
x7651:	dw string_error20while20writing# ; 2: -41 30
x7653:	dw string_error20while20reading# ; 2: -21 30
x7655:	dw string_error20while20seeking# ; 2: -1 30
x7657:	dw string_error20while20telling# ; 2: 19 31
x7659:	dw string_error20while20sizing# ; 2: 39 31
x7661:	dw string_error20while20removing20file# ; 2: 58 31
x7663:	dw string_error20while20renaming20file# ; 2: 84 31

string_no20error#:
x7665:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x7674:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x7698:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x7713:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x7728:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x7748:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x7762:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x7776:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x7789:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x7816:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x7836:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x7857:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x7877:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x7895:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x7915:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x7935:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x7955:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x7975:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x7994:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x8020:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_C#:
x8046:	db "C", 0	; 2: 67 0

string_US#:
x8048:	db "US", 0	; 3: 85 83 0

strchr:	; £temporary4012 = int_to_int i (Signed_Int -> Signed_Char)
x8051:	mov ax, [bp + 8]	; 3: -117 70 8
x8054:	cmp ax, 0	; 3: -125 -8 0
x8057:	jge strchr$1	; 2: 125 4
x8059:	neg ax	; 2: -9 -40
x8061:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary4012
x8063:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x8066:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary4014 = text + index
x8071:	mov si, [bp + 6]	; 3: -117 118 6
x8074:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary4013 -> £temporary4014 = *£temporary4014

strchr$5:	; if £temporary4013 -> £temporary4014 == 0 goto 16
x8077:	cmp byte [si], 0	; 3: -128 60 0
x8080:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary4018 = text + index
x8082:	mov si, [bp + 6]	; 3: -117 118 6
x8085:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary4017 -> £temporary4018 = *£temporary4018

strchr$8:	; if £temporary4017 -> £temporary4018 != c goto 14
x8088:	mov al, [bp + 12]	; 3: -118 70 12
x8091:	cmp [si], al	; 2: 56 4
x8093:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary4021 = text + index
x8095:	mov bx, [bp + 6]	; 3: -117 94 6
x8098:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary4020 -> £temporary4021 = *£temporary4021

strchr$11:	; £temporary4022 = &£temporary4020 -> £temporary4021

strchr$12:	; return_value = £temporary4022

strchr$13:	; return
x8101:	mov ax, [bp]	; 3: -117 70 0
x8104:	mov di, [bp + 4]	; 3: -117 126 4
x8107:	mov bp, [bp + 2]	; 3: -117 110 2
x8110:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x8112:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x8115:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x8117:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x8120:	mov ax, [bp]	; 3: -117 70 0
x8123:	mov di, [bp + 4]	; 3: -117 126 4
x8126:	mov bp, [bp + 2]	; 3: -117 110 2
x8129:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x8131:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x8135:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x8137:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x8141:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 -37 31
x8146:	mov [bp + 24], bp	; 3: -119 110 24
x8149:	add bp, 22	; 3: -125 -59 22
x8152:	jmp printChar	; 3: -23 79 -6

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x8155:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x8159:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x8161:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x8165:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 -13 31
x8170:	mov [bp + 24], bp	; 3: -119 110 24
x8173:	add bp, 22	; 3: -125 -59 22
x8176:	jmp printChar	; 3: -23 55 -6

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x8179:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x8183:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x8185:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x8190:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x8192:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x8196:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 18 32
x8201:	mov [bp + 24], bp	; 3: -119 110 24
x8204:	add bp, 22	; 3: -125 -59 22
x8207:	jmp printChar	; 3: -23 24 -6

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x8210:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x8215:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x8217:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x8221:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 43 32
x8226:	mov [bp + 24], bp	; 3: -119 110 24
x8229:	add bp, 22	; 3: -125 -59 22
x8232:	jmp printChar	; 3: -23 -1 -7

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x8235:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x8239:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1893 = 88
x8241:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x8243:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1893 = 120
x8245:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1893, offset 6
x8247:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x8250:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 72 32
x8255:	mov [bp + 24], bp	; 3: -119 110 24
x8258:	add bp, 22	; 3: -125 -59 22
x8261:	jmp printChar	; 3: -23 -30 -7

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x8264:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x8269:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x8271:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x8275:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 97 32
x8280:	mov [bp + 24], bp	; 3: -119 110 24
x8283:	add bp, 22	; 3: -125 -59 22
x8286:	jmp printChar	; 3: -23 -55 -7

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x8289:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x8291:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x8295:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x8299:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x8303:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x8307:	mov ax, [bp + 20]	; 3: -117 70 20
x8310:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x8313:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 -121 32
x8318:	mov [bp + 24], bp	; 3: -119 110 24
x8321:	add bp, 22	; 3: -125 -59 22
x8324:	nop	; 1: -112
x8325:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x8327:	mov ax, [bp]	; 3: -117 70 0
x8330:	mov di, [bp + 4]	; 3: -117 126 4
x8333:	mov bp, [bp + 2]	; 3: -117 110 2
x8336:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x8338:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x8343:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1869 = unsignedValue % base
x8345:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x8349:	xor edx, edx	; 3: 102 49 -46
x8352:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1870 = int_to_int £temporary1869 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1870
x8356:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1871 = unsignedValue / base
x8359:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x8363:	xor edx, edx	; 3: 102 49 -46
x8366:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1871, offset 6
x8370:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x8374:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x8378:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x8382:	mov ax, [bp + 14]	; 3: -117 70 14
x8385:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x8388:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 -46 32
x8393:	mov [bp + 20], bp	; 3: -119 110 20
x8396:	add bp, 18	; 3: -125 -59 18
x8399:	nop	; 1: -112
x8400:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x8402:	mov ax, [bp + 16]	; 3: -117 70 16
x8405:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x8408:	mov ax, [bp + 14]	; 3: -117 70 14
x8411:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x8414:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 -20 32
x8419:	mov [bp + 20], bp	; 3: -119 110 20
x8422:	add bp, 18	; 3: -125 -59 18
x8425:	nop	; 1: -112
x8426:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1873 = return_value

printUnsignedLongRec$17:	; c = £temporary1873
x8428:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x8431:	mov al, [bp + 18]	; 3: -118 70 18
x8434:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x8437:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 3 33
x8442:	mov [bp + 21], bp	; 3: -119 110 21
x8445:	add bp, 19	; 3: -125 -59 19
x8448:	jmp printChar	; 3: -23 39 -7

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x8451:	mov ax, [bp]	; 3: -117 70 0
x8454:	mov di, [bp + 4]	; 3: -117 126 4
x8457:	mov bp, [bp + 2]	; 3: -117 110 2
x8460:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x8462:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x8466:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1859 = digit + 48
x8468:	mov bx, [bp + 6]	; 3: -117 94 6
x8471:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1860 = int_to_int £temporary1859 (Signed_Int -> Signed_Char)
x8474:	cmp bx, 0	; 3: -125 -5 0
x8477:	jge digitToChar$3	; 2: 125 4
x8479:	neg bx	; 2: -9 -37
x8481:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1860

digitToChar$4:	; return
x8483:	mov ax, [bp]	; 3: -117 70 0
x8486:	mov di, [bp + 4]	; 3: -117 126 4
x8489:	mov bp, [bp + 2]	; 3: -117 110 2
x8492:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x8494:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x8498:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1861 = digit - 10
x8500:	mov bx, [bp + 6]	; 3: -117 94 6
x8503:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1862 = £temporary1861 + 65
x8506:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1863 = int_to_int £temporary1862 (Signed_Int -> Signed_Char)
x8509:	cmp bx, 0	; 3: -125 -5 0
x8512:	jge digitToChar$9	; 2: 125 4
x8514:	neg bx	; 2: -9 -37
x8516:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1863

digitToChar$10:	; return
x8518:	mov ax, [bp]	; 3: -117 70 0
x8521:	mov di, [bp + 4]	; 3: -117 126 4
x8524:	mov bp, [bp + 2]	; 3: -117 110 2
x8527:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1864 = digit - 10
x8529:	mov bx, [bp + 6]	; 3: -117 94 6
x8532:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1865 = £temporary1864 + 97
x8535:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1866 = int_to_int £temporary1865 (Signed_Int -> Signed_Char)
x8538:	cmp bx, 0	; 3: -125 -5 0
x8541:	jge digitToChar$14	; 2: 125 4
x8543:	neg bx	; 2: -9 -37
x8545:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1866

digitToChar$15:	; return
x8547:	mov ax, [bp]	; 3: -117 70 0
x8550:	mov di, [bp + 4]	; 3: -117 126 4
x8553:	mov bp, [bp + 2]	; 3: -117 110 2
x8556:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x8558:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x8561:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x8563:	fcompp	; 2: -34 -39
x8565:	fstsw ax	; 3: -101 -33 -32
x8568:	sahf	; 1: -98
x8569:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x8571:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x8575:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 -115 33
x8580:	mov [bp + 24], bp	; 3: -119 110 24
x8583:	add bp, 22	; 3: -125 -59 22
x8586:	jmp printChar	; 3: -23 -99 -8

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x8589:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1929 = -longDoubleValue
x8592:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x8594:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x8597:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x8602:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x8607:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1930 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x8610:	fistp dword [container4bytes#]	; 4: -37 30 6 34
x8614:	mov eax, [container4bytes#]	; 4: 102 -95 6 34

printLongDoublePlain$14:	; longValue = £temporary1930
x8618:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x8622:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x8626:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x8630:	mov ax, [bp + 14]	; 3: -117 70 14
x8633:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x8636:	mov ax, [bp + 16]	; 3: -117 70 16
x8639:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x8642:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 -48 33
x8647:	mov [bp + 28], bp	; 3: -119 110 28
x8650:	add bp, 26	; 3: -125 -59 26
x8653:	jmp printLongInt	; 3: -23 -58 -9

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x8656:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1932 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x8659:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1933 = longDoubleValue - £temporary1932
x8662:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x8664:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x8667:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x8670:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x8673:	mov ax, [bp + 18]	; 3: -117 70 18
x8676:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x8679:	mov ax, [bp + 20]	; 3: -117 70 20
x8682:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x8685:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 -5 33
x8690:	mov [bp + 28], bp	; 3: -119 110 28
x8693:	add bp, 26	; 3: -125 -59 26
x8696:	nop	; 1: -112
x8697:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x8699:	mov ax, [bp]	; 3: -117 70 0
x8702:	mov di, [bp + 4]	; 3: -117 126 4
x8705:	mov bp, [bp + 2]	; 3: -117 110 2
x8708:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

container4bytes#:
x8710:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; push float longDoubleValue
x8714:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x8717:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1908 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x8720:	fistp dword [container4bytes#]	; 4: -37 30 6 34
x8724:	mov eax, [container4bytes#]	; 4: 102 -95 6 34

printLongDoubleFraction$3:	; £temporary1909 = int_to_float £temporary1908 (Signed_Long_Int -> Long_Double)
x8728:	mov [container4bytes#], eax	; 4: 102 -93 6 34
x8732:	fild dword [container4bytes#]	; 4: -37 6 6 34

printLongDoubleFraction$4:	; £temporary1910 = longDoubleValue - £temporary1909
x8736:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x8738:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x8741:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x8745:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 6
x8747:	mov word [bp + 16], 6	; 5: -57 70 16 6 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x8752:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x8756:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x8758:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x8762:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x8764:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x8768:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 78 34
x8773:	mov [bp + 20], bp	; 3: -119 110 20
x8776:	add bp, 18	; 3: -125 -59 18
x8779:	jmp printChar	; 3: -23 -36 -9

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1916 = precision
x8782:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x8785:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1916 <= 0 goto 35
x8788:	cmp ax, 0	; 3: -125 -8 0
x8791:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; push float 10.0
x8793:	fld qword [float8$10.0#]	; 4: -35 6 -86 34

printLongDoubleFraction$18:	; push float longDoubleValue
x8797:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1918 = 10.0 * longDoubleValue
x8800:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; pop float longDoubleValue10
x8802:	fstp qword [bp + 18]	; 3: -35 94 18

printLongDoubleFraction$21:	; push float longDoubleValue10
x8805:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$22:	; £temporary1919 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x8808:	fistp word [container2bytes#]	; 4: -33 30 41 25
x8812:	mov ax, [container2bytes#]	; 3: -95 41 25

printLongDoubleFraction$23:	; digitValue = £temporary1919
x8815:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$24:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$25:	; £temporary1920 = digitValue + 48
x8818:	mov ax, [bp + 26]	; 3: -117 70 26
x8821:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$26:	; £temporary1921 = int_to_int £temporary1920 (Signed_Int -> Signed_Char)
x8824:	cmp ax, 0	; 3: -125 -8 0
x8827:	jge printLongDoubleFraction$27	; 2: 125 4
x8829:	neg ax	; 2: -9 -40
x8831:	neg al	; 2: -10 -40

printLongDoubleFraction$27:	; parameter £temporary1921, offset 6
x8833:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$28:	; call function noellipse-noellipse printChar
x8836:	mov word [bp + 28], printLongDoubleFraction$29	; 5: -57 70 28 -110 34
x8841:	mov [bp + 30], bp	; 3: -119 110 30
x8844:	add bp, 28	; 3: -125 -59 28
x8847:	jmp printChar	; 3: -23 -104 -9

printLongDoubleFraction$29:	; post call

printLongDoubleFraction$30:	; push float longDoubleValue10
x8850:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$31:	; £temporary1923 = int_to_float digitValue (Signed_Int -> Long_Double)
x8853:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$32:	; £temporary1924 = longDoubleValue10 - £temporary1923
x8856:	fsub	; 2: -34 -23

printLongDoubleFraction$33:	; pop float longDoubleValue
x8858:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$34:	; goto 14
x8861:	jmp printLongDoubleFraction$14	; 2: -21 -81

printLongDoubleFraction$35:	; return
x8863:	mov ax, [bp]	; 3: -117 70 0
x8866:	mov di, [bp + 4]	; 3: -117 126 4
x8869:	mov bp, [bp + 2]	; 3: -117 110 2
x8872:	jmp ax	; 2: -1 -32

printLongDoubleFraction$36:	; function end printLongDoubleFraction

float8$10.0#:
x8874:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x8882:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x8885:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x8887:	fcompp	; 2: -34 -39
x8889:	fstsw ax	; 3: -101 -33 -32
x8892:	sahf	; 1: -98
x8893:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x8895:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary829 = -x
x8898:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x8900:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x8902:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary833

fabs$9:	; return
x8905:	mov ax, [bp]	; 3: -117 70 0
x8908:	mov di, [bp + 4]	; 3: -117 126 4
x8911:	mov bp, [bp + 2]	; 3: -117 110 2
x8914:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x8916:	mov ax, [bp + 6]	; 3: -117 70 6
x8919:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x8922:	mov word [bp + 8], tolower$3	; 5: -57 70 8 -24 34
x8927:	mov [bp + 10], bp	; 3: -119 110 10
x8930:	add bp, 8	; 3: -125 -59 8
x8933:	jmp isupper	; 3: -23 -6 -8

tolower$3:	; post call

tolower$4:	; £temporary463 = return_value

tolower$5:	; if £temporary463 == 0 goto 31
x8936:	cmp bx, 0	; 3: -125 -5 0
x8939:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x8941:	mov word [bp + 8], tolower$8	; 5: -57 70 8 -5 34
x8946:	mov [bp + 10], bp	; 3: -119 110 10
x8949:	add bp, 8	; 3: -125 -59 8
x8952:	jmp localeconv	; 3: -23 82 -7

tolower$8:	; post call

tolower$9:	; £temporary464 = return_value

tolower$10:	; localeConvPtr = £temporary464
x8955:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x8958:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x8962:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary466 -> localeConvPtr = *localeConvPtr, offset 12
x8964:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary466 -> localeConvPtr
x8967:	mov ax, [si + 12]	; 3: -117 68 12
x8970:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary467 -> localeConvPtr = *localeConvPtr, offset 14
x8973:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary467 -> localeConvPtr
x8976:	mov ax, [si + 14]	; 3: -117 68 14
x8979:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x8982:	mov ax, [bp + 12]	; 3: -117 70 12
x8985:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x8988:	mov ax, [bp + 6]	; 3: -117 70 6
x8991:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x8994:	mov word [bp + 14], tolower$20	; 5: -57 70 14 48 35
x8999:	mov [bp + 16], bp	; 3: -119 110 16
x9002:	add bp, 14	; 3: -125 -59 14
x9005:	jmp strchr	; 3: -23 67 -4

tolower$20:	; post call

tolower$21:	; £temporary468 = return_value

tolower$22:	; index = £temporary468 - upperCase
x9008:	sub bx, [bp + 12]	; 3: 43 94 12
x9011:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary471 = lowerCase + index
x9014:	mov si, [bp + 10]	; 3: -117 118 10
x9017:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary470 -> £temporary471 = *£temporary471

tolower$25:	; £temporary472 = int_to_int £temporary470 -> £temporary471 (Signed_Char -> Signed_Int)
x9020:	mov bl, [si]	; 2: -118 28
x9022:	and bx, 255	; 4: -127 -29 -1 0
x9026:	cmp bl, 0	; 3: -128 -5 0
x9029:	jge tolower$26	; 2: 125 4
x9031:	neg bl	; 2: -10 -37
x9033:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary472

tolower$27:	; return
x9035:	mov ax, [bp]	; 3: -117 70 0
x9038:	mov di, [bp + 4]	; 3: -117 126 4
x9041:	mov bp, [bp + 2]	; 3: -117 110 2
x9044:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary473 = c + 32
x9046:	mov bx, [bp + 6]	; 3: -117 94 6
x9049:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary473

tolower$30:	; return
x9052:	mov ax, [bp]	; 3: -117 70 0
x9055:	mov di, [bp + 4]	; 3: -117 126 4
x9058:	mov bp, [bp + 2]	; 3: -117 110 2
x9061:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x9063:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x9066:	mov ax, [bp]	; 3: -117 70 0
x9069:	mov di, [bp + 4]	; 3: -117 126 4
x9072:	mov bp, [bp + 2]	; 3: -117 110 2
x9075:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x9077:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x9080:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x9082:	fcompp	; 2: -34 -39
x9084:	fstsw ax	; 3: -101 -33 -32
x9087:	sahf	; 1: -98
x9088:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x9090:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x9094:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 -108 35
x9099:	mov [bp + 26], bp	; 3: -119 110 26
x9102:	add bp, 24	; 3: -125 -59 24
x9105:	jmp printChar	; 3: -23 -106 -10

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x9108:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x9110:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x9113:	mov ax, [bp + 20]	; 3: -117 70 20
x9116:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x9119:	mov ax, [bp + 18]	; 3: -117 70 18
x9122:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x9125:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 -77 35
x9130:	mov [bp + 26], bp	; 3: -119 110 26
x9133:	add bp, 24	; 3: -125 -59 24
x9136:	jmp printLongDoubleFraction	; 3: -23 87 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x9139:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x9143:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary1949 = 69
x9145:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x9147:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary1949 = 101
x9149:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary1949, offset 6
x9151:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x9154:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 -48 35
x9159:	mov [bp + 26], bp	; 3: -119 110 26
x9162:	add bp, 24	; 3: -125 -59 24
x9165:	jmp printChar	; 3: -23 90 -10

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x9168:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x9172:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 -30 35
x9177:	mov [bp + 26], bp	; 3: -119 110 26
x9180:	add bp, 24	; 3: -125 -59 24
x9183:	jmp printChar	; 3: -23 72 -10

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x9186:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x9189:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x9192:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x9194:	fcompp	; 2: -34 -39
x9196:	fstsw ax	; 3: -101 -33 -32
x9199:	sahf	; 1: -98
x9200:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x9202:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x9206:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 4 36
x9211:	mov [bp + 26], bp	; 3: -119 110 26
x9214:	add bp, 24	; 3: -125 -59 24
x9217:	jmp printChar	; 3: -23 38 -10

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x9220:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary1954 = -value
x9223:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x9225:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x9228:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x9231:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x9234:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 32 36
x9239:	mov [bp + 26], bp	; 3: -119 110 26
x9242:	add bp, 24	; 3: -125 -59 24
x9245:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary1955 = return_value

printLongDoubleExpo$43:	; £temporary1956 = float_to_int £temporary1955 (Double -> Signed_Int)
x9248:	fistp word [container2bytes#]	; 4: -33 30 41 25
x9252:	mov ax, [container2bytes#]	; 3: -95 41 25

printLongDoubleExpo$44:	; expo = £temporary1956
x9255:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x9258:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x9261:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x9264:	fld qword [float8$10.0#]	; 4: -35 6 -86 34

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x9268:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary1957 = int_to_float expo (Signed_Int -> Double)
x9271:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary1957, offset 14
x9274:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x9277:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 75 36
x9282:	mov [bp + 36], bp	; 3: -119 110 36
x9285:	add bp, 34	; 3: -125 -59 34
x9288:	jmp pow	; 3: -23 -16 1

printLongDoubleExpo$52:	; post call
x9291:	fstp qword [bp + 34]	; 3: -35 94 34
x9294:	fld qword [bp + 26]	; 3: -35 70 26
x9297:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary1958 = return_value

printLongDoubleExpo$54:	; £temporary1959 = value / £temporary1958
x9300:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x9302:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x9305:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x9308:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x9311:	mov ax, [bp + 14]	; 3: -117 70 14
x9314:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x9317:	mov ax, [bp + 16]	; 3: -117 70 16
x9320:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x9323:	mov ax, [bp + 18]	; 3: -117 70 18
x9326:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x9329:	mov ax, [bp + 20]	; 3: -117 70 20
x9332:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x9335:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 -123 36
x9340:	mov [bp + 28], bp	; 3: -119 110 28
x9343:	add bp, 26	; 3: -125 -59 26
x9346:	jmp printLongDoublePlain	; 3: -23 -23 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x9349:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x9353:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary1965 = 69
x9355:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x9357:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary1965 = 101
x9359:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary1965, offset 6
x9361:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x9364:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 -94 36
x9369:	mov [bp + 28], bp	; 3: -119 110 28
x9372:	add bp, 26	; 3: -125 -59 26
x9375:	jmp printChar	; 3: -23 -120 -11

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary1967 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x9378:	mov ax, [bp + 24]	; 3: -117 70 24
x9381:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9387:	cmp ax, 0	; 3: -125 -8 0
x9390:	jge printLongDoubleExpo$75	; 2: 125 5
x9392:	neg ax	; 2: -9 -40
x9394:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary1967, offset 6
x9397:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x9401:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x9406:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x9411:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 -47 36
x9416:	mov [bp + 28], bp	; 3: -119 110 28
x9419:	add bp, 26	; 3: -125 -59 26
x9422:	jmp printLongInt	; 3: -23 -59 -12

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x9425:	mov ax, [bp]	; 3: -117 70 0
x9428:	mov di, [bp + 4]	; 3: -117 126 4
x9431:	mov bp, [bp + 2]	; 3: -117 110 2
x9434:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; call header integral zero 0 stack zero 0

log10$1:	; push float x
x9436:	fld qword [bp + 6]	; 3: -35 70 6

log10$2:	; parameter x, offset 6
x9439:	fstp qword [bp + 20]	; 3: -35 94 20

log10$3:	; call function noellipse-noellipse log
x9442:	mov word [bp + 14], log10$4	; 5: -57 70 14 -16 36
x9447:	mov [bp + 16], bp	; 3: -119 110 16
x9450:	add bp, 14	; 3: -125 -59 14
x9453:	nop	; 1: -112
x9454:	jmp log	; 2: -21 25

log10$4:	; post call

log10$5:	; £temporary550 = return_value

log10$6:	; push float 2.30
x9456:	fld qword [float8$2.30#]	; 4: -35 6 1 37

log10$7:	; £temporary551 = £temporary550 / 2.30
x9460:	fdiv	; 2: -34 -7

log10$8:	; return_value = £temporary551

log10$9:	; return
x9462:	mov ax, [bp]	; 3: -117 70 0
x9465:	mov di, [bp + 4]	; 3: -117 126 4
x9468:	mov bp, [bp + 2]	; 3: -117 110 2
x9471:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$2.30#:
x9473:	dq 2.30	; 8: 102 102 102 102 102 102 2 64

log:	; push float x
x9481:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x9484:	fldz	; 2: -39 -18

log$2:	; if x <= 0 goto 76
x9486:	fcompp	; 2: -34 -39
x9488:	fstsw ax	; 3: -101 -33 -32
x9491:	sahf	; 1: -98
x9492:	jae log$76	; 4: 15 -125 -18 0

log$3:	; n = 0
x9496:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x
x9501:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push 1
x9504:	fld1	; 2: -39 -24

log$6:	; if x <= 1 goto 16
x9506:	fcompp	; 2: -34 -39
x9508:	fstsw ax	; 3: -101 -33 -32
x9511:	sahf	; 1: -98
x9512:	jae log$16	; 2: 115 30

log$7:	; push float x
x9514:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push 1
x9517:	fld1	; 2: -39 -24

log$9:	; if x <= 1 goto 28
x9519:	fcompp	; 2: -34 -39
x9521:	fstsw ax	; 3: -101 -33 -32
x9524:	sahf	; 1: -98
x9525:	jae log$28	; 2: 115 64

log$10:	; push float x
x9527:	fld qword [bp + 6]	; 3: -35 70 6

log$11:	; push float 2.71
x9530:	fld qword [float8$2.71#]	; 4: -35 6 25 38

log$12:	; £temporary532 = x / 2.71
x9534:	fdiv	; 2: -34 -7

log$13:	; pop float x
x9536:	fstp qword [bp + 6]	; 3: -35 94 6

log$14:	; ++n
x9539:	inc word [bp + 14]	; 3: -1 70 14

log$15:	; goto 7
x9542:	jmp log$7	; 2: -21 -30

log$16:	; push float x
x9544:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 0.3690036900369003690036900369
x9547:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 33 38

log$18:	; if x >= 0.3690036900369003690036900369 goto 28
x9551:	fcompp	; 2: -34 -39
x9553:	fstsw ax	; 3: -101 -33 -32
x9556:	sahf	; 1: -98
x9557:	jbe log$28	; 2: 118 32

log$19:	; push float x
x9559:	fld qword [bp + 6]	; 3: -35 70 6

log$20:	; push float 0.3690036900369003690036900369
x9562:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 33 38

log$21:	; if x >= 0.3690036900369003690036900369 goto 28
x9566:	fcompp	; 2: -34 -39
x9568:	fstsw ax	; 3: -101 -33 -32
x9571:	sahf	; 1: -98
x9572:	jbe log$28	; 2: 118 17

log$22:	; push float x
x9574:	fld qword [bp + 6]	; 3: -35 70 6

log$23:	; push float 2.71
x9577:	fld qword [float8$2.71#]	; 4: -35 6 25 38

log$24:	; £temporary536 = x * 2.71
x9581:	fmul	; 2: -34 -55

log$25:	; pop float x
x9583:	fstp qword [bp + 6]	; 3: -35 94 6

log$26:	; --n
x9586:	dec word [bp + 14]	; 3: -1 78 14

log$27:	; goto 19
x9589:	jmp log$19	; 2: -21 -32

log$28:	; push 1
x9591:	fld1	; 2: -39 -24

log$29:	; pop float index
x9593:	fstp qword [bp + 16]	; 3: -35 94 16

log$30:	; push 0
x9596:	fldz	; 2: -39 -18

log$31:	; pop float sum
x9598:	fstp qword [bp + 32]	; 3: -35 94 32

log$32:	; push 1
x9601:	fld1	; 2: -39 -24

log$33:	; pop float sign
x9603:	fstp qword [bp + 40]	; 3: -35 94 40

log$34:	; push float x
x9606:	fld qword [bp + 6]	; 3: -35 70 6

log$35:	; push 1
x9609:	fld1	; 2: -39 -24

log$36:	; £temporary538 = x - 1
x9611:	fsub	; 2: -34 -23

log$37:	; pop float x_minus_1
x9613:	fstp qword [bp + 48]	; 3: -35 94 48

log$38:	; push float x_minus_1
x9616:	fld qword [bp + 48]	; 3: -35 70 48

log$39:	; pop float power
x9619:	fstp qword [bp + 56]	; 3: -35 94 56

log$40:	; push float sign
x9622:	fld qword [bp + 40]	; 3: -35 70 40

log$41:	; push float power
x9625:	fld qword [bp + 56]	; 3: -35 70 56

log$42:	; £temporary539 = sign * power
x9628:	fmul	; 2: -34 -55

log$43:	; push float index
x9630:	fld qword [bp + 16]	; 3: -35 70 16

log$44:	; push 1
x9633:	fld1	; 2: -39 -24

log$45:	; index = index + 1
x9635:	fadd	; 2: -34 -63

log$46:	; top float index
x9637:	fst qword [bp + 16]	; 3: -35 86 16

log$47:	; push 1
x9640:	fld1	; 2: -39 -24

log$48:	; index = index - 1
x9642:	fsub	; 2: -34 -23

log$49:	; £temporary541 = £temporary539 / £temporary540
x9644:	fdiv	; 2: -34 -7

log$50:	; pop float term
x9646:	fstp qword [bp + 24]	; 3: -35 94 24

log$51:	; push float sum
x9649:	fld qword [bp + 32]	; 3: -35 70 32

log$52:	; push float term
x9652:	fld qword [bp + 24]	; 3: -35 70 24

log$53:	; £temporary542 = sum + term
x9655:	fadd	; 2: -34 -63

log$54:	; pop float sum
x9657:	fstp qword [bp + 32]	; 3: -35 94 32

log$55:	; push float power
x9660:	fld qword [bp + 56]	; 3: -35 70 56

log$56:	; push float x_minus_1
x9663:	fld qword [bp + 48]	; 3: -35 70 48

log$57:	; £temporary543 = power * x_minus_1
x9666:	fmul	; 2: -34 -55

log$58:	; pop float power
x9668:	fstp qword [bp + 56]	; 3: -35 94 56

log$59:	; push float sign
x9671:	fld qword [bp + 40]	; 3: -35 70 40

log$60:	; push float -1.0
x9674:	fld qword [float8$minus1.0#]	; 4: -35 6 41 38

log$61:	; £temporary544 = sign * -1.0
x9678:	fmul	; 2: -34 -55

log$62:	; pop float sign
x9680:	fstp qword [bp + 40]	; 3: -35 94 40

log$63:	; call header integral zero 0 stack zero 0

log$64:	; push float term
x9683:	fld qword [bp + 24]	; 3: -35 70 24

log$65:	; parameter term, offset 6
x9686:	fstp qword [bp + 70]	; 3: -35 94 70

log$66:	; call function noellipse-noellipse fabs
x9689:	mov word [bp + 64], log$67	; 5: -57 70 64 -25 37
x9694:	mov [bp + 66], bp	; 3: -119 110 66
x9697:	add bp, 64	; 3: -125 -59 64
x9700:	jmp fabs	; 3: -23 -53 -4

log$67:	; post call

log$68:	; £temporary545 = return_value

log$69:	; push float 0.000000001
x9703:	fld qword [float8$0.000000001#]	; 4: -35 6 49 38

log$70:	; if £temporary545 >= 0.000000001 goto 40
x9707:	fcompp	; 2: -34 -39
x9709:	fstsw ax	; 3: -101 -33 -32
x9712:	sahf	; 1: -98
x9713:	jbe log$40	; 2: 118 -93

log$71:	; push float sum
x9715:	fld qword [bp + 32]	; 3: -35 70 32

log$72:	; £temporary547 = int_to_float n (Signed_Int -> Double)
x9718:	fild word [bp + 14]	; 3: -33 70 14

log$73:	; £temporary548 = sum + £temporary547
x9721:	fadd	; 2: -34 -63

log$74:	; return_value = £temporary548

log$75:	; return
x9723:	mov ax, [bp]	; 3: -117 70 0
x9726:	mov di, [bp + 4]	; 3: -117 126 4
x9729:	mov bp, [bp + 2]	; 3: -117 110 2
x9732:	jmp ax	; 2: -1 -32

log$76:	; errno = 6
x9734:	mov word [errno], 6	; 6: -57 6 57 38 6 0

log$77:	; push 0
x9740:	fldz	; 2: -39 -18

log$78:	; return_value = 0

log$79:	; return
x9742:	mov ax, [bp]	; 3: -117 70 0
x9745:	mov di, [bp + 4]	; 3: -117 126 4
x9748:	mov bp, [bp + 2]	; 3: -117 110 2
x9751:	jmp ax	; 2: -1 -32

log$80:	; function end log

float8$2.71#:
x9753:	dq 2.71	; 8: -82 71 -31 122 20 -82 5 64

float8$0.3690036900369003690036900369#:
x9761:	dq 0.3690036900369003690036900369	; 8: -86 -12 51 -89 -63 -99 -41 63

float8$minus1.0#:
x9769:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x9777:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

errno:
x9785:	dw 0	; 2: 0 0

pow:	; push float x
x9787:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x9790:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x9792:	fcompp	; 2: -34 -39
x9794:	fstsw ax	; 3: -101 -33 -32
x9797:	sahf	; 1: -98
x9798:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x9800:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x9803:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x9806:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x9809:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x9812:	mov word [bp + 30], pow$9	; 5: -57 70 30 98 38
x9817:	mov [bp + 32], bp	; 3: -119 110 32
x9820:	add bp, 30	; 3: -125 -59 30
x9823:	jmp log	; 3: -23 -89 -2

pow$9:	; post call
x9826:	fstp qword [bp + 30]	; 3: -35 94 30
x9829:	fld qword [bp + 22]	; 3: -35 70 22
x9832:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary554 = return_value

pow$11:	; £temporary555 = y * £temporary554
x9835:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary555, offset 6
x9837:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x9840:	mov word [bp + 22], pow$14	; 5: -57 70 22 126 38
x9845:	mov [bp + 24], bp	; 3: -119 110 24
x9848:	add bp, 22	; 3: -125 -59 22
x9851:	jmp exp	; 3: -23 102 1

pow$14:	; post call

pow$15:	; £temporary556 = return_value

pow$16:	; return_value = £temporary556

pow$17:	; return
x9854:	mov ax, [bp]	; 3: -117 70 0
x9857:	mov di, [bp + 4]	; 3: -117 126 4
x9860:	mov bp, [bp + 2]	; 3: -117 110 2
x9863:	jmp ax	; 2: -1 -32

pow$18:	; push float x
x9865:	fld qword [bp + 6]	; 3: -35 70 6

pow$19:	; push 0
x9868:	fldz	; 2: -39 -18

pow$20:	; if x != 0 goto 27
x9870:	fcompp	; 2: -34 -39
x9872:	fstsw ax	; 3: -101 -33 -32
x9875:	sahf	; 1: -98
x9876:	jne pow$27	; 2: 117 26

pow$21:	; push float y
x9878:	fld qword [bp + 14]	; 3: -35 70 14

pow$22:	; push 0
x9881:	fldz	; 2: -39 -18

pow$23:	; if y != 0 goto 27
x9883:	fcompp	; 2: -34 -39
x9885:	fstsw ax	; 3: -101 -33 -32
x9888:	sahf	; 1: -98
x9889:	jne pow$27	; 2: 117 13

pow$24:	; push 1
x9891:	fld1	; 2: -39 -24

pow$25:	; return_value = 1

pow$26:	; return
x9893:	mov ax, [bp]	; 3: -117 70 0
x9896:	mov di, [bp + 4]	; 3: -117 126 4
x9899:	mov bp, [bp + 2]	; 3: -117 110 2
x9902:	jmp ax	; 2: -1 -32

pow$27:	; push float x
x9904:	fld qword [bp + 6]	; 3: -35 70 6

pow$28:	; push 0
x9907:	fldz	; 2: -39 -18

pow$29:	; if x != 0 goto 36
x9909:	fcompp	; 2: -34 -39
x9911:	fstsw ax	; 3: -101 -33 -32
x9914:	sahf	; 1: -98
x9915:	jne pow$36	; 2: 117 26

pow$30:	; push float y
x9917:	fld qword [bp + 14]	; 3: -35 70 14

pow$31:	; push 0
x9920:	fldz	; 2: -39 -18

pow$32:	; if y <= 0 goto 36
x9922:	fcompp	; 2: -34 -39
x9924:	fstsw ax	; 3: -101 -33 -32
x9927:	sahf	; 1: -98
x9928:	jae pow$36	; 2: 115 13

pow$33:	; push 0
x9930:	fldz	; 2: -39 -18

pow$34:	; return_value = 0

pow$35:	; return
x9932:	mov ax, [bp]	; 3: -117 70 0
x9935:	mov di, [bp + 4]	; 3: -117 126 4
x9938:	mov bp, [bp + 2]	; 3: -117 110 2
x9941:	jmp ax	; 2: -1 -32

pow$36:	; push float x
x9943:	fld qword [bp + 6]	; 3: -35 70 6

pow$37:	; push 0
x9946:	fldz	; 2: -39 -18

pow$38:	; if x >= 0 goto 90
x9948:	fcompp	; 2: -34 -39
x9950:	fstsw ax	; 3: -101 -33 -32
x9953:	sahf	; 1: -98
x9954:	jbe pow$90	; 4: 15 -122 -25 0

pow$39:	; call header integral zero 0 stack zero 0

pow$40:	; push float y
x9958:	fld qword [bp + 14]	; 3: -35 70 14

pow$41:	; parameter y, offset 6
x9961:	fstp qword [bp + 28]	; 3: -35 94 28

pow$42:	; call function noellipse-noellipse floor
x9964:	mov word [bp + 22], pow$43	; 5: -57 70 22 -6 38
x9969:	mov [bp + 24], bp	; 3: -119 110 24
x9972:	add bp, 22	; 3: -125 -59 22
x9975:	jmp floor	; 3: -23 96 1

pow$43:	; post call

pow$44:	; £temporary564 = return_value

pow$45:	; call header integral zero 0 stack no zero 1
x9978:	fstp qword [bp + 22]	; 3: -35 94 22

pow$46:	; push float y
x9981:	fld qword [bp + 14]	; 3: -35 70 14

pow$47:	; parameter y, offset 6
x9984:	fstp qword [bp + 36]	; 3: -35 94 36

pow$48:	; call function noellipse-noellipse ceil
x9987:	mov word [bp + 30], pow$49	; 5: -57 70 30 17 39
x9992:	mov [bp + 32], bp	; 3: -119 110 32
x9995:	add bp, 30	; 3: -125 -59 30
x9998:	jmp ceil	; 3: -23 -105 1

pow$49:	; post call
x10001:	fstp qword [bp + 30]	; 3: -35 94 30
x10004:	fld qword [bp + 22]	; 3: -35 70 22
x10007:	fld qword [bp + 30]	; 3: -35 70 30

pow$50:	; £temporary565 = return_value

pow$51:	; if £temporary564 != £temporary565 goto 90
x10010:	fcompp	; 2: -34 -39
x10012:	fstsw ax	; 3: -101 -33 -32
x10015:	sahf	; 1: -98
x10016:	jne pow$90	; 4: 15 -123 -87 0

pow$52:	; push float y
x10020:	fld qword [bp + 14]	; 3: -35 70 14

pow$53:	; £temporary568 = float_to_int y (Double -> Signed_Long_Int)
x10023:	fistp dword [container4bytes#]	; 4: -37 30 6 34
x10027:	mov eax, [container4bytes#]	; 4: 102 -95 6 34

pow$54:	; long_y = £temporary568
x10031:	mov [bp + 22], eax	; 4: 102 -119 70 22

pow$55:	; £temporary569 = long_y % 2
x10035:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x10039:	xor edx, edx	; 3: 102 49 -46
x10042:	idiv dword [int4$2#]	; 5: 102 -9 62 -32 39

pow$56:	; if £temporary569 != 0 goto 73
x10047:	cmp edx, 0	; 4: 102 -125 -6 0
x10051:	jne pow$73	; 2: 117 67

pow$57:	; call header integral zero 0 stack zero 0

pow$58:	; push float y
x10053:	fld qword [bp + 14]	; 3: -35 70 14

pow$59:	; call header integral zero 0 stack no zero 1
x10056:	fstp qword [bp + 26]	; 3: -35 94 26

pow$60:	; push float x
x10059:	fld qword [bp + 6]	; 3: -35 70 6

pow$61:	; £temporary571 = -x
x10062:	fchs	; 2: -39 -32

pow$62:	; parameter £temporary571, offset 6
x10064:	fstp qword [bp + 40]	; 3: -35 94 40

pow$63:	; call function noellipse-noellipse log
x10067:	mov word [bp + 34], pow$64	; 5: -57 70 34 97 39
x10072:	mov [bp + 36], bp	; 3: -119 110 36
x10075:	add bp, 34	; 3: -125 -59 34
x10078:	jmp log	; 3: -23 -88 -3

pow$64:	; post call
x10081:	fstp qword [bp + 34]	; 3: -35 94 34
x10084:	fld qword [bp + 26]	; 3: -35 70 26
x10087:	fld qword [bp + 34]	; 3: -35 70 34

pow$65:	; £temporary572 = return_value

pow$66:	; £temporary573 = y * £temporary572
x10090:	fmul	; 2: -34 -55

pow$67:	; parameter £temporary573, offset 6
x10092:	fstp qword [bp + 32]	; 3: -35 94 32

pow$68:	; call function noellipse-noellipse exp
x10095:	mov word [bp + 26], pow$69	; 5: -57 70 26 125 39
x10100:	mov [bp + 28], bp	; 3: -119 110 28
x10103:	add bp, 26	; 3: -125 -59 26
x10106:	nop	; 1: -112
x10107:	jmp exp	; 2: -21 103

pow$69:	; post call

pow$70:	; £temporary574 = return_value

pow$71:	; return_value = £temporary574

pow$72:	; return
x10109:	mov ax, [bp]	; 3: -117 70 0
x10112:	mov di, [bp + 4]	; 3: -117 126 4
x10115:	mov bp, [bp + 2]	; 3: -117 110 2
x10118:	jmp ax	; 2: -1 -32

pow$73:	; call header integral zero 0 stack zero 0

pow$74:	; push float y
x10120:	fld qword [bp + 14]	; 3: -35 70 14

pow$75:	; call header integral zero 0 stack no zero 1
x10123:	fstp qword [bp + 26]	; 3: -35 94 26

pow$76:	; push float x
x10126:	fld qword [bp + 6]	; 3: -35 70 6

pow$77:	; £temporary575 = -x
x10129:	fchs	; 2: -39 -32

pow$78:	; parameter £temporary575, offset 6
x10131:	fstp qword [bp + 40]	; 3: -35 94 40

pow$79:	; call function noellipse-noellipse log
x10134:	mov word [bp + 34], pow$80	; 5: -57 70 34 -92 39
x10139:	mov [bp + 36], bp	; 3: -119 110 36
x10142:	add bp, 34	; 3: -125 -59 34
x10145:	jmp log	; 3: -23 101 -3

pow$80:	; post call
x10148:	fstp qword [bp + 34]	; 3: -35 94 34
x10151:	fld qword [bp + 26]	; 3: -35 70 26
x10154:	fld qword [bp + 34]	; 3: -35 70 34

pow$81:	; £temporary576 = return_value

pow$82:	; £temporary577 = y * £temporary576
x10157:	fmul	; 2: -34 -55

pow$83:	; parameter £temporary577, offset 6
x10159:	fstp qword [bp + 32]	; 3: -35 94 32

pow$84:	; call function noellipse-noellipse exp
x10162:	mov word [bp + 26], pow$85	; 5: -57 70 26 -64 39
x10167:	mov [bp + 28], bp	; 3: -119 110 28
x10170:	add bp, 26	; 3: -125 -59 26
x10173:	nop	; 1: -112
x10174:	jmp exp	; 2: -21 36

pow$85:	; post call

pow$86:	; £temporary578 = return_value

pow$87:	; £temporary579 = -£temporary578
x10176:	fchs	; 2: -39 -32

pow$88:	; return_value = £temporary579

pow$89:	; return
x10178:	mov ax, [bp]	; 3: -117 70 0
x10181:	mov di, [bp + 4]	; 3: -117 126 4
x10184:	mov bp, [bp + 2]	; 3: -117 110 2
x10187:	jmp ax	; 2: -1 -32

pow$90:	; errno = 6
x10189:	mov word [errno], 6	; 6: -57 6 57 38 6 0

pow$91:	; push 0
x10195:	fldz	; 2: -39 -18

pow$92:	; return_value = 0

pow$93:	; return
x10197:	mov ax, [bp]	; 3: -117 70 0
x10200:	mov di, [bp + 4]	; 3: -117 126 4
x10203:	mov bp, [bp + 2]	; 3: -117 110 2
x10206:	jmp ax	; 2: -1 -32

pow$94:	; function end pow

int4$2#:
x10208:	dd 2	; 4: 2 0 0 0

exp:	; push 1
x10212:	fld1	; 2: -39 -24

exp$1:	; pop float index
x10214:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x10217:	fld1	; 2: -39 -24

exp$3:	; pop float sum
x10219:	fstp qword [bp + 30]	; 3: -35 94 30

exp$4:	; push 1
x10222:	fld1	; 2: -39 -24

exp$5:	; pop float faculty
x10224:	fstp qword [bp + 38]	; 3: -35 94 38

exp$6:	; push float x
x10227:	fld qword [bp + 6]	; 3: -35 70 6

exp$7:	; pop float power
x10230:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x10233:	fld qword [bp + 46]	; 3: -35 70 46

exp$9:	; push float faculty
x10236:	fld qword [bp + 38]	; 3: -35 70 38

exp$10:	; £temporary521 = power / faculty
x10239:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x10241:	fstp qword [bp + 22]	; 3: -35 94 22

exp$12:	; push float sum
x10244:	fld qword [bp + 30]	; 3: -35 70 30

exp$13:	; push float term
x10247:	fld qword [bp + 22]	; 3: -35 70 22

exp$14:	; £temporary522 = sum + term
x10250:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x10252:	fstp qword [bp + 30]	; 3: -35 94 30

exp$16:	; push float power
x10255:	fld qword [bp + 46]	; 3: -35 70 46

exp$17:	; push float x
x10258:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary523 = power * x
x10261:	fmul	; 2: -34 -55

exp$19:	; pop float power
x10263:	fstp qword [bp + 46]	; 3: -35 94 46

exp$20:	; push float faculty
x10266:	fld qword [bp + 38]	; 3: -35 70 38

exp$21:	; push float index
x10269:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x10272:	fld1	; 2: -39 -24

exp$23:	; index = index + 1
x10274:	fadd	; 2: -34 -63

exp$24:	; top float index
x10276:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary525 = faculty * £temporary524
x10279:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x10281:	fstp qword [bp + 38]	; 3: -35 94 38

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x10284:	fld qword [bp + 22]	; 3: -35 70 22

exp$29:	; parameter term, offset 6
x10287:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x10290:	mov word [bp + 54], exp$31	; 5: -57 70 54 64 40
x10295:	mov [bp + 56], bp	; 3: -119 110 56
x10298:	add bp, 54	; 3: -125 -59 54
x10301:	jmp fabs	; 3: -23 114 -6

exp$31:	; post call

exp$32:	; £temporary526 = return_value

exp$33:	; push float 0.000000001
x10304:	fld qword [float8$0.000000001#]	; 4: -35 6 49 38

exp$34:	; if £temporary526 >= 0.000000001 goto 8
x10308:	fcompp	; 2: -34 -39
x10310:	fstsw ax	; 3: -101 -33 -32
x10313:	sahf	; 1: -98
x10314:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x10316:	fld qword [bp + 30]	; 3: -35 70 30

exp$36:	; return_value = sum

exp$37:	; return
x10319:	mov ax, [bp]	; 3: -117 70 0
x10322:	mov di, [bp + 4]	; 3: -117 126 4
x10325:	mov bp, [bp + 2]	; 3: -117 110 2
x10328:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

floor:	; push float x
x10330:	fld qword [bp + 6]	; 3: -35 70 6

floor$1:	; push 0
x10333:	fldz	; 2: -39 -18

floor$2:	; if x >= 0 goto 13
x10335:	fcompp	; 2: -34 -39
x10337:	fstsw ax	; 3: -101 -33 -32
x10340:	sahf	; 1: -98
x10341:	jbe floor$13	; 2: 118 35

floor$3:	; call header integral zero 0 stack zero 0

floor$4:	; push float x
x10343:	fld qword [bp + 6]	; 3: -35 70 6

floor$5:	; £temporary805 = -x
x10346:	fchs	; 2: -39 -32

floor$6:	; parameter £temporary805, offset 6
x10348:	fstp qword [bp + 20]	; 3: -35 94 20

floor$7:	; call function noellipse-noellipse ceil
x10351:	mov word [bp + 14], floor$8	; 5: -57 70 14 125 40
x10356:	mov [bp + 16], bp	; 3: -119 110 16
x10359:	add bp, 14	; 3: -125 -59 14
x10362:	nop	; 1: -112
x10363:	jmp ceil	; 2: -21 43

floor$8:	; post call

floor$9:	; £temporary806 = return_value

floor$10:	; £temporary807 = -£temporary806
x10365:	fchs	; 2: -39 -32

floor$11:	; return_value = £temporary807

floor$12:	; return
x10367:	mov ax, [bp]	; 3: -117 70 0
x10370:	mov di, [bp + 4]	; 3: -117 126 4
x10373:	mov bp, [bp + 2]	; 3: -117 110 2
x10376:	jmp ax	; 2: -1 -32

floor$13:	; push float x
x10378:	fld qword [bp + 6]	; 3: -35 70 6

floor$14:	; £temporary808 = float_to_int x (Double -> Signed_Long_Int)
x10381:	fistp dword [container4bytes#]	; 4: -37 30 6 34
x10385:	mov eax, [container4bytes#]	; 4: 102 -95 6 34

floor$15:	; £temporary809 = int_to_float £temporary808 (Signed_Long_Int -> Double)
x10389:	mov [container4bytes#], eax	; 4: 102 -93 6 34
x10393:	fild dword [container4bytes#]	; 4: -37 6 6 34

floor$16:	; return_value = £temporary809

floor$17:	; return
x10397:	mov ax, [bp]	; 3: -117 70 0
x10400:	mov di, [bp + 4]	; 3: -117 126 4
x10403:	mov bp, [bp + 2]	; 3: -117 110 2
x10406:	jmp ax	; 2: -1 -32

floor$18:	; function end floor

ceil:	; push float x
x10408:	fld qword [bp + 6]	; 3: -35 70 6

ceil$1:	; push 0
x10411:	fldz	; 2: -39 -18

ceil$2:	; if x >= 0 goto 13
x10413:	fcompp	; 2: -34 -39
x10415:	fstsw ax	; 3: -101 -33 -32
x10418:	sahf	; 1: -98
x10419:	jbe ceil$13	; 2: 118 35

ceil$3:	; call header integral zero 0 stack zero 0

ceil$4:	; push float x
x10421:	fld qword [bp + 6]	; 3: -35 70 6

ceil$5:	; £temporary812 = -x
x10424:	fchs	; 2: -39 -32

ceil$6:	; parameter £temporary812, offset 6
x10426:	fstp qword [bp + 20]	; 3: -35 94 20

ceil$7:	; call function noellipse-noellipse floor
x10429:	mov word [bp + 14], ceil$8	; 5: -57 70 14 -53 40
x10434:	mov [bp + 16], bp	; 3: -119 110 16
x10437:	add bp, 14	; 3: -125 -59 14
x10440:	nop	; 1: -112
x10441:	jmp floor	; 2: -21 -113

ceil$8:	; post call

ceil$9:	; £temporary813 = return_value

ceil$10:	; £temporary814 = -£temporary813
x10443:	fchs	; 2: -39 -32

ceil$11:	; return_value = £temporary814

ceil$12:	; return
x10445:	mov ax, [bp]	; 3: -117 70 0
x10448:	mov di, [bp + 4]	; 3: -117 126 4
x10451:	mov bp, [bp + 2]	; 3: -117 110 2
x10454:	jmp ax	; 2: -1 -32

ceil$13:	; push float x
x10456:	fld qword [bp + 6]	; 3: -35 70 6

ceil$14:	; push float 0.999999999999
x10459:	fld qword [float8$0.999999999999#]	; 4: -35 6 -4 40

ceil$15:	; £temporary815 = x + 0.999999999999
x10463:	fadd	; 2: -34 -63

ceil$16:	; £temporary816 = float_to_int £temporary815 (Double -> Signed_Long_Int)
x10465:	fistp dword [container4bytes#]	; 4: -37 30 6 34
x10469:	mov eax, [container4bytes#]	; 4: 102 -95 6 34

ceil$17:	; £temporary817 = int_to_float £temporary816 (Signed_Long_Int -> Double)
x10473:	mov [container4bytes#], eax	; 4: 102 -93 6 34
x10477:	fild dword [container4bytes#]	; 4: -37 6 6 34

ceil$18:	; return_value = £temporary817

ceil$19:	; return
x10481:	mov ax, [bp]	; 3: -117 70 0
x10484:	mov di, [bp + 4]	; 3: -117 126 4
x10487:	mov bp, [bp + 2]	; 3: -117 110 2
x10490:	jmp ax	; 2: -1 -32

ceil$20:	; function end ceil

float8$0.999999999999#:
x10492:	dq 0.999999999999	; 8: -47 -36 -1 -1 -1 -1 -17 63

isdigit:	; if c < 48 goto 4
x10500:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x10504:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x10506:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x10510:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary406 = 1
x10512:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x10515:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary406 = 0
x10517:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary406

isdigit$6:	; return
x10520:	mov ax, [bp]	; 3: -117 70 0
x10523:	mov di, [bp + 4]	; 3: -117 126 4
x10526:	mov bp, [bp + 2]	; 3: -117 110 2
x10529:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

localtime:	; call header integral zero 0 stack zero 0

localtime$1:	; parameter timePtr, offset 6
x10531:	mov ax, [bp + 6]	; 3: -117 70 6
x10534:	mov [bp + 14], ax	; 3: -119 70 14

localtime$2:	; call function noellipse-noellipse gmtime
x10537:	mov word [bp + 8], localtime$3	; 5: -57 70 8 55 41
x10542:	mov [bp + 10], bp	; 3: -119 110 10
x10545:	add bp, 8	; 3: -125 -59 8
x10548:	jmp gmtime	; 3: -23 60 -33

localtime$3:	; post call

localtime$4:	; £temporary3646 = return_value

localtime$5:	; tmPtr = £temporary3646
x10551:	mov [bp + 8], bx	; 3: -119 94 8

localtime$6:	; call header integral zero 0 stack zero 0

localtime$7:	; call function noellipse-noellipse localeconv
x10554:	mov word [bp + 10], localtime$8	; 5: -57 70 10 72 41
x10559:	mov [bp + 12], bp	; 3: -119 110 12
x10562:	add bp, 10	; 3: -125 -59 10
x10565:	jmp localeconv	; 3: -23 5 -13

localtime$8:	; post call

localtime$9:	; £temporary3647 = return_value

localtime$10:	; localeConvPtr = £temporary3647
x10568:	mov [bp + 10], bx	; 3: -119 94 10

localtime$11:	; timeZone = 0
x10571:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

localtime$12:	; if localeConvPtr == 0 goto 21
x10576:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x10580:	je localtime$21	; 2: 116 25

localtime$13:	; £temporary3649 -> tmPtr = *tmPtr, offset 16
x10582:	mov si, [bp + 8]	; 3: -117 118 8

localtime$14:	; if £temporary3649 -> tmPtr == 0 goto 18
x10585:	cmp word [si + 16], 0	; 4: -125 124 16 0
x10589:	je localtime$18	; 2: 116 7

localtime$15:	; £temporary3650 -> localeConvPtr = *localeConvPtr
x10591:	mov si, [bp + 10]	; 3: -117 118 10

localtime$16:	; £temporary3656 = £temporary3650 -> localeConvPtr
x10594:	mov ax, [si]	; 2: -117 4

localtime$17:	; goto 20
x10596:	jmp localtime$20	; 2: -21 6

localtime$18:	; £temporary3651 -> localeConvPtr = *localeConvPtr, offset 2
x10598:	mov si, [bp + 10]	; 3: -117 118 10

localtime$19:	; £temporary3656 = £temporary3651 -> localeConvPtr
x10601:	mov ax, [si + 2]	; 3: -117 68 2

localtime$20:	; timeZone = £temporary3656
x10604:	mov [bp + 12], ax	; 3: -119 70 12

localtime$21:	; £temporary3657 -> timePtr = *timePtr
x10607:	mov si, [bp + 6]	; 3: -117 118 6

localtime$22:	; £temporary3658 = timeZone * 3600
x10610:	mov ax, [bp + 12]	; 3: -117 70 12
x10613:	xor dx, dx	; 2: 49 -46
x10615:	imul word [int2$3600#]	; 4: -9 46 -84 41

localtime$23:	; £temporary3659 = int_to_int £temporary3658 (Signed_Int -> Unsigned_Long_Int)
x10619:	and eax, 65535	; 6: 102 37 -1 -1 0 0

localtime$24:	; time = £temporary3657 -> timePtr + £temporary3659
x10625:	mov ebx, [si]	; 3: 102 -117 28
x10628:	add ebx, eax	; 3: 102 1 -61
x10631:	mov [bp + 14], ebx	; 4: 102 -119 94 14

localtime$25:	; call header integral zero 0 stack zero 0

localtime$26:	; £temporary3661 = &time
x10635:	mov si, bp	; 2: -119 -18
x10637:	add si, 14	; 3: -125 -58 14

localtime$27:	; parameter £temporary3661, offset 6
x10640:	mov [bp + 24], si	; 3: -119 118 24

localtime$28:	; call function noellipse-noellipse gmtime
x10643:	mov word [bp + 18], localtime$29	; 5: -57 70 18 -95 41
x10648:	mov [bp + 20], bp	; 3: -119 110 20
x10651:	add bp, 18	; 3: -125 -59 18
x10654:	jmp gmtime	; 3: -23 -46 -34

localtime$29:	; post call

localtime$30:	; £temporary3662 = return_value

localtime$31:	; return_value = £temporary3662

localtime$32:	; return
x10657:	mov ax, [bp]	; 3: -117 70 0
x10660:	mov di, [bp + 4]	; 3: -117 126 4
x10663:	mov bp, [bp + 2]	; 3: -117 110 2
x10666:	jmp ax	; 2: -1 -32

localtime$33:	; function end localtime

int2$3600#:
x10668:	dw 3600	; 2: 16 14

asctime:	; localeConvPtr = 0
x10670:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

asctime$1:	; if localeConvPtr == 0 goto 5
x10675:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10679:	je asctime$5	; 2: 116 8

asctime$2:	; £temporary3597 -> localeConvPtr = *localeConvPtr, offset 4
x10681:	mov si, [bp + 8]	; 3: -117 118 8

asctime$3:	; £temporary3601 = £temporary3597 -> localeConvPtr
x10684:	mov ax, [si + 4]	; 3: -117 68 4

asctime$4:	; goto 6
x10687:	jmp asctime$6	; 2: -21 3

asctime$5:	; £temporary3601 = 0
x10689:	mov ax, 0	; 3: -72 0 0

asctime$6:	; shortDayList = £temporary3601
x10692:	mov [bp + 10], ax	; 3: -119 70 10

asctime$7:	; if localeConvPtr == 0 goto 11
x10695:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10699:	je asctime$11	; 2: 116 8

asctime$8:	; £temporary3603 -> localeConvPtr = *localeConvPtr, offset 8
x10701:	mov si, [bp + 8]	; 3: -117 118 8

asctime$9:	; £temporary3607 = £temporary3603 -> localeConvPtr
x10704:	mov ax, [si + 8]	; 3: -117 68 8

asctime$10:	; goto 12
x10707:	jmp asctime$12	; 2: -21 3

asctime$11:	; £temporary3607 = 0
x10709:	mov ax, 0	; 3: -72 0 0

asctime$12:	; shortMonthList = £temporary3607
x10712:	mov [bp + 12], ax	; 3: -119 70 12

asctime$13:	; if shortDayList == 0 goto 16
x10715:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x10719:	je asctime$16	; 2: 116 5

asctime$14:	; £temporary3612 = shortDayList
x10721:	mov ax, [bp + 10]	; 3: -117 70 10

asctime$15:	; goto 17
x10724:	jmp asctime$17	; 2: -21 3

asctime$16:	; £temporary3612 = g_defaultShortDayList
x10726:	mov ax, @32$g_defaultShortDayList	; 3: -72 -125 42

asctime$17:	; shortDayList = £temporary3612
x10729:	mov [bp + 10], ax	; 3: -119 70 10

asctime$18:	; if shortMonthList == 0 goto 21
x10732:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x10736:	je asctime$21	; 2: 116 5

asctime$19:	; £temporary3617 = shortMonthList
x10738:	mov ax, [bp + 12]	; 3: -117 70 12

asctime$20:	; goto 22
x10741:	jmp asctime$22	; 2: -21 3

asctime$21:	; £temporary3617 = g_defaultShortMonthList
x10743:	mov ax, @34$g_defaultShortMonthList	; 3: -72 -111 42

asctime$22:	; shortMonthList = £temporary3617
x10746:	mov [bp + 12], ax	; 3: -119 70 12

asctime$23:	; call header integral zero 0 stack zero 0

asctime$24:	; parameter g_timeString, offset 6
x10749:	mov word [bp + 20], @31$g_timeString	; 5: -57 70 20 -87 42

asctime$25:	; parameter string_25s2025s2025i2025i3A25i3A25i2025i#, offset 8
x10754:	mov word [bp + 22], string_25s2025s2025i2025i3A25i3A25i2025i#	; 5: -57 70 22 -87 43

asctime$26:	; £temporary3618 -> tp = *tp, offset 12
x10759:	mov si, [bp + 6]	; 3: -117 118 6

asctime$27:	; £temporary3620 = £temporary3618 -> tp * 2
x10762:	mov ax, [si + 12]	; 3: -117 68 12
x10765:	xor dx, dx	; 2: 49 -46
x10767:	mul word [int2$2#]	; 4: -9 38 -114 4

asctime$28:	; £temporary3621 = shortDayList + £temporary3620
x10771:	mov si, [bp + 10]	; 3: -117 118 10
x10774:	add si, ax	; 2: 1 -58

asctime$29:	; £temporary3619 -> £temporary3621 = *£temporary3621

asctime$30:	; parameter £temporary3619 -> £temporary3621, offset 10
x10776:	mov ax, [si]	; 2: -117 4
x10778:	mov [bp + 24], ax	; 3: -119 70 24

asctime$31:	; £temporary3622 -> tp = *tp, offset 8
x10781:	mov si, [bp + 6]	; 3: -117 118 6

asctime$32:	; £temporary3624 = £temporary3622 -> tp * 2
x10784:	mov ax, [si + 8]	; 3: -117 68 8
x10787:	xor dx, dx	; 2: 49 -46
x10789:	mul word [int2$2#]	; 4: -9 38 -114 4

asctime$33:	; £temporary3625 = shortMonthList + £temporary3624
x10793:	mov si, [bp + 12]	; 3: -117 118 12
x10796:	add si, ax	; 2: 1 -58

asctime$34:	; £temporary3623 -> £temporary3625 = *£temporary3625

asctime$35:	; parameter £temporary3623 -> £temporary3625, offset 12
x10798:	mov ax, [si]	; 2: -117 4
x10800:	mov [bp + 26], ax	; 3: -119 70 26

asctime$36:	; £temporary3626 -> tp = *tp, offset 6
x10803:	mov si, [bp + 6]	; 3: -117 118 6

asctime$37:	; parameter £temporary3626 -> tp, offset 14
x10806:	mov ax, [si + 6]	; 3: -117 68 6
x10809:	mov [bp + 28], ax	; 3: -119 70 28

asctime$38:	; £temporary3627 -> tp = *tp, offset 4
x10812:	mov si, [bp + 6]	; 3: -117 118 6

asctime$39:	; parameter £temporary3627 -> tp, offset 16
x10815:	mov ax, [si + 4]	; 3: -117 68 4
x10818:	mov [bp + 30], ax	; 3: -119 70 30

asctime$40:	; £temporary3628 -> tp = *tp, offset 2
x10821:	mov si, [bp + 6]	; 3: -117 118 6

asctime$41:	; parameter £temporary3628 -> tp, offset 18
x10824:	mov ax, [si + 2]	; 3: -117 68 2
x10827:	mov [bp + 32], ax	; 3: -119 70 32

asctime$42:	; £temporary3629 -> tp = *tp
x10830:	mov si, [bp + 6]	; 3: -117 118 6

asctime$43:	; parameter £temporary3629 -> tp, offset 20
x10833:	mov ax, [si]	; 2: -117 4
x10835:	mov [bp + 34], ax	; 3: -119 70 34

asctime$44:	; £temporary3630 -> tp = *tp, offset 10
x10838:	mov si, [bp + 6]	; 3: -117 118 6

asctime$45:	; £temporary3631 = £temporary3630 -> tp + 1900
x10841:	mov ax, [si + 10]	; 3: -117 68 10
x10844:	add ax, 1900	; 3: 5 108 7

asctime$46:	; parameter £temporary3631, offset 22
x10847:	mov [bp + 36], ax	; 3: -119 70 36

asctime$47:	; call function noellipse-ellipse sprintf, extra 0
x10850:	mov word [bp + 14], asctime$48	; 5: -57 70 14 117 42
x10855:	mov [bp + 16], bp	; 3: -119 110 16
x10858:	add bp, 14	; 3: -125 -59 14
x10861:	mov di, bp	; 2: -119 -17
x10863:	add di, 14	; 3: -125 -57 14
x10866:	jmp sprintf	; 3: -23 73 1

asctime$48:	; post call

asctime$49:	; return_value = g_timeString
x10869:	mov bx, @31$g_timeString	; 3: -69 -87 42

asctime$50:	; return
x10872:	mov ax, [bp]	; 3: -117 70 0
x10875:	mov di, [bp + 4]	; 3: -117 126 4
x10878:	mov bp, [bp + 2]	; 3: -117 110 2
x10881:	jmp ax	; 2: -1 -32

asctime$51:	; function end asctime

@32$g_defaultShortDayList:
x10883:	dw string_Sun# ; 2: 5 4
x10885:	dw string_Mon# ; 2: 9 4
x10887:	dw string_Tue# ; 2: 13 4
x10889:	dw string_Wed# ; 2: 17 4
x10891:	dw string_Thu# ; 2: 21 4
x10893:	dw string_Fri# ; 2: 25 4
x10895:	dw string_Sat# ; 2: 29 4

@34$g_defaultShortMonthList:
x10897:	dw string_Jan# ; 2: -7 28
x10899:	dw string_Feb# ; 2: -3 28
x10901:	dw string_Mar# ; 2: 1 29
x10903:	dw string_Apr# ; 2: 5 29
x10905:	dw string_May# ; 2: 9 29
x10907:	dw string_Jun# ; 2: 13 29
x10909:	dw string_Jul# ; 2: 17 29
x10911:	dw string_Aug# ; 2: 21 29
x10913:	dw string_Sep# ; 2: 25 29
x10915:	dw string_Oct# ; 2: 29 29
x10917:	dw string_Nov# ; 2: 33 29
x10919:	dw string_Dec# ; 2: 37 29

@31$g_timeString:
x10921:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 256: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

string_25s2025s2025i2025i3A25i3A25i2025i#:
x11177:	db "%s %s %i %i:%i:%i %i", 0	; 21: 37 115 32 37 115 32 37 105 32 37 105 58 37 105 58 37 105 32 37 105 0

sprintf:	; £temporary2404 = &format
x11198:	mov si, bp	; 2: -119 -18
x11200:	add si, 8	; 3: -125 -58 8

sprintf$1:	; £temporary2405 = int_to_int £temporary2404 (Pointer -> Pointer)

sprintf$2:	; arg_list = £temporary2405 + 2
x11203:	add si, 2	; 3: -125 -58 2
x11206:	mov [di + 10], si	; 3: -119 117 10

sprintf$3:	; call header integral zero 0 stack zero 0

sprintf$4:	; parameter outString, offset 6
x11209:	mov ax, [bp + 6]	; 3: -117 70 6
x11212:	mov [di + 18], ax	; 3: -119 69 18

sprintf$5:	; parameter format, offset 8
x11215:	mov ax, [bp + 8]	; 3: -117 70 8
x11218:	mov [di + 20], ax	; 3: -119 69 20

sprintf$6:	; parameter arg_list, offset 10
x11221:	mov ax, [di + 10]	; 3: -117 69 10
x11224:	mov [di + 22], ax	; 3: -119 69 22

sprintf$7:	; call function ellipse-noellipse vsprintf
x11227:	mov word [di + 12], sprintf$8	; 5: -57 69 12 -18 43
x11232:	mov [di + 14], bp	; 3: -119 109 14
x11235:	mov [di + 16], di	; 3: -119 125 16
x11238:	add di, 12	; 3: -125 -57 12
x11241:	mov bp, di	; 2: -119 -3
x11243:	nop	; 1: -112
x11244:	jmp vsprintf	; 2: -21 11

sprintf$8:	; post call

sprintf$9:	; £temporary2407 = return_value

sprintf$10:	; return_value = £temporary2407

sprintf$11:	; return
x11246:	mov ax, [bp]	; 3: -117 70 0
x11249:	mov di, [bp + 4]	; 3: -117 126 4
x11252:	mov bp, [bp + 2]	; 3: -117 110 2
x11255:	jmp ax	; 2: -1 -32

sprintf$12:	; function end sprintf

vsprintf:	; g_outStatus = 1
x11257:	mov word [g_outStatus], 1	; 6: -57 6 -83 13 1 0

vsprintf$1:	; £temporary2412 = int_to_int outString (Pointer -> Pointer)
x11263:	mov ax, [bp + 6]	; 3: -117 70 6

vsprintf$2:	; g_outDevice = £temporary2412
x11266:	mov [g_outDevice], ax	; 3: -93 -81 13

vsprintf$3:	; call header integral zero 0 stack zero 0

vsprintf$4:	; parameter format, offset 6
x11269:	mov ax, [bp + 8]	; 3: -117 70 8
x11272:	mov [bp + 18], ax	; 3: -119 70 18

vsprintf$5:	; parameter arg_list, offset 8
x11275:	mov ax, [bp + 10]	; 3: -117 70 10
x11278:	mov [bp + 20], ax	; 3: -119 70 20

vsprintf$6:	; call function noellipse-noellipse printFormat
x11281:	mov word [bp + 12], vsprintf$7	; 5: -57 70 12 31 44
x11286:	mov [bp + 14], bp	; 3: -119 110 14
x11289:	add bp, 12	; 3: -125 -59 12
x11292:	jmp printFormat	; 3: -23 -110 -31

vsprintf$7:	; post call

vsprintf$8:	; £temporary2413 = return_value

vsprintf$9:	; return_value = £temporary2413

vsprintf$10:	; return
x11295:	mov ax, [bp]	; 3: -117 70 0
x11298:	mov di, [bp + 4]	; 3: -117 126 4
x11301:	mov bp, [bp + 2]	; 3: -117 110 2
x11304:	jmp ax	; 2: -1 -32

vsprintf$11:	; function end vsprintf

strcpy:	; index = 0
x11306:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcpy$1:	; £temporary3907 = source + index
x11311:	mov si, [bp + 8]	; 3: -117 118 8
x11314:	add si, [bp + 10]	; 3: 3 118 10

strcpy$2:	; £temporary3906 -> £temporary3907 = *£temporary3907

strcpy$3:	; if £temporary3906 -> £temporary3907 == 0 goto 11
x11317:	cmp byte [si], 0	; 3: -128 60 0
x11320:	je strcpy$11	; 2: 116 21

strcpy$4:	; £temporary3911 = target + index
x11322:	mov si, [bp + 6]	; 3: -117 118 6
x11325:	add si, [bp + 10]	; 3: 3 118 10

strcpy$5:	; £temporary3910 -> £temporary3911 = *£temporary3911

strcpy$6:	; £temporary3913 = source + index
x11328:	mov di, [bp + 8]	; 3: -117 126 8
x11331:	add di, [bp + 10]	; 3: 3 126 10

strcpy$7:	; £temporary3912 -> £temporary3913 = *£temporary3913

strcpy$8:	; £temporary3910 -> £temporary3911 = £temporary3912 -> £temporary3913
x11334:	mov al, [di]	; 2: -118 5
x11336:	mov [si], al	; 2: -120 4

strcpy$9:	; ++index
x11338:	inc word [bp + 10]	; 3: -1 70 10

strcpy$10:	; goto 1
x11341:	jmp strcpy$1	; 2: -21 -32

strcpy$11:	; £temporary3915 = target + index
x11343:	mov si, [bp + 6]	; 3: -117 118 6
x11346:	add si, [bp + 10]	; 3: 3 118 10

strcpy$12:	; £temporary3914 -> £temporary3915 = *£temporary3915

strcpy$13:	; £temporary3914 -> £temporary3915 = 0
x11349:	mov byte [si], 0	; 3: -58 4 0

strcpy$14:	; return_value = target
x11352:	mov bx, [bp + 6]	; 3: -117 94 6

strcpy$15:	; return
x11355:	mov ax, [bp]	; 3: -117 70 0
x11358:	mov di, [bp + 4]	; 3: -117 126 4
x11361:	mov bp, [bp + 2]	; 3: -117 110 2
x11364:	jmp ax	; 2: -1 -32

strcpy$16:	; function end strcpy

ctime:	; call header integral zero 0 stack zero 0

ctime$1:	; call header integral zero 0 stack zero 0

ctime$2:	; parameter time, offset 6
x11366:	mov ax, [bp + 6]	; 3: -117 70 6
x11369:	mov [bp + 14], ax	; 3: -119 70 14

ctime$3:	; call function noellipse-noellipse localtime
x11372:	mov word [bp + 8], ctime$4	; 5: -57 70 8 122 44
x11377:	mov [bp + 10], bp	; 3: -119 110 10
x11380:	add bp, 8	; 3: -125 -59 8
x11383:	jmp localtime	; 3: -23 -87 -4

ctime$4:	; post call

ctime$5:	; £temporary3642 = return_value

ctime$6:	; parameter £temporary3642, offset 6
x11386:	mov [bp + 14], bx	; 3: -119 94 14

ctime$7:	; call function noellipse-noellipse asctime
x11389:	mov word [bp + 8], ctime$8	; 5: -57 70 8 -117 44
x11394:	mov [bp + 10], bp	; 3: -119 110 10
x11397:	add bp, 8	; 3: -125 -59 8
x11400:	jmp asctime	; 3: -23 35 -3

ctime$8:	; post call

ctime$9:	; £temporary3643 = return_value

ctime$10:	; return_value = £temporary3643

ctime$11:	; return
x11403:	mov ax, [bp]	; 3: -117 70 0
x11406:	mov di, [bp + 4]	; 3: -117 126 4
x11409:	mov bp, [bp + 2]	; 3: -117 110 2
x11412:	jmp ax	; 2: -1 -32

ctime$12:	; function end ctime

strftime:	; call header integral zero 0 stack zero 0

strftime$1:	; call function noellipse-noellipse localeconv
x11414:	mov word [bp + 14], strftime$2	; 5: -57 70 14 -92 44
x11419:	mov [bp + 16], bp	; 3: -119 110 16
x11422:	add bp, 14	; 3: -125 -59 14
x11425:	jmp localeconv	; 3: -23 -87 -17

strftime$2:	; post call

strftime$3:	; £temporary3666 = return_value

strftime$4:	; localeConvPtr = £temporary3666
x11428:	mov [bp + 14], bx	; 3: -119 94 14

strftime$5:	; if localeConvPtr == 0 goto 9
x11431:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x11435:	je strftime$9	; 2: 116 8

strftime$6:	; £temporary3668 -> localeConvPtr = *localeConvPtr, offset 4
x11437:	mov si, [bp + 14]	; 3: -117 118 14

strftime$7:	; £temporary3672 = £temporary3668 -> localeConvPtr
x11440:	mov ax, [si + 4]	; 3: -117 68 4

strftime$8:	; goto 10
x11443:	jmp strftime$10	; 2: -21 3

strftime$9:	; £temporary3672 = 0
x11445:	mov ax, 0	; 3: -72 0 0

strftime$10:	; shortDayList = £temporary3672
x11448:	mov [bp + 16], ax	; 3: -119 70 16

strftime$11:	; if localeConvPtr == 0 goto 15
x11451:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x11455:	je strftime$15	; 2: 116 8

strftime$12:	; £temporary3674 -> localeConvPtr = *localeConvPtr, offset 8
x11457:	mov si, [bp + 14]	; 3: -117 118 14

strftime$13:	; £temporary3678 = £temporary3674 -> localeConvPtr
x11460:	mov ax, [si + 8]	; 3: -117 68 8

strftime$14:	; goto 16
x11463:	jmp strftime$16	; 2: -21 3

strftime$15:	; £temporary3678 = 0
x11465:	mov ax, 0	; 3: -72 0 0

strftime$16:	; shortMonthList = £temporary3678
x11468:	mov [bp + 18], ax	; 3: -119 70 18

strftime$17:	; if localeConvPtr == 0 goto 21
x11471:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x11475:	je strftime$21	; 2: 116 8

strftime$18:	; £temporary3680 -> localeConvPtr = *localeConvPtr, offset 6
x11477:	mov si, [bp + 14]	; 3: -117 118 14

strftime$19:	; £temporary3684 = £temporary3680 -> localeConvPtr
x11480:	mov ax, [si + 6]	; 3: -117 68 6

strftime$20:	; goto 22
x11483:	jmp strftime$22	; 2: -21 3

strftime$21:	; £temporary3684 = 0
x11485:	mov ax, 0	; 3: -72 0 0

strftime$22:	; longDayList = £temporary3684
x11488:	mov [bp + 20], ax	; 3: -119 70 20

strftime$23:	; if localeConvPtr == 0 goto 27
x11491:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x11495:	je strftime$27	; 2: 116 8

strftime$24:	; £temporary3686 -> localeConvPtr = *localeConvPtr, offset 10
x11497:	mov si, [bp + 14]	; 3: -117 118 14

strftime$25:	; £temporary3690 = £temporary3686 -> localeConvPtr
x11500:	mov ax, [si + 10]	; 3: -117 68 10

strftime$26:	; goto 28
x11503:	jmp strftime$28	; 2: -21 3

strftime$27:	; £temporary3690 = 0
x11505:	mov ax, 0	; 3: -72 0 0

strftime$28:	; longMonthList = £temporary3690
x11508:	mov [bp + 22], ax	; 3: -119 70 22

strftime$29:	; £temporary3691 -> tp = *tp, offset 10
x11511:	mov si, [bp + 12]	; 3: -117 118 12

strftime$30:	; £temporary3692 = £temporary3691 -> tp - 69
x11514:	mov ax, [si + 10]	; 3: -117 68 10
x11517:	sub ax, 69	; 3: -125 -24 69

strftime$31:	; leapDays = £temporary3692 / 4
x11520:	xor dx, dx	; 2: 49 -46
x11522:	idiv word [int2$4#]	; 4: -9 62 114 7
x11526:	mov [bp + 24], ax	; 3: -119 70 24

strftime$32:	; £temporary3694 -> tp = *tp, offset 10
x11529:	mov si, [bp + 12]	; 3: -117 118 12

strftime$33:	; £temporary3695 = £temporary3694 -> tp - 70
x11532:	mov ax, [si + 10]	; 3: -117 68 10
x11535:	sub ax, 70	; 3: -125 -24 70

strftime$34:	; £temporary3696 = £temporary3695 * 365
x11538:	xor dx, dx	; 2: 49 -46
x11540:	imul word [int2$365#]	; 4: -9 46 101 8

strftime$35:	; £temporary3697 = £temporary3696 + leapDays
x11544:	add ax, [bp + 24]	; 3: 3 70 24

strftime$36:	; £temporary3698 -> tp = *tp, offset 14
x11547:	mov si, [bp + 12]	; 3: -117 118 12

strftime$37:	; £temporary3699 = £temporary3697 + £temporary3698 -> tp
x11550:	add ax, [si + 14]	; 3: 3 68 14

strftime$38:	; £temporary3700 = int_to_int £temporary3699 (Signed_Int -> Signed_Long_Int)
x11553:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x11559:	cmp ax, 0	; 3: -125 -8 0
x11562:	jge strftime$39	; 2: 125 5
x11564:	neg ax	; 2: -9 -40
x11566:	neg eax	; 3: 102 -9 -40

strftime$39:	; totalDays = £temporary3700
x11569:	mov [bp + 26], eax	; 4: 102 -119 70 26

strftime$40:	; call header integral zero 0 stack zero 0

strftime$41:	; parameter s, offset 6
x11573:	mov ax, [bp + 6]	; 3: -117 70 6
x11576:	mov [bp + 40], ax	; 3: -119 70 40

strftime$42:	; parameter string_#, offset 8
x11579:	mov word [bp + 42], string_#	; 5: -57 70 42 121 28

strftime$43:	; call function noellipse-noellipse strcpy
x11584:	mov word [bp + 34], strftime$44	; 5: -57 70 34 78 45
x11589:	mov [bp + 36], bp	; 3: -119 110 36
x11592:	add bp, 34	; 3: -125 -59 34
x11595:	jmp strcpy	; 3: -23 -36 -2

strftime$44:	; post call

strftime$45:	; if shortDayList == 0 goto 48
x11598:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x11602:	je strftime$48	; 2: 116 5

strftime$46:	; £temporary3706 = shortDayList
x11604:	mov ax, [bp + 16]	; 3: -117 70 16

strftime$47:	; goto 49
x11607:	jmp strftime$49	; 2: -21 3

strftime$48:	; £temporary3706 = g_defaultShortDayList
x11609:	mov ax, @32$g_defaultShortDayList	; 3: -72 -125 42

strftime$49:	; shortDayList = £temporary3706
x11612:	mov [bp + 16], ax	; 3: -119 70 16

strftime$50:	; if longDayList == 0 goto 53
x11615:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x11619:	je strftime$53	; 2: 116 5

strftime$51:	; £temporary3711 = longDayList
x11621:	mov ax, [bp + 20]	; 3: -117 70 20

strftime$52:	; goto 54
x11624:	jmp strftime$54	; 2: -21 3

strftime$53:	; £temporary3711 = g_defaultLongDayList
x11626:	mov ax, @33$g_defaultLongDayList	; 3: -72 116 51

strftime$54:	; longDayList = £temporary3711
x11629:	mov [bp + 20], ax	; 3: -119 70 20

strftime$55:	; if shortMonthList == 0 goto 58
x11632:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x11636:	je strftime$58	; 2: 116 5

strftime$56:	; £temporary3716 = shortMonthList
x11638:	mov ax, [bp + 18]	; 3: -117 70 18

strftime$57:	; goto 59
x11641:	jmp strftime$59	; 2: -21 3

strftime$58:	; £temporary3716 = g_defaultShortMonthList
x11643:	mov ax, @34$g_defaultShortMonthList	; 3: -72 -111 42

strftime$59:	; shortMonthList = £temporary3716
x11646:	mov [bp + 18], ax	; 3: -119 70 18

strftime$60:	; if longMonthList == 0 goto 63
x11649:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x11653:	je strftime$63	; 2: 116 5

strftime$61:	; £temporary3721 = longMonthList
x11655:	mov ax, [bp + 22]	; 3: -117 70 22

strftime$62:	; goto 64
x11658:	jmp strftime$64	; 2: -21 3

strftime$63:	; £temporary3721 = g_defaultLongMonthList
x11660:	mov ax, @35$g_defaultLongMonthList	; 3: -72 -126 51

strftime$64:	; longMonthList = £temporary3721
x11663:	mov [bp + 22], ax	; 3: -119 70 22

strftime$65:	; if totalDays >= 3 goto 70
x11666:	cmp dword [bp + 26], 3	; 5: 102 -125 126 26 3
x11671:	jge strftime$70	; 2: 125 24

strftime$66:	; £temporary3723 = totalDays + 4
x11673:	mov eax, [bp + 26]	; 4: 102 -117 70 26
x11677:	add eax, 4	; 4: 102 -125 -64 4

strftime$67:	; £temporary3724 = int_to_int £temporary3723 (Signed_Long_Int -> Signed_Int)
x11681:	cmp eax, 0	; 4: 102 -125 -8 0
x11685:	jge strftime$68	; 2: 125 5
x11687:	neg eax	; 3: 102 -9 -40
x11690:	neg ax	; 2: -9 -40

strftime$68:	; yearDaySunday = £temporary3724
x11692:	mov [bp + 30], ax	; 3: -119 70 30

strftime$69:	; goto 74
x11695:	jmp strftime$74	; 2: -21 30

strftime$70:	; £temporary3725 = totalDays - 3
x11697:	mov eax, [bp + 26]	; 4: 102 -117 70 26
x11701:	sub eax, 3	; 4: 102 -125 -24 3

strftime$71:	; £temporary3726 = £temporary3725 % 7
x11705:	xor edx, edx	; 3: 102 49 -46
x11708:	idiv dword [int4$7#]	; 5: 102 -9 62 -50 10

strftime$72:	; £temporary3727 = int_to_int £temporary3726 (Signed_Long_Int -> Signed_Int)
x11713:	cmp edx, 0	; 4: 102 -125 -6 0
x11717:	jge strftime$73	; 2: 125 5
x11719:	neg edx	; 3: 102 -9 -38
x11722:	neg dx	; 2: -9 -38

strftime$73:	; yearDaySunday = £temporary3727
x11724:	mov [bp + 30], dx	; 3: -119 86 30

strftime$74:	; if totalDays >= 4 goto 79
x11727:	cmp dword [bp + 26], 4	; 5: 102 -125 126 26 4
x11732:	jge strftime$79	; 2: 125 24

strftime$75:	; £temporary3729 = totalDays + 3
x11734:	mov eax, [bp + 26]	; 4: 102 -117 70 26
x11738:	add eax, 3	; 4: 102 -125 -64 3

strftime$76:	; £temporary3730 = int_to_int £temporary3729 (Signed_Long_Int -> Signed_Int)
x11742:	cmp eax, 0	; 4: 102 -125 -8 0
x11746:	jge strftime$77	; 2: 125 5
x11748:	neg eax	; 3: 102 -9 -40
x11751:	neg ax	; 2: -9 -40

strftime$77:	; yearDayMonday = £temporary3730
x11753:	mov [bp + 32], ax	; 3: -119 70 32

strftime$78:	; goto 83
x11756:	jmp strftime$83	; 2: -21 30

strftime$79:	; £temporary3731 = totalDays - 4
x11758:	mov eax, [bp + 26]	; 4: 102 -117 70 26
x11762:	sub eax, 4	; 4: 102 -125 -24 4

strftime$80:	; £temporary3732 = £temporary3731 % 7
x11766:	xor edx, edx	; 3: 102 49 -46
x11769:	idiv dword [int4$7#]	; 5: 102 -9 62 -50 10

strftime$81:	; £temporary3733 = int_to_int £temporary3732 (Signed_Long_Int -> Signed_Int)
x11774:	cmp edx, 0	; 4: 102 -125 -6 0
x11778:	jge strftime$82	; 2: 125 5
x11780:	neg edx	; 3: 102 -9 -38
x11783:	neg dx	; 2: -9 -38

strftime$82:	; yearDayMonday = £temporary3733
x11785:	mov [bp + 32], dx	; 3: -119 86 32

strftime$83:	; index = 0
x11788:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

strftime$84:	; £temporary3735 = fmt + index
x11793:	mov si, [bp + 10]	; 3: -117 118 10
x11796:	add si, [bp + 34]	; 3: 3 118 34

strftime$85:	; £temporary3734 -> £temporary3735 = *£temporary3735

strftime$86:	; if £temporary3734 -> £temporary3735 == 0 goto 354
x11799:	cmp byte [si], 0	; 3: -128 60 0
x11802:	je strftime$354	; 4: 15 -124 55 5

strftime$87:	; £temporary3739 = fmt + index
x11806:	mov si, [bp + 10]	; 3: -117 118 10
x11809:	add si, [bp + 34]	; 3: 3 118 34

strftime$88:	; £temporary3738 -> £temporary3739 = *£temporary3739

strftime$89:	; if £temporary3738 -> £temporary3739 != 37 goto 329
x11812:	cmp byte [si], 37	; 3: -128 60 37
x11815:	jne strftime$329	; 4: 15 -123 -71 4

strftime$90:	; £temporary3741 = index + 1
x11819:	mov ax, [bp + 34]	; 3: -117 70 34
x11822:	inc ax	; 1: 64

strftime$91:	; £temporary3743 = fmt + £temporary3741
x11823:	mov si, [bp + 10]	; 3: -117 118 10
x11826:	add si, ax	; 2: 1 -58

strftime$92:	; £temporary3742 -> £temporary3743 = *£temporary3743
x11828:	mov al, [si]	; 2: -118 4
x11830:	mov [bp + 56], al	; 3: -120 70 56

strftime$93:	; case £temporary3742 -> £temporary3743 == 97 goto 117
x11833:	mov al, [bp + 56]	; 3: -118 70 56
x11836:	cmp al, 97	; 2: 60 97
x11838:	je strftime$117	; 4: 15 -124 -127 0

strftime$94:	; case £temporary3742 -> £temporary3743 == 65 goto 127
x11842:	cmp al, 65	; 2: 60 65
x11844:	je strftime$127	; 4: 15 -124 -87 0

strftime$95:	; case £temporary3742 -> £temporary3743 == 98 goto 137
x11848:	cmp al, 98	; 2: 60 98
x11850:	je strftime$137	; 4: 15 -124 -47 0

strftime$96:	; case £temporary3742 -> £temporary3743 == 66 goto 147
x11854:	cmp al, 66	; 2: 60 66
x11856:	je strftime$147	; 4: 15 -124 -7 0

strftime$97:	; case £temporary3742 -> £temporary3743 == 99 goto 157
x11860:	cmp al, 99	; 2: 60 99
x11862:	je strftime$157	; 4: 15 -124 33 1

strftime$98:	; case £temporary3742 -> £temporary3743 == 100 goto 177
x11866:	cmp al, 100	; 2: 60 100
x11868:	je strftime$177	; 4: 15 -124 118 1

strftime$99:	; case £temporary3742 -> £temporary3743 == 72 goto 185
x11872:	cmp al, 72	; 2: 60 72
x11874:	je strftime$185	; 4: 15 -124 -101 1

strftime$100:	; case £temporary3742 -> £temporary3743 == 73 goto 193
x11878:	cmp al, 73	; 2: 60 73
x11880:	je strftime$193	; 4: 15 -124 -64 1

strftime$101:	; case £temporary3742 -> £temporary3743 == 106 goto 202
x11884:	cmp al, 106	; 2: 60 106
x11886:	je strftime$202	; 4: 15 -124 -21 1

strftime$102:	; case £temporary3742 -> £temporary3743 == 109 goto 210
x11890:	cmp al, 109	; 2: 60 109
x11892:	je strftime$210	; 4: 15 -124 16 2

strftime$103:	; case £temporary3742 -> £temporary3743 == 77 goto 219
x11896:	cmp al, 77	; 2: 60 77
x11898:	je strftime$219	; 4: 15 -124 54 2

strftime$104:	; case £temporary3742 -> £temporary3743 == 112 goto 227
x11902:	cmp al, 112	; 2: 60 112
x11904:	je strftime$227	; 4: 15 -124 91 2

strftime$105:	; case £temporary3742 -> £temporary3743 == 83 goto 239
x11908:	cmp al, 83	; 2: 60 83
x11910:	je strftime$239	; 4: 15 -124 -117 2

strftime$106:	; case £temporary3742 -> £temporary3743 == 85 goto 247
x11914:	cmp al, 85	; 2: 60 85
x11916:	je strftime$247	; 4: 15 -124 -81 2

strftime$107:	; case £temporary3742 -> £temporary3743 == 119 goto 254
x11920:	cmp al, 119	; 2: 60 119
x11922:	je strftime$254	; 4: 15 -124 -47 2

strftime$108:	; case £temporary3742 -> £temporary3743 == 87 goto 262
x11926:	cmp al, 87	; 2: 60 87
x11928:	je strftime$262	; 4: 15 -124 -10 2

strftime$109:	; case £temporary3742 -> £temporary3743 == 120 goto 269
x11932:	cmp al, 120	; 2: 60 120
x11934:	je strftime$269	; 4: 15 -124 24 3

strftime$110:	; case £temporary3742 -> £temporary3743 == 88 goto 281
x11938:	cmp al, 88	; 2: 60 88
x11940:	je strftime$281	; 4: 15 -124 78 3

strftime$111:	; case £temporary3742 -> £temporary3743 == 121 goto 293
x11944:	cmp al, 121	; 2: 60 121
x11946:	je strftime$293	; 4: 15 -124 -124 3

strftime$112:	; case £temporary3742 -> £temporary3743 == 89 goto 302
x11950:	cmp al, 89	; 2: 60 89
x11952:	je strftime$302	; 4: 15 -124 -82 3

strftime$113:	; case £temporary3742 -> £temporary3743 == 90 goto 311
x11956:	cmp al, 90	; 2: 60 90
x11958:	je strftime$311	; 4: 15 -124 -43 3

strftime$114:	; case £temporary3742 -> £temporary3743 == 37 goto 317
x11962:	cmp al, 37	; 2: 60 37
x11964:	je strftime$317	; 4: 15 -124 -21 3

strftime$115:	; case end £temporary3742 -> £temporary3743

strftime$116:	; goto 322
x11968:	jmp strftime$322	; 3: -23 2 4

strftime$117:	; call header integral zero 0 stack zero 0

strftime$118:	; parameter add, offset 6
x11971:	mov [bp + 62], bp	; 3: -119 110 62
x11974:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$119:	; £temporary3744 -> tp = *tp, offset 12
x11978:	mov si, [bp + 12]	; 3: -117 118 12

strftime$120:	; £temporary3746 = £temporary3744 -> tp * 2
x11981:	mov ax, [si + 12]	; 3: -117 68 12
x11984:	xor dx, dx	; 2: 49 -46
x11986:	mul word [int2$2#]	; 4: -9 38 -114 4

strftime$121:	; £temporary3747 = shortDayList + £temporary3746
x11990:	mov si, [bp + 16]	; 3: -117 118 16
x11993:	add si, ax	; 2: 1 -58

strftime$122:	; £temporary3745 -> £temporary3747 = *£temporary3747

strftime$123:	; parameter £temporary3745 -> £temporary3747, offset 8
x11995:	mov ax, [si]	; 2: -117 4
x11997:	mov [bp + 64], ax	; 3: -119 70 64

strftime$124:	; call function noellipse-noellipse strcpy
x12000:	mov word [bp + 56], strftime$125	; 5: -57 70 56 -18 46
x12005:	mov [bp + 58], bp	; 3: -119 110 58
x12008:	add bp, 56	; 3: -125 -59 56
x12011:	jmp strcpy	; 3: -23 60 -3

strftime$125:	; post call

strftime$126:	; goto 327
x12014:	jmp strftime$327	; 3: -23 -18 3

strftime$127:	; call header integral zero 0 stack zero 0

strftime$128:	; parameter add, offset 6
x12017:	mov [bp + 62], bp	; 3: -119 110 62
x12020:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$129:	; £temporary3749 -> tp = *tp, offset 12
x12024:	mov si, [bp + 12]	; 3: -117 118 12

strftime$130:	; £temporary3751 = £temporary3749 -> tp * 2
x12027:	mov ax, [si + 12]	; 3: -117 68 12
x12030:	xor dx, dx	; 2: 49 -46
x12032:	mul word [int2$2#]	; 4: -9 38 -114 4

strftime$131:	; £temporary3752 = longDayList + £temporary3751
x12036:	mov si, [bp + 20]	; 3: -117 118 20
x12039:	add si, ax	; 2: 1 -58

strftime$132:	; £temporary3750 -> £temporary3752 = *£temporary3752

strftime$133:	; parameter £temporary3750 -> £temporary3752, offset 8
x12041:	mov ax, [si]	; 2: -117 4
x12043:	mov [bp + 64], ax	; 3: -119 70 64

strftime$134:	; call function noellipse-noellipse strcpy
x12046:	mov word [bp + 56], strftime$135	; 5: -57 70 56 28 47
x12051:	mov [bp + 58], bp	; 3: -119 110 58
x12054:	add bp, 56	; 3: -125 -59 56
x12057:	jmp strcpy	; 3: -23 14 -3

strftime$135:	; post call

strftime$136:	; goto 327
x12060:	jmp strftime$327	; 3: -23 -64 3

strftime$137:	; call header integral zero 0 stack zero 0

strftime$138:	; parameter add, offset 6
x12063:	mov [bp + 62], bp	; 3: -119 110 62
x12066:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$139:	; £temporary3754 -> tp = *tp, offset 8
x12070:	mov si, [bp + 12]	; 3: -117 118 12

strftime$140:	; £temporary3756 = £temporary3754 -> tp * 2
x12073:	mov ax, [si + 8]	; 3: -117 68 8
x12076:	xor dx, dx	; 2: 49 -46
x12078:	mul word [int2$2#]	; 4: -9 38 -114 4

strftime$141:	; £temporary3757 = shortMonthList + £temporary3756
x12082:	mov si, [bp + 18]	; 3: -117 118 18
x12085:	add si, ax	; 2: 1 -58

strftime$142:	; £temporary3755 -> £temporary3757 = *£temporary3757

strftime$143:	; parameter £temporary3755 -> £temporary3757, offset 8
x12087:	mov ax, [si]	; 2: -117 4
x12089:	mov [bp + 64], ax	; 3: -119 70 64

strftime$144:	; call function noellipse-noellipse strcpy
x12092:	mov word [bp + 56], strftime$145	; 5: -57 70 56 74 47
x12097:	mov [bp + 58], bp	; 3: -119 110 58
x12100:	add bp, 56	; 3: -125 -59 56
x12103:	jmp strcpy	; 3: -23 -32 -4

strftime$145:	; post call

strftime$146:	; goto 327
x12106:	jmp strftime$327	; 3: -23 -110 3

strftime$147:	; call header integral zero 0 stack zero 0

strftime$148:	; parameter add, offset 6
x12109:	mov [bp + 62], bp	; 3: -119 110 62
x12112:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$149:	; £temporary3759 -> tp = *tp, offset 8
x12116:	mov si, [bp + 12]	; 3: -117 118 12

strftime$150:	; £temporary3761 = £temporary3759 -> tp * 2
x12119:	mov ax, [si + 8]	; 3: -117 68 8
x12122:	xor dx, dx	; 2: 49 -46
x12124:	mul word [int2$2#]	; 4: -9 38 -114 4

strftime$151:	; £temporary3762 = longMonthList + £temporary3761
x12128:	mov si, [bp + 22]	; 3: -117 118 22
x12131:	add si, ax	; 2: 1 -58

strftime$152:	; £temporary3760 -> £temporary3762 = *£temporary3762

strftime$153:	; parameter £temporary3760 -> £temporary3762, offset 8
x12133:	mov ax, [si]	; 2: -117 4
x12135:	mov [bp + 64], ax	; 3: -119 70 64

strftime$154:	; call function noellipse-noellipse strcpy
x12138:	mov word [bp + 56], strftime$155	; 5: -57 70 56 120 47
x12143:	mov [bp + 58], bp	; 3: -119 110 58
x12146:	add bp, 56	; 3: -125 -59 56
x12149:	jmp strcpy	; 3: -23 -78 -4

strftime$155:	; post call

strftime$156:	; goto 327
x12152:	jmp strftime$327	; 3: -23 100 3

strftime$157:	; call header integral zero 0 stack zero 0

strftime$158:	; parameter add, offset 6
x12155:	mov [bp + 62], bp	; 3: -119 110 62
x12158:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$159:	; parameter string_25d2D25d2D25d2025d3A25d3A25d#, offset 8
x12162:	mov word [bp + 64], string_25d2D25d2D25d2025d3A25d3A25d#	; 5: -57 70 64 -102 51

strftime$160:	; £temporary3764 -> tp = *tp, offset 10
x12167:	mov si, [bp + 12]	; 3: -117 118 12

strftime$161:	; £temporary3765 = £temporary3764 -> tp + 1900
x12170:	mov ax, [si + 10]	; 3: -117 68 10
x12173:	add ax, 1900	; 3: 5 108 7

strftime$162:	; parameter £temporary3765, offset 10
x12176:	mov [bp + 66], ax	; 3: -119 70 66

strftime$163:	; £temporary3766 -> tp = *tp, offset 8
x12179:	mov si, [bp + 12]	; 3: -117 118 12

strftime$164:	; £temporary3767 = £temporary3766 -> tp + 1
x12182:	mov ax, [si + 8]	; 3: -117 68 8
x12185:	inc ax	; 1: 64

strftime$165:	; parameter £temporary3767, offset 12
x12186:	mov [bp + 68], ax	; 3: -119 70 68

strftime$166:	; £temporary3768 -> tp = *tp, offset 6
x12189:	mov si, [bp + 12]	; 3: -117 118 12

strftime$167:	; parameter £temporary3768 -> tp, offset 14
x12192:	mov ax, [si + 6]	; 3: -117 68 6
x12195:	mov [bp + 70], ax	; 3: -119 70 70

strftime$168:	; £temporary3769 -> tp = *tp, offset 4
x12198:	mov si, [bp + 12]	; 3: -117 118 12

strftime$169:	; parameter £temporary3769 -> tp, offset 16
x12201:	mov ax, [si + 4]	; 3: -117 68 4
x12204:	mov [bp + 72], ax	; 3: -119 70 72

strftime$170:	; £temporary3770 -> tp = *tp, offset 2
x12207:	mov si, [bp + 12]	; 3: -117 118 12

strftime$171:	; parameter £temporary3770 -> tp, offset 18
x12210:	mov ax, [si + 2]	; 3: -117 68 2
x12213:	mov [bp + 74], ax	; 3: -119 70 74

strftime$172:	; £temporary3771 -> tp = *tp
x12216:	mov si, [bp + 12]	; 3: -117 118 12

strftime$173:	; parameter £temporary3771 -> tp, offset 20
x12219:	mov ax, [si]	; 2: -117 4
x12221:	mov [bp + 76], ax	; 3: -119 70 76

strftime$174:	; call function noellipse-ellipse sprintf, extra 0
x12224:	mov word [bp + 56], strftime$175	; 5: -57 70 56 -45 47
x12229:	mov [bp + 58], bp	; 3: -119 110 58
x12232:	add bp, 56	; 3: -125 -59 56
x12235:	mov di, bp	; 2: -119 -17
x12237:	add di, 12	; 3: -125 -57 12
x12240:	jmp sprintf	; 3: -23 -21 -5

strftime$175:	; post call

strftime$176:	; goto 327
x12243:	jmp strftime$327	; 3: -23 9 3

strftime$177:	; call header integral zero 0 stack zero 0

strftime$178:	; parameter add, offset 6
x12246:	mov [bp + 62], bp	; 3: -119 110 62
x12249:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$179:	; parameter string_25d#, offset 8
x12253:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -84 51

strftime$180:	; £temporary3773 -> tp = *tp, offset 6
x12258:	mov si, [bp + 12]	; 3: -117 118 12

strftime$181:	; parameter £temporary3773 -> tp, offset 10
x12261:	mov ax, [si + 6]	; 3: -117 68 6
x12264:	mov [bp + 66], ax	; 3: -119 70 66

strftime$182:	; call function noellipse-ellipse sprintf, extra 0
x12267:	mov word [bp + 56], strftime$183	; 5: -57 70 56 -2 47
x12272:	mov [bp + 58], bp	; 3: -119 110 58
x12275:	add bp, 56	; 3: -125 -59 56
x12278:	mov di, bp	; 2: -119 -17
x12280:	add di, 2	; 3: -125 -57 2
x12283:	jmp sprintf	; 3: -23 -64 -5

strftime$183:	; post call

strftime$184:	; goto 327
x12286:	jmp strftime$327	; 3: -23 -34 2

strftime$185:	; call header integral zero 0 stack zero 0

strftime$186:	; parameter add, offset 6
x12289:	mov [bp + 62], bp	; 3: -119 110 62
x12292:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$187:	; parameter string_25d#, offset 8
x12296:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -84 51

strftime$188:	; £temporary3775 -> tp = *tp, offset 4
x12301:	mov si, [bp + 12]	; 3: -117 118 12

strftime$189:	; parameter £temporary3775 -> tp, offset 10
x12304:	mov ax, [si + 4]	; 3: -117 68 4
x12307:	mov [bp + 66], ax	; 3: -119 70 66

strftime$190:	; call function noellipse-ellipse sprintf, extra 0
x12310:	mov word [bp + 56], strftime$191	; 5: -57 70 56 41 48
x12315:	mov [bp + 58], bp	; 3: -119 110 58
x12318:	add bp, 56	; 3: -125 -59 56
x12321:	mov di, bp	; 2: -119 -17
x12323:	add di, 2	; 3: -125 -57 2
x12326:	jmp sprintf	; 3: -23 -107 -5

strftime$191:	; post call

strftime$192:	; goto 327
x12329:	jmp strftime$327	; 3: -23 -77 2

strftime$193:	; call header integral zero 0 stack zero 0

strftime$194:	; parameter add, offset 6
x12332:	mov [bp + 62], bp	; 3: -119 110 62
x12335:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$195:	; parameter string_25d#, offset 8
x12339:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -84 51

strftime$196:	; £temporary3777 -> tp = *tp, offset 4
x12344:	mov si, [bp + 12]	; 3: -117 118 12

strftime$197:	; £temporary3778 = £temporary3777 -> tp % 12
x12347:	mov ax, [si + 4]	; 3: -117 68 4
x12350:	xor dx, dx	; 2: 49 -46
x12352:	idiv word [int2$12#]	; 4: -9 62 -81 51

strftime$198:	; parameter £temporary3778, offset 10
x12356:	mov [bp + 66], dx	; 3: -119 86 66

strftime$199:	; call function noellipse-ellipse sprintf, extra 0
x12359:	mov word [bp + 56], strftime$200	; 5: -57 70 56 90 48
x12364:	mov [bp + 58], bp	; 3: -119 110 58
x12367:	add bp, 56	; 3: -125 -59 56
x12370:	mov di, bp	; 2: -119 -17
x12372:	add di, 2	; 3: -125 -57 2
x12375:	jmp sprintf	; 3: -23 100 -5

strftime$200:	; post call

strftime$201:	; goto 327
x12378:	jmp strftime$327	; 3: -23 -126 2

strftime$202:	; call header integral zero 0 stack zero 0

strftime$203:	; parameter add, offset 6
x12381:	mov [bp + 62], bp	; 3: -119 110 62
x12384:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$204:	; parameter string_25d#, offset 8
x12388:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -84 51

strftime$205:	; £temporary3780 -> tp = *tp, offset 14
x12393:	mov si, [bp + 12]	; 3: -117 118 12

strftime$206:	; parameter £temporary3780 -> tp, offset 10
x12396:	mov ax, [si + 14]	; 3: -117 68 14
x12399:	mov [bp + 66], ax	; 3: -119 70 66

strftime$207:	; call function noellipse-ellipse sprintf, extra 0
x12402:	mov word [bp + 56], strftime$208	; 5: -57 70 56 -123 48
x12407:	mov [bp + 58], bp	; 3: -119 110 58
x12410:	add bp, 56	; 3: -125 -59 56
x12413:	mov di, bp	; 2: -119 -17
x12415:	add di, 2	; 3: -125 -57 2
x12418:	jmp sprintf	; 3: -23 57 -5

strftime$208:	; post call

strftime$209:	; goto 327
x12421:	jmp strftime$327	; 3: -23 87 2

strftime$210:	; call header integral zero 0 stack zero 0

strftime$211:	; parameter add, offset 6
x12424:	mov [bp + 62], bp	; 3: -119 110 62
x12427:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$212:	; parameter string_25d#, offset 8
x12431:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -84 51

strftime$213:	; £temporary3782 -> tp = *tp, offset 8
x12436:	mov si, [bp + 12]	; 3: -117 118 12

strftime$214:	; £temporary3783 = £temporary3782 -> tp + 1
x12439:	mov ax, [si + 8]	; 3: -117 68 8
x12442:	inc ax	; 1: 64

strftime$215:	; parameter £temporary3783, offset 10
x12443:	mov [bp + 66], ax	; 3: -119 70 66

strftime$216:	; call function noellipse-ellipse sprintf, extra 0
x12446:	mov word [bp + 56], strftime$217	; 5: -57 70 56 -79 48
x12451:	mov [bp + 58], bp	; 3: -119 110 58
x12454:	add bp, 56	; 3: -125 -59 56
x12457:	mov di, bp	; 2: -119 -17
x12459:	add di, 2	; 3: -125 -57 2
x12462:	jmp sprintf	; 3: -23 13 -5

strftime$217:	; post call

strftime$218:	; goto 327
x12465:	jmp strftime$327	; 3: -23 43 2

strftime$219:	; call header integral zero 0 stack zero 0

strftime$220:	; parameter add, offset 6
x12468:	mov [bp + 62], bp	; 3: -119 110 62
x12471:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$221:	; parameter string_25d#, offset 8
x12475:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -84 51

strftime$222:	; £temporary3785 -> tp = *tp, offset 2
x12480:	mov si, [bp + 12]	; 3: -117 118 12

strftime$223:	; parameter £temporary3785 -> tp, offset 10
x12483:	mov ax, [si + 2]	; 3: -117 68 2
x12486:	mov [bp + 66], ax	; 3: -119 70 66

strftime$224:	; call function noellipse-ellipse sprintf, extra 0
x12489:	mov word [bp + 56], strftime$225	; 5: -57 70 56 -36 48
x12494:	mov [bp + 58], bp	; 3: -119 110 58
x12497:	add bp, 56	; 3: -125 -59 56
x12500:	mov di, bp	; 2: -119 -17
x12502:	add di, 2	; 3: -125 -57 2
x12505:	jmp sprintf	; 3: -23 -30 -6

strftime$225:	; post call

strftime$226:	; goto 327
x12508:	jmp strftime$327	; 3: -23 0 2

strftime$227:	; call header integral zero 0 stack zero 0

strftime$228:	; parameter add, offset 6
x12511:	mov [bp + 62], bp	; 3: -119 110 62
x12514:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$229:	; parameter string_25s#, offset 8
x12518:	mov word [bp + 64], string_25s#	; 5: -57 70 64 -79 51

strftime$230:	; £temporary3787 -> tp = *tp, offset 4
x12523:	mov si, [bp + 12]	; 3: -117 118 12

strftime$231:	; if £temporary3787 -> tp >= 12 goto 234
x12526:	cmp word [si + 4], 12	; 4: -125 124 4 12
x12530:	jge strftime$234	; 2: 125 5

strftime$232:	; £temporary3792 = string_AM#
x12532:	mov ax, string_AM#	; 3: -72 -76 51

strftime$233:	; goto 235
x12535:	jmp strftime$235	; 2: -21 3

strftime$234:	; £temporary3792 = string_PM#
x12537:	mov ax, string_PM#	; 3: -72 -73 51

strftime$235:	; parameter £temporary3792, offset 10
x12540:	mov [bp + 66], ax	; 3: -119 70 66

strftime$236:	; call function noellipse-ellipse sprintf, extra 0
x12543:	mov word [bp + 56], strftime$237	; 5: -57 70 56 18 49
x12548:	mov [bp + 58], bp	; 3: -119 110 58
x12551:	add bp, 56	; 3: -125 -59 56
x12554:	mov di, bp	; 2: -119 -17
x12556:	add di, 2	; 3: -125 -57 2
x12559:	jmp sprintf	; 3: -23 -84 -6

strftime$237:	; post call

strftime$238:	; goto 327
x12562:	jmp strftime$327	; 3: -23 -54 1

strftime$239:	; call header integral zero 0 stack zero 0

strftime$240:	; parameter add, offset 6
x12565:	mov [bp + 62], bp	; 3: -119 110 62
x12568:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$241:	; parameter string_25d#, offset 8
x12572:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -84 51

strftime$242:	; £temporary3794 -> tp = *tp
x12577:	mov si, [bp + 12]	; 3: -117 118 12

strftime$243:	; parameter £temporary3794 -> tp, offset 10
x12580:	mov ax, [si]	; 2: -117 4
x12582:	mov [bp + 66], ax	; 3: -119 70 66

strftime$244:	; call function noellipse-ellipse sprintf, extra 0
x12585:	mov word [bp + 56], strftime$245	; 5: -57 70 56 60 49
x12590:	mov [bp + 58], bp	; 3: -119 110 58
x12593:	add bp, 56	; 3: -125 -59 56
x12596:	mov di, bp	; 2: -119 -17
x12598:	add di, 2	; 3: -125 -57 2
x12601:	jmp sprintf	; 3: -23 -126 -6

strftime$245:	; post call

strftime$246:	; goto 327
x12604:	jmp strftime$327	; 3: -23 -96 1

strftime$247:	; call header integral zero 0 stack zero 0

strftime$248:	; parameter add, offset 6
x12607:	mov [bp + 62], bp	; 3: -119 110 62
x12610:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$249:	; parameter string_25d#, offset 8
x12614:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -84 51

strftime$250:	; parameter yearDaySunday, offset 10
x12619:	mov ax, [bp + 30]	; 3: -117 70 30
x12622:	mov [bp + 66], ax	; 3: -119 70 66

strftime$251:	; call function noellipse-ellipse sprintf, extra 0
x12625:	mov word [bp + 56], strftime$252	; 5: -57 70 56 100 49
x12630:	mov [bp + 58], bp	; 3: -119 110 58
x12633:	add bp, 56	; 3: -125 -59 56
x12636:	mov di, bp	; 2: -119 -17
x12638:	add di, 2	; 3: -125 -57 2
x12641:	jmp sprintf	; 3: -23 90 -6

strftime$252:	; post call

strftime$253:	; goto 327
x12644:	jmp strftime$327	; 3: -23 120 1

strftime$254:	; call header integral zero 0 stack zero 0

strftime$255:	; parameter add, offset 6
x12647:	mov [bp + 62], bp	; 3: -119 110 62
x12650:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$256:	; parameter string_25d#, offset 8
x12654:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -84 51

strftime$257:	; £temporary3797 -> tp = *tp, offset 12
x12659:	mov si, [bp + 12]	; 3: -117 118 12

strftime$258:	; parameter £temporary3797 -> tp, offset 10
x12662:	mov ax, [si + 12]	; 3: -117 68 12
x12665:	mov [bp + 66], ax	; 3: -119 70 66

strftime$259:	; call function noellipse-ellipse sprintf, extra 0
x12668:	mov word [bp + 56], strftime$260	; 5: -57 70 56 -113 49
x12673:	mov [bp + 58], bp	; 3: -119 110 58
x12676:	add bp, 56	; 3: -125 -59 56
x12679:	mov di, bp	; 2: -119 -17
x12681:	add di, 2	; 3: -125 -57 2
x12684:	jmp sprintf	; 3: -23 47 -6

strftime$260:	; post call

strftime$261:	; goto 327
x12687:	jmp strftime$327	; 3: -23 77 1

strftime$262:	; call header integral zero 0 stack zero 0

strftime$263:	; parameter add, offset 6
x12690:	mov [bp + 62], bp	; 3: -119 110 62
x12693:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$264:	; parameter string_25d#, offset 8
x12697:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -84 51

strftime$265:	; parameter yearDayMonday, offset 10
x12702:	mov ax, [bp + 32]	; 3: -117 70 32
x12705:	mov [bp + 66], ax	; 3: -119 70 66

strftime$266:	; call function noellipse-ellipse sprintf, extra 0
x12708:	mov word [bp + 56], strftime$267	; 5: -57 70 56 -73 49
x12713:	mov [bp + 58], bp	; 3: -119 110 58
x12716:	add bp, 56	; 3: -125 -59 56
x12719:	mov di, bp	; 2: -119 -17
x12721:	add di, 2	; 3: -125 -57 2
x12724:	jmp sprintf	; 3: -23 7 -6

strftime$267:	; post call

strftime$268:	; goto 327
x12727:	jmp strftime$327	; 3: -23 37 1

strftime$269:	; call header integral zero 0 stack zero 0

strftime$270:	; parameter add, offset 6
x12730:	mov [bp + 62], bp	; 3: -119 110 62
x12733:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$271:	; parameter string_2502d3A2502d3A2502d#, offset 8
x12737:	mov word [bp + 64], string_2502d3A2502d3A2502d#	; 5: -57 70 64 -70 51

strftime$272:	; £temporary3800 -> tp = *tp, offset 4
x12742:	mov si, [bp + 12]	; 3: -117 118 12

strftime$273:	; parameter £temporary3800 -> tp, offset 10
x12745:	mov ax, [si + 4]	; 3: -117 68 4
x12748:	mov [bp + 66], ax	; 3: -119 70 66

strftime$274:	; £temporary3801 -> tp = *tp, offset 2
x12751:	mov si, [bp + 12]	; 3: -117 118 12

strftime$275:	; parameter £temporary3801 -> tp, offset 12
x12754:	mov ax, [si + 2]	; 3: -117 68 2
x12757:	mov [bp + 68], ax	; 3: -119 70 68

strftime$276:	; £temporary3802 -> tp = *tp
x12760:	mov si, [bp + 12]	; 3: -117 118 12

strftime$277:	; parameter £temporary3802 -> tp, offset 14
x12763:	mov ax, [si]	; 2: -117 4
x12765:	mov [bp + 70], ax	; 3: -119 70 70

strftime$278:	; call function noellipse-ellipse sprintf, extra 0
x12768:	mov word [bp + 56], strftime$279	; 5: -57 70 56 -13 49
x12773:	mov [bp + 58], bp	; 3: -119 110 58
x12776:	add bp, 56	; 3: -125 -59 56
x12779:	mov di, bp	; 2: -119 -17
x12781:	add di, 6	; 3: -125 -57 6
x12784:	jmp sprintf	; 3: -23 -53 -7

strftime$279:	; post call

strftime$280:	; goto 327
x12787:	jmp strftime$327	; 3: -23 -23 0

strftime$281:	; call header integral zero 0 stack zero 0

strftime$282:	; parameter add, offset 6
x12790:	mov [bp + 62], bp	; 3: -119 110 62
x12793:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$283:	; parameter string_25d3A25d3A25d#, offset 8
x12797:	mov word [bp + 64], string_25d3A25d3A25d#	; 5: -57 70 64 -55 51

strftime$284:	; £temporary3804 -> tp = *tp, offset 4
x12802:	mov si, [bp + 12]	; 3: -117 118 12

strftime$285:	; parameter £temporary3804 -> tp, offset 10
x12805:	mov ax, [si + 4]	; 3: -117 68 4
x12808:	mov [bp + 66], ax	; 3: -119 70 66

strftime$286:	; £temporary3805 -> tp = *tp, offset 2
x12811:	mov si, [bp + 12]	; 3: -117 118 12

strftime$287:	; parameter £temporary3805 -> tp, offset 12
x12814:	mov ax, [si + 2]	; 3: -117 68 2
x12817:	mov [bp + 68], ax	; 3: -119 70 68

strftime$288:	; £temporary3806 -> tp = *tp
x12820:	mov si, [bp + 12]	; 3: -117 118 12

strftime$289:	; parameter £temporary3806 -> tp, offset 14
x12823:	mov ax, [si]	; 2: -117 4
x12825:	mov [bp + 70], ax	; 3: -119 70 70

strftime$290:	; call function noellipse-ellipse sprintf, extra 0
x12828:	mov word [bp + 56], strftime$291	; 5: -57 70 56 47 50
x12833:	mov [bp + 58], bp	; 3: -119 110 58
x12836:	add bp, 56	; 3: -125 -59 56
x12839:	mov di, bp	; 2: -119 -17
x12841:	add di, 6	; 3: -125 -57 6
x12844:	jmp sprintf	; 3: -23 -113 -7

strftime$291:	; post call

strftime$292:	; goto 327
x12847:	jmp strftime$327	; 3: -23 -83 0

strftime$293:	; call header integral zero 0 stack zero 0

strftime$294:	; parameter add, offset 6
x12850:	mov [bp + 62], bp	; 3: -119 110 62
x12853:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$295:	; parameter string_25d#, offset 8
x12857:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -84 51

strftime$296:	; £temporary3808 -> tp = *tp, offset 10
x12862:	mov si, [bp + 12]	; 3: -117 118 12

strftime$297:	; £temporary3809 = £temporary3808 -> tp % 100
x12865:	mov ax, [si + 10]	; 3: -117 68 10
x12868:	xor dx, dx	; 2: 49 -46
x12870:	idiv word [int2$100#]	; 4: -9 62 -46 10

strftime$298:	; parameter £temporary3809, offset 10
x12874:	mov [bp + 66], dx	; 3: -119 86 66

strftime$299:	; call function noellipse-ellipse sprintf, extra 0
x12877:	mov word [bp + 56], strftime$300	; 5: -57 70 56 96 50
x12882:	mov [bp + 58], bp	; 3: -119 110 58
x12885:	add bp, 56	; 3: -125 -59 56
x12888:	mov di, bp	; 2: -119 -17
x12890:	add di, 2	; 3: -125 -57 2
x12893:	jmp sprintf	; 3: -23 94 -7

strftime$300:	; post call

strftime$301:	; goto 327
x12896:	jmp strftime$327	; 2: -21 125

strftime$302:	; call header integral zero 0 stack zero 0

strftime$303:	; parameter add, offset 6
x12898:	mov [bp + 62], bp	; 3: -119 110 62
x12901:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$304:	; parameter string_25d#, offset 8
x12905:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -84 51

strftime$305:	; £temporary3811 -> tp = *tp, offset 10
x12910:	mov si, [bp + 12]	; 3: -117 118 12

strftime$306:	; £temporary3812 = £temporary3811 -> tp + 1900
x12913:	mov ax, [si + 10]	; 3: -117 68 10
x12916:	add ax, 1900	; 3: 5 108 7

strftime$307:	; parameter £temporary3812, offset 10
x12919:	mov [bp + 66], ax	; 3: -119 70 66

strftime$308:	; call function noellipse-ellipse sprintf, extra 0
x12922:	mov word [bp + 56], strftime$309	; 5: -57 70 56 -115 50
x12927:	mov [bp + 58], bp	; 3: -119 110 58
x12930:	add bp, 56	; 3: -125 -59 56
x12933:	mov di, bp	; 2: -119 -17
x12935:	add di, 2	; 3: -125 -57 2
x12938:	jmp sprintf	; 3: -23 49 -7

strftime$309:	; post call

strftime$310:	; goto 327
x12941:	jmp strftime$327	; 2: -21 80

strftime$311:	; call header integral zero 0 stack zero 0

strftime$312:	; parameter add, offset 6
x12943:	mov [bp + 62], bp	; 3: -119 110 62
x12946:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$313:	; parameter string_#, offset 8
x12950:	mov word [bp + 64], string_#	; 5: -57 70 64 121 28

strftime$314:	; call function noellipse-noellipse strcpy
x12955:	mov word [bp + 56], strftime$315	; 5: -57 70 56 -87 50
x12960:	mov [bp + 58], bp	; 3: -119 110 58
x12963:	add bp, 56	; 3: -125 -59 56
x12966:	jmp strcpy	; 3: -23 -127 -7

strftime$315:	; post call

strftime$316:	; goto 327
x12969:	jmp strftime$327	; 2: -21 52

strftime$317:	; call header integral zero 0 stack zero 0

strftime$318:	; parameter add, offset 6
x12971:	mov [bp + 62], bp	; 3: -119 110 62
x12974:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$319:	; parameter string_25#, offset 8
x12978:	mov word [bp + 64], string_25#	; 5: -57 70 64 -46 51

strftime$320:	; call function noellipse-noellipse strcpy
x12983:	mov word [bp + 56], strftime$321	; 5: -57 70 56 -59 50
x12988:	mov [bp + 58], bp	; 3: -119 110 58
x12991:	add bp, 56	; 3: -125 -59 56
x12994:	jmp strcpy	; 3: -23 101 -7

strftime$321:	; post call

strftime$322:	; call header integral zero 0 stack zero 0

strftime$323:	; parameter add, offset 6
x12997:	mov [bp + 62], bp	; 3: -119 110 62
x13000:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$324:	; parameter string_#, offset 8
x13004:	mov word [bp + 64], string_#	; 5: -57 70 64 121 28

strftime$325:	; call function noellipse-noellipse strcpy
x13009:	mov word [bp + 56], strftime$326	; 5: -57 70 56 -33 50
x13014:	mov [bp + 58], bp	; 3: -119 110 58
x13017:	add bp, 56	; 3: -125 -59 56
x13020:	jmp strcpy	; 3: -23 75 -7

strftime$326:	; post call

strftime$327:	; ++index
x13023:	inc word [bp + 34]	; 3: -1 70 34

strftime$328:	; goto 335
x13026:	jmp strftime$335	; 2: -21 24

strftime$329:	; £temporary3818 -> add = *add
x13028:	mov si, bp	; 2: -119 -18
x13030:	add si, 36	; 3: -125 -58 36

strftime$330:	; £temporary3820 = fmt + index
x13033:	mov di, [bp + 10]	; 3: -117 126 10
x13036:	add di, [bp + 34]	; 3: 3 126 34

strftime$331:	; £temporary3819 -> £temporary3820 = *£temporary3820

strftime$332:	; £temporary3818 -> add = £temporary3819 -> £temporary3820
x13039:	mov al, [di]	; 2: -118 5
x13041:	mov [si], al	; 2: -120 4

strftime$333:	; £temporary3821 -> add = *add, offset 1
x13043:	mov si, bp	; 2: -119 -18
x13045:	add si, 36	; 3: -125 -58 36

strftime$334:	; £temporary3821 -> add = 0
x13048:	mov byte [si + 1], 0	; 4: -58 68 1 0

strftime$335:	; call header integral zero 0 stack zero 0

strftime$336:	; parameter s, offset 6
x13052:	mov ax, [bp + 6]	; 3: -117 70 6
x13055:	mov [bp + 62], ax	; 3: -119 70 62

strftime$337:	; call function noellipse-noellipse strlen
x13058:	mov word [bp + 56], strftime$338	; 5: -57 70 56 16 51
x13063:	mov [bp + 58], bp	; 3: -119 110 58
x13066:	add bp, 56	; 3: -125 -59 56
x13069:	jmp strlen	; 3: -23 -60 0

strftime$338:	; post call

strftime$339:	; £temporary3822 = return_value

strftime$340:	; call header integral no zero 1 stack zero 0
x13072:	mov [bp + 56], bx	; 3: -119 94 56

strftime$341:	; parameter add, offset 6
x13075:	mov [bp + 64], bp	; 3: -119 110 64
x13078:	add word [bp + 64], 36	; 4: -125 70 64 36

strftime$342:	; call function noellipse-noellipse strlen
x13082:	mov word [bp + 58], strftime$343	; 5: -57 70 58 40 51
x13087:	mov [bp + 60], bp	; 3: -119 110 60
x13090:	add bp, 58	; 3: -125 -59 58
x13093:	jmp strlen	; 3: -23 -84 0

strftime$343:	; post call
x13096:	mov bx, [bp + 56]	; 3: -117 94 56
x13099:	mov ax, bx	; 2: -119 -40

strftime$344:	; £temporary3823 = return_value

strftime$345:	; £temporary3824 = £temporary3822 + £temporary3823
x13101:	add ax, bx	; 2: 1 -40

strftime$346:	; if £temporary3824 >= smax goto 354
x13103:	cmp ax, [bp + 8]	; 3: 59 70 8
x13106:	jge strftime$354	; 2: 125 33

strftime$347:	; call header integral zero 0 stack zero 0

strftime$348:	; parameter s, offset 6
x13108:	mov ax, [bp + 6]	; 3: -117 70 6
x13111:	mov [bp + 62], ax	; 3: -119 70 62

strftime$349:	; parameter add, offset 8
x13114:	mov [bp + 64], bp	; 3: -119 110 64
x13117:	add word [bp + 64], 36	; 4: -125 70 64 36

strftime$350:	; call function noellipse-noellipse strcat
x13121:	mov word [bp + 56], strftime$351	; 5: -57 70 56 79 51
x13126:	mov [bp + 58], bp	; 3: -119 110 58
x13129:	add bp, 56	; 3: -125 -59 56
x13132:	jmp strcat	; 3: -23 -88 0

strftime$351:	; post call

strftime$352:	; ++index
x13135:	inc word [bp + 34]	; 3: -1 70 34

strftime$353:	; goto 84
x13138:	jmp strftime$84	; 3: -23 -68 -6

strftime$354:	; call header integral zero 0 stack zero 0

strftime$355:	; parameter s, offset 6
x13141:	mov ax, [bp + 6]	; 3: -117 70 6
x13144:	mov [bp + 40], ax	; 3: -119 70 40

strftime$356:	; call function noellipse-noellipse strlen
x13147:	mov word [bp + 34], strftime$357	; 5: -57 70 34 105 51
x13152:	mov [bp + 36], bp	; 3: -119 110 36
x13155:	add bp, 34	; 3: -125 -59 34
x13158:	nop	; 1: -112
x13159:	jmp strlen	; 2: -21 107

strftime$357:	; post call

strftime$358:	; £temporary3827 = return_value

strftime$359:	; return_value = £temporary3827

strftime$360:	; return
x13161:	mov ax, [bp]	; 3: -117 70 0
x13164:	mov di, [bp + 4]	; 3: -117 126 4
x13167:	mov bp, [bp + 2]	; 3: -117 110 2
x13170:	jmp ax	; 2: -1 -32

strftime$361:	; function end strftime

@33$g_defaultLongDayList:
x13172:	dw string_Sunday# ; 2: -88 28
x13174:	dw string_Monday# ; 2: -81 28
x13176:	dw string_Tuesday# ; 2: -74 28
x13178:	dw string_Wednesday# ; 2: -66 28
x13180:	dw string_Thursday# ; 2: -56 28
x13182:	dw string_Friday# ; 2: -47 28
x13184:	dw string_Saturday# ; 2: -40 28

@35$g_defaultLongMonthList:
x13186:	dw string_January# ; 2: 65 29
x13188:	dw string_February# ; 2: 73 29
x13190:	dw string_March# ; 2: 82 29
x13192:	dw string_April# ; 2: 88 29
x13194:	dw string_May# ; 2: 9 29
x13196:	dw string_June# ; 2: 94 29
x13198:	dw string_July# ; 2: 99 29
x13200:	dw string_August# ; 2: 104 29
x13202:	dw string_September# ; 2: 111 29
x13204:	dw string_October# ; 2: 121 29
x13206:	dw string_November# ; 2: -127 29
x13208:	dw string_December# ; 2: -118 29

string_25d2D25d2D25d2025d3A25d3A25d#:
x13210:	db "%d-%d-%d %d:%d:%d", 0	; 18: 37 100 45 37 100 45 37 100 32 37 100 58 37 100 58 37 100 0

string_25d#:
x13228:	db "%d", 0	; 3: 37 100 0

int2$12#:
x13231:	dw 12	; 2: 12 0

string_25s#:
x13233:	db "%s", 0	; 3: 37 115 0

string_AM#:
x13236:	db "AM", 0	; 3: 65 77 0

string_PM#:
x13239:	db "PM", 0	; 3: 80 77 0

string_2502d3A2502d3A2502d#:
x13242:	db "%02d:%02d:%02d", 0	; 15: 37 48 50 100 58 37 48 50 100 58 37 48 50 100 0

string_25d3A25d3A25d#:
x13257:	db "%d:%d:%d", 0	; 9: 37 100 58 37 100 58 37 100 0

string_25#:
x13266:	db "%", 0	; 2: 37 0

strlen:	; index = 0
x13268:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

strlen$1:	; £temporary4083 = string + index
x13273:	mov si, [bp + 6]	; 3: -117 118 6
x13276:	add si, [bp + 8]	; 3: 3 118 8

strlen$2:	; £temporary4082 -> £temporary4083 = *£temporary4083

strlen$3:	; if £temporary4082 -> £temporary4083 == 0 goto 6
x13279:	cmp byte [si], 0	; 3: -128 60 0
x13282:	je strlen$6	; 2: 116 5

strlen$4:	; ++index
x13284:	inc word [bp + 8]	; 3: -1 70 8

strlen$5:	; goto 1
x13287:	jmp strlen$1	; 2: -21 -16

strlen$6:	; return_value = index
x13289:	mov bx, [bp + 8]	; 3: -117 94 8

strlen$7:	; return
x13292:	mov ax, [bp]	; 3: -117 70 0
x13295:	mov di, [bp + 4]	; 3: -117 126 4
x13298:	mov bp, [bp + 2]	; 3: -117 110 2
x13301:	jmp ax	; 2: -1 -32

strlen$8:	; function end strlen

strcat:	; call header integral zero 0 stack zero 0

strcat$1:	; parameter target, offset 6
x13303:	mov ax, [bp + 6]	; 3: -117 70 6
x13306:	mov [bp + 18], ax	; 3: -119 70 18

strcat$2:	; call function noellipse-noellipse strlen
x13309:	mov word [bp + 12], strcat$3	; 5: -57 70 12 11 52
x13314:	mov [bp + 14], bp	; 3: -119 110 14
x13317:	add bp, 12	; 3: -125 -59 12
x13320:	nop	; 1: -112
x13321:	jmp strlen	; 2: -21 -55

strcat$3:	; post call

strcat$4:	; £temporary3930 = return_value

strcat$5:	; targetLength = £temporary3930
x13323:	mov [bp + 12], bx	; 3: -119 94 12

strcat$6:	; index = 0
x13326:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcat$7:	; £temporary3932 = source + index
x13331:	mov si, [bp + 8]	; 3: -117 118 8
x13334:	add si, [bp + 10]	; 3: 3 118 10

strcat$8:	; £temporary3931 -> £temporary3932 = *£temporary3932

strcat$9:	; if £temporary3931 -> £temporary3932 == 0 goto 18
x13337:	cmp byte [si], 0	; 3: -128 60 0
x13340:	je strcat$18	; 2: 116 26

strcat$10:	; £temporary3935 = targetLength + index
x13342:	mov ax, [bp + 12]	; 3: -117 70 12
x13345:	add ax, [bp + 10]	; 3: 3 70 10

strcat$11:	; £temporary3937 = target + £temporary3935
x13348:	mov si, [bp + 6]	; 3: -117 118 6
x13351:	add si, ax	; 2: 1 -58

strcat$12:	; £temporary3936 -> £temporary3937 = *£temporary3937

strcat$13:	; £temporary3939 = source + index
x13353:	mov di, [bp + 8]	; 3: -117 126 8
x13356:	add di, [bp + 10]	; 3: 3 126 10

strcat$14:	; £temporary3938 -> £temporary3939 = *£temporary3939

strcat$15:	; £temporary3936 -> £temporary3937 = £temporary3938 -> £temporary3939
x13359:	mov al, [di]	; 2: -118 5
x13361:	mov [si], al	; 2: -120 4

strcat$16:	; ++index
x13363:	inc word [bp + 10]	; 3: -1 70 10

strcat$17:	; goto 7
x13366:	jmp strcat$7	; 2: -21 -37

strcat$18:	; £temporary3940 = targetLength + index
x13368:	mov ax, [bp + 12]	; 3: -117 70 12
x13371:	add ax, [bp + 10]	; 3: 3 70 10

strcat$19:	; £temporary3942 = target + £temporary3940
x13374:	mov si, [bp + 6]	; 3: -117 118 6
x13377:	add si, ax	; 2: 1 -58

strcat$20:	; £temporary3941 -> £temporary3942 = *£temporary3942

strcat$21:	; £temporary3941 -> £temporary3942 = 0
x13379:	mov byte [si], 0	; 3: -58 4 0

strcat$22:	; return_value = target
x13382:	mov bx, [bp + 6]	; 3: -117 94 6

strcat$23:	; return
x13385:	mov ax, [bp]	; 3: -117 70 0
x13388:	mov di, [bp + 4]	; 3: -117 126 4
x13391:	mov bp, [bp + 2]	; 3: -117 110 2
x13394:	jmp ax	; 2: -1 -32

strcat$24:	; function end strcat

$StackTop:
x13396:
