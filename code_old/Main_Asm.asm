	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 -83 46
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 -83 46 0 0

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

string_test$8:	; £temporary4495 = return_value

string_test$9:	; parameter £temporary4495, offset 10
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
x418:	jmp strcpy	; 3: -23 -1 37

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
x457:	jmp strncpy	; 3: -23 20 38

string_test$22:	; post call

string_test$23:	; £temporary4499 -> u = *u, offset 5
x460:	mov si, bp	; 2: -119 -18
x462:	add si, 110	; 3: -125 -58 110

string_test$24:	; £temporary4499 -> u = 0
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
x544:	jmp strcat	; 3: -23 14 38

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

string_test$40:	; £temporary4502 = return_value

string_test$41:	; i = £temporary4502
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
x611:	jmp strncat	; 3: -23 40 38

string_test$47:	; post call

string_test$48:	; £temporary4504 = i + 2
x614:	mov ax, [bp + 6]	; 3: -117 70 6
x617:	add ax, 2	; 3: -125 -64 2

string_test$49:	; £temporary4506 = u + £temporary4504
x620:	mov si, bp	; 2: -119 -18
x622:	add si, 110	; 3: -125 -58 110
x625:	add si, ax	; 2: 1 -58

string_test$50:	; £temporary4505 -> £temporary4506 = *£temporary4506

string_test$51:	; £temporary4505 -> £temporary4506 = 0
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
x712:	jmp strcmp	; 3: -23 42 38

string_test$64:	; post call

string_test$65:	; £temporary4508 = return_value

string_test$66:	; parameter £temporary4508, offset 8
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
x783:	jmp strncmp	; 3: -23 -124 38

string_test$76:	; post call

string_test$77:	; £temporary4510 = return_value

string_test$78:	; parameter £temporary4510, offset 8
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
x839:	jmp strchr	; 3: -23 -84 26

string_test$85:	; post call

string_test$86:	; £temporary4512 = return_value

string_test$87:	; p = £temporary4512
x842:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$88:	; call header integral zero 0 stack zero 0

string_test$89:	; parameter string_strchr28s2C2027l2729203D2025i0A#, offset 6
x846:	mov word [bp + 218], string_strchr28s2C2027l2729203D2025i0A#	; 6: -57 -122 -38 0 -67 7

string_test$90:	; if p == 0 goto 93
x852:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x857:	je string_test$93	; 2: 116 9

string_test$91:	; £temporary4518 = p - s
x859:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x863:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$92:	; goto 94
x866:	jmp string_test$94	; 2: -21 3

string_test$93:	; £temporary4518 = -1
x868:	mov ax, -1	; 3: -72 -1 -1

string_test$94:	; parameter £temporary4518, offset 8
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
x924:	jmp strrchr	; 3: -23 -80 38

string_test$101:	; post call

string_test$102:	; £temporary4520 = return_value

string_test$103:	; p = £temporary4520
x927:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$104:	; call header integral zero 0 stack zero 0

string_test$105:	; parameter string_strrchr28s2C2027l2729203D2025i0A#, offset 6
x931:	mov word [bp + 218], string_strrchr28s2C2027l2729203D2025i0A#	; 6: -57 -122 -38 0 -46 7

string_test$106:	; if p == 0 goto 109
x937:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x942:	je string_test$109	; 2: 116 9

string_test$107:	; £temporary4526 = p - s
x944:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x948:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$108:	; goto 110
x951:	jmp string_test$110	; 2: -21 3

string_test$109:	; £temporary4526 = -1
x953:	mov ax, -1	; 3: -72 -1 -1

string_test$110:	; parameter £temporary4526, offset 8
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
x1009:	jmp strchr	; 3: -23 2 26

string_test$117:	; post call

string_test$118:	; £temporary4528 = return_value

string_test$119:	; p = £temporary4528
x1012:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$120:	; call header integral zero 0 stack zero 0

string_test$121:	; parameter string_strchr28s2C2027x2729203D2025i0A#, offset 6
x1016:	mov word [bp + 218], string_strchr28s2C2027x2729203D2025i0A#	; 6: -57 -122 -38 0 -24 7

string_test$122:	; if p == 0 goto 125
x1022:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x1027:	je string_test$125	; 2: 116 9

string_test$123:	; £temporary4534 = p - s
x1029:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x1033:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$124:	; goto 126
x1036:	jmp string_test$126	; 2: -21 3

string_test$125:	; £temporary4534 = -1
x1038:	mov ax, -1	; 3: -72 -1 -1

string_test$126:	; parameter £temporary4534, offset 8
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
x1094:	jmp strrchr	; 3: -23 6 38

string_test$133:	; post call

string_test$134:	; £temporary4536 = return_value

string_test$135:	; p = £temporary4536
x1097:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$136:	; call header integral zero 0 stack zero 0

string_test$137:	; parameter string_strrchr28s2C2027x2729203D2025i0A#, offset 6
x1101:	mov word [bp + 218], string_strrchr28s2C2027x2729203D2025i0A#	; 6: -57 -122 -38 0 -3 7

string_test$138:	; if p == 0 goto 141
x1107:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x1112:	je string_test$141	; 2: 116 9

string_test$139:	; £temporary4542 = p - s
x1114:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x1118:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$140:	; goto 142
x1121:	jmp string_test$142	; 2: -21 3

string_test$141:	; £temporary4542 = -1
x1123:	mov ax, -1	; 3: -72 -1 -1

string_test$142:	; parameter £temporary4542, offset 8
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
x1185:	jmp memcpy	; 3: -23 -8 37

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
x1223:	jmp memmove	; 3: -23 14 38

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
x1261:	jmp memset	; 3: -23 78 38

string_test$162:	; post call

string_test$163:	; £temporary4547 -> u = *u, offset 19
x1264:	mov si, bp	; 2: -119 -18
x1266:	add si, 110	; 3: -125 -58 110

string_test$164:	; £temporary4547 -> u = 0
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
x1359:	jmp memchr	; 3: -23 44 38

string_test$177:	; post call

string_test$178:	; £temporary4549 = return_value

string_test$179:	; p = £temporary4549
x1362:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$180:	; call header integral zero 0 stack zero 0

string_test$181:	; parameter string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#, offset 6
x1366:	mov word [bp + 218], string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#	; 6: -57 -122 -38 0 49 8

string_test$182:	; if p == 0 goto 185
x1372:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x1377:	je string_test$185	; 2: 116 9

string_test$183:	; £temporary4555 = p - s
x1379:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x1383:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$184:	; goto 186
x1386:	jmp string_test$186	; 2: -21 3

string_test$185:	; £temporary4555 = -1
x1388:	mov ax, -1	; 3: -72 -1 -1

string_test$186:	; parameter £temporary4555, offset 8
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
x1450:	jmp memchr	; 3: -23 -47 37

string_test$194:	; post call

string_test$195:	; £temporary4557 = return_value

string_test$196:	; p = £temporary4557
x1453:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$197:	; call header integral zero 0 stack zero 0

string_test$198:	; parameter string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#, offset 6
x1457:	mov word [bp + 218], string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#	; 6: -57 -122 -38 0 91 8

string_test$199:	; if p == 0 goto 202
x1463:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x1468:	je string_test$202	; 2: 116 9

string_test$200:	; £temporary4563 = p - s
x1470:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x1474:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$201:	; goto 203
x1477:	jmp string_test$203	; 2: -21 3

string_test$202:	; £temporary4563 = -1
x1479:	mov ax, -1	; 3: -72 -1 -1

string_test$203:	; parameter £temporary4563, offset 8
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
x1550:	jmp memcmp	; 3: -23 -64 37

string_test$213:	; post call

string_test$214:	; £temporary4565 = return_value

string_test$215:	; parameter £temporary4565, offset 8
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
x1612:	jmp strspn	; 3: -23 -18 37

string_test$224:	; post call

string_test$225:	; £temporary4567 = return_value

string_test$226:	; parameter £temporary4567, offset 8
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
x1674:	jmp strcspn	; 3: -23 16 38

string_test$235:	; post call

string_test$236:	; £temporary4569 = return_value

string_test$237:	; parameter £temporary4569, offset 8
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
x1730:	jmp strerror	; 3: -23 56 38

string_test$245:	; post call

string_test$246:	; £temporary4571 = return_value

string_test$247:	; parameter £temporary4571, offset 8
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
x1786:	jmp strtok	; 3: -23 83 38

string_test$254:	; post call

string_test$255:	; £temporary4573 = return_value

string_test$256:	; p = £temporary4573
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
x1862:	jmp strtok	; 3: -23 7 38

string_test$267:	; post call

string_test$268:	; £temporary4576 = return_value

string_test$269:	; p = £temporary4576
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

strlen$1:	; £temporary4071 = string + index
x2343:	mov si, [bp + 6]	; 3: -117 118 6
x2346:	add si, [bp + 8]	; 3: 3 118 8

strlen$2:	; £temporary4070 -> £temporary4071 = *£temporary4071

strlen$3:	; if £temporary4070 -> £temporary4071 == 0 goto 6
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

printf:	; £temporary2379 = &format
x2373:	mov si, bp	; 2: -119 -18
x2375:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2380 = int_to_int £temporary2379 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2380 + 2
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

printf$8:	; £temporary2382 = return_value

printf$9:	; return_value = £temporary2382

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

vprintf$6:	; £temporary2386 = return_value

vprintf$7:	; return_value = £temporary2386

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

vfprintf$1:	; £temporary2398 = int_to_int outStream (Pointer -> Pointer)
x3057:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2398
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

vfprintf$8:	; £temporary2399 = return_value

vfprintf$9:	; return_value = £temporary2399

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
x3174:	mov word [g_outChars], 0	; 6: -57 6 122 17 0 0

printFormat$15:	; index = 0
x3180:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2233 = format + index
x3185:	mov si, [bp + 6]	; 3: -117 118 6
x3188:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2232 -> £temporary2233 = *£temporary2233

printFormat$18:	; if £temporary2232 -> £temporary2233 == 0 goto 285
x3191:	cmp byte [si], 0	; 3: -128 60 0
x3194:	je printFormat$285	; 4: 15 -124 -42 4

printFormat$19:	; £temporary2237 = format + index
x3198:	mov si, [bp + 6]	; 3: -117 118 6
x3201:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2236 -> £temporary2237 = *£temporary2237

printFormat$21:	; c = £temporary2236 -> £temporary2237
x3204:	mov al, [si]	; 2: -118 4
x3206:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 263
x3209:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x3213:	je printFormat$263	; 4: 15 -124 91 4

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

printFormat$51:	; goto 239
x3366:	jmp printFormat$239	; 3: -23 78 3

printFormat$52:	; plus = 1
x3369:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 283
x3374:	jmp printFormat$283	; 3: -23 29 4

printFormat$54:	; minus = 1
x3377:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 283
x3382:	jmp printFormat$283	; 3: -23 21 4

printFormat$56:	; space = 1
x3385:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 283
x3390:	jmp printFormat$283	; 3: -23 13 4

printFormat$58:	; zero = 1
x3393:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 283
x3398:	jmp printFormat$283	; 3: -23 5 4

printFormat$60:	; grid = 1
x3401:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 283
x3406:	jmp printFormat$283	; 3: -23 -3 3

printFormat$62:	; period = 1
x3409:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 283
x3414:	jmp printFormat$283	; 3: -23 -11 3

printFormat$64:	; if period != 0 goto 67
x3417:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x3421:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x3423:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 283
x3428:	jmp printFormat$283	; 3: -23 -25 3

printFormat$67:	; precision = -1
x3431:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 283
x3436:	jmp printFormat$283	; 3: -23 -33 3

printFormat$69:	; shortInt = 1
x3439:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 283
x3444:	jmp printFormat$283	; 3: -23 -41 3

printFormat$71:	; longInt = 1
x3447:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 283
x3452:	jmp printFormat$283	; 3: -23 -49 3

printFormat$73:	; longDouble = 1
x3455:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 283
x3460:	jmp printFormat$283	; 3: -23 -57 3

printFormat$75:	; if minus == 0 goto 107
x3463:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3467:	je printFormat$107	; 4: 15 -124 -116 0

printFormat$76:	; startChars = g_outChars
x3471:	mov ax, [g_outChars]	; 3: -95 122 17
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
x3563:	jmp printArgument	; 3: -23 -112 3

printFormat$95:	; post call

printFormat$96:	; £temporary2244 = return_value

printFormat$97:	; arg_list = £temporary2244
x3566:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; field = g_outChars - startChars
x3569:	mov ax, [g_outChars]	; 3: -95 122 17
x3572:	sub ax, [bp + 41]	; 3: 43 70 41
x3575:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$99:	; £temporary2246 = field
x3578:	mov ax, [bp + 43]	; 3: -117 70 43

printFormat$100:	; ++field
x3581:	inc word [bp + 43]	; 3: -1 70 43

printFormat$101:	; if £temporary2246 >= width goto 237
x3584:	cmp ax, [bp + 12]	; 3: 59 70 12
x3587:	jge printFormat$237	; 4: 15 -115 104 2

printFormat$102:	; call header integral zero 0 stack zero 0

printFormat$103:	; parameter 32, offset 6
x3591:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$104:	; call function noellipse-noellipse printChar
x3595:	mov word [bp + 45], printFormat$105	; 5: -57 70 45 25 14
x3600:	mov [bp + 47], bp	; 3: -119 110 47
x3603:	add bp, 45	; 3: -125 -59 45
x3606:	jmp printChar	; 3: -23 120 10

printFormat$105:	; post call

printFormat$106:	; goto 99
x3609:	jmp printFormat$99	; 2: -21 -33

printFormat$107:	; if zero == 0 goto 184
x3611:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x3615:	je printFormat$184	; 4: 15 -124 84 1

printFormat$108:	; startChars = g_outChars
x3619:	mov ax, [g_outChars]	; 3: -95 122 17
x3622:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$109:	; oldOutStatus = g_outStatus
x3625:	mov ax, [g_outStatus]	; 3: -95 28 12
x3628:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$110:	; negative = 0
x3631:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$111:	; g_outStatus = 2
x3636:	mov word [g_outStatus], 2	; 6: -57 6 28 12 2 0

printFormat$112:	; call header integral zero 0 stack zero 0

printFormat$113:	; £temporary2250 = format + index
x3642:	mov si, [bp + 6]	; 3: -117 118 6
x3645:	add si, [bp + 10]	; 3: 3 118 10

printFormat$114:	; £temporary2249 -> £temporary2250 = *£temporary2250

printFormat$115:	; £temporary2251 = &£temporary2249 -> £temporary2250

printFormat$116:	; parameter £temporary2251, offset 6
x3648:	mov [bp + 53], si	; 3: -119 118 53

printFormat$117:	; parameter arg_list, offset 8
x3651:	mov ax, [bp + 8]	; 3: -117 70 8
x3654:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$118:	; parameter 0, offset 10
x3657:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$119:	; parameter 0, offset 12
x3662:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$120:	; parameter grid, offset 14
x3667:	mov ax, [bp + 26]	; 3: -117 70 26
x3670:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$121:	; £temporary2252 = &width
x3673:	mov si, bp	; 2: -119 -18
x3675:	add si, 12	; 3: -125 -58 12

printFormat$122:	; parameter £temporary2252, offset 16
x3678:	mov [bp + 63], si	; 3: -119 118 63

printFormat$123:	; parameter precision, offset 18
x3681:	mov ax, [bp + 14]	; 3: -117 70 14
x3684:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$124:	; parameter shortInt, offset 20
x3687:	mov ax, [bp + 34]	; 3: -117 70 34
x3690:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$125:	; parameter longInt, offset 22
x3693:	mov ax, [bp + 36]	; 3: -117 70 36
x3696:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$126:	; parameter longDouble, offset 24
x3699:	mov ax, [bp + 38]	; 3: -117 70 38
x3702:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$127:	; parameter 0, offset 26
x3705:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$128:	; £temporary2253 = &negative
x3710:	mov si, bp	; 2: -119 -18
x3712:	add si, 45	; 3: -125 -58 45

printFormat$129:	; parameter £temporary2253, offset 28
x3715:	mov [bp + 75], si	; 3: -119 118 75

printFormat$130:	; call function noellipse-noellipse printArgument
x3718:	mov word [bp + 47], printFormat$131	; 5: -57 70 47 -108 14
x3723:	mov [bp + 49], bp	; 3: -119 110 49
x3726:	add bp, 47	; 3: -125 -59 47
x3729:	jmp printArgument	; 3: -23 -22 2

printFormat$131:	; post call

printFormat$132:	; g_outStatus = oldOutStatus
x3732:	mov ax, [bp + 43]	; 3: -117 70 43
x3735:	mov [g_outStatus], ax	; 3: -93 28 12

printFormat$133:	; field = g_outChars - startChars
x3738:	mov ax, [g_outChars]	; 3: -95 122 17
x3741:	sub ax, [bp + 41]	; 3: 43 70 41
x3744:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$134:	; g_outChars = startChars
x3747:	mov ax, [bp + 41]	; 3: -117 70 41
x3750:	mov [g_outChars], ax	; 3: -93 122 17

printFormat$135:	; if negative == 0 goto 142
x3753:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x3757:	je printFormat$142	; 2: 116 23

printFormat$136:	; call header integral zero 0 stack zero 0

printFormat$137:	; parameter 45, offset 6
x3759:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$138:	; call function noellipse-noellipse printChar
x3763:	mov word [bp + 49], printFormat$139	; 5: -57 70 49 -63 14
x3768:	mov [bp + 51], bp	; 3: -119 110 51
x3771:	add bp, 49	; 3: -125 -59 49
x3774:	jmp printChar	; 3: -23 -48 9

printFormat$139:	; post call

printFormat$140:	; ++field
x3777:	inc word [bp + 47]	; 3: -1 70 47

printFormat$141:	; goto 155
x3780:	jmp printFormat$155	; 2: -21 56

printFormat$142:	; if plus == 0 goto 149
x3782:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x3786:	je printFormat$149	; 2: 116 23

printFormat$143:	; call header integral zero 0 stack zero 0

printFormat$144:	; parameter 43, offset 6
x3788:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$145:	; call function noellipse-noellipse printChar
x3792:	mov word [bp + 49], printFormat$146	; 5: -57 70 49 -34 14
x3797:	mov [bp + 51], bp	; 3: -119 110 51
x3800:	add bp, 49	; 3: -125 -59 49
x3803:	jmp printChar	; 3: -23 -77 9

printFormat$146:	; post call

printFormat$147:	; ++field
x3806:	inc word [bp + 47]	; 3: -1 70 47

printFormat$148:	; goto 155
x3809:	jmp printFormat$155	; 2: -21 27

printFormat$149:	; if space == 0 goto 155
x3811:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3815:	je printFormat$155	; 2: 116 21

printFormat$150:	; call header integral zero 0 stack zero 0

printFormat$151:	; parameter 32, offset 6
x3817:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$152:	; call function noellipse-noellipse printChar
x3821:	mov word [bp + 49], printFormat$153	; 5: -57 70 49 -5 14
x3826:	mov [bp + 51], bp	; 3: -119 110 51
x3829:	add bp, 49	; 3: -125 -59 49
x3832:	jmp printChar	; 3: -23 -106 9

printFormat$153:	; post call

printFormat$154:	; ++field
x3835:	inc word [bp + 47]	; 3: -1 70 47

printFormat$155:	; £temporary2265 = field
x3838:	mov ax, [bp + 47]	; 3: -117 70 47

printFormat$156:	; ++field
x3841:	inc word [bp + 47]	; 3: -1 70 47

printFormat$157:	; if £temporary2265 >= width goto 163
x3844:	cmp ax, [bp + 12]	; 3: 59 70 12
x3847:	jge printFormat$163	; 2: 125 20

printFormat$158:	; call header integral zero 0 stack zero 0

printFormat$159:	; parameter 48, offset 6
x3849:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$160:	; call function noellipse-noellipse printChar
x3853:	mov word [bp + 49], printFormat$161	; 5: -57 70 49 27 15
x3858:	mov [bp + 51], bp	; 3: -119 110 51
x3861:	add bp, 49	; 3: -125 -59 49
x3864:	jmp printChar	; 3: -23 118 9

printFormat$161:	; post call

printFormat$162:	; goto 155
x3867:	jmp printFormat$155	; 2: -21 -31

printFormat$163:	; call header integral zero 0 stack zero 0

printFormat$164:	; £temporary2269 = format + index
x3869:	mov si, [bp + 6]	; 3: -117 118 6
x3872:	add si, [bp + 10]	; 3: 3 118 10

printFormat$165:	; £temporary2268 -> £temporary2269 = *£temporary2269

printFormat$166:	; £temporary2270 = &£temporary2268 -> £temporary2269

printFormat$167:	; parameter £temporary2270, offset 6
x3875:	mov [bp + 55], si	; 3: -119 118 55

printFormat$168:	; parameter arg_list, offset 8
x3878:	mov ax, [bp + 8]	; 3: -117 70 8
x3881:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$169:	; parameter 0, offset 10
x3884:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$170:	; parameter 0, offset 12
x3889:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$171:	; parameter grid, offset 14
x3894:	mov ax, [bp + 26]	; 3: -117 70 26
x3897:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$172:	; parameter 0, offset 16
x3900:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$173:	; parameter precision, offset 18
x3905:	mov ax, [bp + 14]	; 3: -117 70 14
x3908:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$174:	; parameter shortInt, offset 20
x3911:	mov ax, [bp + 34]	; 3: -117 70 34
x3914:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$175:	; parameter longInt, offset 22
x3917:	mov ax, [bp + 36]	; 3: -117 70 36
x3920:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$176:	; parameter longDouble, offset 24
x3923:	mov ax, [bp + 38]	; 3: -117 70 38
x3926:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$177:	; parameter 0, offset 26
x3929:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$178:	; parameter 0, offset 28
x3934:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$179:	; call function noellipse-noellipse printArgument
x3939:	mov word [bp + 49], printFormat$180	; 5: -57 70 49 113 15
x3944:	mov [bp + 51], bp	; 3: -119 110 51
x3947:	add bp, 49	; 3: -125 -59 49
x3950:	jmp printArgument	; 3: -23 13 2

printFormat$180:	; post call

printFormat$181:	; £temporary2271 = return_value

printFormat$182:	; arg_list = £temporary2271
x3953:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$183:	; goto 237
x3956:	jmp printFormat$237	; 3: -23 -8 0

printFormat$184:	; startChars = g_outChars
x3959:	mov ax, [g_outChars]	; 3: -95 122 17
x3962:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$185:	; oldOutStatus = g_outStatus
x3965:	mov ax, [g_outStatus]	; 3: -95 28 12
x3968:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$186:	; g_outStatus = 2
x3971:	mov word [g_outStatus], 2	; 6: -57 6 28 12 2 0

printFormat$187:	; call header integral zero 0 stack zero 0

printFormat$188:	; £temporary2273 = format + index
x3977:	mov si, [bp + 6]	; 3: -117 118 6
x3980:	add si, [bp + 10]	; 3: 3 118 10

printFormat$189:	; £temporary2272 -> £temporary2273 = *£temporary2273

printFormat$190:	; £temporary2274 = &£temporary2272 -> £temporary2273

printFormat$191:	; parameter £temporary2274, offset 6
x3983:	mov [bp + 51], si	; 3: -119 118 51

printFormat$192:	; parameter arg_list, offset 8
x3986:	mov ax, [bp + 8]	; 3: -117 70 8
x3989:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$193:	; parameter plus, offset 10
x3992:	mov ax, [bp + 18]	; 3: -117 70 18
x3995:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$194:	; parameter space, offset 12
x3998:	mov ax, [bp + 22]	; 3: -117 70 22
x4001:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$195:	; parameter grid, offset 14
x4004:	mov ax, [bp + 26]	; 3: -117 70 26
x4007:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$196:	; £temporary2275 = &width
x4010:	mov si, bp	; 2: -119 -18
x4012:	add si, 12	; 3: -125 -58 12

printFormat$197:	; parameter £temporary2275, offset 16
x4015:	mov [bp + 61], si	; 3: -119 118 61

printFormat$198:	; parameter precision, offset 18
x4018:	mov ax, [bp + 14]	; 3: -117 70 14
x4021:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$199:	; parameter shortInt, offset 20
x4024:	mov ax, [bp + 34]	; 3: -117 70 34
x4027:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$200:	; parameter longInt, offset 22
x4030:	mov ax, [bp + 36]	; 3: -117 70 36
x4033:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$201:	; parameter longDouble, offset 24
x4036:	mov ax, [bp + 38]	; 3: -117 70 38
x4039:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$202:	; parameter 1, offset 26
x4042:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$203:	; parameter 0, offset 28
x4047:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$204:	; call function noellipse-noellipse printArgument
x4052:	mov word [bp + 45], printFormat$205	; 5: -57 70 45 -30 15
x4057:	mov [bp + 47], bp	; 3: -119 110 47
x4060:	add bp, 45	; 3: -125 -59 45
x4063:	jmp printArgument	; 3: -23 -100 1

printFormat$205:	; post call

printFormat$206:	; g_outStatus = oldOutStatus
x4066:	mov ax, [bp + 43]	; 3: -117 70 43
x4069:	mov [g_outStatus], ax	; 3: -93 28 12

printFormat$207:	; field = g_outChars - startChars
x4072:	mov ax, [g_outChars]	; 3: -95 122 17
x4075:	sub ax, [bp + 41]	; 3: 43 70 41
x4078:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$208:	; g_outChars = startChars
x4081:	mov ax, [bp + 41]	; 3: -117 70 41
x4084:	mov [g_outChars], ax	; 3: -93 122 17

printFormat$209:	; £temporary2278 = field
x4087:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$210:	; ++field
x4090:	inc word [bp + 45]	; 3: -1 70 45

printFormat$211:	; if £temporary2278 >= width goto 217
x4093:	cmp ax, [bp + 12]	; 3: 59 70 12
x4096:	jge printFormat$217	; 2: 125 20

printFormat$212:	; call header integral zero 0 stack zero 0

printFormat$213:	; parameter 32, offset 6
x4098:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$214:	; call function noellipse-noellipse printChar
x4102:	mov word [bp + 47], printFormat$215	; 5: -57 70 47 20 16
x4107:	mov [bp + 49], bp	; 3: -119 110 49
x4110:	add bp, 47	; 3: -125 -59 47
x4113:	jmp printChar	; 3: -23 125 8

printFormat$215:	; post call

printFormat$216:	; goto 209
x4116:	jmp printFormat$209	; 2: -21 -31

printFormat$217:	; call header integral zero 0 stack zero 0

printFormat$218:	; £temporary2282 = format + index
x4118:	mov si, [bp + 6]	; 3: -117 118 6
x4121:	add si, [bp + 10]	; 3: 3 118 10

printFormat$219:	; £temporary2281 -> £temporary2282 = *£temporary2282

printFormat$220:	; £temporary2283 = &£temporary2281 -> £temporary2282

printFormat$221:	; parameter £temporary2283, offset 6
x4124:	mov [bp + 53], si	; 3: -119 118 53

printFormat$222:	; parameter arg_list, offset 8
x4127:	mov ax, [bp + 8]	; 3: -117 70 8
x4130:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$223:	; parameter plus, offset 10
x4133:	mov ax, [bp + 18]	; 3: -117 70 18
x4136:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$224:	; parameter space, offset 12
x4139:	mov ax, [bp + 22]	; 3: -117 70 22
x4142:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$225:	; parameter grid, offset 14
x4145:	mov ax, [bp + 26]	; 3: -117 70 26
x4148:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$226:	; parameter 0, offset 16
x4151:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$227:	; parameter precision, offset 18
x4156:	mov ax, [bp + 14]	; 3: -117 70 14
x4159:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$228:	; parameter shortInt, offset 20
x4162:	mov ax, [bp + 34]	; 3: -117 70 34
x4165:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$229:	; parameter longInt, offset 22
x4168:	mov ax, [bp + 36]	; 3: -117 70 36
x4171:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$230:	; parameter longDouble, offset 24
x4174:	mov ax, [bp + 38]	; 3: -117 70 38
x4177:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$231:	; parameter 1, offset 26
x4180:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$232:	; parameter 0, offset 28
x4185:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$233:	; call function noellipse-noellipse printArgument
x4190:	mov word [bp + 47], printFormat$234	; 5: -57 70 47 108 16
x4195:	mov [bp + 49], bp	; 3: -119 110 49
x4198:	add bp, 47	; 3: -125 -59 47
x4201:	jmp printArgument	; 3: -23 18 1

printFormat$234:	; post call

printFormat$235:	; £temporary2284 = return_value

printFormat$236:	; arg_list = £temporary2284
x4204:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$237:	; percent = 0
x4207:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$238:	; goto 283
x4212:	jmp printFormat$283	; 3: -23 -41 0

printFormat$239:	; value = 0
x4215:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$240:	; call header integral zero 0 stack zero 0

printFormat$241:	; £temporary2287 = int_to_int c (Signed_Char -> Signed_Int)
x4220:	mov al, [bp + 40]	; 3: -118 70 40
x4223:	and ax, 255	; 3: 37 -1 0
x4226:	cmp al, 0	; 2: 60 0
x4228:	jge printFormat$242	; 2: 125 4
x4230:	neg al	; 2: -10 -40
x4232:	neg ax	; 2: -9 -40

printFormat$242:	; parameter £temporary2287, offset 6
x4234:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$243:	; call function noellipse-noellipse isdigit
x4237:	mov word [bp + 43], printFormat$244	; 5: -57 70 43 -101 16
x4242:	mov [bp + 45], bp	; 3: -119 110 45
x4245:	add bp, 43	; 3: -125 -59 43
x4248:	jmp isdigit	; 3: -23 -22 22

printFormat$244:	; post call

printFormat$245:	; £temporary2288 = return_value

printFormat$246:	; if £temporary2288 == 0 goto 257
x4251:	cmp bx, 0	; 3: -125 -5 0
x4254:	je printFormat$257	; 2: 116 51

printFormat$247:	; £temporary2289 = value * 10
x4256:	mov ax, [bp + 41]	; 3: -117 70 41
x4259:	xor dx, dx	; 2: 49 -46
x4261:	imul word [int2$10#]	; 4: -9 46 124 17

printFormat$248:	; £temporary2290 = c - 48
x4265:	mov bl, [bp + 40]	; 3: -118 94 40
x4268:	sub bl, 48	; 3: -128 -21 48

printFormat$249:	; £temporary2291 = int_to_int £temporary2290 (Signed_Char -> Signed_Int)
x4271:	and bx, 255	; 4: -127 -29 -1 0
x4275:	cmp bl, 0	; 3: -128 -5 0
x4278:	jge printFormat$250	; 2: 125 4
x4280:	neg bl	; 2: -10 -37
x4282:	neg bx	; 2: -9 -37

printFormat$250:	; value = £temporary2289 + £temporary2291
x4284:	add ax, bx	; 2: 1 -40
x4286:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$251:	; ++index
x4289:	inc word [bp + 10]	; 3: -1 70 10

printFormat$252:	; £temporary2293 = index
x4292:	mov ax, [bp + 10]	; 3: -117 70 10

printFormat$253:	; £temporary2295 = format + £temporary2293
x4295:	mov si, [bp + 6]	; 3: -117 118 6
x4298:	add si, ax	; 2: 1 -58

printFormat$254:	; £temporary2294 -> £temporary2295 = *£temporary2295

printFormat$255:	; c = £temporary2294 -> £temporary2295
x4300:	mov al, [si]	; 2: -118 4
x4302:	mov [bp + 40], al	; 3: -120 70 40

printFormat$256:	; goto 240
x4305:	jmp printFormat$240	; 2: -21 -87

printFormat$257:	; --index
x4307:	dec word [bp + 10]	; 3: -1 78 10

printFormat$258:	; if period != 0 goto 261
x4310:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x4314:	jne printFormat$261	; 2: 117 8

printFormat$259:	; width = value
x4316:	mov ax, [bp + 41]	; 3: -117 70 41
x4319:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$260:	; goto 283
x4322:	jmp printFormat$283	; 2: -21 106

printFormat$261:	; precision = value
x4324:	mov ax, [bp + 41]	; 3: -117 70 41
x4327:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$262:	; goto 283
x4330:	jmp printFormat$283	; 2: -21 98

printFormat$263:	; if c != 37 goto 279
x4332:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x4336:	jne printFormat$279	; 2: 117 72

printFormat$264:	; percent = 1
x4338:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$265:	; plus = 0
x4343:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$266:	; minus = 0
x4348:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$267:	; space = 0
x4353:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$268:	; zero = 0
x4358:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$269:	; grid = 0
x4363:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$270:	; widthStar = 0
x4368:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$271:	; period = 0
x4373:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$272:	; precisionStar = 0
x4378:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$273:	; shortInt = 0
x4383:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$274:	; longInt = 0
x4388:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$275:	; longDouble = 0
x4393:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$276:	; width = 0
x4398:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$277:	; precision = 0
x4403:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$278:	; goto 283
x4408:	jmp printFormat$283	; 2: -21 20

printFormat$279:	; call header integral zero 0 stack zero 0

printFormat$280:	; parameter c, offset 6
x4410:	mov al, [bp + 40]	; 3: -118 70 40
x4413:	mov [bp + 47], al	; 3: -120 70 47

printFormat$281:	; call function noellipse-noellipse printChar
x4416:	mov word [bp + 41], printFormat$282	; 5: -57 70 41 78 17
x4421:	mov [bp + 43], bp	; 3: -119 110 43
x4424:	add bp, 41	; 3: -125 -59 41
x4427:	jmp printChar	; 3: -23 67 7

printFormat$282:	; post call

printFormat$283:	; ++index
x4430:	inc word [bp + 10]	; 3: -1 70 10

printFormat$284:	; goto 16
x4433:	jmp printFormat$16	; 3: -23 29 -5

printFormat$285:	; if g_outStatus != 1 goto 291
x4436:	cmp word [g_outStatus], 1	; 5: -125 62 28 12 1
x4441:	jne printFormat$291	; 2: 117 16

printFormat$286:	; £temporary2304 = int_to_int g_outDevice (Pointer -> Pointer)
x4443:	mov ax, [g_outDevice]	; 3: -95 30 12

printFormat$287:	; outString = £temporary2304
x4446:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$288:	; £temporary2306 = outString + g_outChars
x4449:	mov si, [bp + 40]	; 3: -117 118 40
x4452:	add si, [g_outChars]	; 4: 3 54 122 17

printFormat$289:	; £temporary2305 -> £temporary2306 = *£temporary2306

printFormat$290:	; £temporary2305 -> £temporary2306 = 0
x4456:	mov byte [si], 0	; 3: -58 4 0

printFormat$291:	; return_value = g_outChars
x4459:	mov bx, [g_outChars]	; 4: -117 30 122 17

printFormat$292:	; return
x4463:	mov ax, [bp]	; 3: -117 70 0
x4466:	mov di, [bp + 4]	; 3: -117 126 4
x4469:	mov bp, [bp + 2]	; 3: -117 110 2
x4472:	jmp ax	; 2: -1 -32

printFormat$293:	; function end printFormat

g_outChars:
x4474:	db 0, 0	; 2: 0 0

int2$10#:
x4476:	dw 10	; 2: 10 0

printArgument:	; £temporary2006 -> format = *format
x4478:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary2006 -> format
x4481:	mov al, [si]	; 2: -118 4
x4483:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x4486:	mov al, [bp + 30]	; 3: -118 70 30
x4489:	cmp al, 100	; 2: 60 100
x4491:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x4493:	cmp al, 105	; 2: 60 105
x4495:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x4497:	cmp al, 99	; 2: 60 99
x4499:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x4503:	cmp al, 115	; 2: 60 115
x4505:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x4509:	cmp al, 88	; 2: 60 88
x4511:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x4515:	cmp al, 120	; 2: 60 120
x4517:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x4521:	cmp al, 98	; 2: 60 98
x4523:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x4527:	cmp al, 111	; 2: 60 111
x4529:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x4533:	cmp al, 117	; 2: 60 117
x4535:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x4539:	cmp al, 71	; 2: 60 71
x4541:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x4545:	cmp al, 103	; 2: 60 103
x4547:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x4551:	cmp al, 69	; 2: 60 69
x4553:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x4557:	cmp al, 101	; 2: 60 101
x4559:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x4563:	cmp al, 102	; 2: 60 102
x4565:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x4569:	cmp al, 112	; 2: 60 112
x4571:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x4575:	cmp al, 110	; 2: 60 110
x4577:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x4581:	cmp al, 37	; 2: 60 37
x4583:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x4587:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x4590:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x4594:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x4596:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary2008 = arg_list - 2
x4600:	mov si, [bp + 8]	; 3: -117 118 8
x4603:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary2009 = int_to_int £temporary2008 (Signed_Int -> Pointer)

printArgument$25:	; £temporary2010 -> £temporary2009 = *£temporary2009

printArgument$26:	; £temporary2011 = int_to_int £temporary2010 -> £temporary2009 (Signed_Int -> Signed_Short_Int)
x4606:	mov ax, [si]	; 2: -117 4
x4608:	cmp ax, 0	; 3: -125 -8 0
x4611:	jge printArgument$27	; 2: 125 4
x4613:	neg ax	; 2: -9 -40
x4615:	neg al	; 2: -10 -40

printArgument$27:	; £temporary2012 = int_to_int £temporary2011 (Signed_Short_Int -> Signed_Long_Int)
x4617:	and eax, 255	; 6: 102 37 -1 0 0 0
x4623:	cmp al, 0	; 2: 60 0
x4625:	jge printArgument$28	; 2: 125 5
x4627:	neg al	; 2: -10 -40
x4629:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary2012
x4632:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x4636:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x4638:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x4642:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x4644:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary2014 = arg_list - 4
x4648:	mov si, [bp + 8]	; 3: -117 118 8
x4651:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary2015 = int_to_int £temporary2014 (Signed_Int -> Pointer)

printArgument$34:	; £temporary2016 -> £temporary2015 = *£temporary2015

printArgument$35:	; longValue = £temporary2016 -> £temporary2015
x4654:	mov eax, [si]	; 3: 102 -117 4
x4657:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x4661:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x4663:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary2018 = arg_list - 2
x4667:	mov si, [bp + 8]	; 3: -117 118 8
x4670:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary2019 = int_to_int £temporary2018 (Signed_Int -> Pointer)

printArgument$40:	; £temporary2020 -> £temporary2019 = *£temporary2019

printArgument$41:	; £temporary2021 = int_to_int £temporary2020 -> £temporary2019 (Signed_Int -> Signed_Long_Int)
x4673:	mov ax, [si]	; 2: -117 4
x4675:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x4681:	cmp ax, 0	; 3: -125 -8 0
x4684:	jge printArgument$42	; 2: 125 5
x4686:	neg ax	; 2: -9 -40
x4688:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary2021
x4691:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x4695:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x4699:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary2025 -> negativePtr = *negativePtr
x4701:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x4704:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x4709:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary2027 = 1
x4711:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x4714:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary2027 = 0
x4716:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary2025 -> negativePtr = £temporary2027
x4719:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x4721:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x4725:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x4727:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x4731:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x4735:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 -115 18
x4740:	mov [bp + 50], bp	; 3: -119 110 50
x4743:	add bp, 48	; 3: -125 -59 48
x4746:	jmp labs	; 3: -23 5 5

printArgument$54:	; post call

printArgument$55:	; £temporary2030 = return_value

printArgument$56:	; longValue = £temporary2030
x4749:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x4753:	mov ax, [bp + 8]	; 3: -117 70 8
x4756:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x4759:	mov ax, [bp + 16]	; 3: -117 70 16
x4762:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary2031 = &precision
x4765:	mov si, bp	; 2: -119 -18
x4767:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary2031, offset 10
x4770:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x4773:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 -77 18
x4778:	mov [bp + 50], bp	; 3: -119 110 50
x4781:	add bp, 48	; 3: -125 -59 48
x4784:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; post call

printArgument$64:	; £temporary2032 = return_value

printArgument$65:	; arg_list = £temporary2032
x4787:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x4790:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x4794:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x4798:	mov ax, [bp + 10]	; 3: -117 70 10
x4801:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x4804:	mov ax, [bp + 12]	; 3: -117 70 12
x4807:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x4810:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 -40 18
x4815:	mov [bp + 50], bp	; 3: -119 110 50
x4818:	add bp, 48	; 3: -125 -59 48
x4821:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x4824:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x4827:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary2035 = arg_list - 2
x4831:	mov si, [bp + 8]	; 3: -117 118 8
x4834:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary2036 = int_to_int £temporary2035 (Signed_Int -> Pointer)

printArgument$76:	; £temporary2037 -> £temporary2036 = *£temporary2036

printArgument$77:	; £temporary2038 = int_to_int £temporary2037 -> £temporary2036 (Signed_Int -> Signed_Char)
x4837:	mov ax, [si]	; 2: -117 4
x4839:	cmp ax, 0	; 3: -125 -8 0
x4842:	jge printArgument$78	; 2: 125 4
x4844:	neg ax	; 2: -9 -40
x4846:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary2038
x4848:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x4851:	mov ax, [bp + 8]	; 3: -117 70 8
x4854:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x4857:	mov ax, [bp + 16]	; 3: -117 70 16
x4860:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary2039 = &precision
x4863:	mov si, bp	; 2: -119 -18
x4865:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary2039, offset 10
x4868:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x4871:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 21 19
x4876:	mov [bp + 46], bp	; 3: -119 110 46
x4879:	add bp, 44	; 3: -125 -59 44
x4882:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; post call

printArgument$86:	; £temporary2040 = return_value

printArgument$87:	; arg_list = £temporary2040
x4885:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x4888:	mov al, [bp + 31]	; 3: -118 70 31
x4891:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x4894:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 44 19
x4899:	mov [bp + 46], bp	; 3: -119 110 46
x4902:	add bp, 44	; 3: -125 -59 44
x4905:	jmp printChar	; 3: -23 101 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x4908:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x4911:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2043 = arg_list - 2
x4915:	mov si, [bp + 8]	; 3: -117 118 8
x4918:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2044 = int_to_int £temporary2043 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2045 -> £temporary2044 = *£temporary2044

printArgument$97:	; stringValue = £temporary2045 -> £temporary2044
x4921:	mov ax, [si]	; 2: -117 4
x4923:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x4926:	mov ax, [bp + 8]	; 3: -117 70 8
x4929:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x4932:	mov ax, [bp + 16]	; 3: -117 70 16
x4935:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2046 = &precision
x4938:	mov si, bp	; 2: -119 -18
x4940:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2046, offset 10
x4943:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x4946:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 96 19
x4951:	mov [bp + 48], bp	; 3: -119 110 48
x4954:	add bp, 46	; 3: -125 -59 46
x4957:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; post call

printArgument$105:	; £temporary2047 = return_value

printArgument$106:	; arg_list = £temporary2047
x4960:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x4963:	mov ax, [bp + 44]	; 3: -117 70 44
x4966:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x4969:	mov ax, [bp + 18]	; 3: -117 70 18
x4972:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x4975:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 125 19
x4980:	mov [bp + 48], bp	; 3: -119 110 48
x4983:	add bp, 46	; 3: -125 -59 46
x4986:	jmp printString	; 3: -23 -36 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x4989:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x4992:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x4996:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2063 = 10
x4998:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x5004:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x5006:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x5010:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2059 = 8
x5012:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x5018:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x5020:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x5024:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2055 = 2
x5026:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x5032:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2055 = 16
x5034:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2059 = £temporary2055

printArgument$124:	; £temporary2063 = £temporary2059

printArgument$125:	; base = £temporary2063
x5040:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x5044:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x5048:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x5050:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2065 = arg_list - 2
x5054:	mov si, [bp + 8]	; 3: -117 118 8
x5057:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2066 = int_to_int £temporary2065 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2067 -> £temporary2066 = *£temporary2066

printArgument$131:	; £temporary2068 = int_to_int £temporary2067 -> £temporary2066 (Unsigned_Int -> Unsigned_Short_Int)
x5060:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2069 = int_to_int £temporary2068 (Unsigned_Short_Int -> Unsigned_Long_Int)
x5062:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2069
x5068:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x5072:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x5074:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x5078:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x5080:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2071 = arg_list - 4
x5084:	mov si, [bp + 8]	; 3: -117 118 8
x5087:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2072 = int_to_int £temporary2071 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2073 -> £temporary2072 = *£temporary2072

printArgument$140:	; value = £temporary2073 -> £temporary2072
x5090:	mov eax, [si]	; 3: 102 -117 4
x5093:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x5097:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x5099:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2075 = arg_list - 2
x5103:	mov si, [bp + 8]	; 3: -117 118 8
x5106:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2076 = int_to_int £temporary2075 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2077 -> £temporary2076 = *£temporary2076

printArgument$146:	; £temporary2078 = int_to_int £temporary2077 -> £temporary2076 (Unsigned_Int -> Unsigned_Long_Int)
x5109:	mov ax, [si]	; 2: -117 4
x5111:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2078
x5117:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x5121:	mov ax, [bp + 8]	; 3: -117 70 8
x5124:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x5127:	mov ax, [bp + 16]	; 3: -117 70 16
x5130:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2081 = &precision
x5133:	mov si, bp	; 2: -119 -18
x5135:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2081, offset 10
x5138:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x5141:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 35 20
x5146:	mov [bp + 54], bp	; 3: -119 110 54
x5149:	add bp, 52	; 3: -125 -59 52
x5152:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; post call

printArgument$155:	; £temporary2082 = return_value

printArgument$156:	; arg_list = £temporary2082
x5155:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x5158:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x5162:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x5166:	mov ax, [bp + 10]	; 3: -117 70 10
x5169:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x5172:	mov ax, [bp + 12]	; 3: -117 70 12
x5175:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x5178:	mov ax, [bp + 14]	; 3: -117 70 14
x5181:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x5184:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x5188:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2083 = int_to_int c (Signed_Char -> Signed_Int)
x5192:	mov al, [bp + 30]	; 3: -118 70 30
x5195:	and ax, 255	; 3: 37 -1 0
x5198:	cmp al, 0	; 2: 60 0
x5200:	jge printArgument$165	; 2: 125 4
x5202:	neg al	; 2: -10 -40
x5204:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2083, offset 26
x5206:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x5209:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 103 20
x5214:	mov [bp + 74], bp	; 3: -119 110 74
x5217:	add bp, 72	; 3: -125 -59 72
x5220:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; post call

printArgument$168:	; £temporary2084 = return_value

printArgument$169:	; parameter £temporary2084, offset 20
x5223:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x5226:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 120 20
x5231:	mov [bp + 54], bp	; 3: -119 110 54
x5234:	add bp, 52	; 3: -125 -59 52
x5237:	jmp printUnsignedLong	; 3: -23 -50 9

printArgument$171:	; post call

printArgument$172:	; goto 359
x5240:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x5243:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x5247:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x5249:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2087 = arg_list - 8
x5253:	mov si, [bp + 8]	; 3: -117 118 8
x5256:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2088 = int_to_int £temporary2087 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2089 -> £temporary2088 = *£temporary2088

printArgument$178:	; push float £temporary2089 -> £temporary2088
x5259:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x5261:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x5264:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x5267:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x5270:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x5275:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x5280:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x5285:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x5290:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 -72 20
x5295:	mov [bp + 46], bp	; 3: -119 110 46
x5298:	add bp, 44	; 3: -125 -59 44
x5301:	jmp printLongDoublePlain	; 3: -23 57 11

printArgument$188:	; post call

printArgument$189:	; goto 196
x5304:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x5306:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2092 = arg_list - 8
x5310:	mov si, [bp + 8]	; 3: -117 118 8
x5313:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2093 = int_to_int £temporary2092 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2094 -> £temporary2093 = *£temporary2093

printArgument$194:	; push float £temporary2094 -> £temporary2093
x5316:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x5318:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x5321:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x5325:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2098 -> negativePtr = *negativePtr
x5327:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x5330:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x5333:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x5335:	fcompp	; 2: -34 -39
x5337:	fstsw ax	; 3: -101 -33 -32
x5340:	sahf	; 1: -98
x5341:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2100 = 1
x5343:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x5346:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2100 = 0
x5348:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2098 -> negativePtr = £temporary2100
x5351:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x5353:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x5357:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x5359:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x5362:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x5365:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 3 21
x5370:	mov [bp + 46], bp	; 3: -119 110 46
x5373:	add bp, 44	; 3: -125 -59 44
x5376:	jmp fabs	; 3: -23 50 12

printArgument$210:	; post call

printArgument$211:	; £temporary2103 = return_value

printArgument$212:	; pop float longDoubleValue
x5379:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x5382:	mov ax, [bp + 8]	; 3: -117 70 8
x5385:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x5388:	mov ax, [bp + 16]	; 3: -117 70 16
x5391:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2104 = &precision
x5394:	mov si, bp	; 2: -119 -18
x5396:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2104, offset 10
x5399:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x5402:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 40 21
x5407:	mov [bp + 46], bp	; 3: -119 110 46
x5410:	add bp, 44	; 3: -125 -59 44
x5413:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; post call

printArgument$220:	; £temporary2105 = return_value

printArgument$221:	; arg_list = £temporary2105
x5416:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x5419:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x5423:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x5425:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x5428:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x5431:	mov ax, [bp + 10]	; 3: -117 70 10
x5434:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x5437:	mov ax, [bp + 12]	; 3: -117 70 12
x5440:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x5443:	mov ax, [bp + 14]	; 3: -117 70 14
x5446:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x5449:	mov ax, [bp + 18]	; 3: -117 70 18
x5452:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x5455:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 93 21
x5460:	mov [bp + 46], bp	; 3: -119 110 46
x5463:	add bp, 44	; 3: -125 -59 44
x5466:	jmp printLongDoublePlain	; 3: -23 -108 10

printArgument$231:	; post call

printArgument$232:	; goto 359
x5469:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2108 = int_to_int c (Signed_Char -> Signed_Int)
x5472:	mov al, [bp + 30]	; 3: -118 70 30
x5475:	and ax, 255	; 3: 37 -1 0
x5478:	cmp al, 0	; 2: 60 0
x5480:	jge printArgument$235	; 2: 125 4
x5482:	neg al	; 2: -10 -40
x5484:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2108, offset 6
x5486:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x5489:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 127 21
x5494:	mov [bp + 46], bp	; 3: -119 110 46
x5497:	add bp, 44	; 3: -125 -59 44
x5500:	jmp tolower	; 3: -23 -40 11

printArgument$237:	; post call

printArgument$238:	; £temporary2109 = return_value

printArgument$239:	; if £temporary2109 != 101 goto 257
x5503:	cmp bx, 101	; 3: -125 -5 101
x5506:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x5508:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x5511:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x5514:	mov ax, [bp + 10]	; 3: -117 70 10
x5517:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x5520:	mov ax, [bp + 12]	; 3: -117 70 12
x5523:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x5526:	mov ax, [bp + 14]	; 3: -117 70 14
x5529:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x5532:	mov ax, [bp + 18]	; 3: -117 70 18
x5535:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2111 = int_to_int c (Signed_Char -> Signed_Int)
x5538:	mov al, [bp + 30]	; 3: -118 70 30
x5541:	and ax, 255	; 3: 37 -1 0
x5544:	cmp al, 0	; 2: 60 0
x5546:	jge printArgument$249	; 2: 125 4
x5548:	neg al	; 2: -10 -40
x5550:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2111, offset 28
x5552:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x5555:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 -63 21
x5560:	mov [bp + 68], bp	; 3: -119 110 68
x5563:	add bp, 66	; 3: -125 -59 66
x5566:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; post call

printArgument$252:	; £temporary2112 = return_value

printArgument$253:	; parameter £temporary2112, offset 22
x5569:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x5572:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 -46 21
x5577:	mov [bp + 46], bp	; 3: -119 110 46
x5580:	add bp, 44	; 3: -125 -59 44
x5583:	jmp printLongDoubleExpo	; 3: -23 38 12

printArgument$255:	; post call

printArgument$256:	; goto 359
x5586:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x5589:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x5592:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x5595:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 -23 21
x5600:	mov [bp + 46], bp	; 3: -119 110 46
x5603:	add bp, 44	; 3: -125 -59 44
x5606:	jmp fabs	; 3: -23 76 11

printArgument$262:	; post call

printArgument$263:	; £temporary2114 = return_value

printArgument$264:	; parameter £temporary2114, offset 6
x5609:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x5612:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 -6 21
x5617:	mov [bp + 46], bp	; 3: -119 110 46
x5620:	add bp, 44	; 3: -125 -59 44
x5623:	jmp log10	; 3: -23 101 13

printArgument$266:	; post call

printArgument$267:	; £temporary2115 = return_value

printArgument$268:	; £temporary2116 = float_to_int £temporary2115 (Double -> Signed_Int)
x5626:	fistp word [container2bytes#]	; 4: -33 30 -112 23
x5630:	mov ax, [container2bytes#]	; 3: -95 -112 23

printArgument$269:	; expo = £temporary2116
x5633:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x5636:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x5640:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x5642:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x5646:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x5648:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x5651:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x5654:	mov ax, [bp + 10]	; 3: -117 70 10
x5657:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x5660:	mov ax, [bp + 12]	; 3: -117 70 12
x5663:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x5666:	mov ax, [bp + 14]	; 3: -117 70 14
x5669:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x5672:	mov ax, [bp + 18]	; 3: -117 70 18
x5675:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x5678:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 60 22
x5683:	mov [bp + 48], bp	; 3: -119 110 48
x5686:	add bp, 46	; 3: -125 -59 46
x5689:	jmp printLongDoublePlain	; 3: -23 -75 9

printArgument$280:	; post call

printArgument$281:	; goto 359
x5692:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x5695:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x5698:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x5701:	mov ax, [bp + 10]	; 3: -117 70 10
x5704:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x5707:	mov ax, [bp + 12]	; 3: -117 70 12
x5710:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x5713:	mov ax, [bp + 14]	; 3: -117 70 14
x5716:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x5719:	mov ax, [bp + 18]	; 3: -117 70 18
x5722:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2121 = int_to_int c (Signed_Char -> Signed_Int)
x5725:	mov al, [bp + 30]	; 3: -118 70 30
x5728:	and ax, 255	; 3: 37 -1 0
x5731:	cmp al, 0	; 2: 60 0
x5733:	jge printArgument$291	; 2: 125 4
x5735:	neg al	; 2: -10 -40
x5737:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2121, offset 28
x5739:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x5742:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 124 22
x5747:	mov [bp + 70], bp	; 3: -119 110 70
x5750:	add bp, 68	; 3: -125 -59 68
x5753:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; post call

printArgument$294:	; £temporary2122 = return_value

printArgument$295:	; parameter £temporary2122, offset 22
x5756:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x5759:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 -115 22
x5764:	mov [bp + 48], bp	; 3: -119 110 48
x5767:	add bp, 46	; 3: -125 -59 46
x5770:	jmp printLongDoubleExpo	; 3: -23 107 11

printArgument$297:	; post call

printArgument$298:	; goto 359
x5773:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x5776:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2125 = arg_list - 2
x5780:	mov si, [bp + 8]	; 3: -117 118 8
x5783:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2126 = int_to_int £temporary2125 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2127 -> £temporary2126 = *£temporary2126

printArgument$303:	; ptrValue = £temporary2127 -> £temporary2126
x5786:	mov ax, [si]	; 2: -117 4
x5788:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x5791:	mov ax, [bp + 8]	; 3: -117 70 8
x5794:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x5797:	mov ax, [bp + 16]	; 3: -117 70 16
x5800:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2128 = &precision
x5803:	mov si, bp	; 2: -119 -18
x5805:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2128, offset 10
x5808:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x5811:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 -63 22
x5816:	mov [bp + 46], bp	; 3: -119 110 46
x5819:	add bp, 44	; 3: -125 -59 44
x5822:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; post call

printArgument$311:	; £temporary2129 = return_value

printArgument$312:	; arg_list = £temporary2129
x5825:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2130 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x5828:	mov ax, [bp + 42]	; 3: -117 70 42
x5831:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2130, offset 6
x5837:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x5841:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x5846:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x5851:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x5856:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x5864:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x5869:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 -5 22
x5874:	mov [bp + 46], bp	; 3: -119 110 46
x5877:	add bp, 44	; 3: -125 -59 44
x5880:	jmp printUnsignedLong	; 3: -23 75 7

printArgument$322:	; post call

printArgument$323:	; goto 359
x5883:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x5886:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2133 = arg_list - 2
x5890:	mov si, [bp + 8]	; 3: -117 118 8
x5893:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2134 = int_to_int £temporary2133 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2135 -> £temporary2134 = *£temporary2134

printArgument$328:	; ptrValue = £temporary2135 -> £temporary2134
x5896:	mov ax, [si]	; 2: -117 4
x5898:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x5901:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2137 = arg_list - 2
x5905:	mov si, [bp + 8]	; 3: -117 118 8
x5908:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2138 = int_to_int £temporary2137 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2139 -> £temporary2138 = *£temporary2138

printArgument$333:	; intPtr = £temporary2139 -> £temporary2138
x5911:	mov ax, [si]	; 2: -117 4
x5913:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x5916:	mov ax, [bp + 8]	; 3: -117 70 8
x5919:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x5922:	mov ax, [bp + 16]	; 3: -117 70 16
x5925:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2140 = &precision
x5928:	mov si, bp	; 2: -119 -18
x5930:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2140, offset 10
x5933:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x5936:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 62 23
x5941:	mov [bp + 46], bp	; 3: -119 110 46
x5944:	add bp, 44	; 3: -125 -59 44
x5947:	nop	; 1: -112
x5948:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; post call

printArgument$341:	; £temporary2141 = return_value

printArgument$342:	; arg_list = £temporary2141
x5950:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2142 -> intPtr = *intPtr
x5953:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2142 -> intPtr = g_outChars
x5956:	mov ax, [g_outChars]	; 3: -95 122 17
x5959:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x5961:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x5963:	mov ax, [bp + 8]	; 3: -117 70 8
x5966:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x5969:	mov ax, [bp + 16]	; 3: -117 70 16
x5972:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2143 = &precision
x5975:	mov si, bp	; 2: -119 -18
x5977:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2143, offset 10
x5980:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x5983:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 109 23
x5988:	mov [bp + 46], bp	; 3: -119 110 46
x5991:	add bp, 44	; 3: -125 -59 44
x5994:	nop	; 1: -112
x5995:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; post call

printArgument$353:	; £temporary2144 = return_value

printArgument$354:	; arg_list = £temporary2144
x5997:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x6000:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x6004:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 -126 23
x6009:	mov [bp + 46], bp	; 3: -119 110 46
x6012:	add bp, 44	; 3: -125 -59 44
x6015:	jmp printChar	; 3: -23 15 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x6018:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x6021:	mov ax, [bp]	; 3: -117 70 0
x6024:	mov di, [bp + 4]	; 3: -117 126 4
x6027:	mov bp, [bp + 2]	; 3: -117 110 2
x6030:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

container2bytes#:
x6032:	db 0, 0	; 2: 0 0

labs:	; if value >= 0 goto 4
x6034:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6039:	jge labs$4	; 2: 125 9

labs$1:	; £temporary3392 = -value
x6041:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x6045:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary3396 = £temporary3392

labs$3:	; goto 5
x6048:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary3396 = value
x6050:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary3396

labs$6:	; return
x6054:	mov ax, [bp]	; 3: -117 70 0
x6057:	mov di, [bp + 4]	; 3: -117 126 4
x6060:	mov bp, [bp + 2]	; 3: -117 110 2
x6063:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x6065:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6069:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary1989 -> widthPtr = *widthPtr
x6071:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary1989 -> widthPtr != -1 goto 9
x6074:	cmp word [si], -1	; 3: -125 60 -1
x6077:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary1992 -> widthPtr = *widthPtr
x6079:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x6082:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary1994 = arg_list - 2
x6086:	mov di, [bp + 6]	; 3: -117 126 6
x6089:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary1995 = int_to_int £temporary1994 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary1996 -> £temporary1995 = *£temporary1995

checkWidthAndPrecision$8:	; £temporary1992 -> widthPtr = £temporary1996 -> £temporary1995
x6092:	mov ax, [di]	; 2: -117 5
x6094:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x6096:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6100:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary1998 -> precisionPtr = *precisionPtr
x6102:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary1998 -> precisionPtr != -1 goto 18
x6105:	cmp word [si], -1	; 3: -125 60 -1
x6108:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary2001 -> precisionPtr = *precisionPtr
x6110:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x6113:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary2003 = arg_list - 2
x6117:	mov di, [bp + 6]	; 3: -117 126 6
x6120:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary2004 = int_to_int £temporary2003 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary2005 -> £temporary2004 = *£temporary2004

checkWidthAndPrecision$17:	; £temporary2001 -> precisionPtr = £temporary2005 -> £temporary2004
x6123:	mov ax, [di]	; 2: -117 5
x6125:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x6127:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x6130:	mov ax, [bp]	; 3: -117 70 0
x6133:	mov di, [bp + 4]	; 3: -117 126 4
x6136:	mov bp, [bp + 2]	; 3: -117 110 2
x6139:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x6141:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6146:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1844 = -longValue
x6148:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6152:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1844
x6155:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x6159:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x6163:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 33 24
x6168:	mov [bp + 16], bp	; 3: -119 110 16
x6171:	add bp, 14	; 3: -125 -59 14
x6174:	nop	; 1: -112
x6175:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x6177:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x6179:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x6183:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x6185:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x6189:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 59 24
x6194:	mov [bp + 16], bp	; 3: -119 110 16
x6197:	add bp, 14	; 3: -125 -59 14
x6200:	nop	; 1: -112
x6201:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x6203:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x6205:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6209:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x6211:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x6215:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 85 24
x6220:	mov [bp + 16], bp	; 3: -119 110 16
x6223:	add bp, 14	; 3: -125 -59 14
x6226:	nop	; 1: -112
x6227:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x6229:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6234:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x6236:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x6240:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 110 24
x6245:	mov [bp + 16], bp	; 3: -119 110 16
x6248:	add bp, 14	; 3: -125 -59 14
x6251:	nop	; 1: -112
x6252:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x6254:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x6256:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6260:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x6264:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 -122 24
x6269:	mov [bp + 16], bp	; 3: -119 110 16
x6272:	add bp, 14	; 3: -125 -59 14
x6275:	nop	; 1: -112
x6276:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x6278:	mov ax, [bp]	; 3: -117 70 0
x6281:	mov di, [bp + 4]	; 3: -117 126 4
x6284:	mov bp, [bp + 2]	; 3: -117 110 2
x6287:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x6289:	mov ax, [g_outStatus]	; 3: -95 28 12
x6292:	cmp ax, 0	; 3: -125 -8 0
x6295:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x6297:	cmp ax, 1	; 3: -125 -8 1
x6300:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x6302:	cmp ax, 2	; 3: -125 -8 2
x6305:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x6307:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1786 = int_to_int g_outDevice (Pointer -> Pointer)
x6309:	mov ax, [g_outDevice]	; 3: -95 30 12

printChar$6:	; stream = £temporary1786
x6312:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x6315:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1789 -> stream = *stream, offset 2
x6317:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1789 -> stream
x6320:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x6323:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1792 = &c
x6326:	mov dx, bp	; 2: -119 -22
x6328:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1792

printChar$13:	; interrupt 33
x6331:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x6333:	inc word [g_outChars]	; 4: -1 6 122 17

printChar$15:	; goto 25
x6337:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1794 = int_to_int g_outDevice (Pointer -> Pointer)
x6339:	mov ax, [g_outDevice]	; 3: -95 30 12

printChar$17:	; outString = £temporary1794
x6342:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1795 = g_outChars
x6345:	mov ax, [g_outChars]	; 3: -95 122 17

printChar$19:	; ++g_outChars
x6348:	inc word [g_outChars]	; 4: -1 6 122 17

printChar$20:	; £temporary1797 = outString + £temporary1795
x6352:	mov si, [bp + 9]	; 3: -117 118 9
x6355:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1796 -> £temporary1797 = *£temporary1797

printChar$22:	; £temporary1796 -> £temporary1797 = c
x6357:	mov al, [bp + 6]	; 3: -118 70 6
x6360:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x6362:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x6364:	inc word [g_outChars]	; 4: -1 6 122 17

printChar$25:	; return
x6368:	mov ax, [bp]	; 3: -117 70 0
x6371:	mov di, [bp + 4]	; 3: -117 126 4
x6374:	mov bp, [bp + 2]	; 3: -117 110 2
x6377:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x6379:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6384:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1834 = longValue % 10
x6386:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6390:	xor edx, edx	; 3: 102 49 -46
x6393:	idiv dword [int4$10#]	; 5: 102 -9 62 85 25

printLongIntRec$2:	; £temporary1835 = int_to_int £temporary1834 (Signed_Long_Int -> Signed_Int)
x6398:	cmp edx, 0	; 4: 102 -125 -6 0
x6402:	jge printLongIntRec$3	; 2: 125 5
x6404:	neg edx	; 3: 102 -9 -38
x6407:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1835
x6409:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1836 = longValue / 10
x6412:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6416:	xor edx, edx	; 3: 102 49 -46
x6419:	idiv dword [int4$10#]	; 5: 102 -9 62 85 25

printLongIntRec$6:	; parameter £temporary1836, offset 6
x6424:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x6428:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 42 25
x6433:	mov [bp + 14], bp	; 3: -119 110 14
x6436:	add bp, 12	; 3: -125 -59 12
x6439:	nop	; 1: -112
x6440:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1838 = digit + 48
x6442:	mov ax, [bp + 10]	; 3: -117 70 10
x6445:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1839 = int_to_int £temporary1838 (Signed_Int -> Signed_Char)
x6448:	cmp ax, 0	; 3: -125 -8 0
x6451:	jge printLongIntRec$12	; 2: 125 4
x6453:	neg ax	; 2: -9 -40
x6455:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1839, offset 6
x6457:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x6460:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 74 25
x6465:	mov [bp + 14], bp	; 3: -119 110 14
x6468:	add bp, 12	; 3: -125 -59 12
x6471:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x6474:	mov ax, [bp]	; 3: -117 70 0
x6477:	mov di, [bp + 4]	; 3: -117 126 4
x6480:	mov bp, [bp + 2]	; 3: -117 110 2
x6483:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x6485:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x6489:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x6493:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x6495:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6499:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x6501:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1803 = s + index
x6506:	mov si, [bp + 6]	; 3: -117 118 6
x6509:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1802 -> £temporary1803 = *£temporary1803

printString$5:	; if £temporary1802 -> £temporary1803 == 0 goto 53
x6512:	cmp byte [si], 0	; 3: -128 60 0
x6515:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1807 = s + index
x6519:	mov si, [bp + 6]	; 3: -117 118 6
x6522:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1806 -> £temporary1807 = *£temporary1807

printString$9:	; parameter £temporary1806 -> £temporary1807, offset 6
x6525:	mov al, [si]	; 2: -118 4
x6527:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x6530:	mov word [bp + 12], printString$11	; 5: -57 70 12 -112 25
x6535:	mov [bp + 14], bp	; 3: -119 110 14
x6538:	add bp, 12	; 3: -125 -59 12
x6541:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x6544:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x6547:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x6549:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1809 = precision
x6554:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x6557:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1809 <= 0 goto 53
x6560:	cmp ax, 0	; 3: -125 -8 0
x6563:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1812 = s + index
x6567:	mov si, [bp + 6]	; 3: -117 118 6
x6570:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1811 -> £temporary1812 = *£temporary1812

printString$20:	; if £temporary1811 -> £temporary1812 == 0 goto 53
x6573:	cmp byte [si], 0	; 3: -128 60 0
x6576:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1817 = s + index
x6580:	mov si, [bp + 6]	; 3: -117 118 6
x6583:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1816 -> £temporary1817 = *£temporary1817

printString$24:	; parameter £temporary1816 -> £temporary1817, offset 6
x6586:	mov al, [si]	; 2: -118 4
x6588:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x6591:	mov word [bp + 12], printString$26	; 5: -57 70 12 -51 25
x6596:	mov [bp + 14], bp	; 3: -119 110 14
x6599:	add bp, 12	; 3: -125 -59 12
x6602:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x6605:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x6608:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x6610:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x6614:	mov word [bp + 10], printString$32	; 5: -57 70 10 -28 25
x6619:	mov [bp + 12], bp	; 3: -119 110 12
x6622:	add bp, 10	; 3: -125 -59 10
x6625:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x6628:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x6632:	mov word [bp + 10], printString$36	; 5: -57 70 10 -10 25
x6637:	mov [bp + 12], bp	; 3: -119 110 12
x6640:	add bp, 10	; 3: -125 -59 10
x6643:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x6646:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x6650:	mov word [bp + 10], printString$40	; 5: -57 70 10 8 26
x6655:	mov [bp + 12], bp	; 3: -119 110 12
x6658:	add bp, 10	; 3: -125 -59 10
x6661:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x6664:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x6668:	mov word [bp + 10], printString$44	; 5: -57 70 10 26 26
x6673:	mov [bp + 12], bp	; 3: -119 110 12
x6676:	add bp, 10	; 3: -125 -59 10
x6679:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x6682:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x6686:	mov word [bp + 10], printString$48	; 5: -57 70 10 44 26
x6691:	mov [bp + 12], bp	; 3: -119 110 12
x6694:	add bp, 10	; 3: -125 -59 10
x6697:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x6700:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x6704:	mov word [bp + 10], printString$52	; 5: -57 70 10 62 26
x6709:	mov [bp + 12], bp	; 3: -119 110 12
x6712:	add bp, 10	; 3: -125 -59 10
x6715:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x6718:	mov ax, [bp]	; 3: -117 70 0
x6721:	mov di, [bp + 4]	; 3: -117 126 4
x6724:	mov bp, [bp + 2]	; 3: -117 110 2
x6727:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x6729:	mov word [bp + 8], isupper$2	; 5: -57 70 8 87 26
x6734:	mov [bp + 10], bp	; 3: -119 110 10
x6737:	add bp, 8	; 3: -125 -59 8
x6740:	nop	; 1: -112
x6741:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary383 = return_value

isupper$4:	; localeConvPtr = £temporary383
x6743:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x6746:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6750:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary385 -> localeConvPtr = *localeConvPtr, offset 14
x6752:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary385 -> localeConvPtr, offset 6
x6755:	mov ax, [si + 14]	; 3: -117 68 14
x6758:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x6761:	mov ax, [bp + 6]	; 3: -117 70 6
x6764:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x6767:	mov word [bp + 10], isupper$11	; 5: -57 70 10 125 26
x6772:	mov [bp + 12], bp	; 3: -119 110 12
x6775:	add bp, 10	; 3: -125 -59 10
x6778:	jmp strchr	; 3: -23 121 3

isupper$11:	; post call

isupper$12:	; £temporary386 = return_value

isupper$13:	; if £temporary386 == 0 goto 16
x6781:	cmp bx, 0	; 3: -125 -5 0
x6784:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary388 = 1
x6786:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x6789:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary388 = 0
x6791:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary388

isupper$18:	; return
x6794:	mov ax, [bp]	; 3: -117 70 0
x6797:	mov di, [bp + 4]	; 3: -117 126 4
x6800:	mov bp, [bp + 2]	; 3: -117 110 2
x6803:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x6805:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x6809:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x6811:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x6815:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary392 = 1
x6817:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x6820:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary392 = 0
x6822:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary392

isupper$25:	; return
x6825:	mov ax, [bp]	; 3: -117 70 0
x6828:	mov di, [bp + 4]	; 3: -117 126 4
x6831:	mov bp, [bp + 2]	; 3: -117 110 2
x6834:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x6836:	cmp word [@15$g_currStructPtr], 0	; 5: -125 62 -46 26 0
x6841:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary516 -> g_currStructPtr = *g_currStructPtr, offset 2
x6843:	mov si, [@15$g_currStructPtr]	; 4: -117 54 -46 26

localeconv$2:	; £temporary520 = £temporary516 -> g_currStructPtr
x6847:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x6850:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary520 = 0
x6852:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary520

localeconv$6:	; return
x6855:	mov ax, [bp]	; 3: -117 70 0
x6858:	mov di, [bp + 4]	; 3: -117 126 4
x6861:	mov bp, [bp + 2]	; 3: -117 110 2
x6864:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@15$g_currStructPtr:
x6866:	dw @13$sArray	; 2: -44 26

@13$sArray:
x6868:	dw string_# ; 2: -32 26
x6870:	dw @12$en_US_utf8	; 2: -31 26
x6872:	dw string_C# ; 2: -15 29
x6874:	dw @12$en_US_utf8	; 2: -31 26
x6876:	dw string_US# ; 2: -13 29
x6878:	dw @12$en_US_utf8	; 2: -31 26

string_#:
x6880:	db 0	; 1: 0

@12$en_US_utf8:
x6881:	dw 2	; 2: 2 0
x6883:	dw 1	; 2: 1 0
x6885:	dw @8$enShortDayList ; 2: -13 26
x6887:	dw @9$enLongDayList ; 2: 29 27
x6889:	dw @10$enShortMonthList ; 2: 100 27
x6891:	dw @11$enLongMonthList ; 2: -84 27
x6893:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: 22 28
x6895:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: 49 28
x6897:	dw enMessageList ; 2: 76 28

@8$enShortDayList:
x6899:	dw string_Sun# ; 2: 1 27
x6901:	dw string_Mon# ; 2: 5 27
x6903:	dw string_Tue# ; 2: 9 27
x6905:	dw string_Wed# ; 2: 13 27
x6907:	dw string_Thu# ; 2: 17 27
x6909:	dw string_Fri# ; 2: 21 27
x6911:	dw string_Sat# ; 2: 25 27

string_Sun#:
x6913:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x6917:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x6921:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x6925:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x6929:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x6933:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x6937:	db "Sat", 0	; 4: 83 97 116 0

@9$enLongDayList:
x6941:	dw string_Sunday# ; 2: 43 27
x6943:	dw string_Monday# ; 2: 50 27
x6945:	dw string_Tuesday# ; 2: 57 27
x6947:	dw string_Wednesday# ; 2: 65 27
x6949:	dw string_Thursday# ; 2: 75 27
x6951:	dw string_Friday# ; 2: 84 27
x6953:	dw string_Saturday# ; 2: 91 27

string_Sunday#:
x6955:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x6962:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x6969:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x6977:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x6987:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x6996:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x7003:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@10$enShortMonthList:
x7012:	dw string_Jan# ; 2: 124 27
x7014:	dw string_Feb# ; 2: -128 27
x7016:	dw string_Mar# ; 2: -124 27
x7018:	dw string_Apr# ; 2: -120 27
x7020:	dw string_May# ; 2: -116 27
x7022:	dw string_Jun# ; 2: -112 27
x7024:	dw string_Jul# ; 2: -108 27
x7026:	dw string_Aug# ; 2: -104 27
x7028:	dw string_Sep# ; 2: -100 27
x7030:	dw string_Oct# ; 2: -96 27
x7032:	dw string_Nov# ; 2: -92 27
x7034:	dw string_Dec# ; 2: -88 27

string_Jan#:
x7036:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x7040:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x7044:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x7048:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x7052:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x7056:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x7060:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x7064:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x7068:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x7072:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x7076:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x7080:	db "Dec", 0	; 4: 68 101 99 0

@11$enLongMonthList:
x7084:	dw string_January# ; 2: -60 27
x7086:	dw string_February# ; 2: -52 27
x7088:	dw string_March# ; 2: -43 27
x7090:	dw string_April# ; 2: -37 27
x7092:	dw string_May# ; 2: -116 27
x7094:	dw string_June# ; 2: -31 27
x7096:	dw string_July# ; 2: -26 27
x7098:	dw string_August# ; 2: -21 27
x7100:	dw string_September# ; 2: -14 27
x7102:	dw string_October# ; 2: -4 27
x7104:	dw string_November# ; 2: 4 28
x7106:	dw string_December# ; 2: 13 28

string_January#:
x7108:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x7116:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x7125:	db "March", 0	; 6: 77 97 114 99 104 0

string_April#:
x7131:	db "April", 0	; 6: 65 112 114 105 108 0

string_June#:
x7137:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x7142:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x7147:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_September#:
x7154:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_October#:
x7164:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

string_November#:
x7172:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x7181:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x7190:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x7217:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

enMessageList:
x7244:	dw string_no20error# ; 2: 116 28
x7246:	dw string_function20number20invalid# ; 2: 125 28
x7248:	dw string_file20not20found# ; 2: -107 28
x7250:	dw string_path20not20found# ; 2: -92 28
x7252:	dw string_no20handle20available# ; 2: -77 28
x7254:	dw string_access20denied# ; 2: -57 28
x7256:	dw string_out20of20domain# ; 2: -43 28
x7258:	dw string_out20of20range# ; 2: -29 28
x7260:	dw string_invalid20multibyte20sequence# ; 2: -16 28
x7262:	dw string_error20while20opening# ; 2: 11 29
x7264:	dw string_error20while20flushing# ; 2: 31 29
x7266:	dw string_error20while20closing# ; 2: 52 29
x7268:	dw string_open20mode20invalid# ; 2: 72 29
x7270:	dw string_error20while20writing# ; 2: 90 29
x7272:	dw string_error20while20reading# ; 2: 110 29
x7274:	dw string_error20while20seeking# ; 2: -126 29
x7276:	dw string_error20while20telling# ; 2: -106 29
x7278:	dw string_error20while20sizing# ; 2: -86 29
x7280:	dw string_error20while20removing20file# ; 2: -67 29
x7282:	dw string_error20while20renaming20file# ; 2: -41 29

string_no20error#:
x7284:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x7293:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x7317:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x7332:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x7347:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x7367:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x7381:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x7395:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x7408:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x7435:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x7455:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x7476:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x7496:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x7514:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x7534:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x7554:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x7574:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x7594:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x7613:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x7639:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_C#:
x7665:	db "C", 0	; 2: 67 0

string_US#:
x7667:	db "US", 0	; 3: 85 83 0

strchr:	; £temporary4000 = int_to_int i (Signed_Int -> Signed_Char)
x7670:	mov ax, [bp + 8]	; 3: -117 70 8
x7673:	cmp ax, 0	; 3: -125 -8 0
x7676:	jge strchr$1	; 2: 125 4
x7678:	neg ax	; 2: -9 -40
x7680:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary4000
x7682:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x7685:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary4002 = text + index
x7690:	mov si, [bp + 6]	; 3: -117 118 6
x7693:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary4001 -> £temporary4002 = *£temporary4002

strchr$5:	; if £temporary4001 -> £temporary4002 == 0 goto 16
x7696:	cmp byte [si], 0	; 3: -128 60 0
x7699:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary4006 = text + index
x7701:	mov si, [bp + 6]	; 3: -117 118 6
x7704:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary4005 -> £temporary4006 = *£temporary4006

strchr$8:	; if £temporary4005 -> £temporary4006 != c goto 14
x7707:	mov al, [bp + 12]	; 3: -118 70 12
x7710:	cmp [si], al	; 2: 56 4
x7712:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary4009 = text + index
x7714:	mov bx, [bp + 6]	; 3: -117 94 6
x7717:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary4008 -> £temporary4009 = *£temporary4009

strchr$11:	; £temporary4010 = &£temporary4008 -> £temporary4009

strchr$12:	; return_value = £temporary4010

strchr$13:	; return
x7720:	mov ax, [bp]	; 3: -117 70 0
x7723:	mov di, [bp + 4]	; 3: -117 126 4
x7726:	mov bp, [bp + 2]	; 3: -117 110 2
x7729:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x7731:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x7734:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x7736:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x7739:	mov ax, [bp]	; 3: -117 70 0
x7742:	mov di, [bp + 4]	; 3: -117 126 4
x7745:	mov bp, [bp + 2]	; 3: -117 110 2
x7748:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x7750:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x7754:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x7756:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x7760:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 94 30
x7765:	mov [bp + 24], bp	; 3: -119 110 24
x7768:	add bp, 22	; 3: -125 -59 22
x7771:	jmp printChar	; 3: -23 51 -6

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x7774:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x7778:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x7780:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x7784:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 118 30
x7789:	mov [bp + 24], bp	; 3: -119 110 24
x7792:	add bp, 22	; 3: -125 -59 22
x7795:	jmp printChar	; 3: -23 27 -6

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x7798:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x7802:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x7804:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x7809:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x7811:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x7815:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 -107 30
x7820:	mov [bp + 24], bp	; 3: -119 110 24
x7823:	add bp, 22	; 3: -125 -59 22
x7826:	jmp printChar	; 3: -23 -4 -7

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x7829:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x7834:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x7836:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x7840:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 -82 30
x7845:	mov [bp + 24], bp	; 3: -119 110 24
x7848:	add bp, 22	; 3: -125 -59 22
x7851:	jmp printChar	; 3: -23 -29 -7

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x7854:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x7858:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1893 = 88
x7860:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x7862:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1893 = 120
x7864:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1893, offset 6
x7866:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x7869:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 -53 30
x7874:	mov [bp + 24], bp	; 3: -119 110 24
x7877:	add bp, 22	; 3: -125 -59 22
x7880:	jmp printChar	; 3: -23 -58 -7

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x7883:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7888:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x7890:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x7894:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 -28 30
x7899:	mov [bp + 24], bp	; 3: -119 110 24
x7902:	add bp, 22	; 3: -125 -59 22
x7905:	jmp printChar	; 3: -23 -83 -7

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x7908:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x7910:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7914:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x7918:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x7922:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x7926:	mov ax, [bp + 20]	; 3: -117 70 20
x7929:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x7932:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 10 31
x7937:	mov [bp + 24], bp	; 3: -119 110 24
x7940:	add bp, 22	; 3: -125 -59 22
x7943:	nop	; 1: -112
x7944:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x7946:	mov ax, [bp]	; 3: -117 70 0
x7949:	mov di, [bp + 4]	; 3: -117 126 4
x7952:	mov bp, [bp + 2]	; 3: -117 110 2
x7955:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x7957:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7962:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1869 = unsignedValue % base
x7964:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7968:	xor edx, edx	; 3: 102 49 -46
x7971:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1870 = int_to_int £temporary1869 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1870
x7975:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1871 = unsignedValue / base
x7978:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7982:	xor edx, edx	; 3: 102 49 -46
x7985:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1871, offset 6
x7989:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x7993:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x7997:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x8001:	mov ax, [bp + 14]	; 3: -117 70 14
x8004:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x8007:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 85 31
x8012:	mov [bp + 20], bp	; 3: -119 110 20
x8015:	add bp, 18	; 3: -125 -59 18
x8018:	nop	; 1: -112
x8019:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x8021:	mov ax, [bp + 16]	; 3: -117 70 16
x8024:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x8027:	mov ax, [bp + 14]	; 3: -117 70 14
x8030:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x8033:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 111 31
x8038:	mov [bp + 20], bp	; 3: -119 110 20
x8041:	add bp, 18	; 3: -125 -59 18
x8044:	nop	; 1: -112
x8045:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1873 = return_value

printUnsignedLongRec$17:	; c = £temporary1873
x8047:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x8050:	mov al, [bp + 18]	; 3: -118 70 18
x8053:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x8056:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 -122 31
x8061:	mov [bp + 21], bp	; 3: -119 110 21
x8064:	add bp, 19	; 3: -125 -59 19
x8067:	jmp printChar	; 3: -23 11 -7

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x8070:	mov ax, [bp]	; 3: -117 70 0
x8073:	mov di, [bp + 4]	; 3: -117 126 4
x8076:	mov bp, [bp + 2]	; 3: -117 110 2
x8079:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x8081:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x8085:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1859 = digit + 48
x8087:	mov bx, [bp + 6]	; 3: -117 94 6
x8090:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1860 = int_to_int £temporary1859 (Signed_Int -> Signed_Char)
x8093:	cmp bx, 0	; 3: -125 -5 0
x8096:	jge digitToChar$3	; 2: 125 4
x8098:	neg bx	; 2: -9 -37
x8100:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1860

digitToChar$4:	; return
x8102:	mov ax, [bp]	; 3: -117 70 0
x8105:	mov di, [bp + 4]	; 3: -117 126 4
x8108:	mov bp, [bp + 2]	; 3: -117 110 2
x8111:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x8113:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x8117:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1861 = digit - 10
x8119:	mov bx, [bp + 6]	; 3: -117 94 6
x8122:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1862 = £temporary1861 + 65
x8125:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1863 = int_to_int £temporary1862 (Signed_Int -> Signed_Char)
x8128:	cmp bx, 0	; 3: -125 -5 0
x8131:	jge digitToChar$9	; 2: 125 4
x8133:	neg bx	; 2: -9 -37
x8135:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1863

digitToChar$10:	; return
x8137:	mov ax, [bp]	; 3: -117 70 0
x8140:	mov di, [bp + 4]	; 3: -117 126 4
x8143:	mov bp, [bp + 2]	; 3: -117 110 2
x8146:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1864 = digit - 10
x8148:	mov bx, [bp + 6]	; 3: -117 94 6
x8151:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1865 = £temporary1864 + 97
x8154:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1866 = int_to_int £temporary1865 (Signed_Int -> Signed_Char)
x8157:	cmp bx, 0	; 3: -125 -5 0
x8160:	jge digitToChar$14	; 2: 125 4
x8162:	neg bx	; 2: -9 -37
x8164:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1866

digitToChar$15:	; return
x8166:	mov ax, [bp]	; 3: -117 70 0
x8169:	mov di, [bp + 4]	; 3: -117 126 4
x8172:	mov bp, [bp + 2]	; 3: -117 110 2
x8175:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x8177:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x8180:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x8182:	fcompp	; 2: -34 -39
x8184:	fstsw ax	; 3: -101 -33 -32
x8187:	sahf	; 1: -98
x8188:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x8190:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x8194:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 16 32
x8199:	mov [bp + 24], bp	; 3: -119 110 24
x8202:	add bp, 22	; 3: -125 -59 22
x8205:	jmp printChar	; 3: -23 -127 -8

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x8208:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1929 = -longDoubleValue
x8211:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x8213:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x8216:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x8221:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x8226:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1930 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x8229:	fistp dword [container4bytes#]	; 4: -37 30 -119 32
x8233:	mov eax, [container4bytes#]	; 4: 102 -95 -119 32

printLongDoublePlain$14:	; longValue = £temporary1930
x8237:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x8241:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x8245:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x8249:	mov ax, [bp + 14]	; 3: -117 70 14
x8252:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x8255:	mov ax, [bp + 16]	; 3: -117 70 16
x8258:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x8261:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 83 32
x8266:	mov [bp + 28], bp	; 3: -119 110 28
x8269:	add bp, 26	; 3: -125 -59 26
x8272:	jmp printLongInt	; 3: -23 -86 -9

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x8275:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1932 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x8278:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1933 = longDoubleValue - £temporary1932
x8281:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x8283:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x8286:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x8289:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x8292:	mov ax, [bp + 18]	; 3: -117 70 18
x8295:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x8298:	mov ax, [bp + 20]	; 3: -117 70 20
x8301:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x8304:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 126 32
x8309:	mov [bp + 28], bp	; 3: -119 110 28
x8312:	add bp, 26	; 3: -125 -59 26
x8315:	nop	; 1: -112
x8316:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x8318:	mov ax, [bp]	; 3: -117 70 0
x8321:	mov di, [bp + 4]	; 3: -117 126 4
x8324:	mov bp, [bp + 2]	; 3: -117 110 2
x8327:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

container4bytes#:
x8329:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; push float longDoubleValue
x8333:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x8336:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1908 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x8339:	fistp dword [container4bytes#]	; 4: -37 30 -119 32
x8343:	mov eax, [container4bytes#]	; 4: 102 -95 -119 32

printLongDoubleFraction$3:	; £temporary1909 = int_to_float £temporary1908 (Signed_Long_Int -> Long_Double)
x8347:	mov [container4bytes#], eax	; 4: 102 -93 -119 32
x8351:	fild dword [container4bytes#]	; 4: -37 6 -119 32

printLongDoubleFraction$4:	; £temporary1910 = longDoubleValue - £temporary1909
x8355:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x8357:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x8360:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x8364:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 6
x8366:	mov word [bp + 16], 6	; 5: -57 70 16 6 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x8371:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x8375:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x8377:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x8381:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x8383:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x8387:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 -47 32
x8392:	mov [bp + 20], bp	; 3: -119 110 20
x8395:	add bp, 18	; 3: -125 -59 18
x8398:	jmp printChar	; 3: -23 -64 -9

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1916 = precision
x8401:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x8404:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1916 <= 0 goto 35
x8407:	cmp ax, 0	; 3: -125 -8 0
x8410:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; push float 10.0
x8412:	fld qword [float8$10.0#]	; 4: -35 6 45 33

printLongDoubleFraction$18:	; push float longDoubleValue
x8416:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1918 = 10.0 * longDoubleValue
x8419:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; pop float longDoubleValue10
x8421:	fstp qword [bp + 18]	; 3: -35 94 18

printLongDoubleFraction$21:	; push float longDoubleValue10
x8424:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$22:	; £temporary1919 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x8427:	fistp word [container2bytes#]	; 4: -33 30 -112 23
x8431:	mov ax, [container2bytes#]	; 3: -95 -112 23

printLongDoubleFraction$23:	; digitValue = £temporary1919
x8434:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$24:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$25:	; £temporary1920 = digitValue + 48
x8437:	mov ax, [bp + 26]	; 3: -117 70 26
x8440:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$26:	; £temporary1921 = int_to_int £temporary1920 (Signed_Int -> Signed_Char)
x8443:	cmp ax, 0	; 3: -125 -8 0
x8446:	jge printLongDoubleFraction$27	; 2: 125 4
x8448:	neg ax	; 2: -9 -40
x8450:	neg al	; 2: -10 -40

printLongDoubleFraction$27:	; parameter £temporary1921, offset 6
x8452:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$28:	; call function noellipse-noellipse printChar
x8455:	mov word [bp + 28], printLongDoubleFraction$29	; 5: -57 70 28 21 33
x8460:	mov [bp + 30], bp	; 3: -119 110 30
x8463:	add bp, 28	; 3: -125 -59 28
x8466:	jmp printChar	; 3: -23 124 -9

printLongDoubleFraction$29:	; post call

printLongDoubleFraction$30:	; push float longDoubleValue10
x8469:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$31:	; £temporary1923 = int_to_float digitValue (Signed_Int -> Long_Double)
x8472:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$32:	; £temporary1924 = longDoubleValue10 - £temporary1923
x8475:	fsub	; 2: -34 -23

printLongDoubleFraction$33:	; pop float longDoubleValue
x8477:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$34:	; goto 14
x8480:	jmp printLongDoubleFraction$14	; 2: -21 -81

printLongDoubleFraction$35:	; return
x8482:	mov ax, [bp]	; 3: -117 70 0
x8485:	mov di, [bp + 4]	; 3: -117 126 4
x8488:	mov bp, [bp + 2]	; 3: -117 110 2
x8491:	jmp ax	; 2: -1 -32

printLongDoubleFraction$36:	; function end printLongDoubleFraction

float8$10.0#:
x8493:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x8501:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x8504:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x8506:	fcompp	; 2: -34 -39
x8508:	fstsw ax	; 3: -101 -33 -32
x8511:	sahf	; 1: -98
x8512:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x8514:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary829 = -x
x8517:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x8519:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x8521:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary833

fabs$9:	; return
x8524:	mov ax, [bp]	; 3: -117 70 0
x8527:	mov di, [bp + 4]	; 3: -117 126 4
x8530:	mov bp, [bp + 2]	; 3: -117 110 2
x8533:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x8535:	mov ax, [bp + 6]	; 3: -117 70 6
x8538:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x8541:	mov word [bp + 8], tolower$3	; 5: -57 70 8 107 33
x8546:	mov [bp + 10], bp	; 3: -119 110 10
x8549:	add bp, 8	; 3: -125 -59 8
x8552:	jmp isupper	; 3: -23 -34 -8

tolower$3:	; post call

tolower$4:	; £temporary463 = return_value

tolower$5:	; if £temporary463 == 0 goto 31
x8555:	cmp bx, 0	; 3: -125 -5 0
x8558:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x8560:	mov word [bp + 8], tolower$8	; 5: -57 70 8 126 33
x8565:	mov [bp + 10], bp	; 3: -119 110 10
x8568:	add bp, 8	; 3: -125 -59 8
x8571:	jmp localeconv	; 3: -23 54 -7

tolower$8:	; post call

tolower$9:	; £temporary464 = return_value

tolower$10:	; localeConvPtr = £temporary464
x8574:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x8577:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x8581:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary466 -> localeConvPtr = *localeConvPtr, offset 12
x8583:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary466 -> localeConvPtr
x8586:	mov ax, [si + 12]	; 3: -117 68 12
x8589:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary467 -> localeConvPtr = *localeConvPtr, offset 14
x8592:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary467 -> localeConvPtr
x8595:	mov ax, [si + 14]	; 3: -117 68 14
x8598:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x8601:	mov ax, [bp + 12]	; 3: -117 70 12
x8604:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x8607:	mov ax, [bp + 6]	; 3: -117 70 6
x8610:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x8613:	mov word [bp + 14], tolower$20	; 5: -57 70 14 -77 33
x8618:	mov [bp + 16], bp	; 3: -119 110 16
x8621:	add bp, 14	; 3: -125 -59 14
x8624:	jmp strchr	; 3: -23 67 -4

tolower$20:	; post call

tolower$21:	; £temporary468 = return_value

tolower$22:	; index = £temporary468 - upperCase
x8627:	sub bx, [bp + 12]	; 3: 43 94 12
x8630:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary471 = lowerCase + index
x8633:	mov si, [bp + 10]	; 3: -117 118 10
x8636:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary470 -> £temporary471 = *£temporary471

tolower$25:	; £temporary472 = int_to_int £temporary470 -> £temporary471 (Signed_Char -> Signed_Int)
x8639:	mov bl, [si]	; 2: -118 28
x8641:	and bx, 255	; 4: -127 -29 -1 0
x8645:	cmp bl, 0	; 3: -128 -5 0
x8648:	jge tolower$26	; 2: 125 4
x8650:	neg bl	; 2: -10 -37
x8652:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary472

tolower$27:	; return
x8654:	mov ax, [bp]	; 3: -117 70 0
x8657:	mov di, [bp + 4]	; 3: -117 126 4
x8660:	mov bp, [bp + 2]	; 3: -117 110 2
x8663:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary473 = c + 32
x8665:	mov bx, [bp + 6]	; 3: -117 94 6
x8668:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary473

tolower$30:	; return
x8671:	mov ax, [bp]	; 3: -117 70 0
x8674:	mov di, [bp + 4]	; 3: -117 126 4
x8677:	mov bp, [bp + 2]	; 3: -117 110 2
x8680:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x8682:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x8685:	mov ax, [bp]	; 3: -117 70 0
x8688:	mov di, [bp + 4]	; 3: -117 126 4
x8691:	mov bp, [bp + 2]	; 3: -117 110 2
x8694:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x8696:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x8699:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x8701:	fcompp	; 2: -34 -39
x8703:	fstsw ax	; 3: -101 -33 -32
x8706:	sahf	; 1: -98
x8707:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x8709:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x8713:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 23 34
x8718:	mov [bp + 26], bp	; 3: -119 110 26
x8721:	add bp, 24	; 3: -125 -59 24
x8724:	jmp printChar	; 3: -23 122 -10

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x8727:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x8729:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x8732:	mov ax, [bp + 20]	; 3: -117 70 20
x8735:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x8738:	mov ax, [bp + 18]	; 3: -117 70 18
x8741:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x8744:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 54 34
x8749:	mov [bp + 26], bp	; 3: -119 110 26
x8752:	add bp, 24	; 3: -125 -59 24
x8755:	jmp printLongDoubleFraction	; 3: -23 87 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x8758:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x8762:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary1949 = 69
x8764:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x8766:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary1949 = 101
x8768:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary1949, offset 6
x8770:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x8773:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 83 34
x8778:	mov [bp + 26], bp	; 3: -119 110 26
x8781:	add bp, 24	; 3: -125 -59 24
x8784:	jmp printChar	; 3: -23 62 -10

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x8787:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x8791:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 101 34
x8796:	mov [bp + 26], bp	; 3: -119 110 26
x8799:	add bp, 24	; 3: -125 -59 24
x8802:	jmp printChar	; 3: -23 44 -10

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x8805:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x8808:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x8811:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x8813:	fcompp	; 2: -34 -39
x8815:	fstsw ax	; 3: -101 -33 -32
x8818:	sahf	; 1: -98
x8819:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x8821:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x8825:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 -121 34
x8830:	mov [bp + 26], bp	; 3: -119 110 26
x8833:	add bp, 24	; 3: -125 -59 24
x8836:	jmp printChar	; 3: -23 10 -10

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x8839:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary1954 = -value
x8842:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x8844:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x8847:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x8850:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x8853:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 -93 34
x8858:	mov [bp + 26], bp	; 3: -119 110 26
x8861:	add bp, 24	; 3: -125 -59 24
x8864:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary1955 = return_value

printLongDoubleExpo$43:	; £temporary1956 = float_to_int £temporary1955 (Double -> Signed_Int)
x8867:	fistp word [container2bytes#]	; 4: -33 30 -112 23
x8871:	mov ax, [container2bytes#]	; 3: -95 -112 23

printLongDoubleExpo$44:	; expo = £temporary1956
x8874:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x8877:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x8880:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x8883:	fld qword [float8$10.0#]	; 4: -35 6 45 33

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x8887:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary1957 = int_to_float expo (Signed_Int -> Double)
x8890:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary1957, offset 14
x8893:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x8896:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -50 34
x8901:	mov [bp + 36], bp	; 3: -119 110 36
x8904:	add bp, 34	; 3: -125 -59 34
x8907:	jmp pow	; 3: -23 -18 1

printLongDoubleExpo$52:	; post call
x8910:	fstp qword [bp + 34]	; 3: -35 94 34
x8913:	fld qword [bp + 26]	; 3: -35 70 26
x8916:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary1958 = return_value

printLongDoubleExpo$54:	; £temporary1959 = value / £temporary1958
x8919:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x8921:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x8924:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x8927:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x8930:	mov ax, [bp + 14]	; 3: -117 70 14
x8933:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x8936:	mov ax, [bp + 16]	; 3: -117 70 16
x8939:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x8942:	mov ax, [bp + 18]	; 3: -117 70 18
x8945:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x8948:	mov ax, [bp + 20]	; 3: -117 70 20
x8951:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x8954:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 8 35
x8959:	mov [bp + 28], bp	; 3: -119 110 28
x8962:	add bp, 26	; 3: -125 -59 26
x8965:	jmp printLongDoublePlain	; 3: -23 -23 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x8968:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x8972:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary1965 = 69
x8974:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x8976:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary1965 = 101
x8978:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary1965, offset 6
x8980:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x8983:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 37 35
x8988:	mov [bp + 28], bp	; 3: -119 110 28
x8991:	add bp, 26	; 3: -125 -59 26
x8994:	jmp printChar	; 3: -23 108 -11

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary1967 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x8997:	mov ax, [bp + 24]	; 3: -117 70 24
x9000:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9006:	cmp ax, 0	; 3: -125 -8 0
x9009:	jge printLongDoubleExpo$75	; 2: 125 5
x9011:	neg ax	; 2: -9 -40
x9013:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary1967, offset 6
x9016:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x9020:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x9025:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x9030:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 84 35
x9035:	mov [bp + 28], bp	; 3: -119 110 28
x9038:	add bp, 26	; 3: -125 -59 26
x9041:	jmp printLongInt	; 3: -23 -87 -12

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x9044:	mov ax, [bp]	; 3: -117 70 0
x9047:	mov di, [bp + 4]	; 3: -117 126 4
x9050:	mov bp, [bp + 2]	; 3: -117 110 2
x9053:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; call header integral zero 0 stack zero 0

log10$1:	; push float x
x9055:	fld qword [bp + 6]	; 3: -35 70 6

log10$2:	; parameter x, offset 6
x9058:	fstp qword [bp + 20]	; 3: -35 94 20

log10$3:	; call function noellipse-noellipse log
x9061:	mov word [bp + 14], log10$4	; 5: -57 70 14 115 35
x9066:	mov [bp + 16], bp	; 3: -119 110 16
x9069:	add bp, 14	; 3: -125 -59 14
x9072:	nop	; 1: -112
x9073:	jmp log	; 2: -21 25

log10$4:	; post call

log10$5:	; £temporary550 = return_value

log10$6:	; push float 2.30
x9075:	fld qword [float8$2.30#]	; 4: -35 6 -124 35

log10$7:	; £temporary551 = £temporary550 / 2.30
x9079:	fdiv	; 2: -34 -7

log10$8:	; return_value = £temporary551

log10$9:	; return
x9081:	mov ax, [bp]	; 3: -117 70 0
x9084:	mov di, [bp + 4]	; 3: -117 126 4
x9087:	mov bp, [bp + 2]	; 3: -117 110 2
x9090:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$2.30#:
x9092:	dq 2.30	; 8: 102 102 102 102 102 102 2 64

log:	; push float x
x9100:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x9103:	fldz	; 2: -39 -18

log$2:	; if x <= 0 goto 76
x9105:	fcompp	; 2: -34 -39
x9107:	fstsw ax	; 3: -101 -33 -32
x9110:	sahf	; 1: -98
x9111:	jae log$76	; 4: 15 -125 -18 0

log$3:	; n = 0
x9115:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x
x9120:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push 1
x9123:	fld1	; 2: -39 -24

log$6:	; if x <= 1 goto 16
x9125:	fcompp	; 2: -34 -39
x9127:	fstsw ax	; 3: -101 -33 -32
x9130:	sahf	; 1: -98
x9131:	jae log$16	; 2: 115 30

log$7:	; push float x
x9133:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push 1
x9136:	fld1	; 2: -39 -24

log$9:	; if x <= 1 goto 28
x9138:	fcompp	; 2: -34 -39
x9140:	fstsw ax	; 3: -101 -33 -32
x9143:	sahf	; 1: -98
x9144:	jae log$28	; 2: 115 64

log$10:	; push float x
x9146:	fld qword [bp + 6]	; 3: -35 70 6

log$11:	; push float 2.71
x9149:	fld qword [float8$2.71#]	; 4: -35 6 -100 36

log$12:	; £temporary532 = x / 2.71
x9153:	fdiv	; 2: -34 -7

log$13:	; pop float x
x9155:	fstp qword [bp + 6]	; 3: -35 94 6

log$14:	; ++n
x9158:	inc word [bp + 14]	; 3: -1 70 14

log$15:	; goto 7
x9161:	jmp log$7	; 2: -21 -30

log$16:	; push float x
x9163:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 0.3690036900369003690036900369
x9166:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 -92 36

log$18:	; if x >= 0.3690036900369003690036900369 goto 28
x9170:	fcompp	; 2: -34 -39
x9172:	fstsw ax	; 3: -101 -33 -32
x9175:	sahf	; 1: -98
x9176:	jbe log$28	; 2: 118 32

log$19:	; push float x
x9178:	fld qword [bp + 6]	; 3: -35 70 6

log$20:	; push float 0.3690036900369003690036900369
x9181:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 -92 36

log$21:	; if x >= 0.3690036900369003690036900369 goto 28
x9185:	fcompp	; 2: -34 -39
x9187:	fstsw ax	; 3: -101 -33 -32
x9190:	sahf	; 1: -98
x9191:	jbe log$28	; 2: 118 17

log$22:	; push float x
x9193:	fld qword [bp + 6]	; 3: -35 70 6

log$23:	; push float 2.71
x9196:	fld qword [float8$2.71#]	; 4: -35 6 -100 36

log$24:	; £temporary536 = x * 2.71
x9200:	fmul	; 2: -34 -55

log$25:	; pop float x
x9202:	fstp qword [bp + 6]	; 3: -35 94 6

log$26:	; --n
x9205:	dec word [bp + 14]	; 3: -1 78 14

log$27:	; goto 19
x9208:	jmp log$19	; 2: -21 -32

log$28:	; push 1
x9210:	fld1	; 2: -39 -24

log$29:	; pop float index
x9212:	fstp qword [bp + 16]	; 3: -35 94 16

log$30:	; push 0
x9215:	fldz	; 2: -39 -18

log$31:	; pop float sum
x9217:	fstp qword [bp + 32]	; 3: -35 94 32

log$32:	; push 1
x9220:	fld1	; 2: -39 -24

log$33:	; pop float sign
x9222:	fstp qword [bp + 40]	; 3: -35 94 40

log$34:	; push float x
x9225:	fld qword [bp + 6]	; 3: -35 70 6

log$35:	; push 1
x9228:	fld1	; 2: -39 -24

log$36:	; £temporary538 = x - 1
x9230:	fsub	; 2: -34 -23

log$37:	; pop float x_minus_1
x9232:	fstp qword [bp + 48]	; 3: -35 94 48

log$38:	; push float x_minus_1
x9235:	fld qword [bp + 48]	; 3: -35 70 48

log$39:	; pop float power
x9238:	fstp qword [bp + 56]	; 3: -35 94 56

log$40:	; push float sign
x9241:	fld qword [bp + 40]	; 3: -35 70 40

log$41:	; push float power
x9244:	fld qword [bp + 56]	; 3: -35 70 56

log$42:	; £temporary539 = sign * power
x9247:	fmul	; 2: -34 -55

log$43:	; push float index
x9249:	fld qword [bp + 16]	; 3: -35 70 16

log$44:	; push 1
x9252:	fld1	; 2: -39 -24

log$45:	; index = index + 1
x9254:	fadd	; 2: -34 -63

log$46:	; top float index
x9256:	fst qword [bp + 16]	; 3: -35 86 16

log$47:	; push 1
x9259:	fld1	; 2: -39 -24

log$48:	; index = index - 1
x9261:	fsub	; 2: -34 -23

log$49:	; £temporary541 = £temporary539 / £temporary540
x9263:	fdiv	; 2: -34 -7

log$50:	; pop float term
x9265:	fstp qword [bp + 24]	; 3: -35 94 24

log$51:	; push float sum
x9268:	fld qword [bp + 32]	; 3: -35 70 32

log$52:	; push float term
x9271:	fld qword [bp + 24]	; 3: -35 70 24

log$53:	; £temporary542 = sum + term
x9274:	fadd	; 2: -34 -63

log$54:	; pop float sum
x9276:	fstp qword [bp + 32]	; 3: -35 94 32

log$55:	; push float power
x9279:	fld qword [bp + 56]	; 3: -35 70 56

log$56:	; push float x_minus_1
x9282:	fld qword [bp + 48]	; 3: -35 70 48

log$57:	; £temporary543 = power * x_minus_1
x9285:	fmul	; 2: -34 -55

log$58:	; pop float power
x9287:	fstp qword [bp + 56]	; 3: -35 94 56

log$59:	; push float sign
x9290:	fld qword [bp + 40]	; 3: -35 70 40

log$60:	; push float -1.0
x9293:	fld qword [float8$minus1.0#]	; 4: -35 6 -84 36

log$61:	; £temporary544 = sign * -1.0
x9297:	fmul	; 2: -34 -55

log$62:	; pop float sign
x9299:	fstp qword [bp + 40]	; 3: -35 94 40

log$63:	; call header integral zero 0 stack zero 0

log$64:	; push float term
x9302:	fld qword [bp + 24]	; 3: -35 70 24

log$65:	; parameter term, offset 6
x9305:	fstp qword [bp + 70]	; 3: -35 94 70

log$66:	; call function noellipse-noellipse fabs
x9308:	mov word [bp + 64], log$67	; 5: -57 70 64 106 36
x9313:	mov [bp + 66], bp	; 3: -119 110 66
x9316:	add bp, 64	; 3: -125 -59 64
x9319:	jmp fabs	; 3: -23 -53 -4

log$67:	; post call

log$68:	; £temporary545 = return_value

log$69:	; push float 0.000000001
x9322:	fld qword [float8$0.000000001#]	; 4: -35 6 -76 36

log$70:	; if £temporary545 >= 0.000000001 goto 40
x9326:	fcompp	; 2: -34 -39
x9328:	fstsw ax	; 3: -101 -33 -32
x9331:	sahf	; 1: -98
x9332:	jbe log$40	; 2: 118 -93

log$71:	; push float sum
x9334:	fld qword [bp + 32]	; 3: -35 70 32

log$72:	; £temporary547 = int_to_float n (Signed_Int -> Double)
x9337:	fild word [bp + 14]	; 3: -33 70 14

log$73:	; £temporary548 = sum + £temporary547
x9340:	fadd	; 2: -34 -63

log$74:	; return_value = £temporary548

log$75:	; return
x9342:	mov ax, [bp]	; 3: -117 70 0
x9345:	mov di, [bp + 4]	; 3: -117 126 4
x9348:	mov bp, [bp + 2]	; 3: -117 110 2
x9351:	jmp ax	; 2: -1 -32

log$76:	; errno = 6
x9353:	mov word [errno], 6	; 6: -57 6 7 9 6 0

log$77:	; push 0
x9359:	fldz	; 2: -39 -18

log$78:	; return_value = 0

log$79:	; return
x9361:	mov ax, [bp]	; 3: -117 70 0
x9364:	mov di, [bp + 4]	; 3: -117 126 4
x9367:	mov bp, [bp + 2]	; 3: -117 110 2
x9370:	jmp ax	; 2: -1 -32

log$80:	; function end log

float8$2.71#:
x9372:	dq 2.71	; 8: -82 71 -31 122 20 -82 5 64

float8$0.3690036900369003690036900369#:
x9380:	dq 0.3690036900369003690036900369	; 8: -86 -12 51 -89 -63 -99 -41 63

float8$minus1.0#:
x9388:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x9396:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

pow:	; push float x
x9404:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x9407:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x9409:	fcompp	; 2: -34 -39
x9411:	fstsw ax	; 3: -101 -33 -32
x9414:	sahf	; 1: -98
x9415:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x9417:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x9420:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x9423:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x9426:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x9429:	mov word [bp + 30], pow$9	; 5: -57 70 30 -29 36
x9434:	mov [bp + 32], bp	; 3: -119 110 32
x9437:	add bp, 30	; 3: -125 -59 30
x9440:	jmp log	; 3: -23 -87 -2

pow$9:	; post call
x9443:	fstp qword [bp + 30]	; 3: -35 94 30
x9446:	fld qword [bp + 22]	; 3: -35 70 22
x9449:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary554 = return_value

pow$11:	; £temporary555 = y * £temporary554
x9452:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary555, offset 6
x9454:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x9457:	mov word [bp + 22], pow$14	; 5: -57 70 22 -1 36
x9462:	mov [bp + 24], bp	; 3: -119 110 24
x9465:	add bp, 22	; 3: -125 -59 22
x9468:	jmp exp	; 3: -23 102 1

pow$14:	; post call

pow$15:	; £temporary556 = return_value

pow$16:	; return_value = £temporary556

pow$17:	; return
x9471:	mov ax, [bp]	; 3: -117 70 0
x9474:	mov di, [bp + 4]	; 3: -117 126 4
x9477:	mov bp, [bp + 2]	; 3: -117 110 2
x9480:	jmp ax	; 2: -1 -32

pow$18:	; push float x
x9482:	fld qword [bp + 6]	; 3: -35 70 6

pow$19:	; push 0
x9485:	fldz	; 2: -39 -18

pow$20:	; if x != 0 goto 27
x9487:	fcompp	; 2: -34 -39
x9489:	fstsw ax	; 3: -101 -33 -32
x9492:	sahf	; 1: -98
x9493:	jne pow$27	; 2: 117 26

pow$21:	; push float y
x9495:	fld qword [bp + 14]	; 3: -35 70 14

pow$22:	; push 0
x9498:	fldz	; 2: -39 -18

pow$23:	; if y != 0 goto 27
x9500:	fcompp	; 2: -34 -39
x9502:	fstsw ax	; 3: -101 -33 -32
x9505:	sahf	; 1: -98
x9506:	jne pow$27	; 2: 117 13

pow$24:	; push 1
x9508:	fld1	; 2: -39 -24

pow$25:	; return_value = 1

pow$26:	; return
x9510:	mov ax, [bp]	; 3: -117 70 0
x9513:	mov di, [bp + 4]	; 3: -117 126 4
x9516:	mov bp, [bp + 2]	; 3: -117 110 2
x9519:	jmp ax	; 2: -1 -32

pow$27:	; push float x
x9521:	fld qword [bp + 6]	; 3: -35 70 6

pow$28:	; push 0
x9524:	fldz	; 2: -39 -18

pow$29:	; if x != 0 goto 36
x9526:	fcompp	; 2: -34 -39
x9528:	fstsw ax	; 3: -101 -33 -32
x9531:	sahf	; 1: -98
x9532:	jne pow$36	; 2: 117 26

pow$30:	; push float y
x9534:	fld qword [bp + 14]	; 3: -35 70 14

pow$31:	; push 0
x9537:	fldz	; 2: -39 -18

pow$32:	; if y <= 0 goto 36
x9539:	fcompp	; 2: -34 -39
x9541:	fstsw ax	; 3: -101 -33 -32
x9544:	sahf	; 1: -98
x9545:	jae pow$36	; 2: 115 13

pow$33:	; push 0
x9547:	fldz	; 2: -39 -18

pow$34:	; return_value = 0

pow$35:	; return
x9549:	mov ax, [bp]	; 3: -117 70 0
x9552:	mov di, [bp + 4]	; 3: -117 126 4
x9555:	mov bp, [bp + 2]	; 3: -117 110 2
x9558:	jmp ax	; 2: -1 -32

pow$36:	; push float x
x9560:	fld qword [bp + 6]	; 3: -35 70 6

pow$37:	; push 0
x9563:	fldz	; 2: -39 -18

pow$38:	; if x >= 0 goto 90
x9565:	fcompp	; 2: -34 -39
x9567:	fstsw ax	; 3: -101 -33 -32
x9570:	sahf	; 1: -98
x9571:	jbe pow$90	; 4: 15 -122 -25 0

pow$39:	; call header integral zero 0 stack zero 0

pow$40:	; push float y
x9575:	fld qword [bp + 14]	; 3: -35 70 14

pow$41:	; parameter y, offset 6
x9578:	fstp qword [bp + 28]	; 3: -35 94 28

pow$42:	; call function noellipse-noellipse floor
x9581:	mov word [bp + 22], pow$43	; 5: -57 70 22 123 37
x9586:	mov [bp + 24], bp	; 3: -119 110 24
x9589:	add bp, 22	; 3: -125 -59 22
x9592:	jmp floor	; 3: -23 96 1

pow$43:	; post call

pow$44:	; £temporary564 = return_value

pow$45:	; call header integral zero 0 stack no zero 1
x9595:	fstp qword [bp + 22]	; 3: -35 94 22

pow$46:	; push float y
x9598:	fld qword [bp + 14]	; 3: -35 70 14

pow$47:	; parameter y, offset 6
x9601:	fstp qword [bp + 36]	; 3: -35 94 36

pow$48:	; call function noellipse-noellipse ceil
x9604:	mov word [bp + 30], pow$49	; 5: -57 70 30 -110 37
x9609:	mov [bp + 32], bp	; 3: -119 110 32
x9612:	add bp, 30	; 3: -125 -59 30
x9615:	jmp ceil	; 3: -23 -105 1

pow$49:	; post call
x9618:	fstp qword [bp + 30]	; 3: -35 94 30
x9621:	fld qword [bp + 22]	; 3: -35 70 22
x9624:	fld qword [bp + 30]	; 3: -35 70 30

pow$50:	; £temporary565 = return_value

pow$51:	; if £temporary564 != £temporary565 goto 90
x9627:	fcompp	; 2: -34 -39
x9629:	fstsw ax	; 3: -101 -33 -32
x9632:	sahf	; 1: -98
x9633:	jne pow$90	; 4: 15 -123 -87 0

pow$52:	; push float y
x9637:	fld qword [bp + 14]	; 3: -35 70 14

pow$53:	; £temporary568 = float_to_int y (Double -> Signed_Long_Int)
x9640:	fistp dword [container4bytes#]	; 4: -37 30 -119 32
x9644:	mov eax, [container4bytes#]	; 4: 102 -95 -119 32

pow$54:	; long_y = £temporary568
x9648:	mov [bp + 22], eax	; 4: 102 -119 70 22

pow$55:	; £temporary569 = long_y % 2
x9652:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x9656:	xor edx, edx	; 3: 102 49 -46
x9659:	idiv dword [int4$2#]	; 5: 102 -9 62 97 38

pow$56:	; if £temporary569 != 0 goto 73
x9664:	cmp edx, 0	; 4: 102 -125 -6 0
x9668:	jne pow$73	; 2: 117 67

pow$57:	; call header integral zero 0 stack zero 0

pow$58:	; push float y
x9670:	fld qword [bp + 14]	; 3: -35 70 14

pow$59:	; call header integral zero 0 stack no zero 1
x9673:	fstp qword [bp + 26]	; 3: -35 94 26

pow$60:	; push float x
x9676:	fld qword [bp + 6]	; 3: -35 70 6

pow$61:	; £temporary571 = -x
x9679:	fchs	; 2: -39 -32

pow$62:	; parameter £temporary571, offset 6
x9681:	fstp qword [bp + 40]	; 3: -35 94 40

pow$63:	; call function noellipse-noellipse log
x9684:	mov word [bp + 34], pow$64	; 5: -57 70 34 -30 37
x9689:	mov [bp + 36], bp	; 3: -119 110 36
x9692:	add bp, 34	; 3: -125 -59 34
x9695:	jmp log	; 3: -23 -86 -3

pow$64:	; post call
x9698:	fstp qword [bp + 34]	; 3: -35 94 34
x9701:	fld qword [bp + 26]	; 3: -35 70 26
x9704:	fld qword [bp + 34]	; 3: -35 70 34

pow$65:	; £temporary572 = return_value

pow$66:	; £temporary573 = y * £temporary572
x9707:	fmul	; 2: -34 -55

pow$67:	; parameter £temporary573, offset 6
x9709:	fstp qword [bp + 32]	; 3: -35 94 32

pow$68:	; call function noellipse-noellipse exp
x9712:	mov word [bp + 26], pow$69	; 5: -57 70 26 -2 37
x9717:	mov [bp + 28], bp	; 3: -119 110 28
x9720:	add bp, 26	; 3: -125 -59 26
x9723:	nop	; 1: -112
x9724:	jmp exp	; 2: -21 103

pow$69:	; post call

pow$70:	; £temporary574 = return_value

pow$71:	; return_value = £temporary574

pow$72:	; return
x9726:	mov ax, [bp]	; 3: -117 70 0
x9729:	mov di, [bp + 4]	; 3: -117 126 4
x9732:	mov bp, [bp + 2]	; 3: -117 110 2
x9735:	jmp ax	; 2: -1 -32

pow$73:	; call header integral zero 0 stack zero 0

pow$74:	; push float y
x9737:	fld qword [bp + 14]	; 3: -35 70 14

pow$75:	; call header integral zero 0 stack no zero 1
x9740:	fstp qword [bp + 26]	; 3: -35 94 26

pow$76:	; push float x
x9743:	fld qword [bp + 6]	; 3: -35 70 6

pow$77:	; £temporary575 = -x
x9746:	fchs	; 2: -39 -32

pow$78:	; parameter £temporary575, offset 6
x9748:	fstp qword [bp + 40]	; 3: -35 94 40

pow$79:	; call function noellipse-noellipse log
x9751:	mov word [bp + 34], pow$80	; 5: -57 70 34 37 38
x9756:	mov [bp + 36], bp	; 3: -119 110 36
x9759:	add bp, 34	; 3: -125 -59 34
x9762:	jmp log	; 3: -23 103 -3

pow$80:	; post call
x9765:	fstp qword [bp + 34]	; 3: -35 94 34
x9768:	fld qword [bp + 26]	; 3: -35 70 26
x9771:	fld qword [bp + 34]	; 3: -35 70 34

pow$81:	; £temporary576 = return_value

pow$82:	; £temporary577 = y * £temporary576
x9774:	fmul	; 2: -34 -55

pow$83:	; parameter £temporary577, offset 6
x9776:	fstp qword [bp + 32]	; 3: -35 94 32

pow$84:	; call function noellipse-noellipse exp
x9779:	mov word [bp + 26], pow$85	; 5: -57 70 26 65 38
x9784:	mov [bp + 28], bp	; 3: -119 110 28
x9787:	add bp, 26	; 3: -125 -59 26
x9790:	nop	; 1: -112
x9791:	jmp exp	; 2: -21 36

pow$85:	; post call

pow$86:	; £temporary578 = return_value

pow$87:	; £temporary579 = -£temporary578
x9793:	fchs	; 2: -39 -32

pow$88:	; return_value = £temporary579

pow$89:	; return
x9795:	mov ax, [bp]	; 3: -117 70 0
x9798:	mov di, [bp + 4]	; 3: -117 126 4
x9801:	mov bp, [bp + 2]	; 3: -117 110 2
x9804:	jmp ax	; 2: -1 -32

pow$90:	; errno = 6
x9806:	mov word [errno], 6	; 6: -57 6 7 9 6 0

pow$91:	; push 0
x9812:	fldz	; 2: -39 -18

pow$92:	; return_value = 0

pow$93:	; return
x9814:	mov ax, [bp]	; 3: -117 70 0
x9817:	mov di, [bp + 4]	; 3: -117 126 4
x9820:	mov bp, [bp + 2]	; 3: -117 110 2
x9823:	jmp ax	; 2: -1 -32

pow$94:	; function end pow

int4$2#:
x9825:	dd 2	; 4: 2 0 0 0

exp:	; push 1
x9829:	fld1	; 2: -39 -24

exp$1:	; pop float index
x9831:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x9834:	fld1	; 2: -39 -24

exp$3:	; pop float sum
x9836:	fstp qword [bp + 30]	; 3: -35 94 30

exp$4:	; push 1
x9839:	fld1	; 2: -39 -24

exp$5:	; pop float faculty
x9841:	fstp qword [bp + 38]	; 3: -35 94 38

exp$6:	; push float x
x9844:	fld qword [bp + 6]	; 3: -35 70 6

exp$7:	; pop float power
x9847:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x9850:	fld qword [bp + 46]	; 3: -35 70 46

exp$9:	; push float faculty
x9853:	fld qword [bp + 38]	; 3: -35 70 38

exp$10:	; £temporary521 = power / faculty
x9856:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x9858:	fstp qword [bp + 22]	; 3: -35 94 22

exp$12:	; push float sum
x9861:	fld qword [bp + 30]	; 3: -35 70 30

exp$13:	; push float term
x9864:	fld qword [bp + 22]	; 3: -35 70 22

exp$14:	; £temporary522 = sum + term
x9867:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x9869:	fstp qword [bp + 30]	; 3: -35 94 30

exp$16:	; push float power
x9872:	fld qword [bp + 46]	; 3: -35 70 46

exp$17:	; push float x
x9875:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary523 = power * x
x9878:	fmul	; 2: -34 -55

exp$19:	; pop float power
x9880:	fstp qword [bp + 46]	; 3: -35 94 46

exp$20:	; push float faculty
x9883:	fld qword [bp + 38]	; 3: -35 70 38

exp$21:	; push float index
x9886:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x9889:	fld1	; 2: -39 -24

exp$23:	; index = index + 1
x9891:	fadd	; 2: -34 -63

exp$24:	; top float index
x9893:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary525 = faculty * £temporary524
x9896:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x9898:	fstp qword [bp + 38]	; 3: -35 94 38

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x9901:	fld qword [bp + 22]	; 3: -35 70 22

exp$29:	; parameter term, offset 6
x9904:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x9907:	mov word [bp + 54], exp$31	; 5: -57 70 54 -63 38
x9912:	mov [bp + 56], bp	; 3: -119 110 56
x9915:	add bp, 54	; 3: -125 -59 54
x9918:	jmp fabs	; 3: -23 116 -6

exp$31:	; post call

exp$32:	; £temporary526 = return_value

exp$33:	; push float 0.000000001
x9921:	fld qword [float8$0.000000001#]	; 4: -35 6 -76 36

exp$34:	; if £temporary526 >= 0.000000001 goto 8
x9925:	fcompp	; 2: -34 -39
x9927:	fstsw ax	; 3: -101 -33 -32
x9930:	sahf	; 1: -98
x9931:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x9933:	fld qword [bp + 30]	; 3: -35 70 30

exp$36:	; return_value = sum

exp$37:	; return
x9936:	mov ax, [bp]	; 3: -117 70 0
x9939:	mov di, [bp + 4]	; 3: -117 126 4
x9942:	mov bp, [bp + 2]	; 3: -117 110 2
x9945:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

floor:	; push float x
x9947:	fld qword [bp + 6]	; 3: -35 70 6

floor$1:	; push 0
x9950:	fldz	; 2: -39 -18

floor$2:	; if x >= 0 goto 13
x9952:	fcompp	; 2: -34 -39
x9954:	fstsw ax	; 3: -101 -33 -32
x9957:	sahf	; 1: -98
x9958:	jbe floor$13	; 2: 118 35

floor$3:	; call header integral zero 0 stack zero 0

floor$4:	; push float x
x9960:	fld qword [bp + 6]	; 3: -35 70 6

floor$5:	; £temporary805 = -x
x9963:	fchs	; 2: -39 -32

floor$6:	; parameter £temporary805, offset 6
x9965:	fstp qword [bp + 20]	; 3: -35 94 20

floor$7:	; call function noellipse-noellipse ceil
x9968:	mov word [bp + 14], floor$8	; 5: -57 70 14 -2 38
x9973:	mov [bp + 16], bp	; 3: -119 110 16
x9976:	add bp, 14	; 3: -125 -59 14
x9979:	nop	; 1: -112
x9980:	jmp ceil	; 2: -21 43

floor$8:	; post call

floor$9:	; £temporary806 = return_value

floor$10:	; £temporary807 = -£temporary806
x9982:	fchs	; 2: -39 -32

floor$11:	; return_value = £temporary807

floor$12:	; return
x9984:	mov ax, [bp]	; 3: -117 70 0
x9987:	mov di, [bp + 4]	; 3: -117 126 4
x9990:	mov bp, [bp + 2]	; 3: -117 110 2
x9993:	jmp ax	; 2: -1 -32

floor$13:	; push float x
x9995:	fld qword [bp + 6]	; 3: -35 70 6

floor$14:	; £temporary808 = float_to_int x (Double -> Signed_Long_Int)
x9998:	fistp dword [container4bytes#]	; 4: -37 30 -119 32
x10002:	mov eax, [container4bytes#]	; 4: 102 -95 -119 32

floor$15:	; £temporary809 = int_to_float £temporary808 (Signed_Long_Int -> Double)
x10006:	mov [container4bytes#], eax	; 4: 102 -93 -119 32
x10010:	fild dword [container4bytes#]	; 4: -37 6 -119 32

floor$16:	; return_value = £temporary809

floor$17:	; return
x10014:	mov ax, [bp]	; 3: -117 70 0
x10017:	mov di, [bp + 4]	; 3: -117 126 4
x10020:	mov bp, [bp + 2]	; 3: -117 110 2
x10023:	jmp ax	; 2: -1 -32

floor$18:	; function end floor

ceil:	; push float x
x10025:	fld qword [bp + 6]	; 3: -35 70 6

ceil$1:	; push 0
x10028:	fldz	; 2: -39 -18

ceil$2:	; if x >= 0 goto 13
x10030:	fcompp	; 2: -34 -39
x10032:	fstsw ax	; 3: -101 -33 -32
x10035:	sahf	; 1: -98
x10036:	jbe ceil$13	; 2: 118 35

ceil$3:	; call header integral zero 0 stack zero 0

ceil$4:	; push float x
x10038:	fld qword [bp + 6]	; 3: -35 70 6

ceil$5:	; £temporary812 = -x
x10041:	fchs	; 2: -39 -32

ceil$6:	; parameter £temporary812, offset 6
x10043:	fstp qword [bp + 20]	; 3: -35 94 20

ceil$7:	; call function noellipse-noellipse floor
x10046:	mov word [bp + 14], ceil$8	; 5: -57 70 14 76 39
x10051:	mov [bp + 16], bp	; 3: -119 110 16
x10054:	add bp, 14	; 3: -125 -59 14
x10057:	nop	; 1: -112
x10058:	jmp floor	; 2: -21 -113

ceil$8:	; post call

ceil$9:	; £temporary813 = return_value

ceil$10:	; £temporary814 = -£temporary813
x10060:	fchs	; 2: -39 -32

ceil$11:	; return_value = £temporary814

ceil$12:	; return
x10062:	mov ax, [bp]	; 3: -117 70 0
x10065:	mov di, [bp + 4]	; 3: -117 126 4
x10068:	mov bp, [bp + 2]	; 3: -117 110 2
x10071:	jmp ax	; 2: -1 -32

ceil$13:	; push float x
x10073:	fld qword [bp + 6]	; 3: -35 70 6

ceil$14:	; push float 0.999999999999
x10076:	fld qword [float8$0.999999999999#]	; 4: -35 6 125 39

ceil$15:	; £temporary815 = x + 0.999999999999
x10080:	fadd	; 2: -34 -63

ceil$16:	; £temporary816 = float_to_int £temporary815 (Double -> Signed_Long_Int)
x10082:	fistp dword [container4bytes#]	; 4: -37 30 -119 32
x10086:	mov eax, [container4bytes#]	; 4: 102 -95 -119 32

ceil$17:	; £temporary817 = int_to_float £temporary816 (Signed_Long_Int -> Double)
x10090:	mov [container4bytes#], eax	; 4: 102 -93 -119 32
x10094:	fild dword [container4bytes#]	; 4: -37 6 -119 32

ceil$18:	; return_value = £temporary817

ceil$19:	; return
x10098:	mov ax, [bp]	; 3: -117 70 0
x10101:	mov di, [bp + 4]	; 3: -117 126 4
x10104:	mov bp, [bp + 2]	; 3: -117 110 2
x10107:	jmp ax	; 2: -1 -32

ceil$20:	; function end ceil

float8$0.999999999999#:
x10109:	dq 0.999999999999	; 8: -47 -36 -1 -1 -1 -1 -17 63

isdigit:	; if c < 48 goto 4
x10117:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x10121:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x10123:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x10127:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary406 = 1
x10129:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x10132:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary406 = 0
x10134:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary406

isdigit$6:	; return
x10137:	mov ax, [bp]	; 3: -117 70 0
x10140:	mov di, [bp + 4]	; 3: -117 126 4
x10143:	mov bp, [bp + 2]	; 3: -117 110 2
x10146:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

strcpy:	; index = 0
x10148:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcpy$1:	; £temporary3895 = source + index
x10153:	mov si, [bp + 8]	; 3: -117 118 8
x10156:	add si, [bp + 10]	; 3: 3 118 10

strcpy$2:	; £temporary3894 -> £temporary3895 = *£temporary3895

strcpy$3:	; if £temporary3894 -> £temporary3895 == 0 goto 11
x10159:	cmp byte [si], 0	; 3: -128 60 0
x10162:	je strcpy$11	; 2: 116 21

strcpy$4:	; £temporary3899 = target + index
x10164:	mov si, [bp + 6]	; 3: -117 118 6
x10167:	add si, [bp + 10]	; 3: 3 118 10

strcpy$5:	; £temporary3898 -> £temporary3899 = *£temporary3899

strcpy$6:	; £temporary3901 = source + index
x10170:	mov di, [bp + 8]	; 3: -117 126 8
x10173:	add di, [bp + 10]	; 3: 3 126 10

strcpy$7:	; £temporary3900 -> £temporary3901 = *£temporary3901

strcpy$8:	; £temporary3898 -> £temporary3899 = £temporary3900 -> £temporary3901
x10176:	mov al, [di]	; 2: -118 5
x10178:	mov [si], al	; 2: -120 4

strcpy$9:	; ++index
x10180:	inc word [bp + 10]	; 3: -1 70 10

strcpy$10:	; goto 1
x10183:	jmp strcpy$1	; 2: -21 -32

strcpy$11:	; £temporary3903 = target + index
x10185:	mov si, [bp + 6]	; 3: -117 118 6
x10188:	add si, [bp + 10]	; 3: 3 118 10

strcpy$12:	; £temporary3902 -> £temporary3903 = *£temporary3903

strcpy$13:	; £temporary3902 -> £temporary3903 = 0
x10191:	mov byte [si], 0	; 3: -58 4 0

strcpy$14:	; return_value = target
x10194:	mov bx, [bp + 6]	; 3: -117 94 6

strcpy$15:	; return
x10197:	mov ax, [bp]	; 3: -117 70 0
x10200:	mov di, [bp + 4]	; 3: -117 126 4
x10203:	mov bp, [bp + 2]	; 3: -117 110 2
x10206:	jmp ax	; 2: -1 -32

strcpy$16:	; function end strcpy

strncpy:	; index = 0
x10208:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strncpy$1:	; if index >= size goto 12
x10213:	mov ax, [bp + 10]	; 3: -117 70 10
x10216:	cmp [bp + 12], ax	; 3: 57 70 12
x10219:	jge strncpy$12	; 2: 125 32

strncpy$2:	; £temporary3906 = source + index
x10221:	mov si, [bp + 8]	; 3: -117 118 8
x10224:	add si, [bp + 12]	; 3: 3 118 12

strncpy$3:	; £temporary3905 -> £temporary3906 = *£temporary3906

strncpy$4:	; if £temporary3905 -> £temporary3906 == 0 goto 12
x10227:	cmp byte [si], 0	; 3: -128 60 0
x10230:	je strncpy$12	; 2: 116 21

strncpy$5:	; £temporary3911 = target + index
x10232:	mov si, [bp + 6]	; 3: -117 118 6
x10235:	add si, [bp + 12]	; 3: 3 118 12

strncpy$6:	; £temporary3910 -> £temporary3911 = *£temporary3911

strncpy$7:	; £temporary3913 = source + index
x10238:	mov di, [bp + 8]	; 3: -117 126 8
x10241:	add di, [bp + 12]	; 3: 3 126 12

strncpy$8:	; £temporary3912 -> £temporary3913 = *£temporary3913

strncpy$9:	; £temporary3910 -> £temporary3911 = £temporary3912 -> £temporary3913
x10244:	mov al, [di]	; 2: -118 5
x10246:	mov [si], al	; 2: -120 4

strncpy$10:	; ++index
x10248:	inc word [bp + 12]	; 3: -1 70 12

strncpy$11:	; goto 1
x10251:	jmp strncpy$1	; 2: -21 -40

strncpy$12:	; if index >= size goto 18
x10253:	mov ax, [bp + 10]	; 3: -117 70 10
x10256:	cmp [bp + 12], ax	; 3: 57 70 12
x10259:	jge strncpy$18	; 2: 125 14

strncpy$13:	; £temporary3917 = target + index
x10261:	mov si, [bp + 6]	; 3: -117 118 6
x10264:	add si, [bp + 12]	; 3: 3 118 12

strncpy$14:	; £temporary3916 -> £temporary3917 = *£temporary3917

strncpy$15:	; £temporary3916 -> £temporary3917 = 0
x10267:	mov byte [si], 0	; 3: -58 4 0

strncpy$16:	; ++index
x10270:	inc word [bp + 12]	; 3: -1 70 12

strncpy$17:	; goto 12
x10273:	jmp strncpy$12	; 2: -21 -22

strncpy$18:	; return_value = target
x10275:	mov bx, [bp + 6]	; 3: -117 94 6

strncpy$19:	; return
x10278:	mov ax, [bp]	; 3: -117 70 0
x10281:	mov di, [bp + 4]	; 3: -117 126 4
x10284:	mov bp, [bp + 2]	; 3: -117 110 2
x10287:	jmp ax	; 2: -1 -32

strncpy$20:	; function end strncpy

strcat:	; call header integral zero 0 stack zero 0

strcat$1:	; parameter target, offset 6
x10289:	mov ax, [bp + 6]	; 3: -117 70 6
x10292:	mov [bp + 18], ax	; 3: -119 70 18

strcat$2:	; call function noellipse-noellipse strlen
x10295:	mov word [bp + 12], strcat$3	; 5: -57 70 12 69 40
x10300:	mov [bp + 14], bp	; 3: -119 110 14
x10303:	add bp, 12	; 3: -125 -59 12
x10306:	jmp strlen	; 3: -23 -35 -32

strcat$3:	; post call

strcat$4:	; £temporary3918 = return_value

strcat$5:	; targetLength = £temporary3918
x10309:	mov [bp + 12], bx	; 3: -119 94 12

strcat$6:	; index = 0
x10312:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcat$7:	; £temporary3920 = source + index
x10317:	mov si, [bp + 8]	; 3: -117 118 8
x10320:	add si, [bp + 10]	; 3: 3 118 10

strcat$8:	; £temporary3919 -> £temporary3920 = *£temporary3920

strcat$9:	; if £temporary3919 -> £temporary3920 == 0 goto 18
x10323:	cmp byte [si], 0	; 3: -128 60 0
x10326:	je strcat$18	; 2: 116 26

strcat$10:	; £temporary3923 = targetLength + index
x10328:	mov ax, [bp + 12]	; 3: -117 70 12
x10331:	add ax, [bp + 10]	; 3: 3 70 10

strcat$11:	; £temporary3925 = target + £temporary3923
x10334:	mov si, [bp + 6]	; 3: -117 118 6
x10337:	add si, ax	; 2: 1 -58

strcat$12:	; £temporary3924 -> £temporary3925 = *£temporary3925

strcat$13:	; £temporary3927 = source + index
x10339:	mov di, [bp + 8]	; 3: -117 126 8
x10342:	add di, [bp + 10]	; 3: 3 126 10

strcat$14:	; £temporary3926 -> £temporary3927 = *£temporary3927

strcat$15:	; £temporary3924 -> £temporary3925 = £temporary3926 -> £temporary3927
x10345:	mov al, [di]	; 2: -118 5
x10347:	mov [si], al	; 2: -120 4

strcat$16:	; ++index
x10349:	inc word [bp + 10]	; 3: -1 70 10

strcat$17:	; goto 7
x10352:	jmp strcat$7	; 2: -21 -37

strcat$18:	; £temporary3928 = targetLength + index
x10354:	mov ax, [bp + 12]	; 3: -117 70 12
x10357:	add ax, [bp + 10]	; 3: 3 70 10

strcat$19:	; £temporary3930 = target + £temporary3928
x10360:	mov si, [bp + 6]	; 3: -117 118 6
x10363:	add si, ax	; 2: 1 -58

strcat$20:	; £temporary3929 -> £temporary3930 = *£temporary3930

strcat$21:	; £temporary3929 -> £temporary3930 = 0
x10365:	mov byte [si], 0	; 3: -58 4 0

strcat$22:	; return_value = target
x10368:	mov bx, [bp + 6]	; 3: -117 94 6

strcat$23:	; return
x10371:	mov ax, [bp]	; 3: -117 70 0
x10374:	mov di, [bp + 4]	; 3: -117 126 4
x10377:	mov bp, [bp + 2]	; 3: -117 110 2
x10380:	jmp ax	; 2: -1 -32

strcat$24:	; function end strcat

strncat:	; call header integral zero 0 stack zero 0

strncat$1:	; parameter target, offset 6
x10382:	mov ax, [bp + 6]	; 3: -117 70 6
x10385:	mov [bp + 20], ax	; 3: -119 70 20

strncat$2:	; call function noellipse-noellipse strlen
x10388:	mov word [bp + 14], strncat$3	; 5: -57 70 14 -94 40
x10393:	mov [bp + 16], bp	; 3: -119 110 16
x10396:	add bp, 14	; 3: -125 -59 14
x10399:	jmp strlen	; 3: -23 -128 -32

strncat$3:	; post call

strncat$4:	; £temporary3932 = return_value

strncat$5:	; targetLength = £temporary3932
x10402:	mov [bp + 14], bx	; 3: -119 94 14

strncat$6:	; index = 0
x10405:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strncat$7:	; £temporary3933 = size - 1
x10410:	mov ax, [bp + 10]	; 3: -117 70 10
x10413:	dec ax	; 1: 72

strncat$8:	; if index >= £temporary3933 goto 20
x10414:	cmp [bp + 12], ax	; 3: 57 70 12
x10417:	jge strncat$20	; 2: 125 37

strncat$9:	; £temporary3936 = source + index
x10419:	mov si, [bp + 8]	; 3: -117 118 8
x10422:	add si, [bp + 12]	; 3: 3 118 12

strncat$10:	; £temporary3935 -> £temporary3936 = *£temporary3936

strncat$11:	; if £temporary3935 -> £temporary3936 == 0 goto 20
x10425:	cmp byte [si], 0	; 3: -128 60 0
x10428:	je strncat$20	; 2: 116 26

strncat$12:	; £temporary3940 = targetLength + index
x10430:	mov ax, [bp + 14]	; 3: -117 70 14
x10433:	add ax, [bp + 12]	; 3: 3 70 12

strncat$13:	; £temporary3942 = target + £temporary3940
x10436:	mov si, [bp + 6]	; 3: -117 118 6
x10439:	add si, ax	; 2: 1 -58

strncat$14:	; £temporary3941 -> £temporary3942 = *£temporary3942

strncat$15:	; £temporary3944 = source + index
x10441:	mov di, [bp + 8]	; 3: -117 126 8
x10444:	add di, [bp + 12]	; 3: 3 126 12

strncat$16:	; £temporary3943 -> £temporary3944 = *£temporary3944

strncat$17:	; £temporary3941 -> £temporary3942 = £temporary3943 -> £temporary3944
x10447:	mov al, [di]	; 2: -118 5
x10449:	mov [si], al	; 2: -120 4

strncat$18:	; ++index
x10451:	inc word [bp + 12]	; 3: -1 70 12

strncat$19:	; goto 7
x10454:	jmp strncat$7	; 2: -21 -46

strncat$20:	; £temporary3945 = targetLength + size
x10456:	mov ax, [bp + 14]	; 3: -117 70 14
x10459:	add ax, [bp + 10]	; 3: 3 70 10

strncat$21:	; £temporary3946 = £temporary3945 - 1
x10462:	dec ax	; 1: 72

strncat$22:	; £temporary3948 = target + £temporary3946
x10463:	mov si, [bp + 6]	; 3: -117 118 6
x10466:	add si, ax	; 2: 1 -58

strncat$23:	; £temporary3947 -> £temporary3948 = *£temporary3948

strncat$24:	; £temporary3947 -> £temporary3948 = 0
x10468:	mov byte [si], 0	; 3: -58 4 0

strncat$25:	; return_value = target
x10471:	mov bx, [bp + 6]	; 3: -117 94 6

strncat$26:	; return
x10474:	mov ax, [bp]	; 3: -117 70 0
x10477:	mov di, [bp + 4]	; 3: -117 126 4
x10480:	mov bp, [bp + 2]	; 3: -117 110 2
x10483:	jmp ax	; 2: -1 -32

strncat$27:	; function end strncat

strcmp:	; index = 0
x10485:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcmp$1:	; £temporary3952 = left + index
x10490:	mov si, [bp + 6]	; 3: -117 118 6
x10493:	add si, [bp + 10]	; 3: 3 118 10

strcmp$2:	; £temporary3951 -> £temporary3952 = *£temporary3952

strcmp$3:	; if £temporary3951 -> £temporary3952 != 0 goto 9
x10496:	cmp byte [si], 0	; 3: -128 60 0
x10499:	jne strcmp$9	; 2: 117 25

strcmp$4:	; £temporary3955 = right + index
x10501:	mov si, [bp + 8]	; 3: -117 118 8
x10504:	add si, [bp + 10]	; 3: 3 118 10

strcmp$5:	; £temporary3954 -> £temporary3955 = *£temporary3955

strcmp$6:	; if £temporary3954 -> £temporary3955 != 0 goto 9
x10507:	cmp byte [si], 0	; 3: -128 60 0
x10510:	jne strcmp$9	; 2: 117 14

strcmp$7:	; return_value = 0
x10512:	mov bx, 0	; 3: -69 0 0

strcmp$8:	; return
x10515:	mov ax, [bp]	; 3: -117 70 0
x10518:	mov di, [bp + 4]	; 3: -117 126 4
x10521:	mov bp, [bp + 2]	; 3: -117 110 2
x10524:	jmp ax	; 2: -1 -32

strcmp$9:	; £temporary3959 = left + index
x10526:	mov si, [bp + 6]	; 3: -117 118 6
x10529:	add si, [bp + 10]	; 3: 3 118 10

strcmp$10:	; £temporary3958 -> £temporary3959 = *£temporary3959

strcmp$11:	; if £temporary3958 -> £temporary3959 != 0 goto 14
x10532:	cmp byte [si], 0	; 3: -128 60 0
x10535:	jne strcmp$14	; 2: 117 14

strcmp$12:	; return_value = -1
x10537:	mov bx, -1	; 3: -69 -1 -1

strcmp$13:	; return
x10540:	mov ax, [bp]	; 3: -117 70 0
x10543:	mov di, [bp + 4]	; 3: -117 126 4
x10546:	mov bp, [bp + 2]	; 3: -117 110 2
x10549:	jmp ax	; 2: -1 -32

strcmp$14:	; £temporary3962 = right + index
x10551:	mov si, [bp + 8]	; 3: -117 118 8
x10554:	add si, [bp + 10]	; 3: 3 118 10

strcmp$15:	; £temporary3961 -> £temporary3962 = *£temporary3962

strcmp$16:	; if £temporary3961 -> £temporary3962 != 0 goto 19
x10557:	cmp byte [si], 0	; 3: -128 60 0
x10560:	jne strcmp$19	; 2: 117 14

strcmp$17:	; return_value = 1
x10562:	mov bx, 1	; 3: -69 1 0

strcmp$18:	; return
x10565:	mov ax, [bp]	; 3: -117 70 0
x10568:	mov di, [bp + 4]	; 3: -117 126 4
x10571:	mov bp, [bp + 2]	; 3: -117 110 2
x10574:	jmp ax	; 2: -1 -32

strcmp$19:	; £temporary3965 = left + index
x10576:	mov si, [bp + 6]	; 3: -117 118 6
x10579:	add si, [bp + 10]	; 3: 3 118 10

strcmp$20:	; £temporary3964 -> £temporary3965 = *£temporary3965

strcmp$21:	; £temporary3967 = right + index
x10582:	mov di, [bp + 8]	; 3: -117 126 8
x10585:	add di, [bp + 10]	; 3: 3 126 10

strcmp$22:	; £temporary3966 -> £temporary3967 = *£temporary3967

strcmp$23:	; if £temporary3964 -> £temporary3965 >= £temporary3966 -> £temporary3967 goto 26
x10588:	mov al, [di]	; 2: -118 5
x10590:	cmp [si], al	; 2: 56 4
x10592:	jge strcmp$26	; 2: 125 14

strcmp$24:	; return_value = -1
x10594:	mov bx, -1	; 3: -69 -1 -1

strcmp$25:	; return
x10597:	mov ax, [bp]	; 3: -117 70 0
x10600:	mov di, [bp + 4]	; 3: -117 126 4
x10603:	mov bp, [bp + 2]	; 3: -117 110 2
x10606:	jmp ax	; 2: -1 -32

strcmp$26:	; £temporary3970 = left + index
x10608:	mov si, [bp + 6]	; 3: -117 118 6
x10611:	add si, [bp + 10]	; 3: 3 118 10

strcmp$27:	; £temporary3969 -> £temporary3970 = *£temporary3970

strcmp$28:	; £temporary3972 = right + index
x10614:	mov di, [bp + 8]	; 3: -117 126 8
x10617:	add di, [bp + 10]	; 3: 3 126 10

strcmp$29:	; £temporary3971 -> £temporary3972 = *£temporary3972

strcmp$30:	; if £temporary3969 -> £temporary3970 <= £temporary3971 -> £temporary3972 goto 33
x10620:	mov al, [di]	; 2: -118 5
x10622:	cmp [si], al	; 2: 56 4
x10624:	jle strcmp$33	; 2: 126 14

strcmp$31:	; return_value = 1
x10626:	mov bx, 1	; 3: -69 1 0

strcmp$32:	; return
x10629:	mov ax, [bp]	; 3: -117 70 0
x10632:	mov di, [bp + 4]	; 3: -117 126 4
x10635:	mov bp, [bp + 2]	; 3: -117 110 2
x10638:	jmp ax	; 2: -1 -32

strcmp$33:	; ++index
x10640:	inc word [bp + 10]	; 3: -1 70 10

strcmp$34:	; goto 1
x10643:	jmp strcmp$1	; 3: -23 100 -1

strcmp$35:	; function end strcmp

strncmp:	; index = 0
x10646:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strncmp$1:	; if index >= size goto 36
x10651:	mov ax, [bp + 10]	; 3: -117 70 10
x10654:	cmp [bp + 12], ax	; 3: 57 70 12
x10657:	jge strncmp$36	; 4: 15 -115 -100 0

strncmp$2:	; £temporary3978 = left + index
x10661:	mov si, [bp + 6]	; 3: -117 118 6
x10664:	add si, [bp + 12]	; 3: 3 118 12

strncmp$3:	; £temporary3977 -> £temporary3978 = *£temporary3978

strncmp$4:	; if £temporary3977 -> £temporary3978 != 0 goto 10
x10667:	cmp byte [si], 0	; 3: -128 60 0
x10670:	jne strncmp$10	; 2: 117 25

strncmp$5:	; £temporary3981 = right + index
x10672:	mov si, [bp + 8]	; 3: -117 118 8
x10675:	add si, [bp + 12]	; 3: 3 118 12

strncmp$6:	; £temporary3980 -> £temporary3981 = *£temporary3981

strncmp$7:	; if £temporary3980 -> £temporary3981 != 0 goto 10
x10678:	cmp byte [si], 0	; 3: -128 60 0
x10681:	jne strncmp$10	; 2: 117 14

strncmp$8:	; return_value = 0
x10683:	mov bx, 0	; 3: -69 0 0

strncmp$9:	; return
x10686:	mov ax, [bp]	; 3: -117 70 0
x10689:	mov di, [bp + 4]	; 3: -117 126 4
x10692:	mov bp, [bp + 2]	; 3: -117 110 2
x10695:	jmp ax	; 2: -1 -32

strncmp$10:	; £temporary3985 = left + index
x10697:	mov si, [bp + 6]	; 3: -117 118 6
x10700:	add si, [bp + 12]	; 3: 3 118 12

strncmp$11:	; £temporary3984 -> £temporary3985 = *£temporary3985

strncmp$12:	; if £temporary3984 -> £temporary3985 != 0 goto 15
x10703:	cmp byte [si], 0	; 3: -128 60 0
x10706:	jne strncmp$15	; 2: 117 14

strncmp$13:	; return_value = -1
x10708:	mov bx, -1	; 3: -69 -1 -1

strncmp$14:	; return
x10711:	mov ax, [bp]	; 3: -117 70 0
x10714:	mov di, [bp + 4]	; 3: -117 126 4
x10717:	mov bp, [bp + 2]	; 3: -117 110 2
x10720:	jmp ax	; 2: -1 -32

strncmp$15:	; £temporary3988 = right + index
x10722:	mov si, [bp + 8]	; 3: -117 118 8
x10725:	add si, [bp + 12]	; 3: 3 118 12

strncmp$16:	; £temporary3987 -> £temporary3988 = *£temporary3988

strncmp$17:	; if £temporary3987 -> £temporary3988 != 0 goto 20
x10728:	cmp byte [si], 0	; 3: -128 60 0
x10731:	jne strncmp$20	; 2: 117 14

strncmp$18:	; return_value = 1
x10733:	mov bx, 1	; 3: -69 1 0

strncmp$19:	; return
x10736:	mov ax, [bp]	; 3: -117 70 0
x10739:	mov di, [bp + 4]	; 3: -117 126 4
x10742:	mov bp, [bp + 2]	; 3: -117 110 2
x10745:	jmp ax	; 2: -1 -32

strncmp$20:	; £temporary3991 = left + index
x10747:	mov si, [bp + 6]	; 3: -117 118 6
x10750:	add si, [bp + 12]	; 3: 3 118 12

strncmp$21:	; £temporary3990 -> £temporary3991 = *£temporary3991

strncmp$22:	; £temporary3993 = right + index
x10753:	mov di, [bp + 8]	; 3: -117 126 8
x10756:	add di, [bp + 12]	; 3: 3 126 12

strncmp$23:	; £temporary3992 -> £temporary3993 = *£temporary3993

strncmp$24:	; if £temporary3990 -> £temporary3991 >= £temporary3992 -> £temporary3993 goto 27
x10759:	mov al, [di]	; 2: -118 5
x10761:	cmp [si], al	; 2: 56 4
x10763:	jge strncmp$27	; 2: 125 14

strncmp$25:	; return_value = -1
x10765:	mov bx, -1	; 3: -69 -1 -1

strncmp$26:	; return
x10768:	mov ax, [bp]	; 3: -117 70 0
x10771:	mov di, [bp + 4]	; 3: -117 126 4
x10774:	mov bp, [bp + 2]	; 3: -117 110 2
x10777:	jmp ax	; 2: -1 -32

strncmp$27:	; £temporary3996 = left + index
x10779:	mov si, [bp + 6]	; 3: -117 118 6
x10782:	add si, [bp + 12]	; 3: 3 118 12

strncmp$28:	; £temporary3995 -> £temporary3996 = *£temporary3996

strncmp$29:	; £temporary3998 = right + index
x10785:	mov di, [bp + 8]	; 3: -117 126 8
x10788:	add di, [bp + 12]	; 3: 3 126 12

strncmp$30:	; £temporary3997 -> £temporary3998 = *£temporary3998

strncmp$31:	; if £temporary3995 -> £temporary3996 <= £temporary3997 -> £temporary3998 goto 34
x10791:	mov al, [di]	; 2: -118 5
x10793:	cmp [si], al	; 2: 56 4
x10795:	jle strncmp$34	; 2: 126 14

strncmp$32:	; return_value = 1
x10797:	mov bx, 1	; 3: -69 1 0

strncmp$33:	; return
x10800:	mov ax, [bp]	; 3: -117 70 0
x10803:	mov di, [bp + 4]	; 3: -117 126 4
x10806:	mov bp, [bp + 2]	; 3: -117 110 2
x10809:	jmp ax	; 2: -1 -32

strncmp$34:	; ++index
x10811:	inc word [bp + 12]	; 3: -1 70 12

strncmp$35:	; goto 1
x10814:	jmp strncmp$1	; 3: -23 90 -1

strncmp$36:	; return_value = 0
x10817:	mov bx, 0	; 3: -69 0 0

strncmp$37:	; return
x10820:	mov ax, [bp]	; 3: -117 70 0
x10823:	mov di, [bp + 4]	; 3: -117 126 4
x10826:	mov bp, [bp + 2]	; 3: -117 110 2
x10829:	jmp ax	; 2: -1 -32

strncmp$38:	; function end strncmp

strrchr:	; result = 0
x10831:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strrchr$1:	; £temporary4011 = int_to_int i (Signed_Int -> Signed_Char)
x10836:	mov ax, [bp + 8]	; 3: -117 70 8
x10839:	cmp ax, 0	; 3: -125 -8 0
x10842:	jge strrchr$2	; 2: 125 4
x10844:	neg ax	; 2: -9 -40
x10846:	neg al	; 2: -10 -40

strrchr$2:	; c = £temporary4011
x10848:	mov [bp + 14], al	; 3: -120 70 14

strrchr$3:	; index = 0
x10851:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strrchr$4:	; £temporary4013 = text + index
x10856:	mov si, [bp + 6]	; 3: -117 118 6
x10859:	add si, [bp + 10]	; 3: 3 118 10

strrchr$5:	; £temporary4012 -> £temporary4013 = *£temporary4013

strrchr$6:	; if £temporary4012 -> £temporary4013 == 0 goto 16
x10862:	cmp byte [si], 0	; 3: -128 60 0
x10865:	je strrchr$16	; 2: 116 27

strrchr$7:	; £temporary4017 = text + index
x10867:	mov si, [bp + 6]	; 3: -117 118 6
x10870:	add si, [bp + 10]	; 3: 3 118 10

strrchr$8:	; £temporary4016 -> £temporary4017 = *£temporary4017

strrchr$9:	; if £temporary4016 -> £temporary4017 != c goto 14
x10873:	mov al, [bp + 14]	; 3: -118 70 14
x10876:	cmp [si], al	; 2: 56 4
x10878:	jne strrchr$14	; 2: 117 9

strrchr$10:	; £temporary4020 = text + index
x10880:	mov si, [bp + 6]	; 3: -117 118 6
x10883:	add si, [bp + 10]	; 3: 3 118 10

strrchr$11:	; £temporary4019 -> £temporary4020 = *£temporary4020

strrchr$12:	; £temporary4021 = &£temporary4019 -> £temporary4020

strrchr$13:	; result = £temporary4021
x10886:	mov [bp + 12], si	; 3: -119 118 12

strrchr$14:	; ++index
x10889:	inc word [bp + 10]	; 3: -1 70 10

strrchr$15:	; goto 4
x10892:	jmp strrchr$4	; 2: -21 -38

strrchr$16:	; return_value = result
x10894:	mov bx, [bp + 12]	; 3: -117 94 12

strrchr$17:	; return
x10897:	mov ax, [bp]	; 3: -117 70 0
x10900:	mov di, [bp + 4]	; 3: -117 126 4
x10903:	mov bp, [bp + 2]	; 3: -117 110 2
x10906:	jmp ax	; 2: -1 -32

strrchr$18:	; function end strrchr

memcpy:	; £temporary4135 = int_to_int target (Pointer -> Pointer)
x10908:	mov ax, [bp + 6]	; 3: -117 70 6

memcpy$1:	; charTarget = £temporary4135
x10911:	mov [bp + 12], ax	; 3: -119 70 12

memcpy$2:	; £temporary4136 = int_to_int source (Pointer -> Pointer)
x10914:	mov ax, [bp + 8]	; 3: -117 70 8

memcpy$3:	; charSource = £temporary4136
x10917:	mov [bp + 14], ax	; 3: -119 70 14

memcpy$4:	; index = 0
x10920:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

memcpy$5:	; if index >= size goto 13
x10925:	mov ax, [bp + 10]	; 3: -117 70 10
x10928:	cmp [bp + 16], ax	; 3: 57 70 16
x10931:	jge memcpy$13	; 2: 125 21

memcpy$6:	; £temporary4140 = charTarget + index
x10933:	mov si, [bp + 12]	; 3: -117 118 12
x10936:	add si, [bp + 16]	; 3: 3 118 16

memcpy$7:	; £temporary4139 -> £temporary4140 = *£temporary4140

memcpy$8:	; £temporary4142 = charSource + index
x10939:	mov di, [bp + 14]	; 3: -117 126 14
x10942:	add di, [bp + 16]	; 3: 3 126 16

memcpy$9:	; £temporary4141 -> £temporary4142 = *£temporary4142

memcpy$10:	; £temporary4139 -> £temporary4140 = £temporary4141 -> £temporary4142
x10945:	mov al, [di]	; 2: -118 5
x10947:	mov [si], al	; 2: -120 4

memcpy$11:	; ++index
x10949:	inc word [bp + 16]	; 3: -1 70 16

memcpy$12:	; goto 5
x10952:	jmp memcpy$5	; 2: -21 -29

memcpy$13:	; £temporary4143 = int_to_int target (Pointer -> Pointer)
x10954:	mov bx, [bp + 6]	; 3: -117 94 6

memcpy$14:	; return_value = £temporary4143

memcpy$15:	; return
x10957:	mov ax, [bp]	; 3: -117 70 0
x10960:	mov di, [bp + 4]	; 3: -117 126 4
x10963:	mov bp, [bp + 2]	; 3: -117 110 2
x10966:	jmp ax	; 2: -1 -32

memcpy$16:	; function end memcpy

memmove:	; £temporary4144 = int_to_int target (Pointer -> Pointer)
x10968:	mov ax, [bp + 6]	; 3: -117 70 6

memmove$1:	; charTarget = £temporary4144
x10971:	mov [bp + 12], ax	; 3: -119 70 12

memmove$2:	; £temporary4145 = int_to_int source (Pointer -> Pointer)
x10974:	mov ax, [bp + 8]	; 3: -117 70 8

memmove$3:	; charSource = £temporary4145
x10977:	mov [bp + 14], ax	; 3: -119 70 14

memmove$4:	; if source >= target goto 14
x10980:	mov ax, [bp + 6]	; 3: -117 70 6
x10983:	cmp [bp + 8], ax	; 3: 57 70 8
x10986:	jge memmove$14	; 2: 125 34

memmove$5:	; index = size - 1
x10988:	mov ax, [bp + 10]	; 3: -117 70 10
x10991:	dec ax	; 1: 72
x10992:	mov [bp + 16], ax	; 3: -119 70 16

memmove$6:	; if index < 0 goto 23
x10995:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x10999:	jl memmove$23	; 2: 124 55

memmove$7:	; £temporary4151 = charTarget + index
x11001:	mov si, [bp + 12]	; 3: -117 118 12
x11004:	add si, [bp + 16]	; 3: 3 118 16

memmove$8:	; £temporary4150 -> £temporary4151 = *£temporary4151

memmove$9:	; £temporary4153 = charSource + index
x11007:	mov di, [bp + 14]	; 3: -117 126 14
x11010:	add di, [bp + 16]	; 3: 3 126 16

memmove$10:	; £temporary4152 -> £temporary4153 = *£temporary4153

memmove$11:	; £temporary4150 -> £temporary4151 = £temporary4152 -> £temporary4153
x11013:	mov al, [di]	; 2: -118 5
x11015:	mov [si], al	; 2: -120 4

memmove$12:	; --index
x11017:	dec word [bp + 16]	; 3: -1 78 16

memmove$13:	; goto 6
x11020:	jmp memmove$6	; 2: -21 -27

memmove$14:	; index = 0
x11022:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

memmove$15:	; if index >= size goto 23
x11027:	mov ax, [bp + 10]	; 3: -117 70 10
x11030:	cmp [bp + 16], ax	; 3: 57 70 16
x11033:	jge memmove$23	; 2: 125 21

memmove$16:	; £temporary4157 = charTarget + index
x11035:	mov si, [bp + 12]	; 3: -117 118 12
x11038:	add si, [bp + 16]	; 3: 3 118 16

memmove$17:	; £temporary4156 -> £temporary4157 = *£temporary4157

memmove$18:	; £temporary4159 = charSource + index
x11041:	mov di, [bp + 14]	; 3: -117 126 14
x11044:	add di, [bp + 16]	; 3: 3 126 16

memmove$19:	; £temporary4158 -> £temporary4159 = *£temporary4159

memmove$20:	; £temporary4156 -> £temporary4157 = £temporary4158 -> £temporary4159
x11047:	mov al, [di]	; 2: -118 5
x11049:	mov [si], al	; 2: -120 4

memmove$21:	; ++index
x11051:	inc word [bp + 16]	; 3: -1 70 16

memmove$22:	; goto 15
x11054:	jmp memmove$15	; 2: -21 -29

memmove$23:	; £temporary4160 = int_to_int target (Pointer -> Pointer)
x11056:	mov bx, [bp + 6]	; 3: -117 94 6

memmove$24:	; return_value = £temporary4160

memmove$25:	; return
x11059:	mov ax, [bp]	; 3: -117 70 0
x11062:	mov di, [bp + 4]	; 3: -117 126 4
x11065:	mov bp, [bp + 2]	; 3: -117 110 2
x11068:	jmp ax	; 2: -1 -32

memmove$26:	; function end memmove

memset:	; £temporary4186 = int_to_int block (Pointer -> Pointer)
x11070:	mov ax, [bp + 6]	; 3: -117 70 6

memset$1:	; charBlock = £temporary4186
x11073:	mov [bp + 12], ax	; 3: -119 70 12

memset$2:	; £temporary4187 = int_to_int i (Signed_Int -> Signed_Char)
x11076:	mov ax, [bp + 8]	; 3: -117 70 8
x11079:	cmp ax, 0	; 3: -125 -8 0
x11082:	jge memset$3	; 2: 125 4
x11084:	neg ax	; 2: -9 -40
x11086:	neg al	; 2: -10 -40

memset$3:	; c = £temporary4187
x11088:	mov [bp + 14], al	; 3: -120 70 14

memset$4:	; index = 0
x11091:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

memset$5:	; if index >= size goto 11
x11096:	mov ax, [bp + 10]	; 3: -117 70 10
x11099:	cmp [bp + 15], ax	; 3: 57 70 15
x11102:	jge memset$11	; 2: 125 16

memset$6:	; £temporary4191 = charBlock + index
x11104:	mov si, [bp + 12]	; 3: -117 118 12
x11107:	add si, [bp + 15]	; 3: 3 118 15

memset$7:	; £temporary4190 -> £temporary4191 = *£temporary4191

memset$8:	; £temporary4190 -> £temporary4191 = c
x11110:	mov al, [bp + 14]	; 3: -118 70 14
x11113:	mov [si], al	; 2: -120 4

memset$9:	; ++index
x11115:	inc word [bp + 15]	; 3: -1 70 15

memset$10:	; goto 5
x11118:	jmp memset$5	; 2: -21 -24

memset$11:	; return_value = block
x11120:	mov bx, [bp + 6]	; 3: -117 94 6

memset$12:	; return
x11123:	mov ax, [bp]	; 3: -117 70 0
x11126:	mov di, [bp + 4]	; 3: -117 126 4
x11129:	mov bp, [bp + 2]	; 3: -117 110 2
x11132:	jmp ax	; 2: -1 -32

memset$13:	; function end memset

memchr:	; £temporary4175 = int_to_int block (Pointer -> Pointer)
x11134:	mov ax, [bp + 6]	; 3: -117 70 6

memchr$1:	; charBlock = £temporary4175
x11137:	mov [bp + 14], ax	; 3: -119 70 14

memchr$2:	; £temporary4176 = int_to_int i (Signed_Int -> Signed_Char)
x11140:	mov ax, [bp + 8]	; 3: -117 70 8
x11143:	cmp ax, 0	; 3: -125 -8 0
x11146:	jge memchr$3	; 2: 125 4
x11148:	neg ax	; 2: -9 -40
x11150:	neg al	; 2: -10 -40

memchr$3:	; c = £temporary4176
x11152:	mov [bp + 16], al	; 3: -120 70 16

memchr$4:	; index = 0
x11155:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

memchr$5:	; if index >= size goto 17
x11160:	mov ax, [bp + 10]	; 3: -117 70 10
x11163:	cmp [bp + 12], ax	; 3: 57 70 12
x11166:	jge memchr$17	; 2: 125 35

memchr$6:	; £temporary4180 = charBlock + index
x11168:	mov si, [bp + 14]	; 3: -117 118 14
x11171:	add si, [bp + 12]	; 3: 3 118 12

memchr$7:	; £temporary4179 -> £temporary4180 = *£temporary4180

memchr$8:	; if £temporary4179 -> £temporary4180 != c goto 15
x11174:	mov al, [bp + 16]	; 3: -118 70 16
x11177:	cmp [si], al	; 2: 56 4
x11179:	jne memchr$15	; 2: 117 17

memchr$9:	; £temporary4183 = charBlock + index
x11181:	mov bx, [bp + 14]	; 3: -117 94 14
x11184:	add bx, [bp + 12]	; 3: 3 94 12

memchr$10:	; £temporary4182 -> £temporary4183 = *£temporary4183

memchr$11:	; £temporary4184 = &£temporary4182 -> £temporary4183

memchr$12:	; £temporary4185 = int_to_int £temporary4184 (Pointer -> Pointer)

memchr$13:	; return_value = £temporary4185

memchr$14:	; return
x11187:	mov ax, [bp]	; 3: -117 70 0
x11190:	mov di, [bp + 4]	; 3: -117 126 4
x11193:	mov bp, [bp + 2]	; 3: -117 110 2
x11196:	jmp ax	; 2: -1 -32

memchr$15:	; ++index
x11198:	inc word [bp + 12]	; 3: -1 70 12

memchr$16:	; goto 5
x11201:	jmp memchr$5	; 2: -21 -43

memchr$17:	; return_value = 0
x11203:	mov bx, 0	; 3: -69 0 0

memchr$18:	; return
x11206:	mov ax, [bp]	; 3: -117 70 0
x11209:	mov di, [bp + 4]	; 3: -117 126 4
x11212:	mov bp, [bp + 2]	; 3: -117 110 2
x11215:	jmp ax	; 2: -1 -32

memchr$19:	; function end memchr

memcmp:	; £temporary4161 = int_to_int left (Pointer -> Pointer)
x11217:	mov ax, [bp + 6]	; 3: -117 70 6

memcmp$1:	; charLeft = £temporary4161
x11220:	mov [bp + 12], ax	; 3: -119 70 12

memcmp$2:	; £temporary4162 = int_to_int right (Pointer -> Pointer)
x11223:	mov ax, [bp + 8]	; 3: -117 70 8

memcmp$3:	; charRight = £temporary4162
x11226:	mov [bp + 14], ax	; 3: -119 70 14

memcmp$4:	; index = 0
x11229:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

memcmp$5:	; if index >= size goto 22
x11234:	mov ax, [bp + 10]	; 3: -117 70 10
x11237:	cmp [bp + 16], ax	; 3: 57 70 16
x11240:	jge memcmp$22	; 2: 125 69

memcmp$6:	; £temporary4166 = charLeft + index
x11242:	mov si, [bp + 12]	; 3: -117 118 12
x11245:	add si, [bp + 16]	; 3: 3 118 16

memcmp$7:	; £temporary4165 -> £temporary4166 = *£temporary4166

memcmp$8:	; £temporary4168 = charRight + index
x11248:	mov di, [bp + 14]	; 3: -117 126 14
x11251:	add di, [bp + 16]	; 3: 3 126 16

memcmp$9:	; £temporary4167 -> £temporary4168 = *£temporary4168

memcmp$10:	; if £temporary4165 -> £temporary4166 >= £temporary4167 -> £temporary4168 goto 13
x11254:	mov al, [di]	; 2: -118 5
x11256:	cmp [si], al	; 2: 56 4
x11258:	jge memcmp$13	; 2: 125 14

memcmp$11:	; return_value = -1
x11260:	mov bx, -1	; 3: -69 -1 -1

memcmp$12:	; return
x11263:	mov ax, [bp]	; 3: -117 70 0
x11266:	mov di, [bp + 4]	; 3: -117 126 4
x11269:	mov bp, [bp + 2]	; 3: -117 110 2
x11272:	jmp ax	; 2: -1 -32

memcmp$13:	; £temporary4171 = charLeft + index
x11274:	mov si, [bp + 12]	; 3: -117 118 12
x11277:	add si, [bp + 16]	; 3: 3 118 16

memcmp$14:	; £temporary4170 -> £temporary4171 = *£temporary4171

memcmp$15:	; £temporary4173 = charRight + index
x11280:	mov di, [bp + 14]	; 3: -117 126 14
x11283:	add di, [bp + 16]	; 3: 3 126 16

memcmp$16:	; £temporary4172 -> £temporary4173 = *£temporary4173

memcmp$17:	; if £temporary4170 -> £temporary4171 <= £temporary4172 -> £temporary4173 goto 20
x11286:	mov al, [di]	; 2: -118 5
x11288:	cmp [si], al	; 2: 56 4
x11290:	jle memcmp$20	; 2: 126 14

memcmp$18:	; return_value = 1
x11292:	mov bx, 1	; 3: -69 1 0

memcmp$19:	; return
x11295:	mov ax, [bp]	; 3: -117 70 0
x11298:	mov di, [bp + 4]	; 3: -117 126 4
x11301:	mov bp, [bp + 2]	; 3: -117 110 2
x11304:	jmp ax	; 2: -1 -32

memcmp$20:	; ++index
x11306:	inc word [bp + 16]	; 3: -1 70 16

memcmp$21:	; goto 5
x11309:	jmp memcmp$5	; 2: -21 -77

memcmp$22:	; return_value = 0
x11311:	mov bx, 0	; 3: -69 0 0

memcmp$23:	; return
x11314:	mov ax, [bp]	; 3: -117 70 0
x11317:	mov di, [bp + 4]	; 3: -117 126 4
x11320:	mov bp, [bp + 2]	; 3: -117 110 2
x11323:	jmp ax	; 2: -1 -32

memcmp$24:	; function end memcmp

strspn:	; index = 0
x11325:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strspn$1:	; £temporary4023 = mainString + index
x11330:	mov si, [bp + 6]	; 3: -117 118 6
x11333:	add si, [bp + 10]	; 3: 3 118 10

strspn$2:	; £temporary4022 -> £temporary4023 = *£temporary4023

strspn$3:	; if £temporary4022 -> £temporary4023 == 0 goto 18
x11336:	cmp byte [si], 0	; 3: -128 60 0
x11339:	je strspn$18	; 2: 116 66

strspn$4:	; call header integral zero 0 stack zero 0

strspn$5:	; parameter charSet, offset 6
x11341:	mov ax, [bp + 8]	; 3: -117 70 8
x11344:	mov [bp + 18], ax	; 3: -119 70 18

strspn$6:	; £temporary4027 = mainString + index
x11347:	mov si, [bp + 6]	; 3: -117 118 6
x11350:	add si, [bp + 10]	; 3: 3 118 10

strspn$7:	; £temporary4026 -> £temporary4027 = *£temporary4027

strspn$8:	; £temporary4028 = int_to_int £temporary4026 -> £temporary4027 (Signed_Char -> Signed_Int)
x11353:	mov al, [si]	; 2: -118 4
x11355:	and ax, 255	; 3: 37 -1 0
x11358:	cmp al, 0	; 2: 60 0
x11360:	jge strspn$9	; 2: 125 4
x11362:	neg al	; 2: -10 -40
x11364:	neg ax	; 2: -9 -40

strspn$9:	; parameter £temporary4028, offset 8
x11366:	mov [bp + 20], ax	; 3: -119 70 20

strspn$10:	; call function noellipse-noellipse strchr
x11369:	mov word [bp + 12], strspn$11	; 5: -57 70 12 119 44
x11374:	mov [bp + 14], bp	; 3: -119 110 14
x11377:	add bp, 12	; 3: -125 -59 12
x11380:	jmp strchr	; 3: -23 127 -15

strspn$11:	; post call

strspn$12:	; £temporary4029 = return_value

strspn$13:	; if £temporary4029 != 0 goto 16
x11383:	cmp bx, 0	; 3: -125 -5 0
x11386:	jne strspn$16	; 2: 117 14

strspn$14:	; return_value = index
x11388:	mov bx, [bp + 10]	; 3: -117 94 10

strspn$15:	; return
x11391:	mov ax, [bp]	; 3: -117 70 0
x11394:	mov di, [bp + 4]	; 3: -117 126 4
x11397:	mov bp, [bp + 2]	; 3: -117 110 2
x11400:	jmp ax	; 2: -1 -32

strspn$16:	; ++index
x11402:	inc word [bp + 10]	; 3: -1 70 10

strspn$17:	; goto 1
x11405:	jmp strspn$1	; 2: -21 -77

strspn$18:	; return_value = -1
x11407:	mov bx, -1	; 3: -69 -1 -1

strspn$19:	; return
x11410:	mov ax, [bp]	; 3: -117 70 0
x11413:	mov di, [bp + 4]	; 3: -117 126 4
x11416:	mov bp, [bp + 2]	; 3: -117 110 2
x11419:	jmp ax	; 2: -1 -32

strspn$20:	; function end strspn

strcspn:	; index = 0
x11421:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcspn$1:	; £temporary4034 = mainString + index
x11426:	mov si, [bp + 6]	; 3: -117 118 6
x11429:	add si, [bp + 10]	; 3: 3 118 10

strcspn$2:	; £temporary4033 -> £temporary4034 = *£temporary4034

strcspn$3:	; if £temporary4033 -> £temporary4034 == 0 goto 18
x11432:	cmp byte [si], 0	; 3: -128 60 0
x11435:	je strcspn$18	; 2: 116 66

strcspn$4:	; call header integral zero 0 stack zero 0

strcspn$5:	; parameter charSet, offset 6
x11437:	mov ax, [bp + 8]	; 3: -117 70 8
x11440:	mov [bp + 18], ax	; 3: -119 70 18

strcspn$6:	; £temporary4038 = mainString + index
x11443:	mov si, [bp + 6]	; 3: -117 118 6
x11446:	add si, [bp + 10]	; 3: 3 118 10

strcspn$7:	; £temporary4037 -> £temporary4038 = *£temporary4038

strcspn$8:	; £temporary4039 = int_to_int £temporary4037 -> £temporary4038 (Signed_Char -> Signed_Int)
x11449:	mov al, [si]	; 2: -118 4
x11451:	and ax, 255	; 3: 37 -1 0
x11454:	cmp al, 0	; 2: 60 0
x11456:	jge strcspn$9	; 2: 125 4
x11458:	neg al	; 2: -10 -40
x11460:	neg ax	; 2: -9 -40

strcspn$9:	; parameter £temporary4039, offset 8
x11462:	mov [bp + 20], ax	; 3: -119 70 20

strcspn$10:	; call function noellipse-noellipse strchr
x11465:	mov word [bp + 12], strcspn$11	; 5: -57 70 12 -41 44
x11470:	mov [bp + 14], bp	; 3: -119 110 14
x11473:	add bp, 12	; 3: -125 -59 12
x11476:	jmp strchr	; 3: -23 31 -15

strcspn$11:	; post call

strcspn$12:	; £temporary4040 = return_value

strcspn$13:	; if £temporary4040 == 0 goto 16
x11479:	cmp bx, 0	; 3: -125 -5 0
x11482:	je strcspn$16	; 2: 116 14

strcspn$14:	; return_value = index
x11484:	mov bx, [bp + 10]	; 3: -117 94 10

strcspn$15:	; return
x11487:	mov ax, [bp]	; 3: -117 70 0
x11490:	mov di, [bp + 4]	; 3: -117 126 4
x11493:	mov bp, [bp + 2]	; 3: -117 110 2
x11496:	jmp ax	; 2: -1 -32

strcspn$16:	; ++index
x11498:	inc word [bp + 10]	; 3: -1 70 10

strcspn$17:	; goto 1
x11501:	jmp strcspn$1	; 2: -21 -77

strcspn$18:	; return_value = -1
x11503:	mov bx, -1	; 3: -69 -1 -1

strcspn$19:	; return
x11506:	mov ax, [bp]	; 3: -117 70 0
x11509:	mov di, [bp + 4]	; 3: -117 126 4
x11512:	mov bp, [bp + 2]	; 3: -117 110 2
x11515:	jmp ax	; 2: -1 -32

strcspn$20:	; function end strcspn

strerror:	; call header integral zero 0 stack zero 0

strerror$1:	; call function noellipse-noellipse localeconv
x11517:	mov word [bp + 8], strerror$2	; 5: -57 70 8 11 45
x11522:	mov [bp + 10], bp	; 3: -119 110 10
x11525:	add bp, 8	; 3: -125 -59 8
x11528:	jmp localeconv	; 3: -23 -87 -19

strerror$2:	; post call

strerror$3:	; £temporary4074 = return_value

strerror$4:	; localeConvPtr = £temporary4074
x11531:	mov [bp + 8], bx	; 3: -119 94 8

strerror$5:	; if localeConvPtr == 0 goto 9
x11534:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11538:	je strerror$9	; 2: 116 8

strerror$6:	; £temporary4076 -> localeConvPtr = *localeConvPtr, offset 16
x11540:	mov si, [bp + 8]	; 3: -117 118 8

strerror$7:	; £temporary4080 = £temporary4076 -> localeConvPtr
x11543:	mov ax, [si + 16]	; 3: -117 68 16

strerror$8:	; goto 10
x11546:	jmp strerror$10	; 2: -21 3

strerror$9:	; £temporary4080 = 0
x11548:	mov ax, 0	; 3: -72 0 0

strerror$10:	; messageList = £temporary4080
x11551:	mov [bp + 10], ax	; 3: -119 70 10

strerror$11:	; if messageList == 0 goto 14
x11554:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x11558:	je strerror$14	; 2: 116 5

strerror$12:	; £temporary4085 = messageList
x11560:	mov ax, [bp + 10]	; 3: -117 70 10

strerror$13:	; goto 15
x11563:	jmp strerror$15	; 2: -21 3

strerror$14:	; £temporary4085 = enMessageList
x11565:	mov ax, enMessageList	; 3: -72 76 28

strerror$15:	; messageList = £temporary4085
x11568:	mov [bp + 10], ax	; 3: -119 70 10

strerror$16:	; £temporary4087 = errno * 2
x11571:	mov ax, [bp + 6]	; 3: -117 70 6
x11574:	xor dx, dx	; 2: 49 -46
x11576:	mul word [int2$2#]	; 4: -9 38 78 45

strerror$17:	; £temporary4088 = messageList + £temporary4087
x11580:	mov si, [bp + 10]	; 3: -117 118 10
x11583:	add si, ax	; 2: 1 -58

strerror$18:	; £temporary4086 -> £temporary4088 = *£temporary4088

strerror$19:	; return_value = £temporary4086 -> £temporary4088
x11585:	mov bx, [si]	; 2: -117 28

strerror$20:	; return
x11587:	mov ax, [bp]	; 3: -117 70 0
x11590:	mov di, [bp + 4]	; 3: -117 126 4
x11593:	mov bp, [bp + 2]	; 3: -117 110 2
x11596:	jmp ax	; 2: -1 -32

strerror$21:	; function end strerror

int2$2#:
x11598:	dw 2	; 2: 2 0

strtok:	; if string == 0 goto 37
x11600:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x11604:	je strtok$37	; 4: 15 -124 -106 0

strtok$1:	; £temporary4090 -> string = *string
x11608:	mov si, [bp + 6]	; 3: -117 118 6

strtok$2:	; if £temporary4090 -> string != 0 goto 5
x11611:	cmp byte [si], 0	; 3: -128 60 0
x11614:	jne strtok$5	; 2: 117 14

strtok$3:	; return_value = 0
x11616:	mov bx, 0	; 3: -69 0 0

strtok$4:	; return
x11619:	mov ax, [bp]	; 3: -117 70 0
x11622:	mov di, [bp + 4]	; 3: -117 126 4
x11625:	mov bp, [bp + 2]	; 3: -117 110 2
x11628:	jmp ax	; 2: -1 -32

strtok$5:	; index = 0
x11630:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strtok$6:	; £temporary4093 = string + index
x11635:	mov si, [bp + 6]	; 3: -117 118 6
x11638:	add si, [bp + 10]	; 3: 3 118 10

strtok$7:	; £temporary4092 -> £temporary4093 = *£temporary4093

strtok$8:	; if £temporary4092 -> £temporary4093 == 0 goto 31
x11641:	cmp byte [si], 0	; 3: -128 60 0
x11644:	je strtok$31	; 2: 116 88

strtok$9:	; call header integral zero 0 stack zero 0

strtok$10:	; parameter charSet, offset 6
x11646:	mov ax, [bp + 8]	; 3: -117 70 8
x11649:	mov [bp + 20], ax	; 3: -119 70 20

strtok$11:	; £temporary4097 = string + index
x11652:	mov si, [bp + 6]	; 3: -117 118 6
x11655:	add si, [bp + 10]	; 3: 3 118 10

strtok$12:	; £temporary4096 -> £temporary4097 = *£temporary4097

strtok$13:	; £temporary4098 = int_to_int £temporary4096 -> £temporary4097 (Signed_Char -> Signed_Int)
x11658:	mov al, [si]	; 2: -118 4
x11660:	and ax, 255	; 3: 37 -1 0
x11663:	cmp al, 0	; 2: 60 0
x11665:	jge strtok$14	; 2: 125 4
x11667:	neg al	; 2: -10 -40
x11669:	neg ax	; 2: -9 -40

strtok$14:	; parameter £temporary4098, offset 8
x11671:	mov [bp + 22], ax	; 3: -119 70 22

strtok$15:	; call function noellipse-noellipse strchr
x11674:	mov word [bp + 14], strtok$16	; 5: -57 70 14 -88 45
x11679:	mov [bp + 16], bp	; 3: -119 110 16
x11682:	add bp, 14	; 3: -125 -59 14
x11685:	jmp strchr	; 3: -23 78 -16

strtok$16:	; post call

strtok$17:	; £temporary4099 = return_value

strtok$18:	; if £temporary4099 == 0 goto 29
x11688:	cmp bx, 0	; 3: -125 -5 0
x11691:	je strtok$29	; 2: 116 36

strtok$19:	; £temporary4102 = string + index
x11693:	mov si, [bp + 6]	; 3: -117 118 6
x11696:	add si, [bp + 10]	; 3: 3 118 10

strtok$20:	; £temporary4101 -> £temporary4102 = *£temporary4102

strtok$21:	; £temporary4101 -> £temporary4102 = 0
x11699:	mov byte [si], 0	; 3: -58 4 0

strtok$22:	; £temporary4103 = index + 1
x11702:	mov ax, [bp + 10]	; 3: -117 70 10
x11705:	inc ax	; 1: 64

strtok$23:	; £temporary4105 = string + £temporary4103
x11706:	mov si, [bp + 6]	; 3: -117 118 6
x11709:	add si, ax	; 2: 1 -58

strtok$24:	; £temporary4104 -> £temporary4105 = *£temporary4105

strtok$25:	; £temporary4106 = &£temporary4104 -> £temporary4105

strtok$26:	; token = £temporary4106
x11711:	mov [token], si	; 4: -119 54 -85 46

strtok$27:	; return_value = string
x11715:	mov bx, [bp + 6]	; 3: -117 94 6

strtok$28:	; return
x11718:	mov ax, [bp]	; 3: -117 70 0
x11721:	mov di, [bp + 4]	; 3: -117 126 4
x11724:	mov bp, [bp + 2]	; 3: -117 110 2
x11727:	jmp ax	; 2: -1 -32

strtok$29:	; ++index
x11729:	inc word [bp + 10]	; 3: -1 70 10

strtok$30:	; goto 6
x11732:	jmp strtok$6	; 2: -21 -99

strtok$31:	; £temporary4108 = string + index
x11734:	mov si, [bp + 6]	; 3: -117 118 6
x11737:	add si, [bp + 10]	; 3: 3 118 10

strtok$32:	; £temporary4107 -> £temporary4108 = *£temporary4108

strtok$33:	; £temporary4109 = &£temporary4107 -> £temporary4108

strtok$34:	; token = £temporary4109
x11740:	mov [token], si	; 4: -119 54 -85 46

strtok$35:	; return_value = string
x11744:	mov bx, [bp + 6]	; 3: -117 94 6

strtok$36:	; return
x11747:	mov ax, [bp]	; 3: -117 70 0
x11750:	mov di, [bp + 4]	; 3: -117 126 4
x11753:	mov bp, [bp + 2]	; 3: -117 110 2
x11756:	jmp ax	; 2: -1 -32

strtok$37:	; if token != 0 goto 40
x11758:	cmp word [token], 0	; 5: -125 62 -85 46 0
x11763:	jne strtok$40	; 2: 117 14

strtok$38:	; return_value = 0
x11765:	mov bx, 0	; 3: -69 0 0

strtok$39:	; return
x11768:	mov ax, [bp]	; 3: -117 70 0
x11771:	mov di, [bp + 4]	; 3: -117 126 4
x11774:	mov bp, [bp + 2]	; 3: -117 110 2
x11777:	jmp ax	; 2: -1 -32

strtok$40:	; if (token,0) != 0 goto 43
x11779:	mov si, [token]	; 4: -117 54 -85 46
x11783:	cmp byte [si], 0	; 3: -128 60 0
x11786:	jne strtok$43	; 2: 117 14

strtok$41:	; return_value = 0
x11788:	mov bx, 0	; 3: -69 0 0

strtok$42:	; return
x11791:	mov ax, [bp]	; 3: -117 70 0
x11794:	mov di, [bp + 4]	; 3: -117 126 4
x11797:	mov bp, [bp + 2]	; 3: -117 110 2
x11800:	jmp ax	; 2: -1 -32

strtok$43:	; index = 0
x11802:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strtok$44:	; £temporary4114 = token + index
x11807:	mov si, [token]	; 4: -117 54 -85 46
x11811:	add si, [bp + 10]	; 3: 3 118 10

strtok$45:	; £temporary4113 -> £temporary4114 = *£temporary4114

strtok$46:	; if £temporary4113 -> £temporary4114 == 0 goto 70
x11814:	cmp byte [si], 0	; 3: -128 60 0
x11817:	je strtok$70	; 2: 116 97

strtok$47:	; call header integral zero 0 stack zero 0

strtok$48:	; parameter charSet, offset 6
x11819:	mov ax, [bp + 8]	; 3: -117 70 8
x11822:	mov [bp + 20], ax	; 3: -119 70 20

strtok$49:	; £temporary4118 = token + index
x11825:	mov si, [token]	; 4: -117 54 -85 46
x11829:	add si, [bp + 10]	; 3: 3 118 10

strtok$50:	; £temporary4117 -> £temporary4118 = *£temporary4118

strtok$51:	; £temporary4119 = int_to_int £temporary4117 -> £temporary4118 (Signed_Char -> Signed_Int)
x11832:	mov al, [si]	; 2: -118 4
x11834:	and ax, 255	; 3: 37 -1 0
x11837:	cmp al, 0	; 2: 60 0
x11839:	jge strtok$52	; 2: 125 4
x11841:	neg al	; 2: -10 -40
x11843:	neg ax	; 2: -9 -40

strtok$52:	; parameter £temporary4119, offset 8
x11845:	mov [bp + 22], ax	; 3: -119 70 22

strtok$53:	; call function noellipse-noellipse strchr
x11848:	mov word [bp + 14], strtok$54	; 5: -57 70 14 86 46
x11853:	mov [bp + 16], bp	; 3: -119 110 16
x11856:	add bp, 14	; 3: -125 -59 14
x11859:	jmp strchr	; 3: -23 -96 -17

strtok$54:	; post call

strtok$55:	; £temporary4120 = return_value

strtok$56:	; if £temporary4120 == 0 goto 68
x11862:	cmp bx, 0	; 3: -125 -5 0
x11865:	je strtok$68	; 2: 116 44

strtok$57:	; tokenStart2 = token
x11867:	mov ax, [token]	; 3: -95 -85 46
x11870:	mov [bp + 14], ax	; 3: -119 70 14

strtok$58:	; £temporary4123 = token + index
x11873:	mov si, [token]	; 4: -117 54 -85 46
x11877:	add si, [bp + 10]	; 3: 3 118 10

strtok$59:	; £temporary4122 -> £temporary4123 = *£temporary4123

strtok$60:	; £temporary4122 -> £temporary4123 = 0
x11880:	mov byte [si], 0	; 3: -58 4 0

strtok$61:	; £temporary4124 = index + 1
x11883:	mov ax, [bp + 10]	; 3: -117 70 10
x11886:	inc ax	; 1: 64

strtok$62:	; £temporary4126 = token + £temporary4124
x11887:	mov si, [token]	; 4: -117 54 -85 46
x11891:	add si, ax	; 2: 1 -58

strtok$63:	; £temporary4125 -> £temporary4126 = *£temporary4126

strtok$64:	; £temporary4127 = &£temporary4125 -> £temporary4126

strtok$65:	; token = £temporary4127
x11893:	mov [token], si	; 4: -119 54 -85 46

strtok$66:	; return_value = tokenStart2
x11897:	mov bx, [bp + 14]	; 3: -117 94 14

strtok$67:	; return
x11900:	mov ax, [bp]	; 3: -117 70 0
x11903:	mov di, [bp + 4]	; 3: -117 126 4
x11906:	mov bp, [bp + 2]	; 3: -117 110 2
x11909:	jmp ax	; 2: -1 -32

strtok$68:	; ++index
x11911:	inc word [bp + 10]	; 3: -1 70 10

strtok$69:	; goto 44
x11914:	jmp strtok$44	; 2: -21 -109

strtok$70:	; tokenStart = token
x11916:	mov ax, [token]	; 3: -95 -85 46
x11919:	mov [bp + 12], ax	; 3: -119 70 12

strtok$71:	; £temporary4129 = token + index
x11922:	mov si, [token]	; 4: -117 54 -85 46
x11926:	add si, [bp + 10]	; 3: 3 118 10

strtok$72:	; £temporary4128 -> £temporary4129 = *£temporary4129

strtok$73:	; £temporary4130 = &£temporary4128 -> £temporary4129

strtok$74:	; token = £temporary4130
x11929:	mov [token], si	; 4: -119 54 -85 46

strtok$75:	; return_value = tokenStart
x11933:	mov bx, [bp + 12]	; 3: -117 94 12

strtok$76:	; return
x11936:	mov ax, [bp]	; 3: -117 70 0
x11939:	mov di, [bp + 4]	; 3: -117 126 4
x11942:	mov bp, [bp + 2]	; 3: -117 110 2
x11945:	jmp ax	; 2: -1 -32

strtok$77:	; function end strtok

token:
x11947:	dw 0	; 2: 0 0

$StackTop:
x11949:
