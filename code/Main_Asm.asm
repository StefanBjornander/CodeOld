	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 -93 46
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 -93 46 0 0

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
x418:	jmp strcpy	; 3: -23 -11 37

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
x457:	jmp strncpy	; 3: -23 10 38

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
x544:	jmp strcat	; 3: -23 4 38

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
x611:	jmp strncat	; 3: -23 30 38

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
x712:	jmp strcmp	; 3: -23 32 38

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
x783:	jmp strncmp	; 3: -23 122 38

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
x839:	jmp strchr	; 3: -23 -94 26

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
x924:	jmp strrchr	; 3: -23 -90 38

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
x1009:	jmp strchr	; 3: -23 -8 25

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
x1094:	jmp strrchr	; 3: -23 -4 37

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
x1185:	jmp memcpy	; 3: -23 -18 37

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
x1223:	jmp memmove	; 3: -23 4 38

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
x1261:	jmp memset	; 3: -23 68 38

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
x1359:	jmp memchr	; 3: -23 34 38

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
x1450:	jmp memchr	; 3: -23 -57 37

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
x1550:	jmp memcmp	; 3: -23 -74 37

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
x1612:	jmp strspn	; 3: -23 -28 37

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
x1674:	jmp strcspn	; 3: -23 6 38

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
x1730:	jmp strerror	; 3: -23 46 38

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
x1786:	jmp strtok	; 3: -23 73 38

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
x1862:	jmp strtok	; 3: -23 -3 37

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
x3174:	mov word [g_outChars], 0	; 6: -57 6 112 17 0 0

printFormat$15:	; index = 0
x3180:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2233 = format + index
x3185:	mov si, [bp + 6]	; 3: -117 118 6
x3188:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2232 -> £temporary2233 = *£temporary2233

printFormat$18:	; if £temporary2232 -> £temporary2233 == 0 goto 282
x3191:	cmp byte [si], 0	; 3: -128 60 0
x3194:	je printFormat$282	; 4: 15 -124 -52 4

printFormat$19:	; £temporary2237 = format + index
x3198:	mov si, [bp + 6]	; 3: -117 118 6
x3201:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2236 -> £temporary2237 = *£temporary2237

printFormat$21:	; c = £temporary2236 -> £temporary2237
x3204:	mov al, [si]	; 2: -118 4
x3206:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 260
x3209:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x3213:	je printFormat$260	; 4: 15 -124 81 4

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

printFormat$51:	; goto 237
x3366:	jmp printFormat$237	; 3: -23 70 3

printFormat$52:	; plus = 1
x3369:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 280
x3374:	jmp printFormat$280	; 3: -23 19 4

printFormat$54:	; minus = 1
x3377:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 280
x3382:	jmp printFormat$280	; 3: -23 11 4

printFormat$56:	; space = 1
x3385:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 280
x3390:	jmp printFormat$280	; 3: -23 3 4

printFormat$58:	; zero = 1
x3393:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 280
x3398:	jmp printFormat$280	; 3: -23 -5 3

printFormat$60:	; grid = 1
x3401:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 280
x3406:	jmp printFormat$280	; 3: -23 -13 3

printFormat$62:	; period = 1
x3409:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 280
x3414:	jmp printFormat$280	; 3: -23 -21 3

printFormat$64:	; if period != 0 goto 67
x3417:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x3421:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x3423:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 280
x3428:	jmp printFormat$280	; 3: -23 -35 3

printFormat$67:	; precision = -1
x3431:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 280
x3436:	jmp printFormat$280	; 3: -23 -43 3

printFormat$69:	; shortInt = 1
x3439:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 280
x3444:	jmp printFormat$280	; 3: -23 -51 3

printFormat$71:	; longInt = 1
x3447:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 280
x3452:	jmp printFormat$280	; 3: -23 -59 3

printFormat$73:	; longDouble = 1
x3455:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 280
x3460:	jmp printFormat$280	; 3: -23 -67 3

printFormat$75:	; if minus == 0 goto 106
x3463:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3467:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x3471:	mov ax, [g_outChars]	; 3: -95 112 17
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
x3563:	jmp printArgument	; 3: -23 -122 3

printFormat$95:	; post call

printFormat$96:	; £temporary2244 = return_value

printFormat$97:	; arg_list = £temporary2244
x3566:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2246 = g_outChars - startChars
x3569:	mov ax, [g_outChars]	; 3: -95 112 17
x3572:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x3575:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2246 >= width goto 235
x3578:	cmp ax, [bp + 12]	; 3: 59 70 12
x3581:	jge printFormat$235	; 4: 15 -115 102 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x3585:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x3589:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 19 14
x3594:	mov [bp + 47], bp	; 3: -119 110 47
x3597:	add bp, 45	; 3: -125 -59 45
x3600:	jmp printChar	; 3: -23 116 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x3603:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 182
x3605:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x3609:	je printFormat$182	; 4: 15 -124 82 1

printFormat$107:	; startChars = g_outChars
x3613:	mov ax, [g_outChars]	; 3: -95 112 17
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
x3723:	jmp printArgument	; 3: -23 -26 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x3726:	mov ax, [bp + 43]	; 3: -117 70 43
x3729:	mov [g_outStatus], ax	; 3: -93 28 12

printFormat$132:	; field = g_outChars - startChars
x3732:	mov ax, [g_outChars]	; 3: -95 112 17
x3735:	sub ax, [bp + 41]	; 3: 43 70 41
x3738:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x3741:	mov ax, [bp + 41]	; 3: -117 70 41
x3744:	mov [g_outChars], ax	; 3: -93 112 17

printFormat$134:	; if negative == 0 goto 141
x3747:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x3751:	je printFormat$141	; 2: 116 23

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 45, offset 6
x3753:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$137:	; call function noellipse-noellipse printChar
x3757:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 -69 14
x3762:	mov [bp + 51], bp	; 3: -119 110 51
x3765:	add bp, 49	; 3: -125 -59 49
x3768:	jmp printChar	; 3: -23 -52 9

printFormat$138:	; post call

printFormat$139:	; ++field
x3771:	inc word [bp + 47]	; 3: -1 70 47

printFormat$140:	; goto 154
x3774:	jmp printFormat$154	; 2: -21 57

printFormat$141:	; if plus == 0 goto 148
x3776:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x3780:	je printFormat$148	; 2: 116 23

printFormat$142:	; call header integral zero 0 stack zero 0

printFormat$143:	; parameter 43, offset 6
x3782:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$144:	; call function noellipse-noellipse printChar
x3786:	mov word [bp + 49], printFormat$145	; 5: -57 70 49 -40 14
x3791:	mov [bp + 51], bp	; 3: -119 110 51
x3794:	add bp, 49	; 3: -125 -59 49
x3797:	jmp printChar	; 3: -23 -81 9

printFormat$145:	; post call

printFormat$146:	; ++field
x3800:	inc word [bp + 47]	; 3: -1 70 47

printFormat$147:	; goto 154
x3803:	jmp printFormat$154	; 2: -21 28

printFormat$148:	; if space == 0 goto 154
x3805:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3809:	je printFormat$154	; 2: 116 22

printFormat$149:	; call header integral zero 0 stack zero 0

printFormat$150:	; parameter 32, offset 6
x3811:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$151:	; call function noellipse-noellipse printChar
x3815:	mov word [bp + 49], printFormat$152	; 5: -57 70 49 -11 14
x3820:	mov [bp + 51], bp	; 3: -119 110 51
x3823:	add bp, 49	; 3: -125 -59 49
x3826:	jmp printChar	; 3: -23 -110 9

printFormat$152:	; post call

printFormat$153:	; £temporary2265 = field + 1
x3829:	mov ax, [bp + 47]	; 3: -117 70 47
x3832:	inc ax	; 1: 64

printFormat$154:	; ++field
x3833:	inc word [bp + 47]	; 3: -1 70 47

printFormat$155:	; if £temporary2265 >= width goto 161
x3836:	cmp ax, [bp + 12]	; 3: 59 70 12
x3839:	jge printFormat$161	; 2: 125 20

printFormat$156:	; call header integral zero 0 stack zero 0

printFormat$157:	; parameter 48, offset 6
x3841:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$158:	; call function noellipse-noellipse printChar
x3845:	mov word [bp + 49], printFormat$159	; 5: -57 70 49 19 15
x3850:	mov [bp + 51], bp	; 3: -119 110 51
x3853:	add bp, 49	; 3: -125 -59 49
x3856:	jmp printChar	; 3: -23 116 9

printFormat$159:	; post call

printFormat$160:	; goto 154
x3859:	jmp printFormat$154	; 2: -21 -28

printFormat$161:	; call header integral zero 0 stack zero 0

printFormat$162:	; £temporary2269 = format + index
x3861:	mov si, [bp + 6]	; 3: -117 118 6
x3864:	add si, [bp + 10]	; 3: 3 118 10

printFormat$163:	; £temporary2268 -> £temporary2269 = *£temporary2269

printFormat$164:	; £temporary2270 = &£temporary2268 -> £temporary2269

printFormat$165:	; parameter £temporary2270, offset 6
x3867:	mov [bp + 55], si	; 3: -119 118 55

printFormat$166:	; parameter arg_list, offset 8
x3870:	mov ax, [bp + 8]	; 3: -117 70 8
x3873:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$167:	; parameter 0, offset 10
x3876:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$168:	; parameter 0, offset 12
x3881:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$169:	; parameter grid, offset 14
x3886:	mov ax, [bp + 26]	; 3: -117 70 26
x3889:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$170:	; parameter 0, offset 16
x3892:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$171:	; parameter precision, offset 18
x3897:	mov ax, [bp + 14]	; 3: -117 70 14
x3900:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$172:	; parameter shortInt, offset 20
x3903:	mov ax, [bp + 34]	; 3: -117 70 34
x3906:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$173:	; parameter longInt, offset 22
x3909:	mov ax, [bp + 36]	; 3: -117 70 36
x3912:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$174:	; parameter longDouble, offset 24
x3915:	mov ax, [bp + 38]	; 3: -117 70 38
x3918:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$175:	; parameter 0, offset 26
x3921:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$176:	; parameter 0, offset 28
x3926:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$177:	; call function noellipse-noellipse printArgument
x3931:	mov word [bp + 49], printFormat$178	; 5: -57 70 49 105 15
x3936:	mov [bp + 51], bp	; 3: -119 110 51
x3939:	add bp, 49	; 3: -125 -59 49
x3942:	jmp printArgument	; 3: -23 11 2

printFormat$178:	; post call

printFormat$179:	; £temporary2271 = return_value

printFormat$180:	; arg_list = £temporary2271
x3945:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$181:	; goto 235
x3948:	jmp printFormat$235	; 3: -23 -8 0

printFormat$182:	; startChars = g_outChars
x3951:	mov ax, [g_outChars]	; 3: -95 112 17
x3954:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$183:	; oldOutStatus = g_outStatus
x3957:	mov ax, [g_outStatus]	; 3: -95 28 12
x3960:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$184:	; g_outStatus = 2
x3963:	mov word [g_outStatus], 2	; 6: -57 6 28 12 2 0

printFormat$185:	; call header integral zero 0 stack zero 0

printFormat$186:	; £temporary2273 = format + index
x3969:	mov si, [bp + 6]	; 3: -117 118 6
x3972:	add si, [bp + 10]	; 3: 3 118 10

printFormat$187:	; £temporary2272 -> £temporary2273 = *£temporary2273

printFormat$188:	; £temporary2274 = &£temporary2272 -> £temporary2273

printFormat$189:	; parameter £temporary2274, offset 6
x3975:	mov [bp + 51], si	; 3: -119 118 51

printFormat$190:	; parameter arg_list, offset 8
x3978:	mov ax, [bp + 8]	; 3: -117 70 8
x3981:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$191:	; parameter plus, offset 10
x3984:	mov ax, [bp + 18]	; 3: -117 70 18
x3987:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$192:	; parameter space, offset 12
x3990:	mov ax, [bp + 22]	; 3: -117 70 22
x3993:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$193:	; parameter grid, offset 14
x3996:	mov ax, [bp + 26]	; 3: -117 70 26
x3999:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$194:	; £temporary2275 = &width
x4002:	mov si, bp	; 2: -119 -18
x4004:	add si, 12	; 3: -125 -58 12

printFormat$195:	; parameter £temporary2275, offset 16
x4007:	mov [bp + 61], si	; 3: -119 118 61

printFormat$196:	; parameter precision, offset 18
x4010:	mov ax, [bp + 14]	; 3: -117 70 14
x4013:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$197:	; parameter shortInt, offset 20
x4016:	mov ax, [bp + 34]	; 3: -117 70 34
x4019:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$198:	; parameter longInt, offset 22
x4022:	mov ax, [bp + 36]	; 3: -117 70 36
x4025:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$199:	; parameter longDouble, offset 24
x4028:	mov ax, [bp + 38]	; 3: -117 70 38
x4031:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$200:	; parameter 1, offset 26
x4034:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$201:	; parameter 0, offset 28
x4039:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$202:	; call function noellipse-noellipse printArgument
x4044:	mov word [bp + 45], printFormat$203	; 5: -57 70 45 -38 15
x4049:	mov [bp + 47], bp	; 3: -119 110 47
x4052:	add bp, 45	; 3: -125 -59 45
x4055:	jmp printArgument	; 3: -23 -102 1

printFormat$203:	; post call

printFormat$204:	; g_outStatus = oldOutStatus
x4058:	mov ax, [bp + 43]	; 3: -117 70 43
x4061:	mov [g_outStatus], ax	; 3: -93 28 12

printFormat$205:	; field = g_outChars - startChars
x4064:	mov ax, [g_outChars]	; 3: -95 112 17
x4067:	sub ax, [bp + 41]	; 3: 43 70 41
x4070:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$206:	; g_outChars = startChars
x4073:	mov ax, [bp + 41]	; 3: -117 70 41
x4076:	mov [g_outChars], ax	; 3: -93 112 17

printFormat$207:	; £temporary2278 = field
x4079:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$208:	; ++field
x4082:	inc word [bp + 45]	; 3: -1 70 45

printFormat$209:	; if £temporary2278 >= width goto 215
x4085:	cmp ax, [bp + 12]	; 3: 59 70 12
x4088:	jge printFormat$215	; 2: 125 20

printFormat$210:	; call header integral zero 0 stack zero 0

printFormat$211:	; parameter 32, offset 6
x4090:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$212:	; call function noellipse-noellipse printChar
x4094:	mov word [bp + 47], printFormat$213	; 5: -57 70 47 12 16
x4099:	mov [bp + 49], bp	; 3: -119 110 49
x4102:	add bp, 47	; 3: -125 -59 47
x4105:	jmp printChar	; 3: -23 123 8

printFormat$213:	; post call

printFormat$214:	; goto 207
x4108:	jmp printFormat$207	; 2: -21 -31

printFormat$215:	; call header integral zero 0 stack zero 0

printFormat$216:	; £temporary2282 = format + index
x4110:	mov si, [bp + 6]	; 3: -117 118 6
x4113:	add si, [bp + 10]	; 3: 3 118 10

printFormat$217:	; £temporary2281 -> £temporary2282 = *£temporary2282

printFormat$218:	; £temporary2283 = &£temporary2281 -> £temporary2282

printFormat$219:	; parameter £temporary2283, offset 6
x4116:	mov [bp + 53], si	; 3: -119 118 53

printFormat$220:	; parameter arg_list, offset 8
x4119:	mov ax, [bp + 8]	; 3: -117 70 8
x4122:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$221:	; parameter plus, offset 10
x4125:	mov ax, [bp + 18]	; 3: -117 70 18
x4128:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$222:	; parameter space, offset 12
x4131:	mov ax, [bp + 22]	; 3: -117 70 22
x4134:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$223:	; parameter grid, offset 14
x4137:	mov ax, [bp + 26]	; 3: -117 70 26
x4140:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$224:	; parameter 0, offset 16
x4143:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$225:	; parameter precision, offset 18
x4148:	mov ax, [bp + 14]	; 3: -117 70 14
x4151:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$226:	; parameter shortInt, offset 20
x4154:	mov ax, [bp + 34]	; 3: -117 70 34
x4157:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$227:	; parameter longInt, offset 22
x4160:	mov ax, [bp + 36]	; 3: -117 70 36
x4163:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$228:	; parameter longDouble, offset 24
x4166:	mov ax, [bp + 38]	; 3: -117 70 38
x4169:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$229:	; parameter 1, offset 26
x4172:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$230:	; parameter 0, offset 28
x4177:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$231:	; call function noellipse-noellipse printArgument
x4182:	mov word [bp + 47], printFormat$232	; 5: -57 70 47 100 16
x4187:	mov [bp + 49], bp	; 3: -119 110 49
x4190:	add bp, 47	; 3: -125 -59 47
x4193:	jmp printArgument	; 3: -23 16 1

printFormat$232:	; post call

printFormat$233:	; £temporary2284 = return_value

printFormat$234:	; arg_list = £temporary2284
x4196:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$235:	; percent = 0
x4199:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$236:	; goto 280
x4204:	jmp printFormat$280	; 3: -23 -43 0

printFormat$237:	; value = 0
x4207:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$238:	; call header integral zero 0 stack zero 0

printFormat$239:	; £temporary2287 = int_to_int c (Signed_Char -> Signed_Int)
x4212:	mov al, [bp + 40]	; 3: -118 70 40
x4215:	and ax, 255	; 3: 37 -1 0
x4218:	cmp al, 0	; 2: 60 0
x4220:	jge printFormat$240	; 2: 125 4
x4222:	neg al	; 2: -10 -40
x4224:	neg ax	; 2: -9 -40

printFormat$240:	; parameter £temporary2287, offset 6
x4226:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$241:	; call function noellipse-noellipse isdigit
x4229:	mov word [bp + 43], printFormat$242	; 5: -57 70 43 -109 16
x4234:	mov [bp + 45], bp	; 3: -119 110 45
x4237:	add bp, 43	; 3: -125 -59 43
x4240:	jmp isdigit	; 3: -23 -24 22

printFormat$242:	; post call

printFormat$243:	; £temporary2288 = return_value

printFormat$244:	; if £temporary2288 == 0 goto 254
x4243:	cmp bx, 0	; 3: -125 -5 0
x4246:	je printFormat$254	; 2: 116 49

printFormat$245:	; £temporary2289 = value * 10
x4248:	mov ax, [bp + 41]	; 3: -117 70 41
x4251:	xor dx, dx	; 2: 49 -46
x4253:	imul word [int2$10#]	; 4: -9 46 114 17

printFormat$246:	; £temporary2290 = c - 48
x4257:	mov bl, [bp + 40]	; 3: -118 94 40
x4260:	sub bl, 48	; 3: -128 -21 48

printFormat$247:	; £temporary2291 = int_to_int £temporary2290 (Signed_Char -> Signed_Int)
x4263:	and bx, 255	; 4: -127 -29 -1 0
x4267:	cmp bl, 0	; 3: -128 -5 0
x4270:	jge printFormat$248	; 2: 125 4
x4272:	neg bl	; 2: -10 -37
x4274:	neg bx	; 2: -9 -37

printFormat$248:	; value = £temporary2289 + £temporary2291
x4276:	add ax, bx	; 2: 1 -40
x4278:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$249:	; £temporary2293 = index + 1
x4281:	mov ax, [bp + 10]	; 3: -117 70 10
x4284:	inc ax	; 1: 64

printFormat$250:	; £temporary2295 = format + £temporary2293
x4285:	mov si, [bp + 6]	; 3: -117 118 6
x4288:	add si, ax	; 2: 1 -58

printFormat$251:	; £temporary2294 -> £temporary2295 = *£temporary2295

printFormat$252:	; c = £temporary2294 -> £temporary2295
x4290:	mov al, [si]	; 2: -118 4
x4292:	mov [bp + 40], al	; 3: -120 70 40

printFormat$253:	; goto 238
x4295:	jmp printFormat$238	; 2: -21 -85

printFormat$254:	; --index
x4297:	dec word [bp + 10]	; 3: -1 78 10

printFormat$255:	; if period != 0 goto 258
x4300:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x4304:	jne printFormat$258	; 2: 117 8

printFormat$256:	; width = value
x4306:	mov ax, [bp + 41]	; 3: -117 70 41
x4309:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$257:	; goto 280
x4312:	jmp printFormat$280	; 2: -21 106

printFormat$258:	; precision = value
x4314:	mov ax, [bp + 41]	; 3: -117 70 41
x4317:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$259:	; goto 280
x4320:	jmp printFormat$280	; 2: -21 98

printFormat$260:	; if c != 37 goto 276
x4322:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x4326:	jne printFormat$276	; 2: 117 72

printFormat$261:	; percent = 1
x4328:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$262:	; plus = 0
x4333:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$263:	; minus = 0
x4338:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$264:	; space = 0
x4343:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$265:	; zero = 0
x4348:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$266:	; grid = 0
x4353:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$267:	; widthStar = 0
x4358:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$268:	; period = 0
x4363:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$269:	; precisionStar = 0
x4368:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$270:	; shortInt = 0
x4373:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$271:	; longInt = 0
x4378:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$272:	; longDouble = 0
x4383:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$273:	; width = 0
x4388:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$274:	; precision = 0
x4393:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$275:	; goto 280
x4398:	jmp printFormat$280	; 2: -21 20

printFormat$276:	; call header integral zero 0 stack zero 0

printFormat$277:	; parameter c, offset 6
x4400:	mov al, [bp + 40]	; 3: -118 70 40
x4403:	mov [bp + 47], al	; 3: -120 70 47

printFormat$278:	; call function noellipse-noellipse printChar
x4406:	mov word [bp + 41], printFormat$279	; 5: -57 70 41 68 17
x4411:	mov [bp + 43], bp	; 3: -119 110 43
x4414:	add bp, 41	; 3: -125 -59 41
x4417:	jmp printChar	; 3: -23 67 7

printFormat$279:	; post call

printFormat$280:	; ++index
x4420:	inc word [bp + 10]	; 3: -1 70 10

printFormat$281:	; goto 16
x4423:	jmp printFormat$16	; 3: -23 39 -5

printFormat$282:	; if g_outStatus != 1 goto 288
x4426:	cmp word [g_outStatus], 1	; 5: -125 62 28 12 1
x4431:	jne printFormat$288	; 2: 117 16

printFormat$283:	; £temporary2304 = int_to_int g_outDevice (Pointer -> Pointer)
x4433:	mov ax, [g_outDevice]	; 3: -95 30 12

printFormat$284:	; outString = £temporary2304
x4436:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$285:	; £temporary2306 = outString + g_outChars
x4439:	mov si, [bp + 40]	; 3: -117 118 40
x4442:	add si, [g_outChars]	; 4: 3 54 112 17

printFormat$286:	; £temporary2305 -> £temporary2306 = *£temporary2306

printFormat$287:	; £temporary2305 -> £temporary2306 = 0
x4446:	mov byte [si], 0	; 3: -58 4 0

printFormat$288:	; return_value = g_outChars
x4449:	mov bx, [g_outChars]	; 4: -117 30 112 17

printFormat$289:	; return
x4453:	mov ax, [bp]	; 3: -117 70 0
x4456:	mov di, [bp + 4]	; 3: -117 126 4
x4459:	mov bp, [bp + 2]	; 3: -117 110 2
x4462:	jmp ax	; 2: -1 -32

printFormat$290:	; function end printFormat

g_outChars:
x4464:	db 0, 0	; 2: 0 0

int2$10#:
x4466:	dw 10	; 2: 10 0

printArgument:	; £temporary2006 -> format = *format
x4468:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary2006 -> format
x4471:	mov al, [si]	; 2: -118 4
x4473:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x4476:	mov al, [bp + 30]	; 3: -118 70 30
x4479:	cmp al, 100	; 2: 60 100
x4481:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x4483:	cmp al, 105	; 2: 60 105
x4485:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x4487:	cmp al, 99	; 2: 60 99
x4489:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x4493:	cmp al, 115	; 2: 60 115
x4495:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x4499:	cmp al, 88	; 2: 60 88
x4501:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x4505:	cmp al, 120	; 2: 60 120
x4507:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x4511:	cmp al, 98	; 2: 60 98
x4513:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x4517:	cmp al, 111	; 2: 60 111
x4519:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x4523:	cmp al, 117	; 2: 60 117
x4525:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x4529:	cmp al, 71	; 2: 60 71
x4531:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x4535:	cmp al, 103	; 2: 60 103
x4537:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x4541:	cmp al, 69	; 2: 60 69
x4543:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x4547:	cmp al, 101	; 2: 60 101
x4549:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x4553:	cmp al, 102	; 2: 60 102
x4555:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x4559:	cmp al, 112	; 2: 60 112
x4561:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x4565:	cmp al, 110	; 2: 60 110
x4567:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x4571:	cmp al, 37	; 2: 60 37
x4573:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x4577:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x4580:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x4584:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x4586:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary2008 = arg_list - 2
x4590:	mov si, [bp + 8]	; 3: -117 118 8
x4593:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary2009 = int_to_int £temporary2008 (Signed_Int -> Pointer)

printArgument$25:	; £temporary2010 -> £temporary2009 = *£temporary2009

printArgument$26:	; £temporary2011 = int_to_int £temporary2010 -> £temporary2009 (Signed_Int -> Signed_Short_Int)
x4596:	mov ax, [si]	; 2: -117 4
x4598:	cmp ax, 0	; 3: -125 -8 0
x4601:	jge printArgument$27	; 2: 125 4
x4603:	neg ax	; 2: -9 -40
x4605:	neg al	; 2: -10 -40

printArgument$27:	; £temporary2012 = int_to_int £temporary2011 (Signed_Short_Int -> Signed_Long_Int)
x4607:	and eax, 255	; 6: 102 37 -1 0 0 0
x4613:	cmp al, 0	; 2: 60 0
x4615:	jge printArgument$28	; 2: 125 5
x4617:	neg al	; 2: -10 -40
x4619:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary2012
x4622:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x4626:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x4628:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x4632:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x4634:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary2014 = arg_list - 4
x4638:	mov si, [bp + 8]	; 3: -117 118 8
x4641:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary2015 = int_to_int £temporary2014 (Signed_Int -> Pointer)

printArgument$34:	; £temporary2016 -> £temporary2015 = *£temporary2015

printArgument$35:	; longValue = £temporary2016 -> £temporary2015
x4644:	mov eax, [si]	; 3: 102 -117 4
x4647:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x4651:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x4653:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary2018 = arg_list - 2
x4657:	mov si, [bp + 8]	; 3: -117 118 8
x4660:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary2019 = int_to_int £temporary2018 (Signed_Int -> Pointer)

printArgument$40:	; £temporary2020 -> £temporary2019 = *£temporary2019

printArgument$41:	; £temporary2021 = int_to_int £temporary2020 -> £temporary2019 (Signed_Int -> Signed_Long_Int)
x4663:	mov ax, [si]	; 2: -117 4
x4665:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x4671:	cmp ax, 0	; 3: -125 -8 0
x4674:	jge printArgument$42	; 2: 125 5
x4676:	neg ax	; 2: -9 -40
x4678:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary2021
x4681:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x4685:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x4689:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary2025 -> negativePtr = *negativePtr
x4691:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x4694:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x4699:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary2027 = 1
x4701:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x4704:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary2027 = 0
x4706:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary2025 -> negativePtr = £temporary2027
x4709:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x4711:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x4715:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x4717:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x4721:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x4725:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 -125 18
x4730:	mov [bp + 50], bp	; 3: -119 110 50
x4733:	add bp, 48	; 3: -125 -59 48
x4736:	jmp labs	; 3: -23 5 5

printArgument$54:	; post call

printArgument$55:	; £temporary2030 = return_value

printArgument$56:	; longValue = £temporary2030
x4739:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x4743:	mov ax, [bp + 8]	; 3: -117 70 8
x4746:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x4749:	mov ax, [bp + 16]	; 3: -117 70 16
x4752:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary2031 = &precision
x4755:	mov si, bp	; 2: -119 -18
x4757:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary2031, offset 10
x4760:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x4763:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 -87 18
x4768:	mov [bp + 50], bp	; 3: -119 110 50
x4771:	add bp, 48	; 3: -125 -59 48
x4774:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; post call

printArgument$64:	; £temporary2032 = return_value

printArgument$65:	; arg_list = £temporary2032
x4777:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x4780:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x4784:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x4788:	mov ax, [bp + 10]	; 3: -117 70 10
x4791:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x4794:	mov ax, [bp + 12]	; 3: -117 70 12
x4797:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x4800:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 -50 18
x4805:	mov [bp + 50], bp	; 3: -119 110 50
x4808:	add bp, 48	; 3: -125 -59 48
x4811:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x4814:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x4817:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary2035 = arg_list - 2
x4821:	mov si, [bp + 8]	; 3: -117 118 8
x4824:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary2036 = int_to_int £temporary2035 (Signed_Int -> Pointer)

printArgument$76:	; £temporary2037 -> £temporary2036 = *£temporary2036

printArgument$77:	; £temporary2038 = int_to_int £temporary2037 -> £temporary2036 (Signed_Int -> Signed_Char)
x4827:	mov ax, [si]	; 2: -117 4
x4829:	cmp ax, 0	; 3: -125 -8 0
x4832:	jge printArgument$78	; 2: 125 4
x4834:	neg ax	; 2: -9 -40
x4836:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary2038
x4838:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x4841:	mov ax, [bp + 8]	; 3: -117 70 8
x4844:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x4847:	mov ax, [bp + 16]	; 3: -117 70 16
x4850:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary2039 = &precision
x4853:	mov si, bp	; 2: -119 -18
x4855:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary2039, offset 10
x4858:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x4861:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 11 19
x4866:	mov [bp + 46], bp	; 3: -119 110 46
x4869:	add bp, 44	; 3: -125 -59 44
x4872:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; post call

printArgument$86:	; £temporary2040 = return_value

printArgument$87:	; arg_list = £temporary2040
x4875:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x4878:	mov al, [bp + 31]	; 3: -118 70 31
x4881:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x4884:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 34 19
x4889:	mov [bp + 46], bp	; 3: -119 110 46
x4892:	add bp, 44	; 3: -125 -59 44
x4895:	jmp printChar	; 3: -23 101 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x4898:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x4901:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2043 = arg_list - 2
x4905:	mov si, [bp + 8]	; 3: -117 118 8
x4908:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2044 = int_to_int £temporary2043 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2045 -> £temporary2044 = *£temporary2044

printArgument$97:	; stringValue = £temporary2045 -> £temporary2044
x4911:	mov ax, [si]	; 2: -117 4
x4913:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x4916:	mov ax, [bp + 8]	; 3: -117 70 8
x4919:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x4922:	mov ax, [bp + 16]	; 3: -117 70 16
x4925:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2046 = &precision
x4928:	mov si, bp	; 2: -119 -18
x4930:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2046, offset 10
x4933:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x4936:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 86 19
x4941:	mov [bp + 48], bp	; 3: -119 110 48
x4944:	add bp, 46	; 3: -125 -59 46
x4947:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; post call

printArgument$105:	; £temporary2047 = return_value

printArgument$106:	; arg_list = £temporary2047
x4950:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x4953:	mov ax, [bp + 44]	; 3: -117 70 44
x4956:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x4959:	mov ax, [bp + 18]	; 3: -117 70 18
x4962:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x4965:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 115 19
x4970:	mov [bp + 48], bp	; 3: -119 110 48
x4973:	add bp, 46	; 3: -125 -59 46
x4976:	jmp printString	; 3: -23 -36 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x4979:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x4982:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x4986:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2063 = 10
x4988:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x4994:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x4996:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x5000:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2059 = 8
x5002:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x5008:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x5010:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x5014:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2055 = 2
x5016:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x5022:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2055 = 16
x5024:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2059 = £temporary2055

printArgument$124:	; £temporary2063 = £temporary2059

printArgument$125:	; base = £temporary2063
x5030:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x5034:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x5038:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x5040:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2065 = arg_list - 2
x5044:	mov si, [bp + 8]	; 3: -117 118 8
x5047:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2066 = int_to_int £temporary2065 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2067 -> £temporary2066 = *£temporary2066

printArgument$131:	; £temporary2068 = int_to_int £temporary2067 -> £temporary2066 (Unsigned_Int -> Unsigned_Short_Int)
x5050:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2069 = int_to_int £temporary2068 (Unsigned_Short_Int -> Unsigned_Long_Int)
x5052:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2069
x5058:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x5062:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x5064:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x5068:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x5070:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2071 = arg_list - 4
x5074:	mov si, [bp + 8]	; 3: -117 118 8
x5077:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2072 = int_to_int £temporary2071 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2073 -> £temporary2072 = *£temporary2072

printArgument$140:	; value = £temporary2073 -> £temporary2072
x5080:	mov eax, [si]	; 3: 102 -117 4
x5083:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x5087:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x5089:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2075 = arg_list - 2
x5093:	mov si, [bp + 8]	; 3: -117 118 8
x5096:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2076 = int_to_int £temporary2075 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2077 -> £temporary2076 = *£temporary2076

printArgument$146:	; £temporary2078 = int_to_int £temporary2077 -> £temporary2076 (Unsigned_Int -> Unsigned_Long_Int)
x5099:	mov ax, [si]	; 2: -117 4
x5101:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2078
x5107:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x5111:	mov ax, [bp + 8]	; 3: -117 70 8
x5114:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x5117:	mov ax, [bp + 16]	; 3: -117 70 16
x5120:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2081 = &precision
x5123:	mov si, bp	; 2: -119 -18
x5125:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2081, offset 10
x5128:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x5131:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 25 20
x5136:	mov [bp + 54], bp	; 3: -119 110 54
x5139:	add bp, 52	; 3: -125 -59 52
x5142:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; post call

printArgument$155:	; £temporary2082 = return_value

printArgument$156:	; arg_list = £temporary2082
x5145:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x5148:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x5152:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x5156:	mov ax, [bp + 10]	; 3: -117 70 10
x5159:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x5162:	mov ax, [bp + 12]	; 3: -117 70 12
x5165:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x5168:	mov ax, [bp + 14]	; 3: -117 70 14
x5171:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x5174:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x5178:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2083 = int_to_int c (Signed_Char -> Signed_Int)
x5182:	mov al, [bp + 30]	; 3: -118 70 30
x5185:	and ax, 255	; 3: 37 -1 0
x5188:	cmp al, 0	; 2: 60 0
x5190:	jge printArgument$165	; 2: 125 4
x5192:	neg al	; 2: -10 -40
x5194:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2083, offset 26
x5196:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x5199:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 93 20
x5204:	mov [bp + 74], bp	; 3: -119 110 74
x5207:	add bp, 72	; 3: -125 -59 72
x5210:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; post call

printArgument$168:	; £temporary2084 = return_value

printArgument$169:	; parameter £temporary2084, offset 20
x5213:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x5216:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 110 20
x5221:	mov [bp + 54], bp	; 3: -119 110 54
x5224:	add bp, 52	; 3: -125 -59 52
x5227:	jmp printUnsignedLong	; 3: -23 -50 9

printArgument$171:	; post call

printArgument$172:	; goto 359
x5230:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x5233:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x5237:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x5239:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2087 = arg_list - 8
x5243:	mov si, [bp + 8]	; 3: -117 118 8
x5246:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2088 = int_to_int £temporary2087 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2089 -> £temporary2088 = *£temporary2088

printArgument$178:	; push float £temporary2089 -> £temporary2088
x5249:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x5251:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x5254:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x5257:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x5260:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x5265:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x5270:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x5275:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x5280:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 -82 20
x5285:	mov [bp + 46], bp	; 3: -119 110 46
x5288:	add bp, 44	; 3: -125 -59 44
x5291:	jmp printLongDoublePlain	; 3: -23 57 11

printArgument$188:	; post call

printArgument$189:	; goto 196
x5294:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x5296:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2092 = arg_list - 8
x5300:	mov si, [bp + 8]	; 3: -117 118 8
x5303:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2093 = int_to_int £temporary2092 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2094 -> £temporary2093 = *£temporary2093

printArgument$194:	; push float £temporary2094 -> £temporary2093
x5306:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x5308:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x5311:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x5315:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2098 -> negativePtr = *negativePtr
x5317:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x5320:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x5323:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x5325:	fcompp	; 2: -34 -39
x5327:	fstsw ax	; 3: -101 -33 -32
x5330:	sahf	; 1: -98
x5331:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2100 = 1
x5333:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x5336:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2100 = 0
x5338:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2098 -> negativePtr = £temporary2100
x5341:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x5343:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x5347:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x5349:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x5352:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x5355:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 -7 20
x5360:	mov [bp + 46], bp	; 3: -119 110 46
x5363:	add bp, 44	; 3: -125 -59 44
x5366:	jmp fabs	; 3: -23 50 12

printArgument$210:	; post call

printArgument$211:	; £temporary2103 = return_value

printArgument$212:	; pop float longDoubleValue
x5369:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x5372:	mov ax, [bp + 8]	; 3: -117 70 8
x5375:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x5378:	mov ax, [bp + 16]	; 3: -117 70 16
x5381:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2104 = &precision
x5384:	mov si, bp	; 2: -119 -18
x5386:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2104, offset 10
x5389:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x5392:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 30 21
x5397:	mov [bp + 46], bp	; 3: -119 110 46
x5400:	add bp, 44	; 3: -125 -59 44
x5403:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; post call

printArgument$220:	; £temporary2105 = return_value

printArgument$221:	; arg_list = £temporary2105
x5406:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x5409:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x5413:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x5415:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x5418:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x5421:	mov ax, [bp + 10]	; 3: -117 70 10
x5424:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x5427:	mov ax, [bp + 12]	; 3: -117 70 12
x5430:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x5433:	mov ax, [bp + 14]	; 3: -117 70 14
x5436:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x5439:	mov ax, [bp + 18]	; 3: -117 70 18
x5442:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x5445:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 83 21
x5450:	mov [bp + 46], bp	; 3: -119 110 46
x5453:	add bp, 44	; 3: -125 -59 44
x5456:	jmp printLongDoublePlain	; 3: -23 -108 10

printArgument$231:	; post call

printArgument$232:	; goto 359
x5459:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2108 = int_to_int c (Signed_Char -> Signed_Int)
x5462:	mov al, [bp + 30]	; 3: -118 70 30
x5465:	and ax, 255	; 3: 37 -1 0
x5468:	cmp al, 0	; 2: 60 0
x5470:	jge printArgument$235	; 2: 125 4
x5472:	neg al	; 2: -10 -40
x5474:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2108, offset 6
x5476:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x5479:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 117 21
x5484:	mov [bp + 46], bp	; 3: -119 110 46
x5487:	add bp, 44	; 3: -125 -59 44
x5490:	jmp tolower	; 3: -23 -40 11

printArgument$237:	; post call

printArgument$238:	; £temporary2109 = return_value

printArgument$239:	; if £temporary2109 != 101 goto 257
x5493:	cmp bx, 101	; 3: -125 -5 101
x5496:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x5498:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x5501:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x5504:	mov ax, [bp + 10]	; 3: -117 70 10
x5507:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x5510:	mov ax, [bp + 12]	; 3: -117 70 12
x5513:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x5516:	mov ax, [bp + 14]	; 3: -117 70 14
x5519:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x5522:	mov ax, [bp + 18]	; 3: -117 70 18
x5525:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2111 = int_to_int c (Signed_Char -> Signed_Int)
x5528:	mov al, [bp + 30]	; 3: -118 70 30
x5531:	and ax, 255	; 3: 37 -1 0
x5534:	cmp al, 0	; 2: 60 0
x5536:	jge printArgument$249	; 2: 125 4
x5538:	neg al	; 2: -10 -40
x5540:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2111, offset 28
x5542:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x5545:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 -73 21
x5550:	mov [bp + 68], bp	; 3: -119 110 68
x5553:	add bp, 66	; 3: -125 -59 66
x5556:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; post call

printArgument$252:	; £temporary2112 = return_value

printArgument$253:	; parameter £temporary2112, offset 22
x5559:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x5562:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 -56 21
x5567:	mov [bp + 46], bp	; 3: -119 110 46
x5570:	add bp, 44	; 3: -125 -59 44
x5573:	jmp printLongDoubleExpo	; 3: -23 38 12

printArgument$255:	; post call

printArgument$256:	; goto 359
x5576:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x5579:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x5582:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x5585:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 -33 21
x5590:	mov [bp + 46], bp	; 3: -119 110 46
x5593:	add bp, 44	; 3: -125 -59 44
x5596:	jmp fabs	; 3: -23 76 11

printArgument$262:	; post call

printArgument$263:	; £temporary2114 = return_value

printArgument$264:	; parameter £temporary2114, offset 6
x5599:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x5602:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 -16 21
x5607:	mov [bp + 46], bp	; 3: -119 110 46
x5610:	add bp, 44	; 3: -125 -59 44
x5613:	jmp log10	; 3: -23 101 13

printArgument$266:	; post call

printArgument$267:	; £temporary2115 = return_value

printArgument$268:	; £temporary2116 = float_to_int £temporary2115 (Double -> Signed_Int)
x5616:	fistp word [container2bytes#]	; 4: -33 30 -122 23
x5620:	mov ax, [container2bytes#]	; 3: -95 -122 23

printArgument$269:	; expo = £temporary2116
x5623:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x5626:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x5630:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x5632:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x5636:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x5638:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x5641:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x5644:	mov ax, [bp + 10]	; 3: -117 70 10
x5647:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x5650:	mov ax, [bp + 12]	; 3: -117 70 12
x5653:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x5656:	mov ax, [bp + 14]	; 3: -117 70 14
x5659:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x5662:	mov ax, [bp + 18]	; 3: -117 70 18
x5665:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x5668:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 50 22
x5673:	mov [bp + 48], bp	; 3: -119 110 48
x5676:	add bp, 46	; 3: -125 -59 46
x5679:	jmp printLongDoublePlain	; 3: -23 -75 9

printArgument$280:	; post call

printArgument$281:	; goto 359
x5682:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x5685:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x5688:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x5691:	mov ax, [bp + 10]	; 3: -117 70 10
x5694:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x5697:	mov ax, [bp + 12]	; 3: -117 70 12
x5700:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x5703:	mov ax, [bp + 14]	; 3: -117 70 14
x5706:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x5709:	mov ax, [bp + 18]	; 3: -117 70 18
x5712:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2121 = int_to_int c (Signed_Char -> Signed_Int)
x5715:	mov al, [bp + 30]	; 3: -118 70 30
x5718:	and ax, 255	; 3: 37 -1 0
x5721:	cmp al, 0	; 2: 60 0
x5723:	jge printArgument$291	; 2: 125 4
x5725:	neg al	; 2: -10 -40
x5727:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2121, offset 28
x5729:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x5732:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 114 22
x5737:	mov [bp + 70], bp	; 3: -119 110 70
x5740:	add bp, 68	; 3: -125 -59 68
x5743:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; post call

printArgument$294:	; £temporary2122 = return_value

printArgument$295:	; parameter £temporary2122, offset 22
x5746:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x5749:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 -125 22
x5754:	mov [bp + 48], bp	; 3: -119 110 48
x5757:	add bp, 46	; 3: -125 -59 46
x5760:	jmp printLongDoubleExpo	; 3: -23 107 11

printArgument$297:	; post call

printArgument$298:	; goto 359
x5763:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x5766:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2125 = arg_list - 2
x5770:	mov si, [bp + 8]	; 3: -117 118 8
x5773:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2126 = int_to_int £temporary2125 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2127 -> £temporary2126 = *£temporary2126

printArgument$303:	; ptrValue = £temporary2127 -> £temporary2126
x5776:	mov ax, [si]	; 2: -117 4
x5778:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x5781:	mov ax, [bp + 8]	; 3: -117 70 8
x5784:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x5787:	mov ax, [bp + 16]	; 3: -117 70 16
x5790:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2128 = &precision
x5793:	mov si, bp	; 2: -119 -18
x5795:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2128, offset 10
x5798:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x5801:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 -73 22
x5806:	mov [bp + 46], bp	; 3: -119 110 46
x5809:	add bp, 44	; 3: -125 -59 44
x5812:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; post call

printArgument$311:	; £temporary2129 = return_value

printArgument$312:	; arg_list = £temporary2129
x5815:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2130 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x5818:	mov ax, [bp + 42]	; 3: -117 70 42
x5821:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2130, offset 6
x5827:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x5831:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x5836:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x5841:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x5846:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x5854:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x5859:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 -15 22
x5864:	mov [bp + 46], bp	; 3: -119 110 46
x5867:	add bp, 44	; 3: -125 -59 44
x5870:	jmp printUnsignedLong	; 3: -23 75 7

printArgument$322:	; post call

printArgument$323:	; goto 359
x5873:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x5876:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2133 = arg_list - 2
x5880:	mov si, [bp + 8]	; 3: -117 118 8
x5883:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2134 = int_to_int £temporary2133 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2135 -> £temporary2134 = *£temporary2134

printArgument$328:	; ptrValue = £temporary2135 -> £temporary2134
x5886:	mov ax, [si]	; 2: -117 4
x5888:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x5891:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2137 = arg_list - 2
x5895:	mov si, [bp + 8]	; 3: -117 118 8
x5898:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2138 = int_to_int £temporary2137 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2139 -> £temporary2138 = *£temporary2138

printArgument$333:	; intPtr = £temporary2139 -> £temporary2138
x5901:	mov ax, [si]	; 2: -117 4
x5903:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x5906:	mov ax, [bp + 8]	; 3: -117 70 8
x5909:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x5912:	mov ax, [bp + 16]	; 3: -117 70 16
x5915:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2140 = &precision
x5918:	mov si, bp	; 2: -119 -18
x5920:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2140, offset 10
x5923:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x5926:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 52 23
x5931:	mov [bp + 46], bp	; 3: -119 110 46
x5934:	add bp, 44	; 3: -125 -59 44
x5937:	nop	; 1: -112
x5938:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; post call

printArgument$341:	; £temporary2141 = return_value

printArgument$342:	; arg_list = £temporary2141
x5940:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2142 -> intPtr = *intPtr
x5943:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2142 -> intPtr = g_outChars
x5946:	mov ax, [g_outChars]	; 3: -95 112 17
x5949:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x5951:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x5953:	mov ax, [bp + 8]	; 3: -117 70 8
x5956:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x5959:	mov ax, [bp + 16]	; 3: -117 70 16
x5962:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2143 = &precision
x5965:	mov si, bp	; 2: -119 -18
x5967:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2143, offset 10
x5970:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x5973:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 99 23
x5978:	mov [bp + 46], bp	; 3: -119 110 46
x5981:	add bp, 44	; 3: -125 -59 44
x5984:	nop	; 1: -112
x5985:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; post call

printArgument$353:	; £temporary2144 = return_value

printArgument$354:	; arg_list = £temporary2144
x5987:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x5990:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x5994:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 120 23
x5999:	mov [bp + 46], bp	; 3: -119 110 46
x6002:	add bp, 44	; 3: -125 -59 44
x6005:	jmp printChar	; 3: -23 15 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x6008:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x6011:	mov ax, [bp]	; 3: -117 70 0
x6014:	mov di, [bp + 4]	; 3: -117 126 4
x6017:	mov bp, [bp + 2]	; 3: -117 110 2
x6020:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

container2bytes#:
x6022:	db 0, 0	; 2: 0 0

labs:	; if value >= 0 goto 4
x6024:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6029:	jge labs$4	; 2: 125 9

labs$1:	; £temporary3392 = -value
x6031:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x6035:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary3396 = £temporary3392

labs$3:	; goto 5
x6038:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary3396 = value
x6040:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary3396

labs$6:	; return
x6044:	mov ax, [bp]	; 3: -117 70 0
x6047:	mov di, [bp + 4]	; 3: -117 126 4
x6050:	mov bp, [bp + 2]	; 3: -117 110 2
x6053:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x6055:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6059:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary1989 -> widthPtr = *widthPtr
x6061:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary1989 -> widthPtr != -1 goto 9
x6064:	cmp word [si], -1	; 3: -125 60 -1
x6067:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary1992 -> widthPtr = *widthPtr
x6069:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x6072:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary1994 = arg_list - 2
x6076:	mov di, [bp + 6]	; 3: -117 126 6
x6079:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary1995 = int_to_int £temporary1994 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary1996 -> £temporary1995 = *£temporary1995

checkWidthAndPrecision$8:	; £temporary1992 -> widthPtr = £temporary1996 -> £temporary1995
x6082:	mov ax, [di]	; 2: -117 5
x6084:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x6086:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6090:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary1998 -> precisionPtr = *precisionPtr
x6092:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary1998 -> precisionPtr != -1 goto 18
x6095:	cmp word [si], -1	; 3: -125 60 -1
x6098:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary2001 -> precisionPtr = *precisionPtr
x6100:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x6103:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary2003 = arg_list - 2
x6107:	mov di, [bp + 6]	; 3: -117 126 6
x6110:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary2004 = int_to_int £temporary2003 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary2005 -> £temporary2004 = *£temporary2004

checkWidthAndPrecision$17:	; £temporary2001 -> precisionPtr = £temporary2005 -> £temporary2004
x6113:	mov ax, [di]	; 2: -117 5
x6115:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x6117:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x6120:	mov ax, [bp]	; 3: -117 70 0
x6123:	mov di, [bp + 4]	; 3: -117 126 4
x6126:	mov bp, [bp + 2]	; 3: -117 110 2
x6129:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x6131:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6136:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1844 = -longValue
x6138:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6142:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1844
x6145:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x6149:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x6153:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 23 24
x6158:	mov [bp + 16], bp	; 3: -119 110 16
x6161:	add bp, 14	; 3: -125 -59 14
x6164:	nop	; 1: -112
x6165:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x6167:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x6169:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x6173:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x6175:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x6179:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 49 24
x6184:	mov [bp + 16], bp	; 3: -119 110 16
x6187:	add bp, 14	; 3: -125 -59 14
x6190:	nop	; 1: -112
x6191:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x6193:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x6195:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6199:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x6201:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x6205:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 75 24
x6210:	mov [bp + 16], bp	; 3: -119 110 16
x6213:	add bp, 14	; 3: -125 -59 14
x6216:	nop	; 1: -112
x6217:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x6219:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6224:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x6226:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x6230:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 100 24
x6235:	mov [bp + 16], bp	; 3: -119 110 16
x6238:	add bp, 14	; 3: -125 -59 14
x6241:	nop	; 1: -112
x6242:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x6244:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x6246:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6250:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x6254:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 124 24
x6259:	mov [bp + 16], bp	; 3: -119 110 16
x6262:	add bp, 14	; 3: -125 -59 14
x6265:	nop	; 1: -112
x6266:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x6268:	mov ax, [bp]	; 3: -117 70 0
x6271:	mov di, [bp + 4]	; 3: -117 126 4
x6274:	mov bp, [bp + 2]	; 3: -117 110 2
x6277:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x6279:	mov ax, [g_outStatus]	; 3: -95 28 12
x6282:	cmp ax, 0	; 3: -125 -8 0
x6285:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x6287:	cmp ax, 1	; 3: -125 -8 1
x6290:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x6292:	cmp ax, 2	; 3: -125 -8 2
x6295:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x6297:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1786 = int_to_int g_outDevice (Pointer -> Pointer)
x6299:	mov ax, [g_outDevice]	; 3: -95 30 12

printChar$6:	; stream = £temporary1786
x6302:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x6305:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1789 -> stream = *stream, offset 2
x6307:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1789 -> stream
x6310:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x6313:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1792 = &c
x6316:	mov dx, bp	; 2: -119 -22
x6318:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1792

printChar$13:	; interrupt 33
x6321:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x6323:	inc word [g_outChars]	; 4: -1 6 112 17

printChar$15:	; goto 25
x6327:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1794 = int_to_int g_outDevice (Pointer -> Pointer)
x6329:	mov ax, [g_outDevice]	; 3: -95 30 12

printChar$17:	; outString = £temporary1794
x6332:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1795 = g_outChars
x6335:	mov ax, [g_outChars]	; 3: -95 112 17

printChar$19:	; ++g_outChars
x6338:	inc word [g_outChars]	; 4: -1 6 112 17

printChar$20:	; £temporary1797 = outString + £temporary1795
x6342:	mov si, [bp + 9]	; 3: -117 118 9
x6345:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1796 -> £temporary1797 = *£temporary1797

printChar$22:	; £temporary1796 -> £temporary1797 = c
x6347:	mov al, [bp + 6]	; 3: -118 70 6
x6350:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x6352:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x6354:	inc word [g_outChars]	; 4: -1 6 112 17

printChar$25:	; return
x6358:	mov ax, [bp]	; 3: -117 70 0
x6361:	mov di, [bp + 4]	; 3: -117 126 4
x6364:	mov bp, [bp + 2]	; 3: -117 110 2
x6367:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x6369:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6374:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1834 = longValue % 10
x6376:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6380:	xor edx, edx	; 3: 102 49 -46
x6383:	idiv dword [int4$10#]	; 5: 102 -9 62 75 25

printLongIntRec$2:	; £temporary1835 = int_to_int £temporary1834 (Signed_Long_Int -> Signed_Int)
x6388:	cmp edx, 0	; 4: 102 -125 -6 0
x6392:	jge printLongIntRec$3	; 2: 125 5
x6394:	neg edx	; 3: 102 -9 -38
x6397:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1835
x6399:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1836 = longValue / 10
x6402:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6406:	xor edx, edx	; 3: 102 49 -46
x6409:	idiv dword [int4$10#]	; 5: 102 -9 62 75 25

printLongIntRec$6:	; parameter £temporary1836, offset 6
x6414:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x6418:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 32 25
x6423:	mov [bp + 14], bp	; 3: -119 110 14
x6426:	add bp, 12	; 3: -125 -59 12
x6429:	nop	; 1: -112
x6430:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1838 = digit + 48
x6432:	mov ax, [bp + 10]	; 3: -117 70 10
x6435:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1839 = int_to_int £temporary1838 (Signed_Int -> Signed_Char)
x6438:	cmp ax, 0	; 3: -125 -8 0
x6441:	jge printLongIntRec$12	; 2: 125 4
x6443:	neg ax	; 2: -9 -40
x6445:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1839, offset 6
x6447:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x6450:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 64 25
x6455:	mov [bp + 14], bp	; 3: -119 110 14
x6458:	add bp, 12	; 3: -125 -59 12
x6461:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x6464:	mov ax, [bp]	; 3: -117 70 0
x6467:	mov di, [bp + 4]	; 3: -117 126 4
x6470:	mov bp, [bp + 2]	; 3: -117 110 2
x6473:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x6475:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x6479:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x6483:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x6485:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6489:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x6491:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1803 = s + index
x6496:	mov si, [bp + 6]	; 3: -117 118 6
x6499:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1802 -> £temporary1803 = *£temporary1803

printString$5:	; if £temporary1802 -> £temporary1803 == 0 goto 53
x6502:	cmp byte [si], 0	; 3: -128 60 0
x6505:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1807 = s + index
x6509:	mov si, [bp + 6]	; 3: -117 118 6
x6512:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1806 -> £temporary1807 = *£temporary1807

printString$9:	; parameter £temporary1806 -> £temporary1807, offset 6
x6515:	mov al, [si]	; 2: -118 4
x6517:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x6520:	mov word [bp + 12], printString$11	; 5: -57 70 12 -122 25
x6525:	mov [bp + 14], bp	; 3: -119 110 14
x6528:	add bp, 12	; 3: -125 -59 12
x6531:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x6534:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x6537:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x6539:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1809 = precision
x6544:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x6547:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1809 <= 0 goto 53
x6550:	cmp ax, 0	; 3: -125 -8 0
x6553:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1812 = s + index
x6557:	mov si, [bp + 6]	; 3: -117 118 6
x6560:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1811 -> £temporary1812 = *£temporary1812

printString$20:	; if £temporary1811 -> £temporary1812 == 0 goto 53
x6563:	cmp byte [si], 0	; 3: -128 60 0
x6566:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1817 = s + index
x6570:	mov si, [bp + 6]	; 3: -117 118 6
x6573:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1816 -> £temporary1817 = *£temporary1817

printString$24:	; parameter £temporary1816 -> £temporary1817, offset 6
x6576:	mov al, [si]	; 2: -118 4
x6578:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x6581:	mov word [bp + 12], printString$26	; 5: -57 70 12 -61 25
x6586:	mov [bp + 14], bp	; 3: -119 110 14
x6589:	add bp, 12	; 3: -125 -59 12
x6592:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x6595:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x6598:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x6600:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x6604:	mov word [bp + 10], printString$32	; 5: -57 70 10 -38 25
x6609:	mov [bp + 12], bp	; 3: -119 110 12
x6612:	add bp, 10	; 3: -125 -59 10
x6615:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x6618:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x6622:	mov word [bp + 10], printString$36	; 5: -57 70 10 -20 25
x6627:	mov [bp + 12], bp	; 3: -119 110 12
x6630:	add bp, 10	; 3: -125 -59 10
x6633:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x6636:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x6640:	mov word [bp + 10], printString$40	; 5: -57 70 10 -2 25
x6645:	mov [bp + 12], bp	; 3: -119 110 12
x6648:	add bp, 10	; 3: -125 -59 10
x6651:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x6654:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x6658:	mov word [bp + 10], printString$44	; 5: -57 70 10 16 26
x6663:	mov [bp + 12], bp	; 3: -119 110 12
x6666:	add bp, 10	; 3: -125 -59 10
x6669:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x6672:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x6676:	mov word [bp + 10], printString$48	; 5: -57 70 10 34 26
x6681:	mov [bp + 12], bp	; 3: -119 110 12
x6684:	add bp, 10	; 3: -125 -59 10
x6687:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x6690:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x6694:	mov word [bp + 10], printString$52	; 5: -57 70 10 52 26
x6699:	mov [bp + 12], bp	; 3: -119 110 12
x6702:	add bp, 10	; 3: -125 -59 10
x6705:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x6708:	mov ax, [bp]	; 3: -117 70 0
x6711:	mov di, [bp + 4]	; 3: -117 126 4
x6714:	mov bp, [bp + 2]	; 3: -117 110 2
x6717:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x6719:	mov word [bp + 8], isupper$2	; 5: -57 70 8 77 26
x6724:	mov [bp + 10], bp	; 3: -119 110 10
x6727:	add bp, 8	; 3: -125 -59 8
x6730:	nop	; 1: -112
x6731:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary383 = return_value

isupper$4:	; localeConvPtr = £temporary383
x6733:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x6736:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6740:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary385 -> localeConvPtr = *localeConvPtr, offset 14
x6742:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary385 -> localeConvPtr, offset 6
x6745:	mov ax, [si + 14]	; 3: -117 68 14
x6748:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x6751:	mov ax, [bp + 6]	; 3: -117 70 6
x6754:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x6757:	mov word [bp + 10], isupper$11	; 5: -57 70 10 115 26
x6762:	mov [bp + 12], bp	; 3: -119 110 12
x6765:	add bp, 10	; 3: -125 -59 10
x6768:	jmp strchr	; 3: -23 121 3

isupper$11:	; post call

isupper$12:	; £temporary386 = return_value

isupper$13:	; if £temporary386 == 0 goto 16
x6771:	cmp bx, 0	; 3: -125 -5 0
x6774:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary388 = 1
x6776:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x6779:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary388 = 0
x6781:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary388

isupper$18:	; return
x6784:	mov ax, [bp]	; 3: -117 70 0
x6787:	mov di, [bp + 4]	; 3: -117 126 4
x6790:	mov bp, [bp + 2]	; 3: -117 110 2
x6793:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x6795:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x6799:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x6801:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x6805:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary392 = 1
x6807:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x6810:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary392 = 0
x6812:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary392

isupper$25:	; return
x6815:	mov ax, [bp]	; 3: -117 70 0
x6818:	mov di, [bp + 4]	; 3: -117 126 4
x6821:	mov bp, [bp + 2]	; 3: -117 110 2
x6824:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x6826:	cmp word [@15$g_currStructPtr], 0	; 5: -125 62 -56 26 0
x6831:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary516 -> g_currStructPtr = *g_currStructPtr, offset 2
x6833:	mov si, [@15$g_currStructPtr]	; 4: -117 54 -56 26

localeconv$2:	; £temporary520 = £temporary516 -> g_currStructPtr
x6837:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x6840:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary520 = 0
x6842:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary520

localeconv$6:	; return
x6845:	mov ax, [bp]	; 3: -117 70 0
x6848:	mov di, [bp + 4]	; 3: -117 126 4
x6851:	mov bp, [bp + 2]	; 3: -117 110 2
x6854:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@15$g_currStructPtr:
x6856:	dw @13$sArray	; 2: -54 26

@13$sArray:
x6858:	dw string_# ; 2: -42 26
x6860:	dw @12$en_US_utf8	; 2: -41 26
x6862:	dw string_C# ; 2: -25 29
x6864:	dw @12$en_US_utf8	; 2: -41 26
x6866:	dw string_US# ; 2: -23 29
x6868:	dw @12$en_US_utf8	; 2: -41 26

string_#:
x6870:	db 0	; 1: 0

@12$en_US_utf8:
x6871:	dw 2	; 2: 2 0
x6873:	dw 1	; 2: 1 0
x6875:	dw @8$enShortDayList ; 2: -23 26
x6877:	dw @9$enLongDayList ; 2: 19 27
x6879:	dw @10$enShortMonthList ; 2: 90 27
x6881:	dw @11$enLongMonthList ; 2: -94 27
x6883:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: 12 28
x6885:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: 39 28
x6887:	dw enMessageList ; 2: 66 28

@8$enShortDayList:
x6889:	dw string_Sun# ; 2: -9 26
x6891:	dw string_Mon# ; 2: -5 26
x6893:	dw string_Tue# ; 2: -1 26
x6895:	dw string_Wed# ; 2: 3 27
x6897:	dw string_Thu# ; 2: 7 27
x6899:	dw string_Fri# ; 2: 11 27
x6901:	dw string_Sat# ; 2: 15 27

string_Sun#:
x6903:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x6907:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x6911:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x6915:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x6919:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x6923:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x6927:	db "Sat", 0	; 4: 83 97 116 0

@9$enLongDayList:
x6931:	dw string_Sunday# ; 2: 33 27
x6933:	dw string_Monday# ; 2: 40 27
x6935:	dw string_Tuesday# ; 2: 47 27
x6937:	dw string_Wednesday# ; 2: 55 27
x6939:	dw string_Thursday# ; 2: 65 27
x6941:	dw string_Friday# ; 2: 74 27
x6943:	dw string_Saturday# ; 2: 81 27

string_Sunday#:
x6945:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x6952:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x6959:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x6967:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x6977:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x6986:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x6993:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@10$enShortMonthList:
x7002:	dw string_Jan# ; 2: 114 27
x7004:	dw string_Feb# ; 2: 118 27
x7006:	dw string_Mar# ; 2: 122 27
x7008:	dw string_Apr# ; 2: 126 27
x7010:	dw string_May# ; 2: -126 27
x7012:	dw string_Jun# ; 2: -122 27
x7014:	dw string_Jul# ; 2: -118 27
x7016:	dw string_Aug# ; 2: -114 27
x7018:	dw string_Sep# ; 2: -110 27
x7020:	dw string_Oct# ; 2: -106 27
x7022:	dw string_Nov# ; 2: -102 27
x7024:	dw string_Dec# ; 2: -98 27

string_Jan#:
x7026:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x7030:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x7034:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x7038:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x7042:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x7046:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x7050:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x7054:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x7058:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x7062:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x7066:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x7070:	db "Dec", 0	; 4: 68 101 99 0

@11$enLongMonthList:
x7074:	dw string_January# ; 2: -70 27
x7076:	dw string_February# ; 2: -62 27
x7078:	dw string_March# ; 2: -53 27
x7080:	dw string_April# ; 2: -47 27
x7082:	dw string_May# ; 2: -126 27
x7084:	dw string_June# ; 2: -41 27
x7086:	dw string_July# ; 2: -36 27
x7088:	dw string_August# ; 2: -31 27
x7090:	dw string_September# ; 2: -24 27
x7092:	dw string_October# ; 2: -14 27
x7094:	dw string_November# ; 2: -6 27
x7096:	dw string_December# ; 2: 3 28

string_January#:
x7098:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x7106:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x7115:	db "March", 0	; 6: 77 97 114 99 104 0

string_April#:
x7121:	db "April", 0	; 6: 65 112 114 105 108 0

string_June#:
x7127:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x7132:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x7137:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_September#:
x7144:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_October#:
x7154:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

string_November#:
x7162:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x7171:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x7180:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x7207:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

enMessageList:
x7234:	dw string_no20error# ; 2: 106 28
x7236:	dw string_function20number20invalid# ; 2: 115 28
x7238:	dw string_file20not20found# ; 2: -117 28
x7240:	dw string_path20not20found# ; 2: -102 28
x7242:	dw string_no20handle20available# ; 2: -87 28
x7244:	dw string_access20denied# ; 2: -67 28
x7246:	dw string_out20of20domain# ; 2: -53 28
x7248:	dw string_out20of20range# ; 2: -39 28
x7250:	dw string_invalid20multibyte20sequence# ; 2: -26 28
x7252:	dw string_error20while20opening# ; 2: 1 29
x7254:	dw string_error20while20flushing# ; 2: 21 29
x7256:	dw string_error20while20closing# ; 2: 42 29
x7258:	dw string_open20mode20invalid# ; 2: 62 29
x7260:	dw string_error20while20writing# ; 2: 80 29
x7262:	dw string_error20while20reading# ; 2: 100 29
x7264:	dw string_error20while20seeking# ; 2: 120 29
x7266:	dw string_error20while20telling# ; 2: -116 29
x7268:	dw string_error20while20sizing# ; 2: -96 29
x7270:	dw string_error20while20removing20file# ; 2: -77 29
x7272:	dw string_error20while20renaming20file# ; 2: -51 29

string_no20error#:
x7274:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x7283:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x7307:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x7322:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x7337:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x7357:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x7371:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x7385:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x7398:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x7425:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x7445:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x7466:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x7486:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x7504:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x7524:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x7544:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x7564:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x7584:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x7603:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x7629:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_C#:
x7655:	db "C", 0	; 2: 67 0

string_US#:
x7657:	db "US", 0	; 3: 85 83 0

strchr:	; £temporary4000 = int_to_int i (Signed_Int -> Signed_Char)
x7660:	mov ax, [bp + 8]	; 3: -117 70 8
x7663:	cmp ax, 0	; 3: -125 -8 0
x7666:	jge strchr$1	; 2: 125 4
x7668:	neg ax	; 2: -9 -40
x7670:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary4000
x7672:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x7675:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary4002 = text + index
x7680:	mov si, [bp + 6]	; 3: -117 118 6
x7683:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary4001 -> £temporary4002 = *£temporary4002

strchr$5:	; if £temporary4001 -> £temporary4002 == 0 goto 16
x7686:	cmp byte [si], 0	; 3: -128 60 0
x7689:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary4006 = text + index
x7691:	mov si, [bp + 6]	; 3: -117 118 6
x7694:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary4005 -> £temporary4006 = *£temporary4006

strchr$8:	; if £temporary4005 -> £temporary4006 != c goto 14
x7697:	mov al, [bp + 12]	; 3: -118 70 12
x7700:	cmp [si], al	; 2: 56 4
x7702:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary4009 = text + index
x7704:	mov bx, [bp + 6]	; 3: -117 94 6
x7707:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary4008 -> £temporary4009 = *£temporary4009

strchr$11:	; £temporary4010 = &£temporary4008 -> £temporary4009

strchr$12:	; return_value = £temporary4010

strchr$13:	; return
x7710:	mov ax, [bp]	; 3: -117 70 0
x7713:	mov di, [bp + 4]	; 3: -117 126 4
x7716:	mov bp, [bp + 2]	; 3: -117 110 2
x7719:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x7721:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x7724:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x7726:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x7729:	mov ax, [bp]	; 3: -117 70 0
x7732:	mov di, [bp + 4]	; 3: -117 126 4
x7735:	mov bp, [bp + 2]	; 3: -117 110 2
x7738:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x7740:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x7744:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x7746:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x7750:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 84 30
x7755:	mov [bp + 24], bp	; 3: -119 110 24
x7758:	add bp, 22	; 3: -125 -59 22
x7761:	jmp printChar	; 3: -23 51 -6

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x7764:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x7768:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x7770:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x7774:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 108 30
x7779:	mov [bp + 24], bp	; 3: -119 110 24
x7782:	add bp, 22	; 3: -125 -59 22
x7785:	jmp printChar	; 3: -23 27 -6

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x7788:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x7792:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x7794:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x7799:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x7801:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x7805:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 -117 30
x7810:	mov [bp + 24], bp	; 3: -119 110 24
x7813:	add bp, 22	; 3: -125 -59 22
x7816:	jmp printChar	; 3: -23 -4 -7

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x7819:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x7824:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x7826:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x7830:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 -92 30
x7835:	mov [bp + 24], bp	; 3: -119 110 24
x7838:	add bp, 22	; 3: -125 -59 22
x7841:	jmp printChar	; 3: -23 -29 -7

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x7844:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x7848:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1893 = 88
x7850:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x7852:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1893 = 120
x7854:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1893, offset 6
x7856:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x7859:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 -63 30
x7864:	mov [bp + 24], bp	; 3: -119 110 24
x7867:	add bp, 22	; 3: -125 -59 22
x7870:	jmp printChar	; 3: -23 -58 -7

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x7873:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7878:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x7880:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x7884:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 -38 30
x7889:	mov [bp + 24], bp	; 3: -119 110 24
x7892:	add bp, 22	; 3: -125 -59 22
x7895:	jmp printChar	; 3: -23 -83 -7

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x7898:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x7900:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7904:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x7908:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x7912:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x7916:	mov ax, [bp + 20]	; 3: -117 70 20
x7919:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x7922:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 0 31
x7927:	mov [bp + 24], bp	; 3: -119 110 24
x7930:	add bp, 22	; 3: -125 -59 22
x7933:	nop	; 1: -112
x7934:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x7936:	mov ax, [bp]	; 3: -117 70 0
x7939:	mov di, [bp + 4]	; 3: -117 126 4
x7942:	mov bp, [bp + 2]	; 3: -117 110 2
x7945:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x7947:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7952:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1869 = unsignedValue % base
x7954:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7958:	xor edx, edx	; 3: 102 49 -46
x7961:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1870 = int_to_int £temporary1869 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1870
x7965:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1871 = unsignedValue / base
x7968:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7972:	xor edx, edx	; 3: 102 49 -46
x7975:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1871, offset 6
x7979:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x7983:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x7987:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x7991:	mov ax, [bp + 14]	; 3: -117 70 14
x7994:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x7997:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 75 31
x8002:	mov [bp + 20], bp	; 3: -119 110 20
x8005:	add bp, 18	; 3: -125 -59 18
x8008:	nop	; 1: -112
x8009:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x8011:	mov ax, [bp + 16]	; 3: -117 70 16
x8014:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x8017:	mov ax, [bp + 14]	; 3: -117 70 14
x8020:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x8023:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 101 31
x8028:	mov [bp + 20], bp	; 3: -119 110 20
x8031:	add bp, 18	; 3: -125 -59 18
x8034:	nop	; 1: -112
x8035:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1873 = return_value

printUnsignedLongRec$17:	; c = £temporary1873
x8037:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x8040:	mov al, [bp + 18]	; 3: -118 70 18
x8043:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x8046:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 124 31
x8051:	mov [bp + 21], bp	; 3: -119 110 21
x8054:	add bp, 19	; 3: -125 -59 19
x8057:	jmp printChar	; 3: -23 11 -7

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x8060:	mov ax, [bp]	; 3: -117 70 0
x8063:	mov di, [bp + 4]	; 3: -117 126 4
x8066:	mov bp, [bp + 2]	; 3: -117 110 2
x8069:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x8071:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x8075:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1859 = digit + 48
x8077:	mov bx, [bp + 6]	; 3: -117 94 6
x8080:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1860 = int_to_int £temporary1859 (Signed_Int -> Signed_Char)
x8083:	cmp bx, 0	; 3: -125 -5 0
x8086:	jge digitToChar$3	; 2: 125 4
x8088:	neg bx	; 2: -9 -37
x8090:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1860

digitToChar$4:	; return
x8092:	mov ax, [bp]	; 3: -117 70 0
x8095:	mov di, [bp + 4]	; 3: -117 126 4
x8098:	mov bp, [bp + 2]	; 3: -117 110 2
x8101:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x8103:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x8107:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1861 = digit - 10
x8109:	mov bx, [bp + 6]	; 3: -117 94 6
x8112:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1862 = £temporary1861 + 65
x8115:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1863 = int_to_int £temporary1862 (Signed_Int -> Signed_Char)
x8118:	cmp bx, 0	; 3: -125 -5 0
x8121:	jge digitToChar$9	; 2: 125 4
x8123:	neg bx	; 2: -9 -37
x8125:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1863

digitToChar$10:	; return
x8127:	mov ax, [bp]	; 3: -117 70 0
x8130:	mov di, [bp + 4]	; 3: -117 126 4
x8133:	mov bp, [bp + 2]	; 3: -117 110 2
x8136:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1864 = digit - 10
x8138:	mov bx, [bp + 6]	; 3: -117 94 6
x8141:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1865 = £temporary1864 + 97
x8144:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1866 = int_to_int £temporary1865 (Signed_Int -> Signed_Char)
x8147:	cmp bx, 0	; 3: -125 -5 0
x8150:	jge digitToChar$14	; 2: 125 4
x8152:	neg bx	; 2: -9 -37
x8154:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1866

digitToChar$15:	; return
x8156:	mov ax, [bp]	; 3: -117 70 0
x8159:	mov di, [bp + 4]	; 3: -117 126 4
x8162:	mov bp, [bp + 2]	; 3: -117 110 2
x8165:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x8167:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x8170:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x8172:	fcompp	; 2: -34 -39
x8174:	fstsw ax	; 3: -101 -33 -32
x8177:	sahf	; 1: -98
x8178:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x8180:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x8184:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 6 32
x8189:	mov [bp + 24], bp	; 3: -119 110 24
x8192:	add bp, 22	; 3: -125 -59 22
x8195:	jmp printChar	; 3: -23 -127 -8

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x8198:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1929 = -longDoubleValue
x8201:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x8203:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x8206:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x8211:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x8216:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1930 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x8219:	fistp dword [container4bytes#]	; 4: -37 30 127 32
x8223:	mov eax, [container4bytes#]	; 4: 102 -95 127 32

printLongDoublePlain$14:	; longValue = £temporary1930
x8227:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x8231:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x8235:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x8239:	mov ax, [bp + 14]	; 3: -117 70 14
x8242:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x8245:	mov ax, [bp + 16]	; 3: -117 70 16
x8248:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x8251:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 73 32
x8256:	mov [bp + 28], bp	; 3: -119 110 28
x8259:	add bp, 26	; 3: -125 -59 26
x8262:	jmp printLongInt	; 3: -23 -86 -9

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x8265:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1932 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x8268:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1933 = longDoubleValue - £temporary1932
x8271:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x8273:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x8276:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x8279:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x8282:	mov ax, [bp + 18]	; 3: -117 70 18
x8285:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x8288:	mov ax, [bp + 20]	; 3: -117 70 20
x8291:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x8294:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 116 32
x8299:	mov [bp + 28], bp	; 3: -119 110 28
x8302:	add bp, 26	; 3: -125 -59 26
x8305:	nop	; 1: -112
x8306:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x8308:	mov ax, [bp]	; 3: -117 70 0
x8311:	mov di, [bp + 4]	; 3: -117 126 4
x8314:	mov bp, [bp + 2]	; 3: -117 110 2
x8317:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

container4bytes#:
x8319:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; push float longDoubleValue
x8323:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x8326:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1908 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x8329:	fistp dword [container4bytes#]	; 4: -37 30 127 32
x8333:	mov eax, [container4bytes#]	; 4: 102 -95 127 32

printLongDoubleFraction$3:	; £temporary1909 = int_to_float £temporary1908 (Signed_Long_Int -> Long_Double)
x8337:	mov [container4bytes#], eax	; 4: 102 -93 127 32
x8341:	fild dword [container4bytes#]	; 4: -37 6 127 32

printLongDoubleFraction$4:	; £temporary1910 = longDoubleValue - £temporary1909
x8345:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x8347:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x8350:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x8354:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 6
x8356:	mov word [bp + 16], 6	; 5: -57 70 16 6 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x8361:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x8365:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x8367:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x8371:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x8373:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x8377:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 -57 32
x8382:	mov [bp + 20], bp	; 3: -119 110 20
x8385:	add bp, 18	; 3: -125 -59 18
x8388:	jmp printChar	; 3: -23 -64 -9

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1916 = precision
x8391:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x8394:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1916 <= 0 goto 35
x8397:	cmp ax, 0	; 3: -125 -8 0
x8400:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; push float 10.0
x8402:	fld qword [float8$10.0#]	; 4: -35 6 35 33

printLongDoubleFraction$18:	; push float longDoubleValue
x8406:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1918 = 10.0 * longDoubleValue
x8409:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; pop float longDoubleValue10
x8411:	fstp qword [bp + 18]	; 3: -35 94 18

printLongDoubleFraction$21:	; push float longDoubleValue10
x8414:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$22:	; £temporary1919 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x8417:	fistp word [container2bytes#]	; 4: -33 30 -122 23
x8421:	mov ax, [container2bytes#]	; 3: -95 -122 23

printLongDoubleFraction$23:	; digitValue = £temporary1919
x8424:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$24:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$25:	; £temporary1920 = digitValue + 48
x8427:	mov ax, [bp + 26]	; 3: -117 70 26
x8430:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$26:	; £temporary1921 = int_to_int £temporary1920 (Signed_Int -> Signed_Char)
x8433:	cmp ax, 0	; 3: -125 -8 0
x8436:	jge printLongDoubleFraction$27	; 2: 125 4
x8438:	neg ax	; 2: -9 -40
x8440:	neg al	; 2: -10 -40

printLongDoubleFraction$27:	; parameter £temporary1921, offset 6
x8442:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$28:	; call function noellipse-noellipse printChar
x8445:	mov word [bp + 28], printLongDoubleFraction$29	; 5: -57 70 28 11 33
x8450:	mov [bp + 30], bp	; 3: -119 110 30
x8453:	add bp, 28	; 3: -125 -59 28
x8456:	jmp printChar	; 3: -23 124 -9

printLongDoubleFraction$29:	; post call

printLongDoubleFraction$30:	; push float longDoubleValue10
x8459:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$31:	; £temporary1923 = int_to_float digitValue (Signed_Int -> Long_Double)
x8462:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$32:	; £temporary1924 = longDoubleValue10 - £temporary1923
x8465:	fsub	; 2: -34 -23

printLongDoubleFraction$33:	; pop float longDoubleValue
x8467:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$34:	; goto 14
x8470:	jmp printLongDoubleFraction$14	; 2: -21 -81

printLongDoubleFraction$35:	; return
x8472:	mov ax, [bp]	; 3: -117 70 0
x8475:	mov di, [bp + 4]	; 3: -117 126 4
x8478:	mov bp, [bp + 2]	; 3: -117 110 2
x8481:	jmp ax	; 2: -1 -32

printLongDoubleFraction$36:	; function end printLongDoubleFraction

float8$10.0#:
x8483:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x8491:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x8494:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x8496:	fcompp	; 2: -34 -39
x8498:	fstsw ax	; 3: -101 -33 -32
x8501:	sahf	; 1: -98
x8502:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x8504:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary829 = -x
x8507:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x8509:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x8511:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary833

fabs$9:	; return
x8514:	mov ax, [bp]	; 3: -117 70 0
x8517:	mov di, [bp + 4]	; 3: -117 126 4
x8520:	mov bp, [bp + 2]	; 3: -117 110 2
x8523:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x8525:	mov ax, [bp + 6]	; 3: -117 70 6
x8528:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x8531:	mov word [bp + 8], tolower$3	; 5: -57 70 8 97 33
x8536:	mov [bp + 10], bp	; 3: -119 110 10
x8539:	add bp, 8	; 3: -125 -59 8
x8542:	jmp isupper	; 3: -23 -34 -8

tolower$3:	; post call

tolower$4:	; £temporary463 = return_value

tolower$5:	; if £temporary463 == 0 goto 31
x8545:	cmp bx, 0	; 3: -125 -5 0
x8548:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x8550:	mov word [bp + 8], tolower$8	; 5: -57 70 8 116 33
x8555:	mov [bp + 10], bp	; 3: -119 110 10
x8558:	add bp, 8	; 3: -125 -59 8
x8561:	jmp localeconv	; 3: -23 54 -7

tolower$8:	; post call

tolower$9:	; £temporary464 = return_value

tolower$10:	; localeConvPtr = £temporary464
x8564:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x8567:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x8571:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary466 -> localeConvPtr = *localeConvPtr, offset 12
x8573:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary466 -> localeConvPtr
x8576:	mov ax, [si + 12]	; 3: -117 68 12
x8579:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary467 -> localeConvPtr = *localeConvPtr, offset 14
x8582:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary467 -> localeConvPtr
x8585:	mov ax, [si + 14]	; 3: -117 68 14
x8588:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x8591:	mov ax, [bp + 12]	; 3: -117 70 12
x8594:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x8597:	mov ax, [bp + 6]	; 3: -117 70 6
x8600:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x8603:	mov word [bp + 14], tolower$20	; 5: -57 70 14 -87 33
x8608:	mov [bp + 16], bp	; 3: -119 110 16
x8611:	add bp, 14	; 3: -125 -59 14
x8614:	jmp strchr	; 3: -23 67 -4

tolower$20:	; post call

tolower$21:	; £temporary468 = return_value

tolower$22:	; index = £temporary468 - upperCase
x8617:	sub bx, [bp + 12]	; 3: 43 94 12
x8620:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary471 = lowerCase + index
x8623:	mov si, [bp + 10]	; 3: -117 118 10
x8626:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary470 -> £temporary471 = *£temporary471

tolower$25:	; £temporary472 = int_to_int £temporary470 -> £temporary471 (Signed_Char -> Signed_Int)
x8629:	mov bl, [si]	; 2: -118 28
x8631:	and bx, 255	; 4: -127 -29 -1 0
x8635:	cmp bl, 0	; 3: -128 -5 0
x8638:	jge tolower$26	; 2: 125 4
x8640:	neg bl	; 2: -10 -37
x8642:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary472

tolower$27:	; return
x8644:	mov ax, [bp]	; 3: -117 70 0
x8647:	mov di, [bp + 4]	; 3: -117 126 4
x8650:	mov bp, [bp + 2]	; 3: -117 110 2
x8653:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary473 = c + 32
x8655:	mov bx, [bp + 6]	; 3: -117 94 6
x8658:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary473

tolower$30:	; return
x8661:	mov ax, [bp]	; 3: -117 70 0
x8664:	mov di, [bp + 4]	; 3: -117 126 4
x8667:	mov bp, [bp + 2]	; 3: -117 110 2
x8670:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x8672:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x8675:	mov ax, [bp]	; 3: -117 70 0
x8678:	mov di, [bp + 4]	; 3: -117 126 4
x8681:	mov bp, [bp + 2]	; 3: -117 110 2
x8684:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x8686:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x8689:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x8691:	fcompp	; 2: -34 -39
x8693:	fstsw ax	; 3: -101 -33 -32
x8696:	sahf	; 1: -98
x8697:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x8699:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x8703:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 13 34
x8708:	mov [bp + 26], bp	; 3: -119 110 26
x8711:	add bp, 24	; 3: -125 -59 24
x8714:	jmp printChar	; 3: -23 122 -10

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x8717:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x8719:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x8722:	mov ax, [bp + 20]	; 3: -117 70 20
x8725:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x8728:	mov ax, [bp + 18]	; 3: -117 70 18
x8731:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x8734:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 44 34
x8739:	mov [bp + 26], bp	; 3: -119 110 26
x8742:	add bp, 24	; 3: -125 -59 24
x8745:	jmp printLongDoubleFraction	; 3: -23 87 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x8748:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x8752:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary1949 = 69
x8754:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x8756:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary1949 = 101
x8758:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary1949, offset 6
x8760:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x8763:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 73 34
x8768:	mov [bp + 26], bp	; 3: -119 110 26
x8771:	add bp, 24	; 3: -125 -59 24
x8774:	jmp printChar	; 3: -23 62 -10

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x8777:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x8781:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 91 34
x8786:	mov [bp + 26], bp	; 3: -119 110 26
x8789:	add bp, 24	; 3: -125 -59 24
x8792:	jmp printChar	; 3: -23 44 -10

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x8795:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x8798:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x8801:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x8803:	fcompp	; 2: -34 -39
x8805:	fstsw ax	; 3: -101 -33 -32
x8808:	sahf	; 1: -98
x8809:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x8811:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x8815:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 125 34
x8820:	mov [bp + 26], bp	; 3: -119 110 26
x8823:	add bp, 24	; 3: -125 -59 24
x8826:	jmp printChar	; 3: -23 10 -10

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x8829:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary1954 = -value
x8832:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x8834:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x8837:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x8840:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x8843:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 -103 34
x8848:	mov [bp + 26], bp	; 3: -119 110 26
x8851:	add bp, 24	; 3: -125 -59 24
x8854:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary1955 = return_value

printLongDoubleExpo$43:	; £temporary1956 = float_to_int £temporary1955 (Double -> Signed_Int)
x8857:	fistp word [container2bytes#]	; 4: -33 30 -122 23
x8861:	mov ax, [container2bytes#]	; 3: -95 -122 23

printLongDoubleExpo$44:	; expo = £temporary1956
x8864:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x8867:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x8870:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x8873:	fld qword [float8$10.0#]	; 4: -35 6 35 33

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x8877:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary1957 = int_to_float expo (Signed_Int -> Double)
x8880:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary1957, offset 14
x8883:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x8886:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -60 34
x8891:	mov [bp + 36], bp	; 3: -119 110 36
x8894:	add bp, 34	; 3: -125 -59 34
x8897:	jmp pow	; 3: -23 -18 1

printLongDoubleExpo$52:	; post call
x8900:	fstp qword [bp + 34]	; 3: -35 94 34
x8903:	fld qword [bp + 26]	; 3: -35 70 26
x8906:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary1958 = return_value

printLongDoubleExpo$54:	; £temporary1959 = value / £temporary1958
x8909:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x8911:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x8914:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x8917:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x8920:	mov ax, [bp + 14]	; 3: -117 70 14
x8923:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x8926:	mov ax, [bp + 16]	; 3: -117 70 16
x8929:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x8932:	mov ax, [bp + 18]	; 3: -117 70 18
x8935:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x8938:	mov ax, [bp + 20]	; 3: -117 70 20
x8941:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x8944:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 -2 34
x8949:	mov [bp + 28], bp	; 3: -119 110 28
x8952:	add bp, 26	; 3: -125 -59 26
x8955:	jmp printLongDoublePlain	; 3: -23 -23 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x8958:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x8962:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary1965 = 69
x8964:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x8966:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary1965 = 101
x8968:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary1965, offset 6
x8970:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x8973:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 27 35
x8978:	mov [bp + 28], bp	; 3: -119 110 28
x8981:	add bp, 26	; 3: -125 -59 26
x8984:	jmp printChar	; 3: -23 108 -11

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary1967 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x8987:	mov ax, [bp + 24]	; 3: -117 70 24
x8990:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x8996:	cmp ax, 0	; 3: -125 -8 0
x8999:	jge printLongDoubleExpo$75	; 2: 125 5
x9001:	neg ax	; 2: -9 -40
x9003:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary1967, offset 6
x9006:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x9010:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x9015:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x9020:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 74 35
x9025:	mov [bp + 28], bp	; 3: -119 110 28
x9028:	add bp, 26	; 3: -125 -59 26
x9031:	jmp printLongInt	; 3: -23 -87 -12

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x9034:	mov ax, [bp]	; 3: -117 70 0
x9037:	mov di, [bp + 4]	; 3: -117 126 4
x9040:	mov bp, [bp + 2]	; 3: -117 110 2
x9043:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; call header integral zero 0 stack zero 0

log10$1:	; push float x
x9045:	fld qword [bp + 6]	; 3: -35 70 6

log10$2:	; parameter x, offset 6
x9048:	fstp qword [bp + 20]	; 3: -35 94 20

log10$3:	; call function noellipse-noellipse log
x9051:	mov word [bp + 14], log10$4	; 5: -57 70 14 105 35
x9056:	mov [bp + 16], bp	; 3: -119 110 16
x9059:	add bp, 14	; 3: -125 -59 14
x9062:	nop	; 1: -112
x9063:	jmp log	; 2: -21 25

log10$4:	; post call

log10$5:	; £temporary550 = return_value

log10$6:	; push float 2.30
x9065:	fld qword [float8$2.30#]	; 4: -35 6 122 35

log10$7:	; £temporary551 = £temporary550 / 2.30
x9069:	fdiv	; 2: -34 -7

log10$8:	; return_value = £temporary551

log10$9:	; return
x9071:	mov ax, [bp]	; 3: -117 70 0
x9074:	mov di, [bp + 4]	; 3: -117 126 4
x9077:	mov bp, [bp + 2]	; 3: -117 110 2
x9080:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$2.30#:
x9082:	dq 2.30	; 8: 102 102 102 102 102 102 2 64

log:	; push float x
x9090:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x9093:	fldz	; 2: -39 -18

log$2:	; if x <= 0 goto 76
x9095:	fcompp	; 2: -34 -39
x9097:	fstsw ax	; 3: -101 -33 -32
x9100:	sahf	; 1: -98
x9101:	jae log$76	; 4: 15 -125 -18 0

log$3:	; n = 0
x9105:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x
x9110:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push 1
x9113:	fld1	; 2: -39 -24

log$6:	; if x <= 1 goto 16
x9115:	fcompp	; 2: -34 -39
x9117:	fstsw ax	; 3: -101 -33 -32
x9120:	sahf	; 1: -98
x9121:	jae log$16	; 2: 115 30

log$7:	; push float x
x9123:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push 1
x9126:	fld1	; 2: -39 -24

log$9:	; if x <= 1 goto 28
x9128:	fcompp	; 2: -34 -39
x9130:	fstsw ax	; 3: -101 -33 -32
x9133:	sahf	; 1: -98
x9134:	jae log$28	; 2: 115 64

log$10:	; push float x
x9136:	fld qword [bp + 6]	; 3: -35 70 6

log$11:	; push float 2.71
x9139:	fld qword [float8$2.71#]	; 4: -35 6 -110 36

log$12:	; £temporary532 = x / 2.71
x9143:	fdiv	; 2: -34 -7

log$13:	; pop float x
x9145:	fstp qword [bp + 6]	; 3: -35 94 6

log$14:	; ++n
x9148:	inc word [bp + 14]	; 3: -1 70 14

log$15:	; goto 7
x9151:	jmp log$7	; 2: -21 -30

log$16:	; push float x
x9153:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 0.3690036900369003690036900369
x9156:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 -102 36

log$18:	; if x >= 0.3690036900369003690036900369 goto 28
x9160:	fcompp	; 2: -34 -39
x9162:	fstsw ax	; 3: -101 -33 -32
x9165:	sahf	; 1: -98
x9166:	jbe log$28	; 2: 118 32

log$19:	; push float x
x9168:	fld qword [bp + 6]	; 3: -35 70 6

log$20:	; push float 0.3690036900369003690036900369
x9171:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 -102 36

log$21:	; if x >= 0.3690036900369003690036900369 goto 28
x9175:	fcompp	; 2: -34 -39
x9177:	fstsw ax	; 3: -101 -33 -32
x9180:	sahf	; 1: -98
x9181:	jbe log$28	; 2: 118 17

log$22:	; push float x
x9183:	fld qword [bp + 6]	; 3: -35 70 6

log$23:	; push float 2.71
x9186:	fld qword [float8$2.71#]	; 4: -35 6 -110 36

log$24:	; £temporary536 = x * 2.71
x9190:	fmul	; 2: -34 -55

log$25:	; pop float x
x9192:	fstp qword [bp + 6]	; 3: -35 94 6

log$26:	; --n
x9195:	dec word [bp + 14]	; 3: -1 78 14

log$27:	; goto 19
x9198:	jmp log$19	; 2: -21 -32

log$28:	; push 1
x9200:	fld1	; 2: -39 -24

log$29:	; pop float index
x9202:	fstp qword [bp + 16]	; 3: -35 94 16

log$30:	; push 0
x9205:	fldz	; 2: -39 -18

log$31:	; pop float sum
x9207:	fstp qword [bp + 32]	; 3: -35 94 32

log$32:	; push 1
x9210:	fld1	; 2: -39 -24

log$33:	; pop float sign
x9212:	fstp qword [bp + 40]	; 3: -35 94 40

log$34:	; push float x
x9215:	fld qword [bp + 6]	; 3: -35 70 6

log$35:	; push 1
x9218:	fld1	; 2: -39 -24

log$36:	; £temporary538 = x - 1
x9220:	fsub	; 2: -34 -23

log$37:	; pop float x_minus_1
x9222:	fstp qword [bp + 48]	; 3: -35 94 48

log$38:	; push float x_minus_1
x9225:	fld qword [bp + 48]	; 3: -35 70 48

log$39:	; pop float power
x9228:	fstp qword [bp + 56]	; 3: -35 94 56

log$40:	; push float sign
x9231:	fld qword [bp + 40]	; 3: -35 70 40

log$41:	; push float power
x9234:	fld qword [bp + 56]	; 3: -35 70 56

log$42:	; £temporary539 = sign * power
x9237:	fmul	; 2: -34 -55

log$43:	; push float index
x9239:	fld qword [bp + 16]	; 3: -35 70 16

log$44:	; push 1
x9242:	fld1	; 2: -39 -24

log$45:	; index = index + 1
x9244:	fadd	; 2: -34 -63

log$46:	; top float index
x9246:	fst qword [bp + 16]	; 3: -35 86 16

log$47:	; push 1
x9249:	fld1	; 2: -39 -24

log$48:	; index = index - 1
x9251:	fsub	; 2: -34 -23

log$49:	; £temporary541 = £temporary539 / £temporary540
x9253:	fdiv	; 2: -34 -7

log$50:	; pop float term
x9255:	fstp qword [bp + 24]	; 3: -35 94 24

log$51:	; push float sum
x9258:	fld qword [bp + 32]	; 3: -35 70 32

log$52:	; push float term
x9261:	fld qword [bp + 24]	; 3: -35 70 24

log$53:	; £temporary542 = sum + term
x9264:	fadd	; 2: -34 -63

log$54:	; pop float sum
x9266:	fstp qword [bp + 32]	; 3: -35 94 32

log$55:	; push float power
x9269:	fld qword [bp + 56]	; 3: -35 70 56

log$56:	; push float x_minus_1
x9272:	fld qword [bp + 48]	; 3: -35 70 48

log$57:	; £temporary543 = power * x_minus_1
x9275:	fmul	; 2: -34 -55

log$58:	; pop float power
x9277:	fstp qword [bp + 56]	; 3: -35 94 56

log$59:	; push float sign
x9280:	fld qword [bp + 40]	; 3: -35 70 40

log$60:	; push float -1.0
x9283:	fld qword [float8$minus1.0#]	; 4: -35 6 -94 36

log$61:	; £temporary544 = sign * -1.0
x9287:	fmul	; 2: -34 -55

log$62:	; pop float sign
x9289:	fstp qword [bp + 40]	; 3: -35 94 40

log$63:	; call header integral zero 0 stack zero 0

log$64:	; push float term
x9292:	fld qword [bp + 24]	; 3: -35 70 24

log$65:	; parameter term, offset 6
x9295:	fstp qword [bp + 70]	; 3: -35 94 70

log$66:	; call function noellipse-noellipse fabs
x9298:	mov word [bp + 64], log$67	; 5: -57 70 64 96 36
x9303:	mov [bp + 66], bp	; 3: -119 110 66
x9306:	add bp, 64	; 3: -125 -59 64
x9309:	jmp fabs	; 3: -23 -53 -4

log$67:	; post call

log$68:	; £temporary545 = return_value

log$69:	; push float 0.000000001
x9312:	fld qword [float8$0.000000001#]	; 4: -35 6 -86 36

log$70:	; if £temporary545 >= 0.000000001 goto 40
x9316:	fcompp	; 2: -34 -39
x9318:	fstsw ax	; 3: -101 -33 -32
x9321:	sahf	; 1: -98
x9322:	jbe log$40	; 2: 118 -93

log$71:	; push float sum
x9324:	fld qword [bp + 32]	; 3: -35 70 32

log$72:	; £temporary547 = int_to_float n (Signed_Int -> Double)
x9327:	fild word [bp + 14]	; 3: -33 70 14

log$73:	; £temporary548 = sum + £temporary547
x9330:	fadd	; 2: -34 -63

log$74:	; return_value = £temporary548

log$75:	; return
x9332:	mov ax, [bp]	; 3: -117 70 0
x9335:	mov di, [bp + 4]	; 3: -117 126 4
x9338:	mov bp, [bp + 2]	; 3: -117 110 2
x9341:	jmp ax	; 2: -1 -32

log$76:	; errno = 6
x9343:	mov word [errno], 6	; 6: -57 6 7 9 6 0

log$77:	; push 0
x9349:	fldz	; 2: -39 -18

log$78:	; return_value = 0

log$79:	; return
x9351:	mov ax, [bp]	; 3: -117 70 0
x9354:	mov di, [bp + 4]	; 3: -117 126 4
x9357:	mov bp, [bp + 2]	; 3: -117 110 2
x9360:	jmp ax	; 2: -1 -32

log$80:	; function end log

float8$2.71#:
x9362:	dq 2.71	; 8: -82 71 -31 122 20 -82 5 64

float8$0.3690036900369003690036900369#:
x9370:	dq 0.3690036900369003690036900369	; 8: -86 -12 51 -89 -63 -99 -41 63

float8$minus1.0#:
x9378:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x9386:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

pow:	; push float x
x9394:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x9397:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x9399:	fcompp	; 2: -34 -39
x9401:	fstsw ax	; 3: -101 -33 -32
x9404:	sahf	; 1: -98
x9405:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x9407:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x9410:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x9413:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x9416:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x9419:	mov word [bp + 30], pow$9	; 5: -57 70 30 -39 36
x9424:	mov [bp + 32], bp	; 3: -119 110 32
x9427:	add bp, 30	; 3: -125 -59 30
x9430:	jmp log	; 3: -23 -87 -2

pow$9:	; post call
x9433:	fstp qword [bp + 30]	; 3: -35 94 30
x9436:	fld qword [bp + 22]	; 3: -35 70 22
x9439:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary554 = return_value

pow$11:	; £temporary555 = y * £temporary554
x9442:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary555, offset 6
x9444:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x9447:	mov word [bp + 22], pow$14	; 5: -57 70 22 -11 36
x9452:	mov [bp + 24], bp	; 3: -119 110 24
x9455:	add bp, 22	; 3: -125 -59 22
x9458:	jmp exp	; 3: -23 102 1

pow$14:	; post call

pow$15:	; £temporary556 = return_value

pow$16:	; return_value = £temporary556

pow$17:	; return
x9461:	mov ax, [bp]	; 3: -117 70 0
x9464:	mov di, [bp + 4]	; 3: -117 126 4
x9467:	mov bp, [bp + 2]	; 3: -117 110 2
x9470:	jmp ax	; 2: -1 -32

pow$18:	; push float x
x9472:	fld qword [bp + 6]	; 3: -35 70 6

pow$19:	; push 0
x9475:	fldz	; 2: -39 -18

pow$20:	; if x != 0 goto 27
x9477:	fcompp	; 2: -34 -39
x9479:	fstsw ax	; 3: -101 -33 -32
x9482:	sahf	; 1: -98
x9483:	jne pow$27	; 2: 117 26

pow$21:	; push float y
x9485:	fld qword [bp + 14]	; 3: -35 70 14

pow$22:	; push 0
x9488:	fldz	; 2: -39 -18

pow$23:	; if y != 0 goto 27
x9490:	fcompp	; 2: -34 -39
x9492:	fstsw ax	; 3: -101 -33 -32
x9495:	sahf	; 1: -98
x9496:	jne pow$27	; 2: 117 13

pow$24:	; push 1
x9498:	fld1	; 2: -39 -24

pow$25:	; return_value = 1

pow$26:	; return
x9500:	mov ax, [bp]	; 3: -117 70 0
x9503:	mov di, [bp + 4]	; 3: -117 126 4
x9506:	mov bp, [bp + 2]	; 3: -117 110 2
x9509:	jmp ax	; 2: -1 -32

pow$27:	; push float x
x9511:	fld qword [bp + 6]	; 3: -35 70 6

pow$28:	; push 0
x9514:	fldz	; 2: -39 -18

pow$29:	; if x != 0 goto 36
x9516:	fcompp	; 2: -34 -39
x9518:	fstsw ax	; 3: -101 -33 -32
x9521:	sahf	; 1: -98
x9522:	jne pow$36	; 2: 117 26

pow$30:	; push float y
x9524:	fld qword [bp + 14]	; 3: -35 70 14

pow$31:	; push 0
x9527:	fldz	; 2: -39 -18

pow$32:	; if y <= 0 goto 36
x9529:	fcompp	; 2: -34 -39
x9531:	fstsw ax	; 3: -101 -33 -32
x9534:	sahf	; 1: -98
x9535:	jae pow$36	; 2: 115 13

pow$33:	; push 0
x9537:	fldz	; 2: -39 -18

pow$34:	; return_value = 0

pow$35:	; return
x9539:	mov ax, [bp]	; 3: -117 70 0
x9542:	mov di, [bp + 4]	; 3: -117 126 4
x9545:	mov bp, [bp + 2]	; 3: -117 110 2
x9548:	jmp ax	; 2: -1 -32

pow$36:	; push float x
x9550:	fld qword [bp + 6]	; 3: -35 70 6

pow$37:	; push 0
x9553:	fldz	; 2: -39 -18

pow$38:	; if x >= 0 goto 90
x9555:	fcompp	; 2: -34 -39
x9557:	fstsw ax	; 3: -101 -33 -32
x9560:	sahf	; 1: -98
x9561:	jbe pow$90	; 4: 15 -122 -25 0

pow$39:	; call header integral zero 0 stack zero 0

pow$40:	; push float y
x9565:	fld qword [bp + 14]	; 3: -35 70 14

pow$41:	; parameter y, offset 6
x9568:	fstp qword [bp + 28]	; 3: -35 94 28

pow$42:	; call function noellipse-noellipse floor
x9571:	mov word [bp + 22], pow$43	; 5: -57 70 22 113 37
x9576:	mov [bp + 24], bp	; 3: -119 110 24
x9579:	add bp, 22	; 3: -125 -59 22
x9582:	jmp floor	; 3: -23 96 1

pow$43:	; post call

pow$44:	; £temporary564 = return_value

pow$45:	; call header integral zero 0 stack no zero 1
x9585:	fstp qword [bp + 22]	; 3: -35 94 22

pow$46:	; push float y
x9588:	fld qword [bp + 14]	; 3: -35 70 14

pow$47:	; parameter y, offset 6
x9591:	fstp qword [bp + 36]	; 3: -35 94 36

pow$48:	; call function noellipse-noellipse ceil
x9594:	mov word [bp + 30], pow$49	; 5: -57 70 30 -120 37
x9599:	mov [bp + 32], bp	; 3: -119 110 32
x9602:	add bp, 30	; 3: -125 -59 30
x9605:	jmp ceil	; 3: -23 -105 1

pow$49:	; post call
x9608:	fstp qword [bp + 30]	; 3: -35 94 30
x9611:	fld qword [bp + 22]	; 3: -35 70 22
x9614:	fld qword [bp + 30]	; 3: -35 70 30

pow$50:	; £temporary565 = return_value

pow$51:	; if £temporary564 != £temporary565 goto 90
x9617:	fcompp	; 2: -34 -39
x9619:	fstsw ax	; 3: -101 -33 -32
x9622:	sahf	; 1: -98
x9623:	jne pow$90	; 4: 15 -123 -87 0

pow$52:	; push float y
x9627:	fld qword [bp + 14]	; 3: -35 70 14

pow$53:	; £temporary568 = float_to_int y (Double -> Signed_Long_Int)
x9630:	fistp dword [container4bytes#]	; 4: -37 30 127 32
x9634:	mov eax, [container4bytes#]	; 4: 102 -95 127 32

pow$54:	; long_y = £temporary568
x9638:	mov [bp + 22], eax	; 4: 102 -119 70 22

pow$55:	; £temporary569 = long_y % 2
x9642:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x9646:	xor edx, edx	; 3: 102 49 -46
x9649:	idiv dword [int4$2#]	; 5: 102 -9 62 87 38

pow$56:	; if £temporary569 != 0 goto 73
x9654:	cmp edx, 0	; 4: 102 -125 -6 0
x9658:	jne pow$73	; 2: 117 67

pow$57:	; call header integral zero 0 stack zero 0

pow$58:	; push float y
x9660:	fld qword [bp + 14]	; 3: -35 70 14

pow$59:	; call header integral zero 0 stack no zero 1
x9663:	fstp qword [bp + 26]	; 3: -35 94 26

pow$60:	; push float x
x9666:	fld qword [bp + 6]	; 3: -35 70 6

pow$61:	; £temporary571 = -x
x9669:	fchs	; 2: -39 -32

pow$62:	; parameter £temporary571, offset 6
x9671:	fstp qword [bp + 40]	; 3: -35 94 40

pow$63:	; call function noellipse-noellipse log
x9674:	mov word [bp + 34], pow$64	; 5: -57 70 34 -40 37
x9679:	mov [bp + 36], bp	; 3: -119 110 36
x9682:	add bp, 34	; 3: -125 -59 34
x9685:	jmp log	; 3: -23 -86 -3

pow$64:	; post call
x9688:	fstp qword [bp + 34]	; 3: -35 94 34
x9691:	fld qword [bp + 26]	; 3: -35 70 26
x9694:	fld qword [bp + 34]	; 3: -35 70 34

pow$65:	; £temporary572 = return_value

pow$66:	; £temporary573 = y * £temporary572
x9697:	fmul	; 2: -34 -55

pow$67:	; parameter £temporary573, offset 6
x9699:	fstp qword [bp + 32]	; 3: -35 94 32

pow$68:	; call function noellipse-noellipse exp
x9702:	mov word [bp + 26], pow$69	; 5: -57 70 26 -12 37
x9707:	mov [bp + 28], bp	; 3: -119 110 28
x9710:	add bp, 26	; 3: -125 -59 26
x9713:	nop	; 1: -112
x9714:	jmp exp	; 2: -21 103

pow$69:	; post call

pow$70:	; £temporary574 = return_value

pow$71:	; return_value = £temporary574

pow$72:	; return
x9716:	mov ax, [bp]	; 3: -117 70 0
x9719:	mov di, [bp + 4]	; 3: -117 126 4
x9722:	mov bp, [bp + 2]	; 3: -117 110 2
x9725:	jmp ax	; 2: -1 -32

pow$73:	; call header integral zero 0 stack zero 0

pow$74:	; push float y
x9727:	fld qword [bp + 14]	; 3: -35 70 14

pow$75:	; call header integral zero 0 stack no zero 1
x9730:	fstp qword [bp + 26]	; 3: -35 94 26

pow$76:	; push float x
x9733:	fld qword [bp + 6]	; 3: -35 70 6

pow$77:	; £temporary575 = -x
x9736:	fchs	; 2: -39 -32

pow$78:	; parameter £temporary575, offset 6
x9738:	fstp qword [bp + 40]	; 3: -35 94 40

pow$79:	; call function noellipse-noellipse log
x9741:	mov word [bp + 34], pow$80	; 5: -57 70 34 27 38
x9746:	mov [bp + 36], bp	; 3: -119 110 36
x9749:	add bp, 34	; 3: -125 -59 34
x9752:	jmp log	; 3: -23 103 -3

pow$80:	; post call
x9755:	fstp qword [bp + 34]	; 3: -35 94 34
x9758:	fld qword [bp + 26]	; 3: -35 70 26
x9761:	fld qword [bp + 34]	; 3: -35 70 34

pow$81:	; £temporary576 = return_value

pow$82:	; £temporary577 = y * £temporary576
x9764:	fmul	; 2: -34 -55

pow$83:	; parameter £temporary577, offset 6
x9766:	fstp qword [bp + 32]	; 3: -35 94 32

pow$84:	; call function noellipse-noellipse exp
x9769:	mov word [bp + 26], pow$85	; 5: -57 70 26 55 38
x9774:	mov [bp + 28], bp	; 3: -119 110 28
x9777:	add bp, 26	; 3: -125 -59 26
x9780:	nop	; 1: -112
x9781:	jmp exp	; 2: -21 36

pow$85:	; post call

pow$86:	; £temporary578 = return_value

pow$87:	; £temporary579 = -£temporary578
x9783:	fchs	; 2: -39 -32

pow$88:	; return_value = £temporary579

pow$89:	; return
x9785:	mov ax, [bp]	; 3: -117 70 0
x9788:	mov di, [bp + 4]	; 3: -117 126 4
x9791:	mov bp, [bp + 2]	; 3: -117 110 2
x9794:	jmp ax	; 2: -1 -32

pow$90:	; errno = 6
x9796:	mov word [errno], 6	; 6: -57 6 7 9 6 0

pow$91:	; push 0
x9802:	fldz	; 2: -39 -18

pow$92:	; return_value = 0

pow$93:	; return
x9804:	mov ax, [bp]	; 3: -117 70 0
x9807:	mov di, [bp + 4]	; 3: -117 126 4
x9810:	mov bp, [bp + 2]	; 3: -117 110 2
x9813:	jmp ax	; 2: -1 -32

pow$94:	; function end pow

int4$2#:
x9815:	dd 2	; 4: 2 0 0 0

exp:	; push 1
x9819:	fld1	; 2: -39 -24

exp$1:	; pop float index
x9821:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x9824:	fld1	; 2: -39 -24

exp$3:	; pop float sum
x9826:	fstp qword [bp + 30]	; 3: -35 94 30

exp$4:	; push 1
x9829:	fld1	; 2: -39 -24

exp$5:	; pop float faculty
x9831:	fstp qword [bp + 38]	; 3: -35 94 38

exp$6:	; push float x
x9834:	fld qword [bp + 6]	; 3: -35 70 6

exp$7:	; pop float power
x9837:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x9840:	fld qword [bp + 46]	; 3: -35 70 46

exp$9:	; push float faculty
x9843:	fld qword [bp + 38]	; 3: -35 70 38

exp$10:	; £temporary521 = power / faculty
x9846:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x9848:	fstp qword [bp + 22]	; 3: -35 94 22

exp$12:	; push float sum
x9851:	fld qword [bp + 30]	; 3: -35 70 30

exp$13:	; push float term
x9854:	fld qword [bp + 22]	; 3: -35 70 22

exp$14:	; £temporary522 = sum + term
x9857:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x9859:	fstp qword [bp + 30]	; 3: -35 94 30

exp$16:	; push float power
x9862:	fld qword [bp + 46]	; 3: -35 70 46

exp$17:	; push float x
x9865:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary523 = power * x
x9868:	fmul	; 2: -34 -55

exp$19:	; pop float power
x9870:	fstp qword [bp + 46]	; 3: -35 94 46

exp$20:	; push float faculty
x9873:	fld qword [bp + 38]	; 3: -35 70 38

exp$21:	; push float index
x9876:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x9879:	fld1	; 2: -39 -24

exp$23:	; index = index + 1
x9881:	fadd	; 2: -34 -63

exp$24:	; top float index
x9883:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary525 = faculty * £temporary524
x9886:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x9888:	fstp qword [bp + 38]	; 3: -35 94 38

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x9891:	fld qword [bp + 22]	; 3: -35 70 22

exp$29:	; parameter term, offset 6
x9894:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x9897:	mov word [bp + 54], exp$31	; 5: -57 70 54 -73 38
x9902:	mov [bp + 56], bp	; 3: -119 110 56
x9905:	add bp, 54	; 3: -125 -59 54
x9908:	jmp fabs	; 3: -23 116 -6

exp$31:	; post call

exp$32:	; £temporary526 = return_value

exp$33:	; push float 0.000000001
x9911:	fld qword [float8$0.000000001#]	; 4: -35 6 -86 36

exp$34:	; if £temporary526 >= 0.000000001 goto 8
x9915:	fcompp	; 2: -34 -39
x9917:	fstsw ax	; 3: -101 -33 -32
x9920:	sahf	; 1: -98
x9921:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x9923:	fld qword [bp + 30]	; 3: -35 70 30

exp$36:	; return_value = sum

exp$37:	; return
x9926:	mov ax, [bp]	; 3: -117 70 0
x9929:	mov di, [bp + 4]	; 3: -117 126 4
x9932:	mov bp, [bp + 2]	; 3: -117 110 2
x9935:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

floor:	; push float x
x9937:	fld qword [bp + 6]	; 3: -35 70 6

floor$1:	; push 0
x9940:	fldz	; 2: -39 -18

floor$2:	; if x >= 0 goto 13
x9942:	fcompp	; 2: -34 -39
x9944:	fstsw ax	; 3: -101 -33 -32
x9947:	sahf	; 1: -98
x9948:	jbe floor$13	; 2: 118 35

floor$3:	; call header integral zero 0 stack zero 0

floor$4:	; push float x
x9950:	fld qword [bp + 6]	; 3: -35 70 6

floor$5:	; £temporary805 = -x
x9953:	fchs	; 2: -39 -32

floor$6:	; parameter £temporary805, offset 6
x9955:	fstp qword [bp + 20]	; 3: -35 94 20

floor$7:	; call function noellipse-noellipse ceil
x9958:	mov word [bp + 14], floor$8	; 5: -57 70 14 -12 38
x9963:	mov [bp + 16], bp	; 3: -119 110 16
x9966:	add bp, 14	; 3: -125 -59 14
x9969:	nop	; 1: -112
x9970:	jmp ceil	; 2: -21 43

floor$8:	; post call

floor$9:	; £temporary806 = return_value

floor$10:	; £temporary807 = -£temporary806
x9972:	fchs	; 2: -39 -32

floor$11:	; return_value = £temporary807

floor$12:	; return
x9974:	mov ax, [bp]	; 3: -117 70 0
x9977:	mov di, [bp + 4]	; 3: -117 126 4
x9980:	mov bp, [bp + 2]	; 3: -117 110 2
x9983:	jmp ax	; 2: -1 -32

floor$13:	; push float x
x9985:	fld qword [bp + 6]	; 3: -35 70 6

floor$14:	; £temporary808 = float_to_int x (Double -> Signed_Long_Int)
x9988:	fistp dword [container4bytes#]	; 4: -37 30 127 32
x9992:	mov eax, [container4bytes#]	; 4: 102 -95 127 32

floor$15:	; £temporary809 = int_to_float £temporary808 (Signed_Long_Int -> Double)
x9996:	mov [container4bytes#], eax	; 4: 102 -93 127 32
x10000:	fild dword [container4bytes#]	; 4: -37 6 127 32

floor$16:	; return_value = £temporary809

floor$17:	; return
x10004:	mov ax, [bp]	; 3: -117 70 0
x10007:	mov di, [bp + 4]	; 3: -117 126 4
x10010:	mov bp, [bp + 2]	; 3: -117 110 2
x10013:	jmp ax	; 2: -1 -32

floor$18:	; function end floor

ceil:	; push float x
x10015:	fld qword [bp + 6]	; 3: -35 70 6

ceil$1:	; push 0
x10018:	fldz	; 2: -39 -18

ceil$2:	; if x >= 0 goto 13
x10020:	fcompp	; 2: -34 -39
x10022:	fstsw ax	; 3: -101 -33 -32
x10025:	sahf	; 1: -98
x10026:	jbe ceil$13	; 2: 118 35

ceil$3:	; call header integral zero 0 stack zero 0

ceil$4:	; push float x
x10028:	fld qword [bp + 6]	; 3: -35 70 6

ceil$5:	; £temporary812 = -x
x10031:	fchs	; 2: -39 -32

ceil$6:	; parameter £temporary812, offset 6
x10033:	fstp qword [bp + 20]	; 3: -35 94 20

ceil$7:	; call function noellipse-noellipse floor
x10036:	mov word [bp + 14], ceil$8	; 5: -57 70 14 66 39
x10041:	mov [bp + 16], bp	; 3: -119 110 16
x10044:	add bp, 14	; 3: -125 -59 14
x10047:	nop	; 1: -112
x10048:	jmp floor	; 2: -21 -113

ceil$8:	; post call

ceil$9:	; £temporary813 = return_value

ceil$10:	; £temporary814 = -£temporary813
x10050:	fchs	; 2: -39 -32

ceil$11:	; return_value = £temporary814

ceil$12:	; return
x10052:	mov ax, [bp]	; 3: -117 70 0
x10055:	mov di, [bp + 4]	; 3: -117 126 4
x10058:	mov bp, [bp + 2]	; 3: -117 110 2
x10061:	jmp ax	; 2: -1 -32

ceil$13:	; push float x
x10063:	fld qword [bp + 6]	; 3: -35 70 6

ceil$14:	; push float 0.999999999999
x10066:	fld qword [float8$0.999999999999#]	; 4: -35 6 115 39

ceil$15:	; £temporary815 = x + 0.999999999999
x10070:	fadd	; 2: -34 -63

ceil$16:	; £temporary816 = float_to_int £temporary815 (Double -> Signed_Long_Int)
x10072:	fistp dword [container4bytes#]	; 4: -37 30 127 32
x10076:	mov eax, [container4bytes#]	; 4: 102 -95 127 32

ceil$17:	; £temporary817 = int_to_float £temporary816 (Signed_Long_Int -> Double)
x10080:	mov [container4bytes#], eax	; 4: 102 -93 127 32
x10084:	fild dword [container4bytes#]	; 4: -37 6 127 32

ceil$18:	; return_value = £temporary817

ceil$19:	; return
x10088:	mov ax, [bp]	; 3: -117 70 0
x10091:	mov di, [bp + 4]	; 3: -117 126 4
x10094:	mov bp, [bp + 2]	; 3: -117 110 2
x10097:	jmp ax	; 2: -1 -32

ceil$20:	; function end ceil

float8$0.999999999999#:
x10099:	dq 0.999999999999	; 8: -47 -36 -1 -1 -1 -1 -17 63

isdigit:	; if c < 48 goto 4
x10107:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x10111:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x10113:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x10117:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary406 = 1
x10119:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x10122:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary406 = 0
x10124:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary406

isdigit$6:	; return
x10127:	mov ax, [bp]	; 3: -117 70 0
x10130:	mov di, [bp + 4]	; 3: -117 126 4
x10133:	mov bp, [bp + 2]	; 3: -117 110 2
x10136:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

strcpy:	; index = 0
x10138:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcpy$1:	; £temporary3895 = source + index
x10143:	mov si, [bp + 8]	; 3: -117 118 8
x10146:	add si, [bp + 10]	; 3: 3 118 10

strcpy$2:	; £temporary3894 -> £temporary3895 = *£temporary3895

strcpy$3:	; if £temporary3894 -> £temporary3895 == 0 goto 11
x10149:	cmp byte [si], 0	; 3: -128 60 0
x10152:	je strcpy$11	; 2: 116 21

strcpy$4:	; £temporary3899 = target + index
x10154:	mov si, [bp + 6]	; 3: -117 118 6
x10157:	add si, [bp + 10]	; 3: 3 118 10

strcpy$5:	; £temporary3898 -> £temporary3899 = *£temporary3899

strcpy$6:	; £temporary3901 = source + index
x10160:	mov di, [bp + 8]	; 3: -117 126 8
x10163:	add di, [bp + 10]	; 3: 3 126 10

strcpy$7:	; £temporary3900 -> £temporary3901 = *£temporary3901

strcpy$8:	; £temporary3898 -> £temporary3899 = £temporary3900 -> £temporary3901
x10166:	mov al, [di]	; 2: -118 5
x10168:	mov [si], al	; 2: -120 4

strcpy$9:	; ++index
x10170:	inc word [bp + 10]	; 3: -1 70 10

strcpy$10:	; goto 1
x10173:	jmp strcpy$1	; 2: -21 -32

strcpy$11:	; £temporary3903 = target + index
x10175:	mov si, [bp + 6]	; 3: -117 118 6
x10178:	add si, [bp + 10]	; 3: 3 118 10

strcpy$12:	; £temporary3902 -> £temporary3903 = *£temporary3903

strcpy$13:	; £temporary3902 -> £temporary3903 = 0
x10181:	mov byte [si], 0	; 3: -58 4 0

strcpy$14:	; return_value = target
x10184:	mov bx, [bp + 6]	; 3: -117 94 6

strcpy$15:	; return
x10187:	mov ax, [bp]	; 3: -117 70 0
x10190:	mov di, [bp + 4]	; 3: -117 126 4
x10193:	mov bp, [bp + 2]	; 3: -117 110 2
x10196:	jmp ax	; 2: -1 -32

strcpy$16:	; function end strcpy

strncpy:	; index = 0
x10198:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strncpy$1:	; if index >= size goto 12
x10203:	mov ax, [bp + 10]	; 3: -117 70 10
x10206:	cmp [bp + 12], ax	; 3: 57 70 12
x10209:	jge strncpy$12	; 2: 125 32

strncpy$2:	; £temporary3906 = source + index
x10211:	mov si, [bp + 8]	; 3: -117 118 8
x10214:	add si, [bp + 12]	; 3: 3 118 12

strncpy$3:	; £temporary3905 -> £temporary3906 = *£temporary3906

strncpy$4:	; if £temporary3905 -> £temporary3906 == 0 goto 12
x10217:	cmp byte [si], 0	; 3: -128 60 0
x10220:	je strncpy$12	; 2: 116 21

strncpy$5:	; £temporary3911 = target + index
x10222:	mov si, [bp + 6]	; 3: -117 118 6
x10225:	add si, [bp + 12]	; 3: 3 118 12

strncpy$6:	; £temporary3910 -> £temporary3911 = *£temporary3911

strncpy$7:	; £temporary3913 = source + index
x10228:	mov di, [bp + 8]	; 3: -117 126 8
x10231:	add di, [bp + 12]	; 3: 3 126 12

strncpy$8:	; £temporary3912 -> £temporary3913 = *£temporary3913

strncpy$9:	; £temporary3910 -> £temporary3911 = £temporary3912 -> £temporary3913
x10234:	mov al, [di]	; 2: -118 5
x10236:	mov [si], al	; 2: -120 4

strncpy$10:	; ++index
x10238:	inc word [bp + 12]	; 3: -1 70 12

strncpy$11:	; goto 1
x10241:	jmp strncpy$1	; 2: -21 -40

strncpy$12:	; if index >= size goto 18
x10243:	mov ax, [bp + 10]	; 3: -117 70 10
x10246:	cmp [bp + 12], ax	; 3: 57 70 12
x10249:	jge strncpy$18	; 2: 125 14

strncpy$13:	; £temporary3917 = target + index
x10251:	mov si, [bp + 6]	; 3: -117 118 6
x10254:	add si, [bp + 12]	; 3: 3 118 12

strncpy$14:	; £temporary3916 -> £temporary3917 = *£temporary3917

strncpy$15:	; £temporary3916 -> £temporary3917 = 0
x10257:	mov byte [si], 0	; 3: -58 4 0

strncpy$16:	; ++index
x10260:	inc word [bp + 12]	; 3: -1 70 12

strncpy$17:	; goto 12
x10263:	jmp strncpy$12	; 2: -21 -22

strncpy$18:	; return_value = target
x10265:	mov bx, [bp + 6]	; 3: -117 94 6

strncpy$19:	; return
x10268:	mov ax, [bp]	; 3: -117 70 0
x10271:	mov di, [bp + 4]	; 3: -117 126 4
x10274:	mov bp, [bp + 2]	; 3: -117 110 2
x10277:	jmp ax	; 2: -1 -32

strncpy$20:	; function end strncpy

strcat:	; call header integral zero 0 stack zero 0

strcat$1:	; parameter target, offset 6
x10279:	mov ax, [bp + 6]	; 3: -117 70 6
x10282:	mov [bp + 18], ax	; 3: -119 70 18

strcat$2:	; call function noellipse-noellipse strlen
x10285:	mov word [bp + 12], strcat$3	; 5: -57 70 12 59 40
x10290:	mov [bp + 14], bp	; 3: -119 110 14
x10293:	add bp, 12	; 3: -125 -59 12
x10296:	jmp strlen	; 3: -23 -25 -32

strcat$3:	; post call

strcat$4:	; £temporary3918 = return_value

strcat$5:	; targetLength = £temporary3918
x10299:	mov [bp + 12], bx	; 3: -119 94 12

strcat$6:	; index = 0
x10302:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcat$7:	; £temporary3920 = source + index
x10307:	mov si, [bp + 8]	; 3: -117 118 8
x10310:	add si, [bp + 10]	; 3: 3 118 10

strcat$8:	; £temporary3919 -> £temporary3920 = *£temporary3920

strcat$9:	; if £temporary3919 -> £temporary3920 == 0 goto 18
x10313:	cmp byte [si], 0	; 3: -128 60 0
x10316:	je strcat$18	; 2: 116 26

strcat$10:	; £temporary3923 = targetLength + index
x10318:	mov ax, [bp + 12]	; 3: -117 70 12
x10321:	add ax, [bp + 10]	; 3: 3 70 10

strcat$11:	; £temporary3925 = target + £temporary3923
x10324:	mov si, [bp + 6]	; 3: -117 118 6
x10327:	add si, ax	; 2: 1 -58

strcat$12:	; £temporary3924 -> £temporary3925 = *£temporary3925

strcat$13:	; £temporary3927 = source + index
x10329:	mov di, [bp + 8]	; 3: -117 126 8
x10332:	add di, [bp + 10]	; 3: 3 126 10

strcat$14:	; £temporary3926 -> £temporary3927 = *£temporary3927

strcat$15:	; £temporary3924 -> £temporary3925 = £temporary3926 -> £temporary3927
x10335:	mov al, [di]	; 2: -118 5
x10337:	mov [si], al	; 2: -120 4

strcat$16:	; ++index
x10339:	inc word [bp + 10]	; 3: -1 70 10

strcat$17:	; goto 7
x10342:	jmp strcat$7	; 2: -21 -37

strcat$18:	; £temporary3928 = targetLength + index
x10344:	mov ax, [bp + 12]	; 3: -117 70 12
x10347:	add ax, [bp + 10]	; 3: 3 70 10

strcat$19:	; £temporary3930 = target + £temporary3928
x10350:	mov si, [bp + 6]	; 3: -117 118 6
x10353:	add si, ax	; 2: 1 -58

strcat$20:	; £temporary3929 -> £temporary3930 = *£temporary3930

strcat$21:	; £temporary3929 -> £temporary3930 = 0
x10355:	mov byte [si], 0	; 3: -58 4 0

strcat$22:	; return_value = target
x10358:	mov bx, [bp + 6]	; 3: -117 94 6

strcat$23:	; return
x10361:	mov ax, [bp]	; 3: -117 70 0
x10364:	mov di, [bp + 4]	; 3: -117 126 4
x10367:	mov bp, [bp + 2]	; 3: -117 110 2
x10370:	jmp ax	; 2: -1 -32

strcat$24:	; function end strcat

strncat:	; call header integral zero 0 stack zero 0

strncat$1:	; parameter target, offset 6
x10372:	mov ax, [bp + 6]	; 3: -117 70 6
x10375:	mov [bp + 20], ax	; 3: -119 70 20

strncat$2:	; call function noellipse-noellipse strlen
x10378:	mov word [bp + 14], strncat$3	; 5: -57 70 14 -104 40
x10383:	mov [bp + 16], bp	; 3: -119 110 16
x10386:	add bp, 14	; 3: -125 -59 14
x10389:	jmp strlen	; 3: -23 -118 -32

strncat$3:	; post call

strncat$4:	; £temporary3932 = return_value

strncat$5:	; targetLength = £temporary3932
x10392:	mov [bp + 14], bx	; 3: -119 94 14

strncat$6:	; index = 0
x10395:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strncat$7:	; £temporary3933 = size - 1
x10400:	mov ax, [bp + 10]	; 3: -117 70 10
x10403:	dec ax	; 1: 72

strncat$8:	; if index >= £temporary3933 goto 20
x10404:	cmp [bp + 12], ax	; 3: 57 70 12
x10407:	jge strncat$20	; 2: 125 37

strncat$9:	; £temporary3936 = source + index
x10409:	mov si, [bp + 8]	; 3: -117 118 8
x10412:	add si, [bp + 12]	; 3: 3 118 12

strncat$10:	; £temporary3935 -> £temporary3936 = *£temporary3936

strncat$11:	; if £temporary3935 -> £temporary3936 == 0 goto 20
x10415:	cmp byte [si], 0	; 3: -128 60 0
x10418:	je strncat$20	; 2: 116 26

strncat$12:	; £temporary3940 = targetLength + index
x10420:	mov ax, [bp + 14]	; 3: -117 70 14
x10423:	add ax, [bp + 12]	; 3: 3 70 12

strncat$13:	; £temporary3942 = target + £temporary3940
x10426:	mov si, [bp + 6]	; 3: -117 118 6
x10429:	add si, ax	; 2: 1 -58

strncat$14:	; £temporary3941 -> £temporary3942 = *£temporary3942

strncat$15:	; £temporary3944 = source + index
x10431:	mov di, [bp + 8]	; 3: -117 126 8
x10434:	add di, [bp + 12]	; 3: 3 126 12

strncat$16:	; £temporary3943 -> £temporary3944 = *£temporary3944

strncat$17:	; £temporary3941 -> £temporary3942 = £temporary3943 -> £temporary3944
x10437:	mov al, [di]	; 2: -118 5
x10439:	mov [si], al	; 2: -120 4

strncat$18:	; ++index
x10441:	inc word [bp + 12]	; 3: -1 70 12

strncat$19:	; goto 7
x10444:	jmp strncat$7	; 2: -21 -46

strncat$20:	; £temporary3945 = targetLength + size
x10446:	mov ax, [bp + 14]	; 3: -117 70 14
x10449:	add ax, [bp + 10]	; 3: 3 70 10

strncat$21:	; £temporary3946 = £temporary3945 - 1
x10452:	dec ax	; 1: 72

strncat$22:	; £temporary3948 = target + £temporary3946
x10453:	mov si, [bp + 6]	; 3: -117 118 6
x10456:	add si, ax	; 2: 1 -58

strncat$23:	; £temporary3947 -> £temporary3948 = *£temporary3948

strncat$24:	; £temporary3947 -> £temporary3948 = 0
x10458:	mov byte [si], 0	; 3: -58 4 0

strncat$25:	; return_value = target
x10461:	mov bx, [bp + 6]	; 3: -117 94 6

strncat$26:	; return
x10464:	mov ax, [bp]	; 3: -117 70 0
x10467:	mov di, [bp + 4]	; 3: -117 126 4
x10470:	mov bp, [bp + 2]	; 3: -117 110 2
x10473:	jmp ax	; 2: -1 -32

strncat$27:	; function end strncat

strcmp:	; index = 0
x10475:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcmp$1:	; £temporary3952 = left + index
x10480:	mov si, [bp + 6]	; 3: -117 118 6
x10483:	add si, [bp + 10]	; 3: 3 118 10

strcmp$2:	; £temporary3951 -> £temporary3952 = *£temporary3952

strcmp$3:	; if £temporary3951 -> £temporary3952 != 0 goto 9
x10486:	cmp byte [si], 0	; 3: -128 60 0
x10489:	jne strcmp$9	; 2: 117 25

strcmp$4:	; £temporary3955 = right + index
x10491:	mov si, [bp + 8]	; 3: -117 118 8
x10494:	add si, [bp + 10]	; 3: 3 118 10

strcmp$5:	; £temporary3954 -> £temporary3955 = *£temporary3955

strcmp$6:	; if £temporary3954 -> £temporary3955 != 0 goto 9
x10497:	cmp byte [si], 0	; 3: -128 60 0
x10500:	jne strcmp$9	; 2: 117 14

strcmp$7:	; return_value = 0
x10502:	mov bx, 0	; 3: -69 0 0

strcmp$8:	; return
x10505:	mov ax, [bp]	; 3: -117 70 0
x10508:	mov di, [bp + 4]	; 3: -117 126 4
x10511:	mov bp, [bp + 2]	; 3: -117 110 2
x10514:	jmp ax	; 2: -1 -32

strcmp$9:	; £temporary3959 = left + index
x10516:	mov si, [bp + 6]	; 3: -117 118 6
x10519:	add si, [bp + 10]	; 3: 3 118 10

strcmp$10:	; £temporary3958 -> £temporary3959 = *£temporary3959

strcmp$11:	; if £temporary3958 -> £temporary3959 != 0 goto 14
x10522:	cmp byte [si], 0	; 3: -128 60 0
x10525:	jne strcmp$14	; 2: 117 14

strcmp$12:	; return_value = -1
x10527:	mov bx, -1	; 3: -69 -1 -1

strcmp$13:	; return
x10530:	mov ax, [bp]	; 3: -117 70 0
x10533:	mov di, [bp + 4]	; 3: -117 126 4
x10536:	mov bp, [bp + 2]	; 3: -117 110 2
x10539:	jmp ax	; 2: -1 -32

strcmp$14:	; £temporary3962 = right + index
x10541:	mov si, [bp + 8]	; 3: -117 118 8
x10544:	add si, [bp + 10]	; 3: 3 118 10

strcmp$15:	; £temporary3961 -> £temporary3962 = *£temporary3962

strcmp$16:	; if £temporary3961 -> £temporary3962 != 0 goto 19
x10547:	cmp byte [si], 0	; 3: -128 60 0
x10550:	jne strcmp$19	; 2: 117 14

strcmp$17:	; return_value = 1
x10552:	mov bx, 1	; 3: -69 1 0

strcmp$18:	; return
x10555:	mov ax, [bp]	; 3: -117 70 0
x10558:	mov di, [bp + 4]	; 3: -117 126 4
x10561:	mov bp, [bp + 2]	; 3: -117 110 2
x10564:	jmp ax	; 2: -1 -32

strcmp$19:	; £temporary3965 = left + index
x10566:	mov si, [bp + 6]	; 3: -117 118 6
x10569:	add si, [bp + 10]	; 3: 3 118 10

strcmp$20:	; £temporary3964 -> £temporary3965 = *£temporary3965

strcmp$21:	; £temporary3967 = right + index
x10572:	mov di, [bp + 8]	; 3: -117 126 8
x10575:	add di, [bp + 10]	; 3: 3 126 10

strcmp$22:	; £temporary3966 -> £temporary3967 = *£temporary3967

strcmp$23:	; if £temporary3964 -> £temporary3965 >= £temporary3966 -> £temporary3967 goto 26
x10578:	mov al, [di]	; 2: -118 5
x10580:	cmp [si], al	; 2: 56 4
x10582:	jge strcmp$26	; 2: 125 14

strcmp$24:	; return_value = -1
x10584:	mov bx, -1	; 3: -69 -1 -1

strcmp$25:	; return
x10587:	mov ax, [bp]	; 3: -117 70 0
x10590:	mov di, [bp + 4]	; 3: -117 126 4
x10593:	mov bp, [bp + 2]	; 3: -117 110 2
x10596:	jmp ax	; 2: -1 -32

strcmp$26:	; £temporary3970 = left + index
x10598:	mov si, [bp + 6]	; 3: -117 118 6
x10601:	add si, [bp + 10]	; 3: 3 118 10

strcmp$27:	; £temporary3969 -> £temporary3970 = *£temporary3970

strcmp$28:	; £temporary3972 = right + index
x10604:	mov di, [bp + 8]	; 3: -117 126 8
x10607:	add di, [bp + 10]	; 3: 3 126 10

strcmp$29:	; £temporary3971 -> £temporary3972 = *£temporary3972

strcmp$30:	; if £temporary3969 -> £temporary3970 <= £temporary3971 -> £temporary3972 goto 33
x10610:	mov al, [di]	; 2: -118 5
x10612:	cmp [si], al	; 2: 56 4
x10614:	jle strcmp$33	; 2: 126 14

strcmp$31:	; return_value = 1
x10616:	mov bx, 1	; 3: -69 1 0

strcmp$32:	; return
x10619:	mov ax, [bp]	; 3: -117 70 0
x10622:	mov di, [bp + 4]	; 3: -117 126 4
x10625:	mov bp, [bp + 2]	; 3: -117 110 2
x10628:	jmp ax	; 2: -1 -32

strcmp$33:	; ++index
x10630:	inc word [bp + 10]	; 3: -1 70 10

strcmp$34:	; goto 1
x10633:	jmp strcmp$1	; 3: -23 100 -1

strcmp$35:	; function end strcmp

strncmp:	; index = 0
x10636:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strncmp$1:	; if index >= size goto 36
x10641:	mov ax, [bp + 10]	; 3: -117 70 10
x10644:	cmp [bp + 12], ax	; 3: 57 70 12
x10647:	jge strncmp$36	; 4: 15 -115 -100 0

strncmp$2:	; £temporary3978 = left + index
x10651:	mov si, [bp + 6]	; 3: -117 118 6
x10654:	add si, [bp + 12]	; 3: 3 118 12

strncmp$3:	; £temporary3977 -> £temporary3978 = *£temporary3978

strncmp$4:	; if £temporary3977 -> £temporary3978 != 0 goto 10
x10657:	cmp byte [si], 0	; 3: -128 60 0
x10660:	jne strncmp$10	; 2: 117 25

strncmp$5:	; £temporary3981 = right + index
x10662:	mov si, [bp + 8]	; 3: -117 118 8
x10665:	add si, [bp + 12]	; 3: 3 118 12

strncmp$6:	; £temporary3980 -> £temporary3981 = *£temporary3981

strncmp$7:	; if £temporary3980 -> £temporary3981 != 0 goto 10
x10668:	cmp byte [si], 0	; 3: -128 60 0
x10671:	jne strncmp$10	; 2: 117 14

strncmp$8:	; return_value = 0
x10673:	mov bx, 0	; 3: -69 0 0

strncmp$9:	; return
x10676:	mov ax, [bp]	; 3: -117 70 0
x10679:	mov di, [bp + 4]	; 3: -117 126 4
x10682:	mov bp, [bp + 2]	; 3: -117 110 2
x10685:	jmp ax	; 2: -1 -32

strncmp$10:	; £temporary3985 = left + index
x10687:	mov si, [bp + 6]	; 3: -117 118 6
x10690:	add si, [bp + 12]	; 3: 3 118 12

strncmp$11:	; £temporary3984 -> £temporary3985 = *£temporary3985

strncmp$12:	; if £temporary3984 -> £temporary3985 != 0 goto 15
x10693:	cmp byte [si], 0	; 3: -128 60 0
x10696:	jne strncmp$15	; 2: 117 14

strncmp$13:	; return_value = -1
x10698:	mov bx, -1	; 3: -69 -1 -1

strncmp$14:	; return
x10701:	mov ax, [bp]	; 3: -117 70 0
x10704:	mov di, [bp + 4]	; 3: -117 126 4
x10707:	mov bp, [bp + 2]	; 3: -117 110 2
x10710:	jmp ax	; 2: -1 -32

strncmp$15:	; £temporary3988 = right + index
x10712:	mov si, [bp + 8]	; 3: -117 118 8
x10715:	add si, [bp + 12]	; 3: 3 118 12

strncmp$16:	; £temporary3987 -> £temporary3988 = *£temporary3988

strncmp$17:	; if £temporary3987 -> £temporary3988 != 0 goto 20
x10718:	cmp byte [si], 0	; 3: -128 60 0
x10721:	jne strncmp$20	; 2: 117 14

strncmp$18:	; return_value = 1
x10723:	mov bx, 1	; 3: -69 1 0

strncmp$19:	; return
x10726:	mov ax, [bp]	; 3: -117 70 0
x10729:	mov di, [bp + 4]	; 3: -117 126 4
x10732:	mov bp, [bp + 2]	; 3: -117 110 2
x10735:	jmp ax	; 2: -1 -32

strncmp$20:	; £temporary3991 = left + index
x10737:	mov si, [bp + 6]	; 3: -117 118 6
x10740:	add si, [bp + 12]	; 3: 3 118 12

strncmp$21:	; £temporary3990 -> £temporary3991 = *£temporary3991

strncmp$22:	; £temporary3993 = right + index
x10743:	mov di, [bp + 8]	; 3: -117 126 8
x10746:	add di, [bp + 12]	; 3: 3 126 12

strncmp$23:	; £temporary3992 -> £temporary3993 = *£temporary3993

strncmp$24:	; if £temporary3990 -> £temporary3991 >= £temporary3992 -> £temporary3993 goto 27
x10749:	mov al, [di]	; 2: -118 5
x10751:	cmp [si], al	; 2: 56 4
x10753:	jge strncmp$27	; 2: 125 14

strncmp$25:	; return_value = -1
x10755:	mov bx, -1	; 3: -69 -1 -1

strncmp$26:	; return
x10758:	mov ax, [bp]	; 3: -117 70 0
x10761:	mov di, [bp + 4]	; 3: -117 126 4
x10764:	mov bp, [bp + 2]	; 3: -117 110 2
x10767:	jmp ax	; 2: -1 -32

strncmp$27:	; £temporary3996 = left + index
x10769:	mov si, [bp + 6]	; 3: -117 118 6
x10772:	add si, [bp + 12]	; 3: 3 118 12

strncmp$28:	; £temporary3995 -> £temporary3996 = *£temporary3996

strncmp$29:	; £temporary3998 = right + index
x10775:	mov di, [bp + 8]	; 3: -117 126 8
x10778:	add di, [bp + 12]	; 3: 3 126 12

strncmp$30:	; £temporary3997 -> £temporary3998 = *£temporary3998

strncmp$31:	; if £temporary3995 -> £temporary3996 <= £temporary3997 -> £temporary3998 goto 34
x10781:	mov al, [di]	; 2: -118 5
x10783:	cmp [si], al	; 2: 56 4
x10785:	jle strncmp$34	; 2: 126 14

strncmp$32:	; return_value = 1
x10787:	mov bx, 1	; 3: -69 1 0

strncmp$33:	; return
x10790:	mov ax, [bp]	; 3: -117 70 0
x10793:	mov di, [bp + 4]	; 3: -117 126 4
x10796:	mov bp, [bp + 2]	; 3: -117 110 2
x10799:	jmp ax	; 2: -1 -32

strncmp$34:	; ++index
x10801:	inc word [bp + 12]	; 3: -1 70 12

strncmp$35:	; goto 1
x10804:	jmp strncmp$1	; 3: -23 90 -1

strncmp$36:	; return_value = 0
x10807:	mov bx, 0	; 3: -69 0 0

strncmp$37:	; return
x10810:	mov ax, [bp]	; 3: -117 70 0
x10813:	mov di, [bp + 4]	; 3: -117 126 4
x10816:	mov bp, [bp + 2]	; 3: -117 110 2
x10819:	jmp ax	; 2: -1 -32

strncmp$38:	; function end strncmp

strrchr:	; result = 0
x10821:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strrchr$1:	; £temporary4011 = int_to_int i (Signed_Int -> Signed_Char)
x10826:	mov ax, [bp + 8]	; 3: -117 70 8
x10829:	cmp ax, 0	; 3: -125 -8 0
x10832:	jge strrchr$2	; 2: 125 4
x10834:	neg ax	; 2: -9 -40
x10836:	neg al	; 2: -10 -40

strrchr$2:	; c = £temporary4011
x10838:	mov [bp + 14], al	; 3: -120 70 14

strrchr$3:	; index = 0
x10841:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strrchr$4:	; £temporary4013 = text + index
x10846:	mov si, [bp + 6]	; 3: -117 118 6
x10849:	add si, [bp + 10]	; 3: 3 118 10

strrchr$5:	; £temporary4012 -> £temporary4013 = *£temporary4013

strrchr$6:	; if £temporary4012 -> £temporary4013 == 0 goto 16
x10852:	cmp byte [si], 0	; 3: -128 60 0
x10855:	je strrchr$16	; 2: 116 27

strrchr$7:	; £temporary4017 = text + index
x10857:	mov si, [bp + 6]	; 3: -117 118 6
x10860:	add si, [bp + 10]	; 3: 3 118 10

strrchr$8:	; £temporary4016 -> £temporary4017 = *£temporary4017

strrchr$9:	; if £temporary4016 -> £temporary4017 != c goto 14
x10863:	mov al, [bp + 14]	; 3: -118 70 14
x10866:	cmp [si], al	; 2: 56 4
x10868:	jne strrchr$14	; 2: 117 9

strrchr$10:	; £temporary4020 = text + index
x10870:	mov si, [bp + 6]	; 3: -117 118 6
x10873:	add si, [bp + 10]	; 3: 3 118 10

strrchr$11:	; £temporary4019 -> £temporary4020 = *£temporary4020

strrchr$12:	; £temporary4021 = &£temporary4019 -> £temporary4020

strrchr$13:	; result = £temporary4021
x10876:	mov [bp + 12], si	; 3: -119 118 12

strrchr$14:	; ++index
x10879:	inc word [bp + 10]	; 3: -1 70 10

strrchr$15:	; goto 4
x10882:	jmp strrchr$4	; 2: -21 -38

strrchr$16:	; return_value = result
x10884:	mov bx, [bp + 12]	; 3: -117 94 12

strrchr$17:	; return
x10887:	mov ax, [bp]	; 3: -117 70 0
x10890:	mov di, [bp + 4]	; 3: -117 126 4
x10893:	mov bp, [bp + 2]	; 3: -117 110 2
x10896:	jmp ax	; 2: -1 -32

strrchr$18:	; function end strrchr

memcpy:	; £temporary4135 = int_to_int target (Pointer -> Pointer)
x10898:	mov ax, [bp + 6]	; 3: -117 70 6

memcpy$1:	; charTarget = £temporary4135
x10901:	mov [bp + 12], ax	; 3: -119 70 12

memcpy$2:	; £temporary4136 = int_to_int source (Pointer -> Pointer)
x10904:	mov ax, [bp + 8]	; 3: -117 70 8

memcpy$3:	; charSource = £temporary4136
x10907:	mov [bp + 14], ax	; 3: -119 70 14

memcpy$4:	; index = 0
x10910:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

memcpy$5:	; if index >= size goto 13
x10915:	mov ax, [bp + 10]	; 3: -117 70 10
x10918:	cmp [bp + 16], ax	; 3: 57 70 16
x10921:	jge memcpy$13	; 2: 125 21

memcpy$6:	; £temporary4140 = charTarget + index
x10923:	mov si, [bp + 12]	; 3: -117 118 12
x10926:	add si, [bp + 16]	; 3: 3 118 16

memcpy$7:	; £temporary4139 -> £temporary4140 = *£temporary4140

memcpy$8:	; £temporary4142 = charSource + index
x10929:	mov di, [bp + 14]	; 3: -117 126 14
x10932:	add di, [bp + 16]	; 3: 3 126 16

memcpy$9:	; £temporary4141 -> £temporary4142 = *£temporary4142

memcpy$10:	; £temporary4139 -> £temporary4140 = £temporary4141 -> £temporary4142
x10935:	mov al, [di]	; 2: -118 5
x10937:	mov [si], al	; 2: -120 4

memcpy$11:	; ++index
x10939:	inc word [bp + 16]	; 3: -1 70 16

memcpy$12:	; goto 5
x10942:	jmp memcpy$5	; 2: -21 -29

memcpy$13:	; £temporary4143 = int_to_int target (Pointer -> Pointer)
x10944:	mov bx, [bp + 6]	; 3: -117 94 6

memcpy$14:	; return_value = £temporary4143

memcpy$15:	; return
x10947:	mov ax, [bp]	; 3: -117 70 0
x10950:	mov di, [bp + 4]	; 3: -117 126 4
x10953:	mov bp, [bp + 2]	; 3: -117 110 2
x10956:	jmp ax	; 2: -1 -32

memcpy$16:	; function end memcpy

memmove:	; £temporary4144 = int_to_int target (Pointer -> Pointer)
x10958:	mov ax, [bp + 6]	; 3: -117 70 6

memmove$1:	; charTarget = £temporary4144
x10961:	mov [bp + 12], ax	; 3: -119 70 12

memmove$2:	; £temporary4145 = int_to_int source (Pointer -> Pointer)
x10964:	mov ax, [bp + 8]	; 3: -117 70 8

memmove$3:	; charSource = £temporary4145
x10967:	mov [bp + 14], ax	; 3: -119 70 14

memmove$4:	; if source >= target goto 14
x10970:	mov ax, [bp + 6]	; 3: -117 70 6
x10973:	cmp [bp + 8], ax	; 3: 57 70 8
x10976:	jge memmove$14	; 2: 125 34

memmove$5:	; index = size - 1
x10978:	mov ax, [bp + 10]	; 3: -117 70 10
x10981:	dec ax	; 1: 72
x10982:	mov [bp + 16], ax	; 3: -119 70 16

memmove$6:	; if index < 0 goto 23
x10985:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x10989:	jl memmove$23	; 2: 124 55

memmove$7:	; £temporary4151 = charTarget + index
x10991:	mov si, [bp + 12]	; 3: -117 118 12
x10994:	add si, [bp + 16]	; 3: 3 118 16

memmove$8:	; £temporary4150 -> £temporary4151 = *£temporary4151

memmove$9:	; £temporary4153 = charSource + index
x10997:	mov di, [bp + 14]	; 3: -117 126 14
x11000:	add di, [bp + 16]	; 3: 3 126 16

memmove$10:	; £temporary4152 -> £temporary4153 = *£temporary4153

memmove$11:	; £temporary4150 -> £temporary4151 = £temporary4152 -> £temporary4153
x11003:	mov al, [di]	; 2: -118 5
x11005:	mov [si], al	; 2: -120 4

memmove$12:	; --index
x11007:	dec word [bp + 16]	; 3: -1 78 16

memmove$13:	; goto 6
x11010:	jmp memmove$6	; 2: -21 -27

memmove$14:	; index = 0
x11012:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

memmove$15:	; if index >= size goto 23
x11017:	mov ax, [bp + 10]	; 3: -117 70 10
x11020:	cmp [bp + 16], ax	; 3: 57 70 16
x11023:	jge memmove$23	; 2: 125 21

memmove$16:	; £temporary4157 = charTarget + index
x11025:	mov si, [bp + 12]	; 3: -117 118 12
x11028:	add si, [bp + 16]	; 3: 3 118 16

memmove$17:	; £temporary4156 -> £temporary4157 = *£temporary4157

memmove$18:	; £temporary4159 = charSource + index
x11031:	mov di, [bp + 14]	; 3: -117 126 14
x11034:	add di, [bp + 16]	; 3: 3 126 16

memmove$19:	; £temporary4158 -> £temporary4159 = *£temporary4159

memmove$20:	; £temporary4156 -> £temporary4157 = £temporary4158 -> £temporary4159
x11037:	mov al, [di]	; 2: -118 5
x11039:	mov [si], al	; 2: -120 4

memmove$21:	; ++index
x11041:	inc word [bp + 16]	; 3: -1 70 16

memmove$22:	; goto 15
x11044:	jmp memmove$15	; 2: -21 -29

memmove$23:	; £temporary4160 = int_to_int target (Pointer -> Pointer)
x11046:	mov bx, [bp + 6]	; 3: -117 94 6

memmove$24:	; return_value = £temporary4160

memmove$25:	; return
x11049:	mov ax, [bp]	; 3: -117 70 0
x11052:	mov di, [bp + 4]	; 3: -117 126 4
x11055:	mov bp, [bp + 2]	; 3: -117 110 2
x11058:	jmp ax	; 2: -1 -32

memmove$26:	; function end memmove

memset:	; £temporary4186 = int_to_int block (Pointer -> Pointer)
x11060:	mov ax, [bp + 6]	; 3: -117 70 6

memset$1:	; charBlock = £temporary4186
x11063:	mov [bp + 12], ax	; 3: -119 70 12

memset$2:	; £temporary4187 = int_to_int i (Signed_Int -> Signed_Char)
x11066:	mov ax, [bp + 8]	; 3: -117 70 8
x11069:	cmp ax, 0	; 3: -125 -8 0
x11072:	jge memset$3	; 2: 125 4
x11074:	neg ax	; 2: -9 -40
x11076:	neg al	; 2: -10 -40

memset$3:	; c = £temporary4187
x11078:	mov [bp + 14], al	; 3: -120 70 14

memset$4:	; index = 0
x11081:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

memset$5:	; if index >= size goto 11
x11086:	mov ax, [bp + 10]	; 3: -117 70 10
x11089:	cmp [bp + 15], ax	; 3: 57 70 15
x11092:	jge memset$11	; 2: 125 16

memset$6:	; £temporary4191 = charBlock + index
x11094:	mov si, [bp + 12]	; 3: -117 118 12
x11097:	add si, [bp + 15]	; 3: 3 118 15

memset$7:	; £temporary4190 -> £temporary4191 = *£temporary4191

memset$8:	; £temporary4190 -> £temporary4191 = c
x11100:	mov al, [bp + 14]	; 3: -118 70 14
x11103:	mov [si], al	; 2: -120 4

memset$9:	; ++index
x11105:	inc word [bp + 15]	; 3: -1 70 15

memset$10:	; goto 5
x11108:	jmp memset$5	; 2: -21 -24

memset$11:	; return_value = block
x11110:	mov bx, [bp + 6]	; 3: -117 94 6

memset$12:	; return
x11113:	mov ax, [bp]	; 3: -117 70 0
x11116:	mov di, [bp + 4]	; 3: -117 126 4
x11119:	mov bp, [bp + 2]	; 3: -117 110 2
x11122:	jmp ax	; 2: -1 -32

memset$13:	; function end memset

memchr:	; £temporary4175 = int_to_int block (Pointer -> Pointer)
x11124:	mov ax, [bp + 6]	; 3: -117 70 6

memchr$1:	; charBlock = £temporary4175
x11127:	mov [bp + 14], ax	; 3: -119 70 14

memchr$2:	; £temporary4176 = int_to_int i (Signed_Int -> Signed_Char)
x11130:	mov ax, [bp + 8]	; 3: -117 70 8
x11133:	cmp ax, 0	; 3: -125 -8 0
x11136:	jge memchr$3	; 2: 125 4
x11138:	neg ax	; 2: -9 -40
x11140:	neg al	; 2: -10 -40

memchr$3:	; c = £temporary4176
x11142:	mov [bp + 16], al	; 3: -120 70 16

memchr$4:	; index = 0
x11145:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

memchr$5:	; if index >= size goto 17
x11150:	mov ax, [bp + 10]	; 3: -117 70 10
x11153:	cmp [bp + 12], ax	; 3: 57 70 12
x11156:	jge memchr$17	; 2: 125 35

memchr$6:	; £temporary4180 = charBlock + index
x11158:	mov si, [bp + 14]	; 3: -117 118 14
x11161:	add si, [bp + 12]	; 3: 3 118 12

memchr$7:	; £temporary4179 -> £temporary4180 = *£temporary4180

memchr$8:	; if £temporary4179 -> £temporary4180 != c goto 15
x11164:	mov al, [bp + 16]	; 3: -118 70 16
x11167:	cmp [si], al	; 2: 56 4
x11169:	jne memchr$15	; 2: 117 17

memchr$9:	; £temporary4183 = charBlock + index
x11171:	mov bx, [bp + 14]	; 3: -117 94 14
x11174:	add bx, [bp + 12]	; 3: 3 94 12

memchr$10:	; £temporary4182 -> £temporary4183 = *£temporary4183

memchr$11:	; £temporary4184 = &£temporary4182 -> £temporary4183

memchr$12:	; £temporary4185 = int_to_int £temporary4184 (Pointer -> Pointer)

memchr$13:	; return_value = £temporary4185

memchr$14:	; return
x11177:	mov ax, [bp]	; 3: -117 70 0
x11180:	mov di, [bp + 4]	; 3: -117 126 4
x11183:	mov bp, [bp + 2]	; 3: -117 110 2
x11186:	jmp ax	; 2: -1 -32

memchr$15:	; ++index
x11188:	inc word [bp + 12]	; 3: -1 70 12

memchr$16:	; goto 5
x11191:	jmp memchr$5	; 2: -21 -43

memchr$17:	; return_value = 0
x11193:	mov bx, 0	; 3: -69 0 0

memchr$18:	; return
x11196:	mov ax, [bp]	; 3: -117 70 0
x11199:	mov di, [bp + 4]	; 3: -117 126 4
x11202:	mov bp, [bp + 2]	; 3: -117 110 2
x11205:	jmp ax	; 2: -1 -32

memchr$19:	; function end memchr

memcmp:	; £temporary4161 = int_to_int left (Pointer -> Pointer)
x11207:	mov ax, [bp + 6]	; 3: -117 70 6

memcmp$1:	; charLeft = £temporary4161
x11210:	mov [bp + 12], ax	; 3: -119 70 12

memcmp$2:	; £temporary4162 = int_to_int right (Pointer -> Pointer)
x11213:	mov ax, [bp + 8]	; 3: -117 70 8

memcmp$3:	; charRight = £temporary4162
x11216:	mov [bp + 14], ax	; 3: -119 70 14

memcmp$4:	; index = 0
x11219:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

memcmp$5:	; if index >= size goto 22
x11224:	mov ax, [bp + 10]	; 3: -117 70 10
x11227:	cmp [bp + 16], ax	; 3: 57 70 16
x11230:	jge memcmp$22	; 2: 125 69

memcmp$6:	; £temporary4166 = charLeft + index
x11232:	mov si, [bp + 12]	; 3: -117 118 12
x11235:	add si, [bp + 16]	; 3: 3 118 16

memcmp$7:	; £temporary4165 -> £temporary4166 = *£temporary4166

memcmp$8:	; £temporary4168 = charRight + index
x11238:	mov di, [bp + 14]	; 3: -117 126 14
x11241:	add di, [bp + 16]	; 3: 3 126 16

memcmp$9:	; £temporary4167 -> £temporary4168 = *£temporary4168

memcmp$10:	; if £temporary4165 -> £temporary4166 >= £temporary4167 -> £temporary4168 goto 13
x11244:	mov al, [di]	; 2: -118 5
x11246:	cmp [si], al	; 2: 56 4
x11248:	jge memcmp$13	; 2: 125 14

memcmp$11:	; return_value = -1
x11250:	mov bx, -1	; 3: -69 -1 -1

memcmp$12:	; return
x11253:	mov ax, [bp]	; 3: -117 70 0
x11256:	mov di, [bp + 4]	; 3: -117 126 4
x11259:	mov bp, [bp + 2]	; 3: -117 110 2
x11262:	jmp ax	; 2: -1 -32

memcmp$13:	; £temporary4171 = charLeft + index
x11264:	mov si, [bp + 12]	; 3: -117 118 12
x11267:	add si, [bp + 16]	; 3: 3 118 16

memcmp$14:	; £temporary4170 -> £temporary4171 = *£temporary4171

memcmp$15:	; £temporary4173 = charRight + index
x11270:	mov di, [bp + 14]	; 3: -117 126 14
x11273:	add di, [bp + 16]	; 3: 3 126 16

memcmp$16:	; £temporary4172 -> £temporary4173 = *£temporary4173

memcmp$17:	; if £temporary4170 -> £temporary4171 <= £temporary4172 -> £temporary4173 goto 20
x11276:	mov al, [di]	; 2: -118 5
x11278:	cmp [si], al	; 2: 56 4
x11280:	jle memcmp$20	; 2: 126 14

memcmp$18:	; return_value = 1
x11282:	mov bx, 1	; 3: -69 1 0

memcmp$19:	; return
x11285:	mov ax, [bp]	; 3: -117 70 0
x11288:	mov di, [bp + 4]	; 3: -117 126 4
x11291:	mov bp, [bp + 2]	; 3: -117 110 2
x11294:	jmp ax	; 2: -1 -32

memcmp$20:	; ++index
x11296:	inc word [bp + 16]	; 3: -1 70 16

memcmp$21:	; goto 5
x11299:	jmp memcmp$5	; 2: -21 -77

memcmp$22:	; return_value = 0
x11301:	mov bx, 0	; 3: -69 0 0

memcmp$23:	; return
x11304:	mov ax, [bp]	; 3: -117 70 0
x11307:	mov di, [bp + 4]	; 3: -117 126 4
x11310:	mov bp, [bp + 2]	; 3: -117 110 2
x11313:	jmp ax	; 2: -1 -32

memcmp$24:	; function end memcmp

strspn:	; index = 0
x11315:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strspn$1:	; £temporary4023 = mainString + index
x11320:	mov si, [bp + 6]	; 3: -117 118 6
x11323:	add si, [bp + 10]	; 3: 3 118 10

strspn$2:	; £temporary4022 -> £temporary4023 = *£temporary4023

strspn$3:	; if £temporary4022 -> £temporary4023 == 0 goto 18
x11326:	cmp byte [si], 0	; 3: -128 60 0
x11329:	je strspn$18	; 2: 116 66

strspn$4:	; call header integral zero 0 stack zero 0

strspn$5:	; parameter charSet, offset 6
x11331:	mov ax, [bp + 8]	; 3: -117 70 8
x11334:	mov [bp + 18], ax	; 3: -119 70 18

strspn$6:	; £temporary4027 = mainString + index
x11337:	mov si, [bp + 6]	; 3: -117 118 6
x11340:	add si, [bp + 10]	; 3: 3 118 10

strspn$7:	; £temporary4026 -> £temporary4027 = *£temporary4027

strspn$8:	; £temporary4028 = int_to_int £temporary4026 -> £temporary4027 (Signed_Char -> Signed_Int)
x11343:	mov al, [si]	; 2: -118 4
x11345:	and ax, 255	; 3: 37 -1 0
x11348:	cmp al, 0	; 2: 60 0
x11350:	jge strspn$9	; 2: 125 4
x11352:	neg al	; 2: -10 -40
x11354:	neg ax	; 2: -9 -40

strspn$9:	; parameter £temporary4028, offset 8
x11356:	mov [bp + 20], ax	; 3: -119 70 20

strspn$10:	; call function noellipse-noellipse strchr
x11359:	mov word [bp + 12], strspn$11	; 5: -57 70 12 109 44
x11364:	mov [bp + 14], bp	; 3: -119 110 14
x11367:	add bp, 12	; 3: -125 -59 12
x11370:	jmp strchr	; 3: -23 127 -15

strspn$11:	; post call

strspn$12:	; £temporary4029 = return_value

strspn$13:	; if £temporary4029 != 0 goto 16
x11373:	cmp bx, 0	; 3: -125 -5 0
x11376:	jne strspn$16	; 2: 117 14

strspn$14:	; return_value = index
x11378:	mov bx, [bp + 10]	; 3: -117 94 10

strspn$15:	; return
x11381:	mov ax, [bp]	; 3: -117 70 0
x11384:	mov di, [bp + 4]	; 3: -117 126 4
x11387:	mov bp, [bp + 2]	; 3: -117 110 2
x11390:	jmp ax	; 2: -1 -32

strspn$16:	; ++index
x11392:	inc word [bp + 10]	; 3: -1 70 10

strspn$17:	; goto 1
x11395:	jmp strspn$1	; 2: -21 -77

strspn$18:	; return_value = -1
x11397:	mov bx, -1	; 3: -69 -1 -1

strspn$19:	; return
x11400:	mov ax, [bp]	; 3: -117 70 0
x11403:	mov di, [bp + 4]	; 3: -117 126 4
x11406:	mov bp, [bp + 2]	; 3: -117 110 2
x11409:	jmp ax	; 2: -1 -32

strspn$20:	; function end strspn

strcspn:	; index = 0
x11411:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcspn$1:	; £temporary4034 = mainString + index
x11416:	mov si, [bp + 6]	; 3: -117 118 6
x11419:	add si, [bp + 10]	; 3: 3 118 10

strcspn$2:	; £temporary4033 -> £temporary4034 = *£temporary4034

strcspn$3:	; if £temporary4033 -> £temporary4034 == 0 goto 18
x11422:	cmp byte [si], 0	; 3: -128 60 0
x11425:	je strcspn$18	; 2: 116 66

strcspn$4:	; call header integral zero 0 stack zero 0

strcspn$5:	; parameter charSet, offset 6
x11427:	mov ax, [bp + 8]	; 3: -117 70 8
x11430:	mov [bp + 18], ax	; 3: -119 70 18

strcspn$6:	; £temporary4038 = mainString + index
x11433:	mov si, [bp + 6]	; 3: -117 118 6
x11436:	add si, [bp + 10]	; 3: 3 118 10

strcspn$7:	; £temporary4037 -> £temporary4038 = *£temporary4038

strcspn$8:	; £temporary4039 = int_to_int £temporary4037 -> £temporary4038 (Signed_Char -> Signed_Int)
x11439:	mov al, [si]	; 2: -118 4
x11441:	and ax, 255	; 3: 37 -1 0
x11444:	cmp al, 0	; 2: 60 0
x11446:	jge strcspn$9	; 2: 125 4
x11448:	neg al	; 2: -10 -40
x11450:	neg ax	; 2: -9 -40

strcspn$9:	; parameter £temporary4039, offset 8
x11452:	mov [bp + 20], ax	; 3: -119 70 20

strcspn$10:	; call function noellipse-noellipse strchr
x11455:	mov word [bp + 12], strcspn$11	; 5: -57 70 12 -51 44
x11460:	mov [bp + 14], bp	; 3: -119 110 14
x11463:	add bp, 12	; 3: -125 -59 12
x11466:	jmp strchr	; 3: -23 31 -15

strcspn$11:	; post call

strcspn$12:	; £temporary4040 = return_value

strcspn$13:	; if £temporary4040 == 0 goto 16
x11469:	cmp bx, 0	; 3: -125 -5 0
x11472:	je strcspn$16	; 2: 116 14

strcspn$14:	; return_value = index
x11474:	mov bx, [bp + 10]	; 3: -117 94 10

strcspn$15:	; return
x11477:	mov ax, [bp]	; 3: -117 70 0
x11480:	mov di, [bp + 4]	; 3: -117 126 4
x11483:	mov bp, [bp + 2]	; 3: -117 110 2
x11486:	jmp ax	; 2: -1 -32

strcspn$16:	; ++index
x11488:	inc word [bp + 10]	; 3: -1 70 10

strcspn$17:	; goto 1
x11491:	jmp strcspn$1	; 2: -21 -77

strcspn$18:	; return_value = -1
x11493:	mov bx, -1	; 3: -69 -1 -1

strcspn$19:	; return
x11496:	mov ax, [bp]	; 3: -117 70 0
x11499:	mov di, [bp + 4]	; 3: -117 126 4
x11502:	mov bp, [bp + 2]	; 3: -117 110 2
x11505:	jmp ax	; 2: -1 -32

strcspn$20:	; function end strcspn

strerror:	; call header integral zero 0 stack zero 0

strerror$1:	; call function noellipse-noellipse localeconv
x11507:	mov word [bp + 8], strerror$2	; 5: -57 70 8 1 45
x11512:	mov [bp + 10], bp	; 3: -119 110 10
x11515:	add bp, 8	; 3: -125 -59 8
x11518:	jmp localeconv	; 3: -23 -87 -19

strerror$2:	; post call

strerror$3:	; £temporary4074 = return_value

strerror$4:	; localeConvPtr = £temporary4074
x11521:	mov [bp + 8], bx	; 3: -119 94 8

strerror$5:	; if localeConvPtr == 0 goto 9
x11524:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11528:	je strerror$9	; 2: 116 8

strerror$6:	; £temporary4076 -> localeConvPtr = *localeConvPtr, offset 16
x11530:	mov si, [bp + 8]	; 3: -117 118 8

strerror$7:	; £temporary4080 = £temporary4076 -> localeConvPtr
x11533:	mov ax, [si + 16]	; 3: -117 68 16

strerror$8:	; goto 10
x11536:	jmp strerror$10	; 2: -21 3

strerror$9:	; £temporary4080 = 0
x11538:	mov ax, 0	; 3: -72 0 0

strerror$10:	; messageList = £temporary4080
x11541:	mov [bp + 10], ax	; 3: -119 70 10

strerror$11:	; if messageList == 0 goto 14
x11544:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x11548:	je strerror$14	; 2: 116 5

strerror$12:	; £temporary4085 = messageList
x11550:	mov ax, [bp + 10]	; 3: -117 70 10

strerror$13:	; goto 15
x11553:	jmp strerror$15	; 2: -21 3

strerror$14:	; £temporary4085 = enMessageList
x11555:	mov ax, enMessageList	; 3: -72 66 28

strerror$15:	; messageList = £temporary4085
x11558:	mov [bp + 10], ax	; 3: -119 70 10

strerror$16:	; £temporary4087 = errno * 2
x11561:	mov ax, [bp + 6]	; 3: -117 70 6
x11564:	xor dx, dx	; 2: 49 -46
x11566:	mul word [int2$2#]	; 4: -9 38 68 45

strerror$17:	; £temporary4088 = messageList + £temporary4087
x11570:	mov si, [bp + 10]	; 3: -117 118 10
x11573:	add si, ax	; 2: 1 -58

strerror$18:	; £temporary4086 -> £temporary4088 = *£temporary4088

strerror$19:	; return_value = £temporary4086 -> £temporary4088
x11575:	mov bx, [si]	; 2: -117 28

strerror$20:	; return
x11577:	mov ax, [bp]	; 3: -117 70 0
x11580:	mov di, [bp + 4]	; 3: -117 126 4
x11583:	mov bp, [bp + 2]	; 3: -117 110 2
x11586:	jmp ax	; 2: -1 -32

strerror$21:	; function end strerror

int2$2#:
x11588:	dw 2	; 2: 2 0

strtok:	; if string == 0 goto 37
x11590:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x11594:	je strtok$37	; 4: 15 -124 -106 0

strtok$1:	; £temporary4090 -> string = *string
x11598:	mov si, [bp + 6]	; 3: -117 118 6

strtok$2:	; if £temporary4090 -> string != 0 goto 5
x11601:	cmp byte [si], 0	; 3: -128 60 0
x11604:	jne strtok$5	; 2: 117 14

strtok$3:	; return_value = 0
x11606:	mov bx, 0	; 3: -69 0 0

strtok$4:	; return
x11609:	mov ax, [bp]	; 3: -117 70 0
x11612:	mov di, [bp + 4]	; 3: -117 126 4
x11615:	mov bp, [bp + 2]	; 3: -117 110 2
x11618:	jmp ax	; 2: -1 -32

strtok$5:	; index = 0
x11620:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strtok$6:	; £temporary4093 = string + index
x11625:	mov si, [bp + 6]	; 3: -117 118 6
x11628:	add si, [bp + 10]	; 3: 3 118 10

strtok$7:	; £temporary4092 -> £temporary4093 = *£temporary4093

strtok$8:	; if £temporary4092 -> £temporary4093 == 0 goto 31
x11631:	cmp byte [si], 0	; 3: -128 60 0
x11634:	je strtok$31	; 2: 116 88

strtok$9:	; call header integral zero 0 stack zero 0

strtok$10:	; parameter charSet, offset 6
x11636:	mov ax, [bp + 8]	; 3: -117 70 8
x11639:	mov [bp + 20], ax	; 3: -119 70 20

strtok$11:	; £temporary4097 = string + index
x11642:	mov si, [bp + 6]	; 3: -117 118 6
x11645:	add si, [bp + 10]	; 3: 3 118 10

strtok$12:	; £temporary4096 -> £temporary4097 = *£temporary4097

strtok$13:	; £temporary4098 = int_to_int £temporary4096 -> £temporary4097 (Signed_Char -> Signed_Int)
x11648:	mov al, [si]	; 2: -118 4
x11650:	and ax, 255	; 3: 37 -1 0
x11653:	cmp al, 0	; 2: 60 0
x11655:	jge strtok$14	; 2: 125 4
x11657:	neg al	; 2: -10 -40
x11659:	neg ax	; 2: -9 -40

strtok$14:	; parameter £temporary4098, offset 8
x11661:	mov [bp + 22], ax	; 3: -119 70 22

strtok$15:	; call function noellipse-noellipse strchr
x11664:	mov word [bp + 14], strtok$16	; 5: -57 70 14 -98 45
x11669:	mov [bp + 16], bp	; 3: -119 110 16
x11672:	add bp, 14	; 3: -125 -59 14
x11675:	jmp strchr	; 3: -23 78 -16

strtok$16:	; post call

strtok$17:	; £temporary4099 = return_value

strtok$18:	; if £temporary4099 == 0 goto 29
x11678:	cmp bx, 0	; 3: -125 -5 0
x11681:	je strtok$29	; 2: 116 36

strtok$19:	; £temporary4102 = string + index
x11683:	mov si, [bp + 6]	; 3: -117 118 6
x11686:	add si, [bp + 10]	; 3: 3 118 10

strtok$20:	; £temporary4101 -> £temporary4102 = *£temporary4102

strtok$21:	; £temporary4101 -> £temporary4102 = 0
x11689:	mov byte [si], 0	; 3: -58 4 0

strtok$22:	; £temporary4103 = index + 1
x11692:	mov ax, [bp + 10]	; 3: -117 70 10
x11695:	inc ax	; 1: 64

strtok$23:	; £temporary4105 = string + £temporary4103
x11696:	mov si, [bp + 6]	; 3: -117 118 6
x11699:	add si, ax	; 2: 1 -58

strtok$24:	; £temporary4104 -> £temporary4105 = *£temporary4105

strtok$25:	; £temporary4106 = &£temporary4104 -> £temporary4105

strtok$26:	; token = £temporary4106
x11701:	mov [token], si	; 4: -119 54 -95 46

strtok$27:	; return_value = string
x11705:	mov bx, [bp + 6]	; 3: -117 94 6

strtok$28:	; return
x11708:	mov ax, [bp]	; 3: -117 70 0
x11711:	mov di, [bp + 4]	; 3: -117 126 4
x11714:	mov bp, [bp + 2]	; 3: -117 110 2
x11717:	jmp ax	; 2: -1 -32

strtok$29:	; ++index
x11719:	inc word [bp + 10]	; 3: -1 70 10

strtok$30:	; goto 6
x11722:	jmp strtok$6	; 2: -21 -99

strtok$31:	; £temporary4108 = string + index
x11724:	mov si, [bp + 6]	; 3: -117 118 6
x11727:	add si, [bp + 10]	; 3: 3 118 10

strtok$32:	; £temporary4107 -> £temporary4108 = *£temporary4108

strtok$33:	; £temporary4109 = &£temporary4107 -> £temporary4108

strtok$34:	; token = £temporary4109
x11730:	mov [token], si	; 4: -119 54 -95 46

strtok$35:	; return_value = string
x11734:	mov bx, [bp + 6]	; 3: -117 94 6

strtok$36:	; return
x11737:	mov ax, [bp]	; 3: -117 70 0
x11740:	mov di, [bp + 4]	; 3: -117 126 4
x11743:	mov bp, [bp + 2]	; 3: -117 110 2
x11746:	jmp ax	; 2: -1 -32

strtok$37:	; if token != 0 goto 40
x11748:	cmp word [token], 0	; 5: -125 62 -95 46 0
x11753:	jne strtok$40	; 2: 117 14

strtok$38:	; return_value = 0
x11755:	mov bx, 0	; 3: -69 0 0

strtok$39:	; return
x11758:	mov ax, [bp]	; 3: -117 70 0
x11761:	mov di, [bp + 4]	; 3: -117 126 4
x11764:	mov bp, [bp + 2]	; 3: -117 110 2
x11767:	jmp ax	; 2: -1 -32

strtok$40:	; if (token,0) != 0 goto 43
x11769:	mov si, [token]	; 4: -117 54 -95 46
x11773:	cmp byte [si], 0	; 3: -128 60 0
x11776:	jne strtok$43	; 2: 117 14

strtok$41:	; return_value = 0
x11778:	mov bx, 0	; 3: -69 0 0

strtok$42:	; return
x11781:	mov ax, [bp]	; 3: -117 70 0
x11784:	mov di, [bp + 4]	; 3: -117 126 4
x11787:	mov bp, [bp + 2]	; 3: -117 110 2
x11790:	jmp ax	; 2: -1 -32

strtok$43:	; index = 0
x11792:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strtok$44:	; £temporary4114 = token + index
x11797:	mov si, [token]	; 4: -117 54 -95 46
x11801:	add si, [bp + 10]	; 3: 3 118 10

strtok$45:	; £temporary4113 -> £temporary4114 = *£temporary4114

strtok$46:	; if £temporary4113 -> £temporary4114 == 0 goto 70
x11804:	cmp byte [si], 0	; 3: -128 60 0
x11807:	je strtok$70	; 2: 116 97

strtok$47:	; call header integral zero 0 stack zero 0

strtok$48:	; parameter charSet, offset 6
x11809:	mov ax, [bp + 8]	; 3: -117 70 8
x11812:	mov [bp + 20], ax	; 3: -119 70 20

strtok$49:	; £temporary4118 = token + index
x11815:	mov si, [token]	; 4: -117 54 -95 46
x11819:	add si, [bp + 10]	; 3: 3 118 10

strtok$50:	; £temporary4117 -> £temporary4118 = *£temporary4118

strtok$51:	; £temporary4119 = int_to_int £temporary4117 -> £temporary4118 (Signed_Char -> Signed_Int)
x11822:	mov al, [si]	; 2: -118 4
x11824:	and ax, 255	; 3: 37 -1 0
x11827:	cmp al, 0	; 2: 60 0
x11829:	jge strtok$52	; 2: 125 4
x11831:	neg al	; 2: -10 -40
x11833:	neg ax	; 2: -9 -40

strtok$52:	; parameter £temporary4119, offset 8
x11835:	mov [bp + 22], ax	; 3: -119 70 22

strtok$53:	; call function noellipse-noellipse strchr
x11838:	mov word [bp + 14], strtok$54	; 5: -57 70 14 76 46
x11843:	mov [bp + 16], bp	; 3: -119 110 16
x11846:	add bp, 14	; 3: -125 -59 14
x11849:	jmp strchr	; 3: -23 -96 -17

strtok$54:	; post call

strtok$55:	; £temporary4120 = return_value

strtok$56:	; if £temporary4120 == 0 goto 68
x11852:	cmp bx, 0	; 3: -125 -5 0
x11855:	je strtok$68	; 2: 116 44

strtok$57:	; tokenStart2 = token
x11857:	mov ax, [token]	; 3: -95 -95 46
x11860:	mov [bp + 14], ax	; 3: -119 70 14

strtok$58:	; £temporary4123 = token + index
x11863:	mov si, [token]	; 4: -117 54 -95 46
x11867:	add si, [bp + 10]	; 3: 3 118 10

strtok$59:	; £temporary4122 -> £temporary4123 = *£temporary4123

strtok$60:	; £temporary4122 -> £temporary4123 = 0
x11870:	mov byte [si], 0	; 3: -58 4 0

strtok$61:	; £temporary4124 = index + 1
x11873:	mov ax, [bp + 10]	; 3: -117 70 10
x11876:	inc ax	; 1: 64

strtok$62:	; £temporary4126 = token + £temporary4124
x11877:	mov si, [token]	; 4: -117 54 -95 46
x11881:	add si, ax	; 2: 1 -58

strtok$63:	; £temporary4125 -> £temporary4126 = *£temporary4126

strtok$64:	; £temporary4127 = &£temporary4125 -> £temporary4126

strtok$65:	; token = £temporary4127
x11883:	mov [token], si	; 4: -119 54 -95 46

strtok$66:	; return_value = tokenStart2
x11887:	mov bx, [bp + 14]	; 3: -117 94 14

strtok$67:	; return
x11890:	mov ax, [bp]	; 3: -117 70 0
x11893:	mov di, [bp + 4]	; 3: -117 126 4
x11896:	mov bp, [bp + 2]	; 3: -117 110 2
x11899:	jmp ax	; 2: -1 -32

strtok$68:	; ++index
x11901:	inc word [bp + 10]	; 3: -1 70 10

strtok$69:	; goto 44
x11904:	jmp strtok$44	; 2: -21 -109

strtok$70:	; tokenStart = token
x11906:	mov ax, [token]	; 3: -95 -95 46
x11909:	mov [bp + 12], ax	; 3: -119 70 12

strtok$71:	; £temporary4129 = token + index
x11912:	mov si, [token]	; 4: -117 54 -95 46
x11916:	add si, [bp + 10]	; 3: 3 118 10

strtok$72:	; £temporary4128 -> £temporary4129 = *£temporary4129

strtok$73:	; £temporary4130 = &£temporary4128 -> £temporary4129

strtok$74:	; token = £temporary4130
x11919:	mov [token], si	; 4: -119 54 -95 46

strtok$75:	; return_value = tokenStart
x11923:	mov bx, [bp + 12]	; 3: -117 94 12

strtok$76:	; return
x11926:	mov ax, [bp]	; 3: -117 70 0
x11929:	mov di, [bp + 4]	; 3: -117 126 4
x11932:	mov bp, [bp + 2]	; 3: -117 110 2
x11935:	jmp ax	; 2: -1 -32

strtok$77:	; function end strtok

token:
x11937:	dw 0	; 2: 0 0

$StackTop:
x11939:
