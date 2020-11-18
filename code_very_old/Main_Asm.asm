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

main:	; CallHeader 6 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

main$1:	; Call 6 string_test 0
x283:	mov word [bp + 6], main$2	; 5: -57 70 6 41 1
x288:	mov [bp + 8], bp	; 3: -119 110 8
x291:	add bp, 6	; 3: -125 -59 6
x294:	nop	; 1: -112
x295:	jmp string_test	; 2: -21 23

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

string_test:	; Assign s string_Hello2C20World21#
x320:	mov word [bp + 8], string_Hello2C20World21#	; 5: -57 70 8 90 7

string_test$1:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$2:	; Parameter 212 string_strlen282225s2229203D2025i0A# 6
x325:	mov word [bp + 218], string_strlen282225s2229203D2025i0A#	; 6: -57 -122 -38 0 104 7

string_test$3:	; Parameter 212 s 8
x331:	mov ax, [bp + 8]	; 3: -117 70 8
x334:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$4:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$5:	; Parameter 212 s 16
x338:	mov ax, [bp + 8]	; 3: -117 70 8
x341:	mov [bp + 228], ax	; 4: -119 -122 -28 0

string_test$6:	; Call 212 strlen 10
x345:	mov word [bp + 222], string_test$7	; 6: -57 -122 -34 0 106 1
x351:	mov [bp + 224], bp	; 4: -119 -82 -32 0
x355:	add bp, 222	; 4: -127 -59 -34 0
x359:	jmp strlen	; 3: -23 -72 7

string_test$7:	; PostCall 212

string_test$8:	; GetReturnValue £temporary4501

string_test$9:	; Parameter 212 £temporary4501 10
x362:	mov [bp + 222], bx	; 4: -119 -98 -34 0

string_test$10:	; Call 212 printf 0
x366:	mov word [bp + 212], string_test$11	; 6: -57 -122 -44 0 -124 1
x372:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x376:	add bp, 212	; 4: -127 -59 -44 0
x380:	mov di, bp	; 2: -119 -17
x382:	add di, 4	; 3: -125 -57 4
x385:	jmp printf	; 3: -23 -63 7

string_test$11:	; PostCall 212

string_test$12:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$13:	; Parameter 212 t 6
x388:	mov [bp + 218], bp	; 4: -119 -82 -38 0
x392:	add word [bp + 218], 10	; 5: -125 -122 -38 0 10

string_test$14:	; Parameter 212 s 8
x397:	mov ax, [bp + 8]	; 3: -117 70 8
x400:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$15:	; Call 212 strcpy 0
x404:	mov word [bp + 212], string_test$16	; 6: -57 -122 -44 0 -91 1
x410:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x414:	add bp, 212	; 4: -127 -59 -44 0
x418:	jmp strcpy	; 3: -23 -1 37

string_test$16:	; PostCall 212

string_test$17:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$18:	; Parameter 212 u 6
x421:	mov [bp + 218], bp	; 4: -119 -82 -38 0
x425:	add word [bp + 218], 110	; 5: -125 -122 -38 0 110

string_test$19:	; Parameter 212 s 8
x430:	mov ax, [bp + 8]	; 3: -117 70 8
x433:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$20:	; Parameter 212 5 10
x437:	mov word [bp + 222], 5	; 6: -57 -122 -34 0 5 0

string_test$21:	; Call 212 strncpy 0
x443:	mov word [bp + 212], string_test$22	; 6: -57 -122 -44 0 -52 1
x449:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x453:	add bp, 212	; 4: -127 -59 -44 0
x457:	jmp strncpy	; 3: -23 20 38

string_test$22:	; PostCall 212

string_test$23:	; Deref £temporary4505 -> u u 5
x460:	mov si, bp	; 2: -119 -18
x462:	add si, 110	; 3: -125 -58 110

string_test$24:	; Assign £temporary4505 -> u 0
x465:	mov byte [si + 5], 0	; 4: -58 68 5 0

string_test$25:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$26:	; Parameter 212 string_t203D202225s222C20u203D202225s220A# 6
x469:	mov word [bp + 218], string_t203D202225s222C20u203D202225s220A#	; 6: -57 -122 -38 0 123 7

string_test$27:	; Parameter 212 t 8
x475:	mov [bp + 220], bp	; 4: -119 -82 -36 0
x479:	add word [bp + 220], 10	; 5: -125 -122 -36 0 10

string_test$28:	; Parameter 212 u 10
x484:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x488:	add word [bp + 222], 110	; 5: -125 -122 -34 0 110

string_test$29:	; Call 212 printf 0
x493:	mov word [bp + 212], string_test$30	; 6: -57 -122 -44 0 3 2
x499:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x503:	add bp, 212	; 4: -127 -59 -44 0
x507:	mov di, bp	; 2: -119 -17
x509:	add di, 4	; 3: -125 -57 4
x512:	jmp printf	; 3: -23 66 7

string_test$30:	; PostCall 212

string_test$31:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$32:	; Parameter 212 t 6
x515:	mov [bp + 218], bp	; 4: -119 -82 -38 0
x519:	add word [bp + 218], 10	; 5: -125 -122 -38 0 10

string_test$33:	; Parameter 212 string_abc# 8
x524:	mov word [bp + 220], string_abc#	; 6: -57 -122 -36 0 -113 7

string_test$34:	; Call 212 strcat 0
x530:	mov word [bp + 212], string_test$35	; 6: -57 -122 -44 0 35 2
x536:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x540:	add bp, 212	; 4: -127 -59 -44 0
x544:	jmp strcat	; 3: -23 14 38

string_test$35:	; PostCall 212

string_test$36:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$37:	; Parameter 212 u 6
x547:	mov [bp + 218], bp	; 4: -119 -82 -38 0
x551:	add word [bp + 218], 110	; 5: -125 -122 -38 0 110

string_test$38:	; Call 212 strlen 0
x556:	mov word [bp + 212], string_test$39	; 6: -57 -122 -44 0 61 2
x562:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x566:	add bp, 212	; 4: -127 -59 -44 0
x570:	jmp strlen	; 3: -23 -27 6

string_test$39:	; PostCall 212

string_test$40:	; GetReturnValue £temporary4508

string_test$41:	; Assign i £temporary4508
x573:	mov [bp + 6], bx	; 3: -119 94 6

string_test$42:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$43:	; Parameter 212 u 6
x576:	mov [bp + 218], bp	; 4: -119 -82 -38 0
x580:	add word [bp + 218], 110	; 5: -125 -122 -38 0 110

string_test$44:	; Parameter 212 string_abc# 8
x585:	mov word [bp + 220], string_abc#	; 6: -57 -122 -36 0 -113 7

string_test$45:	; Parameter 212 2 10
x591:	mov word [bp + 222], 2	; 6: -57 -122 -34 0 2 0

string_test$46:	; Call 212 strncat 0
x597:	mov word [bp + 212], string_test$47	; 6: -57 -122 -44 0 102 2
x603:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x607:	add bp, 212	; 4: -127 -59 -44 0
x611:	jmp strncat	; 3: -23 40 38

string_test$47:	; PostCall 212

string_test$48:	; BinaryAdd £temporary4510 i 2
x614:	mov ax, [bp + 6]	; 3: -117 70 6
x617:	add ax, 2	; 3: -125 -64 2

string_test$49:	; BinaryAdd £temporary4512 u £temporary4510
x620:	mov si, bp	; 2: -119 -18
x622:	add si, 110	; 3: -125 -58 110
x625:	add si, ax	; 2: 1 -58

string_test$50:	; Deref £temporary4511 -> £temporary4512 £temporary4512 0

string_test$51:	; Assign £temporary4511 -> £temporary4512 0
x627:	mov byte [si], 0	; 3: -58 4 0

string_test$52:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$53:	; Parameter 212 string_t203D202225s222C20u203D202225s220A# 6
x630:	mov word [bp + 218], string_t203D202225s222C20u203D202225s220A#	; 6: -57 -122 -38 0 123 7

string_test$54:	; Parameter 212 t 8
x636:	mov [bp + 220], bp	; 4: -119 -82 -36 0
x640:	add word [bp + 220], 10	; 5: -125 -122 -36 0 10

string_test$55:	; Parameter 212 u 10
x645:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x649:	add word [bp + 222], 110	; 5: -125 -122 -34 0 110

string_test$56:	; Call 212 printf 0
x654:	mov word [bp + 212], string_test$57	; 6: -57 -122 -44 0 -92 2
x660:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x664:	add bp, 212	; 4: -127 -59 -44 0
x668:	mov di, bp	; 2: -119 -17
x670:	add di, 4	; 3: -125 -57 4
x673:	jmp printf	; 3: -23 -95 6

string_test$57:	; PostCall 212

string_test$58:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$59:	; Parameter 212 string_strcmp28s2C20u29203D2025i0A# 6
x676:	mov word [bp + 218], string_strcmp28s2C20u29203D2025i0A#	; 6: -57 -122 -38 0 -109 7

string_test$60:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$61:	; Parameter 212 s 14
x682:	mov ax, [bp + 8]	; 3: -117 70 8
x685:	mov [bp + 226], ax	; 4: -119 -122 -30 0

string_test$62:	; Parameter 212 u 16
x689:	mov [bp + 228], bp	; 4: -119 -82 -28 0
x693:	add word [bp + 228], 110	; 5: -125 -122 -28 0 110

string_test$63:	; Call 212 strcmp 8
x698:	mov word [bp + 220], string_test$64	; 6: -57 -122 -36 0 -53 2
x704:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x708:	add bp, 220	; 4: -127 -59 -36 0
x712:	jmp strcmp	; 3: -23 42 38

string_test$64:	; PostCall 212

string_test$65:	; GetReturnValue £temporary4514

string_test$66:	; Parameter 212 £temporary4514 8
x715:	mov [bp + 220], bx	; 4: -119 -98 -36 0

string_test$67:	; Call 212 printf 0
x719:	mov word [bp + 212], string_test$68	; 6: -57 -122 -44 0 -27 2
x725:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x729:	add bp, 212	; 4: -127 -59 -44 0
x733:	mov di, bp	; 2: -119 -17
x735:	add di, 2	; 3: -125 -57 2
x738:	jmp printf	; 3: -23 96 6

string_test$68:	; PostCall 212

string_test$69:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$70:	; Parameter 212 string_strncmp28s2C20u2C20229203D2025i0A# 6
x741:	mov word [bp + 218], string_strncmp28s2C20u2C20229203D2025i0A#	; 6: -57 -122 -38 0 -90 7

string_test$71:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$72:	; Parameter 212 s 14
x747:	mov ax, [bp + 8]	; 3: -117 70 8
x750:	mov [bp + 226], ax	; 4: -119 -122 -30 0

string_test$73:	; Parameter 212 u 16
x754:	mov [bp + 228], bp	; 4: -119 -82 -28 0
x758:	add word [bp + 228], 110	; 5: -125 -122 -28 0 110

string_test$74:	; Parameter 212 2 18
x763:	mov word [bp + 230], 2	; 6: -57 -122 -26 0 2 0

string_test$75:	; Call 212 strncmp 8
x769:	mov word [bp + 220], string_test$76	; 6: -57 -122 -36 0 18 3
x775:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x779:	add bp, 220	; 4: -127 -59 -36 0
x783:	jmp strncmp	; 3: -23 -124 38

string_test$76:	; PostCall 212

string_test$77:	; GetReturnValue £temporary4516

string_test$78:	; Parameter 212 £temporary4516 8
x786:	mov [bp + 220], bx	; 4: -119 -98 -36 0

string_test$79:	; Call 212 printf 0
x790:	mov word [bp + 212], string_test$80	; 6: -57 -122 -44 0 44 3
x796:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x800:	add bp, 212	; 4: -127 -59 -44 0
x804:	mov di, bp	; 2: -119 -17
x806:	add di, 2	; 3: -125 -57 2
x809:	jmp printf	; 3: -23 25 6

string_test$80:	; PostCall 212

string_test$81:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$82:	; Parameter 212 s 6
x812:	mov ax, [bp + 8]	; 3: -117 70 8
x815:	mov [bp + 218], ax	; 4: -119 -122 -38 0

string_test$83:	; Parameter 212 108 8
x819:	mov word [bp + 220], 108	; 6: -57 -122 -36 0 108 0

string_test$84:	; Call 212 strchr 0
x825:	mov word [bp + 212], string_test$85	; 6: -57 -122 -44 0 74 3
x831:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x835:	add bp, 212	; 4: -127 -59 -44 0
x839:	jmp strchr	; 3: -23 -84 26

string_test$85:	; PostCall 212

string_test$86:	; GetReturnValue £temporary4518

string_test$87:	; Assign p £temporary4518
x842:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$88:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$89:	; Parameter 212 string_strchr28s2C2027l2729203D2025i0A# 6
x846:	mov word [bp + 218], string_strchr28s2C2027l2729203D2025i0A#	; 6: -57 -122 -38 0 -67 7

string_test$90:	; Equal 93 p 0
x852:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x857:	je string_test$93	; 2: 116 9

string_test$91:	; BinarySubtract £temporary4524 p s
x859:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x863:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$92:	; Goto 94
x866:	jmp string_test$94	; 2: -21 3

string_test$93:	; Assign £temporary4524 -1
x868:	mov ax, -1	; 3: -72 -1 -1

string_test$94:	; Parameter 212 £temporary4524 8
x871:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$95:	; Call 212 printf 0
x875:	mov word [bp + 212], string_test$96	; 6: -57 -122 -44 0 -127 3
x881:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x885:	add bp, 212	; 4: -127 -59 -44 0
x889:	mov di, bp	; 2: -119 -17
x891:	add di, 2	; 3: -125 -57 2
x894:	jmp printf	; 3: -23 -60 5

string_test$96:	; PostCall 212

string_test$97:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$98:	; Parameter 212 s 6
x897:	mov ax, [bp + 8]	; 3: -117 70 8
x900:	mov [bp + 218], ax	; 4: -119 -122 -38 0

string_test$99:	; Parameter 212 108 8
x904:	mov word [bp + 220], 108	; 6: -57 -122 -36 0 108 0

string_test$100:	; Call 212 strrchr 0
x910:	mov word [bp + 212], string_test$101	; 6: -57 -122 -44 0 -97 3
x916:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x920:	add bp, 212	; 4: -127 -59 -44 0
x924:	jmp strrchr	; 3: -23 -80 38

string_test$101:	; PostCall 212

string_test$102:	; GetReturnValue £temporary4526

string_test$103:	; Assign p £temporary4526
x927:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$104:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$105:	; Parameter 212 string_strrchr28s2C2027l2729203D2025i0A# 6
x931:	mov word [bp + 218], string_strrchr28s2C2027l2729203D2025i0A#	; 6: -57 -122 -38 0 -46 7

string_test$106:	; Equal 109 p 0
x937:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x942:	je string_test$109	; 2: 116 9

string_test$107:	; BinarySubtract £temporary4532 p s
x944:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x948:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$108:	; Goto 110
x951:	jmp string_test$110	; 2: -21 3

string_test$109:	; Assign £temporary4532 -1
x953:	mov ax, -1	; 3: -72 -1 -1

string_test$110:	; Parameter 212 £temporary4532 8
x956:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$111:	; Call 212 printf 0
x960:	mov word [bp + 212], string_test$112	; 6: -57 -122 -44 0 -42 3
x966:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x970:	add bp, 212	; 4: -127 -59 -44 0
x974:	mov di, bp	; 2: -119 -17
x976:	add di, 2	; 3: -125 -57 2
x979:	jmp printf	; 3: -23 111 5

string_test$112:	; PostCall 212

string_test$113:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$114:	; Parameter 212 s 6
x982:	mov ax, [bp + 8]	; 3: -117 70 8
x985:	mov [bp + 218], ax	; 4: -119 -122 -38 0

string_test$115:	; Parameter 212 120 8
x989:	mov word [bp + 220], 120	; 6: -57 -122 -36 0 120 0

string_test$116:	; Call 212 strchr 0
x995:	mov word [bp + 212], string_test$117	; 6: -57 -122 -44 0 -12 3
x1001:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1005:	add bp, 212	; 4: -127 -59 -44 0
x1009:	jmp strchr	; 3: -23 2 26

string_test$117:	; PostCall 212

string_test$118:	; GetReturnValue £temporary4534

string_test$119:	; Assign p £temporary4534
x1012:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$120:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$121:	; Parameter 212 string_strchr28s2C2027x2729203D2025i0A# 6
x1016:	mov word [bp + 218], string_strchr28s2C2027x2729203D2025i0A#	; 6: -57 -122 -38 0 -24 7

string_test$122:	; Equal 125 p 0
x1022:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x1027:	je string_test$125	; 2: 116 9

string_test$123:	; BinarySubtract £temporary4540 p s
x1029:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x1033:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$124:	; Goto 126
x1036:	jmp string_test$126	; 2: -21 3

string_test$125:	; Assign £temporary4540 -1
x1038:	mov ax, -1	; 3: -72 -1 -1

string_test$126:	; Parameter 212 £temporary4540 8
x1041:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$127:	; Call 212 printf 0
x1045:	mov word [bp + 212], string_test$128	; 6: -57 -122 -44 0 43 4
x1051:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1055:	add bp, 212	; 4: -127 -59 -44 0
x1059:	mov di, bp	; 2: -119 -17
x1061:	add di, 2	; 3: -125 -57 2
x1064:	jmp printf	; 3: -23 26 5

string_test$128:	; PostCall 212

string_test$129:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$130:	; Parameter 212 s 6
x1067:	mov ax, [bp + 8]	; 3: -117 70 8
x1070:	mov [bp + 218], ax	; 4: -119 -122 -38 0

string_test$131:	; Parameter 212 120 8
x1074:	mov word [bp + 220], 120	; 6: -57 -122 -36 0 120 0

string_test$132:	; Call 212 strrchr 0
x1080:	mov word [bp + 212], string_test$133	; 6: -57 -122 -44 0 73 4
x1086:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1090:	add bp, 212	; 4: -127 -59 -44 0
x1094:	jmp strrchr	; 3: -23 6 38

string_test$133:	; PostCall 212

string_test$134:	; GetReturnValue £temporary4542

string_test$135:	; Assign p £temporary4542
x1097:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$136:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$137:	; Parameter 212 string_strrchr28s2C2027x2729203D2025i0A# 6
x1101:	mov word [bp + 218], string_strrchr28s2C2027x2729203D2025i0A#	; 6: -57 -122 -38 0 -3 7

string_test$138:	; Equal 141 p 0
x1107:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x1112:	je string_test$141	; 2: 116 9

string_test$139:	; BinarySubtract £temporary4548 p s
x1114:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x1118:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$140:	; Goto 142
x1121:	jmp string_test$142	; 2: -21 3

string_test$141:	; Assign £temporary4548 -1
x1123:	mov ax, -1	; 3: -72 -1 -1

string_test$142:	; Parameter 212 £temporary4548 8
x1126:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$143:	; Call 212 printf 0
x1130:	mov word [bp + 212], string_test$144	; 6: -57 -122 -44 0 -128 4
x1136:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1140:	add bp, 212	; 4: -127 -59 -44 0
x1144:	mov di, bp	; 2: -119 -17
x1146:	add di, 2	; 3: -125 -57 2
x1149:	jmp printf	; 3: -23 -59 4

string_test$144:	; PostCall 212

string_test$145:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$146:	; Parameter 212 s 6
x1152:	mov ax, [bp + 8]	; 3: -117 70 8
x1155:	mov [bp + 218], ax	; 4: -119 -122 -38 0

string_test$147:	; Parameter 212 string_Hello2C20World21# 8
x1159:	mov word [bp + 220], string_Hello2C20World21#	; 6: -57 -122 -36 0 90 7

string_test$148:	; Parameter 212 20 10
x1165:	mov word [bp + 222], 20	; 6: -57 -122 -34 0 20 0

string_test$149:	; Call 212 memcpy 0
x1171:	mov word [bp + 212], string_test$150	; 6: -57 -122 -44 0 -92 4
x1177:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1181:	add bp, 212	; 4: -127 -59 -44 0
x1185:	jmp memcpy	; 3: -23 -8 37

string_test$150:	; PostCall 212

string_test$151:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$152:	; Parameter 212 t 6
x1188:	mov [bp + 218], bp	; 4: -119 -82 -38 0
x1192:	add word [bp + 218], 10	; 5: -125 -122 -38 0 10

string_test$153:	; Parameter 212 string_Hello2C20World21# 8
x1197:	mov word [bp + 220], string_Hello2C20World21#	; 6: -57 -122 -36 0 90 7

string_test$154:	; Parameter 212 20 10
x1203:	mov word [bp + 222], 20	; 6: -57 -122 -34 0 20 0

string_test$155:	; Call 212 memmove 0
x1209:	mov word [bp + 212], string_test$156	; 6: -57 -122 -44 0 -54 4
x1215:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1219:	add bp, 212	; 4: -127 -59 -44 0
x1223:	jmp memmove	; 3: -23 14 38

string_test$156:	; PostCall 212

string_test$157:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$158:	; Parameter 212 u 6
x1226:	mov [bp + 218], bp	; 4: -119 -82 -38 0
x1230:	add word [bp + 218], 110	; 5: -125 -122 -38 0 110

string_test$159:	; Parameter 212 88 8
x1235:	mov word [bp + 220], 88	; 6: -57 -122 -36 0 88 0

string_test$160:	; Parameter 212 20 10
x1241:	mov word [bp + 222], 20	; 6: -57 -122 -34 0 20 0

string_test$161:	; Call 212 memset 0
x1247:	mov word [bp + 212], string_test$162	; 6: -57 -122 -44 0 -16 4
x1253:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1257:	add bp, 212	; 4: -127 -59 -44 0
x1261:	jmp memset	; 3: -23 78 38

string_test$162:	; PostCall 212

string_test$163:	; Deref £temporary4553 -> u u 19
x1264:	mov si, bp	; 2: -119 -18
x1266:	add si, 110	; 3: -125 -58 110

string_test$164:	; Assign £temporary4553 -> u 0
x1269:	mov byte [si + 19], 0	; 4: -58 68 19 0

string_test$165:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$166:	; Parameter 212 string_s203D202225s222C20t203D202225s222C20u203D202225s220A# 6
x1273:	mov word [bp + 218], string_s203D202225s222C20t203D202225s222C20u203D202225s220A#	; 6: -57 -122 -38 0 19 8

string_test$167:	; Parameter 212 s 8
x1279:	mov ax, [bp + 8]	; 3: -117 70 8
x1282:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$168:	; Parameter 212 t 10
x1286:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x1290:	add word [bp + 222], 10	; 5: -125 -122 -34 0 10

string_test$169:	; Parameter 212 u 12
x1295:	mov [bp + 224], bp	; 4: -119 -82 -32 0
x1299:	add word [bp + 224], 110	; 5: -125 -122 -32 0 110

string_test$170:	; Call 212 printf 0
x1304:	mov word [bp + 212], string_test$171	; 6: -57 -122 -44 0 46 5
x1310:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1314:	add bp, 212	; 4: -127 -59 -44 0
x1318:	mov di, bp	; 2: -119 -17
x1320:	add di, 6	; 3: -125 -57 6
x1323:	jmp printf	; 3: -23 23 4

string_test$171:	; PostCall 212

string_test$172:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$173:	; Parameter 212 s 6
x1326:	mov ax, [bp + 8]	; 3: -117 70 8
x1329:	mov [bp + 218], ax	; 4: -119 -122 -38 0

string_test$174:	; Parameter 212 108 8
x1333:	mov word [bp + 220], 108	; 6: -57 -122 -36 0 108 0

string_test$175:	; Parameter 212 20 10
x1339:	mov word [bp + 222], 20	; 6: -57 -122 -34 0 20 0

string_test$176:	; Call 212 memchr 0
x1345:	mov word [bp + 212], string_test$177	; 6: -57 -122 -44 0 82 5
x1351:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1355:	add bp, 212	; 4: -127 -59 -44 0
x1359:	jmp memchr	; 3: -23 44 38

string_test$177:	; PostCall 212

string_test$178:	; GetReturnValue £temporary4555

string_test$179:	; Assign p £temporary4555
x1362:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$180:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$181:	; Parameter 212 string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A# 6
x1366:	mov word [bp + 218], string_memchr28s2C2027l272C20SIZE202A20sizeof28char2929203D2025i0A#	; 6: -57 -122 -38 0 49 8

string_test$182:	; Equal 185 p 0
x1372:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x1377:	je string_test$185	; 2: 116 9

string_test$183:	; BinarySubtract £temporary4561 p s
x1379:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x1383:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$184:	; Goto 186
x1386:	jmp string_test$186	; 2: -21 3

string_test$185:	; Assign £temporary4561 -1
x1388:	mov ax, -1	; 3: -72 -1 -1

string_test$186:	; Parameter 212 £temporary4561 8
x1391:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$187:	; Call 212 printf 0
x1395:	mov word [bp + 212], string_test$188	; 6: -57 -122 -44 0 -119 5
x1401:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1405:	add bp, 212	; 4: -127 -59 -44 0
x1409:	mov di, bp	; 2: -119 -17
x1411:	add di, 2	; 3: -125 -57 2
x1414:	jmp printf	; 3: -23 -68 3

string_test$188:	; PostCall 212

string_test$189:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$190:	; Parameter 212 s 6
x1417:	mov ax, [bp + 8]	; 3: -117 70 8
x1420:	mov [bp + 218], ax	; 4: -119 -122 -38 0

string_test$191:	; Parameter 212 120 8
x1424:	mov word [bp + 220], 120	; 6: -57 -122 -36 0 120 0

string_test$192:	; Parameter 212 20 10
x1430:	mov word [bp + 222], 20	; 6: -57 -122 -34 0 20 0

string_test$193:	; Call 212 memchr 0
x1436:	mov word [bp + 212], string_test$194	; 6: -57 -122 -44 0 -83 5
x1442:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1446:	add bp, 212	; 4: -127 -59 -44 0
x1450:	jmp memchr	; 3: -23 -47 37

string_test$194:	; PostCall 212

string_test$195:	; GetReturnValue £temporary4563

string_test$196:	; Assign p £temporary4563
x1453:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$197:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$198:	; Parameter 212 string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A# 6
x1457:	mov word [bp + 218], string_memchr28s2C2027x272C20SIZE202A20sizeof28char2929203D2025i0A#	; 6: -57 -122 -38 0 91 8

string_test$199:	; Equal 202 p 0
x1463:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x1468:	je string_test$202	; 2: 116 9

string_test$200:	; BinarySubtract £temporary4569 p s
x1470:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x1474:	sub ax, [bp + 8]	; 3: 43 70 8

string_test$201:	; Goto 203
x1477:	jmp string_test$203	; 2: -21 3

string_test$202:	; Assign £temporary4569 -1
x1479:	mov ax, -1	; 3: -72 -1 -1

string_test$203:	; Parameter 212 £temporary4569 8
x1482:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$204:	; Call 212 printf 0
x1486:	mov word [bp + 212], string_test$205	; 6: -57 -122 -44 0 -28 5
x1492:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1496:	add bp, 212	; 4: -127 -59 -44 0
x1500:	mov di, bp	; 2: -119 -17
x1502:	add di, 2	; 3: -125 -57 2
x1505:	jmp printf	; 3: -23 97 3

string_test$205:	; PostCall 212

string_test$206:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$207:	; Parameter 212 string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A# 6
x1508:	mov word [bp + 218], string_memcmp28s2C20t2C20SIZE202A20sizeof28char2929203D2025i0A#	; 6: -57 -122 -38 0 -123 8

string_test$208:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$209:	; Parameter 212 s 14
x1514:	mov ax, [bp + 8]	; 3: -117 70 8
x1517:	mov [bp + 226], ax	; 4: -119 -122 -30 0

string_test$210:	; Parameter 212 t 16
x1521:	mov [bp + 228], bp	; 4: -119 -82 -28 0
x1525:	add word [bp + 228], 10	; 5: -125 -122 -28 0 10

string_test$211:	; Parameter 212 20 18
x1530:	mov word [bp + 230], 20	; 6: -57 -122 -26 0 20 0

string_test$212:	; Call 212 memcmp 8
x1536:	mov word [bp + 220], string_test$213	; 6: -57 -122 -36 0 17 6
x1542:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x1546:	add bp, 220	; 4: -127 -59 -36 0
x1550:	jmp memcmp	; 3: -23 -64 37

string_test$213:	; PostCall 212

string_test$214:	; GetReturnValue £temporary4571

string_test$215:	; Parameter 212 £temporary4571 8
x1553:	mov [bp + 220], bx	; 4: -119 -98 -36 0

string_test$216:	; Call 212 printf 0
x1557:	mov word [bp + 212], string_test$217	; 6: -57 -122 -44 0 43 6
x1563:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1567:	add bp, 212	; 4: -127 -59 -44 0
x1571:	mov di, bp	; 2: -119 -17
x1573:	add di, 2	; 3: -125 -57 2
x1576:	jmp printf	; 3: -23 26 3

string_test$217:	; PostCall 212

string_test$218:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$219:	; Parameter 212 string_strspn28s2C2022Hello2C20C2229203D2025i0A# 6
x1579:	mov word [bp + 218], string_strspn28s2C2022Hello2C20C2229203D2025i0A#	; 6: -57 -122 -38 0 -83 8

string_test$220:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$221:	; Parameter 212 s 14
x1585:	mov ax, [bp + 8]	; 3: -117 70 8
x1588:	mov [bp + 226], ax	; 4: -119 -122 -30 0

string_test$222:	; Parameter 212 string_Hello2C20C# 16
x1592:	mov word [bp + 228], string_Hello2C20C#	; 6: -57 -122 -28 0 -55 8

string_test$223:	; Call 212 strspn 8
x1598:	mov word [bp + 220], string_test$224	; 6: -57 -122 -36 0 79 6
x1604:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x1608:	add bp, 220	; 4: -127 -59 -36 0
x1612:	jmp strspn	; 3: -23 -18 37

string_test$224:	; PostCall 212

string_test$225:	; GetReturnValue £temporary4573

string_test$226:	; Parameter 212 £temporary4573 8
x1615:	mov [bp + 220], bx	; 4: -119 -98 -36 0

string_test$227:	; Call 212 printf 0
x1619:	mov word [bp + 212], string_test$228	; 6: -57 -122 -44 0 105 6
x1625:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1629:	add bp, 212	; 4: -127 -59 -44 0
x1633:	mov di, bp	; 2: -119 -17
x1635:	add di, 2	; 3: -125 -57 2
x1638:	jmp printf	; 3: -23 -36 2

string_test$228:	; PostCall 212

string_test$229:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$230:	; Parameter 212 string_strcspn28s2C2022Hello2C20C2229203D2025i0A# 6
x1641:	mov word [bp + 218], string_strcspn28s2C2022Hello2C20C2229203D2025i0A#	; 6: -57 -122 -38 0 -46 8

string_test$231:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$232:	; Parameter 212 s 14
x1647:	mov ax, [bp + 8]	; 3: -117 70 8
x1650:	mov [bp + 226], ax	; 4: -119 -122 -30 0

string_test$233:	; Parameter 212 string_Hello2C20C# 16
x1654:	mov word [bp + 228], string_Hello2C20C#	; 6: -57 -122 -28 0 -55 8

string_test$234:	; Call 212 strcspn 8
x1660:	mov word [bp + 220], string_test$235	; 6: -57 -122 -36 0 -115 6
x1666:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x1670:	add bp, 220	; 4: -127 -59 -36 0
x1674:	jmp strcspn	; 3: -23 16 38

string_test$235:	; PostCall 212

string_test$236:	; GetReturnValue £temporary4575

string_test$237:	; Parameter 212 £temporary4575 8
x1677:	mov [bp + 220], bx	; 4: -119 -98 -36 0

string_test$238:	; Call 212 printf 0
x1681:	mov word [bp + 212], string_test$239	; 6: -57 -122 -44 0 -89 6
x1687:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1691:	add bp, 212	; 4: -127 -59 -44 0
x1695:	mov di, bp	; 2: -119 -17
x1697:	add di, 2	; 3: -125 -57 2
x1700:	jmp printf	; 3: -23 -98 2

string_test$239:	; PostCall 212

string_test$240:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$241:	; Parameter 212 string_strerror28errno29203D202225s220A# 6
x1703:	mov word [bp + 218], string_strerror28errno29203D202225s220A#	; 6: -57 -122 -38 0 -17 8

string_test$242:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$243:	; Parameter 212 errno 14
x1709:	mov ax, [errno]	; 3: -95 7 9
x1712:	mov [bp + 226], ax	; 4: -119 -122 -30 0

string_test$244:	; Call 212 strerror 8
x1716:	mov word [bp + 220], string_test$245	; 6: -57 -122 -36 0 -59 6
x1722:	mov [bp + 222], bp	; 4: -119 -82 -34 0
x1726:	add bp, 220	; 4: -127 -59 -36 0
x1730:	jmp strerror	; 3: -23 56 38

string_test$245:	; PostCall 212

string_test$246:	; GetReturnValue £temporary4577

string_test$247:	; Parameter 212 £temporary4577 8
x1733:	mov [bp + 220], bx	; 4: -119 -98 -36 0

string_test$248:	; Call 212 printf 0
x1737:	mov word [bp + 212], string_test$249	; 6: -57 -122 -44 0 -33 6
x1743:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1747:	add bp, 212	; 4: -127 -59 -44 0
x1751:	mov di, bp	; 2: -119 -17
x1753:	add di, 2	; 3: -125 -57 2
x1756:	jmp printf	; 3: -23 102 2

string_test$249:	; PostCall 212

string_test$250:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$251:	; Parameter 212 s 6
x1759:	mov ax, [bp + 8]	; 3: -117 70 8
x1762:	mov [bp + 218], ax	; 4: -119 -122 -38 0

string_test$252:	; Parameter 212 string_2C# 8
x1766:	mov word [bp + 220], string_2C#	; 6: -57 -122 -36 0 9 9

string_test$253:	; Call 212 strtok 0
x1772:	mov word [bp + 212], string_test$254	; 6: -57 -122 -44 0 -3 6
x1778:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1782:	add bp, 212	; 4: -127 -59 -44 0
x1786:	jmp strtok	; 3: -23 83 38

string_test$254:	; PostCall 212

string_test$255:	; GetReturnValue £temporary4579

string_test$256:	; Assign p £temporary4579
x1789:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$257:	; Equal 271 p 0
x1793:	cmp word [bp + 210], 0	; 5: -125 -66 -46 0 0
x1798:	je string_test$271	; 2: 116 71

string_test$258:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$259:	; Parameter 212 string_strtok28s2C20222C2229203D202225s220A# 6
x1800:	mov word [bp + 218], string_strtok28s2C20222C2229203D202225s220A#	; 6: -57 -122 -38 0 11 9

string_test$260:	; Parameter 212 p 8
x1806:	mov ax, [bp + 210]	; 4: -117 -122 -46 0
x1810:	mov [bp + 220], ax	; 4: -119 -122 -36 0

string_test$261:	; Call 212 printf 0
x1814:	mov word [bp + 212], string_test$262	; 6: -57 -122 -44 0 44 7
x1820:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1824:	add bp, 212	; 4: -127 -59 -44 0
x1828:	mov di, bp	; 2: -119 -17
x1830:	add di, 2	; 3: -125 -57 2
x1833:	jmp printf	; 3: -23 25 2

string_test$262:	; PostCall 212

string_test$263:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

string_test$264:	; Parameter 212 0 6
x1836:	mov word [bp + 218], 0	; 6: -57 -122 -38 0 0 0

string_test$265:	; Parameter 212 string_2C# 8
x1842:	mov word [bp + 220], string_2C#	; 6: -57 -122 -36 0 9 9

string_test$266:	; Call 212 strtok 0
x1848:	mov word [bp + 212], string_test$267	; 6: -57 -122 -44 0 73 7
x1854:	mov [bp + 214], bp	; 4: -119 -82 -42 0
x1858:	add bp, 212	; 4: -127 -59 -44 0
x1862:	jmp strtok	; 3: -23 7 38

string_test$267:	; PostCall 212

string_test$268:	; GetReturnValue £temporary4582

string_test$269:	; Assign p £temporary4582
x1865:	mov [bp + 210], bx	; 4: -119 -98 -46 0

string_test$270:	; Goto 257
x1869:	jmp string_test$257	; 2: -21 -78

string_test$271:	; Return 0
x1871:	mov ax, [bp]	; 3: -117 70 0
x1874:	mov di, [bp + 4]	; 3: -117 126 4
x1877:	mov bp, [bp + 2]	; 3: -117 110 2
x1880:	jmp ax	; 2: -1 -32

string_test$272:	; FunctionEnd string_test

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

strlen:	; Assign index 0
x2338:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

strlen$1:	; BinaryAdd £temporary4077 string index
x2343:	mov si, [bp + 6]	; 3: -117 118 6
x2346:	add si, [bp + 8]	; 3: 3 118 8

strlen$2:	; Deref £temporary4076 -> £temporary4077 £temporary4077 0

strlen$3:	; Equal 6 £temporary4076 -> £temporary4077 0
x2349:	cmp byte [si], 0	; 3: -128 60 0
x2352:	je strlen$6	; 2: 116 5

strlen$4:	; Increment index
x2354:	inc word [bp + 8]	; 3: -1 70 8

strlen$5:	; Goto 1
x2357:	jmp strlen$1	; 2: -21 -16

strlen$6:	; SetReturnValue index
x2359:	mov bx, [bp + 8]	; 3: -117 94 8

strlen$7:	; Return index
x2362:	mov ax, [bp]	; 3: -117 70 0
x2365:	mov di, [bp + 4]	; 3: -117 126 4
x2368:	mov bp, [bp + 2]	; 3: -117 110 2
x2371:	jmp ax	; 2: -1 -32

strlen$8:	; FunctionEnd strlen

printf:	; address £temporary2379 format
x2373:	mov si, bp	; 2: -119 -18
x2375:	add si, 6	; 3: -125 -58 6

printf$1:	; IntegralToIntegral £temporary2380 £temporary2379

printf$2:	; BinaryAdd arg_list £temporary2380 2
x2378:	add si, 2	; 3: -125 -58 2
x2381:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printf$4:	; Parameter 10 format 6
x2384:	mov ax, [bp + 6]	; 3: -117 70 6
x2387:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; Parameter 10 arg_list 8
x2390:	mov ax, [di + 8]	; 3: -117 69 8
x2393:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; Call 10 vprintf 0
x2396:	mov word [di + 10], printf$7	; 5: -57 69 10 111 9
x2401:	mov [di + 12], bp	; 3: -119 109 12
x2404:	mov [di + 14], di	; 3: -119 125 14
x2407:	add di, 10	; 3: -125 -57 10
x2410:	mov bp, di	; 2: -119 -3
x2412:	nop	; 1: -112
x2413:	jmp vprintf	; 2: -21 11

printf$7:	; PostCall 10

printf$8:	; GetReturnValue £temporary2382

printf$9:	; SetReturnValue £temporary2382

printf$10:	; Return £temporary2382
x2415:	mov ax, [bp]	; 3: -117 70 0
x2418:	mov di, [bp + 4]	; 3: -117 126 4
x2421:	mov bp, [bp + 2]	; 3: -117 110 2
x2424:	jmp ax	; 2: -1 -32

printf$11:	; FunctionEnd printf

vprintf:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

vprintf$1:	; Parameter 10 stdout 6
x2426:	mov ax, [stdout]	; 3: -95 -91 9
x2429:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; Parameter 10 format 8
x2432:	mov ax, [bp + 6]	; 3: -117 70 6
x2435:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; Parameter 10 arg_list 10
x2438:	mov ax, [bp + 8]	; 3: -117 70 8
x2441:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; Call 10 vfprintf 0
x2444:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 -102 9
x2449:	mov [bp + 12], bp	; 3: -119 110 12
x2452:	add bp, 10	; 3: -125 -59 10
x2455:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; PostCall 10

vprintf$6:	; GetReturnValue £temporary2386

vprintf$7:	; SetReturnValue £temporary2386

vprintf$8:	; Return £temporary2386
x2458:	mov ax, [bp]	; 3: -117 70 0
x2461:	mov di, [bp + 4]	; 3: -117 126 4
x2464:	mov bp, [bp + 2]	; 3: -117 110 2
x2467:	jmp ax	; 2: -1 -32

vprintf$9:	; FunctionEnd vprintf

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

vfprintf:	; Assign g_outStatus 0
x3051:	mov word [g_outStatus], 0	; 6: -57 6 28 12 0 0

vfprintf$1:	; IntegralToIntegral £temporary2398 outStream
x3057:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; Assign g_outDevice £temporary2398
x3060:	mov [g_outDevice], ax	; 3: -93 30 12

vfprintf$3:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

vfprintf$4:	; Parameter 12 format 6
x3063:	mov ax, [bp + 8]	; 3: -117 70 8
x3066:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; Parameter 12 arg_list 8
x3069:	mov ax, [bp + 10]	; 3: -117 70 10
x3072:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; Call 12 printFormat 0
x3075:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 17 12
x3080:	mov [bp + 14], bp	; 3: -119 110 14
x3083:	add bp, 12	; 3: -125 -59 12
x3086:	nop	; 1: -112
x3087:	jmp printFormat	; 2: -21 15

vfprintf$7:	; PostCall 12

vfprintf$8:	; GetReturnValue £temporary2399

vfprintf$9:	; SetReturnValue £temporary2399

vfprintf$10:	; Return £temporary2399
x3089:	mov ax, [bp]	; 3: -117 70 0
x3092:	mov di, [bp + 4]	; 3: -117 126 4
x3095:	mov bp, [bp + 2]	; 3: -117 110 2
x3098:	jmp ax	; 2: -1 -32

vfprintf$11:	; FunctionEnd vfprintf

g_outStatus:
x3100:	db 0, 0	; 2: 0 0

g_outDevice:
x3102:	db 0, 0	; 2: 0 0

printFormat:	; Assign width 0
x3104:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; Assign precision 0
x3109:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; Assign percent 0
x3114:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; Assign plus 0
x3119:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; Assign minus 0
x3124:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; Assign space 0
x3129:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; Assign zero 0
x3134:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; Assign grid 0
x3139:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; Assign widthStar 0
x3144:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; Assign period 0
x3149:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; Assign precisionStar 0
x3154:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; Assign shortInt 0
x3159:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; Assign longInt 0
x3164:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; Assign longDouble 0
x3169:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; Assign g_outChars 0
x3174:	mov word [g_outChars], 0	; 6: -57 6 122 17 0 0

printFormat$15:	; Assign index 0
x3180:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; BinaryAdd £temporary2233 format index
x3185:	mov si, [bp + 6]	; 3: -117 118 6
x3188:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; Deref £temporary2232 -> £temporary2233 £temporary2233 0

printFormat$18:	; Equal 285 £temporary2232 -> £temporary2233 0
x3191:	cmp byte [si], 0	; 3: -128 60 0
x3194:	je printFormat$285	; 4: 15 -124 -42 4

printFormat$19:	; BinaryAdd £temporary2237 format index
x3198:	mov si, [bp + 6]	; 3: -117 118 6
x3201:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; Deref £temporary2236 -> £temporary2237 £temporary2237 0

printFormat$21:	; Assign c £temporary2236 -> £temporary2237
x3204:	mov al, [si]	; 2: -118 4
x3206:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; Equal 263 percent 0
x3209:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x3213:	je printFormat$263	; 4: 15 -124 91 4

printFormat$23:	; Case 52 c 43
x3217:	mov al, [bp + 40]	; 3: -118 70 40
x3220:	cmp al, 43	; 2: 60 43
x3222:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; Case 54 c 45
x3226:	cmp al, 45	; 2: 60 45
x3228:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; Case 56 c 32
x3232:	cmp al, 32	; 2: 60 32
x3234:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; Case 58 c 48
x3238:	cmp al, 48	; 2: 60 48
x3240:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; Case 60 c 35
x3244:	cmp al, 35	; 2: 60 35
x3246:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; Case 62 c 46
x3250:	cmp al, 46	; 2: 60 46
x3252:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; Case 64 c 42
x3256:	cmp al, 42	; 2: 60 42
x3258:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; Case 69 c 104
x3262:	cmp al, 104	; 2: 60 104
x3264:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; Case 71 c 108
x3268:	cmp al, 108	; 2: 60 108
x3270:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; Case 73 c 76
x3274:	cmp al, 76	; 2: 60 76
x3276:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; Case 75 c 37
x3280:	cmp al, 37	; 2: 60 37
x3282:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; Case 75 c 110
x3286:	cmp al, 110	; 2: 60 110
x3288:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; Case 75 c 112
x3292:	cmp al, 112	; 2: 60 112
x3294:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; Case 75 c 71
x3298:	cmp al, 71	; 2: 60 71
x3300:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; Case 75 c 103
x3304:	cmp al, 103	; 2: 60 103
x3306:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; Case 75 c 69
x3310:	cmp al, 69	; 2: 60 69
x3312:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; Case 75 c 101
x3316:	cmp al, 101	; 2: 60 101
x3318:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; Case 75 c 102
x3322:	cmp al, 102	; 2: 60 102
x3324:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; Case 75 c 115
x3328:	cmp al, 115	; 2: 60 115
x3330:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; Case 75 c 99
x3334:	cmp al, 99	; 2: 60 99
x3336:	je printFormat$75	; 2: 116 125

printFormat$43:	; Case 75 c 88
x3338:	cmp al, 88	; 2: 60 88
x3340:	je printFormat$75	; 2: 116 121

printFormat$44:	; Case 75 c 120
x3342:	cmp al, 120	; 2: 60 120
x3344:	je printFormat$75	; 2: 116 117

printFormat$45:	; Case 75 c 111
x3346:	cmp al, 111	; 2: 60 111
x3348:	je printFormat$75	; 2: 116 113

printFormat$46:	; Case 75 c 98
x3350:	cmp al, 98	; 2: 60 98
x3352:	je printFormat$75	; 2: 116 109

printFormat$47:	; Case 75 c 117
x3354:	cmp al, 117	; 2: 60 117
x3356:	je printFormat$75	; 2: 116 105

printFormat$48:	; Case 75 c 100
x3358:	cmp al, 100	; 2: 60 100
x3360:	je printFormat$75	; 2: 116 101

printFormat$49:	; Case 75 c 105
x3362:	cmp al, 105	; 2: 60 105
x3364:	je printFormat$75	; 2: 116 97

printFormat$50:	; CaseEnd c

printFormat$51:	; Goto 239
x3366:	jmp printFormat$239	; 3: -23 78 3

printFormat$52:	; Assign plus 1
x3369:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; Goto 283
x3374:	jmp printFormat$283	; 3: -23 29 4

printFormat$54:	; Assign minus 1
x3377:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; Goto 283
x3382:	jmp printFormat$283	; 3: -23 21 4

printFormat$56:	; Assign space 1
x3385:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; Goto 283
x3390:	jmp printFormat$283	; 3: -23 13 4

printFormat$58:	; Assign zero 1
x3393:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; Goto 283
x3398:	jmp printFormat$283	; 3: -23 5 4

printFormat$60:	; Assign grid 1
x3401:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; Goto 283
x3406:	jmp printFormat$283	; 3: -23 -3 3

printFormat$62:	; Assign period 1
x3409:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; Goto 283
x3414:	jmp printFormat$283	; 3: -23 -11 3

printFormat$64:	; NotEqual 67 period 0
x3417:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x3421:	jne printFormat$67	; 2: 117 8

printFormat$65:	; Assign width -1
x3423:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; Goto 283
x3428:	jmp printFormat$283	; 3: -23 -25 3

printFormat$67:	; Assign precision -1
x3431:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; Goto 283
x3436:	jmp printFormat$283	; 3: -23 -33 3

printFormat$69:	; Assign shortInt 1
x3439:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; Goto 283
x3444:	jmp printFormat$283	; 3: -23 -41 3

printFormat$71:	; Assign longInt 1
x3447:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; Goto 283
x3452:	jmp printFormat$283	; 3: -23 -49 3

printFormat$73:	; Assign longDouble 1
x3455:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; Goto 283
x3460:	jmp printFormat$283	; 3: -23 -57 3

printFormat$75:	; Equal 107 minus 0
x3463:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3467:	je printFormat$107	; 4: 15 -124 -116 0

printFormat$76:	; Assign startChars g_outChars
x3471:	mov ax, [g_outChars]	; 3: -95 122 17
x3474:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; CallHeader 43 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$78:	; BinaryAdd £temporary2241 format index
x3477:	mov si, [bp + 6]	; 3: -117 118 6
x3480:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; Deref £temporary2240 -> £temporary2241 £temporary2241 0

printFormat$80:	; address £temporary2242 £temporary2240 -> £temporary2241

printFormat$81:	; Parameter 43 £temporary2242 6
x3483:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; Parameter 43 arg_list 8
x3486:	mov ax, [bp + 8]	; 3: -117 70 8
x3489:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; Parameter 43 plus 10
x3492:	mov ax, [bp + 18]	; 3: -117 70 18
x3495:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; Parameter 43 space 12
x3498:	mov ax, [bp + 22]	; 3: -117 70 22
x3501:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; Parameter 43 grid 14
x3504:	mov ax, [bp + 26]	; 3: -117 70 26
x3507:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; address £temporary2243 width
x3510:	mov si, bp	; 2: -119 -18
x3512:	add si, 12	; 3: -125 -58 12

printFormat$87:	; Parameter 43 £temporary2243 16
x3515:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; Parameter 43 precision 18
x3518:	mov ax, [bp + 14]	; 3: -117 70 14
x3521:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; Parameter 43 shortInt 20
x3524:	mov ax, [bp + 34]	; 3: -117 70 34
x3527:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; Parameter 43 longInt 22
x3530:	mov ax, [bp + 36]	; 3: -117 70 36
x3533:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; Parameter 43 longDouble 24
x3536:	mov ax, [bp + 38]	; 3: -117 70 38
x3539:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; Parameter 43 1 26
x3542:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; Parameter 43 0 28
x3547:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; Call 43 printArgument 0
x3552:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 -18 13
x3557:	mov [bp + 45], bp	; 3: -119 110 45
x3560:	add bp, 43	; 3: -125 -59 43
x3563:	jmp printArgument	; 3: -23 -112 3

printFormat$95:	; PostCall 43

printFormat$96:	; GetReturnValue £temporary2244

printFormat$97:	; Assign arg_list £temporary2244
x3566:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; BinarySubtract field g_outChars startChars
x3569:	mov ax, [g_outChars]	; 3: -95 122 17
x3572:	sub ax, [bp + 41]	; 3: 43 70 41
x3575:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$99:	; Assign £temporary2246 field
x3578:	mov ax, [bp + 43]	; 3: -117 70 43

printFormat$100:	; Increment field
x3581:	inc word [bp + 43]	; 3: -1 70 43

printFormat$101:	; SignedGreaterThanEqual 237 £temporary2246 width
x3584:	cmp ax, [bp + 12]	; 3: 59 70 12
x3587:	jge printFormat$237	; 4: 15 -115 104 2

printFormat$102:	; CallHeader 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$103:	; Parameter 45 32 6
x3591:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$104:	; Call 45 printChar 0
x3595:	mov word [bp + 45], printFormat$105	; 5: -57 70 45 25 14
x3600:	mov [bp + 47], bp	; 3: -119 110 47
x3603:	add bp, 45	; 3: -125 -59 45
x3606:	jmp printChar	; 3: -23 120 10

printFormat$105:	; PostCall 45

printFormat$106:	; Goto 99
x3609:	jmp printFormat$99	; 2: -21 -33

printFormat$107:	; Equal 184 zero 0
x3611:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x3615:	je printFormat$184	; 4: 15 -124 84 1

printFormat$108:	; Assign startChars g_outChars
x3619:	mov ax, [g_outChars]	; 3: -95 122 17
x3622:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$109:	; Assign oldOutStatus g_outStatus
x3625:	mov ax, [g_outStatus]	; 3: -95 28 12
x3628:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$110:	; Assign negative 0
x3631:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$111:	; Assign g_outStatus 2
x3636:	mov word [g_outStatus], 2	; 6: -57 6 28 12 2 0

printFormat$112:	; CallHeader 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$113:	; BinaryAdd £temporary2250 format index
x3642:	mov si, [bp + 6]	; 3: -117 118 6
x3645:	add si, [bp + 10]	; 3: 3 118 10

printFormat$114:	; Deref £temporary2249 -> £temporary2250 £temporary2250 0

printFormat$115:	; address £temporary2251 £temporary2249 -> £temporary2250

printFormat$116:	; Parameter 47 £temporary2251 6
x3648:	mov [bp + 53], si	; 3: -119 118 53

printFormat$117:	; Parameter 47 arg_list 8
x3651:	mov ax, [bp + 8]	; 3: -117 70 8
x3654:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$118:	; Parameter 47 0 10
x3657:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$119:	; Parameter 47 0 12
x3662:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$120:	; Parameter 47 grid 14
x3667:	mov ax, [bp + 26]	; 3: -117 70 26
x3670:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$121:	; address £temporary2252 width
x3673:	mov si, bp	; 2: -119 -18
x3675:	add si, 12	; 3: -125 -58 12

printFormat$122:	; Parameter 47 £temporary2252 16
x3678:	mov [bp + 63], si	; 3: -119 118 63

printFormat$123:	; Parameter 47 precision 18
x3681:	mov ax, [bp + 14]	; 3: -117 70 14
x3684:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$124:	; Parameter 47 shortInt 20
x3687:	mov ax, [bp + 34]	; 3: -117 70 34
x3690:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$125:	; Parameter 47 longInt 22
x3693:	mov ax, [bp + 36]	; 3: -117 70 36
x3696:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$126:	; Parameter 47 longDouble 24
x3699:	mov ax, [bp + 38]	; 3: -117 70 38
x3702:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$127:	; Parameter 47 0 26
x3705:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$128:	; address £temporary2253 negative
x3710:	mov si, bp	; 2: -119 -18
x3712:	add si, 45	; 3: -125 -58 45

printFormat$129:	; Parameter 47 £temporary2253 28
x3715:	mov [bp + 75], si	; 3: -119 118 75

printFormat$130:	; Call 47 printArgument 0
x3718:	mov word [bp + 47], printFormat$131	; 5: -57 70 47 -108 14
x3723:	mov [bp + 49], bp	; 3: -119 110 49
x3726:	add bp, 47	; 3: -125 -59 47
x3729:	jmp printArgument	; 3: -23 -22 2

printFormat$131:	; PostCall 47

printFormat$132:	; Assign g_outStatus oldOutStatus
x3732:	mov ax, [bp + 43]	; 3: -117 70 43
x3735:	mov [g_outStatus], ax	; 3: -93 28 12

printFormat$133:	; BinarySubtract field g_outChars startChars
x3738:	mov ax, [g_outChars]	; 3: -95 122 17
x3741:	sub ax, [bp + 41]	; 3: 43 70 41
x3744:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$134:	; Assign g_outChars startChars
x3747:	mov ax, [bp + 41]	; 3: -117 70 41
x3750:	mov [g_outChars], ax	; 3: -93 122 17

printFormat$135:	; Equal 142 negative 0
x3753:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x3757:	je printFormat$142	; 2: 116 23

printFormat$136:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$137:	; Parameter 49 45 6
x3759:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$138:	; Call 49 printChar 0
x3763:	mov word [bp + 49], printFormat$139	; 5: -57 70 49 -63 14
x3768:	mov [bp + 51], bp	; 3: -119 110 51
x3771:	add bp, 49	; 3: -125 -59 49
x3774:	jmp printChar	; 3: -23 -48 9

printFormat$139:	; PostCall 49

printFormat$140:	; Increment field
x3777:	inc word [bp + 47]	; 3: -1 70 47

printFormat$141:	; Goto 155
x3780:	jmp printFormat$155	; 2: -21 56

printFormat$142:	; Equal 149 plus 0
x3782:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x3786:	je printFormat$149	; 2: 116 23

printFormat$143:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$144:	; Parameter 49 43 6
x3788:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$145:	; Call 49 printChar 0
x3792:	mov word [bp + 49], printFormat$146	; 5: -57 70 49 -34 14
x3797:	mov [bp + 51], bp	; 3: -119 110 51
x3800:	add bp, 49	; 3: -125 -59 49
x3803:	jmp printChar	; 3: -23 -77 9

printFormat$146:	; PostCall 49

printFormat$147:	; Increment field
x3806:	inc word [bp + 47]	; 3: -1 70 47

printFormat$148:	; Goto 155
x3809:	jmp printFormat$155	; 2: -21 27

printFormat$149:	; Equal 155 space 0
x3811:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3815:	je printFormat$155	; 2: 116 21

printFormat$150:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$151:	; Parameter 49 32 6
x3817:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$152:	; Call 49 printChar 0
x3821:	mov word [bp + 49], printFormat$153	; 5: -57 70 49 -5 14
x3826:	mov [bp + 51], bp	; 3: -119 110 51
x3829:	add bp, 49	; 3: -125 -59 49
x3832:	jmp printChar	; 3: -23 -106 9

printFormat$153:	; PostCall 49

printFormat$154:	; Increment field
x3835:	inc word [bp + 47]	; 3: -1 70 47

printFormat$155:	; Assign £temporary2265 field
x3838:	mov ax, [bp + 47]	; 3: -117 70 47

printFormat$156:	; Increment field
x3841:	inc word [bp + 47]	; 3: -1 70 47

printFormat$157:	; SignedGreaterThanEqual 163 £temporary2265 width
x3844:	cmp ax, [bp + 12]	; 3: 59 70 12
x3847:	jge printFormat$163	; 2: 125 20

printFormat$158:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$159:	; Parameter 49 48 6
x3849:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$160:	; Call 49 printChar 0
x3853:	mov word [bp + 49], printFormat$161	; 5: -57 70 49 27 15
x3858:	mov [bp + 51], bp	; 3: -119 110 51
x3861:	add bp, 49	; 3: -125 -59 49
x3864:	jmp printChar	; 3: -23 118 9

printFormat$161:	; PostCall 49

printFormat$162:	; Goto 155
x3867:	jmp printFormat$155	; 2: -21 -31

printFormat$163:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$164:	; BinaryAdd £temporary2269 format index
x3869:	mov si, [bp + 6]	; 3: -117 118 6
x3872:	add si, [bp + 10]	; 3: 3 118 10

printFormat$165:	; Deref £temporary2268 -> £temporary2269 £temporary2269 0

printFormat$166:	; address £temporary2270 £temporary2268 -> £temporary2269

printFormat$167:	; Parameter 49 £temporary2270 6
x3875:	mov [bp + 55], si	; 3: -119 118 55

printFormat$168:	; Parameter 49 arg_list 8
x3878:	mov ax, [bp + 8]	; 3: -117 70 8
x3881:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$169:	; Parameter 49 0 10
x3884:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$170:	; Parameter 49 0 12
x3889:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$171:	; Parameter 49 grid 14
x3894:	mov ax, [bp + 26]	; 3: -117 70 26
x3897:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$172:	; Parameter 49 0 16
x3900:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$173:	; Parameter 49 precision 18
x3905:	mov ax, [bp + 14]	; 3: -117 70 14
x3908:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$174:	; Parameter 49 shortInt 20
x3911:	mov ax, [bp + 34]	; 3: -117 70 34
x3914:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$175:	; Parameter 49 longInt 22
x3917:	mov ax, [bp + 36]	; 3: -117 70 36
x3920:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$176:	; Parameter 49 longDouble 24
x3923:	mov ax, [bp + 38]	; 3: -117 70 38
x3926:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$177:	; Parameter 49 0 26
x3929:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$178:	; Parameter 49 0 28
x3934:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$179:	; Call 49 printArgument 0
x3939:	mov word [bp + 49], printFormat$180	; 5: -57 70 49 113 15
x3944:	mov [bp + 51], bp	; 3: -119 110 51
x3947:	add bp, 49	; 3: -125 -59 49
x3950:	jmp printArgument	; 3: -23 13 2

printFormat$180:	; PostCall 49

printFormat$181:	; GetReturnValue £temporary2271

printFormat$182:	; Assign arg_list £temporary2271
x3953:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$183:	; Goto 237
x3956:	jmp printFormat$237	; 3: -23 -8 0

printFormat$184:	; Assign startChars g_outChars
x3959:	mov ax, [g_outChars]	; 3: -95 122 17
x3962:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$185:	; Assign oldOutStatus g_outStatus
x3965:	mov ax, [g_outStatus]	; 3: -95 28 12
x3968:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$186:	; Assign g_outStatus 2
x3971:	mov word [g_outStatus], 2	; 6: -57 6 28 12 2 0

printFormat$187:	; CallHeader 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$188:	; BinaryAdd £temporary2273 format index
x3977:	mov si, [bp + 6]	; 3: -117 118 6
x3980:	add si, [bp + 10]	; 3: 3 118 10

printFormat$189:	; Deref £temporary2272 -> £temporary2273 £temporary2273 0

printFormat$190:	; address £temporary2274 £temporary2272 -> £temporary2273

printFormat$191:	; Parameter 45 £temporary2274 6
x3983:	mov [bp + 51], si	; 3: -119 118 51

printFormat$192:	; Parameter 45 arg_list 8
x3986:	mov ax, [bp + 8]	; 3: -117 70 8
x3989:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$193:	; Parameter 45 plus 10
x3992:	mov ax, [bp + 18]	; 3: -117 70 18
x3995:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$194:	; Parameter 45 space 12
x3998:	mov ax, [bp + 22]	; 3: -117 70 22
x4001:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$195:	; Parameter 45 grid 14
x4004:	mov ax, [bp + 26]	; 3: -117 70 26
x4007:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$196:	; address £temporary2275 width
x4010:	mov si, bp	; 2: -119 -18
x4012:	add si, 12	; 3: -125 -58 12

printFormat$197:	; Parameter 45 £temporary2275 16
x4015:	mov [bp + 61], si	; 3: -119 118 61

printFormat$198:	; Parameter 45 precision 18
x4018:	mov ax, [bp + 14]	; 3: -117 70 14
x4021:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$199:	; Parameter 45 shortInt 20
x4024:	mov ax, [bp + 34]	; 3: -117 70 34
x4027:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$200:	; Parameter 45 longInt 22
x4030:	mov ax, [bp + 36]	; 3: -117 70 36
x4033:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$201:	; Parameter 45 longDouble 24
x4036:	mov ax, [bp + 38]	; 3: -117 70 38
x4039:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$202:	; Parameter 45 1 26
x4042:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$203:	; Parameter 45 0 28
x4047:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$204:	; Call 45 printArgument 0
x4052:	mov word [bp + 45], printFormat$205	; 5: -57 70 45 -30 15
x4057:	mov [bp + 47], bp	; 3: -119 110 47
x4060:	add bp, 45	; 3: -125 -59 45
x4063:	jmp printArgument	; 3: -23 -100 1

printFormat$205:	; PostCall 45

printFormat$206:	; Assign g_outStatus oldOutStatus
x4066:	mov ax, [bp + 43]	; 3: -117 70 43
x4069:	mov [g_outStatus], ax	; 3: -93 28 12

printFormat$207:	; BinarySubtract field g_outChars startChars
x4072:	mov ax, [g_outChars]	; 3: -95 122 17
x4075:	sub ax, [bp + 41]	; 3: 43 70 41
x4078:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$208:	; Assign g_outChars startChars
x4081:	mov ax, [bp + 41]	; 3: -117 70 41
x4084:	mov [g_outChars], ax	; 3: -93 122 17

printFormat$209:	; Assign £temporary2278 field
x4087:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$210:	; Increment field
x4090:	inc word [bp + 45]	; 3: -1 70 45

printFormat$211:	; SignedGreaterThanEqual 217 £temporary2278 width
x4093:	cmp ax, [bp + 12]	; 3: 59 70 12
x4096:	jge printFormat$217	; 2: 125 20

printFormat$212:	; CallHeader 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$213:	; Parameter 47 32 6
x4098:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$214:	; Call 47 printChar 0
x4102:	mov word [bp + 47], printFormat$215	; 5: -57 70 47 20 16
x4107:	mov [bp + 49], bp	; 3: -119 110 49
x4110:	add bp, 47	; 3: -125 -59 47
x4113:	jmp printChar	; 3: -23 125 8

printFormat$215:	; PostCall 47

printFormat$216:	; Goto 209
x4116:	jmp printFormat$209	; 2: -21 -31

printFormat$217:	; CallHeader 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$218:	; BinaryAdd £temporary2282 format index
x4118:	mov si, [bp + 6]	; 3: -117 118 6
x4121:	add si, [bp + 10]	; 3: 3 118 10

printFormat$219:	; Deref £temporary2281 -> £temporary2282 £temporary2282 0

printFormat$220:	; address £temporary2283 £temporary2281 -> £temporary2282

printFormat$221:	; Parameter 47 £temporary2283 6
x4124:	mov [bp + 53], si	; 3: -119 118 53

printFormat$222:	; Parameter 47 arg_list 8
x4127:	mov ax, [bp + 8]	; 3: -117 70 8
x4130:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$223:	; Parameter 47 plus 10
x4133:	mov ax, [bp + 18]	; 3: -117 70 18
x4136:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$224:	; Parameter 47 space 12
x4139:	mov ax, [bp + 22]	; 3: -117 70 22
x4142:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$225:	; Parameter 47 grid 14
x4145:	mov ax, [bp + 26]	; 3: -117 70 26
x4148:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$226:	; Parameter 47 0 16
x4151:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$227:	; Parameter 47 precision 18
x4156:	mov ax, [bp + 14]	; 3: -117 70 14
x4159:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$228:	; Parameter 47 shortInt 20
x4162:	mov ax, [bp + 34]	; 3: -117 70 34
x4165:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$229:	; Parameter 47 longInt 22
x4168:	mov ax, [bp + 36]	; 3: -117 70 36
x4171:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$230:	; Parameter 47 longDouble 24
x4174:	mov ax, [bp + 38]	; 3: -117 70 38
x4177:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$231:	; Parameter 47 1 26
x4180:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$232:	; Parameter 47 0 28
x4185:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$233:	; Call 47 printArgument 0
x4190:	mov word [bp + 47], printFormat$234	; 5: -57 70 47 108 16
x4195:	mov [bp + 49], bp	; 3: -119 110 49
x4198:	add bp, 47	; 3: -125 -59 47
x4201:	jmp printArgument	; 3: -23 18 1

printFormat$234:	; PostCall 47

printFormat$235:	; GetReturnValue £temporary2284

printFormat$236:	; Assign arg_list £temporary2284
x4204:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$237:	; Assign percent 0
x4207:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$238:	; Goto 283
x4212:	jmp printFormat$283	; 3: -23 -41 0

printFormat$239:	; Assign value 0
x4215:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$240:	; CallHeader 43 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$241:	; IntegralToIntegral £temporary2287 c
x4220:	mov al, [bp + 40]	; 3: -118 70 40
x4223:	and ax, 255	; 3: 37 -1 0
x4226:	cmp al, 0	; 2: 60 0
x4228:	jge printFormat$242	; 2: 125 4
x4230:	neg al	; 2: -10 -40
x4232:	neg ax	; 2: -9 -40

printFormat$242:	; Parameter 43 £temporary2287 6
x4234:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$243:	; Call 43 isdigit 0
x4237:	mov word [bp + 43], printFormat$244	; 5: -57 70 43 -101 16
x4242:	mov [bp + 45], bp	; 3: -119 110 45
x4245:	add bp, 43	; 3: -125 -59 43
x4248:	jmp isdigit	; 3: -23 -22 22

printFormat$244:	; PostCall 43

printFormat$245:	; GetReturnValue £temporary2288

printFormat$246:	; Equal 257 £temporary2288 0
x4251:	cmp bx, 0	; 3: -125 -5 0
x4254:	je printFormat$257	; 2: 116 51

printFormat$247:	; SignedMultiply £temporary2289 value 10
x4256:	mov ax, [bp + 41]	; 3: -117 70 41
x4259:	xor dx, dx	; 2: 49 -46
x4261:	imul word [int2$10#]	; 4: -9 46 124 17

printFormat$248:	; BinarySubtract £temporary2290 c 48
x4265:	mov bl, [bp + 40]	; 3: -118 94 40
x4268:	sub bl, 48	; 3: -128 -21 48

printFormat$249:	; IntegralToIntegral £temporary2291 £temporary2290
x4271:	and bx, 255	; 4: -127 -29 -1 0
x4275:	cmp bl, 0	; 3: -128 -5 0
x4278:	jge printFormat$250	; 2: 125 4
x4280:	neg bl	; 2: -10 -37
x4282:	neg bx	; 2: -9 -37

printFormat$250:	; BinaryAdd value £temporary2289 £temporary2291
x4284:	add ax, bx	; 2: 1 -40
x4286:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$251:	; Increment index
x4289:	inc word [bp + 10]	; 3: -1 70 10

printFormat$252:	; Assign £temporary2293 index
x4292:	mov ax, [bp + 10]	; 3: -117 70 10

printFormat$253:	; BinaryAdd £temporary2295 format £temporary2293
x4295:	mov si, [bp + 6]	; 3: -117 118 6
x4298:	add si, ax	; 2: 1 -58

printFormat$254:	; Deref £temporary2294 -> £temporary2295 £temporary2295 0

printFormat$255:	; Assign c £temporary2294 -> £temporary2295
x4300:	mov al, [si]	; 2: -118 4
x4302:	mov [bp + 40], al	; 3: -120 70 40

printFormat$256:	; Goto 240
x4305:	jmp printFormat$240	; 2: -21 -87

printFormat$257:	; Decrement index
x4307:	dec word [bp + 10]	; 3: -1 78 10

printFormat$258:	; NotEqual 261 period 0
x4310:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x4314:	jne printFormat$261	; 2: 117 8

printFormat$259:	; Assign width value
x4316:	mov ax, [bp + 41]	; 3: -117 70 41
x4319:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$260:	; Goto 283
x4322:	jmp printFormat$283	; 2: -21 106

printFormat$261:	; Assign precision value
x4324:	mov ax, [bp + 41]	; 3: -117 70 41
x4327:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$262:	; Goto 283
x4330:	jmp printFormat$283	; 2: -21 98

printFormat$263:	; NotEqual 279 c 37
x4332:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x4336:	jne printFormat$279	; 2: 117 72

printFormat$264:	; Assign percent 1
x4338:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$265:	; Assign plus 0
x4343:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$266:	; Assign minus 0
x4348:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$267:	; Assign space 0
x4353:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$268:	; Assign zero 0
x4358:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$269:	; Assign grid 0
x4363:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$270:	; Assign widthStar 0
x4368:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$271:	; Assign period 0
x4373:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$272:	; Assign precisionStar 0
x4378:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$273:	; Assign shortInt 0
x4383:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$274:	; Assign longInt 0
x4388:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$275:	; Assign longDouble 0
x4393:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$276:	; Assign width 0
x4398:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$277:	; Assign precision 0
x4403:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$278:	; Goto 283
x4408:	jmp printFormat$283	; 2: -21 20

printFormat$279:	; CallHeader 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$280:	; Parameter 41 c 6
x4410:	mov al, [bp + 40]	; 3: -118 70 40
x4413:	mov [bp + 47], al	; 3: -120 70 47

printFormat$281:	; Call 41 printChar 0
x4416:	mov word [bp + 41], printFormat$282	; 5: -57 70 41 78 17
x4421:	mov [bp + 43], bp	; 3: -119 110 43
x4424:	add bp, 41	; 3: -125 -59 41
x4427:	jmp printChar	; 3: -23 67 7

printFormat$282:	; PostCall 41

printFormat$283:	; Increment index
x4430:	inc word [bp + 10]	; 3: -1 70 10

printFormat$284:	; Goto 16
x4433:	jmp printFormat$16	; 3: -23 29 -5

printFormat$285:	; NotEqual 291 g_outStatus 1
x4436:	cmp word [g_outStatus], 1	; 5: -125 62 28 12 1
x4441:	jne printFormat$291	; 2: 117 16

printFormat$286:	; IntegralToIntegral £temporary2304 g_outDevice
x4443:	mov ax, [g_outDevice]	; 3: -95 30 12

printFormat$287:	; Assign outString £temporary2304
x4446:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$288:	; BinaryAdd £temporary2306 outString g_outChars
x4449:	mov si, [bp + 40]	; 3: -117 118 40
x4452:	add si, [g_outChars]	; 4: 3 54 122 17

printFormat$289:	; Deref £temporary2305 -> £temporary2306 £temporary2306 0

printFormat$290:	; Assign £temporary2305 -> £temporary2306 0
x4456:	mov byte [si], 0	; 3: -58 4 0

printFormat$291:	; SetReturnValue g_outChars
x4459:	mov bx, [g_outChars]	; 4: -117 30 122 17

printFormat$292:	; Return g_outChars
x4463:	mov ax, [bp]	; 3: -117 70 0
x4466:	mov di, [bp + 4]	; 3: -117 126 4
x4469:	mov bp, [bp + 2]	; 3: -117 110 2
x4472:	jmp ax	; 2: -1 -32

printFormat$293:	; FunctionEnd printFormat

g_outChars:
x4474:	db 0, 0	; 2: 0 0

int2$10#:
x4476:	dw 10	; 2: 10 0

printArgument:	; Deref £temporary2006 -> format format 0
x4478:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; Assign c £temporary2006 -> format
x4481:	mov al, [si]	; 2: -118 4
x4483:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; Case 21 c 100
x4486:	mov al, [bp + 30]	; 3: -118 70 30
x4489:	cmp al, 100	; 2: 60 100
x4491:	je printArgument$21	; 2: 116 97

printArgument$3:	; Case 21 c 105
x4493:	cmp al, 105	; 2: 60 105
x4495:	je printArgument$21	; 2: 116 93

printArgument$4:	; Case 73 c 99
x4497:	cmp al, 99	; 2: 60 99
x4499:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; Case 93 c 115
x4503:	cmp al, 115	; 2: 60 115
x4505:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; Case 113 c 88
x4509:	cmp al, 88	; 2: 60 88
x4511:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; Case 113 c 120
x4515:	cmp al, 120	; 2: 60 120
x4517:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; Case 113 c 98
x4521:	cmp al, 98	; 2: 60 98
x4523:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; Case 113 c 111
x4527:	cmp al, 111	; 2: 60 111
x4529:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; Case 113 c 117
x4533:	cmp al, 117	; 2: 60 117
x4535:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; Case 173 c 71
x4539:	cmp al, 71	; 2: 60 71
x4541:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; Case 173 c 103
x4545:	cmp al, 103	; 2: 60 103
x4547:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; Case 173 c 69
x4551:	cmp al, 69	; 2: 60 69
x4553:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; Case 173 c 101
x4557:	cmp al, 101	; 2: 60 101
x4559:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; Case 173 c 102
x4563:	cmp al, 102	; 2: 60 102
x4565:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; Case 299 c 112
x4569:	cmp al, 112	; 2: 60 112
x4571:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; Case 324 c 110
x4575:	cmp al, 110	; 2: 60 110
x4577:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; Case 346 c 37
x4581:	cmp al, 37	; 2: 60 37
x4583:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; CaseEnd c

printArgument$20:	; Goto 359
x4587:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; Equal 30 shortInt 0
x4590:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x4594:	je printArgument$30	; 2: 116 42

printArgument$22:	; BinaryAdd arg_list arg_list 2
x4596:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; BinarySubtract £temporary2008 arg_list 2
x4600:	mov si, [bp + 8]	; 3: -117 118 8
x4603:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; IntegralToIntegral £temporary2009 £temporary2008

printArgument$25:	; Deref £temporary2010 -> £temporary2009 £temporary2009 0

printArgument$26:	; IntegralToIntegral £temporary2011 £temporary2010 -> £temporary2009
x4606:	mov ax, [si]	; 2: -117 4
x4608:	cmp ax, 0	; 3: -125 -8 0
x4611:	jge printArgument$27	; 2: 125 4
x4613:	neg ax	; 2: -9 -40
x4615:	neg al	; 2: -10 -40

printArgument$27:	; IntegralToIntegral £temporary2012 £temporary2011
x4617:	and eax, 255	; 6: 102 37 -1 0 0 0
x4623:	cmp al, 0	; 2: 60 0
x4625:	jge printArgument$28	; 2: 125 5
x4627:	neg al	; 2: -10 -40
x4629:	neg eax	; 3: 102 -9 -40

printArgument$28:	; Assign longValue £temporary2012
x4632:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; Goto 43
x4636:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; Equal 37 longInt 0
x4638:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x4642:	je printArgument$37	; 2: 116 19

printArgument$31:	; BinaryAdd arg_list arg_list 4
x4644:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; BinarySubtract £temporary2014 arg_list 4
x4648:	mov si, [bp + 8]	; 3: -117 118 8
x4651:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; IntegralToIntegral £temporary2015 £temporary2014

printArgument$34:	; Deref £temporary2016 -> £temporary2015 £temporary2015 0

printArgument$35:	; Assign longValue £temporary2016 -> £temporary2015
x4654:	mov eax, [si]	; 3: 102 -117 4
x4657:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; Goto 43
x4661:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; BinaryAdd arg_list arg_list 2
x4663:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; BinarySubtract £temporary2018 arg_list 2
x4667:	mov si, [bp + 8]	; 3: -117 118 8
x4670:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; IntegralToIntegral £temporary2019 £temporary2018

printArgument$40:	; Deref £temporary2020 -> £temporary2019 £temporary2019 0

printArgument$41:	; IntegralToIntegral £temporary2021 £temporary2020 -> £temporary2019
x4673:	mov ax, [si]	; 2: -117 4
x4675:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x4681:	cmp ax, 0	; 3: -125 -8 0
x4684:	jge printArgument$42	; 2: 125 5
x4686:	neg ax	; 2: -9 -40
x4688:	neg eax	; 3: 102 -9 -40

printArgument$42:	; Assign longValue £temporary2021
x4691:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; Equal 50 negativePtr 0
x4695:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x4699:	je printArgument$50	; 2: 116 20

printArgument$44:	; Deref £temporary2025 -> negativePtr negativePtr 0
x4701:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; SignedGreaterThanEqual 48 longValue 0
x4704:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x4709:	jge printArgument$48	; 2: 125 5

printArgument$46:	; Assign £temporary2027 1
x4711:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; Goto 49
x4714:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; Assign £temporary2027 0
x4716:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; Assign £temporary2025 -> negativePtr £temporary2027
x4719:	mov [si], ax	; 2: -119 4

printArgument$50:	; NotEqual 57 sign 0
x4721:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x4725:	jne printArgument$57	; 2: 117 26

printArgument$51:	; CallHeader 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$52:	; Parameter 48 longValue 6
x4727:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x4731:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; Call 48 labs 0
x4735:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 -115 18
x4740:	mov [bp + 50], bp	; 3: -119 110 50
x4743:	add bp, 48	; 3: -125 -59 48
x4746:	jmp labs	; 3: -23 5 5

printArgument$54:	; PostCall 48

printArgument$55:	; GetReturnValue £temporary2030

printArgument$56:	; Assign longValue £temporary2030
x4749:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; CallHeader 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$58:	; Parameter 48 arg_list 6
x4753:	mov ax, [bp + 8]	; 3: -117 70 8
x4756:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; Parameter 48 widthPtr 8
x4759:	mov ax, [bp + 16]	; 3: -117 70 16
x4762:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; address £temporary2031 precision
x4765:	mov si, bp	; 2: -119 -18
x4767:	add si, 18	; 3: -125 -58 18

printArgument$61:	; Parameter 48 £temporary2031 10
x4770:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; Call 48 checkWidthAndPrecision 0
x4773:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 -77 18
x4778:	mov [bp + 50], bp	; 3: -119 110 50
x4781:	add bp, 48	; 3: -125 -59 48
x4784:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; PostCall 48

printArgument$64:	; GetReturnValue £temporary2032

printArgument$65:	; Assign arg_list £temporary2032
x4787:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; CallHeader 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$67:	; Parameter 48 longValue 6
x4790:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x4794:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; Parameter 48 plus 10
x4798:	mov ax, [bp + 10]	; 3: -117 70 10
x4801:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; Parameter 48 space 12
x4804:	mov ax, [bp + 12]	; 3: -117 70 12
x4807:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; Call 48 printLongInt 0
x4810:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 -40 18
x4815:	mov [bp + 50], bp	; 3: -119 110 50
x4818:	add bp, 48	; 3: -125 -59 48
x4821:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; PostCall 48

printArgument$72:	; Goto 359
x4824:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; BinaryAdd arg_list arg_list 2
x4827:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; BinarySubtract £temporary2035 arg_list 2
x4831:	mov si, [bp + 8]	; 3: -117 118 8
x4834:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; IntegralToIntegral £temporary2036 £temporary2035

printArgument$76:	; Deref £temporary2037 -> £temporary2036 £temporary2036 0

printArgument$77:	; IntegralToIntegral £temporary2038 £temporary2037 -> £temporary2036
x4837:	mov ax, [si]	; 2: -117 4
x4839:	cmp ax, 0	; 3: -125 -8 0
x4842:	jge printArgument$78	; 2: 125 4
x4844:	neg ax	; 2: -9 -40
x4846:	neg al	; 2: -10 -40

printArgument$78:	; Assign charValue £temporary2038
x4848:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$80:	; Parameter 44 arg_list 6
x4851:	mov ax, [bp + 8]	; 3: -117 70 8
x4854:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; Parameter 44 widthPtr 8
x4857:	mov ax, [bp + 16]	; 3: -117 70 16
x4860:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; address £temporary2039 precision
x4863:	mov si, bp	; 2: -119 -18
x4865:	add si, 18	; 3: -125 -58 18

printArgument$83:	; Parameter 44 £temporary2039 10
x4868:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; Call 44 checkWidthAndPrecision 0
x4871:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 21 19
x4876:	mov [bp + 46], bp	; 3: -119 110 46
x4879:	add bp, 44	; 3: -125 -59 44
x4882:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; PostCall 44

printArgument$86:	; GetReturnValue £temporary2040

printArgument$87:	; Assign arg_list £temporary2040
x4885:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$89:	; Parameter 44 charValue 6
x4888:	mov al, [bp + 31]	; 3: -118 70 31
x4891:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; Call 44 printChar 0
x4894:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 44 19
x4899:	mov [bp + 46], bp	; 3: -119 110 46
x4902:	add bp, 44	; 3: -125 -59 44
x4905:	jmp printChar	; 3: -23 101 5

printArgument$91:	; PostCall 44

printArgument$92:	; Goto 359
x4908:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; BinaryAdd arg_list arg_list 2
x4911:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; BinarySubtract £temporary2043 arg_list 2
x4915:	mov si, [bp + 8]	; 3: -117 118 8
x4918:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; IntegralToIntegral £temporary2044 £temporary2043

printArgument$96:	; Deref £temporary2045 -> £temporary2044 £temporary2044 0

printArgument$97:	; Assign stringValue £temporary2045 -> £temporary2044
x4921:	mov ax, [si]	; 2: -117 4
x4923:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$99:	; Parameter 46 arg_list 6
x4926:	mov ax, [bp + 8]	; 3: -117 70 8
x4929:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; Parameter 46 widthPtr 8
x4932:	mov ax, [bp + 16]	; 3: -117 70 16
x4935:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; address £temporary2046 precision
x4938:	mov si, bp	; 2: -119 -18
x4940:	add si, 18	; 3: -125 -58 18

printArgument$102:	; Parameter 46 £temporary2046 10
x4943:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; Call 46 checkWidthAndPrecision 0
x4946:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 96 19
x4951:	mov [bp + 48], bp	; 3: -119 110 48
x4954:	add bp, 46	; 3: -125 -59 46
x4957:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; PostCall 46

printArgument$105:	; GetReturnValue £temporary2047

printArgument$106:	; Assign arg_list £temporary2047
x4960:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$108:	; Parameter 46 stringValue 6
x4963:	mov ax, [bp + 44]	; 3: -117 70 44
x4966:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; Parameter 46 precision 8
x4969:	mov ax, [bp + 18]	; 3: -117 70 18
x4972:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; Call 46 printString 0
x4975:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 125 19
x4980:	mov [bp + 48], bp	; 3: -119 110 48
x4983:	add bp, 46	; 3: -125 -59 46
x4986:	jmp printString	; 3: -23 -36 5

printArgument$111:	; PostCall 46

printArgument$112:	; Goto 359
x4989:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; NotEqual 116 c 117
x4992:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x4996:	jne printArgument$116	; 2: 117 8

printArgument$114:	; Assign £temporary2063 10
x4998:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; Goto 125
x5004:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; NotEqual 119 c 111
x5006:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x5010:	jne printArgument$119	; 2: 117 8

printArgument$117:	; Assign £temporary2059 8
x5012:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; Goto 124
x5018:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; NotEqual 122 c 98
x5020:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x5024:	jne printArgument$122	; 2: 117 8

printArgument$120:	; Assign £temporary2055 2
x5026:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; Goto 123
x5032:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; Assign £temporary2055 16
x5034:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; Assign £temporary2059 £temporary2055

printArgument$124:	; Assign £temporary2063 £temporary2059

printArgument$125:	; Assign base £temporary2063
x5040:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; Equal 135 shortInt 0
x5044:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x5048:	je printArgument$135	; 2: 116 24

printArgument$127:	; BinaryAdd arg_list arg_list 2
x5050:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; BinarySubtract £temporary2065 arg_list 2
x5054:	mov si, [bp + 8]	; 3: -117 118 8
x5057:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; IntegralToIntegral £temporary2066 £temporary2065

printArgument$130:	; Deref £temporary2067 -> £temporary2066 £temporary2066 0

printArgument$131:	; IntegralToIntegral £temporary2068 £temporary2067 -> £temporary2066
x5060:	mov ax, [si]	; 2: -117 4

printArgument$132:	; IntegralToIntegral £temporary2069 £temporary2068
x5062:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; Assign value £temporary2069
x5068:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; Goto 148
x5072:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; Equal 142 longInt 0
x5074:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x5078:	je printArgument$142	; 2: 116 19

printArgument$136:	; BinaryAdd arg_list arg_list 4
x5080:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; BinarySubtract £temporary2071 arg_list 4
x5084:	mov si, [bp + 8]	; 3: -117 118 8
x5087:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; IntegralToIntegral £temporary2072 £temporary2071

printArgument$139:	; Deref £temporary2073 -> £temporary2072 £temporary2072 0

printArgument$140:	; Assign value £temporary2073 -> £temporary2072
x5090:	mov eax, [si]	; 3: 102 -117 4
x5093:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; Goto 148
x5097:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; BinaryAdd arg_list arg_list 2
x5099:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; BinarySubtract £temporary2075 arg_list 2
x5103:	mov si, [bp + 8]	; 3: -117 118 8
x5106:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; IntegralToIntegral £temporary2076 £temporary2075

printArgument$145:	; Deref £temporary2077 -> £temporary2076 £temporary2076 0

printArgument$146:	; IntegralToIntegral £temporary2078 £temporary2077 -> £temporary2076
x5109:	mov ax, [si]	; 2: -117 4
x5111:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; Assign value £temporary2078
x5117:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; CallHeader 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$149:	; Parameter 52 arg_list 6
x5121:	mov ax, [bp + 8]	; 3: -117 70 8
x5124:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; Parameter 52 widthPtr 8
x5127:	mov ax, [bp + 16]	; 3: -117 70 16
x5130:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; address £temporary2081 precision
x5133:	mov si, bp	; 2: -119 -18
x5135:	add si, 18	; 3: -125 -58 18

printArgument$152:	; Parameter 52 £temporary2081 10
x5138:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; Call 52 checkWidthAndPrecision 0
x5141:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 35 20
x5146:	mov [bp + 54], bp	; 3: -119 110 54
x5149:	add bp, 52	; 3: -125 -59 52
x5152:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; PostCall 52

printArgument$155:	; GetReturnValue £temporary2082

printArgument$156:	; Assign arg_list £temporary2082
x5155:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; CallHeader 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$158:	; Parameter 52 value 6
x5158:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x5162:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; Parameter 52 plus 10
x5166:	mov ax, [bp + 10]	; 3: -117 70 10
x5169:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; Parameter 52 space 12
x5172:	mov ax, [bp + 12]	; 3: -117 70 12
x5175:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; Parameter 52 grid 14
x5178:	mov ax, [bp + 14]	; 3: -117 70 14
x5181:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; Parameter 52 base 16
x5184:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x5188:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; CallHeader 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$164:	; IntegralToIntegral £temporary2083 c
x5192:	mov al, [bp + 30]	; 3: -118 70 30
x5195:	and ax, 255	; 3: 37 -1 0
x5198:	cmp al, 0	; 2: 60 0
x5200:	jge printArgument$165	; 2: 125 4
x5202:	neg al	; 2: -10 -40
x5204:	neg ax	; 2: -9 -40

printArgument$165:	; Parameter 52 £temporary2083 26
x5206:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; Call 52 isupper 20
x5209:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 103 20
x5214:	mov [bp + 74], bp	; 3: -119 110 74
x5217:	add bp, 72	; 3: -125 -59 72
x5220:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; PostCall 52

printArgument$168:	; GetReturnValue £temporary2084

printArgument$169:	; Parameter 52 £temporary2084 20
x5223:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; Call 52 printUnsignedLong 0
x5226:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 120 20
x5231:	mov [bp + 54], bp	; 3: -119 110 54
x5234:	add bp, 52	; 3: -125 -59 52
x5237:	jmp printUnsignedLong	; 3: -23 -50 9

printArgument$171:	; PostCall 52

printArgument$172:	; Goto 359
x5240:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; Equal 190 longDouble 0
x5243:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x5247:	je printArgument$190	; 2: 116 57

printArgument$174:	; BinaryAdd arg_list arg_list 8
x5249:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; BinarySubtract £temporary2087 arg_list 8
x5253:	mov si, [bp + 8]	; 3: -117 118 8
x5256:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; IntegralToIntegral £temporary2088 £temporary2087

printArgument$177:	; Deref £temporary2089 -> £temporary2088 £temporary2088 0

printArgument$178:	; PushFloat £temporary2089 -> £temporary2088
x5259:	fld qword [si]	; 2: -35 4

printArgument$179:	; PopFloat longDoubleValue
x5261:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$181:	; PushFloat longDoubleValue
x5264:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; Parameter 44 longDoubleValue 6
x5267:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; Parameter 44 0 14
x5270:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; Parameter 44 0 16
x5275:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; Parameter 44 0 18
x5280:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; Parameter 44 3 20
x5285:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; Call 44 printLongDoublePlain 0
x5290:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 -72 20
x5295:	mov [bp + 46], bp	; 3: -119 110 46
x5298:	add bp, 44	; 3: -125 -59 44
x5301:	jmp printLongDoublePlain	; 3: -23 57 11

printArgument$188:	; PostCall 44

printArgument$189:	; Goto 196
x5304:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; BinaryAdd arg_list arg_list 8
x5306:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; BinarySubtract £temporary2092 arg_list 8
x5310:	mov si, [bp + 8]	; 3: -117 118 8
x5313:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; IntegralToIntegral £temporary2093 £temporary2092

printArgument$193:	; Deref £temporary2094 -> £temporary2093 £temporary2093 0

printArgument$194:	; PushFloat £temporary2094 -> £temporary2093
x5316:	fld qword [si]	; 2: -35 4

printArgument$195:	; PopFloat longDoubleValue
x5318:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; Equal 205 negativePtr 0
x5321:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x5325:	je printArgument$205	; 2: 116 26

printArgument$197:	; Deref £temporary2098 -> negativePtr negativePtr 0
x5327:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; PushFloat longDoubleValue
x5330:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; PushZero
x5333:	fldz	; 2: -39 -18

printArgument$200:	; SignedGreaterThanEqual 203 longDoubleValue 0
x5335:	fcompp	; 2: -34 -39
x5337:	fstsw ax	; 3: -101 -33 -32
x5340:	sahf	; 1: -98
x5341:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; Assign £temporary2100 1
x5343:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; Goto 204
x5346:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; Assign £temporary2100 0
x5348:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; Assign £temporary2098 -> negativePtr £temporary2100
x5351:	mov [si], ax	; 2: -119 4

printArgument$205:	; NotEqual 213 sign 0
x5353:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x5357:	jne printArgument$213	; 2: 117 23

printArgument$206:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$207:	; PushFloat longDoubleValue
x5359:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; Parameter 44 longDoubleValue 6
x5362:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; Call 44 fabs 0
x5365:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 3 21
x5370:	mov [bp + 46], bp	; 3: -119 110 46
x5373:	add bp, 44	; 3: -125 -59 44
x5376:	jmp fabs	; 3: -23 50 12

printArgument$210:	; PostCall 44

printArgument$211:	; GetReturnValue £temporary2103

printArgument$212:	; PopFloat longDoubleValue
x5379:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$214:	; Parameter 44 arg_list 6
x5382:	mov ax, [bp + 8]	; 3: -117 70 8
x5385:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; Parameter 44 widthPtr 8
x5388:	mov ax, [bp + 16]	; 3: -117 70 16
x5391:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; address £temporary2104 precision
x5394:	mov si, bp	; 2: -119 -18
x5396:	add si, 18	; 3: -125 -58 18

printArgument$217:	; Parameter 44 £temporary2104 10
x5399:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; Call 44 checkWidthAndPrecision 0
x5402:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 40 21
x5407:	mov [bp + 46], bp	; 3: -119 110 46
x5410:	add bp, 44	; 3: -125 -59 44
x5413:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; PostCall 44

printArgument$220:	; GetReturnValue £temporary2105

printArgument$221:	; Assign arg_list £temporary2105
x5416:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; NotEqual 233 c 102
x5419:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x5423:	jne printArgument$233	; 2: 117 47

printArgument$223:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$224:	; PushFloat longDoubleValue
x5425:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; Parameter 44 longDoubleValue 6
x5428:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; Parameter 44 plus 14
x5431:	mov ax, [bp + 10]	; 3: -117 70 10
x5434:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; Parameter 44 space 16
x5437:	mov ax, [bp + 12]	; 3: -117 70 12
x5440:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; Parameter 44 grid 18
x5443:	mov ax, [bp + 14]	; 3: -117 70 14
x5446:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; Parameter 44 precision 20
x5449:	mov ax, [bp + 18]	; 3: -117 70 18
x5452:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; Call 44 printLongDoublePlain 0
x5455:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 93 21
x5460:	mov [bp + 46], bp	; 3: -119 110 46
x5463:	add bp, 44	; 3: -125 -59 44
x5466:	jmp printLongDoublePlain	; 3: -23 -108 10

printArgument$231:	; PostCall 44

printArgument$232:	; Goto 359
x5469:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$234:	; IntegralToIntegral £temporary2108 c
x5472:	mov al, [bp + 30]	; 3: -118 70 30
x5475:	and ax, 255	; 3: 37 -1 0
x5478:	cmp al, 0	; 2: 60 0
x5480:	jge printArgument$235	; 2: 125 4
x5482:	neg al	; 2: -10 -40
x5484:	neg ax	; 2: -9 -40

printArgument$235:	; Parameter 44 £temporary2108 6
x5486:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; Call 44 tolower 0
x5489:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 127 21
x5494:	mov [bp + 46], bp	; 3: -119 110 46
x5497:	add bp, 44	; 3: -125 -59 44
x5500:	jmp tolower	; 3: -23 -40 11

printArgument$237:	; PostCall 44

printArgument$238:	; GetReturnValue £temporary2109

printArgument$239:	; NotEqual 257 £temporary2109 101
x5503:	cmp bx, 101	; 3: -125 -5 101
x5506:	jne printArgument$257	; 2: 117 81

printArgument$240:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$241:	; PushFloat longDoubleValue
x5508:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; Parameter 44 longDoubleValue 6
x5511:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; Parameter 44 plus 14
x5514:	mov ax, [bp + 10]	; 3: -117 70 10
x5517:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; Parameter 44 space 16
x5520:	mov ax, [bp + 12]	; 3: -117 70 12
x5523:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; Parameter 44 grid 18
x5526:	mov ax, [bp + 14]	; 3: -117 70 14
x5529:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; Parameter 44 precision 20
x5532:	mov ax, [bp + 18]	; 3: -117 70 18
x5535:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$248:	; IntegralToIntegral £temporary2111 c
x5538:	mov al, [bp + 30]	; 3: -118 70 30
x5541:	and ax, 255	; 3: 37 -1 0
x5544:	cmp al, 0	; 2: 60 0
x5546:	jge printArgument$249	; 2: 125 4
x5548:	neg al	; 2: -10 -40
x5550:	neg ax	; 2: -9 -40

printArgument$249:	; Parameter 44 £temporary2111 28
x5552:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; Call 44 isupper 22
x5555:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 -63 21
x5560:	mov [bp + 68], bp	; 3: -119 110 68
x5563:	add bp, 66	; 3: -125 -59 66
x5566:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; PostCall 44

printArgument$252:	; GetReturnValue £temporary2112

printArgument$253:	; Parameter 44 £temporary2112 22
x5569:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; Call 44 printLongDoubleExpo 0
x5572:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 -46 21
x5577:	mov [bp + 46], bp	; 3: -119 110 46
x5580:	add bp, 44	; 3: -125 -59 44
x5583:	jmp printLongDoubleExpo	; 3: -23 38 12

printArgument$255:	; PostCall 44

printArgument$256:	; Goto 359
x5586:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$258:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$259:	; PushFloat longDoubleValue
x5589:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; Parameter 44 longDoubleValue 6
x5592:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; Call 44 fabs 0
x5595:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 -23 21
x5600:	mov [bp + 46], bp	; 3: -119 110 46
x5603:	add bp, 44	; 3: -125 -59 44
x5606:	jmp fabs	; 3: -23 76 11

printArgument$262:	; PostCall 44

printArgument$263:	; GetReturnValue £temporary2114

printArgument$264:	; Parameter 44 £temporary2114 6
x5609:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; Call 44 log10 0
x5612:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 -6 21
x5617:	mov [bp + 46], bp	; 3: -119 110 46
x5620:	add bp, 44	; 3: -125 -59 44
x5623:	jmp log10	; 3: -23 101 13

printArgument$266:	; PostCall 44

printArgument$267:	; GetReturnValue £temporary2115

printArgument$268:	; FloatingToIntegral £temporary2116 £temporary2115
x5626:	fistp word [container2bytes#]	; 4: -33 30 -112 23
x5630:	mov ax, [container2bytes#]	; 3: -95 -112 23

printArgument$269:	; Assign expo £temporary2116
x5633:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; SignedLessThan 282 expo -3
x5636:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x5640:	jl printArgument$282	; 2: 124 53

printArgument$271:	; SignedGreaterThan 282 expo 2
x5642:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x5646:	jg printArgument$282	; 2: 127 47

printArgument$272:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$273:	; PushFloat longDoubleValue
x5648:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; Parameter 46 longDoubleValue 6
x5651:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; Parameter 46 plus 14
x5654:	mov ax, [bp + 10]	; 3: -117 70 10
x5657:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; Parameter 46 space 16
x5660:	mov ax, [bp + 12]	; 3: -117 70 12
x5663:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; Parameter 46 grid 18
x5666:	mov ax, [bp + 14]	; 3: -117 70 14
x5669:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; Parameter 46 precision 20
x5672:	mov ax, [bp + 18]	; 3: -117 70 18
x5675:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; Call 46 printLongDoublePlain 0
x5678:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 60 22
x5683:	mov [bp + 48], bp	; 3: -119 110 48
x5686:	add bp, 46	; 3: -125 -59 46
x5689:	jmp printLongDoublePlain	; 3: -23 -75 9

printArgument$280:	; PostCall 46

printArgument$281:	; Goto 359
x5692:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$283:	; PushFloat longDoubleValue
x5695:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; Parameter 46 longDoubleValue 6
x5698:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; Parameter 46 plus 14
x5701:	mov ax, [bp + 10]	; 3: -117 70 10
x5704:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; Parameter 46 space 16
x5707:	mov ax, [bp + 12]	; 3: -117 70 12
x5710:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; Parameter 46 grid 18
x5713:	mov ax, [bp + 14]	; 3: -117 70 14
x5716:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; Parameter 46 precision 20
x5719:	mov ax, [bp + 18]	; 3: -117 70 18
x5722:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$290:	; IntegralToIntegral £temporary2121 c
x5725:	mov al, [bp + 30]	; 3: -118 70 30
x5728:	and ax, 255	; 3: 37 -1 0
x5731:	cmp al, 0	; 2: 60 0
x5733:	jge printArgument$291	; 2: 125 4
x5735:	neg al	; 2: -10 -40
x5737:	neg ax	; 2: -9 -40

printArgument$291:	; Parameter 46 £temporary2121 28
x5739:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; Call 46 isupper 22
x5742:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 124 22
x5747:	mov [bp + 70], bp	; 3: -119 110 70
x5750:	add bp, 68	; 3: -125 -59 68
x5753:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; PostCall 46

printArgument$294:	; GetReturnValue £temporary2122

printArgument$295:	; Parameter 46 £temporary2122 22
x5756:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; Call 46 printLongDoubleExpo 0
x5759:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 -115 22
x5764:	mov [bp + 48], bp	; 3: -119 110 48
x5767:	add bp, 46	; 3: -125 -59 46
x5770:	jmp printLongDoubleExpo	; 3: -23 107 11

printArgument$297:	; PostCall 46

printArgument$298:	; Goto 359
x5773:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; BinaryAdd arg_list arg_list 2
x5776:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; BinarySubtract £temporary2125 arg_list 2
x5780:	mov si, [bp + 8]	; 3: -117 118 8
x5783:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; IntegralToIntegral £temporary2126 £temporary2125

printArgument$302:	; Deref £temporary2127 -> £temporary2126 £temporary2126 0

printArgument$303:	; Assign ptrValue £temporary2127 -> £temporary2126
x5786:	mov ax, [si]	; 2: -117 4
x5788:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$305:	; Parameter 44 arg_list 6
x5791:	mov ax, [bp + 8]	; 3: -117 70 8
x5794:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; Parameter 44 widthPtr 8
x5797:	mov ax, [bp + 16]	; 3: -117 70 16
x5800:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; address £temporary2128 precision
x5803:	mov si, bp	; 2: -119 -18
x5805:	add si, 18	; 3: -125 -58 18

printArgument$308:	; Parameter 44 £temporary2128 10
x5808:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; Call 44 checkWidthAndPrecision 0
x5811:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 -63 22
x5816:	mov [bp + 46], bp	; 3: -119 110 46
x5819:	add bp, 44	; 3: -125 -59 44
x5822:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; PostCall 44

printArgument$311:	; GetReturnValue £temporary2129

printArgument$312:	; Assign arg_list £temporary2129
x5825:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$314:	; IntegralToIntegral £temporary2130 ptrValue
x5828:	mov ax, [bp + 42]	; 3: -117 70 42
x5831:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; Parameter 44 £temporary2130 6
x5837:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; Parameter 44 0 10
x5841:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; Parameter 44 0 12
x5846:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; Parameter 44 0 14
x5851:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; Parameter 44 10 16
x5856:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; Parameter 44 0 20
x5864:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; Call 44 printUnsignedLong 0
x5869:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 -5 22
x5874:	mov [bp + 46], bp	; 3: -119 110 46
x5877:	add bp, 44	; 3: -125 -59 44
x5880:	jmp printUnsignedLong	; 3: -23 75 7

printArgument$322:	; PostCall 44

printArgument$323:	; Goto 359
x5883:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; BinaryAdd arg_list arg_list 2
x5886:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; BinarySubtract £temporary2133 arg_list 2
x5890:	mov si, [bp + 8]	; 3: -117 118 8
x5893:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; IntegralToIntegral £temporary2134 £temporary2133

printArgument$327:	; Deref £temporary2135 -> £temporary2134 £temporary2134 0

printArgument$328:	; Assign ptrValue £temporary2135 -> £temporary2134
x5896:	mov ax, [si]	; 2: -117 4
x5898:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; BinaryAdd arg_list arg_list 2
x5901:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; BinarySubtract £temporary2137 arg_list 2
x5905:	mov si, [bp + 8]	; 3: -117 118 8
x5908:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; IntegralToIntegral £temporary2138 £temporary2137

printArgument$332:	; Deref £temporary2139 -> £temporary2138 £temporary2138 0

printArgument$333:	; Assign intPtr £temporary2139 -> £temporary2138
x5911:	mov ax, [si]	; 2: -117 4
x5913:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$335:	; Parameter 44 arg_list 6
x5916:	mov ax, [bp + 8]	; 3: -117 70 8
x5919:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; Parameter 44 widthPtr 8
x5922:	mov ax, [bp + 16]	; 3: -117 70 16
x5925:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; address £temporary2140 precision
x5928:	mov si, bp	; 2: -119 -18
x5930:	add si, 18	; 3: -125 -58 18

printArgument$338:	; Parameter 44 £temporary2140 10
x5933:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; Call 44 checkWidthAndPrecision 0
x5936:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 62 23
x5941:	mov [bp + 46], bp	; 3: -119 110 46
x5944:	add bp, 44	; 3: -125 -59 44
x5947:	nop	; 1: -112
x5948:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; PostCall 44

printArgument$341:	; GetReturnValue £temporary2141

printArgument$342:	; Assign arg_list £temporary2141
x5950:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; Deref £temporary2142 -> intPtr intPtr 0
x5953:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; Assign £temporary2142 -> intPtr g_outChars
x5956:	mov ax, [g_outChars]	; 3: -95 122 17
x5959:	mov [si], ax	; 2: -119 4

printArgument$345:	; Goto 359
x5961:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$347:	; Parameter 44 arg_list 6
x5963:	mov ax, [bp + 8]	; 3: -117 70 8
x5966:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; Parameter 44 widthPtr 8
x5969:	mov ax, [bp + 16]	; 3: -117 70 16
x5972:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; address £temporary2143 precision
x5975:	mov si, bp	; 2: -119 -18
x5977:	add si, 18	; 3: -125 -58 18

printArgument$350:	; Parameter 44 £temporary2143 10
x5980:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; Call 44 checkWidthAndPrecision 0
x5983:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 109 23
x5988:	mov [bp + 46], bp	; 3: -119 110 46
x5991:	add bp, 44	; 3: -125 -59 44
x5994:	nop	; 1: -112
x5995:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; PostCall 44

printArgument$353:	; GetReturnValue £temporary2144

printArgument$354:	; Assign arg_list £temporary2144
x5997:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$356:	; Parameter 44 37 6
x6000:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; Call 44 printChar 0
x6004:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 -126 23
x6009:	mov [bp + 46], bp	; 3: -119 110 46
x6012:	add bp, 44	; 3: -125 -59 44
x6015:	jmp printChar	; 3: -23 15 1

printArgument$358:	; PostCall 44

printArgument$359:	; SetReturnValue arg_list
x6018:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; Return arg_list
x6021:	mov ax, [bp]	; 3: -117 70 0
x6024:	mov di, [bp + 4]	; 3: -117 126 4
x6027:	mov bp, [bp + 2]	; 3: -117 110 2
x6030:	jmp ax	; 2: -1 -32

printArgument$361:	; FunctionEnd printArgument

container2bytes#:
x6032:	db 0, 0	; 2: 0 0

labs:	; SignedGreaterThanEqual 4 value 0
x6034:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6039:	jge labs$4	; 2: 125 9

labs$1:	; UnarySubtract £temporary3392 value
x6041:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x6045:	neg ebx	; 3: 102 -9 -37

labs$2:	; Assign £temporary3396 £temporary3392

labs$3:	; Goto 5
x6048:	jmp labs$5	; 2: -21 4

labs$4:	; Assign £temporary3396 value
x6050:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; SetReturnValue £temporary3396

labs$6:	; Return £temporary3396
x6054:	mov ax, [bp]	; 3: -117 70 0
x6057:	mov di, [bp + 4]	; 3: -117 126 4
x6060:	mov bp, [bp + 2]	; 3: -117 110 2
x6063:	jmp ax	; 2: -1 -32

labs$7:	; FunctionEnd labs

checkWidthAndPrecision:	; Equal 9 widthPtr 0
x6065:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6069:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; Deref £temporary1989 -> widthPtr widthPtr 0
x6071:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; NotEqual 9 £temporary1989 -> widthPtr -1
x6074:	cmp word [si], -1	; 3: -125 60 -1
x6077:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; Deref £temporary1992 -> widthPtr widthPtr 0
x6079:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; BinaryAdd arg_list arg_list 2
x6082:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; BinarySubtract £temporary1994 arg_list 2
x6086:	mov di, [bp + 6]	; 3: -117 126 6
x6089:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; IntegralToIntegral £temporary1995 £temporary1994

checkWidthAndPrecision$7:	; Deref £temporary1996 -> £temporary1995 £temporary1995 0

checkWidthAndPrecision$8:	; Assign £temporary1992 -> widthPtr £temporary1996 -> £temporary1995
x6092:	mov ax, [di]	; 2: -117 5
x6094:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; Equal 18 precisionPtr 0
x6096:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6100:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; Deref £temporary1998 -> precisionPtr precisionPtr 0
x6102:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; NotEqual 18 £temporary1998 -> precisionPtr -1
x6105:	cmp word [si], -1	; 3: -125 60 -1
x6108:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; Deref £temporary2001 -> precisionPtr precisionPtr 0
x6110:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; BinaryAdd arg_list arg_list 2
x6113:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; BinarySubtract £temporary2003 arg_list 2
x6117:	mov di, [bp + 6]	; 3: -117 126 6
x6120:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; IntegralToIntegral £temporary2004 £temporary2003

checkWidthAndPrecision$16:	; Deref £temporary2005 -> £temporary2004 £temporary2004 0

checkWidthAndPrecision$17:	; Assign £temporary2001 -> precisionPtr £temporary2005 -> £temporary2004
x6123:	mov ax, [di]	; 2: -117 5
x6125:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; SetReturnValue arg_list
x6127:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; Return arg_list
x6130:	mov ax, [bp]	; 3: -117 70 0
x6133:	mov di, [bp + 4]	; 3: -117 126 4
x6136:	mov bp, [bp + 2]	; 3: -117 110 2
x6139:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; FunctionEnd checkWidthAndPrecision

printLongInt:	; SignedGreaterThanEqual 8 longValue 0
x6141:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6146:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; UnarySubtract £temporary1844 longValue
x6148:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6152:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; Assign longValue £temporary1844
x6155:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$4:	; Parameter 14 45 6
x6159:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; Call 14 printChar 0
x6163:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 33 24
x6168:	mov [bp + 16], bp	; 3: -119 110 16
x6171:	add bp, 14	; 3: -125 -59 14
x6174:	nop	; 1: -112
x6175:	jmp printChar	; 2: -21 112

printLongInt$6:	; PostCall 14

printLongInt$7:	; Goto 19
x6177:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; Equal 14 space 0
x6179:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x6183:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$10:	; Parameter 14 32 6
x6185:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; Call 14 printChar 0
x6189:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 59 24
x6194:	mov [bp + 16], bp	; 3: -119 110 16
x6197:	add bp, 14	; 3: -125 -59 14
x6200:	nop	; 1: -112
x6201:	jmp printChar	; 2: -21 86

printLongInt$12:	; PostCall 14

printLongInt$13:	; Goto 19
x6203:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; Equal 19 plus 0
x6205:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6209:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$16:	; Parameter 14 43 6
x6211:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; Call 14 printChar 0
x6215:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 85 24
x6220:	mov [bp + 16], bp	; 3: -119 110 16
x6223:	add bp, 14	; 3: -125 -59 14
x6226:	nop	; 1: -112
x6227:	jmp printChar	; 2: -21 60

printLongInt$18:	; PostCall 14

printLongInt$19:	; NotEqual 25 longValue 0
x6229:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6234:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$21:	; Parameter 14 48 6
x6236:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; Call 14 printChar 0
x6240:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 110 24
x6245:	mov [bp + 16], bp	; 3: -119 110 16
x6248:	add bp, 14	; 3: -125 -59 14
x6251:	nop	; 1: -112
x6252:	jmp printChar	; 2: -21 35

printLongInt$23:	; PostCall 14

printLongInt$24:	; Goto 29
x6254:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$26:	; Parameter 14 longValue 6
x6256:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6260:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; Call 14 printLongIntRec 0
x6264:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 -122 24
x6269:	mov [bp + 16], bp	; 3: -119 110 16
x6272:	add bp, 14	; 3: -125 -59 14
x6275:	nop	; 1: -112
x6276:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; PostCall 14

printLongInt$29:	; Return 0
x6278:	mov ax, [bp]	; 3: -117 70 0
x6281:	mov di, [bp + 4]	; 3: -117 126 4
x6284:	mov bp, [bp + 2]	; 3: -117 110 2
x6287:	jmp ax	; 2: -1 -32

printLongInt$30:	; FunctionEnd printLongInt

printChar:	; Case 5 g_outStatus 0
x6289:	mov ax, [g_outStatus]	; 3: -95 28 12
x6292:	cmp ax, 0	; 3: -125 -8 0
x6295:	je printChar$5	; 2: 116 12

printChar$1:	; Case 16 g_outStatus 1
x6297:	cmp ax, 1	; 3: -125 -8 1
x6300:	je printChar$16	; 2: 116 37

printChar$2:	; Case 24 g_outStatus 2
x6302:	cmp ax, 2	; 3: -125 -8 2
x6305:	je printChar$24	; 2: 116 57

printChar$3:	; CaseEnd g_outStatus

printChar$4:	; Goto 25
x6307:	jmp printChar$25	; 2: -21 59

printChar$5:	; IntegralToIntegral £temporary1786 g_outDevice
x6309:	mov ax, [g_outDevice]	; 3: -95 30 12

printChar$6:	; Assign stream £temporary1786
x6312:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; AssignRegister ah 64
x6315:	mov ah, 64	; 2: -76 64

printChar$8:	; Deref £temporary1789 -> stream stream 2
x6317:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; AssignRegister bx £temporary1789 -> stream
x6320:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; AssignRegister cx 1
x6323:	mov cx, 1	; 3: -71 1 0

printChar$11:	; address £temporary1792 c
x6326:	mov dx, bp	; 2: -119 -22
x6328:	add dx, 6	; 3: -125 -62 6

printChar$12:	; AssignRegister dx £temporary1792

printChar$13:	; Interrupt 33
x6331:	int 33	; 2: -51 33

printChar$14:	; Increment g_outChars
x6333:	inc word [g_outChars]	; 4: -1 6 122 17

printChar$15:	; Goto 25
x6337:	jmp printChar$25	; 2: -21 29

printChar$16:	; IntegralToIntegral £temporary1794 g_outDevice
x6339:	mov ax, [g_outDevice]	; 3: -95 30 12

printChar$17:	; Assign outString £temporary1794
x6342:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; Assign £temporary1795 g_outChars
x6345:	mov ax, [g_outChars]	; 3: -95 122 17

printChar$19:	; Increment g_outChars
x6348:	inc word [g_outChars]	; 4: -1 6 122 17

printChar$20:	; BinaryAdd £temporary1797 outString £temporary1795
x6352:	mov si, [bp + 9]	; 3: -117 118 9
x6355:	add si, ax	; 2: 1 -58

printChar$21:	; Deref £temporary1796 -> £temporary1797 £temporary1797 0

printChar$22:	; Assign £temporary1796 -> £temporary1797 c
x6357:	mov al, [bp + 6]	; 3: -118 70 6
x6360:	mov [si], al	; 2: -120 4

printChar$23:	; Goto 25
x6362:	jmp printChar$25	; 2: -21 4

printChar$24:	; Increment g_outChars
x6364:	inc word [g_outChars]	; 4: -1 6 122 17

printChar$25:	; Return 0
x6368:	mov ax, [bp]	; 3: -117 70 0
x6371:	mov di, [bp + 4]	; 3: -117 126 4
x6374:	mov bp, [bp + 2]	; 3: -117 110 2
x6377:	jmp ax	; 2: -1 -32

printChar$26:	; FunctionEnd printChar

printLongIntRec:	; Equal 15 longValue 0
x6379:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6384:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; SignedModulo £temporary1834 longValue 10
x6386:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6390:	xor edx, edx	; 3: 102 49 -46
x6393:	idiv dword [int4$10#]	; 5: 102 -9 62 85 25

printLongIntRec$2:	; IntegralToIntegral £temporary1835 £temporary1834
x6398:	cmp edx, 0	; 4: 102 -125 -6 0
x6402:	jge printLongIntRec$3	; 2: 125 5
x6404:	neg edx	; 3: 102 -9 -38
x6407:	neg dx	; 2: -9 -38

printLongIntRec$3:	; Assign digit £temporary1835
x6409:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongIntRec$5:	; SignedDivide £temporary1836 longValue 10
x6412:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6416:	xor edx, edx	; 3: 102 49 -46
x6419:	idiv dword [int4$10#]	; 5: 102 -9 62 85 25

printLongIntRec$6:	; Parameter 12 £temporary1836 6
x6424:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; Call 12 printLongIntRec 0
x6428:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 42 25
x6433:	mov [bp + 14], bp	; 3: -119 110 14
x6436:	add bp, 12	; 3: -125 -59 12
x6439:	nop	; 1: -112
x6440:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; PostCall 12

printLongIntRec$9:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongIntRec$10:	; BinaryAdd £temporary1838 digit 48
x6442:	mov ax, [bp + 10]	; 3: -117 70 10
x6445:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; IntegralToIntegral £temporary1839 £temporary1838
x6448:	cmp ax, 0	; 3: -125 -8 0
x6451:	jge printLongIntRec$12	; 2: 125 4
x6453:	neg ax	; 2: -9 -40
x6455:	neg al	; 2: -10 -40

printLongIntRec$12:	; Parameter 12 £temporary1839 6
x6457:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; Call 12 printChar 0
x6460:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 74 25
x6465:	mov [bp + 14], bp	; 3: -119 110 14
x6468:	add bp, 12	; 3: -125 -59 12
x6471:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; PostCall 12

printLongIntRec$15:	; Return 0
x6474:	mov ax, [bp]	; 3: -117 70 0
x6477:	mov di, [bp + 4]	; 3: -117 126 4
x6480:	mov bp, [bp + 2]	; 3: -117 110 2
x6483:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; FunctionEnd printLongIntRec

int4$10#:
x6485:	dd 10	; 4: 10 0 0 0

printString:	; Equal 29 s 0
x6489:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x6493:	je printString$29	; 2: 116 115

printString$1:	; NotEqual 14 precision 0
x6495:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6499:	jne printString$14	; 2: 117 48

printString$2:	; Assign index 0
x6501:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; BinaryAdd £temporary1803 s index
x6506:	mov si, [bp + 6]	; 3: -117 118 6
x6509:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; Deref £temporary1802 -> £temporary1803 £temporary1803 0

printString$5:	; Equal 53 £temporary1802 -> £temporary1803 0
x6512:	cmp byte [si], 0	; 3: -128 60 0
x6515:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$7:	; BinaryAdd £temporary1807 s index
x6519:	mov si, [bp + 6]	; 3: -117 118 6
x6522:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; Deref £temporary1806 -> £temporary1807 £temporary1807 0

printString$9:	; Parameter 12 £temporary1806 -> £temporary1807 6
x6525:	mov al, [si]	; 2: -118 4
x6527:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; Call 12 printChar 0
x6530:	mov word [bp + 12], printString$11	; 5: -57 70 12 -112 25
x6535:	mov [bp + 14], bp	; 3: -119 110 14
x6538:	add bp, 12	; 3: -125 -59 12
x6541:	jmp printChar	; 3: -23 1 -1

printString$11:	; PostCall 12

printString$12:	; Increment index
x6544:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; Goto 3
x6547:	jmp printString$3	; 2: -21 -43

printString$14:	; Assign index 0
x6549:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; Assign £temporary1809 precision
x6554:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; Decrement precision
x6557:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; SignedLessThanEqual 53 £temporary1809 0
x6560:	cmp ax, 0	; 3: -125 -8 0
x6563:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; BinaryAdd £temporary1812 s index
x6567:	mov si, [bp + 6]	; 3: -117 118 6
x6570:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; Deref £temporary1811 -> £temporary1812 £temporary1812 0

printString$20:	; Equal 53 £temporary1811 -> £temporary1812 0
x6573:	cmp byte [si], 0	; 3: -128 60 0
x6576:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$22:	; BinaryAdd £temporary1817 s index
x6580:	mov si, [bp + 6]	; 3: -117 118 6
x6583:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; Deref £temporary1816 -> £temporary1817 £temporary1817 0

printString$24:	; Parameter 12 £temporary1816 -> £temporary1817 6
x6586:	mov al, [si]	; 2: -118 4
x6588:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; Call 12 printChar 0
x6591:	mov word [bp + 12], printString$26	; 5: -57 70 12 -51 25
x6596:	mov [bp + 14], bp	; 3: -119 110 14
x6599:	add bp, 12	; 3: -125 -59 12
x6602:	jmp printChar	; 3: -23 -60 -2

printString$26:	; PostCall 12

printString$27:	; Increment index
x6605:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; Goto 15
x6608:	jmp printString$15	; 2: -21 -56

printString$29:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$30:	; Parameter 10 60 6
x6610:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; Call 10 printChar 0
x6614:	mov word [bp + 10], printString$32	; 5: -57 70 10 -28 25
x6619:	mov [bp + 12], bp	; 3: -119 110 12
x6622:	add bp, 10	; 3: -125 -59 10
x6625:	jmp printChar	; 3: -23 -83 -2

printString$32:	; PostCall 10

printString$33:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$34:	; Parameter 10 78 6
x6628:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; Call 10 printChar 0
x6632:	mov word [bp + 10], printString$36	; 5: -57 70 10 -10 25
x6637:	mov [bp + 12], bp	; 3: -119 110 12
x6640:	add bp, 10	; 3: -125 -59 10
x6643:	jmp printChar	; 3: -23 -101 -2

printString$36:	; PostCall 10

printString$37:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$38:	; Parameter 10 85 6
x6646:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; Call 10 printChar 0
x6650:	mov word [bp + 10], printString$40	; 5: -57 70 10 8 26
x6655:	mov [bp + 12], bp	; 3: -119 110 12
x6658:	add bp, 10	; 3: -125 -59 10
x6661:	jmp printChar	; 3: -23 -119 -2

printString$40:	; PostCall 10

printString$41:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$42:	; Parameter 10 76 6
x6664:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; Call 10 printChar 0
x6668:	mov word [bp + 10], printString$44	; 5: -57 70 10 26 26
x6673:	mov [bp + 12], bp	; 3: -119 110 12
x6676:	add bp, 10	; 3: -125 -59 10
x6679:	jmp printChar	; 3: -23 119 -2

printString$44:	; PostCall 10

printString$45:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$46:	; Parameter 10 76 6
x6682:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; Call 10 printChar 0
x6686:	mov word [bp + 10], printString$48	; 5: -57 70 10 44 26
x6691:	mov [bp + 12], bp	; 3: -119 110 12
x6694:	add bp, 10	; 3: -125 -59 10
x6697:	jmp printChar	; 3: -23 101 -2

printString$48:	; PostCall 10

printString$49:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$50:	; Parameter 10 62 6
x6700:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; Call 10 printChar 0
x6704:	mov word [bp + 10], printString$52	; 5: -57 70 10 62 26
x6709:	mov [bp + 12], bp	; 3: -119 110 12
x6712:	add bp, 10	; 3: -125 -59 10
x6715:	jmp printChar	; 3: -23 83 -2

printString$52:	; PostCall 10

printString$53:	; Return 0
x6718:	mov ax, [bp]	; 3: -117 70 0
x6721:	mov di, [bp + 4]	; 3: -117 126 4
x6724:	mov bp, [bp + 2]	; 3: -117 110 2
x6727:	jmp ax	; 2: -1 -32

printString$54:	; FunctionEnd printString

isupper:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

isupper$1:	; Call 8 localeconv 0
x6729:	mov word [bp + 8], isupper$2	; 5: -57 70 8 87 26
x6734:	mov [bp + 10], bp	; 3: -119 110 10
x6737:	add bp, 8	; 3: -125 -59 8
x6740:	nop	; 1: -112
x6741:	jmp localeconv	; 2: -21 93

isupper$2:	; PostCall 8

isupper$3:	; GetReturnValue £temporary383

isupper$4:	; Assign localeConvPtr £temporary383
x6743:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; Equal 19 localeConvPtr 0
x6746:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6750:	je isupper$19	; 2: 116 53

isupper$6:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

isupper$7:	; Deref £temporary385 -> localeConvPtr localeConvPtr 14
x6752:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; Parameter 10 £temporary385 -> localeConvPtr 6
x6755:	mov ax, [si + 14]	; 3: -117 68 14
x6758:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; Parameter 10 c 8
x6761:	mov ax, [bp + 6]	; 3: -117 70 6
x6764:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; Call 10 strchr 0
x6767:	mov word [bp + 10], isupper$11	; 5: -57 70 10 125 26
x6772:	mov [bp + 12], bp	; 3: -119 110 12
x6775:	add bp, 10	; 3: -125 -59 10
x6778:	jmp strchr	; 3: -23 121 3

isupper$11:	; PostCall 10

isupper$12:	; GetReturnValue £temporary386

isupper$13:	; Equal 16 £temporary386 0
x6781:	cmp bx, 0	; 3: -125 -5 0
x6784:	je isupper$16	; 2: 116 5

isupper$14:	; Assign £temporary388 1
x6786:	mov bx, 1	; 3: -69 1 0

isupper$15:	; Goto 17
x6789:	jmp isupper$17	; 2: -21 3

isupper$16:	; Assign £temporary388 0
x6791:	mov bx, 0	; 3: -69 0 0

isupper$17:	; SetReturnValue £temporary388

isupper$18:	; Return £temporary388
x6794:	mov ax, [bp]	; 3: -117 70 0
x6797:	mov di, [bp + 4]	; 3: -117 126 4
x6800:	mov bp, [bp + 2]	; 3: -117 110 2
x6803:	jmp ax	; 2: -1 -32

isupper$19:	; SignedLessThan 23 c 65
x6805:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x6809:	jl isupper$23	; 2: 124 11

isupper$20:	; SignedGreaterThan 23 c 90
x6811:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x6815:	jg isupper$23	; 2: 127 5

isupper$21:	; Assign £temporary392 1
x6817:	mov bx, 1	; 3: -69 1 0

isupper$22:	; Goto 24
x6820:	jmp isupper$24	; 2: -21 3

isupper$23:	; Assign £temporary392 0
x6822:	mov bx, 0	; 3: -69 0 0

isupper$24:	; SetReturnValue £temporary392

isupper$25:	; Return £temporary392
x6825:	mov ax, [bp]	; 3: -117 70 0
x6828:	mov di, [bp + 4]	; 3: -117 126 4
x6831:	mov bp, [bp + 2]	; 3: -117 110 2
x6834:	jmp ax	; 2: -1 -32

isupper$26:	; FunctionEnd isupper

localeconv:	; Equal 4 g_currStructPtr 0
x6836:	cmp word [@638$g_currStructPtr], 0	; 5: -125 62 -46 26 0
x6841:	je localeconv$4	; 2: 116 9

localeconv$1:	; Deref £temporary516 -> g_currStructPtr g_currStructPtr 2
x6843:	mov si, [@638$g_currStructPtr]	; 4: -117 54 -46 26

localeconv$2:	; Assign £temporary520 £temporary516 -> g_currStructPtr
x6847:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; Goto 5
x6850:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; Assign £temporary520 0
x6852:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; SetReturnValue £temporary520

localeconv$6:	; Return £temporary520
x6855:	mov ax, [bp]	; 3: -117 70 0
x6858:	mov di, [bp + 4]	; 3: -117 126 4
x6861:	mov bp, [bp + 2]	; 3: -117 110 2
x6864:	jmp ax	; 2: -1 -32

localeconv$7:	; FunctionEnd localeconv

@638$g_currStructPtr:
x6866:	dw @636$sArray	; 2: -44 26

@636$sArray:
x6868:	dw string_# ; 2: -32 26
x6870:	dw @633$en_US_utf8	; 2: -31 26
x6872:	dw string_C# ; 2: -15 29
x6874:	dw @633$en_US_utf8	; 2: -31 26
x6876:	dw string_US# ; 2: -13 29
x6878:	dw @633$en_US_utf8	; 2: -31 26

string_#:
x6880:	db 0	; 1: 0

@633$en_US_utf8:
x6881:	dw 1	; 2: 1 0
x6883:	dw 1	; 2: 1 0
x6885:	dw @629$enShortDayList ; 2: -13 26
x6887:	dw @630$enLongDayList ; 2: 29 27
x6889:	dw @631$enShortMonthList ; 2: 100 27
x6891:	dw @632$enLongMonthList ; 2: -84 27
x6893:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: 22 28
x6895:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: 49 28
x6897:	dw enMessageList ; 2: 76 28

@629$enShortDayList:
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

@630$enLongDayList:
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

@631$enShortMonthList:
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

@632$enLongMonthList:
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

strchr:	; IntegralToIntegral £temporary4006 i
x7670:	mov ax, [bp + 8]	; 3: -117 70 8
x7673:	cmp ax, 0	; 3: -125 -8 0
x7676:	jge strchr$1	; 2: 125 4
x7678:	neg ax	; 2: -9 -40
x7680:	neg al	; 2: -10 -40

strchr$1:	; Assign c £temporary4006
x7682:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; Assign index 0
x7685:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; BinaryAdd £temporary4008 text index
x7690:	mov si, [bp + 6]	; 3: -117 118 6
x7693:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; Deref £temporary4007 -> £temporary4008 £temporary4008 0

strchr$5:	; Equal 16 £temporary4007 -> £temporary4008 0
x7696:	cmp byte [si], 0	; 3: -128 60 0
x7699:	je strchr$16	; 2: 116 35

strchr$6:	; BinaryAdd £temporary4012 text index
x7701:	mov si, [bp + 6]	; 3: -117 118 6
x7704:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; Deref £temporary4011 -> £temporary4012 £temporary4012 0

strchr$8:	; NotEqual 14 £temporary4011 -> £temporary4012 c
x7707:	mov al, [bp + 12]	; 3: -118 70 12
x7710:	cmp [si], al	; 2: 56 4
x7712:	jne strchr$14	; 2: 117 17

strchr$9:	; BinaryAdd £temporary4015 text index
x7714:	mov bx, [bp + 6]	; 3: -117 94 6
x7717:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; Deref £temporary4014 -> £temporary4015 £temporary4015 0

strchr$11:	; address £temporary4016 £temporary4014 -> £temporary4015

strchr$12:	; SetReturnValue £temporary4016

strchr$13:	; Return £temporary4016
x7720:	mov ax, [bp]	; 3: -117 70 0
x7723:	mov di, [bp + 4]	; 3: -117 126 4
x7726:	mov bp, [bp + 2]	; 3: -117 110 2
x7729:	jmp ax	; 2: -1 -32

strchr$14:	; Increment index
x7731:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; Goto 3
x7734:	jmp strchr$3	; 2: -21 -46

strchr$16:	; SetReturnValue 0
x7736:	mov bx, 0	; 3: -69 0 0

strchr$17:	; Return 0
x7739:	mov ax, [bp]	; 3: -117 70 0
x7742:	mov di, [bp + 4]	; 3: -117 126 4
x7745:	mov bp, [bp + 2]	; 3: -117 110 2
x7748:	jmp ax	; 2: -1 -32

strchr$18:	; FunctionEnd strchr

printUnsignedLong:	; Equal 5 plus 0
x7750:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x7754:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$2:	; Parameter 22 43 6
x7756:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; Call 22 printChar 0
x7760:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 94 30
x7765:	mov [bp + 24], bp	; 3: -119 110 24
x7768:	add bp, 22	; 3: -125 -59 22
x7771:	jmp printChar	; 3: -23 51 -6

printUnsignedLong$4:	; PostCall 22

printUnsignedLong$5:	; Equal 10 space 0
x7774:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x7778:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$7:	; Parameter 22 32 6
x7780:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; Call 22 printChar 0
x7784:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 118 30
x7789:	mov [bp + 24], bp	; 3: -119 110 24
x7792:	add bp, 22	; 3: -125 -59 22
x7795:	jmp printChar	; 3: -23 27 -6

printUnsignedLong$9:	; PostCall 22

printUnsignedLong$10:	; Equal 29 grid 0
x7798:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x7802:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; NotEqual 16 base 8
x7804:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x7809:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$13:	; Parameter 22 48 6
x7811:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; Call 22 printChar 0
x7815:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 -107 30
x7820:	mov [bp + 24], bp	; 3: -119 110 24
x7823:	add bp, 22	; 3: -125 -59 22
x7826:	jmp printChar	; 3: -23 -4 -7

printUnsignedLong$15:	; PostCall 22

printUnsignedLong$16:	; NotEqual 29 base 16
x7829:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x7834:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$18:	; Parameter 22 48 6
x7836:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; Call 22 printChar 0
x7840:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 -82 30
x7845:	mov [bp + 24], bp	; 3: -119 110 24
x7848:	add bp, 22	; 3: -125 -59 22
x7851:	jmp printChar	; 3: -23 -29 -7

printUnsignedLong$20:	; PostCall 22

printUnsignedLong$21:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$22:	; Equal 25 capital 0
x7854:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x7858:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; Assign £temporary1893 88
x7860:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; Goto 26
x7862:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; Assign £temporary1893 120
x7864:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; Parameter 22 £temporary1893 6
x7866:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; Call 22 printChar 0
x7869:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 -53 30
x7874:	mov [bp + 24], bp	; 3: -119 110 24
x7877:	add bp, 22	; 3: -125 -59 22
x7880:	jmp printChar	; 3: -23 -58 -7

printUnsignedLong$28:	; PostCall 22

printUnsignedLong$29:	; NotEqual 35 unsignedValue 0
x7883:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7888:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$31:	; Parameter 22 48 6
x7890:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; Call 22 printChar 0
x7894:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 -28 30
x7899:	mov [bp + 24], bp	; 3: -119 110 24
x7902:	add bp, 22	; 3: -125 -59 22
x7905:	jmp printChar	; 3: -23 -83 -7

printUnsignedLong$33:	; PostCall 22

printUnsignedLong$34:	; Goto 41
x7908:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$36:	; Parameter 22 unsignedValue 6
x7910:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7914:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; Parameter 22 base 10
x7918:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x7922:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; Parameter 22 capital 14
x7926:	mov ax, [bp + 20]	; 3: -117 70 20
x7929:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; Call 22 printUnsignedLongRec 0
x7932:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 10 31
x7937:	mov [bp + 24], bp	; 3: -119 110 24
x7940:	add bp, 22	; 3: -125 -59 22
x7943:	nop	; 1: -112
x7944:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; PostCall 22

printUnsignedLong$41:	; Return 0
x7946:	mov ax, [bp]	; 3: -117 70 0
x7949:	mov di, [bp + 4]	; 3: -117 126 4
x7952:	mov bp, [bp + 2]	; 3: -117 110 2
x7955:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; FunctionEnd printUnsignedLong

printUnsignedLongRec:	; UnsignedLessThanEqual 22 unsignedValue 0
x7957:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7962:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; UnsignedModulo £temporary1869 unsignedValue base
x7964:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7968:	xor edx, edx	; 3: 102 49 -46
x7971:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; IntegralToIntegral £temporary1870 £temporary1869

printUnsignedLongRec$3:	; Assign digit £temporary1870
x7975:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLongRec$5:	; UnsignedDivide £temporary1871 unsignedValue base
x7978:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7982:	xor edx, edx	; 3: 102 49 -46
x7985:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; Parameter 18 £temporary1871 6
x7989:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; Parameter 18 base 10
x7993:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x7997:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; Parameter 18 capital 14
x8001:	mov ax, [bp + 14]	; 3: -117 70 14
x8004:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; Call 18 printUnsignedLongRec 0
x8007:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 85 31
x8012:	mov [bp + 20], bp	; 3: -119 110 20
x8015:	add bp, 18	; 3: -125 -59 18
x8018:	nop	; 1: -112
x8019:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; PostCall 18

printUnsignedLongRec$11:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLongRec$12:	; Parameter 18 digit 6
x8021:	mov ax, [bp + 16]	; 3: -117 70 16
x8024:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; Parameter 18 capital 8
x8027:	mov ax, [bp + 14]	; 3: -117 70 14
x8030:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; Call 18 digitToChar 0
x8033:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 111 31
x8038:	mov [bp + 20], bp	; 3: -119 110 20
x8041:	add bp, 18	; 3: -125 -59 18
x8044:	nop	; 1: -112
x8045:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; PostCall 18

printUnsignedLongRec$16:	; GetReturnValue £temporary1873

printUnsignedLongRec$17:	; Assign c £temporary1873
x8047:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLongRec$19:	; Parameter 19 c 6
x8050:	mov al, [bp + 18]	; 3: -118 70 18
x8053:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; Call 19 printChar 0
x8056:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 -122 31
x8061:	mov [bp + 21], bp	; 3: -119 110 21
x8064:	add bp, 19	; 3: -125 -59 19
x8067:	jmp printChar	; 3: -23 11 -7

printUnsignedLongRec$21:	; PostCall 19

printUnsignedLongRec$22:	; Return 0
x8070:	mov ax, [bp]	; 3: -117 70 0
x8073:	mov di, [bp + 4]	; 3: -117 126 4
x8076:	mov bp, [bp + 2]	; 3: -117 110 2
x8079:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; FunctionEnd printUnsignedLongRec

digitToChar:	; SignedGreaterThanEqual 5 digit 10
x8081:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x8085:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; BinaryAdd £temporary1859 digit 48
x8087:	mov bx, [bp + 6]	; 3: -117 94 6
x8090:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; IntegralToIntegral £temporary1860 £temporary1859
x8093:	cmp bx, 0	; 3: -125 -5 0
x8096:	jge digitToChar$3	; 2: 125 4
x8098:	neg bx	; 2: -9 -37
x8100:	neg bl	; 2: -10 -37

digitToChar$3:	; SetReturnValue £temporary1860

digitToChar$4:	; Return £temporary1860
x8102:	mov ax, [bp]	; 3: -117 70 0
x8105:	mov di, [bp + 4]	; 3: -117 126 4
x8108:	mov bp, [bp + 2]	; 3: -117 110 2
x8111:	jmp ax	; 2: -1 -32

digitToChar$5:	; Equal 11 capital 0
x8113:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x8117:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; BinarySubtract £temporary1861 digit 10
x8119:	mov bx, [bp + 6]	; 3: -117 94 6
x8122:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; BinaryAdd £temporary1862 £temporary1861 65
x8125:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; IntegralToIntegral £temporary1863 £temporary1862
x8128:	cmp bx, 0	; 3: -125 -5 0
x8131:	jge digitToChar$9	; 2: 125 4
x8133:	neg bx	; 2: -9 -37
x8135:	neg bl	; 2: -10 -37

digitToChar$9:	; SetReturnValue £temporary1863

digitToChar$10:	; Return £temporary1863
x8137:	mov ax, [bp]	; 3: -117 70 0
x8140:	mov di, [bp + 4]	; 3: -117 126 4
x8143:	mov bp, [bp + 2]	; 3: -117 110 2
x8146:	jmp ax	; 2: -1 -32

digitToChar$11:	; BinarySubtract £temporary1864 digit 10
x8148:	mov bx, [bp + 6]	; 3: -117 94 6
x8151:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; BinaryAdd £temporary1865 £temporary1864 97
x8154:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; IntegralToIntegral £temporary1866 £temporary1865
x8157:	cmp bx, 0	; 3: -125 -5 0
x8160:	jge digitToChar$14	; 2: 125 4
x8162:	neg bx	; 2: -9 -37
x8164:	neg bl	; 2: -10 -37

digitToChar$14:	; SetReturnValue £temporary1866

digitToChar$15:	; Return £temporary1866
x8166:	mov ax, [bp]	; 3: -117 70 0
x8169:	mov di, [bp + 4]	; 3: -117 126 4
x8172:	mov bp, [bp + 2]	; 3: -117 110 2
x8175:	jmp ax	; 2: -1 -32

digitToChar$16:	; FunctionEnd digitToChar

printLongDoublePlain:	; PushFloat longDoubleValue
x8177:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; PushFloat 0.0
x8180:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; SignedGreaterThanEqual 12 longDoubleValue 0.0
x8182:	fcompp	; 2: -34 -39
x8184:	fstsw ax	; 3: -101 -33 -32
x8187:	sahf	; 1: -98
x8188:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoublePlain$4:	; Parameter 22 45 6
x8190:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; Call 22 printChar 0
x8194:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 16 32
x8199:	mov [bp + 24], bp	; 3: -119 110 24
x8202:	add bp, 22	; 3: -125 -59 22
x8205:	jmp printChar	; 3: -23 -127 -8

printLongDoublePlain$6:	; PostCall 22

printLongDoublePlain$7:	; PushFloat longDoubleValue
x8208:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; UnarySubtract £temporary1929 longDoubleValue
x8211:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; PopFloat longDoubleValue
x8213:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; Assign plus 0
x8216:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; Assign space 0
x8221:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; PushFloat longDoubleValue
x8226:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; FloatingToIntegral £temporary1930 longDoubleValue
x8229:	fistp dword [container4bytes#]	; 4: -37 30 -119 32
x8233:	mov eax, [container4bytes#]	; 4: 102 -95 -119 32

printLongDoublePlain$14:	; Assign longValue £temporary1930
x8237:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoublePlain$16:	; Parameter 26 longValue 6
x8241:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x8245:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; Parameter 26 plus 10
x8249:	mov ax, [bp + 14]	; 3: -117 70 14
x8252:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; Parameter 26 space 12
x8255:	mov ax, [bp + 16]	; 3: -117 70 16
x8258:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; Call 26 printLongInt 0
x8261:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 83 32
x8266:	mov [bp + 28], bp	; 3: -119 110 28
x8269:	add bp, 26	; 3: -125 -59 26
x8272:	jmp printLongInt	; 3: -23 -86 -9

printLongDoublePlain$20:	; PostCall 26

printLongDoublePlain$21:	; PushFloat longDoubleValue
x8275:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; IntegralToFloating £temporary1932 longValue
x8278:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; BinarySubtract £temporary1933 longDoubleValue £temporary1932
x8281:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; PopFloat longDoubleValue
x8283:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoublePlain$26:	; PushFloat longDoubleValue
x8286:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; Parameter 26 longDoubleValue 6
x8289:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; Parameter 26 grid 14
x8292:	mov ax, [bp + 18]	; 3: -117 70 18
x8295:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; Parameter 26 precision 16
x8298:	mov ax, [bp + 20]	; 3: -117 70 20
x8301:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; Call 26 printLongDoubleFraction 0
x8304:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 126 32
x8309:	mov [bp + 28], bp	; 3: -119 110 28
x8312:	add bp, 26	; 3: -125 -59 26
x8315:	nop	; 1: -112
x8316:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; PostCall 26

printLongDoublePlain$32:	; Return 0
x8318:	mov ax, [bp]	; 3: -117 70 0
x8321:	mov di, [bp + 4]	; 3: -117 126 4
x8324:	mov bp, [bp + 2]	; 3: -117 110 2
x8327:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; FunctionEnd printLongDoublePlain

container4bytes#:
x8329:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; PushFloat longDoubleValue
x8333:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; PushFloat longDoubleValue
x8336:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; FloatingToIntegral £temporary1908 longDoubleValue
x8339:	fistp dword [container4bytes#]	; 4: -37 30 -119 32
x8343:	mov eax, [container4bytes#]	; 4: 102 -95 -119 32

printLongDoubleFraction$3:	; IntegralToFloating £temporary1909 £temporary1908
x8347:	mov [container4bytes#], eax	; 4: 102 -93 -119 32
x8351:	fild dword [container4bytes#]	; 4: -37 6 -119 32

printLongDoubleFraction$4:	; BinarySubtract £temporary1910 longDoubleValue £temporary1909
x8355:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; PopFloat longDoubleValue
x8357:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; NotEqual 8 precision 0
x8360:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x8364:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; Assign precision 6
x8366:	mov word [bp + 16], 6	; 5: -57 70 16 6 0

printLongDoubleFraction$8:	; NotEqual 10 grid 0
x8371:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x8375:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; SignedLessThanEqual 14 precision 0
x8377:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x8381:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleFraction$11:	; Parameter 18 46 6
x8383:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; Call 18 printChar 0
x8387:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 -47 32
x8392:	mov [bp + 20], bp	; 3: -119 110 20
x8395:	add bp, 18	; 3: -125 -59 18
x8398:	jmp printChar	; 3: -23 -64 -9

printLongDoubleFraction$13:	; PostCall 18

printLongDoubleFraction$14:	; Assign £temporary1916 precision
x8401:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; Decrement precision
x8404:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; SignedLessThanEqual 35 £temporary1916 0
x8407:	cmp ax, 0	; 3: -125 -8 0
x8410:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; PushFloat 10.0
x8412:	fld qword [float8$10.0#]	; 4: -35 6 45 33

printLongDoubleFraction$18:	; PushFloat longDoubleValue
x8416:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; SignedMultiply £temporary1918 10.0 longDoubleValue
x8419:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; PopFloat longDoubleValue10
x8421:	fstp qword [bp + 18]	; 3: -35 94 18

printLongDoubleFraction$21:	; PushFloat longDoubleValue10
x8424:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$22:	; FloatingToIntegral £temporary1919 longDoubleValue10
x8427:	fistp word [container2bytes#]	; 4: -33 30 -112 23
x8431:	mov ax, [container2bytes#]	; 3: -95 -112 23

printLongDoubleFraction$23:	; Assign digitValue £temporary1919
x8434:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$24:	; CallHeader 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleFraction$25:	; BinaryAdd £temporary1920 digitValue 48
x8437:	mov ax, [bp + 26]	; 3: -117 70 26
x8440:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$26:	; IntegralToIntegral £temporary1921 £temporary1920
x8443:	cmp ax, 0	; 3: -125 -8 0
x8446:	jge printLongDoubleFraction$27	; 2: 125 4
x8448:	neg ax	; 2: -9 -40
x8450:	neg al	; 2: -10 -40

printLongDoubleFraction$27:	; Parameter 28 £temporary1921 6
x8452:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$28:	; Call 28 printChar 0
x8455:	mov word [bp + 28], printLongDoubleFraction$29	; 5: -57 70 28 21 33
x8460:	mov [bp + 30], bp	; 3: -119 110 30
x8463:	add bp, 28	; 3: -125 -59 28
x8466:	jmp printChar	; 3: -23 124 -9

printLongDoubleFraction$29:	; PostCall 28

printLongDoubleFraction$30:	; PushFloat longDoubleValue10
x8469:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$31:	; IntegralToFloating £temporary1923 digitValue
x8472:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$32:	; BinarySubtract £temporary1924 longDoubleValue10 £temporary1923
x8475:	fsub	; 2: -34 -23

printLongDoubleFraction$33:	; PopFloat longDoubleValue
x8477:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$34:	; Goto 14
x8480:	jmp printLongDoubleFraction$14	; 2: -21 -81

printLongDoubleFraction$35:	; Return 0
x8482:	mov ax, [bp]	; 3: -117 70 0
x8485:	mov di, [bp + 4]	; 3: -117 126 4
x8488:	mov bp, [bp + 2]	; 3: -117 110 2
x8491:	jmp ax	; 2: -1 -32

printLongDoubleFraction$36:	; FunctionEnd printLongDoubleFraction

float8$10.0#:
x8493:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; PushFloat x
x8501:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; PushZero
x8504:	fldz	; 2: -39 -18

fabs$2:	; SignedGreaterThanEqual 7 x 0
x8506:	fcompp	; 2: -34 -39
x8508:	fstsw ax	; 3: -101 -33 -32
x8511:	sahf	; 1: -98
x8512:	jbe fabs$7	; 2: 118 7

fabs$3:	; PushFloat x
x8514:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; UnarySubtract £temporary829 x
x8517:	fchs	; 2: -39 -32

fabs$5:	; DecreaseStack

fabs$6:	; Goto 8
x8519:	jmp fabs$8	; 2: -21 3

fabs$7:	; PushFloat x
x8521:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; SetReturnValue £temporary833

fabs$9:	; Return £temporary833
x8524:	mov ax, [bp]	; 3: -117 70 0
x8527:	mov di, [bp + 4]	; 3: -117 126 4
x8530:	mov bp, [bp + 2]	; 3: -117 110 2
x8533:	jmp ax	; 2: -1 -32

fabs$10:	; FunctionEnd fabs

tolower:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

tolower$1:	; Parameter 8 c 6
x8535:	mov ax, [bp + 6]	; 3: -117 70 6
x8538:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; Call 8 isupper 0
x8541:	mov word [bp + 8], tolower$3	; 5: -57 70 8 107 33
x8546:	mov [bp + 10], bp	; 3: -119 110 10
x8549:	add bp, 8	; 3: -125 -59 8
x8552:	jmp isupper	; 3: -23 -34 -8

tolower$3:	; PostCall 8

tolower$4:	; GetReturnValue £temporary463

tolower$5:	; Equal 31 £temporary463 0
x8555:	cmp bx, 0	; 3: -125 -5 0
x8558:	je tolower$31	; 2: 116 122

tolower$6:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

tolower$7:	; Call 8 localeconv 0
x8560:	mov word [bp + 8], tolower$8	; 5: -57 70 8 126 33
x8565:	mov [bp + 10], bp	; 3: -119 110 10
x8568:	add bp, 8	; 3: -125 -59 8
x8571:	jmp localeconv	; 3: -23 54 -7

tolower$8:	; PostCall 8

tolower$9:	; GetReturnValue £temporary464

tolower$10:	; Assign localeConvPtr £temporary464
x8574:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; Equal 28 localeConvPtr 0
x8577:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x8581:	je tolower$28	; 2: 116 82

tolower$12:	; Deref £temporary466 -> localeConvPtr localeConvPtr 12
x8583:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; Assign lowerCase £temporary466 -> localeConvPtr
x8586:	mov ax, [si + 12]	; 3: -117 68 12
x8589:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; Deref £temporary467 -> localeConvPtr localeConvPtr 14
x8592:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; Assign upperCase £temporary467 -> localeConvPtr
x8595:	mov ax, [si + 14]	; 3: -117 68 14
x8598:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

tolower$17:	; Parameter 14 upperCase 6
x8601:	mov ax, [bp + 12]	; 3: -117 70 12
x8604:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; Parameter 14 c 8
x8607:	mov ax, [bp + 6]	; 3: -117 70 6
x8610:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; Call 14 strchr 0
x8613:	mov word [bp + 14], tolower$20	; 5: -57 70 14 -77 33
x8618:	mov [bp + 16], bp	; 3: -119 110 16
x8621:	add bp, 14	; 3: -125 -59 14
x8624:	jmp strchr	; 3: -23 67 -4

tolower$20:	; PostCall 14

tolower$21:	; GetReturnValue £temporary468

tolower$22:	; BinarySubtract index £temporary468 upperCase
x8627:	sub bx, [bp + 12]	; 3: 43 94 12
x8630:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; BinaryAdd £temporary471 lowerCase index
x8633:	mov si, [bp + 10]	; 3: -117 118 10
x8636:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; Deref £temporary470 -> £temporary471 £temporary471 0

tolower$25:	; IntegralToIntegral £temporary472 £temporary470 -> £temporary471
x8639:	mov bl, [si]	; 2: -118 28
x8641:	and bx, 255	; 4: -127 -29 -1 0
x8645:	cmp bl, 0	; 3: -128 -5 0
x8648:	jge tolower$26	; 2: 125 4
x8650:	neg bl	; 2: -10 -37
x8652:	neg bx	; 2: -9 -37

tolower$26:	; SetReturnValue £temporary472

tolower$27:	; Return £temporary472
x8654:	mov ax, [bp]	; 3: -117 70 0
x8657:	mov di, [bp + 4]	; 3: -117 126 4
x8660:	mov bp, [bp + 2]	; 3: -117 110 2
x8663:	jmp ax	; 2: -1 -32

tolower$28:	; BinaryAdd £temporary473 c 32
x8665:	mov bx, [bp + 6]	; 3: -117 94 6
x8668:	add bx, 32	; 3: -125 -61 32

tolower$29:	; SetReturnValue £temporary473

tolower$30:	; Return £temporary473
x8671:	mov ax, [bp]	; 3: -117 70 0
x8674:	mov di, [bp + 4]	; 3: -117 126 4
x8677:	mov bp, [bp + 2]	; 3: -117 110 2
x8680:	jmp ax	; 2: -1 -32

tolower$31:	; SetReturnValue c
x8682:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; Return c
x8685:	mov ax, [bp]	; 3: -117 70 0
x8688:	mov di, [bp + 4]	; 3: -117 126 4
x8691:	mov bp, [bp + 2]	; 3: -117 110 2
x8694:	jmp ax	; 2: -1 -32

tolower$33:	; FunctionEnd tolower

printLongDoubleExpo:	; PushFloat value
x8696:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; PushFloat 0.0
x8699:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; NotEqual 27 value 0.0
x8701:	fcompp	; 2: -34 -39
x8703:	fstsw ax	; 3: -101 -33 -32
x8706:	sahf	; 1: -98
x8707:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$4:	; Parameter 24 48 6
x8709:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; Call 24 printChar 0
x8713:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 23 34
x8718:	mov [bp + 26], bp	; 3: -119 110 26
x8721:	add bp, 24	; 3: -125 -59 24
x8724:	jmp printChar	; 3: -23 122 -10

printLongDoubleExpo$6:	; PostCall 24

printLongDoubleExpo$7:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$8:	; PushFloat 0.0
x8727:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; Parameter 24 0.0 6
x8729:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; Parameter 24 precision 14
x8732:	mov ax, [bp + 20]	; 3: -117 70 20
x8735:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; Parameter 24 grid 16
x8738:	mov ax, [bp + 18]	; 3: -117 70 18
x8741:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; Call 24 printLongDoubleFraction 0
x8744:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 54 34
x8749:	mov [bp + 26], bp	; 3: -119 110 26
x8752:	add bp, 24	; 3: -125 -59 24
x8755:	jmp printLongDoubleFraction	; 3: -23 87 -2

printLongDoubleExpo$13:	; PostCall 24

printLongDoubleExpo$14:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$15:	; Equal 18 capital 0
x8758:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x8762:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; Assign £temporary1949 69
x8764:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; Goto 19
x8766:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; Assign £temporary1949 101
x8768:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; Parameter 24 £temporary1949 6
x8770:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; Call 24 printChar 0
x8773:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 83 34
x8778:	mov [bp + 26], bp	; 3: -119 110 26
x8781:	add bp, 24	; 3: -125 -59 24
x8784:	jmp printChar	; 3: -23 62 -10

printLongDoubleExpo$21:	; PostCall 24

printLongDoubleExpo$22:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$23:	; Parameter 24 48 6
x8787:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; Call 24 printChar 0
x8791:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 101 34
x8796:	mov [bp + 26], bp	; 3: -119 110 26
x8799:	add bp, 24	; 3: -125 -59 24
x8802:	jmp printChar	; 3: -23 44 -10

printLongDoubleExpo$25:	; PostCall 24

printLongDoubleExpo$26:	; Goto 80
x8805:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; PushFloat value
x8808:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; PushFloat 0.0
x8811:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; SignedGreaterThanEqual 37 value 0.0
x8813:	fcompp	; 2: -34 -39
x8815:	fstsw ax	; 3: -101 -33 -32
x8818:	sahf	; 1: -98
x8819:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$31:	; Parameter 24 45 6
x8821:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; Call 24 printChar 0
x8825:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 -121 34
x8830:	mov [bp + 26], bp	; 3: -119 110 26
x8833:	add bp, 24	; 3: -125 -59 24
x8836:	jmp printChar	; 3: -23 10 -10

printLongDoubleExpo$33:	; PostCall 24

printLongDoubleExpo$34:	; PushFloat value
x8839:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; UnarySubtract £temporary1954 value
x8842:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; PopFloat value
x8844:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$38:	; PushFloat value
x8847:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; Parameter 24 value 6
x8850:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; Call 24 log10 0
x8853:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 -93 34
x8858:	mov [bp + 26], bp	; 3: -119 110 26
x8861:	add bp, 24	; 3: -125 -59 24
x8864:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; PostCall 24

printLongDoubleExpo$42:	; GetReturnValue £temporary1955

printLongDoubleExpo$43:	; FloatingToIntegral £temporary1956 £temporary1955
x8867:	fistp word [container2bytes#]	; 4: -33 30 -112 23
x8871:	mov ax, [container2bytes#]	; 3: -95 -112 23

printLongDoubleExpo$44:	; Assign expo £temporary1956
x8874:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; PushFloat value
x8877:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x8880:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; PushFloat 10.0
x8883:	fld qword [float8$10.0#]	; 4: -35 6 45 33

printLongDoubleExpo$48:	; Parameter 26 10.0 6
x8887:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; IntegralToFloating £temporary1957 expo
x8890:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; Parameter 26 £temporary1957 14
x8893:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; Call 26 pow 0
x8896:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -50 34
x8901:	mov [bp + 36], bp	; 3: -119 110 36
x8904:	add bp, 34	; 3: -125 -59 34
x8907:	jmp pow	; 3: -23 -18 1

printLongDoubleExpo$52:	; PostCall 26
x8910:	fstp qword [bp + 34]	; 3: -35 94 34
x8913:	fld qword [bp + 26]	; 3: -35 70 26
x8916:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; GetReturnValue £temporary1958

printLongDoubleExpo$54:	; SignedDivide £temporary1959 value £temporary1958
x8919:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; PopFloat value
x8921:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$57:	; PushFloat value
x8924:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; Parameter 26 value 6
x8927:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; Parameter 26 plus 14
x8930:	mov ax, [bp + 14]	; 3: -117 70 14
x8933:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; Parameter 26 space 16
x8936:	mov ax, [bp + 16]	; 3: -117 70 16
x8939:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; Parameter 26 grid 18
x8942:	mov ax, [bp + 18]	; 3: -117 70 18
x8945:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; Parameter 26 precision 20
x8948:	mov ax, [bp + 20]	; 3: -117 70 20
x8951:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; Call 26 printLongDoublePlain 0
x8954:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 8 35
x8959:	mov [bp + 28], bp	; 3: -119 110 28
x8962:	add bp, 26	; 3: -125 -59 26
x8965:	jmp printLongDoublePlain	; 3: -23 -23 -4

printLongDoubleExpo$64:	; PostCall 26

printLongDoubleExpo$65:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$66:	; Equal 69 capital 0
x8968:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x8972:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; Assign £temporary1965 69
x8974:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; Goto 70
x8976:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; Assign £temporary1965 101
x8978:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; Parameter 26 £temporary1965 6
x8980:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; Call 26 printChar 0
x8983:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 37 35
x8988:	mov [bp + 28], bp	; 3: -119 110 28
x8991:	add bp, 26	; 3: -125 -59 26
x8994:	jmp printChar	; 3: -23 108 -11

printLongDoubleExpo$72:	; PostCall 26

printLongDoubleExpo$73:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$74:	; IntegralToIntegral £temporary1967 expo
x8997:	mov ax, [bp + 24]	; 3: -117 70 24
x9000:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x9006:	cmp ax, 0	; 3: -125 -8 0
x9009:	jge printLongDoubleExpo$75	; 2: 125 5
x9011:	neg ax	; 2: -9 -40
x9013:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; Parameter 26 £temporary1967 6
x9016:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; Parameter 26 1 10
x9020:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; Parameter 26 0 12
x9025:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; Call 26 printLongInt 0
x9030:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 84 35
x9035:	mov [bp + 28], bp	; 3: -119 110 28
x9038:	add bp, 26	; 3: -125 -59 26
x9041:	jmp printLongInt	; 3: -23 -87 -12

printLongDoubleExpo$79:	; PostCall 26

printLongDoubleExpo$80:	; Return 0
x9044:	mov ax, [bp]	; 3: -117 70 0
x9047:	mov di, [bp + 4]	; 3: -117 126 4
x9050:	mov bp, [bp + 2]	; 3: -117 110 2
x9053:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; FunctionEnd printLongDoubleExpo

log10:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

log10$1:	; PushFloat x
x9055:	fld qword [bp + 6]	; 3: -35 70 6

log10$2:	; Parameter 14 x 6
x9058:	fstp qword [bp + 20]	; 3: -35 94 20

log10$3:	; Call 14 log 0
x9061:	mov word [bp + 14], log10$4	; 5: -57 70 14 115 35
x9066:	mov [bp + 16], bp	; 3: -119 110 16
x9069:	add bp, 14	; 3: -125 -59 14
x9072:	nop	; 1: -112
x9073:	jmp log	; 2: -21 25

log10$4:	; PostCall 14

log10$5:	; GetReturnValue £temporary550

log10$6:	; PushFloat 2.30
x9075:	fld qword [float8$2.30#]	; 4: -35 6 -124 35

log10$7:	; SignedDivide £temporary551 £temporary550 2.30
x9079:	fdiv	; 2: -34 -7

log10$8:	; SetReturnValue £temporary551

log10$9:	; Return £temporary551
x9081:	mov ax, [bp]	; 3: -117 70 0
x9084:	mov di, [bp + 4]	; 3: -117 126 4
x9087:	mov bp, [bp + 2]	; 3: -117 110 2
x9090:	jmp ax	; 2: -1 -32

log10$10:	; FunctionEnd log10

float8$2.30#:
x9092:	dq 2.30	; 8: 102 102 102 102 102 102 2 64

log:	; PushFloat x
x9100:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; PushZero
x9103:	fldz	; 2: -39 -18

log$2:	; SignedLessThanEqual 76 x 0
x9105:	fcompp	; 2: -34 -39
x9107:	fstsw ax	; 3: -101 -33 -32
x9110:	sahf	; 1: -98
x9111:	jae log$76	; 4: 15 -125 -18 0

log$3:	; Assign n 0
x9115:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; PushFloat x
x9120:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; PushOne
x9123:	fld1	; 2: -39 -24

log$6:	; SignedLessThanEqual 16 x 1
x9125:	fcompp	; 2: -34 -39
x9127:	fstsw ax	; 3: -101 -33 -32
x9130:	sahf	; 1: -98
x9131:	jae log$16	; 2: 115 30

log$7:	; PushFloat x
x9133:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; PushOne
x9136:	fld1	; 2: -39 -24

log$9:	; SignedLessThanEqual 28 x 1
x9138:	fcompp	; 2: -34 -39
x9140:	fstsw ax	; 3: -101 -33 -32
x9143:	sahf	; 1: -98
x9144:	jae log$28	; 2: 115 64

log$10:	; PushFloat x
x9146:	fld qword [bp + 6]	; 3: -35 70 6

log$11:	; PushFloat 2.71
x9149:	fld qword [float8$2.71#]	; 4: -35 6 -100 36

log$12:	; SignedDivide £temporary532 x 2.71
x9153:	fdiv	; 2: -34 -7

log$13:	; PopFloat x
x9155:	fstp qword [bp + 6]	; 3: -35 94 6

log$14:	; Increment n
x9158:	inc word [bp + 14]	; 3: -1 70 14

log$15:	; Goto 7
x9161:	jmp log$7	; 2: -21 -30

log$16:	; PushFloat x
x9163:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; PushFloat 0.3690036900369003690036900369
x9166:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 -92 36

log$18:	; SignedGreaterThanEqual 28 x 0.3690036900369003690036900369
x9170:	fcompp	; 2: -34 -39
x9172:	fstsw ax	; 3: -101 -33 -32
x9175:	sahf	; 1: -98
x9176:	jbe log$28	; 2: 118 32

log$19:	; PushFloat x
x9178:	fld qword [bp + 6]	; 3: -35 70 6

log$20:	; PushFloat 0.3690036900369003690036900369
x9181:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 -92 36

log$21:	; SignedGreaterThanEqual 28 x 0.3690036900369003690036900369
x9185:	fcompp	; 2: -34 -39
x9187:	fstsw ax	; 3: -101 -33 -32
x9190:	sahf	; 1: -98
x9191:	jbe log$28	; 2: 118 17

log$22:	; PushFloat x
x9193:	fld qword [bp + 6]	; 3: -35 70 6

log$23:	; PushFloat 2.71
x9196:	fld qword [float8$2.71#]	; 4: -35 6 -100 36

log$24:	; SignedMultiply £temporary536 x 2.71
x9200:	fmul	; 2: -34 -55

log$25:	; PopFloat x
x9202:	fstp qword [bp + 6]	; 3: -35 94 6

log$26:	; Decrement n
x9205:	dec word [bp + 14]	; 3: -1 78 14

log$27:	; Goto 19
x9208:	jmp log$19	; 2: -21 -32

log$28:	; PushOne
x9210:	fld1	; 2: -39 -24

log$29:	; PopFloat index
x9212:	fstp qword [bp + 16]	; 3: -35 94 16

log$30:	; PushZero
x9215:	fldz	; 2: -39 -18

log$31:	; PopFloat sum
x9217:	fstp qword [bp + 32]	; 3: -35 94 32

log$32:	; PushOne
x9220:	fld1	; 2: -39 -24

log$33:	; PopFloat sign
x9222:	fstp qword [bp + 40]	; 3: -35 94 40

log$34:	; PushFloat x
x9225:	fld qword [bp + 6]	; 3: -35 70 6

log$35:	; PushOne
x9228:	fld1	; 2: -39 -24

log$36:	; BinarySubtract £temporary538 x 1
x9230:	fsub	; 2: -34 -23

log$37:	; PopFloat x_minus_1
x9232:	fstp qword [bp + 48]	; 3: -35 94 48

log$38:	; PushFloat x_minus_1
x9235:	fld qword [bp + 48]	; 3: -35 70 48

log$39:	; PopFloat power
x9238:	fstp qword [bp + 56]	; 3: -35 94 56

log$40:	; PushFloat sign
x9241:	fld qword [bp + 40]	; 3: -35 70 40

log$41:	; PushFloat power
x9244:	fld qword [bp + 56]	; 3: -35 70 56

log$42:	; SignedMultiply £temporary539 sign power
x9247:	fmul	; 2: -34 -55

log$43:	; PushFloat index
x9249:	fld qword [bp + 16]	; 3: -35 70 16

log$44:	; PushOne
x9252:	fld1	; 2: -39 -24

log$45:	; BinaryAdd index index 1
x9254:	fadd	; 2: -34 -63

log$46:	; TopFloat index
x9256:	fst qword [bp + 16]	; 3: -35 86 16

log$47:	; PushOne
x9259:	fld1	; 2: -39 -24

log$48:	; BinarySubtract index index 1
x9261:	fsub	; 2: -34 -23

log$49:	; SignedDivide £temporary541 £temporary539 £temporary540
x9263:	fdiv	; 2: -34 -7

log$50:	; PopFloat term
x9265:	fstp qword [bp + 24]	; 3: -35 94 24

log$51:	; PushFloat sum
x9268:	fld qword [bp + 32]	; 3: -35 70 32

log$52:	; PushFloat term
x9271:	fld qword [bp + 24]	; 3: -35 70 24

log$53:	; BinaryAdd £temporary542 sum term
x9274:	fadd	; 2: -34 -63

log$54:	; PopFloat sum
x9276:	fstp qword [bp + 32]	; 3: -35 94 32

log$55:	; PushFloat power
x9279:	fld qword [bp + 56]	; 3: -35 70 56

log$56:	; PushFloat x_minus_1
x9282:	fld qword [bp + 48]	; 3: -35 70 48

log$57:	; SignedMultiply £temporary543 power x_minus_1
x9285:	fmul	; 2: -34 -55

log$58:	; PopFloat power
x9287:	fstp qword [bp + 56]	; 3: -35 94 56

log$59:	; PushFloat sign
x9290:	fld qword [bp + 40]	; 3: -35 70 40

log$60:	; PushFloat -1.0
x9293:	fld qword [float8$minus1.0#]	; 4: -35 6 -84 36

log$61:	; SignedMultiply £temporary544 sign -1.0
x9297:	fmul	; 2: -34 -55

log$62:	; PopFloat sign
x9299:	fstp qword [bp + 40]	; 3: -35 94 40

log$63:	; CallHeader 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

log$64:	; PushFloat term
x9302:	fld qword [bp + 24]	; 3: -35 70 24

log$65:	; Parameter 64 term 6
x9305:	fstp qword [bp + 70]	; 3: -35 94 70

log$66:	; Call 64 fabs 0
x9308:	mov word [bp + 64], log$67	; 5: -57 70 64 106 36
x9313:	mov [bp + 66], bp	; 3: -119 110 66
x9316:	add bp, 64	; 3: -125 -59 64
x9319:	jmp fabs	; 3: -23 -53 -4

log$67:	; PostCall 64

log$68:	; GetReturnValue £temporary545

log$69:	; PushFloat 0.000000001
x9322:	fld qword [float8$0.000000001#]	; 4: -35 6 -76 36

log$70:	; SignedGreaterThanEqual 40 £temporary545 0.000000001
x9326:	fcompp	; 2: -34 -39
x9328:	fstsw ax	; 3: -101 -33 -32
x9331:	sahf	; 1: -98
x9332:	jbe log$40	; 2: 118 -93

log$71:	; PushFloat sum
x9334:	fld qword [bp + 32]	; 3: -35 70 32

log$72:	; IntegralToFloating £temporary547 n
x9337:	fild word [bp + 14]	; 3: -33 70 14

log$73:	; BinaryAdd £temporary548 sum £temporary547
x9340:	fadd	; 2: -34 -63

log$74:	; SetReturnValue £temporary548

log$75:	; Return £temporary548
x9342:	mov ax, [bp]	; 3: -117 70 0
x9345:	mov di, [bp + 4]	; 3: -117 126 4
x9348:	mov bp, [bp + 2]	; 3: -117 110 2
x9351:	jmp ax	; 2: -1 -32

log$76:	; Assign errno 6
x9353:	mov word [errno], 6	; 6: -57 6 7 9 6 0

log$77:	; PushZero
x9359:	fldz	; 2: -39 -18

log$78:	; SetReturnValue 0

log$79:	; Return 0
x9361:	mov ax, [bp]	; 3: -117 70 0
x9364:	mov di, [bp + 4]	; 3: -117 126 4
x9367:	mov bp, [bp + 2]	; 3: -117 110 2
x9370:	jmp ax	; 2: -1 -32

log$80:	; FunctionEnd log

float8$2.71#:
x9372:	dq 2.71	; 8: -82 71 -31 122 20 -82 5 64

float8$0.3690036900369003690036900369#:
x9380:	dq 0.3690036900369003690036900369	; 8: -86 -12 51 -89 -63 -99 -41 63

float8$minus1.0#:
x9388:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x9396:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

pow:	; PushFloat x
x9404:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; PushZero
x9407:	fldz	; 2: -39 -18

pow$2:	; SignedLessThanEqual 18 x 0
x9409:	fcompp	; 2: -34 -39
x9411:	fstsw ax	; 3: -101 -33 -32
x9414:	sahf	; 1: -98
x9415:	jae pow$18	; 2: 115 65

pow$3:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

pow$4:	; PushFloat y
x9417:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x9420:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; PushFloat x
x9423:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; Parameter 22 x 6
x9426:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; Call 22 log 0
x9429:	mov word [bp + 30], pow$9	; 5: -57 70 30 -29 36
x9434:	mov [bp + 32], bp	; 3: -119 110 32
x9437:	add bp, 30	; 3: -125 -59 30
x9440:	jmp log	; 3: -23 -87 -2

pow$9:	; PostCall 22
x9443:	fstp qword [bp + 30]	; 3: -35 94 30
x9446:	fld qword [bp + 22]	; 3: -35 70 22
x9449:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; GetReturnValue £temporary554

pow$11:	; SignedMultiply £temporary555 y £temporary554
x9452:	fmul	; 2: -34 -55

pow$12:	; Parameter 22 £temporary555 6
x9454:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; Call 22 exp 0
x9457:	mov word [bp + 22], pow$14	; 5: -57 70 22 -1 36
x9462:	mov [bp + 24], bp	; 3: -119 110 24
x9465:	add bp, 22	; 3: -125 -59 22
x9468:	jmp exp	; 3: -23 102 1

pow$14:	; PostCall 22

pow$15:	; GetReturnValue £temporary556

pow$16:	; SetReturnValue £temporary556

pow$17:	; Return £temporary556
x9471:	mov ax, [bp]	; 3: -117 70 0
x9474:	mov di, [bp + 4]	; 3: -117 126 4
x9477:	mov bp, [bp + 2]	; 3: -117 110 2
x9480:	jmp ax	; 2: -1 -32

pow$18:	; PushFloat x
x9482:	fld qword [bp + 6]	; 3: -35 70 6

pow$19:	; PushZero
x9485:	fldz	; 2: -39 -18

pow$20:	; NotEqual 27 x 0
x9487:	fcompp	; 2: -34 -39
x9489:	fstsw ax	; 3: -101 -33 -32
x9492:	sahf	; 1: -98
x9493:	jne pow$27	; 2: 117 26

pow$21:	; PushFloat y
x9495:	fld qword [bp + 14]	; 3: -35 70 14

pow$22:	; PushZero
x9498:	fldz	; 2: -39 -18

pow$23:	; NotEqual 27 y 0
x9500:	fcompp	; 2: -34 -39
x9502:	fstsw ax	; 3: -101 -33 -32
x9505:	sahf	; 1: -98
x9506:	jne pow$27	; 2: 117 13

pow$24:	; PushOne
x9508:	fld1	; 2: -39 -24

pow$25:	; SetReturnValue 1

pow$26:	; Return 1
x9510:	mov ax, [bp]	; 3: -117 70 0
x9513:	mov di, [bp + 4]	; 3: -117 126 4
x9516:	mov bp, [bp + 2]	; 3: -117 110 2
x9519:	jmp ax	; 2: -1 -32

pow$27:	; PushFloat x
x9521:	fld qword [bp + 6]	; 3: -35 70 6

pow$28:	; PushZero
x9524:	fldz	; 2: -39 -18

pow$29:	; NotEqual 36 x 0
x9526:	fcompp	; 2: -34 -39
x9528:	fstsw ax	; 3: -101 -33 -32
x9531:	sahf	; 1: -98
x9532:	jne pow$36	; 2: 117 26

pow$30:	; PushFloat y
x9534:	fld qword [bp + 14]	; 3: -35 70 14

pow$31:	; PushZero
x9537:	fldz	; 2: -39 -18

pow$32:	; SignedLessThanEqual 36 y 0
x9539:	fcompp	; 2: -34 -39
x9541:	fstsw ax	; 3: -101 -33 -32
x9544:	sahf	; 1: -98
x9545:	jae pow$36	; 2: 115 13

pow$33:	; PushZero
x9547:	fldz	; 2: -39 -18

pow$34:	; SetReturnValue 0

pow$35:	; Return 0
x9549:	mov ax, [bp]	; 3: -117 70 0
x9552:	mov di, [bp + 4]	; 3: -117 126 4
x9555:	mov bp, [bp + 2]	; 3: -117 110 2
x9558:	jmp ax	; 2: -1 -32

pow$36:	; PushFloat x
x9560:	fld qword [bp + 6]	; 3: -35 70 6

pow$37:	; PushZero
x9563:	fldz	; 2: -39 -18

pow$38:	; SignedGreaterThanEqual 90 x 0
x9565:	fcompp	; 2: -34 -39
x9567:	fstsw ax	; 3: -101 -33 -32
x9570:	sahf	; 1: -98
x9571:	jbe pow$90	; 4: 15 -122 -25 0

pow$39:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

pow$40:	; PushFloat y
x9575:	fld qword [bp + 14]	; 3: -35 70 14

pow$41:	; Parameter 22 y 6
x9578:	fstp qword [bp + 28]	; 3: -35 94 28

pow$42:	; Call 22 floor 0
x9581:	mov word [bp + 22], pow$43	; 5: -57 70 22 123 37
x9586:	mov [bp + 24], bp	; 3: -119 110 24
x9589:	add bp, 22	; 3: -125 -59 22
x9592:	jmp floor	; 3: -23 96 1

pow$43:	; PostCall 22

pow$44:	; GetReturnValue £temporary564

pow$45:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x9595:	fstp qword [bp + 22]	; 3: -35 94 22

pow$46:	; PushFloat y
x9598:	fld qword [bp + 14]	; 3: -35 70 14

pow$47:	; Parameter 22 y 6
x9601:	fstp qword [bp + 36]	; 3: -35 94 36

pow$48:	; Call 22 ceil 0
x9604:	mov word [bp + 30], pow$49	; 5: -57 70 30 -110 37
x9609:	mov [bp + 32], bp	; 3: -119 110 32
x9612:	add bp, 30	; 3: -125 -59 30
x9615:	jmp ceil	; 3: -23 -105 1

pow$49:	; PostCall 22
x9618:	fstp qword [bp + 30]	; 3: -35 94 30
x9621:	fld qword [bp + 22]	; 3: -35 70 22
x9624:	fld qword [bp + 30]	; 3: -35 70 30

pow$50:	; GetReturnValue £temporary565

pow$51:	; NotEqual 90 £temporary564 £temporary565
x9627:	fcompp	; 2: -34 -39
x9629:	fstsw ax	; 3: -101 -33 -32
x9632:	sahf	; 1: -98
x9633:	jne pow$90	; 4: 15 -123 -87 0

pow$52:	; PushFloat y
x9637:	fld qword [bp + 14]	; 3: -35 70 14

pow$53:	; FloatingToIntegral £temporary568 y
x9640:	fistp dword [container4bytes#]	; 4: -37 30 -119 32
x9644:	mov eax, [container4bytes#]	; 4: 102 -95 -119 32

pow$54:	; Assign long_y £temporary568
x9648:	mov [bp + 22], eax	; 4: 102 -119 70 22

pow$55:	; SignedModulo £temporary569 long_y 2
x9652:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x9656:	xor edx, edx	; 3: 102 49 -46
x9659:	idiv dword [int4$2#]	; 5: 102 -9 62 97 38

pow$56:	; NotEqual 73 £temporary569 0
x9664:	cmp edx, 0	; 4: 102 -125 -6 0
x9668:	jne pow$73	; 2: 117 67

pow$57:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

pow$58:	; PushFloat y
x9670:	fld qword [bp + 14]	; 3: -35 70 14

pow$59:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x9673:	fstp qword [bp + 26]	; 3: -35 94 26

pow$60:	; PushFloat x
x9676:	fld qword [bp + 6]	; 3: -35 70 6

pow$61:	; UnarySubtract £temporary571 x
x9679:	fchs	; 2: -39 -32

pow$62:	; Parameter 26 £temporary571 6
x9681:	fstp qword [bp + 40]	; 3: -35 94 40

pow$63:	; Call 26 log 0
x9684:	mov word [bp + 34], pow$64	; 5: -57 70 34 -30 37
x9689:	mov [bp + 36], bp	; 3: -119 110 36
x9692:	add bp, 34	; 3: -125 -59 34
x9695:	jmp log	; 3: -23 -86 -3

pow$64:	; PostCall 26
x9698:	fstp qword [bp + 34]	; 3: -35 94 34
x9701:	fld qword [bp + 26]	; 3: -35 70 26
x9704:	fld qword [bp + 34]	; 3: -35 70 34

pow$65:	; GetReturnValue £temporary572

pow$66:	; SignedMultiply £temporary573 y £temporary572
x9707:	fmul	; 2: -34 -55

pow$67:	; Parameter 26 £temporary573 6
x9709:	fstp qword [bp + 32]	; 3: -35 94 32

pow$68:	; Call 26 exp 0
x9712:	mov word [bp + 26], pow$69	; 5: -57 70 26 -2 37
x9717:	mov [bp + 28], bp	; 3: -119 110 28
x9720:	add bp, 26	; 3: -125 -59 26
x9723:	nop	; 1: -112
x9724:	jmp exp	; 2: -21 103

pow$69:	; PostCall 26

pow$70:	; GetReturnValue £temporary574

pow$71:	; SetReturnValue £temporary574

pow$72:	; Return £temporary574
x9726:	mov ax, [bp]	; 3: -117 70 0
x9729:	mov di, [bp + 4]	; 3: -117 126 4
x9732:	mov bp, [bp + 2]	; 3: -117 110 2
x9735:	jmp ax	; 2: -1 -32

pow$73:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

pow$74:	; PushFloat y
x9737:	fld qword [bp + 14]	; 3: -35 70 14

pow$75:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x9740:	fstp qword [bp + 26]	; 3: -35 94 26

pow$76:	; PushFloat x
x9743:	fld qword [bp + 6]	; 3: -35 70 6

pow$77:	; UnarySubtract £temporary575 x
x9746:	fchs	; 2: -39 -32

pow$78:	; Parameter 26 £temporary575 6
x9748:	fstp qword [bp + 40]	; 3: -35 94 40

pow$79:	; Call 26 log 0
x9751:	mov word [bp + 34], pow$80	; 5: -57 70 34 37 38
x9756:	mov [bp + 36], bp	; 3: -119 110 36
x9759:	add bp, 34	; 3: -125 -59 34
x9762:	jmp log	; 3: -23 103 -3

pow$80:	; PostCall 26
x9765:	fstp qword [bp + 34]	; 3: -35 94 34
x9768:	fld qword [bp + 26]	; 3: -35 70 26
x9771:	fld qword [bp + 34]	; 3: -35 70 34

pow$81:	; GetReturnValue £temporary576

pow$82:	; SignedMultiply £temporary577 y £temporary576
x9774:	fmul	; 2: -34 -55

pow$83:	; Parameter 26 £temporary577 6
x9776:	fstp qword [bp + 32]	; 3: -35 94 32

pow$84:	; Call 26 exp 0
x9779:	mov word [bp + 26], pow$85	; 5: -57 70 26 65 38
x9784:	mov [bp + 28], bp	; 3: -119 110 28
x9787:	add bp, 26	; 3: -125 -59 26
x9790:	nop	; 1: -112
x9791:	jmp exp	; 2: -21 36

pow$85:	; PostCall 26

pow$86:	; GetReturnValue £temporary578

pow$87:	; UnarySubtract £temporary579 £temporary578
x9793:	fchs	; 2: -39 -32

pow$88:	; SetReturnValue £temporary579

pow$89:	; Return £temporary579
x9795:	mov ax, [bp]	; 3: -117 70 0
x9798:	mov di, [bp + 4]	; 3: -117 126 4
x9801:	mov bp, [bp + 2]	; 3: -117 110 2
x9804:	jmp ax	; 2: -1 -32

pow$90:	; Assign errno 6
x9806:	mov word [errno], 6	; 6: -57 6 7 9 6 0

pow$91:	; PushZero
x9812:	fldz	; 2: -39 -18

pow$92:	; SetReturnValue 0

pow$93:	; Return 0
x9814:	mov ax, [bp]	; 3: -117 70 0
x9817:	mov di, [bp + 4]	; 3: -117 126 4
x9820:	mov bp, [bp + 2]	; 3: -117 110 2
x9823:	jmp ax	; 2: -1 -32

pow$94:	; FunctionEnd pow

int4$2#:
x9825:	dd 2	; 4: 2 0 0 0

exp:	; PushOne
x9829:	fld1	; 2: -39 -24

exp$1:	; PopFloat index
x9831:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; PushOne
x9834:	fld1	; 2: -39 -24

exp$3:	; PopFloat sum
x9836:	fstp qword [bp + 30]	; 3: -35 94 30

exp$4:	; PushOne
x9839:	fld1	; 2: -39 -24

exp$5:	; PopFloat faculty
x9841:	fstp qword [bp + 38]	; 3: -35 94 38

exp$6:	; PushFloat x
x9844:	fld qword [bp + 6]	; 3: -35 70 6

exp$7:	; PopFloat power
x9847:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; PushFloat power
x9850:	fld qword [bp + 46]	; 3: -35 70 46

exp$9:	; PushFloat faculty
x9853:	fld qword [bp + 38]	; 3: -35 70 38

exp$10:	; SignedDivide £temporary521 power faculty
x9856:	fdiv	; 2: -34 -7

exp$11:	; PopFloat term
x9858:	fstp qword [bp + 22]	; 3: -35 94 22

exp$12:	; PushFloat sum
x9861:	fld qword [bp + 30]	; 3: -35 70 30

exp$13:	; PushFloat term
x9864:	fld qword [bp + 22]	; 3: -35 70 22

exp$14:	; BinaryAdd £temporary522 sum term
x9867:	fadd	; 2: -34 -63

exp$15:	; PopFloat sum
x9869:	fstp qword [bp + 30]	; 3: -35 94 30

exp$16:	; PushFloat power
x9872:	fld qword [bp + 46]	; 3: -35 70 46

exp$17:	; PushFloat x
x9875:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; SignedMultiply £temporary523 power x
x9878:	fmul	; 2: -34 -55

exp$19:	; PopFloat power
x9880:	fstp qword [bp + 46]	; 3: -35 94 46

exp$20:	; PushFloat faculty
x9883:	fld qword [bp + 38]	; 3: -35 70 38

exp$21:	; PushFloat index
x9886:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; PushOne
x9889:	fld1	; 2: -39 -24

exp$23:	; BinaryAdd index index 1
x9891:	fadd	; 2: -34 -63

exp$24:	; TopFloat index
x9893:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; SignedMultiply £temporary525 faculty £temporary524
x9896:	fmul	; 2: -34 -55

exp$26:	; PopFloat faculty
x9898:	fstp qword [bp + 38]	; 3: -35 94 38

exp$27:	; CallHeader 54 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

exp$28:	; PushFloat term
x9901:	fld qword [bp + 22]	; 3: -35 70 22

exp$29:	; Parameter 54 term 6
x9904:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; Call 54 fabs 0
x9907:	mov word [bp + 54], exp$31	; 5: -57 70 54 -63 38
x9912:	mov [bp + 56], bp	; 3: -119 110 56
x9915:	add bp, 54	; 3: -125 -59 54
x9918:	jmp fabs	; 3: -23 116 -6

exp$31:	; PostCall 54

exp$32:	; GetReturnValue £temporary526

exp$33:	; PushFloat 0.000000001
x9921:	fld qword [float8$0.000000001#]	; 4: -35 6 -76 36

exp$34:	; SignedGreaterThanEqual 8 £temporary526 0.000000001
x9925:	fcompp	; 2: -34 -39
x9927:	fstsw ax	; 3: -101 -33 -32
x9930:	sahf	; 1: -98
x9931:	jbe exp$8	; 2: 118 -83

exp$35:	; PushFloat sum
x9933:	fld qword [bp + 30]	; 3: -35 70 30

exp$36:	; SetReturnValue sum

exp$37:	; Return sum
x9936:	mov ax, [bp]	; 3: -117 70 0
x9939:	mov di, [bp + 4]	; 3: -117 126 4
x9942:	mov bp, [bp + 2]	; 3: -117 110 2
x9945:	jmp ax	; 2: -1 -32

exp$38:	; FunctionEnd exp

floor:	; PushFloat x
x9947:	fld qword [bp + 6]	; 3: -35 70 6

floor$1:	; PushZero
x9950:	fldz	; 2: -39 -18

floor$2:	; SignedGreaterThanEqual 13 x 0
x9952:	fcompp	; 2: -34 -39
x9954:	fstsw ax	; 3: -101 -33 -32
x9957:	sahf	; 1: -98
x9958:	jbe floor$13	; 2: 118 35

floor$3:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

floor$4:	; PushFloat x
x9960:	fld qword [bp + 6]	; 3: -35 70 6

floor$5:	; UnarySubtract £temporary805 x
x9963:	fchs	; 2: -39 -32

floor$6:	; Parameter 14 £temporary805 6
x9965:	fstp qword [bp + 20]	; 3: -35 94 20

floor$7:	; Call 14 ceil 0
x9968:	mov word [bp + 14], floor$8	; 5: -57 70 14 -2 38
x9973:	mov [bp + 16], bp	; 3: -119 110 16
x9976:	add bp, 14	; 3: -125 -59 14
x9979:	nop	; 1: -112
x9980:	jmp ceil	; 2: -21 43

floor$8:	; PostCall 14

floor$9:	; GetReturnValue £temporary806

floor$10:	; UnarySubtract £temporary807 £temporary806
x9982:	fchs	; 2: -39 -32

floor$11:	; SetReturnValue £temporary807

floor$12:	; Return £temporary807
x9984:	mov ax, [bp]	; 3: -117 70 0
x9987:	mov di, [bp + 4]	; 3: -117 126 4
x9990:	mov bp, [bp + 2]	; 3: -117 110 2
x9993:	jmp ax	; 2: -1 -32

floor$13:	; PushFloat x
x9995:	fld qword [bp + 6]	; 3: -35 70 6

floor$14:	; FloatingToIntegral £temporary808 x
x9998:	fistp dword [container4bytes#]	; 4: -37 30 -119 32
x10002:	mov eax, [container4bytes#]	; 4: 102 -95 -119 32

floor$15:	; IntegralToFloating £temporary809 £temporary808
x10006:	mov [container4bytes#], eax	; 4: 102 -93 -119 32
x10010:	fild dword [container4bytes#]	; 4: -37 6 -119 32

floor$16:	; SetReturnValue £temporary809

floor$17:	; Return £temporary809
x10014:	mov ax, [bp]	; 3: -117 70 0
x10017:	mov di, [bp + 4]	; 3: -117 126 4
x10020:	mov bp, [bp + 2]	; 3: -117 110 2
x10023:	jmp ax	; 2: -1 -32

floor$18:	; FunctionEnd floor

ceil:	; PushFloat x
x10025:	fld qword [bp + 6]	; 3: -35 70 6

ceil$1:	; PushZero
x10028:	fldz	; 2: -39 -18

ceil$2:	; SignedGreaterThanEqual 13 x 0
x10030:	fcompp	; 2: -34 -39
x10032:	fstsw ax	; 3: -101 -33 -32
x10035:	sahf	; 1: -98
x10036:	jbe ceil$13	; 2: 118 35

ceil$3:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

ceil$4:	; PushFloat x
x10038:	fld qword [bp + 6]	; 3: -35 70 6

ceil$5:	; UnarySubtract £temporary812 x
x10041:	fchs	; 2: -39 -32

ceil$6:	; Parameter 14 £temporary812 6
x10043:	fstp qword [bp + 20]	; 3: -35 94 20

ceil$7:	; Call 14 floor 0
x10046:	mov word [bp + 14], ceil$8	; 5: -57 70 14 76 39
x10051:	mov [bp + 16], bp	; 3: -119 110 16
x10054:	add bp, 14	; 3: -125 -59 14
x10057:	nop	; 1: -112
x10058:	jmp floor	; 2: -21 -113

ceil$8:	; PostCall 14

ceil$9:	; GetReturnValue £temporary813

ceil$10:	; UnarySubtract £temporary814 £temporary813
x10060:	fchs	; 2: -39 -32

ceil$11:	; SetReturnValue £temporary814

ceil$12:	; Return £temporary814
x10062:	mov ax, [bp]	; 3: -117 70 0
x10065:	mov di, [bp + 4]	; 3: -117 126 4
x10068:	mov bp, [bp + 2]	; 3: -117 110 2
x10071:	jmp ax	; 2: -1 -32

ceil$13:	; PushFloat x
x10073:	fld qword [bp + 6]	; 3: -35 70 6

ceil$14:	; PushFloat 0.999999999999
x10076:	fld qword [float8$0.999999999999#]	; 4: -35 6 125 39

ceil$15:	; BinaryAdd £temporary815 x 0.999999999999
x10080:	fadd	; 2: -34 -63

ceil$16:	; FloatingToIntegral £temporary816 £temporary815
x10082:	fistp dword [container4bytes#]	; 4: -37 30 -119 32
x10086:	mov eax, [container4bytes#]	; 4: 102 -95 -119 32

ceil$17:	; IntegralToFloating £temporary817 £temporary816
x10090:	mov [container4bytes#], eax	; 4: 102 -93 -119 32
x10094:	fild dword [container4bytes#]	; 4: -37 6 -119 32

ceil$18:	; SetReturnValue £temporary817

ceil$19:	; Return £temporary817
x10098:	mov ax, [bp]	; 3: -117 70 0
x10101:	mov di, [bp + 4]	; 3: -117 126 4
x10104:	mov bp, [bp + 2]	; 3: -117 110 2
x10107:	jmp ax	; 2: -1 -32

ceil$20:	; FunctionEnd ceil

float8$0.999999999999#:
x10109:	dq 0.999999999999	; 8: -47 -36 -1 -1 -1 -1 -17 63

isdigit:	; SignedLessThan 4 c 48
x10117:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x10121:	jl isdigit$4	; 2: 124 11

isdigit$1:	; SignedGreaterThan 4 c 57
x10123:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x10127:	jg isdigit$4	; 2: 127 5

isdigit$2:	; Assign £temporary406 1
x10129:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; Goto 5
x10132:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; Assign £temporary406 0
x10134:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; SetReturnValue £temporary406

isdigit$6:	; Return £temporary406
x10137:	mov ax, [bp]	; 3: -117 70 0
x10140:	mov di, [bp + 4]	; 3: -117 126 4
x10143:	mov bp, [bp + 2]	; 3: -117 110 2
x10146:	jmp ax	; 2: -1 -32

isdigit$7:	; FunctionEnd isdigit

strcpy:	; Assign index 0
x10148:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcpy$1:	; BinaryAdd £temporary3901 source index
x10153:	mov si, [bp + 8]	; 3: -117 118 8
x10156:	add si, [bp + 10]	; 3: 3 118 10

strcpy$2:	; Deref £temporary3900 -> £temporary3901 £temporary3901 0

strcpy$3:	; Equal 11 £temporary3900 -> £temporary3901 0
x10159:	cmp byte [si], 0	; 3: -128 60 0
x10162:	je strcpy$11	; 2: 116 21

strcpy$4:	; BinaryAdd £temporary3905 target index
x10164:	mov si, [bp + 6]	; 3: -117 118 6
x10167:	add si, [bp + 10]	; 3: 3 118 10

strcpy$5:	; Deref £temporary3904 -> £temporary3905 £temporary3905 0

strcpy$6:	; BinaryAdd £temporary3907 source index
x10170:	mov di, [bp + 8]	; 3: -117 126 8
x10173:	add di, [bp + 10]	; 3: 3 126 10

strcpy$7:	; Deref £temporary3906 -> £temporary3907 £temporary3907 0

strcpy$8:	; Assign £temporary3904 -> £temporary3905 £temporary3906 -> £temporary3907
x10176:	mov al, [di]	; 2: -118 5
x10178:	mov [si], al	; 2: -120 4

strcpy$9:	; Increment index
x10180:	inc word [bp + 10]	; 3: -1 70 10

strcpy$10:	; Goto 1
x10183:	jmp strcpy$1	; 2: -21 -32

strcpy$11:	; BinaryAdd £temporary3909 target index
x10185:	mov si, [bp + 6]	; 3: -117 118 6
x10188:	add si, [bp + 10]	; 3: 3 118 10

strcpy$12:	; Deref £temporary3908 -> £temporary3909 £temporary3909 0

strcpy$13:	; Assign £temporary3908 -> £temporary3909 0
x10191:	mov byte [si], 0	; 3: -58 4 0

strcpy$14:	; SetReturnValue target
x10194:	mov bx, [bp + 6]	; 3: -117 94 6

strcpy$15:	; Return target
x10197:	mov ax, [bp]	; 3: -117 70 0
x10200:	mov di, [bp + 4]	; 3: -117 126 4
x10203:	mov bp, [bp + 2]	; 3: -117 110 2
x10206:	jmp ax	; 2: -1 -32

strcpy$16:	; FunctionEnd strcpy

strncpy:	; Assign index 0
x10208:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strncpy$1:	; SignedGreaterThanEqual 12 index size
x10213:	mov ax, [bp + 10]	; 3: -117 70 10
x10216:	cmp [bp + 12], ax	; 3: 57 70 12
x10219:	jge strncpy$12	; 2: 125 32

strncpy$2:	; BinaryAdd £temporary3912 source index
x10221:	mov si, [bp + 8]	; 3: -117 118 8
x10224:	add si, [bp + 12]	; 3: 3 118 12

strncpy$3:	; Deref £temporary3911 -> £temporary3912 £temporary3912 0

strncpy$4:	; Equal 12 £temporary3911 -> £temporary3912 0
x10227:	cmp byte [si], 0	; 3: -128 60 0
x10230:	je strncpy$12	; 2: 116 21

strncpy$5:	; BinaryAdd £temporary3917 target index
x10232:	mov si, [bp + 6]	; 3: -117 118 6
x10235:	add si, [bp + 12]	; 3: 3 118 12

strncpy$6:	; Deref £temporary3916 -> £temporary3917 £temporary3917 0

strncpy$7:	; BinaryAdd £temporary3919 source index
x10238:	mov di, [bp + 8]	; 3: -117 126 8
x10241:	add di, [bp + 12]	; 3: 3 126 12

strncpy$8:	; Deref £temporary3918 -> £temporary3919 £temporary3919 0

strncpy$9:	; Assign £temporary3916 -> £temporary3917 £temporary3918 -> £temporary3919
x10244:	mov al, [di]	; 2: -118 5
x10246:	mov [si], al	; 2: -120 4

strncpy$10:	; Increment index
x10248:	inc word [bp + 12]	; 3: -1 70 12

strncpy$11:	; Goto 1
x10251:	jmp strncpy$1	; 2: -21 -40

strncpy$12:	; SignedGreaterThanEqual 18 index size
x10253:	mov ax, [bp + 10]	; 3: -117 70 10
x10256:	cmp [bp + 12], ax	; 3: 57 70 12
x10259:	jge strncpy$18	; 2: 125 14

strncpy$13:	; BinaryAdd £temporary3923 target index
x10261:	mov si, [bp + 6]	; 3: -117 118 6
x10264:	add si, [bp + 12]	; 3: 3 118 12

strncpy$14:	; Deref £temporary3922 -> £temporary3923 £temporary3923 0

strncpy$15:	; Assign £temporary3922 -> £temporary3923 0
x10267:	mov byte [si], 0	; 3: -58 4 0

strncpy$16:	; Increment index
x10270:	inc word [bp + 12]	; 3: -1 70 12

strncpy$17:	; Goto 12
x10273:	jmp strncpy$12	; 2: -21 -22

strncpy$18:	; SetReturnValue target
x10275:	mov bx, [bp + 6]	; 3: -117 94 6

strncpy$19:	; Return target
x10278:	mov ax, [bp]	; 3: -117 70 0
x10281:	mov di, [bp + 4]	; 3: -117 126 4
x10284:	mov bp, [bp + 2]	; 3: -117 110 2
x10287:	jmp ax	; 2: -1 -32

strncpy$20:	; FunctionEnd strncpy

strcat:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strcat$1:	; Parameter 12 target 6
x10289:	mov ax, [bp + 6]	; 3: -117 70 6
x10292:	mov [bp + 18], ax	; 3: -119 70 18

strcat$2:	; Call 12 strlen 0
x10295:	mov word [bp + 12], strcat$3	; 5: -57 70 12 69 40
x10300:	mov [bp + 14], bp	; 3: -119 110 14
x10303:	add bp, 12	; 3: -125 -59 12
x10306:	jmp strlen	; 3: -23 -35 -32

strcat$3:	; PostCall 12

strcat$4:	; GetReturnValue £temporary3924

strcat$5:	; Assign targetLength £temporary3924
x10309:	mov [bp + 12], bx	; 3: -119 94 12

strcat$6:	; Assign index 0
x10312:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcat$7:	; BinaryAdd £temporary3926 source index
x10317:	mov si, [bp + 8]	; 3: -117 118 8
x10320:	add si, [bp + 10]	; 3: 3 118 10

strcat$8:	; Deref £temporary3925 -> £temporary3926 £temporary3926 0

strcat$9:	; Equal 18 £temporary3925 -> £temporary3926 0
x10323:	cmp byte [si], 0	; 3: -128 60 0
x10326:	je strcat$18	; 2: 116 26

strcat$10:	; BinaryAdd £temporary3929 targetLength index
x10328:	mov ax, [bp + 12]	; 3: -117 70 12
x10331:	add ax, [bp + 10]	; 3: 3 70 10

strcat$11:	; BinaryAdd £temporary3931 target £temporary3929
x10334:	mov si, [bp + 6]	; 3: -117 118 6
x10337:	add si, ax	; 2: 1 -58

strcat$12:	; Deref £temporary3930 -> £temporary3931 £temporary3931 0

strcat$13:	; BinaryAdd £temporary3933 source index
x10339:	mov di, [bp + 8]	; 3: -117 126 8
x10342:	add di, [bp + 10]	; 3: 3 126 10

strcat$14:	; Deref £temporary3932 -> £temporary3933 £temporary3933 0

strcat$15:	; Assign £temporary3930 -> £temporary3931 £temporary3932 -> £temporary3933
x10345:	mov al, [di]	; 2: -118 5
x10347:	mov [si], al	; 2: -120 4

strcat$16:	; Increment index
x10349:	inc word [bp + 10]	; 3: -1 70 10

strcat$17:	; Goto 7
x10352:	jmp strcat$7	; 2: -21 -37

strcat$18:	; BinaryAdd £temporary3934 targetLength index
x10354:	mov ax, [bp + 12]	; 3: -117 70 12
x10357:	add ax, [bp + 10]	; 3: 3 70 10

strcat$19:	; BinaryAdd £temporary3936 target £temporary3934
x10360:	mov si, [bp + 6]	; 3: -117 118 6
x10363:	add si, ax	; 2: 1 -58

strcat$20:	; Deref £temporary3935 -> £temporary3936 £temporary3936 0

strcat$21:	; Assign £temporary3935 -> £temporary3936 0
x10365:	mov byte [si], 0	; 3: -58 4 0

strcat$22:	; SetReturnValue target
x10368:	mov bx, [bp + 6]	; 3: -117 94 6

strcat$23:	; Return target
x10371:	mov ax, [bp]	; 3: -117 70 0
x10374:	mov di, [bp + 4]	; 3: -117 126 4
x10377:	mov bp, [bp + 2]	; 3: -117 110 2
x10380:	jmp ax	; 2: -1 -32

strcat$24:	; FunctionEnd strcat

strncat:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strncat$1:	; Parameter 14 target 6
x10382:	mov ax, [bp + 6]	; 3: -117 70 6
x10385:	mov [bp + 20], ax	; 3: -119 70 20

strncat$2:	; Call 14 strlen 0
x10388:	mov word [bp + 14], strncat$3	; 5: -57 70 14 -94 40
x10393:	mov [bp + 16], bp	; 3: -119 110 16
x10396:	add bp, 14	; 3: -125 -59 14
x10399:	jmp strlen	; 3: -23 -128 -32

strncat$3:	; PostCall 14

strncat$4:	; GetReturnValue £temporary3938

strncat$5:	; Assign targetLength £temporary3938
x10402:	mov [bp + 14], bx	; 3: -119 94 14

strncat$6:	; Assign index 0
x10405:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strncat$7:	; BinarySubtract £temporary3939 size 1
x10410:	mov ax, [bp + 10]	; 3: -117 70 10
x10413:	dec ax	; 1: 72

strncat$8:	; SignedGreaterThanEqual 20 index £temporary3939
x10414:	cmp [bp + 12], ax	; 3: 57 70 12
x10417:	jge strncat$20	; 2: 125 37

strncat$9:	; BinaryAdd £temporary3942 source index
x10419:	mov si, [bp + 8]	; 3: -117 118 8
x10422:	add si, [bp + 12]	; 3: 3 118 12

strncat$10:	; Deref £temporary3941 -> £temporary3942 £temporary3942 0

strncat$11:	; Equal 20 £temporary3941 -> £temporary3942 0
x10425:	cmp byte [si], 0	; 3: -128 60 0
x10428:	je strncat$20	; 2: 116 26

strncat$12:	; BinaryAdd £temporary3946 targetLength index
x10430:	mov ax, [bp + 14]	; 3: -117 70 14
x10433:	add ax, [bp + 12]	; 3: 3 70 12

strncat$13:	; BinaryAdd £temporary3948 target £temporary3946
x10436:	mov si, [bp + 6]	; 3: -117 118 6
x10439:	add si, ax	; 2: 1 -58

strncat$14:	; Deref £temporary3947 -> £temporary3948 £temporary3948 0

strncat$15:	; BinaryAdd £temporary3950 source index
x10441:	mov di, [bp + 8]	; 3: -117 126 8
x10444:	add di, [bp + 12]	; 3: 3 126 12

strncat$16:	; Deref £temporary3949 -> £temporary3950 £temporary3950 0

strncat$17:	; Assign £temporary3947 -> £temporary3948 £temporary3949 -> £temporary3950
x10447:	mov al, [di]	; 2: -118 5
x10449:	mov [si], al	; 2: -120 4

strncat$18:	; Increment index
x10451:	inc word [bp + 12]	; 3: -1 70 12

strncat$19:	; Goto 7
x10454:	jmp strncat$7	; 2: -21 -46

strncat$20:	; BinaryAdd £temporary3951 targetLength size
x10456:	mov ax, [bp + 14]	; 3: -117 70 14
x10459:	add ax, [bp + 10]	; 3: 3 70 10

strncat$21:	; BinarySubtract £temporary3952 £temporary3951 1
x10462:	dec ax	; 1: 72

strncat$22:	; BinaryAdd £temporary3954 target £temporary3952
x10463:	mov si, [bp + 6]	; 3: -117 118 6
x10466:	add si, ax	; 2: 1 -58

strncat$23:	; Deref £temporary3953 -> £temporary3954 £temporary3954 0

strncat$24:	; Assign £temporary3953 -> £temporary3954 0
x10468:	mov byte [si], 0	; 3: -58 4 0

strncat$25:	; SetReturnValue target
x10471:	mov bx, [bp + 6]	; 3: -117 94 6

strncat$26:	; Return target
x10474:	mov ax, [bp]	; 3: -117 70 0
x10477:	mov di, [bp + 4]	; 3: -117 126 4
x10480:	mov bp, [bp + 2]	; 3: -117 110 2
x10483:	jmp ax	; 2: -1 -32

strncat$27:	; FunctionEnd strncat

strcmp:	; Assign index 0
x10485:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcmp$1:	; BinaryAdd £temporary3958 left index
x10490:	mov si, [bp + 6]	; 3: -117 118 6
x10493:	add si, [bp + 10]	; 3: 3 118 10

strcmp$2:	; Deref £temporary3957 -> £temporary3958 £temporary3958 0

strcmp$3:	; NotEqual 9 £temporary3957 -> £temporary3958 0
x10496:	cmp byte [si], 0	; 3: -128 60 0
x10499:	jne strcmp$9	; 2: 117 25

strcmp$4:	; BinaryAdd £temporary3961 right index
x10501:	mov si, [bp + 8]	; 3: -117 118 8
x10504:	add si, [bp + 10]	; 3: 3 118 10

strcmp$5:	; Deref £temporary3960 -> £temporary3961 £temporary3961 0

strcmp$6:	; NotEqual 9 £temporary3960 -> £temporary3961 0
x10507:	cmp byte [si], 0	; 3: -128 60 0
x10510:	jne strcmp$9	; 2: 117 14

strcmp$7:	; SetReturnValue 0
x10512:	mov bx, 0	; 3: -69 0 0

strcmp$8:	; Return 0
x10515:	mov ax, [bp]	; 3: -117 70 0
x10518:	mov di, [bp + 4]	; 3: -117 126 4
x10521:	mov bp, [bp + 2]	; 3: -117 110 2
x10524:	jmp ax	; 2: -1 -32

strcmp$9:	; BinaryAdd £temporary3965 left index
x10526:	mov si, [bp + 6]	; 3: -117 118 6
x10529:	add si, [bp + 10]	; 3: 3 118 10

strcmp$10:	; Deref £temporary3964 -> £temporary3965 £temporary3965 0

strcmp$11:	; NotEqual 14 £temporary3964 -> £temporary3965 0
x10532:	cmp byte [si], 0	; 3: -128 60 0
x10535:	jne strcmp$14	; 2: 117 14

strcmp$12:	; SetReturnValue -1
x10537:	mov bx, -1	; 3: -69 -1 -1

strcmp$13:	; Return -1
x10540:	mov ax, [bp]	; 3: -117 70 0
x10543:	mov di, [bp + 4]	; 3: -117 126 4
x10546:	mov bp, [bp + 2]	; 3: -117 110 2
x10549:	jmp ax	; 2: -1 -32

strcmp$14:	; BinaryAdd £temporary3968 right index
x10551:	mov si, [bp + 8]	; 3: -117 118 8
x10554:	add si, [bp + 10]	; 3: 3 118 10

strcmp$15:	; Deref £temporary3967 -> £temporary3968 £temporary3968 0

strcmp$16:	; NotEqual 19 £temporary3967 -> £temporary3968 0
x10557:	cmp byte [si], 0	; 3: -128 60 0
x10560:	jne strcmp$19	; 2: 117 14

strcmp$17:	; SetReturnValue 1
x10562:	mov bx, 1	; 3: -69 1 0

strcmp$18:	; Return 1
x10565:	mov ax, [bp]	; 3: -117 70 0
x10568:	mov di, [bp + 4]	; 3: -117 126 4
x10571:	mov bp, [bp + 2]	; 3: -117 110 2
x10574:	jmp ax	; 2: -1 -32

strcmp$19:	; BinaryAdd £temporary3971 left index
x10576:	mov si, [bp + 6]	; 3: -117 118 6
x10579:	add si, [bp + 10]	; 3: 3 118 10

strcmp$20:	; Deref £temporary3970 -> £temporary3971 £temporary3971 0

strcmp$21:	; BinaryAdd £temporary3973 right index
x10582:	mov di, [bp + 8]	; 3: -117 126 8
x10585:	add di, [bp + 10]	; 3: 3 126 10

strcmp$22:	; Deref £temporary3972 -> £temporary3973 £temporary3973 0

strcmp$23:	; SignedGreaterThanEqual 26 £temporary3970 -> £temporary3971 £temporary3972 -> £temporary3973
x10588:	mov al, [di]	; 2: -118 5
x10590:	cmp [si], al	; 2: 56 4
x10592:	jge strcmp$26	; 2: 125 14

strcmp$24:	; SetReturnValue -1
x10594:	mov bx, -1	; 3: -69 -1 -1

strcmp$25:	; Return -1
x10597:	mov ax, [bp]	; 3: -117 70 0
x10600:	mov di, [bp + 4]	; 3: -117 126 4
x10603:	mov bp, [bp + 2]	; 3: -117 110 2
x10606:	jmp ax	; 2: -1 -32

strcmp$26:	; BinaryAdd £temporary3976 left index
x10608:	mov si, [bp + 6]	; 3: -117 118 6
x10611:	add si, [bp + 10]	; 3: 3 118 10

strcmp$27:	; Deref £temporary3975 -> £temporary3976 £temporary3976 0

strcmp$28:	; BinaryAdd £temporary3978 right index
x10614:	mov di, [bp + 8]	; 3: -117 126 8
x10617:	add di, [bp + 10]	; 3: 3 126 10

strcmp$29:	; Deref £temporary3977 -> £temporary3978 £temporary3978 0

strcmp$30:	; SignedLessThanEqual 33 £temporary3975 -> £temporary3976 £temporary3977 -> £temporary3978
x10620:	mov al, [di]	; 2: -118 5
x10622:	cmp [si], al	; 2: 56 4
x10624:	jle strcmp$33	; 2: 126 14

strcmp$31:	; SetReturnValue 1
x10626:	mov bx, 1	; 3: -69 1 0

strcmp$32:	; Return 1
x10629:	mov ax, [bp]	; 3: -117 70 0
x10632:	mov di, [bp + 4]	; 3: -117 126 4
x10635:	mov bp, [bp + 2]	; 3: -117 110 2
x10638:	jmp ax	; 2: -1 -32

strcmp$33:	; Increment index
x10640:	inc word [bp + 10]	; 3: -1 70 10

strcmp$34:	; Goto 1
x10643:	jmp strcmp$1	; 3: -23 100 -1

strcmp$35:	; FunctionEnd strcmp

strncmp:	; Assign index 0
x10646:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strncmp$1:	; SignedGreaterThanEqual 36 index size
x10651:	mov ax, [bp + 10]	; 3: -117 70 10
x10654:	cmp [bp + 12], ax	; 3: 57 70 12
x10657:	jge strncmp$36	; 4: 15 -115 -100 0

strncmp$2:	; BinaryAdd £temporary3984 left index
x10661:	mov si, [bp + 6]	; 3: -117 118 6
x10664:	add si, [bp + 12]	; 3: 3 118 12

strncmp$3:	; Deref £temporary3983 -> £temporary3984 £temporary3984 0

strncmp$4:	; NotEqual 10 £temporary3983 -> £temporary3984 0
x10667:	cmp byte [si], 0	; 3: -128 60 0
x10670:	jne strncmp$10	; 2: 117 25

strncmp$5:	; BinaryAdd £temporary3987 right index
x10672:	mov si, [bp + 8]	; 3: -117 118 8
x10675:	add si, [bp + 12]	; 3: 3 118 12

strncmp$6:	; Deref £temporary3986 -> £temporary3987 £temporary3987 0

strncmp$7:	; NotEqual 10 £temporary3986 -> £temporary3987 0
x10678:	cmp byte [si], 0	; 3: -128 60 0
x10681:	jne strncmp$10	; 2: 117 14

strncmp$8:	; SetReturnValue 0
x10683:	mov bx, 0	; 3: -69 0 0

strncmp$9:	; Return 0
x10686:	mov ax, [bp]	; 3: -117 70 0
x10689:	mov di, [bp + 4]	; 3: -117 126 4
x10692:	mov bp, [bp + 2]	; 3: -117 110 2
x10695:	jmp ax	; 2: -1 -32

strncmp$10:	; BinaryAdd £temporary3991 left index
x10697:	mov si, [bp + 6]	; 3: -117 118 6
x10700:	add si, [bp + 12]	; 3: 3 118 12

strncmp$11:	; Deref £temporary3990 -> £temporary3991 £temporary3991 0

strncmp$12:	; NotEqual 15 £temporary3990 -> £temporary3991 0
x10703:	cmp byte [si], 0	; 3: -128 60 0
x10706:	jne strncmp$15	; 2: 117 14

strncmp$13:	; SetReturnValue -1
x10708:	mov bx, -1	; 3: -69 -1 -1

strncmp$14:	; Return -1
x10711:	mov ax, [bp]	; 3: -117 70 0
x10714:	mov di, [bp + 4]	; 3: -117 126 4
x10717:	mov bp, [bp + 2]	; 3: -117 110 2
x10720:	jmp ax	; 2: -1 -32

strncmp$15:	; BinaryAdd £temporary3994 right index
x10722:	mov si, [bp + 8]	; 3: -117 118 8
x10725:	add si, [bp + 12]	; 3: 3 118 12

strncmp$16:	; Deref £temporary3993 -> £temporary3994 £temporary3994 0

strncmp$17:	; NotEqual 20 £temporary3993 -> £temporary3994 0
x10728:	cmp byte [si], 0	; 3: -128 60 0
x10731:	jne strncmp$20	; 2: 117 14

strncmp$18:	; SetReturnValue 1
x10733:	mov bx, 1	; 3: -69 1 0

strncmp$19:	; Return 1
x10736:	mov ax, [bp]	; 3: -117 70 0
x10739:	mov di, [bp + 4]	; 3: -117 126 4
x10742:	mov bp, [bp + 2]	; 3: -117 110 2
x10745:	jmp ax	; 2: -1 -32

strncmp$20:	; BinaryAdd £temporary3997 left index
x10747:	mov si, [bp + 6]	; 3: -117 118 6
x10750:	add si, [bp + 12]	; 3: 3 118 12

strncmp$21:	; Deref £temporary3996 -> £temporary3997 £temporary3997 0

strncmp$22:	; BinaryAdd £temporary3999 right index
x10753:	mov di, [bp + 8]	; 3: -117 126 8
x10756:	add di, [bp + 12]	; 3: 3 126 12

strncmp$23:	; Deref £temporary3998 -> £temporary3999 £temporary3999 0

strncmp$24:	; SignedGreaterThanEqual 27 £temporary3996 -> £temporary3997 £temporary3998 -> £temporary3999
x10759:	mov al, [di]	; 2: -118 5
x10761:	cmp [si], al	; 2: 56 4
x10763:	jge strncmp$27	; 2: 125 14

strncmp$25:	; SetReturnValue -1
x10765:	mov bx, -1	; 3: -69 -1 -1

strncmp$26:	; Return -1
x10768:	mov ax, [bp]	; 3: -117 70 0
x10771:	mov di, [bp + 4]	; 3: -117 126 4
x10774:	mov bp, [bp + 2]	; 3: -117 110 2
x10777:	jmp ax	; 2: -1 -32

strncmp$27:	; BinaryAdd £temporary4002 left index
x10779:	mov si, [bp + 6]	; 3: -117 118 6
x10782:	add si, [bp + 12]	; 3: 3 118 12

strncmp$28:	; Deref £temporary4001 -> £temporary4002 £temporary4002 0

strncmp$29:	; BinaryAdd £temporary4004 right index
x10785:	mov di, [bp + 8]	; 3: -117 126 8
x10788:	add di, [bp + 12]	; 3: 3 126 12

strncmp$30:	; Deref £temporary4003 -> £temporary4004 £temporary4004 0

strncmp$31:	; SignedLessThanEqual 34 £temporary4001 -> £temporary4002 £temporary4003 -> £temporary4004
x10791:	mov al, [di]	; 2: -118 5
x10793:	cmp [si], al	; 2: 56 4
x10795:	jle strncmp$34	; 2: 126 14

strncmp$32:	; SetReturnValue 1
x10797:	mov bx, 1	; 3: -69 1 0

strncmp$33:	; Return 1
x10800:	mov ax, [bp]	; 3: -117 70 0
x10803:	mov di, [bp + 4]	; 3: -117 126 4
x10806:	mov bp, [bp + 2]	; 3: -117 110 2
x10809:	jmp ax	; 2: -1 -32

strncmp$34:	; Increment index
x10811:	inc word [bp + 12]	; 3: -1 70 12

strncmp$35:	; Goto 1
x10814:	jmp strncmp$1	; 3: -23 90 -1

strncmp$36:	; SetReturnValue 0
x10817:	mov bx, 0	; 3: -69 0 0

strncmp$37:	; Return 0
x10820:	mov ax, [bp]	; 3: -117 70 0
x10823:	mov di, [bp + 4]	; 3: -117 126 4
x10826:	mov bp, [bp + 2]	; 3: -117 110 2
x10829:	jmp ax	; 2: -1 -32

strncmp$38:	; FunctionEnd strncmp

strrchr:	; Assign result 0
x10831:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

strrchr$1:	; IntegralToIntegral £temporary4017 i
x10836:	mov ax, [bp + 8]	; 3: -117 70 8
x10839:	cmp ax, 0	; 3: -125 -8 0
x10842:	jge strrchr$2	; 2: 125 4
x10844:	neg ax	; 2: -9 -40
x10846:	neg al	; 2: -10 -40

strrchr$2:	; Assign c £temporary4017
x10848:	mov [bp + 14], al	; 3: -120 70 14

strrchr$3:	; Assign index 0
x10851:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strrchr$4:	; BinaryAdd £temporary4019 text index
x10856:	mov si, [bp + 6]	; 3: -117 118 6
x10859:	add si, [bp + 10]	; 3: 3 118 10

strrchr$5:	; Deref £temporary4018 -> £temporary4019 £temporary4019 0

strrchr$6:	; Equal 16 £temporary4018 -> £temporary4019 0
x10862:	cmp byte [si], 0	; 3: -128 60 0
x10865:	je strrchr$16	; 2: 116 27

strrchr$7:	; BinaryAdd £temporary4023 text index
x10867:	mov si, [bp + 6]	; 3: -117 118 6
x10870:	add si, [bp + 10]	; 3: 3 118 10

strrchr$8:	; Deref £temporary4022 -> £temporary4023 £temporary4023 0

strrchr$9:	; NotEqual 14 £temporary4022 -> £temporary4023 c
x10873:	mov al, [bp + 14]	; 3: -118 70 14
x10876:	cmp [si], al	; 2: 56 4
x10878:	jne strrchr$14	; 2: 117 9

strrchr$10:	; BinaryAdd £temporary4026 text index
x10880:	mov si, [bp + 6]	; 3: -117 118 6
x10883:	add si, [bp + 10]	; 3: 3 118 10

strrchr$11:	; Deref £temporary4025 -> £temporary4026 £temporary4026 0

strrchr$12:	; address £temporary4027 £temporary4025 -> £temporary4026

strrchr$13:	; Assign result £temporary4027
x10886:	mov [bp + 12], si	; 3: -119 118 12

strrchr$14:	; Increment index
x10889:	inc word [bp + 10]	; 3: -1 70 10

strrchr$15:	; Goto 4
x10892:	jmp strrchr$4	; 2: -21 -38

strrchr$16:	; SetReturnValue result
x10894:	mov bx, [bp + 12]	; 3: -117 94 12

strrchr$17:	; Return result
x10897:	mov ax, [bp]	; 3: -117 70 0
x10900:	mov di, [bp + 4]	; 3: -117 126 4
x10903:	mov bp, [bp + 2]	; 3: -117 110 2
x10906:	jmp ax	; 2: -1 -32

strrchr$18:	; FunctionEnd strrchr

memcpy:	; IntegralToIntegral £temporary4141 target
x10908:	mov ax, [bp + 6]	; 3: -117 70 6

memcpy$1:	; Assign charTarget £temporary4141
x10911:	mov [bp + 12], ax	; 3: -119 70 12

memcpy$2:	; IntegralToIntegral £temporary4142 source
x10914:	mov ax, [bp + 8]	; 3: -117 70 8

memcpy$3:	; Assign charSource £temporary4142
x10917:	mov [bp + 14], ax	; 3: -119 70 14

memcpy$4:	; Assign index 0
x10920:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

memcpy$5:	; SignedGreaterThanEqual 13 index size
x10925:	mov ax, [bp + 10]	; 3: -117 70 10
x10928:	cmp [bp + 16], ax	; 3: 57 70 16
x10931:	jge memcpy$13	; 2: 125 21

memcpy$6:	; BinaryAdd £temporary4146 charTarget index
x10933:	mov si, [bp + 12]	; 3: -117 118 12
x10936:	add si, [bp + 16]	; 3: 3 118 16

memcpy$7:	; Deref £temporary4145 -> £temporary4146 £temporary4146 0

memcpy$8:	; BinaryAdd £temporary4148 charSource index
x10939:	mov di, [bp + 14]	; 3: -117 126 14
x10942:	add di, [bp + 16]	; 3: 3 126 16

memcpy$9:	; Deref £temporary4147 -> £temporary4148 £temporary4148 0

memcpy$10:	; Assign £temporary4145 -> £temporary4146 £temporary4147 -> £temporary4148
x10945:	mov al, [di]	; 2: -118 5
x10947:	mov [si], al	; 2: -120 4

memcpy$11:	; Increment index
x10949:	inc word [bp + 16]	; 3: -1 70 16

memcpy$12:	; Goto 5
x10952:	jmp memcpy$5	; 2: -21 -29

memcpy$13:	; IntegralToIntegral £temporary4149 target
x10954:	mov bx, [bp + 6]	; 3: -117 94 6

memcpy$14:	; SetReturnValue £temporary4149

memcpy$15:	; Return £temporary4149
x10957:	mov ax, [bp]	; 3: -117 70 0
x10960:	mov di, [bp + 4]	; 3: -117 126 4
x10963:	mov bp, [bp + 2]	; 3: -117 110 2
x10966:	jmp ax	; 2: -1 -32

memcpy$16:	; FunctionEnd memcpy

memmove:	; IntegralToIntegral £temporary4150 target
x10968:	mov ax, [bp + 6]	; 3: -117 70 6

memmove$1:	; Assign charTarget £temporary4150
x10971:	mov [bp + 12], ax	; 3: -119 70 12

memmove$2:	; IntegralToIntegral £temporary4151 source
x10974:	mov ax, [bp + 8]	; 3: -117 70 8

memmove$3:	; Assign charSource £temporary4151
x10977:	mov [bp + 14], ax	; 3: -119 70 14

memmove$4:	; SignedGreaterThanEqual 14 source target
x10980:	mov ax, [bp + 6]	; 3: -117 70 6
x10983:	cmp [bp + 8], ax	; 3: 57 70 8
x10986:	jge memmove$14	; 2: 125 34

memmove$5:	; BinarySubtract index size 1
x10988:	mov ax, [bp + 10]	; 3: -117 70 10
x10991:	dec ax	; 1: 72
x10992:	mov [bp + 16], ax	; 3: -119 70 16

memmove$6:	; SignedLessThan 23 index 0
x10995:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x10999:	jl memmove$23	; 2: 124 55

memmove$7:	; BinaryAdd £temporary4157 charTarget index
x11001:	mov si, [bp + 12]	; 3: -117 118 12
x11004:	add si, [bp + 16]	; 3: 3 118 16

memmove$8:	; Deref £temporary4156 -> £temporary4157 £temporary4157 0

memmove$9:	; BinaryAdd £temporary4159 charSource index
x11007:	mov di, [bp + 14]	; 3: -117 126 14
x11010:	add di, [bp + 16]	; 3: 3 126 16

memmove$10:	; Deref £temporary4158 -> £temporary4159 £temporary4159 0

memmove$11:	; Assign £temporary4156 -> £temporary4157 £temporary4158 -> £temporary4159
x11013:	mov al, [di]	; 2: -118 5
x11015:	mov [si], al	; 2: -120 4

memmove$12:	; Decrement index
x11017:	dec word [bp + 16]	; 3: -1 78 16

memmove$13:	; Goto 6
x11020:	jmp memmove$6	; 2: -21 -27

memmove$14:	; Assign index 0
x11022:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

memmove$15:	; SignedGreaterThanEqual 23 index size
x11027:	mov ax, [bp + 10]	; 3: -117 70 10
x11030:	cmp [bp + 16], ax	; 3: 57 70 16
x11033:	jge memmove$23	; 2: 125 21

memmove$16:	; BinaryAdd £temporary4163 charTarget index
x11035:	mov si, [bp + 12]	; 3: -117 118 12
x11038:	add si, [bp + 16]	; 3: 3 118 16

memmove$17:	; Deref £temporary4162 -> £temporary4163 £temporary4163 0

memmove$18:	; BinaryAdd £temporary4165 charSource index
x11041:	mov di, [bp + 14]	; 3: -117 126 14
x11044:	add di, [bp + 16]	; 3: 3 126 16

memmove$19:	; Deref £temporary4164 -> £temporary4165 £temporary4165 0

memmove$20:	; Assign £temporary4162 -> £temporary4163 £temporary4164 -> £temporary4165
x11047:	mov al, [di]	; 2: -118 5
x11049:	mov [si], al	; 2: -120 4

memmove$21:	; Increment index
x11051:	inc word [bp + 16]	; 3: -1 70 16

memmove$22:	; Goto 15
x11054:	jmp memmove$15	; 2: -21 -29

memmove$23:	; IntegralToIntegral £temporary4166 target
x11056:	mov bx, [bp + 6]	; 3: -117 94 6

memmove$24:	; SetReturnValue £temporary4166

memmove$25:	; Return £temporary4166
x11059:	mov ax, [bp]	; 3: -117 70 0
x11062:	mov di, [bp + 4]	; 3: -117 126 4
x11065:	mov bp, [bp + 2]	; 3: -117 110 2
x11068:	jmp ax	; 2: -1 -32

memmove$26:	; FunctionEnd memmove

memset:	; IntegralToIntegral £temporary4192 block
x11070:	mov ax, [bp + 6]	; 3: -117 70 6

memset$1:	; Assign charBlock £temporary4192
x11073:	mov [bp + 12], ax	; 3: -119 70 12

memset$2:	; IntegralToIntegral £temporary4193 i
x11076:	mov ax, [bp + 8]	; 3: -117 70 8
x11079:	cmp ax, 0	; 3: -125 -8 0
x11082:	jge memset$3	; 2: 125 4
x11084:	neg ax	; 2: -9 -40
x11086:	neg al	; 2: -10 -40

memset$3:	; Assign c £temporary4193
x11088:	mov [bp + 14], al	; 3: -120 70 14

memset$4:	; Assign index 0
x11091:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

memset$5:	; SignedGreaterThanEqual 11 index size
x11096:	mov ax, [bp + 10]	; 3: -117 70 10
x11099:	cmp [bp + 15], ax	; 3: 57 70 15
x11102:	jge memset$11	; 2: 125 16

memset$6:	; BinaryAdd £temporary4197 charBlock index
x11104:	mov si, [bp + 12]	; 3: -117 118 12
x11107:	add si, [bp + 15]	; 3: 3 118 15

memset$7:	; Deref £temporary4196 -> £temporary4197 £temporary4197 0

memset$8:	; Assign £temporary4196 -> £temporary4197 c
x11110:	mov al, [bp + 14]	; 3: -118 70 14
x11113:	mov [si], al	; 2: -120 4

memset$9:	; Increment index
x11115:	inc word [bp + 15]	; 3: -1 70 15

memset$10:	; Goto 5
x11118:	jmp memset$5	; 2: -21 -24

memset$11:	; SetReturnValue block
x11120:	mov bx, [bp + 6]	; 3: -117 94 6

memset$12:	; Return block
x11123:	mov ax, [bp]	; 3: -117 70 0
x11126:	mov di, [bp + 4]	; 3: -117 126 4
x11129:	mov bp, [bp + 2]	; 3: -117 110 2
x11132:	jmp ax	; 2: -1 -32

memset$13:	; FunctionEnd memset

memchr:	; IntegralToIntegral £temporary4181 block
x11134:	mov ax, [bp + 6]	; 3: -117 70 6

memchr$1:	; Assign charBlock £temporary4181
x11137:	mov [bp + 14], ax	; 3: -119 70 14

memchr$2:	; IntegralToIntegral £temporary4182 i
x11140:	mov ax, [bp + 8]	; 3: -117 70 8
x11143:	cmp ax, 0	; 3: -125 -8 0
x11146:	jge memchr$3	; 2: 125 4
x11148:	neg ax	; 2: -9 -40
x11150:	neg al	; 2: -10 -40

memchr$3:	; Assign c £temporary4182
x11152:	mov [bp + 16], al	; 3: -120 70 16

memchr$4:	; Assign index 0
x11155:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

memchr$5:	; SignedGreaterThanEqual 17 index size
x11160:	mov ax, [bp + 10]	; 3: -117 70 10
x11163:	cmp [bp + 12], ax	; 3: 57 70 12
x11166:	jge memchr$17	; 2: 125 35

memchr$6:	; BinaryAdd £temporary4186 charBlock index
x11168:	mov si, [bp + 14]	; 3: -117 118 14
x11171:	add si, [bp + 12]	; 3: 3 118 12

memchr$7:	; Deref £temporary4185 -> £temporary4186 £temporary4186 0

memchr$8:	; NotEqual 15 £temporary4185 -> £temporary4186 c
x11174:	mov al, [bp + 16]	; 3: -118 70 16
x11177:	cmp [si], al	; 2: 56 4
x11179:	jne memchr$15	; 2: 117 17

memchr$9:	; BinaryAdd £temporary4189 charBlock index
x11181:	mov bx, [bp + 14]	; 3: -117 94 14
x11184:	add bx, [bp + 12]	; 3: 3 94 12

memchr$10:	; Deref £temporary4188 -> £temporary4189 £temporary4189 0

memchr$11:	; address £temporary4190 £temporary4188 -> £temporary4189

memchr$12:	; IntegralToIntegral £temporary4191 £temporary4190

memchr$13:	; SetReturnValue £temporary4191

memchr$14:	; Return £temporary4191
x11187:	mov ax, [bp]	; 3: -117 70 0
x11190:	mov di, [bp + 4]	; 3: -117 126 4
x11193:	mov bp, [bp + 2]	; 3: -117 110 2
x11196:	jmp ax	; 2: -1 -32

memchr$15:	; Increment index
x11198:	inc word [bp + 12]	; 3: -1 70 12

memchr$16:	; Goto 5
x11201:	jmp memchr$5	; 2: -21 -43

memchr$17:	; SetReturnValue 0
x11203:	mov bx, 0	; 3: -69 0 0

memchr$18:	; Return 0
x11206:	mov ax, [bp]	; 3: -117 70 0
x11209:	mov di, [bp + 4]	; 3: -117 126 4
x11212:	mov bp, [bp + 2]	; 3: -117 110 2
x11215:	jmp ax	; 2: -1 -32

memchr$19:	; FunctionEnd memchr

memcmp:	; IntegralToIntegral £temporary4167 left
x11217:	mov ax, [bp + 6]	; 3: -117 70 6

memcmp$1:	; Assign charLeft £temporary4167
x11220:	mov [bp + 12], ax	; 3: -119 70 12

memcmp$2:	; IntegralToIntegral £temporary4168 right
x11223:	mov ax, [bp + 8]	; 3: -117 70 8

memcmp$3:	; Assign charRight £temporary4168
x11226:	mov [bp + 14], ax	; 3: -119 70 14

memcmp$4:	; Assign index 0
x11229:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

memcmp$5:	; SignedGreaterThanEqual 22 index size
x11234:	mov ax, [bp + 10]	; 3: -117 70 10
x11237:	cmp [bp + 16], ax	; 3: 57 70 16
x11240:	jge memcmp$22	; 2: 125 69

memcmp$6:	; BinaryAdd £temporary4172 charLeft index
x11242:	mov si, [bp + 12]	; 3: -117 118 12
x11245:	add si, [bp + 16]	; 3: 3 118 16

memcmp$7:	; Deref £temporary4171 -> £temporary4172 £temporary4172 0

memcmp$8:	; BinaryAdd £temporary4174 charRight index
x11248:	mov di, [bp + 14]	; 3: -117 126 14
x11251:	add di, [bp + 16]	; 3: 3 126 16

memcmp$9:	; Deref £temporary4173 -> £temporary4174 £temporary4174 0

memcmp$10:	; SignedGreaterThanEqual 13 £temporary4171 -> £temporary4172 £temporary4173 -> £temporary4174
x11254:	mov al, [di]	; 2: -118 5
x11256:	cmp [si], al	; 2: 56 4
x11258:	jge memcmp$13	; 2: 125 14

memcmp$11:	; SetReturnValue -1
x11260:	mov bx, -1	; 3: -69 -1 -1

memcmp$12:	; Return -1
x11263:	mov ax, [bp]	; 3: -117 70 0
x11266:	mov di, [bp + 4]	; 3: -117 126 4
x11269:	mov bp, [bp + 2]	; 3: -117 110 2
x11272:	jmp ax	; 2: -1 -32

memcmp$13:	; BinaryAdd £temporary4177 charLeft index
x11274:	mov si, [bp + 12]	; 3: -117 118 12
x11277:	add si, [bp + 16]	; 3: 3 118 16

memcmp$14:	; Deref £temporary4176 -> £temporary4177 £temporary4177 0

memcmp$15:	; BinaryAdd £temporary4179 charRight index
x11280:	mov di, [bp + 14]	; 3: -117 126 14
x11283:	add di, [bp + 16]	; 3: 3 126 16

memcmp$16:	; Deref £temporary4178 -> £temporary4179 £temporary4179 0

memcmp$17:	; SignedLessThanEqual 20 £temporary4176 -> £temporary4177 £temporary4178 -> £temporary4179
x11286:	mov al, [di]	; 2: -118 5
x11288:	cmp [si], al	; 2: 56 4
x11290:	jle memcmp$20	; 2: 126 14

memcmp$18:	; SetReturnValue 1
x11292:	mov bx, 1	; 3: -69 1 0

memcmp$19:	; Return 1
x11295:	mov ax, [bp]	; 3: -117 70 0
x11298:	mov di, [bp + 4]	; 3: -117 126 4
x11301:	mov bp, [bp + 2]	; 3: -117 110 2
x11304:	jmp ax	; 2: -1 -32

memcmp$20:	; Increment index
x11306:	inc word [bp + 16]	; 3: -1 70 16

memcmp$21:	; Goto 5
x11309:	jmp memcmp$5	; 2: -21 -77

memcmp$22:	; SetReturnValue 0
x11311:	mov bx, 0	; 3: -69 0 0

memcmp$23:	; Return 0
x11314:	mov ax, [bp]	; 3: -117 70 0
x11317:	mov di, [bp + 4]	; 3: -117 126 4
x11320:	mov bp, [bp + 2]	; 3: -117 110 2
x11323:	jmp ax	; 2: -1 -32

memcmp$24:	; FunctionEnd memcmp

strspn:	; Assign index 0
x11325:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strspn$1:	; BinaryAdd £temporary4029 mainString index
x11330:	mov si, [bp + 6]	; 3: -117 118 6
x11333:	add si, [bp + 10]	; 3: 3 118 10

strspn$2:	; Deref £temporary4028 -> £temporary4029 £temporary4029 0

strspn$3:	; Equal 18 £temporary4028 -> £temporary4029 0
x11336:	cmp byte [si], 0	; 3: -128 60 0
x11339:	je strspn$18	; 2: 116 66

strspn$4:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strspn$5:	; Parameter 12 charSet 6
x11341:	mov ax, [bp + 8]	; 3: -117 70 8
x11344:	mov [bp + 18], ax	; 3: -119 70 18

strspn$6:	; BinaryAdd £temporary4033 mainString index
x11347:	mov si, [bp + 6]	; 3: -117 118 6
x11350:	add si, [bp + 10]	; 3: 3 118 10

strspn$7:	; Deref £temporary4032 -> £temporary4033 £temporary4033 0

strspn$8:	; IntegralToIntegral £temporary4034 £temporary4032 -> £temporary4033
x11353:	mov al, [si]	; 2: -118 4
x11355:	and ax, 255	; 3: 37 -1 0
x11358:	cmp al, 0	; 2: 60 0
x11360:	jge strspn$9	; 2: 125 4
x11362:	neg al	; 2: -10 -40
x11364:	neg ax	; 2: -9 -40

strspn$9:	; Parameter 12 £temporary4034 8
x11366:	mov [bp + 20], ax	; 3: -119 70 20

strspn$10:	; Call 12 strchr 0
x11369:	mov word [bp + 12], strspn$11	; 5: -57 70 12 119 44
x11374:	mov [bp + 14], bp	; 3: -119 110 14
x11377:	add bp, 12	; 3: -125 -59 12
x11380:	jmp strchr	; 3: -23 127 -15

strspn$11:	; PostCall 12

strspn$12:	; GetReturnValue £temporary4035

strspn$13:	; NotEqual 16 £temporary4035 0
x11383:	cmp bx, 0	; 3: -125 -5 0
x11386:	jne strspn$16	; 2: 117 14

strspn$14:	; SetReturnValue index
x11388:	mov bx, [bp + 10]	; 3: -117 94 10

strspn$15:	; Return index
x11391:	mov ax, [bp]	; 3: -117 70 0
x11394:	mov di, [bp + 4]	; 3: -117 126 4
x11397:	mov bp, [bp + 2]	; 3: -117 110 2
x11400:	jmp ax	; 2: -1 -32

strspn$16:	; Increment index
x11402:	inc word [bp + 10]	; 3: -1 70 10

strspn$17:	; Goto 1
x11405:	jmp strspn$1	; 2: -21 -77

strspn$18:	; SetReturnValue -1
x11407:	mov bx, -1	; 3: -69 -1 -1

strspn$19:	; Return -1
x11410:	mov ax, [bp]	; 3: -117 70 0
x11413:	mov di, [bp + 4]	; 3: -117 126 4
x11416:	mov bp, [bp + 2]	; 3: -117 110 2
x11419:	jmp ax	; 2: -1 -32

strspn$20:	; FunctionEnd strspn

strcspn:	; Assign index 0
x11421:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strcspn$1:	; BinaryAdd £temporary4040 mainString index
x11426:	mov si, [bp + 6]	; 3: -117 118 6
x11429:	add si, [bp + 10]	; 3: 3 118 10

strcspn$2:	; Deref £temporary4039 -> £temporary4040 £temporary4040 0

strcspn$3:	; Equal 18 £temporary4039 -> £temporary4040 0
x11432:	cmp byte [si], 0	; 3: -128 60 0
x11435:	je strcspn$18	; 2: 116 66

strcspn$4:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strcspn$5:	; Parameter 12 charSet 6
x11437:	mov ax, [bp + 8]	; 3: -117 70 8
x11440:	mov [bp + 18], ax	; 3: -119 70 18

strcspn$6:	; BinaryAdd £temporary4044 mainString index
x11443:	mov si, [bp + 6]	; 3: -117 118 6
x11446:	add si, [bp + 10]	; 3: 3 118 10

strcspn$7:	; Deref £temporary4043 -> £temporary4044 £temporary4044 0

strcspn$8:	; IntegralToIntegral £temporary4045 £temporary4043 -> £temporary4044
x11449:	mov al, [si]	; 2: -118 4
x11451:	and ax, 255	; 3: 37 -1 0
x11454:	cmp al, 0	; 2: 60 0
x11456:	jge strcspn$9	; 2: 125 4
x11458:	neg al	; 2: -10 -40
x11460:	neg ax	; 2: -9 -40

strcspn$9:	; Parameter 12 £temporary4045 8
x11462:	mov [bp + 20], ax	; 3: -119 70 20

strcspn$10:	; Call 12 strchr 0
x11465:	mov word [bp + 12], strcspn$11	; 5: -57 70 12 -41 44
x11470:	mov [bp + 14], bp	; 3: -119 110 14
x11473:	add bp, 12	; 3: -125 -59 12
x11476:	jmp strchr	; 3: -23 31 -15

strcspn$11:	; PostCall 12

strcspn$12:	; GetReturnValue £temporary4046

strcspn$13:	; Equal 16 £temporary4046 0
x11479:	cmp bx, 0	; 3: -125 -5 0
x11482:	je strcspn$16	; 2: 116 14

strcspn$14:	; SetReturnValue index
x11484:	mov bx, [bp + 10]	; 3: -117 94 10

strcspn$15:	; Return index
x11487:	mov ax, [bp]	; 3: -117 70 0
x11490:	mov di, [bp + 4]	; 3: -117 126 4
x11493:	mov bp, [bp + 2]	; 3: -117 110 2
x11496:	jmp ax	; 2: -1 -32

strcspn$16:	; Increment index
x11498:	inc word [bp + 10]	; 3: -1 70 10

strcspn$17:	; Goto 1
x11501:	jmp strcspn$1	; 2: -21 -77

strcspn$18:	; SetReturnValue -1
x11503:	mov bx, -1	; 3: -69 -1 -1

strcspn$19:	; Return -1
x11506:	mov ax, [bp]	; 3: -117 70 0
x11509:	mov di, [bp + 4]	; 3: -117 126 4
x11512:	mov bp, [bp + 2]	; 3: -117 110 2
x11515:	jmp ax	; 2: -1 -32

strcspn$20:	; FunctionEnd strcspn

strerror:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strerror$1:	; Call 8 localeconv 0
x11517:	mov word [bp + 8], strerror$2	; 5: -57 70 8 11 45
x11522:	mov [bp + 10], bp	; 3: -119 110 10
x11525:	add bp, 8	; 3: -125 -59 8
x11528:	jmp localeconv	; 3: -23 -87 -19

strerror$2:	; PostCall 8

strerror$3:	; GetReturnValue £temporary4080

strerror$4:	; Assign localeConvPtr £temporary4080
x11531:	mov [bp + 8], bx	; 3: -119 94 8

strerror$5:	; Equal 9 localeConvPtr 0
x11534:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x11538:	je strerror$9	; 2: 116 8

strerror$6:	; Deref £temporary4082 -> localeConvPtr localeConvPtr 16
x11540:	mov si, [bp + 8]	; 3: -117 118 8

strerror$7:	; Assign £temporary4086 £temporary4082 -> localeConvPtr
x11543:	mov ax, [si + 16]	; 3: -117 68 16

strerror$8:	; Goto 10
x11546:	jmp strerror$10	; 2: -21 3

strerror$9:	; Assign £temporary4086 0
x11548:	mov ax, 0	; 3: -72 0 0

strerror$10:	; Assign messageList £temporary4086
x11551:	mov [bp + 10], ax	; 3: -119 70 10

strerror$11:	; Equal 14 messageList 0
x11554:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x11558:	je strerror$14	; 2: 116 5

strerror$12:	; Assign £temporary4091 messageList
x11560:	mov ax, [bp + 10]	; 3: -117 70 10

strerror$13:	; Goto 15
x11563:	jmp strerror$15	; 2: -21 3

strerror$14:	; Assign £temporary4091 enMessageList
x11565:	mov ax, enMessageList	; 3: -72 76 28

strerror$15:	; Assign messageList £temporary4091
x11568:	mov [bp + 10], ax	; 3: -119 70 10

strerror$16:	; UnsignedMultiply £temporary4093 errno 2
x11571:	mov ax, [bp + 6]	; 3: -117 70 6
x11574:	xor dx, dx	; 2: 49 -46
x11576:	mul word [int2$2#]	; 4: -9 38 78 45

strerror$17:	; BinaryAdd £temporary4094 messageList £temporary4093
x11580:	mov si, [bp + 10]	; 3: -117 118 10
x11583:	add si, ax	; 2: 1 -58

strerror$18:	; Deref £temporary4092 -> £temporary4094 £temporary4094 0

strerror$19:	; SetReturnValue £temporary4092 -> £temporary4094
x11585:	mov bx, [si]	; 2: -117 28

strerror$20:	; Return £temporary4092 -> £temporary4094
x11587:	mov ax, [bp]	; 3: -117 70 0
x11590:	mov di, [bp + 4]	; 3: -117 126 4
x11593:	mov bp, [bp + 2]	; 3: -117 110 2
x11596:	jmp ax	; 2: -1 -32

strerror$21:	; FunctionEnd strerror

int2$2#:
x11598:	dw 2	; 2: 2 0

strtok:	; Equal 37 string 0
x11600:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x11604:	je strtok$37	; 4: 15 -124 -106 0

strtok$1:	; Deref £temporary4096 -> string string 0
x11608:	mov si, [bp + 6]	; 3: -117 118 6

strtok$2:	; NotEqual 5 £temporary4096 -> string 0
x11611:	cmp byte [si], 0	; 3: -128 60 0
x11614:	jne strtok$5	; 2: 117 14

strtok$3:	; SetReturnValue 0
x11616:	mov bx, 0	; 3: -69 0 0

strtok$4:	; Return 0
x11619:	mov ax, [bp]	; 3: -117 70 0
x11622:	mov di, [bp + 4]	; 3: -117 126 4
x11625:	mov bp, [bp + 2]	; 3: -117 110 2
x11628:	jmp ax	; 2: -1 -32

strtok$5:	; Assign index 0
x11630:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strtok$6:	; BinaryAdd £temporary4099 string index
x11635:	mov si, [bp + 6]	; 3: -117 118 6
x11638:	add si, [bp + 10]	; 3: 3 118 10

strtok$7:	; Deref £temporary4098 -> £temporary4099 £temporary4099 0

strtok$8:	; Equal 31 £temporary4098 -> £temporary4099 0
x11641:	cmp byte [si], 0	; 3: -128 60 0
x11644:	je strtok$31	; 2: 116 88

strtok$9:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strtok$10:	; Parameter 14 charSet 6
x11646:	mov ax, [bp + 8]	; 3: -117 70 8
x11649:	mov [bp + 20], ax	; 3: -119 70 20

strtok$11:	; BinaryAdd £temporary4103 string index
x11652:	mov si, [bp + 6]	; 3: -117 118 6
x11655:	add si, [bp + 10]	; 3: 3 118 10

strtok$12:	; Deref £temporary4102 -> £temporary4103 £temporary4103 0

strtok$13:	; IntegralToIntegral £temporary4104 £temporary4102 -> £temporary4103
x11658:	mov al, [si]	; 2: -118 4
x11660:	and ax, 255	; 3: 37 -1 0
x11663:	cmp al, 0	; 2: 60 0
x11665:	jge strtok$14	; 2: 125 4
x11667:	neg al	; 2: -10 -40
x11669:	neg ax	; 2: -9 -40

strtok$14:	; Parameter 14 £temporary4104 8
x11671:	mov [bp + 22], ax	; 3: -119 70 22

strtok$15:	; Call 14 strchr 0
x11674:	mov word [bp + 14], strtok$16	; 5: -57 70 14 -88 45
x11679:	mov [bp + 16], bp	; 3: -119 110 16
x11682:	add bp, 14	; 3: -125 -59 14
x11685:	jmp strchr	; 3: -23 78 -16

strtok$16:	; PostCall 14

strtok$17:	; GetReturnValue £temporary4105

strtok$18:	; Equal 29 £temporary4105 0
x11688:	cmp bx, 0	; 3: -125 -5 0
x11691:	je strtok$29	; 2: 116 36

strtok$19:	; BinaryAdd £temporary4108 string index
x11693:	mov si, [bp + 6]	; 3: -117 118 6
x11696:	add si, [bp + 10]	; 3: 3 118 10

strtok$20:	; Deref £temporary4107 -> £temporary4108 £temporary4108 0

strtok$21:	; Assign £temporary4107 -> £temporary4108 0
x11699:	mov byte [si], 0	; 3: -58 4 0

strtok$22:	; BinaryAdd £temporary4109 index 1
x11702:	mov ax, [bp + 10]	; 3: -117 70 10
x11705:	inc ax	; 1: 64

strtok$23:	; BinaryAdd £temporary4111 string £temporary4109
x11706:	mov si, [bp + 6]	; 3: -117 118 6
x11709:	add si, ax	; 2: 1 -58

strtok$24:	; Deref £temporary4110 -> £temporary4111 £temporary4111 0

strtok$25:	; address £temporary4112 £temporary4110 -> £temporary4111

strtok$26:	; Assign token £temporary4112
x11711:	mov [token], si	; 4: -119 54 -85 46

strtok$27:	; SetReturnValue string
x11715:	mov bx, [bp + 6]	; 3: -117 94 6

strtok$28:	; Return string
x11718:	mov ax, [bp]	; 3: -117 70 0
x11721:	mov di, [bp + 4]	; 3: -117 126 4
x11724:	mov bp, [bp + 2]	; 3: -117 110 2
x11727:	jmp ax	; 2: -1 -32

strtok$29:	; Increment index
x11729:	inc word [bp + 10]	; 3: -1 70 10

strtok$30:	; Goto 6
x11732:	jmp strtok$6	; 2: -21 -99

strtok$31:	; BinaryAdd £temporary4114 string index
x11734:	mov si, [bp + 6]	; 3: -117 118 6
x11737:	add si, [bp + 10]	; 3: 3 118 10

strtok$32:	; Deref £temporary4113 -> £temporary4114 £temporary4114 0

strtok$33:	; address £temporary4115 £temporary4113 -> £temporary4114

strtok$34:	; Assign token £temporary4115
x11740:	mov [token], si	; 4: -119 54 -85 46

strtok$35:	; SetReturnValue string
x11744:	mov bx, [bp + 6]	; 3: -117 94 6

strtok$36:	; Return string
x11747:	mov ax, [bp]	; 3: -117 70 0
x11750:	mov di, [bp + 4]	; 3: -117 126 4
x11753:	mov bp, [bp + 2]	; 3: -117 110 2
x11756:	jmp ax	; 2: -1 -32

strtok$37:	; NotEqual 40 token 0
x11758:	cmp word [token], 0	; 5: -125 62 -85 46 0
x11763:	jne strtok$40	; 2: 117 14

strtok$38:	; SetReturnValue 0
x11765:	mov bx, 0	; 3: -69 0 0

strtok$39:	; Return 0
x11768:	mov ax, [bp]	; 3: -117 70 0
x11771:	mov di, [bp + 4]	; 3: -117 126 4
x11774:	mov bp, [bp + 2]	; 3: -117 110 2
x11777:	jmp ax	; 2: -1 -32

strtok$40:	; NotEqual 43 (token,0) 0
x11779:	mov si, [token]	; 4: -117 54 -85 46
x11783:	cmp byte [si], 0	; 3: -128 60 0
x11786:	jne strtok$43	; 2: 117 14

strtok$41:	; SetReturnValue 0
x11788:	mov bx, 0	; 3: -69 0 0

strtok$42:	; Return 0
x11791:	mov ax, [bp]	; 3: -117 70 0
x11794:	mov di, [bp + 4]	; 3: -117 126 4
x11797:	mov bp, [bp + 2]	; 3: -117 110 2
x11800:	jmp ax	; 2: -1 -32

strtok$43:	; Assign index 0
x11802:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strtok$44:	; BinaryAdd £temporary4120 token index
x11807:	mov si, [token]	; 4: -117 54 -85 46
x11811:	add si, [bp + 10]	; 3: 3 118 10

strtok$45:	; Deref £temporary4119 -> £temporary4120 £temporary4120 0

strtok$46:	; Equal 70 £temporary4119 -> £temporary4120 0
x11814:	cmp byte [si], 0	; 3: -128 60 0
x11817:	je strtok$70	; 2: 116 97

strtok$47:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strtok$48:	; Parameter 14 charSet 6
x11819:	mov ax, [bp + 8]	; 3: -117 70 8
x11822:	mov [bp + 20], ax	; 3: -119 70 20

strtok$49:	; BinaryAdd £temporary4124 token index
x11825:	mov si, [token]	; 4: -117 54 -85 46
x11829:	add si, [bp + 10]	; 3: 3 118 10

strtok$50:	; Deref £temporary4123 -> £temporary4124 £temporary4124 0

strtok$51:	; IntegralToIntegral £temporary4125 £temporary4123 -> £temporary4124
x11832:	mov al, [si]	; 2: -118 4
x11834:	and ax, 255	; 3: 37 -1 0
x11837:	cmp al, 0	; 2: 60 0
x11839:	jge strtok$52	; 2: 125 4
x11841:	neg al	; 2: -10 -40
x11843:	neg ax	; 2: -9 -40

strtok$52:	; Parameter 14 £temporary4125 8
x11845:	mov [bp + 22], ax	; 3: -119 70 22

strtok$53:	; Call 14 strchr 0
x11848:	mov word [bp + 14], strtok$54	; 5: -57 70 14 86 46
x11853:	mov [bp + 16], bp	; 3: -119 110 16
x11856:	add bp, 14	; 3: -125 -59 14
x11859:	jmp strchr	; 3: -23 -96 -17

strtok$54:	; PostCall 14

strtok$55:	; GetReturnValue £temporary4126

strtok$56:	; Equal 68 £temporary4126 0
x11862:	cmp bx, 0	; 3: -125 -5 0
x11865:	je strtok$68	; 2: 116 44

strtok$57:	; Assign tokenStart2 token
x11867:	mov ax, [token]	; 3: -95 -85 46
x11870:	mov [bp + 14], ax	; 3: -119 70 14

strtok$58:	; BinaryAdd £temporary4129 token index
x11873:	mov si, [token]	; 4: -117 54 -85 46
x11877:	add si, [bp + 10]	; 3: 3 118 10

strtok$59:	; Deref £temporary4128 -> £temporary4129 £temporary4129 0

strtok$60:	; Assign £temporary4128 -> £temporary4129 0
x11880:	mov byte [si], 0	; 3: -58 4 0

strtok$61:	; BinaryAdd £temporary4130 index 1
x11883:	mov ax, [bp + 10]	; 3: -117 70 10
x11886:	inc ax	; 1: 64

strtok$62:	; BinaryAdd £temporary4132 token £temporary4130
x11887:	mov si, [token]	; 4: -117 54 -85 46
x11891:	add si, ax	; 2: 1 -58

strtok$63:	; Deref £temporary4131 -> £temporary4132 £temporary4132 0

strtok$64:	; address £temporary4133 £temporary4131 -> £temporary4132

strtok$65:	; Assign token £temporary4133
x11893:	mov [token], si	; 4: -119 54 -85 46

strtok$66:	; SetReturnValue tokenStart2
x11897:	mov bx, [bp + 14]	; 3: -117 94 14

strtok$67:	; Return tokenStart2
x11900:	mov ax, [bp]	; 3: -117 70 0
x11903:	mov di, [bp + 4]	; 3: -117 126 4
x11906:	mov bp, [bp + 2]	; 3: -117 110 2
x11909:	jmp ax	; 2: -1 -32

strtok$68:	; Increment index
x11911:	inc word [bp + 10]	; 3: -1 70 10

strtok$69:	; Goto 44
x11914:	jmp strtok$44	; 2: -21 -109

strtok$70:	; Assign tokenStart token
x11916:	mov ax, [token]	; 3: -95 -85 46
x11919:	mov [bp + 12], ax	; 3: -119 70 12

strtok$71:	; BinaryAdd £temporary4135 token index
x11922:	mov si, [token]	; 4: -117 54 -85 46
x11926:	add si, [bp + 10]	; 3: 3 118 10

strtok$72:	; Deref £temporary4134 -> £temporary4135 £temporary4135 0

strtok$73:	; address £temporary4136 £temporary4134 -> £temporary4135

strtok$74:	; Assign token £temporary4136
x11929:	mov [token], si	; 4: -119 54 -85 46

strtok$75:	; SetReturnValue tokenStart
x11933:	mov bx, [bp + 12]	; 3: -117 94 12

strtok$76:	; Return tokenStart
x11936:	mov ax, [bp]	; 3: -117 70 0
x11939:	mov di, [bp + 4]	; 3: -117 126 4
x11942:	mov bp, [bp + 2]	; 3: -117 110 2
x11945:	jmp ax	; 2: -1 -32

strtok$77:	; FunctionEnd strtok

token:
x11947:	dw 0	; 2: 0 0

$StackTop:
x11949:
