	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 -75 46
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 -75 46 0 0

main:	; call header integral zero 0 stack zero 0

main$1:	; call function noellipse-noellipse string_test
x283:	mov word [bp + 6], main$2	; 5: -57 70 6 41 1
x288:	mov [bp + 8], bp	; 3: -119 110 8
x291:	add bp, 6	; 3: -125 -59 6
x294:	nop	; 1: -112
x295:	jmp string_test	; 2: -21 23

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

string_test:	; s = string_Hello2C20World21#
x320:	mov word [bp + 8], string_Hello2C20World21#	; 5: -57 70 8 90 7

string_test$1:	; call header integral zero 0 stack zero 0

string_test$2:	; parameter string_strlen282225s2229203D2025i0A#, offset 6
x325:	mov word [bp + 218], string_strlen282225s2229203D2025i0A#	; 6: -57 -122 -38 0 104 7

string_test$3:	; parameter s, offset 8
x331:	mov ax, [bp + 8]	; 3: -117 70 8
x334:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$4:	; call header integral zero 0 stack zero 0

string_test$5:	; parameter s, offset 16
x338:	mov ax, [bp + 8]	; 3: -117 70 8
x341:	mov [bp + 228], ax	; 4: -119 -122 -28 0

string_test$6:	; call function noellipse-noellipse strlen
x345:	mov word [bp + 222], string_test$7	; 6: -57 -122 -34 0 106 1
x351:	mov [bp + 224], bp	; 4: -119 -82 -32 0
x355:	add bp, 222	; 4: -127 -59 -34 0
x359:	jmp strlen	; 3: -23 -72 7

string_test$7:	; post call

string_test$8:	; £temporary4492 = return_value

string_test$9:	; parameter £temporary4492, offset 10
x362:	mov [bp + 222], bx	; 4: -119 -98 -34 0

string_test$10:	; call function noellipse-ellipse printf, extra 0
x366:	mov word [bp + 212], string_test$11	; 6: -57 -122 -44 0 -124 1
x372:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x376:	add bp, 212	; 4: -127 -59 -44 0
x380:	mov di, bp	; 2: -119 -17
x382:	add di, 4	; 3: -125 -57 4
x385:	jmp printf	; 3: -23 -63 7

string_test$11:	; post call

string_test$12:	; call header integral zero 0 stack zero 0

string_test$13:	; parameter t, offset 6
x388:	mov [bp + 218], bp	; 4: -119 -82 -38 0
x392:	add word [bp + 218], 10	; 5: -125 -122 -38 0 10

string_test$14:	; parameter s, offset 8
x397:	mov ax, [bp + 8]	; 3: -117 70 8
x400:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$15:	; call function noellipse-noellipse strcpy
x404:	mov word [bp + 212], string_test$16	; 6: -57 -122 -44 0 -91 1
x410:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x414:	add bp, 212	; 4: -127 -59 -44 0
x418:	jmp strcpy	; 3: -23 7 38

string_test$16:	; post call

string_test$17:	; call header integral zero 0 stack zero 0

string_test$18:	; parameter u, offset 6
x421:	mov [bp + 218], bp	; 4: -119 -82 -38 0
x425:	add word [bp + 218], 110	; 5: -125 -122 -38 0 110

string_test$19:	; parameter s, offset 8
x430:	mov ax, [bp + 8]	; 3: -117 70 8
x433:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$20:	; parameter 5, offset 10
x437:	mov word [bp + 222], 5	; 6: -57 -122 -34 0 5 0

string_test$21:	; call function noellipse-noellipse strncpy
x443:	mov word [bp + 212], string_test$22	; 6: -57 -122 -44 0 -52 1
x449:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x453:	add bp, 212	; 4: -127 -59 -44 0
x457:	jmp strncpy	; 3: -23 28 38

string_test$22:	; post call

string_test$23:	; £temporary4496 -> u = *u, offset 5
x460:	mov si, bp	; 2: -119 -18
x462:	add si, 110	; 3: -125 -58 110

string_test$24:	; £temporary4496 -> u = 0
x465:	mov byte [si + 5], 0	; 4: -58 68 5 0

string_test$25:	; call header integral zero 0 stack zero 0

string_test$26:	; parameter string_t203D202225s222C20u203D202225s220A#, offset 6
x469:	mov word [bp + 218], string_t203D202225s222C20u203D202225s220A#	; 6: -57 -122 -38 0 123 7

string_test$27:	; parameter t, offset 8
x475:	mov [bp + 220], bp	; 4: -119 -82 -36 0
x479:	add word [bp + 220], 10	; 5: -125 -122 -36 0 10

string_test$28:	; parameter u, offset 10
x484:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x488:	add word [bp + 222], 110	; 5: -125 -122 -34 0 110

string_test$29:	; call function noellipse-ellipse printf, extra 0
x493:	mov word [bp + 212], string_test$30	; 6: -57 -122 -44 0 3 2
x499:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x503:	add bp, 212	; 4: -127 -59 -44 0
x507:	mov di, bp	; 2: -119 -17
x509:	add di, 4	; 3: -125 -57 4
x512:	jmp printf	; 3: -23 66 7

string_test$30:	; post call

string_test$31:	; call header integral zero 0 stack zero 0

string_test$32:	; parameter t, offset 6
x515:	mov [bp + 218], bp	; 4: -119 -82 -38 0
x519:	add word [bp + 218], 10	; 5: -125 -122 -38 0 10

string_test$33:	; parameter string_abc#, offset 8
x524:	mov word [bp + 220], string_abc#	; 6: -57 -122 -36 0 -113 7

string_test$34:	; call function noellipse-noellipse strcat
x530:	mov word [bp + 212], string_test$35	; 6: -57 -122 -44 0 35 2
x536:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x540:	add bp, 212	; 4: -127 -59 -44 0
x544:	jmp strcat	; 3: -23 22 38

string_test$35:	; post call

string_test$36:	; call header integral zero 0 stack zero 0

string_test$37:	; parameter u, offset 6
x547:	mov [bp + 218], bp	; 4: -119 -82 -38 0
x551:	add word [bp + 218], 110	; 5: -125 -122 -38 0 110

string_test$38:	; call function noellipse-noellipse strlen
x556:	mov word [bp + 212], string_test$39	; 6: -57 -122 -44 0 61 2
x562:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x566:	add bp, 212	; 4: -127 -59 -44 0
x570:	jmp strlen	; 3: -23 -27 6

string_test$39:	; post call

string_test$40:	; £temporary4499 = return_value

string_test$41:	; i = £temporary4499
x573:	mov [bp + 6], bx	; 3: -119 94 6

string_test$42:	; call header integral zero 0 stack zero 0

string_test$43:	; parameter u, offset 6
x576:	mov [bp + 218], bp	; 4: -119 -82 -38 0
x580:	add word [bp + 218], 110	; 5: -125 -122 -38 0 110

string_test$44:	; parameter string_abc#, offset 8
x585:	mov word [bp + 220], string_abc#	; 6: -57 -122 -36 0 -113 7

string_test$45:	; parameter 2, offset 10
x591:	mov word [bp + 222], 2	; 6: -57 -122 -34 0 2 0

string_test$46:	; call function noellipse-noellipse strncat
x597:	mov word [bp + 212], string_test$47	; 6: -57 -122 -44 0 102 2
x603:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x607:	add bp, 212	; 4: -127 -59 -44 0
x611:	jmp strncat	; 3: -23 48 38

string_test$47:	; post call

string_test$48:	; £temporary4501 = i + 2
x614:	mov ax, [bp + 6]	; 3: -117 70 6
x617:	add ax, 2	; 3: -125 -64 2

string_test$49:	; £temporary4503 = u + £temporary4501
x620:	mov si, bp	; 2: -119 -18
x622:	add si, 110	; 3: -125 -58 110
x625:	add si, ax	; 2: 1 -58

string_test$50:	; £temporary4502 -> £temporary4503 = *£temporary4503

string_test$51:	; £temporary4502 -> £temporary4503 = 0
x627:	mov byte [si], 0	; 3: -58 4 0

string_test$52:	; call header integral zero 0 stack zero 0

string_test$53:	; parameter string_t203D202225s222C20u203D202225s220A#, offset 6
x630:	mov word [bp + 218], string_t203D202225s222C20u203D202225s220A#	; 6: -57 -122 -38 0 123 7

string_test$54:	; parameter t, offset 8
x636:	mov [bp + 220], bp	; 4: -119 -82 -36 0
x640:	add word [bp + 220], 10	; 5: -125 -122 -36 0 10

string_test$55:	; parameter u, offset 10
x645:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x649:	add word [bp + 222], 110	; 5: -125 -122 -34 0 110

string_test$56:	; call function noellipse-ellipse printf, extra 0
x654:	mov word [bp + 212], string_test$57	; 6: -57 -122 -44 0 -92 2
x660:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x664:	add bp, 212	; 4: -127 -59 -44 0
x668:	mov di, bp	; 2: -119 -17
x670:	add di, 4	; 3: -125 -57 4
x673:	jmp printf	; 3: -23 -95 6

string_test$57:	; post call

string_test$58:	; call header integral zero 0 stack zero 0

string_test$59:	; parameter string_strcmp28s2C20u29203D2025i0A#, offset 6
x676:	mov word [bp + 218], string_strcmp28s2C20u29203D2025i0A#	; 6: -57 -122 -38 0 -109 7

string_test$60:	; call header integral zero 0 stack zero 0

string_test$61:	; parameter s, offset 14
x682:	mov ax, [bp + 8]	; 3: -117 70 8
x685:	mov [bp + 226], ax	; 4: -119 -122 -30 0

string_test$62:	; parameter u, offset 16
x689:	mov [bp + 228], bp	; 4: -119 -82 -28 0
x693:	add word [bp + 228], 110	; 5: -125 -122 -28 0 110

string_test$63:	; call function noellipse-noellipse strcmp
x698:	mov word [bp + 220], string_test$64	; 6: -57 -122 -36 0 -53 2
x704:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x708:	add bp, 220	; 4: -127 -59 -36 0
x712:	jmp strcmp	; 3: -23 50 38

string_test$64:	; post call

string_test$65:	; £temporary4505 = return_value

string_test$66:	; parameter £temporary4505, offset 8
x715:	mov [bp + 220], bx	; 4: -119 -98 -36 0

string_test$67:	; call function noellipse-ellipse printf, extra 0
x719:	mov word [bp + 212], string_test$68	; 6: -57 -122 -44 0 -27 2
x725:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x729:	add bp, 212	; 4: -127 -59 -44 0
x733:	mov di, bp	; 2: -119 -17
x735:	add di, 2	; 3: -125 -57 2
x738:	jmp printf	; 3: -23 96 6

string_test$68:	; post call

string_test$69:	; call header integral zero 0 stack zero 0

string_test$70:	; parameter string_strncmp28s2C20u2C20229203D2025i0A#, offset 6
x741:	mov word [bp + 218], string_strncmp28s2C20u2C20229203D2025i0A#	; 6: -57 -122 -38 0 -90 7

string_test$71:	; call header integral zero 0 stack zero 0

string_test$72:	; parameter s, offset 14
x747:	mov ax, [bp + 8]	; 3: -117 70 8
x750:	mov [bp + 226], ax	; 4: -119 -122 -30 0

string_test$73:	; parameter u, offset 16
x754:	mov [bp + 228], bp	; 4: -119 -82 -28 0
x758:	add word [bp + 228], 110	; 5: -125 -122 -28 0 110

string_test$74:	; parameter 2, offset 18
x763:	mov word [bp + 230], 2	; 6: -57 -122 -26 0 2 0

string_test$75:	; call function noellipse-noellipse strncmp
x769:	mov word [bp + 220], string_test$76	; 6: -57 -122 -36 0 18 3
x775:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x779:	add bp, 220	; 4: -127 -59 -36 0
x783:	jmp strncmp	; 3: -23 -116 38

string_test$76:	; post call

string_test$77:	; £temporary4507 = return_value

string_test$78:	; parameter £temporary4507, offset 8
x786:	mov [bp + 220], bx	; 4: -119 -98 -36 0

string_test$79:	; call function noellipse-ellipse printf, extra 0
x790:	mov word [bp + 212], string_test$80	; 6: -57 -122 -44 0 44 3
x796:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x800:	add bp, 212	; 4: -127 -59 -44 0
x804:	mov di, bp	; 2: -119 -17
x806:	add di, 2	; 3: -125 -57 2
x809:	jmp printf	; 3: -23 25 6

string_test$80:	; post call

string_test$81:	; call header integral zero 0 stack zero 0

string_test$82:	; parameter s, offset 6
x812:	mov ax, [bp + 8]	; 3: -117 70 8
x815:	mov [bp + 218], ax	; 4: -119 -122 -38 0

string_test$83:	; parameter 108, offset 8
x819:	mov word [bp + 220], 108	; 6: -57 -122 -36 0 108 0

string_test$84:	; call function noellipse-noellipse strchr
x825:	mov word [bp + 212], string_test$85	; 6: -57 -122 -44 0 74 3
x831:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x835:	add bp, 212	; 4: -127 -59 -44 0
x839:	jmp strchr	; 3: -23 -76 26

string_test$85:	; post call












string_test$86:	; £temporary4509 = return_value

string_test$87:	; p = £temporary4509
x842:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$88:	; call header integral zero 0 stack zero 0

string_test$89:	; parameter string_strchr28s2C2027l2729203D2025i0A#, offset 6
x846:	mov word [bp + 218], string_strchr28s2C2027l2729203D2025i0A#	; 6: -57 -122 -38 0 -67 7

string_test$90:	; if p == 0 goto 93
x852:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x857:	je string_test$93	; 2: 116 9

string_test$91:	; £temporary4515 = p - s
x859:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x863:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$92:	; goto 94
x866:	jmp string_test$94	; 2: -21 3

string_test$93:	; £temporary4515 = -1
x868:	mov ax, -1	; 3: -72 -1 -1
















string_test$94:	; parameter £temporary4515, offset 8
x871:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$95:	; call function noellipse-ellipse printf, extra 0
x875:	mov word [bp + 212], string_test$96	; 6: -57 -122 -44 0 -127 3
x881:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x885:	add bp, 212	; 4: -127 -59 -44 0
x889:	mov di, bp	; 2: -119 -17
x891:	add di, 2	; 3: -125 -57 2
x894:	jmp printf	; 3: -23 -60 5

string_test$96:	; post call

string_test$97:	; call header integral zero 0 stack zero 0

string_test$98:	; parameter s, offset 6
x897:	mov ax, [bp + 8]	; 3: -117 70 8
x900:	mov [bp + 218], ax	; 4: -119 -122 -38 0

string_test$99:	; parameter 108, offset 8
x904:	mov word [bp + 220], 108	; 6: -57 -122 -36 0 108 0

string_test$100:	; call function noellipse-noellipse strrchr
x910:	mov word [bp + 212], string_test$101	; 6: -57 -122 -44 0 -97 3
x916:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x920:	add bp, 212	; 4: -127 -59 -44 0
x924:	jmp strrchr	; 3: -23 -72 38

string_test$101:	; post call

string_test$102:	; £temporary4517 = return_value

string_test$103:	; p = £temporary4517
x927:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$104:	; call header integral zero 0 stack zero 0

string_test$105:	; parameter string_strrchr28s2C2027l2729203D2025i0A#, offset 6
x931:	mov word [bp + 218], string_strrchr28s2C2027l2729203D2025i0A#	; 6: -57 -122 -38 0 -46 7

string_test$106:	; if p == 0 goto 109
x937:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x942:	je string_test$109	; 2: 116 9

string_test$107:	; £temporary4523 = p - s
x944:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x948:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$108:	; goto 110
x951:	jmp string_test$110	; 2: -21 3

string_test$109:	; £temporary4523 = -1
x953:	mov ax, -1	; 3: -72 -1 -1

string_test$110:	; parameter £temporary4523, offset 8
x956:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$111:	; call function noellipse-ellipse printf, extra 0
x960:	mov word [bp + 212], string_test$112	; 6: -57 -122 -44 0 -42 3
x966:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x970:	add bp, 212	; 4: -127 -59 -44 0
x974:	mov di, bp	; 2: -119 -17
x976:	add di, 2	; 3: -125 -57 2
x979:	jmp printf	; 3: -23 111 5

string_test$112:	; post call

string_test$113:	; call header integral zero 0 stack zero 0

string_test$114:	; parameter s, offset 6
x982:	mov ax, [bp + 8]	; 3: -117 70 8
x985:	mov [bp + 218], ax	; 4: -119 -122 -38 0

string_test$115:	; parameter 120, offset 8
x989:	mov word [bp + 220], 120	; 6: -57 -122 -36 0 120 0

string_test$116:	; call function noellipse-noellipse strchr
x995:	mov word [bp + 212], string_test$117	; 6: -57 -122 -44 0 -12 3
x1001:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1005:	add bp, 212	; 4: -127 -59 -44 0
x1009:	jmp strchr	; 3: -23 10 26

string_test$117:	; post call

string_test$118:	; £temporary4525 = return_value

string_test$119:	; p = £temporary4525
x1012:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$120:	; call header integral zero 0 stack zero 0

string_test$121:	; parameter string_strchr28s2C2027x2729203D2025i0A#, offset 6
x1016:	mov word [bp + 218], string_strchr28s2C2027x2729203D2025i0A#	; 6: -57 -122 -38 0 -24 7

string_test$122:	; if p == 0 goto 125
x1022:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x1027:	je string_test$125	; 2: 116 9

string_test$123:	; £temporary4531 = p - s
x1029:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x1033:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$124:	; goto 126
x1036:	jmp string_test$126	; 2: -21 3

string_test$125:	; £temporary4531 = -1
x1038:	mov ax, -1	; 3: -72 -1 -1

string_test$126:	; parameter £temporary4531, offset 8
x1041:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$127:	; call function noellipse-ellipse printf, extra 0
x1045:	mov word [bp + 212], string_test$128	; 6: -57 -122 -44 0 43 4
x1051:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1055:	add bp, 212	; 4: -127 -59 -44 0
x1059:	mov di, bp	; 2: -119 -17
x1061:	add di, 2	; 3: -125 -57 2
x1064:	jmp printf	; 3: -23 26 5

string_test$128:	; post call

string_test$129:	; call header integral zero 0 stack zero 0

string_test$130:	; parameter s, offset 6
x1067:	mov ax, [bp + 8]	; 3: -117 70 8
x1070:	mov [bp + 218], ax	; 4: -119 -122 -38 0

string_test$131:	; parameter 120, offset 8
x1074:	mov word [bp + 220], 120	; 6: -57 -122 -36 0 120 0

string_test$132:	; call function noellipse-noellipse strrchr
x1080:	mov word [bp + 212], string_test$133	; 6: -57 -122 -44 0 73 4
x1086:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1090:	add bp, 212	; 4: -127 -59 -44 0
x1094:	jmp strrchr	; 3: -23 14 38

string_test$133:	; post call

string_test$134:	; £temporary4533 = return_value

string_test$135:	; p = £temporary4533
x1097:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$136:	; call header integral zero 0 stack zero 0

string_test$137:	; parameter string_strrchr28s2C2027x2729203D2025i0A#, offset 6
x1101:	mov word [bp + 218], string_strrchr28s2C2027x2729203D2025i0A#	; 6: -57 -122 -38 0 -3 7

string_test$138:	; if p == 0 goto 141
x1107:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x1112:	je string_test$141	; 2: 116 9

string_test$139:	; £temporary4539 = p - s
x1114:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x1118:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$140:	; goto 142
x1121:	jmp string_test$142	; 2: -21 3

string_test$141:	; £temporary4539 = -1
x1123:	mov ax, -1	; 3: -72 -1 -1

string_test$142:	; parameter £temporary4539, offset 8
x1126:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$143:	; call function noellipse-ellipse printf, extra 0
x1130:	mov word [bp + 212], string_test$144	; 6: -57 -122 -44 0 -128 4
x1136:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1140:	add bp, 212	; 4: -127 -59 -44 0
x1144:	mov di, bp	; 2: -119 -17
x1146:	add di, 2	; 3: -125 -57 2
x1149:	jmp printf	; 3: -23 -59 4

string_test$144:	; post call

string_test$145:	; call header integral zero 0 stack zero 0

string_test$146:	; parameter s, offset 6
x1152:	mov ax, [bp + 8]	; 3: -117 70 8
x1155:	mov [bp + 218], ax	; 4: -119 -122 -38 0

string_test$147:	; parameter string_Hello2C20World21#, offset 8
x1159:	mov word [bp + 220], string_Hello2C20World21#	; 6: -57 -122 -36 0 90 7

string_test$148:	; parameter 20, offset 10
x1165:	mov word [bp + 222], 20	; 6: -57 -122 -34 0 20 0

string_test$149:	; call function noellipse-noellipse memcpy
x1171:	mov word [bp + 212], string_test$150	; 6: -57 -122 -44 0 -92 4
x1177:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1181:	add bp, 212	; 4: -127 -59 -44 0
x1185:	jmp memcpy	; 3: -23 0 38

string_test$150:	; post call

string_test$151:	; call header integral zero 0 stack zero 0

string_test$152:	; parameter t, offset 6
x1188:	mov [bp + 218], bp	; 4: -119 -82 -38 0
x1192:	add word [bp + 218], 10	; 5: -125 -122 -38 0 10

string_test$153:	; parameter string_Hello2C20World21#, offset 8
x1197:	mov word [bp + 220], string_Hello2C20World21#	; 6: -57 -122 -36 0 90 7

string_test$154:	; parameter 20, offset 10
x1203:	mov word [bp + 222], 20	; 6: -57 -122 -34 0 20 0

string_test$155:	; call function noellipse-noellipse memmove
x1209:	mov word [bp + 212], string_test$156	; 6: -57 -122 -44 0 -54 4
x1215:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1219:	add bp, 212	; 4: -127 -59 -44 0
x1223:	jmp memmove	; 3: -23 22 38

string_test$156:	; post call

string_test$157:	; call header integral zero 0 stack zero 0

string_test$158:	; parameter u, offset 6
x1226:	mov [bp + 218], bp	; 4: -119 -82 -38 0
x1230:	add word [bp + 218], 110	; 5: -125 -122 -38 0 110

string_test$159:	; parameter 88, offset 8
x1235:	mov word [bp + 220], 88	; 6: -57 -122 -36 0 88 0

string_test$160:	; parameter 20, offset 10
x1241:	mov word [bp + 222], 20	; 6: -57 -122 -34 0 20 0

string_test$161:	; call function noellipse-noellipse memset
x1247:	mov word [bp + 212], string_test$162	; 6: -57 -122 -44 0 -16 4
x1253:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1257:	add bp, 212	; 4: -127 -59 -44 0
x1261:	jmp memset	; 3: -23 86 38

string_test$162:	; post call

string_test$163:	; £temporary4544 -> u = *u, offset 19
x1264:	mov si, bp	; 2: -119 -18
x1266:	add si, 110	; 3: -125 -58 110

string_test$164:	; £temporary4544 -> u = 0
x1269:	mov byte [si + 19], 0	; 4: -58 68 19 0

string_test$165:	; call header integral zero 0 stack zero 0

string_test$166:	; parameter string_s203D202225s222C20t203D202225s222C20u203D202225s220A#, offset 6
x1273:	mov word [bp + 218], string_s203D202225s222C20t203D202225s222C20u203D202225s220A#	; 6: -57 -122 -38 0 19 8

string_test$167:	; parameter s, offset 8
x1279:	mov ax, [bp + 8]	; 3: -117 70 8
x1282:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$168:	; parameter t, offset 10
x1286:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x1290:	add word [bp + 222], 10	; 5: -125 -122 -34 0 10

string_test$169:	; parameter u, offset 12
x1295:	mov [bp + 224], bp	; 4: -119 -82 -32 0
x1299:	add word [bp + 224], 110	; 5: -125 -122 -32 0 110

string_test$170:	; call function noellipse-ellipse printf, extra 0
x1304:	mov word [bp + 212], string_test$171	; 6: -57 -122 -44 0 46 5
x1310:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1314:	add bp, 212	; 4: -127 -59 -44 0
x1318:	mov di, bp	; 2: -119 -17
x1320:	add di, 6	; 3: -125 -57 6
x1323:	jmp printf	; 3: -23 23 4

string_test$171:	; post call

string_test$172:	; call header integral zero 0 stack zero 0

string_test$173:	; parameter s, offset 6
x1326:	mov ax, [bp + 8]	; 3: -117 70 8
x1329:	mov [bp + 218], ax	; 4: -119 -122 -38 0

string_test$174:	; parameter 108, offset 8
x1333:	mov word [bp + 220], 108	; 6: -57 -122 -36 0 108 0

string_test$175:	; parameter 20, offset 10
x1339:	mov word [bp + 222], 20	; 6: -57 -122 -34 0 20 0

string_test$176:	; call function noellipse-noellipse memchr
x1345:	mov word [bp + 212], string_test$177	; 6: -57 -122 -44 0 82 5
x1351:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1355:	add bp, 212	; 4: -127 -59 -44 0
x1359:	jmp memchr	; 3: -23 52 38

string_test$177:	; post call

string_test$178:	; £temporary4546 = return_value

string_test$179:	; p = £temporary4546
x1362:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$180:	; call header integral zero 0 stack zero 0

string_test$181:	; parameter string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#, offset 6
x1366:	mov word [bp + 218], string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#	; 6: -57 -122 -38 0 49 8

string_test$182:	; if p == 0 goto 185
x1372:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x1377:	je string_test$185	; 2: 116 9

string_test$183:	; £temporary4552 = p - s
x1379:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x1383:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$184:	; goto 186
x1386:	jmp string_test$186	; 2: -21 3

string_test$185:	; £temporary4552 = -1
x1388:	mov ax, -1	; 3: -72 -1 -1

string_test$186:	; parameter £temporary4552, offset 8
x1391:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$187:	; call function noellipse-ellipse printf, extra 0
x1395:	mov word [bp + 212], string_test$188	; 6: -57 -122 -44 0 -119 5
x1401:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1405:	add bp, 212	; 4: -127 -59 -44 0
x1409:	mov di, bp	; 2: -119 -17
x1411:	add di, 2	; 3: -125 -57 2
x1414:	jmp printf	; 3: -23 -68 3

string_test$188:	; post call

string_test$189:	; call header integral zero 0 stack zero 0

string_test$190:	; parameter s, offset 6
x1417:	mov ax, [bp + 8]	; 3: -117 70 8
x1420:	mov [bp + 218], ax	; 4: -119 -122 -38 0

string_test$191:	; parameter 120, offset 8
x1424:	mov word [bp + 220], 120	; 6: -57 -122 -36 0 120 0

string_test$192:	; parameter 20, offset 10
x1430:	mov word [bp + 222], 20	; 6: -57 -122 -34 0 20 0

string_test$193:	; call function noellipse-noellipse memchr
x1436:	mov word [bp + 212], string_test$194	; 6: -57 -122 -44 0 -83 5
x1442:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1446:	add bp, 212	; 4: -127 -59 -44 0
x1450:	jmp memchr	; 3: -23 -39 37

string_test$194:	; post call

string_test$195:	; £temporary4554 = return_value

string_test$196:	; p = £temporary4554
x1453:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$197:	; call header integral zero 0 stack zero 0

string_test$198:	; parameter string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#, offset 6
x1457:	mov word [bp + 218], string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#	; 6: -57 -122 -38 0 91 8

string_test$199:	; if p == 0 goto 202
x1463:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x1468:	je string_test$202	; 2: 116 9

string_test$200:	; £temporary4560 = p - s
x1470:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x1474:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$201:	; goto 203
x1477:	jmp string_test$203	; 2: -21 3

string_test$202:	; £temporary4560 = -1
x1479:	mov ax, -1	; 3: -72 -1 -1

string_test$203:	; parameter £temporary4560, offset 8
x1482:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$204:	; call function noellipse-ellipse printf, extra 0
x1486:	mov word [bp + 212], string_test$205	; 6: -57 -122 -44 0 -28 5
x1492:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1496:	add bp, 212	; 4: -127 -59 -44 0
x1500:	mov di, bp	; 2: -119 -17
x1502:	add di, 2	; 3: -125 -57 2
x1505:	jmp printf	; 3: -23 97 3

string_test$205:	; post call

string_test$206:	; call header integral zero 0 stack zero 0

string_test$207:	; parameter string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#, offset 6
x1508:	mov word [bp + 218], string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#	; 6: -57 -122 -38 0 -123 8

string_test$208:	; call header integral zero 0 stack zero 0

string_test$209:	; parameter s, offset 14
x1514:	mov ax, [bp + 8]	; 3: -117 70 8
x1517:	mov [bp + 226], ax	; 4: -119 -122 -30 0

string_test$210:	; parameter t, offset 16
x1521:	mov [bp + 228], bp	; 4: -119 -82 -28 0
x1525:	add word [bp + 228], 10	; 5: -125 -122 -28 0 10

string_test$211:	; parameter 20, offset 18
x1530:	mov word [bp + 230], 20	; 6: -57 -122 -26 0 20 0

string_test$212:	; call function noellipse-noellipse memcmp
x1536:	mov word [bp + 220], string_test$213	; 6: -57 -122 -36 0 17 6
x1542:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x1546:	add bp, 220	; 4: -127 -59 -36 0
x1550:	jmp memcmp	; 3: -23 -56 37

string_test$213:	; post call

string_test$214:	; £temporary4562 = return_value

string_test$215:	; parameter £temporary4562, offset 8
x1553:	mov [bp + 220], bx	; 4: -119 -98 -36 0

string_test$216:	; call function noellipse-ellipse printf, extra 0
x1557:	mov word [bp + 212], string_test$217	; 6: -57 -122 -44 0 43 6
x1563:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1567:	add bp, 212	; 4: -127 -59 -44 0
x1571:	mov di, bp	; 2: -119 -17
x1573:	add di, 2	; 3: -125 -57 2
x1576:	jmp printf	; 3: -23 26 3

string_test$217:	; post call

string_test$218:	; call header integral zero 0 stack zero 0

string_test$219:	; parameter string_strspn28s2C2022Hello2C20C2229203D2025i0A#, offset 6
x1579:	mov word [bp + 218], string_strspn28s2C2022Hello2C20C2229203D2025i0A#	; 6: -57 -122 -38 0 -83 8

string_test$220:	; call header integral zero 0 stack zero 0

string_test$221:	; parameter s, offset 14
x1585:	mov ax, [bp + 8]	; 3: -117 70 8
x1588:	mov [bp + 226], ax	; 4: -119 -122 -30 0

string_test$222:	; parameter string_Hello2C20C#, offset 16
x1592:	mov word [bp + 228], string_Hello2C20C#	; 6: -57 -122 -28 0 -55 8

string_test$223:	; call function noellipse-noellipse strspn
x1598:	mov word [bp + 220], string_test$224	; 6: -57 -122 -36 0 79 6
x1604:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x1608:	add bp, 220	; 4: -127 -59 -36 0
x1612:	jmp strspn	; 3: -23 -10 37

string_test$224:	; post call

string_test$225:	; £temporary4564 = return_value

string_test$226:	; parameter £temporary4564, offset 8
x1615:	mov [bp + 220], bx	; 4: -119 -98 -36 0

string_test$227:	; call function noellipse-ellipse printf, extra 0
x1619:	mov word [bp + 212], string_test$228	; 6: -57 -122 -44 0 105 6
x1625:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1629:	add bp, 212	; 4: -127 -59 -44 0
x1633:	mov di, bp	; 2: -119 -17
x1635:	add di, 2	; 3: -125 -57 2
x1638:	jmp printf	; 3: -23 -36 2

string_test$228:	; post call

string_test$229:	; call header integral zero 0 stack zero 0

string_test$230:	; parameter string_strcspn28s2C2022Hello2C20C2229203D2025i0A#, offset 6
x1641:	mov word [bp + 218], string_strcspn28s2C2022Hello2C20C2229203D2025i0A#	; 6: -57 -122 -38 0 -46 8

string_test$231:	; call header integral zero 0 stack zero 0

string_test$232:	; parameter s, offset 14
x1647:	mov ax, [bp + 8]	; 3: -117 70 8
x1650:	mov [bp + 226], ax	; 4: -119 -122 -30 0

string_test$233:	; parameter string_Hello2C20C#, offset 16
x1654:	mov word [bp + 228], string_Hello2C20C#	; 6: -57 -122 -28 0 -55 8

string_test$234:	; call function noellipse-noellipse strcspn
x1660:	mov word [bp + 220], string_test$235	; 6: -57 -122 -36 0 -115 6
x1666:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x1670:	add bp, 220	; 4: -127 -59 -36 0
x1674:	jmp strcspn	; 3: -23 24 38

string_test$235:	; post call

string_test$236:	; £temporary4566 = return_value

string_test$237:	; parameter £temporary4566, offset 8
x1677:	mov [bp + 220], bx	; 4: -119 -98 -36 0

string_test$238:	; call function noellipse-ellipse printf, extra 0
x1681:	mov word [bp + 212], string_test$239	; 6: -57 -122 -44 0 -89 6
x1687:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1691:	add bp, 212	; 4: -127 -59 -44 0
x1695:	mov di, bp	; 2: -119 -17
x1697:	add di, 2	; 3: -125 -57 2
x1700:	jmp printf	; 3: -23 -98 2

string_test$239:	; post call

string_test$240:	; call header integral zero 0 stack zero 0

string_test$241:	; parameter string_strerror28errno29203D202225s220A#, offset 6
x1703:	mov word [bp + 218], string_strerror28errno29203D202225s220A#	; 6: -57 -122 -38 0 -17 8

string_test$242:	; call header integral zero 0 stack zero 0

string_test$243:	; parameter errno, offset 14
x1709:	mov ax, [errno]	; 3: -95 7 9
x1712:	mov [bp + 226], ax	; 4: -119 -122 -30 0

string_test$244:	; call function noellipse-noellipse strerror
x1716:	mov word [bp + 220], string_test$245	; 6: -57 -122 -36 0 -59 6
x1722:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x1726:	add bp, 220	; 4: -127 -59 -36 0
x1730:	jmp strerror	; 3: -23 64 38

string_test$245:	; post call

string_test$246:	; £temporary4568 = return_value

string_test$247:	; parameter £temporary4568, offset 8
x1733:	mov [bp + 220], bx	; 4: -119 -98 -36 0

string_test$248:	; call function noellipse-ellipse printf, extra 0
x1737:	mov word [bp + 212], string_test$249	; 6: -57 -122 -44 0 -33 6
x1743:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1747:	add bp, 212	; 4: -127 -59 -44 0
x1751:	mov di, bp	; 2: -119 -17
x1753:	add di, 2	; 3: -125 -57 2
x1756:	jmp printf	; 3: -23 102 2

string_test$249:	; post call

string_test$250:	; call header integral zero 0 stack zero 0

string_test$251:	; parameter s, offset 6
x1759:	mov ax, [bp + 8]	; 3: -117 70 8
x1762:	mov [bp + 218], ax	; 4: -119 -122 -38 0

string_test$252:	; parameter string_2C#, offset 8
x1766:	mov word [bp + 220], string_2C#	; 6: -57 -122 -36 0 9 9

string_test$253:	; call function noellipse-noellipse strtok
x1772:	mov word [bp + 212], string_test$254	; 6: -57 -122 -44 0 -3 6
x1778:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1782:	add bp, 212	; 4: -127 -59 -44 0
x1786:	jmp strtok	; 3: -23 91 38

string_test$254:	; post call

string_test$255:	; £temporary4570 = return_value

string_test$256:	; p = £temporary4570
x1789:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$257:	; if p == 0 goto 271
x1793:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x1798:	je string_test$271	; 2: 116 71

string_test$258:	; call header integral zero 0 stack zero 0

string_test$259:	; parameter string_strtok28s2C20222C2229203D202225s220A#, offset 6
x1800:	mov word [bp + 218], string_strtok28s2C20222C2229203D202225s220A#	; 6: -57 -122 -38 0 11 9

string_test$260:	; parameter p, offset 8
x1806:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x1810:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$261:	; call function noellipse-ellipse printf, extra 0
x1814:	mov word [bp + 212], string_test$262	; 6: -57 -122 -44 0 44 7
x1820:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1824:	add bp, 212	; 4: -127 -59 -44 0
x1828:	mov di, bp	; 2: -119 -17
x1830:	add di, 2	; 3: -125 -57 2
x1833:	jmp printf	; 3: -23 25 2

string_test$262:	; post call

string_test$263:	; call header integral zero 0 stack zero 0

string_test$264:	; parameter 0, offset 6
x1836:	mov word [bp + 218], 0	; 6: -57 -122 -38 0 0 0

string_test$265:	; parameter string_2C#, offset 8
x1842:	mov word [bp + 220], string_2C#	; 6: -57 -122 -36 0 9 9

string_test$266:	; call function noellipse-noellipse strtok
x1848:	mov word [bp + 212], string_test$267	; 6: -57 -122 -44 0 73 7
x1854:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1858:	add bp, 212	; 4: -127 -59 -44 0
x1862:	jmp strtok	; 3: -23 15 38

string_test$267:	; post call

string_test$268:	; £temporary4573 = return_value

string_test$269:	; p = £temporary4573
x1865:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$270:	; goto 257
x1869:	jmp string_test$257	; 2: -21 -78

string_test$271:	; return
x1871:	mov ax, [bp]	; 3: -117 70 0
x1874:	mov di, [bp + 4]	; 3: -117 126 4
x1877:	mov bp, [bp + 2]	; 3: -117 110 2
x1880:	jmp ax	; 2: -1 -32

string_test$272:	; function end string_test

string_Hello2C20World21#:
x1882:	db "Hello, World!", 0	; 14: 72 101 108 108 111 44 32 87 111 114 108 100 33 0

string_strlen282225s2229203D2025i0A#:
x1896:	db "strlen(", 34, "%s", 34, ") = %i", 10, 0	; 19: 115 116 114 108 101 110 40 34 37 115 34 41 32 61 32 37 105 10 0

string_t203D202225s222C20u203D202225s220A#:
x1915:	db "t = ", 34, "%s", 34, ", u = ", 34, "%s", 34, 10, 0	; 20: 116 32 61 32 34 37 115 34 44 32 117 32 61 32 34 37 115 34 10 0

string_abc#:
x1935:	db "abc", 0	; 4: 97 98 99 0

string_strcmp28s2C20u29203D2025i0A#:
x1939:	db "strcmp(s, u) = %i", 10, 0	; 19: 115 116 114 99 109 112 40 115 44 32 117 41 32 61 32 37 105 10 0

string_strncmp28s2C20u2C20229203D2025i0A#:
x1958:	db "strncmp(s, u, 2) = %i", 10, 0	; 23: 115 116 114 110 99 109 112 40 115 44 32 117 44 32 50 41 32 61 32 37 105 10 0

string_strchr28s2C2027l2729203D2025i0A#:
x1981:	db "strchr(s, ", 39, "l", 39, ") = %i", 10, 0	; 21: 115 116 114 99 104 114 40 115 44 32 39 108 39 41 32 61 32 37 105 10 0

string_strrchr28s2C2027l2729203D2025i0A#:
x2002:	db "strrchr(s, ", 39, "l", 39, ") = %i", 10, 0	; 22: 115 116 114 114 99 104 114 40 115 44 32 39 108 39 41 32 61 32 37 105 10 0

string_strchr28s2C2027x2729203D2025i0A#:
x2024:	db "strchr(s, ", 39, "x", 39, ") = %i", 10, 0	; 21: 115 116 114 99 104 114 40 115 44 32 39 120 39 41 32 61 32 37 105 10 0

string_strrchr28s2C2027x2729203D2025i0A#:
x2045:	db "strrchr(s, ", 39, "x", 39, ") = %i", 10, 0	; 22: 115 116 114 114 99 104 114 40 115 44 32 39 120 39 41 32 61 32 37 105 10 0

string_s203D202225s222C20t203D202225s222C20u203D202225s220A#:
x2067:	db "s = ", 34, "%s", 34, ", t = ", 34, "%s", 34, ", u = ", 34, "%s", 34, 10, 0	; 30: 115 32 61 32 34 37 115 34 44 32 116 32 61 32 34 37 115 34 44 32 117 32 61 32 34 37 115 34 10 0

string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#:
x2097:	db "memchr(s, ", 39, "l", 39, ", SIZE * sizeof(char)) = %i", 10, 0	; 42: 109 101 109 99 104 114 40 115 44 32 39 108 39 44 32 83 73 90 69 32 42 32 115 105 122 101 111 102 40 99 104 97 114 41 41 32 61 32 37 105 10 0

string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#:
x2139:	db "memchr(s, ", 39, "x", 39, ", SIZE * sizeof(char)) = %i", 10, 0	; 42: 109 101 109 99 104 114 40 115 44 32 39 120 39 44 32 83 73 90 69 32 42 32 115 105 122 101 111 102 40 99 104 97 114 41 41 32 61 32 37 105 10 0

string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#:
x2181:	db "memcmp(s, t, SIZE * sizeof(char)) = %i", 10, 0	; 40: 109 101 109 99 109 112 40 115 44 32 116 44 32 83 73 90 69 32 42 32 115 105 122 101 111 102 40 99 104 97 114 41 41 32 61 32 37 105 10 0

string_strspn28s2C2022Hello2C20C2229203D2025i0A#:
x2221:	db "strspn(s, ", 34, "Hello, C", 34, ") = %i", 10, 0	; 28: 115 116 114 115 112 110 40 115 44 32 34 72 101 108 108 111 44 32 67 34 41 32 61 32 37 105 10 0

string_Hello2C20C#:
x2249:	db "Hello, C", 0	; 9: 72 101 108 108 111 44 32 67 0

string_strcspn28s2C2022Hello2C20C2229203D2025i0A#:
x2258:	db "strcspn(s, ", 34, "Hello, C", 34, ") = %i", 10, 0	; 29: 115 116 114 99 115 112 110 40 115 44 32 34 72 101 108 108 111 44 32 67 34 41 32 61 32 37 105 10 0

string_strerror28errno29203D202225s220A#:
x2287:	db "strerror(errno) = ", 34, "%s", 34, 10, 0	; 24: 115 116 114 101 114 114 111 114 40 101 114 114 110 111 41 32 61 32 34 37 115 34 10 0

errno:
x2311:	dw 0	; 2: 0 0

string_2C#:
x2313:	db ",", 0	; 2: 44 0

string_strtok28s2C20222C2229203D202225s220A#:
x2315:	db "strtok(s, ", 34, ",", 34, ") = ", 34, "%s", 34, 10, 0	; 23: 115 116 114 116 111 107 40 115 44 32 34 44 34 41 32 61 32 34 37 115 34 10 0

strlen:	; index = 0
x2338:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

strlen$1:	; £temporary4068 = string + index
x2343:	mov si, [bp + 6]	; 3: -117 118 6
x2346:	add si, [bp + 8]	; 3: 3 118 8

strlen$2:	; £temporary4067 -> £temporary4068 = *£temporary4068

strlen$3:	; if £temporary4067 -> £temporary4068 == 0 goto 6
x2349:	cmp byte [si], 0	; 3: -128 60 0
x2352:	je strlen$6	; 2: 116 5

strlen$4:	; ++index
x2354:	inc word [bp + 8]	; 3: -1 70 8

strlen$5:	; goto 1
x2357:	jmp strlen$1	; 2: -21 -16

strlen$6:	; return_value = index
x2359:	mov bx, [bp + 8]	; 3: -117 94 8

strlen$7:	; return
x2362:	mov ax, [bp]	; 3: -117 70 0
x2365:	mov di, [bp + 4]	; 3: -117 126 4
x2368:	mov bp, [bp + 2]	; 3: -117 110 2
x2371:	jmp ax	; 2: -1 -32

strlen$8:	; function end strlen

printf:	; £temporary2381 = &format
x2373:	mov si, bp	; 2: -119 -18
x2375:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2382 = int_to_int £temporary2381 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2382 + 2
x2378:	add si, 2	; 3: -125 -58 2
x2381:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; call header integral zero 0 stack zero 0

printf$4:	; parameter format, offset 6
x2384:	mov ax, [bp + 6]	; 3: -117 70 6
x2387:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; parameter arg_list, offset 8
x2390:	mov ax, [di + 8]	; 3: -117 69 8
x2393:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; call function ellipse-noellipse vprintf
x2396:	mov word [di + 10], printf$7	; 5: -57 69 10 111 9
x2401:	mov [di + 12], bp	; 3: -119 109 12
x2404:	mov [di + 14], di	; 3: -119 125 14
x2407:	add di, 10	; 3: -125 -57 10
x2410:	mov bp, di	; 2: -119 -3
x2412:	nop	; 1: -112
x2413:	jmp vprintf	; 2: -21 11

printf$7:	; post call

printf$8:	; £temporary2384 = return_value

printf$9:	; return_value = £temporary2384

printf$10:	; return
x2415:	mov ax, [bp]	; 3: -117 70 0
x2418:	mov di, [bp + 4]	; 3: -117 126 4
x2421:	mov bp, [bp + 2]	; 3: -117 110 2
x2424:	jmp ax	; 2: -1 -32

printf$11:	; function end printf

vprintf:	; call header integral zero 0 stack zero 0

vprintf$1:	; parameter stdout, offset 6
x2426:	mov ax, [stdout]	; 3: -95 -91 9
x2429:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; parameter format, offset 8
x2432:	mov ax, [bp + 6]	; 3: -117 70 6
x2435:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; parameter arg_list, offset 10
x2438:	mov ax, [bp + 8]	; 3: -117 70 8
x2441:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; call function noellipse-noellipse vfprintf
x2444:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 -102 9
x2449:	mov [bp + 12], bp	; 3: -119 110 12
x2452:	add bp, 10	; 3: -125 -59 10
x2455:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; post call

vprintf$6:	; £temporary2388 = return_value

vprintf$7:	; return_value = £temporary2388

vprintf$8:	; return
x2458:	mov ax, [bp]	; 3: -117 70 0
x2461:	mov di, [bp + 4]	; 3: -117 126 4
x2464:	mov bp, [bp + 2]	; 3: -117 110 2
x2467:	jmp ax	; 2: -1 -32

vprintf$9:	; function end vprintf

stdout:
x2469:	dw g_fileArray + 29	; 2: -60 9

g_fileArray:
x2471:	dw 1	; 2: 1 0
x2473:	dw 0	; 2: 0 0
x2475:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x2500:	dw 1	; 2: 1 0
x2502:	dw 1	; 2: 1 0
x2504:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x2529:	dw 1	; 2: 1 0
x2531:	dw 2	; 2: 2 0
x2533:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x2558:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

vfprintf:	; g_outStatus = 0
x3051:	mov word [g_outStatus], 0	; 6: -57 6 28 12 0 0

vfprintf$1:	; £temporary2400 = int_to_int outStream (Pointer -> Pointer)
x3057:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2400
x3060:	mov [g_outDevice], ax	; 3: -93 30 12

vfprintf$3:	; call header integral zero 0 stack zero 0

vfprintf$4:	; parameter format, offset 6
x3063:	mov ax, [bp + 8]	; 3: -117 70 8
x3066:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; parameter arg_list, offset 8
x3069:	mov ax, [bp + 10]	; 3: -117 70 10
x3072:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; call function noellipse-noellipse printFormat
x3075:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 17 12
x3080:	mov [bp + 14], bp	; 3: -119 110 14
x3083:	add bp, 12	; 3: -125 -59 12
x3086:	nop	; 1: -112
x3087:	jmp printFormat	; 2: -21 15

vfprintf$7:	; post call

vfprintf$8:	; £temporary2401 = return_value

vfprintf$9:	; return_value = £temporary2401

vfprintf$10:	; return
x3089:	mov ax, [bp]	; 3: -117 70 0
x3092:	mov di, [bp + 4]	; 3: -117 126 4
x3095:	mov bp, [bp + 2]	; 3: -117 110 2
x3098:	jmp ax	; 2: -1 -32

vfprintf$11:	; function end vfprintf

g_outStatus:
x3100:	db 0, 0	; 2: 0 0

g_outDevice:
x3102:	db 0, 0	; 2: 0 0

printFormat:	; width = 0
x3104:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; precision = 0
x3109:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; percent = 0
x3114:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; plus = 0
x3119:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; minus = 0
x3124:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; space = 0
x3129:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; zero = 0
x3134:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; grid = 0
x3139:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; widthStar = 0
x3144:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; period = 0
x3149:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; precisionStar = 0
x3154:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; shortInt = 0
x3159:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; longInt = 0
x3164:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; longDouble = 0
x3169:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; g_outChars = 0
x3174:	mov word [g_outChars], 0	; 6: -57 6 -126 17 0 0

printFormat$15:	; index = 0
x3180:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2233 = format + index
x3185:	mov si, [bp + 6]	; 3: -117 118 6
x3188:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2232 -> £temporary2233 = *£temporary2233

printFormat$18:	; if £temporary2232 -> £temporary2233 == 0 goto 286
x3191:	cmp byte [si], 0	; 3: -128 60 0
x3194:	je printFormat$286	; 4: 15 -124 -34 4

printFormat$19:	; £temporary2237 = format + index
x3198:	mov si, [bp + 6]	; 3: -117 118 6
x3201:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2236 -> £temporary2237 = *£temporary2237

printFormat$21:	; c = £temporary2236 -> £temporary2237
x3204:	mov al, [si]	; 2: -118 4
x3206:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 264
x3209:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x3213:	je printFormat$264	; 4: 15 -124 99 4

printFormat$23:	; case c == 43 goto 52
x3217:	mov al, [bp + 40]	; 3: -118 70 40
x3220:	cmp al, 43	; 2: 60 43
x3222:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; case c == 45 goto 54
x3226:	cmp al, 45	; 2: 60 45
x3228:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; case c == 32 goto 56
x3232:	cmp al, 32	; 2: 60 32
x3234:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; case c == 48 goto 58
x3238:	cmp al, 48	; 2: 60 48
x3240:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; case c == 35 goto 60
x3244:	cmp al, 35	; 2: 60 35
x3246:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; case c == 46 goto 62
x3250:	cmp al, 46	; 2: 60 46
x3252:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; case c == 42 goto 64
x3256:	cmp al, 42	; 2: 60 42
x3258:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; case c == 104 goto 69
x3262:	cmp al, 104	; 2: 60 104
x3264:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; case c == 108 goto 71
x3268:	cmp al, 108	; 2: 60 108
x3270:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; case c == 76 goto 73
x3274:	cmp al, 76	; 2: 60 76
x3276:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; case c == 37 goto 75
x3280:	cmp al, 37	; 2: 60 37
x3282:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; case c == 110 goto 75
x3286:	cmp al, 110	; 2: 60 110
x3288:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; case c == 112 goto 75
x3292:	cmp al, 112	; 2: 60 112
x3294:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; case c == 71 goto 75
x3298:	cmp al, 71	; 2: 60 71
x3300:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; case c == 103 goto 75
x3304:	cmp al, 103	; 2: 60 103
x3306:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; case c == 69 goto 75
x3310:	cmp al, 69	; 2: 60 69
x3312:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; case c == 101 goto 75
x3316:	cmp al, 101	; 2: 60 101
x3318:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; case c == 102 goto 75
x3322:	cmp al, 102	; 2: 60 102
x3324:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; case c == 115 goto 75
x3328:	cmp al, 115	; 2: 60 115
x3330:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; case c == 99 goto 75
x3334:	cmp al, 99	; 2: 60 99
x3336:	je printFormat$75	; 2: 116 125

printFormat$43:	; case c == 88 goto 75
x3338:	cmp al, 88	; 2: 60 88
x3340:	je printFormat$75	; 2: 116 121

printFormat$44:	; case c == 120 goto 75
x3342:	cmp al, 120	; 2: 60 120
x3344:	je printFormat$75	; 2: 116 117

printFormat$45:	; case c == 111 goto 75
x3346:	cmp al, 111	; 2: 60 111
x3348:	je printFormat$75	; 2: 116 113

printFormat$46:	; case c == 98 goto 75
x3350:	cmp al, 98	; 2: 60 98
x3352:	je printFormat$75	; 2: 116 109

printFormat$47:	; case c == 117 goto 75
x3354:	cmp al, 117	; 2: 60 117
x3356:	je printFormat$75	; 2: 116 105

printFormat$48:	; case c == 100 goto 75
x3358:	cmp al, 100	; 2: 60 100
x3360:	je printFormat$75	; 2: 116 101

printFormat$49:	; case c == 105 goto 75
x3362:	cmp al, 105	; 2: 60 105
x3364:	je printFormat$75	; 2: 116 97

printFormat$50:	; case end c

printFormat$51:	; goto 241
x3366:	jmp printFormat$241	; 3: -23 88 3

printFormat$52:	; plus = 1
x3369:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 284
x3374:	jmp printFormat$284	; 3: -23 37 4

printFormat$54:	; minus = 1
x3377:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 284
x3382:	jmp printFormat$284	; 3: -23 29 4

printFormat$56:	; space = 1
x3385:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 284
x3390:	jmp printFormat$284	; 3: -23 21 4

printFormat$58:	; zero = 1
x3393:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 284
x3398:	jmp printFormat$284	; 3: -23 13 4

printFormat$60:	; grid = 1
x3401:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 284
x3406:	jmp printFormat$284	; 3: -23 5 4

printFormat$62:	; period = 1
x3409:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 284
x3414:	jmp printFormat$284	; 3: -23 -3 3

printFormat$64:	; if period != 0 goto 67
x3417:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x3421:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x3423:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 284
x3428:	jmp printFormat$284	; 3: -23 -17 3

printFormat$67:	; precision = -1
x3431:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 284
x3436:	jmp printFormat$284	; 3: -23 -25 3

printFormat$69:	; shortInt = 1
x3439:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 284
x3444:	jmp printFormat$284	; 3: -23 -33 3

printFormat$71:	; longInt = 1
x3447:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 284
x3452:	jmp printFormat$284	; 3: -23 -41 3

printFormat$73:	; longDouble = 1
x3455:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 284
x3460:	jmp printFormat$284	; 3: -23 -49 3

printFormat$75:	; if minus == 0 goto 106
x3463:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3467:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x3471:	mov ax, [g_outChars]	; 3: -95 -126 17
x3474:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; call header integral zero 0 stack zero 0

printFormat$78:	; £temporary2241 = format + index
x3477:	mov si, [bp + 6]	; 3: -117 118 6
x3480:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2240 -> £temporary2241 = *£temporary2241

printFormat$80:	; £temporary2242 = &£temporary2240 -> £temporary2241

printFormat$81:	; parameter £temporary2242, offset 6
x3483:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; parameter arg_list, offset 8
x3486:	mov ax, [bp + 8]	; 3: -117 70 8
x3489:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; parameter plus, offset 10
x3492:	mov ax, [bp + 18]	; 3: -117 70 18
x3495:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; parameter space, offset 12
x3498:	mov ax, [bp + 22]	; 3: -117 70 22
x3501:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; parameter grid, offset 14
x3504:	mov ax, [bp + 26]	; 3: -117 70 26
x3507:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; £temporary2243 = &width
x3510:	mov si, bp	; 2: -119 -18
x3512:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2243, offset 16
x3515:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; parameter precision, offset 18
x3518:	mov ax, [bp + 14]	; 3: -117 70 14
x3521:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; parameter shortInt, offset 20
x3524:	mov ax, [bp + 34]	; 3: -117 70 34
x3527:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; parameter longInt, offset 22
x3530:	mov ax, [bp + 36]	; 3: -117 70 36
x3533:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; parameter longDouble, offset 24
x3536:	mov ax, [bp + 38]	; 3: -117 70 38
x3539:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; parameter 1, offset 26
x3542:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; parameter 0, offset 28
x3547:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; call function noellipse-noellipse printArgument
x3552:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 -18 13
x3557:	mov [bp + 45], bp	; 3: -119 110 45
x3560:	add bp, 43	; 3: -125 -59 43
x3563:	jmp printArgument	; 3: -23 -104 3

printFormat$95:	; post call

printFormat$96:	; £temporary2244 = return_value

printFormat$97:	; arg_list = £temporary2244
x3566:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2246 = g_outChars - startChars
x3569:	mov ax, [g_outChars]	; 3: -95 -126 17
x3572:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x3575:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2246 >= width goto 239
x3578:	cmp ax, [bp + 12]	; 3: 59 70 12
x3581:	jge printFormat$239	; 4: 15 -115 120 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x3585:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x3589:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 19 14
x3594:	mov [bp + 47], bp	; 3: -119 110 47
x3597:	add bp, 45	; 3: -125 -59 45
x3600:	jmp printChar	; 3: -23 -122 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x3603:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 186
x3605:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x3609:	je printFormat$186	; 4: 15 -124 100 1

printFormat$107:	; startChars = g_outChars
x3613:	mov ax, [g_outChars]	; 3: -95 -126 17
x3616:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$108:	; oldOutStatus = g_outStatus
x3619:	mov ax, [g_outStatus]	; 3: -95 28 12
x3622:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$109:	; negative = 0
x3625:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$110:	; g_outStatus = 2
x3630:	mov word [g_outStatus], 2	; 6: -57 6 28 12 2 0

printFormat$111:	; call header integral zero 0 stack zero 0

printFormat$112:	; £temporary2250 = format + index
x3636:	mov si, [bp + 6]	; 3: -117 118 6
x3639:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2249 -> £temporary2250 = *£temporary2250

printFormat$114:	; £temporary2251 = &£temporary2249 -> £temporary2250

printFormat$115:	; parameter £temporary2251, offset 6
x3642:	mov [bp + 53], si	; 3: -119 118 53

printFormat$116:	; parameter arg_list, offset 8
x3645:	mov ax, [bp + 8]	; 3: -117 70 8
x3648:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$117:	; parameter 0, offset 10
x3651:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$118:	; parameter 0, offset 12
x3656:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$119:	; parameter grid, offset 14
x3661:	mov ax, [bp + 26]	; 3: -117 70 26
x3664:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$120:	; £temporary2252 = &width
x3667:	mov si, bp	; 2: -119 -18
x3669:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2252, offset 16
x3672:	mov [bp + 63], si	; 3: -119 118 63

printFormat$122:	; parameter precision, offset 18
x3675:	mov ax, [bp + 14]	; 3: -117 70 14
x3678:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$123:	; parameter shortInt, offset 20
x3681:	mov ax, [bp + 34]	; 3: -117 70 34
x3684:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$124:	; parameter longInt, offset 22
x3687:	mov ax, [bp + 36]	; 3: -117 70 36
x3690:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$125:	; parameter longDouble, offset 24
x3693:	mov ax, [bp + 38]	; 3: -117 70 38
x3696:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$126:	; parameter 0, offset 26
x3699:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$127:	; £temporary2253 = &negative
x3704:	mov si, bp	; 2: -119 -18
x3706:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2253, offset 28
x3709:	mov [bp + 75], si	; 3: -119 118 75

printFormat$129:	; call function noellipse-noellipse printArgument
x3712:	mov word [bp + 47], printFormat$130	; 5: -57 70 47 -114 14
x3717:	mov [bp + 49], bp	; 3: -119 110 49
x3720:	add bp, 47	; 3: -125 -59 47
x3723:	jmp printArgument	; 3: -23 -8 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x3726:	mov ax, [bp + 43]	; 3: -117 70 43
x3729:	mov [g_outStatus], ax	; 3: -93 28 12

printFormat$132:	; field = g_outChars - startChars
x3732:	mov ax, [g_outChars]	; 3: -95 -126 17
x3735:	sub ax, [bp + 41]	; 3: 43 70 41
x3738:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x3741:	mov ax, [bp + 41]	; 3: -117 70 41
x3744:	mov [g_outChars], ax	; 3: -93 -126 17

printFormat$134:	; if negative == 0 goto 145
x3747:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x3751:	je printFormat$145	; 2: 116 41

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 88, offset 6
x3753:	mov byte [bp + 55], 88	; 4: -58 70 55 88

printFormat$137:	; call function noellipse-noellipse printChar
x3757:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 -69 14
x3762:	mov [bp + 51], bp	; 3: -119 110 51
x3765:	add bp, 49	; 3: -125 -59 49
x3768:	jmp printChar	; 3: -23 -34 9

printFormat$138:	; post call

printFormat$139:	; call header integral zero 0 stack zero 0

printFormat$140:	; parameter 45, offset 6
x3771:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$141:	; call function noellipse-noellipse printChar
x3775:	mov word [bp + 49], printFormat$142	; 5: -57 70 49 -51 14
x3780:	mov [bp + 51], bp	; 3: -119 110 51
x3783:	add bp, 49	; 3: -125 -59 49
x3786:	jmp printChar	; 3: -23 -52 9

printFormat$142:	; post call

printFormat$143:	; ++field
x3789:	inc word [bp + 47]	; 3: -1 70 47

printFormat$144:	; goto 158
x3792:	jmp printFormat$158	; 2: -21 57

printFormat$145:	; if plus == 0 goto 152
x3794:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x3798:	je printFormat$152	; 2: 116 23

printFormat$146:	; call header integral zero 0 stack zero 0

printFormat$147:	; parameter 43, offset 6
x3800:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$148:	; call function noellipse-noellipse printChar
x3804:	mov word [bp + 49], printFormat$149	; 5: -57 70 49 -22 14
x3809:	mov [bp + 51], bp	; 3: -119 110 51
x3812:	add bp, 49	; 3: -125 -59 49
x3815:	jmp printChar	; 3: -23 -81 9

printFormat$149:	; post call

printFormat$150:	; ++field
x3818:	inc word [bp + 47]	; 3: -1 70 47

printFormat$151:	; goto 158
x3821:	jmp printFormat$158	; 2: -21 28

printFormat$152:	; if space == 0 goto 158
x3823:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3827:	je printFormat$158	; 2: 116 22

printFormat$153:	; call header integral zero 0 stack zero 0

printFormat$154:	; parameter 32, offset 6
x3829:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$155:	; call function noellipse-noellipse printChar
x3833:	mov word [bp + 49], printFormat$156	; 5: -57 70 49 7 15
x3838:	mov [bp + 51], bp	; 3: -119 110 51
x3841:	add bp, 49	; 3: -125 -59 49
x3844:	jmp printChar	; 3: -23 -110 9

printFormat$156:	; post call

printFormat$157:	; £temporary2266 = field + 1
x3847:	mov ax, [bp + 47]	; 3: -117 70 47
x3850:	inc ax	; 1: 64

printFormat$158:	; ++field
x3851:	inc word [bp + 47]	; 3: -1 70 47

printFormat$159:	; if £temporary2266 >= width goto 165
x3854:	cmp ax, [bp + 12]	; 3: 59 70 12
x3857:	jge printFormat$165	; 2: 125 20

printFormat$160:	; call header integral zero 0 stack zero 0

printFormat$161:	; parameter 48, offset 6
x3859:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$162:	; call function noellipse-noellipse printChar
x3863:	mov word [bp + 49], printFormat$163	; 5: -57 70 49 37 15
x3868:	mov [bp + 51], bp	; 3: -119 110 51
x3871:	add bp, 49	; 3: -125 -59 49
x3874:	jmp printChar	; 3: -23 116 9

printFormat$163:	; post call

printFormat$164:	; goto 158
x3877:	jmp printFormat$158	; 2: -21 -28

printFormat$165:	; call header integral zero 0 stack zero 0

printFormat$166:	; £temporary2270 = format + index
x3879:	mov si, [bp + 6]	; 3: -117 118 6
x3882:	add si, [bp + 10]	; 3: 3 118 10

printFormat$167:	; £temporary2269 -> £temporary2270 = *£temporary2270

printFormat$168:	; £temporary2271 = &£temporary2269 -> £temporary2270

printFormat$169:	; parameter £temporary2271, offset 6
x3885:	mov [bp + 55], si	; 3: -119 118 55

printFormat$170:	; parameter arg_list, offset 8
x3888:	mov ax, [bp + 8]	; 3: -117 70 8
x3891:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$171:	; parameter 0, offset 10
x3894:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$172:	; parameter 0, offset 12
x3899:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$173:	; parameter grid, offset 14
x3904:	mov ax, [bp + 26]	; 3: -117 70 26
x3907:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$174:	; parameter 0, offset 16
x3910:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$175:	; parameter precision, offset 18
x3915:	mov ax, [bp + 14]	; 3: -117 70 14
x3918:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$176:	; parameter shortInt, offset 20
x3921:	mov ax, [bp + 34]	; 3: -117 70 34
x3924:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$177:	; parameter longInt, offset 22
x3927:	mov ax, [bp + 36]	; 3: -117 70 36
x3930:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$178:	; parameter longDouble, offset 24
x3933:	mov ax, [bp + 38]	; 3: -117 70 38
x3936:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$179:	; parameter 0, offset 26
x3939:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$180:	; parameter 0, offset 28
x3944:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$181:	; call function noellipse-noellipse printArgument
x3949:	mov word [bp + 49], printFormat$182	; 5: -57 70 49 123 15
x3954:	mov [bp + 51], bp	; 3: -119 110 51
x3957:	add bp, 49	; 3: -125 -59 49
x3960:	jmp printArgument	; 3: -23 11 2

printFormat$182:	; post call

printFormat$183:	; £temporary2272 = return_value

printFormat$184:	; arg_list = £temporary2272
x3963:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$185:	; goto 239
x3966:	jmp printFormat$239	; 3: -23 -8 0

printFormat$186:	; startChars = g_outChars
x3969:	mov ax, [g_outChars]	; 3: -95 -126 17
x3972:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$187:	; oldOutStatus = g_outStatus
x3975:	mov ax, [g_outStatus]	; 3: -95 28 12
x3978:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$188:	; g_outStatus = 2
x3981:	mov word [g_outStatus], 2	; 6: -57 6 28 12 2 0

printFormat$189:	; call header integral zero 0 stack zero 0

printFormat$190:	; £temporary2274 = format + index
x3987:	mov si, [bp + 6]	; 3: -117 118 6
x3990:	add si, [bp + 10]	; 3: 3 118 10

printFormat$191:	; £temporary2273 -> £temporary2274 = *£temporary2274

printFormat$192:	; £temporary2275 = &£temporary2273 -> £temporary2274

printFormat$193:	; parameter £temporary2275, offset 6
x3993:	mov [bp + 51], si	; 3: -119 118 51

printFormat$194:	; parameter arg_list, offset 8
x3996:	mov ax, [bp + 8]	; 3: -117 70 8
x3999:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$195:	; parameter plus, offset 10
x4002:	mov ax, [bp + 18]	; 3: -117 70 18
x4005:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$196:	; parameter space, offset 12
x4008:	mov ax, [bp + 22]	; 3: -117 70 22
x4011:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$197:	; parameter grid, offset 14
x4014:	mov ax, [bp + 26]	; 3: -117 70 26
x4017:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$198:	; £temporary2276 = &width
x4020:	mov si, bp	; 2: -119 -18
x4022:	add si, 12	; 3: -125 -58 12

printFormat$199:	; parameter £temporary2276, offset 16
x4025:	mov [bp + 61], si	; 3: -119 118 61

printFormat$200:	; parameter precision, offset 18
x4028:	mov ax, [bp + 14]	; 3: -117 70 14
x4031:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$201:	; parameter shortInt, offset 20
x4034:	mov ax, [bp + 34]	; 3: -117 70 34
x4037:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$202:	; parameter longInt, offset 22
x4040:	mov ax, [bp + 36]	; 3: -117 70 36
x4043:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$203:	; parameter longDouble, offset 24
x4046:	mov ax, [bp + 38]	; 3: -117 70 38
x4049:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$204:	; parameter 1, offset 26
x4052:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$205:	; parameter 0, offset 28
x4057:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$206:	; call function noellipse-noellipse printArgument
x4062:	mov word [bp + 45], printFormat$207	; 5: -57 70 45 -20 15
x4067:	mov [bp + 47], bp	; 3: -119 110 47
x4070:	add bp, 45	; 3: -125 -59 45
x4073:	jmp printArgument	; 3: -23 -102 1

printFormat$207:	; post call

printFormat$208:	; g_outStatus = oldOutStatus
x4076:	mov ax, [bp + 43]	; 3: -117 70 43
x4079:	mov [g_outStatus], ax	; 3: -93 28 12

printFormat$209:	; field = g_outChars - startChars
x4082:	mov ax, [g_outChars]	; 3: -95 -126 17
x4085:	sub ax, [bp + 41]	; 3: 43 70 41
x4088:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$210:	; g_outChars = startChars
x4091:	mov ax, [bp + 41]	; 3: -117 70 41
x4094:	mov [g_outChars], ax	; 3: -93 -126 17

printFormat$211:	; £temporary2279 = field
x4097:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$212:	; ++field
x4100:	inc word [bp + 45]	; 3: -1 70 45

printFormat$213:	; if £temporary2279 >= width goto 219
x4103:	cmp ax, [bp + 12]	; 3: 59 70 12
x4106:	jge printFormat$219	; 2: 125 20

printFormat$214:	; call header integral zero 0 stack zero 0

printFormat$215:	; parameter 32, offset 6
x4108:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$216:	; call function noellipse-noellipse printChar
x4112:	mov word [bp + 47], printFormat$217	; 5: -57 70 47 30 16
x4117:	mov [bp + 49], bp	; 3: -119 110 49
x4120:	add bp, 47	; 3: -125 -59 47
x4123:	jmp printChar	; 3: -23 123 8

printFormat$217:	; post call

printFormat$218:	; goto 211
x4126:	jmp printFormat$211	; 2: -21 -31

printFormat$219:	; call header integral zero 0 stack zero 0

printFormat$220:	; £temporary2283 = format + index
x4128:	mov si, [bp + 6]	; 3: -117 118 6
x4131:	add si, [bp + 10]	; 3: 3 118 10

printFormat$221:	; £temporary2282 -> £temporary2283 = *£temporary2283

printFormat$222:	; £temporary2284 = &£temporary2282 -> £temporary2283

printFormat$223:	; parameter £temporary2284, offset 6
x4134:	mov [bp + 53], si	; 3: -119 118 53

printFormat$224:	; parameter arg_list, offset 8
x4137:	mov ax, [bp + 8]	; 3: -117 70 8
x4140:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$225:	; parameter plus, offset 10
x4143:	mov ax, [bp + 18]	; 3: -117 70 18
x4146:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$226:	; parameter space, offset 12
x4149:	mov ax, [bp + 22]	; 3: -117 70 22
x4152:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$227:	; parameter grid, offset 14
x4155:	mov ax, [bp + 26]	; 3: -117 70 26
x4158:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$228:	; parameter 0, offset 16
x4161:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$229:	; parameter precision, offset 18
x4166:	mov ax, [bp + 14]	; 3: -117 70 14
x4169:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$230:	; parameter shortInt, offset 20
x4172:	mov ax, [bp + 34]	; 3: -117 70 34
x4175:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$231:	; parameter longInt, offset 22
x4178:	mov ax, [bp + 36]	; 3: -117 70 36
x4181:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$232:	; parameter longDouble, offset 24
x4184:	mov ax, [bp + 38]	; 3: -117 70 38
x4187:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$233:	; parameter 1, offset 26
x4190:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$234:	; parameter 0, offset 28
x4195:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$235:	; call function noellipse-noellipse printArgument
x4200:	mov word [bp + 47], printFormat$236	; 5: -57 70 47 118 16
x4205:	mov [bp + 49], bp	; 3: -119 110 49
x4208:	add bp, 47	; 3: -125 -59 47
x4211:	jmp printArgument	; 3: -23 16 1

printFormat$236:	; post call

printFormat$237:	; £temporary2285 = return_value

printFormat$238:	; arg_list = £temporary2285
x4214:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$239:	; percent = 0
x4217:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$240:	; goto 284
x4222:	jmp printFormat$284	; 3: -23 -43 0

printFormat$241:	; value = 0
x4225:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$242:	; call header integral zero 0 stack zero 0

printFormat$243:	; £temporary2288 = int_to_int c (Signed_Char -> Signed_Int)
x4230:	mov al, [bp + 40]	; 3: -118 70 40
x4233:	and ax, 255	; 3: 37 -1 0
x4236:	cmp al, 0	; 2: 60 0
x4238:	jge printFormat$244	; 2: 125 4
x4240:	neg al	; 2: -10 -40
x4242:	neg ax	; 2: -9 -40

printFormat$244:	; parameter £temporary2288, offset 6
x4244:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$245:	; call function noellipse-noellipse isdigit
x4247:	mov word [bp + 43], printFormat$246	; 5: -57 70 43 -91 16
x4252:	mov [bp + 45], bp	; 3: -119 110 45
x4255:	add bp, 43	; 3: -125 -59 43
x4258:	jmp isdigit	; 3: -23 -24 22

printFormat$246:	; post call

printFormat$247:	; £temporary2289 = return_value

printFormat$248:	; if £temporary2289 == 0 goto 258
x4261:	cmp bx, 0	; 3: -125 -5 0
x4264:	je printFormat$258	; 2: 116 49

printFormat$249:	; £temporary2290 = value * 10
x4266:	mov ax, [bp + 41]	; 3: -117 70 41
x4269:	xor dx, dx	; 2: 49 -46
x4271:	imul word [int2$10#]	; 4: -9 46 -124 17

printFormat$250:	; £temporary2291 = c - 48
x4275:	mov bl, [bp + 40]	; 3: -118 94 40
x4278:	sub bl, 48	; 3: -128 -21 48

printFormat$251:	; £temporary2292 = int_to_int £temporary2291 (Signed_Char -> Signed_Int)
x4281:	and bx, 255	; 4: -127 -29 -1 0
x4285:	cmp bl, 0	; 3: -128 -5 0
x4288:	jge printFormat$252	; 2: 125 4
x4290:	neg bl	; 2: -10 -37
x4292:	neg bx	; 2: -9 -37

printFormat$252:	; value = £temporary2290 + £temporary2292
x4294:	add ax, bx	; 2: 1 -40
x4296:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$253:	; £temporary2294 = index + 1
x4299:	mov ax, [bp + 10]	; 3: -117 70 10
x4302:	inc ax	; 1: 64

printFormat$254:	; £temporary2296 = format + £temporary2294
x4303:	mov si, [bp + 6]	; 3: -117 118 6
x4306:	add si, ax	; 2: 1 -58

printFormat$255:	; £temporary2295 -> £temporary2296 = *£temporary2296

printFormat$256:	; c = £temporary2295 -> £temporary2296
x4308:	mov al, [si]	; 2: -118 4
x4310:	mov [bp + 40], al	; 3: -120 70 40

printFormat$257:	; goto 242
x4313:	jmp printFormat$242	; 2: -21 -85

printFormat$258:	; --index
x4315:	dec word [bp + 10]	; 3: -1 78 10

printFormat$259:	; if period != 0 goto 262
x4318:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x4322:	jne printFormat$262	; 2: 117 8

printFormat$260:	; width = value
x4324:	mov ax, [bp + 41]	; 3: -117 70 41
x4327:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$261:	; goto 284
x4330:	jmp printFormat$284	; 2: -21 106

printFormat$262:	; precision = value
x4332:	mov ax, [bp + 41]	; 3: -117 70 41
x4335:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$263:	; goto 284
x4338:	jmp printFormat$284	; 2: -21 98

printFormat$264:	; if c != 37 goto 280
x4340:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x4344:	jne printFormat$280	; 2: 117 72

printFormat$265:	; percent = 1
x4346:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$266:	; plus = 0
x4351:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$267:	; minus = 0
x4356:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$268:	; space = 0
x4361:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$269:	; zero = 0
x4366:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$270:	; grid = 0
x4371:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$271:	; widthStar = 0
x4376:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$272:	; period = 0
x4381:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$273:	; precisionStar = 0
x4386:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$274:	; shortInt = 0
x4391:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$275:	; longInt = 0
x4396:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$276:	; longDouble = 0
x4401:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$277:	; width = 0
x4406:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$278:	; precision = 0
x4411:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$279:	; goto 284
x4416:	jmp printFormat$284	; 2: -21 20

printFormat$280:	; call header integral zero 0 stack zero 0

printFormat$281:	; parameter c, offset 6
x4418:	mov al, [bp + 40]	; 3: -118 70 40
x4421:	mov [bp + 47], al	; 3: -120 70 47

printFormat$282:	; call function noellipse-noellipse printChar
x4424:	mov word [bp + 41], printFormat$283	; 5: -57 70 41 86 17
x4429:	mov [bp + 43], bp	; 3: -119 110 43
x4432:	add bp, 41	; 3: -125 -59 41
x4435:	jmp printChar	; 3: -23 67 7

printFormat$283:	; post call

printFormat$284:	; ++index
x4438:	inc word [bp + 10]	; 3: -1 70 10

printFormat$285:	; goto 16
x4441:	jmp printFormat$16	; 3: -23 21 -5

printFormat$286:	; if g_outStatus != 1 goto 292
x4444:	cmp word [g_outStatus], 1	; 5: -125 62 28 12 1
x4449:	jne printFormat$292	; 2: 117 16

printFormat$287:	; £temporary2305 = int_to_int g_outDevice (Pointer -> Pointer)
x4451:	mov ax, [g_outDevice]	; 3: -95 30 12

printFormat$288:	; outString = £temporary2305
x4454:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$289:	; £temporary2307 = outString + g_outChars
x4457:	mov si, [bp + 40]	; 3: -117 118 40
x4460:	add si, [g_outChars]	; 4: 3 54 -126 17

printFormat$290:	; £temporary2306 -> £temporary2307 = *£temporary2307

printFormat$291:	; £temporary2306 -> £temporary2307 = 0
x4464:	mov byte [si], 0	; 3: -58 4 0

printFormat$292:	; return_value = g_outChars
x4467:	mov bx, [g_outChars]	; 4: -117 30 -126 17

printFormat$293:	; return
x4471:	mov ax, [bp]	; 3: -117 70 0
x4474:	mov di, [bp + 4]	; 3: -117 126 4
x4477:	mov bp, [bp + 2]	; 3: -117 110 2
x4480:	jmp ax	; 2: -1 -32

printFormat$294:	; function end printFormat

g_outChars:
x4482:	db 0, 0	; 2: 0 0

int2$10#:
x4484:	dw 10	; 2: 10 0

printArgument:	; £temporary2006 -> format = *format
x4486:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary2006 -> format
x4489:	mov al, [si]	; 2: -118 4
x4491:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x4494:	mov al, [bp + 30]	; 3: -118 70 30
x4497:	cmp al, 100	; 2: 60 100
x4499:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x4501:	cmp al, 105	; 2: 60 105
x4503:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x4505:	cmp al, 99	; 2: 60 99
x4507:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x4511:	cmp al, 115	; 2: 60 115
x4513:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x4517:	cmp al, 88	; 2: 60 88
x4519:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x4523:	cmp al, 120	; 2: 60 120
x4525:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x4529:	cmp al, 98	; 2: 60 98
x4531:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x4535:	cmp al, 111	; 2: 60 111
x4537:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x4541:	cmp al, 117	; 2: 60 117
x4543:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x4547:	cmp al, 71	; 2: 60 71
x4549:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x4553:	cmp al, 103	; 2: 60 103
x4555:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x4559:	cmp al, 69	; 2: 60 69
x4561:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x4565:	cmp al, 101	; 2: 60 101
x4567:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x4571:	cmp al, 102	; 2: 60 102
x4573:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x4577:	cmp al, 112	; 2: 60 112
x4579:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x4583:	cmp al, 110	; 2: 60 110
x4585:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x4589:	cmp al, 37	; 2: 60 37
x4591:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x4595:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x4598:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x4602:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x4604:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary2008 = arg_list - 2
x4608:	mov si, [bp + 8]	; 3: -117 118 8
x4611:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary2009 = int_to_int £temporary2008 (Signed_Int -> Pointer)

printArgument$25:	; £temporary2010 -> £temporary2009 = *£temporary2009

printArgument$26:	; £temporary2011 = int_to_int £temporary2010 -> £temporary2009 (Signed_Int -> Signed_Short_Int)
x4614:	mov ax, [si]	; 2: -117 4
x4616:	cmp ax, 0	; 3: -125 -8 0
x4619:	jge printArgument$27	; 2: 125 4
x4621:	neg ax	; 2: -9 -40
x4623:	neg al	; 2: -10 -40

printArgument$27:	; £temporary2012 = int_to_int £temporary2011 (Signed_Short_Int -> Signed_Long_Int)
x4625:	and eax, 255	; 6: 102 37 -1 0 0 0
x4631:	cmp al, 0	; 2: 60 0
x4633:	jge printArgument$28	; 2: 125 5
x4635:	neg al	; 2: -10 -40
x4637:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary2012
x4640:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x4644:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x4646:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x4650:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x4652:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary2014 = arg_list - 4
x4656:	mov si, [bp + 8]	; 3: -117 118 8
x4659:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary2015 = int_to_int £temporary2014 (Signed_Int -> Pointer)

printArgument$34:	; £temporary2016 -> £temporary2015 = *£temporary2015

printArgument$35:	; longValue = £temporary2016 -> £temporary2015
x4662:	mov eax, [si]	; 3: 102 -117 4
x4665:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x4669:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x4671:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary2018 = arg_list - 2
x4675:	mov si, [bp + 8]	; 3: -117 118 8
x4678:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary2019 = int_to_int £temporary2018 (Signed_Int -> Pointer)

printArgument$40:	; £temporary2020 -> £temporary2019 = *£temporary2019

printArgument$41:	; £temporary2021 = int_to_int £temporary2020 -> £temporary2019 (Signed_Int -> Signed_Long_Int)
x4681:	mov ax, [si]	; 2: -117 4
x4683:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x4689:	cmp ax, 0	; 3: -125 -8 0
x4692:	jge printArgument$42	; 2: 125 5
x4694:	neg ax	; 2: -9 -40
x4696:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary2021
x4699:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x4703:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x4707:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary2025 -> negativePtr = *negativePtr
x4709:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x4712:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x4717:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary2027 = 1
x4719:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x4722:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary2027 = 0
x4724:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary2025 -> negativePtr = £temporary2027
x4727:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x4729:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x4733:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x4735:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x4739:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x4743:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 -107 18
x4748:	mov [bp + 50], bp	; 3: -119 110 50
x4751:	add bp, 48	; 3: -125 -59 48
x4754:	jmp labs	; 3: -23 5 5

printArgument$54:	; post call

printArgument$55:	; £temporary2030 = return_value

printArgument$56:	; longValue = £temporary2030
x4757:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x4761:	mov ax, [bp + 8]	; 3: -117 70 8
x4764:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x4767:	mov ax, [bp + 16]	; 3: -117 70 16
x4770:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary2031 = &precision
x4773:	mov si, bp	; 2: -119 -18
x4775:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary2031, offset 10
x4778:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x4781:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 -69 18
x4786:	mov [bp + 50], bp	; 3: -119 110 50
x4789:	add bp, 48	; 3: -125 -59 48
x4792:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; post call

printArgument$64:	; £temporary2032 = return_value

printArgument$65:	; arg_list = £temporary2032
x4795:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x4798:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x4802:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x4806:	mov ax, [bp + 10]	; 3: -117 70 10
x4809:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x4812:	mov ax, [bp + 12]	; 3: -117 70 12
x4815:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x4818:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 -32 18
x4823:	mov [bp + 50], bp	; 3: -119 110 50
x4826:	add bp, 48	; 3: -125 -59 48
x4829:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x4832:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x4835:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary2035 = arg_list - 2
x4839:	mov si, [bp + 8]	; 3: -117 118 8
x4842:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary2036 = int_to_int £temporary2035 (Signed_Int -> Pointer)

printArgument$76:	; £temporary2037 -> £temporary2036 = *£temporary2036

printArgument$77:	; £temporary2038 = int_to_int £temporary2037 -> £temporary2036 (Signed_Int -> Signed_Char)
x4845:	mov ax, [si]	; 2: -117 4
x4847:	cmp ax, 0	; 3: -125 -8 0
x4850:	jge printArgument$78	; 2: 125 4
x4852:	neg ax	; 2: -9 -40
x4854:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary2038
x4856:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x4859:	mov ax, [bp + 8]	; 3: -117 70 8
x4862:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x4865:	mov ax, [bp + 16]	; 3: -117 70 16
x4868:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary2039 = &precision
x4871:	mov si, bp	; 2: -119 -18
x4873:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary2039, offset 10
x4876:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x4879:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 29 19
x4884:	mov [bp + 46], bp	; 3: -119 110 46
x4887:	add bp, 44	; 3: -125 -59 44
x4890:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; post call

printArgument$86:	; £temporary2040 = return_value

printArgument$87:	; arg_list = £temporary2040
x4893:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x4896:	mov al, [bp + 31]	; 3: -118 70 31
x4899:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x4902:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 52 19
x4907:	mov [bp + 46], bp	; 3: -119 110 46
x4910:	add bp, 44	; 3: -125 -59 44
x4913:	jmp printChar	; 3: -23 101 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x4916:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x4919:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2043 = arg_list - 2
x4923:	mov si, [bp + 8]	; 3: -117 118 8
x4926:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2044 = int_to_int £temporary2043 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2045 -> £temporary2044 = *£temporary2044

printArgument$97:	; stringValue = £temporary2045 -> £temporary2044
x4929:	mov ax, [si]	; 2: -117 4
x4931:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x4934:	mov ax, [bp + 8]	; 3: -117 70 8
x4937:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x4940:	mov ax, [bp + 16]	; 3: -117 70 16
x4943:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2046 = &precision
x4946:	mov si, bp	; 2: -119 -18
x4948:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2046, offset 10
x4951:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x4954:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 104 19
x4959:	mov [bp + 48], bp	; 3: -119 110 48
x4962:	add bp, 46	; 3: -125 -59 46
x4965:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; post call

printArgument$105:	; £temporary2047 = return_value

printArgument$106:	; arg_list = £temporary2047
x4968:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x4971:	mov ax, [bp + 44]	; 3: -117 70 44
x4974:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x4977:	mov ax, [bp + 18]	; 3: -117 70 18
x4980:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x4983:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 -123 19
x4988:	mov [bp + 48], bp	; 3: -119 110 48
x4991:	add bp, 46	; 3: -125 -59 46
x4994:	jmp printString	; 3: -23 -36 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x4997:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x5000:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x5004:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2063 = 10
x5006:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x5012:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x5014:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x5018:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2059 = 8
x5020:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x5026:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x5028:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x5032:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2055 = 2
x5034:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x5040:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2055 = 16
x5042:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2059 = £temporary2055

printArgument$124:	; £temporary2063 = £temporary2059

printArgument$125:	; base = £temporary2063
x5048:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x5052:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x5056:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x5058:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2065 = arg_list - 2
x5062:	mov si, [bp + 8]	; 3: -117 118 8
x5065:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2066 = int_to_int £temporary2065 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2067 -> £temporary2066 = *£temporary2066

printArgument$131:	; £temporary2068 = int_to_int £temporary2067 -> £temporary2066 (Unsigned_Int -> Unsigned_Short_Int)
x5068:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2069 = int_to_int £temporary2068 (Unsigned_Short_Int -> Unsigned_Long_Int)
x5070:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2069
x5076:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x5080:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x5082:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x5086:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x5088:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2071 = arg_list - 4
x5092:	mov si, [bp + 8]	; 3: -117 118 8
x5095:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2072 = int_to_int £temporary2071 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2073 -> £temporary2072 = *£temporary2072

printArgument$140:	; value = £temporary2073 -> £temporary2072
x5098:	mov eax, [si]	; 3: 102 -117 4
x5101:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x5105:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x5107:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2075 = arg_list - 2
x5111:	mov si, [bp + 8]	; 3: -117 118 8
x5114:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2076 = int_to_int £temporary2075 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2077 -> £temporary2076 = *£temporary2076

printArgument$146:	; £temporary2078 = int_to_int £temporary2077 -> £temporary2076 (Unsigned_Int -> Unsigned_Long_Int)
x5117:	mov ax, [si]	; 2: -117 4
x5119:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2078
x5125:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x5129:	mov ax, [bp + 8]	; 3: -117 70 8
x5132:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x5135:	mov ax, [bp + 16]	; 3: -117 70 16
x5138:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2081 = &precision
x5141:	mov si, bp	; 2: -119 -18
x5143:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2081, offset 10
x5146:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x5149:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 43 20
x5154:	mov [bp + 54], bp	; 3: -119 110 54
x5157:	add bp, 52	; 3: -125 -59 52
x5160:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; post call

printArgument$155:	; £temporary2082 = return_value

printArgument$156:	; arg_list = £temporary2082
x5163:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x5166:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x5170:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x5174:	mov ax, [bp + 10]	; 3: -117 70 10
x5177:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x5180:	mov ax, [bp + 12]	; 3: -117 70 12
x5183:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x5186:	mov ax, [bp + 14]	; 3: -117 70 14
x5189:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x5192:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x5196:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2083 = int_to_int c (Signed_Char -> Signed_Int)
x5200:	mov al, [bp + 30]	; 3: -118 70 30
x5203:	and ax, 255	; 3: 37 -1 0
x5206:	cmp al, 0	; 2: 60 0
x5208:	jge printArgument$165	; 2: 125 4
x5210:	neg al	; 2: -10 -40
x5212:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2083, offset 26
x5214:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x5217:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 111 20
x5222:	mov [bp + 74], bp	; 3: -119 110 74
x5225:	add bp, 72	; 3: -125 -59 72
x5228:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; post call

printArgument$168:	; £temporary2084 = return_value

printArgument$169:	; parameter £temporary2084, offset 20
x5231:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x5234:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 -128 20
x5239:	mov [bp + 54], bp	; 3: -119 110 54
x5242:	add bp, 52	; 3: -125 -59 52
x5245:	jmp printUnsignedLong	; 3: -23 -50 9

printArgument$171:	; post call

printArgument$172:	; goto 359
x5248:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x5251:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x5255:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x5257:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2087 = arg_list - 8
x5261:	mov si, [bp + 8]	; 3: -117 118 8
x5264:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2088 = int_to_int £temporary2087 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2089 -> £temporary2088 = *£temporary2088

printArgument$178:	; push float £temporary2089 -> £temporary2088
x5267:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x5269:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x5272:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x5275:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x5278:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x5283:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x5288:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x5293:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x5298:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 -64 20
x5303:	mov [bp + 46], bp	; 3: -119 110 46
x5306:	add bp, 44	; 3: -125 -59 44
x5309:	jmp printLongDoublePlain	; 3: -23 57 11

printArgument$188:	; post call

printArgument$189:	; goto 196
x5312:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x5314:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2092 = arg_list - 8
x5318:	mov si, [bp + 8]	; 3: -117 118 8
x5321:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2093 = int_to_int £temporary2092 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2094 -> £temporary2093 = *£temporary2093

printArgument$194:	; push float £temporary2094 -> £temporary2093
x5324:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x5326:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x5329:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x5333:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2098 -> negativePtr = *negativePtr
x5335:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x5338:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x5341:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x5343:	fcompp	; 2: -34 -39
x5345:	fstsw ax	; 3: -101 -33 -32
x5348:	sahf	; 1: -98
x5349:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2100 = 1
x5351:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x5354:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2100 = 0
x5356:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2098 -> negativePtr = £temporary2100
x5359:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x5361:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x5365:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x5367:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x5370:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x5373:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 11 21
x5378:	mov [bp + 46], bp	; 3: -119 110 46
x5381:	add bp, 44	; 3: -125 -59 44
x5384:	jmp fabs	; 3: -23 50 12

printArgument$210:	; post call

printArgument$211:	; £temporary2103 = return_value

printArgument$212:	; pop float longDoubleValue
x5387:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x5390:	mov ax, [bp + 8]	; 3: -117 70 8
x5393:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x5396:	mov ax, [bp + 16]	; 3: -117 70 16
x5399:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2104 = &precision
x5402:	mov si, bp	; 2: -119 -18
x5404:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2104, offset 10
x5407:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x5410:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 48 21
x5415:	mov [bp + 46], bp	; 3: -119 110 46
x5418:	add bp, 44	; 3: -125 -59 44
x5421:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; post call

printArgument$220:	; £temporary2105 = return_value

printArgument$221:	; arg_list = £temporary2105
x5424:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x5427:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x5431:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x5433:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x5436:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x5439:	mov ax, [bp + 10]	; 3: -117 70 10
x5442:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x5445:	mov ax, [bp + 12]	; 3: -117 70 12
x5448:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x5451:	mov ax, [bp + 14]	; 3: -117 70 14
x5454:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x5457:	mov ax, [bp + 18]	; 3: -117 70 18
x5460:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x5463:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 101 21
x5468:	mov [bp + 46], bp	; 3: -119 110 46
x5471:	add bp, 44	; 3: -125 -59 44
x5474:	jmp printLongDoublePlain	; 3: -23 -108 10

printArgument$231:	; post call

printArgument$232:	; goto 359
x5477:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2108 = int_to_int c (Signed_Char -> Signed_Int)
x5480:	mov al, [bp + 30]	; 3: -118 70 30
x5483:	and ax, 255	; 3: 37 -1 0
x5486:	cmp al, 0	; 2: 60 0
x5488:	jge printArgument$235	; 2: 125 4
x5490:	neg al	; 2: -10 -40
x5492:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2108, offset 6
x5494:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x5497:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 -121 21
x5502:	mov [bp + 46], bp	; 3: -119 110 46
x5505:	add bp, 44	; 3: -125 -59 44
x5508:	jmp tolower	; 3: -23 -40 11

printArgument$237:	; post call

printArgument$238:	; £temporary2109 = return_value

printArgument$239:	; if £temporary2109 != 101 goto 257
x5511:	cmp bx, 101	; 3: -125 -5 101
x5514:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x5516:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x5519:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x5522:	mov ax, [bp + 10]	; 3: -117 70 10
x5525:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x5528:	mov ax, [bp + 12]	; 3: -117 70 12
x5531:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x5534:	mov ax, [bp + 14]	; 3: -117 70 14
x5537:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x5540:	mov ax, [bp + 18]	; 3: -117 70 18
x5543:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2111 = int_to_int c (Signed_Char -> Signed_Int)
x5546:	mov al, [bp + 30]	; 3: -118 70 30
x5549:	and ax, 255	; 3: 37 -1 0
x5552:	cmp al, 0	; 2: 60 0
x5554:	jge printArgument$249	; 2: 125 4
x5556:	neg al	; 2: -10 -40
x5558:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2111, offset 28
x5560:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x5563:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 -55 21
x5568:	mov [bp + 68], bp	; 3: -119 110 68
x5571:	add bp, 66	; 3: -125 -59 66
x5574:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; post call

printArgument$252:	; £temporary2112 = return_value

printArgument$253:	; parameter £temporary2112, offset 22
x5577:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x5580:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 -38 21
x5585:	mov [bp + 46], bp	; 3: -119 110 46
x5588:	add bp, 44	; 3: -125 -59 44
x5591:	jmp printLongDoubleExpo	; 3: -23 38 12

printArgument$255:	; post call

printArgument$256:	; goto 359
x5594:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x5597:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x5600:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x5603:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 -15 21
x5608:	mov [bp + 46], bp	; 3: -119 110 46
x5611:	add bp, 44	; 3: -125 -59 44
x5614:	jmp fabs	; 3: -23 76 11

printArgument$262:	; post call

printArgument$263:	; £temporary2114 = return_value

printArgument$264:	; parameter £temporary2114, offset 6
x5617:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x5620:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 2 22
x5625:	mov [bp + 46], bp	; 3: -119 110 46
x5628:	add bp, 44	; 3: -125 -59 44
x5631:	jmp log10	; 3: -23 101 13

printArgument$266:	; post call

printArgument$267:	; £temporary2115 = return_value

printArgument$268:	; £temporary2116 = float_to_int £temporary2115 (Double -> Signed_Int)
x5634:	fistp word [container2bytes#]	; 4: -33 30 -104 23
x5638:	mov ax, [container2bytes#]	; 3: -95 -104 23

printArgument$269:	; expo = £temporary2116
x5641:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x5644:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x5648:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x5650:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x5654:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x5656:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x5659:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x5662:	mov ax, [bp + 10]	; 3: -117 70 10
x5665:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x5668:	mov ax, [bp + 12]	; 3: -117 70 12
x5671:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x5674:	mov ax, [bp + 14]	; 3: -117 70 14
x5677:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x5680:	mov ax, [bp + 18]	; 3: -117 70 18
x5683:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x5686:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 68 22
x5691:	mov [bp + 48], bp	; 3: -119 110 48
x5694:	add bp, 46	; 3: -125 -59 46
x5697:	jmp printLongDoublePlain	; 3: -23 -75 9

printArgument$280:	; post call

printArgument$281:	; goto 359
x5700:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x5703:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x5706:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x5709:	mov ax, [bp + 10]	; 3: -117 70 10
x5712:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x5715:	mov ax, [bp + 12]	; 3: -117 70 12
x5718:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x5721:	mov ax, [bp + 14]	; 3: -117 70 14
x5724:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x5727:	mov ax, [bp + 18]	; 3: -117 70 18
x5730:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2121 = int_to_int c (Signed_Char -> Signed_Int)
x5733:	mov al, [bp + 30]	; 3: -118 70 30
x5736:	and ax, 255	; 3: 37 -1 0
x5739:	cmp al, 0	; 2: 60 0
x5741:	jge printArgument$291	; 2: 125 4
x5743:	neg al	; 2: -10 -40
x5745:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2121, offset 28
x5747:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x5750:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 -124 22
x5755:	mov [bp + 70], bp	; 3: -119 110 70
x5758:	add bp, 68	; 3: -125 -59 68
x5761:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; post call

printArgument$294:	; £temporary2122 = return_value

printArgument$295:	; parameter £temporary2122, offset 22
x5764:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x5767:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 -107 22
x5772:	mov [bp + 48], bp	; 3: -119 110 48
x5775:	add bp, 46	; 3: -125 -59 46
x5778:	jmp printLongDoubleExpo	; 3: -23 107 11

printArgument$297:	; post call

printArgument$298:	; goto 359
x5781:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x5784:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2125 = arg_list - 2
x5788:	mov si, [bp + 8]	; 3: -117 118 8
x5791:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2126 = int_to_int £temporary2125 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2127 -> £temporary2126 = *£temporary2126

printArgument$303:	; ptrValue = £temporary2127 -> £temporary2126
x5794:	mov ax, [si]	; 2: -117 4
x5796:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x5799:	mov ax, [bp + 8]	; 3: -117 70 8
x5802:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x5805:	mov ax, [bp + 16]	; 3: -117 70 16
x5808:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2128 = &precision
x5811:	mov si, bp	; 2: -119 -18
x5813:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2128, offset 10
x5816:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x5819:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 -55 22
x5824:	mov [bp + 46], bp	; 3: -119 110 46
x5827:	add bp, 44	; 3: -125 -59 44
x5830:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; post call

printArgument$311:	; £temporary2129 = return_value

printArgument$312:	; arg_list = £temporary2129
x5833:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2130 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x5836:	mov ax, [bp + 42]	; 3: -117 70 42
x5839:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2130, offset 6
x5845:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x5849:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x5854:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x5859:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x5864:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x5872:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x5877:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 3 23
x5882:	mov [bp + 46], bp	; 3: -119 110 46
x5885:	add bp, 44	; 3: -125 -59 44
x5888:	jmp printUnsignedLong	; 3: -23 75 7

printArgument$322:	; post call

printArgument$323:	; goto 359
x5891:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x5894:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2133 = arg_list - 2
x5898:	mov si, [bp + 8]	; 3: -117 118 8
x5901:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2134 = int_to_int £temporary2133 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2135 -> £temporary2134 = *£temporary2134

printArgument$328:	; ptrValue = £temporary2135 -> £temporary2134
x5904:	mov ax, [si]	; 2: -117 4
x5906:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x5909:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2137 = arg_list - 2
x5913:	mov si, [bp + 8]	; 3: -117 118 8
x5916:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2138 = int_to_int £temporary2137 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2139 -> £temporary2138 = *£temporary2138

printArgument$333:	; intPtr = £temporary2139 -> £temporary2138
x5919:	mov ax, [si]	; 2: -117 4
x5921:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x5924:	mov ax, [bp + 8]	; 3: -117 70 8
x5927:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x5930:	mov ax, [bp + 16]	; 3: -117 70 16
x5933:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2140 = &precision
x5936:	mov si, bp	; 2: -119 -18
x5938:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2140, offset 10
x5941:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x5944:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 70 23
x5949:	mov [bp + 46], bp	; 3: -119 110 46
x5952:	add bp, 44	; 3: -125 -59 44
x5955:	nop	; 1: -112
x5956:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; post call

printArgument$341:	; £temporary2141 = return_value

printArgument$342:	; arg_list = £temporary2141
x5958:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2142 -> intPtr = *intPtr
x5961:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2142 -> intPtr = g_outChars
x5964:	mov ax, [g_outChars]	; 3: -95 -126 17
x5967:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x5969:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x5971:	mov ax, [bp + 8]	; 3: -117 70 8
x5974:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x5977:	mov ax, [bp + 16]	; 3: -117 70 16
x5980:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2143 = &precision
x5983:	mov si, bp	; 2: -119 -18
x5985:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2143, offset 10
x5988:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x5991:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 117 23
x5996:	mov [bp + 46], bp	; 3: -119 110 46
x5999:	add bp, 44	; 3: -125 -59 44
x6002:	nop	; 1: -112
x6003:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; post call

printArgument$353:	; £temporary2144 = return_value

printArgument$354:	; arg_list = £temporary2144
x6005:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x6008:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x6012:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 -118 23
x6017:	mov [bp + 46], bp	; 3: -119 110 46
x6020:	add bp, 44	; 3: -125 -59 44
x6023:	jmp printChar	; 3: -23 15 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x6026:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x6029:	mov ax, [bp]	; 3: -117 70 0
x6032:	mov di, [bp + 4]	; 3: -117 126 4
x6035:	mov bp, [bp + 2]	; 3: -117 110 2
x6038:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

container2bytes#:
x6040:	db 0, 0	; 2: 0 0

labs:	; if value >= 0 goto 4
x6042:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6047:	jge labs$4	; 2: 125 9

labs$1:	; £temporary3394 = -value
x6049:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x6053:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary3398 = £temporary3394

labs$3:	; goto 5
x6056:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary3398 = value
x6058:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary3398

labs$6:	; return
x6062:	mov ax, [bp]	; 3: -117 70 0
x6065:	mov di, [bp + 4]	; 3: -117 126 4
x6068:	mov bp, [bp + 2]	; 3: -117 110 2
x6071:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x6073:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6077:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary1989 -> widthPtr = *widthPtr
x6079:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary1989 -> widthPtr != -1 goto 9
x6082:	cmp word [si], -1	; 3: -125 60 -1
x6085:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary1992 -> widthPtr = *widthPtr
x6087:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x6090:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary1994 = arg_list - 2
x6094:	mov di, [bp + 6]	; 3: -117 126 6
x6097:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary1995 = int_to_int £temporary1994 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary1996 -> £temporary1995 = *£temporary1995

checkWidthAndPrecision$8:	; £temporary1992 -> widthPtr = £temporary1996 -> £temporary1995
x6100:	mov ax, [di]	; 2: -117 5
x6102:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x6104:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6108:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary1998 -> precisionPtr = *precisionPtr
x6110:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary1998 -> precisionPtr != -1 goto 18
x6113:	cmp word [si], -1	; 3: -125 60 -1
x6116:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary2001 -> precisionPtr = *precisionPtr
x6118:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x6121:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary2003 = arg_list - 2
x6125:	mov di, [bp + 6]	; 3: -117 126 6
x6128:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary2004 = int_to_int £temporary2003 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary2005 -> £temporary2004 = *£temporary2004

checkWidthAndPrecision$17:	; £temporary2001 -> precisionPtr = £temporary2005 -> £temporary2004
x6131:	mov ax, [di]	; 2: -117 5
x6133:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x6135:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x6138:	mov ax, [bp]	; 3: -117 70 0
x6141:	mov di, [bp + 4]	; 3: -117 126 4
x6144:	mov bp, [bp + 2]	; 3: -117 110 2
x6147:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x6149:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6154:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1844 = -longValue
x6156:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6160:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1844
x6163:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x6167:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x6171:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 41 24
x6176:	mov [bp + 16], bp	; 3: -119 110 16
x6179:	add bp, 14	; 3: -125 -59 14
x6182:	nop	; 1: -112
x6183:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x6185:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x6187:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x6191:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x6193:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x6197:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 67 24
x6202:	mov [bp + 16], bp	; 3: -119 110 16
x6205:	add bp, 14	; 3: -125 -59 14
x6208:	nop	; 1: -112
x6209:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x6211:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x6213:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6217:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x6219:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x6223:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 93 24
x6228:	mov [bp + 16], bp	; 3: -119 110 16
x6231:	add bp, 14	; 3: -125 -59 14
x6234:	nop	; 1: -112
x6235:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x6237:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6242:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x6244:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x6248:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 118 24
x6253:	mov [bp + 16], bp	; 3: -119 110 16
x6256:	add bp, 14	; 3: -125 -59 14
x6259:	nop	; 1: -112
x6260:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x6262:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x6264:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6268:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x6272:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 -114 24
x6277:	mov [bp + 16], bp	; 3: -119 110 16
x6280:	add bp, 14	; 3: -125 -59 14
x6283:	nop	; 1: -112
x6284:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x6286:	mov ax, [bp]	; 3: -117 70 0
x6289:	mov di, [bp + 4]	; 3: -117 126 4
x6292:	mov bp, [bp + 2]	; 3: -117 110 2
x6295:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x6297:	mov ax, [g_outStatus]	; 3: -95 28 12
x6300:	cmp ax, 0	; 3: -125 -8 0
x6303:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x6305:	cmp ax, 1	; 3: -125 -8 1
x6308:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x6310:	cmp ax, 2	; 3: -125 -8 2
x6313:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x6315:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1786 = int_to_int g_outDevice (Pointer -> Pointer)
x6317:	mov ax, [g_outDevice]	; 3: -95 30 12

printChar$6:	; stream = £temporary1786
x6320:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x6323:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1789 -> stream = *stream, offset 2
x6325:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1789 -> stream
x6328:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x6331:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1792 = &c
x6334:	mov dx, bp	; 2: -119 -22
x6336:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1792

printChar$13:	; interrupt 33
x6339:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x6341:	inc word [g_outChars]	; 4: -1 6 -126 17

printChar$15:	; goto 25
x6345:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1794 = int_to_int g_outDevice (Pointer -> Pointer)
x6347:	mov ax, [g_outDevice]	; 3: -95 30 12

printChar$17:	; outString = £temporary1794
x6350:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1795 = g_outChars
x6353:	mov ax, [g_outChars]	; 3: -95 -126 17

printChar$19:	; ++g_outChars
x6356:	inc word [g_outChars]	; 4: -1 6 -126 17

printChar$20:	; £temporary1797 = outString + £temporary1795
x6360:	mov si, [bp + 9]	; 3: -117 118 9
x6363:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1796 -> £temporary1797 = *£temporary1797

printChar$22:	; £temporary1796 -> £temporary1797 = c
x6365:	mov al, [bp + 6]	; 3: -118 70 6
x6368:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x6370:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x6372:	inc word [g_outChars]	; 4: -1 6 -126 17

printChar$25:	; return
x6376:	mov ax, [bp]	; 3: -117 70 0
x6379:	mov di, [bp + 4]	; 3: -117 126 4
x6382:	mov bp, [bp + 2]	; 3: -117 110 2
x6385:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x6387:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6392:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1834 = longValue % 10
x6394:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6398:	xor edx, edx	; 3: 102 49 -46
x6401:	idiv dword [int4$10#]	; 5: 102 -9 62 93 25

printLongIntRec$2:	; £temporary1835 = int_to_int £temporary1834 (Signed_Long_Int -> Signed_Int)
x6406:	cmp edx, 0	; 4: 102 -125 -6 0
x6410:	jge printLongIntRec$3	; 2: 125 5
x6412:	neg edx	; 3: 102 -9 -38
x6415:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1835
x6417:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1836 = longValue / 10
x6420:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6424:	xor edx, edx	; 3: 102 49 -46
x6427:	idiv dword [int4$10#]	; 5: 102 -9 62 93 25

printLongIntRec$6:	; parameter £temporary1836, offset 6
x6432:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x6436:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 50 25
x6441:	mov [bp + 14], bp	; 3: -119 110 14
x6444:	add bp, 12	; 3: -125 -59 12
x6447:	nop	; 1: -112
x6448:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1838 = digit + 48
x6450:	mov ax, [bp + 10]	; 3: -117 70 10
x6453:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1839 = int_to_int £temporary1838 (Signed_Int -> Signed_Char)
x6456:	cmp ax, 0	; 3: -125 -8 0
x6459:	jge printLongIntRec$12	; 2: 125 4
x6461:	neg ax	; 2: -9 -40
x6463:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1839, offset 6
x6465:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x6468:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 82 25
x6473:	mov [bp + 14], bp	; 3: -119 110 14
x6476:	add bp, 12	; 3: -125 -59 12
x6479:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x6482:	mov ax, [bp]	; 3: -117 70 0
x6485:	mov di, [bp + 4]	; 3: -117 126 4
x6488:	mov bp, [bp + 2]	; 3: -117 110 2
x6491:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x6493:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x6497:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x6501:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x6503:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6507:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x6509:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1803 = s + index
x6514:	mov si, [bp + 6]	; 3: -117 118 6
x6517:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1802 -> £temporary1803 = *£temporary1803

printString$5:	; if £temporary1802 -> £temporary1803 == 0 goto 53
x6520:	cmp byte [si], 0	; 3: -128 60 0
x6523:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1807 = s + index
x6527:	mov si, [bp + 6]	; 3: -117 118 6
x6530:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1806 -> £temporary1807 = *£temporary1807

printString$9:	; parameter £temporary1806 -> £temporary1807, offset 6
x6533:	mov al, [si]	; 2: -118 4
x6535:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x6538:	mov word [bp + 12], printString$11	; 5: -57 70 12 -104 25
x6543:	mov [bp + 14], bp	; 3: -119 110 14
x6546:	add bp, 12	; 3: -125 -59 12
x6549:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x6552:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x6555:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x6557:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1809 = precision
x6562:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x6565:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1809 <= 0 goto 53
x6568:	cmp ax, 0	; 3: -125 -8 0
x6571:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1812 = s + index
x6575:	mov si, [bp + 6]	; 3: -117 118 6
x6578:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1811 -> £temporary1812 = *£temporary1812

printString$20:	; if £temporary1811 -> £temporary1812 == 0 goto 53
x6581:	cmp byte [si], 0	; 3: -128 60 0
x6584:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1817 = s + index
x6588:	mov si, [bp + 6]	; 3: -117 118 6
x6591:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1816 -> £temporary1817 = *£temporary1817

printString$24:	; parameter £temporary1816 -> £temporary1817, offset 6
x6594:	mov al, [si]	; 2: -118 4
x6596:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x6599:	mov word [bp + 12], printString$26	; 5: -57 70 12 -43 25
x6604:	mov [bp + 14], bp	; 3: -119 110 14
x6607:	add bp, 12	; 3: -125 -59 12
x6610:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x6613:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x6616:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x6618:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x6622:	mov word [bp + 10], printString$32	; 5: -57 70 10 -20 25
x6627:	mov [bp + 12], bp	; 3: -119 110 12
x6630:	add bp, 10	; 3: -125 -59 10
x6633:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x6636:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x6640:	mov word [bp + 10], printString$36	; 5: -57 70 10 -2 25
x6645:	mov [bp + 12], bp	; 3: -119 110 12
x6648:	add bp, 10	; 3: -125 -59 10
x6651:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x6654:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x6658:	mov word [bp + 10], printString$40	; 5: -57 70 10 16 26
x6663:	mov [bp + 12], bp	; 3: -119 110 12
x6666:	add bp, 10	; 3: -125 -59 10
x6669:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x6672:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x6676:	mov word [bp + 10], printString$44	; 5: -57 70 10 34 26
x6681:	mov [bp + 12], bp	; 3: -119 110 12
x6684:	add bp, 10	; 3: -125 -59 10
x6687:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x6690:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x6694:	mov word [bp + 10], printString$48	; 5: -57 70 10 52 26
x6699:	mov [bp + 12], bp	; 3: -119 110 12
x6702:	add bp, 10	; 3: -125 -59 10
x6705:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x6708:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x6712:	mov word [bp + 10], printString$52	; 5: -57 70 10 70 26
x6717:	mov [bp + 12], bp	; 3: -119 110 12
x6720:	add bp, 10	; 3: -125 -59 10
x6723:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x6726:	mov ax, [bp]	; 3: -117 70 0
x6729:	mov di, [bp + 4]	; 3: -117 126 4
x6732:	mov bp, [bp + 2]	; 3: -117 110 2
x6735:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x6737:	mov word [bp + 8], isupper$2	; 5: -57 70 8 95 26
x6742:	mov [bp + 10], bp	; 3: -119 110 10
x6745:	add bp, 8	; 3: -125 -59 8
x6748:	nop	; 1: -112
x6749:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary383 = return_value

isupper$4:	; localeConvPtr = £temporary383
x6751:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x6754:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6758:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary385 -> localeConvPtr = *localeConvPtr, offset 14
x6760:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary385 -> localeConvPtr, offset 6
x6763:	mov ax, [si + 14]	; 3: -117 68 14
x6766:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x6769:	mov ax, [bp + 6]	; 3: -117 70 6
x6772:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x6775:	mov word [bp + 10], isupper$11	; 5: -57 70 10 -123 26
x6780:	mov [bp + 12], bp	; 3: -119 110 12
x6783:	add bp, 10	; 3: -125 -59 10
x6786:	jmp strchr	; 3: -23 121 3

isupper$11:	; post call

isupper$12:	; £temporary386 = return_value

isupper$13:	; if £temporary386 == 0 goto 16
x6789:	cmp bx, 0	; 3: -125 -5 0
x6792:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary388 = 1
x6794:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x6797:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary388 = 0
x6799:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary388

isupper$18:	; return
x6802:	mov ax, [bp]	; 3: -117 70 0
x6805:	mov di, [bp + 4]	; 3: -117 126 4
x6808:	mov bp, [bp + 2]	; 3: -117 110 2
x6811:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x6813:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x6817:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x6819:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x6823:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary392 = 1
x6825:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x6828:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary392 = 0
x6830:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary392

isupper$25:	; return
x6833:	mov ax, [bp]	; 3: -117 70 0
x6836:	mov di, [bp + 4]	; 3: -117 126 4
x6839:	mov bp, [bp + 2]	; 3: -117 110 2
x6842:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x6844:	cmp word [@15$g_currStructPtr], 0	; 5: -125 62 -38 26 0
x6849:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary516 -> g_currStructPtr = *g_currStructPtr, offset 2
x6851:	mov si, [@15$g_currStructPtr]	; 4: -117 54 -38 26

localeconv$2:	; £temporary520 = £temporary516 -> g_currStructPtr
x6855:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x6858:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary520 = 0
x6860:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary520

localeconv$6:	; return
x6863:	mov ax, [bp]	; 3: -117 70 0
x6866:	mov di, [bp + 4]	; 3: -117 126 4
x6869:	mov bp, [bp + 2]	; 3: -117 110 2
x6872:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@15$g_currStructPtr:
x6874:	dw @13$sArray	; 2: -36 26

@13$sArray:
x6876:	dw string_# ; 2: -24 26
x6878:	dw @12$en_US_utf8	; 2: -23 26
x6880:	dw string_C# ; 2: -7 29
x6882:	dw @12$en_US_utf8	; 2: -23 26
x6884:	dw string_US# ; 2: -5 29
x6886:	dw @12$en_US_utf8	; 2: -23 26

string_#:
x6888:	db 0	; 1: 0

@12$en_US_utf8:
x6889:	dw -5	; 2: -5 -1
x6891:	dw -4	; 2: -4 -1
x6893:	dw @8$enShortDayList ; 2: -5 26
x6895:	dw @9$enLongDayList ; 2: 37 27
x6897:	dw @10$enShortMonthList ; 2: 108 27
x6899:	dw @11$enLongMonthList ; 2: -76 27
x6901:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: 30 28
x6903:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: 57 28
x6905:	dw enMessageList ; 2: 84 28

@8$enShortDayList:
x6907:	dw string_Sun# ; 2: 9 27
x6909:	dw string_Mon# ; 2: 13 27
x6911:	dw string_Tue# ; 2: 17 27
x6913:	dw string_Wed# ; 2: 21 27
x6915:	dw string_Thu# ; 2: 25 27
x6917:	dw string_Fri# ; 2: 29 27
x6919:	dw string_Sat# ; 2: 33 27

string_Sun#:
x6921:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x6925:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x6929:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x6933:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x6937:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x6941:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x6945:	db "Sat", 0	; 4: 83 97 116 0

@9$enLongDayList:
x6949:	dw string_Sunday# ; 2: 51 27
x6951:	dw string_Monday# ; 2: 58 27
x6953:	dw string_Tuesday# ; 2: 65 27
x6955:	dw string_Wednesday# ; 2: 73 27
x6957:	dw string_Thursday# ; 2: 83 27
x6959:	dw string_Friday# ; 2: 92 27
x6961:	dw string_Saturday# ; 2: 99 27

string_Sunday#:
x6963:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x6970:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x6977:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x6985:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x6995:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x7004:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x7011:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@10$enShortMonthList:
x7020:	dw string_Jan# ; 2: -124 27
x7022:	dw string_Feb# ; 2: -120 27
x7024:	dw string_Mar# ; 2: -116 27
x7026:	dw string_Apr# ; 2: -112 27
x7028:	dw string_May# ; 2: -108 27
x7030:	dw string_Jun# ; 2: -104 27
x7032:	dw string_Jul# ; 2: -100 27
x7034:	dw string_Aug# ; 2: -96 27
x7036:	dw string_Sep# ; 2: -92 27
x7038:	dw string_Oct# ; 2: -88 27
x7040:	dw string_Nov# ; 2: -84 27
x7042:	dw string_Dec# ; 2: -80 27

string_Jan#:
x7044:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x7048:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x7052:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x7056:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x7060:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x7064:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x7068:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x7072:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x7076:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x7080:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x7084:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x7088:	db "Dec", 0	; 4: 68 101 99 0

@11$enLongMonthList:
x7092:	dw string_January# ; 2: -52 27
x7094:	dw string_February# ; 2: -44 27
x7096:	dw string_March# ; 2: -35 27
x7098:	dw string_April# ; 2: -29 27
x7100:	dw string_May# ; 2: -108 27
x7102:	dw string_June# ; 2: -23 27
x7104:	dw string_July# ; 2: -18 27
x7106:	dw string_August# ; 2: -13 27
x7108:	dw string_September# ; 2: -6 27
x7110:	dw string_October# ; 2: 4 28
x7112:	dw string_November# ; 2: 12 28
x7114:	dw string_December# ; 2: 21 28

string_January#:
x7116:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x7124:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x7133:	db "March", 0	; 6: 77 97 114 99 104 0

string_April#:
x7139:	db "April", 0	; 6: 65 112 114 105 108 0

string_June#:
x7145:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x7150:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x7155:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_September#:
x7162:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_October#:
x7172:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

string_November#:
x7180:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x7189:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x7198:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x7225:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

enMessageList:
x7252:	dw string_no20error# ; 2: 124 28
x7254:	dw string_function20number20invalid# ; 2: -123 28
x7256:	dw string_file20not20found# ; 2: -99 28
x7258:	dw string_path20not20found# ; 2: -84 28
x7260:	dw string_no20handle20available# ; 2: -69 28
x7262:	dw string_access20denied# ; 2: -49 28
x7264:	dw string_out20of20domain# ; 2: -35 28
x7266:	dw string_out20of20range# ; 2: -21 28
x7268:	dw string_invalid20multibyte20sequence# ; 2: -8 28
x7270:	dw string_error20while20opening# ; 2: 19 29
x7272:	dw string_error20while20flushing# ; 2: 39 29
x7274:	dw string_error20while20closing# ; 2: 60 29
x7276:	dw string_open20mode20invalid# ; 2: 80 29
x7278:	dw string_error20while20writing# ; 2: 98 29
x7280:	dw string_error20while20reading# ; 2: 118 29
x7282:	dw string_error20while20seeking# ; 2: -118 29
x7284:	dw string_error20while20telling# ; 2: -98 29
x7286:	dw string_error20while20sizing# ; 2: -78 29
x7288:	dw string_error20while20removing20file# ; 2: -59 29
x7290:	dw string_error20while20renaming20file# ; 2: -33 29

string_no20error#:
x7292:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x7301:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x7325:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x7340:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x7355:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x7375:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x7389:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x7403:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x7416:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x7443:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x7463:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x7484:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x7504:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x7522:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x7542:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x7562:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x7582:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x7602:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x7621:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x7647:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_C#:
x7673:	db "C", 0	; 2: 67 0

string_US#:
x7675:	db "US", 0	; 3: 85 83 0

strchr:	; £temporary3997 = int_to_int i (Signed_Int -> Signed_Char)
x7678:	mov ax, [bp + 8]	; 3: -117 70 8
x7681:	cmp ax, 0	; 3: -125 -8 0
x7684:	jge strchr$1	; 2: 125 4
x7686:	neg ax	; 2: -9 -40
x7688:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary3997
x7690:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x7693:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary3999 = text + index
x7698:	mov si, [bp + 6]	; 3: -117 118 6
x7701:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary3998 -> £temporary3999 = *£temporary3999

strchr$5:	; if £temporary3998 -> £temporary3999 == 0 goto 16
x7704:	cmp byte [si], 0	; 3: -128 60 0
x7707:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary4003 = text + index
x7709:	mov si, [bp + 6]	; 3: -117 118 6
x7712:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary4002 -> £temporary4003 = *£temporary4003

strchr$8:	; if £temporary4002 -> £temporary4003 != c goto 14
x7715:	mov al, [bp + 12]	; 3: -118 70 12
x7718:	cmp [si], al	; 2: 56 4
x7720:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary4006 = text + index
x7722:	mov bx, [bp + 6]	; 3: -117 94 6
x7725:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary4005 -> £temporary4006 = *£temporary4006

strchr$11:	; £temporary4007 = &£temporary4005 -> £temporary4006

strchr$12:	; return_value = £temporary4007

strchr$13:	; return
x7728:	mov ax, [bp]	; 3: -117 70 0
x7731:	mov di, [bp + 4]	; 3: -117 126 4
x7734:	mov bp, [bp + 2]	; 3: -117 110 2
x7737:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x7739:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x7742:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x7744:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x7747:	mov ax, [bp]	; 3: -117 70 0
x7750:	mov di, [bp + 4]	; 3: -117 126 4
x7753:	mov bp, [bp + 2]	; 3: -117 110 2
x7756:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x7758:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x7762:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x7764:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x7768:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 102 30
x7773:	mov [bp + 24], bp	; 3: -119 110 24
x7776:	add bp, 22	; 3: -125 -59 22
x7779:	jmp printChar	; 3: -23 51 -6

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x7782:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x7786:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x7788:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x7792:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 126 30
x7797:	mov [bp + 24], bp	; 3: -119 110 24
x7800:	add bp, 22	; 3: -125 -59 22
x7803:	jmp printChar	; 3: -23 27 -6

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x7806:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x7810:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x7812:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x7817:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x7819:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x7823:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 -99 30
x7828:	mov [bp + 24], bp	; 3: -119 110 24
x7831:	add bp, 22	; 3: -125 -59 22
x7834:	jmp printChar	; 3: -23 -4 -7

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x7837:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x7842:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x7844:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x7848:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 -74 30
x7853:	mov [bp + 24], bp	; 3: -119 110 24
x7856:	add bp, 22	; 3: -125 -59 22
x7859:	jmp printChar	; 3: -23 -29 -7

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x7862:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x7866:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1893 = 88
x7868:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x7870:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1893 = 120
x7872:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1893, offset 6
x7874:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x7877:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 -45 30
x7882:	mov [bp + 24], bp	; 3: -119 110 24
x7885:	add bp, 22	; 3: -125 -59 22
x7888:	jmp printChar	; 3: -23 -58 -7

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x7891:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7896:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x7898:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x7902:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 -20 30
x7907:	mov [bp + 24], bp	; 3: -119 110 24
x7910:	add bp, 22	; 3: -125 -59 22
x7913:	jmp printChar	; 3: -23 -83 -7

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x7916:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x7918:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7922:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x7926:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x7930:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x7934:	mov ax, [bp + 20]	; 3: -117 70 20
x7937:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x7940:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 18 31
x7945:	mov [bp + 24], bp	; 3: -119 110 24
x7948:	add bp, 22	; 3: -125 -59 22
x7951:	nop	; 1: -112
x7952:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x7954:	mov ax, [bp]	; 3: -117 70 0
x7957:	mov di, [bp + 4]	; 3: -117 126 4
x7960:	mov bp, [bp + 2]	; 3: -117 110 2
x7963:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x7965:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7970:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1869 = unsignedValue % base
x7972:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7976:	xor edx, edx	; 3: 102 49 -46
x7979:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1870 = int_to_int £temporary1869 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1870
x7983:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1871 = unsignedValue / base
x7986:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7990:	xor edx, edx	; 3: 102 49 -46
x7993:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1871, offset 6
x7997:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x8001:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x8005:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x8009:	mov ax, [bp + 14]	; 3: -117 70 14
x8012:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x8015:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 93 31
x8020:	mov [bp + 20], bp	; 3: -119 110 20
x8023:	add bp, 18	; 3: -125 -59 18
x8026:	nop	; 1: -112
x8027:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x8029:	mov ax, [bp + 16]	; 3: -117 70 16
x8032:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x8035:	mov ax, [bp + 14]	; 3: -117 70 14
x8038:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x8041:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 119 31
x8046:	mov [bp + 20], bp	; 3: -119 110 20
x8049:	add bp, 18	; 3: -125 -59 18
x8052:	nop	; 1: -112
x8053:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1873 = return_value

printUnsignedLongRec$17:	; c = £temporary1873
x8055:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x8058:	mov al, [bp + 18]	; 3: -118 70 18
x8061:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x8064:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 -114 31
x8069:	mov [bp + 21], bp	; 3: -119 110 21
x8072:	add bp, 19	; 3: -125 -59 19
x8075:	jmp printChar	; 3: -23 11 -7

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x8078:	mov ax, [bp]	; 3: -117 70 0
x8081:	mov di, [bp + 4]	; 3: -117 126 4
x8084:	mov bp, [bp + 2]	; 3: -117 110 2
x8087:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x8089:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x8093:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1859 = digit + 48
x8095:	mov bx, [bp + 6]	; 3: -117 94 6
x8098:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1860 = int_to_int £temporary1859 (Signed_Int -> Signed_Char)
x8101:	cmp bx, 0	; 3: -125 -5 0
x8104:	jge digitToChar$3	; 2: 125 4
x8106:	neg bx	; 2: -9 -37
x8108:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1860

digitToChar$4:	; return
x8110:	mov ax, [bp]	; 3: -117 70 0
x8113:	mov di, [bp + 4]	; 3: -117 126 4
x8116:	mov bp, [bp + 2]	; 3: -117 110 2
x8119:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x8121:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x8125:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1861 = digit - 10
x8127:	mov bx, [bp + 6]	; 3: -117 94 6
x8130:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1862 = £temporary1861 + 65
x8133:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1863 = int_to_int £temporary1862 (Signed_Int -> Signed_Char)
x8136:	cmp bx, 0	; 3: -125 -5 0
x8139:	jge digitToChar$9	; 2: 125 4
x8141:	neg bx	; 2: -9 -37
x8143:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1863

digitToChar$10:	; return
x8145:	mov ax, [bp]	; 3: -117 70 0
x8148:	mov di, [bp + 4]	; 3: -117 126 4
x8151:	mov bp, [bp + 2]	; 3: -117 110 2
x8154:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1864 = digit - 10
x8156:	mov bx, [bp + 6]	; 3: -117 94 6
x8159:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1865 = £temporary1864 + 97
x8162:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1866 = int_to_int £temporary1865 (Signed_Int -> Signed_Char)
x8165:	cmp bx, 0	; 3: -125 -5 0
x8168:	jge digitToChar$14	; 2: 125 4
x8170:	neg bx	; 2: -9 -37
x8172:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1866

digitToChar$15:	; return
x8174:	mov ax, [bp]	; 3: -117 70 0
x8177:	mov di, [bp + 4]	; 3: -117 126 4
x8180:	mov bp, [bp + 2]	; 3: -117 110 2
x8183:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x8185:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x8188:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x8190:	fcompp	; 2: -34 -39
x8192:	fstsw ax	; 3: -101 -33 -32
x8195:	sahf	; 1: -98
x8196:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x8198:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x8202:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 24 32
x8207:	mov [bp + 24], bp	; 3: -119 110 24
x8210:	add bp, 22	; 3: -125 -59 22
x8213:	jmp printChar	; 3: -23 -127 -8

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x8216:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1929 = -longDoubleValue
x8219:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x8221:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x8224:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x8229:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x8234:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1930 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x8237:	fistp dword [container4bytes#]	; 4: -37 30 -111 32
x8241:	mov eax, [container4bytes#]	; 4: 102 -95 -111 32

printLongDoublePlain$14:	; longValue = £temporary1930
x8245:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x8249:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x8253:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x8257:	mov ax, [bp + 14]	; 3: -117 70 14
x8260:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x8263:	mov ax, [bp + 16]	; 3: -117 70 16
x8266:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x8269:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 91 32
x8274:	mov [bp + 28], bp	; 3: -119 110 28
x8277:	add bp, 26	; 3: -125 -59 26
x8280:	jmp printLongInt	; 3: -23 -86 -9

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x8283:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1932 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x8286:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1933 = longDoubleValue - £temporary1932
x8289:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x8291:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x8294:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x8297:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x8300:	mov ax, [bp + 18]	; 3: -117 70 18
x8303:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x8306:	mov ax, [bp + 20]	; 3: -117 70 20
x8309:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x8312:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 -122 32
x8317:	mov [bp + 28], bp	; 3: -119 110 28
x8320:	add bp, 26	; 3: -125 -59 26
x8323:	nop	; 1: -112
x8324:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x8326:	mov ax, [bp]	; 3: -117 70 0
x8329:	mov di, [bp + 4]	; 3: -117 126 4
x8332:	mov bp, [bp + 2]	; 3: -117 110 2
x8335:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

container4bytes#:
x8337:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; push float longDoubleValue
x8341:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x8344:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1908 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x8347:	fistp dword [container4bytes#]	; 4: -37 30 -111 32
x8351:	mov eax, [container4bytes#]	; 4: 102 -95 -111 32

printLongDoubleFraction$3:	; £temporary1909 = int_to_float £temporary1908 (Signed_Long_Int -> Long_Double)
x8355:	mov [container4bytes#], eax	; 4: 102 -93 -111 32
x8359:	fild dword [container4bytes#]	; 4: -37 6 -111 32

printLongDoubleFraction$4:	; £temporary1910 = longDoubleValue - £temporary1909
x8363:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x8365:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x8368:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x8372:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 6
x8374:	mov word [bp + 16], 6	; 5: -57 70 16 6 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x8379:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x8383:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x8385:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x8389:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x8391:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x8395:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 -39 32
x8400:	mov [bp + 20], bp	; 3: -119 110 20
x8403:	add bp, 18	; 3: -125 -59 18
x8406:	jmp printChar	; 3: -23 -64 -9

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1916 = precision
x8409:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x8412:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1916 <= 0 goto 35
x8415:	cmp ax, 0	; 3: -125 -8 0
x8418:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; push float 10.0
x8420:	fld qword [float8$10.0#]	; 4: -35 6 53 33

printLongDoubleFraction$18:	; push float longDoubleValue
x8424:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1918 = 10.0 * longDoubleValue
x8427:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; pop float longDoubleValue10
x8429:	fstp qword [bp + 18]	; 3: -35 94 18

printLongDoubleFraction$21:	; push float longDoubleValue10
x8432:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$22:	; £temporary1919 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x8435:	fistp word [container2bytes#]	; 4: -33 30 -104 23
x8439:	mov ax, [container2bytes#]	; 3: -95 -104 23

printLongDoubleFraction$23:	; digitValue = £temporary1919
x8442:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$24:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$25:	; £temporary1920 = digitValue + 48
x8445:	mov ax, [bp + 26]	; 3: -117 70 26
x8448:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$26:	; £temporary1921 = int_to_int £temporary1920 (Signed_Int -> Signed_Char)
x8451:	cmp ax, 0	; 3: -125 -8 0
x8454:	jge printLongDoubleFraction$27	; 2: 125 4
x8456:	neg ax	; 2: -9 -40
x8458:	neg al	; 2: -10 -40

printLongDoubleFraction$27:	; parameter £temporary1921, offset 6
x8460:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$28:	; call function noellipse-noellipse printChar
x8463:	mov word [bp + 28], printLongDoubleFraction$29	; 5: -57 70 28 29 33
x8468:	mov [bp + 30], bp	; 3: -119 110 30
x8471:	add bp, 28	; 3: -125 -59 28
x8474:	jmp printChar	; 3: -23 124 -9

printLongDoubleFraction$29:	; post call

printLongDoubleFraction$30:	; push float longDoubleValue10
x8477:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$31:	; £temporary1923 = int_to_float digitValue (Signed_Int -> Long_Double)
x8480:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$32:	; £temporary1924 = longDoubleValue10 - £temporary1923
x8483:	fsub	; 2: -34 -23

printLongDoubleFraction$33:	; pop float longDoubleValue
x8485:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$34:	; goto 14
x8488:	jmp printLongDoubleFraction$14	; 2: -21 -81

printLongDoubleFraction$35:	; return
x8490:	mov ax, [bp]	; 3: -117 70 0
x8493:	mov di, [bp + 4]	; 3: -117 126 4
x8496:	mov bp, [bp + 2]	; 3: -117 110 2
x8499:	jmp ax	; 2: -1 -32

printLongDoubleFraction$36:	; function end printLongDoubleFraction

float8$10.0#:
x8501:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x8509:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x8512:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x8514:	fcompp	; 2: -34 -39
x8516:	fstsw ax	; 3: -101 -33 -32
x8519:	sahf	; 1: -98
x8520:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x8522:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary829 = -x
x8525:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x8527:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x8529:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary833

fabs$9:	; return
x8532:	mov ax, [bp]	; 3: -117 70 0
x8535:	mov di, [bp + 4]	; 3: -117 126 4
x8538:	mov bp, [bp + 2]	; 3: -117 110 2
x8541:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x8543:	mov ax, [bp + 6]	; 3: -117 70 6
x8546:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x8549:	mov word [bp + 8], tolower$3	; 5: -57 70 8 115 33
x8554:	mov [bp + 10], bp	; 3: -119 110 10
x8557:	add bp, 8	; 3: -125 -59 8
x8560:	jmp isupper	; 3: -23 -34 -8

tolower$3:	; post call

tolower$4:	; £temporary463 = return_value

tolower$5:	; if £temporary463 == 0 goto 31
x8563:	cmp bx, 0	; 3: -125 -5 0
x8566:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x8568:	mov word [bp + 8], tolower$8	; 5: -57 70 8 -122 33
x8573:	mov [bp + 10], bp	; 3: -119 110 10
x8576:	add bp, 8	; 3: -125 -59 8
x8579:	jmp localeconv	; 3: -23 54 -7

tolower$8:	; post call

tolower$9:	; £temporary464 = return_value

tolower$10:	; localeConvPtr = £temporary464
x8582:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x8585:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x8589:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary466 -> localeConvPtr = *localeConvPtr, offset 12
x8591:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary466 -> localeConvPtr
x8594:	mov ax, [si + 12]	; 3: -117 68 12
x8597:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary467 -> localeConvPtr = *localeConvPtr, offset 14
x8600:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary467 -> localeConvPtr
x8603:	mov ax, [si + 14]	; 3: -117 68 14
x8606:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x8609:	mov ax, [bp + 12]	; 3: -117 70 12
x8612:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x8615:	mov ax, [bp + 6]	; 3: -117 70 6
x8618:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x8621:	mov word [bp + 14], tolower$20	; 5: -57 70 14 -69 33
x8626:	mov [bp + 16], bp	; 3: -119 110 16
x8629:	add bp, 14	; 3: -125 -59 14
x8632:	jmp strchr	; 3: -23 67 -4

tolower$20:	; post call

tolower$21:	; £temporary468 = return_value

tolower$22:	; index = £temporary468 - upperCase
x8635:	sub bx, [bp + 12]	; 3: 43 94 12
x8638:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary471 = lowerCase + index
x8641:	mov si, [bp + 10]	; 3: -117 118 10
x8644:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary470 -> £temporary471 = *£temporary471

tolower$25:	; £temporary472 = int_to_int £temporary470 -> £temporary471 (Signed_Char -> Signed_Int)
x8647:	mov bl, [si]	; 2: -118 28
x8649:	and bx, 255	; 4: -127 -29 -1 0
x8653:	cmp bl, 0	; 3: -128 -5 0
x8656:	jge tolower$26	; 2: 125 4
x8658:	neg bl	; 2: -10 -37
x8660:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary472

tolower$27:	; return
x8662:	mov ax, [bp]	; 3: -117 70 0
x8665:	mov di, [bp + 4]	; 3: -117 126 4
x8668:	mov bp, [bp + 2]	; 3: -117 110 2
x8671:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary473 = c + 32
x8673:	mov bx, [bp + 6]	; 3: -117 94 6
x8676:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary473

tolower$30:	; return
x8679:	mov ax, [bp]	; 3: -117 70 0
x8682:	mov di, [bp + 4]	; 3: -117 126 4
x8685:	mov bp, [bp + 2]	; 3: -117 110 2
x8688:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x8690:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x8693:	mov ax, [bp]	; 3: -117 70 0
x8696:	mov di, [bp + 4]	; 3: -117 126 4
x8699:	mov bp, [bp + 2]	; 3: -117 110 2
x8702:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x8704:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x8707:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x8709:	fcompp	; 2: -34 -39
x8711:	fstsw ax	; 3: -101 -33 -32
x8714:	sahf	; 1: -98
x8715:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x8717:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x8721:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 31 34
x8726:	mov [bp + 26], bp	; 3: -119 110 26
x8729:	add bp, 24	; 3: -125 -59 24
x8732:	jmp printChar	; 3: -23 122 -10

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x8735:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x8737:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x8740:	mov ax, [bp + 20]	; 3: -117 70 20
x8743:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x8746:	mov ax, [bp + 18]	; 3: -117 70 18
x8749:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x8752:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 62 34
x8757:	mov [bp + 26], bp	; 3: -119 110 26
x8760:	add bp, 24	; 3: -125 -59 24
x8763:	jmp printLongDoubleFraction	; 3: -23 87 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x8766:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x8770:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary1949 = 69
x8772:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x8774:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary1949 = 101
x8776:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary1949, offset 6
x8778:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x8781:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 91 34
x8786:	mov [bp + 26], bp	; 3: -119 110 26
x8789:	add bp, 24	; 3: -125 -59 24
x8792:	jmp printChar	; 3: -23 62 -10

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x8795:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x8799:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 109 34
x8804:	mov [bp + 26], bp	; 3: -119 110 26
x8807:	add bp, 24	; 3: -125 -59 24
x8810:	jmp printChar	; 3: -23 44 -10

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x8813:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x8816:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x8819:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x8821:	fcompp	; 2: -34 -39
x8823:	fstsw ax	; 3: -101 -33 -32
x8826:	sahf	; 1: -98
x8827:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x8829:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x8833:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 -113 34
x8838:	mov [bp + 26], bp	; 3: -119 110 26
x8841:	add bp, 24	; 3: -125 -59 24
x8844:	jmp printChar	; 3: -23 10 -10

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x8847:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary1954 = -value
x8850:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x8852:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x8855:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x8858:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x8861:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 -85 34
x8866:	mov [bp + 26], bp	; 3: -119 110 26
x8869:	add bp, 24	; 3: -125 -59 24
x8872:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary1955 = return_value

printLongDoubleExpo$43:	; £temporary1956 = float_to_int £temporary1955 (Double -> Signed_Int)
x8875:	fistp word [container2bytes#]	; 4: -33 30 -104 23
x8879:	mov ax, [container2bytes#]	; 3: -95 -104 23

printLongDoubleExpo$44:	; expo = £temporary1956
x8882:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x8885:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x8888:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x8891:	fld qword [float8$10.0#]	; 4: -35 6 53 33

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x8895:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary1957 = int_to_float expo (Signed_Int -> Double)
x8898:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary1957, offset 14
x8901:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x8904:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -42 34
x8909:	mov [bp + 36], bp	; 3: -119 110 36
x8912:	add bp, 34	; 3: -125 -59 34
x8915:	jmp pow	; 3: -23 -18 1

printLongDoubleExpo$52:	; post call
x8918:	fstp qword [bp + 34]	; 3: -35 94 34
x8921:	fld qword [bp + 26]	; 3: -35 70 26
x8924:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary1958 = return_value

printLongDoubleExpo$54:	; £temporary1959 = value / £temporary1958
x8927:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x8929:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x8932:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x8935:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x8938:	mov ax, [bp + 14]	; 3: -117 70 14
x8941:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x8944:	mov ax, [bp + 16]	; 3: -117 70 16
x8947:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x8950:	mov ax, [bp + 18]	; 3: -117 70 18
x8953:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x8956:	mov ax, [bp + 20]	; 3: -117 70 20
x8959:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x8962:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 16 35
x8967:	mov [bp + 28], bp	; 3: -119 110 28
x8970:	add bp, 26	; 3: -125 -59 26
x8973:	jmp printLongDoublePlain	; 3: -23 -23 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x8976:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x8980:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary1965 = 69
x8982:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x8984:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary1965 = 101
x8986:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary1965, offset 6
x8988:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x8991:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 45 35
x8996:	mov [bp + 28], bp	; 3: -119 110 28
x8999:	add bp, 26	; 3: -125 -59 26
x9002:	jmp printChar	; 3: -23 108 -11

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary1967 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x9005:	mov ax, [bp + 24]	; 3: -117 70 24
x9008:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9014:	cmp ax, 0	; 3: -125 -8 0
x9017:	jge printLongDoubleExpo$75	; 2: 125 5
x9019:	neg ax	; 2: -9 -40
x9021:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary1967, offset 6
x9024:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x9028:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x9033:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x9038:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 92 35
x9043:	mov [bp + 28], bp	; 3: -119 110 28
x9046:	add bp, 26	; 3: -125 -59 26
x9049:	jmp printLongInt	; 3: -23 -87 -12

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x9052:	mov ax, [bp]	; 3: -117 70 0
x9055:	mov di, [bp + 4]	; 3: -117 126 4
x9058:	mov bp, [bp + 2]	; 3: -117 110 2
x9061:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; call header integral zero 0 stack zero 0

log10$1:	; push float x
x9063:	fld qword [bp + 6]	; 3: -35 70 6

log10$2:	; parameter x, offset 6
x9066:	fstp qword [bp + 20]	; 3: -35 94 20

log10$3:	; call function noellipse-noellipse log
x9069:	mov word [bp + 14], log10$4	; 5: -57 70 14 123 35
x9074:	mov [bp + 16], bp	; 3: -119 110 16
x9077:	add bp, 14	; 3: -125 -59 14
x9080:	nop	; 1: -112
x9081:	jmp log	; 2: -21 25

log10$4:	; post call

log10$5:	; £temporary550 = return_value

log10$6:	; push float 2.30
x9083:	fld qword [float8$2.30#]	; 4: -35 6 -116 35

log10$7:	; £temporary551 = £temporary550 / 2.30
x9087:	fdiv	; 2: -34 -7

log10$8:	; return_value = £temporary551

log10$9:	; return
x9089:	mov ax, [bp]	; 3: -117 70 0
x9092:	mov di, [bp + 4]	; 3: -117 126 4
x9095:	mov bp, [bp + 2]	; 3: -117 110 2
x9098:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$2.30#:
x9100:	dq 2.30	; 8: 102 102 102 102 102 102 2 64

log:	; push float x
x9108:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x9111:	fldz	; 2: -39 -18

log$2:	; if x <= 0 goto 76
x9113:	fcompp	; 2: -34 -39
x9115:	fstsw ax	; 3: -101 -33 -32
x9118:	sahf	; 1: -98
x9119:	jae log$76	; 4: 15 -125 -18 0

log$3:	; n = 0
x9123:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x
x9128:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push 1
x9131:	fld1	; 2: -39 -24

log$6:	; if x <= 1 goto 16
x9133:	fcompp	; 2: -34 -39
x9135:	fstsw ax	; 3: -101 -33 -32
x9138:	sahf	; 1: -98
x9139:	jae log$16	; 2: 115 30

log$7:	; push float x
x9141:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push 1
x9144:	fld1	; 2: -39 -24

log$9:	; if x <= 1 goto 28
x9146:	fcompp	; 2: -34 -39
x9148:	fstsw ax	; 3: -101 -33 -32
x9151:	sahf	; 1: -98
x9152:	jae log$28	; 2: 115 64

log$10:	; push float x
x9154:	fld qword [bp + 6]	; 3: -35 70 6

log$11:	; push float 2.71
x9157:	fld qword [float8$2.71#]	; 4: -35 6 -92 36

log$12:	; £temporary532 = x / 2.71
x9161:	fdiv	; 2: -34 -7

log$13:	; pop float x
x9163:	fstp qword [bp + 6]	; 3: -35 94 6

log$14:	; ++n
x9166:	inc word [bp + 14]	; 3: -1 70 14

log$15:	; goto 7
x9169:	jmp log$7	; 2: -21 -30

log$16:	; push float x
x9171:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 0.3690036900369003690036900369
x9174:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 -84 36

log$18:	; if x >= 0.3690036900369003690036900369 goto 28
x9178:	fcompp	; 2: -34 -39
x9180:	fstsw ax	; 3: -101 -33 -32
x9183:	sahf	; 1: -98
x9184:	jbe log$28	; 2: 118 32

log$19:	; push float x
x9186:	fld qword [bp + 6]	; 3: -35 70 6

log$20:	; push float 0.3690036900369003690036900369
x9189:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 -84 36

log$21:	; if x >= 0.3690036900369003690036900369 goto 28
x9193:	fcompp	; 2: -34 -39
x9195:	fstsw ax	; 3: -101 -33 -32
x9198:	sahf	; 1: -98
x9199:	jbe log$28	; 2: 118 17

log$22:	; push float x
x9201:	fld qword [bp + 6]	; 3: -35 70 6

log$23:	; push float 2.71
x9204:	fld qword [float8$2.71#]	; 4: -35 6 -92 36

log$24:	; £temporary536 = x * 2.71
x9208:	fmul	; 2: -34 -55

log$25:	; pop float x
x9210:	fstp qword [bp + 6]	; 3: -35 94 6

log$26:	; --n
x9213:	dec word [bp + 14]	; 3: -1 78 14

log$27:	; goto 19
x9216:	jmp log$19	; 2: -21 -32

log$28:	; push 1
x9218:	fld1	; 2: -39 -24

log$29:	; pop float index
x9220:	fstp qword [bp + 16]	; 3: -35 94 16

log$30:	; push 0
x9223:	fldz	; 2: -39 -18

log$31:	; pop float sum
x9225:	fstp qword [bp + 32]	; 3: -35 94 32

log$32:	; push 1
x9228:	fld1	; 2: -39 -24

log$33:	; pop float sign
x9230:	fstp qword [bp + 40]	; 3: -35 94 40

log$34:	; push float x
x9233:	fld qword [bp + 6]	; 3: -35 70 6

log$35:	; push 1
x9236:	fld1	; 2: -39 -24

log$36:	; £temporary538 = x - 1
x9238:	fsub	; 2: -34 -23

log$37:	; pop float x_minus_1
x9240:	fstp qword [bp + 48]	; 3: -35 94 48

log$38:	; push float x_minus_1
x9243:	fld qword [bp + 48]	; 3: -35 70 48

log$39:	; pop float power
x9246:	fstp qword [bp + 56]	; 3: -35 94 56

log$40:	; push float sign
x9249:	fld qword [bp + 40]	; 3: -35 70 40

log$41:	; push float power
x9252:	fld qword [bp + 56]	; 3: -35 70 56

log$42:	; £temporary539 = sign * power
x9255:	fmul	; 2: -34 -55

log$43:	; push float index
x9257:	fld qword [bp + 16]	; 3: -35 70 16

log$44:	; push 1
x9260:	fld1	; 2: -39 -24

log$45:	; index = index + 1
x9262:	fadd	; 2: -34 -63

log$46:	; top float index
x9264:	fst qword [bp + 16]	; 3: -35 86 16

log$47:	; push 1
x9267:	fld1	; 2: -39 -24

log$48:	; index = index - 1
x9269:	fsub	; 2: -34 -23

log$49:	; £temporary541 = £temporary539 / £temporary540
x9271:	fdiv	; 2: -34 -7

log$50:	; pop float term
x9273:	fstp qword [bp + 24]	; 3: -35 94 24

log$51:	; push float sum
x9276:	fld qword [bp + 32]	; 3: -35 70 32

log$52:	; push float term
x9279:	fld qword [bp + 24]	; 3: -35 70 24

log$53:	; £temporary542 = sum + term
x9282:	fadd	; 2: -34 -63

log$54:	; pop float sum
x9284:	fstp qword [bp + 32]	; 3: -35 94 32

log$55:	; push float power
x9287:	fld qword [bp + 56]	; 3: -35 70 56

log$56:	; push float x_minus_1
x9290:	fld qword [bp + 48]	; 3: -35 70 48

log$57:	; £temporary543 = power * x_minus_1
x9293:	fmul	; 2: -34 -55

log$58:	; pop float power
x9295:	fstp qword [bp + 56]	; 3: -35 94 56

log$59:	; push float sign
x9298:	fld qword [bp + 40]	; 3: -35 70 40

log$60:	; push float -1.0
x9301:	fld qword [float8$minus1.0#]	; 4: -35 6 -76 36

log$61:	; £temporary544 = sign * -1.0
x9305:	fmul	; 2: -34 -55

log$62:	; pop float sign
x9307:	fstp qword [bp + 40]	; 3: -35 94 40

log$63:	; call header integral zero 0 stack zero 0

log$64:	; push float term
x9310:	fld qword [bp + 24]	; 3: -35 70 24

log$65:	; parameter term, offset 6
x9313:	fstp qword [bp + 70]	; 3: -35 94 70

log$66:	; call function noellipse-noellipse fabs
x9316:	mov word [bp + 64], log$67	; 5: -57 70 64 114 36
x9321:	mov [bp + 66], bp	; 3: -119 110 66
x9324:	add bp, 64	; 3: -125 -59 64
x9327:	jmp fabs	; 3: -23 -53 -4

log$67:	; post call

log$68:	; £temporary545 = return_value

log$69:	; push float 0.000000001
x9330:	fld qword [float8$0.000000001#]	; 4: -35 6 -68 36

log$70:	; if £temporary545 >= 0.000000001 goto 40
x9334:	fcompp	; 2: -34 -39
x9336:	fstsw ax	; 3: -101 -33 -32
x9339:	sahf	; 1: -98
x9340:	jbe log$40	; 2: 118 -93

log$71:	; push float sum
x9342:	fld qword [bp + 32]	; 3: -35 70 32

log$72:	; £temporary547 = int_to_float n (Signed_Int -> Double)
x9345:	fild word [bp + 14]	; 3: -33 70 14

log$73:	; £temporary548 = sum + £temporary547
x9348:	fadd	; 2: -34 -63

log$74:	; return_value = £temporary548

log$75:	; return
x9350:	mov ax, [bp]	; 3: -117 70 0
x9353:	mov di, [bp + 4]	; 3: -117 126 4
x9356:	mov bp, [bp + 2]	; 3: -117 110 2
x9359:	jmp ax	; 2: -1 -32

log$76:	; errno = 6
x9361:	mov word [errno], 6	; 6: -57 6 7 9 6 0

log$77:	; push 0
x9367:	fldz	; 2: -39 -18

log$78:	; return_value = 0

log$79:	; return
x9369:	mov ax, [bp]	; 3: -117 70 0
x9372:	mov di, [bp + 4]	; 3: -117 126 4
x9375:	mov bp, [bp + 2]	; 3: -117 110 2
x9378:	jmp ax	; 2: -1 -32

log$80:	; function end log

float8$2.71#:
x9380:	dq 2.71	; 8: -82 71 -31 122 20 -82 5 64

float8$0.3690036900369003690036900369#:
x9388:	dq 0.3690036900369003690036900369	; 8: -86 -12 51 -89 -63 -99 -41 63

float8$minus1.0#:
x9396:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x9404:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

pow:	; push float x
x9412:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x9415:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x9417:	fcompp	; 2: -34 -39
x9419:	fstsw ax	; 3: -101 -33 -32
x9422:	sahf	; 1: -98
x9423:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x9425:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x9428:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x9431:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x9434:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x9437:	mov word [bp + 30], pow$9	; 5: -57 70 30 -21 36
x9442:	mov [bp + 32], bp	; 3: -119 110 32
x9445:	add bp, 30	; 3: -125 -59 30
x9448:	jmp log	; 3: -23 -87 -2

pow$9:	; post call
x9451:	fstp qword [bp + 30]	; 3: -35 94 30
x9454:	fld qword [bp + 22]	; 3: -35 70 22
x9457:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary554 = return_value

pow$11:	; £temporary555 = y * £temporary554
x9460:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary555, offset 6
x9462:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x9465:	mov word [bp + 22], pow$14	; 5: -57 70 22 7 37
x9470:	mov [bp + 24], bp	; 3: -119 110 24
x9473:	add bp, 22	; 3: -125 -59 22
x9476:	jmp exp	; 3: -23 102 1

pow$14:	; post call

pow$15:	; £temporary556 = return_value

pow$16:	; return_value = £temporary556

pow$17:	; return
x9479:	mov ax, [bp]	; 3: -117 70 0
x9482:	mov di, [bp + 4]	; 3: -117 126 4
x9485:	mov bp, [bp + 2]	; 3: -117 110 2
x9488:	jmp ax	; 2: -1 -32

pow$18:	; push float x
x9490:	fld qword [bp + 6]	; 3: -35 70 6

pow$19:	; push 0
x9493:	fldz	; 2: -39 -18

pow$20:	; if x != 0 goto 27
x9495:	fcompp	; 2: -34 -39
x9497:	fstsw ax	; 3: -101 -33 -32
x9500:	sahf	; 1: -98
x9501:	jne pow$27	; 2: 117 26

pow$21:	; push float y
x9503:	fld qword [bp + 14]	; 3: -35 70 14

pow$22:	; push 0
x9506:	fldz	; 2: -39 -18

pow$23:	; if y != 0 goto 27
x9508:	fcompp	; 2: -34 -39
x9510:	fstsw ax	; 3: -101 -33 -32
x9513:	sahf	; 1: -98
x9514:	jne pow$27	; 2: 117 13

pow$24:	; push 1
x9516:	fld1	; 2: -39 -24

pow$25:	; return_value = 1

pow$26:	; return
x9518:	mov ax, [bp]	; 3: -117 70 0
x9521:	mov di, [bp + 4]	; 3: -117 126 4
x9524:	mov bp, [bp + 2]	; 3: -117 110 2
x9527:	jmp ax	; 2: -1 -32

pow$27:	; push float x
x9529:	fld qword [bp + 6]	; 3: -35 70 6

pow$28:	; push 0
x9532:	fldz	; 2: -39 -18

pow$29:	; if x != 0 goto 36
x9534:	fcompp	; 2: -34 -39
x9536:	fstsw ax	; 3: -101 -33 -32
x9539:	sahf	; 1: -98
x9540:	jne pow$36	; 2: 117 26

pow$30:	; push float y
x9542:	fld qword [bp + 14]	; 3: -35 70 14

pow$31:	; push 0
x9545:	fldz	; 2: -39 -18

pow$32:	; if y <= 0 goto 36
x9547:	fcompp	; 2: -34 -39
x9549:	fstsw ax	; 3: -101 -33 -32
x9552:	sahf	; 1: -98
x9553:	jae pow$36	; 2: 115 13

pow$33:	; push 0
x9555:	fldz	; 2: -39 -18

pow$34:	; return_value = 0

pow$35:	; return
x9557:	mov ax, [bp]	; 3: -117 70 0
x9560:	mov di, [bp + 4]	; 3: -117 126 4
x9563:	mov bp, [bp + 2]	; 3: -117 110 2
x9566:	jmp ax	; 2: -1 -32

pow$36:	; push float x
x9568:	fld qword [bp + 6]	; 3: -35 70 6

pow$37:	; push 0
x9571:	fldz	; 2: -39 -18

pow$38:	; if x >= 0 goto 90
x9573:	fcompp	; 2: -34 -39
x9575:	fstsw ax	; 3: -101 -33 -32
x9578:	sahf	; 1: -98
x9579:	jbe pow$90	; 4: 15 -122 -25 0

pow$39:	; call header integral zero 0 stack zero 0

pow$40:	; push float y
x9583:	fld qword [bp + 14]	; 3: -35 70 14

pow$41:	; parameter y, offset 6
x9586:	fstp qword [bp + 28]	; 3: -35 94 28

pow$42:	; call function noellipse-noellipse floor
x9589:	mov word [bp + 22], pow$43	; 5: -57 70 22 -125 37
x9594:	mov [bp + 24], bp	; 3: -119 110 24
x9597:	add bp, 22	; 3: -125 -59 22
x9600:	jmp floor	; 3: -23 96 1

pow$43:	; post call

pow$44:	; £temporary564 = return_value

pow$45:	; call header integral zero 0 stack no zero 1
x9603:	fstp qword [bp + 22]	; 3: -35 94 22

pow$46:	; push float y
x9606:	fld qword [bp + 14]	; 3: -35 70 14

pow$47:	; parameter y, offset 6
x9609:	fstp qword [bp + 36]	; 3: -35 94 36

pow$48:	; call function noellipse-noellipse ceil
x9612:	mov word [bp + 30], pow$49	; 5: -57 70 30 -102 37
x9617:	mov [bp + 32], bp	; 3: -119 110 32
x9620:	add bp, 30	; 3: -125 -59 30
x9623:	jmp ceil	; 3: -23 -105 1

pow$49:	; post call
x9626:	fstp qword [bp + 30]	; 3: -35 94 30
x9629:	fld qword [bp + 22]	; 3: -35 70 22
x9632:	fld qword [bp + 30]	; 3: -35 70 30

pow$50:	; £temporary565 = return_value

pow$51:	; if £temporary564 != £temporary565 goto 90
x9635:	fcompp	; 2: -34 -39
x9637:	fstsw ax	; 3: -101 -33 -32
x9640:	sahf	; 1: -98
x9641:	jne pow$90	; 4: 15 -123 -87 0

pow$52:	; push float y
x9645:	fld qword [bp + 14]	; 3: -35 70 14

pow$53:	; £temporary568 = float_to_int y (Double -> Signed_Long_Int)
x9648:	fistp dword [container4bytes#]	; 4: -37 30 -111 32
x9652:	mov eax, [container4bytes#]	; 4: 102 -95 -111 32

pow$54:	; long_y = £temporary568
x9656:	mov [bp + 22], eax	; 4: 102 -119 70 22

pow$55:	; £temporary569 = long_y % 2
x9660:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x9664:	xor edx, edx	; 3: 102 49 -46
x9667:	idiv dword [int4$2#]	; 5: 102 -9 62 105 38

pow$56:	; if £temporary569 != 0 goto 73
x9672:	cmp edx, 0	; 4: 102 -125 -6 0
x9676:	jne pow$73	; 2: 117 67

pow$57:	; call header integral zero 0 stack zero 0

pow$58:	; push float y
x9678:	fld qword [bp + 14]	; 3: -35 70 14

pow$59:	; call header integral zero 0 stack no zero 1
x9681:	fstp qword [bp + 26]	; 3: -35 94 26

pow$60:	; push float x
x9684:	fld qword [bp + 6]	; 3: -35 70 6

pow$61:	; £temporary571 = -x
x9687:	fchs	; 2: -39 -32

pow$62:	; parameter £temporary571, offset 6
x9689:	fstp qword [bp + 40]	; 3: -35 94 40

pow$63:	; call function noellipse-noellipse log
x9692:	mov word [bp + 34], pow$64	; 5: -57 70 34 -22 37
x9697:	mov [bp + 36], bp	; 3: -119 110 36
x9700:	add bp, 34	; 3: -125 -59 34
x9703:	jmp log	; 3: -23 -86 -3

pow$64:	; post call
x9706:	fstp qword [bp + 34]	; 3: -35 94 34
x9709:	fld qword [bp + 26]	; 3: -35 70 26
x9712:	fld qword [bp + 34]	; 3: -35 70 34

pow$65:	; £temporary572 = return_value

pow$66:	; £temporary573 = y * £temporary572
x9715:	fmul	; 2: -34 -55

pow$67:	; parameter £temporary573, offset 6
x9717:	fstp qword [bp + 32]	; 3: -35 94 32

pow$68:	; call function noellipse-noellipse exp
x9720:	mov word [bp + 26], pow$69	; 5: -57 70 26 6 38
x9725:	mov [bp + 28], bp	; 3: -119 110 28
x9728:	add bp, 26	; 3: -125 -59 26
x9731:	nop	; 1: -112
x9732:	jmp exp	; 2: -21 103

pow$69:	; post call

pow$70:	; £temporary574 = return_value

pow$71:	; return_value = £temporary574

pow$72:	; return
x9734:	mov ax, [bp]	; 3: -117 70 0
x9737:	mov di, [bp + 4]	; 3: -117 126 4
x9740:	mov bp, [bp + 2]	; 3: -117 110 2
x9743:	jmp ax	; 2: -1 -32

pow$73:	; call header integral zero 0 stack zero 0

pow$74:	; push float y
x9745:	fld qword [bp + 14]	; 3: -35 70 14

pow$75:	; call header integral zero 0 stack no zero 1
x9748:	fstp qword [bp + 26]	; 3: -35 94 26

pow$76:	; push float x
x9751:	fld qword [bp + 6]	; 3: -35 70 6

pow$77:	; £temporary575 = -x
x9754:	fchs	; 2: -39 -32

pow$78:	; parameter £temporary575, offset 6
x9756:	fstp qword [bp + 40]	; 3: -35 94 40

pow$79:	; call function noellipse-noellipse log
x9759:	mov word [bp + 34], pow$80	; 5: -57 70 34 45 38
x9764:	mov [bp + 36], bp	; 3: -119 110 36
x9767:	add bp, 34	; 3: -125 -59 34
x9770:	jmp log	; 3: -23 103 -3

pow$80:	; post call
x9773:	fstp qword [bp + 34]	; 3: -35 94 34
x9776:	fld qword [bp + 26]	; 3: -35 70 26
x9779:	fld qword [bp + 34]	; 3: -35 70 34

pow$81:	; £temporary576 = return_value

pow$82:	; £temporary577 = y * £temporary576
x9782:	fmul	; 2: -34 -55

pow$83:	; parameter £temporary577, offset 6
x9784:	fstp qword [bp + 32]	; 3: -35 94 32

pow$84:	; call function noellipse-noellipse exp
x9787:	mov word [bp + 26], pow$85	; 5: -57 70 26 73 38
x9792:	mov [bp + 28], bp	; 3: -119 110 28
x9795:	add bp, 26	; 3: -125 -59 26
x9798:	nop	; 1: -112
x9799:	jmp exp	; 2: -21 36

pow$85:	; post call

pow$86:	; £temporary578 = return_value

pow$87:	; £temporary579 = -£temporary578
x9801:	fchs	; 2: -39 -32

pow$88:	; return_value = £temporary579

pow$89:	; return
x9803:	mov ax, [bp]	; 3: -117 70 0
x9806:	mov di, [bp + 4]	; 3: -117 126 4
x9809:	mov bp, [bp + 2]	; 3: -117 110 2
x9812:	jmp ax	; 2: -1 -32

pow$90:	; errno = 6
x9814:	mov word [errno], 6	; 6: -57 6 7 9 6 0

pow$91:	; push 0
x9820:	fldz	; 2: -39 -18

pow$92:	; return_value = 0

pow$93:	; return
x9822:	mov ax, [bp]	; 3: -117 70 0
x9825:	mov di, [bp + 4]	; 3: -117 126 4
x9828:	mov bp, [bp + 2]	; 3: -117 110 2
x9831:	jmp ax	; 2: -1 -32

pow$94:	; function end pow

int4$2#:
x9833:	dd 2	; 4: 2 0 0 0

exp:	; push 1
x9837:	fld1	; 2: -39 -24

exp$1:	; pop float index
x9839:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x9842:	fld1	; 2: -39 -24

exp$3:	; pop float sum
x9844:	fstp qword [bp + 30]	; 3: -35 94 30

exp$4:	; push 1
x9847:	fld1	; 2: -39 -24

exp$5:	; pop float faculty
x9849:	fstp qword [bp + 38]	; 3: -35 94 38

exp$6:	; push float x
x9852:	fld qword [bp + 6]	; 3: -35 70 6

exp$7:	; pop float power
x9855:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x9858:	fld qword [bp + 46]	; 3: -35 70 46

exp$9:	; push float faculty
x9861:	fld qword [bp + 38]	; 3: -35 70 38

exp$10:	; £temporary521 = power / faculty
x9864:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x9866:	fstp qword [bp + 22]	; 3: -35 94 22

exp$12:	; push float sum
x9869:	fld qword [bp + 30]	; 3: -35 70 30

exp$13:	; push float term
x9872:	fld qword [bp + 22]	; 3: -35 70 22

exp$14:	; £temporary522 = sum + term
x9875:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x9877:	fstp qword [bp + 30]	; 3: -35 94 30

exp$16:	; push float power
x9880:	fld qword [bp + 46]	; 3: -35 70 46

exp$17:	; push float x
x9883:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary523 = power * x
x9886:	fmul	; 2: -34 -55

exp$19:	; pop float power
x9888:	fstp qword [bp + 46]	; 3: -35 94 46

exp$20:	; push float faculty
x9891:	fld qword [bp + 38]	; 3: -35 70 38

exp$21:	; push float index
x9894:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x9897:	fld1	; 2: -39 -24

exp$23:	; index = index + 1
x9899:	fadd	; 2: -34 -63

exp$24:	; top float index
x9901:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary525 = faculty * £temporary524
x9904:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x9906:	fstp qword [bp + 38]	; 3: -35 94 38

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x9909:	fld qword [bp + 22]	; 3: -35 70 22

exp$29:	; parameter term, offset 6
x9912:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x9915:	mov word [bp + 54], exp$31	; 5: -57 70 54 -55 38
x9920:	mov [bp + 56], bp	; 3: -119 110 56
x9923:	add bp, 54	; 3: -125 -59 54
x9926:	jmp fabs	; 3: -23 116 -6

exp$31:	; post call

exp$32:	; £temporary526 = return_value

exp$33:	; push float 0.000000001
x9929:	fld qword [float8$0.000000001#]	; 4: -35 6 -68 36

exp$34:	; if £temporary526 >= 0.000000001 goto 8
x9933:	fcompp	; 2: -34 -39
x9935:	fstsw ax	; 3: -101 -33 -32
x9938:	sahf	; 1: -98
x9939:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x9941:	fld qword [bp + 30]	; 3: -35 70 30

exp$36:	; return_value = sum

exp$37:	; return
x9944:	mov ax, [bp]	; 3: -117 70 0
x9947:	mov di, [bp + 4]	; 3: -117 126 4
x9950:	mov bp, [bp + 2]	; 3: -117 110 2
x9953:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

floor:	; push float x
x9955:	fld qword [bp + 6]	; 3: -35 70 6

floor$1:	; push 0
x9958:	fldz	; 2: -39 -18

floor$2:	; if x >= 0 goto 13
x9960:	fcompp	; 2: -34 -39
x9962:	fstsw ax	; 3: -101 -33 -32
x9965:	sahf	; 1: -98
x9966:	jbe floor$13	; 2: 118 35

floor$3:	; call header integral zero 0 stack zero 0

floor$4:	; push float x
x9968:	fld qword [bp + 6]	; 3: -35 70 6

floor$5:	; £temporary805 = -x
x9971:	fchs	; 2: -39 -32

floor$6:	; parameter £temporary805, offset 6
x9973:	fstp qword [bp + 20]	; 3: -35 94 20

floor$7:	; call function noellipse-noellipse ceil
x9976:	mov word [bp + 14], floor$8	; 5: -57 70 14 6 39
x9981:	mov [bp + 16], bp	; 3: -119 110 16
x9984:	add bp, 14	; 3: -125 -59 14
x9987:	nop	; 1: -112
x9988:	jmp ceil	; 2: -21 43

floor$8:	; post call

floor$9:	; £temporary806 = return_value

floor$10:	; £temporary807 = -£temporary806
x9990:	fchs	; 2: -39 -32

floor$11:	; return_value = £temporary807

floor$12:	; return
x9992:	mov ax, [bp]	; 3: -117 70 0
x9995:	mov di, [bp + 4]	; 3: -117 126 4
x9998:	mov bp, [bp + 2]	; 3: -117 110 2
x10001:	jmp ax	; 2: -1 -32

floor$13:	; push float x
x10003:	fld qword [bp + 6]	; 3: -35 70 6

floor$14:	; £temporary808 = float_to_int x (Double -> Signed_Long_Int)
x10006:	fistp dword [container4bytes#]	; 4: -37 30 -111 32
x10010:	mov eax, [container4bytes#]	; 4: 102 -95 -111 32

floor$15:	; £temporary809 = int_to_float £temporary808 (Signed_Long_Int -> Double)
x10014:	mov [container4bytes#], eax	; 4: 102 -93 -111 32
x10018:	fild dword [container4bytes#]	; 4: -37 6 -111 32

floor$16:	; return_value = £temporary809

floor$17:	; return
x10022:	mov ax, [bp]	; 3: -117 70 0
x10025:	mov di, [bp + 4]	; 3: -117 126 4
x10028:	mov bp, [bp + 2]	; 3: -117 110 2
x10031:	jmp ax	; 2: -1 -32

floor$18:	; function end floor

ceil:	; push float x
x10033:	fld qword [bp + 6]	; 3: -35 70 6

ceil$1:	; push 0
x10036:	fldz	; 2: -39 -18

ceil$2:	; if x >= 0 goto 13
x10038:	fcompp	; 2: -34 -39
x10040:	fstsw ax	; 3: -101 -33 -32
x10043:	sahf	; 1: -98
x10044:	jbe ceil$13	; 2: 118 35

ceil$3:	; call header integral zero 0 stack zero 0

ceil$4:	; push float x
x10046:	fld qword [bp + 6]	; 3: -35 70 6

ceil$5:	; £temporary812 = -x
x10049:	fchs	; 2: -39 -32

ceil$6:	; parameter £temporary812, offset 6
x10051:	fstp qword [bp + 20]	; 3: -35 94 20

ceil$7:	; call function noellipse-noellipse floor
x10054:	mov word [bp + 14], ceil$8	; 5: -57 70 14 84 39
x10059:	mov [bp + 16], bp	; 3: -119 110 16
x10062:	add bp, 14	; 3: -125 -59 14
x10065:	nop	; 1: -112
x10066:	jmp floor	; 2: -21 -113

ceil$8:	; post call

ceil$9:	; £temporary813 = return_value

ceil$10:	; £temporary814 = -£temporary813
x10068:	fchs	; 2: -39 -32

ceil$11:	; return_value = £temporary814

ceil$12:	; return
x10070:	mov ax, [bp]	; 3: -117 70 0
x10073:	mov di, [bp + 4]	; 3: -117 126 4
x10076:	mov bp, [bp + 2]	; 3: -117 110 2
x10079:	jmp ax	; 2: -1 -32

ceil$13:	; push float x
x10081:	fld qword [bp + 6]	; 3: -35 70 6

ceil$14:	; push float 0.999999999999
x10084:	fld qword [float8$0.999999999999#]	; 4: -35 6 -123 39

ceil$15:	; £temporary815 = x + 0.999999999999
x10088:	fadd	; 2: -34 -63

ceil$16:	; £temporary816 = float_to_int £temporary815 (Double -> Signed_Long_Int)
x10090:	fistp dword [container4bytes#]	; 4: -37 30 -111 32
x10094:	mov eax, [container4bytes#]	; 4: 102 -95 -111 32

ceil$17:	; £temporary817 = int_to_float £temporary816 (Signed_Long_Int -> Double)
x10098:	mov [container4bytes#], eax	; 4: 102 -93 -111 32
x10102:	fild dword [container4bytes#]	; 4: -37 6 -111 32

ceil$18:	; return_value = £temporary817

ceil$19:	; return
x10106:	mov ax, [bp]	; 3: -117 70 0
x10109:	mov di, [bp + 4]	; 3: -117 126 4
x10112:	mov bp, [bp + 2]	; 3: -117 110 2
x10115:	jmp ax	; 2: -1 -32

ceil$20:	; function end ceil

float8$0.999999999999#:
x10117:	dq 0.999999999999	; 8: -47 -36 -1 -1 -1 -1 -17 63

isdigit:	; if c < 48 goto 4
x10125:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x10129:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x10131:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x10135:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary406 = 1
x10137:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x10140:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary406 = 0
x10142:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary406

isdigit$6:	; return
x10145:	mov ax, [bp]	; 3: -117 70 0
x10148:	mov di, [bp + 4]	; 3: -117 126 4
x10151:	mov bp, [bp + 2]	; 3: -117 110 2
x10154:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

strcpy:	; index = 0
x10156:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcpy$1:	; £temporary3892 = source + index
x10161:	mov si, [bp + 8]	; 3: -117 118 8
x10164:	add si, [bp + 10]	; 3: 3 118 10

strcpy$2:	; £temporary3891 -> £temporary3892 = *£temporary3892

strcpy$3:	; if £temporary3891 -> £temporary3892 == 0 goto 11
x10167:	cmp byte [si], 0	; 3: -128 60 0
x10170:	je strcpy$11	; 2: 116 21

strcpy$4:	; £temporary3896 = target + index
x10172:	mov si, [bp + 6]	; 3: -117 118 6
x10175:	add si, [bp + 10]	; 3: 3 118 10

strcpy$5:	; £temporary3895 -> £temporary3896 = *£temporary3896

strcpy$6:	; £temporary3898 = source + index
x10178:	mov di, [bp + 8]	; 3: -117 126 8
x10181:	add di, [bp + 10]	; 3: 3 126 10

strcpy$7:	; £temporary3897 -> £temporary3898 = *£temporary3898

strcpy$8:	; £temporary3895 -> £temporary3896 = £temporary3897 -> £temporary3898
x10184:	mov al, [di]	; 2: -118 5
x10186:	mov [si], al	; 2: -120 4

strcpy$9:	; ++index
x10188:	inc word [bp + 10]	; 3: -1 70 10

strcpy$10:	; goto 1
x10191:	jmp strcpy$1	; 2: -21 -32

strcpy$11:	; £temporary3900 = target + index
x10193:	mov si, [bp + 6]	; 3: -117 118 6
x10196:	add si, [bp + 10]	; 3: 3 118 10

strcpy$12:	; £temporary3899 -> £temporary3900 = *£temporary3900

strcpy$13:	; £temporary3899 -> £temporary3900 = 0
x10199:	mov byte [si], 0	; 3: -58 4 0

strcpy$14:	; return_value = target
x10202:	mov bx, [bp + 6]	; 3: -117 94 6

strcpy$15:	; return
x10205:	mov ax, [bp]	; 3: -117 70 0
x10208:	mov di, [bp + 4]	; 3: -117 126 4
x10211:	mov bp, [bp + 2]	; 3: -117 110 2
x10214:	jmp ax	; 2: -1 -32

strcpy$16:	; function end strcpy

strncpy:	; index = 0
x10216:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strncpy$1:	; if index >= size goto 12
x10221:	mov ax, [bp + 10]	; 3: -117 70 10
x10224:	cmp [bp + 12], ax	; 3: 57 70 12
x10227:	jge strncpy$12	; 2: 125 32

strncpy$2:	; £temporary3903 = source + index
x10229:	mov si, [bp + 8]	; 3: -117 118 8
x10232:	add si, [bp + 12]	; 3: 3 118 12

strncpy$3:	; £temporary3902 -> £temporary3903 = *£temporary3903

strncpy$4:	; if £temporary3902 -> £temporary3903 == 0 goto 12
x10235:	cmp byte [si], 0	; 3: -128 60 0
x10238:	je strncpy$12	; 2: 116 21

strncpy$5:	; £temporary3908 = target + index
x10240:	mov si, [bp + 6]	; 3: -117 118 6
x10243:	add si, [bp + 12]	; 3: 3 118 12

strncpy$6:	; £temporary3907 -> £temporary3908 = *£temporary3908

strncpy$7:	; £temporary3910 = source + index
x10246:	mov di, [bp + 8]	; 3: -117 126 8
x10249:	add di, [bp + 12]	; 3: 3 126 12

strncpy$8:	; £temporary3909 -> £temporary3910 = *£temporary3910

strncpy$9:	; £temporary3907 -> £temporary3908 = £temporary3909 -> £temporary3910
x10252:	mov al, [di]	; 2: -118 5
x10254:	mov [si], al	; 2: -120 4

strncpy$10:	; ++index
x10256:	inc word [bp + 12]	; 3: -1 70 12

strncpy$11:	; goto 1
x10259:	jmp strncpy$1	; 2: -21 -40

strncpy$12:	; if index >= size goto 18
x10261:	mov ax, [bp + 10]	; 3: -117 70 10
x10264:	cmp [bp + 12], ax	; 3: 57 70 12
x10267:	jge strncpy$18	; 2: 125 14

strncpy$13:	; £temporary3914 = target + index
x10269:	mov si, [bp + 6]	; 3: -117 118 6
x10272:	add si, [bp + 12]	; 3: 3 118 12

strncpy$14:	; £temporary3913 -> £temporary3914 = *£temporary3914

strncpy$15:	; £temporary3913 -> £temporary3914 = 0
x10275:	mov byte [si], 0	; 3: -58 4 0

strncpy$16:	; ++index
x10278:	inc word [bp + 12]	; 3: -1 70 12

strncpy$17:	; goto 12
x10281:	jmp strncpy$12	; 2: -21 -22

strncpy$18:	; return_value = target
x10283:	mov bx, [bp + 6]	; 3: -117 94 6

strncpy$19:	; return
x10286:	mov ax, [bp]	; 3: -117 70 0
x10289:	mov di, [bp + 4]	; 3: -117 126 4
x10292:	mov bp, [bp + 2]	; 3: -117 110 2
x10295:	jmp ax	; 2: -1 -32

strncpy$20:	; function end strncpy

strcat:	; call header integral zero 0 stack zero 0

strcat$1:	; parameter target, offset 6
x10297:	mov ax, [bp + 6]	; 3: -117 70 6
x10300:	mov [bp + 18], ax	; 3: -119 70 18

strcat$2:	; call function noellipse-noellipse strlen
x10303:	mov word [bp + 12], strcat$3	; 5: -57 70 12 77 40
x10308:	mov [bp + 14], bp	; 3: -119 110 14
x10311:	add bp, 12	; 3: -125 -59 12
x10314:	jmp strlen	; 3: -23 -43 -32

strcat$3:	; post call

strcat$4:	; £temporary3915 = return_value

strcat$5:	; targetLength = £temporary3915
x10317:	mov [bp + 12], bx	; 3: -119 94 12

strcat$6:	; index = 0
x10320:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcat$7:	; £temporary3917 = source + index
x10325:	mov si, [bp + 8]	; 3: -117 118 8
x10328:	add si, [bp + 10]	; 3: 3 118 10

strcat$8:	; £temporary3916 -> £temporary3917 = *£temporary3917

strcat$9:	; if £temporary3916 -> £temporary3917 == 0 goto 18
x10331:	cmp byte [si], 0	; 3: -128 60 0
x10334:	je strcat$18	; 2: 116 26

strcat$10:	; £temporary3920 = targetLength + index
x10336:	mov ax, [bp + 12]	; 3: -117 70 12
x10339:	add ax, [bp + 10]	; 3: 3 70 10

strcat$11:	; £temporary3922 = target + £temporary3920
x10342:	mov si, [bp + 6]	; 3: -117 118 6
x10345:	add si, ax	; 2: 1 -58

strcat$12:	; £temporary3921 -> £temporary3922 = *£temporary3922

strcat$13:	; £temporary3924 = source + index
x10347:	mov di, [bp + 8]	; 3: -117 126 8
x10350:	add di, [bp + 10]	; 3: 3 126 10

strcat$14:	; £temporary3923 -> £temporary3924 = *£temporary3924

strcat$15:	; £temporary3921 -> £temporary3922 = £temporary3923 -> £temporary3924
x10353:	mov al, [di]	; 2: -118 5
x10355:	mov [si], al	; 2: -120 4

strcat$16:	; ++index
x10357:	inc word [bp + 10]	; 3: -1 70 10

strcat$17:	; goto 7
x10360:	jmp strcat$7	; 2: -21 -37

strcat$18:	; £temporary3925 = targetLength + index
x10362:	mov ax, [bp + 12]	; 3: -117 70 12
x10365:	add ax, [bp + 10]	; 3: 3 70 10

strcat$19:	; £temporary3927 = target + £temporary3925
x10368:	mov si, [bp + 6]	; 3: -117 118 6
x10371:	add si, ax	; 2: 1 -58

strcat$20:	; £temporary3926 -> £temporary3927 = *£temporary3927

strcat$21:	; £temporary3926 -> £temporary3927 = 0
x10373:	mov byte [si], 0	; 3: -58 4 0

strcat$22:	; return_value = target
x10376:	mov bx, [bp + 6]	; 3: -117 94 6

strcat$23:	; return
x10379:	mov ax, [bp]	; 3: -117 70 0
x10382:	mov di, [bp + 4]	; 3: -117 126 4
x10385:	mov bp, [bp + 2]	; 3: -117 110 2
x10388:	jmp ax	; 2: -1 -32

strcat$24:	; function end strcat

strncat:	; call header integral zero 0 stack zero 0

strncat$1:	; parameter target, offset 6
x10390:	mov ax, [bp + 6]	; 3: -117 70 6
x10393:	mov [bp + 20], ax	; 3: -119 70 20

strncat$2:	; call function noellipse-noellipse strlen
x10396:	mov word [bp + 14], strncat$3	; 5: -57 70 14 -86 40
x10401:	mov [bp + 16], bp	; 3: -119 110 16
x10404:	add bp, 14	; 3: -125 -59 14
x10407:	jmp strlen	; 3: -23 120 -32

strncat$3:	; post call

strncat$4:	; £temporary3929 = return_value

strncat$5:	; targetLength = £temporary3929
x10410:	mov [bp + 14], bx	; 3: -119 94 14

strncat$6:	; index = 0
x10413:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strncat$7:	; £temporary3930 = size - 1
x10418:	mov ax, [bp + 10]	; 3: -117 70 10
x10421:	dec ax	; 1: 72

strncat$8:	; if index >= £temporary3930 goto 20
x10422:	cmp [bp + 12], ax	; 3: 57 70 12
x10425:	jge strncat$20	; 2: 125 37

strncat$9:	; £temporary3933 = source + index
x10427:	mov si, [bp + 8]	; 3: -117 118 8
x10430:	add si, [bp + 12]	; 3: 3 118 12

strncat$10:	; £temporary3932 -> £temporary3933 = *£temporary3933

strncat$11:	; if £temporary3932 -> £temporary3933 == 0 goto 20
x10433:	cmp byte [si], 0	; 3: -128 60 0
x10436:	je strncat$20	; 2: 116 26

strncat$12:	; £temporary3937 = targetLength + index
x10438:	mov ax, [bp + 14]	; 3: -117 70 14
x10441:	add ax, [bp + 12]	; 3: 3 70 12

strncat$13:	; £temporary3939 = target + £temporary3937
x10444:	mov si, [bp + 6]	; 3: -117 118 6
x10447:	add si, ax	; 2: 1 -58

strncat$14:	; £temporary3938 -> £temporary3939 = *£temporary3939

strncat$15:	; £temporary3941 = source + index
x10449:	mov di, [bp + 8]	; 3: -117 126 8
x10452:	add di, [bp + 12]	; 3: 3 126 12

strncat$16:	; £temporary3940 -> £temporary3941 = *£temporary3941

strncat$17:	; £temporary3938 -> £temporary3939 = £temporary3940 -> £temporary3941
x10455:	mov al, [di]	; 2: -118 5
x10457:	mov [si], al	; 2: -120 4

strncat$18:	; ++index
x10459:	inc word [bp + 12]	; 3: -1 70 12

strncat$19:	; goto 7
x10462:	jmp strncat$7	; 2: -21 -46

strncat$20:	; £temporary3942 = targetLength + size
x10464:	mov ax, [bp + 14]	; 3: -117 70 14
x10467:	add ax, [bp + 10]	; 3: 3 70 10

strncat$21:	; £temporary3943 = £temporary3942 - 1
x10470:	dec ax	; 1: 72

strncat$22:	; £temporary3945 = target + £temporary3943
x10471:	mov si, [bp + 6]	; 3: -117 118 6
x10474:	add si, ax	; 2: 1 -58

strncat$23:	; £temporary3944 -> £temporary3945 = *£temporary3945

strncat$24:	; £temporary3944 -> £temporary3945 = 0
x10476:	mov byte [si], 0	; 3: -58 4 0

strncat$25:	; return_value = target
x10479:	mov bx, [bp + 6]	; 3: -117 94 6

strncat$26:	; return
x10482:	mov ax, [bp]	; 3: -117 70 0
x10485:	mov di, [bp + 4]	; 3: -117 126 4
x10488:	mov bp, [bp + 2]	; 3: -117 110 2
x10491:	jmp ax	; 2: -1 -32

strncat$27:	; function end strncat

strcmp:	; index = 0
x10493:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcmp$1:	; £temporary3949 = left + index
x10498:	mov si, [bp + 6]	; 3: -117 118 6
x10501:	add si, [bp + 10]	; 3: 3 118 10

strcmp$2:	; £temporary3948 -> £temporary3949 = *£temporary3949

strcmp$3:	; if £temporary3948 -> £temporary3949 != 0 goto 9
x10504:	cmp byte [si], 0	; 3: -128 60 0
x10507:	jne strcmp$9	; 2: 117 25

strcmp$4:	; £temporary3952 = right + index
x10509:	mov si, [bp + 8]	; 3: -117 118 8
x10512:	add si, [bp + 10]	; 3: 3 118 10

strcmp$5:	; £temporary3951 -> £temporary3952 = *£temporary3952

strcmp$6:	; if £temporary3951 -> £temporary3952 != 0 goto 9
x10515:	cmp byte [si], 0	; 3: -128 60 0
x10518:	jne strcmp$9	; 2: 117 14

strcmp$7:	; return_value = 0
x10520:	mov bx, 0	; 3: -69 0 0

strcmp$8:	; return
x10523:	mov ax, [bp]	; 3: -117 70 0
x10526:	mov di, [bp + 4]	; 3: -117 126 4
x10529:	mov bp, [bp + 2]	; 3: -117 110 2
x10532:	jmp ax	; 2: -1 -32

strcmp$9:	; £temporary3956 = left + index
x10534:	mov si, [bp + 6]	; 3: -117 118 6
x10537:	add si, [bp + 10]	; 3: 3 118 10

strcmp$10:	; £temporary3955 -> £temporary3956 = *£temporary3956

strcmp$11:	; if £temporary3955 -> £temporary3956 != 0 goto 14
x10540:	cmp byte [si], 0	; 3: -128 60 0
x10543:	jne strcmp$14	; 2: 117 14

strcmp$12:	; return_value = -1
x10545:	mov bx, -1	; 3: -69 -1 -1

strcmp$13:	; return
x10548:	mov ax, [bp]	; 3: -117 70 0
x10551:	mov di, [bp + 4]	; 3: -117 126 4
x10554:	mov bp, [bp + 2]	; 3: -117 110 2
x10557:	jmp ax	; 2: -1 -32

strcmp$14:	; £temporary3959 = right + index
x10559:	mov si, [bp + 8]	; 3: -117 118 8
x10562:	add si, [bp + 10]	; 3: 3 118 10

strcmp$15:	; £temporary3958 -> £temporary3959 = *£temporary3959

strcmp$16:	; if £temporary3958 -> £temporary3959 != 0 goto 19
x10565:	cmp byte [si], 0	; 3: -128 60 0
x10568:	jne strcmp$19	; 2: 117 14

strcmp$17:	; return_value = 1
x10570:	mov bx, 1	; 3: -69 1 0

strcmp$18:	; return
x10573:	mov ax, [bp]	; 3: -117 70 0
x10576:	mov di, [bp + 4]	; 3: -117 126 4
x10579:	mov bp, [bp + 2]	; 3: -117 110 2
x10582:	jmp ax	; 2: -1 -32

strcmp$19:	; £temporary3962 = left + index
x10584:	mov si, [bp + 6]	; 3: -117 118 6
x10587:	add si, [bp + 10]	; 3: 3 118 10

strcmp$20:	; £temporary3961 -> £temporary3962 = *£temporary3962

strcmp$21:	; £temporary3964 = right + index
x10590:	mov di, [bp + 8]	; 3: -117 126 8
x10593:	add di, [bp + 10]	; 3: 3 126 10

strcmp$22:	; £temporary3963 -> £temporary3964 = *£temporary3964

strcmp$23:	; if £temporary3961 -> £temporary3962 >= £temporary3963 -> £temporary3964 goto 26
x10596:	mov al, [di]	; 2: -118 5
x10598:	cmp [si], al	; 2: 56 4
x10600:	jge strcmp$26	; 2: 125 14

strcmp$24:	; return_value = -1
x10602:	mov bx, -1	; 3: -69 -1 -1

strcmp$25:	; return
x10605:	mov ax, [bp]	; 3: -117 70 0
x10608:	mov di, [bp + 4]	; 3: -117 126 4
x10611:	mov bp, [bp + 2]	; 3: -117 110 2
x10614:	jmp ax	; 2: -1 -32

strcmp$26:	; £temporary3967 = left + index
x10616:	mov si, [bp + 6]	; 3: -117 118 6
x10619:	add si, [bp + 10]	; 3: 3 118 10

strcmp$27:	; £temporary3966 -> £temporary3967 = *£temporary3967

strcmp$28:	; £temporary3969 = right + index
x10622:	mov di, [bp + 8]	; 3: -117 126 8
x10625:	add di, [bp + 10]	; 3: 3 126 10

strcmp$29:	; £temporary3968 -> £temporary3969 = *£temporary3969

strcmp$30:	; if £temporary3966 -> £temporary3967 <= £temporary3968 -> £temporary3969 goto 33
x10628:	mov al, [di]	; 2: -118 5
x10630:	cmp [si], al	; 2: 56 4
x10632:	jle strcmp$33	; 2: 126 14

strcmp$31:	; return_value = 1
x10634:	mov bx, 1	; 3: -69 1 0

strcmp$32:	; return
x10637:	mov ax, [bp]	; 3: -117 70 0
x10640:	mov di, [bp + 4]	; 3: -117 126 4
x10643:	mov bp, [bp + 2]	; 3: -117 110 2
x10646:	jmp ax	; 2: -1 -32

strcmp$33:	; ++index
x10648:	inc word [bp + 10]	; 3: -1 70 10

strcmp$34:	; goto 1
x10651:	jmp strcmp$1	; 3: -23 100 -1

strcmp$35:	; function end strcmp

strncmp:	; index = 0
x10654:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strncmp$1:	; if index >= size goto 36
x10659:	mov ax, [bp + 10]	; 3: -117 70 10
x10662:	cmp [bp + 12], ax	; 3: 57 70 12
x10665:	jge strncmp$36	; 4: 15 -115 -100 0

strncmp$2:	; £temporary3975 = left + index
x10669:	mov si, [bp + 6]	; 3: -117 118 6
x10672:	add si, [bp + 12]	; 3: 3 118 12

strncmp$3:	; £temporary3974 -> £temporary3975 = *£temporary3975

strncmp$4:	; if £temporary3974 -> £temporary3975 != 0 goto 10
x10675:	cmp byte [si], 0	; 3: -128 60 0
x10678:	jne strncmp$10	; 2: 117 25

strncmp$5:	; £temporary3978 = right + index
x10680:	mov si, [bp + 8]	; 3: -117 118 8
x10683:	add si, [bp + 12]	; 3: 3 118 12

strncmp$6:	; £temporary3977 -> £temporary3978 = *£temporary3978

strncmp$7:	; if £temporary3977 -> £temporary3978 != 0 goto 10
x10686:	cmp byte [si], 0	; 3: -128 60 0
x10689:	jne strncmp$10	; 2: 117 14

strncmp$8:	; return_value = 0
x10691:	mov bx, 0	; 3: -69 0 0

strncmp$9:	; return
x10694:	mov ax, [bp]	; 3: -117 70 0
x10697:	mov di, [bp + 4]	; 3: -117 126 4
x10700:	mov bp, [bp + 2]	; 3: -117 110 2
x10703:	jmp ax	; 2: -1 -32

strncmp$10:	; £temporary3982 = left + index
x10705:	mov si, [bp + 6]	; 3: -117 118 6
x10708:	add si, [bp + 12]	; 3: 3 118 12

strncmp$11:	; £temporary3981 -> £temporary3982 = *£temporary3982

strncmp$12:	; if £temporary3981 -> £temporary3982 != 0 goto 15
x10711:	cmp byte [si], 0	; 3: -128 60 0
x10714:	jne strncmp$15	; 2: 117 14

strncmp$13:	; return_value = -1
x10716:	mov bx, -1	; 3: -69 -1 -1

strncmp$14:	; return
x10719:	mov ax, [bp]	; 3: -117 70 0
x10722:	mov di, [bp + 4]	; 3: -117 126 4
x10725:	mov bp, [bp + 2]	; 3: -117 110 2
x10728:	jmp ax	; 2: -1 -32

strncmp$15:	; £temporary3985 = right + index
x10730:	mov si, [bp + 8]	; 3: -117 118 8
x10733:	add si, [bp + 12]	; 3: 3 118 12

strncmp$16:	; £temporary3984 -> £temporary3985 = *£temporary3985

strncmp$17:	; if £temporary3984 -> £temporary3985 != 0 goto 20
x10736:	cmp byte [si], 0	; 3: -128 60 0
x10739:	jne strncmp$20	; 2: 117 14

strncmp$18:	; return_value = 1
x10741:	mov bx, 1	; 3: -69 1 0

strncmp$19:	; return
x10744:	mov ax, [bp]	; 3: -117 70 0
x10747:	mov di, [bp + 4]	; 3: -117 126 4
x10750:	mov bp, [bp + 2]	; 3: -117 110 2
x10753:	jmp ax	; 2: -1 -32

strncmp$20:	; £temporary3988 = left + index
x10755:	mov si, [bp + 6]	; 3: -117 118 6
x10758:	add si, [bp + 12]	; 3: 3 118 12

strncmp$21:	; £temporary3987 -> £temporary3988 = *£temporary3988

strncmp$22:	; £temporary3990 = right + index
x10761:	mov di, [bp + 8]	; 3: -117 126 8
x10764:	add di, [bp + 12]	; 3: 3 126 12

strncmp$23:	; £temporary3989 -> £temporary3990 = *£temporary3990

strncmp$24:	; if £temporary3987 -> £temporary3988 >= £temporary3989 -> £temporary3990 goto 27
x10767:	mov al, [di]	; 2: -118 5
x10769:	cmp [si], al	; 2: 56 4
x10771:	jge strncmp$27	; 2: 125 14

strncmp$25:	; return_value = -1
x10773:	mov bx, -1	; 3: -69 -1 -1

strncmp$26:	; return
x10776:	mov ax, [bp]	; 3: -117 70 0
x10779:	mov di, [bp + 4]	; 3: -117 126 4
x10782:	mov bp, [bp + 2]	; 3: -117 110 2
x10785:	jmp ax	; 2: -1 -32

strncmp$27:	; £temporary3993 = left + index
x10787:	mov si, [bp + 6]	; 3: -117 118 6
x10790:	add si, [bp + 12]	; 3: 3 118 12

strncmp$28:	; £temporary3992 -> £temporary3993 = *£temporary3993

strncmp$29:	; £temporary3995 = right + index
x10793:	mov di, [bp + 8]	; 3: -117 126 8
x10796:	add di, [bp + 12]	; 3: 3 126 12

strncmp$30:	; £temporary3994 -> £temporary3995 = *£temporary3995

strncmp$31:	; if £temporary3992 -> £temporary3993 <= £temporary3994 -> £temporary3995 goto 34
x10799:	mov al, [di]	; 2: -118 5
x10801:	cmp [si], al	; 2: 56 4
x10803:	jle strncmp$34	; 2: 126 14

strncmp$32:	; return_value = 1
x10805:	mov bx, 1	; 3: -69 1 0

strncmp$33:	; return
x10808:	mov ax, [bp]	; 3: -117 70 0
x10811:	mov di, [bp + 4]	; 3: -117 126 4
x10814:	mov bp, [bp + 2]	; 3: -117 110 2
x10817:	jmp ax	; 2: -1 -32

strncmp$34:	; ++index
x10819:	inc word [bp + 12]	; 3: -1 70 12

strncmp$35:	; goto 1
x10822:	jmp strncmp$1	; 3: -23 90 -1

strncmp$36:	; return_value = 0
x10825:	mov bx, 0	; 3: -69 0 0

strncmp$37:	; return
x10828:	mov ax, [bp]	; 3: -117 70 0
x10831:	mov di, [bp + 4]	; 3: -117 126 4
x10834:	mov bp, [bp + 2]	; 3: -117 110 2
x10837:	jmp ax	; 2: -1 -32

strncmp$38:	; function end strncmp

strrchr:	; result = 0
x10839:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strrchr$1:	; £temporary4008 = int_to_int i (Signed_Int -> Signed_Char)
x10844:	mov ax, [bp + 8]	; 3: -117 70 8
x10847:	cmp ax, 0	; 3: -125 -8 0
x10850:	jge strrchr$2	; 2: 125 4
x10852:	neg ax	; 2: -9 -40
x10854:	neg al	; 2: -10 -40

strrchr$2:	; c = £temporary4008
x10856:	mov [bp + 14], al	; 3: -120 70 14

strrchr$3:	; index = 0
x10859:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strrchr$4:	; £temporary4010 = text + index
x10864:	mov si, [bp + 6]	; 3: -117 118 6
x10867:	add si, [bp + 10]	; 3: 3 118 10

strrchr$5:	; £temporary4009 -> £temporary4010 = *£temporary4010

strrchr$6:	; if £temporary4009 -> £temporary4010 == 0 goto 16
x10870:	cmp byte [si], 0	; 3: -128 60 0
x10873:	je strrchr$16	; 2: 116 27

strrchr$7:	; £temporary4014 = text + index
x10875:	mov si, [bp + 6]	; 3: -117 118 6
x10878:	add si, [bp + 10]	; 3: 3 118 10

strrchr$8:	; £temporary4013 -> £temporary4014 = *£temporary4014

strrchr$9:	; if £temporary4013 -> £temporary4014 != c goto 14
x10881:	mov al, [bp + 14]	; 3: -118 70 14
x10884:	cmp [si], al	; 2: 56 4
x10886:	jne strrchr$14	; 2: 117 9

strrchr$10:	; £temporary4017 = text + index
x10888:	mov si, [bp + 6]	; 3: -117 118 6
x10891:	add si, [bp + 10]	; 3: 3 118 10

strrchr$11:	; £temporary4016 -> £temporary4017 = *£temporary4017

strrchr$12:	; £temporary4018 = &£temporary4016 -> £temporary4017

strrchr$13:	; result = £temporary4018
x10894:	mov [bp + 12], si	; 3: -119 118 12

strrchr$14:	; ++index
x10897:	inc word [bp + 10]	; 3: -1 70 10

strrchr$15:	; goto 4
x10900:	jmp strrchr$4	; 2: -21 -38

strrchr$16:	; return_value = result
x10902:	mov bx, [bp + 12]	; 3: -117 94 12

strrchr$17:	; return
x10905:	mov ax, [bp]	; 3: -117 70 0
x10908:	mov di, [bp + 4]	; 3: -117 126 4
x10911:	mov bp, [bp + 2]	; 3: -117 110 2
x10914:	jmp ax	; 2: -1 -32

strrchr$18:	; function end strrchr

memcpy:	; £temporary4132 = int_to_int target (Pointer -> Pointer)
x10916:	mov ax, [bp + 6]	; 3: -117 70 6

memcpy$1:	; charTarget = £temporary4132
x10919:	mov [bp + 12], ax	; 3: -119 70 12

memcpy$2:	; £temporary4133 = int_to_int source (Pointer -> Pointer)
x10922:	mov ax, [bp + 8]	; 3: -117 70 8

memcpy$3:	; charSource = £temporary4133
x10925:	mov [bp + 14], ax	; 3: -119 70 14

memcpy$4:	; index = 0
x10928:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

memcpy$5:	; if index >= size goto 13
x10933:	mov ax, [bp + 10]	; 3: -117 70 10
x10936:	cmp [bp + 16], ax	; 3: 57 70 16
x10939:	jge memcpy$13	; 2: 125 21

memcpy$6:	; £temporary4137 = charTarget + index
x10941:	mov si, [bp + 12]	; 3: -117 118 12
x10944:	add si, [bp + 16]	; 3: 3 118 16

memcpy$7:	; £temporary4136 -> £temporary4137 = *£temporary4137

memcpy$8:	; £temporary4139 = charSource + index
x10947:	mov di, [bp + 14]	; 3: -117 126 14
x10950:	add di, [bp + 16]	; 3: 3 126 16

memcpy$9:	; £temporary4138 -> £temporary4139 = *£temporary4139

memcpy$10:	; £temporary4136 -> £temporary4137 = £temporary4138 -> £temporary4139
x10953:	mov al, [di]	; 2: -118 5
x10955:	mov [si], al	; 2: -120 4

memcpy$11:	; ++index
x10957:	inc word [bp + 16]	; 3: -1 70 16

memcpy$12:	; goto 5
x10960:	jmp memcpy$5	; 2: -21 -29

memcpy$13:	; £temporary4140 = int_to_int target (Pointer -> Pointer)
x10962:	mov bx, [bp + 6]	; 3: -117 94 6

memcpy$14:	; return_value = £temporary4140

memcpy$15:	; return
x10965:	mov ax, [bp]	; 3: -117 70 0
x10968:	mov di, [bp + 4]	; 3: -117 126 4
x10971:	mov bp, [bp + 2]	; 3: -117 110 2
x10974:	jmp ax	; 2: -1 -32

memcpy$16:	; function end memcpy

memmove:	; £temporary4141 = int_to_int target (Pointer -> Pointer)
x10976:	mov ax, [bp + 6]	; 3: -117 70 6

memmove$1:	; charTarget = £temporary4141
x10979:	mov [bp + 12], ax	; 3: -119 70 12

memmove$2:	; £temporary4142 = int_to_int source (Pointer -> Pointer)
x10982:	mov ax, [bp + 8]	; 3: -117 70 8

memmove$3:	; charSource = £temporary4142
x10985:	mov [bp + 14], ax	; 3: -119 70 14

memmove$4:	; if source >= target goto 14
x10988:	mov ax, [bp + 6]	; 3: -117 70 6
x10991:	cmp [bp + 8], ax	; 3: 57 70 8
x10994:	jge memmove$14	; 2: 125 34

memmove$5:	; index = size - 1
x10996:	mov ax, [bp + 10]	; 3: -117 70 10
x10999:	dec ax	; 1: 72
x11000:	mov [bp + 16], ax	; 3: -119 70 16

memmove$6:	; if index < 0 goto 23
x11003:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x11007:	jl memmove$23	; 2: 124 55

memmove$7:	; £temporary4148 = charTarget + index
x11009:	mov si, [bp + 12]	; 3: -117 118 12
x11012:	add si, [bp + 16]	; 3: 3 118 16

memmove$8:	; £temporary4147 -> £temporary4148 = *£temporary4148

memmove$9:	; £temporary4150 = charSource + index
x11015:	mov di, [bp + 14]	; 3: -117 126 14
x11018:	add di, [bp + 16]	; 3: 3 126 16

memmove$10:	; £temporary4149 -> £temporary4150 = *£temporary4150

memmove$11:	; £temporary4147 -> £temporary4148 = £temporary4149 -> £temporary4150
x11021:	mov al, [di]	; 2: -118 5
x11023:	mov [si], al	; 2: -120 4

memmove$12:	; --index
x11025:	dec word [bp + 16]	; 3: -1 78 16

memmove$13:	; goto 6
x11028:	jmp memmove$6	; 2: -21 -27

memmove$14:	; index = 0
x11030:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

memmove$15:	; if index >= size goto 23
x11035:	mov ax, [bp + 10]	; 3: -117 70 10
x11038:	cmp [bp + 16], ax	; 3: 57 70 16
x11041:	jge memmove$23	; 2: 125 21

memmove$16:	; £temporary4154 = charTarget + index
x11043:	mov si, [bp + 12]	; 3: -117 118 12
x11046:	add si, [bp + 16]	; 3: 3 118 16

memmove$17:	; £temporary4153 -> £temporary4154 = *£temporary4154

memmove$18:	; £temporary4156 = charSource + index
x11049:	mov di, [bp + 14]	; 3: -117 126 14
x11052:	add di, [bp + 16]	; 3: 3 126 16

memmove$19:	; £temporary4155 -> £temporary4156 = *£temporary4156

memmove$20:	; £temporary4153 -> £temporary4154 = £temporary4155 -> £temporary4156
x11055:	mov al, [di]	; 2: -118 5
x11057:	mov [si], al	; 2: -120 4

memmove$21:	; ++index
x11059:	inc word [bp + 16]	; 3: -1 70 16

memmove$22:	; goto 15
x11062:	jmp memmove$15	; 2: -21 -29

memmove$23:	; £temporary4157 = int_to_int target (Pointer -> Pointer)
x11064:	mov bx, [bp + 6]	; 3: -117 94 6

memmove$24:	; return_value = £temporary4157

memmove$25:	; return
x11067:	mov ax, [bp]	; 3: -117 70 0
x11070:	mov di, [bp + 4]	; 3: -117 126 4
x11073:	mov bp, [bp + 2]	; 3: -117 110 2
x11076:	jmp ax	; 2: -1 -32

memmove$26:	; function end memmove

memset:	; £temporary4183 = int_to_int block (Pointer -> Pointer)
x11078:	mov ax, [bp + 6]	; 3: -117 70 6

memset$1:	; charBlock = £temporary4183
x11081:	mov [bp + 12], ax	; 3: -119 70 12

memset$2:	; £temporary4184 = int_to_int i (Signed_Int -> Signed_Char)
x11084:	mov ax, [bp + 8]	; 3: -117 70 8
x11087:	cmp ax, 0	; 3: -125 -8 0
x11090:	jge memset$3	; 2: 125 4
x11092:	neg ax	; 2: -9 -40
x11094:	neg al	; 2: -10 -40

memset$3:	; c = £temporary4184
x11096:	mov [bp + 14], al	; 3: -120 70 14

memset$4:	; index = 0
x11099:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

memset$5:	; if index >= size goto 11
x11104:	mov ax, [bp + 10]	; 3: -117 70 10
x11107:	cmp [bp + 15], ax	; 3: 57 70 15
x11110:	jge memset$11	; 2: 125 16

memset$6:	; £temporary4188 = charBlock + index
x11112:	mov si, [bp + 12]	; 3: -117 118 12
x11115:	add si, [bp + 15]	; 3: 3 118 15

memset$7:	; £temporary4187 -> £temporary4188 = *£temporary4188

memset$8:	; £temporary4187 -> £temporary4188 = c
x11118:	mov al, [bp + 14]	; 3: -118 70 14
x11121:	mov [si], al	; 2: -120 4

memset$9:	; ++index
x11123:	inc word [bp + 15]	; 3: -1 70 15

memset$10:	; goto 5
x11126:	jmp memset$5	; 2: -21 -24

memset$11:	; return_value = block
x11128:	mov bx, [bp + 6]	; 3: -117 94 6

memset$12:	; return
x11131:	mov ax, [bp]	; 3: -117 70 0
x11134:	mov di, [bp + 4]	; 3: -117 126 4
x11137:	mov bp, [bp + 2]	; 3: -117 110 2
x11140:	jmp ax	; 2: -1 -32

memset$13:	; function end memset

memchr:	; £temporary4172 = int_to_int block (Pointer -> Pointer)
x11142:	mov ax, [bp + 6]	; 3: -117 70 6

memchr$1:	; charBlock = £temporary4172
x11145:	mov [bp + 14], ax	; 3: -119 70 14

memchr$2:	; £temporary4173 = int_to_int i (Signed_Int -> Signed_Char)
x11148:	mov ax, [bp + 8]	; 3: -117 70 8
x11151:	cmp ax, 0	; 3: -125 -8 0
x11154:	jge memchr$3	; 2: 125 4
x11156:	neg ax	; 2: -9 -40
x11158:	neg al	; 2: -10 -40

memchr$3:	; c = £temporary4173
x11160:	mov [bp + 16], al	; 3: -120 70 16

memchr$4:	; index = 0
x11163:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

memchr$5:	; if index >= size goto 17
x11168:	mov ax, [bp + 10]	; 3: -117 70 10
x11171:	cmp [bp + 12], ax	; 3: 57 70 12
x11174:	jge memchr$17	; 2: 125 35

memchr$6:	; £temporary4177 = charBlock + index
x11176:	mov si, [bp + 14]	; 3: -117 118 14
x11179:	add si, [bp + 12]	; 3: 3 118 12

memchr$7:	; £temporary4176 -> £temporary4177 = *£temporary4177

memchr$8:	; if £temporary4176 -> £temporary4177 != c goto 15
x11182:	mov al, [bp + 16]	; 3: -118 70 16
x11185:	cmp [si], al	; 2: 56 4
x11187:	jne memchr$15	; 2: 117 17

memchr$9:	; £temporary4180 = charBlock + index
x11189:	mov bx, [bp + 14]	; 3: -117 94 14
x11192:	add bx, [bp + 12]	; 3: 3 94 12

memchr$10:	; £temporary4179 -> £temporary4180 = *£temporary4180

memchr$11:	; £temporary4181 = &£temporary4179 -> £temporary4180

memchr$12:	; £temporary4182 = int_to_int £temporary4181 (Pointer -> Pointer)

memchr$13:	; return_value = £temporary4182

memchr$14:	; return
x11195:	mov ax, [bp]	; 3: -117 70 0
x11198:	mov di, [bp + 4]	; 3: -117 126 4
x11201:	mov bp, [bp + 2]	; 3: -117 110 2
x11204:	jmp ax	; 2: -1 -32

memchr$15:	; ++index
x11206:	inc word [bp + 12]	; 3: -1 70 12

memchr$16:	; goto 5
x11209:	jmp memchr$5	; 2: -21 -43

memchr$17:	; return_value = 0
x11211:	mov bx, 0	; 3: -69 0 0

memchr$18:	; return
x11214:	mov ax, [bp]	; 3: -117 70 0
x11217:	mov di, [bp + 4]	; 3: -117 126 4
x11220:	mov bp, [bp + 2]	; 3: -117 110 2
x11223:	jmp ax	; 2: -1 -32

memchr$19:	; function end memchr

memcmp:	; £temporary4158 = int_to_int left (Pointer -> Pointer)
x11225:	mov ax, [bp + 6]	; 3: -117 70 6

memcmp$1:	; charLeft = £temporary4158
x11228:	mov [bp + 12], ax	; 3: -119 70 12

memcmp$2:	; £temporary4159 = int_to_int right (Pointer -> Pointer)
x11231:	mov ax, [bp + 8]	; 3: -117 70 8

memcmp$3:	; charRight = £temporary4159
x11234:	mov [bp + 14], ax	; 3: -119 70 14

memcmp$4:	; index = 0
x11237:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

memcmp$5:	; if index >= size goto 22
x11242:	mov ax, [bp + 10]	; 3: -117 70 10
x11245:	cmp [bp + 16], ax	; 3: 57 70 16
x11248:	jge memcmp$22	; 2: 125 69

memcmp$6:	; £temporary4163 = charLeft + index
x11250:	mov si, [bp + 12]	; 3: -117 118 12
x11253:	add si, [bp + 16]	; 3: 3 118 16

memcmp$7:	; £temporary4162 -> £temporary4163 = *£temporary4163

memcmp$8:	; £temporary4165 = charRight + index
x11256:	mov di, [bp + 14]	; 3: -117 126 14
x11259:	add di, [bp + 16]	; 3: 3 126 16

memcmp$9:	; £temporary4164 -> £temporary4165 = *£temporary4165

memcmp$10:	; if £temporary4162 -> £temporary4163 >= £temporary4164 -> £temporary4165 goto 13
x11262:	mov al, [di]	; 2: -118 5
x11264:	cmp [si], al	; 2: 56 4
x11266:	jge memcmp$13	; 2: 125 14

memcmp$11:	; return_value = -1
x11268:	mov bx, -1	; 3: -69 -1 -1

memcmp$12:	; return
x11271:	mov ax, [bp]	; 3: -117 70 0
x11274:	mov di, [bp + 4]	; 3: -117 126 4
x11277:	mov bp, [bp + 2]	; 3: -117 110 2
x11280:	jmp ax	; 2: -1 -32

memcmp$13:	; £temporary4168 = charLeft + index
x11282:	mov si, [bp + 12]	; 3: -117 118 12
x11285:	add si, [bp + 16]	; 3: 3 118 16

memcmp$14:	; £temporary4167 -> £temporary4168 = *£temporary4168

memcmp$15:	; £temporary4170 = charRight + index
x11288:	mov di, [bp + 14]	; 3: -117 126 14
x11291:	add di, [bp + 16]	; 3: 3 126 16

memcmp$16:	; £temporary4169 -> £temporary4170 = *£temporary4170

memcmp$17:	; if £temporary4167 -> £temporary4168 <= £temporary4169 -> £temporary4170 goto 20
x11294:	mov al, [di]	; 2: -118 5
x11296:	cmp [si], al	; 2: 56 4
x11298:	jle memcmp$20	; 2: 126 14

memcmp$18:	; return_value = 1
x11300:	mov bx, 1	; 3: -69 1 0

memcmp$19:	; return
x11303:	mov ax, [bp]	; 3: -117 70 0
x11306:	mov di, [bp + 4]	; 3: -117 126 4
x11309:	mov bp, [bp + 2]	; 3: -117 110 2
x11312:	jmp ax	; 2: -1 -32

memcmp$20:	; ++index
x11314:	inc word [bp + 16]	; 3: -1 70 16

memcmp$21:	; goto 5
x11317:	jmp memcmp$5	; 2: -21 -77

memcmp$22:	; return_value = 0
x11319:	mov bx, 0	; 3: -69 0 0

memcmp$23:	; return
x11322:	mov ax, [bp]	; 3: -117 70 0
x11325:	mov di, [bp + 4]	; 3: -117 126 4
x11328:	mov bp, [bp + 2]	; 3: -117 110 2
x11331:	jmp ax	; 2: -1 -32

memcmp$24:	; function end memcmp

strspn:	; index = 0
x11333:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strspn$1:	; £temporary4020 = mainString + index
x11338:	mov si, [bp + 6]	; 3: -117 118 6
x11341:	add si, [bp + 10]	; 3: 3 118 10

strspn$2:	; £temporary4019 -> £temporary4020 = *£temporary4020

strspn$3:	; if £temporary4019 -> £temporary4020 == 0 goto 18
x11344:	cmp byte [si], 0	; 3: -128 60 0
x11347:	je strspn$18	; 2: 116 66

strspn$4:	; call header integral zero 0 stack zero 0

strspn$5:	; parameter charSet, offset 6
x11349:	mov ax, [bp + 8]	; 3: -117 70 8
x11352:	mov [bp + 18], ax	; 3: -119 70 18

strspn$6:	; £temporary4024 = mainString + index
x11355:	mov si, [bp + 6]	; 3: -117 118 6
x11358:	add si, [bp + 10]	; 3: 3 118 10

strspn$7:	; £temporary4023 -> £temporary4024 = *£temporary4024

strspn$8:	; £temporary4025 = int_to_int £temporary4023 -> £temporary4024 (Signed_Char -> Signed_Int)
x11361:	mov al, [si]	; 2: -118 4
x11363:	and ax, 255	; 3: 37 -1 0
x11366:	cmp al, 0	; 2: 60 0
x11368:	jge strspn$9	; 2: 125 4
x11370:	neg al	; 2: -10 -40
x11372:	neg ax	; 2: -9 -40

strspn$9:	; parameter £temporary4025, offset 8
x11374:	mov [bp + 20], ax	; 3: -119 70 20

strspn$10:	; call function noellipse-noellipse strchr
x11377:	mov word [bp + 12], strspn$11	; 5: -57 70 12 127 44
x11382:	mov [bp + 14], bp	; 3: -119 110 14
x11385:	add bp, 12	; 3: -125 -59 12
x11388:	jmp strchr	; 3: -23 127 -15

strspn$11:	; post call

strspn$12:	; £temporary4026 = return_value

strspn$13:	; if £temporary4026 != 0 goto 16
x11391:	cmp bx, 0	; 3: -125 -5 0
x11394:	jne strspn$16	; 2: 117 14

strspn$14:	; return_value = index
x11396:	mov bx, [bp + 10]	; 3: -117 94 10

strspn$15:	; return
x11399:	mov ax, [bp]	; 3: -117 70 0
x11402:	mov di, [bp + 4]	; 3: -117 126 4
x11405:	mov bp, [bp + 2]	; 3: -117 110 2
x11408:	jmp ax	; 2: -1 -32

strspn$16:	; ++index
x11410:	inc word [bp + 10]	; 3: -1 70 10

strspn$17:	; goto 1
x11413:	jmp strspn$1	; 2: -21 -77

strspn$18:	; return_value = -1
x11415:	mov bx, -1	; 3: -69 -1 -1

strspn$19:	; return
x11418:	mov ax, [bp]	; 3: -117 70 0
x11421:	mov di, [bp + 4]	; 3: -117 126 4
x11424:	mov bp, [bp + 2]	; 3: -117 110 2
x11427:	jmp ax	; 2: -1 -32

strspn$20:	; function end strspn

strcspn:	; index = 0
x11429:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcspn$1:	; £temporary4031 = mainString + index
x11434:	mov si, [bp + 6]	; 3: -117 118 6
x11437:	add si, [bp + 10]	; 3: 3 118 10

strcspn$2:	; £temporary4030 -> £temporary4031 = *£temporary4031

strcspn$3:	; if £temporary4030 -> £temporary4031 == 0 goto 18
x11440:	cmp byte [si], 0	; 3: -128 60 0
x11443:	je strcspn$18	; 2: 116 66

strcspn$4:	; call header integral zero 0 stack zero 0

strcspn$5:	; parameter charSet, offset 6
x11445:	mov ax, [bp + 8]	; 3: -117 70 8
x11448:	mov [bp + 18], ax	; 3: -119 70 18

strcspn$6:	; £temporary4035 = mainString + index
x11451:	mov si, [bp + 6]	; 3: -117 118 6
x11454:	add si, [bp + 10]	; 3: 3 118 10

strcspn$7:	; £temporary4034 -> £temporary4035 = *£temporary4035

strcspn$8:	; £temporary4036 = int_to_int £temporary4034 -> £temporary4035 (Signed_Char -> Signed_Int)
x11457:	mov al, [si]	; 2: -118 4
x11459:	and ax, 255	; 3: 37 -1 0
x11462:	cmp al, 0	; 2: 60 0
x11464:	jge strcspn$9	; 2: 125 4
x11466:	neg al	; 2: -10 -40
x11468:	neg ax	; 2: -9 -40

strcspn$9:	; parameter £temporary4036, offset 8
x11470:	mov [bp + 20], ax	; 3: -119 70 20

strcspn$10:	; call function noellipse-noellipse strchr
x11473:	mov word [bp + 12], strcspn$11	; 5: -57 70 12 -33 44
x11478:	mov [bp + 14], bp	; 3: -119 110 14
x11481:	add bp, 12	; 3: -125 -59 12
x11484:	jmp strchr	; 3: -23 31 -15

strcspn$11:	; post call

strcspn$12:	; £temporary4037 = return_value

strcspn$13:	; if £temporary4037 == 0 goto 16
x11487:	cmp bx, 0	; 3: -125 -5 0
x11490:	je strcspn$16	; 2: 116 14

strcspn$14:	; return_value = index
x11492:	mov bx, [bp + 10]	; 3: -117 94 10

strcspn$15:	; return
x11495:	mov ax, [bp]	; 3: -117 70 0
x11498:	mov di, [bp + 4]	; 3: -117 126 4
x11501:	mov bp, [bp + 2]	; 3: -117 110 2
x11504:	jmp ax	; 2: -1 -32

strcspn$16:	; ++index
x11506:	inc word [bp + 10]	; 3: -1 70 10

strcspn$17:	; goto 1
x11509:	jmp strcspn$1	; 2: -21 -77

strcspn$18:	; return_value = -1
x11511:	mov bx, -1	; 3: -69 -1 -1

strcspn$19:	; return
x11514:	mov ax, [bp]	; 3: -117 70 0
x11517:	mov di, [bp + 4]	; 3: -117 126 4
x11520:	mov bp, [bp + 2]	; 3: -117 110 2
x11523:	jmp ax	; 2: -1 -32

strcspn$20:	; function end strcspn

strerror:	; call header integral zero 0 stack zero 0

strerror$1:	; call function noellipse-noellipse localeconv
x11525:	mov word [bp + 8], strerror$2	; 5: -57 70 8 19 45
x11530:	mov [bp + 10], bp	; 3: -119 110 10
x11533:	add bp, 8	; 3: -125 -59 8
x11536:	jmp localeconv	; 3: -23 -87 -19

strerror$2:	; post call

strerror$3:	; £temporary4071 = return_value

strerror$4:	; localeConvPtr = £temporary4071
x11539:	mov [bp + 8], bx	; 3: -119 94 8

strerror$5:	; if localeConvPtr == 0 goto 9
x11542:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11546:	je strerror$9	; 2: 116 8

strerror$6:	; £temporary4073 -> localeConvPtr = *localeConvPtr, offset 16
x11548:	mov si, [bp + 8]	; 3: -117 118 8

strerror$7:	; £temporary4077 = £temporary4073 -> localeConvPtr
x11551:	mov ax, [si + 16]	; 3: -117 68 16

strerror$8:	; goto 10
x11554:	jmp strerror$10	; 2: -21 3

strerror$9:	; £temporary4077 = 0
x11556:	mov ax, 0	; 3: -72 0 0

strerror$10:	; messageList = £temporary4077
x11559:	mov [bp + 10], ax	; 3: -119 70 10

strerror$11:	; if messageList == 0 goto 14
x11562:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x11566:	je strerror$14	; 2: 116 5

strerror$12:	; £temporary4082 = messageList
x11568:	mov ax, [bp + 10]	; 3: -117 70 10

strerror$13:	; goto 15
x11571:	jmp strerror$15	; 2: -21 3

strerror$14:	; £temporary4082 = enMessageList
x11573:	mov ax, enMessageList	; 3: -72 84 28

strerror$15:	; messageList = £temporary4082
x11576:	mov [bp + 10], ax	; 3: -119 70 10

strerror$16:	; £temporary4084 = errno * 2
x11579:	mov ax, [bp + 6]	; 3: -117 70 6
x11582:	xor dx, dx	; 2: 49 -46
x11584:	mul word [int2$2#]	; 4: -9 38 86 45

strerror$17:	; £temporary4085 = messageList + £temporary4084
x11588:	mov si, [bp + 10]	; 3: -117 118 10
x11591:	add si, ax	; 2: 1 -58

strerror$18:	; £temporary4083 -> £temporary4085 = *£temporary4085

strerror$19:	; return_value = £temporary4083 -> £temporary4085
x11593:	mov bx, [si]	; 2: -117 28

strerror$20:	; return
x11595:	mov ax, [bp]	; 3: -117 70 0
x11598:	mov di, [bp + 4]	; 3: -117 126 4
x11601:	mov bp, [bp + 2]	; 3: -117 110 2
x11604:	jmp ax	; 2: -1 -32

strerror$21:	; function end strerror

int2$2#:
x11606:	dw 2	; 2: 2 0

strtok:	; if string == 0 goto 37
x11608:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x11612:	je strtok$37	; 4: 15 -124 -106 0

strtok$1:	; £temporary4087 -> string = *string
x11616:	mov si, [bp + 6]	; 3: -117 118 6

strtok$2:	; if £temporary4087 -> string != 0 goto 5
x11619:	cmp byte [si], 0	; 3: -128 60 0
x11622:	jne strtok$5	; 2: 117 14

strtok$3:	; return_value = 0
x11624:	mov bx, 0	; 3: -69 0 0

strtok$4:	; return
x11627:	mov ax, [bp]	; 3: -117 70 0
x11630:	mov di, [bp + 4]	; 3: -117 126 4
x11633:	mov bp, [bp + 2]	; 3: -117 110 2
x11636:	jmp ax	; 2: -1 -32

strtok$5:	; index = 0
x11638:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strtok$6:	; £temporary4090 = string + index
x11643:	mov si, [bp + 6]	; 3: -117 118 6
x11646:	add si, [bp + 10]	; 3: 3 118 10

strtok$7:	; £temporary4089 -> £temporary4090 = *£temporary4090

strtok$8:	; if £temporary4089 -> £temporary4090 == 0 goto 31
x11649:	cmp byte [si], 0	; 3: -128 60 0
x11652:	je strtok$31	; 2: 116 88

strtok$9:	; call header integral zero 0 stack zero 0

strtok$10:	; parameter charSet, offset 6
x11654:	mov ax, [bp + 8]	; 3: -117 70 8
x11657:	mov [bp + 20], ax	; 3: -119 70 20

strtok$11:	; £temporary4094 = string + index
x11660:	mov si, [bp + 6]	; 3: -117 118 6
x11663:	add si, [bp + 10]	; 3: 3 118 10

strtok$12:	; £temporary4093 -> £temporary4094 = *£temporary4094

strtok$13:	; £temporary4095 = int_to_int £temporary4093 -> £temporary4094 (Signed_Char -> Signed_Int)
x11666:	mov al, [si]	; 2: -118 4
x11668:	and ax, 255	; 3: 37 -1 0
x11671:	cmp al, 0	; 2: 60 0
x11673:	jge strtok$14	; 2: 125 4
x11675:	neg al	; 2: -10 -40
x11677:	neg ax	; 2: -9 -40

strtok$14:	; parameter £temporary4095, offset 8
x11679:	mov [bp + 22], ax	; 3: -119 70 22

strtok$15:	; call function noellipse-noellipse strchr
x11682:	mov word [bp + 14], strtok$16	; 5: -57 70 14 -80 45
x11687:	mov [bp + 16], bp	; 3: -119 110 16
x11690:	add bp, 14	; 3: -125 -59 14
x11693:	jmp strchr	; 3: -23 78 -16

strtok$16:	; post call

strtok$17:	; £temporary4096 = return_value

strtok$18:	; if £temporary4096 == 0 goto 29
x11696:	cmp bx, 0	; 3: -125 -5 0
x11699:	je strtok$29	; 2: 116 36

strtok$19:	; £temporary4099 = string + index
x11701:	mov si, [bp + 6]	; 3: -117 118 6
x11704:	add si, [bp + 10]	; 3: 3 118 10

strtok$20:	; £temporary4098 -> £temporary4099 = *£temporary4099

strtok$21:	; £temporary4098 -> £temporary4099 = 0
x11707:	mov byte [si], 0	; 3: -58 4 0

strtok$22:	; £temporary4100 = index + 1
x11710:	mov ax, [bp + 10]	; 3: -117 70 10
x11713:	inc ax	; 1: 64

strtok$23:	; £temporary4102 = string + £temporary4100
x11714:	mov si, [bp + 6]	; 3: -117 118 6
x11717:	add si, ax	; 2: 1 -58

strtok$24:	; £temporary4101 -> £temporary4102 = *£temporary4102

strtok$25:	; £temporary4103 = &£temporary4101 -> £temporary4102

strtok$26:	; token = £temporary4103
x11719:	mov [token], si	; 4: -119 54 -77 46

strtok$27:	; return_value = string
x11723:	mov bx, [bp + 6]	; 3: -117 94 6

strtok$28:	; return
x11726:	mov ax, [bp]	; 3: -117 70 0
x11729:	mov di, [bp + 4]	; 3: -117 126 4
x11732:	mov bp, [bp + 2]	; 3: -117 110 2
x11735:	jmp ax	; 2: -1 -32

strtok$29:	; ++index
x11737:	inc word [bp + 10]	; 3: -1 70 10

strtok$30:	; goto 6
x11740:	jmp strtok$6	; 2: -21 -99

strtok$31:	; £temporary4105 = string + index
x11742:	mov si, [bp + 6]	; 3: -117 118 6
x11745:	add si, [bp + 10]	; 3: 3 118 10

strtok$32:	; £temporary4104 -> £temporary4105 = *£temporary4105

strtok$33:	; £temporary4106 = &£temporary4104 -> £temporary4105

strtok$34:	; token = £temporary4106
x11748:	mov [token], si	; 4: -119 54 -77 46

strtok$35:	; return_value = string
x11752:	mov bx, [bp + 6]	; 3: -117 94 6

strtok$36:	; return
x11755:	mov ax, [bp]	; 3: -117 70 0
x11758:	mov di, [bp + 4]	; 3: -117 126 4
x11761:	mov bp, [bp + 2]	; 3: -117 110 2
x11764:	jmp ax	; 2: -1 -32

strtok$37:	; if token != 0 goto 40
x11766:	cmp word [token], 0	; 5: -125 62 -77 46 0
x11771:	jne strtok$40	; 2: 117 14

strtok$38:	; return_value = 0
x11773:	mov bx, 0	; 3: -69 0 0

strtok$39:	; return
x11776:	mov ax, [bp]	; 3: -117 70 0
x11779:	mov di, [bp + 4]	; 3: -117 126 4
x11782:	mov bp, [bp + 2]	; 3: -117 110 2
x11785:	jmp ax	; 2: -1 -32

strtok$40:	; if (token,0) != 0 goto 43
x11787:	mov si, [token]	; 4: -117 54 -77 46
x11791:	cmp byte [si], 0	; 3: -128 60 0
x11794:	jne strtok$43	; 2: 117 14

strtok$41:	; return_value = 0
x11796:	mov bx, 0	; 3: -69 0 0

strtok$42:	; return
x11799:	mov ax, [bp]	; 3: -117 70 0
x11802:	mov di, [bp + 4]	; 3: -117 126 4
x11805:	mov bp, [bp + 2]	; 3: -117 110 2
x11808:	jmp ax	; 2: -1 -32

strtok$43:	; index = 0
x11810:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strtok$44:	; £temporary4111 = token + index
x11815:	mov si, [token]	; 4: -117 54 -77 46
x11819:	add si, [bp + 10]	; 3: 3 118 10

strtok$45:	; £temporary4110 -> £temporary4111 = *£temporary4111

strtok$46:	; if £temporary4110 -> £temporary4111 == 0 goto 70
x11822:	cmp byte [si], 0	; 3: -128 60 0
x11825:	je strtok$70	; 2: 116 97

strtok$47:	; call header integral zero 0 stack zero 0

strtok$48:	; parameter charSet, offset 6
x11827:	mov ax, [bp + 8]	; 3: -117 70 8
x11830:	mov [bp + 20], ax	; 3: -119 70 20

strtok$49:	; £temporary4115 = token + index
x11833:	mov si, [token]	; 4: -117 54 -77 46
x11837:	add si, [bp + 10]	; 3: 3 118 10

strtok$50:	; £temporary4114 -> £temporary4115 = *£temporary4115

strtok$51:	; £temporary4116 = int_to_int £temporary4114 -> £temporary4115 (Signed_Char -> Signed_Int)
x11840:	mov al, [si]	; 2: -118 4
x11842:	and ax, 255	; 3: 37 -1 0
x11845:	cmp al, 0	; 2: 60 0
x11847:	jge strtok$52	; 2: 125 4
x11849:	neg al	; 2: -10 -40
x11851:	neg ax	; 2: -9 -40

strtok$52:	; parameter £temporary4116, offset 8
x11853:	mov [bp + 22], ax	; 3: -119 70 22

strtok$53:	; call function noellipse-noellipse strchr
x11856:	mov word [bp + 14], strtok$54	; 5: -57 70 14 94 46
x11861:	mov [bp + 16], bp	; 3: -119 110 16
x11864:	add bp, 14	; 3: -125 -59 14
x11867:	jmp strchr	; 3: -23 -96 -17

strtok$54:	; post call

strtok$55:	; £temporary4117 = return_value

strtok$56:	; if £temporary4117 == 0 goto 68
x11870:	cmp bx, 0	; 3: -125 -5 0
x11873:	je strtok$68	; 2: 116 44

strtok$57:	; tokenStart2 = token
x11875:	mov ax, [token]	; 3: -95 -77 46
x11878:	mov [bp + 14], ax	; 3: -119 70 14

strtok$58:	; £temporary4120 = token + index
x11881:	mov si, [token]	; 4: -117 54 -77 46
x11885:	add si, [bp + 10]	; 3: 3 118 10

strtok$59:	; £temporary4119 -> £temporary4120 = *£temporary4120

strtok$60:	; £temporary4119 -> £temporary4120 = 0
x11888:	mov byte [si], 0	; 3: -58 4 0

strtok$61:	; £temporary4121 = index + 1
x11891:	mov ax, [bp + 10]	; 3: -117 70 10
x11894:	inc ax	; 1: 64

strtok$62:	; £temporary4123 = token + £temporary4121
x11895:	mov si, [token]	; 4: -117 54 -77 46
x11899:	add si, ax	; 2: 1 -58

strtok$63:	; £temporary4122 -> £temporary4123 = *£temporary4123

strtok$64:	; £temporary4124 = &£temporary4122 -> £temporary4123

strtok$65:	; token = £temporary4124
x11901:	mov [token], si	; 4: -119 54 -77 46

strtok$66:	; return_value = tokenStart2
x11905:	mov bx, [bp + 14]	; 3: -117 94 14

strtok$67:	; return
x11908:	mov ax, [bp]	; 3: -117 70 0
x11911:	mov di, [bp + 4]	; 3: -117 126 4
x11914:	mov bp, [bp + 2]	; 3: -117 110 2
x11917:	jmp ax	; 2: -1 -32

strtok$68:	; ++index
x11919:	inc word [bp + 10]	; 3: -1 70 10

strtok$69:	; goto 44
x11922:	jmp strtok$44	; 2: -21 -109

strtok$70:	; tokenStart = token
x11924:	mov ax, [token]	; 3: -95 -77 46
x11927:	mov [bp + 12], ax	; 3: -119 70 12

strtok$71:	; £temporary4126 = token + index
x11930:	mov si, [token]	; 4: -117 54 -77 46
x11934:	add si, [bp + 10]	; 3: 3 118 10

strtok$72:	; £temporary4125 -> £temporary4126 = *£temporary4126

strtok$73:	; £temporary4127 = &£temporary4125 -> £temporary4126

strtok$74:	; token = £temporary4127
x11937:	mov [token], si	; 4: -119 54 -77 46

strtok$75:	; return_value = tokenStart
x11941:	mov bx, [bp + 12]	; 3: -117 94 12

strtok$76:	; return
x11944:	mov ax, [bp]	; 3: -117 70 0
x11947:	mov di, [bp + 4]	; 3: -117 126 4
x11950:	mov bp, [bp + 2]	; 3: -117 110 2
x11953:	jmp ax	; 2: -1 -32

strtok$77:	; function end strtok

token:
x11955:	dw 0	; 2: 0 0

$StackTop:
x11957:
