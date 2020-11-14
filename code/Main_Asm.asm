	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 109 52
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 109 52 0 0

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
x320:	mov word [bp + 6], string_Sun#	; 5: -57 70 6 32 4

time_test$1:	; weekdays[1] = string_Mon#
x325:	mov word [bp + 8], string_Mon#	; 5: -57 70 8 36 4

time_test$2:	; weekdays[2] = string_Tue#
x330:	mov word [bp + 10], string_Tue#	; 5: -57 70 10 40 4

time_test$3:	; weekdays[3] = string_Wed#
x335:	mov word [bp + 12], string_Wed#	; 5: -57 70 12 44 4

time_test$4:	; weekdays[4] = string_Thu#
x340:	mov word [bp + 14], string_Thu#	; 5: -57 70 14 48 4

time_test$5:	; weekdays[5] = string_Fri#
x345:	mov word [bp + 16], string_Fri#	; 5: -57 70 16 52 4

time_test$6:	; weekdays[6] = string_Sat#
x350:	mov word [bp + 18], string_Sat#	; 5: -57 70 18 56 4

time_test$7:	; call header integral zero 0 stack zero 0

time_test$8:	; parameter 0, offset 6
x355:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

time_test$9:	; call function noellipse-noellipse time
x360:	mov word [bp + 20], time_test$10	; 5: -57 70 20 118 1
x365:	mov [bp + 22], bp	; 3: -119 110 22
x368:	add bp, 20	; 3: -125 -59 20
x371:	jmp time	; 3: -23 -81 4

time_test$10:	; post call

time_test$11:	; £temporary6141 = return_value

time_test$12:	; now1 = £temporary6141
x374:	mov [bp + 20], ebx	; 4: 102 -119 94 20

time_test$13:	; call header integral zero 0 stack zero 0

time_test$14:	; £temporary6142 = &now1
x378:	mov si, bp	; 2: -119 -18
x380:	add si, 20	; 3: -125 -58 20

time_test$15:	; parameter £temporary6142, offset 6
x383:	mov [bp + 30], si	; 3: -119 118 30

time_test$16:	; call function noellipse-noellipse gmtime
x386:	mov word [bp + 24], time_test$17	; 5: -57 70 24 -112 1
x391:	mov [bp + 26], bp	; 3: -119 110 26
x394:	add bp, 24	; 3: -125 -59 24
x397:	jmp gmtime	; 3: -23 -1 6

time_test$17:	; post call

time_test$18:	; £temporary6143 = return_value

time_test$19:	; £temporary6144 -> £temporary6143 = *£temporary6143

time_test$20:	; s = £temporary6144 -> £temporary6143
x400:	mov si, bp	; 2: -119 -18
x402:	add si, 24	; 3: -125 -58 24
x405:	mov al, 18	; 2: -80 18

time_test$20$Loop:
x407:	mov ah, [bx]	; 2: -118 39
x409:	mov [si], ah	; 2: -120 36
x411:	inc bx	; 1: 67
x412:	inc si	; 1: 70
x413:	dec al	; 2: -2 -56
x415:	cmp al, 0	; 2: 60 0
x417:	jne time_test$20$Loop	; 2: 117 -12

time_test$21:	; call header integral zero 0 stack zero 0

time_test$22:	; £temporary6145 = &now1
x419:	mov si, bp	; 2: -119 -18
x421:	add si, 20	; 3: -125 -58 20

time_test$23:	; parameter £temporary6145, offset 6
x424:	mov [bp + 48], si	; 3: -119 118 48

time_test$24:	; call function noellipse-noellipse localtime
x427:	mov word [bp + 42], time_test$25	; 5: -57 70 42 -71 1
x432:	mov [bp + 44], bp	; 3: -119 110 44
x435:	add bp, 42	; 3: -125 -59 42
x438:	jmp localtime	; 3: -23 57 9

time_test$25:	; post call

time_test$26:	; £temporary6146 = return_value

time_test$27:	; £temporary6147 -> £temporary6146 = *£temporary6146

time_test$28:	; t = £temporary6147 -> £temporary6146
x441:	mov si, bp	; 2: -119 -18
x443:	add si, 42	; 3: -125 -58 42
x446:	mov al, 18	; 2: -80 18

time_test$28$Loop:
x448:	mov ah, [bx]	; 2: -118 39
x450:	mov [si], ah	; 2: -120 36
x452:	inc bx	; 1: 67
x453:	inc si	; 1: 70
x454:	dec al	; 2: -2 -56
x456:	cmp al, 0	; 2: 60 0
x458:	jne time_test$28$Loop	; 2: 117 -12

time_test$29:	; call header integral zero 0 stack zero 0

time_test$30:	; £temporary6148 = &s
x460:	mov si, bp	; 2: -119 -18
x462:	add si, 24	; 3: -125 -58 24

time_test$31:	; parameter £temporary6148, offset 6
x465:	mov [bp + 66], si	; 3: -119 118 66

time_test$32:	; call function noellipse-noellipse mktime
x468:	mov word [bp + 60], time_test$33	; 5: -57 70 60 -30 1
x473:	mov [bp + 62], bp	; 3: -119 110 62
x476:	add bp, 60	; 3: -125 -59 60
x479:	jmp mktime	; 3: -23 -82 5

time_test$33:	; post call

time_test$34:	; £temporary6149 = return_value

time_test$35:	; now2 = £temporary6149
x482:	mov [bp + 60], ebx	; 4: 102 -119 94 60

time_test$36:	; call header integral zero 0 stack zero 0

time_test$37:	; parameter string_now2013A2025lu0A#, offset 6
x486:	mov word [bp + 70], string_now2013A2025lu0A#	; 5: -57 70 70 60 4

time_test$38:	; parameter now1, offset 8
x491:	mov eax, [bp + 20]	; 4: 102 -117 70 20
x495:	mov [bp + 72], eax	; 4: 102 -119 70 72

time_test$39:	; call function noellipse-ellipse printf, extra 0
x499:	mov word [bp + 64], time_test$40	; 5: -57 70 64 6 2
x504:	mov [bp + 66], bp	; 3: -119 110 66
x507:	add bp, 64	; 3: -125 -59 64
x510:	mov di, bp	; 2: -119 -17
x512:	add di, 4	; 3: -125 -57 4
x515:	jmp printf	; 3: -23 -89 12

time_test$40:	; post call

time_test$41:	; call header integral zero 0 stack zero 0

time_test$42:	; parameter string_now2023A2025lu0A#, offset 6
x518:	mov word [bp + 70], string_now2023A2025lu0A#	; 5: -57 70 70 72 4

time_test$43:	; parameter now2, offset 8
x523:	mov eax, [bp + 60]	; 4: 102 -117 70 60
x527:	mov [bp + 72], eax	; 4: 102 -119 70 72

time_test$44:	; call function noellipse-ellipse printf, extra 0
x531:	mov word [bp + 64], time_test$45	; 5: -57 70 64 38 2
x536:	mov [bp + 66], bp	; 3: -119 110 66
x539:	add bp, 64	; 3: -125 -59 64
x542:	mov di, bp	; 2: -119 -17
x544:	add di, 4	; 3: -125 -57 4
x547:	jmp printf	; 3: -23 -121 12

time_test$45:	; post call

time_test$46:	; call header integral zero 0 stack zero 0

time_test$47:	; parameter string_202020gm20time3A2025s2025i2D25i2D25i2025i3A25i3A25i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#, offset 6
x550:	mov word [bp + 70], string_202020gm20time3A2025s2025i2D25i2D25i2025i3A25i3A25i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#	; 5: -57 70 70 84 4

time_test$48:	; £temporary6154 = s$tm_wday * 2
x555:	mov ax, [bp + 36]	; 3: -117 70 36
x558:	xor dx, dx	; 2: 49 -46
x560:	mul word [int2$2#]	; 4: -9 38 -87 4

time_test$49:	; £temporary6155 = weekdays + £temporary6154
x564:	mov si, bp	; 2: -119 -18
x566:	add si, 6	; 3: -125 -58 6
x569:	add si, ax	; 2: 1 -58

time_test$50:	; £temporary6153 -> £temporary6155 = *£temporary6155

time_test$51:	; parameter £temporary6153 -> £temporary6155, offset 8
x571:	mov ax, [si]	; 2: -117 4
x573:	mov [bp + 72], ax	; 3: -119 70 72

time_test$52:	; £temporary6157 = s$tm_year + 1900
x576:	mov ax, [bp + 34]	; 3: -117 70 34
x579:	add ax, 1900	; 3: 5 108 7

time_test$53:	; parameter £temporary6157, offset 10
x582:	mov [bp + 74], ax	; 3: -119 70 74

time_test$54:	; £temporary6159 = s$tm_mon + 1
x585:	mov ax, [bp + 32]	; 3: -117 70 32
x588:	inc ax	; 1: 64

time_test$55:	; parameter £temporary6159, offset 12
x589:	mov [bp + 76], ax	; 3: -119 70 76

time_test$56:	; parameter s$tm_mday, offset 14
x592:	mov ax, [bp + 30]	; 3: -117 70 30
x595:	mov [bp + 78], ax	; 3: -119 70 78

time_test$57:	; parameter s$tm_hour, offset 16
x598:	mov ax, [bp + 28]	; 3: -117 70 28
x601:	mov [bp + 80], ax	; 3: -119 70 80

time_test$58:	; parameter s$tm_min, offset 18
x604:	mov ax, [bp + 26]	; 3: -117 70 26
x607:	mov [bp + 82], ax	; 3: -119 70 82

time_test$59:	; parameter s$tm_sec, offset 20
x610:	mov ax, [bp + 24]	; 3: -117 70 24
x613:	mov [bp + 84], ax	; 3: -119 70 84

time_test$60:	; parameter s$tm_yday, offset 22
x616:	mov ax, [bp + 38]	; 3: -117 70 38
x619:	mov [bp + 86], ax	; 3: -119 70 86

time_test$61:	; parameter s$tm_wday, offset 24
x622:	mov ax, [bp + 36]	; 3: -117 70 36
x625:	mov [bp + 88], ax	; 3: -119 70 88

time_test$62:	; parameter s$tm_isdst, offset 26
x628:	mov ax, [bp + 40]	; 3: -117 70 40
x631:	mov [bp + 90], ax	; 3: -119 70 90

time_test$63:	; call function noellipse-ellipse printf, extra 0
x634:	mov word [bp + 64], time_test$64	; 5: -57 70 64 -115 2
x639:	mov [bp + 66], bp	; 3: -119 110 66
x642:	add bp, 64	; 3: -125 -59 64
x645:	mov di, bp	; 2: -119 -17
x647:	add di, 20	; 3: -125 -57 20
x650:	jmp printf	; 3: -23 32 12

time_test$64:	; post call

time_test$65:	; call header integral zero 0 stack zero 0

time_test$66:	; parameter string_local20time3A2025s2025i2D25i2D25i2025i3A25i3A25i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#, offset 6
x653:	mov word [bp + 70], string_local20time3A2025s2025i2D25i2D25i2025i3A25i3A25i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#	; 5: -57 70 70 -85 4

time_test$67:	; £temporary6170 = t$tm_wday * 2
x658:	mov ax, [bp + 54]	; 3: -117 70 54
x661:	xor dx, dx	; 2: 49 -46
x663:	mul word [int2$2#]	; 4: -9 38 -87 4

time_test$68:	; £temporary6171 = weekdays + £temporary6170
x667:	mov si, bp	; 2: -119 -18
x669:	add si, 6	; 3: -125 -58 6
x672:	add si, ax	; 2: 1 -58

time_test$69:	; £temporary6169 -> £temporary6171 = *£temporary6171

time_test$70:	; parameter £temporary6169 -> £temporary6171, offset 8
x674:	mov ax, [si]	; 2: -117 4
x676:	mov [bp + 72], ax	; 3: -119 70 72

time_test$71:	; £temporary6173 = t$tm_year + 1900
x679:	mov ax, [bp + 52]	; 3: -117 70 52
x682:	add ax, 1900	; 3: 5 108 7

time_test$72:	; parameter £temporary6173, offset 10
x685:	mov [bp + 74], ax	; 3: -119 70 74

time_test$73:	; £temporary6175 = t$tm_mon + 1
x688:	mov ax, [bp + 50]	; 3: -117 70 50
x691:	inc ax	; 1: 64

time_test$74:	; parameter £temporary6175, offset 12
x692:	mov [bp + 76], ax	; 3: -119 70 76

time_test$75:	; parameter t$tm_mday, offset 14
x695:	mov ax, [bp + 48]	; 3: -117 70 48
x698:	mov [bp + 78], ax	; 3: -119 70 78

time_test$76:	; parameter t$tm_hour, offset 16
x701:	mov ax, [bp + 46]	; 3: -117 70 46
x704:	mov [bp + 80], ax	; 3: -119 70 80

time_test$77:	; parameter t$tm_min, offset 18
x707:	mov ax, [bp + 44]	; 3: -117 70 44
x710:	mov [bp + 82], ax	; 3: -119 70 82

time_test$78:	; parameter t$tm_sec, offset 20
x713:	mov ax, [bp + 42]	; 3: -117 70 42
x716:	mov [bp + 84], ax	; 3: -119 70 84

time_test$79:	; parameter t$tm_yday, offset 22
x719:	mov ax, [bp + 56]	; 3: -117 70 56
x722:	mov [bp + 86], ax	; 3: -119 70 86

time_test$80:	; parameter t$tm_wday, offset 24
x725:	mov ax, [bp + 54]	; 3: -117 70 54
x728:	mov [bp + 88], ax	; 3: -119 70 88

time_test$81:	; parameter t$tm_isdst, offset 26
x731:	mov ax, [bp + 58]	; 3: -117 70 58
x734:	mov [bp + 90], ax	; 3: -119 70 90

time_test$82:	; call function noellipse-ellipse printf, extra 0
x737:	mov word [bp + 64], time_test$83	; 5: -57 70 64 -12 2
x742:	mov [bp + 66], bp	; 3: -119 110 66
x745:	add bp, 64	; 3: -125 -59 64
x748:	mov di, bp	; 2: -119 -17
x750:	add di, 20	; 3: -125 -57 20
x753:	jmp printf	; 3: -23 -71 11

time_test$83:	; post call

time_test$84:	; call header integral zero 0 stack zero 0

time_test$85:	; parameter buffer1, offset 6
x756:	mov [bp + 572], bp	; 4: -119 -82 60 2
x760:	add word [bp + 572], 64	; 5: -125 -122 60 2 64

time_test$86:	; call header integral zero 0 stack zero 0

time_test$87:	; £temporary6184 = &s
x765:	mov si, bp	; 2: -119 -18
x767:	add si, 24	; 3: -125 -58 24

time_test$88:	; parameter £temporary6184, offset 112
x770:	mov [bp + 678], si	; 4: -119 -74 -90 2

time_test$89:	; call function noellipse-noellipse asctime
x774:	mov word [bp + 672], time_test$90	; 6: -57 -122 -96 2 23 3
x780:	mov [bp + 674], bp	; 4: -119 -82 -94 2
x784:	add bp, 672	; 4: -127 -59 -96 2
x788:	jmp asctime	; 3: -23 -67 38

time_test$90:	; post call

time_test$91:	; £temporary6185 = return_value

time_test$92:	; parameter £temporary6185, offset 8
x791:	mov [bp + 574], bx	; 4: -119 -98 62 2

time_test$93:	; call function noellipse-noellipse strcpy
x795:	mov word [bp + 566], time_test$94	; 6: -57 -122 54 2 44 3
x801:	mov [bp + 568], bp	; 4: -119 -82 56 2
x805:	add bp, 566	; 4: -127 -59 54 2
x809:	jmp strcpy	; 3: -23 36 41

time_test$94:	; post call

time_test$95:	; call header integral zero 0 stack zero 0

time_test$96:	; parameter buffer2, offset 6
x812:	mov [bp + 572], bp	; 4: -119 -82 60 2
x816:	add word [bp + 572], 164	; 6: -127 -122 60 2 -92 0

time_test$97:	; call header integral zero 0 stack zero 0

time_test$98:	; £temporary6187 = &now1
x822:	mov si, bp	; 2: -119 -18
x824:	add si, 20	; 3: -125 -58 20

time_test$99:	; parameter £temporary6187, offset 112
x827:	mov [bp + 678], si	; 4: -119 -74 -90 2

time_test$100:	; call function noellipse-noellipse ctime
x831:	mov word [bp + 672], time_test$101	; 6: -57 -122 -96 2 80 3
x837:	mov [bp + 674], bp	; 4: -119 -82 -94 2
x841:	add bp, 672	; 4: -127 -59 -96 2
x845:	jmp ctime	; 3: -23 60 41

time_test$101:	; post call

time_test$102:	; £temporary6188 = return_value

time_test$103:	; parameter £temporary6188, offset 8
x848:	mov [bp + 574], bx	; 4: -119 -98 62 2

time_test$104:	; call function noellipse-noellipse strcpy
x852:	mov word [bp + 566], time_test$105	; 6: -57 -122 54 2 101 3
x858:	mov [bp + 568], bp	; 4: -119 -82 56 2
x862:	add bp, 566	; 4: -127 -59 54 2
x866:	jmp strcpy	; 3: -23 -21 40

time_test$105:	; post call

time_test$106:	; call header integral zero 0 stack zero 0

time_test$107:	; parameter string_asctime203C25s3E2C20ctime203C25s3E0A#, offset 6
x869:	mov word [bp + 572], string_asctime203C25s3E2C20ctime203C25s3E0A#	; 6: -57 -122 60 2 0 5

time_test$108:	; parameter buffer1, offset 8
x875:	mov [bp + 574], bp	; 4: -119 -82 62 2
x879:	add word [bp + 574], 64	; 5: -125 -122 62 2 64

time_test$109:	; parameter buffer2, offset 10
x884:	mov [bp + 576], bp	; 4: -119 -82 64 2
x888:	add word [bp + 576], 164	; 6: -127 -122 64 2 -92 0

time_test$110:	; call function noellipse-ellipse printf, extra 0
x894:	mov word [bp + 566], time_test$111	; 6: -57 -122 54 2 -108 3
x900:	mov [bp + 568], bp	; 4: -119 -82 56 2
x904:	add bp, 566	; 4: -127 -59 54 2
x908:	mov di, bp	; 2: -119 -17
x910:	add di, 4	; 3: -125 -57 4
x913:	jmp printf	; 3: -23 25 11

time_test$111:	; post call

time_test$112:	; call header integral zero 0 stack zero 0

time_test$113:	; parameter buffer, offset 6
x916:	mov [bp + 572], bp	; 4: -119 -82 60 2
x920:	add word [bp + 572], 264	; 6: -127 -122 60 2 8 1

time_test$114:	; parameter 300, offset 8
x926:	mov word [bp + 574], 300	; 6: -57 -122 62 2 44 1

time_test$115:	; parameter string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y#, offset 10
x932:	mov word [bp + 576], string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y#	; 6: -57 -122 64 2 26 5

time_test$116:	; £temporary6191 = &t
x938:	mov si, bp	; 2: -119 -18
x940:	add si, 42	; 3: -125 -58 42

time_test$117:	; parameter £temporary6191, offset 12
x943:	mov [bp + 578], si	; 4: -119 -74 66 2

time_test$118:	; call function noellipse-noellipse strftime
x947:	mov word [bp + 566], time_test$119	; 6: -57 -122 54 2 -60 3
x953:	mov [bp + 568], bp	; 4: -119 -82 56 2
x957:	add bp, 566	; 4: -127 -59 54 2
x961:	jmp strftime	; 3: -23 -8 40

time_test$119:	; post call

time_test$120:	; £temporary6192 = return_value

time_test$121:	; i = £temporary6192
x964:	mov [bp + 564], bx	; 4: -119 -98 52 2

time_test$122:	; call header integral zero 0 stack zero 0

time_test$123:	; parameter string_strftime2025i2025i203C25s3E0A#, offset 6
x968:	mov word [bp + 572], string_strftime2025i2025i203C25s3E0A#	; 6: -57 -122 60 2 16 6

time_test$124:	; parameter i, offset 8
x974:	mov ax, [bp + 564]	; 4: -117 -122 52 2
x978:	mov [bp + 574], ax	; 4: -119 -122 62 2

time_test$125:	; call header integral zero 0 stack zero 0

time_test$126:	; parameter buffer, offset 16
x982:	mov [bp + 582], bp	; 4: -119 -82 70 2
x986:	add word [bp + 582], 264	; 6: -127 -122 70 2 8 1

time_test$127:	; call function noellipse-noellipse strlen
x992:	mov word [bp + 576], time_test$128	; 6: -57 -122 64 2 -15 3
x998:	mov [bp + 578], bp	; 4: -119 -82 66 2
x1002:	add bp, 576	; 4: -127 -59 64 2
x1006:	jmp strlen	; 3: -23 -4 47

time_test$128:	; post call

time_test$129:	; £temporary6193 = return_value

time_test$130:	; parameter £temporary6193, offset 10
x1009:	mov [bp + 576], bx	; 4: -119 -98 64 2

time_test$131:	; parameter buffer, offset 12
x1013:	mov [bp + 578], bp	; 4: -119 -82 66 2
x1017:	add word [bp + 578], 264	; 6: -127 -122 66 2 8 1

time_test$132:	; call function noellipse-ellipse printf, extra 0
x1023:	mov word [bp + 566], time_test$133	; 6: -57 -122 54 2 21 4
x1029:	mov [bp + 568], bp	; 4: -119 -82 56 2
x1033:	add bp, 566	; 4: -127 -59 54 2
x1037:	mov di, bp	; 2: -119 -17
x1039:	add di, 6	; 3: -125 -57 6
x1042:	jmp printf	; 3: -23 -104 10

time_test$133:	; post call

time_test$134:	; return
x1045:	mov ax, [bp]	; 3: -117 70 0
x1048:	mov di, [bp + 4]	; 3: -117 126 4
x1051:	mov bp, [bp + 2]	; 3: -117 110 2
x1054:	jmp ax	; 2: -1 -32

time_test$135:	; function end time_test

string_Sun#:
x1056:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x1060:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x1064:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x1068:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x1072:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x1076:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x1080:	db "Sat", 0	; 4: 83 97 116 0

string_now2013A2025lu0A#:
x1084:	db "now 1: %lu", 10, 0	; 12: 110 111 119 32 49 58 32 37 108 117 10 0

string_now2023A2025lu0A#:
x1096:	db "now 2: %lu", 10, 0	; 12: 110 111 119 32 50 58 32 37 108 117 10 0

string_202020gm20time3A2025s2025i2D25i2D25i2025i3A25i3A25i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#:
x1108:	db "   gm time: %s %i-%i-%i %i:%i:%i, year day %i, week day %i, daylight saving time %i", 10, 0	; 85: 32 32 32 103 109 32 116 105 109 101 58 32 37 115 32 37 105 45 37 105 45 37 105 32 37 105 58 37 105 58 37 105 44 32 121 101 97 114 32 100 97 121 32 37 105 44 32 119 101 101 107 32 100 97 121 32 37 105 44 32 100 97 121 108 105 103 104 116 32 115 97 118 105 110 103 32 116 105 109 101 32 37 105 10 0

int2$2#:
x1193:	dw 2	; 2: 2 0

string_local20time3A2025s2025i2D25i2D25i2025i3A25i3A25i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#:
x1195:	db "local time: %s %i-%i-%i %i:%i:%i, year day %i, week day %i, daylight saving time %i", 10, 0	; 85: 108 111 99 97 108 32 116 105 109 101 58 32 37 115 32 37 105 45 37 105 45 37 105 32 37 105 58 37 105 58 37 105 44 32 121 101 97 114 32 100 97 121 32 37 105 44 32 119 101 101 107 32 100 97 121 32 37 105 44 32 100 97 121 108 105 103 104 116 32 115 97 118 105 110 103 32 116 105 109 101 32 37 105 10 0

string_asctime203C25s3E2C20ctime203C25s3E0A#:
x1280:	db "asctime <%s>, ctime <%s>", 10, 0	; 26: 97 115 99 116 105 109 101 32 60 37 115 62 44 32 99 116 105 109 101 32 60 37 115 62 10 0

string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y#:
x1306:	db "short day %a, long day %A, short month %b, long month %B, date-time %c, mday %d, hour %H, gm hour %I, yday %j, month %m, min %M, am/pm %p, sec %S, week number sun %U, week day %w, week number mon %W, date %x, time %X, short year %y, long year %Y", 0	; 246: 115 104 111 114 116 32 100 97 121 32 37 97 44 32 108 111 110 103 32 100 97 121 32 37 65 44 32 115 104 111 114 116 32 109 111 110 116 104 32 37 98 44 32 108 111 110 103 32 109 111 110 116 104 32 37 66 44 32 100 97 116 101 45 116 105 109 101 32 37 99 44 32 109 100 97 121 32 37 100 44 32 104 111 117 114 32 37 72 44 32 103 109 32 104 111 117 114 32 37 73 44 32 121 100 97 121 32 37 106 44 32 109 111 110 116 104 32 37 109 44 32 109 105 110 32 37 77 44 32 97 109 47 112 109 32 37 112 44 32 115 101 99 32 37 83 44 32 119 101 101 107 32 110 117 109 98 101 114 32 115 117 110 32 37 85 44 32 119 101 101 107 32 100 97 121 32 37 119 44 32 119 101 101 107 32 110 117 109 98 101 114 32 109 111 110 32 37 87 44 32 100 97 116 101 32 37 120 44 32 116 105 109 101 32 37 88 44 32 115 104 111 114 116 32 121 101 97 114 32 37 121 44 32 108 111 110 103 32 121 101 97 114 32 37 89 0

string_strftime2025i2025i203C25s3E0A#:
x1552:	db "strftime %i %i <%s>", 10, 0	; 21: 115 116 114 102 116 105 109 101 32 37 105 32 37 105 32 60 37 115 62 10 0

time:	; ah = 42
x1573:	mov ah, 42	; 2: -76 42

time$1:	; interrupt 33
x1575:	int 33	; 2: -51 33

time$2:	; £temporary3418 = cx

time$3:	; year = £temporary3418 - 1900
x1577:	sub cx, 1900	; 4: -127 -23 108 7
x1581:	mov [bp + 12], cx	; 3: -119 78 12

time$4:	; £temporary3420 = dh

time$5:	; month = £temporary3420 - 1
x1584:	dec dh	; 2: -2 -50
x1586:	mov [bp + 14], dh	; 3: -120 118 14

time$6:	; £temporary3422 = dl

time$7:	; monthDay = £temporary3422
x1589:	mov [bp + 15], dl	; 3: -120 86 15

time$8:	; ah = 44
x1592:	mov ah, 44	; 2: -76 44

time$9:	; interrupt 33
x1594:	int 33	; 2: -51 33

time$10:	; £temporary3424 = ch

time$11:	; hour = £temporary3424
x1596:	mov [bp + 16], ch	; 3: -120 110 16

time$12:	; £temporary3425 = cl

time$13:	; min = £temporary3425
x1599:	mov [bp + 17], cl	; 3: -120 78 17

time$14:	; £temporary3426 = dh

time$15:	; sec = £temporary3426
x1602:	mov [bp + 18], dh	; 3: -120 118 18

time$16:	; £temporary3427 = year % 4
x1605:	mov ax, [bp + 12]	; 3: -117 70 12
x1608:	xor dx, dx	; 2: 49 -46
x1610:	idiv word [int2$4#]	; 4: -9 62 -114 7

time$17:	; if £temporary3427 != 0 goto 20
x1614:	cmp dx, 0	; 3: -125 -6 0
x1617:	jne time$20	; 2: 117 5

time$18:	; £temporary3429 = 1
x1619:	mov ax, 1	; 3: -72 1 0

time$19:	; goto 21
x1622:	jmp time$21	; 2: -21 3

time$20:	; £temporary3429 = 0
x1624:	mov ax, 0	; 3: -72 0 0

time$21:	; leapYear = £temporary3429
x1627:	mov [bp + 19], ax	; 3: -119 70 19

time$22:	; daysOfMonths[0] = 31
x1630:	mov word [bp + 21], 31	; 5: -57 70 21 31 0

time$23:	; if leapYear == 0 goto 26
x1635:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x1639:	je time$26	; 2: 116 5

time$24:	; £temporary3434 = 29
x1641:	mov ax, 29	; 3: -72 29 0

time$25:	; goto 27
x1644:	jmp time$27	; 2: -21 3

time$26:	; £temporary3434 = 28
x1646:	mov ax, 28	; 3: -72 28 0

time$27:	; daysOfMonths[1] = £temporary3434
x1649:	mov [bp + 23], ax	; 3: -119 70 23

time$28:	; daysOfMonths[2] = 31
x1652:	mov word [bp + 25], 31	; 5: -57 70 25 31 0

time$29:	; daysOfMonths[3] = 30
x1657:	mov word [bp + 27], 30	; 5: -57 70 27 30 0

time$30:	; daysOfMonths[4] = 31
x1662:	mov word [bp + 29], 31	; 5: -57 70 29 31 0

time$31:	; daysOfMonths[5] = 30
x1667:	mov word [bp + 31], 30	; 5: -57 70 31 30 0

time$32:	; daysOfMonths[6] = 30
x1672:	mov word [bp + 33], 30	; 5: -57 70 33 30 0

time$33:	; daysOfMonths[7] = 31
x1677:	mov word [bp + 35], 31	; 5: -57 70 35 31 0

time$34:	; daysOfMonths[8] = 30
x1682:	mov word [bp + 37], 30	; 5: -57 70 37 30 0

time$35:	; daysOfMonths[9] = 31
x1687:	mov word [bp + 39], 31	; 5: -57 70 39 31 0

time$36:	; daysOfMonths[10] = 30
x1692:	mov word [bp + 41], 30	; 5: -57 70 41 30 0

time$37:	; daysOfMonths[11] = 31
x1697:	mov word [bp + 43], 31	; 5: -57 70 43 31 0

time$38:	; £temporary3447 = int_to_int monthDay (Signed_Short_Int -> Signed_Int)
x1702:	mov al, [bp + 15]	; 3: -118 70 15
x1705:	and ax, 255	; 3: 37 -1 0
x1708:	cmp al, 0	; 2: 60 0
x1710:	jge time$39	; 2: 125 4
x1712:	neg al	; 2: -10 -40
x1714:	neg ax	; 2: -9 -40

time$39:	; yearDay = £temporary3447 - 1
x1716:	dec ax	; 1: 72
x1717:	mov [bp + 45], ax	; 3: -119 70 45

time$40:	; mon = 0
x1720:	mov word [bp + 47], 0	; 5: -57 70 47 0 0

time$41:	; £temporary3449 = int_to_int month (Signed_Short_Int -> Signed_Int)
x1725:	mov al, [bp + 14]	; 3: -118 70 14
x1728:	and ax, 255	; 3: 37 -1 0
x1731:	cmp al, 0	; 2: 60 0
x1733:	jge time$42	; 2: 125 4
x1735:	neg al	; 2: -10 -40
x1737:	neg ax	; 2: -9 -40

time$42:	; if mon >= £temporary3449 goto 49
x1739:	cmp [bp + 47], ax	; 3: 57 70 47
x1742:	jge time$49	; 2: 125 26

time$43:	; £temporary3453 = mon * 2
x1744:	mov ax, [bp + 47]	; 3: -117 70 47
x1747:	xor dx, dx	; 2: 49 -46
x1749:	mul word [int2$2#]	; 4: -9 38 -87 4

time$44:	; £temporary3454 = daysOfMonths + £temporary3453
x1753:	mov si, bp	; 2: -119 -18
x1755:	add si, 21	; 3: -125 -58 21
x1758:	add si, ax	; 2: 1 -58

time$45:	; £temporary3452 -> £temporary3454 = *£temporary3454

time$46:	; yearDay = yearDay + £temporary3452 -> £temporary3454
x1760:	mov ax, [si]	; 2: -117 4
x1762:	add [bp + 45], ax	; 3: 1 70 45

time$47:	; ++mon
x1765:	inc word [bp + 47]	; 3: -1 70 47

time$48:	; goto 41
x1768:	jmp time$41	; 2: -21 -45

time$49:	; £temporary3457 = int_to_int sec (Signed_Short_Int -> Signed_Int)
x1770:	mov al, [bp + 18]	; 3: -118 70 18
x1773:	and ax, 255	; 3: 37 -1 0
x1776:	cmp al, 0	; 2: 60 0
x1778:	jge time$50	; 2: 125 4
x1780:	neg al	; 2: -10 -40
x1782:	neg ax	; 2: -9 -40

time$50:	; s$tm_sec = £temporary3457
x1784:	mov [bp + 49], ax	; 3: -119 70 49

time$51:	; £temporary3459 = int_to_int min (Signed_Short_Int -> Signed_Int)
x1787:	mov al, [bp + 17]	; 3: -118 70 17
x1790:	and ax, 255	; 3: 37 -1 0
x1793:	cmp al, 0	; 2: 60 0
x1795:	jge time$52	; 2: 125 4
x1797:	neg al	; 2: -10 -40
x1799:	neg ax	; 2: -9 -40

time$52:	; s$tm_min = £temporary3459
x1801:	mov [bp + 51], ax	; 3: -119 70 51

time$53:	; £temporary3461 = int_to_int hour (Signed_Short_Int -> Signed_Int)
x1804:	mov al, [bp + 16]	; 3: -118 70 16
x1807:	and ax, 255	; 3: 37 -1 0
x1810:	cmp al, 0	; 2: 60 0
x1812:	jge time$54	; 2: 125 4
x1814:	neg al	; 2: -10 -40
x1816:	neg ax	; 2: -9 -40

time$54:	; s$tm_hour = £temporary3461
x1818:	mov [bp + 53], ax	; 3: -119 70 53

time$55:	; £temporary3463 = int_to_int monthDay (Signed_Short_Int -> Signed_Int)
x1821:	mov al, [bp + 15]	; 3: -118 70 15
x1824:	and ax, 255	; 3: 37 -1 0
x1827:	cmp al, 0	; 2: 60 0
x1829:	jge time$56	; 2: 125 4
x1831:	neg al	; 2: -10 -40
x1833:	neg ax	; 2: -9 -40

time$56:	; s$tm_mday = £temporary3463
x1835:	mov [bp + 55], ax	; 3: -119 70 55

time$57:	; £temporary3465 = int_to_int month (Signed_Short_Int -> Signed_Int)
x1838:	mov al, [bp + 14]	; 3: -118 70 14
x1841:	and ax, 255	; 3: 37 -1 0
x1844:	cmp al, 0	; 2: 60 0
x1846:	jge time$58	; 2: 125 4
x1848:	neg al	; 2: -10 -40
x1850:	neg ax	; 2: -9 -40

time$58:	; s$tm_mon = £temporary3465
x1852:	mov [bp + 57], ax	; 3: -119 70 57

time$59:	; s$tm_year = year
x1855:	mov ax, [bp + 12]	; 3: -117 70 12
x1858:	mov [bp + 59], ax	; 3: -119 70 59

time$60:	; s$tm_wday = 0
x1861:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

time$61:	; s$tm_yday = yearDay
x1866:	mov ax, [bp + 45]	; 3: -117 70 45
x1869:	mov [bp + 63], ax	; 3: -119 70 63

time$62:	; s$tm_isdst = 0
x1872:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

time$63:	; call header integral zero 0 stack zero 0

time$64:	; £temporary3470 = &s
x1877:	mov si, bp	; 2: -119 -18
x1879:	add si, 49	; 3: -125 -58 49

time$65:	; parameter £temporary3470, offset 6
x1882:	mov [bp + 73], si	; 3: -119 118 73

time$66:	; call function noellipse-noellipse mktime
x1885:	mov word [bp + 67], time$67	; 5: -57 70 67 107 7
x1890:	mov [bp + 69], bp	; 3: -119 110 69
x1893:	add bp, 67	; 3: -125 -59 67
x1896:	nop	; 1: -112
x1897:	jmp mktime	; 2: -21 37

time$67:	; post call

time$68:	; £temporary3471 = return_value

time$69:	; time = £temporary3471
x1899:	mov [bp + 8], ebx	; 4: 102 -119 94 8

time$70:	; if timePtr == 0 goto 73
x1903:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x1907:	je time$73	; 2: 116 10

time$71:	; £temporary3473 -> timePtr = *timePtr
x1909:	mov si, [bp + 6]	; 3: -117 118 6

time$72:	; £temporary3473 -> timePtr = time
x1912:	mov eax, [bp + 8]	; 4: 102 -117 70 8
x1916:	mov [si], eax	; 3: 102 -119 4

time$73:	; return_value = time
x1919:	mov ebx, [bp + 8]	; 4: 102 -117 94 8

time$74:	; return
x1923:	mov ax, [bp]	; 3: -117 70 0
x1926:	mov di, [bp + 4]	; 3: -117 126 4
x1929:	mov bp, [bp + 2]	; 3: -117 110 2
x1932:	jmp ax	; 2: -1 -32

time$75:	; function end time

int2$4#:
x1934:	dw 4	; 2: 4 0

mktime:	; if tp == 0 goto 28
x1936:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x1940:	je mktime$28	; 4: 15 -124 -40 0

mktime$1:	; £temporary3477 -> tp = *tp, offset 10
x1944:	mov si, [bp + 6]	; 3: -117 118 6

mktime$2:	; £temporary3478 = £temporary3477 -> tp - 69
x1947:	mov ax, [si + 10]	; 3: -117 68 10
x1950:	sub ax, 69	; 3: -125 -24 69

mktime$3:	; £temporary3479 = £temporary3478 / 4
x1953:	xor dx, dx	; 2: 49 -46
x1955:	idiv word [int2$4#]	; 4: -9 62 -114 7

mktime$4:	; £temporary3480 = int_to_int £temporary3479 (Signed_Int -> Signed_Long_Int)
x1959:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x1965:	cmp ax, 0	; 3: -125 -8 0
x1968:	jge mktime$5	; 2: 125 5
x1970:	neg ax	; 2: -9 -40
x1972:	neg eax	; 3: 102 -9 -40

mktime$5:	; leapDays = £temporary3480
x1975:	mov [bp + 8], eax	; 4: 102 -119 70 8

mktime$6:	; £temporary3481 -> tp = *tp, offset 10
x1979:	mov si, [bp + 6]	; 3: -117 118 6

mktime$7:	; £temporary3482 = £temporary3481 -> tp - 70
x1982:	mov ax, [si + 10]	; 3: -117 68 10
x1985:	sub ax, 70	; 3: -125 -24 70

mktime$8:	; £temporary3483 = £temporary3482 * 365
x1988:	xor dx, dx	; 2: 49 -46
x1990:	imul word [int2$365#]	; 4: -9 46 -127 8

mktime$9:	; £temporary3484 = int_to_int £temporary3483 (Signed_Int -> Signed_Long_Int)
x1994:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2000:	cmp ax, 0	; 3: -125 -8 0
x2003:	jge mktime$10	; 2: 125 5
x2005:	neg ax	; 2: -9 -40
x2007:	neg eax	; 3: 102 -9 -40

mktime$10:	; £temporary3485 = £temporary3484 + leapDays
x2010:	add eax, [bp + 8]	; 4: 102 3 70 8

mktime$11:	; £temporary3486 -> tp = *tp, offset 14
x2014:	mov si, [bp + 6]	; 3: -117 118 6

mktime$12:	; £temporary3487 = int_to_int £temporary3486 -> tp (Signed_Int -> Signed_Long_Int)
x2017:	mov bx, [si + 14]	; 3: -117 92 14
x2020:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x2027:	cmp bx, 0	; 3: -125 -5 0
x2030:	jge mktime$13	; 2: 125 5
x2032:	neg bx	; 2: -9 -37
x2034:	neg ebx	; 3: 102 -9 -37

mktime$13:	; totalDays = £temporary3485 + £temporary3487
x2037:	add eax, ebx	; 3: 102 1 -40
x2040:	mov [bp + 12], eax	; 4: 102 -119 70 12

mktime$14:	; £temporary3489 = totalDays * 86400
x2044:	mov eax, [bp + 12]	; 4: 102 -117 70 12
x2048:	xor edx, edx	; 3: 102 49 -46
x2051:	imul dword [int4$86400#]	; 5: 102 -9 46 -125 8
x2056:	mov ebx, eax	; 3: 102 -119 -61

mktime$15:	; £temporary3490 -> tp = *tp, offset 4
x2059:	mov si, [bp + 6]	; 3: -117 118 6

mktime$16:	; £temporary3491 = int_to_int £temporary3490 -> tp (Signed_Int -> Signed_Long_Int)
x2062:	mov ax, [si + 4]	; 3: -117 68 4
x2065:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2071:	cmp ax, 0	; 3: -125 -8 0
x2074:	jge mktime$17	; 2: 125 5
x2076:	neg ax	; 2: -9 -40
x2078:	neg eax	; 3: 102 -9 -40

mktime$17:	; £temporary3492 = £temporary3491 * 3600
x2081:	xor edx, edx	; 3: 102 49 -46
x2084:	imul dword [int4$3600#]	; 5: 102 -9 46 -121 8

mktime$18:	; £temporary3493 = £temporary3489 + £temporary3492
x2089:	add ebx, eax	; 3: 102 1 -61

mktime$19:	; £temporary3494 -> tp = *tp, offset 2
x2092:	mov si, [bp + 6]	; 3: -117 118 6

mktime$20:	; £temporary3495 = int_to_int £temporary3494 -> tp (Signed_Int -> Signed_Long_Int)
x2095:	mov ax, [si + 2]	; 3: -117 68 2
x2098:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2104:	cmp ax, 0	; 3: -125 -8 0
x2107:	jge mktime$21	; 2: 125 5
x2109:	neg ax	; 2: -9 -40
x2111:	neg eax	; 3: 102 -9 -40

mktime$21:	; £temporary3496 = £temporary3495 * 60
x2114:	xor edx, edx	; 3: 102 49 -46
x2117:	imul dword [int4$60#]	; 5: 102 -9 46 -117 8

mktime$22:	; £temporary3497 = £temporary3493 + £temporary3496
x2122:	add ebx, eax	; 3: 102 1 -61

mktime$23:	; £temporary3498 -> tp = *tp
x2125:	mov si, [bp + 6]	; 3: -117 118 6

mktime$24:	; £temporary3499 = int_to_int £temporary3498 -> tp (Signed_Int -> Signed_Long_Int)
x2128:	mov ax, [si]	; 2: -117 4
x2130:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2136:	cmp ax, 0	; 3: -125 -8 0
x2139:	jge mktime$25	; 2: 125 5
x2141:	neg ax	; 2: -9 -40
x2143:	neg eax	; 3: 102 -9 -40

mktime$25:	; £temporary3500 = £temporary3497 + £temporary3499
x2146:	add ebx, eax	; 3: 102 1 -61

mktime$26:	; return_value = £temporary3500

mktime$27:	; return
x2149:	mov ax, [bp]	; 3: -117 70 0
x2152:	mov di, [bp + 4]	; 3: -117 126 4
x2155:	mov bp, [bp + 2]	; 3: -117 110 2
x2158:	jmp ax	; 2: -1 -32

mktime$28:	; return_value = 0
x2160:	mov ebx, 0	; 6: 102 -69 0 0 0 0

mktime$29:	; return
x2166:	mov ax, [bp]	; 3: -117 70 0
x2169:	mov di, [bp + 4]	; 3: -117 126 4
x2172:	mov bp, [bp + 2]	; 3: -117 110 2
x2175:	jmp ax	; 2: -1 -32

mktime$30:	; function end mktime

int2$365#:
x2177:	dw 365	; 2: 109 1

int4$86400#:
x2179:	dd 86400	; 4: -128 81 1 0

int4$3600#:
x2183:	dd 3600	; 4: 16 14 0 0

int4$60#:
x2187:	dd 60	; 4: 60 0 0 0

gmtime:	; year = 1970
x2191:	mov word [bp + 8], 1970	; 5: -57 70 8 -78 7

gmtime$1:	; if timePtr == 0 goto 85
x2196:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x2200:	je gmtime$85	; 4: 15 -124 46 2

gmtime$2:	; £temporary3516 -> timePtr = *timePtr
x2204:	mov si, [bp + 6]	; 3: -117 118 6

gmtime$3:	; time = £temporary3516 -> timePtr
x2207:	mov eax, [si]	; 3: 102 -117 4
x2210:	mov [bp + 10], eax	; 4: 102 -119 70 10

gmtime$4:	; totalDays = time / 86400
x2214:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x2218:	xor edx, edx	; 3: 102 49 -46
x2221:	idiv dword [int4$86400#]	; 5: 102 -9 62 -125 8
x2226:	mov [bp + 14], eax	; 4: 102 -119 70 14

gmtime$5:	; secondsOfDay = time % 86400
x2230:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x2234:	xor edx, edx	; 3: 102 49 -46
x2237:	idiv dword [int4$86400#]	; 5: 102 -9 62 -125 8
x2242:	mov [bp + 18], edx	; 4: 102 -119 86 18

gmtime$6:	; secondsOfHour = secondsOfDay % 3600
x2246:	mov eax, [bp + 18]	; 4: 102 -117 70 18
x2250:	xor edx, edx	; 3: 102 49 -46
x2253:	idiv dword [int4$3600#]	; 5: 102 -9 62 -121 8
x2258:	mov [bp + 22], edx	; 4: 102 -119 86 22

gmtime$7:	; £temporary3521 = secondsOfDay / 3600
x2262:	mov eax, [bp + 18]	; 4: 102 -117 70 18
x2266:	xor edx, edx	; 3: 102 49 -46
x2269:	idiv dword [int4$3600#]	; 5: 102 -9 62 -121 8

gmtime$8:	; £temporary3522 = int_to_int £temporary3521 (Signed_Long_Int -> Signed_Int)
x2274:	cmp eax, 0	; 4: 102 -125 -8 0
x2278:	jge gmtime$9	; 2: 125 5
x2280:	neg eax	; 3: 102 -9 -40
x2283:	neg ax	; 2: -9 -40

gmtime$9:	; g_timeStruct$tm_hour = £temporary3522
x2285:	mov [@27$g_timeStruct + 4], ax	; 3: -93 -36 10

gmtime$10:	; £temporary3524 = secondsOfHour / 60
x2288:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x2292:	xor edx, edx	; 3: 102 49 -46
x2295:	idiv dword [int4$60#]	; 5: 102 -9 62 -117 8

gmtime$11:	; £temporary3525 = int_to_int £temporary3524 (Signed_Long_Int -> Signed_Int)
x2300:	cmp eax, 0	; 4: 102 -125 -8 0
x2304:	jge gmtime$12	; 2: 125 5
x2306:	neg eax	; 3: 102 -9 -40
x2309:	neg ax	; 2: -9 -40

gmtime$12:	; g_timeStruct$tm_min = £temporary3525
x2311:	mov [@27$g_timeStruct + 2], ax	; 3: -93 -38 10

gmtime$13:	; £temporary3527 = secondsOfHour % 60
x2314:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x2318:	xor edx, edx	; 3: 102 49 -46
x2321:	idiv dword [int4$60#]	; 5: 102 -9 62 -117 8

gmtime$14:	; £temporary3528 = int_to_int £temporary3527 (Signed_Long_Int -> Signed_Int)
x2326:	cmp edx, 0	; 4: 102 -125 -6 0
x2330:	jge gmtime$15	; 2: 125 5
x2332:	neg edx	; 3: 102 -9 -38
x2335:	neg dx	; 2: -9 -38

gmtime$15:	; g_timeStruct$tm_sec = £temporary3528
x2337:	mov [@27$g_timeStruct], dx	; 4: -119 22 -40 10

gmtime$16:	; if totalDays >= 3 goto 21
x2341:	cmp dword [bp + 14], 3	; 5: 102 -125 126 14 3
x2346:	jge gmtime$21	; 2: 125 24

gmtime$17:	; £temporary3531 = totalDays + 4
x2348:	mov eax, [bp + 14]	; 4: 102 -117 70 14
x2352:	add eax, 4	; 4: 102 -125 -64 4

gmtime$18:	; £temporary3532 = int_to_int £temporary3531 (Signed_Long_Int -> Signed_Int)
x2356:	cmp eax, 0	; 4: 102 -125 -8 0
x2360:	jge gmtime$19	; 2: 125 5
x2362:	neg eax	; 3: 102 -9 -40
x2365:	neg ax	; 2: -9 -40

gmtime$19:	; g_timeStruct$tm_wday = £temporary3532
x2367:	mov [@27$g_timeStruct + 12], ax	; 3: -93 -28 10

gmtime$20:	; goto 25
x2370:	jmp gmtime$25	; 2: -21 31

gmtime$21:	; £temporary3534 = totalDays - 3
x2372:	mov eax, [bp + 14]	; 4: 102 -117 70 14
x2376:	sub eax, 3	; 4: 102 -125 -24 3

gmtime$22:	; £temporary3535 = £temporary3534 % 7
x2380:	xor edx, edx	; 3: 102 49 -46
x2383:	idiv dword [int4$7#]	; 5: 102 -9 62 -22 10

gmtime$23:	; £temporary3536 = int_to_int £temporary3535 (Signed_Long_Int -> Signed_Int)
x2388:	cmp edx, 0	; 4: 102 -125 -6 0
x2392:	jge gmtime$24	; 2: 125 5
x2394:	neg edx	; 3: 102 -9 -38
x2397:	neg dx	; 2: -9 -38

gmtime$24:	; g_timeStruct$tm_wday = £temporary3536
x2399:	mov [@27$g_timeStruct + 12], dx	; 4: -119 22 -28 10

gmtime$25:	; £temporary3537 = year % 4
x2403:	mov ax, [bp + 8]	; 3: -117 70 8
x2406:	xor dx, dx	; 2: 49 -46
x2408:	idiv word [int2$4#]	; 4: -9 62 -114 7

gmtime$26:	; if £temporary3537 != 0 goto 29
x2412:	cmp dx, 0	; 3: -125 -6 0
x2415:	jne gmtime$29	; 2: 117 14

gmtime$27:	; £temporary3539 = year % 100
x2417:	mov ax, [bp + 8]	; 3: -117 70 8
x2420:	xor dx, dx	; 2: 49 -46
x2422:	idiv word [int2$100#]	; 4: -9 62 -18 10

gmtime$28:	; if £temporary3539 != 0 goto 31
x2426:	cmp dx, 0	; 3: -125 -6 0
x2429:	jne gmtime$31	; 2: 117 14

gmtime$29:	; £temporary3542 = year % 400
x2431:	mov ax, [bp + 8]	; 3: -117 70 8
x2434:	xor dx, dx	; 2: 49 -46
x2436:	idiv word [int2$400#]	; 4: -9 62 -16 10

gmtime$30:	; if £temporary3542 != 0 goto 33
x2440:	cmp dx, 0	; 3: -125 -6 0
x2443:	jne gmtime$33	; 2: 117 5

gmtime$31:	; £temporary3545 = 1
x2445:	mov ax, 1	; 3: -72 1 0

gmtime$32:	; goto 34
x2448:	jmp gmtime$34	; 2: -21 3

gmtime$33:	; £temporary3545 = 0
x2450:	mov ax, 0	; 3: -72 0 0

gmtime$34:	; leapYear = £temporary3545
x2453:	mov [bp + 26], ax	; 3: -119 70 26

gmtime$35:	; if leapYear == 0 goto 38
x2456:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x2460:	je gmtime$38	; 2: 116 5

gmtime$36:	; £temporary3550 = 366
x2462:	mov ax, 366	; 3: -72 110 1

gmtime$37:	; goto 39
x2465:	jmp gmtime$39	; 2: -21 3

gmtime$38:	; £temporary3550 = 365
x2467:	mov ax, 365	; 3: -72 109 1

gmtime$39:	; daysOfYear = £temporary3550
x2470:	mov [bp + 28], ax	; 3: -119 70 28

gmtime$40:	; £temporary3551 = int_to_int daysOfYear (Signed_Int -> Signed_Long_Int)
x2473:	mov ax, [bp + 28]	; 3: -117 70 28
x2476:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2482:	cmp ax, 0	; 3: -125 -8 0
x2485:	jge gmtime$41	; 2: 125 5
x2487:	neg ax	; 2: -9 -40
x2489:	neg eax	; 3: 102 -9 -40

gmtime$41:	; if totalDays >= £temporary3551 goto 81
x2492:	cmp [bp + 14], eax	; 4: 102 57 70 14
x2496:	jge gmtime$81	; 4: 15 -115 -23 0

gmtime$42:	; daysOfMonths[0] = 31
x2500:	mov word [bp + 30], 31	; 5: -57 70 30 31 0

gmtime$43:	; if leapYear == 0 goto 46
x2505:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x2509:	je gmtime$46	; 2: 116 5

gmtime$44:	; £temporary3557 = 29
x2511:	mov ax, 29	; 3: -72 29 0

gmtime$45:	; goto 47
x2514:	jmp gmtime$47	; 2: -21 3

gmtime$46:	; £temporary3557 = 28
x2516:	mov ax, 28	; 3: -72 28 0

gmtime$47:	; daysOfMonths[1] = £temporary3557
x2519:	mov [bp + 32], ax	; 3: -119 70 32

gmtime$48:	; daysOfMonths[2] = 31
x2522:	mov word [bp + 34], 31	; 5: -57 70 34 31 0

gmtime$49:	; daysOfMonths[3] = 30
x2527:	mov word [bp + 36], 30	; 5: -57 70 36 30 0

gmtime$50:	; daysOfMonths[4] = 31
x2532:	mov word [bp + 38], 31	; 5: -57 70 38 31 0

gmtime$51:	; daysOfMonths[5] = 30
x2537:	mov word [bp + 40], 30	; 5: -57 70 40 30 0

gmtime$52:	; daysOfMonths[6] = 31
x2542:	mov word [bp + 42], 31	; 5: -57 70 42 31 0

gmtime$53:	; daysOfMonths[7] = 31
x2547:	mov word [bp + 44], 31	; 5: -57 70 44 31 0

gmtime$54:	; daysOfMonths[8] = 30
x2552:	mov word [bp + 46], 30	; 5: -57 70 46 30 0

gmtime$55:	; daysOfMonths[9] = 31
x2557:	mov word [bp + 48], 31	; 5: -57 70 48 31 0

gmtime$56:	; daysOfMonths[10] = 30
x2562:	mov word [bp + 50], 30	; 5: -57 70 50 30 0

gmtime$57:	; daysOfMonths[11] = 31
x2567:	mov word [bp + 52], 31	; 5: -57 70 52 31 0

gmtime$58:	; month = 0
x2572:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

gmtime$59:	; g_timeStruct$tm_year = year - 1900
x2577:	mov ax, [bp + 8]	; 3: -117 70 8
x2580:	sub ax, 1900	; 3: 45 108 7
x2583:	mov [@27$g_timeStruct], ax	; 3: -93 -40 10

gmtime$60:	; £temporary3573 = int_to_int totalDays (Signed_Long_Int -> Signed_Int)
x2586:	mov eax, [bp + 14]	; 4: 102 -117 70 14
x2590:	cmp eax, 0	; 4: 102 -125 -8 0
x2594:	jge gmtime$61	; 2: 125 5
x2596:	neg eax	; 3: 102 -9 -40
x2599:	neg ax	; 2: -9 -40

gmtime$61:	; g_timeStruct$tm_yday = £temporary3573
x2601:	mov [@27$g_timeStruct + 14], ax	; 3: -93 -26 10

gmtime$62:	; £temporary3575 = month * 2
x2604:	mov ax, [bp + 54]	; 3: -117 70 54
x2607:	xor dx, dx	; 2: 49 -46
x2609:	mul word [int2$2#]	; 4: -9 38 -87 4

gmtime$63:	; £temporary3576 = daysOfMonths + £temporary3575
x2613:	mov si, bp	; 2: -119 -18
x2615:	add si, 30	; 3: -125 -58 30
x2618:	add si, ax	; 2: 1 -58

gmtime$64:	; £temporary3574 -> £temporary3576 = *£temporary3576

gmtime$65:	; £temporary3577 = int_to_int £temporary3574 -> £temporary3576 (Signed_Int -> Signed_Long_Int)
x2620:	mov ax, [si]	; 2: -117 4
x2622:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2628:	cmp ax, 0	; 3: -125 -8 0
x2631:	jge gmtime$66	; 2: 125 5
x2633:	neg ax	; 2: -9 -40
x2635:	neg eax	; 3: 102 -9 -40

gmtime$66:	; if totalDays < £temporary3577 goto 74
x2638:	cmp [bp + 14], eax	; 4: 102 57 70 14
x2642:	jl gmtime$74	; 2: 124 43

gmtime$67:	; £temporary3580 = month * 2
x2644:	mov ax, [bp + 54]	; 3: -117 70 54
x2647:	xor dx, dx	; 2: 49 -46
x2649:	mul word [int2$2#]	; 4: -9 38 -87 4

gmtime$68:	; £temporary3581 = daysOfMonths + £temporary3580
x2653:	mov si, bp	; 2: -119 -18
x2655:	add si, 30	; 3: -125 -58 30
x2658:	add si, ax	; 2: 1 -58

gmtime$69:	; £temporary3579 -> £temporary3581 = *£temporary3581

gmtime$70:	; £temporary3582 = int_to_int £temporary3579 -> £temporary3581 (Signed_Int -> Signed_Long_Int)
x2660:	mov ax, [si]	; 2: -117 4
x2662:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2668:	cmp ax, 0	; 3: -125 -8 0
x2671:	jge gmtime$71	; 2: 125 5
x2673:	neg ax	; 2: -9 -40
x2675:	neg eax	; 3: 102 -9 -40

gmtime$71:	; totalDays = totalDays - £temporary3582
x2678:	sub [bp + 14], eax	; 4: 102 41 70 14

gmtime$72:	; ++month
x2682:	inc word [bp + 54]	; 3: -1 70 54

gmtime$73:	; goto 62
x2685:	jmp gmtime$62	; 2: -21 -83

gmtime$74:	; g_timeStruct$tm_mon = month
x2687:	mov ax, [bp + 54]	; 3: -117 70 54
x2690:	mov [@27$g_timeStruct + 8], ax	; 3: -93 -32 10

gmtime$75:	; £temporary3587 = totalDays + 1
x2693:	mov eax, [bp + 14]	; 4: 102 -117 70 14
x2697:	inc eax	; 2: 102 64

gmtime$76:	; £temporary3588 = int_to_int £temporary3587 (Signed_Long_Int -> Signed_Int)
x2699:	cmp eax, 0	; 4: 102 -125 -8 0
x2703:	jge gmtime$77	; 2: 125 5
x2705:	neg eax	; 3: 102 -9 -40
x2708:	neg ax	; 2: -9 -40

gmtime$77:	; g_timeStruct$tm_mday = £temporary3588
x2710:	mov [@27$g_timeStruct + 6], ax	; 3: -93 -34 10

gmtime$78:	; g_timeStruct$tm_isdst = -1
x2713:	mov word [@27$g_timeStruct + 16], -1	; 6: -57 6 -24 10 -1 -1

gmtime$79:	; return_value = (@27$g_timeStruct,0)
x2719:	mov bx, @27$g_timeStruct	; 3: -69 -40 10

gmtime$80:	; return
x2722:	mov ax, [bp]	; 3: -117 70 0
x2725:	mov di, [bp + 4]	; 3: -117 126 4
x2728:	mov bp, [bp + 2]	; 3: -117 110 2
x2731:	jmp ax	; 2: -1 -32

gmtime$81:	; ++year
x2733:	inc word [bp + 8]	; 3: -1 70 8

gmtime$82:	; £temporary3591 = int_to_int daysOfYear (Signed_Int -> Signed_Long_Int)
x2736:	mov ax, [bp + 28]	; 3: -117 70 28
x2739:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2745:	cmp ax, 0	; 3: -125 -8 0
x2748:	jge gmtime$83	; 2: 125 5
x2750:	neg ax	; 2: -9 -40
x2752:	neg eax	; 3: 102 -9 -40

gmtime$83:	; totalDays = totalDays - £temporary3591
x2755:	sub [bp + 14], eax	; 4: 102 41 70 14

gmtime$84:	; goto 25
x2759:	jmp gmtime$25	; 3: -23 -103 -2

gmtime$85:	; return_value = 0
x2762:	mov bx, 0	; 3: -69 0 0

gmtime$86:	; return
x2765:	mov ax, [bp]	; 3: -117 70 0
x2768:	mov di, [bp + 4]	; 3: -117 126 4
x2771:	mov bp, [bp + 2]	; 3: -117 110 2
x2774:	jmp ax	; 2: -1 -32

gmtime$87:	; function end gmtime

@27$g_timeStruct:
x2776:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 18: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

int4$7#:
x2794:	dd 7	; 4: 7 0 0 0

int2$100#:
x2798:	dw 100	; 2: 100 0

int2$400#:
x2800:	dw 400	; 2: -112 1

localtime:	; call header integral zero 0 stack zero 0

localtime$1:	; parameter timePtr, offset 6
x2802:	mov ax, [bp + 6]	; 3: -117 70 6
x2805:	mov [bp + 14], ax	; 3: -119 70 14

localtime$2:	; call function noellipse-noellipse gmtime
x2808:	mov word [bp + 8], localtime$3	; 5: -57 70 8 6 11
x2813:	mov [bp + 10], bp	; 3: -119 110 10
x2816:	add bp, 8	; 3: -125 -59 8
x2819:	jmp gmtime	; 3: -23 -119 -3

localtime$3:	; post call

localtime$4:	; £temporary3646 = return_value

localtime$5:	; tmPtr = £temporary3646
x2822:	mov [bp + 8], bx	; 3: -119 94 8

localtime$6:	; call header integral zero 0 stack zero 0

localtime$7:	; call function noellipse-noellipse localeconv
x2825:	mov word [bp + 10], localtime$8	; 5: -57 70 10 23 11
x2830:	mov [bp + 12], bp	; 3: -119 110 12
x2833:	add bp, 10	; 3: -125 -59 10
x2836:	nop	; 1: -112
x2837:	jmp localeconv	; 2: -21 112

localtime$8:	; post call

localtime$9:	; £temporary3647 = return_value

localtime$10:	; localeConvPtr = £temporary3647
x2839:	mov [bp + 10], bx	; 3: -119 94 10

localtime$11:	; timeZone = 0
x2842:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

localtime$12:	; if localeConvPtr == 0 goto 21
x2847:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x2851:	je localtime$21	; 2: 116 25

localtime$13:	; £temporary3649 -> tmPtr = *tmPtr, offset 16
x2853:	mov si, [bp + 8]	; 3: -117 118 8

localtime$14:	; if £temporary3649 -> tmPtr == 0 goto 18
x2856:	cmp word [si + 16], 0	; 4: -125 124 16 0
x2860:	je localtime$18	; 2: 116 7

localtime$15:	; £temporary3650 -> localeConvPtr = *localeConvPtr
x2862:	mov si, [bp + 10]	; 3: -117 118 10

localtime$16:	; £temporary3656 = £temporary3650 -> localeConvPtr
x2865:	mov ax, [si]	; 2: -117 4

localtime$17:	; goto 20
x2867:	jmp localtime$20	; 2: -21 6

localtime$18:	; £temporary3651 -> localeConvPtr = *localeConvPtr, offset 2
x2869:	mov si, [bp + 10]	; 3: -117 118 10

localtime$19:	; £temporary3656 = £temporary3651 -> localeConvPtr
x2872:	mov ax, [si + 2]	; 3: -117 68 2

localtime$20:	; timeZone = £temporary3656
x2875:	mov [bp + 12], ax	; 3: -119 70 12

localtime$21:	; £temporary3657 -> timePtr = *timePtr
x2878:	mov si, [bp + 6]	; 3: -117 118 6

localtime$22:	; £temporary3658 = int_to_int timeZone (Signed_Int -> Signed_Long_Int)
x2881:	mov ax, [bp + 12]	; 3: -117 70 12
x2884:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2890:	cmp ax, 0	; 3: -125 -8 0
x2893:	jge localtime$23	; 2: 125 5
x2895:	neg ax	; 2: -9 -40
x2897:	neg eax	; 3: 102 -9 -40

localtime$23:	; £temporary3659 = £temporary3658 * 3600
x2900:	xor edx, edx	; 3: 102 49 -46
x2903:	imul dword [int4$3600#]	; 5: 102 -9 46 -121 8

localtime$24:	; timeXXX = £temporary3657 -> timePtr + £temporary3659
x2908:	mov ebx, [si]	; 3: 102 -117 28
x2911:	add ebx, eax	; 3: 102 1 -61
x2914:	mov [bp + 14], ebx	; 4: 102 -119 94 14

localtime$25:	; call header integral zero 0 stack zero 0

localtime$26:	; £temporary3661 = &timeXXX
x2918:	mov si, bp	; 2: -119 -18
x2920:	add si, 14	; 3: -125 -58 14

localtime$27:	; parameter £temporary3661, offset 6
x2923:	mov [bp + 24], si	; 3: -119 118 24

localtime$28:	; call function noellipse-noellipse gmtime
x2926:	mov word [bp + 18], localtime$29	; 5: -57 70 18 124 11
x2931:	mov [bp + 20], bp	; 3: -119 110 20
x2934:	add bp, 18	; 3: -125 -59 18
x2937:	jmp gmtime	; 3: -23 19 -3

localtime$29:	; post call

localtime$30:	; £temporary3662 = return_value

localtime$31:	; return_value = £temporary3662

localtime$32:	; return
x2940:	mov ax, [bp]	; 3: -117 70 0
x2943:	mov di, [bp + 4]	; 3: -117 126 4
x2946:	mov bp, [bp + 2]	; 3: -117 110 2
x2949:	jmp ax	; 2: -1 -32

localtime$33:	; function end localtime

localeconv:	; if g_currStructPtr == 0 goto 4
x2951:	cmp word [@15$g_currStructPtr], 0	; 5: -125 62 -91 11 0
x2956:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary516 -> g_currStructPtr = *g_currStructPtr, offset 2
x2958:	mov si, [@15$g_currStructPtr]	; 4: -117 54 -91 11

localeconv$2:	; £temporary520 = £temporary516 -> g_currStructPtr
x2962:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x2965:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary520 = 0
x2967:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary520

localeconv$6:	; return
x2970:	mov ax, [bp]	; 3: -117 70 0
x2973:	mov di, [bp + 4]	; 3: -117 126 4
x2976:	mov bp, [bp + 2]	; 3: -117 110 2
x2979:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@15$g_currStructPtr:
x2981:	dw @13$sArray	; 2: -89 11

@13$sArray:
x2983:	dw string_# ; 2: -77 11
x2985:	dw @12$en_US_utf8	; 2: -76 11
x2987:	dw string_C# ; 2: -88 14
x2989:	dw @12$en_US_utf8	; 2: -76 11
x2991:	dw string_US# ; 2: -86 14
x2993:	dw @12$en_US_utf8	; 2: -76 11

string_#:
x2995:	db 0	; 1: 0

@12$en_US_utf8:
x2996:	dw 1	; 2: 1 0
x2998:	dw 2	; 2: 2 0
x3000:	dw @8$enShortDayList ; 2: -58 11
x3002:	dw @9$enLongDayList ; 2: -44 11
x3004:	dw @10$enShortMonthList ; 2: 27 12
x3006:	dw @11$enLongMonthList ; 2: 99 12
x3008:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -51 12
x3010:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -24 12
x3012:	dw enMessageList ; 2: 3 13

@8$enShortDayList:
x3014:	dw string_Sun# ; 2: 32 4
x3016:	dw string_Mon# ; 2: 36 4
x3018:	dw string_Tue# ; 2: 40 4
x3020:	dw string_Wed# ; 2: 44 4
x3022:	dw string_Thu# ; 2: 48 4
x3024:	dw string_Fri# ; 2: 52 4
x3026:	dw string_Sat# ; 2: 56 4

@9$enLongDayList:
x3028:	dw string_Sunday# ; 2: -30 11
x3030:	dw string_Monday# ; 2: -23 11
x3032:	dw string_Tuesday# ; 2: -16 11
x3034:	dw string_Wednesday# ; 2: -8 11
x3036:	dw string_Thursday# ; 2: 2 12
x3038:	dw string_Friday# ; 2: 11 12
x3040:	dw string_Saturday# ; 2: 18 12

string_Sunday#:
x3042:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x3049:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x3056:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x3064:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x3074:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x3083:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x3090:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@10$enShortMonthList:
x3099:	dw string_Jan# ; 2: 51 12
x3101:	dw string_Feb# ; 2: 55 12
x3103:	dw string_Mar# ; 2: 59 12
x3105:	dw string_Apr# ; 2: 63 12
x3107:	dw string_May# ; 2: 67 12
x3109:	dw string_Jun# ; 2: 71 12
x3111:	dw string_Jul# ; 2: 75 12
x3113:	dw string_Aug# ; 2: 79 12
x3115:	dw string_Sep# ; 2: 83 12
x3117:	dw string_Oct# ; 2: 87 12
x3119:	dw string_Nov# ; 2: 91 12
x3121:	dw string_Dec# ; 2: 95 12

string_Jan#:
x3123:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x3127:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x3131:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x3135:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x3139:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x3143:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x3147:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x3151:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x3155:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x3159:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x3163:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x3167:	db "Dec", 0	; 4: 68 101 99 0

@11$enLongMonthList:
x3171:	dw string_January# ; 2: 123 12
x3173:	dw string_February# ; 2: -125 12
x3175:	dw string_March# ; 2: -116 12
x3177:	dw string_April# ; 2: -110 12
x3179:	dw string_May# ; 2: 67 12
x3181:	dw string_June# ; 2: -104 12
x3183:	dw string_July# ; 2: -99 12
x3185:	dw string_August# ; 2: -94 12
x3187:	dw string_September# ; 2: -87 12
x3189:	dw string_October# ; 2: -77 12
x3191:	dw string_November# ; 2: -69 12
x3193:	dw string_December# ; 2: -60 12

string_January#:
x3195:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x3203:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x3212:	db "March", 0	; 6: 77 97 114 99 104 0

string_April#:
x3218:	db "April", 0	; 6: 65 112 114 105 108 0

string_June#:
x3224:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x3229:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x3234:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_September#:
x3241:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_October#:
x3251:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

string_November#:
x3259:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x3268:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x3277:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x3304:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

enMessageList:
x3331:	dw string_no20error# ; 2: 43 13
x3333:	dw string_function20number20invalid# ; 2: 52 13
x3335:	dw string_file20not20found# ; 2: 76 13
x3337:	dw string_path20not20found# ; 2: 91 13
x3339:	dw string_no20handle20available# ; 2: 106 13
x3341:	dw string_access20denied# ; 2: 126 13
x3343:	dw string_out20of20domain# ; 2: -116 13
x3345:	dw string_out20of20range# ; 2: -102 13
x3347:	dw string_invalid20multibyte20sequence# ; 2: -89 13
x3349:	dw string_error20while20opening# ; 2: -62 13
x3351:	dw string_error20while20flushing# ; 2: -42 13
x3353:	dw string_error20while20closing# ; 2: -21 13
x3355:	dw string_open20mode20invalid# ; 2: -1 13
x3357:	dw string_error20while20writing# ; 2: 17 14
x3359:	dw string_error20while20reading# ; 2: 37 14
x3361:	dw string_error20while20seeking# ; 2: 57 14
x3363:	dw string_error20while20telling# ; 2: 77 14
x3365:	dw string_error20while20sizing# ; 2: 97 14
x3367:	dw string_error20while20removing20file# ; 2: 116 14
x3369:	dw string_error20while20renaming20file# ; 2: -114 14

string_no20error#:
x3371:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x3380:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x3404:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x3419:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x3434:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x3454:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x3468:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x3482:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x3495:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x3522:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x3542:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x3563:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x3583:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x3601:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x3621:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x3641:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x3661:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x3681:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x3700:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x3726:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_C#:
x3752:	db "C", 0	; 2: 67 0

string_US#:
x3754:	db "US", 0	; 3: 85 83 0

printf:	; £temporary2381 = &format
x3757:	mov si, bp	; 2: -119 -18
x3759:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2382 = int_to_int £temporary2381 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2382 + 2
x3762:	add si, 2	; 3: -125 -58 2
x3765:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; call header integral zero 0 stack zero 0

printf$4:	; parameter format, offset 6
x3768:	mov ax, [bp + 6]	; 3: -117 70 6
x3771:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; parameter arg_list, offset 8
x3774:	mov ax, [di + 8]	; 3: -117 69 8
x3777:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; call function ellipse-noellipse vprintf
x3780:	mov word [di + 10], printf$7	; 5: -57 69 10 -41 14
x3785:	mov [di + 12], bp	; 3: -119 109 12
x3788:	mov [di + 14], di	; 3: -119 125 14
x3791:	add di, 10	; 3: -125 -57 10
x3794:	mov bp, di	; 2: -119 -3
x3796:	nop	; 1: -112
x3797:	jmp vprintf	; 2: -21 11

printf$7:	; post call

printf$8:	; £temporary2384 = return_value

printf$9:	; return_value = £temporary2384

printf$10:	; return
x3799:	mov ax, [bp]	; 3: -117 70 0
x3802:	mov di, [bp + 4]	; 3: -117 126 4
x3805:	mov bp, [bp + 2]	; 3: -117 110 2
x3808:	jmp ax	; 2: -1 -32

printf$11:	; function end printf

vprintf:	; call header integral zero 0 stack zero 0

vprintf$1:	; parameter stdout, offset 6
x3810:	mov ax, [stdout]	; 3: -95 13 15
x3813:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; parameter format, offset 8
x3816:	mov ax, [bp + 6]	; 3: -117 70 6
x3819:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; parameter arg_list, offset 10
x3822:	mov ax, [bp + 8]	; 3: -117 70 8
x3825:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; call function noellipse-noellipse vfprintf
x3828:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 2 15
x3833:	mov [bp + 12], bp	; 3: -119 110 12
x3836:	add bp, 10	; 3: -125 -59 10
x3839:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; post call

vprintf$6:	; £temporary2388 = return_value

vprintf$7:	; return_value = £temporary2388

vprintf$8:	; return
x3842:	mov ax, [bp]	; 3: -117 70 0
x3845:	mov di, [bp + 4]	; 3: -117 126 4
x3848:	mov bp, [bp + 2]	; 3: -117 110 2
x3851:	jmp ax	; 2: -1 -32

vprintf$9:	; function end vprintf

stdout:
x3853:	dw g_fileArray + 29	; 2: 44 15

g_fileArray:
x3855:	dw 1	; 2: 1 0
x3857:	dw 0	; 2: 0 0
x3859:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x3884:	dw 1	; 2: 1 0
x3886:	dw 1	; 2: 1 0
x3888:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x3913:	dw 1	; 2: 1 0
x3915:	dw 2	; 2: 2 0
x3917:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x3942:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

vfprintf:	; g_outStatus = 0
x4435:	mov word [g_outStatus], 0	; 6: -57 6 -124 17 0 0

vfprintf$1:	; £temporary2400 = int_to_int outStream (Pointer -> Pointer)
x4441:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2400
x4444:	mov [g_outDevice], ax	; 3: -93 -122 17

vfprintf$3:	; call header integral zero 0 stack zero 0

vfprintf$4:	; parameter format, offset 6
x4447:	mov ax, [bp + 8]	; 3: -117 70 8
x4450:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; parameter arg_list, offset 8
x4453:	mov ax, [bp + 10]	; 3: -117 70 10
x4456:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; call function noellipse-noellipse printFormat
x4459:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 121 17
x4464:	mov [bp + 14], bp	; 3: -119 110 14
x4467:	add bp, 12	; 3: -125 -59 12
x4470:	nop	; 1: -112
x4471:	jmp printFormat	; 2: -21 15

vfprintf$7:	; post call

vfprintf$8:	; £temporary2401 = return_value

vfprintf$9:	; return_value = £temporary2401

vfprintf$10:	; return
x4473:	mov ax, [bp]	; 3: -117 70 0
x4476:	mov di, [bp + 4]	; 3: -117 126 4
x4479:	mov bp, [bp + 2]	; 3: -117 110 2
x4482:	jmp ax	; 2: -1 -32

vfprintf$11:	; function end vfprintf

g_outStatus:
x4484:	db 0, 0	; 2: 0 0

g_outDevice:
x4486:	db 0, 0	; 2: 0 0

printFormat:	; width = 0
x4488:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; precision = 0
x4493:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; percent = 0
x4498:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; plus = 0
x4503:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; minus = 0
x4508:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; space = 0
x4513:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; zero = 0
x4518:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; grid = 0
x4523:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; widthStar = 0
x4528:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; period = 0
x4533:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; precisionStar = 0
x4538:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; shortInt = 0
x4543:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; longInt = 0
x4548:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; longDouble = 0
x4553:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; g_outChars = 0
x4558:	mov word [g_outChars], 0	; 6: -57 6 -22 22 0 0

printFormat$15:	; index = 0
x4564:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2233 = format + index
x4569:	mov si, [bp + 6]	; 3: -117 118 6
x4572:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2232 -> £temporary2233 = *£temporary2233

printFormat$18:	; if £temporary2232 -> £temporary2233 == 0 goto 286
x4575:	cmp byte [si], 0	; 3: -128 60 0
x4578:	je printFormat$286	; 4: 15 -124 -34 4

printFormat$19:	; £temporary2237 = format + index
x4582:	mov si, [bp + 6]	; 3: -117 118 6
x4585:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2236 -> £temporary2237 = *£temporary2237

printFormat$21:	; c = £temporary2236 -> £temporary2237
x4588:	mov al, [si]	; 2: -118 4
x4590:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 264
x4593:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x4597:	je printFormat$264	; 4: 15 -124 99 4

printFormat$23:	; case c == 43 goto 52
x4601:	mov al, [bp + 40]	; 3: -118 70 40
x4604:	cmp al, 43	; 2: 60 43
x4606:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; case c == 45 goto 54
x4610:	cmp al, 45	; 2: 60 45
x4612:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; case c == 32 goto 56
x4616:	cmp al, 32	; 2: 60 32
x4618:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; case c == 48 goto 58
x4622:	cmp al, 48	; 2: 60 48
x4624:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; case c == 35 goto 60
x4628:	cmp al, 35	; 2: 60 35
x4630:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; case c == 46 goto 62
x4634:	cmp al, 46	; 2: 60 46
x4636:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; case c == 42 goto 64
x4640:	cmp al, 42	; 2: 60 42
x4642:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; case c == 104 goto 69
x4646:	cmp al, 104	; 2: 60 104
x4648:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; case c == 108 goto 71
x4652:	cmp al, 108	; 2: 60 108
x4654:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; case c == 76 goto 73
x4658:	cmp al, 76	; 2: 60 76
x4660:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; case c == 37 goto 75
x4664:	cmp al, 37	; 2: 60 37
x4666:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; case c == 110 goto 75
x4670:	cmp al, 110	; 2: 60 110
x4672:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; case c == 112 goto 75
x4676:	cmp al, 112	; 2: 60 112
x4678:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; case c == 71 goto 75
x4682:	cmp al, 71	; 2: 60 71
x4684:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; case c == 103 goto 75
x4688:	cmp al, 103	; 2: 60 103
x4690:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; case c == 69 goto 75
x4694:	cmp al, 69	; 2: 60 69
x4696:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; case c == 101 goto 75
x4700:	cmp al, 101	; 2: 60 101
x4702:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; case c == 102 goto 75
x4706:	cmp al, 102	; 2: 60 102
x4708:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; case c == 115 goto 75
x4712:	cmp al, 115	; 2: 60 115
x4714:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; case c == 99 goto 75
x4718:	cmp al, 99	; 2: 60 99
x4720:	je printFormat$75	; 2: 116 125

printFormat$43:	; case c == 88 goto 75
x4722:	cmp al, 88	; 2: 60 88
x4724:	je printFormat$75	; 2: 116 121

printFormat$44:	; case c == 120 goto 75
x4726:	cmp al, 120	; 2: 60 120
x4728:	je printFormat$75	; 2: 116 117

printFormat$45:	; case c == 111 goto 75
x4730:	cmp al, 111	; 2: 60 111
x4732:	je printFormat$75	; 2: 116 113

printFormat$46:	; case c == 98 goto 75
x4734:	cmp al, 98	; 2: 60 98
x4736:	je printFormat$75	; 2: 116 109

printFormat$47:	; case c == 117 goto 75
x4738:	cmp al, 117	; 2: 60 117
x4740:	je printFormat$75	; 2: 116 105

printFormat$48:	; case c == 100 goto 75
x4742:	cmp al, 100	; 2: 60 100
x4744:	je printFormat$75	; 2: 116 101

printFormat$49:	; case c == 105 goto 75
x4746:	cmp al, 105	; 2: 60 105
x4748:	je printFormat$75	; 2: 116 97

printFormat$50:	; case end c

printFormat$51:	; goto 241
x4750:	jmp printFormat$241	; 3: -23 88 3

printFormat$52:	; plus = 1
x4753:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 284
x4758:	jmp printFormat$284	; 3: -23 37 4

printFormat$54:	; minus = 1
x4761:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 284
x4766:	jmp printFormat$284	; 3: -23 29 4

printFormat$56:	; space = 1
x4769:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 284
x4774:	jmp printFormat$284	; 3: -23 21 4

printFormat$58:	; zero = 1
x4777:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 284
x4782:	jmp printFormat$284	; 3: -23 13 4

printFormat$60:	; grid = 1
x4785:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 284
x4790:	jmp printFormat$284	; 3: -23 5 4

printFormat$62:	; period = 1
x4793:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 284
x4798:	jmp printFormat$284	; 3: -23 -3 3

printFormat$64:	; if period != 0 goto 67
x4801:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x4805:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x4807:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 284
x4812:	jmp printFormat$284	; 3: -23 -17 3

printFormat$67:	; precision = -1
x4815:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 284
x4820:	jmp printFormat$284	; 3: -23 -25 3

printFormat$69:	; shortInt = 1
x4823:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 284
x4828:	jmp printFormat$284	; 3: -23 -33 3

printFormat$71:	; longInt = 1
x4831:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 284
x4836:	jmp printFormat$284	; 3: -23 -41 3

printFormat$73:	; longDouble = 1
x4839:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 284
x4844:	jmp printFormat$284	; 3: -23 -49 3

printFormat$75:	; if minus == 0 goto 106
x4847:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x4851:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x4855:	mov ax, [g_outChars]	; 3: -95 -22 22
x4858:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; call header integral zero 0 stack zero 0

printFormat$78:	; £temporary2241 = format + index
x4861:	mov si, [bp + 6]	; 3: -117 118 6
x4864:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2240 -> £temporary2241 = *£temporary2241

printFormat$80:	; £temporary2242 = &£temporary2240 -> £temporary2241

printFormat$81:	; parameter £temporary2242, offset 6
x4867:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; parameter arg_list, offset 8
x4870:	mov ax, [bp + 8]	; 3: -117 70 8
x4873:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; parameter plus, offset 10
x4876:	mov ax, [bp + 18]	; 3: -117 70 18
x4879:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; parameter space, offset 12
x4882:	mov ax, [bp + 22]	; 3: -117 70 22
x4885:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; parameter grid, offset 14
x4888:	mov ax, [bp + 26]	; 3: -117 70 26
x4891:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; £temporary2243 = &width
x4894:	mov si, bp	; 2: -119 -18
x4896:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2243, offset 16
x4899:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; parameter precision, offset 18
x4902:	mov ax, [bp + 14]	; 3: -117 70 14
x4905:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; parameter shortInt, offset 20
x4908:	mov ax, [bp + 34]	; 3: -117 70 34
x4911:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; parameter longInt, offset 22
x4914:	mov ax, [bp + 36]	; 3: -117 70 36
x4917:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; parameter longDouble, offset 24
x4920:	mov ax, [bp + 38]	; 3: -117 70 38
x4923:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; parameter 1, offset 26
x4926:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; parameter 0, offset 28
x4931:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; call function noellipse-noellipse printArgument
x4936:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 86 19
x4941:	mov [bp + 45], bp	; 3: -119 110 45
x4944:	add bp, 43	; 3: -125 -59 43
x4947:	jmp printArgument	; 3: -23 -104 3

printFormat$95:	; post call

printFormat$96:	; £temporary2244 = return_value

printFormat$97:	; arg_list = £temporary2244
x4950:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2246 = g_outChars - startChars
x4953:	mov ax, [g_outChars]	; 3: -95 -22 22
x4956:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x4959:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2246 >= width goto 239
x4962:	cmp ax, [bp + 12]	; 3: 59 70 12
x4965:	jge printFormat$239	; 4: 15 -115 120 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x4969:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x4973:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 123 19
x4978:	mov [bp + 47], bp	; 3: -119 110 47
x4981:	add bp, 45	; 3: -125 -59 45
x4984:	jmp printChar	; 3: -23 -122 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x4987:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 186
x4989:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x4993:	je printFormat$186	; 4: 15 -124 100 1

printFormat$107:	; startChars = g_outChars
x4997:	mov ax, [g_outChars]	; 3: -95 -22 22
x5000:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$108:	; oldOutStatus = g_outStatus
x5003:	mov ax, [g_outStatus]	; 3: -95 -124 17
x5006:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$109:	; negative = 0
x5009:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$110:	; g_outStatus = 2
x5014:	mov word [g_outStatus], 2	; 6: -57 6 -124 17 2 0

printFormat$111:	; call header integral zero 0 stack zero 0

printFormat$112:	; £temporary2250 = format + index
x5020:	mov si, [bp + 6]	; 3: -117 118 6
x5023:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2249 -> £temporary2250 = *£temporary2250

printFormat$114:	; £temporary2251 = &£temporary2249 -> £temporary2250

printFormat$115:	; parameter £temporary2251, offset 6
x5026:	mov [bp + 53], si	; 3: -119 118 53

printFormat$116:	; parameter arg_list, offset 8
x5029:	mov ax, [bp + 8]	; 3: -117 70 8
x5032:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$117:	; parameter 0, offset 10
x5035:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$118:	; parameter 0, offset 12
x5040:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$119:	; parameter grid, offset 14
x5045:	mov ax, [bp + 26]	; 3: -117 70 26
x5048:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$120:	; £temporary2252 = &width
x5051:	mov si, bp	; 2: -119 -18
x5053:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2252, offset 16
x5056:	mov [bp + 63], si	; 3: -119 118 63

printFormat$122:	; parameter precision, offset 18
x5059:	mov ax, [bp + 14]	; 3: -117 70 14
x5062:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$123:	; parameter shortInt, offset 20
x5065:	mov ax, [bp + 34]	; 3: -117 70 34
x5068:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$124:	; parameter longInt, offset 22
x5071:	mov ax, [bp + 36]	; 3: -117 70 36
x5074:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$125:	; parameter longDouble, offset 24
x5077:	mov ax, [bp + 38]	; 3: -117 70 38
x5080:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$126:	; parameter 0, offset 26
x5083:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$127:	; £temporary2253 = &negative
x5088:	mov si, bp	; 2: -119 -18
x5090:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2253, offset 28
x5093:	mov [bp + 75], si	; 3: -119 118 75

printFormat$129:	; call function noellipse-noellipse printArgument
x5096:	mov word [bp + 47], printFormat$130	; 5: -57 70 47 -10 19
x5101:	mov [bp + 49], bp	; 3: -119 110 49
x5104:	add bp, 47	; 3: -125 -59 47
x5107:	jmp printArgument	; 3: -23 -8 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x5110:	mov ax, [bp + 43]	; 3: -117 70 43
x5113:	mov [g_outStatus], ax	; 3: -93 -124 17

printFormat$132:	; field = g_outChars - startChars
x5116:	mov ax, [g_outChars]	; 3: -95 -22 22
x5119:	sub ax, [bp + 41]	; 3: 43 70 41
x5122:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x5125:	mov ax, [bp + 41]	; 3: -117 70 41
x5128:	mov [g_outChars], ax	; 3: -93 -22 22

printFormat$134:	; if negative == 0 goto 145
x5131:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x5135:	je printFormat$145	; 2: 116 41

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 88, offset 6
x5137:	mov byte [bp + 55], 88	; 4: -58 70 55 88

printFormat$137:	; call function noellipse-noellipse printChar
x5141:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 35 20
x5146:	mov [bp + 51], bp	; 3: -119 110 51
x5149:	add bp, 49	; 3: -125 -59 49
x5152:	jmp printChar	; 3: -23 -34 9

printFormat$138:	; post call

printFormat$139:	; call header integral zero 0 stack zero 0

printFormat$140:	; parameter 45, offset 6
x5155:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$141:	; call function noellipse-noellipse printChar
x5159:	mov word [bp + 49], printFormat$142	; 5: -57 70 49 53 20
x5164:	mov [bp + 51], bp	; 3: -119 110 51
x5167:	add bp, 49	; 3: -125 -59 49
x5170:	jmp printChar	; 3: -23 -52 9

printFormat$142:	; post call

printFormat$143:	; ++field
x5173:	inc word [bp + 47]	; 3: -1 70 47

printFormat$144:	; goto 158
x5176:	jmp printFormat$158	; 2: -21 57

printFormat$145:	; if plus == 0 goto 152
x5178:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x5182:	je printFormat$152	; 2: 116 23

printFormat$146:	; call header integral zero 0 stack zero 0

printFormat$147:	; parameter 43, offset 6
x5184:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$148:	; call function noellipse-noellipse printChar
x5188:	mov word [bp + 49], printFormat$149	; 5: -57 70 49 82 20
x5193:	mov [bp + 51], bp	; 3: -119 110 51
x5196:	add bp, 49	; 3: -125 -59 49
x5199:	jmp printChar	; 3: -23 -81 9

printFormat$149:	; post call

printFormat$150:	; ++field
x5202:	inc word [bp + 47]	; 3: -1 70 47

printFormat$151:	; goto 158
x5205:	jmp printFormat$158	; 2: -21 28

printFormat$152:	; if space == 0 goto 158
x5207:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x5211:	je printFormat$158	; 2: 116 22

printFormat$153:	; call header integral zero 0 stack zero 0

printFormat$154:	; parameter 32, offset 6
x5213:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$155:	; call function noellipse-noellipse printChar
x5217:	mov word [bp + 49], printFormat$156	; 5: -57 70 49 111 20
x5222:	mov [bp + 51], bp	; 3: -119 110 51
x5225:	add bp, 49	; 3: -125 -59 49
x5228:	jmp printChar	; 3: -23 -110 9

printFormat$156:	; post call

printFormat$157:	; £temporary2266 = field + 1
x5231:	mov ax, [bp + 47]	; 3: -117 70 47
x5234:	inc ax	; 1: 64

printFormat$158:	; ++field
x5235:	inc word [bp + 47]	; 3: -1 70 47

printFormat$159:	; if £temporary2266 >= width goto 165
x5238:	cmp ax, [bp + 12]	; 3: 59 70 12
x5241:	jge printFormat$165	; 2: 125 20

printFormat$160:	; call header integral zero 0 stack zero 0

printFormat$161:	; parameter 48, offset 6
x5243:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$162:	; call function noellipse-noellipse printChar
x5247:	mov word [bp + 49], printFormat$163	; 5: -57 70 49 -115 20
x5252:	mov [bp + 51], bp	; 3: -119 110 51
x5255:	add bp, 49	; 3: -125 -59 49
x5258:	jmp printChar	; 3: -23 116 9

printFormat$163:	; post call

printFormat$164:	; goto 158
x5261:	jmp printFormat$158	; 2: -21 -28

printFormat$165:	; call header integral zero 0 stack zero 0

printFormat$166:	; £temporary2270 = format + index
x5263:	mov si, [bp + 6]	; 3: -117 118 6
x5266:	add si, [bp + 10]	; 3: 3 118 10

printFormat$167:	; £temporary2269 -> £temporary2270 = *£temporary2270

printFormat$168:	; £temporary2271 = &£temporary2269 -> £temporary2270

printFormat$169:	; parameter £temporary2271, offset 6
x5269:	mov [bp + 55], si	; 3: -119 118 55

printFormat$170:	; parameter arg_list, offset 8
x5272:	mov ax, [bp + 8]	; 3: -117 70 8
x5275:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$171:	; parameter 0, offset 10
x5278:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$172:	; parameter 0, offset 12
x5283:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$173:	; parameter grid, offset 14
x5288:	mov ax, [bp + 26]	; 3: -117 70 26
x5291:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$174:	; parameter 0, offset 16
x5294:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$175:	; parameter precision, offset 18
x5299:	mov ax, [bp + 14]	; 3: -117 70 14
x5302:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$176:	; parameter shortInt, offset 20
x5305:	mov ax, [bp + 34]	; 3: -117 70 34
x5308:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$177:	; parameter longInt, offset 22
x5311:	mov ax, [bp + 36]	; 3: -117 70 36
x5314:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$178:	; parameter longDouble, offset 24
x5317:	mov ax, [bp + 38]	; 3: -117 70 38
x5320:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$179:	; parameter 0, offset 26
x5323:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$180:	; parameter 0, offset 28
x5328:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$181:	; call function noellipse-noellipse printArgument
x5333:	mov word [bp + 49], printFormat$182	; 5: -57 70 49 -29 20
x5338:	mov [bp + 51], bp	; 3: -119 110 51
x5341:	add bp, 49	; 3: -125 -59 49
x5344:	jmp printArgument	; 3: -23 11 2

printFormat$182:	; post call

printFormat$183:	; £temporary2272 = return_value

printFormat$184:	; arg_list = £temporary2272
x5347:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$185:	; goto 239
x5350:	jmp printFormat$239	; 3: -23 -8 0

printFormat$186:	; startChars = g_outChars
x5353:	mov ax, [g_outChars]	; 3: -95 -22 22
x5356:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$187:	; oldOutStatus = g_outStatus
x5359:	mov ax, [g_outStatus]	; 3: -95 -124 17
x5362:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$188:	; g_outStatus = 2
x5365:	mov word [g_outStatus], 2	; 6: -57 6 -124 17 2 0

printFormat$189:	; call header integral zero 0 stack zero 0

printFormat$190:	; £temporary2274 = format + index
x5371:	mov si, [bp + 6]	; 3: -117 118 6
x5374:	add si, [bp + 10]	; 3: 3 118 10

printFormat$191:	; £temporary2273 -> £temporary2274 = *£temporary2274

printFormat$192:	; £temporary2275 = &£temporary2273 -> £temporary2274

printFormat$193:	; parameter £temporary2275, offset 6
x5377:	mov [bp + 51], si	; 3: -119 118 51

printFormat$194:	; parameter arg_list, offset 8
x5380:	mov ax, [bp + 8]	; 3: -117 70 8
x5383:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$195:	; parameter plus, offset 10
x5386:	mov ax, [bp + 18]	; 3: -117 70 18
x5389:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$196:	; parameter space, offset 12
x5392:	mov ax, [bp + 22]	; 3: -117 70 22
x5395:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$197:	; parameter grid, offset 14
x5398:	mov ax, [bp + 26]	; 3: -117 70 26
x5401:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$198:	; £temporary2276 = &width
x5404:	mov si, bp	; 2: -119 -18
x5406:	add si, 12	; 3: -125 -58 12

printFormat$199:	; parameter £temporary2276, offset 16
x5409:	mov [bp + 61], si	; 3: -119 118 61

printFormat$200:	; parameter precision, offset 18
x5412:	mov ax, [bp + 14]	; 3: -117 70 14
x5415:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$201:	; parameter shortInt, offset 20
x5418:	mov ax, [bp + 34]	; 3: -117 70 34
x5421:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$202:	; parameter longInt, offset 22
x5424:	mov ax, [bp + 36]	; 3: -117 70 36
x5427:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$203:	; parameter longDouble, offset 24
x5430:	mov ax, [bp + 38]	; 3: -117 70 38
x5433:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$204:	; parameter 1, offset 26
x5436:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$205:	; parameter 0, offset 28
x5441:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$206:	; call function noellipse-noellipse printArgument
x5446:	mov word [bp + 45], printFormat$207	; 5: -57 70 45 84 21
x5451:	mov [bp + 47], bp	; 3: -119 110 47
x5454:	add bp, 45	; 3: -125 -59 45
x5457:	jmp printArgument	; 3: -23 -102 1

printFormat$207:	; post call

printFormat$208:	; g_outStatus = oldOutStatus
x5460:	mov ax, [bp + 43]	; 3: -117 70 43
x5463:	mov [g_outStatus], ax	; 3: -93 -124 17

printFormat$209:	; field = g_outChars - startChars
x5466:	mov ax, [g_outChars]	; 3: -95 -22 22
x5469:	sub ax, [bp + 41]	; 3: 43 70 41
x5472:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$210:	; g_outChars = startChars
x5475:	mov ax, [bp + 41]	; 3: -117 70 41
x5478:	mov [g_outChars], ax	; 3: -93 -22 22

printFormat$211:	; £temporary2279 = field
x5481:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$212:	; ++field
x5484:	inc word [bp + 45]	; 3: -1 70 45

printFormat$213:	; if £temporary2279 >= width goto 219
x5487:	cmp ax, [bp + 12]	; 3: 59 70 12
x5490:	jge printFormat$219	; 2: 125 20

printFormat$214:	; call header integral zero 0 stack zero 0

printFormat$215:	; parameter 32, offset 6
x5492:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$216:	; call function noellipse-noellipse printChar
x5496:	mov word [bp + 47], printFormat$217	; 5: -57 70 47 -122 21
x5501:	mov [bp + 49], bp	; 3: -119 110 49
x5504:	add bp, 47	; 3: -125 -59 47
x5507:	jmp printChar	; 3: -23 123 8

printFormat$217:	; post call

printFormat$218:	; goto 211
x5510:	jmp printFormat$211	; 2: -21 -31

printFormat$219:	; call header integral zero 0 stack zero 0

printFormat$220:	; £temporary2283 = format + index
x5512:	mov si, [bp + 6]	; 3: -117 118 6
x5515:	add si, [bp + 10]	; 3: 3 118 10

printFormat$221:	; £temporary2282 -> £temporary2283 = *£temporary2283

printFormat$222:	; £temporary2284 = &£temporary2282 -> £temporary2283

printFormat$223:	; parameter £temporary2284, offset 6
x5518:	mov [bp + 53], si	; 3: -119 118 53

printFormat$224:	; parameter arg_list, offset 8
x5521:	mov ax, [bp + 8]	; 3: -117 70 8
x5524:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$225:	; parameter plus, offset 10
x5527:	mov ax, [bp + 18]	; 3: -117 70 18
x5530:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$226:	; parameter space, offset 12
x5533:	mov ax, [bp + 22]	; 3: -117 70 22
x5536:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$227:	; parameter grid, offset 14
x5539:	mov ax, [bp + 26]	; 3: -117 70 26
x5542:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$228:	; parameter 0, offset 16
x5545:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$229:	; parameter precision, offset 18
x5550:	mov ax, [bp + 14]	; 3: -117 70 14
x5553:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$230:	; parameter shortInt, offset 20
x5556:	mov ax, [bp + 34]	; 3: -117 70 34
x5559:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$231:	; parameter longInt, offset 22
x5562:	mov ax, [bp + 36]	; 3: -117 70 36
x5565:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$232:	; parameter longDouble, offset 24
x5568:	mov ax, [bp + 38]	; 3: -117 70 38
x5571:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$233:	; parameter 1, offset 26
x5574:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$234:	; parameter 0, offset 28
x5579:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$235:	; call function noellipse-noellipse printArgument
x5584:	mov word [bp + 47], printFormat$236	; 5: -57 70 47 -34 21
x5589:	mov [bp + 49], bp	; 3: -119 110 49
x5592:	add bp, 47	; 3: -125 -59 47
x5595:	jmp printArgument	; 3: -23 16 1

printFormat$236:	; post call

printFormat$237:	; £temporary2285 = return_value

printFormat$238:	; arg_list = £temporary2285
x5598:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$239:	; percent = 0
x5601:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$240:	; goto 284
x5606:	jmp printFormat$284	; 3: -23 -43 0

printFormat$241:	; value = 0
x5609:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$242:	; call header integral zero 0 stack zero 0

printFormat$243:	; £temporary2288 = int_to_int c (Signed_Char -> Signed_Int)
x5614:	mov al, [bp + 40]	; 3: -118 70 40
x5617:	and ax, 255	; 3: 37 -1 0
x5620:	cmp al, 0	; 2: 60 0
x5622:	jge printFormat$244	; 2: 125 4
x5624:	neg al	; 2: -10 -40
x5626:	neg ax	; 2: -9 -40

printFormat$244:	; parameter £temporary2288, offset 6
x5628:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$245:	; call function noellipse-noellipse isdigit
x5631:	mov word [bp + 43], printFormat$246	; 5: -57 70 43 13 22
x5636:	mov [bp + 45], bp	; 3: -119 110 45
x5639:	add bp, 43	; 3: -125 -59 43
x5642:	jmp isdigit	; 3: -23 -88 19

printFormat$246:	; post call

printFormat$247:	; £temporary2289 = return_value

printFormat$248:	; if £temporary2289 == 0 goto 258
x5645:	cmp bx, 0	; 3: -125 -5 0
x5648:	je printFormat$258	; 2: 116 49

printFormat$249:	; £temporary2290 = value * 10
x5650:	mov ax, [bp + 41]	; 3: -117 70 41
x5653:	xor dx, dx	; 2: 49 -46
x5655:	imul word [int2$10#]	; 4: -9 46 -20 22

printFormat$250:	; £temporary2291 = c - 48
x5659:	mov bl, [bp + 40]	; 3: -118 94 40
x5662:	sub bl, 48	; 3: -128 -21 48

printFormat$251:	; £temporary2292 = int_to_int £temporary2291 (Signed_Char -> Signed_Int)
x5665:	and bx, 255	; 4: -127 -29 -1 0
x5669:	cmp bl, 0	; 3: -128 -5 0
x5672:	jge printFormat$252	; 2: 125 4
x5674:	neg bl	; 2: -10 -37
x5676:	neg bx	; 2: -9 -37

printFormat$252:	; value = £temporary2290 + £temporary2292
x5678:	add ax, bx	; 2: 1 -40
x5680:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$253:	; £temporary2294 = index + 1
x5683:	mov ax, [bp + 10]	; 3: -117 70 10
x5686:	inc ax	; 1: 64

printFormat$254:	; £temporary2296 = format + £temporary2294
x5687:	mov si, [bp + 6]	; 3: -117 118 6
x5690:	add si, ax	; 2: 1 -58

printFormat$255:	; £temporary2295 -> £temporary2296 = *£temporary2296

printFormat$256:	; c = £temporary2295 -> £temporary2296
x5692:	mov al, [si]	; 2: -118 4
x5694:	mov [bp + 40], al	; 3: -120 70 40

printFormat$257:	; goto 242
x5697:	jmp printFormat$242	; 2: -21 -85

printFormat$258:	; --index
x5699:	dec word [bp + 10]	; 3: -1 78 10

printFormat$259:	; if period != 0 goto 262
x5702:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x5706:	jne printFormat$262	; 2: 117 8

printFormat$260:	; width = value
x5708:	mov ax, [bp + 41]	; 3: -117 70 41
x5711:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$261:	; goto 284
x5714:	jmp printFormat$284	; 2: -21 106

printFormat$262:	; precision = value
x5716:	mov ax, [bp + 41]	; 3: -117 70 41
x5719:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$263:	; goto 284
x5722:	jmp printFormat$284	; 2: -21 98

printFormat$264:	; if c != 37 goto 280
x5724:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x5728:	jne printFormat$280	; 2: 117 72

printFormat$265:	; percent = 1
x5730:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$266:	; plus = 0
x5735:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$267:	; minus = 0
x5740:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$268:	; space = 0
x5745:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$269:	; zero = 0
x5750:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$270:	; grid = 0
x5755:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$271:	; widthStar = 0
x5760:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$272:	; period = 0
x5765:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$273:	; precisionStar = 0
x5770:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$274:	; shortInt = 0
x5775:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$275:	; longInt = 0
x5780:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$276:	; longDouble = 0
x5785:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$277:	; width = 0
x5790:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$278:	; precision = 0
x5795:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$279:	; goto 284
x5800:	jmp printFormat$284	; 2: -21 20

printFormat$280:	; call header integral zero 0 stack zero 0

printFormat$281:	; parameter c, offset 6
x5802:	mov al, [bp + 40]	; 3: -118 70 40
x5805:	mov [bp + 47], al	; 3: -120 70 47

printFormat$282:	; call function noellipse-noellipse printChar
x5808:	mov word [bp + 41], printFormat$283	; 5: -57 70 41 -66 22
x5813:	mov [bp + 43], bp	; 3: -119 110 43
x5816:	add bp, 41	; 3: -125 -59 41
x5819:	jmp printChar	; 3: -23 67 7

printFormat$283:	; post call

printFormat$284:	; ++index
x5822:	inc word [bp + 10]	; 3: -1 70 10

printFormat$285:	; goto 16
x5825:	jmp printFormat$16	; 3: -23 21 -5

printFormat$286:	; if g_outStatus != 1 goto 292
x5828:	cmp word [g_outStatus], 1	; 5: -125 62 -124 17 1
x5833:	jne printFormat$292	; 2: 117 16

printFormat$287:	; £temporary2305 = int_to_int g_outDevice (Pointer -> Pointer)
x5835:	mov ax, [g_outDevice]	; 3: -95 -122 17

printFormat$288:	; outString = £temporary2305
x5838:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$289:	; £temporary2307 = outString + g_outChars
x5841:	mov si, [bp + 40]	; 3: -117 118 40
x5844:	add si, [g_outChars]	; 4: 3 54 -22 22

printFormat$290:	; £temporary2306 -> £temporary2307 = *£temporary2307

printFormat$291:	; £temporary2306 -> £temporary2307 = 0
x5848:	mov byte [si], 0	; 3: -58 4 0

printFormat$292:	; return_value = g_outChars
x5851:	mov bx, [g_outChars]	; 4: -117 30 -22 22

printFormat$293:	; return
x5855:	mov ax, [bp]	; 3: -117 70 0
x5858:	mov di, [bp + 4]	; 3: -117 126 4
x5861:	mov bp, [bp + 2]	; 3: -117 110 2
x5864:	jmp ax	; 2: -1 -32

printFormat$294:	; function end printFormat

g_outChars:
x5866:	db 0, 0	; 2: 0 0

int2$10#:
x5868:	dw 10	; 2: 10 0

printArgument:	; £temporary2006 -> format = *format
x5870:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary2006 -> format
x5873:	mov al, [si]	; 2: -118 4
x5875:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x5878:	mov al, [bp + 30]	; 3: -118 70 30
x5881:	cmp al, 100	; 2: 60 100
x5883:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x5885:	cmp al, 105	; 2: 60 105
x5887:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x5889:	cmp al, 99	; 2: 60 99
x5891:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x5895:	cmp al, 115	; 2: 60 115
x5897:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x5901:	cmp al, 88	; 2: 60 88
x5903:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x5907:	cmp al, 120	; 2: 60 120
x5909:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x5913:	cmp al, 98	; 2: 60 98
x5915:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x5919:	cmp al, 111	; 2: 60 111
x5921:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x5925:	cmp al, 117	; 2: 60 117
x5927:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x5931:	cmp al, 71	; 2: 60 71
x5933:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x5937:	cmp al, 103	; 2: 60 103
x5939:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x5943:	cmp al, 69	; 2: 60 69
x5945:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x5949:	cmp al, 101	; 2: 60 101
x5951:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x5955:	cmp al, 102	; 2: 60 102
x5957:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x5961:	cmp al, 112	; 2: 60 112
x5963:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x5967:	cmp al, 110	; 2: 60 110
x5969:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x5973:	cmp al, 37	; 2: 60 37
x5975:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x5979:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x5982:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x5986:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x5988:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary2008 = arg_list - 2
x5992:	mov si, [bp + 8]	; 3: -117 118 8
x5995:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary2009 = int_to_int £temporary2008 (Signed_Int -> Pointer)

printArgument$25:	; £temporary2010 -> £temporary2009 = *£temporary2009

printArgument$26:	; £temporary2011 = int_to_int £temporary2010 -> £temporary2009 (Signed_Int -> Signed_Short_Int)
x5998:	mov ax, [si]	; 2: -117 4
x6000:	cmp ax, 0	; 3: -125 -8 0
x6003:	jge printArgument$27	; 2: 125 4
x6005:	neg ax	; 2: -9 -40
x6007:	neg al	; 2: -10 -40

printArgument$27:	; £temporary2012 = int_to_int £temporary2011 (Signed_Short_Int -> Signed_Long_Int)
x6009:	and eax, 255	; 6: 102 37 -1 0 0 0
x6015:	cmp al, 0	; 2: 60 0
x6017:	jge printArgument$28	; 2: 125 5
x6019:	neg al	; 2: -10 -40
x6021:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary2012
x6024:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x6028:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x6030:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x6034:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x6036:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary2014 = arg_list - 4
x6040:	mov si, [bp + 8]	; 3: -117 118 8
x6043:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary2015 = int_to_int £temporary2014 (Signed_Int -> Pointer)

printArgument$34:	; £temporary2016 -> £temporary2015 = *£temporary2015

printArgument$35:	; longValue = £temporary2016 -> £temporary2015
x6046:	mov eax, [si]	; 3: 102 -117 4
x6049:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x6053:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x6055:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary2018 = arg_list - 2
x6059:	mov si, [bp + 8]	; 3: -117 118 8
x6062:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary2019 = int_to_int £temporary2018 (Signed_Int -> Pointer)

printArgument$40:	; £temporary2020 -> £temporary2019 = *£temporary2019

printArgument$41:	; £temporary2021 = int_to_int £temporary2020 -> £temporary2019 (Signed_Int -> Signed_Long_Int)
x6065:	mov ax, [si]	; 2: -117 4
x6067:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x6073:	cmp ax, 0	; 3: -125 -8 0
x6076:	jge printArgument$42	; 2: 125 5
x6078:	neg ax	; 2: -9 -40
x6080:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary2021
x6083:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x6087:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x6091:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary2025 -> negativePtr = *negativePtr
x6093:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x6096:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x6101:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary2027 = 1
x6103:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x6106:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary2027 = 0
x6108:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary2025 -> negativePtr = £temporary2027
x6111:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x6113:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x6117:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x6119:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x6123:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x6127:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 -3 23
x6132:	mov [bp + 50], bp	; 3: -119 110 50
x6135:	add bp, 48	; 3: -125 -59 48
x6138:	jmp labs	; 3: -23 5 5

printArgument$54:	; post call

printArgument$55:	; £temporary2030 = return_value

printArgument$56:	; longValue = £temporary2030
x6141:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x6145:	mov ax, [bp + 8]	; 3: -117 70 8
x6148:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x6151:	mov ax, [bp + 16]	; 3: -117 70 16
x6154:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary2031 = &precision
x6157:	mov si, bp	; 2: -119 -18
x6159:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary2031, offset 10
x6162:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x6165:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 35 24
x6170:	mov [bp + 50], bp	; 3: -119 110 50
x6173:	add bp, 48	; 3: -125 -59 48
x6176:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; post call

printArgument$64:	; £temporary2032 = return_value

printArgument$65:	; arg_list = £temporary2032
x6179:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x6182:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x6186:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x6190:	mov ax, [bp + 10]	; 3: -117 70 10
x6193:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x6196:	mov ax, [bp + 12]	; 3: -117 70 12
x6199:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x6202:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 72 24
x6207:	mov [bp + 50], bp	; 3: -119 110 50
x6210:	add bp, 48	; 3: -125 -59 48
x6213:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x6216:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x6219:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary2035 = arg_list - 2
x6223:	mov si, [bp + 8]	; 3: -117 118 8
x6226:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary2036 = int_to_int £temporary2035 (Signed_Int -> Pointer)

printArgument$76:	; £temporary2037 -> £temporary2036 = *£temporary2036

printArgument$77:	; £temporary2038 = int_to_int £temporary2037 -> £temporary2036 (Signed_Int -> Signed_Char)
x6229:	mov ax, [si]	; 2: -117 4
x6231:	cmp ax, 0	; 3: -125 -8 0
x6234:	jge printArgument$78	; 2: 125 4
x6236:	neg ax	; 2: -9 -40
x6238:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary2038
x6240:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x6243:	mov ax, [bp + 8]	; 3: -117 70 8
x6246:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x6249:	mov ax, [bp + 16]	; 3: -117 70 16
x6252:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary2039 = &precision
x6255:	mov si, bp	; 2: -119 -18
x6257:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary2039, offset 10
x6260:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x6263:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 -123 24
x6268:	mov [bp + 46], bp	; 3: -119 110 46
x6271:	add bp, 44	; 3: -125 -59 44
x6274:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; post call

printArgument$86:	; £temporary2040 = return_value

printArgument$87:	; arg_list = £temporary2040
x6277:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x6280:	mov al, [bp + 31]	; 3: -118 70 31
x6283:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x6286:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 -100 24
x6291:	mov [bp + 46], bp	; 3: -119 110 46
x6294:	add bp, 44	; 3: -125 -59 44
x6297:	jmp printChar	; 3: -23 101 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x6300:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x6303:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2043 = arg_list - 2
x6307:	mov si, [bp + 8]	; 3: -117 118 8
x6310:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2044 = int_to_int £temporary2043 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2045 -> £temporary2044 = *£temporary2044

printArgument$97:	; stringValue = £temporary2045 -> £temporary2044
x6313:	mov ax, [si]	; 2: -117 4
x6315:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x6318:	mov ax, [bp + 8]	; 3: -117 70 8
x6321:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x6324:	mov ax, [bp + 16]	; 3: -117 70 16
x6327:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2046 = &precision
x6330:	mov si, bp	; 2: -119 -18
x6332:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2046, offset 10
x6335:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x6338:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 -48 24
x6343:	mov [bp + 48], bp	; 3: -119 110 48
x6346:	add bp, 46	; 3: -125 -59 46
x6349:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; post call

printArgument$105:	; £temporary2047 = return_value

printArgument$106:	; arg_list = £temporary2047
x6352:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x6355:	mov ax, [bp + 44]	; 3: -117 70 44
x6358:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x6361:	mov ax, [bp + 18]	; 3: -117 70 18
x6364:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x6367:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 -19 24
x6372:	mov [bp + 48], bp	; 3: -119 110 48
x6375:	add bp, 46	; 3: -125 -59 46
x6378:	jmp printString	; 3: -23 -36 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x6381:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x6384:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x6388:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2063 = 10
x6390:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x6396:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x6398:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x6402:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2059 = 8
x6404:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x6410:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x6412:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x6416:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2055 = 2
x6418:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x6424:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2055 = 16
x6426:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2059 = £temporary2055

printArgument$124:	; £temporary2063 = £temporary2059

printArgument$125:	; base = £temporary2063
x6432:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x6436:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x6440:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x6442:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2065 = arg_list - 2
x6446:	mov si, [bp + 8]	; 3: -117 118 8
x6449:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2066 = int_to_int £temporary2065 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2067 -> £temporary2066 = *£temporary2066

printArgument$131:	; £temporary2068 = int_to_int £temporary2067 -> £temporary2066 (Unsigned_Int -> Unsigned_Short_Int)
x6452:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2069 = int_to_int £temporary2068 (Unsigned_Short_Int -> Unsigned_Long_Int)
x6454:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2069
x6460:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x6464:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x6466:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x6470:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x6472:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2071 = arg_list - 4
x6476:	mov si, [bp + 8]	; 3: -117 118 8
x6479:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2072 = int_to_int £temporary2071 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2073 -> £temporary2072 = *£temporary2072

printArgument$140:	; value = £temporary2073 -> £temporary2072
x6482:	mov eax, [si]	; 3: 102 -117 4
x6485:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x6489:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x6491:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2075 = arg_list - 2
x6495:	mov si, [bp + 8]	; 3: -117 118 8
x6498:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2076 = int_to_int £temporary2075 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2077 -> £temporary2076 = *£temporary2076

printArgument$146:	; £temporary2078 = int_to_int £temporary2077 -> £temporary2076 (Unsigned_Int -> Unsigned_Long_Int)
x6501:	mov ax, [si]	; 2: -117 4
x6503:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2078
x6509:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x6513:	mov ax, [bp + 8]	; 3: -117 70 8
x6516:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x6519:	mov ax, [bp + 16]	; 3: -117 70 16
x6522:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2081 = &precision
x6525:	mov si, bp	; 2: -119 -18
x6527:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2081, offset 10
x6530:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x6533:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 -109 25
x6538:	mov [bp + 54], bp	; 3: -119 110 54
x6541:	add bp, 52	; 3: -125 -59 52
x6544:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; post call

printArgument$155:	; £temporary2082 = return_value

printArgument$156:	; arg_list = £temporary2082
x6547:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x6550:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x6554:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x6558:	mov ax, [bp + 10]	; 3: -117 70 10
x6561:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x6564:	mov ax, [bp + 12]	; 3: -117 70 12
x6567:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x6570:	mov ax, [bp + 14]	; 3: -117 70 14
x6573:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x6576:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x6580:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2083 = int_to_int c (Signed_Char -> Signed_Int)
x6584:	mov al, [bp + 30]	; 3: -118 70 30
x6587:	and ax, 255	; 3: 37 -1 0
x6590:	cmp al, 0	; 2: 60 0
x6592:	jge printArgument$165	; 2: 125 4
x6594:	neg al	; 2: -10 -40
x6596:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2083, offset 26
x6598:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x6601:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 -41 25
x6606:	mov [bp + 74], bp	; 3: -119 110 74
x6609:	add bp, 72	; 3: -125 -59 72
x6612:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; post call

printArgument$168:	; £temporary2084 = return_value

printArgument$169:	; parameter £temporary2084, offset 20
x6615:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x6618:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 -24 25
x6623:	mov [bp + 54], bp	; 3: -119 110 54
x6626:	add bp, 52	; 3: -125 -59 52
x6629:	jmp printUnsignedLong	; 3: -23 -116 6

printArgument$171:	; post call

printArgument$172:	; goto 359
x6632:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x6635:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x6639:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x6641:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2087 = arg_list - 8
x6645:	mov si, [bp + 8]	; 3: -117 118 8
x6648:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2088 = int_to_int £temporary2087 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2089 -> £temporary2088 = *£temporary2088

printArgument$178:	; push float £temporary2089 -> £temporary2088
x6651:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x6653:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x6656:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x6659:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x6662:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x6667:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x6672:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x6677:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x6682:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 40 26
x6687:	mov [bp + 46], bp	; 3: -119 110 46
x6690:	add bp, 44	; 3: -125 -59 44
x6693:	jmp printLongDoublePlain	; 3: -23 -9 7

printArgument$188:	; post call

printArgument$189:	; goto 196
x6696:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x6698:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2092 = arg_list - 8
x6702:	mov si, [bp + 8]	; 3: -117 118 8
x6705:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2093 = int_to_int £temporary2092 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2094 -> £temporary2093 = *£temporary2093

printArgument$194:	; push float £temporary2094 -> £temporary2093
x6708:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x6710:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x6713:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x6717:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2098 -> negativePtr = *negativePtr
x6719:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x6722:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x6725:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x6727:	fcompp	; 2: -34 -39
x6729:	fstsw ax	; 3: -101 -33 -32
x6732:	sahf	; 1: -98
x6733:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2100 = 1
x6735:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x6738:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2100 = 0
x6740:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2098 -> negativePtr = £temporary2100
x6743:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x6745:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x6749:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x6751:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x6754:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x6757:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 115 26
x6762:	mov [bp + 46], bp	; 3: -119 110 46
x6765:	add bp, 44	; 3: -125 -59 44
x6768:	jmp fabs	; 3: -23 -16 8

printArgument$210:	; post call

printArgument$211:	; £temporary2103 = return_value

printArgument$212:	; pop float longDoubleValue
x6771:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x6774:	mov ax, [bp + 8]	; 3: -117 70 8
x6777:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x6780:	mov ax, [bp + 16]	; 3: -117 70 16
x6783:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2104 = &precision
x6786:	mov si, bp	; 2: -119 -18
x6788:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2104, offset 10
x6791:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x6794:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 -104 26
x6799:	mov [bp + 46], bp	; 3: -119 110 46
x6802:	add bp, 44	; 3: -125 -59 44
x6805:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; post call

printArgument$220:	; £temporary2105 = return_value

printArgument$221:	; arg_list = £temporary2105
x6808:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x6811:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x6815:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x6817:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x6820:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x6823:	mov ax, [bp + 10]	; 3: -117 70 10
x6826:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x6829:	mov ax, [bp + 12]	; 3: -117 70 12
x6832:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x6835:	mov ax, [bp + 14]	; 3: -117 70 14
x6838:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x6841:	mov ax, [bp + 18]	; 3: -117 70 18
x6844:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x6847:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 -51 26
x6852:	mov [bp + 46], bp	; 3: -119 110 46
x6855:	add bp, 44	; 3: -125 -59 44
x6858:	jmp printLongDoublePlain	; 3: -23 82 7

printArgument$231:	; post call

printArgument$232:	; goto 359
x6861:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2108 = int_to_int c (Signed_Char -> Signed_Int)
x6864:	mov al, [bp + 30]	; 3: -118 70 30
x6867:	and ax, 255	; 3: 37 -1 0
x6870:	cmp al, 0	; 2: 60 0
x6872:	jge printArgument$235	; 2: 125 4
x6874:	neg al	; 2: -10 -40
x6876:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2108, offset 6
x6878:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x6881:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 -17 26
x6886:	mov [bp + 46], bp	; 3: -119 110 46
x6889:	add bp, 44	; 3: -125 -59 44
x6892:	jmp tolower	; 3: -23 -106 8

printArgument$237:	; post call

printArgument$238:	; £temporary2109 = return_value

printArgument$239:	; if £temporary2109 != 101 goto 257
x6895:	cmp bx, 101	; 3: -125 -5 101
x6898:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x6900:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x6903:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x6906:	mov ax, [bp + 10]	; 3: -117 70 10
x6909:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x6912:	mov ax, [bp + 12]	; 3: -117 70 12
x6915:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x6918:	mov ax, [bp + 14]	; 3: -117 70 14
x6921:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x6924:	mov ax, [bp + 18]	; 3: -117 70 18
x6927:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2111 = int_to_int c (Signed_Char -> Signed_Int)
x6930:	mov al, [bp + 30]	; 3: -118 70 30
x6933:	and ax, 255	; 3: 37 -1 0
x6936:	cmp al, 0	; 2: 60 0
x6938:	jge printArgument$249	; 2: 125 4
x6940:	neg al	; 2: -10 -40
x6942:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2111, offset 28
x6944:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x6947:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 49 27
x6952:	mov [bp + 68], bp	; 3: -119 110 68
x6955:	add bp, 66	; 3: -125 -59 66
x6958:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; post call

printArgument$252:	; £temporary2112 = return_value

printArgument$253:	; parameter £temporary2112, offset 22
x6961:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x6964:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 66 27
x6969:	mov [bp + 46], bp	; 3: -119 110 46
x6972:	add bp, 44	; 3: -125 -59 44
x6975:	jmp printLongDoubleExpo	; 3: -23 -28 8

printArgument$255:	; post call

printArgument$256:	; goto 359
x6978:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x6981:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x6984:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x6987:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 89 27
x6992:	mov [bp + 46], bp	; 3: -119 110 46
x6995:	add bp, 44	; 3: -125 -59 44
x6998:	jmp fabs	; 3: -23 10 8

printArgument$262:	; post call

printArgument$263:	; £temporary2114 = return_value

printArgument$264:	; parameter £temporary2114, offset 6
x7001:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x7004:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 106 27
x7009:	mov [bp + 46], bp	; 3: -119 110 46
x7012:	add bp, 44	; 3: -125 -59 44
x7015:	jmp log10	; 3: -23 35 10

printArgument$266:	; post call

printArgument$267:	; £temporary2115 = return_value

printArgument$268:	; £temporary2116 = float_to_int £temporary2115 (Double -> Signed_Int)
x7018:	fistp word [container2bytes#]	; 4: -33 30 0 29
x7022:	mov ax, [container2bytes#]	; 3: -95 0 29

printArgument$269:	; expo = £temporary2116
x7025:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x7028:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x7032:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x7034:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x7038:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x7040:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x7043:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x7046:	mov ax, [bp + 10]	; 3: -117 70 10
x7049:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x7052:	mov ax, [bp + 12]	; 3: -117 70 12
x7055:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x7058:	mov ax, [bp + 14]	; 3: -117 70 14
x7061:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x7064:	mov ax, [bp + 18]	; 3: -117 70 18
x7067:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x7070:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 -84 27
x7075:	mov [bp + 48], bp	; 3: -119 110 48
x7078:	add bp, 46	; 3: -125 -59 46
x7081:	jmp printLongDoublePlain	; 3: -23 115 6

printArgument$280:	; post call

printArgument$281:	; goto 359
x7084:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x7087:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x7090:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x7093:	mov ax, [bp + 10]	; 3: -117 70 10
x7096:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x7099:	mov ax, [bp + 12]	; 3: -117 70 12
x7102:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x7105:	mov ax, [bp + 14]	; 3: -117 70 14
x7108:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x7111:	mov ax, [bp + 18]	; 3: -117 70 18
x7114:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2121 = int_to_int c (Signed_Char -> Signed_Int)
x7117:	mov al, [bp + 30]	; 3: -118 70 30
x7120:	and ax, 255	; 3: 37 -1 0
x7123:	cmp al, 0	; 2: 60 0
x7125:	jge printArgument$291	; 2: 125 4
x7127:	neg al	; 2: -10 -40
x7129:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2121, offset 28
x7131:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x7134:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 -20 27
x7139:	mov [bp + 70], bp	; 3: -119 110 70
x7142:	add bp, 68	; 3: -125 -59 68
x7145:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; post call

printArgument$294:	; £temporary2122 = return_value

printArgument$295:	; parameter £temporary2122, offset 22
x7148:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x7151:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 -3 27
x7156:	mov [bp + 48], bp	; 3: -119 110 48
x7159:	add bp, 46	; 3: -125 -59 46
x7162:	jmp printLongDoubleExpo	; 3: -23 41 8

printArgument$297:	; post call

printArgument$298:	; goto 359
x7165:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x7168:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2125 = arg_list - 2
x7172:	mov si, [bp + 8]	; 3: -117 118 8
x7175:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2126 = int_to_int £temporary2125 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2127 -> £temporary2126 = *£temporary2126

printArgument$303:	; ptrValue = £temporary2127 -> £temporary2126
x7178:	mov ax, [si]	; 2: -117 4
x7180:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x7183:	mov ax, [bp + 8]	; 3: -117 70 8
x7186:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x7189:	mov ax, [bp + 16]	; 3: -117 70 16
x7192:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2128 = &precision
x7195:	mov si, bp	; 2: -119 -18
x7197:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2128, offset 10
x7200:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x7203:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 49 28
x7208:	mov [bp + 46], bp	; 3: -119 110 46
x7211:	add bp, 44	; 3: -125 -59 44
x7214:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; post call

printArgument$311:	; £temporary2129 = return_value

printArgument$312:	; arg_list = £temporary2129
x7217:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2130 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x7220:	mov ax, [bp + 42]	; 3: -117 70 42
x7223:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2130, offset 6
x7229:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x7233:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x7238:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x7243:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x7248:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x7256:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x7261:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 107 28
x7266:	mov [bp + 46], bp	; 3: -119 110 46
x7269:	add bp, 44	; 3: -125 -59 44
x7272:	jmp printUnsignedLong	; 3: -23 9 4

printArgument$322:	; post call

printArgument$323:	; goto 359
x7275:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x7278:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2133 = arg_list - 2
x7282:	mov si, [bp + 8]	; 3: -117 118 8
x7285:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2134 = int_to_int £temporary2133 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2135 -> £temporary2134 = *£temporary2134

printArgument$328:	; ptrValue = £temporary2135 -> £temporary2134
x7288:	mov ax, [si]	; 2: -117 4
x7290:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x7293:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2137 = arg_list - 2
x7297:	mov si, [bp + 8]	; 3: -117 118 8
x7300:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2138 = int_to_int £temporary2137 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2139 -> £temporary2138 = *£temporary2138

printArgument$333:	; intPtr = £temporary2139 -> £temporary2138
x7303:	mov ax, [si]	; 2: -117 4
x7305:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x7308:	mov ax, [bp + 8]	; 3: -117 70 8
x7311:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x7314:	mov ax, [bp + 16]	; 3: -117 70 16
x7317:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2140 = &precision
x7320:	mov si, bp	; 2: -119 -18
x7322:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2140, offset 10
x7325:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x7328:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 -82 28
x7333:	mov [bp + 46], bp	; 3: -119 110 46
x7336:	add bp, 44	; 3: -125 -59 44
x7339:	nop	; 1: -112
x7340:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; post call

printArgument$341:	; £temporary2141 = return_value

printArgument$342:	; arg_list = £temporary2141
x7342:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2142 -> intPtr = *intPtr
x7345:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2142 -> intPtr = g_outChars
x7348:	mov ax, [g_outChars]	; 3: -95 -22 22
x7351:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x7353:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x7355:	mov ax, [bp + 8]	; 3: -117 70 8
x7358:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x7361:	mov ax, [bp + 16]	; 3: -117 70 16
x7364:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2143 = &precision
x7367:	mov si, bp	; 2: -119 -18
x7369:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2143, offset 10
x7372:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x7375:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 -35 28
x7380:	mov [bp + 46], bp	; 3: -119 110 46
x7383:	add bp, 44	; 3: -125 -59 44
x7386:	nop	; 1: -112
x7387:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; post call

printArgument$353:	; £temporary2144 = return_value

printArgument$354:	; arg_list = £temporary2144
x7389:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x7392:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x7396:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 -14 28
x7401:	mov [bp + 46], bp	; 3: -119 110 46
x7404:	add bp, 44	; 3: -125 -59 44
x7407:	jmp printChar	; 3: -23 15 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x7410:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x7413:	mov ax, [bp]	; 3: -117 70 0
x7416:	mov di, [bp + 4]	; 3: -117 126 4
x7419:	mov bp, [bp + 2]	; 3: -117 110 2
x7422:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

container2bytes#:
x7424:	db 0, 0	; 2: 0 0

labs:	; if value >= 0 goto 4
x7426:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7431:	jge labs$4	; 2: 125 9

labs$1:	; £temporary3394 = -value
x7433:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x7437:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary3398 = £temporary3394

labs$3:	; goto 5
x7440:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary3398 = value
x7442:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary3398

labs$6:	; return
x7446:	mov ax, [bp]	; 3: -117 70 0
x7449:	mov di, [bp + 4]	; 3: -117 126 4
x7452:	mov bp, [bp + 2]	; 3: -117 110 2
x7455:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x7457:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7461:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary1989 -> widthPtr = *widthPtr
x7463:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary1989 -> widthPtr != -1 goto 9
x7466:	cmp word [si], -1	; 3: -125 60 -1
x7469:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary1992 -> widthPtr = *widthPtr
x7471:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x7474:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary1994 = arg_list - 2
x7478:	mov di, [bp + 6]	; 3: -117 126 6
x7481:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary1995 = int_to_int £temporary1994 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary1996 -> £temporary1995 = *£temporary1995

checkWidthAndPrecision$8:	; £temporary1992 -> widthPtr = £temporary1996 -> £temporary1995
x7484:	mov ax, [di]	; 2: -117 5
x7486:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x7488:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x7492:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary1998 -> precisionPtr = *precisionPtr
x7494:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary1998 -> precisionPtr != -1 goto 18
x7497:	cmp word [si], -1	; 3: -125 60 -1
x7500:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary2001 -> precisionPtr = *precisionPtr
x7502:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x7505:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary2003 = arg_list - 2
x7509:	mov di, [bp + 6]	; 3: -117 126 6
x7512:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary2004 = int_to_int £temporary2003 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary2005 -> £temporary2004 = *£temporary2004

checkWidthAndPrecision$17:	; £temporary2001 -> precisionPtr = £temporary2005 -> £temporary2004
x7515:	mov ax, [di]	; 2: -117 5
x7517:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x7519:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x7522:	mov ax, [bp]	; 3: -117 70 0
x7525:	mov di, [bp + 4]	; 3: -117 126 4
x7528:	mov bp, [bp + 2]	; 3: -117 110 2
x7531:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x7533:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7538:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1844 = -longValue
x7540:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7544:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1844
x7547:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x7551:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x7555:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 -111 29
x7560:	mov [bp + 16], bp	; 3: -119 110 16
x7563:	add bp, 14	; 3: -125 -59 14
x7566:	nop	; 1: -112
x7567:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x7569:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x7571:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x7575:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x7577:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x7581:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 -85 29
x7586:	mov [bp + 16], bp	; 3: -119 110 16
x7589:	add bp, 14	; 3: -125 -59 14
x7592:	nop	; 1: -112
x7593:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x7595:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x7597:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x7601:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x7603:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x7607:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 -59 29
x7612:	mov [bp + 16], bp	; 3: -119 110 16
x7615:	add bp, 14	; 3: -125 -59 14
x7618:	nop	; 1: -112
x7619:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x7621:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7626:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x7628:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x7632:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 -34 29
x7637:	mov [bp + 16], bp	; 3: -119 110 16
x7640:	add bp, 14	; 3: -125 -59 14
x7643:	nop	; 1: -112
x7644:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x7646:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x7648:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7652:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x7656:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 -10 29
x7661:	mov [bp + 16], bp	; 3: -119 110 16
x7664:	add bp, 14	; 3: -125 -59 14
x7667:	nop	; 1: -112
x7668:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x7670:	mov ax, [bp]	; 3: -117 70 0
x7673:	mov di, [bp + 4]	; 3: -117 126 4
x7676:	mov bp, [bp + 2]	; 3: -117 110 2
x7679:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x7681:	mov ax, [g_outStatus]	; 3: -95 -124 17
x7684:	cmp ax, 0	; 3: -125 -8 0
x7687:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x7689:	cmp ax, 1	; 3: -125 -8 1
x7692:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x7694:	cmp ax, 2	; 3: -125 -8 2
x7697:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x7699:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1786 = int_to_int g_outDevice (Pointer -> Pointer)
x7701:	mov ax, [g_outDevice]	; 3: -95 -122 17

printChar$6:	; stream = £temporary1786
x7704:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x7707:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1789 -> stream = *stream, offset 2
x7709:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1789 -> stream
x7712:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x7715:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1792 = &c
x7718:	mov dx, bp	; 2: -119 -22
x7720:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1792

printChar$13:	; interrupt 33
x7723:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x7725:	inc word [g_outChars]	; 4: -1 6 -22 22

printChar$15:	; goto 25
x7729:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1794 = int_to_int g_outDevice (Pointer -> Pointer)
x7731:	mov ax, [g_outDevice]	; 3: -95 -122 17

printChar$17:	; outString = £temporary1794
x7734:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1795 = g_outChars
x7737:	mov ax, [g_outChars]	; 3: -95 -22 22

printChar$19:	; ++g_outChars
x7740:	inc word [g_outChars]	; 4: -1 6 -22 22

printChar$20:	; £temporary1797 = outString + £temporary1795
x7744:	mov si, [bp + 9]	; 3: -117 118 9
x7747:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1796 -> £temporary1797 = *£temporary1797

printChar$22:	; £temporary1796 -> £temporary1797 = c
x7749:	mov al, [bp + 6]	; 3: -118 70 6
x7752:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x7754:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x7756:	inc word [g_outChars]	; 4: -1 6 -22 22

printChar$25:	; return
x7760:	mov ax, [bp]	; 3: -117 70 0
x7763:	mov di, [bp + 4]	; 3: -117 126 4
x7766:	mov bp, [bp + 2]	; 3: -117 110 2
x7769:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x7771:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7776:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1834 = longValue % 10
x7778:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7782:	xor edx, edx	; 3: 102 49 -46
x7785:	idiv dword [int4$10#]	; 5: 102 -9 62 -59 30

printLongIntRec$2:	; £temporary1835 = int_to_int £temporary1834 (Signed_Long_Int -> Signed_Int)
x7790:	cmp edx, 0	; 4: 102 -125 -6 0
x7794:	jge printLongIntRec$3	; 2: 125 5
x7796:	neg edx	; 3: 102 -9 -38
x7799:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1835
x7801:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1836 = longValue / 10
x7804:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7808:	xor edx, edx	; 3: 102 49 -46
x7811:	idiv dword [int4$10#]	; 5: 102 -9 62 -59 30

printLongIntRec$6:	; parameter £temporary1836, offset 6
x7816:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x7820:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 -102 30
x7825:	mov [bp + 14], bp	; 3: -119 110 14
x7828:	add bp, 12	; 3: -125 -59 12
x7831:	nop	; 1: -112
x7832:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1838 = digit + 48
x7834:	mov ax, [bp + 10]	; 3: -117 70 10
x7837:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1839 = int_to_int £temporary1838 (Signed_Int -> Signed_Char)
x7840:	cmp ax, 0	; 3: -125 -8 0
x7843:	jge printLongIntRec$12	; 2: 125 4
x7845:	neg ax	; 2: -9 -40
x7847:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1839, offset 6
x7849:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x7852:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 -70 30
x7857:	mov [bp + 14], bp	; 3: -119 110 14
x7860:	add bp, 12	; 3: -125 -59 12
x7863:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x7866:	mov ax, [bp]	; 3: -117 70 0
x7869:	mov di, [bp + 4]	; 3: -117 126 4
x7872:	mov bp, [bp + 2]	; 3: -117 110 2
x7875:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x7877:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x7881:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x7885:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x7887:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7891:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x7893:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1803 = s + index
x7898:	mov si, [bp + 6]	; 3: -117 118 6
x7901:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1802 -> £temporary1803 = *£temporary1803

printString$5:	; if £temporary1802 -> £temporary1803 == 0 goto 53
x7904:	cmp byte [si], 0	; 3: -128 60 0
x7907:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1807 = s + index
x7911:	mov si, [bp + 6]	; 3: -117 118 6
x7914:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1806 -> £temporary1807 = *£temporary1807

printString$9:	; parameter £temporary1806 -> £temporary1807, offset 6
x7917:	mov al, [si]	; 2: -118 4
x7919:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x7922:	mov word [bp + 12], printString$11	; 5: -57 70 12 0 31
x7927:	mov [bp + 14], bp	; 3: -119 110 14
x7930:	add bp, 12	; 3: -125 -59 12
x7933:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x7936:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x7939:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x7941:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1809 = precision
x7946:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x7949:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1809 <= 0 goto 53
x7952:	cmp ax, 0	; 3: -125 -8 0
x7955:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1812 = s + index
x7959:	mov si, [bp + 6]	; 3: -117 118 6
x7962:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1811 -> £temporary1812 = *£temporary1812

printString$20:	; if £temporary1811 -> £temporary1812 == 0 goto 53
x7965:	cmp byte [si], 0	; 3: -128 60 0
x7968:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1817 = s + index
x7972:	mov si, [bp + 6]	; 3: -117 118 6
x7975:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1816 -> £temporary1817 = *£temporary1817

printString$24:	; parameter £temporary1816 -> £temporary1817, offset 6
x7978:	mov al, [si]	; 2: -118 4
x7980:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x7983:	mov word [bp + 12], printString$26	; 5: -57 70 12 61 31
x7988:	mov [bp + 14], bp	; 3: -119 110 14
x7991:	add bp, 12	; 3: -125 -59 12
x7994:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x7997:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x8000:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x8002:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x8006:	mov word [bp + 10], printString$32	; 5: -57 70 10 84 31
x8011:	mov [bp + 12], bp	; 3: -119 110 12
x8014:	add bp, 10	; 3: -125 -59 10
x8017:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x8020:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x8024:	mov word [bp + 10], printString$36	; 5: -57 70 10 102 31
x8029:	mov [bp + 12], bp	; 3: -119 110 12
x8032:	add bp, 10	; 3: -125 -59 10
x8035:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x8038:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x8042:	mov word [bp + 10], printString$40	; 5: -57 70 10 120 31
x8047:	mov [bp + 12], bp	; 3: -119 110 12
x8050:	add bp, 10	; 3: -125 -59 10
x8053:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x8056:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x8060:	mov word [bp + 10], printString$44	; 5: -57 70 10 -118 31
x8065:	mov [bp + 12], bp	; 3: -119 110 12
x8068:	add bp, 10	; 3: -125 -59 10
x8071:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x8074:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x8078:	mov word [bp + 10], printString$48	; 5: -57 70 10 -100 31
x8083:	mov [bp + 12], bp	; 3: -119 110 12
x8086:	add bp, 10	; 3: -125 -59 10
x8089:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x8092:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x8096:	mov word [bp + 10], printString$52	; 5: -57 70 10 -82 31
x8101:	mov [bp + 12], bp	; 3: -119 110 12
x8104:	add bp, 10	; 3: -125 -59 10
x8107:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x8110:	mov ax, [bp]	; 3: -117 70 0
x8113:	mov di, [bp + 4]	; 3: -117 126 4
x8116:	mov bp, [bp + 2]	; 3: -117 110 2
x8119:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x8121:	mov word [bp + 8], isupper$2	; 5: -57 70 8 -57 31
x8126:	mov [bp + 10], bp	; 3: -119 110 10
x8129:	add bp, 8	; 3: -125 -59 8
x8132:	jmp localeconv	; 3: -23 -64 -21

isupper$2:	; post call

isupper$3:	; £temporary383 = return_value

isupper$4:	; localeConvPtr = £temporary383
x8135:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x8138:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x8142:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary385 -> localeConvPtr = *localeConvPtr, offset 14
x8144:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary385 -> localeConvPtr, offset 6
x8147:	mov ax, [si + 14]	; 3: -117 68 14
x8150:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x8153:	mov ax, [bp + 6]	; 3: -117 70 6
x8156:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x8159:	mov word [bp + 10], isupper$11	; 5: -57 70 10 -19 31
x8164:	mov [bp + 12], bp	; 3: -119 110 12
x8167:	add bp, 10	; 3: -125 -59 10
x8170:	nop	; 1: -112
x8171:	jmp strchr	; 2: -21 55

isupper$11:	; post call

isupper$12:	; £temporary386 = return_value

isupper$13:	; if £temporary386 == 0 goto 16
x8173:	cmp bx, 0	; 3: -125 -5 0
x8176:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary388 = 1
x8178:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x8181:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary388 = 0
x8183:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary388

isupper$18:	; return
x8186:	mov ax, [bp]	; 3: -117 70 0
x8189:	mov di, [bp + 4]	; 3: -117 126 4
x8192:	mov bp, [bp + 2]	; 3: -117 110 2
x8195:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x8197:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x8201:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x8203:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x8207:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary392 = 1
x8209:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x8212:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary392 = 0
x8214:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary392

isupper$25:	; return
x8217:	mov ax, [bp]	; 3: -117 70 0
x8220:	mov di, [bp + 4]	; 3: -117 126 4
x8223:	mov bp, [bp + 2]	; 3: -117 110 2
x8226:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

strchr:	; £temporary4012 = int_to_int i (Signed_Int -> Signed_Char)
x8228:	mov ax, [bp + 8]	; 3: -117 70 8
x8231:	cmp ax, 0	; 3: -125 -8 0
x8234:	jge strchr$1	; 2: 125 4
x8236:	neg ax	; 2: -9 -40
x8238:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary4012
x8240:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x8243:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary4014 = text + index
x8248:	mov si, [bp + 6]	; 3: -117 118 6
x8251:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary4013 -> £temporary4014 = *£temporary4014

strchr$5:	; if £temporary4013 -> £temporary4014 == 0 goto 16
x8254:	cmp byte [si], 0	; 3: -128 60 0
x8257:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary4018 = text + index
x8259:	mov si, [bp + 6]	; 3: -117 118 6
x8262:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary4017 -> £temporary4018 = *£temporary4018

strchr$8:	; if £temporary4017 -> £temporary4018 != c goto 14
x8265:	mov al, [bp + 12]	; 3: -118 70 12
x8268:	cmp [si], al	; 2: 56 4
x8270:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary4021 = text + index
x8272:	mov bx, [bp + 6]	; 3: -117 94 6
x8275:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary4020 -> £temporary4021 = *£temporary4021

strchr$11:	; £temporary4022 = &£temporary4020 -> £temporary4021

strchr$12:	; return_value = £temporary4022

strchr$13:	; return
x8278:	mov ax, [bp]	; 3: -117 70 0
x8281:	mov di, [bp + 4]	; 3: -117 126 4
x8284:	mov bp, [bp + 2]	; 3: -117 110 2
x8287:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x8289:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x8292:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x8294:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x8297:	mov ax, [bp]	; 3: -117 70 0
x8300:	mov di, [bp + 4]	; 3: -117 126 4
x8303:	mov bp, [bp + 2]	; 3: -117 110 2
x8306:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x8308:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x8312:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x8314:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x8318:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 -116 32
x8323:	mov [bp + 24], bp	; 3: -119 110 24
x8326:	add bp, 22	; 3: -125 -59 22
x8329:	jmp printChar	; 3: -23 117 -3

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x8332:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x8336:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x8338:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x8342:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 -92 32
x8347:	mov [bp + 24], bp	; 3: -119 110 24
x8350:	add bp, 22	; 3: -125 -59 22
x8353:	jmp printChar	; 3: -23 93 -3

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x8356:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x8360:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x8362:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x8367:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x8369:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x8373:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 -61 32
x8378:	mov [bp + 24], bp	; 3: -119 110 24
x8381:	add bp, 22	; 3: -125 -59 22
x8384:	jmp printChar	; 3: -23 62 -3

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x8387:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x8392:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x8394:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x8398:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 -36 32
x8403:	mov [bp + 24], bp	; 3: -119 110 24
x8406:	add bp, 22	; 3: -125 -59 22
x8409:	jmp printChar	; 3: -23 37 -3

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x8412:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x8416:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1893 = 88
x8418:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x8420:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1893 = 120
x8422:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1893, offset 6
x8424:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x8427:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 -7 32
x8432:	mov [bp + 24], bp	; 3: -119 110 24
x8435:	add bp, 22	; 3: -125 -59 22
x8438:	jmp printChar	; 3: -23 8 -3

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x8441:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x8446:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x8448:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x8452:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 18 33
x8457:	mov [bp + 24], bp	; 3: -119 110 24
x8460:	add bp, 22	; 3: -125 -59 22
x8463:	jmp printChar	; 3: -23 -17 -4

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x8466:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x8468:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x8472:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x8476:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x8480:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x8484:	mov ax, [bp + 20]	; 3: -117 70 20
x8487:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x8490:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 56 33
x8495:	mov [bp + 24], bp	; 3: -119 110 24
x8498:	add bp, 22	; 3: -125 -59 22
x8501:	nop	; 1: -112
x8502:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x8504:	mov ax, [bp]	; 3: -117 70 0
x8507:	mov di, [bp + 4]	; 3: -117 126 4
x8510:	mov bp, [bp + 2]	; 3: -117 110 2
x8513:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x8515:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x8520:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1869 = unsignedValue % base
x8522:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x8526:	xor edx, edx	; 3: 102 49 -46
x8529:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1870 = int_to_int £temporary1869 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1870
x8533:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1871 = unsignedValue / base
x8536:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x8540:	xor edx, edx	; 3: 102 49 -46
x8543:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1871, offset 6
x8547:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x8551:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x8555:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x8559:	mov ax, [bp + 14]	; 3: -117 70 14
x8562:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x8565:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 -125 33
x8570:	mov [bp + 20], bp	; 3: -119 110 20
x8573:	add bp, 18	; 3: -125 -59 18
x8576:	nop	; 1: -112
x8577:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x8579:	mov ax, [bp + 16]	; 3: -117 70 16
x8582:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x8585:	mov ax, [bp + 14]	; 3: -117 70 14
x8588:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x8591:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 -99 33
x8596:	mov [bp + 20], bp	; 3: -119 110 20
x8599:	add bp, 18	; 3: -125 -59 18
x8602:	nop	; 1: -112
x8603:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1873 = return_value

printUnsignedLongRec$17:	; c = £temporary1873
x8605:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x8608:	mov al, [bp + 18]	; 3: -118 70 18
x8611:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x8614:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 -76 33
x8619:	mov [bp + 21], bp	; 3: -119 110 21
x8622:	add bp, 19	; 3: -125 -59 19
x8625:	jmp printChar	; 3: -23 77 -4

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x8628:	mov ax, [bp]	; 3: -117 70 0
x8631:	mov di, [bp + 4]	; 3: -117 126 4
x8634:	mov bp, [bp + 2]	; 3: -117 110 2
x8637:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x8639:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x8643:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1859 = digit + 48
x8645:	mov bx, [bp + 6]	; 3: -117 94 6
x8648:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1860 = int_to_int £temporary1859 (Signed_Int -> Signed_Char)
x8651:	cmp bx, 0	; 3: -125 -5 0
x8654:	jge digitToChar$3	; 2: 125 4
x8656:	neg bx	; 2: -9 -37
x8658:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1860

digitToChar$4:	; return
x8660:	mov ax, [bp]	; 3: -117 70 0
x8663:	mov di, [bp + 4]	; 3: -117 126 4
x8666:	mov bp, [bp + 2]	; 3: -117 110 2
x8669:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x8671:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x8675:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1861 = digit - 10
x8677:	mov bx, [bp + 6]	; 3: -117 94 6
x8680:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1862 = £temporary1861 + 65
x8683:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1863 = int_to_int £temporary1862 (Signed_Int -> Signed_Char)
x8686:	cmp bx, 0	; 3: -125 -5 0
x8689:	jge digitToChar$9	; 2: 125 4
x8691:	neg bx	; 2: -9 -37
x8693:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1863

digitToChar$10:	; return
x8695:	mov ax, [bp]	; 3: -117 70 0
x8698:	mov di, [bp + 4]	; 3: -117 126 4
x8701:	mov bp, [bp + 2]	; 3: -117 110 2
x8704:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1864 = digit - 10
x8706:	mov bx, [bp + 6]	; 3: -117 94 6
x8709:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1865 = £temporary1864 + 97
x8712:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1866 = int_to_int £temporary1865 (Signed_Int -> Signed_Char)
x8715:	cmp bx, 0	; 3: -125 -5 0
x8718:	jge digitToChar$14	; 2: 125 4
x8720:	neg bx	; 2: -9 -37
x8722:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1866

digitToChar$15:	; return
x8724:	mov ax, [bp]	; 3: -117 70 0
x8727:	mov di, [bp + 4]	; 3: -117 126 4
x8730:	mov bp, [bp + 2]	; 3: -117 110 2
x8733:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x8735:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x8738:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x8740:	fcompp	; 2: -34 -39
x8742:	fstsw ax	; 3: -101 -33 -32
x8745:	sahf	; 1: -98
x8746:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x8748:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x8752:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 62 34
x8757:	mov [bp + 24], bp	; 3: -119 110 24
x8760:	add bp, 22	; 3: -125 -59 22
x8763:	jmp printChar	; 3: -23 -61 -5

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x8766:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1929 = -longDoubleValue
x8769:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x8771:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x8774:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x8779:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x8784:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1930 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x8787:	fistp dword [container4bytes#]	; 4: -37 30 -73 34
x8791:	mov eax, [container4bytes#]	; 4: 102 -95 -73 34

printLongDoublePlain$14:	; longValue = £temporary1930
x8795:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x8799:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x8803:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x8807:	mov ax, [bp + 14]	; 3: -117 70 14
x8810:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x8813:	mov ax, [bp + 16]	; 3: -117 70 16
x8816:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x8819:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 -127 34
x8824:	mov [bp + 28], bp	; 3: -119 110 28
x8827:	add bp, 26	; 3: -125 -59 26
x8830:	jmp printLongInt	; 3: -23 -20 -6

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x8833:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1932 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x8836:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1933 = longDoubleValue - £temporary1932
x8839:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x8841:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x8844:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x8847:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x8850:	mov ax, [bp + 18]	; 3: -117 70 18
x8853:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x8856:	mov ax, [bp + 20]	; 3: -117 70 20
x8859:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x8862:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 -84 34
x8867:	mov [bp + 28], bp	; 3: -119 110 28
x8870:	add bp, 26	; 3: -125 -59 26
x8873:	nop	; 1: -112
x8874:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x8876:	mov ax, [bp]	; 3: -117 70 0
x8879:	mov di, [bp + 4]	; 3: -117 126 4
x8882:	mov bp, [bp + 2]	; 3: -117 110 2
x8885:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

container4bytes#:
x8887:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; push float longDoubleValue
x8891:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x8894:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1908 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x8897:	fistp dword [container4bytes#]	; 4: -37 30 -73 34
x8901:	mov eax, [container4bytes#]	; 4: 102 -95 -73 34

printLongDoubleFraction$3:	; £temporary1909 = int_to_float £temporary1908 (Signed_Long_Int -> Long_Double)
x8905:	mov [container4bytes#], eax	; 4: 102 -93 -73 34
x8909:	fild dword [container4bytes#]	; 4: -37 6 -73 34

printLongDoubleFraction$4:	; £temporary1910 = longDoubleValue - £temporary1909
x8913:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x8915:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x8918:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x8922:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 6
x8924:	mov word [bp + 16], 6	; 5: -57 70 16 6 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x8929:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x8933:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x8935:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x8939:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x8941:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x8945:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 -1 34
x8950:	mov [bp + 20], bp	; 3: -119 110 20
x8953:	add bp, 18	; 3: -125 -59 18
x8956:	jmp printChar	; 3: -23 2 -5

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1916 = precision
x8959:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x8962:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1916 <= 0 goto 35
x8965:	cmp ax, 0	; 3: -125 -8 0
x8968:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; push float 10.0
x8970:	fld qword [float8$10.0#]	; 4: -35 6 91 35

printLongDoubleFraction$18:	; push float longDoubleValue
x8974:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1918 = 10.0 * longDoubleValue
x8977:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; pop float longDoubleValue10
x8979:	fstp qword [bp + 18]	; 3: -35 94 18

printLongDoubleFraction$21:	; push float longDoubleValue10
x8982:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$22:	; £temporary1919 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x8985:	fistp word [container2bytes#]	; 4: -33 30 0 29
x8989:	mov ax, [container2bytes#]	; 3: -95 0 29

printLongDoubleFraction$23:	; digitValue = £temporary1919
x8992:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$24:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$25:	; £temporary1920 = digitValue + 48
x8995:	mov ax, [bp + 26]	; 3: -117 70 26
x8998:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$26:	; £temporary1921 = int_to_int £temporary1920 (Signed_Int -> Signed_Char)
x9001:	cmp ax, 0	; 3: -125 -8 0
x9004:	jge printLongDoubleFraction$27	; 2: 125 4
x9006:	neg ax	; 2: -9 -40
x9008:	neg al	; 2: -10 -40

printLongDoubleFraction$27:	; parameter £temporary1921, offset 6
x9010:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$28:	; call function noellipse-noellipse printChar
x9013:	mov word [bp + 28], printLongDoubleFraction$29	; 5: -57 70 28 67 35
x9018:	mov [bp + 30], bp	; 3: -119 110 30
x9021:	add bp, 28	; 3: -125 -59 28
x9024:	jmp printChar	; 3: -23 -66 -6

printLongDoubleFraction$29:	; post call

printLongDoubleFraction$30:	; push float longDoubleValue10
x9027:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$31:	; £temporary1923 = int_to_float digitValue (Signed_Int -> Long_Double)
x9030:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$32:	; £temporary1924 = longDoubleValue10 - £temporary1923
x9033:	fsub	; 2: -34 -23

printLongDoubleFraction$33:	; pop float longDoubleValue
x9035:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$34:	; goto 14
x9038:	jmp printLongDoubleFraction$14	; 2: -21 -81

printLongDoubleFraction$35:	; return
x9040:	mov ax, [bp]	; 3: -117 70 0
x9043:	mov di, [bp + 4]	; 3: -117 126 4
x9046:	mov bp, [bp + 2]	; 3: -117 110 2
x9049:	jmp ax	; 2: -1 -32

printLongDoubleFraction$36:	; function end printLongDoubleFraction

float8$10.0#:
x9051:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x9059:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x9062:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x9064:	fcompp	; 2: -34 -39
x9066:	fstsw ax	; 3: -101 -33 -32
x9069:	sahf	; 1: -98
x9070:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x9072:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary829 = -x
x9075:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x9077:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x9079:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary833

fabs$9:	; return
x9082:	mov ax, [bp]	; 3: -117 70 0
x9085:	mov di, [bp + 4]	; 3: -117 126 4
x9088:	mov bp, [bp + 2]	; 3: -117 110 2
x9091:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x9093:	mov ax, [bp + 6]	; 3: -117 70 6
x9096:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x9099:	mov word [bp + 8], tolower$3	; 5: -57 70 8 -103 35
x9104:	mov [bp + 10], bp	; 3: -119 110 10
x9107:	add bp, 8	; 3: -125 -59 8
x9110:	jmp isupper	; 3: -23 32 -4

tolower$3:	; post call

tolower$4:	; £temporary463 = return_value

tolower$5:	; if £temporary463 == 0 goto 31
x9113:	cmp bx, 0	; 3: -125 -5 0
x9116:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x9118:	mov word [bp + 8], tolower$8	; 5: -57 70 8 -84 35
x9123:	mov [bp + 10], bp	; 3: -119 110 10
x9126:	add bp, 8	; 3: -125 -59 8
x9129:	jmp localeconv	; 3: -23 -37 -25

tolower$8:	; post call

tolower$9:	; £temporary464 = return_value

tolower$10:	; localeConvPtr = £temporary464
x9132:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x9135:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x9139:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary466 -> localeConvPtr = *localeConvPtr, offset 12
x9141:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary466 -> localeConvPtr
x9144:	mov ax, [si + 12]	; 3: -117 68 12
x9147:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary467 -> localeConvPtr = *localeConvPtr, offset 14
x9150:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary467 -> localeConvPtr
x9153:	mov ax, [si + 14]	; 3: -117 68 14
x9156:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x9159:	mov ax, [bp + 12]	; 3: -117 70 12
x9162:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x9165:	mov ax, [bp + 6]	; 3: -117 70 6
x9168:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x9171:	mov word [bp + 14], tolower$20	; 5: -57 70 14 -31 35
x9176:	mov [bp + 16], bp	; 3: -119 110 16
x9179:	add bp, 14	; 3: -125 -59 14
x9182:	jmp strchr	; 3: -23 67 -4

tolower$20:	; post call

tolower$21:	; £temporary468 = return_value

tolower$22:	; index = £temporary468 - upperCase
x9185:	sub bx, [bp + 12]	; 3: 43 94 12
x9188:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary471 = lowerCase + index
x9191:	mov si, [bp + 10]	; 3: -117 118 10
x9194:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary470 -> £temporary471 = *£temporary471

tolower$25:	; £temporary472 = int_to_int £temporary470 -> £temporary471 (Signed_Char -> Signed_Int)
x9197:	mov bl, [si]	; 2: -118 28
x9199:	and bx, 255	; 4: -127 -29 -1 0
x9203:	cmp bl, 0	; 3: -128 -5 0
x9206:	jge tolower$26	; 2: 125 4
x9208:	neg bl	; 2: -10 -37
x9210:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary472

tolower$27:	; return
x9212:	mov ax, [bp]	; 3: -117 70 0
x9215:	mov di, [bp + 4]	; 3: -117 126 4
x9218:	mov bp, [bp + 2]	; 3: -117 110 2
x9221:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary473 = c + 32
x9223:	mov bx, [bp + 6]	; 3: -117 94 6
x9226:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary473

tolower$30:	; return
x9229:	mov ax, [bp]	; 3: -117 70 0
x9232:	mov di, [bp + 4]	; 3: -117 126 4
x9235:	mov bp, [bp + 2]	; 3: -117 110 2
x9238:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x9240:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x9243:	mov ax, [bp]	; 3: -117 70 0
x9246:	mov di, [bp + 4]	; 3: -117 126 4
x9249:	mov bp, [bp + 2]	; 3: -117 110 2
x9252:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x9254:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x9257:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x9259:	fcompp	; 2: -34 -39
x9261:	fstsw ax	; 3: -101 -33 -32
x9264:	sahf	; 1: -98
x9265:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x9267:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x9271:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 69 36
x9276:	mov [bp + 26], bp	; 3: -119 110 26
x9279:	add bp, 24	; 3: -125 -59 24
x9282:	jmp printChar	; 3: -23 -68 -7

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x9285:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x9287:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x9290:	mov ax, [bp + 20]	; 3: -117 70 20
x9293:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x9296:	mov ax, [bp + 18]	; 3: -117 70 18
x9299:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x9302:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 100 36
x9307:	mov [bp + 26], bp	; 3: -119 110 26
x9310:	add bp, 24	; 3: -125 -59 24
x9313:	jmp printLongDoubleFraction	; 3: -23 87 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x9316:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x9320:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary1949 = 69
x9322:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x9324:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary1949 = 101
x9326:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary1949, offset 6
x9328:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x9331:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 -127 36
x9336:	mov [bp + 26], bp	; 3: -119 110 26
x9339:	add bp, 24	; 3: -125 -59 24
x9342:	jmp printChar	; 3: -23 -128 -7

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x9345:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x9349:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 -109 36
x9354:	mov [bp + 26], bp	; 3: -119 110 26
x9357:	add bp, 24	; 3: -125 -59 24
x9360:	jmp printChar	; 3: -23 110 -7

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x9363:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x9366:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x9369:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x9371:	fcompp	; 2: -34 -39
x9373:	fstsw ax	; 3: -101 -33 -32
x9376:	sahf	; 1: -98
x9377:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x9379:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x9383:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 -75 36
x9388:	mov [bp + 26], bp	; 3: -119 110 26
x9391:	add bp, 24	; 3: -125 -59 24
x9394:	jmp printChar	; 3: -23 76 -7

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x9397:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary1954 = -value
x9400:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x9402:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x9405:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x9408:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x9411:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 -47 36
x9416:	mov [bp + 26], bp	; 3: -119 110 26
x9419:	add bp, 24	; 3: -125 -59 24
x9422:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary1955 = return_value

printLongDoubleExpo$43:	; £temporary1956 = float_to_int £temporary1955 (Double -> Signed_Int)
x9425:	fistp word [container2bytes#]	; 4: -33 30 0 29
x9429:	mov ax, [container2bytes#]	; 3: -95 0 29

printLongDoubleExpo$44:	; expo = £temporary1956
x9432:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x9435:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x9438:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x9441:	fld qword [float8$10.0#]	; 4: -35 6 91 35

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x9445:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary1957 = int_to_float expo (Signed_Int -> Double)
x9448:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary1957, offset 14
x9451:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x9454:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -4 36
x9459:	mov [bp + 36], bp	; 3: -119 110 36
x9462:	add bp, 34	; 3: -125 -59 34
x9465:	jmp pow	; 3: -23 -16 1

printLongDoubleExpo$52:	; post call
x9468:	fstp qword [bp + 34]	; 3: -35 94 34
x9471:	fld qword [bp + 26]	; 3: -35 70 26
x9474:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary1958 = return_value

printLongDoubleExpo$54:	; £temporary1959 = value / £temporary1958
x9477:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x9479:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x9482:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x9485:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x9488:	mov ax, [bp + 14]	; 3: -117 70 14
x9491:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x9494:	mov ax, [bp + 16]	; 3: -117 70 16
x9497:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x9500:	mov ax, [bp + 18]	; 3: -117 70 18
x9503:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x9506:	mov ax, [bp + 20]	; 3: -117 70 20
x9509:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x9512:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 54 37
x9517:	mov [bp + 28], bp	; 3: -119 110 28
x9520:	add bp, 26	; 3: -125 -59 26
x9523:	jmp printLongDoublePlain	; 3: -23 -23 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x9526:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x9530:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary1965 = 69
x9532:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x9534:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary1965 = 101
x9536:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary1965, offset 6
x9538:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x9541:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 83 37
x9546:	mov [bp + 28], bp	; 3: -119 110 28
x9549:	add bp, 26	; 3: -125 -59 26
x9552:	jmp printChar	; 3: -23 -82 -8

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary1967 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x9555:	mov ax, [bp + 24]	; 3: -117 70 24
x9558:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9564:	cmp ax, 0	; 3: -125 -8 0
x9567:	jge printLongDoubleExpo$75	; 2: 125 5
x9569:	neg ax	; 2: -9 -40
x9571:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary1967, offset 6
x9574:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x9578:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x9583:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x9588:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 -126 37
x9593:	mov [bp + 28], bp	; 3: -119 110 28
x9596:	add bp, 26	; 3: -125 -59 26
x9599:	jmp printLongInt	; 3: -23 -21 -9

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x9602:	mov ax, [bp]	; 3: -117 70 0
x9605:	mov di, [bp + 4]	; 3: -117 126 4
x9608:	mov bp, [bp + 2]	; 3: -117 110 2
x9611:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; call header integral zero 0 stack zero 0

log10$1:	; push float x
x9613:	fld qword [bp + 6]	; 3: -35 70 6

log10$2:	; parameter x, offset 6
x9616:	fstp qword [bp + 20]	; 3: -35 94 20

log10$3:	; call function noellipse-noellipse log
x9619:	mov word [bp + 14], log10$4	; 5: -57 70 14 -95 37
x9624:	mov [bp + 16], bp	; 3: -119 110 16
x9627:	add bp, 14	; 3: -125 -59 14
x9630:	nop	; 1: -112
x9631:	jmp log	; 2: -21 25

log10$4:	; post call

log10$5:	; £temporary550 = return_value

log10$6:	; push float 2.30
x9633:	fld qword [float8$2.30#]	; 4: -35 6 -78 37

log10$7:	; £temporary551 = £temporary550 / 2.30
x9637:	fdiv	; 2: -34 -7

log10$8:	; return_value = £temporary551

log10$9:	; return
x9639:	mov ax, [bp]	; 3: -117 70 0
x9642:	mov di, [bp + 4]	; 3: -117 126 4
x9645:	mov bp, [bp + 2]	; 3: -117 110 2
x9648:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$2.30#:
x9650:	dq 2.30	; 8: 102 102 102 102 102 102 2 64

log:	; push float x
x9658:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x9661:	fldz	; 2: -39 -18

log$2:	; if x <= 0 goto 76
x9663:	fcompp	; 2: -34 -39
x9665:	fstsw ax	; 3: -101 -33 -32
x9668:	sahf	; 1: -98
x9669:	jae log$76	; 4: 15 -125 -18 0

log$3:	; n = 0
x9673:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x
x9678:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push 1
x9681:	fld1	; 2: -39 -24

log$6:	; if x <= 1 goto 16
x9683:	fcompp	; 2: -34 -39
x9685:	fstsw ax	; 3: -101 -33 -32
x9688:	sahf	; 1: -98
x9689:	jae log$16	; 2: 115 30

log$7:	; push float x
x9691:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push 1
x9694:	fld1	; 2: -39 -24

log$9:	; if x <= 1 goto 28
x9696:	fcompp	; 2: -34 -39
x9698:	fstsw ax	; 3: -101 -33 -32
x9701:	sahf	; 1: -98
x9702:	jae log$28	; 2: 115 64

log$10:	; push float x
x9704:	fld qword [bp + 6]	; 3: -35 70 6

log$11:	; push float 2.71
x9707:	fld qword [float8$2.71#]	; 4: -35 6 -54 38

log$12:	; £temporary532 = x / 2.71
x9711:	fdiv	; 2: -34 -7

log$13:	; pop float x
x9713:	fstp qword [bp + 6]	; 3: -35 94 6

log$14:	; ++n
x9716:	inc word [bp + 14]	; 3: -1 70 14

log$15:	; goto 7
x9719:	jmp log$7	; 2: -21 -30

log$16:	; push float x
x9721:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 0.3690036900369003690036900369
x9724:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 -46 38

log$18:	; if x >= 0.3690036900369003690036900369 goto 28
x9728:	fcompp	; 2: -34 -39
x9730:	fstsw ax	; 3: -101 -33 -32
x9733:	sahf	; 1: -98
x9734:	jbe log$28	; 2: 118 32

log$19:	; push float x
x9736:	fld qword [bp + 6]	; 3: -35 70 6

log$20:	; push float 0.3690036900369003690036900369
x9739:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 -46 38

log$21:	; if x >= 0.3690036900369003690036900369 goto 28
x9743:	fcompp	; 2: -34 -39
x9745:	fstsw ax	; 3: -101 -33 -32
x9748:	sahf	; 1: -98
x9749:	jbe log$28	; 2: 118 17

log$22:	; push float x
x9751:	fld qword [bp + 6]	; 3: -35 70 6

log$23:	; push float 2.71
x9754:	fld qword [float8$2.71#]	; 4: -35 6 -54 38

log$24:	; £temporary536 = x * 2.71
x9758:	fmul	; 2: -34 -55

log$25:	; pop float x
x9760:	fstp qword [bp + 6]	; 3: -35 94 6

log$26:	; --n
x9763:	dec word [bp + 14]	; 3: -1 78 14

log$27:	; goto 19
x9766:	jmp log$19	; 2: -21 -32

log$28:	; push 1
x9768:	fld1	; 2: -39 -24

log$29:	; pop float index
x9770:	fstp qword [bp + 16]	; 3: -35 94 16

log$30:	; push 0
x9773:	fldz	; 2: -39 -18

log$31:	; pop float sum
x9775:	fstp qword [bp + 32]	; 3: -35 94 32

log$32:	; push 1
x9778:	fld1	; 2: -39 -24

log$33:	; pop float sign
x9780:	fstp qword [bp + 40]	; 3: -35 94 40

log$34:	; push float x
x9783:	fld qword [bp + 6]	; 3: -35 70 6

log$35:	; push 1
x9786:	fld1	; 2: -39 -24

log$36:	; £temporary538 = x - 1
x9788:	fsub	; 2: -34 -23

log$37:	; pop float x_minus_1
x9790:	fstp qword [bp + 48]	; 3: -35 94 48

log$38:	; push float x_minus_1
x9793:	fld qword [bp + 48]	; 3: -35 70 48

log$39:	; pop float power
x9796:	fstp qword [bp + 56]	; 3: -35 94 56

log$40:	; push float sign
x9799:	fld qword [bp + 40]	; 3: -35 70 40

log$41:	; push float power
x9802:	fld qword [bp + 56]	; 3: -35 70 56

log$42:	; £temporary539 = sign * power
x9805:	fmul	; 2: -34 -55

log$43:	; push float index
x9807:	fld qword [bp + 16]	; 3: -35 70 16

log$44:	; push 1
x9810:	fld1	; 2: -39 -24

log$45:	; index = index + 1
x9812:	fadd	; 2: -34 -63

log$46:	; top float index
x9814:	fst qword [bp + 16]	; 3: -35 86 16

log$47:	; push 1
x9817:	fld1	; 2: -39 -24

log$48:	; index = index - 1
x9819:	fsub	; 2: -34 -23

log$49:	; £temporary541 = £temporary539 / £temporary540
x9821:	fdiv	; 2: -34 -7

log$50:	; pop float term
x9823:	fstp qword [bp + 24]	; 3: -35 94 24

log$51:	; push float sum
x9826:	fld qword [bp + 32]	; 3: -35 70 32

log$52:	; push float term
x9829:	fld qword [bp + 24]	; 3: -35 70 24

log$53:	; £temporary542 = sum + term
x9832:	fadd	; 2: -34 -63

log$54:	; pop float sum
x9834:	fstp qword [bp + 32]	; 3: -35 94 32

log$55:	; push float power
x9837:	fld qword [bp + 56]	; 3: -35 70 56

log$56:	; push float x_minus_1
x9840:	fld qword [bp + 48]	; 3: -35 70 48

log$57:	; £temporary543 = power * x_minus_1
x9843:	fmul	; 2: -34 -55

log$58:	; pop float power
x9845:	fstp qword [bp + 56]	; 3: -35 94 56

log$59:	; push float sign
x9848:	fld qword [bp + 40]	; 3: -35 70 40

log$60:	; push float -1.0
x9851:	fld qword [float8$minus1.0#]	; 4: -35 6 -38 38

log$61:	; £temporary544 = sign * -1.0
x9855:	fmul	; 2: -34 -55

log$62:	; pop float sign
x9857:	fstp qword [bp + 40]	; 3: -35 94 40

log$63:	; call header integral zero 0 stack zero 0

log$64:	; push float term
x9860:	fld qword [bp + 24]	; 3: -35 70 24

log$65:	; parameter term, offset 6
x9863:	fstp qword [bp + 70]	; 3: -35 94 70

log$66:	; call function noellipse-noellipse fabs
x9866:	mov word [bp + 64], log$67	; 5: -57 70 64 -104 38
x9871:	mov [bp + 66], bp	; 3: -119 110 66
x9874:	add bp, 64	; 3: -125 -59 64
x9877:	jmp fabs	; 3: -23 -53 -4

log$67:	; post call

log$68:	; £temporary545 = return_value

log$69:	; push float 0.000000001
x9880:	fld qword [float8$0.000000001#]	; 4: -35 6 -30 38

log$70:	; if £temporary545 >= 0.000000001 goto 40
x9884:	fcompp	; 2: -34 -39
x9886:	fstsw ax	; 3: -101 -33 -32
x9889:	sahf	; 1: -98
x9890:	jbe log$40	; 2: 118 -93

log$71:	; push float sum
x9892:	fld qword [bp + 32]	; 3: -35 70 32

log$72:	; £temporary547 = int_to_float n (Signed_Int -> Double)
x9895:	fild word [bp + 14]	; 3: -33 70 14

log$73:	; £temporary548 = sum + £temporary547
x9898:	fadd	; 2: -34 -63

log$74:	; return_value = £temporary548

log$75:	; return
x9900:	mov ax, [bp]	; 3: -117 70 0
x9903:	mov di, [bp + 4]	; 3: -117 126 4
x9906:	mov bp, [bp + 2]	; 3: -117 110 2
x9909:	jmp ax	; 2: -1 -32

log$76:	; errno = 6
x9911:	mov word [errno], 6	; 6: -57 6 -22 38 6 0

log$77:	; push 0
x9917:	fldz	; 2: -39 -18

log$78:	; return_value = 0

log$79:	; return
x9919:	mov ax, [bp]	; 3: -117 70 0
x9922:	mov di, [bp + 4]	; 3: -117 126 4
x9925:	mov bp, [bp + 2]	; 3: -117 110 2
x9928:	jmp ax	; 2: -1 -32

log$80:	; function end log

float8$2.71#:
x9930:	dq 2.71	; 8: -82 71 -31 122 20 -82 5 64

float8$0.3690036900369003690036900369#:
x9938:	dq 0.3690036900369003690036900369	; 8: -86 -12 51 -89 -63 -99 -41 63

float8$minus1.0#:
x9946:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x9954:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

errno:
x9962:	dw 0	; 2: 0 0

pow:	; push float x
x9964:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x9967:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x9969:	fcompp	; 2: -34 -39
x9971:	fstsw ax	; 3: -101 -33 -32
x9974:	sahf	; 1: -98
x9975:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x9977:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x9980:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x9983:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x9986:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x9989:	mov word [bp + 30], pow$9	; 5: -57 70 30 19 39
x9994:	mov [bp + 32], bp	; 3: -119 110 32
x9997:	add bp, 30	; 3: -125 -59 30
x10000:	jmp log	; 3: -23 -89 -2

pow$9:	; post call
x10003:	fstp qword [bp + 30]	; 3: -35 94 30
x10006:	fld qword [bp + 22]	; 3: -35 70 22
x10009:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary554 = return_value

pow$11:	; £temporary555 = y * £temporary554
x10012:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary555, offset 6
x10014:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x10017:	mov word [bp + 22], pow$14	; 5: -57 70 22 47 39
x10022:	mov [bp + 24], bp	; 3: -119 110 24
x10025:	add bp, 22	; 3: -125 -59 22
x10028:	jmp exp	; 3: -23 102 1

pow$14:	; post call

pow$15:	; £temporary556 = return_value

pow$16:	; return_value = £temporary556

pow$17:	; return
x10031:	mov ax, [bp]	; 3: -117 70 0
x10034:	mov di, [bp + 4]	; 3: -117 126 4
x10037:	mov bp, [bp + 2]	; 3: -117 110 2
x10040:	jmp ax	; 2: -1 -32

pow$18:	; push float x
x10042:	fld qword [bp + 6]	; 3: -35 70 6

pow$19:	; push 0
x10045:	fldz	; 2: -39 -18

pow$20:	; if x != 0 goto 27
x10047:	fcompp	; 2: -34 -39
x10049:	fstsw ax	; 3: -101 -33 -32
x10052:	sahf	; 1: -98
x10053:	jne pow$27	; 2: 117 26

pow$21:	; push float y
x10055:	fld qword [bp + 14]	; 3: -35 70 14

pow$22:	; push 0
x10058:	fldz	; 2: -39 -18

pow$23:	; if y != 0 goto 27
x10060:	fcompp	; 2: -34 -39
x10062:	fstsw ax	; 3: -101 -33 -32
x10065:	sahf	; 1: -98
x10066:	jne pow$27	; 2: 117 13

pow$24:	; push 1
x10068:	fld1	; 2: -39 -24

pow$25:	; return_value = 1

pow$26:	; return
x10070:	mov ax, [bp]	; 3: -117 70 0
x10073:	mov di, [bp + 4]	; 3: -117 126 4
x10076:	mov bp, [bp + 2]	; 3: -117 110 2
x10079:	jmp ax	; 2: -1 -32

pow$27:	; push float x
x10081:	fld qword [bp + 6]	; 3: -35 70 6

pow$28:	; push 0
x10084:	fldz	; 2: -39 -18

pow$29:	; if x != 0 goto 36
x10086:	fcompp	; 2: -34 -39
x10088:	fstsw ax	; 3: -101 -33 -32
x10091:	sahf	; 1: -98
x10092:	jne pow$36	; 2: 117 26

pow$30:	; push float y
x10094:	fld qword [bp + 14]	; 3: -35 70 14

pow$31:	; push 0
x10097:	fldz	; 2: -39 -18

pow$32:	; if y <= 0 goto 36
x10099:	fcompp	; 2: -34 -39
x10101:	fstsw ax	; 3: -101 -33 -32
x10104:	sahf	; 1: -98
x10105:	jae pow$36	; 2: 115 13

pow$33:	; push 0
x10107:	fldz	; 2: -39 -18

pow$34:	; return_value = 0

pow$35:	; return
x10109:	mov ax, [bp]	; 3: -117 70 0
x10112:	mov di, [bp + 4]	; 3: -117 126 4
x10115:	mov bp, [bp + 2]	; 3: -117 110 2
x10118:	jmp ax	; 2: -1 -32

pow$36:	; push float x
x10120:	fld qword [bp + 6]	; 3: -35 70 6

pow$37:	; push 0
x10123:	fldz	; 2: -39 -18

pow$38:	; if x >= 0 goto 90
x10125:	fcompp	; 2: -34 -39
x10127:	fstsw ax	; 3: -101 -33 -32
x10130:	sahf	; 1: -98
x10131:	jbe pow$90	; 4: 15 -122 -25 0

pow$39:	; call header integral zero 0 stack zero 0

pow$40:	; push float y
x10135:	fld qword [bp + 14]	; 3: -35 70 14

pow$41:	; parameter y, offset 6
x10138:	fstp qword [bp + 28]	; 3: -35 94 28

pow$42:	; call function noellipse-noellipse floor
x10141:	mov word [bp + 22], pow$43	; 5: -57 70 22 -85 39
x10146:	mov [bp + 24], bp	; 3: -119 110 24
x10149:	add bp, 22	; 3: -125 -59 22
x10152:	jmp floor	; 3: -23 96 1

pow$43:	; post call

pow$44:	; £temporary564 = return_value

pow$45:	; call header integral zero 0 stack no zero 1
x10155:	fstp qword [bp + 22]	; 3: -35 94 22

pow$46:	; push float y
x10158:	fld qword [bp + 14]	; 3: -35 70 14

pow$47:	; parameter y, offset 6
x10161:	fstp qword [bp + 36]	; 3: -35 94 36

pow$48:	; call function noellipse-noellipse ceil
x10164:	mov word [bp + 30], pow$49	; 5: -57 70 30 -62 39
x10169:	mov [bp + 32], bp	; 3: -119 110 32
x10172:	add bp, 30	; 3: -125 -59 30
x10175:	jmp ceil	; 3: -23 -105 1

pow$49:	; post call
x10178:	fstp qword [bp + 30]	; 3: -35 94 30
x10181:	fld qword [bp + 22]	; 3: -35 70 22
x10184:	fld qword [bp + 30]	; 3: -35 70 30

pow$50:	; £temporary565 = return_value

pow$51:	; if £temporary564 != £temporary565 goto 90
x10187:	fcompp	; 2: -34 -39
x10189:	fstsw ax	; 3: -101 -33 -32
x10192:	sahf	; 1: -98
x10193:	jne pow$90	; 4: 15 -123 -87 0

pow$52:	; push float y
x10197:	fld qword [bp + 14]	; 3: -35 70 14

pow$53:	; £temporary568 = float_to_int y (Double -> Signed_Long_Int)
x10200:	fistp dword [container4bytes#]	; 4: -37 30 -73 34
x10204:	mov eax, [container4bytes#]	; 4: 102 -95 -73 34

pow$54:	; long_y = £temporary568
x10208:	mov [bp + 22], eax	; 4: 102 -119 70 22

pow$55:	; £temporary569 = long_y % 2
x10212:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x10216:	xor edx, edx	; 3: 102 49 -46
x10219:	idiv dword [int4$2#]	; 5: 102 -9 62 -111 40

pow$56:	; if £temporary569 != 0 goto 73
x10224:	cmp edx, 0	; 4: 102 -125 -6 0
x10228:	jne pow$73	; 2: 117 67

pow$57:	; call header integral zero 0 stack zero 0

pow$58:	; push float y
x10230:	fld qword [bp + 14]	; 3: -35 70 14

pow$59:	; call header integral zero 0 stack no zero 1
x10233:	fstp qword [bp + 26]	; 3: -35 94 26

pow$60:	; push float x
x10236:	fld qword [bp + 6]	; 3: -35 70 6

pow$61:	; £temporary571 = -x
x10239:	fchs	; 2: -39 -32

pow$62:	; parameter £temporary571, offset 6
x10241:	fstp qword [bp + 40]	; 3: -35 94 40

pow$63:	; call function noellipse-noellipse log
x10244:	mov word [bp + 34], pow$64	; 5: -57 70 34 18 40
x10249:	mov [bp + 36], bp	; 3: -119 110 36
x10252:	add bp, 34	; 3: -125 -59 34
x10255:	jmp log	; 3: -23 -88 -3

pow$64:	; post call
x10258:	fstp qword [bp + 34]	; 3: -35 94 34
x10261:	fld qword [bp + 26]	; 3: -35 70 26
x10264:	fld qword [bp + 34]	; 3: -35 70 34

pow$65:	; £temporary572 = return_value

pow$66:	; £temporary573 = y * £temporary572
x10267:	fmul	; 2: -34 -55

pow$67:	; parameter £temporary573, offset 6
x10269:	fstp qword [bp + 32]	; 3: -35 94 32

pow$68:	; call function noellipse-noellipse exp
x10272:	mov word [bp + 26], pow$69	; 5: -57 70 26 46 40
x10277:	mov [bp + 28], bp	; 3: -119 110 28
x10280:	add bp, 26	; 3: -125 -59 26
x10283:	nop	; 1: -112
x10284:	jmp exp	; 2: -21 103

pow$69:	; post call

pow$70:	; £temporary574 = return_value

pow$71:	; return_value = £temporary574

pow$72:	; return
x10286:	mov ax, [bp]	; 3: -117 70 0
x10289:	mov di, [bp + 4]	; 3: -117 126 4
x10292:	mov bp, [bp + 2]	; 3: -117 110 2
x10295:	jmp ax	; 2: -1 -32

pow$73:	; call header integral zero 0 stack zero 0

pow$74:	; push float y
x10297:	fld qword [bp + 14]	; 3: -35 70 14

pow$75:	; call header integral zero 0 stack no zero 1
x10300:	fstp qword [bp + 26]	; 3: -35 94 26

pow$76:	; push float x
x10303:	fld qword [bp + 6]	; 3: -35 70 6

pow$77:	; £temporary575 = -x
x10306:	fchs	; 2: -39 -32

pow$78:	; parameter £temporary575, offset 6
x10308:	fstp qword [bp + 40]	; 3: -35 94 40

pow$79:	; call function noellipse-noellipse log
x10311:	mov word [bp + 34], pow$80	; 5: -57 70 34 85 40
x10316:	mov [bp + 36], bp	; 3: -119 110 36
x10319:	add bp, 34	; 3: -125 -59 34
x10322:	jmp log	; 3: -23 101 -3

pow$80:	; post call
x10325:	fstp qword [bp + 34]	; 3: -35 94 34
x10328:	fld qword [bp + 26]	; 3: -35 70 26
x10331:	fld qword [bp + 34]	; 3: -35 70 34

pow$81:	; £temporary576 = return_value

pow$82:	; £temporary577 = y * £temporary576
x10334:	fmul	; 2: -34 -55

pow$83:	; parameter £temporary577, offset 6
x10336:	fstp qword [bp + 32]	; 3: -35 94 32

pow$84:	; call function noellipse-noellipse exp
x10339:	mov word [bp + 26], pow$85	; 5: -57 70 26 113 40
x10344:	mov [bp + 28], bp	; 3: -119 110 28
x10347:	add bp, 26	; 3: -125 -59 26
x10350:	nop	; 1: -112
x10351:	jmp exp	; 2: -21 36

pow$85:	; post call

pow$86:	; £temporary578 = return_value

pow$87:	; £temporary579 = -£temporary578
x10353:	fchs	; 2: -39 -32

pow$88:	; return_value = £temporary579

pow$89:	; return
x10355:	mov ax, [bp]	; 3: -117 70 0
x10358:	mov di, [bp + 4]	; 3: -117 126 4
x10361:	mov bp, [bp + 2]	; 3: -117 110 2
x10364:	jmp ax	; 2: -1 -32

pow$90:	; errno = 6
x10366:	mov word [errno], 6	; 6: -57 6 -22 38 6 0

pow$91:	; push 0
x10372:	fldz	; 2: -39 -18

pow$92:	; return_value = 0

pow$93:	; return
x10374:	mov ax, [bp]	; 3: -117 70 0
x10377:	mov di, [bp + 4]	; 3: -117 126 4
x10380:	mov bp, [bp + 2]	; 3: -117 110 2
x10383:	jmp ax	; 2: -1 -32

pow$94:	; function end pow

int4$2#:
x10385:	dd 2	; 4: 2 0 0 0

exp:	; push 1
x10389:	fld1	; 2: -39 -24

exp$1:	; pop float index
x10391:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x10394:	fld1	; 2: -39 -24

exp$3:	; pop float sum
x10396:	fstp qword [bp + 30]	; 3: -35 94 30

exp$4:	; push 1
x10399:	fld1	; 2: -39 -24

exp$5:	; pop float faculty
x10401:	fstp qword [bp + 38]	; 3: -35 94 38

exp$6:	; push float x
x10404:	fld qword [bp + 6]	; 3: -35 70 6

exp$7:	; pop float power
x10407:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x10410:	fld qword [bp + 46]	; 3: -35 70 46

exp$9:	; push float faculty
x10413:	fld qword [bp + 38]	; 3: -35 70 38

exp$10:	; £temporary521 = power / faculty
x10416:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x10418:	fstp qword [bp + 22]	; 3: -35 94 22

exp$12:	; push float sum
x10421:	fld qword [bp + 30]	; 3: -35 70 30

exp$13:	; push float term
x10424:	fld qword [bp + 22]	; 3: -35 70 22

exp$14:	; £temporary522 = sum + term
x10427:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x10429:	fstp qword [bp + 30]	; 3: -35 94 30

exp$16:	; push float power
x10432:	fld qword [bp + 46]	; 3: -35 70 46

exp$17:	; push float x
x10435:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary523 = power * x
x10438:	fmul	; 2: -34 -55

exp$19:	; pop float power
x10440:	fstp qword [bp + 46]	; 3: -35 94 46

exp$20:	; push float faculty
x10443:	fld qword [bp + 38]	; 3: -35 70 38

exp$21:	; push float index
x10446:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x10449:	fld1	; 2: -39 -24

exp$23:	; index = index + 1
x10451:	fadd	; 2: -34 -63

exp$24:	; top float index
x10453:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary525 = faculty * £temporary524
x10456:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x10458:	fstp qword [bp + 38]	; 3: -35 94 38

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x10461:	fld qword [bp + 22]	; 3: -35 70 22

exp$29:	; parameter term, offset 6
x10464:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x10467:	mov word [bp + 54], exp$31	; 5: -57 70 54 -15 40
x10472:	mov [bp + 56], bp	; 3: -119 110 56
x10475:	add bp, 54	; 3: -125 -59 54
x10478:	jmp fabs	; 3: -23 114 -6

exp$31:	; post call

exp$32:	; £temporary526 = return_value

exp$33:	; push float 0.000000001
x10481:	fld qword [float8$0.000000001#]	; 4: -35 6 -30 38

exp$34:	; if £temporary526 >= 0.000000001 goto 8
x10485:	fcompp	; 2: -34 -39
x10487:	fstsw ax	; 3: -101 -33 -32
x10490:	sahf	; 1: -98
x10491:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x10493:	fld qword [bp + 30]	; 3: -35 70 30

exp$36:	; return_value = sum

exp$37:	; return
x10496:	mov ax, [bp]	; 3: -117 70 0
x10499:	mov di, [bp + 4]	; 3: -117 126 4
x10502:	mov bp, [bp + 2]	; 3: -117 110 2
x10505:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

floor:	; push float x
x10507:	fld qword [bp + 6]	; 3: -35 70 6

floor$1:	; push 0
x10510:	fldz	; 2: -39 -18

floor$2:	; if x >= 0 goto 13
x10512:	fcompp	; 2: -34 -39
x10514:	fstsw ax	; 3: -101 -33 -32
x10517:	sahf	; 1: -98
x10518:	jbe floor$13	; 2: 118 35

floor$3:	; call header integral zero 0 stack zero 0

floor$4:	; push float x
x10520:	fld qword [bp + 6]	; 3: -35 70 6

floor$5:	; £temporary805 = -x
x10523:	fchs	; 2: -39 -32

floor$6:	; parameter £temporary805, offset 6
x10525:	fstp qword [bp + 20]	; 3: -35 94 20

floor$7:	; call function noellipse-noellipse ceil
x10528:	mov word [bp + 14], floor$8	; 5: -57 70 14 46 41
x10533:	mov [bp + 16], bp	; 3: -119 110 16
x10536:	add bp, 14	; 3: -125 -59 14
x10539:	nop	; 1: -112
x10540:	jmp ceil	; 2: -21 43

floor$8:	; post call

floor$9:	; £temporary806 = return_value

floor$10:	; £temporary807 = -£temporary806
x10542:	fchs	; 2: -39 -32

floor$11:	; return_value = £temporary807

floor$12:	; return
x10544:	mov ax, [bp]	; 3: -117 70 0
x10547:	mov di, [bp + 4]	; 3: -117 126 4
x10550:	mov bp, [bp + 2]	; 3: -117 110 2
x10553:	jmp ax	; 2: -1 -32

floor$13:	; push float x
x10555:	fld qword [bp + 6]	; 3: -35 70 6

floor$14:	; £temporary808 = float_to_int x (Double -> Signed_Long_Int)
x10558:	fistp dword [container4bytes#]	; 4: -37 30 -73 34
x10562:	mov eax, [container4bytes#]	; 4: 102 -95 -73 34

floor$15:	; £temporary809 = int_to_float £temporary808 (Signed_Long_Int -> Double)
x10566:	mov [container4bytes#], eax	; 4: 102 -93 -73 34
x10570:	fild dword [container4bytes#]	; 4: -37 6 -73 34

floor$16:	; return_value = £temporary809

floor$17:	; return
x10574:	mov ax, [bp]	; 3: -117 70 0
x10577:	mov di, [bp + 4]	; 3: -117 126 4
x10580:	mov bp, [bp + 2]	; 3: -117 110 2
x10583:	jmp ax	; 2: -1 -32

floor$18:	; function end floor

ceil:	; push float x
x10585:	fld qword [bp + 6]	; 3: -35 70 6

ceil$1:	; push 0
x10588:	fldz	; 2: -39 -18

ceil$2:	; if x >= 0 goto 13
x10590:	fcompp	; 2: -34 -39
x10592:	fstsw ax	; 3: -101 -33 -32
x10595:	sahf	; 1: -98
x10596:	jbe ceil$13	; 2: 118 35

ceil$3:	; call header integral zero 0 stack zero 0

ceil$4:	; push float x
x10598:	fld qword [bp + 6]	; 3: -35 70 6

ceil$5:	; £temporary812 = -x
x10601:	fchs	; 2: -39 -32

ceil$6:	; parameter £temporary812, offset 6
x10603:	fstp qword [bp + 20]	; 3: -35 94 20

ceil$7:	; call function noellipse-noellipse floor
x10606:	mov word [bp + 14], ceil$8	; 5: -57 70 14 124 41
x10611:	mov [bp + 16], bp	; 3: -119 110 16
x10614:	add bp, 14	; 3: -125 -59 14
x10617:	nop	; 1: -112
x10618:	jmp floor	; 2: -21 -113

ceil$8:	; post call

ceil$9:	; £temporary813 = return_value

ceil$10:	; £temporary814 = -£temporary813
x10620:	fchs	; 2: -39 -32

ceil$11:	; return_value = £temporary814

ceil$12:	; return
x10622:	mov ax, [bp]	; 3: -117 70 0
x10625:	mov di, [bp + 4]	; 3: -117 126 4
x10628:	mov bp, [bp + 2]	; 3: -117 110 2
x10631:	jmp ax	; 2: -1 -32

ceil$13:	; push float x
x10633:	fld qword [bp + 6]	; 3: -35 70 6

ceil$14:	; push float 0.999999999999
x10636:	fld qword [float8$0.999999999999#]	; 4: -35 6 -83 41

ceil$15:	; £temporary815 = x + 0.999999999999
x10640:	fadd	; 2: -34 -63

ceil$16:	; £temporary816 = float_to_int £temporary815 (Double -> Signed_Long_Int)
x10642:	fistp dword [container4bytes#]	; 4: -37 30 -73 34
x10646:	mov eax, [container4bytes#]	; 4: 102 -95 -73 34

ceil$17:	; £temporary817 = int_to_float £temporary816 (Signed_Long_Int -> Double)
x10650:	mov [container4bytes#], eax	; 4: 102 -93 -73 34
x10654:	fild dword [container4bytes#]	; 4: -37 6 -73 34

ceil$18:	; return_value = £temporary817

ceil$19:	; return
x10658:	mov ax, [bp]	; 3: -117 70 0
x10661:	mov di, [bp + 4]	; 3: -117 126 4
x10664:	mov bp, [bp + 2]	; 3: -117 110 2
x10667:	jmp ax	; 2: -1 -32

ceil$20:	; function end ceil

float8$0.999999999999#:
x10669:	dq 0.999999999999	; 8: -47 -36 -1 -1 -1 -1 -17 63

isdigit:	; if c < 48 goto 4
x10677:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x10681:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x10683:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x10687:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary406 = 1
x10689:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x10692:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary406 = 0
x10694:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary406

isdigit$6:	; return
x10697:	mov ax, [bp]	; 3: -117 70 0
x10700:	mov di, [bp + 4]	; 3: -117 126 4
x10703:	mov bp, [bp + 2]	; 3: -117 110 2
x10706:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

asctime:	; localeConvPtr = 0
x10708:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

asctime$1:	; if localeConvPtr == 0 goto 5
x10713:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10717:	je asctime$5	; 2: 116 8

asctime$2:	; £temporary3597 -> localeConvPtr = *localeConvPtr, offset 4
x10719:	mov si, [bp + 8]	; 3: -117 118 8

asctime$3:	; £temporary3601 = £temporary3597 -> localeConvPtr
x10722:	mov ax, [si + 4]	; 3: -117 68 4

asctime$4:	; goto 6
x10725:	jmp asctime$6	; 2: -21 3

asctime$5:	; £temporary3601 = 0
x10727:	mov ax, 0	; 3: -72 0 0

asctime$6:	; shortDayList = £temporary3601
x10730:	mov [bp + 10], ax	; 3: -119 70 10

asctime$7:	; if localeConvPtr == 0 goto 11
x10733:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10737:	je asctime$11	; 2: 116 8

asctime$8:	; £temporary3603 -> localeConvPtr = *localeConvPtr, offset 8
x10739:	mov si, [bp + 8]	; 3: -117 118 8

asctime$9:	; £temporary3607 = £temporary3603 -> localeConvPtr
x10742:	mov ax, [si + 8]	; 3: -117 68 8

asctime$10:	; goto 12
x10745:	jmp asctime$12	; 2: -21 3

asctime$11:	; £temporary3607 = 0
x10747:	mov ax, 0	; 3: -72 0 0

asctime$12:	; shortMonthList = £temporary3607
x10750:	mov [bp + 12], ax	; 3: -119 70 12

asctime$13:	; if shortDayList == 0 goto 16
x10753:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x10757:	je asctime$16	; 2: 116 5

asctime$14:	; £temporary3612 = shortDayList
x10759:	mov ax, [bp + 10]	; 3: -117 70 10

asctime$15:	; goto 17
x10762:	jmp asctime$17	; 2: -21 3

asctime$16:	; £temporary3612 = g_defaultShortDayList
x10764:	mov ax, @32$g_defaultShortDayList	; 3: -72 -87 42

asctime$17:	; shortDayList = £temporary3612
x10767:	mov [bp + 10], ax	; 3: -119 70 10

asctime$18:	; if shortMonthList == 0 goto 21
x10770:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x10774:	je asctime$21	; 2: 116 5

asctime$19:	; £temporary3617 = shortMonthList
x10776:	mov ax, [bp + 12]	; 3: -117 70 12

asctime$20:	; goto 22
x10779:	jmp asctime$22	; 2: -21 3

asctime$21:	; £temporary3617 = g_defaultShortMonthList
x10781:	mov ax, @34$g_defaultShortMonthList	; 3: -72 -73 42

asctime$22:	; shortMonthList = £temporary3617
x10784:	mov [bp + 12], ax	; 3: -119 70 12

asctime$23:	; call header integral zero 0 stack zero 0

asctime$24:	; parameter g_timeString, offset 6
x10787:	mov word [bp + 20], @31$g_timeString	; 5: -57 70 20 -49 42

asctime$25:	; parameter string_25s2025s2025i2025i3A25i3A25i2025i#, offset 8
x10792:	mov word [bp + 22], string_25s2025s2025i2025i3A25i3A25i2025i#	; 5: -57 70 22 -49 43

asctime$26:	; £temporary3618 -> tp = *tp, offset 12
x10797:	mov si, [bp + 6]	; 3: -117 118 6

asctime$27:	; £temporary3620 = £temporary3618 -> tp * 2
x10800:	mov ax, [si + 12]	; 3: -117 68 12
x10803:	xor dx, dx	; 2: 49 -46
x10805:	mul word [int2$2#]	; 4: -9 38 -87 4

asctime$28:	; £temporary3621 = shortDayList + £temporary3620
x10809:	mov si, [bp + 10]	; 3: -117 118 10
x10812:	add si, ax	; 2: 1 -58

asctime$29:	; £temporary3619 -> £temporary3621 = *£temporary3621

asctime$30:	; parameter £temporary3619 -> £temporary3621, offset 10
x10814:	mov ax, [si]	; 2: -117 4
x10816:	mov [bp + 24], ax	; 3: -119 70 24

asctime$31:	; £temporary3622 -> tp = *tp, offset 8
x10819:	mov si, [bp + 6]	; 3: -117 118 6

asctime$32:	; £temporary3624 = £temporary3622 -> tp * 2
x10822:	mov ax, [si + 8]	; 3: -117 68 8
x10825:	xor dx, dx	; 2: 49 -46
x10827:	mul word [int2$2#]	; 4: -9 38 -87 4

asctime$33:	; £temporary3625 = shortMonthList + £temporary3624
x10831:	mov si, [bp + 12]	; 3: -117 118 12
x10834:	add si, ax	; 2: 1 -58

asctime$34:	; £temporary3623 -> £temporary3625 = *£temporary3625

asctime$35:	; parameter £temporary3623 -> £temporary3625, offset 12
x10836:	mov ax, [si]	; 2: -117 4
x10838:	mov [bp + 26], ax	; 3: -119 70 26

asctime$36:	; £temporary3626 -> tp = *tp, offset 6
x10841:	mov si, [bp + 6]	; 3: -117 118 6

asctime$37:	; parameter £temporary3626 -> tp, offset 14
x10844:	mov ax, [si + 6]	; 3: -117 68 6
x10847:	mov [bp + 28], ax	; 3: -119 70 28

asctime$38:	; £temporary3627 -> tp = *tp, offset 4
x10850:	mov si, [bp + 6]	; 3: -117 118 6

asctime$39:	; parameter £temporary3627 -> tp, offset 16
x10853:	mov ax, [si + 4]	; 3: -117 68 4
x10856:	mov [bp + 30], ax	; 3: -119 70 30

asctime$40:	; £temporary3628 -> tp = *tp, offset 2
x10859:	mov si, [bp + 6]	; 3: -117 118 6

asctime$41:	; parameter £temporary3628 -> tp, offset 18
x10862:	mov ax, [si + 2]	; 3: -117 68 2
x10865:	mov [bp + 32], ax	; 3: -119 70 32

asctime$42:	; £temporary3629 -> tp = *tp
x10868:	mov si, [bp + 6]	; 3: -117 118 6

asctime$43:	; parameter £temporary3629 -> tp, offset 20
x10871:	mov ax, [si]	; 2: -117 4
x10873:	mov [bp + 34], ax	; 3: -119 70 34

asctime$44:	; £temporary3630 -> tp = *tp, offset 10
x10876:	mov si, [bp + 6]	; 3: -117 118 6

asctime$45:	; £temporary3631 = £temporary3630 -> tp + 1900
x10879:	mov ax, [si + 10]	; 3: -117 68 10
x10882:	add ax, 1900	; 3: 5 108 7

asctime$46:	; parameter £temporary3631, offset 22
x10885:	mov [bp + 36], ax	; 3: -119 70 36

asctime$47:	; call function noellipse-ellipse sprintf, extra 0
x10888:	mov word [bp + 14], asctime$48	; 5: -57 70 14 -101 42
x10893:	mov [bp + 16], bp	; 3: -119 110 16
x10896:	add bp, 14	; 3: -125 -59 14
x10899:	mov di, bp	; 2: -119 -17
x10901:	add di, 14	; 3: -125 -57 14
x10904:	jmp sprintf	; 3: -23 73 1

asctime$48:	; post call

asctime$49:	; return_value = g_timeString
x10907:	mov bx, @31$g_timeString	; 3: -69 -49 42

asctime$50:	; return
x10910:	mov ax, [bp]	; 3: -117 70 0
x10913:	mov di, [bp + 4]	; 3: -117 126 4
x10916:	mov bp, [bp + 2]	; 3: -117 110 2
x10919:	jmp ax	; 2: -1 -32

asctime$51:	; function end asctime

@32$g_defaultShortDayList:
x10921:	dw string_Sun# ; 2: 32 4
x10923:	dw string_Mon# ; 2: 36 4
x10925:	dw string_Tue# ; 2: 40 4
x10927:	dw string_Wed# ; 2: 44 4
x10929:	dw string_Thu# ; 2: 48 4
x10931:	dw string_Fri# ; 2: 52 4
x10933:	dw string_Sat# ; 2: 56 4

@34$g_defaultShortMonthList:
x10935:	dw string_Jan# ; 2: 51 12
x10937:	dw string_Feb# ; 2: 55 12
x10939:	dw string_Mar# ; 2: 59 12
x10941:	dw string_Apr# ; 2: 63 12
x10943:	dw string_May# ; 2: 67 12
x10945:	dw string_Jun# ; 2: 71 12
x10947:	dw string_Jul# ; 2: 75 12
x10949:	dw string_Aug# ; 2: 79 12
x10951:	dw string_Sep# ; 2: 83 12
x10953:	dw string_Oct# ; 2: 87 12
x10955:	dw string_Nov# ; 2: 91 12
x10957:	dw string_Dec# ; 2: 95 12

@31$g_timeString:
x10959:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 256: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

string_25s2025s2025i2025i3A25i3A25i2025i#:
x11215:	db "%s %s %i %i:%i:%i %i", 0	; 21: 37 115 32 37 115 32 37 105 32 37 105 58 37 105 58 37 105 32 37 105 0

sprintf:	; £temporary2404 = &format
x11236:	mov si, bp	; 2: -119 -18
x11238:	add si, 8	; 3: -125 -58 8

sprintf$1:	; £temporary2405 = int_to_int £temporary2404 (Pointer -> Pointer)

sprintf$2:	; arg_list = £temporary2405 + 2
x11241:	add si, 2	; 3: -125 -58 2
x11244:	mov [di + 10], si	; 3: -119 117 10

sprintf$3:	; call header integral zero 0 stack zero 0

sprintf$4:	; parameter outString, offset 6
x11247:	mov ax, [bp + 6]	; 3: -117 70 6
x11250:	mov [di + 18], ax	; 3: -119 69 18

sprintf$5:	; parameter format, offset 8
x11253:	mov ax, [bp + 8]	; 3: -117 70 8
x11256:	mov [di + 20], ax	; 3: -119 69 20

sprintf$6:	; parameter arg_list, offset 10
x11259:	mov ax, [di + 10]	; 3: -117 69 10
x11262:	mov [di + 22], ax	; 3: -119 69 22

sprintf$7:	; call function ellipse-noellipse vsprintf
x11265:	mov word [di + 12], sprintf$8	; 5: -57 69 12 20 44
x11270:	mov [di + 14], bp	; 3: -119 109 14
x11273:	mov [di + 16], di	; 3: -119 125 16
x11276:	add di, 12	; 3: -125 -57 12
x11279:	mov bp, di	; 2: -119 -3
x11281:	nop	; 1: -112
x11282:	jmp vsprintf	; 2: -21 11

sprintf$8:	; post call

sprintf$9:	; £temporary2407 = return_value

sprintf$10:	; return_value = £temporary2407

sprintf$11:	; return
x11284:	mov ax, [bp]	; 3: -117 70 0
x11287:	mov di, [bp + 4]	; 3: -117 126 4
x11290:	mov bp, [bp + 2]	; 3: -117 110 2
x11293:	jmp ax	; 2: -1 -32

sprintf$12:	; function end sprintf

vsprintf:	; g_outStatus = 1
x11295:	mov word [g_outStatus], 1	; 6: -57 6 -124 17 1 0

vsprintf$1:	; £temporary2412 = int_to_int outString (Pointer -> Pointer)
x11301:	mov ax, [bp + 6]	; 3: -117 70 6

vsprintf$2:	; g_outDevice = £temporary2412
x11304:	mov [g_outDevice], ax	; 3: -93 -122 17

vsprintf$3:	; call header integral zero 0 stack zero 0

vsprintf$4:	; parameter format, offset 6
x11307:	mov ax, [bp + 8]	; 3: -117 70 8
x11310:	mov [bp + 18], ax	; 3: -119 70 18

vsprintf$5:	; parameter arg_list, offset 8
x11313:	mov ax, [bp + 10]	; 3: -117 70 10
x11316:	mov [bp + 20], ax	; 3: -119 70 20

vsprintf$6:	; call function noellipse-noellipse printFormat
x11319:	mov word [bp + 12], vsprintf$7	; 5: -57 70 12 69 44
x11324:	mov [bp + 14], bp	; 3: -119 110 14
x11327:	add bp, 12	; 3: -125 -59 12
x11330:	jmp printFormat	; 3: -23 67 -27

vsprintf$7:	; post call

vsprintf$8:	; £temporary2413 = return_value

vsprintf$9:	; return_value = £temporary2413

vsprintf$10:	; return
x11333:	mov ax, [bp]	; 3: -117 70 0
x11336:	mov di, [bp + 4]	; 3: -117 126 4
x11339:	mov bp, [bp + 2]	; 3: -117 110 2
x11342:	jmp ax	; 2: -1 -32

vsprintf$11:	; function end vsprintf

strcpy:	; index = 0
x11344:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcpy$1:	; £temporary3907 = source + index
x11349:	mov si, [bp + 8]	; 3: -117 118 8
x11352:	add si, [bp + 10]	; 3: 3 118 10

strcpy$2:	; £temporary3906 -> £temporary3907 = *£temporary3907

strcpy$3:	; if £temporary3906 -> £temporary3907 == 0 goto 11
x11355:	cmp byte [si], 0	; 3: -128 60 0
x11358:	je strcpy$11	; 2: 116 21

strcpy$4:	; £temporary3911 = target + index
x11360:	mov si, [bp + 6]	; 3: -117 118 6
x11363:	add si, [bp + 10]	; 3: 3 118 10

strcpy$5:	; £temporary3910 -> £temporary3911 = *£temporary3911

strcpy$6:	; £temporary3913 = source + index
x11366:	mov di, [bp + 8]	; 3: -117 126 8
x11369:	add di, [bp + 10]	; 3: 3 126 10

strcpy$7:	; £temporary3912 -> £temporary3913 = *£temporary3913

strcpy$8:	; £temporary3910 -> £temporary3911 = £temporary3912 -> £temporary3913
x11372:	mov al, [di]	; 2: -118 5
x11374:	mov [si], al	; 2: -120 4

strcpy$9:	; ++index
x11376:	inc word [bp + 10]	; 3: -1 70 10

strcpy$10:	; goto 1
x11379:	jmp strcpy$1	; 2: -21 -32

strcpy$11:	; £temporary3915 = target + index
x11381:	mov si, [bp + 6]	; 3: -117 118 6
x11384:	add si, [bp + 10]	; 3: 3 118 10

strcpy$12:	; £temporary3914 -> £temporary3915 = *£temporary3915

strcpy$13:	; £temporary3914 -> £temporary3915 = 0
x11387:	mov byte [si], 0	; 3: -58 4 0

strcpy$14:	; return_value = target
x11390:	mov bx, [bp + 6]	; 3: -117 94 6

strcpy$15:	; return
x11393:	mov ax, [bp]	; 3: -117 70 0
x11396:	mov di, [bp + 4]	; 3: -117 126 4
x11399:	mov bp, [bp + 2]	; 3: -117 110 2
x11402:	jmp ax	; 2: -1 -32

strcpy$16:	; function end strcpy

ctime:	; call header integral zero 0 stack zero 0

ctime$1:	; call header integral zero 0 stack zero 0

ctime$2:	; parameter time, offset 6
x11404:	mov ax, [bp + 6]	; 3: -117 70 6
x11407:	mov [bp + 14], ax	; 3: -119 70 14

ctime$3:	; call function noellipse-noellipse localtime
x11410:	mov word [bp + 8], ctime$4	; 5: -57 70 8 -96 44
x11415:	mov [bp + 10], bp	; 3: -119 110 10
x11418:	add bp, 8	; 3: -125 -59 8
x11421:	jmp localtime	; 3: -23 82 -34

ctime$4:	; post call

ctime$5:	; £temporary3642 = return_value

ctime$6:	; parameter £temporary3642, offset 6
x11424:	mov [bp + 14], bx	; 3: -119 94 14

ctime$7:	; call function noellipse-noellipse asctime
x11427:	mov word [bp + 8], ctime$8	; 5: -57 70 8 -79 44
x11432:	mov [bp + 10], bp	; 3: -119 110 10
x11435:	add bp, 8	; 3: -125 -59 8
x11438:	jmp asctime	; 3: -23 35 -3

ctime$8:	; post call

ctime$9:	; £temporary3643 = return_value

ctime$10:	; return_value = £temporary3643

ctime$11:	; return
x11441:	mov ax, [bp]	; 3: -117 70 0
x11444:	mov di, [bp + 4]	; 3: -117 126 4
x11447:	mov bp, [bp + 2]	; 3: -117 110 2
x11450:	jmp ax	; 2: -1 -32

ctime$12:	; function end ctime

strftime:	; call header integral zero 0 stack zero 0

strftime$1:	; call function noellipse-noellipse localeconv
x11452:	mov word [bp + 14], strftime$2	; 5: -57 70 14 -54 44
x11457:	mov [bp + 16], bp	; 3: -119 110 16
x11460:	add bp, 14	; 3: -125 -59 14
x11463:	jmp localeconv	; 3: -23 -67 -34

strftime$2:	; post call

strftime$3:	; £temporary3666 = return_value

strftime$4:	; localeConvPtr = £temporary3666
x11466:	mov [bp + 14], bx	; 3: -119 94 14

strftime$5:	; if localeConvPtr == 0 goto 9
x11469:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x11473:	je strftime$9	; 2: 116 8

strftime$6:	; £temporary3668 -> localeConvPtr = *localeConvPtr, offset 4
x11475:	mov si, [bp + 14]	; 3: -117 118 14

strftime$7:	; £temporary3672 = £temporary3668 -> localeConvPtr
x11478:	mov ax, [si + 4]	; 3: -117 68 4

strftime$8:	; goto 10
x11481:	jmp strftime$10	; 2: -21 3

strftime$9:	; £temporary3672 = 0
x11483:	mov ax, 0	; 3: -72 0 0

strftime$10:	; shortDayList = £temporary3672
x11486:	mov [bp + 16], ax	; 3: -119 70 16

strftime$11:	; if localeConvPtr == 0 goto 15
x11489:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x11493:	je strftime$15	; 2: 116 8

strftime$12:	; £temporary3674 -> localeConvPtr = *localeConvPtr, offset 8
x11495:	mov si, [bp + 14]	; 3: -117 118 14

strftime$13:	; £temporary3678 = £temporary3674 -> localeConvPtr
x11498:	mov ax, [si + 8]	; 3: -117 68 8

strftime$14:	; goto 16
x11501:	jmp strftime$16	; 2: -21 3

strftime$15:	; £temporary3678 = 0
x11503:	mov ax, 0	; 3: -72 0 0

strftime$16:	; shortMonthList = £temporary3678
x11506:	mov [bp + 18], ax	; 3: -119 70 18

strftime$17:	; if localeConvPtr == 0 goto 21
x11509:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x11513:	je strftime$21	; 2: 116 8

strftime$18:	; £temporary3680 -> localeConvPtr = *localeConvPtr, offset 6
x11515:	mov si, [bp + 14]	; 3: -117 118 14

strftime$19:	; £temporary3684 = £temporary3680 -> localeConvPtr
x11518:	mov ax, [si + 6]	; 3: -117 68 6

strftime$20:	; goto 22
x11521:	jmp strftime$22	; 2: -21 3

strftime$21:	; £temporary3684 = 0
x11523:	mov ax, 0	; 3: -72 0 0

strftime$22:	; longDayList = £temporary3684
x11526:	mov [bp + 20], ax	; 3: -119 70 20

strftime$23:	; if localeConvPtr == 0 goto 27
x11529:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x11533:	je strftime$27	; 2: 116 8

strftime$24:	; £temporary3686 -> localeConvPtr = *localeConvPtr, offset 10
x11535:	mov si, [bp + 14]	; 3: -117 118 14

strftime$25:	; £temporary3690 = £temporary3686 -> localeConvPtr
x11538:	mov ax, [si + 10]	; 3: -117 68 10

strftime$26:	; goto 28
x11541:	jmp strftime$28	; 2: -21 3

strftime$27:	; £temporary3690 = 0
x11543:	mov ax, 0	; 3: -72 0 0

strftime$28:	; longMonthList = £temporary3690
x11546:	mov [bp + 22], ax	; 3: -119 70 22

strftime$29:	; £temporary3691 -> tp = *tp, offset 10
x11549:	mov si, [bp + 12]	; 3: -117 118 12

strftime$30:	; £temporary3692 = £temporary3691 -> tp - 69
x11552:	mov ax, [si + 10]	; 3: -117 68 10
x11555:	sub ax, 69	; 3: -125 -24 69

strftime$31:	; leapDays = £temporary3692 / 4
x11558:	xor dx, dx	; 2: 49 -46
x11560:	idiv word [int2$4#]	; 4: -9 62 -114 7
x11564:	mov [bp + 24], ax	; 3: -119 70 24

strftime$32:	; £temporary3694 -> tp = *tp, offset 10
x11567:	mov si, [bp + 12]	; 3: -117 118 12

strftime$33:	; £temporary3695 = £temporary3694 -> tp - 70
x11570:	mov ax, [si + 10]	; 3: -117 68 10
x11573:	sub ax, 70	; 3: -125 -24 70

strftime$34:	; £temporary3696 = £temporary3695 * 365
x11576:	xor dx, dx	; 2: 49 -46
x11578:	imul word [int2$365#]	; 4: -9 46 -127 8

strftime$35:	; £temporary3697 = £temporary3696 + leapDays
x11582:	add ax, [bp + 24]	; 3: 3 70 24

strftime$36:	; £temporary3698 -> tp = *tp, offset 14
x11585:	mov si, [bp + 12]	; 3: -117 118 12

strftime$37:	; £temporary3699 = £temporary3697 + £temporary3698 -> tp
x11588:	add ax, [si + 14]	; 3: 3 68 14

strftime$38:	; £temporary3700 = int_to_int £temporary3699 (Signed_Int -> Signed_Long_Int)
x11591:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x11597:	cmp ax, 0	; 3: -125 -8 0
x11600:	jge strftime$39	; 2: 125 5
x11602:	neg ax	; 2: -9 -40
x11604:	neg eax	; 3: 102 -9 -40

strftime$39:	; totalDays = £temporary3700
x11607:	mov [bp + 26], eax	; 4: 102 -119 70 26

strftime$40:	; call header integral zero 0 stack zero 0

strftime$41:	; parameter s, offset 6
x11611:	mov ax, [bp + 6]	; 3: -117 70 6
x11614:	mov [bp + 40], ax	; 3: -119 70 40

strftime$42:	; parameter string_#, offset 8
x11617:	mov word [bp + 42], string_#	; 5: -57 70 42 -77 11

strftime$43:	; call function noellipse-noellipse strcpy
x11622:	mov word [bp + 34], strftime$44	; 5: -57 70 34 116 45
x11627:	mov [bp + 36], bp	; 3: -119 110 36
x11630:	add bp, 34	; 3: -125 -59 34
x11633:	jmp strcpy	; 3: -23 -36 -2

strftime$44:	; post call

strftime$45:	; if shortDayList == 0 goto 48
x11636:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x11640:	je strftime$48	; 2: 116 5

strftime$46:	; £temporary3706 = shortDayList
x11642:	mov ax, [bp + 16]	; 3: -117 70 16

strftime$47:	; goto 49
x11645:	jmp strftime$49	; 2: -21 3

strftime$48:	; £temporary3706 = g_defaultShortDayList
x11647:	mov ax, @32$g_defaultShortDayList	; 3: -72 -87 42

strftime$49:	; shortDayList = £temporary3706
x11650:	mov [bp + 16], ax	; 3: -119 70 16

strftime$50:	; if longDayList == 0 goto 53
x11653:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x11657:	je strftime$53	; 2: 116 5

strftime$51:	; £temporary3711 = longDayList
x11659:	mov ax, [bp + 20]	; 3: -117 70 20

strftime$52:	; goto 54
x11662:	jmp strftime$54	; 2: -21 3

strftime$53:	; £temporary3711 = g_defaultLongDayList
x11664:	mov ax, @33$g_defaultLongDayList	; 3: -72 -100 51

strftime$54:	; longDayList = £temporary3711
x11667:	mov [bp + 20], ax	; 3: -119 70 20

strftime$55:	; if shortMonthList == 0 goto 58
x11670:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x11674:	je strftime$58	; 2: 116 5

strftime$56:	; £temporary3716 = shortMonthList
x11676:	mov ax, [bp + 18]	; 3: -117 70 18

strftime$57:	; goto 59
x11679:	jmp strftime$59	; 2: -21 3

strftime$58:	; £temporary3716 = g_defaultShortMonthList
x11681:	mov ax, @34$g_defaultShortMonthList	; 3: -72 -73 42

strftime$59:	; shortMonthList = £temporary3716
x11684:	mov [bp + 18], ax	; 3: -119 70 18

strftime$60:	; if longMonthList == 0 goto 63
x11687:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x11691:	je strftime$63	; 2: 116 5

strftime$61:	; £temporary3721 = longMonthList
x11693:	mov ax, [bp + 22]	; 3: -117 70 22

strftime$62:	; goto 64
x11696:	jmp strftime$64	; 2: -21 3

strftime$63:	; £temporary3721 = g_defaultLongMonthList
x11698:	mov ax, @35$g_defaultLongMonthList	; 3: -72 -86 51

strftime$64:	; longMonthList = £temporary3721
x11701:	mov [bp + 22], ax	; 3: -119 70 22

strftime$65:	; if totalDays >= 3 goto 70
x11704:	cmp dword [bp + 26], 3	; 5: 102 -125 126 26 3
x11709:	jge strftime$70	; 2: 125 24

strftime$66:	; £temporary3723 = totalDays + 4
x11711:	mov eax, [bp + 26]	; 4: 102 -117 70 26
x11715:	add eax, 4	; 4: 102 -125 -64 4

strftime$67:	; £temporary3724 = int_to_int £temporary3723 (Signed_Long_Int -> Signed_Int)
x11719:	cmp eax, 0	; 4: 102 -125 -8 0
x11723:	jge strftime$68	; 2: 125 5
x11725:	neg eax	; 3: 102 -9 -40
x11728:	neg ax	; 2: -9 -40

strftime$68:	; yearDaySunday = £temporary3724
x11730:	mov [bp + 30], ax	; 3: -119 70 30

strftime$69:	; goto 74
x11733:	jmp strftime$74	; 2: -21 30

strftime$70:	; £temporary3725 = totalDays - 3
x11735:	mov eax, [bp + 26]	; 4: 102 -117 70 26
x11739:	sub eax, 3	; 4: 102 -125 -24 3

strftime$71:	; £temporary3726 = £temporary3725 % 7
x11743:	xor edx, edx	; 3: 102 49 -46
x11746:	idiv dword [int4$7#]	; 5: 102 -9 62 -22 10

strftime$72:	; £temporary3727 = int_to_int £temporary3726 (Signed_Long_Int -> Signed_Int)
x11751:	cmp edx, 0	; 4: 102 -125 -6 0
x11755:	jge strftime$73	; 2: 125 5
x11757:	neg edx	; 3: 102 -9 -38
x11760:	neg dx	; 2: -9 -38

strftime$73:	; yearDaySunday = £temporary3727
x11762:	mov [bp + 30], dx	; 3: -119 86 30

strftime$74:	; if totalDays >= 4 goto 79
x11765:	cmp dword [bp + 26], 4	; 5: 102 -125 126 26 4
x11770:	jge strftime$79	; 2: 125 24

strftime$75:	; £temporary3729 = totalDays + 3
x11772:	mov eax, [bp + 26]	; 4: 102 -117 70 26
x11776:	add eax, 3	; 4: 102 -125 -64 3

strftime$76:	; £temporary3730 = int_to_int £temporary3729 (Signed_Long_Int -> Signed_Int)
x11780:	cmp eax, 0	; 4: 102 -125 -8 0
x11784:	jge strftime$77	; 2: 125 5
x11786:	neg eax	; 3: 102 -9 -40
x11789:	neg ax	; 2: -9 -40

strftime$77:	; yearDayMonday = £temporary3730
x11791:	mov [bp + 32], ax	; 3: -119 70 32

strftime$78:	; goto 83
x11794:	jmp strftime$83	; 2: -21 30

strftime$79:	; £temporary3731 = totalDays - 4
x11796:	mov eax, [bp + 26]	; 4: 102 -117 70 26
x11800:	sub eax, 4	; 4: 102 -125 -24 4

strftime$80:	; £temporary3732 = £temporary3731 % 7
x11804:	xor edx, edx	; 3: 102 49 -46
x11807:	idiv dword [int4$7#]	; 5: 102 -9 62 -22 10

strftime$81:	; £temporary3733 = int_to_int £temporary3732 (Signed_Long_Int -> Signed_Int)
x11812:	cmp edx, 0	; 4: 102 -125 -6 0
x11816:	jge strftime$82	; 2: 125 5
x11818:	neg edx	; 3: 102 -9 -38
x11821:	neg dx	; 2: -9 -38

strftime$82:	; yearDayMonday = £temporary3733
x11823:	mov [bp + 32], dx	; 3: -119 86 32

strftime$83:	; index = 0
x11826:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

strftime$84:	; £temporary3735 = fmt + index
x11831:	mov si, [bp + 10]	; 3: -117 118 10
x11834:	add si, [bp + 34]	; 3: 3 118 34

strftime$85:	; £temporary3734 -> £temporary3735 = *£temporary3735

strftime$86:	; if £temporary3734 -> £temporary3735 == 0 goto 356
x11837:	cmp byte [si], 0	; 3: -128 60 0
x11840:	je strftime$356	; 4: 15 -124 57 5

strftime$87:	; £temporary3739 = fmt + index
x11844:	mov si, [bp + 10]	; 3: -117 118 10
x11847:	add si, [bp + 34]	; 3: 3 118 34

strftime$88:	; £temporary3738 -> £temporary3739 = *£temporary3739

strftime$89:	; if £temporary3738 -> £temporary3739 != 37 goto 329
x11850:	cmp byte [si], 37	; 3: -128 60 37
x11853:	jne strftime$329	; 4: 15 -123 -71 4

strftime$90:	; £temporary3741 = index + 1
x11857:	mov ax, [bp + 34]	; 3: -117 70 34
x11860:	inc ax	; 1: 64

strftime$91:	; £temporary3743 = fmt + £temporary3741
x11861:	mov si, [bp + 10]	; 3: -117 118 10
x11864:	add si, ax	; 2: 1 -58

strftime$92:	; £temporary3742 -> £temporary3743 = *£temporary3743
x11866:	mov al, [si]	; 2: -118 4
x11868:	mov [bp + 56], al	; 3: -120 70 56

strftime$93:	; case £temporary3742 -> £temporary3743 == 97 goto 117
x11871:	mov al, [bp + 56]	; 3: -118 70 56
x11874:	cmp al, 97	; 2: 60 97
x11876:	je strftime$117	; 4: 15 -124 -127 0

strftime$94:	; case £temporary3742 -> £temporary3743 == 65 goto 127
x11880:	cmp al, 65	; 2: 60 65
x11882:	je strftime$127	; 4: 15 -124 -87 0

strftime$95:	; case £temporary3742 -> £temporary3743 == 98 goto 137
x11886:	cmp al, 98	; 2: 60 98
x11888:	je strftime$137	; 4: 15 -124 -47 0

strftime$96:	; case £temporary3742 -> £temporary3743 == 66 goto 147
x11892:	cmp al, 66	; 2: 60 66
x11894:	je strftime$147	; 4: 15 -124 -7 0

strftime$97:	; case £temporary3742 -> £temporary3743 == 99 goto 157
x11898:	cmp al, 99	; 2: 60 99
x11900:	je strftime$157	; 4: 15 -124 33 1

strftime$98:	; case £temporary3742 -> £temporary3743 == 100 goto 177
x11904:	cmp al, 100	; 2: 60 100
x11906:	je strftime$177	; 4: 15 -124 118 1

strftime$99:	; case £temporary3742 -> £temporary3743 == 72 goto 185
x11910:	cmp al, 72	; 2: 60 72
x11912:	je strftime$185	; 4: 15 -124 -101 1

strftime$100:	; case £temporary3742 -> £temporary3743 == 73 goto 193
x11916:	cmp al, 73	; 2: 60 73
x11918:	je strftime$193	; 4: 15 -124 -64 1

strftime$101:	; case £temporary3742 -> £temporary3743 == 106 goto 202
x11922:	cmp al, 106	; 2: 60 106
x11924:	je strftime$202	; 4: 15 -124 -21 1

strftime$102:	; case £temporary3742 -> £temporary3743 == 109 goto 210
x11928:	cmp al, 109	; 2: 60 109
x11930:	je strftime$210	; 4: 15 -124 16 2

strftime$103:	; case £temporary3742 -> £temporary3743 == 77 goto 219
x11934:	cmp al, 77	; 2: 60 77
x11936:	je strftime$219	; 4: 15 -124 54 2

strftime$104:	; case £temporary3742 -> £temporary3743 == 112 goto 227
x11940:	cmp al, 112	; 2: 60 112
x11942:	je strftime$227	; 4: 15 -124 91 2

strftime$105:	; case £temporary3742 -> £temporary3743 == 83 goto 239
x11946:	cmp al, 83	; 2: 60 83
x11948:	je strftime$239	; 4: 15 -124 -117 2

strftime$106:	; case £temporary3742 -> £temporary3743 == 85 goto 247
x11952:	cmp al, 85	; 2: 60 85
x11954:	je strftime$247	; 4: 15 -124 -81 2

strftime$107:	; case £temporary3742 -> £temporary3743 == 119 goto 254
x11958:	cmp al, 119	; 2: 60 119
x11960:	je strftime$254	; 4: 15 -124 -47 2

strftime$108:	; case £temporary3742 -> £temporary3743 == 87 goto 262
x11964:	cmp al, 87	; 2: 60 87
x11966:	je strftime$262	; 4: 15 -124 -10 2

strftime$109:	; case £temporary3742 -> £temporary3743 == 120 goto 269
x11970:	cmp al, 120	; 2: 60 120
x11972:	je strftime$269	; 4: 15 -124 24 3

strftime$110:	; case £temporary3742 -> £temporary3743 == 88 goto 281
x11976:	cmp al, 88	; 2: 60 88
x11978:	je strftime$281	; 4: 15 -124 78 3

strftime$111:	; case £temporary3742 -> £temporary3743 == 121 goto 293
x11982:	cmp al, 121	; 2: 60 121
x11984:	je strftime$293	; 4: 15 -124 -124 3

strftime$112:	; case £temporary3742 -> £temporary3743 == 89 goto 302
x11988:	cmp al, 89	; 2: 60 89
x11990:	je strftime$302	; 4: 15 -124 -82 3

strftime$113:	; case £temporary3742 -> £temporary3743 == 90 goto 311
x11994:	cmp al, 90	; 2: 60 90
x11996:	je strftime$311	; 4: 15 -124 -43 3

strftime$114:	; case £temporary3742 -> £temporary3743 == 37 goto 317
x12000:	cmp al, 37	; 2: 60 37
x12002:	je strftime$317	; 4: 15 -124 -21 3

strftime$115:	; case end £temporary3742 -> £temporary3743

strftime$116:	; goto 322
x12006:	jmp strftime$322	; 3: -23 2 4

strftime$117:	; call header integral zero 0 stack zero 0

strftime$118:	; parameter add, offset 6
x12009:	mov [bp + 62], bp	; 3: -119 110 62
x12012:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$119:	; £temporary3744 -> tp = *tp, offset 12
x12016:	mov si, [bp + 12]	; 3: -117 118 12

strftime$120:	; £temporary3746 = £temporary3744 -> tp * 2
x12019:	mov ax, [si + 12]	; 3: -117 68 12
x12022:	xor dx, dx	; 2: 49 -46
x12024:	mul word [int2$2#]	; 4: -9 38 -87 4

strftime$121:	; £temporary3747 = shortDayList + £temporary3746
x12028:	mov si, [bp + 16]	; 3: -117 118 16
x12031:	add si, ax	; 2: 1 -58

strftime$122:	; £temporary3745 -> £temporary3747 = *£temporary3747

strftime$123:	; parameter £temporary3745 -> £temporary3747, offset 8
x12033:	mov ax, [si]	; 2: -117 4
x12035:	mov [bp + 64], ax	; 3: -119 70 64

strftime$124:	; call function noellipse-noellipse strcpy
x12038:	mov word [bp + 56], strftime$125	; 5: -57 70 56 20 47
x12043:	mov [bp + 58], bp	; 3: -119 110 58
x12046:	add bp, 56	; 3: -125 -59 56
x12049:	jmp strcpy	; 3: -23 60 -3

strftime$125:	; post call

strftime$126:	; goto 327
x12052:	jmp strftime$327	; 3: -23 -18 3

strftime$127:	; call header integral zero 0 stack zero 0

strftime$128:	; parameter add, offset 6
x12055:	mov [bp + 62], bp	; 3: -119 110 62
x12058:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$129:	; £temporary3749 -> tp = *tp, offset 12
x12062:	mov si, [bp + 12]	; 3: -117 118 12

strftime$130:	; £temporary3751 = £temporary3749 -> tp * 2
x12065:	mov ax, [si + 12]	; 3: -117 68 12
x12068:	xor dx, dx	; 2: 49 -46
x12070:	mul word [int2$2#]	; 4: -9 38 -87 4

strftime$131:	; £temporary3752 = longDayList + £temporary3751
x12074:	mov si, [bp + 20]	; 3: -117 118 20
x12077:	add si, ax	; 2: 1 -58

strftime$132:	; £temporary3750 -> £temporary3752 = *£temporary3752

strftime$133:	; parameter £temporary3750 -> £temporary3752, offset 8
x12079:	mov ax, [si]	; 2: -117 4
x12081:	mov [bp + 64], ax	; 3: -119 70 64

strftime$134:	; call function noellipse-noellipse strcpy
x12084:	mov word [bp + 56], strftime$135	; 5: -57 70 56 66 47
x12089:	mov [bp + 58], bp	; 3: -119 110 58
x12092:	add bp, 56	; 3: -125 -59 56
x12095:	jmp strcpy	; 3: -23 14 -3

strftime$135:	; post call

strftime$136:	; goto 327
x12098:	jmp strftime$327	; 3: -23 -64 3

strftime$137:	; call header integral zero 0 stack zero 0

strftime$138:	; parameter add, offset 6
x12101:	mov [bp + 62], bp	; 3: -119 110 62
x12104:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$139:	; £temporary3754 -> tp = *tp, offset 8
x12108:	mov si, [bp + 12]	; 3: -117 118 12

strftime$140:	; £temporary3756 = £temporary3754 -> tp * 2
x12111:	mov ax, [si + 8]	; 3: -117 68 8
x12114:	xor dx, dx	; 2: 49 -46
x12116:	mul word [int2$2#]	; 4: -9 38 -87 4

strftime$141:	; £temporary3757 = shortMonthList + £temporary3756
x12120:	mov si, [bp + 18]	; 3: -117 118 18
x12123:	add si, ax	; 2: 1 -58

strftime$142:	; £temporary3755 -> £temporary3757 = *£temporary3757

strftime$143:	; parameter £temporary3755 -> £temporary3757, offset 8
x12125:	mov ax, [si]	; 2: -117 4
x12127:	mov [bp + 64], ax	; 3: -119 70 64

strftime$144:	; call function noellipse-noellipse strcpy
x12130:	mov word [bp + 56], strftime$145	; 5: -57 70 56 112 47
x12135:	mov [bp + 58], bp	; 3: -119 110 58
x12138:	add bp, 56	; 3: -125 -59 56
x12141:	jmp strcpy	; 3: -23 -32 -4

strftime$145:	; post call

strftime$146:	; goto 327
x12144:	jmp strftime$327	; 3: -23 -110 3

strftime$147:	; call header integral zero 0 stack zero 0

strftime$148:	; parameter add, offset 6
x12147:	mov [bp + 62], bp	; 3: -119 110 62
x12150:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$149:	; £temporary3759 -> tp = *tp, offset 8
x12154:	mov si, [bp + 12]	; 3: -117 118 12

strftime$150:	; £temporary3761 = £temporary3759 -> tp * 2
x12157:	mov ax, [si + 8]	; 3: -117 68 8
x12160:	xor dx, dx	; 2: 49 -46
x12162:	mul word [int2$2#]	; 4: -9 38 -87 4

strftime$151:	; £temporary3762 = longMonthList + £temporary3761
x12166:	mov si, [bp + 22]	; 3: -117 118 22
x12169:	add si, ax	; 2: 1 -58

strftime$152:	; £temporary3760 -> £temporary3762 = *£temporary3762

strftime$153:	; parameter £temporary3760 -> £temporary3762, offset 8
x12171:	mov ax, [si]	; 2: -117 4
x12173:	mov [bp + 64], ax	; 3: -119 70 64

strftime$154:	; call function noellipse-noellipse strcpy
x12176:	mov word [bp + 56], strftime$155	; 5: -57 70 56 -98 47
x12181:	mov [bp + 58], bp	; 3: -119 110 58
x12184:	add bp, 56	; 3: -125 -59 56
x12187:	jmp strcpy	; 3: -23 -78 -4

strftime$155:	; post call

strftime$156:	; goto 327
x12190:	jmp strftime$327	; 3: -23 100 3

strftime$157:	; call header integral zero 0 stack zero 0

strftime$158:	; parameter add, offset 6
x12193:	mov [bp + 62], bp	; 3: -119 110 62
x12196:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$159:	; parameter string_25d2D25d2D25d2025d3A25d3A25d#, offset 8
x12200:	mov word [bp + 64], string_25d2D25d2D25d2025d3A25d3A25d#	; 5: -57 70 64 -62 51

strftime$160:	; £temporary3764 -> tp = *tp, offset 10
x12205:	mov si, [bp + 12]	; 3: -117 118 12

strftime$161:	; £temporary3765 = £temporary3764 -> tp + 1900
x12208:	mov ax, [si + 10]	; 3: -117 68 10
x12211:	add ax, 1900	; 3: 5 108 7

strftime$162:	; parameter £temporary3765, offset 10
x12214:	mov [bp + 66], ax	; 3: -119 70 66

strftime$163:	; £temporary3766 -> tp = *tp, offset 8
x12217:	mov si, [bp + 12]	; 3: -117 118 12

strftime$164:	; £temporary3767 = £temporary3766 -> tp + 1
x12220:	mov ax, [si + 8]	; 3: -117 68 8
x12223:	inc ax	; 1: 64

strftime$165:	; parameter £temporary3767, offset 12
x12224:	mov [bp + 68], ax	; 3: -119 70 68

strftime$166:	; £temporary3768 -> tp = *tp, offset 6
x12227:	mov si, [bp + 12]	; 3: -117 118 12

strftime$167:	; parameter £temporary3768 -> tp, offset 14
x12230:	mov ax, [si + 6]	; 3: -117 68 6
x12233:	mov [bp + 70], ax	; 3: -119 70 70

strftime$168:	; £temporary3769 -> tp = *tp, offset 4
x12236:	mov si, [bp + 12]	; 3: -117 118 12

strftime$169:	; parameter £temporary3769 -> tp, offset 16
x12239:	mov ax, [si + 4]	; 3: -117 68 4
x12242:	mov [bp + 72], ax	; 3: -119 70 72

strftime$170:	; £temporary3770 -> tp = *tp, offset 2
x12245:	mov si, [bp + 12]	; 3: -117 118 12

strftime$171:	; parameter £temporary3770 -> tp, offset 18
x12248:	mov ax, [si + 2]	; 3: -117 68 2
x12251:	mov [bp + 74], ax	; 3: -119 70 74

strftime$172:	; £temporary3771 -> tp = *tp
x12254:	mov si, [bp + 12]	; 3: -117 118 12

strftime$173:	; parameter £temporary3771 -> tp, offset 20
x12257:	mov ax, [si]	; 2: -117 4
x12259:	mov [bp + 76], ax	; 3: -119 70 76

strftime$174:	; call function noellipse-ellipse sprintf, extra 0
x12262:	mov word [bp + 56], strftime$175	; 5: -57 70 56 -7 47
x12267:	mov [bp + 58], bp	; 3: -119 110 58
x12270:	add bp, 56	; 3: -125 -59 56
x12273:	mov di, bp	; 2: -119 -17
x12275:	add di, 12	; 3: -125 -57 12
x12278:	jmp sprintf	; 3: -23 -21 -5

strftime$175:	; post call

strftime$176:	; goto 327
x12281:	jmp strftime$327	; 3: -23 9 3

strftime$177:	; call header integral zero 0 stack zero 0

strftime$178:	; parameter add, offset 6
x12284:	mov [bp + 62], bp	; 3: -119 110 62
x12287:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$179:	; parameter string_25d#, offset 8
x12291:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -44 51

strftime$180:	; £temporary3773 -> tp = *tp, offset 6
x12296:	mov si, [bp + 12]	; 3: -117 118 12

strftime$181:	; parameter £temporary3773 -> tp, offset 10
x12299:	mov ax, [si + 6]	; 3: -117 68 6
x12302:	mov [bp + 66], ax	; 3: -119 70 66

strftime$182:	; call function noellipse-ellipse sprintf, extra 0
x12305:	mov word [bp + 56], strftime$183	; 5: -57 70 56 36 48
x12310:	mov [bp + 58], bp	; 3: -119 110 58
x12313:	add bp, 56	; 3: -125 -59 56
x12316:	mov di, bp	; 2: -119 -17
x12318:	add di, 2	; 3: -125 -57 2
x12321:	jmp sprintf	; 3: -23 -64 -5

strftime$183:	; post call

strftime$184:	; goto 327
x12324:	jmp strftime$327	; 3: -23 -34 2

strftime$185:	; call header integral zero 0 stack zero 0

strftime$186:	; parameter add, offset 6
x12327:	mov [bp + 62], bp	; 3: -119 110 62
x12330:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$187:	; parameter string_25d#, offset 8
x12334:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -44 51

strftime$188:	; £temporary3775 -> tp = *tp, offset 4
x12339:	mov si, [bp + 12]	; 3: -117 118 12

strftime$189:	; parameter £temporary3775 -> tp, offset 10
x12342:	mov ax, [si + 4]	; 3: -117 68 4
x12345:	mov [bp + 66], ax	; 3: -119 70 66

strftime$190:	; call function noellipse-ellipse sprintf, extra 0
x12348:	mov word [bp + 56], strftime$191	; 5: -57 70 56 79 48
x12353:	mov [bp + 58], bp	; 3: -119 110 58
x12356:	add bp, 56	; 3: -125 -59 56
x12359:	mov di, bp	; 2: -119 -17
x12361:	add di, 2	; 3: -125 -57 2
x12364:	jmp sprintf	; 3: -23 -107 -5

strftime$191:	; post call

strftime$192:	; goto 327
x12367:	jmp strftime$327	; 3: -23 -77 2

strftime$193:	; call header integral zero 0 stack zero 0

strftime$194:	; parameter add, offset 6
x12370:	mov [bp + 62], bp	; 3: -119 110 62
x12373:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$195:	; parameter string_25d#, offset 8
x12377:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -44 51

strftime$196:	; £temporary3777 -> tp = *tp, offset 4
x12382:	mov si, [bp + 12]	; 3: -117 118 12

strftime$197:	; £temporary3778 = £temporary3777 -> tp % 12
x12385:	mov ax, [si + 4]	; 3: -117 68 4
x12388:	xor dx, dx	; 2: 49 -46
x12390:	idiv word [int2$12#]	; 4: -9 62 -41 51

strftime$198:	; parameter £temporary3778, offset 10
x12394:	mov [bp + 66], dx	; 3: -119 86 66

strftime$199:	; call function noellipse-ellipse sprintf, extra 0
x12397:	mov word [bp + 56], strftime$200	; 5: -57 70 56 -128 48
x12402:	mov [bp + 58], bp	; 3: -119 110 58
x12405:	add bp, 56	; 3: -125 -59 56
x12408:	mov di, bp	; 2: -119 -17
x12410:	add di, 2	; 3: -125 -57 2
x12413:	jmp sprintf	; 3: -23 100 -5

strftime$200:	; post call

strftime$201:	; goto 327
x12416:	jmp strftime$327	; 3: -23 -126 2

strftime$202:	; call header integral zero 0 stack zero 0

strftime$203:	; parameter add, offset 6
x12419:	mov [bp + 62], bp	; 3: -119 110 62
x12422:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$204:	; parameter string_25d#, offset 8
x12426:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -44 51

strftime$205:	; £temporary3780 -> tp = *tp, offset 14
x12431:	mov si, [bp + 12]	; 3: -117 118 12

strftime$206:	; parameter £temporary3780 -> tp, offset 10
x12434:	mov ax, [si + 14]	; 3: -117 68 14
x12437:	mov [bp + 66], ax	; 3: -119 70 66

strftime$207:	; call function noellipse-ellipse sprintf, extra 0
x12440:	mov word [bp + 56], strftime$208	; 5: -57 70 56 -85 48
x12445:	mov [bp + 58], bp	; 3: -119 110 58
x12448:	add bp, 56	; 3: -125 -59 56
x12451:	mov di, bp	; 2: -119 -17
x12453:	add di, 2	; 3: -125 -57 2
x12456:	jmp sprintf	; 3: -23 57 -5

strftime$208:	; post call

strftime$209:	; goto 327
x12459:	jmp strftime$327	; 3: -23 87 2

strftime$210:	; call header integral zero 0 stack zero 0

strftime$211:	; parameter add, offset 6
x12462:	mov [bp + 62], bp	; 3: -119 110 62
x12465:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$212:	; parameter string_25d#, offset 8
x12469:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -44 51

strftime$213:	; £temporary3782 -> tp = *tp, offset 8
x12474:	mov si, [bp + 12]	; 3: -117 118 12

strftime$214:	; £temporary3783 = £temporary3782 -> tp + 1
x12477:	mov ax, [si + 8]	; 3: -117 68 8
x12480:	inc ax	; 1: 64

strftime$215:	; parameter £temporary3783, offset 10
x12481:	mov [bp + 66], ax	; 3: -119 70 66

strftime$216:	; call function noellipse-ellipse sprintf, extra 0
x12484:	mov word [bp + 56], strftime$217	; 5: -57 70 56 -41 48
x12489:	mov [bp + 58], bp	; 3: -119 110 58
x12492:	add bp, 56	; 3: -125 -59 56
x12495:	mov di, bp	; 2: -119 -17
x12497:	add di, 2	; 3: -125 -57 2
x12500:	jmp sprintf	; 3: -23 13 -5

strftime$217:	; post call

strftime$218:	; goto 327
x12503:	jmp strftime$327	; 3: -23 43 2

strftime$219:	; call header integral zero 0 stack zero 0

strftime$220:	; parameter add, offset 6
x12506:	mov [bp + 62], bp	; 3: -119 110 62
x12509:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$221:	; parameter string_25d#, offset 8
x12513:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -44 51

strftime$222:	; £temporary3785 -> tp = *tp, offset 2
x12518:	mov si, [bp + 12]	; 3: -117 118 12

strftime$223:	; parameter £temporary3785 -> tp, offset 10
x12521:	mov ax, [si + 2]	; 3: -117 68 2
x12524:	mov [bp + 66], ax	; 3: -119 70 66

strftime$224:	; call function noellipse-ellipse sprintf, extra 0
x12527:	mov word [bp + 56], strftime$225	; 5: -57 70 56 2 49
x12532:	mov [bp + 58], bp	; 3: -119 110 58
x12535:	add bp, 56	; 3: -125 -59 56
x12538:	mov di, bp	; 2: -119 -17
x12540:	add di, 2	; 3: -125 -57 2
x12543:	jmp sprintf	; 3: -23 -30 -6

strftime$225:	; post call

strftime$226:	; goto 327
x12546:	jmp strftime$327	; 3: -23 0 2

strftime$227:	; call header integral zero 0 stack zero 0

strftime$228:	; parameter add, offset 6
x12549:	mov [bp + 62], bp	; 3: -119 110 62
x12552:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$229:	; parameter string_25s#, offset 8
x12556:	mov word [bp + 64], string_25s#	; 5: -57 70 64 -39 51

strftime$230:	; £temporary3787 -> tp = *tp, offset 4
x12561:	mov si, [bp + 12]	; 3: -117 118 12

strftime$231:	; if £temporary3787 -> tp >= 12 goto 234
x12564:	cmp word [si + 4], 12	; 4: -125 124 4 12
x12568:	jge strftime$234	; 2: 125 5

strftime$232:	; £temporary3792 = string_AM#
x12570:	mov ax, string_AM#	; 3: -72 -36 51

strftime$233:	; goto 235
x12573:	jmp strftime$235	; 2: -21 3

strftime$234:	; £temporary3792 = string_PM#
x12575:	mov ax, string_PM#	; 3: -72 -33 51

strftime$235:	; parameter £temporary3792, offset 10
x12578:	mov [bp + 66], ax	; 3: -119 70 66

strftime$236:	; call function noellipse-ellipse sprintf, extra 0
x12581:	mov word [bp + 56], strftime$237	; 5: -57 70 56 56 49
x12586:	mov [bp + 58], bp	; 3: -119 110 58
x12589:	add bp, 56	; 3: -125 -59 56
x12592:	mov di, bp	; 2: -119 -17
x12594:	add di, 2	; 3: -125 -57 2
x12597:	jmp sprintf	; 3: -23 -84 -6

strftime$237:	; post call

strftime$238:	; goto 327
x12600:	jmp strftime$327	; 3: -23 -54 1

strftime$239:	; call header integral zero 0 stack zero 0

strftime$240:	; parameter add, offset 6
x12603:	mov [bp + 62], bp	; 3: -119 110 62
x12606:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$241:	; parameter string_25d#, offset 8
x12610:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -44 51

strftime$242:	; £temporary3794 -> tp = *tp
x12615:	mov si, [bp + 12]	; 3: -117 118 12

strftime$243:	; parameter £temporary3794 -> tp, offset 10
x12618:	mov ax, [si]	; 2: -117 4
x12620:	mov [bp + 66], ax	; 3: -119 70 66

strftime$244:	; call function noellipse-ellipse sprintf, extra 0
x12623:	mov word [bp + 56], strftime$245	; 5: -57 70 56 98 49
x12628:	mov [bp + 58], bp	; 3: -119 110 58
x12631:	add bp, 56	; 3: -125 -59 56
x12634:	mov di, bp	; 2: -119 -17
x12636:	add di, 2	; 3: -125 -57 2
x12639:	jmp sprintf	; 3: -23 -126 -6

strftime$245:	; post call

strftime$246:	; goto 327
x12642:	jmp strftime$327	; 3: -23 -96 1

strftime$247:	; call header integral zero 0 stack zero 0

strftime$248:	; parameter add, offset 6
x12645:	mov [bp + 62], bp	; 3: -119 110 62
x12648:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$249:	; parameter string_25d#, offset 8
x12652:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -44 51

strftime$250:	; parameter yearDaySunday, offset 10
x12657:	mov ax, [bp + 30]	; 3: -117 70 30
x12660:	mov [bp + 66], ax	; 3: -119 70 66

strftime$251:	; call function noellipse-ellipse sprintf, extra 0
x12663:	mov word [bp + 56], strftime$252	; 5: -57 70 56 -118 49
x12668:	mov [bp + 58], bp	; 3: -119 110 58
x12671:	add bp, 56	; 3: -125 -59 56
x12674:	mov di, bp	; 2: -119 -17
x12676:	add di, 2	; 3: -125 -57 2
x12679:	jmp sprintf	; 3: -23 90 -6

strftime$252:	; post call

strftime$253:	; goto 327
x12682:	jmp strftime$327	; 3: -23 120 1

strftime$254:	; call header integral zero 0 stack zero 0

strftime$255:	; parameter add, offset 6
x12685:	mov [bp + 62], bp	; 3: -119 110 62
x12688:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$256:	; parameter string_25d#, offset 8
x12692:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -44 51

strftime$257:	; £temporary3797 -> tp = *tp, offset 12
x12697:	mov si, [bp + 12]	; 3: -117 118 12

strftime$258:	; parameter £temporary3797 -> tp, offset 10
x12700:	mov ax, [si + 12]	; 3: -117 68 12
x12703:	mov [bp + 66], ax	; 3: -119 70 66

strftime$259:	; call function noellipse-ellipse sprintf, extra 0
x12706:	mov word [bp + 56], strftime$260	; 5: -57 70 56 -75 49
x12711:	mov [bp + 58], bp	; 3: -119 110 58
x12714:	add bp, 56	; 3: -125 -59 56
x12717:	mov di, bp	; 2: -119 -17
x12719:	add di, 2	; 3: -125 -57 2
x12722:	jmp sprintf	; 3: -23 47 -6

strftime$260:	; post call

strftime$261:	; goto 327
x12725:	jmp strftime$327	; 3: -23 77 1

strftime$262:	; call header integral zero 0 stack zero 0

strftime$263:	; parameter add, offset 6
x12728:	mov [bp + 62], bp	; 3: -119 110 62
x12731:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$264:	; parameter string_25d#, offset 8
x12735:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -44 51

strftime$265:	; parameter yearDayMonday, offset 10
x12740:	mov ax, [bp + 32]	; 3: -117 70 32
x12743:	mov [bp + 66], ax	; 3: -119 70 66

strftime$266:	; call function noellipse-ellipse sprintf, extra 0
x12746:	mov word [bp + 56], strftime$267	; 5: -57 70 56 -35 49
x12751:	mov [bp + 58], bp	; 3: -119 110 58
x12754:	add bp, 56	; 3: -125 -59 56
x12757:	mov di, bp	; 2: -119 -17
x12759:	add di, 2	; 3: -125 -57 2
x12762:	jmp sprintf	; 3: -23 7 -6

strftime$267:	; post call

strftime$268:	; goto 327
x12765:	jmp strftime$327	; 3: -23 37 1

strftime$269:	; call header integral zero 0 stack zero 0

strftime$270:	; parameter add, offset 6
x12768:	mov [bp + 62], bp	; 3: -119 110 62
x12771:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$271:	; parameter string_25d3A25d3A25d#, offset 8
x12775:	mov word [bp + 64], string_25d3A25d3A25d#	; 5: -57 70 64 -30 51

strftime$272:	; £temporary3800 -> tp = *tp, offset 4
x12780:	mov si, [bp + 12]	; 3: -117 118 12

strftime$273:	; parameter £temporary3800 -> tp, offset 10
x12783:	mov ax, [si + 4]	; 3: -117 68 4
x12786:	mov [bp + 66], ax	; 3: -119 70 66

strftime$274:	; £temporary3801 -> tp = *tp, offset 2
x12789:	mov si, [bp + 12]	; 3: -117 118 12

strftime$275:	; parameter £temporary3801 -> tp, offset 12
x12792:	mov ax, [si + 2]	; 3: -117 68 2
x12795:	mov [bp + 68], ax	; 3: -119 70 68

strftime$276:	; £temporary3802 -> tp = *tp
x12798:	mov si, [bp + 12]	; 3: -117 118 12

strftime$277:	; parameter £temporary3802 -> tp, offset 14
x12801:	mov ax, [si]	; 2: -117 4
x12803:	mov [bp + 70], ax	; 3: -119 70 70

strftime$278:	; call function noellipse-ellipse sprintf, extra 0
x12806:	mov word [bp + 56], strftime$279	; 5: -57 70 56 25 50
x12811:	mov [bp + 58], bp	; 3: -119 110 58
x12814:	add bp, 56	; 3: -125 -59 56
x12817:	mov di, bp	; 2: -119 -17
x12819:	add di, 6	; 3: -125 -57 6
x12822:	jmp sprintf	; 3: -23 -53 -7

strftime$279:	; post call

strftime$280:	; goto 327
x12825:	jmp strftime$327	; 3: -23 -23 0

strftime$281:	; call header integral zero 0 stack zero 0

strftime$282:	; parameter add, offset 6
x12828:	mov [bp + 62], bp	; 3: -119 110 62
x12831:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$283:	; parameter string_25d3A25d3A25d#, offset 8
x12835:	mov word [bp + 64], string_25d3A25d3A25d#	; 5: -57 70 64 -30 51

strftime$284:	; £temporary3804 -> tp = *tp, offset 4
x12840:	mov si, [bp + 12]	; 3: -117 118 12

strftime$285:	; parameter £temporary3804 -> tp, offset 10
x12843:	mov ax, [si + 4]	; 3: -117 68 4
x12846:	mov [bp + 66], ax	; 3: -119 70 66

strftime$286:	; £temporary3805 -> tp = *tp, offset 2
x12849:	mov si, [bp + 12]	; 3: -117 118 12

strftime$287:	; parameter £temporary3805 -> tp, offset 12
x12852:	mov ax, [si + 2]	; 3: -117 68 2
x12855:	mov [bp + 68], ax	; 3: -119 70 68

strftime$288:	; £temporary3806 -> tp = *tp
x12858:	mov si, [bp + 12]	; 3: -117 118 12

strftime$289:	; parameter £temporary3806 -> tp, offset 14
x12861:	mov ax, [si]	; 2: -117 4
x12863:	mov [bp + 70], ax	; 3: -119 70 70

strftime$290:	; call function noellipse-ellipse sprintf, extra 0
x12866:	mov word [bp + 56], strftime$291	; 5: -57 70 56 85 50
x12871:	mov [bp + 58], bp	; 3: -119 110 58
x12874:	add bp, 56	; 3: -125 -59 56
x12877:	mov di, bp	; 2: -119 -17
x12879:	add di, 6	; 3: -125 -57 6
x12882:	jmp sprintf	; 3: -23 -113 -7

strftime$291:	; post call

strftime$292:	; goto 327
x12885:	jmp strftime$327	; 3: -23 -83 0

strftime$293:	; call header integral zero 0 stack zero 0

strftime$294:	; parameter add, offset 6
x12888:	mov [bp + 62], bp	; 3: -119 110 62
x12891:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$295:	; parameter string_25d#, offset 8
x12895:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -44 51

strftime$296:	; £temporary3808 -> tp = *tp, offset 10
x12900:	mov si, [bp + 12]	; 3: -117 118 12

strftime$297:	; £temporary3809 = £temporary3808 -> tp % 100
x12903:	mov ax, [si + 10]	; 3: -117 68 10
x12906:	xor dx, dx	; 2: 49 -46
x12908:	idiv word [int2$100#]	; 4: -9 62 -18 10

strftime$298:	; parameter £temporary3809, offset 10
x12912:	mov [bp + 66], dx	; 3: -119 86 66

strftime$299:	; call function noellipse-ellipse sprintf, extra 0
x12915:	mov word [bp + 56], strftime$300	; 5: -57 70 56 -122 50
x12920:	mov [bp + 58], bp	; 3: -119 110 58
x12923:	add bp, 56	; 3: -125 -59 56
x12926:	mov di, bp	; 2: -119 -17
x12928:	add di, 2	; 3: -125 -57 2
x12931:	jmp sprintf	; 3: -23 94 -7

strftime$300:	; post call

strftime$301:	; goto 327
x12934:	jmp strftime$327	; 2: -21 125

strftime$302:	; call header integral zero 0 stack zero 0

strftime$303:	; parameter add, offset 6
x12936:	mov [bp + 62], bp	; 3: -119 110 62
x12939:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$304:	; parameter string_25d#, offset 8
x12943:	mov word [bp + 64], string_25d#	; 5: -57 70 64 -44 51

strftime$305:	; £temporary3811 -> tp = *tp, offset 10
x12948:	mov si, [bp + 12]	; 3: -117 118 12

strftime$306:	; £temporary3812 = £temporary3811 -> tp + 1900
x12951:	mov ax, [si + 10]	; 3: -117 68 10
x12954:	add ax, 1900	; 3: 5 108 7

strftime$307:	; parameter £temporary3812, offset 10
x12957:	mov [bp + 66], ax	; 3: -119 70 66

strftime$308:	; call function noellipse-ellipse sprintf, extra 0
x12960:	mov word [bp + 56], strftime$309	; 5: -57 70 56 -77 50
x12965:	mov [bp + 58], bp	; 3: -119 110 58
x12968:	add bp, 56	; 3: -125 -59 56
x12971:	mov di, bp	; 2: -119 -17
x12973:	add di, 2	; 3: -125 -57 2
x12976:	jmp sprintf	; 3: -23 49 -7

strftime$309:	; post call

strftime$310:	; goto 327
x12979:	jmp strftime$327	; 2: -21 80

strftime$311:	; call header integral zero 0 stack zero 0

strftime$312:	; parameter add, offset 6
x12981:	mov [bp + 62], bp	; 3: -119 110 62
x12984:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$313:	; parameter string_#, offset 8
x12988:	mov word [bp + 64], string_#	; 5: -57 70 64 -77 11

strftime$314:	; call function noellipse-noellipse strcpy
x12993:	mov word [bp + 56], strftime$315	; 5: -57 70 56 -49 50
x12998:	mov [bp + 58], bp	; 3: -119 110 58
x13001:	add bp, 56	; 3: -125 -59 56
x13004:	jmp strcpy	; 3: -23 -127 -7

strftime$315:	; post call

strftime$316:	; goto 327
x13007:	jmp strftime$327	; 2: -21 52

strftime$317:	; call header integral zero 0 stack zero 0

strftime$318:	; parameter add, offset 6
x13009:	mov [bp + 62], bp	; 3: -119 110 62
x13012:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$319:	; parameter string_25#, offset 8
x13016:	mov word [bp + 64], string_25#	; 5: -57 70 64 -21 51

strftime$320:	; call function noellipse-noellipse strcpy
x13021:	mov word [bp + 56], strftime$321	; 5: -57 70 56 -21 50
x13026:	mov [bp + 58], bp	; 3: -119 110 58
x13029:	add bp, 56	; 3: -125 -59 56
x13032:	jmp strcpy	; 3: -23 101 -7

strftime$321:	; post call

strftime$322:	; call header integral zero 0 stack zero 0

strftime$323:	; parameter add, offset 6
x13035:	mov [bp + 62], bp	; 3: -119 110 62
x13038:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$324:	; parameter string_#, offset 8
x13042:	mov word [bp + 64], string_#	; 5: -57 70 64 -77 11

strftime$325:	; call function noellipse-noellipse strcpy
x13047:	mov word [bp + 56], strftime$326	; 5: -57 70 56 5 51
x13052:	mov [bp + 58], bp	; 3: -119 110 58
x13055:	add bp, 56	; 3: -125 -59 56
x13058:	jmp strcpy	; 3: -23 75 -7

strftime$326:	; post call

strftime$327:	; ++index
x13061:	inc word [bp + 34]	; 3: -1 70 34

strftime$328:	; goto 335
x13064:	jmp strftime$335	; 2: -21 24

strftime$329:	; £temporary3818 -> add = *add
x13066:	mov si, bp	; 2: -119 -18
x13068:	add si, 36	; 3: -125 -58 36

strftime$330:	; £temporary3820 = fmt + index
x13071:	mov di, [bp + 10]	; 3: -117 126 10
x13074:	add di, [bp + 34]	; 3: 3 126 34

strftime$331:	; £temporary3819 -> £temporary3820 = *£temporary3820

strftime$332:	; £temporary3818 -> add = £temporary3819 -> £temporary3820
x13077:	mov al, [di]	; 2: -118 5
x13079:	mov [si], al	; 2: -120 4

strftime$333:	; £temporary3821 -> add = *add, offset 1
x13081:	mov si, bp	; 2: -119 -18
x13083:	add si, 36	; 3: -125 -58 36

strftime$334:	; £temporary3821 -> add = 0
x13086:	mov byte [si + 1], 0	; 4: -58 68 1 0

strftime$335:	; call header integral zero 0 stack zero 0

strftime$336:	; parameter s, offset 6
x13090:	mov ax, [bp + 6]	; 3: -117 70 6
x13093:	mov [bp + 62], ax	; 3: -119 70 62

strftime$337:	; call function noellipse-noellipse strlen
x13096:	mov word [bp + 56], strftime$338	; 5: -57 70 56 54 51
x13101:	mov [bp + 58], bp	; 3: -119 110 58
x13104:	add bp, 56	; 3: -125 -59 56
x13107:	jmp strlen	; 3: -23 -73 0

strftime$338:	; post call

strftime$339:	; £temporary3822 = return_value

strftime$340:	; ss = £temporary3822
x13110:	mov [bp + 56], bx	; 3: -119 94 56

strftime$341:	; call header integral zero 0 stack zero 0

strftime$342:	; parameter add, offset 6
x13113:	mov [bp + 64], bp	; 3: -119 110 64
x13116:	add word [bp + 64], 36	; 4: -125 70 64 36

strftime$343:	; call function noellipse-noellipse strlen
x13120:	mov word [bp + 58], strftime$344	; 5: -57 70 58 78 51
x13125:	mov [bp + 60], bp	; 3: -119 110 60
x13128:	add bp, 58	; 3: -125 -59 58
x13131:	jmp strlen	; 3: -23 -97 0

strftime$344:	; post call

strftime$345:	; £temporary3823 = return_value

strftime$346:	; sa = £temporary3823
x13134:	mov [bp + 58], bx	; 3: -119 94 58

strftime$347:	; £temporary3824 = ss + sa
x13137:	mov ax, [bp + 56]	; 3: -117 70 56
x13140:	add ax, [bp + 58]	; 3: 3 70 58

strftime$348:	; if £temporary3824 >= smax goto 356
x13143:	cmp ax, [bp + 8]	; 3: 59 70 8
x13146:	jge strftime$356	; 2: 125 33

strftime$349:	; call header integral zero 0 stack zero 0

strftime$350:	; parameter s, offset 6
x13148:	mov ax, [bp + 6]	; 3: -117 70 6
x13151:	mov [bp + 66], ax	; 3: -119 70 66

strftime$351:	; parameter add, offset 8
x13154:	mov [bp + 68], bp	; 3: -119 110 68
x13157:	add word [bp + 68], 36	; 4: -125 70 68 36

strftime$352:	; call function noellipse-noellipse strcat
x13161:	mov word [bp + 60], strftime$353	; 5: -57 70 60 119 51
x13166:	mov [bp + 62], bp	; 3: -119 110 62
x13169:	add bp, 60	; 3: -125 -59 60
x13172:	jmp strcat	; 3: -23 -103 0

strftime$353:	; post call

strftime$354:	; ++index
x13175:	inc word [bp + 34]	; 3: -1 70 34

strftime$355:	; goto 84
x13178:	jmp strftime$84	; 3: -23 -70 -6

strftime$356:	; call header integral zero 0 stack zero 0

strftime$357:	; parameter s, offset 6
x13181:	mov ax, [bp + 6]	; 3: -117 70 6
x13184:	mov [bp + 40], ax	; 3: -119 70 40

strftime$358:	; call function noellipse-noellipse strlen
x13187:	mov word [bp + 34], strftime$359	; 5: -57 70 34 -111 51
x13192:	mov [bp + 36], bp	; 3: -119 110 36
x13195:	add bp, 34	; 3: -125 -59 34
x13198:	nop	; 1: -112
x13199:	jmp strlen	; 2: -21 92

strftime$359:	; post call

strftime$360:	; £temporary3827 = return_value

strftime$361:	; return_value = £temporary3827

strftime$362:	; return
x13201:	mov ax, [bp]	; 3: -117 70 0
x13204:	mov di, [bp + 4]	; 3: -117 126 4
x13207:	mov bp, [bp + 2]	; 3: -117 110 2
x13210:	jmp ax	; 2: -1 -32

strftime$363:	; function end strftime

@33$g_defaultLongDayList:
x13212:	dw string_Sunday# ; 2: -30 11
x13214:	dw string_Monday# ; 2: -23 11
x13216:	dw string_Tuesday# ; 2: -16 11
x13218:	dw string_Wednesday# ; 2: -8 11
x13220:	dw string_Thursday# ; 2: 2 12
x13222:	dw string_Friday# ; 2: 11 12
x13224:	dw string_Saturday# ; 2: 18 12

@35$g_defaultLongMonthList:
x13226:	dw string_January# ; 2: 123 12
x13228:	dw string_February# ; 2: -125 12
x13230:	dw string_March# ; 2: -116 12
x13232:	dw string_April# ; 2: -110 12
x13234:	dw string_May# ; 2: 67 12
x13236:	dw string_June# ; 2: -104 12
x13238:	dw string_July# ; 2: -99 12
x13240:	dw string_August# ; 2: -94 12
x13242:	dw string_September# ; 2: -87 12
x13244:	dw string_October# ; 2: -77 12
x13246:	dw string_November# ; 2: -69 12
x13248:	dw string_December# ; 2: -60 12

string_25d2D25d2D25d2025d3A25d3A25d#:
x13250:	db "%d-%d-%d %d:%d:%d", 0	; 18: 37 100 45 37 100 45 37 100 32 37 100 58 37 100 58 37 100 0

string_25d#:
x13268:	db "%d", 0	; 3: 37 100 0

int2$12#:
x13271:	dw 12	; 2: 12 0

string_25s#:
x13273:	db "%s", 0	; 3: 37 115 0

string_AM#:
x13276:	db "AM", 0	; 3: 65 77 0

string_PM#:
x13279:	db "PM", 0	; 3: 80 77 0

string_25d3A25d3A25d#:
x13282:	db "%d:%d:%d", 0	; 9: 37 100 58 37 100 58 37 100 0

string_25#:
x13291:	db "%", 0	; 2: 37 0

strlen:	; index = 0
x13293:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

strlen$1:	; £temporary4083 = string + index
x13298:	mov si, [bp + 6]	; 3: -117 118 6
x13301:	add si, [bp + 8]	; 3: 3 118 8

strlen$2:	; £temporary4082 -> £temporary4083 = *£temporary4083

strlen$3:	; if £temporary4082 -> £temporary4083 == 0 goto 6
x13304:	cmp byte [si], 0	; 3: -128 60 0
x13307:	je strlen$6	; 2: 116 5

strlen$4:	; ++index
x13309:	inc word [bp + 8]	; 3: -1 70 8

strlen$5:	; goto 1
x13312:	jmp strlen$1	; 2: -21 -16

strlen$6:	; return_value = index
x13314:	mov bx, [bp + 8]	; 3: -117 94 8

strlen$7:	; return
x13317:	mov ax, [bp]	; 3: -117 70 0
x13320:	mov di, [bp + 4]	; 3: -117 126 4
x13323:	mov bp, [bp + 2]	; 3: -117 110 2
x13326:	jmp ax	; 2: -1 -32

strlen$8:	; function end strlen

strcat:	; call header integral zero 0 stack zero 0

strcat$1:	; parameter target, offset 6
x13328:	mov ax, [bp + 6]	; 3: -117 70 6
x13331:	mov [bp + 18], ax	; 3: -119 70 18

strcat$2:	; call function noellipse-noellipse strlen
x13334:	mov word [bp + 12], strcat$3	; 5: -57 70 12 36 52
x13339:	mov [bp + 14], bp	; 3: -119 110 14
x13342:	add bp, 12	; 3: -125 -59 12
x13345:	nop	; 1: -112
x13346:	jmp strlen	; 2: -21 -55

strcat$3:	; post call

strcat$4:	; £temporary3930 = return_value

strcat$5:	; targetLength = £temporary3930
x13348:	mov [bp + 12], bx	; 3: -119 94 12

strcat$6:	; index = 0
x13351:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcat$7:	; £temporary3932 = source + index
x13356:	mov si, [bp + 8]	; 3: -117 118 8
x13359:	add si, [bp + 10]	; 3: 3 118 10

strcat$8:	; £temporary3931 -> £temporary3932 = *£temporary3932

strcat$9:	; if £temporary3931 -> £temporary3932 == 0 goto 18
x13362:	cmp byte [si], 0	; 3: -128 60 0
x13365:	je strcat$18	; 2: 116 26

strcat$10:	; £temporary3935 = targetLength + index
x13367:	mov ax, [bp + 12]	; 3: -117 70 12
x13370:	add ax, [bp + 10]	; 3: 3 70 10

strcat$11:	; £temporary3937 = target + £temporary3935
x13373:	mov si, [bp + 6]	; 3: -117 118 6
x13376:	add si, ax	; 2: 1 -58

strcat$12:	; £temporary3936 -> £temporary3937 = *£temporary3937

strcat$13:	; £temporary3939 = source + index
x13378:	mov di, [bp + 8]	; 3: -117 126 8
x13381:	add di, [bp + 10]	; 3: 3 126 10

strcat$14:	; £temporary3938 -> £temporary3939 = *£temporary3939

strcat$15:	; £temporary3936 -> £temporary3937 = £temporary3938 -> £temporary3939
x13384:	mov al, [di]	; 2: -118 5
x13386:	mov [si], al	; 2: -120 4

strcat$16:	; ++index
x13388:	inc word [bp + 10]	; 3: -1 70 10

strcat$17:	; goto 7
x13391:	jmp strcat$7	; 2: -21 -37

strcat$18:	; £temporary3940 = targetLength + index
x13393:	mov ax, [bp + 12]	; 3: -117 70 12
x13396:	add ax, [bp + 10]	; 3: 3 70 10

strcat$19:	; £temporary3942 = target + £temporary3940
x13399:	mov si, [bp + 6]	; 3: -117 118 6
x13402:	add si, ax	; 2: 1 -58

strcat$20:	; £temporary3941 -> £temporary3942 = *£temporary3942

strcat$21:	; £temporary3941 -> £temporary3942 = 0
x13404:	mov byte [si], 0	; 3: -58 4 0

strcat$22:	; return_value = target
x13407:	mov bx, [bp + 6]	; 3: -117 94 6

strcat$23:	; return
x13410:	mov ax, [bp]	; 3: -117 70 0
x13413:	mov di, [bp + 4]	; 3: -117 126 4
x13416:	mov bp, [bp + 2]	; 3: -117 110 2
x13419:	jmp ax	; 2: -1 -32

strcat$24:	; function end strcat

$StackTop:
x13421:
