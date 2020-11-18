	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 20 53
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 20 53 0 0

main:	; CallHeader 6 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

main$1:	; Call 6 time_test 0
x283:	mov word [bp + 6], main$2	; 5: -57 70 6 41 1
x288:	mov [bp + 8], bp	; 3: -119 110 8
x291:	add bp, 6	; 3: -125 -59 6
x294:	nop	; 1: -112
x295:	jmp time_test	; 2: -21 23

main$2:	; PostCall 6

main$3:	; Return 0
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

main$4:	; FunctionEnd main

time_test:	; Assign weekdays[0] string_Sun#
x320:	mov word [bp + 6], string_Sun#	; 5: -57 70 6 32 4

time_test$1:	; Assign weekdays[1] string_Mon#
x325:	mov word [bp + 8], string_Mon#	; 5: -57 70 8 36 4

time_test$2:	; Assign weekdays[2] string_Tue#
x330:	mov word [bp + 10], string_Tue#	; 5: -57 70 10 40 4

time_test$3:	; Assign weekdays[3] string_Wed#
x335:	mov word [bp + 12], string_Wed#	; 5: -57 70 12 44 4

time_test$4:	; Assign weekdays[4] string_Thu#
x340:	mov word [bp + 14], string_Thu#	; 5: -57 70 14 48 4

time_test$5:	; Assign weekdays[5] string_Fri#
x345:	mov word [bp + 16], string_Fri#	; 5: -57 70 16 52 4

time_test$6:	; Assign weekdays[6] string_Sat#
x350:	mov word [bp + 18], string_Sat#	; 5: -57 70 18 56 4

time_test$7:	; CallHeader 20 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time_test$8:	; Parameter 20 0 6
x355:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

time_test$9:	; Call 20 time 0
x360:	mov word [bp + 20], time_test$10	; 5: -57 70 20 118 1
x365:	mov [bp + 22], bp	; 3: -119 110 22
x368:	add bp, 20	; 3: -125 -59 20
x371:	jmp time	; 3: -23 -57 4

time_test$10:	; PostCall 20

time_test$11:	; GetReturnValue £temporary6135

time_test$12:	; Assign now1 £temporary6135
x374:	mov [bp + 20], ebx	; 4: 102 -119 94 20

time_test$13:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time_test$14:	; address £temporary6136 now1
x378:	mov si, bp	; 2: -119 -18
x380:	add si, 20	; 3: -125 -58 20

time_test$15:	; Parameter 24 £temporary6136 6
x383:	mov [bp + 30], si	; 3: -119 118 30

time_test$16:	; Call 24 gmtime 0
x386:	mov word [bp + 24], time_test$17	; 5: -57 70 24 -112 1
x391:	mov [bp + 26], bp	; 3: -119 110 26
x394:	add bp, 24	; 3: -125 -59 24
x397:	jmp gmtime	; 3: -23 102 10

time_test$17:	; PostCall 24

time_test$18:	; GetReturnValue £temporary6137

time_test$19:	; Deref £temporary6138 -> £temporary6137 £temporary6137 0

time_test$20:	; Assign s £temporary6138 -> £temporary6137
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

time_test$21:	; CallHeader 42 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time_test$22:	; address £temporary6139 now1
x419:	mov si, bp	; 2: -119 -18
x421:	add si, 20	; 3: -125 -58 20

time_test$23:	; Parameter 42 £temporary6139 6
x424:	mov [bp + 48], si	; 3: -119 118 48

time_test$24:	; Call 42 localtime 0
x427:	mov word [bp + 42], time_test$25	; 5: -57 70 42 -71 1
x432:	mov [bp + 44], bp	; 3: -119 110 44
x435:	add bp, 42	; 3: -125 -59 42
x438:	jmp localtime	; 3: -23 -4 12

time_test$25:	; PostCall 42

time_test$26:	; GetReturnValue £temporary6140

time_test$27:	; Deref £temporary6141 -> £temporary6140 £temporary6140 0

time_test$28:	; Assign t £temporary6141 -> £temporary6140
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

time_test$29:	; CallHeader 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time_test$30:	; address £temporary6142 s
x460:	mov si, bp	; 2: -119 -18
x462:	add si, 24	; 3: -125 -58 24

time_test$31:	; Parameter 60 £temporary6142 6
x465:	mov [bp + 66], si	; 3: -119 118 66

time_test$32:	; Call 60 mktime 0
x468:	mov word [bp + 60], time_test$33	; 5: -57 70 60 -30 1
x473:	mov [bp + 62], bp	; 3: -119 110 62
x476:	add bp, 60	; 3: -125 -59 60
x479:	jmp mktime	; 3: -23 21 9

time_test$33:	; PostCall 60

time_test$34:	; GetReturnValue £temporary6143

time_test$35:	; Assign now2 £temporary6143
x482:	mov [bp + 60], ebx	; 4: 102 -119 94 60

time_test$36:	; CallHeader 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time_test$37:	; Parameter 64 string_now2013A2025lu0A# 6
x486:	mov word [bp + 70], string_now2013A2025lu0A#	; 5: -57 70 70 60 4

time_test$38:	; Parameter 64 now1 8
x491:	mov eax, [bp + 20]	; 4: 102 -117 70 20
x495:	mov [bp + 72], eax	; 4: 102 -119 70 72

time_test$39:	; Call 64 printf 0
x499:	mov word [bp + 64], time_test$40	; 5: -57 70 64 6 2
x504:	mov [bp + 66], bp	; 3: -119 110 66
x507:	add bp, 64	; 3: -125 -59 64
x510:	mov di, bp	; 2: -119 -17
x512:	add di, 4	; 3: -125 -57 4
x515:	jmp printf	; 3: -23 68 13

time_test$40:	; PostCall 64

time_test$41:	; CallHeader 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time_test$42:	; Parameter 64 string_now2023A2025lu0A# 6
x518:	mov word [bp + 70], string_now2023A2025lu0A#	; 5: -57 70 70 72 4

time_test$43:	; Parameter 64 now2 8
x523:	mov eax, [bp + 60]	; 4: 102 -117 70 60
x527:	mov [bp + 72], eax	; 4: 102 -119 70 72

time_test$44:	; Call 64 printf 0
x531:	mov word [bp + 64], time_test$45	; 5: -57 70 64 38 2
x536:	mov [bp + 66], bp	; 3: -119 110 66
x539:	add bp, 64	; 3: -125 -59 64
x542:	mov di, bp	; 2: -119 -17
x544:	add di, 4	; 3: -125 -57 4
x547:	jmp printf	; 3: -23 36 13

time_test$45:	; PostCall 64

time_test$46:	; CallHeader 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time_test$47:	; Parameter 64 string_202020gm20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A# 6
x550:	mov word [bp + 70], string_202020gm20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#	; 5: -57 70 70 84 4

time_test$48:	; UnsignedMultiply £temporary6148 s$tm_wday 2
x555:	mov ax, [bp + 36]	; 3: -117 70 36
x558:	xor dx, dx	; 2: 49 -46
x560:	mul word [int2$2#]	; 4: -9 38 -75 4

time_test$49:	; BinaryAdd £temporary6149 weekdays £temporary6148
x564:	mov si, bp	; 2: -119 -18
x566:	add si, 6	; 3: -125 -58 6
x569:	add si, ax	; 2: 1 -58

time_test$50:	; Deref £temporary6147 -> £temporary6149 £temporary6149 0

time_test$51:	; Parameter 64 £temporary6147 -> £temporary6149 8
x571:	mov ax, [si]	; 2: -117 4
x573:	mov [bp + 72], ax	; 3: -119 70 72

time_test$52:	; BinaryAdd £temporary6151 s$tm_year 1900
x576:	mov ax, [bp + 34]	; 3: -117 70 34
x579:	add ax, 1900	; 3: 5 108 7

time_test$53:	; Parameter 64 £temporary6151 10
x582:	mov [bp + 74], ax	; 3: -119 70 74

time_test$54:	; BinaryAdd £temporary6153 s$tm_mon 1
x585:	mov ax, [bp + 32]	; 3: -117 70 32
x588:	inc ax	; 1: 64

time_test$55:	; Parameter 64 £temporary6153 12
x589:	mov [bp + 76], ax	; 3: -119 70 76

time_test$56:	; Parameter 64 s$tm_mday 14
x592:	mov ax, [bp + 30]	; 3: -117 70 30
x595:	mov [bp + 78], ax	; 3: -119 70 78

time_test$57:	; Parameter 64 s$tm_hour 16
x598:	mov ax, [bp + 28]	; 3: -117 70 28
x601:	mov [bp + 80], ax	; 3: -119 70 80

time_test$58:	; Parameter 64 s$tm_min 18
x604:	mov ax, [bp + 26]	; 3: -117 70 26
x607:	mov [bp + 82], ax	; 3: -119 70 82

time_test$59:	; Parameter 64 s$tm_sec 20
x610:	mov ax, [bp + 24]	; 3: -117 70 24
x613:	mov [bp + 84], ax	; 3: -119 70 84

time_test$60:	; Parameter 64 s$tm_yday 22
x616:	mov ax, [bp + 38]	; 3: -117 70 38
x619:	mov [bp + 86], ax	; 3: -119 70 86

time_test$61:	; Parameter 64 s$tm_wday 24
x622:	mov ax, [bp + 36]	; 3: -117 70 36
x625:	mov [bp + 88], ax	; 3: -119 70 88

time_test$62:	; Parameter 64 s$tm_isdst 26
x628:	mov ax, [bp + 40]	; 3: -117 70 40
x631:	mov [bp + 90], ax	; 3: -119 70 90

time_test$63:	; Call 64 printf 0
x634:	mov word [bp + 64], time_test$64	; 5: -57 70 64 -115 2
x639:	mov [bp + 66], bp	; 3: -119 110 66
x642:	add bp, 64	; 3: -125 -59 64
x645:	mov di, bp	; 2: -119 -17
x647:	add di, 20	; 3: -125 -57 20
x650:	jmp printf	; 3: -23 -67 12

time_test$64:	; PostCall 64

time_test$65:	; CallHeader 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time_test$66:	; Parameter 64 string_local20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A# 6
x653:	mov word [bp + 70], string_local20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#	; 5: -57 70 70 -73 4

time_test$67:	; UnsignedMultiply £temporary6164 t$tm_wday 2
x658:	mov ax, [bp + 54]	; 3: -117 70 54
x661:	xor dx, dx	; 2: 49 -46
x663:	mul word [int2$2#]	; 4: -9 38 -75 4

time_test$68:	; BinaryAdd £temporary6165 weekdays £temporary6164
x667:	mov si, bp	; 2: -119 -18
x669:	add si, 6	; 3: -125 -58 6
x672:	add si, ax	; 2: 1 -58

time_test$69:	; Deref £temporary6163 -> £temporary6165 £temporary6165 0

time_test$70:	; Parameter 64 £temporary6163 -> £temporary6165 8
x674:	mov ax, [si]	; 2: -117 4
x676:	mov [bp + 72], ax	; 3: -119 70 72

time_test$71:	; BinaryAdd £temporary6167 t$tm_year 1900
x679:	mov ax, [bp + 52]	; 3: -117 70 52
x682:	add ax, 1900	; 3: 5 108 7

time_test$72:	; Parameter 64 £temporary6167 10
x685:	mov [bp + 74], ax	; 3: -119 70 74

time_test$73:	; BinaryAdd £temporary6169 t$tm_mon 1
x688:	mov ax, [bp + 50]	; 3: -117 70 50
x691:	inc ax	; 1: 64

time_test$74:	; Parameter 64 £temporary6169 12
x692:	mov [bp + 76], ax	; 3: -119 70 76

time_test$75:	; Parameter 64 t$tm_mday 14
x695:	mov ax, [bp + 48]	; 3: -117 70 48
x698:	mov [bp + 78], ax	; 3: -119 70 78

time_test$76:	; Parameter 64 t$tm_hour 16
x701:	mov ax, [bp + 46]	; 3: -117 70 46
x704:	mov [bp + 80], ax	; 3: -119 70 80

time_test$77:	; Parameter 64 t$tm_min 18
x707:	mov ax, [bp + 44]	; 3: -117 70 44
x710:	mov [bp + 82], ax	; 3: -119 70 82

time_test$78:	; Parameter 64 t$tm_sec 20
x713:	mov ax, [bp + 42]	; 3: -117 70 42
x716:	mov [bp + 84], ax	; 3: -119 70 84

time_test$79:	; Parameter 64 t$tm_yday 22
x719:	mov ax, [bp + 56]	; 3: -117 70 56
x722:	mov [bp + 86], ax	; 3: -119 70 86

time_test$80:	; Parameter 64 t$tm_wday 24
x725:	mov ax, [bp + 54]	; 3: -117 70 54
x728:	mov [bp + 88], ax	; 3: -119 70 88

time_test$81:	; Parameter 64 t$tm_isdst 26
x731:	mov ax, [bp + 58]	; 3: -117 70 58
x734:	mov [bp + 90], ax	; 3: -119 70 90

time_test$82:	; Call 64 printf 0
x737:	mov word [bp + 64], time_test$83	; 5: -57 70 64 -12 2
x742:	mov [bp + 66], bp	; 3: -119 110 66
x745:	add bp, 64	; 3: -125 -59 64
x748:	mov di, bp	; 2: -119 -17
x750:	add di, 20	; 3: -125 -57 20
x753:	jmp printf	; 3: -23 86 12

time_test$83:	; PostCall 64

time_test$84:	; CallHeader 566 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time_test$85:	; Parameter 566 buffer1 6
x756:	mov [bp + 572], bp	; 4: -119 -82 60 2
x760:	add word [bp + 572], 64	; 5: -125 -122 60 2 64

time_test$86:	; CallHeader 566 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time_test$87:	; address £temporary6178 s
x765:	mov si, bp	; 2: -119 -18
x767:	add si, 24	; 3: -125 -58 24

time_test$88:	; Parameter 566 £temporary6178 14
x770:	mov [bp + 580], si	; 4: -119 -74 68 2

time_test$89:	; Call 566 asctime 8
x774:	mov word [bp + 574], time_test$90	; 6: -57 -122 62 2 23 3
x780:	mov [bp + 576], bp	; 4: -119 -82 64 2
x784:	add bp, 574	; 4: -127 -59 62 2
x788:	jmp asctime	; 3: -23 82 39

time_test$90:	; PostCall 566

time_test$91:	; GetReturnValue £temporary6179

time_test$92:	; Parameter 566 £temporary6179 8
x791:	mov [bp + 574], bx	; 4: -119 -98 62 2

time_test$93:	; Call 566 strcpy 0
x795:	mov word [bp + 566], time_test$94	; 6: -57 -122 54 2 44 3
x801:	mov [bp + 568], bp	; 4: -119 -82 56 2
x805:	add bp, 566	; 4: -127 -59 54 2
x809:	jmp strcpy	; 3: -23 -65 41

time_test$94:	; PostCall 566

time_test$95:	; CallHeader 566 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time_test$96:	; Parameter 566 buffer2 6
x812:	mov [bp + 572], bp	; 4: -119 -82 60 2
x816:	add word [bp + 572], 164	; 6: -127 -122 60 2 -92 0

time_test$97:	; CallHeader 566 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time_test$98:	; address £temporary6181 now1
x822:	mov si, bp	; 2: -119 -18
x824:	add si, 20	; 3: -125 -58 20

time_test$99:	; Parameter 566 £temporary6181 14
x827:	mov [bp + 580], si	; 4: -119 -74 68 2

time_test$100:	; Call 566 ctime 8
x831:	mov word [bp + 574], time_test$101	; 6: -57 -122 62 2 80 3
x837:	mov [bp + 576], bp	; 4: -119 -82 64 2
x841:	add bp, 574	; 4: -127 -59 62 2
x845:	jmp ctime	; 3: -23 -41 41

time_test$101:	; PostCall 566

time_test$102:	; GetReturnValue £temporary6182

time_test$103:	; Parameter 566 £temporary6182 8
x848:	mov [bp + 574], bx	; 4: -119 -98 62 2

time_test$104:	; Call 566 strcpy 0
x852:	mov word [bp + 566], time_test$105	; 6: -57 -122 54 2 101 3
x858:	mov [bp + 568], bp	; 4: -119 -82 56 2
x862:	add bp, 566	; 4: -127 -59 54 2
x866:	jmp strcpy	; 3: -23 -122 41

time_test$105:	; PostCall 566

time_test$106:	; CallHeader 566 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time_test$107:	; Parameter 566 string_asctime203C25s3E2C20ctime203C25s3E0A# 6
x869:	mov word [bp + 572], string_asctime203C25s3E2C20ctime203C25s3E0A#	; 6: -57 -122 60 2 24 5

time_test$108:	; Parameter 566 buffer1 8
x875:	mov [bp + 574], bp	; 4: -119 -82 62 2
x879:	add word [bp + 574], 64	; 5: -125 -122 62 2 64

time_test$109:	; Parameter 566 buffer2 10
x884:	mov [bp + 576], bp	; 4: -119 -82 64 2
x888:	add word [bp + 576], 164	; 6: -127 -122 64 2 -92 0

time_test$110:	; Call 566 printf 0
x894:	mov word [bp + 566], time_test$111	; 6: -57 -122 54 2 -108 3
x900:	mov [bp + 568], bp	; 4: -119 -82 56 2
x904:	add bp, 566	; 4: -127 -59 54 2
x908:	mov di, bp	; 2: -119 -17
x910:	add di, 4	; 3: -125 -57 4
x913:	jmp printf	; 3: -23 -74 11

time_test$111:	; PostCall 566

time_test$112:	; CallHeader 566 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time_test$113:	; Parameter 566 buffer 6
x916:	mov [bp + 572], bp	; 4: -119 -82 60 2
x920:	add word [bp + 572], 264	; 6: -127 -122 60 2 8 1

time_test$114:	; Parameter 566 300 8
x926:	mov word [bp + 574], 300	; 6: -57 -122 62 2 44 1

time_test$115:	; Parameter 566 string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y# 10
x932:	mov word [bp + 576], string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y#	; 6: -57 -122 64 2 50 5

time_test$116:	; address £temporary6185 t
x938:	mov si, bp	; 2: -119 -18
x940:	add si, 42	; 3: -125 -58 42

time_test$117:	; Parameter 566 £temporary6185 12
x943:	mov [bp + 578], si	; 4: -119 -74 66 2

time_test$118:	; Call 566 strftime 0
x947:	mov word [bp + 566], time_test$119	; 6: -57 -122 54 2 -60 3
x953:	mov [bp + 568], bp	; 4: -119 -82 56 2
x957:	add bp, 566	; 4: -127 -59 54 2
x961:	jmp strftime	; 3: -23 -109 41

time_test$119:	; PostCall 566

time_test$120:	; GetReturnValue £temporary6186

time_test$121:	; Assign i £temporary6186
x964:	mov [bp + 564], bx	; 4: -119 -98 52 2

time_test$122:	; CallHeader 566 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time_test$123:	; Parameter 566 string_strftime2025i2025i203C25s3E0A# 6
x968:	mov word [bp + 572], string_strftime2025i2025i203C25s3E0A#	; 6: -57 -122 60 2 40 6

time_test$124:	; Parameter 566 i 8
x974:	mov ax, [bp + 564]	; 4: -117 -122 52 2
x978:	mov [bp + 574], ax	; 4: -119 -122 62 2

time_test$125:	; CallHeader 566 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time_test$126:	; Parameter 566 buffer 16
x982:	mov [bp + 582], bp	; 4: -119 -82 70 2
x986:	add word [bp + 582], 264	; 6: -127 -122 70 2 8 1

time_test$127:	; Call 566 strlen 10
x992:	mov word [bp + 576], time_test$128	; 6: -57 -122 64 2 -15 3
x998:	mov [bp + 578], bp	; 4: -119 -82 66 2
x1002:	add bp, 576	; 4: -127 -59 64 2
x1006:	jmp strlen	; 3: -23 -93 48

time_test$128:	; PostCall 566

time_test$129:	; GetReturnValue £temporary6187

time_test$130:	; Parameter 566 £temporary6187 10
x1009:	mov [bp + 576], bx	; 4: -119 -98 64 2

time_test$131:	; Parameter 566 buffer 12
x1013:	mov [bp + 578], bp	; 4: -119 -82 66 2
x1017:	add word [bp + 578], 264	; 6: -127 -122 66 2 8 1

time_test$132:	; Call 566 printf 0
x1023:	mov word [bp + 566], time_test$133	; 6: -57 -122 54 2 21 4
x1029:	mov [bp + 568], bp	; 4: -119 -82 56 2
x1033:	add bp, 566	; 4: -127 -59 54 2
x1037:	mov di, bp	; 2: -119 -17
x1039:	add di, 6	; 3: -125 -57 6
x1042:	jmp printf	; 3: -23 53 11

time_test$133:	; PostCall 566

time_test$134:	; Return 0
x1045:	mov ax, [bp]	; 3: -117 70 0
x1048:	mov di, [bp + 4]	; 3: -117 126 4
x1051:	mov bp, [bp + 2]	; 3: -117 110 2
x1054:	jmp ax	; 2: -1 -32

time_test$135:	; FunctionEnd time_test

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

string_202020gm20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#:
x1108:	db "   gm time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i", 10, 0	; 97: 32 32 32 103 109 32 116 105 109 101 58 32 37 115 32 37 48 50 105 45 37 48 50 105 45 37 48 50 105 32 37 48 50 105 58 37 48 50 105 58 37 48 50 105 44 32 121 101 97 114 32 100 97 121 32 37 105 44 32 119 101 101 107 32 100 97 121 32 37 105 44 32 100 97 121 108 105 103 104 116 32 115 97 118 105 110 103 32 116 105 109 101 32 37 105 10 0

int2$2#:
x1205:	dw 2	; 2: 2 0

string_local20time3A2025s202502i2D2502i2D2502i202502i3A2502i3A2502i2C20year20day2025i2C20week20day2025i2C20daylight20saving20time2025i0A#:
x1207:	db "local time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i", 10, 0	; 97: 108 111 99 97 108 32 116 105 109 101 58 32 37 115 32 37 48 50 105 45 37 48 50 105 45 37 48 50 105 32 37 48 50 105 58 37 48 50 105 58 37 48 50 105 44 32 121 101 97 114 32 100 97 121 32 37 105 44 32 119 101 101 107 32 100 97 121 32 37 105 44 32 100 97 121 108 105 103 104 116 32 115 97 118 105 110 103 32 116 105 109 101 32 37 105 10 0

string_asctime203C25s3E2C20ctime203C25s3E0A#:
x1304:	db "asctime <%s>, ctime <%s>", 10, 0	; 26: 97 115 99 116 105 109 101 32 60 37 115 62 44 32 99 116 105 109 101 32 60 37 115 62 10 0

string_short20day2025a2C20long20day2025A2C20short20month2025b2C20long20month2025B2C20date2Dtime2025c2C20mday2025d2C20hour2025H2C20gm20hour2025I2C20yday2025j2C20month2025m2C20min2025M2C20am2Fpm2025p2C20sec2025S2C20week20number20sun2025U2C20week20day2025w2C20week20number20mon2025W2C20date2025x2C20time2025X2C20short20year2025y2C20long20year2025Y#:
x1330:	db "short day %a, long day %A, short month %b, long month %B, date-time %c, mday %d, hour %H, gm hour %I, yday %j, month %m, min %M, am/pm %p, sec %S, week number sun %U, week day %w, week number mon %W, date %x, time %X, short year %y, long year %Y", 0	; 246: 115 104 111 114 116 32 100 97 121 32 37 97 44 32 108 111 110 103 32 100 97 121 32 37 65 44 32 115 104 111 114 116 32 109 111 110 116 104 32 37 98 44 32 108 111 110 103 32 109 111 110 116 104 32 37 66 44 32 100 97 116 101 45 116 105 109 101 32 37 99 44 32 109 100 97 121 32 37 100 44 32 104 111 117 114 32 37 72 44 32 103 109 32 104 111 117 114 32 37 73 44 32 121 100 97 121 32 37 106 44 32 109 111 110 116 104 32 37 109 44 32 109 105 110 32 37 77 44 32 97 109 47 112 109 32 37 112 44 32 115 101 99 32 37 83 44 32 119 101 101 107 32 110 117 109 98 101 114 32 115 117 110 32 37 85 44 32 119 101 101 107 32 100 97 121 32 37 119 44 32 119 101 101 107 32 110 117 109 98 101 114 32 109 111 110 32 37 87 44 32 100 97 116 101 32 37 120 44 32 116 105 109 101 32 37 88 44 32 115 104 111 114 116 32 121 101 97 114 32 37 121 44 32 108 111 110 103 32 121 101 97 114 32 37 89 0

string_strftime2025i2025i203C25s3E0A#:
x1576:	db "strftime %i %i <%s>", 10, 0	; 21: 115 116 114 102 116 105 109 101 32 37 105 32 37 105 32 60 37 115 62 10 0

time:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time$1:	; Call 19 localeconv 0
x1597:	mov word [bp + 19], time$2	; 5: -57 70 19 75 6
x1602:	mov [bp + 21], bp	; 3: -119 110 21
x1605:	add bp, 19	; 3: -125 -59 19
x1608:	jmp localeconv	; 3: -23 -122 1

time$2:	; PostCall 19

time$3:	; GetReturnValue £temporary3415

time$4:	; Assign localeConvPtr £temporary3415
x1611:	mov [bp + 19], bx	; 3: -119 94 19

time$5:	; AssignRegister ah 42
x1614:	mov ah, 42	; 2: -76 42

time$6:	; Interrupt 33
x1616:	int 33	; 2: -51 33

time$7:	; InspectRegister £temporary3417 cx

time$8:	; BinarySubtract year £temporary3417 1900
x1618:	sub cx, 1900	; 4: -127 -23 108 7
x1622:	mov [bp + 12], cx	; 3: -119 78 12

time$9:	; InspectRegister £temporary3419 dh

time$10:	; BinarySubtract month £temporary3419 1
x1625:	dec dh	; 2: -2 -50
x1627:	mov [bp + 14], dh	; 3: -120 118 14

time$11:	; InspectRegister £temporary3421 dl

time$12:	; Assign monthDay £temporary3421
x1630:	mov [bp + 15], dl	; 3: -120 86 15

time$13:	; AssignRegister ah 44
x1633:	mov ah, 44	; 2: -76 44

time$14:	; Interrupt 33
x1635:	int 33	; 2: -51 33

time$15:	; InspectRegister £temporary3423 ch

time$16:	; Assign hour £temporary3423
x1637:	mov [bp + 16], ch	; 3: -120 110 16

time$17:	; InspectRegister £temporary3424 cl

time$18:	; Assign min £temporary3424
x1640:	mov [bp + 17], cl	; 3: -120 78 17

time$19:	; InspectRegister £temporary3425 dh

time$20:	; Assign sec £temporary3425
x1643:	mov [bp + 18], dh	; 3: -120 118 18

time$21:	; Equal 25 localeConvPtr 0
x1646:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x1650:	je time$25	; 2: 116 18

time$22:	; Deref £temporary3427 -> localeConvPtr localeConvPtr 2
x1652:	mov si, [bp + 19]	; 3: -117 118 19

time$23:	; IntegralToIntegral £temporary3428 £temporary3427 -> localeConvPtr
x1655:	mov ax, [si + 2]	; 3: -117 68 2
x1658:	cmp ax, 0	; 3: -125 -8 0
x1661:	jge time$24	; 2: 125 4
x1663:	neg ax	; 2: -9 -40
x1665:	neg al	; 2: -10 -40

time$24:	; BinarySubtract hour hour £temporary3428
x1667:	sub [bp + 16], al	; 3: 40 70 16

time$25:	; SignedModulo £temporary3430 year 4
x1670:	mov ax, [bp + 12]	; 3: -117 70 12
x1673:	xor dx, dx	; 2: 49 -46
x1675:	idiv word [int2$4#]	; 4: -9 62 -49 7

time$26:	; NotEqual 29 £temporary3430 0
x1679:	cmp dx, 0	; 3: -125 -6 0
x1682:	jne time$29	; 2: 117 5

time$27:	; Assign £temporary3432 1
x1684:	mov ax, 1	; 3: -72 1 0

time$28:	; Goto 30
x1687:	jmp time$30	; 2: -21 3

time$29:	; Assign £temporary3432 0
x1689:	mov ax, 0	; 3: -72 0 0

time$30:	; Assign leapYear £temporary3432
x1692:	mov [bp + 21], ax	; 3: -119 70 21

time$31:	; Assign daysOfMonthsX[0] 31
x1695:	mov word [bp + 23], 31	; 5: -57 70 23 31 0

time$32:	; Equal 35 leapYear 0
x1700:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x1704:	je time$35	; 2: 116 5

time$33:	; Assign £temporary3437 29
x1706:	mov ax, 29	; 3: -72 29 0

time$34:	; Goto 36
x1709:	jmp time$36	; 2: -21 3

time$35:	; Assign £temporary3437 28
x1711:	mov ax, 28	; 3: -72 28 0

time$36:	; Assign daysOfMonthsX[1] £temporary3437
x1714:	mov [bp + 25], ax	; 3: -119 70 25

time$37:	; Assign daysOfMonthsX[2] 31
x1717:	mov word [bp + 27], 31	; 5: -57 70 27 31 0

time$38:	; Assign daysOfMonthsX[3] 30
x1722:	mov word [bp + 29], 30	; 5: -57 70 29 30 0

time$39:	; Assign daysOfMonthsX[4] 31
x1727:	mov word [bp + 31], 31	; 5: -57 70 31 31 0

time$40:	; Assign daysOfMonthsX[5] 30
x1732:	mov word [bp + 33], 30	; 5: -57 70 33 30 0

time$41:	; Assign daysOfMonthsX[6] 31
x1737:	mov word [bp + 35], 31	; 5: -57 70 35 31 0

time$42:	; Assign daysOfMonthsX[7] 31
x1742:	mov word [bp + 37], 31	; 5: -57 70 37 31 0

time$43:	; Assign daysOfMonthsX[8] 30
x1747:	mov word [bp + 39], 30	; 5: -57 70 39 30 0

time$44:	; Assign daysOfMonthsX[9] 31
x1752:	mov word [bp + 41], 31	; 5: -57 70 41 31 0

time$45:	; Assign daysOfMonthsX[10] 30
x1757:	mov word [bp + 43], 30	; 5: -57 70 43 30 0

time$46:	; Assign daysOfMonthsX[11] 31
x1762:	mov word [bp + 45], 31	; 5: -57 70 45 31 0

time$47:	; IntegralToIntegral £temporary3450 monthDay
x1767:	mov al, [bp + 15]	; 3: -118 70 15
x1770:	and ax, 255	; 3: 37 -1 0
x1773:	cmp al, 0	; 2: 60 0
x1775:	jge time$48	; 2: 125 4
x1777:	neg al	; 2: -10 -40
x1779:	neg ax	; 2: -9 -40

time$48:	; BinarySubtract yearDay £temporary3450 1
x1781:	dec ax	; 1: 72
x1782:	mov [bp + 47], ax	; 3: -119 70 47

time$49:	; Assign mon 0
x1785:	mov word [bp + 49], 0	; 5: -57 70 49 0 0

time$50:	; IntegralToIntegral £temporary3452 month
x1790:	mov al, [bp + 14]	; 3: -118 70 14
x1793:	and ax, 255	; 3: 37 -1 0
x1796:	cmp al, 0	; 2: 60 0
x1798:	jge time$51	; 2: 125 4
x1800:	neg al	; 2: -10 -40
x1802:	neg ax	; 2: -9 -40

time$51:	; SignedGreaterThanEqual 58 mon £temporary3452
x1804:	cmp [bp + 49], ax	; 3: 57 70 49
x1807:	jge time$58	; 2: 125 26

time$52:	; UnsignedMultiply £temporary3456 mon 2
x1809:	mov ax, [bp + 49]	; 3: -117 70 49
x1812:	xor dx, dx	; 2: 49 -46
x1814:	mul word [int2$2#]	; 4: -9 38 -75 4

time$53:	; BinaryAdd £temporary3457 daysOfMonthsX £temporary3456
x1818:	mov si, bp	; 2: -119 -18
x1820:	add si, 23	; 3: -125 -58 23
x1823:	add si, ax	; 2: 1 -58

time$54:	; Deref £temporary3455 -> £temporary3457 £temporary3457 0

time$55:	; BinaryAdd yearDay yearDay £temporary3455 -> £temporary3457
x1825:	mov ax, [si]	; 2: -117 4
x1827:	add [bp + 47], ax	; 3: 1 70 47

time$56:	; Increment mon
x1830:	inc word [bp + 49]	; 3: -1 70 49

time$57:	; Goto 50
x1833:	jmp time$50	; 2: -21 -45

time$58:	; IntegralToIntegral £temporary3460 sec
x1835:	mov al, [bp + 18]	; 3: -118 70 18
x1838:	and ax, 255	; 3: 37 -1 0
x1841:	cmp al, 0	; 2: 60 0
x1843:	jge time$59	; 2: 125 4
x1845:	neg al	; 2: -10 -40
x1847:	neg ax	; 2: -9 -40

time$59:	; Assign s$tm_sec £temporary3460
x1849:	mov [bp + 51], ax	; 3: -119 70 51

time$60:	; IntegralToIntegral £temporary3462 min
x1852:	mov al, [bp + 17]	; 3: -118 70 17
x1855:	and ax, 255	; 3: 37 -1 0
x1858:	cmp al, 0	; 2: 60 0
x1860:	jge time$61	; 2: 125 4
x1862:	neg al	; 2: -10 -40
x1864:	neg ax	; 2: -9 -40

time$61:	; Assign s$tm_min £temporary3462
x1866:	mov [bp + 53], ax	; 3: -119 70 53

time$62:	; IntegralToIntegral £temporary3464 hour
x1869:	mov al, [bp + 16]	; 3: -118 70 16
x1872:	and ax, 255	; 3: 37 -1 0
x1875:	cmp al, 0	; 2: 60 0
x1877:	jge time$63	; 2: 125 4
x1879:	neg al	; 2: -10 -40
x1881:	neg ax	; 2: -9 -40

time$63:	; Assign s$tm_hour £temporary3464
x1883:	mov [bp + 55], ax	; 3: -119 70 55

time$64:	; IntegralToIntegral £temporary3466 monthDay
x1886:	mov al, [bp + 15]	; 3: -118 70 15
x1889:	and ax, 255	; 3: 37 -1 0
x1892:	cmp al, 0	; 2: 60 0
x1894:	jge time$65	; 2: 125 4
x1896:	neg al	; 2: -10 -40
x1898:	neg ax	; 2: -9 -40

time$65:	; Assign s$tm_mday £temporary3466
x1900:	mov [bp + 57], ax	; 3: -119 70 57

time$66:	; IntegralToIntegral £temporary3468 month
x1903:	mov al, [bp + 14]	; 3: -118 70 14
x1906:	and ax, 255	; 3: 37 -1 0
x1909:	cmp al, 0	; 2: 60 0
x1911:	jge time$67	; 2: 125 4
x1913:	neg al	; 2: -10 -40
x1915:	neg ax	; 2: -9 -40

time$67:	; Assign s$tm_mon £temporary3468
x1917:	mov [bp + 59], ax	; 3: -119 70 59

time$68:	; Assign s$tm_year year
x1920:	mov ax, [bp + 12]	; 3: -117 70 12
x1923:	mov [bp + 61], ax	; 3: -119 70 61

time$69:	; Assign s$tm_wday 0
x1926:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

time$70:	; Assign s$tm_yday yearDay
x1931:	mov ax, [bp + 47]	; 3: -117 70 47
x1934:	mov [bp + 65], ax	; 3: -119 70 65

time$71:	; Assign s$tm_isdst 0
x1937:	mov word [bp + 67], 0	; 5: -57 70 67 0 0

time$72:	; CallHeader 69 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

time$73:	; address £temporary3473 s
x1942:	mov si, bp	; 2: -119 -18
x1944:	add si, 51	; 3: -125 -58 51

time$74:	; Parameter 69 £temporary3473 6
x1947:	mov [bp + 75], si	; 3: -119 118 75

time$75:	; Call 69 mktime 0
x1950:	mov word [bp + 69], time$76	; 5: -57 70 69 -84 7
x1955:	mov [bp + 71], bp	; 3: -119 110 71
x1958:	add bp, 69	; 3: -125 -59 69
x1961:	jmp mktime	; 3: -23 75 3

time$76:	; PostCall 69

time$77:	; GetReturnValue £temporary3474

time$78:	; Assign time £temporary3474
x1964:	mov [bp + 8], ebx	; 4: 102 -119 94 8

time$79:	; Equal 82 timePtr 0
x1968:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x1972:	je time$82	; 2: 116 10

time$80:	; Deref £temporary3476 -> timePtr timePtr 0
x1974:	mov si, [bp + 6]	; 3: -117 118 6

time$81:	; Assign £temporary3476 -> timePtr time
x1977:	mov eax, [bp + 8]	; 4: 102 -117 70 8
x1981:	mov [si], eax	; 3: 102 -119 4

time$82:	; SetReturnValue time
x1984:	mov ebx, [bp + 8]	; 4: 102 -117 94 8

time$83:	; Return time
x1988:	mov ax, [bp]	; 3: -117 70 0
x1991:	mov di, [bp + 4]	; 3: -117 126 4
x1994:	mov bp, [bp + 2]	; 3: -117 110 2
x1997:	jmp ax	; 2: -1 -32

time$84:	; FunctionEnd time

int2$4#:
x1999:	dw 4	; 2: 4 0

localeconv:	; Equal 4 g_currStructPtr 0
x2001:	cmp word [@638$g_currStructPtr], 0	; 5: -125 62 -17 7 0
x2006:	je localeconv$4	; 2: 116 9

localeconv$1:	; Deref £temporary516 -> g_currStructPtr g_currStructPtr 2
x2008:	mov si, [@638$g_currStructPtr]	; 4: -117 54 -17 7

localeconv$2:	; Assign £temporary520 £temporary516 -> g_currStructPtr
x2012:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; Goto 5
x2015:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; Assign £temporary520 0
x2017:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; SetReturnValue £temporary520

localeconv$6:	; Return £temporary520
x2020:	mov ax, [bp]	; 3: -117 70 0
x2023:	mov di, [bp + 4]	; 3: -117 126 4
x2026:	mov bp, [bp + 2]	; 3: -117 110 2
x2029:	jmp ax	; 2: -1 -32

localeconv$7:	; FunctionEnd localeconv

@638$g_currStructPtr:
x2031:	dw @636$sArray	; 2: -15 7

@636$sArray:
x2033:	dw string_# ; 2: -3 7
x2035:	dw @633$en_US_utf8	; 2: -2 7
x2037:	dw string_C# ; 2: -14 10
x2039:	dw @633$en_US_utf8	; 2: -2 7
x2041:	dw string_US# ; 2: -12 10
x2043:	dw @633$en_US_utf8	; 2: -2 7

string_#:
x2045:	db 0	; 1: 0

@633$en_US_utf8:
x2046:	dw 1	; 2: 1 0
x2048:	dw 1	; 2: 1 0
x2050:	dw @629$enShortDayList ; 2: 16 8
x2052:	dw @630$enLongDayList ; 2: 30 8
x2054:	dw @631$enShortMonthList ; 2: 101 8
x2056:	dw @632$enLongMonthList ; 2: -83 8
x2058:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: 23 9
x2060:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: 50 9
x2062:	dw enMessageList ; 2: 77 9

@629$enShortDayList:
x2064:	dw string_Sun# ; 2: 32 4
x2066:	dw string_Mon# ; 2: 36 4
x2068:	dw string_Tue# ; 2: 40 4
x2070:	dw string_Wed# ; 2: 44 4
x2072:	dw string_Thu# ; 2: 48 4
x2074:	dw string_Fri# ; 2: 52 4
x2076:	dw string_Sat# ; 2: 56 4

@630$enLongDayList:
x2078:	dw string_Sunday# ; 2: 44 8
x2080:	dw string_Monday# ; 2: 51 8
x2082:	dw string_Tuesday# ; 2: 58 8
x2084:	dw string_Wednesday# ; 2: 66 8
x2086:	dw string_Thursday# ; 2: 76 8
x2088:	dw string_Friday# ; 2: 85 8
x2090:	dw string_Saturday# ; 2: 92 8

string_Sunday#:
x2092:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x2099:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x2106:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x2114:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x2124:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x2133:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x2140:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@631$enShortMonthList:
x2149:	dw string_Jan# ; 2: 125 8
x2151:	dw string_Feb# ; 2: -127 8
x2153:	dw string_Mar# ; 2: -123 8
x2155:	dw string_Apr# ; 2: -119 8
x2157:	dw string_May# ; 2: -115 8
x2159:	dw string_Jun# ; 2: -111 8
x2161:	dw string_Jul# ; 2: -107 8
x2163:	dw string_Aug# ; 2: -103 8
x2165:	dw string_Sep# ; 2: -99 8
x2167:	dw string_Oct# ; 2: -95 8
x2169:	dw string_Nov# ; 2: -91 8
x2171:	dw string_Dec# ; 2: -87 8

string_Jan#:
x2173:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x2177:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x2181:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x2185:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x2189:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x2193:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x2197:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x2201:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x2205:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x2209:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x2213:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x2217:	db "Dec", 0	; 4: 68 101 99 0

@632$enLongMonthList:
x2221:	dw string_January# ; 2: -59 8
x2223:	dw string_February# ; 2: -51 8
x2225:	dw string_March# ; 2: -42 8
x2227:	dw string_April# ; 2: -36 8
x2229:	dw string_May# ; 2: -115 8
x2231:	dw string_June# ; 2: -30 8
x2233:	dw string_July# ; 2: -25 8
x2235:	dw string_August# ; 2: -20 8
x2237:	dw string_September# ; 2: -13 8
x2239:	dw string_October# ; 2: -3 8
x2241:	dw string_November# ; 2: 5 9
x2243:	dw string_December# ; 2: 14 9

string_January#:
x2245:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x2253:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x2262:	db "March", 0	; 6: 77 97 114 99 104 0

string_April#:
x2268:	db "April", 0	; 6: 65 112 114 105 108 0

string_June#:
x2274:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x2279:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x2284:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_September#:
x2291:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_October#:
x2301:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

string_November#:
x2309:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x2318:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x2327:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x2354:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

enMessageList:
x2381:	dw string_no20error# ; 2: 117 9
x2383:	dw string_function20number20invalid# ; 2: 126 9
x2385:	dw string_file20not20found# ; 2: -106 9
x2387:	dw string_path20not20found# ; 2: -91 9
x2389:	dw string_no20handle20available# ; 2: -76 9
x2391:	dw string_access20denied# ; 2: -56 9
x2393:	dw string_out20of20domain# ; 2: -42 9
x2395:	dw string_out20of20range# ; 2: -28 9
x2397:	dw string_invalid20multibyte20sequence# ; 2: -15 9
x2399:	dw string_error20while20opening# ; 2: 12 10
x2401:	dw string_error20while20flushing# ; 2: 32 10
x2403:	dw string_error20while20closing# ; 2: 53 10
x2405:	dw string_open20mode20invalid# ; 2: 73 10
x2407:	dw string_error20while20writing# ; 2: 91 10
x2409:	dw string_error20while20reading# ; 2: 111 10
x2411:	dw string_error20while20seeking# ; 2: -125 10
x2413:	dw string_error20while20telling# ; 2: -105 10
x2415:	dw string_error20while20sizing# ; 2: -85 10
x2417:	dw string_error20while20removing20file# ; 2: -66 10
x2419:	dw string_error20while20renaming20file# ; 2: -40 10

string_no20error#:
x2421:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x2430:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x2454:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x2469:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x2484:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x2504:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x2518:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x2532:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x2545:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x2572:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x2592:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x2613:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x2633:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x2651:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x2671:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x2691:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x2711:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x2731:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x2750:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x2776:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_C#:
x2802:	db "C", 0	; 2: 67 0

string_US#:
x2804:	db "US", 0	; 3: 85 83 0

mktime:	; Equal 28 tp 0
x2807:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x2811:	je mktime$28	; 4: 15 -124 -40 0

mktime$1:	; Deref £temporary3480 -> tp tp 10
x2815:	mov si, [bp + 6]	; 3: -117 118 6

mktime$2:	; BinarySubtract £temporary3481 £temporary3480 -> tp 69
x2818:	mov ax, [si + 10]	; 3: -117 68 10
x2821:	sub ax, 69	; 3: -125 -24 69

mktime$3:	; SignedDivide £temporary3482 £temporary3481 4
x2824:	xor dx, dx	; 2: 49 -46
x2826:	idiv word [int2$4#]	; 4: -9 62 -49 7

mktime$4:	; IntegralToIntegral £temporary3483 £temporary3482
x2830:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2836:	cmp ax, 0	; 3: -125 -8 0
x2839:	jge mktime$5	; 2: 125 5
x2841:	neg ax	; 2: -9 -40
x2843:	neg eax	; 3: 102 -9 -40

mktime$5:	; Assign leapDays £temporary3483
x2846:	mov [bp + 8], eax	; 4: 102 -119 70 8

mktime$6:	; Deref £temporary3484 -> tp tp 10
x2850:	mov si, [bp + 6]	; 3: -117 118 6

mktime$7:	; BinarySubtract £temporary3485 £temporary3484 -> tp 70
x2853:	mov ax, [si + 10]	; 3: -117 68 10
x2856:	sub ax, 70	; 3: -125 -24 70

mktime$8:	; SignedMultiply £temporary3486 £temporary3485 365
x2859:	xor dx, dx	; 2: 49 -46
x2861:	imul word [int2$365#]	; 4: -9 46 -24 11

mktime$9:	; IntegralToIntegral £temporary3487 £temporary3486
x2865:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2871:	cmp ax, 0	; 3: -125 -8 0
x2874:	jge mktime$10	; 2: 125 5
x2876:	neg ax	; 2: -9 -40
x2878:	neg eax	; 3: 102 -9 -40

mktime$10:	; BinaryAdd £temporary3488 £temporary3487 leapDays
x2881:	add eax, [bp + 8]	; 4: 102 3 70 8

mktime$11:	; Deref £temporary3489 -> tp tp 14
x2885:	mov si, [bp + 6]	; 3: -117 118 6

mktime$12:	; IntegralToIntegral £temporary3490 £temporary3489 -> tp
x2888:	mov bx, [si + 14]	; 3: -117 92 14
x2891:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x2898:	cmp bx, 0	; 3: -125 -5 0
x2901:	jge mktime$13	; 2: 125 5
x2903:	neg bx	; 2: -9 -37
x2905:	neg ebx	; 3: 102 -9 -37

mktime$13:	; BinaryAdd totalDays £temporary3488 £temporary3490
x2908:	add eax, ebx	; 3: 102 1 -40
x2911:	mov [bp + 12], eax	; 4: 102 -119 70 12

mktime$14:	; SignedMultiply £temporary3492 totalDays 86400
x2915:	mov eax, [bp + 12]	; 4: 102 -117 70 12
x2919:	xor edx, edx	; 3: 102 49 -46
x2922:	imul dword [int4$86400#]	; 5: 102 -9 46 -22 11
x2927:	mov ebx, eax	; 3: 102 -119 -61

mktime$15:	; Deref £temporary3493 -> tp tp 4
x2930:	mov si, [bp + 6]	; 3: -117 118 6

mktime$16:	; IntegralToIntegral £temporary3494 £temporary3493 -> tp
x2933:	mov ax, [si + 4]	; 3: -117 68 4
x2936:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2942:	cmp ax, 0	; 3: -125 -8 0
x2945:	jge mktime$17	; 2: 125 5
x2947:	neg ax	; 2: -9 -40
x2949:	neg eax	; 3: 102 -9 -40

mktime$17:	; SignedMultiply £temporary3495 £temporary3494 3600
x2952:	xor edx, edx	; 3: 102 49 -46
x2955:	imul dword [int4$3600#]	; 5: 102 -9 46 -18 11

mktime$18:	; BinaryAdd £temporary3496 £temporary3492 £temporary3495
x2960:	add ebx, eax	; 3: 102 1 -61

mktime$19:	; Deref £temporary3497 -> tp tp 2
x2963:	mov si, [bp + 6]	; 3: -117 118 6

mktime$20:	; IntegralToIntegral £temporary3498 £temporary3497 -> tp
x2966:	mov ax, [si + 2]	; 3: -117 68 2
x2969:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2975:	cmp ax, 0	; 3: -125 -8 0
x2978:	jge mktime$21	; 2: 125 5
x2980:	neg ax	; 2: -9 -40
x2982:	neg eax	; 3: 102 -9 -40

mktime$21:	; SignedMultiply £temporary3499 £temporary3498 60
x2985:	xor edx, edx	; 3: 102 49 -46
x2988:	imul dword [int4$60#]	; 5: 102 -9 46 -14 11

mktime$22:	; BinaryAdd £temporary3500 £temporary3496 £temporary3499
x2993:	add ebx, eax	; 3: 102 1 -61

mktime$23:	; Deref £temporary3501 -> tp tp 0
x2996:	mov si, [bp + 6]	; 3: -117 118 6

mktime$24:	; IntegralToIntegral £temporary3502 £temporary3501 -> tp
x2999:	mov ax, [si]	; 2: -117 4
x3001:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x3007:	cmp ax, 0	; 3: -125 -8 0
x3010:	jge mktime$25	; 2: 125 5
x3012:	neg ax	; 2: -9 -40
x3014:	neg eax	; 3: 102 -9 -40

mktime$25:	; BinaryAdd £temporary3503 £temporary3500 £temporary3502
x3017:	add ebx, eax	; 3: 102 1 -61

mktime$26:	; SetReturnValue £temporary3503

mktime$27:	; Return £temporary3503
x3020:	mov ax, [bp]	; 3: -117 70 0
x3023:	mov di, [bp + 4]	; 3: -117 126 4
x3026:	mov bp, [bp + 2]	; 3: -117 110 2
x3029:	jmp ax	; 2: -1 -32

mktime$28:	; SetReturnValue 0
x3031:	mov ebx, 0	; 6: 102 -69 0 0 0 0

mktime$29:	; Return 0
x3037:	mov ax, [bp]	; 3: -117 70 0
x3040:	mov di, [bp + 4]	; 3: -117 126 4
x3043:	mov bp, [bp + 2]	; 3: -117 110 2
x3046:	jmp ax	; 2: -1 -32

mktime$30:	; FunctionEnd mktime

int2$365#:
x3048:	dw 365	; 2: 109 1

int4$86400#:
x3050:	dd 86400	; 4: -128 81 1 0

int4$3600#:
x3054:	dd 3600	; 4: 16 14 0 0

int4$60#:
x3058:	dd 60	; 4: 60 0 0 0

gmtime:	; Equal 89 timePtr 0
x3062:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x3066:	je gmtime$89	; 4: 15 -124 78 2

gmtime$1:	; Deref £temporary3514 -> timePtr timePtr 0
x3070:	mov si, [bp + 6]	; 3: -117 118 6

gmtime$2:	; Assign time £temporary3514 -> timePtr
x3073:	mov eax, [si]	; 3: 102 -117 4
x3076:	mov [bp + 8], eax	; 4: 102 -119 70 8

gmtime$3:	; SignedModulo secondsOfDay time 86400
x3080:	mov eax, [bp + 8]	; 4: 102 -117 70 8
x3084:	xor edx, edx	; 3: 102 49 -46
x3087:	idiv dword [int4$86400#]	; 5: 102 -9 62 -22 11
x3092:	mov [bp + 12], edx	; 4: 102 -119 86 12

gmtime$4:	; SignedModulo secondsOfHour secondsOfDay 3600
x3096:	mov eax, [bp + 12]	; 4: 102 -117 70 12
x3100:	xor edx, edx	; 3: 102 49 -46
x3103:	idiv dword [int4$3600#]	; 5: 102 -9 62 -18 11
x3108:	mov [bp + 16], edx	; 4: 102 -119 86 16

gmtime$5:	; SignedDivide £temporary3518 secondsOfDay 3600
x3112:	mov eax, [bp + 12]	; 4: 102 -117 70 12
x3116:	xor edx, edx	; 3: 102 49 -46
x3119:	idiv dword [int4$3600#]	; 5: 102 -9 62 -18 11

gmtime$6:	; IntegralToIntegral £temporary3519 £temporary3518
x3124:	cmp eax, 0	; 4: 102 -125 -8 0
x3128:	jge gmtime$7	; 2: 125 5
x3130:	neg eax	; 3: 102 -9 -40
x3133:	neg ax	; 2: -9 -40

gmtime$7:	; Assign g_timeStruct$tm_hour £temporary3519
x3135:	mov [@4114$g_timeStruct + 4], ax	; 3: -93 94 14

gmtime$8:	; SignedDivide £temporary3521 secondsOfHour 60
x3138:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x3142:	xor edx, edx	; 3: 102 49 -46
x3145:	idiv dword [int4$60#]	; 5: 102 -9 62 -14 11

gmtime$9:	; IntegralToIntegral £temporary3522 £temporary3521
x3150:	cmp eax, 0	; 4: 102 -125 -8 0
x3154:	jge gmtime$10	; 2: 125 5
x3156:	neg eax	; 3: 102 -9 -40
x3159:	neg ax	; 2: -9 -40

gmtime$10:	; Assign g_timeStruct$tm_min £temporary3522
x3161:	mov [@4114$g_timeStruct + 2], ax	; 3: -93 92 14

gmtime$11:	; SignedModulo £temporary3524 secondsOfHour 60
x3164:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x3168:	xor edx, edx	; 3: 102 49 -46
x3171:	idiv dword [int4$60#]	; 5: 102 -9 62 -14 11

gmtime$12:	; IntegralToIntegral £temporary3525 £temporary3524
x3176:	cmp edx, 0	; 4: 102 -125 -6 0
x3180:	jge gmtime$13	; 2: 125 5
x3182:	neg edx	; 3: 102 -9 -38
x3185:	neg dx	; 2: -9 -38

gmtime$13:	; Assign g_timeStruct$tm_sec £temporary3525
x3187:	mov [@4114$g_timeStruct], dx	; 4: -119 22 90 14

gmtime$14:	; SignedDivide totalDays time 86400
x3191:	mov eax, [bp + 8]	; 4: 102 -117 70 8
x3195:	xor edx, edx	; 3: 102 49 -46
x3198:	idiv dword [int4$86400#]	; 5: 102 -9 62 -22 11
x3203:	mov [bp + 20], eax	; 4: 102 -119 70 20

gmtime$15:	; SignedGreaterThanEqual 20 totalDays 3
x3207:	cmp dword [bp + 20], 3	; 5: 102 -125 126 20 3
x3212:	jge gmtime$20	; 2: 125 24

gmtime$16:	; BinaryAdd £temporary3529 totalDays 4
x3214:	mov eax, [bp + 20]	; 4: 102 -117 70 20
x3218:	add eax, 4	; 4: 102 -125 -64 4

gmtime$17:	; IntegralToIntegral £temporary3530 £temporary3529
x3222:	cmp eax, 0	; 4: 102 -125 -8 0
x3226:	jge gmtime$18	; 2: 125 5
x3228:	neg eax	; 3: 102 -9 -40
x3231:	neg ax	; 2: -9 -40

gmtime$18:	; Assign g_timeStruct$tm_wday £temporary3530
x3233:	mov [@4114$g_timeStruct + 12], ax	; 3: -93 102 14

gmtime$19:	; Goto 24
x3236:	jmp gmtime$24	; 2: -21 31

gmtime$20:	; BinarySubtract £temporary3532 totalDays 3
x3238:	mov eax, [bp + 20]	; 4: 102 -117 70 20
x3242:	sub eax, 3	; 4: 102 -125 -24 3

gmtime$21:	; SignedModulo £temporary3533 £temporary3532 7
x3246:	xor edx, edx	; 3: 102 49 -46
x3249:	idiv dword [int4$7#]	; 5: 102 -9 62 108 14

gmtime$22:	; IntegralToIntegral £temporary3534 £temporary3533
x3254:	cmp edx, 0	; 4: 102 -125 -6 0
x3258:	jge gmtime$23	; 2: 125 5
x3260:	neg edx	; 3: 102 -9 -38
x3263:	neg dx	; 2: -9 -38

gmtime$23:	; Assign g_timeStruct$tm_wday £temporary3534
x3265:	mov [@4114$g_timeStruct + 12], dx	; 4: -119 22 102 14

gmtime$24:	; SignedDivide £temporary3535 totalDays 365
x3269:	mov eax, [bp + 20]	; 4: 102 -117 70 20
x3273:	xor edx, edx	; 3: 102 49 -46
x3276:	idiv dword [int4$365#]	; 5: 102 -9 62 112 14

gmtime$25:	; BinaryAdd £temporary3536 £temporary3535 1970
x3281:	add eax, 1970	; 6: 102 5 -78 7 0 0

gmtime$26:	; IntegralToIntegral £temporary3537 £temporary3536
x3287:	cmp eax, 0	; 4: 102 -125 -8 0
x3291:	jge gmtime$27	; 2: 125 5
x3293:	neg eax	; 3: 102 -9 -40
x3296:	neg ax	; 2: -9 -40

gmtime$27:	; Assign year £temporary3537
x3298:	mov [bp + 24], ax	; 3: -119 70 24

gmtime$28:	; BinarySubtract £temporary3538 year 1969
x3301:	mov ax, [bp + 24]	; 3: -117 70 24
x3304:	sub ax, 1969	; 3: 45 -79 7

gmtime$29:	; SignedDivide leapDays £temporary3538 4
x3307:	xor dx, dx	; 2: 49 -46
x3309:	idiv word [int2$4#]	; 4: -9 62 -49 7
x3313:	mov [bp + 26], ax	; 3: -119 70 26

gmtime$30:	; SignedModulo totalDays totalDays 365
x3316:	mov eax, [bp + 20]	; 4: 102 -117 70 20
x3320:	xor edx, edx	; 3: 102 49 -46
x3323:	idiv dword [int4$365#]	; 5: 102 -9 62 112 14
x3328:	mov [bp + 20], edx	; 4: 102 -119 86 20

gmtime$31:	; IntegralToIntegral £temporary3541 leapDays
x3332:	mov ax, [bp + 26]	; 3: -117 70 26
x3335:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x3341:	cmp ax, 0	; 3: -125 -8 0
x3344:	jge gmtime$32	; 2: 125 5
x3346:	neg ax	; 2: -9 -40
x3348:	neg eax	; 3: 102 -9 -40

gmtime$32:	; BinarySubtract totalDays totalDays £temporary3541
x3351:	sub [bp + 20], eax	; 4: 102 41 70 20

gmtime$33:	; SignedGreaterThanEqual 44 totalDays 0
x3355:	cmp dword [bp + 20], 0	; 5: 102 -125 126 20 0
x3360:	jge gmtime$44	; 2: 125 46

gmtime$34:	; Decrement year
x3362:	dec word [bp + 24]	; 3: -1 78 24

gmtime$35:	; CallHeader 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

gmtime$36:	; Parameter 28 year 6
x3365:	mov ax, [bp + 24]	; 3: -117 70 24
x3368:	mov [bp + 34], ax	; 3: -119 70 34

gmtime$37:	; Call 28 isLeapYear 0
x3371:	mov word [bp + 28], gmtime$38	; 5: -57 70 28 57 13
x3376:	mov [bp + 30], bp	; 3: -119 110 30
x3379:	add bp, 28	; 3: -125 -59 28
x3382:	jmp @4115$isLeapYear	; 3: -23 59 1

gmtime$38:	; PostCall 28

gmtime$39:	; GetReturnValue £temporary3545

gmtime$40:	; Equal 43 £temporary3545 0
x3385:	cmp bx, 0	; 3: -125 -5 0
x3388:	je gmtime$43	; 2: 116 10

gmtime$41:	; BinaryAdd totalDays totalDays 366
x3390:	add dword [bp + 20], 366	; 8: 102 -127 70 20 110 1 0 0

gmtime$42:	; Goto 44
x3398:	jmp gmtime$44	; 2: -21 8

gmtime$43:	; BinaryAdd totalDays totalDays 365
x3400:	add dword [bp + 20], 365	; 8: 102 -127 70 20 109 1 0 0

gmtime$44:	; BinarySubtract g_timeStruct$tm_year year 1900
x3408:	mov ax, [bp + 24]	; 3: -117 70 24
x3411:	sub ax, 1900	; 3: 45 108 7
x3414:	mov [@4114$g_timeStruct + 10], ax	; 3: -93 100 14

gmtime$45:	; IntegralToIntegral £temporary3552 totalDays
x3417:	mov eax, [bp + 20]	; 4: 102 -117 70 20
x3421:	cmp eax, 0	; 4: 102 -125 -8 0
x3425:	jge gmtime$46	; 2: 125 5
x3427:	neg eax	; 3: 102 -9 -40
x3430:	neg ax	; 2: -9 -40

gmtime$46:	; Assign g_timeStruct$tm_yday £temporary3552
x3432:	mov [@4114$g_timeStruct + 14], ax	; 3: -93 104 14

gmtime$47:	; Assign daysOfMonths[0] 31
x3435:	mov word [bp + 28], 31	; 5: -57 70 28 31 0

gmtime$48:	; CallHeader 30 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

gmtime$49:	; Parameter 30 year 6
x3440:	mov ax, [bp + 24]	; 3: -117 70 24
x3443:	mov [bp + 36], ax	; 3: -119 70 36

gmtime$50:	; Call 30 isLeapYear 0
x3446:	mov word [bp + 30], gmtime$51	; 5: -57 70 30 -124 13
x3451:	mov [bp + 32], bp	; 3: -119 110 32
x3454:	add bp, 30	; 3: -125 -59 30
x3457:	jmp @4115$isLeapYear	; 3: -23 -16 0

gmtime$51:	; PostCall 30

gmtime$52:	; GetReturnValue £temporary3553

gmtime$53:	; Equal 56 £temporary3553 0
x3460:	cmp bx, 0	; 3: -125 -5 0
x3463:	je gmtime$56	; 2: 116 5

gmtime$54:	; Assign £temporary3558 29
x3465:	mov ax, 29	; 3: -72 29 0

gmtime$55:	; Goto 57
x3468:	jmp gmtime$57	; 2: -21 3

gmtime$56:	; Assign £temporary3558 28
x3470:	mov ax, 28	; 3: -72 28 0

gmtime$57:	; Assign daysOfMonths[1] £temporary3558
x3473:	mov [bp + 30], ax	; 3: -119 70 30

gmtime$58:	; Assign daysOfMonths[2] 31
x3476:	mov word [bp + 32], 31	; 5: -57 70 32 31 0

gmtime$59:	; Assign daysOfMonths[3] 30
x3481:	mov word [bp + 34], 30	; 5: -57 70 34 30 0

gmtime$60:	; Assign daysOfMonths[4] 31
x3486:	mov word [bp + 36], 31	; 5: -57 70 36 31 0

gmtime$61:	; Assign daysOfMonths[5] 30
x3491:	mov word [bp + 38], 30	; 5: -57 70 38 30 0

gmtime$62:	; Assign daysOfMonths[6] 31
x3496:	mov word [bp + 40], 31	; 5: -57 70 40 31 0

gmtime$63:	; Assign daysOfMonths[7] 31
x3501:	mov word [bp + 42], 31	; 5: -57 70 42 31 0

gmtime$64:	; Assign daysOfMonths[8] 30
x3506:	mov word [bp + 44], 30	; 5: -57 70 44 30 0

gmtime$65:	; Assign daysOfMonths[9] 31
x3511:	mov word [bp + 46], 31	; 5: -57 70 46 31 0

gmtime$66:	; Assign daysOfMonths[10] 30
x3516:	mov word [bp + 48], 30	; 5: -57 70 48 30 0

gmtime$67:	; Assign daysOfMonths[11] 31
x3521:	mov word [bp + 50], 31	; 5: -57 70 50 31 0

gmtime$68:	; Assign month 0
x3526:	mov word [bp + 52], 0	; 5: -57 70 52 0 0

gmtime$69:	; UnsignedMultiply £temporary3572 month 2
x3531:	mov ax, [bp + 52]	; 3: -117 70 52
x3534:	xor dx, dx	; 2: 49 -46
x3536:	mul word [int2$2#]	; 4: -9 38 -75 4

gmtime$70:	; BinaryAdd £temporary3573 daysOfMonths £temporary3572
x3540:	mov si, bp	; 2: -119 -18
x3542:	add si, 28	; 3: -125 -58 28
x3545:	add si, ax	; 2: 1 -58

gmtime$71:	; Deref £temporary3571 -> £temporary3573 £temporary3573 0

gmtime$72:	; IntegralToIntegral £temporary3574 £temporary3571 -> £temporary3573
x3547:	mov ax, [si]	; 2: -117 4
x3549:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x3555:	cmp ax, 0	; 3: -125 -8 0
x3558:	jge gmtime$73	; 2: 125 5
x3560:	neg ax	; 2: -9 -40
x3562:	neg eax	; 3: 102 -9 -40

gmtime$73:	; SignedLessThan 82 totalDays £temporary3574
x3565:	cmp [bp + 20], eax	; 4: 102 57 70 20
x3569:	jl gmtime$82	; 2: 124 43

gmtime$74:	; Assign £temporary3576 month
x3571:	mov ax, [bp + 52]	; 3: -117 70 52

gmtime$75:	; Increment month
x3574:	inc word [bp + 52]	; 3: -1 70 52

gmtime$76:	; UnsignedMultiply £temporary3578 £temporary3576 2
x3577:	xor dx, dx	; 2: 49 -46
x3579:	mul word [int2$2#]	; 4: -9 38 -75 4

gmtime$77:	; BinaryAdd £temporary3579 daysOfMonths £temporary3578
x3583:	mov si, bp	; 2: -119 -18
x3585:	add si, 28	; 3: -125 -58 28
x3588:	add si, ax	; 2: 1 -58

gmtime$78:	; Deref £temporary3577 -> £temporary3579 £temporary3579 0

gmtime$79:	; IntegralToIntegral £temporary3580 £temporary3577 -> £temporary3579
x3590:	mov ax, [si]	; 2: -117 4
x3592:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x3598:	cmp ax, 0	; 3: -125 -8 0
x3601:	jge gmtime$80	; 2: 125 5
x3603:	neg ax	; 2: -9 -40
x3605:	neg eax	; 3: 102 -9 -40

gmtime$80:	; BinarySubtract totalDays totalDays £temporary3580
x3608:	sub [bp + 20], eax	; 4: 102 41 70 20

gmtime$81:	; Goto 69
x3612:	jmp gmtime$69	; 2: -21 -83

gmtime$82:	; Assign g_timeStruct$tm_mon month
x3614:	mov ax, [bp + 52]	; 3: -117 70 52
x3617:	mov [@4114$g_timeStruct + 8], ax	; 3: -93 98 14

gmtime$83:	; BinaryAdd £temporary3584 totalDays 1
x3620:	mov eax, [bp + 20]	; 4: 102 -117 70 20
x3624:	inc eax	; 2: 102 64

gmtime$84:	; IntegralToIntegral £temporary3585 £temporary3584
x3626:	cmp eax, 0	; 4: 102 -125 -8 0
x3630:	jge gmtime$85	; 2: 125 5
x3632:	neg eax	; 3: 102 -9 -40
x3635:	neg ax	; 2: -9 -40

gmtime$85:	; Assign g_timeStruct$tm_mday £temporary3585
x3637:	mov [@4114$g_timeStruct + 6], ax	; 3: -93 96 14

gmtime$86:	; Assign g_timeStruct$tm_isdst -1
x3640:	mov word [@4114$g_timeStruct + 16], -1	; 6: -57 6 106 14 -1 -1

gmtime$87:	; SetReturnValue (@4114$g_timeStruct,0)
x3646:	mov bx, @4114$g_timeStruct	; 3: -69 90 14

gmtime$88:	; Return (@4114$g_timeStruct,0)
x3649:	mov ax, [bp]	; 3: -117 70 0
x3652:	mov di, [bp + 4]	; 3: -117 126 4
x3655:	mov bp, [bp + 2]	; 3: -117 110 2
x3658:	jmp ax	; 2: -1 -32

gmtime$89:	; SetReturnValue 0
x3660:	mov bx, 0	; 3: -69 0 0

gmtime$90:	; Return 0
x3663:	mov ax, [bp]	; 3: -117 70 0
x3666:	mov di, [bp + 4]	; 3: -117 126 4
x3669:	mov bp, [bp + 2]	; 3: -117 110 2
x3672:	jmp ax	; 2: -1 -32

gmtime$91:	; FunctionEnd gmtime

@4114$g_timeStruct:
x3674:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 18: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

int4$7#:
x3692:	dd 7	; 4: 7 0 0 0

int4$365#:
x3696:	dd 365	; 4: 109 1 0 0

@4115$isLeapYear:	; SignedModulo £temporary3504 year 4
x3700:	mov ax, [bp + 6]	; 3: -117 70 6
x3703:	xor dx, dx	; 2: 49 -46
x3705:	idiv word [int2$4#]	; 4: -9 62 -49 7

@4115$isLeapYear$1:	; NotEqual 4 £temporary3504 0
x3709:	cmp dx, 0	; 3: -125 -6 0
x3712:	jne @4115$isLeapYear$4	; 2: 117 14

@4115$isLeapYear$2:	; SignedModulo £temporary3506 year 100
x3714:	mov ax, [bp + 6]	; 3: -117 70 6
x3717:	xor dx, dx	; 2: 49 -46
x3719:	idiv word [int2$100#]	; 4: -9 62 -79 14

@4115$isLeapYear$3:	; NotEqual 6 £temporary3506 0
x3723:	cmp dx, 0	; 3: -125 -6 0
x3726:	jne @4115$isLeapYear$6	; 2: 117 14

@4115$isLeapYear$4:	; SignedModulo £temporary3509 year 400
x3728:	mov ax, [bp + 6]	; 3: -117 70 6
x3731:	xor dx, dx	; 2: 49 -46
x3733:	idiv word [int2$400#]	; 4: -9 62 -77 14

@4115$isLeapYear$5:	; NotEqual 8 £temporary3509 0
x3737:	cmp dx, 0	; 3: -125 -6 0
x3740:	jne @4115$isLeapYear$8	; 2: 117 5

@4115$isLeapYear$6:	; Assign £temporary3512 1
x3742:	mov bx, 1	; 3: -69 1 0

@4115$isLeapYear$7:	; Goto 9
x3745:	jmp @4115$isLeapYear$9	; 2: -21 3

@4115$isLeapYear$8:	; Assign £temporary3512 0
x3747:	mov bx, 0	; 3: -69 0 0

@4115$isLeapYear$9:	; SetReturnValue £temporary3512

@4115$isLeapYear$10:	; Return £temporary3512
x3750:	mov ax, [bp]	; 3: -117 70 0
x3753:	mov di, [bp + 4]	; 3: -117 126 4
x3756:	mov bp, [bp + 2]	; 3: -117 110 2
x3759:	jmp ax	; 2: -1 -32

@4115$isLeapYear$11:	; FunctionEnd isLeapYear

int2$100#:
x3761:	dw 100	; 2: 100 0

int2$400#:
x3763:	dw 400	; 2: -112 1

localtime:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

localtime$1:	; Parameter 8 timePtr 6
x3765:	mov ax, [bp + 6]	; 3: -117 70 6
x3768:	mov [bp + 14], ax	; 3: -119 70 14

localtime$2:	; Call 8 gmtime 0
x3771:	mov word [bp + 8], localtime$3	; 5: -57 70 8 -55 14
x3776:	mov [bp + 10], bp	; 3: -119 110 10
x3779:	add bp, 8	; 3: -125 -59 8
x3782:	jmp gmtime	; 3: -23 45 -3

localtime$3:	; PostCall 8

localtime$4:	; GetReturnValue £temporary3641

localtime$5:	; Assign tmPtr £temporary3641
x3785:	mov [bp + 8], bx	; 3: -119 94 8

localtime$6:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

localtime$7:	; Call 10 localeconv 0
x3788:	mov word [bp + 10], localtime$8	; 5: -57 70 10 -38 14
x3793:	mov [bp + 12], bp	; 3: -119 110 12
x3796:	add bp, 10	; 3: -125 -59 10
x3799:	jmp localeconv	; 3: -23 -9 -8

localtime$8:	; PostCall 10

localtime$9:	; GetReturnValue £temporary3642

localtime$10:	; Assign localeConvPtr £temporary3642
x3802:	mov [bp + 10], bx	; 3: -119 94 10

localtime$11:	; Assign timeZone 0
x3805:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

localtime$12:	; Equal 21 localeConvPtr 0
x3810:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x3814:	je localtime$21	; 2: 116 25

localtime$13:	; Deref £temporary3644 -> tmPtr tmPtr 16
x3816:	mov si, [bp + 8]	; 3: -117 118 8

localtime$14:	; NotEqual 18 £temporary3644 -> tmPtr 1
x3819:	cmp word [si + 16], 1	; 4: -125 124 16 1
x3823:	jne localtime$18	; 2: 117 7

localtime$15:	; Deref £temporary3646 -> localeConvPtr localeConvPtr 0
x3825:	mov si, [bp + 10]	; 3: -117 118 10

localtime$16:	; Assign £temporary3651 £temporary3646 -> localeConvPtr
x3828:	mov ax, [si]	; 2: -117 4

localtime$17:	; Goto 20
x3830:	jmp localtime$20	; 2: -21 6

localtime$18:	; Deref £temporary3647 -> localeConvPtr localeConvPtr 2
x3832:	mov si, [bp + 10]	; 3: -117 118 10

localtime$19:	; Assign £temporary3651 £temporary3647 -> localeConvPtr
x3835:	mov ax, [si + 2]	; 3: -117 68 2

localtime$20:	; Assign timeZone £temporary3651
x3838:	mov [bp + 12], ax	; 3: -119 70 12

localtime$21:	; Deref £temporary3652 -> timePtr timePtr 0
x3841:	mov si, [bp + 6]	; 3: -117 118 6

localtime$22:	; IntegralToIntegral £temporary3653 timeZone
x3844:	mov ax, [bp + 12]	; 3: -117 70 12
x3847:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x3853:	cmp ax, 0	; 3: -125 -8 0
x3856:	jge localtime$23	; 2: 125 5
x3858:	neg ax	; 2: -9 -40
x3860:	neg eax	; 3: 102 -9 -40

localtime$23:	; SignedMultiply £temporary3654 £temporary3653 3600
x3863:	xor edx, edx	; 3: 102 49 -46
x3866:	imul dword [int4$3600#]	; 5: 102 -9 46 -18 11

localtime$24:	; BinaryAdd t £temporary3652 -> timePtr £temporary3654
x3871:	mov ebx, [si]	; 3: 102 -117 28
x3874:	add ebx, eax	; 3: 102 1 -61
x3877:	mov [bp + 14], ebx	; 4: 102 -119 94 14

localtime$25:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

localtime$26:	; address £temporary3656 t
x3881:	mov si, bp	; 2: -119 -18
x3883:	add si, 14	; 3: -125 -58 14

localtime$27:	; Parameter 18 £temporary3656 6
x3886:	mov [bp + 24], si	; 3: -119 118 24

localtime$28:	; Call 18 gmtime 0
x3889:	mov word [bp + 18], localtime$29	; 5: -57 70 18 63 15
x3894:	mov [bp + 20], bp	; 3: -119 110 20
x3897:	add bp, 18	; 3: -125 -59 18
x3900:	jmp gmtime	; 3: -23 -73 -4

localtime$29:	; PostCall 18

localtime$30:	; GetReturnValue £temporary3657

localtime$31:	; SetReturnValue £temporary3657

localtime$32:	; Return £temporary3657
x3903:	mov ax, [bp]	; 3: -117 70 0
x3906:	mov di, [bp + 4]	; 3: -117 126 4
x3909:	mov bp, [bp + 2]	; 3: -117 110 2
x3912:	jmp ax	; 2: -1 -32

localtime$33:	; FunctionEnd localtime

printf:	; address £temporary2379 format
x3914:	mov si, bp	; 2: -119 -18
x3916:	add si, 6	; 3: -125 -58 6

printf$1:	; IntegralToIntegral £temporary2380 £temporary2379

printf$2:	; BinaryAdd arg_list £temporary2380 2
x3919:	add si, 2	; 3: -125 -58 2
x3922:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printf$4:	; Parameter 10 format 6
x3925:	mov ax, [bp + 6]	; 3: -117 70 6
x3928:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; Parameter 10 arg_list 8
x3931:	mov ax, [di + 8]	; 3: -117 69 8
x3934:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; Call 10 vprintf 0
x3937:	mov word [di + 10], printf$7	; 5: -57 69 10 116 15
x3942:	mov [di + 12], bp	; 3: -119 109 12
x3945:	mov [di + 14], di	; 3: -119 125 14
x3948:	add di, 10	; 3: -125 -57 10
x3951:	mov bp, di	; 2: -119 -3
x3953:	nop	; 1: -112
x3954:	jmp vprintf	; 2: -21 11

printf$7:	; PostCall 10

printf$8:	; GetReturnValue £temporary2382

printf$9:	; SetReturnValue £temporary2382

printf$10:	; Return £temporary2382
x3956:	mov ax, [bp]	; 3: -117 70 0
x3959:	mov di, [bp + 4]	; 3: -117 126 4
x3962:	mov bp, [bp + 2]	; 3: -117 110 2
x3965:	jmp ax	; 2: -1 -32

printf$11:	; FunctionEnd printf

vprintf:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

vprintf$1:	; Parameter 10 stdout 6
x3967:	mov ax, [stdout]	; 3: -95 -86 15
x3970:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; Parameter 10 format 8
x3973:	mov ax, [bp + 6]	; 3: -117 70 6
x3976:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; Parameter 10 arg_list 10
x3979:	mov ax, [bp + 8]	; 3: -117 70 8
x3982:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; Call 10 vfprintf 0
x3985:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 -97 15
x3990:	mov [bp + 12], bp	; 3: -119 110 12
x3993:	add bp, 10	; 3: -125 -59 10
x3996:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; PostCall 10

vprintf$6:	; GetReturnValue £temporary2386

vprintf$7:	; SetReturnValue £temporary2386

vprintf$8:	; Return £temporary2386
x3999:	mov ax, [bp]	; 3: -117 70 0
x4002:	mov di, [bp + 4]	; 3: -117 126 4
x4005:	mov bp, [bp + 2]	; 3: -117 110 2
x4008:	jmp ax	; 2: -1 -32

vprintf$9:	; FunctionEnd vprintf

stdout:
x4010:	dw g_fileArray + 29	; 2: -55 15

g_fileArray:
x4012:	dw 1	; 2: 1 0
x4014:	dw 0	; 2: 0 0
x4016:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x4041:	dw 1	; 2: 1 0
x4043:	dw 1	; 2: 1 0
x4045:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x4070:	dw 1	; 2: 1 0
x4072:	dw 2	; 2: 2 0
x4074:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x4099:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

vfprintf:	; Assign g_outStatus 0
x4592:	mov word [g_outStatus], 0	; 6: -57 6 33 18 0 0

vfprintf$1:	; IntegralToIntegral £temporary2398 outStream
x4598:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; Assign g_outDevice £temporary2398
x4601:	mov [g_outDevice], ax	; 3: -93 35 18

vfprintf$3:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

vfprintf$4:	; Parameter 12 format 6
x4604:	mov ax, [bp + 8]	; 3: -117 70 8
x4607:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; Parameter 12 arg_list 8
x4610:	mov ax, [bp + 10]	; 3: -117 70 10
x4613:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; Call 12 printFormat 0
x4616:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 22 18
x4621:	mov [bp + 14], bp	; 3: -119 110 14
x4624:	add bp, 12	; 3: -125 -59 12
x4627:	nop	; 1: -112
x4628:	jmp printFormat	; 2: -21 15

vfprintf$7:	; PostCall 12

vfprintf$8:	; GetReturnValue £temporary2399

vfprintf$9:	; SetReturnValue £temporary2399

vfprintf$10:	; Return £temporary2399
x4630:	mov ax, [bp]	; 3: -117 70 0
x4633:	mov di, [bp + 4]	; 3: -117 126 4
x4636:	mov bp, [bp + 2]	; 3: -117 110 2
x4639:	jmp ax	; 2: -1 -32

vfprintf$11:	; FunctionEnd vfprintf

g_outStatus:
x4641:	db 0, 0	; 2: 0 0

g_outDevice:
x4643:	db 0, 0	; 2: 0 0

printFormat:	; Assign width 0
x4645:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; Assign precision 0
x4650:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; Assign percent 0
x4655:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; Assign plus 0
x4660:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; Assign minus 0
x4665:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; Assign space 0
x4670:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; Assign zero 0
x4675:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; Assign grid 0
x4680:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; Assign widthStar 0
x4685:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; Assign period 0
x4690:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; Assign precisionStar 0
x4695:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; Assign shortInt 0
x4700:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; Assign longInt 0
x4705:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; Assign longDouble 0
x4710:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; Assign g_outChars 0
x4715:	mov word [g_outChars], 0	; 6: -57 6 127 23 0 0

printFormat$15:	; Assign index 0
x4721:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; BinaryAdd £temporary2233 format index
x4726:	mov si, [bp + 6]	; 3: -117 118 6
x4729:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; Deref £temporary2232 -> £temporary2233 £temporary2233 0

printFormat$18:	; Equal 285 £temporary2232 -> £temporary2233 0
x4732:	cmp byte [si], 0	; 3: -128 60 0
x4735:	je printFormat$285	; 4: 15 -124 -42 4

printFormat$19:	; BinaryAdd £temporary2237 format index
x4739:	mov si, [bp + 6]	; 3: -117 118 6
x4742:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; Deref £temporary2236 -> £temporary2237 £temporary2237 0

printFormat$21:	; Assign c £temporary2236 -> £temporary2237
x4745:	mov al, [si]	; 2: -118 4
x4747:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; Equal 263 percent 0
x4750:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x4754:	je printFormat$263	; 4: 15 -124 91 4

printFormat$23:	; Case 52 c 43
x4758:	mov al, [bp + 40]	; 3: -118 70 40
x4761:	cmp al, 43	; 2: 60 43
x4763:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; Case 54 c 45
x4767:	cmp al, 45	; 2: 60 45
x4769:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; Case 56 c 32
x4773:	cmp al, 32	; 2: 60 32
x4775:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; Case 58 c 48
x4779:	cmp al, 48	; 2: 60 48
x4781:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; Case 60 c 35
x4785:	cmp al, 35	; 2: 60 35
x4787:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; Case 62 c 46
x4791:	cmp al, 46	; 2: 60 46
x4793:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; Case 64 c 42
x4797:	cmp al, 42	; 2: 60 42
x4799:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; Case 69 c 104
x4803:	cmp al, 104	; 2: 60 104
x4805:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; Case 71 c 108
x4809:	cmp al, 108	; 2: 60 108
x4811:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; Case 73 c 76
x4815:	cmp al, 76	; 2: 60 76
x4817:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; Case 75 c 37
x4821:	cmp al, 37	; 2: 60 37
x4823:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; Case 75 c 110
x4827:	cmp al, 110	; 2: 60 110
x4829:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; Case 75 c 112
x4833:	cmp al, 112	; 2: 60 112
x4835:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; Case 75 c 71
x4839:	cmp al, 71	; 2: 60 71
x4841:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; Case 75 c 103
x4845:	cmp al, 103	; 2: 60 103
x4847:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; Case 75 c 69
x4851:	cmp al, 69	; 2: 60 69
x4853:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; Case 75 c 101
x4857:	cmp al, 101	; 2: 60 101
x4859:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; Case 75 c 102
x4863:	cmp al, 102	; 2: 60 102
x4865:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; Case 75 c 115
x4869:	cmp al, 115	; 2: 60 115
x4871:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; Case 75 c 99
x4875:	cmp al, 99	; 2: 60 99
x4877:	je printFormat$75	; 2: 116 125

printFormat$43:	; Case 75 c 88
x4879:	cmp al, 88	; 2: 60 88
x4881:	je printFormat$75	; 2: 116 121

printFormat$44:	; Case 75 c 120
x4883:	cmp al, 120	; 2: 60 120
x4885:	je printFormat$75	; 2: 116 117

printFormat$45:	; Case 75 c 111
x4887:	cmp al, 111	; 2: 60 111
x4889:	je printFormat$75	; 2: 116 113

printFormat$46:	; Case 75 c 98
x4891:	cmp al, 98	; 2: 60 98
x4893:	je printFormat$75	; 2: 116 109

printFormat$47:	; Case 75 c 117
x4895:	cmp al, 117	; 2: 60 117
x4897:	je printFormat$75	; 2: 116 105

printFormat$48:	; Case 75 c 100
x4899:	cmp al, 100	; 2: 60 100
x4901:	je printFormat$75	; 2: 116 101

printFormat$49:	; Case 75 c 105
x4903:	cmp al, 105	; 2: 60 105
x4905:	je printFormat$75	; 2: 116 97

printFormat$50:	; CaseEnd c

printFormat$51:	; Goto 239
x4907:	jmp printFormat$239	; 3: -23 78 3

printFormat$52:	; Assign plus 1
x4910:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; Goto 283
x4915:	jmp printFormat$283	; 3: -23 29 4

printFormat$54:	; Assign minus 1
x4918:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; Goto 283
x4923:	jmp printFormat$283	; 3: -23 21 4

printFormat$56:	; Assign space 1
x4926:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; Goto 283
x4931:	jmp printFormat$283	; 3: -23 13 4

printFormat$58:	; Assign zero 1
x4934:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; Goto 283
x4939:	jmp printFormat$283	; 3: -23 5 4

printFormat$60:	; Assign grid 1
x4942:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; Goto 283
x4947:	jmp printFormat$283	; 3: -23 -3 3

printFormat$62:	; Assign period 1
x4950:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; Goto 283
x4955:	jmp printFormat$283	; 3: -23 -11 3

printFormat$64:	; NotEqual 67 period 0
x4958:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x4962:	jne printFormat$67	; 2: 117 8

printFormat$65:	; Assign width -1
x4964:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; Goto 283
x4969:	jmp printFormat$283	; 3: -23 -25 3

printFormat$67:	; Assign precision -1
x4972:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; Goto 283
x4977:	jmp printFormat$283	; 3: -23 -33 3

printFormat$69:	; Assign shortInt 1
x4980:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; Goto 283
x4985:	jmp printFormat$283	; 3: -23 -41 3

printFormat$71:	; Assign longInt 1
x4988:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; Goto 283
x4993:	jmp printFormat$283	; 3: -23 -49 3

printFormat$73:	; Assign longDouble 1
x4996:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; Goto 283
x5001:	jmp printFormat$283	; 3: -23 -57 3

printFormat$75:	; Equal 107 minus 0
x5004:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x5008:	je printFormat$107	; 4: 15 -124 -116 0

printFormat$76:	; Assign startChars g_outChars
x5012:	mov ax, [g_outChars]	; 3: -95 127 23
x5015:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; CallHeader 43 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$78:	; BinaryAdd £temporary2241 format index
x5018:	mov si, [bp + 6]	; 3: -117 118 6
x5021:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; Deref £temporary2240 -> £temporary2241 £temporary2241 0

printFormat$80:	; address £temporary2242 £temporary2240 -> £temporary2241

printFormat$81:	; Parameter 43 £temporary2242 6
x5024:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; Parameter 43 arg_list 8
x5027:	mov ax, [bp + 8]	; 3: -117 70 8
x5030:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; Parameter 43 plus 10
x5033:	mov ax, [bp + 18]	; 3: -117 70 18
x5036:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; Parameter 43 space 12
x5039:	mov ax, [bp + 22]	; 3: -117 70 22
x5042:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; Parameter 43 grid 14
x5045:	mov ax, [bp + 26]	; 3: -117 70 26
x5048:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; address £temporary2243 width
x5051:	mov si, bp	; 2: -119 -18
x5053:	add si, 12	; 3: -125 -58 12

printFormat$87:	; Parameter 43 £temporary2243 16
x5056:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; Parameter 43 precision 18
x5059:	mov ax, [bp + 14]	; 3: -117 70 14
x5062:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; Parameter 43 shortInt 20
x5065:	mov ax, [bp + 34]	; 3: -117 70 34
x5068:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; Parameter 43 longInt 22
x5071:	mov ax, [bp + 36]	; 3: -117 70 36
x5074:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; Parameter 43 longDouble 24
x5077:	mov ax, [bp + 38]	; 3: -117 70 38
x5080:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; Parameter 43 1 26
x5083:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; Parameter 43 0 28
x5088:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; Call 43 printArgument 0
x5093:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 -13 19
x5098:	mov [bp + 45], bp	; 3: -119 110 45
x5101:	add bp, 43	; 3: -125 -59 43
x5104:	jmp printArgument	; 3: -23 -112 3

printFormat$95:	; PostCall 43

printFormat$96:	; GetReturnValue £temporary2244

printFormat$97:	; Assign arg_list £temporary2244
x5107:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; BinarySubtract field g_outChars startChars
x5110:	mov ax, [g_outChars]	; 3: -95 127 23
x5113:	sub ax, [bp + 41]	; 3: 43 70 41
x5116:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$99:	; Assign £temporary2246 field
x5119:	mov ax, [bp + 43]	; 3: -117 70 43

printFormat$100:	; Increment field
x5122:	inc word [bp + 43]	; 3: -1 70 43

printFormat$101:	; SignedGreaterThanEqual 237 £temporary2246 width
x5125:	cmp ax, [bp + 12]	; 3: 59 70 12
x5128:	jge printFormat$237	; 4: 15 -115 104 2

printFormat$102:	; CallHeader 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$103:	; Parameter 45 32 6
x5132:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$104:	; Call 45 printChar 0
x5136:	mov word [bp + 45], printFormat$105	; 5: -57 70 45 30 20
x5141:	mov [bp + 47], bp	; 3: -119 110 47
x5144:	add bp, 45	; 3: -125 -59 45
x5147:	jmp printChar	; 3: -23 120 10

printFormat$105:	; PostCall 45

printFormat$106:	; Goto 99
x5150:	jmp printFormat$99	; 2: -21 -33

printFormat$107:	; Equal 184 zero 0
x5152:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x5156:	je printFormat$184	; 4: 15 -124 84 1

printFormat$108:	; Assign startChars g_outChars
x5160:	mov ax, [g_outChars]	; 3: -95 127 23
x5163:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$109:	; Assign oldOutStatus g_outStatus
x5166:	mov ax, [g_outStatus]	; 3: -95 33 18
x5169:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$110:	; Assign negative 0
x5172:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$111:	; Assign g_outStatus 2
x5177:	mov word [g_outStatus], 2	; 6: -57 6 33 18 2 0

printFormat$112:	; CallHeader 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$113:	; BinaryAdd £temporary2250 format index
x5183:	mov si, [bp + 6]	; 3: -117 118 6
x5186:	add si, [bp + 10]	; 3: 3 118 10

printFormat$114:	; Deref £temporary2249 -> £temporary2250 £temporary2250 0

printFormat$115:	; address £temporary2251 £temporary2249 -> £temporary2250

printFormat$116:	; Parameter 47 £temporary2251 6
x5189:	mov [bp + 53], si	; 3: -119 118 53

printFormat$117:	; Parameter 47 arg_list 8
x5192:	mov ax, [bp + 8]	; 3: -117 70 8
x5195:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$118:	; Parameter 47 0 10
x5198:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$119:	; Parameter 47 0 12
x5203:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$120:	; Parameter 47 grid 14
x5208:	mov ax, [bp + 26]	; 3: -117 70 26
x5211:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$121:	; address £temporary2252 width
x5214:	mov si, bp	; 2: -119 -18
x5216:	add si, 12	; 3: -125 -58 12

printFormat$122:	; Parameter 47 £temporary2252 16
x5219:	mov [bp + 63], si	; 3: -119 118 63

printFormat$123:	; Parameter 47 precision 18
x5222:	mov ax, [bp + 14]	; 3: -117 70 14
x5225:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$124:	; Parameter 47 shortInt 20
x5228:	mov ax, [bp + 34]	; 3: -117 70 34
x5231:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$125:	; Parameter 47 longInt 22
x5234:	mov ax, [bp + 36]	; 3: -117 70 36
x5237:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$126:	; Parameter 47 longDouble 24
x5240:	mov ax, [bp + 38]	; 3: -117 70 38
x5243:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$127:	; Parameter 47 0 26
x5246:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$128:	; address £temporary2253 negative
x5251:	mov si, bp	; 2: -119 -18
x5253:	add si, 45	; 3: -125 -58 45

printFormat$129:	; Parameter 47 £temporary2253 28
x5256:	mov [bp + 75], si	; 3: -119 118 75

printFormat$130:	; Call 47 printArgument 0
x5259:	mov word [bp + 47], printFormat$131	; 5: -57 70 47 -103 20
x5264:	mov [bp + 49], bp	; 3: -119 110 49
x5267:	add bp, 47	; 3: -125 -59 47
x5270:	jmp printArgument	; 3: -23 -22 2

printFormat$131:	; PostCall 47

printFormat$132:	; Assign g_outStatus oldOutStatus
x5273:	mov ax, [bp + 43]	; 3: -117 70 43
x5276:	mov [g_outStatus], ax	; 3: -93 33 18

printFormat$133:	; BinarySubtract field g_outChars startChars
x5279:	mov ax, [g_outChars]	; 3: -95 127 23
x5282:	sub ax, [bp + 41]	; 3: 43 70 41
x5285:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$134:	; Assign g_outChars startChars
x5288:	mov ax, [bp + 41]	; 3: -117 70 41
x5291:	mov [g_outChars], ax	; 3: -93 127 23

printFormat$135:	; Equal 142 negative 0
x5294:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x5298:	je printFormat$142	; 2: 116 23

printFormat$136:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$137:	; Parameter 49 45 6
x5300:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$138:	; Call 49 printChar 0
x5304:	mov word [bp + 49], printFormat$139	; 5: -57 70 49 -58 20
x5309:	mov [bp + 51], bp	; 3: -119 110 51
x5312:	add bp, 49	; 3: -125 -59 49
x5315:	jmp printChar	; 3: -23 -48 9

printFormat$139:	; PostCall 49

printFormat$140:	; Increment field
x5318:	inc word [bp + 47]	; 3: -1 70 47

printFormat$141:	; Goto 155
x5321:	jmp printFormat$155	; 2: -21 56

printFormat$142:	; Equal 149 plus 0
x5323:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x5327:	je printFormat$149	; 2: 116 23

printFormat$143:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$144:	; Parameter 49 43 6
x5329:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$145:	; Call 49 printChar 0
x5333:	mov word [bp + 49], printFormat$146	; 5: -57 70 49 -29 20
x5338:	mov [bp + 51], bp	; 3: -119 110 51
x5341:	add bp, 49	; 3: -125 -59 49
x5344:	jmp printChar	; 3: -23 -77 9

printFormat$146:	; PostCall 49

printFormat$147:	; Increment field
x5347:	inc word [bp + 47]	; 3: -1 70 47

printFormat$148:	; Goto 155
x5350:	jmp printFormat$155	; 2: -21 27

printFormat$149:	; Equal 155 space 0
x5352:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x5356:	je printFormat$155	; 2: 116 21

printFormat$150:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$151:	; Parameter 49 32 6
x5358:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$152:	; Call 49 printChar 0
x5362:	mov word [bp + 49], printFormat$153	; 5: -57 70 49 0 21
x5367:	mov [bp + 51], bp	; 3: -119 110 51
x5370:	add bp, 49	; 3: -125 -59 49
x5373:	jmp printChar	; 3: -23 -106 9

printFormat$153:	; PostCall 49

printFormat$154:	; Increment field
x5376:	inc word [bp + 47]	; 3: -1 70 47

printFormat$155:	; Assign £temporary2265 field
x5379:	mov ax, [bp + 47]	; 3: -117 70 47

printFormat$156:	; Increment field
x5382:	inc word [bp + 47]	; 3: -1 70 47

printFormat$157:	; SignedGreaterThanEqual 163 £temporary2265 width
x5385:	cmp ax, [bp + 12]	; 3: 59 70 12
x5388:	jge printFormat$163	; 2: 125 20

printFormat$158:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$159:	; Parameter 49 48 6
x5390:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$160:	; Call 49 printChar 0
x5394:	mov word [bp + 49], printFormat$161	; 5: -57 70 49 32 21
x5399:	mov [bp + 51], bp	; 3: -119 110 51
x5402:	add bp, 49	; 3: -125 -59 49
x5405:	jmp printChar	; 3: -23 118 9

printFormat$161:	; PostCall 49

printFormat$162:	; Goto 155
x5408:	jmp printFormat$155	; 2: -21 -31

printFormat$163:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$164:	; BinaryAdd £temporary2269 format index
x5410:	mov si, [bp + 6]	; 3: -117 118 6
x5413:	add si, [bp + 10]	; 3: 3 118 10

printFormat$165:	; Deref £temporary2268 -> £temporary2269 £temporary2269 0

printFormat$166:	; address £temporary2270 £temporary2268 -> £temporary2269

printFormat$167:	; Parameter 49 £temporary2270 6
x5416:	mov [bp + 55], si	; 3: -119 118 55

printFormat$168:	; Parameter 49 arg_list 8
x5419:	mov ax, [bp + 8]	; 3: -117 70 8
x5422:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$169:	; Parameter 49 0 10
x5425:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$170:	; Parameter 49 0 12
x5430:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$171:	; Parameter 49 grid 14
x5435:	mov ax, [bp + 26]	; 3: -117 70 26
x5438:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$172:	; Parameter 49 0 16
x5441:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$173:	; Parameter 49 precision 18
x5446:	mov ax, [bp + 14]	; 3: -117 70 14
x5449:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$174:	; Parameter 49 shortInt 20
x5452:	mov ax, [bp + 34]	; 3: -117 70 34
x5455:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$175:	; Parameter 49 longInt 22
x5458:	mov ax, [bp + 36]	; 3: -117 70 36
x5461:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$176:	; Parameter 49 longDouble 24
x5464:	mov ax, [bp + 38]	; 3: -117 70 38
x5467:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$177:	; Parameter 49 0 26
x5470:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$178:	; Parameter 49 0 28
x5475:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$179:	; Call 49 printArgument 0
x5480:	mov word [bp + 49], printFormat$180	; 5: -57 70 49 118 21
x5485:	mov [bp + 51], bp	; 3: -119 110 51
x5488:	add bp, 49	; 3: -125 -59 49
x5491:	jmp printArgument	; 3: -23 13 2

printFormat$180:	; PostCall 49

printFormat$181:	; GetReturnValue £temporary2271

printFormat$182:	; Assign arg_list £temporary2271
x5494:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$183:	; Goto 237
x5497:	jmp printFormat$237	; 3: -23 -8 0

printFormat$184:	; Assign startChars g_outChars
x5500:	mov ax, [g_outChars]	; 3: -95 127 23
x5503:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$185:	; Assign oldOutStatus g_outStatus
x5506:	mov ax, [g_outStatus]	; 3: -95 33 18
x5509:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$186:	; Assign g_outStatus 2
x5512:	mov word [g_outStatus], 2	; 6: -57 6 33 18 2 0

printFormat$187:	; CallHeader 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$188:	; BinaryAdd £temporary2273 format index
x5518:	mov si, [bp + 6]	; 3: -117 118 6
x5521:	add si, [bp + 10]	; 3: 3 118 10

printFormat$189:	; Deref £temporary2272 -> £temporary2273 £temporary2273 0

printFormat$190:	; address £temporary2274 £temporary2272 -> £temporary2273

printFormat$191:	; Parameter 45 £temporary2274 6
x5524:	mov [bp + 51], si	; 3: -119 118 51

printFormat$192:	; Parameter 45 arg_list 8
x5527:	mov ax, [bp + 8]	; 3: -117 70 8
x5530:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$193:	; Parameter 45 plus 10
x5533:	mov ax, [bp + 18]	; 3: -117 70 18
x5536:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$194:	; Parameter 45 space 12
x5539:	mov ax, [bp + 22]	; 3: -117 70 22
x5542:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$195:	; Parameter 45 grid 14
x5545:	mov ax, [bp + 26]	; 3: -117 70 26
x5548:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$196:	; address £temporary2275 width
x5551:	mov si, bp	; 2: -119 -18
x5553:	add si, 12	; 3: -125 -58 12

printFormat$197:	; Parameter 45 £temporary2275 16
x5556:	mov [bp + 61], si	; 3: -119 118 61

printFormat$198:	; Parameter 45 precision 18
x5559:	mov ax, [bp + 14]	; 3: -117 70 14
x5562:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$199:	; Parameter 45 shortInt 20
x5565:	mov ax, [bp + 34]	; 3: -117 70 34
x5568:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$200:	; Parameter 45 longInt 22
x5571:	mov ax, [bp + 36]	; 3: -117 70 36
x5574:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$201:	; Parameter 45 longDouble 24
x5577:	mov ax, [bp + 38]	; 3: -117 70 38
x5580:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$202:	; Parameter 45 1 26
x5583:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$203:	; Parameter 45 0 28
x5588:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$204:	; Call 45 printArgument 0
x5593:	mov word [bp + 45], printFormat$205	; 5: -57 70 45 -25 21
x5598:	mov [bp + 47], bp	; 3: -119 110 47
x5601:	add bp, 45	; 3: -125 -59 45
x5604:	jmp printArgument	; 3: -23 -100 1

printFormat$205:	; PostCall 45

printFormat$206:	; Assign g_outStatus oldOutStatus
x5607:	mov ax, [bp + 43]	; 3: -117 70 43
x5610:	mov [g_outStatus], ax	; 3: -93 33 18

printFormat$207:	; BinarySubtract field g_outChars startChars
x5613:	mov ax, [g_outChars]	; 3: -95 127 23
x5616:	sub ax, [bp + 41]	; 3: 43 70 41
x5619:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$208:	; Assign g_outChars startChars
x5622:	mov ax, [bp + 41]	; 3: -117 70 41
x5625:	mov [g_outChars], ax	; 3: -93 127 23

printFormat$209:	; Assign £temporary2278 field
x5628:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$210:	; Increment field
x5631:	inc word [bp + 45]	; 3: -1 70 45

printFormat$211:	; SignedGreaterThanEqual 217 £temporary2278 width
x5634:	cmp ax, [bp + 12]	; 3: 59 70 12
x5637:	jge printFormat$217	; 2: 125 20

printFormat$212:	; CallHeader 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$213:	; Parameter 47 32 6
x5639:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$214:	; Call 47 printChar 0
x5643:	mov word [bp + 47], printFormat$215	; 5: -57 70 47 25 22
x5648:	mov [bp + 49], bp	; 3: -119 110 49
x5651:	add bp, 47	; 3: -125 -59 47
x5654:	jmp printChar	; 3: -23 125 8

printFormat$215:	; PostCall 47

printFormat$216:	; Goto 209
x5657:	jmp printFormat$209	; 2: -21 -31

printFormat$217:	; CallHeader 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$218:	; BinaryAdd £temporary2282 format index
x5659:	mov si, [bp + 6]	; 3: -117 118 6
x5662:	add si, [bp + 10]	; 3: 3 118 10

printFormat$219:	; Deref £temporary2281 -> £temporary2282 £temporary2282 0

printFormat$220:	; address £temporary2283 £temporary2281 -> £temporary2282

printFormat$221:	; Parameter 47 £temporary2283 6
x5665:	mov [bp + 53], si	; 3: -119 118 53

printFormat$222:	; Parameter 47 arg_list 8
x5668:	mov ax, [bp + 8]	; 3: -117 70 8
x5671:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$223:	; Parameter 47 plus 10
x5674:	mov ax, [bp + 18]	; 3: -117 70 18
x5677:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$224:	; Parameter 47 space 12
x5680:	mov ax, [bp + 22]	; 3: -117 70 22
x5683:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$225:	; Parameter 47 grid 14
x5686:	mov ax, [bp + 26]	; 3: -117 70 26
x5689:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$226:	; Parameter 47 0 16
x5692:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$227:	; Parameter 47 precision 18
x5697:	mov ax, [bp + 14]	; 3: -117 70 14
x5700:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$228:	; Parameter 47 shortInt 20
x5703:	mov ax, [bp + 34]	; 3: -117 70 34
x5706:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$229:	; Parameter 47 longInt 22
x5709:	mov ax, [bp + 36]	; 3: -117 70 36
x5712:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$230:	; Parameter 47 longDouble 24
x5715:	mov ax, [bp + 38]	; 3: -117 70 38
x5718:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$231:	; Parameter 47 1 26
x5721:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$232:	; Parameter 47 0 28
x5726:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$233:	; Call 47 printArgument 0
x5731:	mov word [bp + 47], printFormat$234	; 5: -57 70 47 113 22
x5736:	mov [bp + 49], bp	; 3: -119 110 49
x5739:	add bp, 47	; 3: -125 -59 47
x5742:	jmp printArgument	; 3: -23 18 1

printFormat$234:	; PostCall 47

printFormat$235:	; GetReturnValue £temporary2284

printFormat$236:	; Assign arg_list £temporary2284
x5745:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$237:	; Assign percent 0
x5748:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$238:	; Goto 283
x5753:	jmp printFormat$283	; 3: -23 -41 0

printFormat$239:	; Assign value 0
x5756:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$240:	; CallHeader 43 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$241:	; IntegralToIntegral £temporary2287 c
x5761:	mov al, [bp + 40]	; 3: -118 70 40
x5764:	and ax, 255	; 3: 37 -1 0
x5767:	cmp al, 0	; 2: 60 0
x5769:	jge printFormat$242	; 2: 125 4
x5771:	neg al	; 2: -10 -40
x5773:	neg ax	; 2: -9 -40

printFormat$242:	; Parameter 43 £temporary2287 6
x5775:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$243:	; Call 43 isdigit 0
x5778:	mov word [bp + 43], printFormat$244	; 5: -57 70 43 -96 22
x5783:	mov [bp + 45], bp	; 3: -119 110 45
x5786:	add bp, 43	; 3: -125 -59 43
x5789:	jmp isdigit	; 3: -23 -86 19

printFormat$244:	; PostCall 43

printFormat$245:	; GetReturnValue £temporary2288

printFormat$246:	; Equal 257 £temporary2288 0
x5792:	cmp bx, 0	; 3: -125 -5 0
x5795:	je printFormat$257	; 2: 116 51

printFormat$247:	; SignedMultiply £temporary2289 value 10
x5797:	mov ax, [bp + 41]	; 3: -117 70 41
x5800:	xor dx, dx	; 2: 49 -46
x5802:	imul word [int2$10#]	; 4: -9 46 -127 23

printFormat$248:	; BinarySubtract £temporary2290 c 48
x5806:	mov bl, [bp + 40]	; 3: -118 94 40
x5809:	sub bl, 48	; 3: -128 -21 48

printFormat$249:	; IntegralToIntegral £temporary2291 £temporary2290
x5812:	and bx, 255	; 4: -127 -29 -1 0
x5816:	cmp bl, 0	; 3: -128 -5 0
x5819:	jge printFormat$250	; 2: 125 4
x5821:	neg bl	; 2: -10 -37
x5823:	neg bx	; 2: -9 -37

printFormat$250:	; BinaryAdd value £temporary2289 £temporary2291
x5825:	add ax, bx	; 2: 1 -40
x5827:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$251:	; Increment index
x5830:	inc word [bp + 10]	; 3: -1 70 10

printFormat$252:	; Assign £temporary2293 index
x5833:	mov ax, [bp + 10]	; 3: -117 70 10

printFormat$253:	; BinaryAdd £temporary2295 format £temporary2293
x5836:	mov si, [bp + 6]	; 3: -117 118 6
x5839:	add si, ax	; 2: 1 -58

printFormat$254:	; Deref £temporary2294 -> £temporary2295 £temporary2295 0

printFormat$255:	; Assign c £temporary2294 -> £temporary2295
x5841:	mov al, [si]	; 2: -118 4
x5843:	mov [bp + 40], al	; 3: -120 70 40

printFormat$256:	; Goto 240
x5846:	jmp printFormat$240	; 2: -21 -87

printFormat$257:	; Decrement index
x5848:	dec word [bp + 10]	; 3: -1 78 10

printFormat$258:	; NotEqual 261 period 0
x5851:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x5855:	jne printFormat$261	; 2: 117 8

printFormat$259:	; Assign width value
x5857:	mov ax, [bp + 41]	; 3: -117 70 41
x5860:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$260:	; Goto 283
x5863:	jmp printFormat$283	; 2: -21 106

printFormat$261:	; Assign precision value
x5865:	mov ax, [bp + 41]	; 3: -117 70 41
x5868:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$262:	; Goto 283
x5871:	jmp printFormat$283	; 2: -21 98

printFormat$263:	; NotEqual 279 c 37
x5873:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x5877:	jne printFormat$279	; 2: 117 72

printFormat$264:	; Assign percent 1
x5879:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$265:	; Assign plus 0
x5884:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$266:	; Assign minus 0
x5889:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$267:	; Assign space 0
x5894:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$268:	; Assign zero 0
x5899:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$269:	; Assign grid 0
x5904:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$270:	; Assign widthStar 0
x5909:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$271:	; Assign period 0
x5914:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$272:	; Assign precisionStar 0
x5919:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$273:	; Assign shortInt 0
x5924:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$274:	; Assign longInt 0
x5929:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$275:	; Assign longDouble 0
x5934:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$276:	; Assign width 0
x5939:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$277:	; Assign precision 0
x5944:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$278:	; Goto 283
x5949:	jmp printFormat$283	; 2: -21 20

printFormat$279:	; CallHeader 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$280:	; Parameter 41 c 6
x5951:	mov al, [bp + 40]	; 3: -118 70 40
x5954:	mov [bp + 47], al	; 3: -120 70 47

printFormat$281:	; Call 41 printChar 0
x5957:	mov word [bp + 41], printFormat$282	; 5: -57 70 41 83 23
x5962:	mov [bp + 43], bp	; 3: -119 110 43
x5965:	add bp, 41	; 3: -125 -59 41
x5968:	jmp printChar	; 3: -23 67 7

printFormat$282:	; PostCall 41

printFormat$283:	; Increment index
x5971:	inc word [bp + 10]	; 3: -1 70 10

printFormat$284:	; Goto 16
x5974:	jmp printFormat$16	; 3: -23 29 -5

printFormat$285:	; NotEqual 291 g_outStatus 1
x5977:	cmp word [g_outStatus], 1	; 5: -125 62 33 18 1
x5982:	jne printFormat$291	; 2: 117 16

printFormat$286:	; IntegralToIntegral £temporary2304 g_outDevice
x5984:	mov ax, [g_outDevice]	; 3: -95 35 18

printFormat$287:	; Assign outString £temporary2304
x5987:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$288:	; BinaryAdd £temporary2306 outString g_outChars
x5990:	mov si, [bp + 40]	; 3: -117 118 40
x5993:	add si, [g_outChars]	; 4: 3 54 127 23

printFormat$289:	; Deref £temporary2305 -> £temporary2306 £temporary2306 0

printFormat$290:	; Assign £temporary2305 -> £temporary2306 0
x5997:	mov byte [si], 0	; 3: -58 4 0

printFormat$291:	; SetReturnValue g_outChars
x6000:	mov bx, [g_outChars]	; 4: -117 30 127 23

printFormat$292:	; Return g_outChars
x6004:	mov ax, [bp]	; 3: -117 70 0
x6007:	mov di, [bp + 4]	; 3: -117 126 4
x6010:	mov bp, [bp + 2]	; 3: -117 110 2
x6013:	jmp ax	; 2: -1 -32

printFormat$293:	; FunctionEnd printFormat

g_outChars:
x6015:	db 0, 0	; 2: 0 0

int2$10#:
x6017:	dw 10	; 2: 10 0

printArgument:	; Deref £temporary2006 -> format format 0
x6019:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; Assign c £temporary2006 -> format
x6022:	mov al, [si]	; 2: -118 4
x6024:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; Case 21 c 100
x6027:	mov al, [bp + 30]	; 3: -118 70 30
x6030:	cmp al, 100	; 2: 60 100
x6032:	je printArgument$21	; 2: 116 97

printArgument$3:	; Case 21 c 105
x6034:	cmp al, 105	; 2: 60 105
x6036:	je printArgument$21	; 2: 116 93

printArgument$4:	; Case 73 c 99
x6038:	cmp al, 99	; 2: 60 99
x6040:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; Case 93 c 115
x6044:	cmp al, 115	; 2: 60 115
x6046:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; Case 113 c 88
x6050:	cmp al, 88	; 2: 60 88
x6052:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; Case 113 c 120
x6056:	cmp al, 120	; 2: 60 120
x6058:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; Case 113 c 98
x6062:	cmp al, 98	; 2: 60 98
x6064:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; Case 113 c 111
x6068:	cmp al, 111	; 2: 60 111
x6070:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; Case 113 c 117
x6074:	cmp al, 117	; 2: 60 117
x6076:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; Case 173 c 71
x6080:	cmp al, 71	; 2: 60 71
x6082:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; Case 173 c 103
x6086:	cmp al, 103	; 2: 60 103
x6088:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; Case 173 c 69
x6092:	cmp al, 69	; 2: 60 69
x6094:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; Case 173 c 101
x6098:	cmp al, 101	; 2: 60 101
x6100:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; Case 173 c 102
x6104:	cmp al, 102	; 2: 60 102
x6106:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; Case 299 c 112
x6110:	cmp al, 112	; 2: 60 112
x6112:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; Case 324 c 110
x6116:	cmp al, 110	; 2: 60 110
x6118:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; Case 346 c 37
x6122:	cmp al, 37	; 2: 60 37
x6124:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; CaseEnd c

printArgument$20:	; Goto 359
x6128:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; Equal 30 shortInt 0
x6131:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x6135:	je printArgument$30	; 2: 116 42

printArgument$22:	; BinaryAdd arg_list arg_list 2
x6137:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; BinarySubtract £temporary2008 arg_list 2
x6141:	mov si, [bp + 8]	; 3: -117 118 8
x6144:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; IntegralToIntegral £temporary2009 £temporary2008

printArgument$25:	; Deref £temporary2010 -> £temporary2009 £temporary2009 0

printArgument$26:	; IntegralToIntegral £temporary2011 £temporary2010 -> £temporary2009
x6147:	mov ax, [si]	; 2: -117 4
x6149:	cmp ax, 0	; 3: -125 -8 0
x6152:	jge printArgument$27	; 2: 125 4
x6154:	neg ax	; 2: -9 -40
x6156:	neg al	; 2: -10 -40

printArgument$27:	; IntegralToIntegral £temporary2012 £temporary2011
x6158:	and eax, 255	; 6: 102 37 -1 0 0 0
x6164:	cmp al, 0	; 2: 60 0
x6166:	jge printArgument$28	; 2: 125 5
x6168:	neg al	; 2: -10 -40
x6170:	neg eax	; 3: 102 -9 -40

printArgument$28:	; Assign longValue £temporary2012
x6173:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; Goto 43
x6177:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; Equal 37 longInt 0
x6179:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x6183:	je printArgument$37	; 2: 116 19

printArgument$31:	; BinaryAdd arg_list arg_list 4
x6185:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; BinarySubtract £temporary2014 arg_list 4
x6189:	mov si, [bp + 8]	; 3: -117 118 8
x6192:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; IntegralToIntegral £temporary2015 £temporary2014

printArgument$34:	; Deref £temporary2016 -> £temporary2015 £temporary2015 0

printArgument$35:	; Assign longValue £temporary2016 -> £temporary2015
x6195:	mov eax, [si]	; 3: 102 -117 4
x6198:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; Goto 43
x6202:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; BinaryAdd arg_list arg_list 2
x6204:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; BinarySubtract £temporary2018 arg_list 2
x6208:	mov si, [bp + 8]	; 3: -117 118 8
x6211:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; IntegralToIntegral £temporary2019 £temporary2018

printArgument$40:	; Deref £temporary2020 -> £temporary2019 £temporary2019 0

printArgument$41:	; IntegralToIntegral £temporary2021 £temporary2020 -> £temporary2019
x6214:	mov ax, [si]	; 2: -117 4
x6216:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x6222:	cmp ax, 0	; 3: -125 -8 0
x6225:	jge printArgument$42	; 2: 125 5
x6227:	neg ax	; 2: -9 -40
x6229:	neg eax	; 3: 102 -9 -40

printArgument$42:	; Assign longValue £temporary2021
x6232:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; Equal 50 negativePtr 0
x6236:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x6240:	je printArgument$50	; 2: 116 20

printArgument$44:	; Deref £temporary2025 -> negativePtr negativePtr 0
x6242:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; SignedGreaterThanEqual 48 longValue 0
x6245:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x6250:	jge printArgument$48	; 2: 125 5

printArgument$46:	; Assign £temporary2027 1
x6252:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; Goto 49
x6255:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; Assign £temporary2027 0
x6257:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; Assign £temporary2025 -> negativePtr £temporary2027
x6260:	mov [si], ax	; 2: -119 4

printArgument$50:	; NotEqual 57 sign 0
x6262:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x6266:	jne printArgument$57	; 2: 117 26

printArgument$51:	; CallHeader 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$52:	; Parameter 48 longValue 6
x6268:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x6272:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; Call 48 labs 0
x6276:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 -110 24
x6281:	mov [bp + 50], bp	; 3: -119 110 50
x6284:	add bp, 48	; 3: -125 -59 48
x6287:	jmp labs	; 3: -23 5 5

printArgument$54:	; PostCall 48

printArgument$55:	; GetReturnValue £temporary2030

printArgument$56:	; Assign longValue £temporary2030
x6290:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; CallHeader 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$58:	; Parameter 48 arg_list 6
x6294:	mov ax, [bp + 8]	; 3: -117 70 8
x6297:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; Parameter 48 widthPtr 8
x6300:	mov ax, [bp + 16]	; 3: -117 70 16
x6303:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; address £temporary2031 precision
x6306:	mov si, bp	; 2: -119 -18
x6308:	add si, 18	; 3: -125 -58 18

printArgument$61:	; Parameter 48 £temporary2031 10
x6311:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; Call 48 checkWidthAndPrecision 0
x6314:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 -72 24
x6319:	mov [bp + 50], bp	; 3: -119 110 50
x6322:	add bp, 48	; 3: -125 -59 48
x6325:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; PostCall 48

printArgument$64:	; GetReturnValue £temporary2032

printArgument$65:	; Assign arg_list £temporary2032
x6328:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; CallHeader 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$67:	; Parameter 48 longValue 6
x6331:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x6335:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; Parameter 48 plus 10
x6339:	mov ax, [bp + 10]	; 3: -117 70 10
x6342:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; Parameter 48 space 12
x6345:	mov ax, [bp + 12]	; 3: -117 70 12
x6348:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; Call 48 printLongInt 0
x6351:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 -35 24
x6356:	mov [bp + 50], bp	; 3: -119 110 50
x6359:	add bp, 48	; 3: -125 -59 48
x6362:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; PostCall 48

printArgument$72:	; Goto 359
x6365:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; BinaryAdd arg_list arg_list 2
x6368:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; BinarySubtract £temporary2035 arg_list 2
x6372:	mov si, [bp + 8]	; 3: -117 118 8
x6375:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; IntegralToIntegral £temporary2036 £temporary2035

printArgument$76:	; Deref £temporary2037 -> £temporary2036 £temporary2036 0

printArgument$77:	; IntegralToIntegral £temporary2038 £temporary2037 -> £temporary2036
x6378:	mov ax, [si]	; 2: -117 4
x6380:	cmp ax, 0	; 3: -125 -8 0
x6383:	jge printArgument$78	; 2: 125 4
x6385:	neg ax	; 2: -9 -40
x6387:	neg al	; 2: -10 -40

printArgument$78:	; Assign charValue £temporary2038
x6389:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$80:	; Parameter 44 arg_list 6
x6392:	mov ax, [bp + 8]	; 3: -117 70 8
x6395:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; Parameter 44 widthPtr 8
x6398:	mov ax, [bp + 16]	; 3: -117 70 16
x6401:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; address £temporary2039 precision
x6404:	mov si, bp	; 2: -119 -18
x6406:	add si, 18	; 3: -125 -58 18

printArgument$83:	; Parameter 44 £temporary2039 10
x6409:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; Call 44 checkWidthAndPrecision 0
x6412:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 26 25
x6417:	mov [bp + 46], bp	; 3: -119 110 46
x6420:	add bp, 44	; 3: -125 -59 44
x6423:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; PostCall 44

printArgument$86:	; GetReturnValue £temporary2040

printArgument$87:	; Assign arg_list £temporary2040
x6426:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$89:	; Parameter 44 charValue 6
x6429:	mov al, [bp + 31]	; 3: -118 70 31
x6432:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; Call 44 printChar 0
x6435:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 49 25
x6440:	mov [bp + 46], bp	; 3: -119 110 46
x6443:	add bp, 44	; 3: -125 -59 44
x6446:	jmp printChar	; 3: -23 101 5

printArgument$91:	; PostCall 44

printArgument$92:	; Goto 359
x6449:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; BinaryAdd arg_list arg_list 2
x6452:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; BinarySubtract £temporary2043 arg_list 2
x6456:	mov si, [bp + 8]	; 3: -117 118 8
x6459:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; IntegralToIntegral £temporary2044 £temporary2043

printArgument$96:	; Deref £temporary2045 -> £temporary2044 £temporary2044 0

printArgument$97:	; Assign stringValue £temporary2045 -> £temporary2044
x6462:	mov ax, [si]	; 2: -117 4
x6464:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$99:	; Parameter 46 arg_list 6
x6467:	mov ax, [bp + 8]	; 3: -117 70 8
x6470:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; Parameter 46 widthPtr 8
x6473:	mov ax, [bp + 16]	; 3: -117 70 16
x6476:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; address £temporary2046 precision
x6479:	mov si, bp	; 2: -119 -18
x6481:	add si, 18	; 3: -125 -58 18

printArgument$102:	; Parameter 46 £temporary2046 10
x6484:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; Call 46 checkWidthAndPrecision 0
x6487:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 101 25
x6492:	mov [bp + 48], bp	; 3: -119 110 48
x6495:	add bp, 46	; 3: -125 -59 46
x6498:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; PostCall 46

printArgument$105:	; GetReturnValue £temporary2047

printArgument$106:	; Assign arg_list £temporary2047
x6501:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$108:	; Parameter 46 stringValue 6
x6504:	mov ax, [bp + 44]	; 3: -117 70 44
x6507:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; Parameter 46 precision 8
x6510:	mov ax, [bp + 18]	; 3: -117 70 18
x6513:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; Call 46 printString 0
x6516:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 -126 25
x6521:	mov [bp + 48], bp	; 3: -119 110 48
x6524:	add bp, 46	; 3: -125 -59 46
x6527:	jmp printString	; 3: -23 -36 5

printArgument$111:	; PostCall 46

printArgument$112:	; Goto 359
x6530:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; NotEqual 116 c 117
x6533:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x6537:	jne printArgument$116	; 2: 117 8

printArgument$114:	; Assign £temporary2063 10
x6539:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; Goto 125
x6545:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; NotEqual 119 c 111
x6547:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x6551:	jne printArgument$119	; 2: 117 8

printArgument$117:	; Assign £temporary2059 8
x6553:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; Goto 124
x6559:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; NotEqual 122 c 98
x6561:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x6565:	jne printArgument$122	; 2: 117 8

printArgument$120:	; Assign £temporary2055 2
x6567:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; Goto 123
x6573:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; Assign £temporary2055 16
x6575:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; Assign £temporary2059 £temporary2055

printArgument$124:	; Assign £temporary2063 £temporary2059

printArgument$125:	; Assign base £temporary2063
x6581:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; Equal 135 shortInt 0
x6585:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x6589:	je printArgument$135	; 2: 116 24

printArgument$127:	; BinaryAdd arg_list arg_list 2
x6591:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; BinarySubtract £temporary2065 arg_list 2
x6595:	mov si, [bp + 8]	; 3: -117 118 8
x6598:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; IntegralToIntegral £temporary2066 £temporary2065

printArgument$130:	; Deref £temporary2067 -> £temporary2066 £temporary2066 0

printArgument$131:	; IntegralToIntegral £temporary2068 £temporary2067 -> £temporary2066
x6601:	mov ax, [si]	; 2: -117 4

printArgument$132:	; IntegralToIntegral £temporary2069 £temporary2068
x6603:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; Assign value £temporary2069
x6609:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; Goto 148
x6613:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; Equal 142 longInt 0
x6615:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x6619:	je printArgument$142	; 2: 116 19

printArgument$136:	; BinaryAdd arg_list arg_list 4
x6621:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; BinarySubtract £temporary2071 arg_list 4
x6625:	mov si, [bp + 8]	; 3: -117 118 8
x6628:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; IntegralToIntegral £temporary2072 £temporary2071

printArgument$139:	; Deref £temporary2073 -> £temporary2072 £temporary2072 0

printArgument$140:	; Assign value £temporary2073 -> £temporary2072
x6631:	mov eax, [si]	; 3: 102 -117 4
x6634:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; Goto 148
x6638:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; BinaryAdd arg_list arg_list 2
x6640:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; BinarySubtract £temporary2075 arg_list 2
x6644:	mov si, [bp + 8]	; 3: -117 118 8
x6647:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; IntegralToIntegral £temporary2076 £temporary2075

printArgument$145:	; Deref £temporary2077 -> £temporary2076 £temporary2076 0

printArgument$146:	; IntegralToIntegral £temporary2078 £temporary2077 -> £temporary2076
x6650:	mov ax, [si]	; 2: -117 4
x6652:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; Assign value £temporary2078
x6658:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; CallHeader 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$149:	; Parameter 52 arg_list 6
x6662:	mov ax, [bp + 8]	; 3: -117 70 8
x6665:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; Parameter 52 widthPtr 8
x6668:	mov ax, [bp + 16]	; 3: -117 70 16
x6671:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; address £temporary2081 precision
x6674:	mov si, bp	; 2: -119 -18
x6676:	add si, 18	; 3: -125 -58 18

printArgument$152:	; Parameter 52 £temporary2081 10
x6679:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; Call 52 checkWidthAndPrecision 0
x6682:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 40 26
x6687:	mov [bp + 54], bp	; 3: -119 110 54
x6690:	add bp, 52	; 3: -125 -59 52
x6693:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; PostCall 52

printArgument$155:	; GetReturnValue £temporary2082

printArgument$156:	; Assign arg_list £temporary2082
x6696:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; CallHeader 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$158:	; Parameter 52 value 6
x6699:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x6703:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; Parameter 52 plus 10
x6707:	mov ax, [bp + 10]	; 3: -117 70 10
x6710:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; Parameter 52 space 12
x6713:	mov ax, [bp + 12]	; 3: -117 70 12
x6716:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; Parameter 52 grid 14
x6719:	mov ax, [bp + 14]	; 3: -117 70 14
x6722:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; Parameter 52 base 16
x6725:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x6729:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; CallHeader 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$164:	; IntegralToIntegral £temporary2083 c
x6733:	mov al, [bp + 30]	; 3: -118 70 30
x6736:	and ax, 255	; 3: 37 -1 0
x6739:	cmp al, 0	; 2: 60 0
x6741:	jge printArgument$165	; 2: 125 4
x6743:	neg al	; 2: -10 -40
x6745:	neg ax	; 2: -9 -40

printArgument$165:	; Parameter 52 £temporary2083 26
x6747:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; Call 52 isupper 20
x6750:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 108 26
x6755:	mov [bp + 74], bp	; 3: -119 110 74
x6758:	add bp, 72	; 3: -125 -59 72
x6761:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; PostCall 52

printArgument$168:	; GetReturnValue £temporary2084

printArgument$169:	; Parameter 52 £temporary2084 20
x6764:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; Call 52 printUnsignedLong 0
x6767:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 125 26
x6772:	mov [bp + 54], bp	; 3: -119 110 54
x6775:	add bp, 52	; 3: -125 -59 52
x6778:	jmp printUnsignedLong	; 3: -23 -116 6

printArgument$171:	; PostCall 52

printArgument$172:	; Goto 359
x6781:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; Equal 190 longDouble 0
x6784:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x6788:	je printArgument$190	; 2: 116 57

printArgument$174:	; BinaryAdd arg_list arg_list 8
x6790:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; BinarySubtract £temporary2087 arg_list 8
x6794:	mov si, [bp + 8]	; 3: -117 118 8
x6797:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; IntegralToIntegral £temporary2088 £temporary2087

printArgument$177:	; Deref £temporary2089 -> £temporary2088 £temporary2088 0

printArgument$178:	; PushFloat £temporary2089 -> £temporary2088
x6800:	fld qword [si]	; 2: -35 4

printArgument$179:	; PopFloat longDoubleValue
x6802:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$181:	; PushFloat longDoubleValue
x6805:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; Parameter 44 longDoubleValue 6
x6808:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; Parameter 44 0 14
x6811:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; Parameter 44 0 16
x6816:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; Parameter 44 0 18
x6821:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; Parameter 44 3 20
x6826:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; Call 44 printLongDoublePlain 0
x6831:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 -67 26
x6836:	mov [bp + 46], bp	; 3: -119 110 46
x6839:	add bp, 44	; 3: -125 -59 44
x6842:	jmp printLongDoublePlain	; 3: -23 -9 7

printArgument$188:	; PostCall 44

printArgument$189:	; Goto 196
x6845:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; BinaryAdd arg_list arg_list 8
x6847:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; BinarySubtract £temporary2092 arg_list 8
x6851:	mov si, [bp + 8]	; 3: -117 118 8
x6854:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; IntegralToIntegral £temporary2093 £temporary2092

printArgument$193:	; Deref £temporary2094 -> £temporary2093 £temporary2093 0

printArgument$194:	; PushFloat £temporary2094 -> £temporary2093
x6857:	fld qword [si]	; 2: -35 4

printArgument$195:	; PopFloat longDoubleValue
x6859:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; Equal 205 negativePtr 0
x6862:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x6866:	je printArgument$205	; 2: 116 26

printArgument$197:	; Deref £temporary2098 -> negativePtr negativePtr 0
x6868:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; PushFloat longDoubleValue
x6871:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; PushZero
x6874:	fldz	; 2: -39 -18

printArgument$200:	; SignedGreaterThanEqual 203 longDoubleValue 0
x6876:	fcompp	; 2: -34 -39
x6878:	fstsw ax	; 3: -101 -33 -32
x6881:	sahf	; 1: -98
x6882:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; Assign £temporary2100 1
x6884:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; Goto 204
x6887:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; Assign £temporary2100 0
x6889:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; Assign £temporary2098 -> negativePtr £temporary2100
x6892:	mov [si], ax	; 2: -119 4

printArgument$205:	; NotEqual 213 sign 0
x6894:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x6898:	jne printArgument$213	; 2: 117 23

printArgument$206:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$207:	; PushFloat longDoubleValue
x6900:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; Parameter 44 longDoubleValue 6
x6903:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; Call 44 fabs 0
x6906:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 8 27
x6911:	mov [bp + 46], bp	; 3: -119 110 46
x6914:	add bp, 44	; 3: -125 -59 44
x6917:	jmp fabs	; 3: -23 -16 8

printArgument$210:	; PostCall 44

printArgument$211:	; GetReturnValue £temporary2103

printArgument$212:	; PopFloat longDoubleValue
x6920:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$214:	; Parameter 44 arg_list 6
x6923:	mov ax, [bp + 8]	; 3: -117 70 8
x6926:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; Parameter 44 widthPtr 8
x6929:	mov ax, [bp + 16]	; 3: -117 70 16
x6932:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; address £temporary2104 precision
x6935:	mov si, bp	; 2: -119 -18
x6937:	add si, 18	; 3: -125 -58 18

printArgument$217:	; Parameter 44 £temporary2104 10
x6940:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; Call 44 checkWidthAndPrecision 0
x6943:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 45 27
x6948:	mov [bp + 46], bp	; 3: -119 110 46
x6951:	add bp, 44	; 3: -125 -59 44
x6954:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; PostCall 44

printArgument$220:	; GetReturnValue £temporary2105

printArgument$221:	; Assign arg_list £temporary2105
x6957:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; NotEqual 233 c 102
x6960:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x6964:	jne printArgument$233	; 2: 117 47

printArgument$223:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$224:	; PushFloat longDoubleValue
x6966:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; Parameter 44 longDoubleValue 6
x6969:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; Parameter 44 plus 14
x6972:	mov ax, [bp + 10]	; 3: -117 70 10
x6975:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; Parameter 44 space 16
x6978:	mov ax, [bp + 12]	; 3: -117 70 12
x6981:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; Parameter 44 grid 18
x6984:	mov ax, [bp + 14]	; 3: -117 70 14
x6987:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; Parameter 44 precision 20
x6990:	mov ax, [bp + 18]	; 3: -117 70 18
x6993:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; Call 44 printLongDoublePlain 0
x6996:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 98 27
x7001:	mov [bp + 46], bp	; 3: -119 110 46
x7004:	add bp, 44	; 3: -125 -59 44
x7007:	jmp printLongDoublePlain	; 3: -23 82 7

printArgument$231:	; PostCall 44

printArgument$232:	; Goto 359
x7010:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$234:	; IntegralToIntegral £temporary2108 c
x7013:	mov al, [bp + 30]	; 3: -118 70 30
x7016:	and ax, 255	; 3: 37 -1 0
x7019:	cmp al, 0	; 2: 60 0
x7021:	jge printArgument$235	; 2: 125 4
x7023:	neg al	; 2: -10 -40
x7025:	neg ax	; 2: -9 -40

printArgument$235:	; Parameter 44 £temporary2108 6
x7027:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; Call 44 tolower 0
x7030:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 -124 27
x7035:	mov [bp + 46], bp	; 3: -119 110 46
x7038:	add bp, 44	; 3: -125 -59 44
x7041:	jmp tolower	; 3: -23 -106 8

printArgument$237:	; PostCall 44

printArgument$238:	; GetReturnValue £temporary2109

printArgument$239:	; NotEqual 257 £temporary2109 101
x7044:	cmp bx, 101	; 3: -125 -5 101
x7047:	jne printArgument$257	; 2: 117 81

printArgument$240:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$241:	; PushFloat longDoubleValue
x7049:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; Parameter 44 longDoubleValue 6
x7052:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; Parameter 44 plus 14
x7055:	mov ax, [bp + 10]	; 3: -117 70 10
x7058:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; Parameter 44 space 16
x7061:	mov ax, [bp + 12]	; 3: -117 70 12
x7064:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; Parameter 44 grid 18
x7067:	mov ax, [bp + 14]	; 3: -117 70 14
x7070:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; Parameter 44 precision 20
x7073:	mov ax, [bp + 18]	; 3: -117 70 18
x7076:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$248:	; IntegralToIntegral £temporary2111 c
x7079:	mov al, [bp + 30]	; 3: -118 70 30
x7082:	and ax, 255	; 3: 37 -1 0
x7085:	cmp al, 0	; 2: 60 0
x7087:	jge printArgument$249	; 2: 125 4
x7089:	neg al	; 2: -10 -40
x7091:	neg ax	; 2: -9 -40

printArgument$249:	; Parameter 44 £temporary2111 28
x7093:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; Call 44 isupper 22
x7096:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 -58 27
x7101:	mov [bp + 68], bp	; 3: -119 110 68
x7104:	add bp, 66	; 3: -125 -59 66
x7107:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; PostCall 44

printArgument$252:	; GetReturnValue £temporary2112

printArgument$253:	; Parameter 44 £temporary2112 22
x7110:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; Call 44 printLongDoubleExpo 0
x7113:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 -41 27
x7118:	mov [bp + 46], bp	; 3: -119 110 46
x7121:	add bp, 44	; 3: -125 -59 44
x7124:	jmp printLongDoubleExpo	; 3: -23 -28 8

printArgument$255:	; PostCall 44

printArgument$256:	; Goto 359
x7127:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$258:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$259:	; PushFloat longDoubleValue
x7130:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; Parameter 44 longDoubleValue 6
x7133:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; Call 44 fabs 0
x7136:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 -18 27
x7141:	mov [bp + 46], bp	; 3: -119 110 46
x7144:	add bp, 44	; 3: -125 -59 44
x7147:	jmp fabs	; 3: -23 10 8

printArgument$262:	; PostCall 44

printArgument$263:	; GetReturnValue £temporary2114

printArgument$264:	; Parameter 44 £temporary2114 6
x7150:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; Call 44 log10 0
x7153:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 -1 27
x7158:	mov [bp + 46], bp	; 3: -119 110 46
x7161:	add bp, 44	; 3: -125 -59 44
x7164:	jmp log10	; 3: -23 35 10

printArgument$266:	; PostCall 44

printArgument$267:	; GetReturnValue £temporary2115

printArgument$268:	; FloatingToIntegral £temporary2116 £temporary2115
x7167:	fistp word [container2bytes#]	; 4: -33 30 -107 29
x7171:	mov ax, [container2bytes#]	; 3: -95 -107 29

printArgument$269:	; Assign expo £temporary2116
x7174:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; SignedLessThan 282 expo -3
x7177:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x7181:	jl printArgument$282	; 2: 124 53

printArgument$271:	; SignedGreaterThan 282 expo 2
x7183:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x7187:	jg printArgument$282	; 2: 127 47

printArgument$272:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$273:	; PushFloat longDoubleValue
x7189:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; Parameter 46 longDoubleValue 6
x7192:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; Parameter 46 plus 14
x7195:	mov ax, [bp + 10]	; 3: -117 70 10
x7198:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; Parameter 46 space 16
x7201:	mov ax, [bp + 12]	; 3: -117 70 12
x7204:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; Parameter 46 grid 18
x7207:	mov ax, [bp + 14]	; 3: -117 70 14
x7210:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; Parameter 46 precision 20
x7213:	mov ax, [bp + 18]	; 3: -117 70 18
x7216:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; Call 46 printLongDoublePlain 0
x7219:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 65 28
x7224:	mov [bp + 48], bp	; 3: -119 110 48
x7227:	add bp, 46	; 3: -125 -59 46
x7230:	jmp printLongDoublePlain	; 3: -23 115 6

printArgument$280:	; PostCall 46

printArgument$281:	; Goto 359
x7233:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$283:	; PushFloat longDoubleValue
x7236:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; Parameter 46 longDoubleValue 6
x7239:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; Parameter 46 plus 14
x7242:	mov ax, [bp + 10]	; 3: -117 70 10
x7245:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; Parameter 46 space 16
x7248:	mov ax, [bp + 12]	; 3: -117 70 12
x7251:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; Parameter 46 grid 18
x7254:	mov ax, [bp + 14]	; 3: -117 70 14
x7257:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; Parameter 46 precision 20
x7260:	mov ax, [bp + 18]	; 3: -117 70 18
x7263:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$290:	; IntegralToIntegral £temporary2121 c
x7266:	mov al, [bp + 30]	; 3: -118 70 30
x7269:	and ax, 255	; 3: 37 -1 0
x7272:	cmp al, 0	; 2: 60 0
x7274:	jge printArgument$291	; 2: 125 4
x7276:	neg al	; 2: -10 -40
x7278:	neg ax	; 2: -9 -40

printArgument$291:	; Parameter 46 £temporary2121 28
x7280:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; Call 46 isupper 22
x7283:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 -127 28
x7288:	mov [bp + 70], bp	; 3: -119 110 70
x7291:	add bp, 68	; 3: -125 -59 68
x7294:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; PostCall 46

printArgument$294:	; GetReturnValue £temporary2122

printArgument$295:	; Parameter 46 £temporary2122 22
x7297:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; Call 46 printLongDoubleExpo 0
x7300:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 -110 28
x7305:	mov [bp + 48], bp	; 3: -119 110 48
x7308:	add bp, 46	; 3: -125 -59 46
x7311:	jmp printLongDoubleExpo	; 3: -23 41 8

printArgument$297:	; PostCall 46

printArgument$298:	; Goto 359
x7314:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; BinaryAdd arg_list arg_list 2
x7317:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; BinarySubtract £temporary2125 arg_list 2
x7321:	mov si, [bp + 8]	; 3: -117 118 8
x7324:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; IntegralToIntegral £temporary2126 £temporary2125

printArgument$302:	; Deref £temporary2127 -> £temporary2126 £temporary2126 0

printArgument$303:	; Assign ptrValue £temporary2127 -> £temporary2126
x7327:	mov ax, [si]	; 2: -117 4
x7329:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$305:	; Parameter 44 arg_list 6
x7332:	mov ax, [bp + 8]	; 3: -117 70 8
x7335:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; Parameter 44 widthPtr 8
x7338:	mov ax, [bp + 16]	; 3: -117 70 16
x7341:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; address £temporary2128 precision
x7344:	mov si, bp	; 2: -119 -18
x7346:	add si, 18	; 3: -125 -58 18

printArgument$308:	; Parameter 44 £temporary2128 10
x7349:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; Call 44 checkWidthAndPrecision 0
x7352:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 -58 28
x7357:	mov [bp + 46], bp	; 3: -119 110 46
x7360:	add bp, 44	; 3: -125 -59 44
x7363:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; PostCall 44

printArgument$311:	; GetReturnValue £temporary2129

printArgument$312:	; Assign arg_list £temporary2129
x7366:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$314:	; IntegralToIntegral £temporary2130 ptrValue
x7369:	mov ax, [bp + 42]	; 3: -117 70 42
x7372:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; Parameter 44 £temporary2130 6
x7378:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; Parameter 44 0 10
x7382:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; Parameter 44 0 12
x7387:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; Parameter 44 0 14
x7392:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; Parameter 44 10 16
x7397:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; Parameter 44 0 20
x7405:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; Call 44 printUnsignedLong 0
x7410:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 0 29
x7415:	mov [bp + 46], bp	; 3: -119 110 46
x7418:	add bp, 44	; 3: -125 -59 44
x7421:	jmp printUnsignedLong	; 3: -23 9 4

printArgument$322:	; PostCall 44

printArgument$323:	; Goto 359
x7424:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; BinaryAdd arg_list arg_list 2
x7427:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; BinarySubtract £temporary2133 arg_list 2
x7431:	mov si, [bp + 8]	; 3: -117 118 8
x7434:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; IntegralToIntegral £temporary2134 £temporary2133

printArgument$327:	; Deref £temporary2135 -> £temporary2134 £temporary2134 0

printArgument$328:	; Assign ptrValue £temporary2135 -> £temporary2134
x7437:	mov ax, [si]	; 2: -117 4
x7439:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; BinaryAdd arg_list arg_list 2
x7442:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; BinarySubtract £temporary2137 arg_list 2
x7446:	mov si, [bp + 8]	; 3: -117 118 8
x7449:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; IntegralToIntegral £temporary2138 £temporary2137

printArgument$332:	; Deref £temporary2139 -> £temporary2138 £temporary2138 0

printArgument$333:	; Assign intPtr £temporary2139 -> £temporary2138
x7452:	mov ax, [si]	; 2: -117 4
x7454:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$335:	; Parameter 44 arg_list 6
x7457:	mov ax, [bp + 8]	; 3: -117 70 8
x7460:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; Parameter 44 widthPtr 8
x7463:	mov ax, [bp + 16]	; 3: -117 70 16
x7466:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; address £temporary2140 precision
x7469:	mov si, bp	; 2: -119 -18
x7471:	add si, 18	; 3: -125 -58 18

printArgument$338:	; Parameter 44 £temporary2140 10
x7474:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; Call 44 checkWidthAndPrecision 0
x7477:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 67 29
x7482:	mov [bp + 46], bp	; 3: -119 110 46
x7485:	add bp, 44	; 3: -125 -59 44
x7488:	nop	; 1: -112
x7489:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; PostCall 44

printArgument$341:	; GetReturnValue £temporary2141

printArgument$342:	; Assign arg_list £temporary2141
x7491:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; Deref £temporary2142 -> intPtr intPtr 0
x7494:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; Assign £temporary2142 -> intPtr g_outChars
x7497:	mov ax, [g_outChars]	; 3: -95 127 23
x7500:	mov [si], ax	; 2: -119 4

printArgument$345:	; Goto 359
x7502:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$347:	; Parameter 44 arg_list 6
x7504:	mov ax, [bp + 8]	; 3: -117 70 8
x7507:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; Parameter 44 widthPtr 8
x7510:	mov ax, [bp + 16]	; 3: -117 70 16
x7513:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; address £temporary2143 precision
x7516:	mov si, bp	; 2: -119 -18
x7518:	add si, 18	; 3: -125 -58 18

printArgument$350:	; Parameter 44 £temporary2143 10
x7521:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; Call 44 checkWidthAndPrecision 0
x7524:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 114 29
x7529:	mov [bp + 46], bp	; 3: -119 110 46
x7532:	add bp, 44	; 3: -125 -59 44
x7535:	nop	; 1: -112
x7536:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; PostCall 44

printArgument$353:	; GetReturnValue £temporary2144

printArgument$354:	; Assign arg_list £temporary2144
x7538:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$356:	; Parameter 44 37 6
x7541:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; Call 44 printChar 0
x7545:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 -121 29
x7550:	mov [bp + 46], bp	; 3: -119 110 46
x7553:	add bp, 44	; 3: -125 -59 44
x7556:	jmp printChar	; 3: -23 15 1

printArgument$358:	; PostCall 44

printArgument$359:	; SetReturnValue arg_list
x7559:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; Return arg_list
x7562:	mov ax, [bp]	; 3: -117 70 0
x7565:	mov di, [bp + 4]	; 3: -117 126 4
x7568:	mov bp, [bp + 2]	; 3: -117 110 2
x7571:	jmp ax	; 2: -1 -32

printArgument$361:	; FunctionEnd printArgument

container2bytes#:
x7573:	db 0, 0	; 2: 0 0

labs:	; SignedGreaterThanEqual 4 value 0
x7575:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7580:	jge labs$4	; 2: 125 9

labs$1:	; UnarySubtract £temporary3392 value
x7582:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x7586:	neg ebx	; 3: 102 -9 -37

labs$2:	; Assign £temporary3396 £temporary3392

labs$3:	; Goto 5
x7589:	jmp labs$5	; 2: -21 4

labs$4:	; Assign £temporary3396 value
x7591:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; SetReturnValue £temporary3396

labs$6:	; Return £temporary3396
x7595:	mov ax, [bp]	; 3: -117 70 0
x7598:	mov di, [bp + 4]	; 3: -117 126 4
x7601:	mov bp, [bp + 2]	; 3: -117 110 2
x7604:	jmp ax	; 2: -1 -32

labs$7:	; FunctionEnd labs

checkWidthAndPrecision:	; Equal 9 widthPtr 0
x7606:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7610:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; Deref £temporary1989 -> widthPtr widthPtr 0
x7612:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; NotEqual 9 £temporary1989 -> widthPtr -1
x7615:	cmp word [si], -1	; 3: -125 60 -1
x7618:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; Deref £temporary1992 -> widthPtr widthPtr 0
x7620:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; BinaryAdd arg_list arg_list 2
x7623:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; BinarySubtract £temporary1994 arg_list 2
x7627:	mov di, [bp + 6]	; 3: -117 126 6
x7630:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; IntegralToIntegral £temporary1995 £temporary1994

checkWidthAndPrecision$7:	; Deref £temporary1996 -> £temporary1995 £temporary1995 0

checkWidthAndPrecision$8:	; Assign £temporary1992 -> widthPtr £temporary1996 -> £temporary1995
x7633:	mov ax, [di]	; 2: -117 5
x7635:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; Equal 18 precisionPtr 0
x7637:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x7641:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; Deref £temporary1998 -> precisionPtr precisionPtr 0
x7643:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; NotEqual 18 £temporary1998 -> precisionPtr -1
x7646:	cmp word [si], -1	; 3: -125 60 -1
x7649:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; Deref £temporary2001 -> precisionPtr precisionPtr 0
x7651:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; BinaryAdd arg_list arg_list 2
x7654:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; BinarySubtract £temporary2003 arg_list 2
x7658:	mov di, [bp + 6]	; 3: -117 126 6
x7661:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; IntegralToIntegral £temporary2004 £temporary2003

checkWidthAndPrecision$16:	; Deref £temporary2005 -> £temporary2004 £temporary2004 0

checkWidthAndPrecision$17:	; Assign £temporary2001 -> precisionPtr £temporary2005 -> £temporary2004
x7664:	mov ax, [di]	; 2: -117 5
x7666:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; SetReturnValue arg_list
x7668:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; Return arg_list
x7671:	mov ax, [bp]	; 3: -117 70 0
x7674:	mov di, [bp + 4]	; 3: -117 126 4
x7677:	mov bp, [bp + 2]	; 3: -117 110 2
x7680:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; FunctionEnd checkWidthAndPrecision

printLongInt:	; SignedGreaterThanEqual 8 longValue 0
x7682:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7687:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; UnarySubtract £temporary1844 longValue
x7689:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7693:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; Assign longValue £temporary1844
x7696:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$4:	; Parameter 14 45 6
x7700:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; Call 14 printChar 0
x7704:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 38 30
x7709:	mov [bp + 16], bp	; 3: -119 110 16
x7712:	add bp, 14	; 3: -125 -59 14
x7715:	nop	; 1: -112
x7716:	jmp printChar	; 2: -21 112

printLongInt$6:	; PostCall 14

printLongInt$7:	; Goto 19
x7718:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; Equal 14 space 0
x7720:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x7724:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$10:	; Parameter 14 32 6
x7726:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; Call 14 printChar 0
x7730:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 64 30
x7735:	mov [bp + 16], bp	; 3: -119 110 16
x7738:	add bp, 14	; 3: -125 -59 14
x7741:	nop	; 1: -112
x7742:	jmp printChar	; 2: -21 86

printLongInt$12:	; PostCall 14

printLongInt$13:	; Goto 19
x7744:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; Equal 19 plus 0
x7746:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x7750:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$16:	; Parameter 14 43 6
x7752:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; Call 14 printChar 0
x7756:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 90 30
x7761:	mov [bp + 16], bp	; 3: -119 110 16
x7764:	add bp, 14	; 3: -125 -59 14
x7767:	nop	; 1: -112
x7768:	jmp printChar	; 2: -21 60

printLongInt$18:	; PostCall 14

printLongInt$19:	; NotEqual 25 longValue 0
x7770:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7775:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$21:	; Parameter 14 48 6
x7777:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; Call 14 printChar 0
x7781:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 115 30
x7786:	mov [bp + 16], bp	; 3: -119 110 16
x7789:	add bp, 14	; 3: -125 -59 14
x7792:	nop	; 1: -112
x7793:	jmp printChar	; 2: -21 35

printLongInt$23:	; PostCall 14

printLongInt$24:	; Goto 29
x7795:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$26:	; Parameter 14 longValue 6
x7797:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7801:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; Call 14 printLongIntRec 0
x7805:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 -117 30
x7810:	mov [bp + 16], bp	; 3: -119 110 16
x7813:	add bp, 14	; 3: -125 -59 14
x7816:	nop	; 1: -112
x7817:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; PostCall 14

printLongInt$29:	; Return 0
x7819:	mov ax, [bp]	; 3: -117 70 0
x7822:	mov di, [bp + 4]	; 3: -117 126 4
x7825:	mov bp, [bp + 2]	; 3: -117 110 2
x7828:	jmp ax	; 2: -1 -32

printLongInt$30:	; FunctionEnd printLongInt

printChar:	; Case 5 g_outStatus 0
x7830:	mov ax, [g_outStatus]	; 3: -95 33 18
x7833:	cmp ax, 0	; 3: -125 -8 0
x7836:	je printChar$5	; 2: 116 12

printChar$1:	; Case 16 g_outStatus 1
x7838:	cmp ax, 1	; 3: -125 -8 1
x7841:	je printChar$16	; 2: 116 37

printChar$2:	; Case 24 g_outStatus 2
x7843:	cmp ax, 2	; 3: -125 -8 2
x7846:	je printChar$24	; 2: 116 57

printChar$3:	; CaseEnd g_outStatus

printChar$4:	; Goto 25
x7848:	jmp printChar$25	; 2: -21 59

printChar$5:	; IntegralToIntegral £temporary1786 g_outDevice
x7850:	mov ax, [g_outDevice]	; 3: -95 35 18

printChar$6:	; Assign stream £temporary1786
x7853:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; AssignRegister ah 64
x7856:	mov ah, 64	; 2: -76 64

printChar$8:	; Deref £temporary1789 -> stream stream 2
x7858:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; AssignRegister bx £temporary1789 -> stream
x7861:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; AssignRegister cx 1
x7864:	mov cx, 1	; 3: -71 1 0

printChar$11:	; address £temporary1792 c
x7867:	mov dx, bp	; 2: -119 -22
x7869:	add dx, 6	; 3: -125 -62 6

printChar$12:	; AssignRegister dx £temporary1792

printChar$13:	; Interrupt 33
x7872:	int 33	; 2: -51 33

printChar$14:	; Increment g_outChars
x7874:	inc word [g_outChars]	; 4: -1 6 127 23

printChar$15:	; Goto 25
x7878:	jmp printChar$25	; 2: -21 29

printChar$16:	; IntegralToIntegral £temporary1794 g_outDevice
x7880:	mov ax, [g_outDevice]	; 3: -95 35 18

printChar$17:	; Assign outString £temporary1794
x7883:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; Assign £temporary1795 g_outChars
x7886:	mov ax, [g_outChars]	; 3: -95 127 23

printChar$19:	; Increment g_outChars
x7889:	inc word [g_outChars]	; 4: -1 6 127 23

printChar$20:	; BinaryAdd £temporary1797 outString £temporary1795
x7893:	mov si, [bp + 9]	; 3: -117 118 9
x7896:	add si, ax	; 2: 1 -58

printChar$21:	; Deref £temporary1796 -> £temporary1797 £temporary1797 0

printChar$22:	; Assign £temporary1796 -> £temporary1797 c
x7898:	mov al, [bp + 6]	; 3: -118 70 6
x7901:	mov [si], al	; 2: -120 4

printChar$23:	; Goto 25
x7903:	jmp printChar$25	; 2: -21 4

printChar$24:	; Increment g_outChars
x7905:	inc word [g_outChars]	; 4: -1 6 127 23

printChar$25:	; Return 0
x7909:	mov ax, [bp]	; 3: -117 70 0
x7912:	mov di, [bp + 4]	; 3: -117 126 4
x7915:	mov bp, [bp + 2]	; 3: -117 110 2
x7918:	jmp ax	; 2: -1 -32

printChar$26:	; FunctionEnd printChar

printLongIntRec:	; Equal 15 longValue 0
x7920:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7925:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; SignedModulo £temporary1834 longValue 10
x7927:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7931:	xor edx, edx	; 3: 102 49 -46
x7934:	idiv dword [int4$10#]	; 5: 102 -9 62 90 31

printLongIntRec$2:	; IntegralToIntegral £temporary1835 £temporary1834
x7939:	cmp edx, 0	; 4: 102 -125 -6 0
x7943:	jge printLongIntRec$3	; 2: 125 5
x7945:	neg edx	; 3: 102 -9 -38
x7948:	neg dx	; 2: -9 -38

printLongIntRec$3:	; Assign digit £temporary1835
x7950:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongIntRec$5:	; SignedDivide £temporary1836 longValue 10
x7953:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7957:	xor edx, edx	; 3: 102 49 -46
x7960:	idiv dword [int4$10#]	; 5: 102 -9 62 90 31

printLongIntRec$6:	; Parameter 12 £temporary1836 6
x7965:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; Call 12 printLongIntRec 0
x7969:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 47 31
x7974:	mov [bp + 14], bp	; 3: -119 110 14
x7977:	add bp, 12	; 3: -125 -59 12
x7980:	nop	; 1: -112
x7981:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; PostCall 12

printLongIntRec$9:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongIntRec$10:	; BinaryAdd £temporary1838 digit 48
x7983:	mov ax, [bp + 10]	; 3: -117 70 10
x7986:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; IntegralToIntegral £temporary1839 £temporary1838
x7989:	cmp ax, 0	; 3: -125 -8 0
x7992:	jge printLongIntRec$12	; 2: 125 4
x7994:	neg ax	; 2: -9 -40
x7996:	neg al	; 2: -10 -40

printLongIntRec$12:	; Parameter 12 £temporary1839 6
x7998:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; Call 12 printChar 0
x8001:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 79 31
x8006:	mov [bp + 14], bp	; 3: -119 110 14
x8009:	add bp, 12	; 3: -125 -59 12
x8012:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; PostCall 12

printLongIntRec$15:	; Return 0
x8015:	mov ax, [bp]	; 3: -117 70 0
x8018:	mov di, [bp + 4]	; 3: -117 126 4
x8021:	mov bp, [bp + 2]	; 3: -117 110 2
x8024:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; FunctionEnd printLongIntRec

int4$10#:
x8026:	dd 10	; 4: 10 0 0 0

printString:	; Equal 29 s 0
x8030:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x8034:	je printString$29	; 2: 116 115

printString$1:	; NotEqual 14 precision 0
x8036:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x8040:	jne printString$14	; 2: 117 48

printString$2:	; Assign index 0
x8042:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; BinaryAdd £temporary1803 s index
x8047:	mov si, [bp + 6]	; 3: -117 118 6
x8050:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; Deref £temporary1802 -> £temporary1803 £temporary1803 0

printString$5:	; Equal 53 £temporary1802 -> £temporary1803 0
x8053:	cmp byte [si], 0	; 3: -128 60 0
x8056:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$7:	; BinaryAdd £temporary1807 s index
x8060:	mov si, [bp + 6]	; 3: -117 118 6
x8063:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; Deref £temporary1806 -> £temporary1807 £temporary1807 0

printString$9:	; Parameter 12 £temporary1806 -> £temporary1807 6
x8066:	mov al, [si]	; 2: -118 4
x8068:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; Call 12 printChar 0
x8071:	mov word [bp + 12], printString$11	; 5: -57 70 12 -107 31
x8076:	mov [bp + 14], bp	; 3: -119 110 14
x8079:	add bp, 12	; 3: -125 -59 12
x8082:	jmp printChar	; 3: -23 1 -1

printString$11:	; PostCall 12

printString$12:	; Increment index
x8085:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; Goto 3
x8088:	jmp printString$3	; 2: -21 -43

printString$14:	; Assign index 0
x8090:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; Assign £temporary1809 precision
x8095:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; Decrement precision
x8098:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; SignedLessThanEqual 53 £temporary1809 0
x8101:	cmp ax, 0	; 3: -125 -8 0
x8104:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; BinaryAdd £temporary1812 s index
x8108:	mov si, [bp + 6]	; 3: -117 118 6
x8111:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; Deref £temporary1811 -> £temporary1812 £temporary1812 0

printString$20:	; Equal 53 £temporary1811 -> £temporary1812 0
x8114:	cmp byte [si], 0	; 3: -128 60 0
x8117:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$22:	; BinaryAdd £temporary1817 s index
x8121:	mov si, [bp + 6]	; 3: -117 118 6
x8124:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; Deref £temporary1816 -> £temporary1817 £temporary1817 0

printString$24:	; Parameter 12 £temporary1816 -> £temporary1817 6
x8127:	mov al, [si]	; 2: -118 4
x8129:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; Call 12 printChar 0
x8132:	mov word [bp + 12], printString$26	; 5: -57 70 12 -46 31
x8137:	mov [bp + 14], bp	; 3: -119 110 14
x8140:	add bp, 12	; 3: -125 -59 12
x8143:	jmp printChar	; 3: -23 -60 -2

printString$26:	; PostCall 12

printString$27:	; Increment index
x8146:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; Goto 15
x8149:	jmp printString$15	; 2: -21 -56

printString$29:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$30:	; Parameter 10 60 6
x8151:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; Call 10 printChar 0
x8155:	mov word [bp + 10], printString$32	; 5: -57 70 10 -23 31
x8160:	mov [bp + 12], bp	; 3: -119 110 12
x8163:	add bp, 10	; 3: -125 -59 10
x8166:	jmp printChar	; 3: -23 -83 -2

printString$32:	; PostCall 10

printString$33:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$34:	; Parameter 10 78 6
x8169:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; Call 10 printChar 0
x8173:	mov word [bp + 10], printString$36	; 5: -57 70 10 -5 31
x8178:	mov [bp + 12], bp	; 3: -119 110 12
x8181:	add bp, 10	; 3: -125 -59 10
x8184:	jmp printChar	; 3: -23 -101 -2

printString$36:	; PostCall 10

printString$37:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$38:	; Parameter 10 85 6
x8187:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; Call 10 printChar 0
x8191:	mov word [bp + 10], printString$40	; 5: -57 70 10 13 32
x8196:	mov [bp + 12], bp	; 3: -119 110 12
x8199:	add bp, 10	; 3: -125 -59 10
x8202:	jmp printChar	; 3: -23 -119 -2

printString$40:	; PostCall 10

printString$41:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$42:	; Parameter 10 76 6
x8205:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; Call 10 printChar 0
x8209:	mov word [bp + 10], printString$44	; 5: -57 70 10 31 32
x8214:	mov [bp + 12], bp	; 3: -119 110 12
x8217:	add bp, 10	; 3: -125 -59 10
x8220:	jmp printChar	; 3: -23 119 -2

printString$44:	; PostCall 10

printString$45:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$46:	; Parameter 10 76 6
x8223:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; Call 10 printChar 0
x8227:	mov word [bp + 10], printString$48	; 5: -57 70 10 49 32
x8232:	mov [bp + 12], bp	; 3: -119 110 12
x8235:	add bp, 10	; 3: -125 -59 10
x8238:	jmp printChar	; 3: -23 101 -2

printString$48:	; PostCall 10

printString$49:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$50:	; Parameter 10 62 6
x8241:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; Call 10 printChar 0
x8245:	mov word [bp + 10], printString$52	; 5: -57 70 10 67 32
x8250:	mov [bp + 12], bp	; 3: -119 110 12
x8253:	add bp, 10	; 3: -125 -59 10
x8256:	jmp printChar	; 3: -23 83 -2

printString$52:	; PostCall 10

printString$53:	; Return 0
x8259:	mov ax, [bp]	; 3: -117 70 0
x8262:	mov di, [bp + 4]	; 3: -117 126 4
x8265:	mov bp, [bp + 2]	; 3: -117 110 2
x8268:	jmp ax	; 2: -1 -32

printString$54:	; FunctionEnd printString

isupper:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

isupper$1:	; Call 8 localeconv 0
x8270:	mov word [bp + 8], isupper$2	; 5: -57 70 8 92 32
x8275:	mov [bp + 10], bp	; 3: -119 110 10
x8278:	add bp, 8	; 3: -125 -59 8
x8281:	jmp localeconv	; 3: -23 117 -25

isupper$2:	; PostCall 8

isupper$3:	; GetReturnValue £temporary383

isupper$4:	; Assign localeConvPtr £temporary383
x8284:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; Equal 19 localeConvPtr 0
x8287:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x8291:	je isupper$19	; 2: 116 53

isupper$6:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

isupper$7:	; Deref £temporary385 -> localeConvPtr localeConvPtr 14
x8293:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; Parameter 10 £temporary385 -> localeConvPtr 6
x8296:	mov ax, [si + 14]	; 3: -117 68 14
x8299:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; Parameter 10 c 8
x8302:	mov ax, [bp + 6]	; 3: -117 70 6
x8305:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; Call 10 strchr 0
x8308:	mov word [bp + 10], isupper$11	; 5: -57 70 10 -126 32
x8313:	mov [bp + 12], bp	; 3: -119 110 12
x8316:	add bp, 10	; 3: -125 -59 10
x8319:	nop	; 1: -112
x8320:	jmp strchr	; 2: -21 55

isupper$11:	; PostCall 10

isupper$12:	; GetReturnValue £temporary386

isupper$13:	; Equal 16 £temporary386 0
x8322:	cmp bx, 0	; 3: -125 -5 0
x8325:	je isupper$16	; 2: 116 5

isupper$14:	; Assign £temporary388 1
x8327:	mov bx, 1	; 3: -69 1 0

isupper$15:	; Goto 17
x8330:	jmp isupper$17	; 2: -21 3

isupper$16:	; Assign £temporary388 0
x8332:	mov bx, 0	; 3: -69 0 0

isupper$17:	; SetReturnValue £temporary388

isupper$18:	; Return £temporary388
x8335:	mov ax, [bp]	; 3: -117 70 0
x8338:	mov di, [bp + 4]	; 3: -117 126 4
x8341:	mov bp, [bp + 2]	; 3: -117 110 2
x8344:	jmp ax	; 2: -1 -32

isupper$19:	; SignedLessThan 23 c 65
x8346:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x8350:	jl isupper$23	; 2: 124 11

isupper$20:	; SignedGreaterThan 23 c 90
x8352:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x8356:	jg isupper$23	; 2: 127 5

isupper$21:	; Assign £temporary392 1
x8358:	mov bx, 1	; 3: -69 1 0

isupper$22:	; Goto 24
x8361:	jmp isupper$24	; 2: -21 3

isupper$23:	; Assign £temporary392 0
x8363:	mov bx, 0	; 3: -69 0 0

isupper$24:	; SetReturnValue £temporary392

isupper$25:	; Return £temporary392
x8366:	mov ax, [bp]	; 3: -117 70 0
x8369:	mov di, [bp + 4]	; 3: -117 126 4
x8372:	mov bp, [bp + 2]	; 3: -117 110 2
x8375:	jmp ax	; 2: -1 -32

isupper$26:	; FunctionEnd isupper

strchr:	; IntegralToIntegral £temporary4006 i
x8377:	mov ax, [bp + 8]	; 3: -117 70 8
x8380:	cmp ax, 0	; 3: -125 -8 0
x8383:	jge strchr$1	; 2: 125 4
x8385:	neg ax	; 2: -9 -40
x8387:	neg al	; 2: -10 -40

strchr$1:	; Assign c £temporary4006
x8389:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; Assign index 0
x8392:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; BinaryAdd £temporary4008 text index
x8397:	mov si, [bp + 6]	; 3: -117 118 6
x8400:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; Deref £temporary4007 -> £temporary4008 £temporary4008 0

strchr$5:	; Equal 16 £temporary4007 -> £temporary4008 0
x8403:	cmp byte [si], 0	; 3: -128 60 0
x8406:	je strchr$16	; 2: 116 35

strchr$6:	; BinaryAdd £temporary4012 text index
x8408:	mov si, [bp + 6]	; 3: -117 118 6
x8411:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; Deref £temporary4011 -> £temporary4012 £temporary4012 0

strchr$8:	; NotEqual 14 £temporary4011 -> £temporary4012 c
x8414:	mov al, [bp + 12]	; 3: -118 70 12
x8417:	cmp [si], al	; 2: 56 4
x8419:	jne strchr$14	; 2: 117 17

strchr$9:	; BinaryAdd £temporary4015 text index
x8421:	mov bx, [bp + 6]	; 3: -117 94 6
x8424:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; Deref £temporary4014 -> £temporary4015 £temporary4015 0

strchr$11:	; address £temporary4016 £temporary4014 -> £temporary4015

strchr$12:	; SetReturnValue £temporary4016

strchr$13:	; Return £temporary4016
x8427:	mov ax, [bp]	; 3: -117 70 0
x8430:	mov di, [bp + 4]	; 3: -117 126 4
x8433:	mov bp, [bp + 2]	; 3: -117 110 2
x8436:	jmp ax	; 2: -1 -32

strchr$14:	; Increment index
x8438:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; Goto 3
x8441:	jmp strchr$3	; 2: -21 -46

strchr$16:	; SetReturnValue 0
x8443:	mov bx, 0	; 3: -69 0 0

strchr$17:	; Return 0
x8446:	mov ax, [bp]	; 3: -117 70 0
x8449:	mov di, [bp + 4]	; 3: -117 126 4
x8452:	mov bp, [bp + 2]	; 3: -117 110 2
x8455:	jmp ax	; 2: -1 -32

strchr$18:	; FunctionEnd strchr

printUnsignedLong:	; Equal 5 plus 0
x8457:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x8461:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$2:	; Parameter 22 43 6
x8463:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; Call 22 printChar 0
x8467:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 33 33
x8472:	mov [bp + 24], bp	; 3: -119 110 24
x8475:	add bp, 22	; 3: -125 -59 22
x8478:	jmp printChar	; 3: -23 117 -3

printUnsignedLong$4:	; PostCall 22

printUnsignedLong$5:	; Equal 10 space 0
x8481:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x8485:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$7:	; Parameter 22 32 6
x8487:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; Call 22 printChar 0
x8491:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 57 33
x8496:	mov [bp + 24], bp	; 3: -119 110 24
x8499:	add bp, 22	; 3: -125 -59 22
x8502:	jmp printChar	; 3: -23 93 -3

printUnsignedLong$9:	; PostCall 22

printUnsignedLong$10:	; Equal 29 grid 0
x8505:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x8509:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; NotEqual 16 base 8
x8511:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x8516:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$13:	; Parameter 22 48 6
x8518:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; Call 22 printChar 0
x8522:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 88 33
x8527:	mov [bp + 24], bp	; 3: -119 110 24
x8530:	add bp, 22	; 3: -125 -59 22
x8533:	jmp printChar	; 3: -23 62 -3

printUnsignedLong$15:	; PostCall 22

printUnsignedLong$16:	; NotEqual 29 base 16
x8536:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x8541:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$18:	; Parameter 22 48 6
x8543:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; Call 22 printChar 0
x8547:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 113 33
x8552:	mov [bp + 24], bp	; 3: -119 110 24
x8555:	add bp, 22	; 3: -125 -59 22
x8558:	jmp printChar	; 3: -23 37 -3

printUnsignedLong$20:	; PostCall 22

printUnsignedLong$21:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$22:	; Equal 25 capital 0
x8561:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x8565:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; Assign £temporary1893 88
x8567:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; Goto 26
x8569:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; Assign £temporary1893 120
x8571:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; Parameter 22 £temporary1893 6
x8573:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; Call 22 printChar 0
x8576:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 -114 33
x8581:	mov [bp + 24], bp	; 3: -119 110 24
x8584:	add bp, 22	; 3: -125 -59 22
x8587:	jmp printChar	; 3: -23 8 -3

printUnsignedLong$28:	; PostCall 22

printUnsignedLong$29:	; NotEqual 35 unsignedValue 0
x8590:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x8595:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$31:	; Parameter 22 48 6
x8597:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; Call 22 printChar 0
x8601:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 -89 33
x8606:	mov [bp + 24], bp	; 3: -119 110 24
x8609:	add bp, 22	; 3: -125 -59 22
x8612:	jmp printChar	; 3: -23 -17 -4

printUnsignedLong$33:	; PostCall 22

printUnsignedLong$34:	; Goto 41
x8615:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$36:	; Parameter 22 unsignedValue 6
x8617:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x8621:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; Parameter 22 base 10
x8625:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x8629:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; Parameter 22 capital 14
x8633:	mov ax, [bp + 20]	; 3: -117 70 20
x8636:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; Call 22 printUnsignedLongRec 0
x8639:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 -51 33
x8644:	mov [bp + 24], bp	; 3: -119 110 24
x8647:	add bp, 22	; 3: -125 -59 22
x8650:	nop	; 1: -112
x8651:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; PostCall 22

printUnsignedLong$41:	; Return 0
x8653:	mov ax, [bp]	; 3: -117 70 0
x8656:	mov di, [bp + 4]	; 3: -117 126 4
x8659:	mov bp, [bp + 2]	; 3: -117 110 2
x8662:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; FunctionEnd printUnsignedLong

printUnsignedLongRec:	; UnsignedLessThanEqual 22 unsignedValue 0
x8664:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x8669:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; UnsignedModulo £temporary1869 unsignedValue base
x8671:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x8675:	xor edx, edx	; 3: 102 49 -46
x8678:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; IntegralToIntegral £temporary1870 £temporary1869

printUnsignedLongRec$3:	; Assign digit £temporary1870
x8682:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLongRec$5:	; UnsignedDivide £temporary1871 unsignedValue base
x8685:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x8689:	xor edx, edx	; 3: 102 49 -46
x8692:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; Parameter 18 £temporary1871 6
x8696:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; Parameter 18 base 10
x8700:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x8704:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; Parameter 18 capital 14
x8708:	mov ax, [bp + 14]	; 3: -117 70 14
x8711:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; Call 18 printUnsignedLongRec 0
x8714:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 24 34
x8719:	mov [bp + 20], bp	; 3: -119 110 20
x8722:	add bp, 18	; 3: -125 -59 18
x8725:	nop	; 1: -112
x8726:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; PostCall 18

printUnsignedLongRec$11:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLongRec$12:	; Parameter 18 digit 6
x8728:	mov ax, [bp + 16]	; 3: -117 70 16
x8731:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; Parameter 18 capital 8
x8734:	mov ax, [bp + 14]	; 3: -117 70 14
x8737:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; Call 18 digitToChar 0
x8740:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 50 34
x8745:	mov [bp + 20], bp	; 3: -119 110 20
x8748:	add bp, 18	; 3: -125 -59 18
x8751:	nop	; 1: -112
x8752:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; PostCall 18

printUnsignedLongRec$16:	; GetReturnValue £temporary1873

printUnsignedLongRec$17:	; Assign c £temporary1873
x8754:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLongRec$19:	; Parameter 19 c 6
x8757:	mov al, [bp + 18]	; 3: -118 70 18
x8760:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; Call 19 printChar 0
x8763:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 73 34
x8768:	mov [bp + 21], bp	; 3: -119 110 21
x8771:	add bp, 19	; 3: -125 -59 19
x8774:	jmp printChar	; 3: -23 77 -4

printUnsignedLongRec$21:	; PostCall 19

printUnsignedLongRec$22:	; Return 0
x8777:	mov ax, [bp]	; 3: -117 70 0
x8780:	mov di, [bp + 4]	; 3: -117 126 4
x8783:	mov bp, [bp + 2]	; 3: -117 110 2
x8786:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; FunctionEnd printUnsignedLongRec

digitToChar:	; SignedGreaterThanEqual 5 digit 10
x8788:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x8792:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; BinaryAdd £temporary1859 digit 48
x8794:	mov bx, [bp + 6]	; 3: -117 94 6
x8797:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; IntegralToIntegral £temporary1860 £temporary1859
x8800:	cmp bx, 0	; 3: -125 -5 0
x8803:	jge digitToChar$3	; 2: 125 4
x8805:	neg bx	; 2: -9 -37
x8807:	neg bl	; 2: -10 -37

digitToChar$3:	; SetReturnValue £temporary1860

digitToChar$4:	; Return £temporary1860
x8809:	mov ax, [bp]	; 3: -117 70 0
x8812:	mov di, [bp + 4]	; 3: -117 126 4
x8815:	mov bp, [bp + 2]	; 3: -117 110 2
x8818:	jmp ax	; 2: -1 -32

digitToChar$5:	; Equal 11 capital 0
x8820:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x8824:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; BinarySubtract £temporary1861 digit 10
x8826:	mov bx, [bp + 6]	; 3: -117 94 6
x8829:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; BinaryAdd £temporary1862 £temporary1861 65
x8832:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; IntegralToIntegral £temporary1863 £temporary1862
x8835:	cmp bx, 0	; 3: -125 -5 0
x8838:	jge digitToChar$9	; 2: 125 4
x8840:	neg bx	; 2: -9 -37
x8842:	neg bl	; 2: -10 -37

digitToChar$9:	; SetReturnValue £temporary1863

digitToChar$10:	; Return £temporary1863
x8844:	mov ax, [bp]	; 3: -117 70 0
x8847:	mov di, [bp + 4]	; 3: -117 126 4
x8850:	mov bp, [bp + 2]	; 3: -117 110 2
x8853:	jmp ax	; 2: -1 -32

digitToChar$11:	; BinarySubtract £temporary1864 digit 10
x8855:	mov bx, [bp + 6]	; 3: -117 94 6
x8858:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; BinaryAdd £temporary1865 £temporary1864 97
x8861:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; IntegralToIntegral £temporary1866 £temporary1865
x8864:	cmp bx, 0	; 3: -125 -5 0
x8867:	jge digitToChar$14	; 2: 125 4
x8869:	neg bx	; 2: -9 -37
x8871:	neg bl	; 2: -10 -37

digitToChar$14:	; SetReturnValue £temporary1866

digitToChar$15:	; Return £temporary1866
x8873:	mov ax, [bp]	; 3: -117 70 0
x8876:	mov di, [bp + 4]	; 3: -117 126 4
x8879:	mov bp, [bp + 2]	; 3: -117 110 2
x8882:	jmp ax	; 2: -1 -32

digitToChar$16:	; FunctionEnd digitToChar

printLongDoublePlain:	; PushFloat longDoubleValue
x8884:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; PushFloat 0.0
x8887:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; SignedGreaterThanEqual 12 longDoubleValue 0.0
x8889:	fcompp	; 2: -34 -39
x8891:	fstsw ax	; 3: -101 -33 -32
x8894:	sahf	; 1: -98
x8895:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoublePlain$4:	; Parameter 22 45 6
x8897:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; Call 22 printChar 0
x8901:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 -45 34
x8906:	mov [bp + 24], bp	; 3: -119 110 24
x8909:	add bp, 22	; 3: -125 -59 22
x8912:	jmp printChar	; 3: -23 -61 -5

printLongDoublePlain$6:	; PostCall 22

printLongDoublePlain$7:	; PushFloat longDoubleValue
x8915:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; UnarySubtract £temporary1929 longDoubleValue
x8918:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; PopFloat longDoubleValue
x8920:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; Assign plus 0
x8923:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; Assign space 0
x8928:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; PushFloat longDoubleValue
x8933:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; FloatingToIntegral £temporary1930 longDoubleValue
x8936:	fistp dword [container4bytes#]	; 4: -37 30 76 35
x8940:	mov eax, [container4bytes#]	; 4: 102 -95 76 35

printLongDoublePlain$14:	; Assign longValue £temporary1930
x8944:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoublePlain$16:	; Parameter 26 longValue 6
x8948:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x8952:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; Parameter 26 plus 10
x8956:	mov ax, [bp + 14]	; 3: -117 70 14
x8959:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; Parameter 26 space 12
x8962:	mov ax, [bp + 16]	; 3: -117 70 16
x8965:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; Call 26 printLongInt 0
x8968:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 22 35
x8973:	mov [bp + 28], bp	; 3: -119 110 28
x8976:	add bp, 26	; 3: -125 -59 26
x8979:	jmp printLongInt	; 3: -23 -20 -6

printLongDoublePlain$20:	; PostCall 26

printLongDoublePlain$21:	; PushFloat longDoubleValue
x8982:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; IntegralToFloating £temporary1932 longValue
x8985:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; BinarySubtract £temporary1933 longDoubleValue £temporary1932
x8988:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; PopFloat longDoubleValue
x8990:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoublePlain$26:	; PushFloat longDoubleValue
x8993:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; Parameter 26 longDoubleValue 6
x8996:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; Parameter 26 grid 14
x8999:	mov ax, [bp + 18]	; 3: -117 70 18
x9002:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; Parameter 26 precision 16
x9005:	mov ax, [bp + 20]	; 3: -117 70 20
x9008:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; Call 26 printLongDoubleFraction 0
x9011:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 65 35
x9016:	mov [bp + 28], bp	; 3: -119 110 28
x9019:	add bp, 26	; 3: -125 -59 26
x9022:	nop	; 1: -112
x9023:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; PostCall 26

printLongDoublePlain$32:	; Return 0
x9025:	mov ax, [bp]	; 3: -117 70 0
x9028:	mov di, [bp + 4]	; 3: -117 126 4
x9031:	mov bp, [bp + 2]	; 3: -117 110 2
x9034:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; FunctionEnd printLongDoublePlain

container4bytes#:
x9036:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; PushFloat longDoubleValue
x9040:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; PushFloat longDoubleValue
x9043:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; FloatingToIntegral £temporary1908 longDoubleValue
x9046:	fistp dword [container4bytes#]	; 4: -37 30 76 35
x9050:	mov eax, [container4bytes#]	; 4: 102 -95 76 35

printLongDoubleFraction$3:	; IntegralToFloating £temporary1909 £temporary1908
x9054:	mov [container4bytes#], eax	; 4: 102 -93 76 35
x9058:	fild dword [container4bytes#]	; 4: -37 6 76 35

printLongDoubleFraction$4:	; BinarySubtract £temporary1910 longDoubleValue £temporary1909
x9062:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; PopFloat longDoubleValue
x9064:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; NotEqual 8 precision 0
x9067:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x9071:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; Assign precision 6
x9073:	mov word [bp + 16], 6	; 5: -57 70 16 6 0

printLongDoubleFraction$8:	; NotEqual 10 grid 0
x9078:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x9082:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; SignedLessThanEqual 14 precision 0
x9084:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x9088:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleFraction$11:	; Parameter 18 46 6
x9090:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; Call 18 printChar 0
x9094:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 -108 35
x9099:	mov [bp + 20], bp	; 3: -119 110 20
x9102:	add bp, 18	; 3: -125 -59 18
x9105:	jmp printChar	; 3: -23 2 -5

printLongDoubleFraction$13:	; PostCall 18

printLongDoubleFraction$14:	; Assign £temporary1916 precision
x9108:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; Decrement precision
x9111:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; SignedLessThanEqual 35 £temporary1916 0
x9114:	cmp ax, 0	; 3: -125 -8 0
x9117:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; PushFloat 10.0
x9119:	fld qword [float8$10.0#]	; 4: -35 6 -16 35

printLongDoubleFraction$18:	; PushFloat longDoubleValue
x9123:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; SignedMultiply £temporary1918 10.0 longDoubleValue
x9126:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; PopFloat longDoubleValue10
x9128:	fstp qword [bp + 18]	; 3: -35 94 18

printLongDoubleFraction$21:	; PushFloat longDoubleValue10
x9131:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$22:	; FloatingToIntegral £temporary1919 longDoubleValue10
x9134:	fistp word [container2bytes#]	; 4: -33 30 -107 29
x9138:	mov ax, [container2bytes#]	; 3: -95 -107 29

printLongDoubleFraction$23:	; Assign digitValue £temporary1919
x9141:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$24:	; CallHeader 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleFraction$25:	; BinaryAdd £temporary1920 digitValue 48
x9144:	mov ax, [bp + 26]	; 3: -117 70 26
x9147:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$26:	; IntegralToIntegral £temporary1921 £temporary1920
x9150:	cmp ax, 0	; 3: -125 -8 0
x9153:	jge printLongDoubleFraction$27	; 2: 125 4
x9155:	neg ax	; 2: -9 -40
x9157:	neg al	; 2: -10 -40

printLongDoubleFraction$27:	; Parameter 28 £temporary1921 6
x9159:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$28:	; Call 28 printChar 0
x9162:	mov word [bp + 28], printLongDoubleFraction$29	; 5: -57 70 28 -40 35
x9167:	mov [bp + 30], bp	; 3: -119 110 30
x9170:	add bp, 28	; 3: -125 -59 28
x9173:	jmp printChar	; 3: -23 -66 -6

printLongDoubleFraction$29:	; PostCall 28

printLongDoubleFraction$30:	; PushFloat longDoubleValue10
x9176:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$31:	; IntegralToFloating £temporary1923 digitValue
x9179:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$32:	; BinarySubtract £temporary1924 longDoubleValue10 £temporary1923
x9182:	fsub	; 2: -34 -23

printLongDoubleFraction$33:	; PopFloat longDoubleValue
x9184:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$34:	; Goto 14
x9187:	jmp printLongDoubleFraction$14	; 2: -21 -81

printLongDoubleFraction$35:	; Return 0
x9189:	mov ax, [bp]	; 3: -117 70 0
x9192:	mov di, [bp + 4]	; 3: -117 126 4
x9195:	mov bp, [bp + 2]	; 3: -117 110 2
x9198:	jmp ax	; 2: -1 -32

printLongDoubleFraction$36:	; FunctionEnd printLongDoubleFraction

float8$10.0#:
x9200:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; PushFloat x
x9208:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; PushZero
x9211:	fldz	; 2: -39 -18

fabs$2:	; SignedGreaterThanEqual 7 x 0
x9213:	fcompp	; 2: -34 -39
x9215:	fstsw ax	; 3: -101 -33 -32
x9218:	sahf	; 1: -98
x9219:	jbe fabs$7	; 2: 118 7

fabs$3:	; PushFloat x
x9221:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; UnarySubtract £temporary829 x
x9224:	fchs	; 2: -39 -32

fabs$5:	; DecreaseStack

fabs$6:	; Goto 8
x9226:	jmp fabs$8	; 2: -21 3

fabs$7:	; PushFloat x
x9228:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; SetReturnValue £temporary833

fabs$9:	; Return £temporary833
x9231:	mov ax, [bp]	; 3: -117 70 0
x9234:	mov di, [bp + 4]	; 3: -117 126 4
x9237:	mov bp, [bp + 2]	; 3: -117 110 2
x9240:	jmp ax	; 2: -1 -32

fabs$10:	; FunctionEnd fabs

tolower:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

tolower$1:	; Parameter 8 c 6
x9242:	mov ax, [bp + 6]	; 3: -117 70 6
x9245:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; Call 8 isupper 0
x9248:	mov word [bp + 8], tolower$3	; 5: -57 70 8 46 36
x9253:	mov [bp + 10], bp	; 3: -119 110 10
x9256:	add bp, 8	; 3: -125 -59 8
x9259:	jmp isupper	; 3: -23 32 -4

tolower$3:	; PostCall 8

tolower$4:	; GetReturnValue £temporary463

tolower$5:	; Equal 31 £temporary463 0
x9262:	cmp bx, 0	; 3: -125 -5 0
x9265:	je tolower$31	; 2: 116 122

tolower$6:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

tolower$7:	; Call 8 localeconv 0
x9267:	mov word [bp + 8], tolower$8	; 5: -57 70 8 65 36
x9272:	mov [bp + 10], bp	; 3: -119 110 10
x9275:	add bp, 8	; 3: -125 -59 8
x9278:	jmp localeconv	; 3: -23 -112 -29

tolower$8:	; PostCall 8

tolower$9:	; GetReturnValue £temporary464

tolower$10:	; Assign localeConvPtr £temporary464
x9281:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; Equal 28 localeConvPtr 0
x9284:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x9288:	je tolower$28	; 2: 116 82

tolower$12:	; Deref £temporary466 -> localeConvPtr localeConvPtr 12
x9290:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; Assign lowerCase £temporary466 -> localeConvPtr
x9293:	mov ax, [si + 12]	; 3: -117 68 12
x9296:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; Deref £temporary467 -> localeConvPtr localeConvPtr 14
x9299:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; Assign upperCase £temporary467 -> localeConvPtr
x9302:	mov ax, [si + 14]	; 3: -117 68 14
x9305:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

tolower$17:	; Parameter 14 upperCase 6
x9308:	mov ax, [bp + 12]	; 3: -117 70 12
x9311:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; Parameter 14 c 8
x9314:	mov ax, [bp + 6]	; 3: -117 70 6
x9317:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; Call 14 strchr 0
x9320:	mov word [bp + 14], tolower$20	; 5: -57 70 14 118 36
x9325:	mov [bp + 16], bp	; 3: -119 110 16
x9328:	add bp, 14	; 3: -125 -59 14
x9331:	jmp strchr	; 3: -23 67 -4

tolower$20:	; PostCall 14

tolower$21:	; GetReturnValue £temporary468

tolower$22:	; BinarySubtract index £temporary468 upperCase
x9334:	sub bx, [bp + 12]	; 3: 43 94 12
x9337:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; BinaryAdd £temporary471 lowerCase index
x9340:	mov si, [bp + 10]	; 3: -117 118 10
x9343:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; Deref £temporary470 -> £temporary471 £temporary471 0

tolower$25:	; IntegralToIntegral £temporary472 £temporary470 -> £temporary471
x9346:	mov bl, [si]	; 2: -118 28
x9348:	and bx, 255	; 4: -127 -29 -1 0
x9352:	cmp bl, 0	; 3: -128 -5 0
x9355:	jge tolower$26	; 2: 125 4
x9357:	neg bl	; 2: -10 -37
x9359:	neg bx	; 2: -9 -37

tolower$26:	; SetReturnValue £temporary472

tolower$27:	; Return £temporary472
x9361:	mov ax, [bp]	; 3: -117 70 0
x9364:	mov di, [bp + 4]	; 3: -117 126 4
x9367:	mov bp, [bp + 2]	; 3: -117 110 2
x9370:	jmp ax	; 2: -1 -32

tolower$28:	; BinaryAdd £temporary473 c 32
x9372:	mov bx, [bp + 6]	; 3: -117 94 6
x9375:	add bx, 32	; 3: -125 -61 32

tolower$29:	; SetReturnValue £temporary473

tolower$30:	; Return £temporary473
x9378:	mov ax, [bp]	; 3: -117 70 0
x9381:	mov di, [bp + 4]	; 3: -117 126 4
x9384:	mov bp, [bp + 2]	; 3: -117 110 2
x9387:	jmp ax	; 2: -1 -32

tolower$31:	; SetReturnValue c
x9389:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; Return c
x9392:	mov ax, [bp]	; 3: -117 70 0
x9395:	mov di, [bp + 4]	; 3: -117 126 4
x9398:	mov bp, [bp + 2]	; 3: -117 110 2
x9401:	jmp ax	; 2: -1 -32

tolower$33:	; FunctionEnd tolower

printLongDoubleExpo:	; PushFloat value
x9403:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; PushFloat 0.0
x9406:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; NotEqual 27 value 0.0
x9408:	fcompp	; 2: -34 -39
x9410:	fstsw ax	; 3: -101 -33 -32
x9413:	sahf	; 1: -98
x9414:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$4:	; Parameter 24 48 6
x9416:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; Call 24 printChar 0
x9420:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 -38 36
x9425:	mov [bp + 26], bp	; 3: -119 110 26
x9428:	add bp, 24	; 3: -125 -59 24
x9431:	jmp printChar	; 3: -23 -68 -7

printLongDoubleExpo$6:	; PostCall 24

printLongDoubleExpo$7:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$8:	; PushFloat 0.0
x9434:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; Parameter 24 0.0 6
x9436:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; Parameter 24 precision 14
x9439:	mov ax, [bp + 20]	; 3: -117 70 20
x9442:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; Parameter 24 grid 16
x9445:	mov ax, [bp + 18]	; 3: -117 70 18
x9448:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; Call 24 printLongDoubleFraction 0
x9451:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 -7 36
x9456:	mov [bp + 26], bp	; 3: -119 110 26
x9459:	add bp, 24	; 3: -125 -59 24
x9462:	jmp printLongDoubleFraction	; 3: -23 87 -2

printLongDoubleExpo$13:	; PostCall 24

printLongDoubleExpo$14:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$15:	; Equal 18 capital 0
x9465:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x9469:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; Assign £temporary1949 69
x9471:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; Goto 19
x9473:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; Assign £temporary1949 101
x9475:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; Parameter 24 £temporary1949 6
x9477:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; Call 24 printChar 0
x9480:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 22 37
x9485:	mov [bp + 26], bp	; 3: -119 110 26
x9488:	add bp, 24	; 3: -125 -59 24
x9491:	jmp printChar	; 3: -23 -128 -7

printLongDoubleExpo$21:	; PostCall 24

printLongDoubleExpo$22:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$23:	; Parameter 24 48 6
x9494:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; Call 24 printChar 0
x9498:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 40 37
x9503:	mov [bp + 26], bp	; 3: -119 110 26
x9506:	add bp, 24	; 3: -125 -59 24
x9509:	jmp printChar	; 3: -23 110 -7

printLongDoubleExpo$25:	; PostCall 24

printLongDoubleExpo$26:	; Goto 80
x9512:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; PushFloat value
x9515:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; PushFloat 0.0
x9518:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; SignedGreaterThanEqual 37 value 0.0
x9520:	fcompp	; 2: -34 -39
x9522:	fstsw ax	; 3: -101 -33 -32
x9525:	sahf	; 1: -98
x9526:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$31:	; Parameter 24 45 6
x9528:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; Call 24 printChar 0
x9532:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 74 37
x9537:	mov [bp + 26], bp	; 3: -119 110 26
x9540:	add bp, 24	; 3: -125 -59 24
x9543:	jmp printChar	; 3: -23 76 -7

printLongDoubleExpo$33:	; PostCall 24

printLongDoubleExpo$34:	; PushFloat value
x9546:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; UnarySubtract £temporary1954 value
x9549:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; PopFloat value
x9551:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$38:	; PushFloat value
x9554:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; Parameter 24 value 6
x9557:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; Call 24 log10 0
x9560:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 102 37
x9565:	mov [bp + 26], bp	; 3: -119 110 26
x9568:	add bp, 24	; 3: -125 -59 24
x9571:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; PostCall 24

printLongDoubleExpo$42:	; GetReturnValue £temporary1955

printLongDoubleExpo$43:	; FloatingToIntegral £temporary1956 £temporary1955
x9574:	fistp word [container2bytes#]	; 4: -33 30 -107 29
x9578:	mov ax, [container2bytes#]	; 3: -95 -107 29

printLongDoubleExpo$44:	; Assign expo £temporary1956
x9581:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; PushFloat value
x9584:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x9587:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; PushFloat 10.0
x9590:	fld qword [float8$10.0#]	; 4: -35 6 -16 35

printLongDoubleExpo$48:	; Parameter 26 10.0 6
x9594:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; IntegralToFloating £temporary1957 expo
x9597:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; Parameter 26 £temporary1957 14
x9600:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; Call 26 pow 0
x9603:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -111 37
x9608:	mov [bp + 36], bp	; 3: -119 110 36
x9611:	add bp, 34	; 3: -125 -59 34
x9614:	jmp pow	; 3: -23 -16 1

printLongDoubleExpo$52:	; PostCall 26
x9617:	fstp qword [bp + 34]	; 3: -35 94 34
x9620:	fld qword [bp + 26]	; 3: -35 70 26
x9623:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; GetReturnValue £temporary1958

printLongDoubleExpo$54:	; SignedDivide £temporary1959 value £temporary1958
x9626:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; PopFloat value
x9628:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$57:	; PushFloat value
x9631:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; Parameter 26 value 6
x9634:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; Parameter 26 plus 14
x9637:	mov ax, [bp + 14]	; 3: -117 70 14
x9640:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; Parameter 26 space 16
x9643:	mov ax, [bp + 16]	; 3: -117 70 16
x9646:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; Parameter 26 grid 18
x9649:	mov ax, [bp + 18]	; 3: -117 70 18
x9652:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; Parameter 26 precision 20
x9655:	mov ax, [bp + 20]	; 3: -117 70 20
x9658:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; Call 26 printLongDoublePlain 0
x9661:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 -53 37
x9666:	mov [bp + 28], bp	; 3: -119 110 28
x9669:	add bp, 26	; 3: -125 -59 26
x9672:	jmp printLongDoublePlain	; 3: -23 -23 -4

printLongDoubleExpo$64:	; PostCall 26

printLongDoubleExpo$65:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$66:	; Equal 69 capital 0
x9675:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x9679:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; Assign £temporary1965 69
x9681:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; Goto 70
x9683:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; Assign £temporary1965 101
x9685:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; Parameter 26 £temporary1965 6
x9687:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; Call 26 printChar 0
x9690:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 -24 37
x9695:	mov [bp + 28], bp	; 3: -119 110 28
x9698:	add bp, 26	; 3: -125 -59 26
x9701:	jmp printChar	; 3: -23 -82 -8

printLongDoubleExpo$72:	; PostCall 26

printLongDoubleExpo$73:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$74:	; IntegralToIntegral £temporary1967 expo
x9704:	mov ax, [bp + 24]	; 3: -117 70 24
x9707:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9713:	cmp ax, 0	; 3: -125 -8 0
x9716:	jge printLongDoubleExpo$75	; 2: 125 5
x9718:	neg ax	; 2: -9 -40
x9720:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; Parameter 26 £temporary1967 6
x9723:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; Parameter 26 1 10
x9727:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; Parameter 26 0 12
x9732:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; Call 26 printLongInt 0
x9737:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 23 38
x9742:	mov [bp + 28], bp	; 3: -119 110 28
x9745:	add bp, 26	; 3: -125 -59 26
x9748:	jmp printLongInt	; 3: -23 -21 -9

printLongDoubleExpo$79:	; PostCall 26

printLongDoubleExpo$80:	; Return 0
x9751:	mov ax, [bp]	; 3: -117 70 0
x9754:	mov di, [bp + 4]	; 3: -117 126 4
x9757:	mov bp, [bp + 2]	; 3: -117 110 2
x9760:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; FunctionEnd printLongDoubleExpo

log10:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

log10$1:	; PushFloat x
x9762:	fld qword [bp + 6]	; 3: -35 70 6

log10$2:	; Parameter 14 x 6
x9765:	fstp qword [bp + 20]	; 3: -35 94 20

log10$3:	; Call 14 log 0
x9768:	mov word [bp + 14], log10$4	; 5: -57 70 14 54 38
x9773:	mov [bp + 16], bp	; 3: -119 110 16
x9776:	add bp, 14	; 3: -125 -59 14
x9779:	nop	; 1: -112
x9780:	jmp log	; 2: -21 25

log10$4:	; PostCall 14

log10$5:	; GetReturnValue £temporary550

log10$6:	; PushFloat 2.30
x9782:	fld qword [float8$2.30#]	; 4: -35 6 71 38

log10$7:	; SignedDivide £temporary551 £temporary550 2.30
x9786:	fdiv	; 2: -34 -7

log10$8:	; SetReturnValue £temporary551

log10$9:	; Return £temporary551
x9788:	mov ax, [bp]	; 3: -117 70 0
x9791:	mov di, [bp + 4]	; 3: -117 126 4
x9794:	mov bp, [bp + 2]	; 3: -117 110 2
x9797:	jmp ax	; 2: -1 -32

log10$10:	; FunctionEnd log10

float8$2.30#:
x9799:	dq 2.30	; 8: 102 102 102 102 102 102 2 64

log:	; PushFloat x
x9807:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; PushZero
x9810:	fldz	; 2: -39 -18

log$2:	; SignedLessThanEqual 76 x 0
x9812:	fcompp	; 2: -34 -39
x9814:	fstsw ax	; 3: -101 -33 -32
x9817:	sahf	; 1: -98
x9818:	jae log$76	; 4: 15 -125 -18 0

log$3:	; Assign n 0
x9822:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; PushFloat x
x9827:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; PushOne
x9830:	fld1	; 2: -39 -24

log$6:	; SignedLessThanEqual 16 x 1
x9832:	fcompp	; 2: -34 -39
x9834:	fstsw ax	; 3: -101 -33 -32
x9837:	sahf	; 1: -98
x9838:	jae log$16	; 2: 115 30

log$7:	; PushFloat x
x9840:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; PushOne
x9843:	fld1	; 2: -39 -24

log$9:	; SignedLessThanEqual 28 x 1
x9845:	fcompp	; 2: -34 -39
x9847:	fstsw ax	; 3: -101 -33 -32
x9850:	sahf	; 1: -98
x9851:	jae log$28	; 2: 115 64

log$10:	; PushFloat x
x9853:	fld qword [bp + 6]	; 3: -35 70 6

log$11:	; PushFloat 2.71
x9856:	fld qword [float8$2.71#]	; 4: -35 6 95 39

log$12:	; SignedDivide £temporary532 x 2.71
x9860:	fdiv	; 2: -34 -7

log$13:	; PopFloat x
x9862:	fstp qword [bp + 6]	; 3: -35 94 6

log$14:	; Increment n
x9865:	inc word [bp + 14]	; 3: -1 70 14

log$15:	; Goto 7
x9868:	jmp log$7	; 2: -21 -30

log$16:	; PushFloat x
x9870:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; PushFloat 0.3690036900369003690036900369
x9873:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 103 39

log$18:	; SignedGreaterThanEqual 28 x 0.3690036900369003690036900369
x9877:	fcompp	; 2: -34 -39
x9879:	fstsw ax	; 3: -101 -33 -32
x9882:	sahf	; 1: -98
x9883:	jbe log$28	; 2: 118 32

log$19:	; PushFloat x
x9885:	fld qword [bp + 6]	; 3: -35 70 6

log$20:	; PushFloat 0.3690036900369003690036900369
x9888:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 103 39

log$21:	; SignedGreaterThanEqual 28 x 0.3690036900369003690036900369
x9892:	fcompp	; 2: -34 -39
x9894:	fstsw ax	; 3: -101 -33 -32
x9897:	sahf	; 1: -98
x9898:	jbe log$28	; 2: 118 17

log$22:	; PushFloat x
x9900:	fld qword [bp + 6]	; 3: -35 70 6

log$23:	; PushFloat 2.71
x9903:	fld qword [float8$2.71#]	; 4: -35 6 95 39

log$24:	; SignedMultiply £temporary536 x 2.71
x9907:	fmul	; 2: -34 -55

log$25:	; PopFloat x
x9909:	fstp qword [bp + 6]	; 3: -35 94 6

log$26:	; Decrement n
x9912:	dec word [bp + 14]	; 3: -1 78 14

log$27:	; Goto 19
x9915:	jmp log$19	; 2: -21 -32

log$28:	; PushOne
x9917:	fld1	; 2: -39 -24

log$29:	; PopFloat index
x9919:	fstp qword [bp + 16]	; 3: -35 94 16

log$30:	; PushZero
x9922:	fldz	; 2: -39 -18

log$31:	; PopFloat sum
x9924:	fstp qword [bp + 32]	; 3: -35 94 32

log$32:	; PushOne
x9927:	fld1	; 2: -39 -24

log$33:	; PopFloat sign
x9929:	fstp qword [bp + 40]	; 3: -35 94 40

log$34:	; PushFloat x
x9932:	fld qword [bp + 6]	; 3: -35 70 6

log$35:	; PushOne
x9935:	fld1	; 2: -39 -24

log$36:	; BinarySubtract £temporary538 x 1
x9937:	fsub	; 2: -34 -23

log$37:	; PopFloat x_minus_1
x9939:	fstp qword [bp + 48]	; 3: -35 94 48

log$38:	; PushFloat x_minus_1
x9942:	fld qword [bp + 48]	; 3: -35 70 48

log$39:	; PopFloat power
x9945:	fstp qword [bp + 56]	; 3: -35 94 56

log$40:	; PushFloat sign
x9948:	fld qword [bp + 40]	; 3: -35 70 40

log$41:	; PushFloat power
x9951:	fld qword [bp + 56]	; 3: -35 70 56

log$42:	; SignedMultiply £temporary539 sign power
x9954:	fmul	; 2: -34 -55

log$43:	; PushFloat index
x9956:	fld qword [bp + 16]	; 3: -35 70 16

log$44:	; PushOne
x9959:	fld1	; 2: -39 -24

log$45:	; BinaryAdd index index 1
x9961:	fadd	; 2: -34 -63

log$46:	; TopFloat index
x9963:	fst qword [bp + 16]	; 3: -35 86 16

log$47:	; PushOne
x9966:	fld1	; 2: -39 -24

log$48:	; BinarySubtract index index 1
x9968:	fsub	; 2: -34 -23

log$49:	; SignedDivide £temporary541 £temporary539 £temporary540
x9970:	fdiv	; 2: -34 -7

log$50:	; PopFloat term
x9972:	fstp qword [bp + 24]	; 3: -35 94 24

log$51:	; PushFloat sum
x9975:	fld qword [bp + 32]	; 3: -35 70 32

log$52:	; PushFloat term
x9978:	fld qword [bp + 24]	; 3: -35 70 24

log$53:	; BinaryAdd £temporary542 sum term
x9981:	fadd	; 2: -34 -63

log$54:	; PopFloat sum
x9983:	fstp qword [bp + 32]	; 3: -35 94 32

log$55:	; PushFloat power
x9986:	fld qword [bp + 56]	; 3: -35 70 56

log$56:	; PushFloat x_minus_1
x9989:	fld qword [bp + 48]	; 3: -35 70 48

log$57:	; SignedMultiply £temporary543 power x_minus_1
x9992:	fmul	; 2: -34 -55

log$58:	; PopFloat power
x9994:	fstp qword [bp + 56]	; 3: -35 94 56

log$59:	; PushFloat sign
x9997:	fld qword [bp + 40]	; 3: -35 70 40

log$60:	; PushFloat -1.0
x10000:	fld qword [float8$minus1.0#]	; 4: -35 6 111 39

log$61:	; SignedMultiply £temporary544 sign -1.0
x10004:	fmul	; 2: -34 -55

log$62:	; PopFloat sign
x10006:	fstp qword [bp + 40]	; 3: -35 94 40

log$63:	; CallHeader 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

log$64:	; PushFloat term
x10009:	fld qword [bp + 24]	; 3: -35 70 24

log$65:	; Parameter 64 term 6
x10012:	fstp qword [bp + 70]	; 3: -35 94 70

log$66:	; Call 64 fabs 0
x10015:	mov word [bp + 64], log$67	; 5: -57 70 64 45 39
x10020:	mov [bp + 66], bp	; 3: -119 110 66
x10023:	add bp, 64	; 3: -125 -59 64
x10026:	jmp fabs	; 3: -23 -53 -4

log$67:	; PostCall 64

log$68:	; GetReturnValue £temporary545

log$69:	; PushFloat 0.000000001
x10029:	fld qword [float8$0.000000001#]	; 4: -35 6 119 39

log$70:	; SignedGreaterThanEqual 40 £temporary545 0.000000001
x10033:	fcompp	; 2: -34 -39
x10035:	fstsw ax	; 3: -101 -33 -32
x10038:	sahf	; 1: -98
x10039:	jbe log$40	; 2: 118 -93

log$71:	; PushFloat sum
x10041:	fld qword [bp + 32]	; 3: -35 70 32

log$72:	; IntegralToFloating £temporary547 n
x10044:	fild word [bp + 14]	; 3: -33 70 14

log$73:	; BinaryAdd £temporary548 sum £temporary547
x10047:	fadd	; 2: -34 -63

log$74:	; SetReturnValue £temporary548

log$75:	; Return £temporary548
x10049:	mov ax, [bp]	; 3: -117 70 0
x10052:	mov di, [bp + 4]	; 3: -117 126 4
x10055:	mov bp, [bp + 2]	; 3: -117 110 2
x10058:	jmp ax	; 2: -1 -32

log$76:	; Assign errno 6
x10060:	mov word [errno], 6	; 6: -57 6 127 39 6 0

log$77:	; PushZero
x10066:	fldz	; 2: -39 -18

log$78:	; SetReturnValue 0

log$79:	; Return 0
x10068:	mov ax, [bp]	; 3: -117 70 0
x10071:	mov di, [bp + 4]	; 3: -117 126 4
x10074:	mov bp, [bp + 2]	; 3: -117 110 2
x10077:	jmp ax	; 2: -1 -32

log$80:	; FunctionEnd log

float8$2.71#:
x10079:	dq 2.71	; 8: -82 71 -31 122 20 -82 5 64

float8$0.3690036900369003690036900369#:
x10087:	dq 0.3690036900369003690036900369	; 8: -86 -12 51 -89 -63 -99 -41 63

float8$minus1.0#:
x10095:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x10103:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

errno:
x10111:	dw 0	; 2: 0 0

pow:	; PushFloat x
x10113:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; PushZero
x10116:	fldz	; 2: -39 -18

pow$2:	; SignedLessThanEqual 18 x 0
x10118:	fcompp	; 2: -34 -39
x10120:	fstsw ax	; 3: -101 -33 -32
x10123:	sahf	; 1: -98
x10124:	jae pow$18	; 2: 115 65

pow$3:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

pow$4:	; PushFloat y
x10126:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x10129:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; PushFloat x
x10132:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; Parameter 22 x 6
x10135:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; Call 22 log 0
x10138:	mov word [bp + 30], pow$9	; 5: -57 70 30 -88 39
x10143:	mov [bp + 32], bp	; 3: -119 110 32
x10146:	add bp, 30	; 3: -125 -59 30
x10149:	jmp log	; 3: -23 -89 -2

pow$9:	; PostCall 22
x10152:	fstp qword [bp + 30]	; 3: -35 94 30
x10155:	fld qword [bp + 22]	; 3: -35 70 22
x10158:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; GetReturnValue £temporary554

pow$11:	; SignedMultiply £temporary555 y £temporary554
x10161:	fmul	; 2: -34 -55

pow$12:	; Parameter 22 £temporary555 6
x10163:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; Call 22 exp 0
x10166:	mov word [bp + 22], pow$14	; 5: -57 70 22 -60 39
x10171:	mov [bp + 24], bp	; 3: -119 110 24
x10174:	add bp, 22	; 3: -125 -59 22
x10177:	jmp exp	; 3: -23 102 1

pow$14:	; PostCall 22

pow$15:	; GetReturnValue £temporary556

pow$16:	; SetReturnValue £temporary556

pow$17:	; Return £temporary556
x10180:	mov ax, [bp]	; 3: -117 70 0
x10183:	mov di, [bp + 4]	; 3: -117 126 4
x10186:	mov bp, [bp + 2]	; 3: -117 110 2
x10189:	jmp ax	; 2: -1 -32

pow$18:	; PushFloat x
x10191:	fld qword [bp + 6]	; 3: -35 70 6

pow$19:	; PushZero
x10194:	fldz	; 2: -39 -18

pow$20:	; NotEqual 27 x 0
x10196:	fcompp	; 2: -34 -39
x10198:	fstsw ax	; 3: -101 -33 -32
x10201:	sahf	; 1: -98
x10202:	jne pow$27	; 2: 117 26

pow$21:	; PushFloat y
x10204:	fld qword [bp + 14]	; 3: -35 70 14

pow$22:	; PushZero
x10207:	fldz	; 2: -39 -18

pow$23:	; NotEqual 27 y 0
x10209:	fcompp	; 2: -34 -39
x10211:	fstsw ax	; 3: -101 -33 -32
x10214:	sahf	; 1: -98
x10215:	jne pow$27	; 2: 117 13

pow$24:	; PushOne
x10217:	fld1	; 2: -39 -24

pow$25:	; SetReturnValue 1

pow$26:	; Return 1
x10219:	mov ax, [bp]	; 3: -117 70 0
x10222:	mov di, [bp + 4]	; 3: -117 126 4
x10225:	mov bp, [bp + 2]	; 3: -117 110 2
x10228:	jmp ax	; 2: -1 -32

pow$27:	; PushFloat x
x10230:	fld qword [bp + 6]	; 3: -35 70 6

pow$28:	; PushZero
x10233:	fldz	; 2: -39 -18

pow$29:	; NotEqual 36 x 0
x10235:	fcompp	; 2: -34 -39
x10237:	fstsw ax	; 3: -101 -33 -32
x10240:	sahf	; 1: -98
x10241:	jne pow$36	; 2: 117 26

pow$30:	; PushFloat y
x10243:	fld qword [bp + 14]	; 3: -35 70 14

pow$31:	; PushZero
x10246:	fldz	; 2: -39 -18

pow$32:	; SignedLessThanEqual 36 y 0
x10248:	fcompp	; 2: -34 -39
x10250:	fstsw ax	; 3: -101 -33 -32
x10253:	sahf	; 1: -98
x10254:	jae pow$36	; 2: 115 13

pow$33:	; PushZero
x10256:	fldz	; 2: -39 -18

pow$34:	; SetReturnValue 0

pow$35:	; Return 0
x10258:	mov ax, [bp]	; 3: -117 70 0
x10261:	mov di, [bp + 4]	; 3: -117 126 4
x10264:	mov bp, [bp + 2]	; 3: -117 110 2
x10267:	jmp ax	; 2: -1 -32

pow$36:	; PushFloat x
x10269:	fld qword [bp + 6]	; 3: -35 70 6

pow$37:	; PushZero
x10272:	fldz	; 2: -39 -18

pow$38:	; SignedGreaterThanEqual 90 x 0
x10274:	fcompp	; 2: -34 -39
x10276:	fstsw ax	; 3: -101 -33 -32
x10279:	sahf	; 1: -98
x10280:	jbe pow$90	; 4: 15 -122 -25 0

pow$39:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

pow$40:	; PushFloat y
x10284:	fld qword [bp + 14]	; 3: -35 70 14

pow$41:	; Parameter 22 y 6
x10287:	fstp qword [bp + 28]	; 3: -35 94 28

pow$42:	; Call 22 floor 0
x10290:	mov word [bp + 22], pow$43	; 5: -57 70 22 64 40
x10295:	mov [bp + 24], bp	; 3: -119 110 24
x10298:	add bp, 22	; 3: -125 -59 22
x10301:	jmp floor	; 3: -23 96 1

pow$43:	; PostCall 22

pow$44:	; GetReturnValue £temporary564

pow$45:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x10304:	fstp qword [bp + 22]	; 3: -35 94 22

pow$46:	; PushFloat y
x10307:	fld qword [bp + 14]	; 3: -35 70 14

pow$47:	; Parameter 22 y 6
x10310:	fstp qword [bp + 36]	; 3: -35 94 36

pow$48:	; Call 22 ceil 0
x10313:	mov word [bp + 30], pow$49	; 5: -57 70 30 87 40
x10318:	mov [bp + 32], bp	; 3: -119 110 32
x10321:	add bp, 30	; 3: -125 -59 30
x10324:	jmp ceil	; 3: -23 -105 1

pow$49:	; PostCall 22
x10327:	fstp qword [bp + 30]	; 3: -35 94 30
x10330:	fld qword [bp + 22]	; 3: -35 70 22
x10333:	fld qword [bp + 30]	; 3: -35 70 30

pow$50:	; GetReturnValue £temporary565

pow$51:	; NotEqual 90 £temporary564 £temporary565
x10336:	fcompp	; 2: -34 -39
x10338:	fstsw ax	; 3: -101 -33 -32
x10341:	sahf	; 1: -98
x10342:	jne pow$90	; 4: 15 -123 -87 0

pow$52:	; PushFloat y
x10346:	fld qword [bp + 14]	; 3: -35 70 14

pow$53:	; FloatingToIntegral £temporary568 y
x10349:	fistp dword [container4bytes#]	; 4: -37 30 76 35
x10353:	mov eax, [container4bytes#]	; 4: 102 -95 76 35

pow$54:	; Assign long_y £temporary568
x10357:	mov [bp + 22], eax	; 4: 102 -119 70 22

pow$55:	; SignedModulo £temporary569 long_y 2
x10361:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x10365:	xor edx, edx	; 3: 102 49 -46
x10368:	idiv dword [int4$2#]	; 5: 102 -9 62 38 41

pow$56:	; NotEqual 73 £temporary569 0
x10373:	cmp edx, 0	; 4: 102 -125 -6 0
x10377:	jne pow$73	; 2: 117 67

pow$57:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

pow$58:	; PushFloat y
x10379:	fld qword [bp + 14]	; 3: -35 70 14

pow$59:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x10382:	fstp qword [bp + 26]	; 3: -35 94 26

pow$60:	; PushFloat x
x10385:	fld qword [bp + 6]	; 3: -35 70 6

pow$61:	; UnarySubtract £temporary571 x
x10388:	fchs	; 2: -39 -32

pow$62:	; Parameter 26 £temporary571 6
x10390:	fstp qword [bp + 40]	; 3: -35 94 40

pow$63:	; Call 26 log 0
x10393:	mov word [bp + 34], pow$64	; 5: -57 70 34 -89 40
x10398:	mov [bp + 36], bp	; 3: -119 110 36
x10401:	add bp, 34	; 3: -125 -59 34
x10404:	jmp log	; 3: -23 -88 -3

pow$64:	; PostCall 26
x10407:	fstp qword [bp + 34]	; 3: -35 94 34
x10410:	fld qword [bp + 26]	; 3: -35 70 26
x10413:	fld qword [bp + 34]	; 3: -35 70 34

pow$65:	; GetReturnValue £temporary572

pow$66:	; SignedMultiply £temporary573 y £temporary572
x10416:	fmul	; 2: -34 -55

pow$67:	; Parameter 26 £temporary573 6
x10418:	fstp qword [bp + 32]	; 3: -35 94 32

pow$68:	; Call 26 exp 0
x10421:	mov word [bp + 26], pow$69	; 5: -57 70 26 -61 40
x10426:	mov [bp + 28], bp	; 3: -119 110 28
x10429:	add bp, 26	; 3: -125 -59 26
x10432:	nop	; 1: -112
x10433:	jmp exp	; 2: -21 103

pow$69:	; PostCall 26

pow$70:	; GetReturnValue £temporary574

pow$71:	; SetReturnValue £temporary574

pow$72:	; Return £temporary574
x10435:	mov ax, [bp]	; 3: -117 70 0
x10438:	mov di, [bp + 4]	; 3: -117 126 4
x10441:	mov bp, [bp + 2]	; 3: -117 110 2
x10444:	jmp ax	; 2: -1 -32

pow$73:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

pow$74:	; PushFloat y
x10446:	fld qword [bp + 14]	; 3: -35 70 14

pow$75:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x10449:	fstp qword [bp + 26]	; 3: -35 94 26

pow$76:	; PushFloat x
x10452:	fld qword [bp + 6]	; 3: -35 70 6

pow$77:	; UnarySubtract £temporary575 x
x10455:	fchs	; 2: -39 -32

pow$78:	; Parameter 26 £temporary575 6
x10457:	fstp qword [bp + 40]	; 3: -35 94 40

pow$79:	; Call 26 log 0
x10460:	mov word [bp + 34], pow$80	; 5: -57 70 34 -22 40
x10465:	mov [bp + 36], bp	; 3: -119 110 36
x10468:	add bp, 34	; 3: -125 -59 34
x10471:	jmp log	; 3: -23 101 -3

pow$80:	; PostCall 26
x10474:	fstp qword [bp + 34]	; 3: -35 94 34
x10477:	fld qword [bp + 26]	; 3: -35 70 26
x10480:	fld qword [bp + 34]	; 3: -35 70 34

pow$81:	; GetReturnValue £temporary576

pow$82:	; SignedMultiply £temporary577 y £temporary576
x10483:	fmul	; 2: -34 -55

pow$83:	; Parameter 26 £temporary577 6
x10485:	fstp qword [bp + 32]	; 3: -35 94 32

pow$84:	; Call 26 exp 0
x10488:	mov word [bp + 26], pow$85	; 5: -57 70 26 6 41
x10493:	mov [bp + 28], bp	; 3: -119 110 28
x10496:	add bp, 26	; 3: -125 -59 26
x10499:	nop	; 1: -112
x10500:	jmp exp	; 2: -21 36

pow$85:	; PostCall 26

pow$86:	; GetReturnValue £temporary578

pow$87:	; UnarySubtract £temporary579 £temporary578
x10502:	fchs	; 2: -39 -32

pow$88:	; SetReturnValue £temporary579

pow$89:	; Return £temporary579
x10504:	mov ax, [bp]	; 3: -117 70 0
x10507:	mov di, [bp + 4]	; 3: -117 126 4
x10510:	mov bp, [bp + 2]	; 3: -117 110 2
x10513:	jmp ax	; 2: -1 -32

pow$90:	; Assign errno 6
x10515:	mov word [errno], 6	; 6: -57 6 127 39 6 0

pow$91:	; PushZero
x10521:	fldz	; 2: -39 -18

pow$92:	; SetReturnValue 0

pow$93:	; Return 0
x10523:	mov ax, [bp]	; 3: -117 70 0
x10526:	mov di, [bp + 4]	; 3: -117 126 4
x10529:	mov bp, [bp + 2]	; 3: -117 110 2
x10532:	jmp ax	; 2: -1 -32

pow$94:	; FunctionEnd pow

int4$2#:
x10534:	dd 2	; 4: 2 0 0 0

exp:	; PushOne
x10538:	fld1	; 2: -39 -24

exp$1:	; PopFloat index
x10540:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; PushOne
x10543:	fld1	; 2: -39 -24

exp$3:	; PopFloat sum
x10545:	fstp qword [bp + 30]	; 3: -35 94 30

exp$4:	; PushOne
x10548:	fld1	; 2: -39 -24

exp$5:	; PopFloat faculty
x10550:	fstp qword [bp + 38]	; 3: -35 94 38

exp$6:	; PushFloat x
x10553:	fld qword [bp + 6]	; 3: -35 70 6

exp$7:	; PopFloat power
x10556:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; PushFloat power
x10559:	fld qword [bp + 46]	; 3: -35 70 46

exp$9:	; PushFloat faculty
x10562:	fld qword [bp + 38]	; 3: -35 70 38

exp$10:	; SignedDivide £temporary521 power faculty
x10565:	fdiv	; 2: -34 -7

exp$11:	; PopFloat term
x10567:	fstp qword [bp + 22]	; 3: -35 94 22

exp$12:	; PushFloat sum
x10570:	fld qword [bp + 30]	; 3: -35 70 30

exp$13:	; PushFloat term
x10573:	fld qword [bp + 22]	; 3: -35 70 22

exp$14:	; BinaryAdd £temporary522 sum term
x10576:	fadd	; 2: -34 -63

exp$15:	; PopFloat sum
x10578:	fstp qword [bp + 30]	; 3: -35 94 30

exp$16:	; PushFloat power
x10581:	fld qword [bp + 46]	; 3: -35 70 46

exp$17:	; PushFloat x
x10584:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; SignedMultiply £temporary523 power x
x10587:	fmul	; 2: -34 -55

exp$19:	; PopFloat power
x10589:	fstp qword [bp + 46]	; 3: -35 94 46

exp$20:	; PushFloat faculty
x10592:	fld qword [bp + 38]	; 3: -35 70 38

exp$21:	; PushFloat index
x10595:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; PushOne
x10598:	fld1	; 2: -39 -24

exp$23:	; BinaryAdd index index 1
x10600:	fadd	; 2: -34 -63

exp$24:	; TopFloat index
x10602:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; SignedMultiply £temporary525 faculty £temporary524
x10605:	fmul	; 2: -34 -55

exp$26:	; PopFloat faculty
x10607:	fstp qword [bp + 38]	; 3: -35 94 38

exp$27:	; CallHeader 54 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

exp$28:	; PushFloat term
x10610:	fld qword [bp + 22]	; 3: -35 70 22

exp$29:	; Parameter 54 term 6
x10613:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; Call 54 fabs 0
x10616:	mov word [bp + 54], exp$31	; 5: -57 70 54 -122 41
x10621:	mov [bp + 56], bp	; 3: -119 110 56
x10624:	add bp, 54	; 3: -125 -59 54
x10627:	jmp fabs	; 3: -23 114 -6

exp$31:	; PostCall 54

exp$32:	; GetReturnValue £temporary526

exp$33:	; PushFloat 0.000000001
x10630:	fld qword [float8$0.000000001#]	; 4: -35 6 119 39

exp$34:	; SignedGreaterThanEqual 8 £temporary526 0.000000001
x10634:	fcompp	; 2: -34 -39
x10636:	fstsw ax	; 3: -101 -33 -32
x10639:	sahf	; 1: -98
x10640:	jbe exp$8	; 2: 118 -83

exp$35:	; PushFloat sum
x10642:	fld qword [bp + 30]	; 3: -35 70 30

exp$36:	; SetReturnValue sum

exp$37:	; Return sum
x10645:	mov ax, [bp]	; 3: -117 70 0
x10648:	mov di, [bp + 4]	; 3: -117 126 4
x10651:	mov bp, [bp + 2]	; 3: -117 110 2
x10654:	jmp ax	; 2: -1 -32

exp$38:	; FunctionEnd exp

floor:	; PushFloat x
x10656:	fld qword [bp + 6]	; 3: -35 70 6

floor$1:	; PushZero
x10659:	fldz	; 2: -39 -18

floor$2:	; SignedGreaterThanEqual 13 x 0
x10661:	fcompp	; 2: -34 -39
x10663:	fstsw ax	; 3: -101 -33 -32
x10666:	sahf	; 1: -98
x10667:	jbe floor$13	; 2: 118 35

floor$3:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

floor$4:	; PushFloat x
x10669:	fld qword [bp + 6]	; 3: -35 70 6

floor$5:	; UnarySubtract £temporary805 x
x10672:	fchs	; 2: -39 -32

floor$6:	; Parameter 14 £temporary805 6
x10674:	fstp qword [bp + 20]	; 3: -35 94 20

floor$7:	; Call 14 ceil 0
x10677:	mov word [bp + 14], floor$8	; 5: -57 70 14 -61 41
x10682:	mov [bp + 16], bp	; 3: -119 110 16
x10685:	add bp, 14	; 3: -125 -59 14
x10688:	nop	; 1: -112
x10689:	jmp ceil	; 2: -21 43

floor$8:	; PostCall 14

floor$9:	; GetReturnValue £temporary806

floor$10:	; UnarySubtract £temporary807 £temporary806
x10691:	fchs	; 2: -39 -32

floor$11:	; SetReturnValue £temporary807

floor$12:	; Return £temporary807
x10693:	mov ax, [bp]	; 3: -117 70 0
x10696:	mov di, [bp + 4]	; 3: -117 126 4
x10699:	mov bp, [bp + 2]	; 3: -117 110 2
x10702:	jmp ax	; 2: -1 -32

floor$13:	; PushFloat x
x10704:	fld qword [bp + 6]	; 3: -35 70 6

floor$14:	; FloatingToIntegral £temporary808 x
x10707:	fistp dword [container4bytes#]	; 4: -37 30 76 35
x10711:	mov eax, [container4bytes#]	; 4: 102 -95 76 35

floor$15:	; IntegralToFloating £temporary809 £temporary808
x10715:	mov [container4bytes#], eax	; 4: 102 -93 76 35
x10719:	fild dword [container4bytes#]	; 4: -37 6 76 35

floor$16:	; SetReturnValue £temporary809

floor$17:	; Return £temporary809
x10723:	mov ax, [bp]	; 3: -117 70 0
x10726:	mov di, [bp + 4]	; 3: -117 126 4
x10729:	mov bp, [bp + 2]	; 3: -117 110 2
x10732:	jmp ax	; 2: -1 -32

floor$18:	; FunctionEnd floor

ceil:	; PushFloat x
x10734:	fld qword [bp + 6]	; 3: -35 70 6

ceil$1:	; PushZero
x10737:	fldz	; 2: -39 -18

ceil$2:	; SignedGreaterThanEqual 13 x 0
x10739:	fcompp	; 2: -34 -39
x10741:	fstsw ax	; 3: -101 -33 -32
x10744:	sahf	; 1: -98
x10745:	jbe ceil$13	; 2: 118 35

ceil$3:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

ceil$4:	; PushFloat x
x10747:	fld qword [bp + 6]	; 3: -35 70 6

ceil$5:	; UnarySubtract £temporary812 x
x10750:	fchs	; 2: -39 -32

ceil$6:	; Parameter 14 £temporary812 6
x10752:	fstp qword [bp + 20]	; 3: -35 94 20

ceil$7:	; Call 14 floor 0
x10755:	mov word [bp + 14], ceil$8	; 5: -57 70 14 17 42
x10760:	mov [bp + 16], bp	; 3: -119 110 16
x10763:	add bp, 14	; 3: -125 -59 14
x10766:	nop	; 1: -112
x10767:	jmp floor	; 2: -21 -113

ceil$8:	; PostCall 14

ceil$9:	; GetReturnValue £temporary813

ceil$10:	; UnarySubtract £temporary814 £temporary813
x10769:	fchs	; 2: -39 -32

ceil$11:	; SetReturnValue £temporary814

ceil$12:	; Return £temporary814
x10771:	mov ax, [bp]	; 3: -117 70 0
x10774:	mov di, [bp + 4]	; 3: -117 126 4
x10777:	mov bp, [bp + 2]	; 3: -117 110 2
x10780:	jmp ax	; 2: -1 -32

ceil$13:	; PushFloat x
x10782:	fld qword [bp + 6]	; 3: -35 70 6

ceil$14:	; PushFloat 0.999999999999
x10785:	fld qword [float8$0.999999999999#]	; 4: -35 6 66 42

ceil$15:	; BinaryAdd £temporary815 x 0.999999999999
x10789:	fadd	; 2: -34 -63

ceil$16:	; FloatingToIntegral £temporary816 £temporary815
x10791:	fistp dword [container4bytes#]	; 4: -37 30 76 35
x10795:	mov eax, [container4bytes#]	; 4: 102 -95 76 35

ceil$17:	; IntegralToFloating £temporary817 £temporary816
x10799:	mov [container4bytes#], eax	; 4: 102 -93 76 35
x10803:	fild dword [container4bytes#]	; 4: -37 6 76 35

ceil$18:	; SetReturnValue £temporary817

ceil$19:	; Return £temporary817
x10807:	mov ax, [bp]	; 3: -117 70 0
x10810:	mov di, [bp + 4]	; 3: -117 126 4
x10813:	mov bp, [bp + 2]	; 3: -117 110 2
x10816:	jmp ax	; 2: -1 -32

ceil$20:	; FunctionEnd ceil

float8$0.999999999999#:
x10818:	dq 0.999999999999	; 8: -47 -36 -1 -1 -1 -1 -17 63

isdigit:	; SignedLessThan 4 c 48
x10826:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x10830:	jl isdigit$4	; 2: 124 11

isdigit$1:	; SignedGreaterThan 4 c 57
x10832:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x10836:	jg isdigit$4	; 2: 127 5

isdigit$2:	; Assign £temporary406 1
x10838:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; Goto 5
x10841:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; Assign £temporary406 0
x10843:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; SetReturnValue £temporary406

isdigit$6:	; Return £temporary406
x10846:	mov ax, [bp]	; 3: -117 70 0
x10849:	mov di, [bp + 4]	; 3: -117 126 4
x10852:	mov bp, [bp + 2]	; 3: -117 110 2
x10855:	jmp ax	; 2: -1 -32

isdigit$7:	; FunctionEnd isdigit

asctime:	; Assign localeConvPtr 0
x10857:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

asctime$1:	; Equal 5 localeConvPtr 0
x10862:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10866:	je asctime$5	; 2: 116 8

asctime$2:	; Deref £temporary3592 -> localeConvPtr localeConvPtr 4
x10868:	mov si, [bp + 8]	; 3: -117 118 8

asctime$3:	; Assign £temporary3596 £temporary3592 -> localeConvPtr
x10871:	mov ax, [si + 4]	; 3: -117 68 4

asctime$4:	; Goto 6
x10874:	jmp asctime$6	; 2: -21 3

asctime$5:	; Assign £temporary3596 0
x10876:	mov ax, 0	; 3: -72 0 0

asctime$6:	; Assign shortDayList £temporary3596
x10879:	mov [bp + 10], ax	; 3: -119 70 10

asctime$7:	; Equal 11 localeConvPtr 0
x10882:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x10886:	je asctime$11	; 2: 116 8

asctime$8:	; Deref £temporary3598 -> localeConvPtr localeConvPtr 8
x10888:	mov si, [bp + 8]	; 3: -117 118 8

asctime$9:	; Assign £temporary3602 £temporary3598 -> localeConvPtr
x10891:	mov ax, [si + 8]	; 3: -117 68 8

asctime$10:	; Goto 12
x10894:	jmp asctime$12	; 2: -21 3

asctime$11:	; Assign £temporary3602 0
x10896:	mov ax, 0	; 3: -72 0 0

asctime$12:	; Assign shortMonthList £temporary3602
x10899:	mov [bp + 12], ax	; 3: -119 70 12

asctime$13:	; Equal 16 shortDayList 0
x10902:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x10906:	je asctime$16	; 2: 116 5

asctime$14:	; Assign £temporary3607 shortDayList
x10908:	mov ax, [bp + 10]	; 3: -117 70 10

asctime$15:	; Goto 17
x10911:	jmp asctime$17	; 2: -21 3

asctime$16:	; Assign £temporary3607 g_defaultShortDayList
x10913:	mov ax, @4212$g_defaultShortDayList	; 3: -72 62 43

asctime$17:	; Assign shortDayList £temporary3607
x10916:	mov [bp + 10], ax	; 3: -119 70 10

asctime$18:	; Equal 21 shortMonthList 0
x10919:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x10923:	je asctime$21	; 2: 116 5

asctime$19:	; Assign £temporary3612 shortMonthList
x10925:	mov ax, [bp + 12]	; 3: -117 70 12

asctime$20:	; Goto 22
x10928:	jmp asctime$22	; 2: -21 3

asctime$21:	; Assign £temporary3612 g_defaultShortMonthList
x10930:	mov ax, @4214$g_defaultShortMonthList	; 3: -72 76 43

asctime$22:	; Assign shortMonthList £temporary3612
x10933:	mov [bp + 12], ax	; 3: -119 70 12

asctime$23:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

asctime$24:	; Parameter 14 g_timeString 6
x10936:	mov word [bp + 20], @4211$g_timeString	; 5: -57 70 20 100 43

asctime$25:	; Parameter 14 string_25s2025s2025i202502i3A2502i3A2502i2025i# 8
x10941:	mov word [bp + 22], string_25s2025s2025i202502i3A2502i3A2502i2025i#	; 5: -57 70 22 100 44

asctime$26:	; Deref £temporary3613 -> tp tp 12
x10946:	mov si, [bp + 6]	; 3: -117 118 6

asctime$27:	; UnsignedMultiply £temporary3615 £temporary3613 -> tp 2
x10949:	mov ax, [si + 12]	; 3: -117 68 12
x10952:	xor dx, dx	; 2: 49 -46
x10954:	mul word [int2$2#]	; 4: -9 38 -75 4

asctime$28:	; BinaryAdd £temporary3616 shortDayList £temporary3615
x10958:	mov si, [bp + 10]	; 3: -117 118 10
x10961:	add si, ax	; 2: 1 -58

asctime$29:	; Deref £temporary3614 -> £temporary3616 £temporary3616 0

asctime$30:	; Parameter 14 £temporary3614 -> £temporary3616 10
x10963:	mov ax, [si]	; 2: -117 4
x10965:	mov [bp + 24], ax	; 3: -119 70 24

asctime$31:	; Deref £temporary3617 -> tp tp 8
x10968:	mov si, [bp + 6]	; 3: -117 118 6

asctime$32:	; UnsignedMultiply £temporary3619 £temporary3617 -> tp 2
x10971:	mov ax, [si + 8]	; 3: -117 68 8
x10974:	xor dx, dx	; 2: 49 -46
x10976:	mul word [int2$2#]	; 4: -9 38 -75 4

asctime$33:	; BinaryAdd £temporary3620 shortMonthList £temporary3619
x10980:	mov si, [bp + 12]	; 3: -117 118 12
x10983:	add si, ax	; 2: 1 -58

asctime$34:	; Deref £temporary3618 -> £temporary3620 £temporary3620 0

asctime$35:	; Parameter 14 £temporary3618 -> £temporary3620 12
x10985:	mov ax, [si]	; 2: -117 4
x10987:	mov [bp + 26], ax	; 3: -119 70 26

asctime$36:	; Deref £temporary3621 -> tp tp 6
x10990:	mov si, [bp + 6]	; 3: -117 118 6

asctime$37:	; Parameter 14 £temporary3621 -> tp 14
x10993:	mov ax, [si + 6]	; 3: -117 68 6
x10996:	mov [bp + 28], ax	; 3: -119 70 28

asctime$38:	; Deref £temporary3622 -> tp tp 4
x10999:	mov si, [bp + 6]	; 3: -117 118 6

asctime$39:	; Parameter 14 £temporary3622 -> tp 16
x11002:	mov ax, [si + 4]	; 3: -117 68 4
x11005:	mov [bp + 30], ax	; 3: -119 70 30

asctime$40:	; Deref £temporary3623 -> tp tp 2
x11008:	mov si, [bp + 6]	; 3: -117 118 6

asctime$41:	; Parameter 14 £temporary3623 -> tp 18
x11011:	mov ax, [si + 2]	; 3: -117 68 2
x11014:	mov [bp + 32], ax	; 3: -119 70 32

asctime$42:	; Deref £temporary3624 -> tp tp 0
x11017:	mov si, [bp + 6]	; 3: -117 118 6

asctime$43:	; Parameter 14 £temporary3624 -> tp 20
x11020:	mov ax, [si]	; 2: -117 4
x11022:	mov [bp + 34], ax	; 3: -119 70 34

asctime$44:	; Deref £temporary3625 -> tp tp 10
x11025:	mov si, [bp + 6]	; 3: -117 118 6

asctime$45:	; BinaryAdd £temporary3626 £temporary3625 -> tp 1900
x11028:	mov ax, [si + 10]	; 3: -117 68 10
x11031:	add ax, 1900	; 3: 5 108 7

asctime$46:	; Parameter 14 £temporary3626 22
x11034:	mov [bp + 36], ax	; 3: -119 70 36

asctime$47:	; Call 14 sprintf 0
x11037:	mov word [bp + 14], asctime$48	; 5: -57 70 14 48 43
x11042:	mov [bp + 16], bp	; 3: -119 110 16
x11045:	add bp, 14	; 3: -125 -59 14
x11048:	mov di, bp	; 2: -119 -17
x11050:	add di, 14	; 3: -125 -57 14
x11053:	jmp sprintf	; 3: -23 79 1

asctime$48:	; PostCall 14

asctime$49:	; SetReturnValue g_timeString
x11056:	mov bx, @4211$g_timeString	; 3: -69 100 43

asctime$50:	; Return g_timeString
x11059:	mov ax, [bp]	; 3: -117 70 0
x11062:	mov di, [bp + 4]	; 3: -117 126 4
x11065:	mov bp, [bp + 2]	; 3: -117 110 2
x11068:	jmp ax	; 2: -1 -32

asctime$51:	; FunctionEnd asctime

@4212$g_defaultShortDayList:
x11070:	dw string_Sun# ; 2: 32 4
x11072:	dw string_Mon# ; 2: 36 4
x11074:	dw string_Tue# ; 2: 40 4
x11076:	dw string_Wed# ; 2: 44 4
x11078:	dw string_Thu# ; 2: 48 4
x11080:	dw string_Fri# ; 2: 52 4
x11082:	dw string_Sat# ; 2: 56 4

@4214$g_defaultShortMonthList:
x11084:	dw string_Jan# ; 2: 125 8
x11086:	dw string_Feb# ; 2: -127 8
x11088:	dw string_Mar# ; 2: -123 8
x11090:	dw string_Apr# ; 2: -119 8
x11092:	dw string_May# ; 2: -115 8
x11094:	dw string_Jun# ; 2: -111 8
x11096:	dw string_Jul# ; 2: -107 8
x11098:	dw string_Aug# ; 2: -103 8
x11100:	dw string_Sep# ; 2: -99 8
x11102:	dw string_Oct# ; 2: -95 8
x11104:	dw string_Nov# ; 2: -91 8
x11106:	dw string_Dec# ; 2: -87 8

@4211$g_timeString:
x11108:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 256: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

string_25s2025s2025i202502i3A2502i3A2502i2025i#:
x11364:	db "%s %s %i %02i:%02i:%02i %i", 0	; 27: 37 115 32 37 115 32 37 105 32 37 48 50 105 58 37 48 50 105 58 37 48 50 105 32 37 105 0

sprintf:	; address £temporary2402 format
x11391:	mov si, bp	; 2: -119 -18
x11393:	add si, 8	; 3: -125 -58 8

sprintf$1:	; IntegralToIntegral £temporary2403 £temporary2402

sprintf$2:	; BinaryAdd arg_list £temporary2403 2
x11396:	add si, 2	; 3: -125 -58 2
x11399:	mov [di + 10], si	; 3: -119 117 10

sprintf$3:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

sprintf$4:	; Parameter 12 outString 6
x11402:	mov ax, [bp + 6]	; 3: -117 70 6
x11405:	mov [di + 18], ax	; 3: -119 69 18

sprintf$5:	; Parameter 12 format 8
x11408:	mov ax, [bp + 8]	; 3: -117 70 8
x11411:	mov [di + 20], ax	; 3: -119 69 20

sprintf$6:	; Parameter 12 arg_list 10
x11414:	mov ax, [di + 10]	; 3: -117 69 10
x11417:	mov [di + 22], ax	; 3: -119 69 22

sprintf$7:	; Call 12 vsprintf 0
x11420:	mov word [di + 12], sprintf$8	; 5: -57 69 12 -81 44
x11425:	mov [di + 14], bp	; 3: -119 109 14
x11428:	mov [di + 16], di	; 3: -119 125 16
x11431:	add di, 12	; 3: -125 -57 12
x11434:	mov bp, di	; 2: -119 -3
x11436:	nop	; 1: -112
x11437:	jmp vsprintf	; 2: -21 11

sprintf$8:	; PostCall 12

sprintf$9:	; GetReturnValue £temporary2405

sprintf$10:	; SetReturnValue £temporary2405

sprintf$11:	; Return £temporary2405
x11439:	mov ax, [bp]	; 3: -117 70 0
x11442:	mov di, [bp + 4]	; 3: -117 126 4
x11445:	mov bp, [bp + 2]	; 3: -117 110 2
x11448:	jmp ax	; 2: -1 -32

sprintf$12:	; FunctionEnd sprintf

vsprintf:	; Assign g_outStatus 1
x11450:	mov word [g_outStatus], 1	; 6: -57 6 33 18 1 0

vsprintf$1:	; IntegralToIntegral £temporary2410 outString
x11456:	mov ax, [bp + 6]	; 3: -117 70 6

vsprintf$2:	; Assign g_outDevice £temporary2410
x11459:	mov [g_outDevice], ax	; 3: -93 35 18

vsprintf$3:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

vsprintf$4:	; Parameter 12 format 6
x11462:	mov ax, [bp + 8]	; 3: -117 70 8
x11465:	mov [bp + 18], ax	; 3: -119 70 18

vsprintf$5:	; Parameter 12 arg_list 8
x11468:	mov ax, [bp + 10]	; 3: -117 70 10
x11471:	mov [bp + 20], ax	; 3: -119 70 20

vsprintf$6:	; Call 12 printFormat 0
x11474:	mov word [bp + 12], vsprintf$7	; 5: -57 70 12 -32 44
x11479:	mov [bp + 14], bp	; 3: -119 110 14
x11482:	add bp, 12	; 3: -125 -59 12
x11485:	jmp printFormat	; 3: -23 69 -27

vsprintf$7:	; PostCall 12

vsprintf$8:	; GetReturnValue £temporary2411

vsprintf$9:	; SetReturnValue £temporary2411

vsprintf$10:	; Return £temporary2411
x11488:	mov ax, [bp]	; 3: -117 70 0
x11491:	mov di, [bp + 4]	; 3: -117 126 4
x11494:	mov bp, [bp + 2]	; 3: -117 110 2
x11497:	jmp ax	; 2: -1 -32

vsprintf$11:	; FunctionEnd vsprintf

strcpy:	; Assign index 0
x11499:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcpy$1:	; BinaryAdd £temporary3901 source index
x11504:	mov si, [bp + 8]	; 3: -117 118 8
x11507:	add si, [bp + 10]	; 3: 3 118 10

strcpy$2:	; Deref £temporary3900 -> £temporary3901 £temporary3901 0

strcpy$3:	; Equal 11 £temporary3900 -> £temporary3901 0
x11510:	cmp byte [si], 0	; 3: -128 60 0
x11513:	je strcpy$11	; 2: 116 21

strcpy$4:	; BinaryAdd £temporary3905 target index
x11515:	mov si, [bp + 6]	; 3: -117 118 6
x11518:	add si, [bp + 10]	; 3: 3 118 10

strcpy$5:	; Deref £temporary3904 -> £temporary3905 £temporary3905 0

strcpy$6:	; BinaryAdd £temporary3907 source index
x11521:	mov di, [bp + 8]	; 3: -117 126 8
x11524:	add di, [bp + 10]	; 3: 3 126 10

strcpy$7:	; Deref £temporary3906 -> £temporary3907 £temporary3907 0

strcpy$8:	; Assign £temporary3904 -> £temporary3905 £temporary3906 -> £temporary3907
x11527:	mov al, [di]	; 2: -118 5
x11529:	mov [si], al	; 2: -120 4

strcpy$9:	; Increment index
x11531:	inc word [bp + 10]	; 3: -1 70 10

strcpy$10:	; Goto 1
x11534:	jmp strcpy$1	; 2: -21 -32

strcpy$11:	; BinaryAdd £temporary3909 target index
x11536:	mov si, [bp + 6]	; 3: -117 118 6
x11539:	add si, [bp + 10]	; 3: 3 118 10

strcpy$12:	; Deref £temporary3908 -> £temporary3909 £temporary3909 0

strcpy$13:	; Assign £temporary3908 -> £temporary3909 0
x11542:	mov byte [si], 0	; 3: -58 4 0

strcpy$14:	; SetReturnValue target
x11545:	mov bx, [bp + 6]	; 3: -117 94 6

strcpy$15:	; Return target
x11548:	mov ax, [bp]	; 3: -117 70 0
x11551:	mov di, [bp + 4]	; 3: -117 126 4
x11554:	mov bp, [bp + 2]	; 3: -117 110 2
x11557:	jmp ax	; 2: -1 -32

strcpy$16:	; FunctionEnd strcpy

ctime:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

ctime$1:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

ctime$2:	; Parameter 8 time 6
x11559:	mov ax, [bp + 6]	; 3: -117 70 6
x11562:	mov [bp + 14], ax	; 3: -119 70 14

ctime$3:	; Call 8 localtime 0
x11565:	mov word [bp + 8], ctime$4	; 5: -57 70 8 59 45
x11570:	mov [bp + 10], bp	; 3: -119 110 10
x11573:	add bp, 8	; 3: -125 -59 8
x11576:	jmp localtime	; 3: -23 122 -31

ctime$4:	; PostCall 8

ctime$5:	; GetReturnValue £temporary3637

ctime$6:	; Parameter 8 £temporary3637 6
x11579:	mov [bp + 14], bx	; 3: -119 94 14

ctime$7:	; Call 8 asctime 0
x11582:	mov word [bp + 8], ctime$8	; 5: -57 70 8 76 45
x11587:	mov [bp + 10], bp	; 3: -119 110 10
x11590:	add bp, 8	; 3: -125 -59 8
x11593:	jmp asctime	; 3: -23 29 -3

ctime$8:	; PostCall 8

ctime$9:	; GetReturnValue £temporary3638

ctime$10:	; SetReturnValue £temporary3638

ctime$11:	; Return £temporary3638
x11596:	mov ax, [bp]	; 3: -117 70 0
x11599:	mov di, [bp + 4]	; 3: -117 126 4
x11602:	mov bp, [bp + 2]	; 3: -117 110 2
x11605:	jmp ax	; 2: -1 -32

ctime$12:	; FunctionEnd ctime

strftime:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$1:	; Call 14 localeconv 0
x11607:	mov word [bp + 14], strftime$2	; 5: -57 70 14 101 45
x11612:	mov [bp + 16], bp	; 3: -119 110 16
x11615:	add bp, 14	; 3: -125 -59 14
x11618:	jmp localeconv	; 3: -23 108 -38

strftime$2:	; PostCall 14

strftime$3:	; GetReturnValue £temporary3661

strftime$4:	; Assign localeConvPtr £temporary3661
x11621:	mov [bp + 14], bx	; 3: -119 94 14

strftime$5:	; Equal 9 localeConvPtr 0
x11624:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x11628:	je strftime$9	; 2: 116 8

strftime$6:	; Deref £temporary3663 -> localeConvPtr localeConvPtr 4
x11630:	mov si, [bp + 14]	; 3: -117 118 14

strftime$7:	; Assign £temporary3667 £temporary3663 -> localeConvPtr
x11633:	mov ax, [si + 4]	; 3: -117 68 4

strftime$8:	; Goto 10
x11636:	jmp strftime$10	; 2: -21 3

strftime$9:	; Assign £temporary3667 0
x11638:	mov ax, 0	; 3: -72 0 0

strftime$10:	; Assign shortDayList £temporary3667
x11641:	mov [bp + 16], ax	; 3: -119 70 16

strftime$11:	; Equal 15 localeConvPtr 0
x11644:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x11648:	je strftime$15	; 2: 116 8

strftime$12:	; Deref £temporary3669 -> localeConvPtr localeConvPtr 8
x11650:	mov si, [bp + 14]	; 3: -117 118 14

strftime$13:	; Assign £temporary3673 £temporary3669 -> localeConvPtr
x11653:	mov ax, [si + 8]	; 3: -117 68 8

strftime$14:	; Goto 16
x11656:	jmp strftime$16	; 2: -21 3

strftime$15:	; Assign £temporary3673 0
x11658:	mov ax, 0	; 3: -72 0 0

strftime$16:	; Assign shortMonthList £temporary3673
x11661:	mov [bp + 18], ax	; 3: -119 70 18

strftime$17:	; Equal 21 localeConvPtr 0
x11664:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x11668:	je strftime$21	; 2: 116 8

strftime$18:	; Deref £temporary3675 -> localeConvPtr localeConvPtr 6
x11670:	mov si, [bp + 14]	; 3: -117 118 14

strftime$19:	; Assign £temporary3679 £temporary3675 -> localeConvPtr
x11673:	mov ax, [si + 6]	; 3: -117 68 6

strftime$20:	; Goto 22
x11676:	jmp strftime$22	; 2: -21 3

strftime$21:	; Assign £temporary3679 0
x11678:	mov ax, 0	; 3: -72 0 0

strftime$22:	; Assign longDayList £temporary3679
x11681:	mov [bp + 20], ax	; 3: -119 70 20

strftime$23:	; Equal 27 localeConvPtr 0
x11684:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x11688:	je strftime$27	; 2: 116 8

strftime$24:	; Deref £temporary3681 -> localeConvPtr localeConvPtr 10
x11690:	mov si, [bp + 14]	; 3: -117 118 14

strftime$25:	; Assign £temporary3685 £temporary3681 -> localeConvPtr
x11693:	mov ax, [si + 10]	; 3: -117 68 10

strftime$26:	; Goto 28
x11696:	jmp strftime$28	; 2: -21 3

strftime$27:	; Assign £temporary3685 0
x11698:	mov ax, 0	; 3: -72 0 0

strftime$28:	; Assign longMonthList £temporary3685
x11701:	mov [bp + 22], ax	; 3: -119 70 22

strftime$29:	; Deref £temporary3686 -> tp tp 10
x11704:	mov si, [bp + 12]	; 3: -117 118 12

strftime$30:	; BinarySubtract £temporary3687 £temporary3686 -> tp 69
x11707:	mov ax, [si + 10]	; 3: -117 68 10
x11710:	sub ax, 69	; 3: -125 -24 69

strftime$31:	; SignedDivide leapDays £temporary3687 4
x11713:	xor dx, dx	; 2: 49 -46
x11715:	idiv word [int2$4#]	; 4: -9 62 -49 7
x11719:	mov [bp + 24], ax	; 3: -119 70 24

strftime$32:	; Deref £temporary3689 -> tp tp 10
x11722:	mov si, [bp + 12]	; 3: -117 118 12

strftime$33:	; BinarySubtract £temporary3690 £temporary3689 -> tp 70
x11725:	mov ax, [si + 10]	; 3: -117 68 10
x11728:	sub ax, 70	; 3: -125 -24 70

strftime$34:	; SignedMultiply £temporary3691 £temporary3690 365
x11731:	xor dx, dx	; 2: 49 -46
x11733:	imul word [int2$365#]	; 4: -9 46 -24 11

strftime$35:	; BinaryAdd £temporary3692 £temporary3691 leapDays
x11737:	add ax, [bp + 24]	; 3: 3 70 24

strftime$36:	; Deref £temporary3693 -> tp tp 14
x11740:	mov si, [bp + 12]	; 3: -117 118 12

strftime$37:	; BinaryAdd £temporary3694 £temporary3692 £temporary3693 -> tp
x11743:	add ax, [si + 14]	; 3: 3 68 14

strftime$38:	; IntegralToIntegral £temporary3695 £temporary3694
x11746:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x11752:	cmp ax, 0	; 3: -125 -8 0
x11755:	jge strftime$39	; 2: 125 5
x11757:	neg ax	; 2: -9 -40
x11759:	neg eax	; 3: 102 -9 -40

strftime$39:	; Assign totalDays £temporary3695
x11762:	mov [bp + 26], eax	; 4: 102 -119 70 26

strftime$40:	; CallHeader 34 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$41:	; Parameter 34 s 6
x11766:	mov ax, [bp + 6]	; 3: -117 70 6
x11769:	mov [bp + 40], ax	; 3: -119 70 40

strftime$42:	; Parameter 34 string_# 8
x11772:	mov word [bp + 42], string_#	; 5: -57 70 42 -3 7

strftime$43:	; Call 34 strcpy 0
x11777:	mov word [bp + 34], strftime$44	; 5: -57 70 34 15 46
x11782:	mov [bp + 36], bp	; 3: -119 110 36
x11785:	add bp, 34	; 3: -125 -59 34
x11788:	jmp strcpy	; 3: -23 -36 -2

strftime$44:	; PostCall 34

strftime$45:	; Equal 48 shortDayList 0
x11791:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x11795:	je strftime$48	; 2: 116 5

strftime$46:	; Assign £temporary3701 shortDayList
x11797:	mov ax, [bp + 16]	; 3: -117 70 16

strftime$47:	; Goto 49
x11800:	jmp strftime$49	; 2: -21 3

strftime$48:	; Assign £temporary3701 g_defaultShortDayList
x11802:	mov ax, @4212$g_defaultShortDayList	; 3: -72 62 43

strftime$49:	; Assign shortDayList £temporary3701
x11805:	mov [bp + 16], ax	; 3: -119 70 16

strftime$50:	; Equal 53 longDayList 0
x11808:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x11812:	je strftime$53	; 2: 116 5

strftime$51:	; Assign £temporary3706 longDayList
x11814:	mov ax, [bp + 20]	; 3: -117 70 20

strftime$52:	; Goto 54
x11817:	jmp strftime$54	; 2: -21 3

strftime$53:	; Assign £temporary3706 g_defaultLongDayList
x11819:	mov ax, @4213$g_defaultLongDayList	; 3: -72 49 52

strftime$54:	; Assign longDayList £temporary3706
x11822:	mov [bp + 20], ax	; 3: -119 70 20

strftime$55:	; Equal 58 shortMonthList 0
x11825:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x11829:	je strftime$58	; 2: 116 5

strftime$56:	; Assign £temporary3711 shortMonthList
x11831:	mov ax, [bp + 18]	; 3: -117 70 18

strftime$57:	; Goto 59
x11834:	jmp strftime$59	; 2: -21 3

strftime$58:	; Assign £temporary3711 g_defaultShortMonthList
x11836:	mov ax, @4214$g_defaultShortMonthList	; 3: -72 76 43

strftime$59:	; Assign shortMonthList £temporary3711
x11839:	mov [bp + 18], ax	; 3: -119 70 18

strftime$60:	; Equal 63 longMonthList 0
x11842:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x11846:	je strftime$63	; 2: 116 5

strftime$61:	; Assign £temporary3716 longMonthList
x11848:	mov ax, [bp + 22]	; 3: -117 70 22

strftime$62:	; Goto 64
x11851:	jmp strftime$64	; 2: -21 3

strftime$63:	; Assign £temporary3716 g_defaultLongMonthList
x11853:	mov ax, @4215$g_defaultLongMonthList	; 3: -72 63 52

strftime$64:	; Assign longMonthList £temporary3716
x11856:	mov [bp + 22], ax	; 3: -119 70 22

strftime$65:	; SignedGreaterThanEqual 70 totalDays 3
x11859:	cmp dword [bp + 26], 3	; 5: 102 -125 126 26 3
x11864:	jge strftime$70	; 2: 125 24

strftime$66:	; BinaryAdd £temporary3718 totalDays 4
x11866:	mov eax, [bp + 26]	; 4: 102 -117 70 26
x11870:	add eax, 4	; 4: 102 -125 -64 4

strftime$67:	; IntegralToIntegral £temporary3719 £temporary3718
x11874:	cmp eax, 0	; 4: 102 -125 -8 0
x11878:	jge strftime$68	; 2: 125 5
x11880:	neg eax	; 3: 102 -9 -40
x11883:	neg ax	; 2: -9 -40

strftime$68:	; Assign yearDaySunday £temporary3719
x11885:	mov [bp + 30], ax	; 3: -119 70 30

strftime$69:	; Goto 74
x11888:	jmp strftime$74	; 2: -21 30

strftime$70:	; BinarySubtract £temporary3720 totalDays 3
x11890:	mov eax, [bp + 26]	; 4: 102 -117 70 26
x11894:	sub eax, 3	; 4: 102 -125 -24 3

strftime$71:	; SignedModulo £temporary3721 £temporary3720 7
x11898:	xor edx, edx	; 3: 102 49 -46
x11901:	idiv dword [int4$7#]	; 5: 102 -9 62 108 14

strftime$72:	; IntegralToIntegral £temporary3722 £temporary3721
x11906:	cmp edx, 0	; 4: 102 -125 -6 0
x11910:	jge strftime$73	; 2: 125 5
x11912:	neg edx	; 3: 102 -9 -38
x11915:	neg dx	; 2: -9 -38

strftime$73:	; Assign yearDaySunday £temporary3722
x11917:	mov [bp + 30], dx	; 3: -119 86 30

strftime$74:	; SignedGreaterThanEqual 79 totalDays 4
x11920:	cmp dword [bp + 26], 4	; 5: 102 -125 126 26 4
x11925:	jge strftime$79	; 2: 125 24

strftime$75:	; BinaryAdd £temporary3724 totalDays 3
x11927:	mov eax, [bp + 26]	; 4: 102 -117 70 26
x11931:	add eax, 3	; 4: 102 -125 -64 3

strftime$76:	; IntegralToIntegral £temporary3725 £temporary3724
x11935:	cmp eax, 0	; 4: 102 -125 -8 0
x11939:	jge strftime$77	; 2: 125 5
x11941:	neg eax	; 3: 102 -9 -40
x11944:	neg ax	; 2: -9 -40

strftime$77:	; Assign yearDayMonday £temporary3725
x11946:	mov [bp + 32], ax	; 3: -119 70 32

strftime$78:	; Goto 83
x11949:	jmp strftime$83	; 2: -21 30

strftime$79:	; BinarySubtract £temporary3726 totalDays 4
x11951:	mov eax, [bp + 26]	; 4: 102 -117 70 26
x11955:	sub eax, 4	; 4: 102 -125 -24 4

strftime$80:	; SignedModulo £temporary3727 £temporary3726 7
x11959:	xor edx, edx	; 3: 102 49 -46
x11962:	idiv dword [int4$7#]	; 5: 102 -9 62 108 14

strftime$81:	; IntegralToIntegral £temporary3728 £temporary3727
x11967:	cmp edx, 0	; 4: 102 -125 -6 0
x11971:	jge strftime$82	; 2: 125 5
x11973:	neg edx	; 3: 102 -9 -38
x11976:	neg dx	; 2: -9 -38

strftime$82:	; Assign yearDayMonday £temporary3728
x11978:	mov [bp + 32], dx	; 3: -119 86 32

strftime$83:	; Assign index 0
x11981:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

strftime$84:	; BinaryAdd £temporary3730 fmt index
x11986:	mov si, [bp + 10]	; 3: -117 118 10
x11989:	add si, [bp + 34]	; 3: 3 118 34

strftime$85:	; Deref £temporary3729 -> £temporary3730 £temporary3730 0

strftime$86:	; Equal 356 £temporary3729 -> £temporary3730 0
x11992:	cmp byte [si], 0	; 3: -128 60 0
x11995:	je strftime$356	; 4: 15 -124 51 5

strftime$87:	; BinaryAdd £temporary3734 fmt index
x11999:	mov si, [bp + 10]	; 3: -117 118 10
x12002:	add si, [bp + 34]	; 3: 3 118 34

strftime$88:	; Deref £temporary3733 -> £temporary3734 £temporary3734 0

strftime$89:	; NotEqual 329 £temporary3733 -> £temporary3734 37
x12005:	cmp byte [si], 37	; 3: -128 60 37
x12008:	jne strftime$329	; 4: 15 -123 -77 4

strftime$90:	; Increment index
x12012:	inc word [bp + 34]	; 3: -1 70 34

strftime$91:	; Assign £temporary3736 index
x12015:	mov ax, [bp + 34]	; 3: -117 70 34

strftime$92:	; BinaryAdd £temporary3738 fmt £temporary3736
x12018:	mov si, [bp + 10]	; 3: -117 118 10
x12021:	add si, ax	; 2: 1 -58

strftime$93:	; Deref £temporary3737 -> £temporary3738 £temporary3738 0

strftime$94:	; Case 118 £temporary3737 -> £temporary3738 97
x12023:	mov al, [si]	; 2: -118 4
x12025:	cmp al, 97	; 2: 60 97
x12027:	je strftime$118	; 4: 15 -124 -127 0

strftime$95:	; Case 128 £temporary3737 -> £temporary3738 65
x12031:	cmp al, 65	; 2: 60 65
x12033:	je strftime$128	; 4: 15 -124 -87 0

strftime$96:	; Case 138 £temporary3737 -> £temporary3738 98
x12037:	cmp al, 98	; 2: 60 98
x12039:	je strftime$138	; 4: 15 -124 -47 0

strftime$97:	; Case 148 £temporary3737 -> £temporary3738 66
x12043:	cmp al, 66	; 2: 60 66
x12045:	je strftime$148	; 4: 15 -124 -7 0

strftime$98:	; Case 158 £temporary3737 -> £temporary3738 99
x12049:	cmp al, 99	; 2: 60 99
x12051:	je strftime$158	; 4: 15 -124 33 1

strftime$99:	; Case 178 £temporary3737 -> £temporary3738 100
x12055:	cmp al, 100	; 2: 60 100
x12057:	je strftime$178	; 4: 15 -124 118 1

strftime$100:	; Case 186 £temporary3737 -> £temporary3738 72
x12061:	cmp al, 72	; 2: 60 72
x12063:	je strftime$186	; 4: 15 -124 -101 1

strftime$101:	; Case 194 £temporary3737 -> £temporary3738 73
x12067:	cmp al, 73	; 2: 60 73
x12069:	je strftime$194	; 4: 15 -124 -64 1

strftime$102:	; Case 203 £temporary3737 -> £temporary3738 106
x12073:	cmp al, 106	; 2: 60 106
x12075:	je strftime$203	; 4: 15 -124 -21 1

strftime$103:	; Case 211 £temporary3737 -> £temporary3738 109
x12079:	cmp al, 109	; 2: 60 109
x12081:	je strftime$211	; 4: 15 -124 16 2

strftime$104:	; Case 220 £temporary3737 -> £temporary3738 77
x12085:	cmp al, 77	; 2: 60 77
x12087:	je strftime$220	; 4: 15 -124 54 2

strftime$105:	; Case 228 £temporary3737 -> £temporary3738 112
x12091:	cmp al, 112	; 2: 60 112
x12093:	je strftime$228	; 4: 15 -124 91 2

strftime$106:	; Case 240 £temporary3737 -> £temporary3738 83
x12097:	cmp al, 83	; 2: 60 83
x12099:	je strftime$240	; 4: 15 -124 -117 2

strftime$107:	; Case 248 £temporary3737 -> £temporary3738 85
x12103:	cmp al, 85	; 2: 60 85
x12105:	je strftime$248	; 4: 15 -124 -81 2

strftime$108:	; Case 255 £temporary3737 -> £temporary3738 119
x12109:	cmp al, 119	; 2: 60 119
x12111:	je strftime$255	; 4: 15 -124 -47 2

strftime$109:	; Case 263 £temporary3737 -> £temporary3738 87
x12115:	cmp al, 87	; 2: 60 87
x12117:	je strftime$263	; 4: 15 -124 -10 2

strftime$110:	; Case 270 £temporary3737 -> £temporary3738 120
x12121:	cmp al, 120	; 2: 60 120
x12123:	je strftime$270	; 4: 15 -124 24 3

strftime$111:	; Case 282 £temporary3737 -> £temporary3738 88
x12127:	cmp al, 88	; 2: 60 88
x12129:	je strftime$282	; 4: 15 -124 78 3

strftime$112:	; Case 294 £temporary3737 -> £temporary3738 121
x12133:	cmp al, 121	; 2: 60 121
x12135:	je strftime$294	; 4: 15 -124 -124 3

strftime$113:	; Case 303 £temporary3737 -> £temporary3738 89
x12139:	cmp al, 89	; 2: 60 89
x12141:	je strftime$303	; 4: 15 -124 -81 3

strftime$114:	; Case 312 £temporary3737 -> £temporary3738 90
x12145:	cmp al, 90	; 2: 60 90
x12147:	je strftime$312	; 4: 15 -124 -42 3

strftime$115:	; Case 318 £temporary3737 -> £temporary3738 37
x12151:	cmp al, 37	; 2: 60 37
x12153:	je strftime$318	; 4: 15 -124 -20 3

strftime$116:	; CaseEnd £temporary3737 -> £temporary3738

strftime$117:	; Goto 323
x12157:	jmp strftime$323	; 3: -23 3 4

strftime$118:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$119:	; Parameter 56 add 6
x12160:	mov [bp + 62], bp	; 3: -119 110 62
x12163:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$120:	; Deref £temporary3739 -> tp tp 12
x12167:	mov si, [bp + 12]	; 3: -117 118 12

strftime$121:	; UnsignedMultiply £temporary3741 £temporary3739 -> tp 2
x12170:	mov ax, [si + 12]	; 3: -117 68 12
x12173:	xor dx, dx	; 2: 49 -46
x12175:	mul word [int2$2#]	; 4: -9 38 -75 4

strftime$122:	; BinaryAdd £temporary3742 shortDayList £temporary3741
x12179:	mov si, [bp + 16]	; 3: -117 118 16
x12182:	add si, ax	; 2: 1 -58

strftime$123:	; Deref £temporary3740 -> £temporary3742 £temporary3742 0

strftime$124:	; Parameter 56 £temporary3740 -> £temporary3742 8
x12184:	mov ax, [si]	; 2: -117 4
x12186:	mov [bp + 64], ax	; 3: -119 70 64

strftime$125:	; Call 56 strcpy 0
x12189:	mov word [bp + 56], strftime$126	; 5: -57 70 56 -85 47
x12194:	mov [bp + 58], bp	; 3: -119 110 58
x12197:	add bp, 56	; 3: -125 -59 56
x12200:	jmp strcpy	; 3: -23 64 -3

strftime$126:	; PostCall 56

strftime$127:	; Goto 335
x12203:	jmp strftime$335	; 3: -23 9 4

strftime$128:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$129:	; Parameter 56 add 6
x12206:	mov [bp + 62], bp	; 3: -119 110 62
x12209:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$130:	; Deref £temporary3744 -> tp tp 12
x12213:	mov si, [bp + 12]	; 3: -117 118 12

strftime$131:	; UnsignedMultiply £temporary3746 £temporary3744 -> tp 2
x12216:	mov ax, [si + 12]	; 3: -117 68 12
x12219:	xor dx, dx	; 2: 49 -46
x12221:	mul word [int2$2#]	; 4: -9 38 -75 4

strftime$132:	; BinaryAdd £temporary3747 longDayList £temporary3746
x12225:	mov si, [bp + 20]	; 3: -117 118 20
x12228:	add si, ax	; 2: 1 -58

strftime$133:	; Deref £temporary3745 -> £temporary3747 £temporary3747 0

strftime$134:	; Parameter 56 £temporary3745 -> £temporary3747 8
x12230:	mov ax, [si]	; 2: -117 4
x12232:	mov [bp + 64], ax	; 3: -119 70 64

strftime$135:	; Call 56 strcpy 0
x12235:	mov word [bp + 56], strftime$136	; 5: -57 70 56 -39 47
x12240:	mov [bp + 58], bp	; 3: -119 110 58
x12243:	add bp, 56	; 3: -125 -59 56
x12246:	jmp strcpy	; 3: -23 18 -3

strftime$136:	; PostCall 56

strftime$137:	; Goto 335
x12249:	jmp strftime$335	; 3: -23 -37 3

strftime$138:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$139:	; Parameter 56 add 6
x12252:	mov [bp + 62], bp	; 3: -119 110 62
x12255:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$140:	; Deref £temporary3749 -> tp tp 8
x12259:	mov si, [bp + 12]	; 3: -117 118 12

strftime$141:	; UnsignedMultiply £temporary3751 £temporary3749 -> tp 2
x12262:	mov ax, [si + 8]	; 3: -117 68 8
x12265:	xor dx, dx	; 2: 49 -46
x12267:	mul word [int2$2#]	; 4: -9 38 -75 4

strftime$142:	; BinaryAdd £temporary3752 shortMonthList £temporary3751
x12271:	mov si, [bp + 18]	; 3: -117 118 18
x12274:	add si, ax	; 2: 1 -58

strftime$143:	; Deref £temporary3750 -> £temporary3752 £temporary3752 0

strftime$144:	; Parameter 56 £temporary3750 -> £temporary3752 8
x12276:	mov ax, [si]	; 2: -117 4
x12278:	mov [bp + 64], ax	; 3: -119 70 64

strftime$145:	; Call 56 strcpy 0
x12281:	mov word [bp + 56], strftime$146	; 5: -57 70 56 7 48
x12286:	mov [bp + 58], bp	; 3: -119 110 58
x12289:	add bp, 56	; 3: -125 -59 56
x12292:	jmp strcpy	; 3: -23 -28 -4

strftime$146:	; PostCall 56

strftime$147:	; Goto 335
x12295:	jmp strftime$335	; 3: -23 -83 3

strftime$148:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$149:	; Parameter 56 add 6
x12298:	mov [bp + 62], bp	; 3: -119 110 62
x12301:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$150:	; Deref £temporary3754 -> tp tp 8
x12305:	mov si, [bp + 12]	; 3: -117 118 12

strftime$151:	; UnsignedMultiply £temporary3756 £temporary3754 -> tp 2
x12308:	mov ax, [si + 8]	; 3: -117 68 8
x12311:	xor dx, dx	; 2: 49 -46
x12313:	mul word [int2$2#]	; 4: -9 38 -75 4

strftime$152:	; BinaryAdd £temporary3757 longMonthList £temporary3756
x12317:	mov si, [bp + 22]	; 3: -117 118 22
x12320:	add si, ax	; 2: 1 -58

strftime$153:	; Deref £temporary3755 -> £temporary3757 £temporary3757 0

strftime$154:	; Parameter 56 £temporary3755 -> £temporary3757 8
x12322:	mov ax, [si]	; 2: -117 4
x12324:	mov [bp + 64], ax	; 3: -119 70 64

strftime$155:	; Call 56 strcpy 0
x12327:	mov word [bp + 56], strftime$156	; 5: -57 70 56 53 48
x12332:	mov [bp + 58], bp	; 3: -119 110 58
x12335:	add bp, 56	; 3: -125 -59 56
x12338:	jmp strcpy	; 3: -23 -74 -4

strftime$156:	; PostCall 56

strftime$157:	; Goto 335
x12341:	jmp strftime$335	; 3: -23 127 3

strftime$158:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$159:	; Parameter 56 add 6
x12344:	mov [bp + 62], bp	; 3: -119 110 62
x12347:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$160:	; Parameter 56 string_2502i2D2502i2D2502i202502i3A2502i3A2502i# 8
x12351:	mov word [bp + 64], string_2502i2D2502i2D2502i202502i3A2502i3A2502i#	; 5: -57 70 64 87 52

strftime$161:	; Deref £temporary3759 -> tp tp 10
x12356:	mov si, [bp + 12]	; 3: -117 118 12

strftime$162:	; BinaryAdd £temporary3760 £temporary3759 -> tp 1900
x12359:	mov ax, [si + 10]	; 3: -117 68 10
x12362:	add ax, 1900	; 3: 5 108 7

strftime$163:	; Parameter 56 £temporary3760 10
x12365:	mov [bp + 66], ax	; 3: -119 70 66

strftime$164:	; Deref £temporary3761 -> tp tp 8
x12368:	mov si, [bp + 12]	; 3: -117 118 12

strftime$165:	; BinaryAdd £temporary3762 £temporary3761 -> tp 1
x12371:	mov ax, [si + 8]	; 3: -117 68 8
x12374:	inc ax	; 1: 64

strftime$166:	; Parameter 56 £temporary3762 12
x12375:	mov [bp + 68], ax	; 3: -119 70 68

strftime$167:	; Deref £temporary3763 -> tp tp 6
x12378:	mov si, [bp + 12]	; 3: -117 118 12

strftime$168:	; Parameter 56 £temporary3763 -> tp 14
x12381:	mov ax, [si + 6]	; 3: -117 68 6
x12384:	mov [bp + 70], ax	; 3: -119 70 70

strftime$169:	; Deref £temporary3764 -> tp tp 4
x12387:	mov si, [bp + 12]	; 3: -117 118 12

strftime$170:	; Parameter 56 £temporary3764 -> tp 16
x12390:	mov ax, [si + 4]	; 3: -117 68 4
x12393:	mov [bp + 72], ax	; 3: -119 70 72

strftime$171:	; Deref £temporary3765 -> tp tp 2
x12396:	mov si, [bp + 12]	; 3: -117 118 12

strftime$172:	; Parameter 56 £temporary3765 -> tp 18
x12399:	mov ax, [si + 2]	; 3: -117 68 2
x12402:	mov [bp + 74], ax	; 3: -119 70 74

strftime$173:	; Deref £temporary3766 -> tp tp 0
x12405:	mov si, [bp + 12]	; 3: -117 118 12

strftime$174:	; Parameter 56 £temporary3766 -> tp 20
x12408:	mov ax, [si]	; 2: -117 4
x12410:	mov [bp + 76], ax	; 3: -119 70 76

strftime$175:	; Call 56 sprintf 0
x12413:	mov word [bp + 56], strftime$176	; 5: -57 70 56 -112 48
x12418:	mov [bp + 58], bp	; 3: -119 110 58
x12421:	add bp, 56	; 3: -125 -59 56
x12424:	mov di, bp	; 2: -119 -17
x12426:	add di, 12	; 3: -125 -57 12
x12429:	jmp sprintf	; 3: -23 -17 -5

strftime$176:	; PostCall 56

strftime$177:	; Goto 335
x12432:	jmp strftime$335	; 3: -23 36 3

strftime$178:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$179:	; Parameter 56 add 6
x12435:	mov [bp + 62], bp	; 3: -119 110 62
x12438:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$180:	; Parameter 56 string_25i# 8
x12442:	mov word [bp + 64], string_25i#	; 5: -57 70 64 117 52

strftime$181:	; Deref £temporary3768 -> tp tp 6
x12447:	mov si, [bp + 12]	; 3: -117 118 12

strftime$182:	; Parameter 56 £temporary3768 -> tp 10
x12450:	mov ax, [si + 6]	; 3: -117 68 6
x12453:	mov [bp + 66], ax	; 3: -119 70 66

strftime$183:	; Call 56 sprintf 0
x12456:	mov word [bp + 56], strftime$184	; 5: -57 70 56 -69 48
x12461:	mov [bp + 58], bp	; 3: -119 110 58
x12464:	add bp, 56	; 3: -125 -59 56
x12467:	mov di, bp	; 2: -119 -17
x12469:	add di, 2	; 3: -125 -57 2
x12472:	jmp sprintf	; 3: -23 -60 -5

strftime$184:	; PostCall 56

strftime$185:	; Goto 335
x12475:	jmp strftime$335	; 3: -23 -7 2

strftime$186:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$187:	; Parameter 56 add 6
x12478:	mov [bp + 62], bp	; 3: -119 110 62
x12481:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$188:	; Parameter 56 string_25i# 8
x12485:	mov word [bp + 64], string_25i#	; 5: -57 70 64 117 52

strftime$189:	; Deref £temporary3770 -> tp tp 4
x12490:	mov si, [bp + 12]	; 3: -117 118 12

strftime$190:	; Parameter 56 £temporary3770 -> tp 10
x12493:	mov ax, [si + 4]	; 3: -117 68 4
x12496:	mov [bp + 66], ax	; 3: -119 70 66

strftime$191:	; Call 56 sprintf 0
x12499:	mov word [bp + 56], strftime$192	; 5: -57 70 56 -26 48
x12504:	mov [bp + 58], bp	; 3: -119 110 58
x12507:	add bp, 56	; 3: -125 -59 56
x12510:	mov di, bp	; 2: -119 -17
x12512:	add di, 2	; 3: -125 -57 2
x12515:	jmp sprintf	; 3: -23 -103 -5

strftime$192:	; PostCall 56

strftime$193:	; Goto 335
x12518:	jmp strftime$335	; 3: -23 -50 2

strftime$194:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$195:	; Parameter 56 add 6
x12521:	mov [bp + 62], bp	; 3: -119 110 62
x12524:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$196:	; Parameter 56 string_25i# 8
x12528:	mov word [bp + 64], string_25i#	; 5: -57 70 64 117 52

strftime$197:	; Deref £temporary3772 -> tp tp 4
x12533:	mov si, [bp + 12]	; 3: -117 118 12

strftime$198:	; SignedModulo £temporary3773 £temporary3772 -> tp 12
x12536:	mov ax, [si + 4]	; 3: -117 68 4
x12539:	xor dx, dx	; 2: 49 -46
x12541:	idiv word [int2$12#]	; 4: -9 62 120 52

strftime$199:	; Parameter 56 £temporary3773 10
x12545:	mov [bp + 66], dx	; 3: -119 86 66

strftime$200:	; Call 56 sprintf 0
x12548:	mov word [bp + 56], strftime$201	; 5: -57 70 56 23 49
x12553:	mov [bp + 58], bp	; 3: -119 110 58
x12556:	add bp, 56	; 3: -125 -59 56
x12559:	mov di, bp	; 2: -119 -17
x12561:	add di, 2	; 3: -125 -57 2
x12564:	jmp sprintf	; 3: -23 104 -5

strftime$201:	; PostCall 56

strftime$202:	; Goto 335
x12567:	jmp strftime$335	; 3: -23 -99 2

strftime$203:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$204:	; Parameter 56 add 6
x12570:	mov [bp + 62], bp	; 3: -119 110 62
x12573:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$205:	; Parameter 56 string_25i# 8
x12577:	mov word [bp + 64], string_25i#	; 5: -57 70 64 117 52

strftime$206:	; Deref £temporary3775 -> tp tp 14
x12582:	mov si, [bp + 12]	; 3: -117 118 12

strftime$207:	; Parameter 56 £temporary3775 -> tp 10
x12585:	mov ax, [si + 14]	; 3: -117 68 14
x12588:	mov [bp + 66], ax	; 3: -119 70 66

strftime$208:	; Call 56 sprintf 0
x12591:	mov word [bp + 56], strftime$209	; 5: -57 70 56 66 49
x12596:	mov [bp + 58], bp	; 3: -119 110 58
x12599:	add bp, 56	; 3: -125 -59 56
x12602:	mov di, bp	; 2: -119 -17
x12604:	add di, 2	; 3: -125 -57 2
x12607:	jmp sprintf	; 3: -23 61 -5

strftime$209:	; PostCall 56

strftime$210:	; Goto 335
x12610:	jmp strftime$335	; 3: -23 114 2

strftime$211:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$212:	; Parameter 56 add 6
x12613:	mov [bp + 62], bp	; 3: -119 110 62
x12616:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$213:	; Parameter 56 string_25i# 8
x12620:	mov word [bp + 64], string_25i#	; 5: -57 70 64 117 52

strftime$214:	; Deref £temporary3777 -> tp tp 8
x12625:	mov si, [bp + 12]	; 3: -117 118 12

strftime$215:	; BinaryAdd £temporary3778 £temporary3777 -> tp 1
x12628:	mov ax, [si + 8]	; 3: -117 68 8
x12631:	inc ax	; 1: 64

strftime$216:	; Parameter 56 £temporary3778 10
x12632:	mov [bp + 66], ax	; 3: -119 70 66

strftime$217:	; Call 56 sprintf 0
x12635:	mov word [bp + 56], strftime$218	; 5: -57 70 56 110 49
x12640:	mov [bp + 58], bp	; 3: -119 110 58
x12643:	add bp, 56	; 3: -125 -59 56
x12646:	mov di, bp	; 2: -119 -17
x12648:	add di, 2	; 3: -125 -57 2
x12651:	jmp sprintf	; 3: -23 17 -5

strftime$218:	; PostCall 56

strftime$219:	; Goto 335
x12654:	jmp strftime$335	; 3: -23 70 2

strftime$220:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$221:	; Parameter 56 add 6
x12657:	mov [bp + 62], bp	; 3: -119 110 62
x12660:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$222:	; Parameter 56 string_25i# 8
x12664:	mov word [bp + 64], string_25i#	; 5: -57 70 64 117 52

strftime$223:	; Deref £temporary3780 -> tp tp 2
x12669:	mov si, [bp + 12]	; 3: -117 118 12

strftime$224:	; Parameter 56 £temporary3780 -> tp 10
x12672:	mov ax, [si + 2]	; 3: -117 68 2
x12675:	mov [bp + 66], ax	; 3: -119 70 66

strftime$225:	; Call 56 sprintf 0
x12678:	mov word [bp + 56], strftime$226	; 5: -57 70 56 -103 49
x12683:	mov [bp + 58], bp	; 3: -119 110 58
x12686:	add bp, 56	; 3: -125 -59 56
x12689:	mov di, bp	; 2: -119 -17
x12691:	add di, 2	; 3: -125 -57 2
x12694:	jmp sprintf	; 3: -23 -26 -6

strftime$226:	; PostCall 56

strftime$227:	; Goto 335
x12697:	jmp strftime$335	; 3: -23 27 2

strftime$228:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$229:	; Parameter 56 add 6
x12700:	mov [bp + 62], bp	; 3: -119 110 62
x12703:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$230:	; Parameter 56 string_25s# 8
x12707:	mov word [bp + 64], string_25s#	; 5: -57 70 64 122 52

strftime$231:	; Deref £temporary3782 -> tp tp 4
x12712:	mov si, [bp + 12]	; 3: -117 118 12

strftime$232:	; SignedGreaterThanEqual 235 £temporary3782 -> tp 12
x12715:	cmp word [si + 4], 12	; 4: -125 124 4 12
x12719:	jge strftime$235	; 2: 125 5

strftime$233:	; Assign £temporary3787 string_AM#
x12721:	mov ax, string_AM#	; 3: -72 125 52

strftime$234:	; Goto 236
x12724:	jmp strftime$236	; 2: -21 3

strftime$235:	; Assign £temporary3787 string_PM#
x12726:	mov ax, string_PM#	; 3: -72 -128 52

strftime$236:	; Parameter 56 £temporary3787 10
x12729:	mov [bp + 66], ax	; 3: -119 70 66

strftime$237:	; Call 56 sprintf 0
x12732:	mov word [bp + 56], strftime$238	; 5: -57 70 56 -49 49
x12737:	mov [bp + 58], bp	; 3: -119 110 58
x12740:	add bp, 56	; 3: -125 -59 56
x12743:	mov di, bp	; 2: -119 -17
x12745:	add di, 2	; 3: -125 -57 2
x12748:	jmp sprintf	; 3: -23 -80 -6

strftime$238:	; PostCall 56

strftime$239:	; Goto 335
x12751:	jmp strftime$335	; 3: -23 -27 1

strftime$240:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$241:	; Parameter 56 add 6
x12754:	mov [bp + 62], bp	; 3: -119 110 62
x12757:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$242:	; Parameter 56 string_25i# 8
x12761:	mov word [bp + 64], string_25i#	; 5: -57 70 64 117 52

strftime$243:	; Deref £temporary3789 -> tp tp 0
x12766:	mov si, [bp + 12]	; 3: -117 118 12

strftime$244:	; Parameter 56 £temporary3789 -> tp 10
x12769:	mov ax, [si]	; 2: -117 4
x12771:	mov [bp + 66], ax	; 3: -119 70 66

strftime$245:	; Call 56 sprintf 0
x12774:	mov word [bp + 56], strftime$246	; 5: -57 70 56 -7 49
x12779:	mov [bp + 58], bp	; 3: -119 110 58
x12782:	add bp, 56	; 3: -125 -59 56
x12785:	mov di, bp	; 2: -119 -17
x12787:	add di, 2	; 3: -125 -57 2
x12790:	jmp sprintf	; 3: -23 -122 -6

strftime$246:	; PostCall 56

strftime$247:	; Goto 335
x12793:	jmp strftime$335	; 3: -23 -69 1

strftime$248:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$249:	; Parameter 56 add 6
x12796:	mov [bp + 62], bp	; 3: -119 110 62
x12799:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$250:	; Parameter 56 string_25i# 8
x12803:	mov word [bp + 64], string_25i#	; 5: -57 70 64 117 52

strftime$251:	; Parameter 56 yearDaySunday 10
x12808:	mov ax, [bp + 30]	; 3: -117 70 30
x12811:	mov [bp + 66], ax	; 3: -119 70 66

strftime$252:	; Call 56 sprintf 0
x12814:	mov word [bp + 56], strftime$253	; 5: -57 70 56 33 50
x12819:	mov [bp + 58], bp	; 3: -119 110 58
x12822:	add bp, 56	; 3: -125 -59 56
x12825:	mov di, bp	; 2: -119 -17
x12827:	add di, 2	; 3: -125 -57 2
x12830:	jmp sprintf	; 3: -23 94 -6

strftime$253:	; PostCall 56

strftime$254:	; Goto 335
x12833:	jmp strftime$335	; 3: -23 -109 1

strftime$255:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$256:	; Parameter 56 add 6
x12836:	mov [bp + 62], bp	; 3: -119 110 62
x12839:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$257:	; Parameter 56 string_25i# 8
x12843:	mov word [bp + 64], string_25i#	; 5: -57 70 64 117 52

strftime$258:	; Deref £temporary3792 -> tp tp 12
x12848:	mov si, [bp + 12]	; 3: -117 118 12

strftime$259:	; Parameter 56 £temporary3792 -> tp 10
x12851:	mov ax, [si + 12]	; 3: -117 68 12
x12854:	mov [bp + 66], ax	; 3: -119 70 66

strftime$260:	; Call 56 sprintf 0
x12857:	mov word [bp + 56], strftime$261	; 5: -57 70 56 76 50
x12862:	mov [bp + 58], bp	; 3: -119 110 58
x12865:	add bp, 56	; 3: -125 -59 56
x12868:	mov di, bp	; 2: -119 -17
x12870:	add di, 2	; 3: -125 -57 2
x12873:	jmp sprintf	; 3: -23 51 -6

strftime$261:	; PostCall 56

strftime$262:	; Goto 335
x12876:	jmp strftime$335	; 3: -23 104 1

strftime$263:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$264:	; Parameter 56 add 6
x12879:	mov [bp + 62], bp	; 3: -119 110 62
x12882:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$265:	; Parameter 56 string_25i# 8
x12886:	mov word [bp + 64], string_25i#	; 5: -57 70 64 117 52

strftime$266:	; Parameter 56 yearDayMonday 10
x12891:	mov ax, [bp + 32]	; 3: -117 70 32
x12894:	mov [bp + 66], ax	; 3: -119 70 66

strftime$267:	; Call 56 sprintf 0
x12897:	mov word [bp + 56], strftime$268	; 5: -57 70 56 116 50
x12902:	mov [bp + 58], bp	; 3: -119 110 58
x12905:	add bp, 56	; 3: -125 -59 56
x12908:	mov di, bp	; 2: -119 -17
x12910:	add di, 2	; 3: -125 -57 2
x12913:	jmp sprintf	; 3: -23 11 -6

strftime$268:	; PostCall 56

strftime$269:	; Goto 335
x12916:	jmp strftime$335	; 3: -23 64 1

strftime$270:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$271:	; Parameter 56 add 6
x12919:	mov [bp + 62], bp	; 3: -119 110 62
x12922:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$272:	; Parameter 56 string_2502i3A2502i3A2502i# 8
x12926:	mov word [bp + 64], string_2502i3A2502i3A2502i#	; 5: -57 70 64 -125 52

strftime$273:	; Deref £temporary3795 -> tp tp 4
x12931:	mov si, [bp + 12]	; 3: -117 118 12

strftime$274:	; Parameter 56 £temporary3795 -> tp 10
x12934:	mov ax, [si + 4]	; 3: -117 68 4
x12937:	mov [bp + 66], ax	; 3: -119 70 66

strftime$275:	; Deref £temporary3796 -> tp tp 2
x12940:	mov si, [bp + 12]	; 3: -117 118 12

strftime$276:	; Parameter 56 £temporary3796 -> tp 12
x12943:	mov ax, [si + 2]	; 3: -117 68 2
x12946:	mov [bp + 68], ax	; 3: -119 70 68

strftime$277:	; Deref £temporary3797 -> tp tp 0
x12949:	mov si, [bp + 12]	; 3: -117 118 12

strftime$278:	; Parameter 56 £temporary3797 -> tp 14
x12952:	mov ax, [si]	; 2: -117 4
x12954:	mov [bp + 70], ax	; 3: -119 70 70

strftime$279:	; Call 56 sprintf 0
x12957:	mov word [bp + 56], strftime$280	; 5: -57 70 56 -80 50
x12962:	mov [bp + 58], bp	; 3: -119 110 58
x12965:	add bp, 56	; 3: -125 -59 56
x12968:	mov di, bp	; 2: -119 -17
x12970:	add di, 6	; 3: -125 -57 6
x12973:	jmp sprintf	; 3: -23 -49 -7

strftime$280:	; PostCall 56

strftime$281:	; Goto 335
x12976:	jmp strftime$335	; 3: -23 4 1

strftime$282:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$283:	; Parameter 56 add 6
x12979:	mov [bp + 62], bp	; 3: -119 110 62
x12982:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$284:	; Parameter 56 string_2502i3A2502i3A2502i# 8
x12986:	mov word [bp + 64], string_2502i3A2502i3A2502i#	; 5: -57 70 64 -125 52

strftime$285:	; Deref £temporary3799 -> tp tp 4
x12991:	mov si, [bp + 12]	; 3: -117 118 12

strftime$286:	; Parameter 56 £temporary3799 -> tp 10
x12994:	mov ax, [si + 4]	; 3: -117 68 4
x12997:	mov [bp + 66], ax	; 3: -119 70 66

strftime$287:	; Deref £temporary3800 -> tp tp 2
x13000:	mov si, [bp + 12]	; 3: -117 118 12

strftime$288:	; Parameter 56 £temporary3800 -> tp 12
x13003:	mov ax, [si + 2]	; 3: -117 68 2
x13006:	mov [bp + 68], ax	; 3: -119 70 68

strftime$289:	; Deref £temporary3801 -> tp tp 0
x13009:	mov si, [bp + 12]	; 3: -117 118 12

strftime$290:	; Parameter 56 £temporary3801 -> tp 14
x13012:	mov ax, [si]	; 2: -117 4
x13014:	mov [bp + 70], ax	; 3: -119 70 70

strftime$291:	; Call 56 sprintf 0
x13017:	mov word [bp + 56], strftime$292	; 5: -57 70 56 -20 50
x13022:	mov [bp + 58], bp	; 3: -119 110 58
x13025:	add bp, 56	; 3: -125 -59 56
x13028:	mov di, bp	; 2: -119 -17
x13030:	add di, 6	; 3: -125 -57 6
x13033:	jmp sprintf	; 3: -23 -109 -7

strftime$292:	; PostCall 56

strftime$293:	; Goto 335
x13036:	jmp strftime$335	; 3: -23 -56 0

strftime$294:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$295:	; Parameter 56 add 6
x13039:	mov [bp + 62], bp	; 3: -119 110 62
x13042:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$296:	; Parameter 56 string_25i# 8
x13046:	mov word [bp + 64], string_25i#	; 5: -57 70 64 117 52

strftime$297:	; Deref £temporary3803 -> tp tp 10
x13051:	mov si, [bp + 12]	; 3: -117 118 12

strftime$298:	; SignedModulo £temporary3804 £temporary3803 -> tp 100
x13054:	mov ax, [si + 10]	; 3: -117 68 10
x13057:	xor dx, dx	; 2: 49 -46
x13059:	idiv word [int2$100#]	; 4: -9 62 -79 14

strftime$299:	; Parameter 56 £temporary3804 10
x13063:	mov [bp + 66], dx	; 3: -119 86 66

strftime$300:	; Call 56 sprintf 0
x13066:	mov word [bp + 56], strftime$301	; 5: -57 70 56 29 51
x13071:	mov [bp + 58], bp	; 3: -119 110 58
x13074:	add bp, 56	; 3: -125 -59 56
x13077:	mov di, bp	; 2: -119 -17
x13079:	add di, 2	; 3: -125 -57 2
x13082:	jmp sprintf	; 3: -23 98 -7

strftime$301:	; PostCall 56

strftime$302:	; Goto 335
x13085:	jmp strftime$335	; 3: -23 -105 0

strftime$303:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$304:	; Parameter 56 add 6
x13088:	mov [bp + 62], bp	; 3: -119 110 62
x13091:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$305:	; Parameter 56 string_25i# 8
x13095:	mov word [bp + 64], string_25i#	; 5: -57 70 64 117 52

strftime$306:	; Deref £temporary3806 -> tp tp 10
x13100:	mov si, [bp + 12]	; 3: -117 118 12

strftime$307:	; BinaryAdd £temporary3807 £temporary3806 -> tp 1900
x13103:	mov ax, [si + 10]	; 3: -117 68 10
x13106:	add ax, 1900	; 3: 5 108 7

strftime$308:	; Parameter 56 £temporary3807 10
x13109:	mov [bp + 66], ax	; 3: -119 70 66

strftime$309:	; Call 56 sprintf 0
x13112:	mov word [bp + 56], strftime$310	; 5: -57 70 56 75 51
x13117:	mov [bp + 58], bp	; 3: -119 110 58
x13120:	add bp, 56	; 3: -125 -59 56
x13123:	mov di, bp	; 2: -119 -17
x13125:	add di, 2	; 3: -125 -57 2
x13128:	jmp sprintf	; 3: -23 52 -7

strftime$310:	; PostCall 56

strftime$311:	; Goto 335
x13131:	jmp strftime$335	; 2: -21 106

strftime$312:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$313:	; Parameter 56 add 6
x13133:	mov [bp + 62], bp	; 3: -119 110 62
x13136:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$314:	; Parameter 56 string_# 8
x13140:	mov word [bp + 64], string_#	; 5: -57 70 64 -3 7

strftime$315:	; Call 56 strcpy 0
x13145:	mov word [bp + 56], strftime$316	; 5: -57 70 56 103 51
x13150:	mov [bp + 58], bp	; 3: -119 110 58
x13153:	add bp, 56	; 3: -125 -59 56
x13156:	jmp strcpy	; 3: -23 -124 -7

strftime$316:	; PostCall 56

strftime$317:	; Goto 335
x13159:	jmp strftime$335	; 2: -21 78

strftime$318:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$319:	; Parameter 56 add 6
x13161:	mov [bp + 62], bp	; 3: -119 110 62
x13164:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$320:	; Parameter 56 string_25# 8
x13168:	mov word [bp + 64], string_25#	; 5: -57 70 64 -110 52

strftime$321:	; Call 56 strcpy 0
x13173:	mov word [bp + 56], strftime$322	; 5: -57 70 56 -125 51
x13178:	mov [bp + 58], bp	; 3: -119 110 58
x13181:	add bp, 56	; 3: -125 -59 56
x13184:	jmp strcpy	; 3: -23 104 -7

strftime$322:	; PostCall 56

strftime$323:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$324:	; Parameter 56 add 6
x13187:	mov [bp + 62], bp	; 3: -119 110 62
x13190:	add word [bp + 62], 36	; 4: -125 70 62 36

strftime$325:	; Parameter 56 string_# 8
x13194:	mov word [bp + 64], string_#	; 5: -57 70 64 -3 7

strftime$326:	; Call 56 strcpy 0
x13199:	mov word [bp + 56], strftime$327	; 5: -57 70 56 -99 51
x13204:	mov [bp + 58], bp	; 3: -119 110 58
x13207:	add bp, 56	; 3: -125 -59 56
x13210:	jmp strcpy	; 3: -23 78 -7

strftime$327:	; PostCall 56

strftime$328:	; Goto 335
x13213:	jmp strftime$335	; 2: -21 24

strftime$329:	; Deref £temporary3812 -> add add 0
x13215:	mov si, bp	; 2: -119 -18
x13217:	add si, 36	; 3: -125 -58 36

strftime$330:	; BinaryAdd £temporary3814 fmt index
x13220:	mov di, [bp + 10]	; 3: -117 126 10
x13223:	add di, [bp + 34]	; 3: 3 126 34

strftime$331:	; Deref £temporary3813 -> £temporary3814 £temporary3814 0

strftime$332:	; Assign £temporary3812 -> add £temporary3813 -> £temporary3814
x13226:	mov al, [di]	; 2: -118 5
x13228:	mov [si], al	; 2: -120 4

strftime$333:	; Deref £temporary3815 -> add add 1
x13230:	mov si, bp	; 2: -119 -18
x13232:	add si, 36	; 3: -125 -58 36

strftime$334:	; Assign £temporary3815 -> add 0
x13235:	mov byte [si + 1], 0	; 4: -58 68 1 0

strftime$335:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$336:	; Parameter 56 s 6
x13239:	mov ax, [bp + 6]	; 3: -117 70 6
x13242:	mov [bp + 62], ax	; 3: -119 70 62

strftime$337:	; Call 56 strlen 0
x13245:	mov word [bp + 56], strftime$338	; 5: -57 70 56 -53 51
x13250:	mov [bp + 58], bp	; 3: -119 110 58
x13253:	add bp, 56	; 3: -125 -59 56
x13256:	jmp strlen	; 3: -23 -55 0

strftime$338:	; PostCall 56

strftime$339:	; GetReturnValue £temporary3816

strftime$340:	; Assign x £temporary3816
x13259:	mov [bp + 56], bx	; 3: -119 94 56

strftime$341:	; CallHeader 58 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$342:	; Parameter 58 add 6
x13262:	mov [bp + 64], bp	; 3: -119 110 64
x13265:	add word [bp + 64], 36	; 4: -125 70 64 36

strftime$343:	; Call 58 strlen 0
x13269:	mov word [bp + 58], strftime$344	; 5: -57 70 58 -29 51
x13274:	mov [bp + 60], bp	; 3: -119 110 60
x13277:	add bp, 58	; 3: -125 -59 58
x13280:	jmp strlen	; 3: -23 -79 0

strftime$344:	; PostCall 58

strftime$345:	; GetReturnValue £temporary3817

strftime$346:	; Assign y £temporary3817
x13283:	mov [bp + 58], bx	; 3: -119 94 58

strftime$347:	; BinaryAdd £temporary3818 x y
x13286:	mov ax, [bp + 56]	; 3: -117 70 56
x13289:	add ax, [bp + 58]	; 3: 3 70 58

strftime$348:	; SignedGreaterThanEqual 356 £temporary3818 smax
x13292:	cmp ax, [bp + 8]	; 3: 59 70 8
x13295:	jge strftime$356	; 2: 125 33

strftime$349:	; CallHeader 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$350:	; Parameter 60 s 6
x13297:	mov ax, [bp + 6]	; 3: -117 70 6
x13300:	mov [bp + 66], ax	; 3: -119 70 66

strftime$351:	; Parameter 60 add 8
x13303:	mov [bp + 68], bp	; 3: -119 110 68
x13306:	add word [bp + 68], 36	; 4: -125 70 68 36

strftime$352:	; Call 60 strcat 0
x13310:	mov word [bp + 60], strftime$353	; 5: -57 70 60 12 52
x13315:	mov [bp + 62], bp	; 3: -119 110 62
x13318:	add bp, 60	; 3: -125 -59 60
x13321:	jmp strcat	; 3: -23 -85 0

strftime$353:	; PostCall 60

strftime$354:	; Increment index
x13324:	inc word [bp + 34]	; 3: -1 70 34

strftime$355:	; Goto 84
x13327:	jmp strftime$84	; 3: -23 -64 -6

strftime$356:	; CallHeader 34 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strftime$357:	; Parameter 34 s 6
x13330:	mov ax, [bp + 6]	; 3: -117 70 6
x13333:	mov [bp + 40], ax	; 3: -119 70 40

strftime$358:	; Call 34 strlen 0
x13336:	mov word [bp + 34], strftime$359	; 5: -57 70 34 38 52
x13341:	mov [bp + 36], bp	; 3: -119 110 36
x13344:	add bp, 34	; 3: -125 -59 34
x13347:	nop	; 1: -112
x13348:	jmp strlen	; 2: -21 110

strftime$359:	; PostCall 34

strftime$360:	; GetReturnValue £temporary3821

strftime$361:	; SetReturnValue £temporary3821

strftime$362:	; Return £temporary3821
x13350:	mov ax, [bp]	; 3: -117 70 0
x13353:	mov di, [bp + 4]	; 3: -117 126 4
x13356:	mov bp, [bp + 2]	; 3: -117 110 2
x13359:	jmp ax	; 2: -1 -32

strftime$363:	; FunctionEnd strftime

@4213$g_defaultLongDayList:
x13361:	dw string_Sunday# ; 2: 44 8
x13363:	dw string_Monday# ; 2: 51 8
x13365:	dw string_Tuesday# ; 2: 58 8
x13367:	dw string_Wednesday# ; 2: 66 8
x13369:	dw string_Thursday# ; 2: 76 8
x13371:	dw string_Friday# ; 2: 85 8
x13373:	dw string_Saturday# ; 2: 92 8

@4215$g_defaultLongMonthList:
x13375:	dw string_January# ; 2: -59 8
x13377:	dw string_February# ; 2: -51 8
x13379:	dw string_March# ; 2: -42 8
x13381:	dw string_April# ; 2: -36 8
x13383:	dw string_May# ; 2: -115 8
x13385:	dw string_June# ; 2: -30 8
x13387:	dw string_July# ; 2: -25 8
x13389:	dw string_August# ; 2: -20 8
x13391:	dw string_September# ; 2: -13 8
x13393:	dw string_October# ; 2: -3 8
x13395:	dw string_November# ; 2: 5 9
x13397:	dw string_December# ; 2: 14 9

string_2502i2D2502i2D2502i202502i3A2502i3A2502i#:
x13399:	db "%02i-%02i-%02i %02i:%02i:%02i", 0	; 30: 37 48 50 105 45 37 48 50 105 45 37 48 50 105 32 37 48 50 105 58 37 48 50 105 58 37 48 50 105 0

string_25i#:
x13429:	db "%i", 0	; 3: 37 105 0

int2$12#:
x13432:	dw 12	; 2: 12 0

string_25s#:
x13434:	db "%s", 0	; 3: 37 115 0

string_AM#:
x13437:	db "AM", 0	; 3: 65 77 0

string_PM#:
x13440:	db "PM", 0	; 3: 80 77 0

string_2502i3A2502i3A2502i#:
x13443:	db "%02i:%02i:%02i", 0	; 15: 37 48 50 105 58 37 48 50 105 58 37 48 50 105 0

string_25#:
x13458:	db "%", 0	; 2: 37 0

strlen:	; Assign index 0
x13460:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

strlen$1:	; BinaryAdd £temporary4077 string index
x13465:	mov si, [bp + 6]	; 3: -117 118 6
x13468:	add si, [bp + 8]	; 3: 3 118 8

strlen$2:	; Deref £temporary4076 -> £temporary4077 £temporary4077 0

strlen$3:	; Equal 6 £temporary4076 -> £temporary4077 0
x13471:	cmp byte [si], 0	; 3: -128 60 0
x13474:	je strlen$6	; 2: 116 5

strlen$4:	; Increment index
x13476:	inc word [bp + 8]	; 3: -1 70 8

strlen$5:	; Goto 1
x13479:	jmp strlen$1	; 2: -21 -16

strlen$6:	; SetReturnValue index
x13481:	mov bx, [bp + 8]	; 3: -117 94 8

strlen$7:	; Return index
x13484:	mov ax, [bp]	; 3: -117 70 0
x13487:	mov di, [bp + 4]	; 3: -117 126 4
x13490:	mov bp, [bp + 2]	; 3: -117 110 2
x13493:	jmp ax	; 2: -1 -32

strlen$8:	; FunctionEnd strlen

strcat:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strcat$1:	; Parameter 12 target 6
x13495:	mov ax, [bp + 6]	; 3: -117 70 6
x13498:	mov [bp + 18], ax	; 3: -119 70 18

strcat$2:	; Call 12 strlen 0
x13501:	mov word [bp + 12], strcat$3	; 5: -57 70 12 -53 52
x13506:	mov [bp + 14], bp	; 3: -119 110 14
x13509:	add bp, 12	; 3: -125 -59 12
x13512:	nop	; 1: -112
x13513:	jmp strlen	; 2: -21 -55

strcat$3:	; PostCall 12

strcat$4:	; GetReturnValue £temporary3924

strcat$5:	; Assign targetLength £temporary3924
x13515:	mov [bp + 12], bx	; 3: -119 94 12

strcat$6:	; Assign index 0
x13518:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcat$7:	; BinaryAdd £temporary3926 source index
x13523:	mov si, [bp + 8]	; 3: -117 118 8
x13526:	add si, [bp + 10]	; 3: 3 118 10

strcat$8:	; Deref £temporary3925 -> £temporary3926 £temporary3926 0

strcat$9:	; Equal 18 £temporary3925 -> £temporary3926 0
x13529:	cmp byte [si], 0	; 3: -128 60 0
x13532:	je strcat$18	; 2: 116 26

strcat$10:	; BinaryAdd £temporary3929 targetLength index
x13534:	mov ax, [bp + 12]	; 3: -117 70 12
x13537:	add ax, [bp + 10]	; 3: 3 70 10

strcat$11:	; BinaryAdd £temporary3931 target £temporary3929
x13540:	mov si, [bp + 6]	; 3: -117 118 6
x13543:	add si, ax	; 2: 1 -58

strcat$12:	; Deref £temporary3930 -> £temporary3931 £temporary3931 0

strcat$13:	; BinaryAdd £temporary3933 source index
x13545:	mov di, [bp + 8]	; 3: -117 126 8
x13548:	add di, [bp + 10]	; 3: 3 126 10

strcat$14:	; Deref £temporary3932 -> £temporary3933 £temporary3933 0

strcat$15:	; Assign £temporary3930 -> £temporary3931 £temporary3932 -> £temporary3933
x13551:	mov al, [di]	; 2: -118 5
x13553:	mov [si], al	; 2: -120 4

strcat$16:	; Increment index
x13555:	inc word [bp + 10]	; 3: -1 70 10

strcat$17:	; Goto 7
x13558:	jmp strcat$7	; 2: -21 -37

strcat$18:	; BinaryAdd £temporary3934 targetLength index
x13560:	mov ax, [bp + 12]	; 3: -117 70 12
x13563:	add ax, [bp + 10]	; 3: 3 70 10

strcat$19:	; BinaryAdd £temporary3936 target £temporary3934
x13566:	mov si, [bp + 6]	; 3: -117 118 6
x13569:	add si, ax	; 2: 1 -58

strcat$20:	; Deref £temporary3935 -> £temporary3936 £temporary3936 0

strcat$21:	; Assign £temporary3935 -> £temporary3936 0
x13571:	mov byte [si], 0	; 3: -58 4 0

strcat$22:	; SetReturnValue target
x13574:	mov bx, [bp + 6]	; 3: -117 94 6

strcat$23:	; Return target
x13577:	mov ax, [bp]	; 3: -117 70 0
x13580:	mov di, [bp + 4]	; 3: -117 126 4
x13583:	mov bp, [bp + 2]	; 3: -117 110 2
x13586:	jmp ax	; 2: -1 -32

strcat$24:	; FunctionEnd strcat

$StackTop:
x13588:
