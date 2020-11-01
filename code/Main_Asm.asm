	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 -40 56
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 -40 56 0 0
	; Initialize Argument List
x283:	mov si, bp	; 2: -119 -18
x285:	mov word [bp], $Path	; 5: -57 70 0 -54 56
x290:	add bp, 2	; 3: -125 -59 2
x293:	mov ax, 1	; 3: -72 1 0
x296:	mov bx, 129	; 3: -69 -127 0
x299:	cmp byte [bx], 13	; 3: -128 63 13
x302:	je $ListDone	; 2: 116 34

$SpaceLoop:
x304:	cmp byte [bx], 32	; 3: -128 63 32
x307:	jne $WordStart	; 2: 117 3
x309:	inc bx	; 1: 67
x310:	jmp $SpaceLoop	; 2: -21 -8

$WordStart:
x312:	inc ax	; 1: 64
x313:	mov [bp], bx	; 3: -119 94 0
x316:	add bp, 2	; 3: -125 -59 2

$WordLoop:
x319:	cmp byte [bx], 32	; 3: -128 63 32
x322:	je $WordDone	; 2: 116 8
x324:	cmp byte [bx], 13	; 3: -128 63 13
x327:	je $ListDone	; 2: 116 9
x329:	inc bx	; 1: 67
x330:	jmp $WordLoop	; 2: -21 -13

$WordDone:
x332:	mov byte [bx], 0	; 3: -58 7 0
x335:	inc bx	; 1: 67
x336:	jmp $SpaceLoop	; 2: -21 -34

$ListDone:
x338:	mov byte [bx], 0	; 3: -58 7 0
x341:	mov word [bp], 0	; 5: -57 70 0 0 0
x346:	add bp, 2	; 3: -125 -59 2
x349:	mov word [bp], 0	; 5: -57 70 0 0 0
x354:	mov [bp + 6], ax	; 3: -119 70 6
x357:	mov [bp + 8], si	; 3: -119 118 8

main:	; call header integral zero 0 stack zero 0

main$1:	; call function noellipse-noellipse main_math
x360:	mov word [bp + 10], main$2	; 5: -57 70 10 118 1
x365:	mov [bp + 12], bp	; 3: -119 110 12
x368:	add bp, 10	; 3: -125 -59 10
x371:	nop	; 1: -112
x372:	jmp main_math	; 2: -21 23

main$2:	; post call

main$3:	; return
x374:	cmp word [bp], 0	; 4: -125 126 0 0
x378:	je return_label$0	; 2: 116 11
x380:	mov ax, [bp]	; 3: -117 70 0
x383:	mov di, [bp + 4]	; 3: -117 126 4
x386:	mov bp, [bp + 2]	; 3: -117 110 2
x389:	jmp ax	; 2: -1 -32

return_label$0:
x391:	mov al, 0	; 2: -80 0
x393:	mov ah, 76	; 2: -76 76
x395:	int 33	; 2: -51 33

main$4:	; function end main

main_math:	; call header integral zero 0 stack zero 0

main_math$1:	; push float 0.333333333
x397:	fld qword [float8$0.333333333#]	; 4: -35 6 27 4

main_math$2:	; parameter 0.333333333, offset 6
x401:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$3:	; call function noellipse-noellipse math_test_1
x404:	mov word [bp + 6], main_math$4	; 5: -57 70 6 -94 1
x409:	mov [bp + 8], bp	; 3: -119 110 8
x412:	add bp, 6	; 3: -125 -59 6
x415:	jmp math_test_1	; 3: -23 41 3

main_math$4:	; post call

main_math$5:	; call header integral zero 0 stack zero 0

main_math$6:	; push float 0.75
x418:	fld qword [float8$0.75#]	; 4: -35 6 35 4

main_math$7:	; parameter 0.75, offset 6
x422:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$8:	; call function noellipse-noellipse math_test_1
x425:	mov word [bp + 6], main_math$9	; 5: -57 70 6 -73 1
x430:	mov [bp + 8], bp	; 3: -119 110 8
x433:	add bp, 6	; 3: -125 -59 6
x436:	jmp math_test_1	; 3: -23 20 3

main_math$9:	; post call

main_math$10:	; call header integral zero 0 stack zero 0

main_math$11:	; push float 1.000010
x439:	fld qword [float8$1.000010#]	; 4: -35 6 43 4

main_math$12:	; parameter 1.000010, offset 6
x443:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$13:	; call function noellipse-noellipse math_test_1
x446:	mov word [bp + 6], main_math$14	; 5: -57 70 6 -52 1
x451:	mov [bp + 8], bp	; 3: -119 110 8
x454:	add bp, 6	; 3: -125 -59 6
x457:	jmp math_test_1	; 3: -23 -1 2

main_math$14:	; post call

main_math$15:	; call header integral zero 0 stack zero 0

main_math$16:	; push float 1.0
x460:	fld1	; 2: -39 -24

main_math$17:	; parameter 1.0, offset 6
x462:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$18:	; call function noellipse-noellipse math_test_1
x465:	mov word [bp + 6], main_math$19	; 5: -57 70 6 -33 1
x470:	mov [bp + 8], bp	; 3: -119 110 8
x473:	add bp, 6	; 3: -125 -59 6
x476:	jmp math_test_1	; 3: -23 -20 2

main_math$19:	; post call

main_math$20:	; call header integral zero 0 stack zero 0

main_math$21:	; push float 0.999999
x479:	fld qword [float8$0.999999#]	; 4: -35 6 51 4

main_math$22:	; parameter 0.999999, offset 6
x483:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$23:	; call function noellipse-noellipse math_test_1
x486:	mov word [bp + 6], main_math$24	; 5: -57 70 6 -12 1
x491:	mov [bp + 8], bp	; 3: -119 110 8
x494:	add bp, 6	; 3: -125 -59 6
x497:	jmp math_test_1	; 3: -23 -41 2

main_math$24:	; post call

main_math$25:	; call header integral zero 0 stack zero 0

main_math$26:	; push float 0.000010
x500:	fld qword [float8$0.000010#]	; 4: -35 6 59 4

main_math$27:	; parameter 0.000010, offset 6
x504:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$28:	; call function noellipse-noellipse math_test_1
x507:	mov word [bp + 6], main_math$29	; 5: -57 70 6 9 2
x512:	mov [bp + 8], bp	; 3: -119 110 8
x515:	add bp, 6	; 3: -125 -59 6
x518:	jmp math_test_1	; 3: -23 -62 2

main_math$29:	; post call

main_math$30:	; call header integral zero 0 stack zero 0

main_math$31:	; push 0
x521:	fldz	; 2: -39 -18

main_math$32:	; parameter 0, offset 6
x523:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$33:	; call function noellipse-noellipse math_test_1
x526:	mov word [bp + 6], main_math$34	; 5: -57 70 6 28 2
x531:	mov [bp + 8], bp	; 3: -119 110 8
x534:	add bp, 6	; 3: -125 -59 6
x537:	jmp math_test_1	; 3: -23 -81 2

main_math$34:	; post call

main_math$35:	; call header integral zero 0 stack zero 0

main_math$36:	; push float -0.000010
x540:	fld qword [float8$minus0.000010#]	; 4: -35 6 67 4

main_math$37:	; parameter -0.000010, offset 6
x544:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$38:	; call function noellipse-noellipse math_test_1
x547:	mov word [bp + 6], main_math$39	; 5: -57 70 6 49 2
x552:	mov [bp + 8], bp	; 3: -119 110 8
x555:	add bp, 6	; 3: -125 -59 6
x558:	jmp math_test_1	; 3: -23 -102 2

main_math$39:	; post call

main_math$40:	; call header integral zero 0 stack zero 0

main_math$41:	; push float -0.999999
x561:	fld qword [float8$minus0.999999#]	; 4: -35 6 75 4

main_math$42:	; parameter -0.999999, offset 6
x565:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$43:	; call function noellipse-noellipse math_test_1
x568:	mov word [bp + 6], main_math$44	; 5: -57 70 6 70 2
x573:	mov [bp + 8], bp	; 3: -119 110 8
x576:	add bp, 6	; 3: -125 -59 6
x579:	jmp math_test_1	; 3: -23 -123 2

main_math$44:	; post call

main_math$45:	; call header integral zero 0 stack zero 0

main_math$46:	; push float -1.0
x582:	fld qword [float8$minus1.0#]	; 4: -35 6 83 4

main_math$47:	; parameter -1.0, offset 6
x586:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$48:	; call function noellipse-noellipse math_test_1
x589:	mov word [bp + 6], main_math$49	; 5: -57 70 6 91 2
x594:	mov [bp + 8], bp	; 3: -119 110 8
x597:	add bp, 6	; 3: -125 -59 6
x600:	jmp math_test_1	; 3: -23 112 2

main_math$49:	; post call

main_math$50:	; call header integral zero 0 stack zero 0

main_math$51:	; push float -1.000010
x603:	fld qword [float8$minus1.000010#]	; 4: -35 6 91 4

main_math$52:	; parameter -1.000010, offset 6
x607:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$53:	; call function noellipse-noellipse math_test_1
x610:	mov word [bp + 6], main_math$54	; 5: -57 70 6 112 2
x615:	mov [bp + 8], bp	; 3: -119 110 8
x618:	add bp, 6	; 3: -125 -59 6
x621:	jmp math_test_1	; 3: -23 91 2

main_math$54:	; post call

main_math$55:	; call header integral zero 0 stack zero 0

main_math$56:	; push float 6.283185306
x624:	fld qword [float8$6.283185306#]	; 4: -35 6 99 4

main_math$57:	; parameter 6.283185306, offset 6
x628:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$58:	; call function noellipse-noellipse math_test_1
x631:	mov word [bp + 6], main_math$59	; 5: -57 70 6 -123 2
x636:	mov [bp + 8], bp	; 3: -119 110 8
x639:	add bp, 6	; 3: -125 -59 6
x642:	jmp math_test_1	; 3: -23 70 2

main_math$59:	; post call

main_math$60:	; call header integral zero 0 stack zero 0

main_math$61:	; push float 3.141592653
x645:	fld qword [float8$3.141592653#]	; 4: -35 6 107 4

main_math$62:	; parameter 3.141592653, offset 6
x649:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$63:	; call function noellipse-noellipse math_test_1
x652:	mov word [bp + 6], main_math$64	; 5: -57 70 6 -102 2
x657:	mov [bp + 8], bp	; 3: -119 110 8
x660:	add bp, 6	; 3: -125 -59 6
x663:	jmp math_test_1	; 3: -23 49 2

main_math$64:	; post call

main_math$65:	; call header integral zero 0 stack zero 0

main_math$66:	; push float 1.5707963265
x666:	fld qword [float8$1.5707963265#]	; 4: -35 6 115 4

main_math$67:	; parameter 1.5707963265, offset 6
x670:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$68:	; call function noellipse-noellipse math_test_1
x673:	mov word [bp + 6], main_math$69	; 5: -57 70 6 -81 2
x678:	mov [bp + 8], bp	; 3: -119 110 8
x681:	add bp, 6	; 3: -125 -59 6
x684:	jmp math_test_1	; 3: -23 28 2

main_math$69:	; post call

main_math$70:	; call header integral zero 0 stack zero 0

main_math$71:	; push float -1.5707963265
x687:	fld qword [float8$minus1.5707963265#]	; 4: -35 6 123 4

main_math$72:	; parameter -1.5707963265, offset 6
x691:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$73:	; call function noellipse-noellipse math_test_1
x694:	mov word [bp + 6], main_math$74	; 5: -57 70 6 -60 2
x699:	mov [bp + 8], bp	; 3: -119 110 8
x702:	add bp, 6	; 3: -125 -59 6
x705:	jmp math_test_1	; 3: -23 7 2

main_math$74:	; post call

main_math$75:	; call header integral zero 0 stack zero 0

main_math$76:	; push float -3.141592653
x708:	fld qword [float8$minus3.141592653#]	; 4: -35 6 -125 4

main_math$77:	; parameter -3.141592653, offset 6
x712:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$78:	; call function noellipse-noellipse math_test_1
x715:	mov word [bp + 6], main_math$79	; 5: -57 70 6 -39 2
x720:	mov [bp + 8], bp	; 3: -119 110 8
x723:	add bp, 6	; 3: -125 -59 6
x726:	jmp math_test_1	; 3: -23 -14 1

main_math$79:	; post call

main_math$80:	; call header integral zero 0 stack zero 0

main_math$81:	; push float -6.283185306
x729:	fld qword [float8$minus6.283185306#]	; 4: -35 6 -117 4

main_math$82:	; parameter -6.283185306, offset 6
x733:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$83:	; call function noellipse-noellipse math_test_1
x736:	mov word [bp + 6], main_math$84	; 5: -57 70 6 -18 2
x741:	mov [bp + 8], bp	; 3: -119 110 8
x744:	add bp, 6	; 3: -125 -59 6
x747:	jmp math_test_1	; 3: -23 -35 1

main_math$84:	; post call

main_math$85:	; call header integral zero 0 stack zero 0

main_math$86:	; push float 1.0
x750:	fld1	; 2: -39 -24

main_math$87:	; parameter 1.0, offset 6
x752:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$88:	; push float 2.0
x755:	fld qword [float8$2.0#]	; 4: -35 6 -109 4

main_math$89:	; parameter 2.0, offset 14
x759:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$90:	; call function noellipse-noellipse math_test_2
x762:	mov word [bp + 6], main_math$91	; 5: -57 70 6 8 3
x767:	mov [bp + 8], bp	; 3: -119 110 8
x770:	add bp, 6	; 3: -125 -59 6
x773:	jmp math_test_2	; 3: -23 -115 50

main_math$91:	; post call

main_math$92:	; call header integral zero 0 stack zero 0

main_math$93:	; push float 3.0
x776:	fld qword [float8$3.0#]	; 4: -35 6 -101 4

main_math$94:	; parameter 3.0, offset 6
x780:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$95:	; push float 4.0
x783:	fld qword [float8$4.0#]	; 4: -35 6 -93 4

main_math$96:	; parameter 4.0, offset 14
x787:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$97:	; call function noellipse-noellipse math_test_2
x790:	mov word [bp + 6], main_math$98	; 5: -57 70 6 36 3
x795:	mov [bp + 8], bp	; 3: -119 110 8
x798:	add bp, 6	; 3: -125 -59 6
x801:	jmp math_test_2	; 3: -23 113 50

main_math$98:	; post call

main_math$99:	; call header integral zero 0 stack zero 0

main_math$100:	; push 0
x804:	fldz	; 2: -39 -18

main_math$101:	; parameter 0, offset 6
x806:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$102:	; push float 2.0
x809:	fld qword [float8$2.0#]	; 4: -35 6 -109 4

main_math$103:	; parameter 2.0, offset 14
x813:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$104:	; call function noellipse-noellipse math_test_2
x816:	mov word [bp + 6], main_math$105	; 5: -57 70 6 62 3
x821:	mov [bp + 8], bp	; 3: -119 110 8
x824:	add bp, 6	; 3: -125 -59 6
x827:	jmp math_test_2	; 3: -23 87 50

main_math$105:	; post call

main_math$106:	; call header integral zero 0 stack zero 0

main_math$107:	; push 0
x830:	fldz	; 2: -39 -18

main_math$108:	; parameter 0, offset 6
x832:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$109:	; push float -2.0
x835:	fld qword [float8$minus2.0#]	; 4: -35 6 -85 4

main_math$110:	; parameter -2.0, offset 14
x839:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$111:	; call function noellipse-noellipse math_test_2
x842:	mov word [bp + 6], main_math$112	; 5: -57 70 6 88 3
x847:	mov [bp + 8], bp	; 3: -119 110 8
x850:	add bp, 6	; 3: -125 -59 6
x853:	jmp math_test_2	; 3: -23 61 50

main_math$112:	; post call

main_math$113:	; call header integral zero 0 stack zero 0

main_math$114:	; push 1
x856:	fld1	; 2: -39 -24

main_math$115:	; parameter 1, offset 6
x858:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$116:	; push float 2.0
x861:	fld qword [float8$2.0#]	; 4: -35 6 -109 4

main_math$117:	; parameter 2.0, offset 14
x865:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$118:	; call function noellipse-noellipse math_test_2
x868:	mov word [bp + 6], main_math$119	; 5: -57 70 6 114 3
x873:	mov [bp + 8], bp	; 3: -119 110 8
x876:	add bp, 6	; 3: -125 -59 6
x879:	jmp math_test_2	; 3: -23 35 50

main_math$119:	; post call

main_math$120:	; call header integral zero 0 stack zero 0

main_math$121:	; push 1
x882:	fld1	; 2: -39 -24

main_math$122:	; parameter 1, offset 6
x884:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$123:	; push float -2.0
x887:	fld qword [float8$minus2.0#]	; 4: -35 6 -85 4

main_math$124:	; parameter -2.0, offset 14
x891:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$125:	; call function noellipse-noellipse math_test_2
x894:	mov word [bp + 6], main_math$126	; 5: -57 70 6 -116 3
x899:	mov [bp + 8], bp	; 3: -119 110 8
x902:	add bp, 6	; 3: -125 -59 6
x905:	jmp math_test_2	; 3: -23 9 50

main_math$126:	; post call

main_math$127:	; call header integral zero 0 stack zero 0

main_math$128:	; push 0
x908:	fldz	; 2: -39 -18

main_math$129:	; parameter 0, offset 6
x910:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$130:	; push 0
x913:	fldz	; 2: -39 -18

main_math$131:	; parameter 0, offset 14
x915:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$132:	; call function noellipse-noellipse math_test_2
x918:	mov word [bp + 6], main_math$133	; 5: -57 70 6 -92 3
x923:	mov [bp + 8], bp	; 3: -119 110 8
x926:	add bp, 6	; 3: -125 -59 6
x929:	jmp math_test_2	; 3: -23 -15 49

main_math$133:	; post call

main_math$134:	; call header integral zero 0 stack zero 0

main_math$135:	; push float 2
x932:	fld qword [float8$2#]	; 4: -35 6 -77 4

main_math$136:	; parameter 2, offset 6
x936:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$137:	; push 0
x939:	fldz	; 2: -39 -18

main_math$138:	; parameter 0, offset 14
x941:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$139:	; call function noellipse-noellipse math_test_2
x944:	mov word [bp + 6], main_math$140	; 5: -57 70 6 -66 3
x949:	mov [bp + 8], bp	; 3: -119 110 8
x952:	add bp, 6	; 3: -125 -59 6
x955:	jmp math_test_2	; 3: -23 -41 49

main_math$140:	; post call

main_math$141:	; call header integral zero 0 stack zero 0

main_math$142:	; push float -2
x958:	fld qword [float8$minus2#]	; 4: -35 6 -69 4

main_math$143:	; parameter -2, offset 6
x962:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$144:	; push 0
x965:	fldz	; 2: -39 -18

main_math$145:	; parameter 0, offset 14
x967:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$146:	; call function noellipse-noellipse math_test_2
x970:	mov word [bp + 6], main_math$147	; 5: -57 70 6 -40 3
x975:	mov [bp + 8], bp	; 3: -119 110 8
x978:	add bp, 6	; 3: -125 -59 6
x981:	jmp math_test_2	; 3: -23 -67 49

main_math$147:	; post call

main_math$148:	; call header integral zero 0 stack zero 0

main_math$149:	; push float -1.0
x984:	fld qword [float8$minus1.0#]	; 4: -35 6 83 4

main_math$150:	; parameter -1.0, offset 6
x988:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$151:	; push float -1.0
x991:	fld qword [float8$minus1.0#]	; 4: -35 6 83 4

main_math$152:	; parameter -1.0, offset 14
x995:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$153:	; call function noellipse-noellipse math_test_2
x998:	mov word [bp + 6], main_math$154	; 5: -57 70 6 -12 3
x1003:	mov [bp + 8], bp	; 3: -119 110 8
x1006:	add bp, 6	; 3: -125 -59 6
x1009:	jmp math_test_2	; 3: -23 -95 49

main_math$154:	; post call

main_math$155:	; call header integral zero 0 stack zero 0

main_math$156:	; push float -2.0
x1012:	fld qword [float8$minus2.0#]	; 4: -35 6 -85 4

main_math$157:	; parameter -2.0, offset 6
x1016:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$158:	; push float -4.0
x1019:	fld qword [float8$minus4.0#]	; 4: -35 6 -61 4

main_math$159:	; parameter -4.0, offset 14
x1023:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$160:	; call function noellipse-noellipse math_test_2
x1026:	mov word [bp + 6], main_math$161	; 5: -57 70 6 16 4
x1031:	mov [bp + 8], bp	; 3: -119 110 8
x1034:	add bp, 6	; 3: -125 -59 6
x1037:	jmp math_test_2	; 3: -23 -123 49

main_math$161:	; post call

main_math$162:	; return
x1040:	mov ax, [bp]	; 3: -117 70 0
x1043:	mov di, [bp + 4]	; 3: -117 126 4
x1046:	mov bp, [bp + 2]	; 3: -117 110 2
x1049:	jmp ax	; 2: -1 -32

main_math$163:	; function end main_math

float8$0.333333333#:
x1051:	dq 0.333333333	; 8: 22 -75 -7 84 85 85 -43 63

float8$0.75#:
x1059:	dq 0.75	; 8: 0 0 0 0 0 0 -24 63

float8$1.000010#:
x1067:	dq 1.000010	; 8: 114 -60 90 124 10 0 -16 63

float8$0.999999#:
x1075:	dq 0.999999	; 8: -23 11 33 -25 -3 -1 -17 63

float8$0.000010#:
x1083:	dq 0.000010	; 8: -15 104 -29 -120 -75 -8 -28 62

float8$minus0.000010#:
x1091:	dq -0.000010	; 8: -15 104 -29 -120 -75 -8 -28 -66

float8$minus0.999999#:
x1099:	dq -0.999999	; 8: -23 11 33 -25 -3 -1 -17 -65

float8$minus1.0#:
x1107:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$minus1.000010#:
x1115:	dq -1.000010	; 8: 114 -60 90 124 10 0 -16 -65

float8$6.283185306#:
x1123:	dq 6.283185306	; 8: 56 -23 47 84 -5 33 25 64

float8$3.141592653#:
x1131:	dq 3.141592653	; 8: 56 -23 47 84 -5 33 9 64

float8$1.5707963265#:
x1139:	dq 1.5707963265	; 8: 56 -23 47 84 -5 33 -7 63

float8$minus1.5707963265#:
x1147:	dq -1.5707963265	; 8: 56 -23 47 84 -5 33 -7 -65

float8$minus3.141592653#:
x1155:	dq -3.141592653	; 8: 56 -23 47 84 -5 33 9 -64

float8$minus6.283185306#:
x1163:	dq -6.283185306	; 8: 56 -23 47 84 -5 33 25 -64

float8$2.0#:
x1171:	dq 2.0	; 8: 0 0 0 0 0 0 0 64

float8$3.0#:
x1179:	dq 3.0	; 8: 0 0 0 0 0 0 8 64

float8$4.0#:
x1187:	dq 4.0	; 8: 0 0 0 0 0 0 16 64

float8$minus2.0#:
x1195:	dq -2.0	; 8: 0 0 0 0 0 0 0 -64

float8$2#:
x1203:	dq 2.0	; 8: 0 0 0 0 0 0 0 64

float8$minus2#:
x1211:	dq -2.0	; 8: 0 0 0 0 0 0 0 -64

float8$minus4.0#:
x1219:	dq -4.0	; 8: 0 0 0 0 0 0 16 -64

math_test_1:	; call header integral zero 0 stack zero 0

math_test_1$1:	; parameter string_3C25f3E0A#, offset 6
x1227:	mov word [bp + 20], string_3C25f3E0A#	; 5: -57 70 20 1 10

math_test_1$2:	; push float x
x1232:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$3:	; parameter x, offset 8
x1235:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$4:	; call function noellipse-ellipse printf, extra 0
x1238:	mov word [bp + 14], math_test_1$5	; 5: -57 70 14 -23 4
x1243:	mov [bp + 16], bp	; 3: -119 110 16
x1246:	add bp, 14	; 3: -125 -59 14
x1249:	mov di, bp	; 2: -119 -17
x1251:	add di, 8	; 3: -125 -57 8
x1254:	jmp printf	; 3: -23 73 7

math_test_1$5:	; post call

math_test_1$6:	; call header integral zero 0 stack zero 0

math_test_1$7:	; parameter string_2020sin2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1257:	mov word [bp + 20], string_2020sin2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 7 10

math_test_1$8:	; push float x
x1262:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$9:	; parameter x, offset 8
x1265:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$10:	; call header integral zero 0 stack zero 0

math_test_1$11:	; push float x
x1268:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$12:	; parameter x, offset 22
x1271:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$13:	; call function noellipse-noellipse sin
x1274:	mov word [bp + 30], math_test_1$14	; 5: -57 70 30 8 5
x1279:	mov [bp + 32], bp	; 3: -119 110 32
x1282:	add bp, 30	; 3: -125 -59 30
x1285:	jmp sin	; 3: -23 -53 39

math_test_1$14:	; post call

math_test_1$15:	; £temporary3991 = return_value

math_test_1$16:	; parameter £temporary3991, offset 16
x1288:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$17:	; parameter errno, offset 24
x1291:	mov ax, [errno]	; 3: -95 35 10
x1294:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$18:	; call function noellipse-ellipse printf, extra 0
x1297:	mov word [bp + 14], math_test_1$19	; 5: -57 70 14 36 5
x1302:	mov [bp + 16], bp	; 3: -119 110 16
x1305:	add bp, 14	; 3: -125 -59 14
x1308:	mov di, bp	; 2: -119 -17
x1310:	add di, 18	; 3: -125 -57 18
x1313:	jmp printf	; 3: -23 14 7

math_test_1$19:	; post call

math_test_1$20:	; errno = 0
x1316:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$21:	; call header integral zero 0 stack zero 0

math_test_1$22:	; parameter string_2020cos2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1322:	mov word [bp + 20], string_2020cos2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 37 10

math_test_1$23:	; push float x
x1327:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$24:	; parameter x, offset 8
x1330:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$25:	; call header integral zero 0 stack zero 0

math_test_1$26:	; push float x
x1333:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$27:	; parameter x, offset 22
x1336:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$28:	; call function noellipse-noellipse cos
x1339:	mov word [bp + 30], math_test_1$29	; 5: -57 70 30 73 5
x1344:	mov [bp + 32], bp	; 3: -119 110 32
x1347:	add bp, 30	; 3: -125 -59 30
x1350:	jmp cos	; 3: -23 -29 40

math_test_1$29:	; post call

math_test_1$30:	; £temporary3993 = return_value

math_test_1$31:	; parameter £temporary3993, offset 16
x1353:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$32:	; parameter errno, offset 24
x1356:	mov ax, [errno]	; 3: -95 35 10
x1359:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$33:	; call function noellipse-ellipse printf, extra 0
x1362:	mov word [bp + 14], math_test_1$34	; 5: -57 70 14 101 5
x1367:	mov [bp + 16], bp	; 3: -119 110 16
x1370:	add bp, 14	; 3: -125 -59 14
x1373:	mov di, bp	; 2: -119 -17
x1375:	add di, 18	; 3: -125 -57 18
x1378:	jmp printf	; 3: -23 -51 6

math_test_1$34:	; post call

math_test_1$35:	; errno = 0
x1381:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$36:	; call header integral zero 0 stack zero 0

math_test_1$37:	; parameter string_2020tan2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1387:	mov word [bp + 20], string_2020tan2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 65 10

math_test_1$38:	; push float x
x1392:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$39:	; parameter x, offset 8
x1395:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$40:	; call header integral zero 0 stack zero 0

math_test_1$41:	; push float x
x1398:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$42:	; parameter x, offset 22
x1401:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$43:	; call function noellipse-noellipse tan
x1404:	mov word [bp + 30], math_test_1$44	; 5: -57 70 30 -118 5
x1409:	mov [bp + 32], bp	; 3: -119 110 32
x1412:	add bp, 30	; 3: -125 -59 30
x1415:	jmp tan	; 3: -23 124 41

math_test_1$44:	; post call

math_test_1$45:	; £temporary3995 = return_value

math_test_1$46:	; parameter £temporary3995, offset 16
x1418:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$47:	; parameter errno, offset 24
x1421:	mov ax, [errno]	; 3: -95 35 10
x1424:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$48:	; call function noellipse-ellipse printf, extra 0
x1427:	mov word [bp + 14], math_test_1$49	; 5: -57 70 14 -90 5
x1432:	mov [bp + 16], bp	; 3: -119 110 16
x1435:	add bp, 14	; 3: -125 -59 14
x1438:	mov di, bp	; 2: -119 -17
x1440:	add di, 18	; 3: -125 -57 18
x1443:	jmp printf	; 3: -23 -116 6

math_test_1$49:	; post call

math_test_1$50:	; errno = 0
x1446:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$51:	; call header integral zero 0 stack zero 0

math_test_1$52:	; parameter string_2020asin2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1452:	mov word [bp + 20], string_2020asin2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 93 10

math_test_1$53:	; push float x
x1457:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$54:	; parameter x, offset 8
x1460:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$55:	; call header integral zero 0 stack zero 0

math_test_1$56:	; push float x
x1463:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$57:	; parameter x, offset 22
x1466:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$58:	; call function noellipse-noellipse asin
x1469:	mov word [bp + 30], math_test_1$59	; 5: -57 70 30 -53 5
x1474:	mov [bp + 32], bp	; 3: -119 110 32
x1477:	add bp, 30	; 3: -125 -59 30
x1480:	jmp asin	; 3: -23 -106 41

math_test_1$59:	; post call

math_test_1$60:	; £temporary3997 = return_value

math_test_1$61:	; parameter £temporary3997, offset 16
x1483:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$62:	; parameter errno, offset 24
x1486:	mov ax, [errno]	; 3: -95 35 10
x1489:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$63:	; call function noellipse-ellipse printf, extra 0
x1492:	mov word [bp + 14], math_test_1$64	; 5: -57 70 14 -25 5
x1497:	mov [bp + 16], bp	; 3: -119 110 16
x1500:	add bp, 14	; 3: -125 -59 14
x1503:	mov di, bp	; 2: -119 -17
x1505:	add di, 18	; 3: -125 -57 18
x1508:	jmp printf	; 3: -23 75 6

math_test_1$64:	; post call

math_test_1$65:	; errno = 0
x1511:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$66:	; call header integral zero 0 stack zero 0

math_test_1$67:	; parameter string_2020acos2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1517:	mov word [bp + 20], string_2020acos2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 122 10

math_test_1$68:	; push float x
x1522:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$69:	; parameter x, offset 8
x1525:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$70:	; call header integral zero 0 stack zero 0

math_test_1$71:	; push float x
x1528:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$72:	; parameter x, offset 22
x1531:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$73:	; call function noellipse-noellipse acos
x1534:	mov word [bp + 30], math_test_1$74	; 5: -57 70 30 12 6
x1539:	mov [bp + 32], bp	; 3: -119 110 32
x1542:	add bp, 30	; 3: -125 -59 30
x1545:	jmp acos	; 3: -23 -16 43

math_test_1$74:	; post call

math_test_1$75:	; £temporary3999 = return_value

math_test_1$76:	; parameter £temporary3999, offset 16
x1548:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$77:	; parameter errno, offset 24
x1551:	mov ax, [errno]	; 3: -95 35 10
x1554:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$78:	; call function noellipse-ellipse printf, extra 0
x1557:	mov word [bp + 14], math_test_1$79	; 5: -57 70 14 40 6
x1562:	mov [bp + 16], bp	; 3: -119 110 16
x1565:	add bp, 14	; 3: -125 -59 14
x1568:	mov di, bp	; 2: -119 -17
x1570:	add di, 18	; 3: -125 -57 18
x1573:	jmp printf	; 3: -23 10 6

math_test_1$79:	; post call

math_test_1$80:	; errno = 0
x1576:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$81:	; call header integral zero 0 stack zero 0

math_test_1$82:	; parameter string_2020atan2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1582:	mov word [bp + 20], string_2020atan2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 -105 10

math_test_1$83:	; push float x
x1587:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$84:	; parameter x, offset 8
x1590:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$85:	; call header integral zero 0 stack zero 0

math_test_1$86:	; push float x
x1593:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$87:	; parameter x, offset 22
x1596:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$88:	; call function noellipse-noellipse atan
x1599:	mov word [bp + 30], math_test_1$89	; 5: -57 70 30 77 6
x1604:	mov [bp + 32], bp	; 3: -119 110 32
x1607:	add bp, 30	; 3: -125 -59 30
x1610:	jmp atan	; 3: -23 62 42

math_test_1$89:	; post call

math_test_1$90:	; £temporary4001 = return_value

math_test_1$91:	; parameter £temporary4001, offset 16
x1613:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$92:	; parameter errno, offset 24
x1616:	mov ax, [errno]	; 3: -95 35 10
x1619:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$93:	; call function noellipse-ellipse printf, extra 0
x1622:	mov word [bp + 14], math_test_1$94	; 5: -57 70 14 105 6
x1627:	mov [bp + 16], bp	; 3: -119 110 16
x1630:	add bp, 14	; 3: -125 -59 14
x1633:	mov di, bp	; 2: -119 -17
x1635:	add di, 18	; 3: -125 -57 18
x1638:	jmp printf	; 3: -23 -55 5

math_test_1$94:	; post call

math_test_1$95:	; errno = 0
x1641:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$96:	; call header integral zero 0 stack zero 0

math_test_1$97:	; parameter string_2020exp2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1647:	mov word [bp + 20], string_2020exp2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 -76 10

math_test_1$98:	; push float x
x1652:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$99:	; parameter x, offset 8
x1655:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$100:	; call header integral zero 0 stack zero 0

math_test_1$101:	; push float x
x1658:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$102:	; parameter x, offset 22
x1661:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$103:	; call function noellipse-noellipse exp
x1664:	mov word [bp + 30], math_test_1$104	; 5: -57 70 30 -114 6
x1669:	mov [bp + 32], bp	; 3: -119 110 32
x1672:	add bp, 30	; 3: -125 -59 30
x1675:	jmp exp	; 3: -23 6 37

math_test_1$104:	; post call

math_test_1$105:	; £temporary4003 = return_value

math_test_1$106:	; parameter £temporary4003, offset 16
x1678:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$107:	; parameter errno, offset 24
x1681:	mov ax, [errno]	; 3: -95 35 10
x1684:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$108:	; call function noellipse-ellipse printf, extra 0
x1687:	mov word [bp + 14], math_test_1$109	; 5: -57 70 14 -86 6
x1692:	mov [bp + 16], bp	; 3: -119 110 16
x1695:	add bp, 14	; 3: -125 -59 14
x1698:	mov di, bp	; 2: -119 -17
x1700:	add di, 18	; 3: -125 -57 18
x1703:	jmp printf	; 3: -23 -120 5

math_test_1$109:	; post call

math_test_1$110:	; errno = 0
x1706:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$111:	; call header integral zero 0 stack zero 0

math_test_1$112:	; parameter string_2020log2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1712:	mov word [bp + 20], string_2020log2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 -48 10

math_test_1$113:	; push float x
x1717:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$114:	; parameter x, offset 8
x1720:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$115:	; call header integral zero 0 stack zero 0

math_test_1$116:	; push float x
x1723:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$117:	; parameter x, offset 22
x1726:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$118:	; call function noellipse-noellipse log
x1729:	mov word [bp + 30], math_test_1$119	; 5: -57 70 30 -49 6
x1734:	mov [bp + 32], bp	; 3: -119 110 32
x1737:	add bp, 30	; 3: -125 -59 30
x1740:	jmp log	; 3: -23 -12 33

math_test_1$119:	; post call

math_test_1$120:	; £temporary4005 = return_value

math_test_1$121:	; parameter £temporary4005, offset 16
x1743:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$122:	; parameter errno, offset 24
x1746:	mov ax, [errno]	; 3: -95 35 10
x1749:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$123:	; call function noellipse-ellipse printf, extra 0
x1752:	mov word [bp + 14], math_test_1$124	; 5: -57 70 14 -21 6
x1757:	mov [bp + 16], bp	; 3: -119 110 16
x1760:	add bp, 14	; 3: -125 -59 14
x1763:	mov di, bp	; 2: -119 -17
x1765:	add di, 18	; 3: -125 -57 18
x1768:	jmp printf	; 3: -23 71 5

math_test_1$124:	; post call

math_test_1$125:	; errno = 0
x1771:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$126:	; call header integral zero 0 stack zero 0

math_test_1$127:	; parameter string_2020log102825f29203D2025f2C20errno203D2025i0A#, offset 6
x1777:	mov word [bp + 20], string_2020log102825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 -20 10

math_test_1$128:	; push float x
x1782:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$129:	; parameter x, offset 8
x1785:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$130:	; call header integral zero 0 stack zero 0

math_test_1$131:	; push float x
x1788:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$132:	; parameter x, offset 22
x1791:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$133:	; call function noellipse-noellipse log10
x1794:	mov word [bp + 30], math_test_1$134	; 5: -57 70 30 16 7
x1799:	mov [bp + 32], bp	; 3: -119 110 32
x1802:	add bp, 30	; 3: -125 -59 30
x1805:	jmp log10	; 3: -23 -122 33

math_test_1$134:	; post call

math_test_1$135:	; £temporary4007 = return_value

math_test_1$136:	; parameter £temporary4007, offset 16
x1808:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$137:	; parameter errno, offset 24
x1811:	mov ax, [errno]	; 3: -95 35 10
x1814:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$138:	; call function noellipse-ellipse printf, extra 0
x1817:	mov word [bp + 14], math_test_1$139	; 5: -57 70 14 44 7
x1822:	mov [bp + 16], bp	; 3: -119 110 16
x1825:	add bp, 14	; 3: -125 -59 14
x1828:	mov di, bp	; 2: -119 -17
x1830:	add di, 18	; 3: -125 -57 18
x1833:	jmp printf	; 3: -23 6 5

math_test_1$139:	; post call

math_test_1$140:	; errno = 0
x1836:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$141:	; call header integral zero 0 stack zero 0

math_test_1$142:	; parameter string_2020sinh2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1842:	mov word [bp + 20], string_2020sinh2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 10 11

math_test_1$143:	; push float x
x1847:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$144:	; parameter x, offset 8
x1850:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$145:	; call header integral zero 0 stack zero 0

math_test_1$146:	; push float x
x1853:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$147:	; parameter x, offset 22
x1856:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$148:	; call function noellipse-noellipse sinh
x1859:	mov word [bp + 30], math_test_1$149	; 5: -57 70 30 81 7
x1864:	mov [bp + 32], bp	; 3: -119 110 32
x1867:	add bp, 30	; 3: -125 -59 30
x1870:	jmp sinh	; 3: -23 101 43

math_test_1$149:	; post call

math_test_1$150:	; £temporary4009 = return_value

math_test_1$151:	; parameter £temporary4009, offset 16
x1873:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$152:	; parameter errno, offset 24
x1876:	mov ax, [errno]	; 3: -95 35 10
x1879:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$153:	; call function noellipse-ellipse printf, extra 0
x1882:	mov word [bp + 14], math_test_1$154	; 5: -57 70 14 109 7
x1887:	mov [bp + 16], bp	; 3: -119 110 16
x1890:	add bp, 14	; 3: -125 -59 14
x1893:	mov di, bp	; 2: -119 -17
x1895:	add di, 18	; 3: -125 -57 18
x1898:	jmp printf	; 3: -23 -59 4

math_test_1$154:	; post call

math_test_1$155:	; errno = 0
x1901:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$156:	; call header integral zero 0 stack zero 0

math_test_1$157:	; parameter string_2020cosh2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1907:	mov word [bp + 20], string_2020cosh2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 39 11

math_test_1$158:	; push float x
x1912:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$159:	; parameter x, offset 8
x1915:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$160:	; call header integral zero 0 stack zero 0

math_test_1$161:	; push float x
x1918:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$162:	; parameter x, offset 22
x1921:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$163:	; call function noellipse-noellipse cosh
x1924:	mov word [bp + 30], math_test_1$164	; 5: -57 70 30 -110 7
x1929:	mov [bp + 32], bp	; 3: -119 110 32
x1932:	add bp, 30	; 3: -125 -59 30
x1935:	jmp cosh	; 3: -23 109 43

math_test_1$164:	; post call

math_test_1$165:	; £temporary4011 = return_value

math_test_1$166:	; parameter £temporary4011, offset 16
x1938:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$167:	; parameter errno, offset 24
x1941:	mov ax, [errno]	; 3: -95 35 10
x1944:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$168:	; call function noellipse-ellipse printf, extra 0
x1947:	mov word [bp + 14], math_test_1$169	; 5: -57 70 14 -82 7
x1952:	mov [bp + 16], bp	; 3: -119 110 16
x1955:	add bp, 14	; 3: -125 -59 14
x1958:	mov di, bp	; 2: -119 -17
x1960:	add di, 18	; 3: -125 -57 18
x1963:	jmp printf	; 3: -23 -124 4

math_test_1$169:	; post call

math_test_1$170:	; errno = 0
x1966:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$171:	; call header integral zero 0 stack zero 0

math_test_1$172:	; parameter string_2020tanh2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1972:	mov word [bp + 20], string_2020tanh2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 68 11

math_test_1$173:	; push float x
x1977:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$174:	; parameter x, offset 8
x1980:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$175:	; call header integral zero 0 stack zero 0

math_test_1$176:	; push float x
x1983:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$177:	; parameter x, offset 22
x1986:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$178:	; call function noellipse-noellipse tanh
x1989:	mov word [bp + 30], math_test_1$179	; 5: -57 70 30 -45 7
x1994:	mov [bp + 32], bp	; 3: -119 110 32
x1997:	add bp, 30	; 3: -125 -59 30
x2000:	jmp tanh	; 3: -23 117 43

math_test_1$179:	; post call

math_test_1$180:	; £temporary4013 = return_value

math_test_1$181:	; parameter £temporary4013, offset 16
x2003:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$182:	; parameter errno, offset 24
x2006:	mov ax, [errno]	; 3: -95 35 10
x2009:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$183:	; call function noellipse-ellipse printf, extra 0
x2012:	mov word [bp + 14], math_test_1$184	; 5: -57 70 14 -17 7
x2017:	mov [bp + 16], bp	; 3: -119 110 16
x2020:	add bp, 14	; 3: -125 -59 14
x2023:	mov di, bp	; 2: -119 -17
x2025:	add di, 18	; 3: -125 -57 18
x2028:	jmp printf	; 3: -23 67 4

math_test_1$184:	; post call

math_test_1$185:	; errno = 0
x2031:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$186:	; call header integral zero 0 stack zero 0

math_test_1$187:	; parameter string_2020sqrt2825f29203D2025f2C20errno203D2025i0A#, offset 6
x2037:	mov word [bp + 20], string_2020sqrt2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 97 11

math_test_1$188:	; push float x
x2042:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$189:	; parameter x, offset 8
x2045:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$190:	; call header integral zero 0 stack zero 0

math_test_1$191:	; push float x
x2048:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$192:	; parameter x, offset 22
x2051:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$193:	; call function noellipse-noellipse sqrt
x2054:	mov word [bp + 30], math_test_1$194	; 5: -57 70 30 20 8
x2059:	mov [bp + 32], bp	; 3: -119 110 32
x2062:	add bp, 30	; 3: -125 -59 30
x2065:	jmp sqrt	; 3: -23 3 40

math_test_1$194:	; post call

math_test_1$195:	; £temporary4015 = return_value

math_test_1$196:	; parameter £temporary4015, offset 16
x2068:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$197:	; parameter errno, offset 24
x2071:	mov ax, [errno]	; 3: -95 35 10
x2074:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$198:	; call function noellipse-ellipse printf, extra 0
x2077:	mov word [bp + 14], math_test_1$199	; 5: -57 70 14 48 8
x2082:	mov [bp + 16], bp	; 3: -119 110 16
x2085:	add bp, 14	; 3: -125 -59 14
x2088:	mov di, bp	; 2: -119 -17
x2090:	add di, 18	; 3: -125 -57 18
x2093:	jmp printf	; 3: -23 2 4

math_test_1$199:	; post call

math_test_1$200:	; errno = 0
x2096:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$201:	; call header integral zero 0 stack zero 0

math_test_1$202:	; parameter string_2020floor2825f29203D2025f2C20errno203D2025i0A#, offset 6
x2102:	mov word [bp + 20], string_2020floor2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 126 11

math_test_1$203:	; push float x
x2107:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$204:	; parameter x, offset 8
x2110:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$205:	; call header integral zero 0 stack zero 0

math_test_1$206:	; push float x
x2113:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$207:	; parameter x, offset 22
x2116:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$208:	; call function noellipse-noellipse floor
x2119:	mov word [bp + 30], math_test_1$209	; 5: -57 70 30 85 8
x2124:	mov [bp + 32], bp	; 3: -119 110 32
x2127:	add bp, 30	; 3: -125 -59 30
x2130:	jmp floor	; 3: -23 -75 35

math_test_1$209:	; post call

math_test_1$210:	; £temporary4017 = return_value

math_test_1$211:	; parameter £temporary4017, offset 16
x2133:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$212:	; parameter errno, offset 24
x2136:	mov ax, [errno]	; 3: -95 35 10
x2139:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$213:	; call function noellipse-ellipse printf, extra 0
x2142:	mov word [bp + 14], math_test_1$214	; 5: -57 70 14 113 8
x2147:	mov [bp + 16], bp	; 3: -119 110 16
x2150:	add bp, 14	; 3: -125 -59 14
x2153:	mov di, bp	; 2: -119 -17
x2155:	add di, 18	; 3: -125 -57 18
x2158:	jmp printf	; 3: -23 -63 3

math_test_1$214:	; post call

math_test_1$215:	; errno = 0
x2161:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$216:	; call header integral zero 0 stack zero 0

math_test_1$217:	; parameter string_2020ceil2825f29203D2025f2C20errno203D2025i0A#, offset 6
x2167:	mov word [bp + 20], string_2020ceil2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 -100 11

math_test_1$218:	; push float x
x2172:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$219:	; parameter x, offset 8
x2175:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$220:	; call header integral zero 0 stack zero 0

math_test_1$221:	; push float x
x2178:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$222:	; parameter x, offset 22
x2181:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$223:	; call function noellipse-noellipse ceil
x2184:	mov word [bp + 30], math_test_1$224	; 5: -57 70 30 -106 8
x2189:	mov [bp + 32], bp	; 3: -119 110 32
x2192:	add bp, 30	; 3: -125 -59 30
x2195:	jmp ceil	; 3: -23 -62 35

math_test_1$224:	; post call

math_test_1$225:	; £temporary4019 = return_value

math_test_1$226:	; parameter £temporary4019, offset 16
x2198:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$227:	; parameter errno, offset 24
x2201:	mov ax, [errno]	; 3: -95 35 10
x2204:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$228:	; call function noellipse-ellipse printf, extra 0
x2207:	mov word [bp + 14], math_test_1$229	; 5: -57 70 14 -78 8
x2212:	mov [bp + 16], bp	; 3: -119 110 16
x2215:	add bp, 14	; 3: -125 -59 14
x2218:	mov di, bp	; 2: -119 -17
x2220:	add di, 18	; 3: -125 -57 18
x2223:	jmp printf	; 3: -23 -128 3

math_test_1$229:	; post call

math_test_1$230:	; errno = 0
x2226:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$231:	; call header integral zero 0 stack zero 0

math_test_1$232:	; parameter string_2020fabs2825f29203D2025f2C20errno203D2025i0A#, offset 6
x2232:	mov word [bp + 20], string_2020fabs2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 -71 11

math_test_1$233:	; push float x
x2237:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$234:	; parameter x, offset 8
x2240:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$235:	; call header integral zero 0 stack zero 0

math_test_1$236:	; push float x
x2243:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$237:	; parameter x, offset 22
x2246:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$238:	; call function noellipse-noellipse fabs
x2249:	mov word [bp + 30], math_test_1$239	; 5: -57 70 30 -41 8
x2254:	mov [bp + 32], bp	; 3: -119 110 32
x2257:	add bp, 30	; 3: -125 -59 30
x2260:	jmp fabs	; 3: -23 -107 29

math_test_1$239:	; post call

math_test_1$240:	; £temporary4021 = return_value

math_test_1$241:	; parameter £temporary4021, offset 16
x2263:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$242:	; parameter errno, offset 24
x2266:	mov ax, [errno]	; 3: -95 35 10
x2269:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$243:	; call function noellipse-ellipse printf, extra 0
x2272:	mov word [bp + 14], math_test_1$244	; 5: -57 70 14 -13 8
x2277:	mov [bp + 16], bp	; 3: -119 110 16
x2280:	add bp, 14	; 3: -125 -59 14
x2283:	mov di, bp	; 2: -119 -17
x2285:	add di, 18	; 3: -125 -57 18
x2288:	jmp printf	; 3: -23 63 3

math_test_1$244:	; post call

math_test_1$245:	; errno = 0
x2291:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$246:	; j = 0
x2297:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

math_test_1$247:	; call header integral zero 0 stack zero 0

math_test_1$248:	; push float x
x2302:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$249:	; parameter x, offset 6
x2305:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$250:	; £temporary4023 = &j
x2308:	mov si, bp	; 2: -119 -18
x2310:	add si, 14	; 3: -125 -58 14

math_test_1$251:	; parameter £temporary4023, offset 14
x2313:	mov [bp + 30], si	; 3: -119 118 30

math_test_1$252:	; call function noellipse-noellipse frexp
x2316:	mov word [bp + 16], math_test_1$253	; 5: -57 70 16 26 9
x2321:	mov [bp + 18], bp	; 3: -119 110 18
x2324:	add bp, 16	; 3: -125 -59 16
x2327:	jmp frexp	; 3: -23 111 42

math_test_1$253:	; post call

math_test_1$254:	; £temporary4024 = return_value

math_test_1$255:	; pop float z
x2330:	fstp qword [bp + 16]	; 3: -35 94 16

math_test_1$256:	; call header integral zero 0 stack zero 0

math_test_1$257:	; parameter string_frexp202825f2C20p29203D202825f2C2025i292C20errno203D2025i0A#, offset 6
x2333:	mov word [bp + 30], string_frexp202825f2C20p29203D202825f2C2025i292C20errno203D2025i0A#	; 5: -57 70 30 -42 11

math_test_1$258:	; push float x
x2338:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$259:	; parameter x, offset 8
x2341:	fstp qword [bp + 32]	; 3: -35 94 32

math_test_1$260:	; push float z
x2344:	fld qword [bp + 16]	; 3: -35 70 16

math_test_1$261:	; parameter z, offset 16
x2347:	fstp qword [bp + 40]	; 3: -35 94 40

math_test_1$262:	; parameter j, offset 24
x2350:	mov ax, [bp + 14]	; 3: -117 70 14
x2353:	mov [bp + 48], ax	; 3: -119 70 48

math_test_1$263:	; parameter errno, offset 26
x2356:	mov ax, [errno]	; 3: -95 35 10
x2359:	mov [bp + 50], ax	; 3: -119 70 50

math_test_1$264:	; call function noellipse-ellipse printf, extra 0
x2362:	mov word [bp + 24], math_test_1$265	; 5: -57 70 24 77 9
x2367:	mov [bp + 26], bp	; 3: -119 110 26
x2370:	add bp, 24	; 3: -125 -59 24
x2373:	mov di, bp	; 2: -119 -17
x2375:	add di, 20	; 3: -125 -57 20
x2378:	jmp printf	; 3: -23 -27 2

math_test_1$265:	; post call

math_test_1$266:	; if errno == 0 goto 272
x2381:	cmp word [errno], 0	; 5: -125 62 35 10 0
x2386:	je math_test_1$272	; 2: 116 25

math_test_1$267:	; call header integral zero 0 stack zero 0

math_test_1$268:	; parameter string_Error20message3A#, offset 6
x2388:	mov word [bp + 30], string_Error20message3A#	; 5: -57 70 30 -4 11

math_test_1$269:	; call function noellipse-noellipse perror
x2393:	mov word [bp + 24], math_test_1$270	; 5: -57 70 24 103 9
x2398:	mov [bp + 26], bp	; 3: -119 110 26
x2401:	add bp, 24	; 3: -125 -59 24
x2404:	jmp perror	; 3: -23 22 43

math_test_1$270:	; post call

math_test_1$271:	; errno = 0
x2407:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$272:	; push 0
x2413:	fldz	; 2: -39 -18

math_test_1$273:	; pop float w
x2415:	fstp qword [bp + 14]	; 3: -35 94 14

math_test_1$274:	; call header integral zero 0 stack zero 0

math_test_1$275:	; push float x
x2418:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$276:	; parameter x, offset 6
x2421:	fstp qword [bp + 28]	; 3: -35 94 28

math_test_1$277:	; £temporary4028 = &w
x2424:	mov si, bp	; 2: -119 -18
x2426:	add si, 14	; 3: -125 -58 14

math_test_1$278:	; parameter £temporary4028, offset 14
x2429:	mov [bp + 36], si	; 3: -119 118 36

math_test_1$279:	; call function noellipse-noellipse modf
x2432:	mov word [bp + 22], math_test_1$280	; 5: -57 70 22 -114 9
x2437:	mov [bp + 24], bp	; 3: -119 110 24
x2440:	add bp, 22	; 3: -125 -59 22
x2443:	jmp modf	; 3: -23 -117 43

math_test_1$280:	; post call

math_test_1$281:	; £temporary4029 = return_value

math_test_1$282:	; pop float z
x2446:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$283:	; call header integral zero 0 stack zero 0

math_test_1$284:	; parameter string_modf202825f2C20p29203D202825f2C2025f292C20errno203D2025i0A#, offset 6
x2449:	mov word [bp + 36], string_modf202825f2C20p29203D202825f2C2025f292C20errno203D2025i0A#	; 5: -57 70 36 11 12

math_test_1$285:	; push float x
x2454:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$286:	; parameter x, offset 8
x2457:	fstp qword [bp + 38]	; 3: -35 94 38

math_test_1$287:	; push float z
x2460:	fld qword [bp + 22]	; 3: -35 70 22

math_test_1$288:	; parameter z, offset 16
x2463:	fstp qword [bp + 46]	; 3: -35 94 46

math_test_1$289:	; push float w
x2466:	fld qword [bp + 14]	; 3: -35 70 14

math_test_1$290:	; parameter w, offset 24
x2469:	fstp qword [bp + 54]	; 3: -35 94 54

math_test_1$291:	; parameter errno, offset 32
x2472:	mov ax, [errno]	; 3: -95 35 10
x2475:	mov [bp + 62], ax	; 3: -119 70 62

math_test_1$292:	; call function noellipse-ellipse printf, extra 0
x2478:	mov word [bp + 30], math_test_1$293	; 5: -57 70 30 -63 9
x2483:	mov [bp + 32], bp	; 3: -119 110 32
x2486:	add bp, 30	; 3: -125 -59 30
x2489:	mov di, bp	; 2: -119 -17
x2491:	add di, 26	; 3: -125 -57 26
x2494:	jmp printf	; 3: -23 113 2

math_test_1$293:	; post call

math_test_1$294:	; if errno == 0 goto 300
x2497:	cmp word [errno], 0	; 5: -125 62 35 10 0
x2502:	je math_test_1$300	; 2: 116 25

math_test_1$295:	; call header integral zero 0 stack zero 0

math_test_1$296:	; parameter string_Error20message3A#, offset 6
x2504:	mov word [bp + 36], string_Error20message3A#	; 5: -57 70 36 -4 11

math_test_1$297:	; call function noellipse-noellipse perror
x2509:	mov word [bp + 30], math_test_1$298	; 5: -57 70 30 -37 9
x2514:	mov [bp + 32], bp	; 3: -119 110 32
x2517:	add bp, 30	; 3: -125 -59 30
x2520:	jmp perror	; 3: -23 -94 42

math_test_1$298:	; post call

math_test_1$299:	; errno = 0
x2523:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_1$300:	; call header integral zero 0 stack zero 0

math_test_1$301:	; parameter string_0A#, offset 6
x2529:	mov word [bp + 20], string_0A#	; 5: -57 70 20 48 12

math_test_1$302:	; call function noellipse-ellipse printf, extra 0
x2534:	mov word [bp + 14], math_test_1$303	; 5: -57 70 14 -10 9
x2539:	mov [bp + 16], bp	; 3: -119 110 16
x2542:	add bp, 14	; 3: -125 -59 14
x2545:	mov di, bp	; 2: -119 -17
x2547:	jmp printf	; 3: -23 60 2

math_test_1$303:	; post call

math_test_1$304:	; return
x2550:	mov ax, [bp]	; 3: -117 70 0
x2553:	mov di, [bp + 4]	; 3: -117 126 4
x2556:	mov bp, [bp + 2]	; 3: -117 110 2
x2559:	jmp ax	; 2: -1 -32

math_test_1$305:	; function end math_test_1

string_3C25f3E0A#:
x2561:	db "<%f>", 10, 0	; 6: 60 37 102 62 10 0

string_2020sin2825f29203D2025f2C20errno203D2025i0A#:
x2567:	db "  sin(%f) = %f, errno = %i", 10, 0	; 28: 32 32 115 105 110 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

errno:
x2595:	dw 0	; 2: 0 0

string_2020cos2825f29203D2025f2C20errno203D2025i0A#:
x2597:	db "  cos(%f) = %f, errno = %i", 10, 0	; 28: 32 32 99 111 115 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020tan2825f29203D2025f2C20errno203D2025i0A#:
x2625:	db "  tan(%f) = %f, errno = %i", 10, 0	; 28: 32 32 116 97 110 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020asin2825f29203D2025f2C20errno203D2025i0A#:
x2653:	db "  asin(%f) = %f, errno = %i", 10, 0	; 29: 32 32 97 115 105 110 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020acos2825f29203D2025f2C20errno203D2025i0A#:
x2682:	db "  acos(%f) = %f, errno = %i", 10, 0	; 29: 32 32 97 99 111 115 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020atan2825f29203D2025f2C20errno203D2025i0A#:
x2711:	db "  atan(%f) = %f, errno = %i", 10, 0	; 29: 32 32 97 116 97 110 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020exp2825f29203D2025f2C20errno203D2025i0A#:
x2740:	db "  exp(%f) = %f, errno = %i", 10, 0	; 28: 32 32 101 120 112 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020log2825f29203D2025f2C20errno203D2025i0A#:
x2768:	db "  log(%f) = %f, errno = %i", 10, 0	; 28: 32 32 108 111 103 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020log102825f29203D2025f2C20errno203D2025i0A#:
x2796:	db "  log10(%f) = %f, errno = %i", 10, 0	; 30: 32 32 108 111 103 49 48 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020sinh2825f29203D2025f2C20errno203D2025i0A#:
x2826:	db "  sinh(%f) = %f, errno = %i", 10, 0	; 29: 32 32 115 105 110 104 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020cosh2825f29203D2025f2C20errno203D2025i0A#:
x2855:	db "  cosh(%f) = %f, errno = %i", 10, 0	; 29: 32 32 99 111 115 104 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020tanh2825f29203D2025f2C20errno203D2025i0A#:
x2884:	db "  tanh(%f) = %f, errno = %i", 10, 0	; 29: 32 32 116 97 110 104 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020sqrt2825f29203D2025f2C20errno203D2025i0A#:
x2913:	db "  sqrt(%f) = %f, errno = %i", 10, 0	; 29: 32 32 115 113 114 116 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020floor2825f29203D2025f2C20errno203D2025i0A#:
x2942:	db "  floor(%f) = %f, errno = %i", 10, 0	; 30: 32 32 102 108 111 111 114 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020ceil2825f29203D2025f2C20errno203D2025i0A#:
x2972:	db "  ceil(%f) = %f, errno = %i", 10, 0	; 29: 32 32 99 101 105 108 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020fabs2825f29203D2025f2C20errno203D2025i0A#:
x3001:	db "  fabs(%f) = %f, errno = %i", 10, 0	; 29: 32 32 102 97 98 115 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_frexp202825f2C20p29203D202825f2C2025i292C20errno203D2025i0A#:
x3030:	db "frexp (%f, p) = (%f, %i), errno = %i", 10, 0	; 38: 102 114 101 120 112 32 40 37 102 44 32 112 41 32 61 32 40 37 102 44 32 37 105 41 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_Error20message3A#:
x3068:	db "Error message:", 0	; 15: 69 114 114 111 114 32 109 101 115 115 97 103 101 58 0

string_modf202825f2C20p29203D202825f2C2025f292C20errno203D2025i0A#:
x3083:	db "modf (%f, p) = (%f, %f), errno = %i", 10, 0	; 37: 109 111 100 102 32 40 37 102 44 32 112 41 32 61 32 40 37 102 44 32 37 102 41 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_0A#:
x3120:	db 10, 0	; 2: 10 0

printf:	; £temporary2346 = &format
x3122:	mov si, bp	; 2: -119 -18
x3124:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2347 = int_to_int £temporary2346 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2347 + 2
x3127:	add si, 2	; 3: -125 -58 2
x3130:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; call header integral zero 0 stack zero 0

printf$4:	; parameter format, offset 6
x3133:	mov ax, [bp + 6]	; 3: -117 70 6
x3136:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; parameter arg_list, offset 8
x3139:	mov ax, [di + 8]	; 3: -117 69 8
x3142:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; call function ellipse-noellipse vprintf
x3145:	mov word [di + 10], printf$7	; 5: -57 69 10 92 12
x3150:	mov [di + 12], bp	; 3: -119 109 12
x3153:	mov [di + 14], di	; 3: -119 125 14
x3156:	add di, 10	; 3: -125 -57 10
x3159:	mov bp, di	; 2: -119 -3
x3161:	nop	; 1: -112
x3162:	jmp vprintf	; 2: -21 11

printf$7:	; post call

printf$8:	; £temporary2349 = return_value

printf$9:	; return_value = £temporary2349

printf$10:	; return
x3164:	mov ax, [bp]	; 3: -117 70 0
x3167:	mov di, [bp + 4]	; 3: -117 126 4
x3170:	mov bp, [bp + 2]	; 3: -117 110 2
x3173:	jmp ax	; 2: -1 -32

printf$11:	; function end printf

vprintf:	; call header integral zero 0 stack zero 0

vprintf$1:	; parameter stdout, offset 6
x3175:	mov ax, [stdout]	; 3: -95 -110 12
x3178:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; parameter format, offset 8
x3181:	mov ax, [bp + 6]	; 3: -117 70 6
x3184:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; parameter arg_list, offset 10
x3187:	mov ax, [bp + 8]	; 3: -117 70 8
x3190:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; call function noellipse-noellipse vfprintf
x3193:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 -121 12
x3198:	mov [bp + 12], bp	; 3: -119 110 12
x3201:	add bp, 10	; 3: -125 -59 10
x3204:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; post call

vprintf$6:	; £temporary2353 = return_value

vprintf$7:	; return_value = £temporary2353

vprintf$8:	; return
x3207:	mov ax, [bp]	; 3: -117 70 0
x3210:	mov di, [bp + 4]	; 3: -117 126 4
x3213:	mov bp, [bp + 2]	; 3: -117 110 2
x3216:	jmp ax	; 2: -1 -32

vprintf$9:	; function end vprintf

stdout:
x3218:	dw g_fileArray + 29	; 2: -79 12

g_fileArray:
x3220:	dw 1	; 2: 1 0
x3222:	dw 0	; 2: 0 0
x3224:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x3249:	dw 1	; 2: 1 0
x3251:	dw 1	; 2: 1 0
x3253:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x3278:	dw 1	; 2: 1 0
x3280:	dw 2	; 2: 2 0
x3282:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x3307:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

vfprintf:	; g_outStatus = 0
x3800:	mov word [g_outStatus], 0	; 6: -57 6 9 15 0 0

vfprintf$1:	; £temporary2365 = int_to_int outStream (Pointer -> Pointer)
x3806:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2365
x3809:	mov [g_outDevice], ax	; 3: -93 11 15

vfprintf$3:	; call header integral zero 0 stack zero 0

vfprintf$4:	; parameter format, offset 6
x3812:	mov ax, [bp + 8]	; 3: -117 70 8
x3815:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; parameter arg_list, offset 8
x3818:	mov ax, [bp + 10]	; 3: -117 70 10
x3821:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; call function noellipse-noellipse printFormat
x3824:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 -2 14
x3829:	mov [bp + 14], bp	; 3: -119 110 14
x3832:	add bp, 12	; 3: -125 -59 12
x3835:	nop	; 1: -112
x3836:	jmp printFormat	; 2: -21 15

vfprintf$7:	; post call

vfprintf$8:	; £temporary2366 = return_value

vfprintf$9:	; return_value = £temporary2366

vfprintf$10:	; return
x3838:	mov ax, [bp]	; 3: -117 70 0
x3841:	mov di, [bp + 4]	; 3: -117 126 4
x3844:	mov bp, [bp + 2]	; 3: -117 110 2
x3847:	jmp ax	; 2: -1 -32

vfprintf$11:	; function end vfprintf

g_outStatus:
x3849:	db 0, 0	; 2: 0 0

g_outDevice:
x3851:	db 0, 0	; 2: 0 0

printFormat:	; width = 0
x3853:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; precision = 0
x3858:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; percent = 0
x3863:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; plus = 0
x3868:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; minus = 0
x3873:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; space = 0
x3878:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; zero = 0
x3883:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; grid = 0
x3888:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; widthStar = 0
x3893:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; period = 0
x3898:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; precisionStar = 0
x3903:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; shortInt = 0
x3908:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; longInt = 0
x3913:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; longDouble = 0
x3918:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; g_outChars = 0
x3923:	mov word [g_outChars], 0	; 6: -57 6 93 20 0 0

printFormat$15:	; index = 0
x3929:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2200 = format + index
x3934:	mov si, [bp + 6]	; 3: -117 118 6
x3937:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2199 -> £temporary2200 = *£temporary2200

printFormat$18:	; if £temporary2199 -> £temporary2200 == 0 goto 282
x3940:	cmp byte [si], 0	; 3: -128 60 0
x3943:	je printFormat$282	; 4: 15 -124 -52 4

printFormat$19:	; £temporary2204 = format + index
x3947:	mov si, [bp + 6]	; 3: -117 118 6
x3950:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2203 -> £temporary2204 = *£temporary2204

printFormat$21:	; c = £temporary2203 -> £temporary2204
x3953:	mov al, [si]	; 2: -118 4
x3955:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 260
x3958:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x3962:	je printFormat$260	; 4: 15 -124 81 4

printFormat$23:	; case c == 43 goto 52
x3966:	mov al, [bp + 40]	; 3: -118 70 40
x3969:	cmp al, 43	; 2: 60 43
x3971:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; case c == 45 goto 54
x3975:	cmp al, 45	; 2: 60 45
x3977:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; case c == 32 goto 56
x3981:	cmp al, 32	; 2: 60 32
x3983:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; case c == 48 goto 58
x3987:	cmp al, 48	; 2: 60 48
x3989:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; case c == 35 goto 60
x3993:	cmp al, 35	; 2: 60 35
x3995:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; case c == 46 goto 62
x3999:	cmp al, 46	; 2: 60 46
x4001:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; case c == 42 goto 64
x4005:	cmp al, 42	; 2: 60 42
x4007:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; case c == 104 goto 69
x4011:	cmp al, 104	; 2: 60 104
x4013:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; case c == 108 goto 71
x4017:	cmp al, 108	; 2: 60 108
x4019:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; case c == 76 goto 73
x4023:	cmp al, 76	; 2: 60 76
x4025:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; case c == 37 goto 75
x4029:	cmp al, 37	; 2: 60 37
x4031:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; case c == 110 goto 75
x4035:	cmp al, 110	; 2: 60 110
x4037:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; case c == 112 goto 75
x4041:	cmp al, 112	; 2: 60 112
x4043:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; case c == 71 goto 75
x4047:	cmp al, 71	; 2: 60 71
x4049:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; case c == 103 goto 75
x4053:	cmp al, 103	; 2: 60 103
x4055:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; case c == 69 goto 75
x4059:	cmp al, 69	; 2: 60 69
x4061:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; case c == 101 goto 75
x4065:	cmp al, 101	; 2: 60 101
x4067:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; case c == 102 goto 75
x4071:	cmp al, 102	; 2: 60 102
x4073:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; case c == 115 goto 75
x4077:	cmp al, 115	; 2: 60 115
x4079:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; case c == 99 goto 75
x4083:	cmp al, 99	; 2: 60 99
x4085:	je printFormat$75	; 2: 116 125

printFormat$43:	; case c == 88 goto 75
x4087:	cmp al, 88	; 2: 60 88
x4089:	je printFormat$75	; 2: 116 121

printFormat$44:	; case c == 120 goto 75
x4091:	cmp al, 120	; 2: 60 120
x4093:	je printFormat$75	; 2: 116 117

printFormat$45:	; case c == 111 goto 75
x4095:	cmp al, 111	; 2: 60 111
x4097:	je printFormat$75	; 2: 116 113

printFormat$46:	; case c == 98 goto 75
x4099:	cmp al, 98	; 2: 60 98
x4101:	je printFormat$75	; 2: 116 109

printFormat$47:	; case c == 117 goto 75
x4103:	cmp al, 117	; 2: 60 117
x4105:	je printFormat$75	; 2: 116 105

printFormat$48:	; case c == 100 goto 75
x4107:	cmp al, 100	; 2: 60 100
x4109:	je printFormat$75	; 2: 116 101

printFormat$49:	; case c == 105 goto 75
x4111:	cmp al, 105	; 2: 60 105
x4113:	je printFormat$75	; 2: 116 97

printFormat$50:	; case end c

printFormat$51:	; goto 237
x4115:	jmp printFormat$237	; 3: -23 70 3

printFormat$52:	; plus = 1
x4118:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 280
x4123:	jmp printFormat$280	; 3: -23 19 4

printFormat$54:	; minus = 1
x4126:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 280
x4131:	jmp printFormat$280	; 3: -23 11 4

printFormat$56:	; space = 1
x4134:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 280
x4139:	jmp printFormat$280	; 3: -23 3 4

printFormat$58:	; zero = 1
x4142:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 280
x4147:	jmp printFormat$280	; 3: -23 -5 3

printFormat$60:	; grid = 1
x4150:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 280
x4155:	jmp printFormat$280	; 3: -23 -13 3

printFormat$62:	; period = 1
x4158:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 280
x4163:	jmp printFormat$280	; 3: -23 -21 3

printFormat$64:	; if period != 0 goto 67
x4166:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x4170:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x4172:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 280
x4177:	jmp printFormat$280	; 3: -23 -35 3

printFormat$67:	; precision = -1
x4180:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 280
x4185:	jmp printFormat$280	; 3: -23 -43 3

printFormat$69:	; shortInt = 1
x4188:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 280
x4193:	jmp printFormat$280	; 3: -23 -51 3

printFormat$71:	; longInt = 1
x4196:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 280
x4201:	jmp printFormat$280	; 3: -23 -59 3

printFormat$73:	; longDouble = 1
x4204:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 280
x4209:	jmp printFormat$280	; 3: -23 -67 3

printFormat$75:	; if minus == 0 goto 106
x4212:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x4216:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x4220:	mov ax, [g_outChars]	; 3: -95 93 20
x4223:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; call header integral zero 0 stack zero 0

printFormat$78:	; £temporary2208 = format + index
x4226:	mov si, [bp + 6]	; 3: -117 118 6
x4229:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2207 -> £temporary2208 = *£temporary2208

printFormat$80:	; £temporary2209 = &£temporary2207 -> £temporary2208

printFormat$81:	; parameter £temporary2209, offset 6
x4232:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; parameter arg_list, offset 8
x4235:	mov ax, [bp + 8]	; 3: -117 70 8
x4238:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; parameter plus, offset 10
x4241:	mov ax, [bp + 18]	; 3: -117 70 18
x4244:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; parameter space, offset 12
x4247:	mov ax, [bp + 22]	; 3: -117 70 22
x4250:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; parameter grid, offset 14
x4253:	mov ax, [bp + 26]	; 3: -117 70 26
x4256:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; £temporary2210 = &width
x4259:	mov si, bp	; 2: -119 -18
x4261:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2210, offset 16
x4264:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; parameter precision, offset 18
x4267:	mov ax, [bp + 14]	; 3: -117 70 14
x4270:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; parameter shortInt, offset 20
x4273:	mov ax, [bp + 34]	; 3: -117 70 34
x4276:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; parameter longInt, offset 22
x4279:	mov ax, [bp + 36]	; 3: -117 70 36
x4282:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; parameter longDouble, offset 24
x4285:	mov ax, [bp + 38]	; 3: -117 70 38
x4288:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; parameter 1, offset 26
x4291:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; parameter 0, offset 28
x4296:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; call function noellipse-noellipse printArgument
x4301:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 -37 16
x4306:	mov [bp + 45], bp	; 3: -119 110 45
x4309:	add bp, 43	; 3: -125 -59 43
x4312:	jmp printArgument	; 3: -23 -122 3

printFormat$95:	; post call

printFormat$96:	; £temporary2211 = return_value

printFormat$97:	; arg_list = £temporary2211
x4315:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2213 = g_outChars - startChars
x4318:	mov ax, [g_outChars]	; 3: -95 93 20
x4321:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x4324:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2213 >= width goto 235
x4327:	cmp ax, [bp + 12]	; 3: 59 70 12
x4330:	jge printFormat$235	; 4: 15 -115 102 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x4334:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x4338:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 0 17
x4343:	mov [bp + 47], bp	; 3: -119 110 47
x4346:	add bp, 45	; 3: -125 -59 45
x4349:	jmp printChar	; 3: -23 116 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x4352:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 182
x4354:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x4358:	je printFormat$182	; 4: 15 -124 82 1

printFormat$107:	; startChars = g_outChars
x4362:	mov ax, [g_outChars]	; 3: -95 93 20
x4365:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$108:	; oldOutStatus = g_outStatus
x4368:	mov ax, [g_outStatus]	; 3: -95 9 15
x4371:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$109:	; negative = 0
x4374:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$110:	; g_outStatus = 2
x4379:	mov word [g_outStatus], 2	; 6: -57 6 9 15 2 0

printFormat$111:	; call header integral zero 0 stack zero 0

printFormat$112:	; £temporary2217 = format + index
x4385:	mov si, [bp + 6]	; 3: -117 118 6
x4388:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2216 -> £temporary2217 = *£temporary2217

printFormat$114:	; £temporary2218 = &£temporary2216 -> £temporary2217

printFormat$115:	; parameter £temporary2218, offset 6
x4391:	mov [bp + 53], si	; 3: -119 118 53

printFormat$116:	; parameter arg_list, offset 8
x4394:	mov ax, [bp + 8]	; 3: -117 70 8
x4397:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$117:	; parameter 0, offset 10
x4400:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$118:	; parameter 0, offset 12
x4405:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$119:	; parameter grid, offset 14
x4410:	mov ax, [bp + 26]	; 3: -117 70 26
x4413:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$120:	; £temporary2219 = &width
x4416:	mov si, bp	; 2: -119 -18
x4418:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2219, offset 16
x4421:	mov [bp + 63], si	; 3: -119 118 63

printFormat$122:	; parameter precision, offset 18
x4424:	mov ax, [bp + 14]	; 3: -117 70 14
x4427:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$123:	; parameter shortInt, offset 20
x4430:	mov ax, [bp + 34]	; 3: -117 70 34
x4433:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$124:	; parameter longInt, offset 22
x4436:	mov ax, [bp + 36]	; 3: -117 70 36
x4439:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$125:	; parameter longDouble, offset 24
x4442:	mov ax, [bp + 38]	; 3: -117 70 38
x4445:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$126:	; parameter 0, offset 26
x4448:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$127:	; £temporary2220 = &negative
x4453:	mov si, bp	; 2: -119 -18
x4455:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2220, offset 28
x4458:	mov [bp + 75], si	; 3: -119 118 75

printFormat$129:	; call function noellipse-noellipse printArgument
x4461:	mov word [bp + 47], printFormat$130	; 5: -57 70 47 123 17
x4466:	mov [bp + 49], bp	; 3: -119 110 49
x4469:	add bp, 47	; 3: -125 -59 47
x4472:	jmp printArgument	; 3: -23 -26 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x4475:	mov ax, [bp + 43]	; 3: -117 70 43
x4478:	mov [g_outStatus], ax	; 3: -93 9 15

printFormat$132:	; field = g_outChars - startChars
x4481:	mov ax, [g_outChars]	; 3: -95 93 20
x4484:	sub ax, [bp + 41]	; 3: 43 70 41
x4487:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x4490:	mov ax, [bp + 41]	; 3: -117 70 41
x4493:	mov [g_outChars], ax	; 3: -93 93 20

printFormat$134:	; if negative == 0 goto 141
x4496:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x4500:	je printFormat$141	; 2: 116 23

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 45, offset 6
x4502:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$137:	; call function noellipse-noellipse printChar
x4506:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 -88 17
x4511:	mov [bp + 51], bp	; 3: -119 110 51
x4514:	add bp, 49	; 3: -125 -59 49
x4517:	jmp printChar	; 3: -23 -52 9

printFormat$138:	; post call

printFormat$139:	; ++field
x4520:	inc word [bp + 47]	; 3: -1 70 47

printFormat$140:	; goto 154
x4523:	jmp printFormat$154	; 2: -21 57

printFormat$141:	; if plus == 0 goto 148
x4525:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x4529:	je printFormat$148	; 2: 116 23

printFormat$142:	; call header integral zero 0 stack zero 0

printFormat$143:	; parameter 43, offset 6
x4531:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$144:	; call function noellipse-noellipse printChar
x4535:	mov word [bp + 49], printFormat$145	; 5: -57 70 49 -59 17
x4540:	mov [bp + 51], bp	; 3: -119 110 51
x4543:	add bp, 49	; 3: -125 -59 49
x4546:	jmp printChar	; 3: -23 -81 9

printFormat$145:	; post call

printFormat$146:	; ++field
x4549:	inc word [bp + 47]	; 3: -1 70 47

printFormat$147:	; goto 154
x4552:	jmp printFormat$154	; 2: -21 28

printFormat$148:	; if space == 0 goto 154
x4554:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x4558:	je printFormat$154	; 2: 116 22

printFormat$149:	; call header integral zero 0 stack zero 0

printFormat$150:	; parameter 32, offset 6
x4560:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$151:	; call function noellipse-noellipse printChar
x4564:	mov word [bp + 49], printFormat$152	; 5: -57 70 49 -30 17
x4569:	mov [bp + 51], bp	; 3: -119 110 51
x4572:	add bp, 49	; 3: -125 -59 49
x4575:	jmp printChar	; 3: -23 -110 9

printFormat$152:	; post call

printFormat$153:	; £temporary2232 = field + 1
x4578:	mov ax, [bp + 47]	; 3: -117 70 47
x4581:	inc ax	; 1: 64

printFormat$154:	; ++field
x4582:	inc word [bp + 47]	; 3: -1 70 47

printFormat$155:	; if £temporary2232 >= width goto 161
x4585:	cmp ax, [bp + 12]	; 3: 59 70 12
x4588:	jge printFormat$161	; 2: 125 20

printFormat$156:	; call header integral zero 0 stack zero 0

printFormat$157:	; parameter 48, offset 6
x4590:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$158:	; call function noellipse-noellipse printChar
x4594:	mov word [bp + 49], printFormat$159	; 5: -57 70 49 0 18
x4599:	mov [bp + 51], bp	; 3: -119 110 51
x4602:	add bp, 49	; 3: -125 -59 49
x4605:	jmp printChar	; 3: -23 116 9

printFormat$159:	; post call

printFormat$160:	; goto 154
x4608:	jmp printFormat$154	; 2: -21 -28

printFormat$161:	; call header integral zero 0 stack zero 0

printFormat$162:	; £temporary2236 = format + index
x4610:	mov si, [bp + 6]	; 3: -117 118 6
x4613:	add si, [bp + 10]	; 3: 3 118 10

printFormat$163:	; £temporary2235 -> £temporary2236 = *£temporary2236

printFormat$164:	; £temporary2237 = &£temporary2235 -> £temporary2236

printFormat$165:	; parameter £temporary2237, offset 6
x4616:	mov [bp + 55], si	; 3: -119 118 55

printFormat$166:	; parameter arg_list, offset 8
x4619:	mov ax, [bp + 8]	; 3: -117 70 8
x4622:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$167:	; parameter 0, offset 10
x4625:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$168:	; parameter 0, offset 12
x4630:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$169:	; parameter grid, offset 14
x4635:	mov ax, [bp + 26]	; 3: -117 70 26
x4638:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$170:	; parameter 0, offset 16
x4641:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$171:	; parameter precision, offset 18
x4646:	mov ax, [bp + 14]	; 3: -117 70 14
x4649:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$172:	; parameter shortInt, offset 20
x4652:	mov ax, [bp + 34]	; 3: -117 70 34
x4655:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$173:	; parameter longInt, offset 22
x4658:	mov ax, [bp + 36]	; 3: -117 70 36
x4661:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$174:	; parameter longDouble, offset 24
x4664:	mov ax, [bp + 38]	; 3: -117 70 38
x4667:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$175:	; parameter 0, offset 26
x4670:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$176:	; parameter 0, offset 28
x4675:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$177:	; call function noellipse-noellipse printArgument
x4680:	mov word [bp + 49], printFormat$178	; 5: -57 70 49 86 18
x4685:	mov [bp + 51], bp	; 3: -119 110 51
x4688:	add bp, 49	; 3: -125 -59 49
x4691:	jmp printArgument	; 3: -23 11 2

printFormat$178:	; post call

printFormat$179:	; £temporary2238 = return_value

printFormat$180:	; arg_list = £temporary2238
x4694:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$181:	; goto 235
x4697:	jmp printFormat$235	; 3: -23 -8 0

printFormat$182:	; startChars = g_outChars
x4700:	mov ax, [g_outChars]	; 3: -95 93 20
x4703:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$183:	; oldOutStatus = g_outStatus
x4706:	mov ax, [g_outStatus]	; 3: -95 9 15
x4709:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$184:	; g_outStatus = 2
x4712:	mov word [g_outStatus], 2	; 6: -57 6 9 15 2 0

printFormat$185:	; call header integral zero 0 stack zero 0

printFormat$186:	; £temporary2240 = format + index
x4718:	mov si, [bp + 6]	; 3: -117 118 6
x4721:	add si, [bp + 10]	; 3: 3 118 10

printFormat$187:	; £temporary2239 -> £temporary2240 = *£temporary2240

printFormat$188:	; £temporary2241 = &£temporary2239 -> £temporary2240

printFormat$189:	; parameter £temporary2241, offset 6
x4724:	mov [bp + 51], si	; 3: -119 118 51

printFormat$190:	; parameter arg_list, offset 8
x4727:	mov ax, [bp + 8]	; 3: -117 70 8
x4730:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$191:	; parameter plus, offset 10
x4733:	mov ax, [bp + 18]	; 3: -117 70 18
x4736:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$192:	; parameter space, offset 12
x4739:	mov ax, [bp + 22]	; 3: -117 70 22
x4742:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$193:	; parameter grid, offset 14
x4745:	mov ax, [bp + 26]	; 3: -117 70 26
x4748:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$194:	; £temporary2242 = &width
x4751:	mov si, bp	; 2: -119 -18
x4753:	add si, 12	; 3: -125 -58 12

printFormat$195:	; parameter £temporary2242, offset 16
x4756:	mov [bp + 61], si	; 3: -119 118 61

printFormat$196:	; parameter precision, offset 18
x4759:	mov ax, [bp + 14]	; 3: -117 70 14
x4762:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$197:	; parameter shortInt, offset 20
x4765:	mov ax, [bp + 34]	; 3: -117 70 34
x4768:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$198:	; parameter longInt, offset 22
x4771:	mov ax, [bp + 36]	; 3: -117 70 36
x4774:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$199:	; parameter longDouble, offset 24
x4777:	mov ax, [bp + 38]	; 3: -117 70 38
x4780:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$200:	; parameter 1, offset 26
x4783:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$201:	; parameter 0, offset 28
x4788:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$202:	; call function noellipse-noellipse printArgument
x4793:	mov word [bp + 45], printFormat$203	; 5: -57 70 45 -57 18
x4798:	mov [bp + 47], bp	; 3: -119 110 47
x4801:	add bp, 45	; 3: -125 -59 45
x4804:	jmp printArgument	; 3: -23 -102 1

printFormat$203:	; post call

printFormat$204:	; g_outStatus = oldOutStatus
x4807:	mov ax, [bp + 43]	; 3: -117 70 43
x4810:	mov [g_outStatus], ax	; 3: -93 9 15

printFormat$205:	; field = g_outChars - startChars
x4813:	mov ax, [g_outChars]	; 3: -95 93 20
x4816:	sub ax, [bp + 41]	; 3: 43 70 41
x4819:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$206:	; g_outChars = startChars
x4822:	mov ax, [bp + 41]	; 3: -117 70 41
x4825:	mov [g_outChars], ax	; 3: -93 93 20

printFormat$207:	; £temporary2245 = field
x4828:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$208:	; ++field
x4831:	inc word [bp + 45]	; 3: -1 70 45

printFormat$209:	; if £temporary2245 >= width goto 215
x4834:	cmp ax, [bp + 12]	; 3: 59 70 12
x4837:	jge printFormat$215	; 2: 125 20

printFormat$210:	; call header integral zero 0 stack zero 0

printFormat$211:	; parameter 32, offset 6
x4839:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$212:	; call function noellipse-noellipse printChar
x4843:	mov word [bp + 47], printFormat$213	; 5: -57 70 47 -7 18
x4848:	mov [bp + 49], bp	; 3: -119 110 49
x4851:	add bp, 47	; 3: -125 -59 47
x4854:	jmp printChar	; 3: -23 123 8

printFormat$213:	; post call

printFormat$214:	; goto 207
x4857:	jmp printFormat$207	; 2: -21 -31

printFormat$215:	; call header integral zero 0 stack zero 0

printFormat$216:	; £temporary2249 = format + index
x4859:	mov si, [bp + 6]	; 3: -117 118 6
x4862:	add si, [bp + 10]	; 3: 3 118 10

printFormat$217:	; £temporary2248 -> £temporary2249 = *£temporary2249

printFormat$218:	; £temporary2250 = &£temporary2248 -> £temporary2249

printFormat$219:	; parameter £temporary2250, offset 6
x4865:	mov [bp + 53], si	; 3: -119 118 53

printFormat$220:	; parameter arg_list, offset 8
x4868:	mov ax, [bp + 8]	; 3: -117 70 8
x4871:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$221:	; parameter plus, offset 10
x4874:	mov ax, [bp + 18]	; 3: -117 70 18
x4877:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$222:	; parameter space, offset 12
x4880:	mov ax, [bp + 22]	; 3: -117 70 22
x4883:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$223:	; parameter grid, offset 14
x4886:	mov ax, [bp + 26]	; 3: -117 70 26
x4889:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$224:	; parameter 0, offset 16
x4892:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$225:	; parameter precision, offset 18
x4897:	mov ax, [bp + 14]	; 3: -117 70 14
x4900:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$226:	; parameter shortInt, offset 20
x4903:	mov ax, [bp + 34]	; 3: -117 70 34
x4906:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$227:	; parameter longInt, offset 22
x4909:	mov ax, [bp + 36]	; 3: -117 70 36
x4912:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$228:	; parameter longDouble, offset 24
x4915:	mov ax, [bp + 38]	; 3: -117 70 38
x4918:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$229:	; parameter 1, offset 26
x4921:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$230:	; parameter 0, offset 28
x4926:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$231:	; call function noellipse-noellipse printArgument
x4931:	mov word [bp + 47], printFormat$232	; 5: -57 70 47 81 19
x4936:	mov [bp + 49], bp	; 3: -119 110 49
x4939:	add bp, 47	; 3: -125 -59 47
x4942:	jmp printArgument	; 3: -23 16 1

printFormat$232:	; post call

printFormat$233:	; £temporary2251 = return_value

printFormat$234:	; arg_list = £temporary2251
x4945:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$235:	; percent = 0
x4948:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$236:	; goto 280
x4953:	jmp printFormat$280	; 3: -23 -43 0

printFormat$237:	; value = 0
x4956:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$238:	; call header integral zero 0 stack zero 0

printFormat$239:	; £temporary2254 = int_to_int c (Signed_Char -> Signed_Int)
x4961:	mov al, [bp + 40]	; 3: -118 70 40
x4964:	and ax, 255	; 3: 37 -1 0
x4967:	cmp al, 0	; 2: 60 0
x4969:	jge printFormat$240	; 2: 125 4
x4971:	neg al	; 2: -10 -40
x4973:	neg ax	; 2: -9 -40

printFormat$240:	; parameter £temporary2254, offset 6
x4975:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$241:	; call function noellipse-noellipse isdigit
x4978:	mov word [bp + 43], printFormat$242	; 5: -57 70 43 -128 19
x4983:	mov [bp + 45], bp	; 3: -119 110 45
x4986:	add bp, 43	; 3: -125 -59 43
x4989:	jmp isdigit	; 3: -23 52 25

printFormat$242:	; post call

printFormat$243:	; £temporary2255 = return_value

printFormat$244:	; if £temporary2255 == 0 goto 254
x4992:	cmp bx, 0	; 3: -125 -5 0
x4995:	je printFormat$254	; 2: 116 49

printFormat$245:	; £temporary2256 = value * 10
x4997:	mov ax, [bp + 41]	; 3: -117 70 41
x5000:	xor dx, dx	; 2: 49 -46
x5002:	imul word [int2$10#]	; 4: -9 46 95 20

printFormat$246:	; £temporary2257 = c - 48
x5006:	mov bl, [bp + 40]	; 3: -118 94 40
x5009:	sub bl, 48	; 3: -128 -21 48

printFormat$247:	; £temporary2258 = int_to_int £temporary2257 (Signed_Char -> Signed_Int)
x5012:	and bx, 255	; 4: -127 -29 -1 0
x5016:	cmp bl, 0	; 3: -128 -5 0
x5019:	jge printFormat$248	; 2: 125 4
x5021:	neg bl	; 2: -10 -37
x5023:	neg bx	; 2: -9 -37

printFormat$248:	; value = £temporary2256 + £temporary2258
x5025:	add ax, bx	; 2: 1 -40
x5027:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$249:	; £temporary2260 = index + 1
x5030:	mov ax, [bp + 10]	; 3: -117 70 10
x5033:	inc ax	; 1: 64

printFormat$250:	; £temporary2262 = format + £temporary2260
x5034:	mov si, [bp + 6]	; 3: -117 118 6
x5037:	add si, ax	; 2: 1 -58

printFormat$251:	; £temporary2261 -> £temporary2262 = *£temporary2262

printFormat$252:	; c = £temporary2261 -> £temporary2262
x5039:	mov al, [si]	; 2: -118 4
x5041:	mov [bp + 40], al	; 3: -120 70 40

printFormat$253:	; goto 238
x5044:	jmp printFormat$238	; 2: -21 -85

printFormat$254:	; --index
x5046:	dec word [bp + 10]	; 3: -1 78 10

printFormat$255:	; if period != 0 goto 258
x5049:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x5053:	jne printFormat$258	; 2: 117 8

printFormat$256:	; width = value
x5055:	mov ax, [bp + 41]	; 3: -117 70 41
x5058:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$257:	; goto 280
x5061:	jmp printFormat$280	; 2: -21 106

printFormat$258:	; precision = value
x5063:	mov ax, [bp + 41]	; 3: -117 70 41
x5066:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$259:	; goto 280
x5069:	jmp printFormat$280	; 2: -21 98

printFormat$260:	; if c != 37 goto 276
x5071:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x5075:	jne printFormat$276	; 2: 117 72

printFormat$261:	; percent = 1
x5077:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$262:	; plus = 0
x5082:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$263:	; minus = 0
x5087:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$264:	; space = 0
x5092:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$265:	; zero = 0
x5097:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$266:	; grid = 0
x5102:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$267:	; widthStar = 0
x5107:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$268:	; period = 0
x5112:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$269:	; precisionStar = 0
x5117:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$270:	; shortInt = 0
x5122:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$271:	; longInt = 0
x5127:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$272:	; longDouble = 0
x5132:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$273:	; width = 0
x5137:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$274:	; precision = 0
x5142:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$275:	; goto 280
x5147:	jmp printFormat$280	; 2: -21 20

printFormat$276:	; call header integral zero 0 stack zero 0

printFormat$277:	; parameter c, offset 6
x5149:	mov al, [bp + 40]	; 3: -118 70 40
x5152:	mov [bp + 47], al	; 3: -120 70 47

printFormat$278:	; call function noellipse-noellipse printChar
x5155:	mov word [bp + 41], printFormat$279	; 5: -57 70 41 49 20
x5160:	mov [bp + 43], bp	; 3: -119 110 43
x5163:	add bp, 41	; 3: -125 -59 41
x5166:	jmp printChar	; 3: -23 67 7

printFormat$279:	; post call

printFormat$280:	; ++index
x5169:	inc word [bp + 10]	; 3: -1 70 10

printFormat$281:	; goto 16
x5172:	jmp printFormat$16	; 3: -23 39 -5

printFormat$282:	; if g_outStatus != 1 goto 288
x5175:	cmp word [g_outStatus], 1	; 5: -125 62 9 15 1
x5180:	jne printFormat$288	; 2: 117 16

printFormat$283:	; £temporary2271 = int_to_int g_outDevice (Pointer -> Pointer)
x5182:	mov ax, [g_outDevice]	; 3: -95 11 15

printFormat$284:	; outString = £temporary2271
x5185:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$285:	; £temporary2273 = outString + g_outChars
x5188:	mov si, [bp + 40]	; 3: -117 118 40
x5191:	add si, [g_outChars]	; 4: 3 54 93 20

printFormat$286:	; £temporary2272 -> £temporary2273 = *£temporary2273

printFormat$287:	; £temporary2272 -> £temporary2273 = 0
x5195:	mov byte [si], 0	; 3: -58 4 0

printFormat$288:	; return_value = g_outChars
x5198:	mov bx, [g_outChars]	; 4: -117 30 93 20

printFormat$289:	; return
x5202:	mov ax, [bp]	; 3: -117 70 0
x5205:	mov di, [bp + 4]	; 3: -117 126 4
x5208:	mov bp, [bp + 2]	; 3: -117 110 2
x5211:	jmp ax	; 2: -1 -32

printFormat$290:	; function end printFormat

g_outChars:
x5213:	db 0, 0	; 2: 0 0

int2$10#:
x5215:	dw 10	; 2: 10 0

printArgument:	; £temporary1973 -> format = *format
x5217:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary1973 -> format
x5220:	mov al, [si]	; 2: -118 4
x5222:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x5225:	mov al, [bp + 30]	; 3: -118 70 30
x5228:	cmp al, 100	; 2: 60 100
x5230:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x5232:	cmp al, 105	; 2: 60 105
x5234:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x5236:	cmp al, 99	; 2: 60 99
x5238:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x5242:	cmp al, 115	; 2: 60 115
x5244:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x5248:	cmp al, 88	; 2: 60 88
x5250:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x5254:	cmp al, 120	; 2: 60 120
x5256:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x5260:	cmp al, 98	; 2: 60 98
x5262:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x5266:	cmp al, 111	; 2: 60 111
x5268:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x5272:	cmp al, 117	; 2: 60 117
x5274:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x5278:	cmp al, 71	; 2: 60 71
x5280:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x5284:	cmp al, 103	; 2: 60 103
x5286:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x5290:	cmp al, 69	; 2: 60 69
x5292:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x5296:	cmp al, 101	; 2: 60 101
x5298:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x5302:	cmp al, 102	; 2: 60 102
x5304:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x5308:	cmp al, 112	; 2: 60 112
x5310:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x5314:	cmp al, 110	; 2: 60 110
x5316:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x5320:	cmp al, 37	; 2: 60 37
x5322:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x5326:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x5329:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x5333:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x5335:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary1975 = arg_list - 2
x5339:	mov si, [bp + 8]	; 3: -117 118 8
x5342:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary1976 = int_to_int £temporary1975 (Signed_Int -> Pointer)

printArgument$25:	; £temporary1977 -> £temporary1976 = *£temporary1976

printArgument$26:	; £temporary1978 = int_to_int £temporary1977 -> £temporary1976 (Signed_Int -> Signed_Short_Int)
x5345:	mov ax, [si]	; 2: -117 4
x5347:	cmp ax, 0	; 3: -125 -8 0
x5350:	jge printArgument$27	; 2: 125 4
x5352:	neg ax	; 2: -9 -40
x5354:	neg al	; 2: -10 -40

printArgument$27:	; £temporary1979 = int_to_int £temporary1978 (Signed_Short_Int -> Signed_Long_Int)
x5356:	and eax, 255	; 6: 102 37 -1 0 0 0
x5362:	cmp al, 0	; 2: 60 0
x5364:	jge printArgument$28	; 2: 125 5
x5366:	neg al	; 2: -10 -40
x5368:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary1979
x5371:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x5375:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x5377:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x5381:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x5383:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary1981 = arg_list - 4
x5387:	mov si, [bp + 8]	; 3: -117 118 8
x5390:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary1982 = int_to_int £temporary1981 (Signed_Int -> Pointer)

printArgument$34:	; £temporary1983 -> £temporary1982 = *£temporary1982

printArgument$35:	; longValue = £temporary1983 -> £temporary1982
x5393:	mov eax, [si]	; 3: 102 -117 4
x5396:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x5400:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x5402:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary1985 = arg_list - 2
x5406:	mov si, [bp + 8]	; 3: -117 118 8
x5409:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary1986 = int_to_int £temporary1985 (Signed_Int -> Pointer)

printArgument$40:	; £temporary1987 -> £temporary1986 = *£temporary1986

printArgument$41:	; £temporary1988 = int_to_int £temporary1987 -> £temporary1986 (Signed_Int -> Signed_Long_Int)
x5412:	mov ax, [si]	; 2: -117 4
x5414:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x5420:	cmp ax, 0	; 3: -125 -8 0
x5423:	jge printArgument$42	; 2: 125 5
x5425:	neg ax	; 2: -9 -40
x5427:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary1988
x5430:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x5434:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x5438:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary1992 -> negativePtr = *negativePtr
x5440:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x5443:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x5448:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary1994 = 1
x5450:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x5453:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary1994 = 0
x5455:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary1992 -> negativePtr = £temporary1994
x5458:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x5460:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x5464:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x5466:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x5470:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x5474:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 112 21
x5479:	mov [bp + 50], bp	; 3: -119 110 50
x5482:	add bp, 48	; 3: -125 -59 48
x5485:	jmp labs	; 3: -23 5 5

printArgument$54:	; post call

printArgument$55:	; £temporary1997 = return_value

printArgument$56:	; longValue = £temporary1997
x5488:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x5492:	mov ax, [bp + 8]	; 3: -117 70 8
x5495:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x5498:	mov ax, [bp + 16]	; 3: -117 70 16
x5501:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary1998 = &precision
x5504:	mov si, bp	; 2: -119 -18
x5506:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary1998, offset 10
x5509:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x5512:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 -106 21
x5517:	mov [bp + 50], bp	; 3: -119 110 50
x5520:	add bp, 48	; 3: -125 -59 48
x5523:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; post call

printArgument$64:	; £temporary1999 = return_value

printArgument$65:	; arg_list = £temporary1999
x5526:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x5529:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x5533:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x5537:	mov ax, [bp + 10]	; 3: -117 70 10
x5540:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x5543:	mov ax, [bp + 12]	; 3: -117 70 12
x5546:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x5549:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 -69 21
x5554:	mov [bp + 50], bp	; 3: -119 110 50
x5557:	add bp, 48	; 3: -125 -59 48
x5560:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x5563:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x5566:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary2002 = arg_list - 2
x5570:	mov si, [bp + 8]	; 3: -117 118 8
x5573:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary2003 = int_to_int £temporary2002 (Signed_Int -> Pointer)

printArgument$76:	; £temporary2004 -> £temporary2003 = *£temporary2003

printArgument$77:	; £temporary2005 = int_to_int £temporary2004 -> £temporary2003 (Signed_Int -> Signed_Char)
x5576:	mov ax, [si]	; 2: -117 4
x5578:	cmp ax, 0	; 3: -125 -8 0
x5581:	jge printArgument$78	; 2: 125 4
x5583:	neg ax	; 2: -9 -40
x5585:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary2005
x5587:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x5590:	mov ax, [bp + 8]	; 3: -117 70 8
x5593:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x5596:	mov ax, [bp + 16]	; 3: -117 70 16
x5599:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary2006 = &precision
x5602:	mov si, bp	; 2: -119 -18
x5604:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary2006, offset 10
x5607:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x5610:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 -8 21
x5615:	mov [bp + 46], bp	; 3: -119 110 46
x5618:	add bp, 44	; 3: -125 -59 44
x5621:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; post call

printArgument$86:	; £temporary2007 = return_value

printArgument$87:	; arg_list = £temporary2007
x5624:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x5627:	mov al, [bp + 31]	; 3: -118 70 31
x5630:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x5633:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 15 22
x5638:	mov [bp + 46], bp	; 3: -119 110 46
x5641:	add bp, 44	; 3: -125 -59 44
x5644:	jmp printChar	; 3: -23 101 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x5647:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x5650:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2010 = arg_list - 2
x5654:	mov si, [bp + 8]	; 3: -117 118 8
x5657:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2011 = int_to_int £temporary2010 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2012 -> £temporary2011 = *£temporary2011

printArgument$97:	; stringValue = £temporary2012 -> £temporary2011
x5660:	mov ax, [si]	; 2: -117 4
x5662:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x5665:	mov ax, [bp + 8]	; 3: -117 70 8
x5668:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x5671:	mov ax, [bp + 16]	; 3: -117 70 16
x5674:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2013 = &precision
x5677:	mov si, bp	; 2: -119 -18
x5679:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2013, offset 10
x5682:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x5685:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 67 22
x5690:	mov [bp + 48], bp	; 3: -119 110 48
x5693:	add bp, 46	; 3: -125 -59 46
x5696:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; post call

printArgument$105:	; £temporary2014 = return_value

printArgument$106:	; arg_list = £temporary2014
x5699:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x5702:	mov ax, [bp + 44]	; 3: -117 70 44
x5705:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x5708:	mov ax, [bp + 18]	; 3: -117 70 18
x5711:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x5714:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 96 22
x5719:	mov [bp + 48], bp	; 3: -119 110 48
x5722:	add bp, 46	; 3: -125 -59 46
x5725:	jmp printString	; 3: -23 -36 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x5728:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x5731:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x5735:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2030 = 10
x5737:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x5743:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x5745:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x5749:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2026 = 8
x5751:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x5757:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x5759:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x5763:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2022 = 2
x5765:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x5771:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2022 = 16
x5773:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2026 = £temporary2022

printArgument$124:	; £temporary2030 = £temporary2026

printArgument$125:	; base = £temporary2030
x5779:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x5783:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x5787:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x5789:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2032 = arg_list - 2
x5793:	mov si, [bp + 8]	; 3: -117 118 8
x5796:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2033 = int_to_int £temporary2032 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2034 -> £temporary2033 = *£temporary2033

printArgument$131:	; £temporary2035 = int_to_int £temporary2034 -> £temporary2033 (Unsigned_Int -> Unsigned_Short_Int)
x5799:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2036 = int_to_int £temporary2035 (Unsigned_Short_Int -> Unsigned_Long_Int)
x5801:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2036
x5807:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x5811:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x5813:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x5817:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x5819:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2038 = arg_list - 4
x5823:	mov si, [bp + 8]	; 3: -117 118 8
x5826:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2039 = int_to_int £temporary2038 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2040 -> £temporary2039 = *£temporary2039

printArgument$140:	; value = £temporary2040 -> £temporary2039
x5829:	mov eax, [si]	; 3: 102 -117 4
x5832:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x5836:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x5838:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2042 = arg_list - 2
x5842:	mov si, [bp + 8]	; 3: -117 118 8
x5845:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2043 = int_to_int £temporary2042 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2044 -> £temporary2043 = *£temporary2043

printArgument$146:	; £temporary2045 = int_to_int £temporary2044 -> £temporary2043 (Unsigned_Int -> Unsigned_Long_Int)
x5848:	mov ax, [si]	; 2: -117 4
x5850:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2045
x5856:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x5860:	mov ax, [bp + 8]	; 3: -117 70 8
x5863:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x5866:	mov ax, [bp + 16]	; 3: -117 70 16
x5869:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2048 = &precision
x5872:	mov si, bp	; 2: -119 -18
x5874:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2048, offset 10
x5877:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x5880:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 6 23
x5885:	mov [bp + 54], bp	; 3: -119 110 54
x5888:	add bp, 52	; 3: -125 -59 52
x5891:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; post call

printArgument$155:	; £temporary2049 = return_value

printArgument$156:	; arg_list = £temporary2049
x5894:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x5897:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x5901:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x5905:	mov ax, [bp + 10]	; 3: -117 70 10
x5908:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x5911:	mov ax, [bp + 12]	; 3: -117 70 12
x5914:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x5917:	mov ax, [bp + 14]	; 3: -117 70 14
x5920:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x5923:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x5927:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2050 = int_to_int c (Signed_Char -> Signed_Int)
x5931:	mov al, [bp + 30]	; 3: -118 70 30
x5934:	and ax, 255	; 3: 37 -1 0
x5937:	cmp al, 0	; 2: 60 0
x5939:	jge printArgument$165	; 2: 125 4
x5941:	neg al	; 2: -10 -40
x5943:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2050, offset 26
x5945:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x5948:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 74 23
x5953:	mov [bp + 74], bp	; 3: -119 110 74
x5956:	add bp, 72	; 3: -125 -59 72
x5959:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; post call

printArgument$168:	; £temporary2051 = return_value

printArgument$169:	; parameter £temporary2051, offset 20
x5962:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x5965:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 91 23
x5970:	mov [bp + 54], bp	; 3: -119 110 54
x5973:	add bp, 52	; 3: -125 -59 52
x5976:	jmp printUnsignedLong	; 3: -23 34 12

printArgument$171:	; post call

printArgument$172:	; goto 359
x5979:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x5982:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x5986:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x5988:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2054 = arg_list - 8
x5992:	mov si, [bp + 8]	; 3: -117 118 8
x5995:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2055 = int_to_int £temporary2054 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2056 -> £temporary2055 = *£temporary2055

printArgument$178:	; push float £temporary2056 -> £temporary2055
x5998:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x6000:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x6003:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x6006:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x6009:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x6014:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x6019:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x6024:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x6029:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 -101 23
x6034:	mov [bp + 46], bp	; 3: -119 110 46
x6037:	add bp, 44	; 3: -125 -59 44
x6040:	jmp printLongDoublePlain	; 3: -23 -115 13

printArgument$188:	; post call

printArgument$189:	; goto 196
x6043:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x6045:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2059 = arg_list - 8
x6049:	mov si, [bp + 8]	; 3: -117 118 8
x6052:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2060 = int_to_int £temporary2059 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2061 -> £temporary2060 = *£temporary2060

printArgument$194:	; push float £temporary2061 -> £temporary2060
x6055:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x6057:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x6060:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x6064:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2065 -> negativePtr = *negativePtr
x6066:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x6069:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x6072:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x6074:	fcompp	; 2: -34 -39
x6076:	fstsw ax	; 3: -101 -33 -32
x6079:	sahf	; 1: -98
x6080:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2067 = 1
x6082:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x6085:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2067 = 0
x6087:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2065 -> negativePtr = £temporary2067
x6090:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x6092:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x6096:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x6098:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x6101:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x6104:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 -26 23
x6109:	mov [bp + 46], bp	; 3: -119 110 46
x6112:	add bp, 44	; 3: -125 -59 44
x6115:	jmp fabs	; 3: -23 -122 14

printArgument$210:	; post call

printArgument$211:	; £temporary2070 = return_value

printArgument$212:	; pop float longDoubleValue
x6118:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x6121:	mov ax, [bp + 8]	; 3: -117 70 8
x6124:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x6127:	mov ax, [bp + 16]	; 3: -117 70 16
x6130:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2071 = &precision
x6133:	mov si, bp	; 2: -119 -18
x6135:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2071, offset 10
x6138:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x6141:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 11 24
x6146:	mov [bp + 46], bp	; 3: -119 110 46
x6149:	add bp, 44	; 3: -125 -59 44
x6152:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; post call

printArgument$220:	; £temporary2072 = return_value

printArgument$221:	; arg_list = £temporary2072
x6155:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x6158:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x6162:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x6164:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x6167:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x6170:	mov ax, [bp + 10]	; 3: -117 70 10
x6173:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x6176:	mov ax, [bp + 12]	; 3: -117 70 12
x6179:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x6182:	mov ax, [bp + 14]	; 3: -117 70 14
x6185:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x6188:	mov ax, [bp + 18]	; 3: -117 70 18
x6191:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x6194:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 64 24
x6199:	mov [bp + 46], bp	; 3: -119 110 46
x6202:	add bp, 44	; 3: -125 -59 44
x6205:	jmp printLongDoublePlain	; 3: -23 -24 12

printArgument$231:	; post call

printArgument$232:	; goto 359
x6208:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2075 = int_to_int c (Signed_Char -> Signed_Int)
x6211:	mov al, [bp + 30]	; 3: -118 70 30
x6214:	and ax, 255	; 3: 37 -1 0
x6217:	cmp al, 0	; 2: 60 0
x6219:	jge printArgument$235	; 2: 125 4
x6221:	neg al	; 2: -10 -40
x6223:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2075, offset 6
x6225:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x6228:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 98 24
x6233:	mov [bp + 46], bp	; 3: -119 110 46
x6236:	add bp, 44	; 3: -125 -59 44
x6239:	jmp tolower	; 3: -23 44 14

printArgument$237:	; post call

printArgument$238:	; £temporary2076 = return_value

printArgument$239:	; if £temporary2076 != 101 goto 257
x6242:	cmp bx, 101	; 3: -125 -5 101
x6245:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x6247:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x6250:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x6253:	mov ax, [bp + 10]	; 3: -117 70 10
x6256:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x6259:	mov ax, [bp + 12]	; 3: -117 70 12
x6262:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x6265:	mov ax, [bp + 14]	; 3: -117 70 14
x6268:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x6271:	mov ax, [bp + 18]	; 3: -117 70 18
x6274:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2078 = int_to_int c (Signed_Char -> Signed_Int)
x6277:	mov al, [bp + 30]	; 3: -118 70 30
x6280:	and ax, 255	; 3: 37 -1 0
x6283:	cmp al, 0	; 2: 60 0
x6285:	jge printArgument$249	; 2: 125 4
x6287:	neg al	; 2: -10 -40
x6289:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2078, offset 28
x6291:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x6294:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 -92 24
x6299:	mov [bp + 68], bp	; 3: -119 110 68
x6302:	add bp, 66	; 3: -125 -59 66
x6305:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; post call

printArgument$252:	; £temporary2079 = return_value

printArgument$253:	; parameter £temporary2079, offset 22
x6308:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x6311:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 -75 24
x6316:	mov [bp + 46], bp	; 3: -119 110 46
x6319:	add bp, 44	; 3: -125 -59 44
x6322:	jmp printLongDoubleExpo	; 3: -23 122 14

printArgument$255:	; post call

printArgument$256:	; goto 359
x6325:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x6328:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x6331:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x6334:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 -52 24
x6339:	mov [bp + 46], bp	; 3: -119 110 46
x6342:	add bp, 44	; 3: -125 -59 44
x6345:	jmp fabs	; 3: -23 -96 13

printArgument$262:	; post call

printArgument$263:	; £temporary2081 = return_value

printArgument$264:	; parameter £temporary2081, offset 6
x6348:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x6351:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 -35 24
x6356:	mov [bp + 46], bp	; 3: -119 110 46
x6359:	add bp, 44	; 3: -125 -59 44
x6362:	jmp log10	; 3: -23 -71 15

printArgument$266:	; post call

printArgument$267:	; £temporary2082 = return_value

printArgument$268:	; £temporary2083 = float_to_int £temporary2082 (Double -> Signed_Int)
x6365:	fistp word [container2bytes#]	; 4: -33 30 115 26
x6369:	mov ax, [container2bytes#]	; 3: -95 115 26

printArgument$269:	; expo = £temporary2083
x6372:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x6375:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x6379:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x6381:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x6385:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x6387:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x6390:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x6393:	mov ax, [bp + 10]	; 3: -117 70 10
x6396:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x6399:	mov ax, [bp + 12]	; 3: -117 70 12
x6402:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x6405:	mov ax, [bp + 14]	; 3: -117 70 14
x6408:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x6411:	mov ax, [bp + 18]	; 3: -117 70 18
x6414:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x6417:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 31 25
x6422:	mov [bp + 48], bp	; 3: -119 110 48
x6425:	add bp, 46	; 3: -125 -59 46
x6428:	jmp printLongDoublePlain	; 3: -23 9 12

printArgument$280:	; post call

printArgument$281:	; goto 359
x6431:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x6434:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x6437:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x6440:	mov ax, [bp + 10]	; 3: -117 70 10
x6443:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x6446:	mov ax, [bp + 12]	; 3: -117 70 12
x6449:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x6452:	mov ax, [bp + 14]	; 3: -117 70 14
x6455:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x6458:	mov ax, [bp + 18]	; 3: -117 70 18
x6461:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2088 = int_to_int c (Signed_Char -> Signed_Int)
x6464:	mov al, [bp + 30]	; 3: -118 70 30
x6467:	and ax, 255	; 3: 37 -1 0
x6470:	cmp al, 0	; 2: 60 0
x6472:	jge printArgument$291	; 2: 125 4
x6474:	neg al	; 2: -10 -40
x6476:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2088, offset 28
x6478:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x6481:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 95 25
x6486:	mov [bp + 70], bp	; 3: -119 110 70
x6489:	add bp, 68	; 3: -125 -59 68
x6492:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; post call

printArgument$294:	; £temporary2089 = return_value

printArgument$295:	; parameter £temporary2089, offset 22
x6495:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x6498:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 112 25
x6503:	mov [bp + 48], bp	; 3: -119 110 48
x6506:	add bp, 46	; 3: -125 -59 46
x6509:	jmp printLongDoubleExpo	; 3: -23 -65 13

printArgument$297:	; post call

printArgument$298:	; goto 359
x6512:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x6515:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2092 = arg_list - 2
x6519:	mov si, [bp + 8]	; 3: -117 118 8
x6522:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2093 = int_to_int £temporary2092 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2094 -> £temporary2093 = *£temporary2093

printArgument$303:	; ptrValue = £temporary2094 -> £temporary2093
x6525:	mov ax, [si]	; 2: -117 4
x6527:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x6530:	mov ax, [bp + 8]	; 3: -117 70 8
x6533:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x6536:	mov ax, [bp + 16]	; 3: -117 70 16
x6539:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2095 = &precision
x6542:	mov si, bp	; 2: -119 -18
x6544:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2095, offset 10
x6547:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x6550:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 -92 25
x6555:	mov [bp + 46], bp	; 3: -119 110 46
x6558:	add bp, 44	; 3: -125 -59 44
x6561:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; post call

printArgument$311:	; £temporary2096 = return_value

printArgument$312:	; arg_list = £temporary2096
x6564:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2097 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x6567:	mov ax, [bp + 42]	; 3: -117 70 42
x6570:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2097, offset 6
x6576:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x6580:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x6585:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x6590:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x6595:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x6603:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x6608:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 -34 25
x6613:	mov [bp + 46], bp	; 3: -119 110 46
x6616:	add bp, 44	; 3: -125 -59 44
x6619:	jmp printUnsignedLong	; 3: -23 -97 9

printArgument$322:	; post call

printArgument$323:	; goto 359
x6622:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x6625:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2100 = arg_list - 2
x6629:	mov si, [bp + 8]	; 3: -117 118 8
x6632:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2101 = int_to_int £temporary2100 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2102 -> £temporary2101 = *£temporary2101

printArgument$328:	; ptrValue = £temporary2102 -> £temporary2101
x6635:	mov ax, [si]	; 2: -117 4
x6637:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x6640:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2104 = arg_list - 2
x6644:	mov si, [bp + 8]	; 3: -117 118 8
x6647:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2105 = int_to_int £temporary2104 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2106 -> £temporary2105 = *£temporary2105

printArgument$333:	; intPtr = £temporary2106 -> £temporary2105
x6650:	mov ax, [si]	; 2: -117 4
x6652:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x6655:	mov ax, [bp + 8]	; 3: -117 70 8
x6658:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x6661:	mov ax, [bp + 16]	; 3: -117 70 16
x6664:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2107 = &precision
x6667:	mov si, bp	; 2: -119 -18
x6669:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2107, offset 10
x6672:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x6675:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 33 26
x6680:	mov [bp + 46], bp	; 3: -119 110 46
x6683:	add bp, 44	; 3: -125 -59 44
x6686:	nop	; 1: -112
x6687:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; post call

printArgument$341:	; £temporary2108 = return_value

printArgument$342:	; arg_list = £temporary2108
x6689:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2109 -> intPtr = *intPtr
x6692:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2109 -> intPtr = g_outChars
x6695:	mov ax, [g_outChars]	; 3: -95 93 20
x6698:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x6700:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x6702:	mov ax, [bp + 8]	; 3: -117 70 8
x6705:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x6708:	mov ax, [bp + 16]	; 3: -117 70 16
x6711:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2110 = &precision
x6714:	mov si, bp	; 2: -119 -18
x6716:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2110, offset 10
x6719:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x6722:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 80 26
x6727:	mov [bp + 46], bp	; 3: -119 110 46
x6730:	add bp, 44	; 3: -125 -59 44
x6733:	nop	; 1: -112
x6734:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; post call

printArgument$353:	; £temporary2111 = return_value

printArgument$354:	; arg_list = £temporary2111
x6736:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x6739:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x6743:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 101 26
x6748:	mov [bp + 46], bp	; 3: -119 110 46
x6751:	add bp, 44	; 3: -125 -59 44
x6754:	jmp printChar	; 3: -23 15 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x6757:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x6760:	mov ax, [bp]	; 3: -117 70 0
x6763:	mov di, [bp + 4]	; 3: -117 126 4
x6766:	mov bp, [bp + 2]	; 3: -117 110 2
x6769:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

container2bytes#:
x6771:	db 0, 0	; 2: 0 0

labs:	; if value >= 0 goto 4
x6773:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6778:	jge labs$4	; 2: 125 9

labs$1:	; £temporary2577 = -value
x6780:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x6784:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary2581 = £temporary2577

labs$3:	; goto 5
x6787:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary2581 = value
x6789:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary2581

labs$6:	; return
x6793:	mov ax, [bp]	; 3: -117 70 0
x6796:	mov di, [bp + 4]	; 3: -117 126 4
x6799:	mov bp, [bp + 2]	; 3: -117 110 2
x6802:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x6804:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6808:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary1955 -> widthPtr = *widthPtr
x6810:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary1955 -> widthPtr != -1 goto 9
x6813:	cmp word [si], -1	; 3: -125 60 -1
x6816:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary1958 -> widthPtr = *widthPtr
x6818:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x6821:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary1960 = arg_list - 2
x6825:	mov di, [bp + 6]	; 3: -117 126 6
x6828:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary1961 = int_to_int £temporary1960 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary1962 -> £temporary1961 = *£temporary1961

checkWidthAndPrecision$8:	; £temporary1958 -> widthPtr = £temporary1962 -> £temporary1961
x6831:	mov ax, [di]	; 2: -117 5
x6833:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x6835:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6839:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary1964 -> precisionPtr = *precisionPtr
x6841:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary1964 -> precisionPtr != -1 goto 18
x6844:	cmp word [si], -1	; 3: -125 60 -1
x6847:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary1967 -> precisionPtr = *precisionPtr
x6849:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x6852:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary1969 = arg_list - 2
x6856:	mov di, [bp + 6]	; 3: -117 126 6
x6859:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary1970 = int_to_int £temporary1969 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary1971 -> £temporary1970 = *£temporary1970

checkWidthAndPrecision$17:	; £temporary1967 -> precisionPtr = £temporary1971 -> £temporary1970
x6862:	mov ax, [di]	; 2: -117 5
x6864:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x6866:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x6869:	mov ax, [bp]	; 3: -117 70 0
x6872:	mov di, [bp + 4]	; 3: -117 126 4
x6875:	mov bp, [bp + 2]	; 3: -117 110 2
x6878:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x6880:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6885:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1810 = -longValue
x6887:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6891:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1810
x6894:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x6898:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x6902:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 4 27
x6907:	mov [bp + 16], bp	; 3: -119 110 16
x6910:	add bp, 14	; 3: -125 -59 14
x6913:	nop	; 1: -112
x6914:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x6916:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x6918:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x6922:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x6924:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x6928:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 30 27
x6933:	mov [bp + 16], bp	; 3: -119 110 16
x6936:	add bp, 14	; 3: -125 -59 14
x6939:	nop	; 1: -112
x6940:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x6942:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x6944:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6948:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x6950:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x6954:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 56 27
x6959:	mov [bp + 16], bp	; 3: -119 110 16
x6962:	add bp, 14	; 3: -125 -59 14
x6965:	nop	; 1: -112
x6966:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x6968:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6973:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x6975:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x6979:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 81 27
x6984:	mov [bp + 16], bp	; 3: -119 110 16
x6987:	add bp, 14	; 3: -125 -59 14
x6990:	nop	; 1: -112
x6991:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x6993:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x6995:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6999:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x7003:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 105 27
x7008:	mov [bp + 16], bp	; 3: -119 110 16
x7011:	add bp, 14	; 3: -125 -59 14
x7014:	nop	; 1: -112
x7015:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x7017:	mov ax, [bp]	; 3: -117 70 0
x7020:	mov di, [bp + 4]	; 3: -117 126 4
x7023:	mov bp, [bp + 2]	; 3: -117 110 2
x7026:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x7028:	mov ax, [g_outStatus]	; 3: -95 9 15
x7031:	cmp ax, 0	; 3: -125 -8 0
x7034:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x7036:	cmp ax, 1	; 3: -125 -8 1
x7039:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x7041:	cmp ax, 2	; 3: -125 -8 2
x7044:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x7046:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1752 = int_to_int g_outDevice (Pointer -> Pointer)
x7048:	mov ax, [g_outDevice]	; 3: -95 11 15

printChar$6:	; stream = £temporary1752
x7051:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x7054:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1755 -> stream = *stream, offset 2
x7056:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1755 -> stream
x7059:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x7062:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1758 = &c
x7065:	mov dx, bp	; 2: -119 -22
x7067:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1758

printChar$13:	; interrupt 33
x7070:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x7072:	inc word [g_outChars]	; 4: -1 6 93 20

printChar$15:	; goto 25
x7076:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1760 = int_to_int g_outDevice (Pointer -> Pointer)
x7078:	mov ax, [g_outDevice]	; 3: -95 11 15

printChar$17:	; outString = £temporary1760
x7081:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1761 = g_outChars
x7084:	mov ax, [g_outChars]	; 3: -95 93 20

printChar$19:	; ++g_outChars
x7087:	inc word [g_outChars]	; 4: -1 6 93 20

printChar$20:	; £temporary1763 = outString + £temporary1761
x7091:	mov si, [bp + 9]	; 3: -117 118 9
x7094:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1762 -> £temporary1763 = *£temporary1763

printChar$22:	; £temporary1762 -> £temporary1763 = c
x7096:	mov al, [bp + 6]	; 3: -118 70 6
x7099:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x7101:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x7103:	inc word [g_outChars]	; 4: -1 6 93 20

printChar$25:	; return
x7107:	mov ax, [bp]	; 3: -117 70 0
x7110:	mov di, [bp + 4]	; 3: -117 126 4
x7113:	mov bp, [bp + 2]	; 3: -117 110 2
x7116:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x7118:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7123:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1800 = longValue % 10
x7125:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7129:	xor edx, edx	; 3: 102 49 -46
x7132:	idiv dword [int4$10#]	; 5: 102 -9 62 56 28

printLongIntRec$2:	; £temporary1801 = int_to_int £temporary1800 (Signed_Long_Int -> Signed_Int)
x7137:	cmp edx, 0	; 4: 102 -125 -6 0
x7141:	jge printLongIntRec$3	; 2: 125 5
x7143:	neg edx	; 3: 102 -9 -38
x7146:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1801
x7148:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1802 = longValue / 10
x7151:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7155:	xor edx, edx	; 3: 102 49 -46
x7158:	idiv dword [int4$10#]	; 5: 102 -9 62 56 28

printLongIntRec$6:	; parameter £temporary1802, offset 6
x7163:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x7167:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 13 28
x7172:	mov [bp + 14], bp	; 3: -119 110 14
x7175:	add bp, 12	; 3: -125 -59 12
x7178:	nop	; 1: -112
x7179:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1804 = digit + 48
x7181:	mov ax, [bp + 10]	; 3: -117 70 10
x7184:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1805 = int_to_int £temporary1804 (Signed_Int -> Signed_Char)
x7187:	cmp ax, 0	; 3: -125 -8 0
x7190:	jge printLongIntRec$12	; 2: 125 4
x7192:	neg ax	; 2: -9 -40
x7194:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1805, offset 6
x7196:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x7199:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 45 28
x7204:	mov [bp + 14], bp	; 3: -119 110 14
x7207:	add bp, 12	; 3: -125 -59 12
x7210:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x7213:	mov ax, [bp]	; 3: -117 70 0
x7216:	mov di, [bp + 4]	; 3: -117 126 4
x7219:	mov bp, [bp + 2]	; 3: -117 110 2
x7222:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x7224:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x7228:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x7232:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x7234:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7238:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x7240:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1769 = s + index
x7245:	mov si, [bp + 6]	; 3: -117 118 6
x7248:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1768 -> £temporary1769 = *£temporary1769

printString$5:	; if £temporary1768 -> £temporary1769 == 0 goto 53
x7251:	cmp byte [si], 0	; 3: -128 60 0
x7254:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1773 = s + index
x7258:	mov si, [bp + 6]	; 3: -117 118 6
x7261:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1772 -> £temporary1773 = *£temporary1773

printString$9:	; parameter £temporary1772 -> £temporary1773, offset 6
x7264:	mov al, [si]	; 2: -118 4
x7266:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x7269:	mov word [bp + 12], printString$11	; 5: -57 70 12 115 28
x7274:	mov [bp + 14], bp	; 3: -119 110 14
x7277:	add bp, 12	; 3: -125 -59 12
x7280:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x7283:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x7286:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x7288:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1775 = precision
x7293:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x7296:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1775 <= 0 goto 53
x7299:	cmp ax, 0	; 3: -125 -8 0
x7302:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1778 = s + index
x7306:	mov si, [bp + 6]	; 3: -117 118 6
x7309:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1777 -> £temporary1778 = *£temporary1778

printString$20:	; if £temporary1777 -> £temporary1778 == 0 goto 53
x7312:	cmp byte [si], 0	; 3: -128 60 0
x7315:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1783 = s + index
x7319:	mov si, [bp + 6]	; 3: -117 118 6
x7322:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1782 -> £temporary1783 = *£temporary1783

printString$24:	; parameter £temporary1782 -> £temporary1783, offset 6
x7325:	mov al, [si]	; 2: -118 4
x7327:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x7330:	mov word [bp + 12], printString$26	; 5: -57 70 12 -80 28
x7335:	mov [bp + 14], bp	; 3: -119 110 14
x7338:	add bp, 12	; 3: -125 -59 12
x7341:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x7344:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x7347:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x7349:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x7353:	mov word [bp + 10], printString$32	; 5: -57 70 10 -57 28
x7358:	mov [bp + 12], bp	; 3: -119 110 12
x7361:	add bp, 10	; 3: -125 -59 10
x7364:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x7367:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x7371:	mov word [bp + 10], printString$36	; 5: -57 70 10 -39 28
x7376:	mov [bp + 12], bp	; 3: -119 110 12
x7379:	add bp, 10	; 3: -125 -59 10
x7382:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x7385:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x7389:	mov word [bp + 10], printString$40	; 5: -57 70 10 -21 28
x7394:	mov [bp + 12], bp	; 3: -119 110 12
x7397:	add bp, 10	; 3: -125 -59 10
x7400:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x7403:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x7407:	mov word [bp + 10], printString$44	; 5: -57 70 10 -3 28
x7412:	mov [bp + 12], bp	; 3: -119 110 12
x7415:	add bp, 10	; 3: -125 -59 10
x7418:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x7421:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x7425:	mov word [bp + 10], printString$48	; 5: -57 70 10 15 29
x7430:	mov [bp + 12], bp	; 3: -119 110 12
x7433:	add bp, 10	; 3: -125 -59 10
x7436:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x7439:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x7443:	mov word [bp + 10], printString$52	; 5: -57 70 10 33 29
x7448:	mov [bp + 12], bp	; 3: -119 110 12
x7451:	add bp, 10	; 3: -125 -59 10
x7454:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x7457:	mov ax, [bp]	; 3: -117 70 0
x7460:	mov di, [bp + 4]	; 3: -117 126 4
x7463:	mov bp, [bp + 2]	; 3: -117 110 2
x7466:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x7468:	mov word [bp + 8], isupper$2	; 5: -57 70 8 58 29
x7473:	mov [bp + 10], bp	; 3: -119 110 10
x7476:	add bp, 8	; 3: -125 -59 8
x7479:	nop	; 1: -112
x7480:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary372 = return_value

isupper$4:	; localeConvPtr = £temporary372
x7482:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x7485:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7489:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary374 -> localeConvPtr = *localeConvPtr, offset 14
x7491:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary374 -> localeConvPtr, offset 6
x7494:	mov ax, [si + 14]	; 3: -117 68 14
x7497:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x7500:	mov ax, [bp + 6]	; 3: -117 70 6
x7503:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x7506:	mov word [bp + 10], isupper$11	; 5: -57 70 10 96 29
x7511:	mov [bp + 12], bp	; 3: -119 110 12
x7514:	add bp, 10	; 3: -125 -59 10
x7517:	jmp strchr	; 3: -23 -51 5

isupper$11:	; post call

isupper$12:	; £temporary375 = return_value

isupper$13:	; if £temporary375 == 0 goto 16
x7520:	cmp bx, 0	; 3: -125 -5 0
x7523:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary377 = 1
x7525:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x7528:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary377 = 0
x7530:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary377

isupper$18:	; return
x7533:	mov ax, [bp]	; 3: -117 70 0
x7536:	mov di, [bp + 4]	; 3: -117 126 4
x7539:	mov bp, [bp + 2]	; 3: -117 110 2
x7542:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x7544:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x7548:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x7550:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x7554:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary381 = 1
x7556:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x7559:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary381 = 0
x7561:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary381

isupper$25:	; return
x7564:	mov ax, [bp]	; 3: -117 70 0
x7567:	mov di, [bp + 4]	; 3: -117 126 4
x7570:	mov bp, [bp + 2]	; 3: -117 110 2
x7573:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x7575:	cmp word [@23$g_currStructPtr], 0	; 5: -125 62 -75 29 0
x7580:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary521 -> g_currStructPtr = *g_currStructPtr, offset 2
x7582:	mov si, [@23$g_currStructPtr]	; 4: -117 54 -75 29

localeconv$2:	; £temporary525 = £temporary521 -> g_currStructPtr
x7586:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x7589:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary525 = 0
x7591:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary525

localeconv$6:	; return
x7594:	mov ax, [bp]	; 3: -117 70 0
x7597:	mov di, [bp + 4]	; 3: -117 126 4
x7600:	mov bp, [bp + 2]	; 3: -117 110 2
x7603:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@23$g_currStructPtr:
x7605:	dw @21$sArray	; 2: -73 29

@21$sArray:
x7607:	dw string_# ; 2: -57 29
x7609:	dw @20$sw_EN_utf8	; 2: -56 29
x7611:	dw string_C# ; 2: -75 32
x7613:	dw @14$en_US_utf8	; 2: -73 32
x7615:	dw string_US# ; 2: 39 35
x7617:	dw @14$en_US_utf8	; 2: -73 32
x7619:	dw string_SE# ; 2: 42 35
x7621:	dw @20$sw_EN_utf8	; 2: -56 29

string_#:
x7623:	db 0	; 1: 0

@20$sw_EN_utf8:
x7624:	dw 1	; 2: 1 0
x7626:	dw 2	; 2: 2 0
x7628:	dw @15$swShortDayList ; 2: -38 29
x7630:	dw @16$swLongDayList ; 2: 4 30
x7632:	dw @12$enShortMonthList ; 2: 68 30
x7634:	dw @18$swLongMonthList ; 2: -116 30
x7636:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -6 30
x7638:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: 21 31
x7640:	dw @19$swMessageList ; 2: 48 31

@15$swShortDayList:
x7642:	dw string_Son# ; 2: -24 29
x7644:	dw string_Man# ; 2: -20 29
x7646:	dw string_Tis# ; 2: -16 29
x7648:	dw string_Ons# ; 2: -12 29
x7650:	dw string_Tor# ; 2: -8 29
x7652:	dw string_Fre# ; 2: -4 29
x7654:	dw string_Lor# ; 2: 0 30

string_Son#:
x7656:	db "Son", 0	; 4: 83 111 110 0

string_Man#:
x7660:	db "Man", 0	; 4: 77 97 110 0

string_Tis#:
x7664:	db "Tis", 0	; 4: 84 105 115 0

string_Ons#:
x7668:	db "Ons", 0	; 4: 79 110 115 0

string_Tor#:
x7672:	db "Tor", 0	; 4: 84 111 114 0

string_Fre#:
x7676:	db "Fre", 0	; 4: 70 114 101 0

string_Lor#:
x7680:	db "Lor", 0	; 4: 76 111 114 0

@16$swLongDayList:
x7684:	dw string_Sondag# ; 2: 18 30
x7686:	dw string_Mandag# ; 2: 25 30
x7688:	dw string_Tisdag# ; 2: 32 30
x7690:	dw string_Onsdag# ; 2: 39 30
x7692:	dw string_Torsdag# ; 2: 46 30
x7694:	dw string_Fredag# ; 2: 54 30
x7696:	dw string_Lordag# ; 2: 61 30

string_Sondag#:
x7698:	db "Sondag", 0	; 7: 83 111 110 100 97 103 0

string_Mandag#:
x7705:	db "Mandag", 0	; 7: 77 97 110 100 97 103 0

string_Tisdag#:
x7712:	db "Tisdag", 0	; 7: 84 105 115 100 97 103 0

string_Onsdag#:
x7719:	db "Onsdag", 0	; 7: 79 110 115 100 97 103 0

string_Torsdag#:
x7726:	db "Torsdag", 0	; 8: 84 111 114 115 100 97 103 0

string_Fredag#:
x7734:	db "Fredag", 0	; 7: 70 114 101 100 97 103 0

string_Lordag#:
x7741:	db "Lordag", 0	; 7: 76 111 114 100 97 103 0

@12$enShortMonthList:
x7748:	dw string_Jan# ; 2: 92 30
x7750:	dw string_Feb# ; 2: 96 30
x7752:	dw string_Mar# ; 2: 100 30
x7754:	dw string_Apr# ; 2: 104 30
x7756:	dw string_May# ; 2: 108 30
x7758:	dw string_Jun# ; 2: 112 30
x7760:	dw string_Jul# ; 2: 116 30
x7762:	dw string_Aug# ; 2: 120 30
x7764:	dw string_Sep# ; 2: 124 30
x7766:	dw string_Oct# ; 2: -128 30
x7768:	dw string_Nov# ; 2: -124 30
x7770:	dw string_Dec# ; 2: -120 30

string_Jan#:
x7772:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x7776:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x7780:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x7784:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x7788:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x7792:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x7796:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x7800:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x7804:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x7808:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x7812:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x7816:	db "Dec", 0	; 4: 68 101 99 0

@18$swLongMonthList:
x7820:	dw string_Januari# ; 2: -92 30
x7822:	dw string_Februari# ; 2: -84 30
x7824:	dw string_Mars# ; 2: -75 30
x7826:	dw string_April# ; 2: -70 30
x7828:	dw string_Maj# ; 2: -64 30
x7830:	dw string_Juni# ; 2: -60 30
x7832:	dw string_Juli# ; 2: -55 30
x7834:	dw string_Augusit# ; 2: -50 30
x7836:	dw string_September# ; 2: -42 30
x7838:	dw string_Oktober# ; 2: -32 30
x7840:	dw string_November# ; 2: -24 30
x7842:	dw string_December# ; 2: -15 30

string_Januari#:
x7844:	db "Januari", 0	; 8: 74 97 110 117 97 114 105 0

string_Februari#:
x7852:	db "Februari", 0	; 9: 70 101 98 114 117 97 114 105 0

string_Mars#:
x7861:	db "Mars", 0	; 5: 77 97 114 115 0

string_April#:
x7866:	db "April", 0	; 6: 65 112 114 105 108 0

string_Maj#:
x7872:	db "Maj", 0	; 4: 77 97 106 0

string_Juni#:
x7876:	db "Juni", 0	; 5: 74 117 110 105 0

string_Juli#:
x7881:	db "Juli", 0	; 5: 74 117 108 105 0

string_Augusit#:
x7886:	db "Augusit", 0	; 8: 65 117 103 117 115 105 116 0

string_September#:
x7894:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_Oktober#:
x7904:	db "Oktober", 0	; 8: 79 107 116 111 98 101 114 0

string_November#:
x7912:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x7921:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x7930:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x7957:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

@19$swMessageList:
x7984:	dw string_inga20fel# ; 2: 86 31
x7986:	dw string_felaktigt20functionsnummer# ; 2: 95 31
x7988:	dw string_hittar20ej20filen# ; 2: 121 31
x7990:	dw string_hittar20ej20sokvagen# ; 2: -119 31
x7992:	dw string_inget20handtag20tillgangligt# ; 2: -100 31
x7994:	dw string_atkomst20nekad# ; 2: -73 31
x7996:	dw string_utanfor20doman# ; 2: -59 31
x7998:	dw string_utanfor20range# ; 2: -45 31
x8000:	dw string_felaktig20multibyte2Dsekvens# ; 2: -31 31
x8002:	dw string_fel20vid20oppning# ; 2: -4 31
x8004:	dw string_fel20vid20flushing# ; 2: 12 32
x8006:	dw string_fel20vid20stangning# ; 2: 29 32
x8008:	dw string_fel20oppningslage# ; 2: 47 32
x8010:	dw string_fel20vid20skrivning# ; 2: 64 32
x8012:	dw string_fel20vid20lasning# ; 2: 82 32
x8014:	dw string_fel20vid20sokning# ; 2: 98 32
x8016:	dw string_fel20vid20telling# ; 2: 114 32
x8018:	dw string_fel20vid20borttagning20av20fil# ; 2: -126 32
x8020:	dw string_fel20vid20namnbyte20av20fil# ; 2: -99 32

string_inga20fel#:
x8022:	db "inga fel", 0	; 9: 105 110 103 97 32 102 101 108 0

string_felaktigt20functionsnummer#:
x8031:	db "felaktigt functionsnummer", 0	; 26: 102 101 108 97 107 116 105 103 116 32 102 117 110 99 116 105 111 110 115 110 117 109 109 101 114 0

string_hittar20ej20filen#:
x8057:	db "hittar ej filen", 0	; 16: 104 105 116 116 97 114 32 101 106 32 102 105 108 101 110 0

string_hittar20ej20sokvagen#:
x8073:	db "hittar ej sokvagen", 0	; 19: 104 105 116 116 97 114 32 101 106 32 115 111 107 118 97 103 101 110 0

string_inget20handtag20tillgangligt#:
x8092:	db "inget handtag tillgangligt", 0	; 27: 105 110 103 101 116 32 104 97 110 100 116 97 103 32 116 105 108 108 103 97 110 103 108 105 103 116 0

string_atkomst20nekad#:
x8119:	db "atkomst nekad", 0	; 14: 97 116 107 111 109 115 116 32 110 101 107 97 100 0

string_utanfor20doman#:
x8133:	db "utanfor doman", 0	; 14: 117 116 97 110 102 111 114 32 100 111 109 97 110 0

string_utanfor20range#:
x8147:	db "utanfor range", 0	; 14: 117 116 97 110 102 111 114 32 114 97 110 103 101 0

string_felaktig20multibyte2Dsekvens#:
x8161:	db "felaktig multibyte-sekvens", 0	; 27: 102 101 108 97 107 116 105 103 32 109 117 108 116 105 98 121 116 101 45 115 101 107 118 101 110 115 0

string_fel20vid20oppning#:
x8188:	db "fel vid oppning", 0	; 16: 102 101 108 32 118 105 100 32 111 112 112 110 105 110 103 0

string_fel20vid20flushing#:
x8204:	db "fel vid flushing", 0	; 17: 102 101 108 32 118 105 100 32 102 108 117 115 104 105 110 103 0

string_fel20vid20stangning#:
x8221:	db "fel vid stangning", 0	; 18: 102 101 108 32 118 105 100 32 115 116 97 110 103 110 105 110 103 0

string_fel20oppningslage#:
x8239:	db "fel oppningslage", 0	; 17: 102 101 108 32 111 112 112 110 105 110 103 115 108 97 103 101 0

string_fel20vid20skrivning#:
x8256:	db "fel vid skrivning", 0	; 18: 102 101 108 32 118 105 100 32 115 107 114 105 118 110 105 110 103 0

string_fel20vid20lasning#:
x8274:	db "fel vid lasning", 0	; 16: 102 101 108 32 118 105 100 32 108 97 115 110 105 110 103 0

string_fel20vid20sokning#:
x8290:	db "fel vid sokning", 0	; 16: 102 101 108 32 118 105 100 32 115 111 107 110 105 110 103 0

string_fel20vid20telling#:
x8306:	db "fel vid telling", 0	; 16: 102 101 108 32 118 105 100 32 116 101 108 108 105 110 103 0

string_fel20vid20borttagning20av20fil#:
x8322:	db "fel vid borttagning av fil", 0	; 27: 102 101 108 32 118 105 100 32 98 111 114 116 116 97 103 110 105 110 103 32 97 118 32 102 105 108 0

string_fel20vid20namnbyte20av20fil#:
x8349:	db "fel vid namnbyte av fil", 0	; 24: 102 101 108 32 118 105 100 32 110 97 109 110 98 121 116 101 32 97 118 32 102 105 108 0

string_C#:
x8373:	db "C", 0	; 2: 67 0

@14$en_US_utf8:
x8375:	dw -5	; 2: -5 -1
x8377:	dw -4	; 2: -4 -1
x8379:	dw @10$enShortDayList ; 2: -55 32
x8381:	dw @11$enLongDayList ; 2: -13 32
x8383:	dw @12$enShortMonthList ; 2: 68 30
x8385:	dw @13$enLongMonthList ; 2: 58 33
x8387:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -6 30
x8389:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: 21 31
x8391:	dw enMessageList ; 2: -126 33

@10$enShortDayList:
x8393:	dw string_Sun# ; 2: -41 32
x8395:	dw string_Mon# ; 2: -37 32
x8397:	dw string_Tue# ; 2: -33 32
x8399:	dw string_Wed# ; 2: -29 32
x8401:	dw string_Thu# ; 2: -25 32
x8403:	dw string_Fri# ; 2: -21 32
x8405:	dw string_Sat# ; 2: -17 32

string_Sun#:
x8407:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x8411:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x8415:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x8419:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x8423:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x8427:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x8431:	db "Sat", 0	; 4: 83 97 116 0

@11$enLongDayList:
x8435:	dw string_Sunday# ; 2: 1 33
x8437:	dw string_Monday# ; 2: 8 33
x8439:	dw string_Tuesday# ; 2: 15 33
x8441:	dw string_Wednesday# ; 2: 23 33
x8443:	dw string_Thursday# ; 2: 33 33
x8445:	dw string_Friday# ; 2: 42 33
x8447:	dw string_Saturday# ; 2: 49 33

string_Sunday#:
x8449:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x8456:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x8463:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x8471:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x8481:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x8490:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x8497:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@13$enLongMonthList:
x8506:	dw string_January# ; 2: 82 33
x8508:	dw string_February# ; 2: 90 33
x8510:	dw string_March# ; 2: 99 33
x8512:	dw string_April# ; 2: -70 30
x8514:	dw string_May# ; 2: 108 30
x8516:	dw string_June# ; 2: 105 33
x8518:	dw string_July# ; 2: 110 33
x8520:	dw string_August# ; 2: 115 33
x8522:	dw string_September# ; 2: -42 30
x8524:	dw string_October# ; 2: 122 33
x8526:	dw string_November# ; 2: -24 30
x8528:	dw string_December# ; 2: -15 30

string_January#:
x8530:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x8538:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x8547:	db "March", 0	; 6: 77 97 114 99 104 0

string_June#:
x8553:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x8558:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x8563:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_October#:
x8570:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

enMessageList:
x8578:	dw string_no20error# ; 2: -86 33
x8580:	dw string_function20number20invalid# ; 2: -77 33
x8582:	dw string_file20not20found# ; 2: -53 33
x8584:	dw string_path20not20found# ; 2: -38 33
x8586:	dw string_no20handle20available# ; 2: -23 33
x8588:	dw string_access20denied# ; 2: -3 33
x8590:	dw string_out20of20domain# ; 2: 11 34
x8592:	dw string_out20of20range# ; 2: 25 34
x8594:	dw string_invalid20multibyte20sequence# ; 2: 38 34
x8596:	dw string_error20while20opening# ; 2: 65 34
x8598:	dw string_error20while20flushing# ; 2: 85 34
x8600:	dw string_error20while20closing# ; 2: 106 34
x8602:	dw string_open20mode20invalid# ; 2: 126 34
x8604:	dw string_error20while20writing# ; 2: -112 34
x8606:	dw string_error20while20reading# ; 2: -92 34
x8608:	dw string_error20while20seeking# ; 2: -72 34
x8610:	dw string_error20while20telling# ; 2: -52 34
x8612:	dw string_error20while20sizing# ; 2: -32 34
x8614:	dw string_error20while20removing20file# ; 2: -13 34
x8616:	dw string_error20while20renaming20file# ; 2: 13 35

string_no20error#:
x8618:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x8627:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x8651:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x8666:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x8681:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x8701:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x8715:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x8729:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x8742:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x8769:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x8789:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x8810:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x8830:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x8848:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x8868:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x8888:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x8908:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x8928:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x8947:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x8973:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_US#:
x8999:	db "US", 0	; 3: 85 83 0

string_SE#:
x9002:	db "SE", 0	; 3: 83 69 0

strchr:	; £temporary3202 = int_to_int i (Signed_Int -> Signed_Char)
x9005:	mov ax, [bp + 8]	; 3: -117 70 8
x9008:	cmp ax, 0	; 3: -125 -8 0
x9011:	jge strchr$1	; 2: 125 4
x9013:	neg ax	; 2: -9 -40
x9015:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary3202
x9017:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x9020:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary3204 = text + index
x9025:	mov si, [bp + 6]	; 3: -117 118 6
x9028:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary3203 -> £temporary3204 = *£temporary3204

strchr$5:	; if £temporary3203 -> £temporary3204 == 0 goto 16
x9031:	cmp byte [si], 0	; 3: -128 60 0
x9034:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary3208 = text + index
x9036:	mov si, [bp + 6]	; 3: -117 118 6
x9039:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary3207 -> £temporary3208 = *£temporary3208

strchr$8:	; if £temporary3207 -> £temporary3208 != c goto 14
x9042:	mov al, [bp + 12]	; 3: -118 70 12
x9045:	cmp [si], al	; 2: 56 4
x9047:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary3211 = text + index
x9049:	mov bx, [bp + 6]	; 3: -117 94 6
x9052:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary3210 -> £temporary3211 = *£temporary3211

strchr$11:	; £temporary3212 = &£temporary3210 -> £temporary3211

strchr$12:	; return_value = £temporary3212

strchr$13:	; return
x9055:	mov ax, [bp]	; 3: -117 70 0
x9058:	mov di, [bp + 4]	; 3: -117 126 4
x9061:	mov bp, [bp + 2]	; 3: -117 110 2
x9064:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x9066:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x9069:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x9071:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x9074:	mov ax, [bp]	; 3: -117 70 0
x9077:	mov di, [bp + 4]	; 3: -117 126 4
x9080:	mov bp, [bp + 2]	; 3: -117 110 2
x9083:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x9085:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x9089:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x9091:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x9095:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 -107 35
x9100:	mov [bp + 24], bp	; 3: -119 110 24
x9103:	add bp, 22	; 3: -125 -59 22
x9106:	jmp printChar	; 3: -23 -33 -9

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x9109:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x9113:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x9115:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x9119:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 -83 35
x9124:	mov [bp + 24], bp	; 3: -119 110 24
x9127:	add bp, 22	; 3: -125 -59 22
x9130:	jmp printChar	; 3: -23 -57 -9

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x9133:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x9137:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x9139:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x9144:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x9146:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x9150:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 -52 35
x9155:	mov [bp + 24], bp	; 3: -119 110 24
x9158:	add bp, 22	; 3: -125 -59 22
x9161:	jmp printChar	; 3: -23 -88 -9

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x9164:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x9169:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x9171:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x9175:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 -27 35
x9180:	mov [bp + 24], bp	; 3: -119 110 24
x9183:	add bp, 22	; 3: -125 -59 22
x9186:	jmp printChar	; 3: -23 -113 -9

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x9189:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x9193:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1859 = 88
x9195:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x9197:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1859 = 120
x9199:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1859, offset 6
x9201:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x9204:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 2 36
x9209:	mov [bp + 24], bp	; 3: -119 110 24
x9212:	add bp, 22	; 3: -125 -59 22
x9215:	jmp printChar	; 3: -23 114 -9

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x9218:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x9223:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x9225:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x9229:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 27 36
x9234:	mov [bp + 24], bp	; 3: -119 110 24
x9237:	add bp, 22	; 3: -125 -59 22
x9240:	jmp printChar	; 3: -23 89 -9

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x9243:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x9245:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x9249:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x9253:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x9257:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x9261:	mov ax, [bp + 20]	; 3: -117 70 20
x9264:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x9267:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 65 36
x9272:	mov [bp + 24], bp	; 3: -119 110 24
x9275:	add bp, 22	; 3: -125 -59 22
x9278:	nop	; 1: -112
x9279:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x9281:	mov ax, [bp]	; 3: -117 70 0
x9284:	mov di, [bp + 4]	; 3: -117 126 4
x9287:	mov bp, [bp + 2]	; 3: -117 110 2
x9290:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x9292:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x9297:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1835 = unsignedValue % base
x9299:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x9303:	xor edx, edx	; 3: 102 49 -46
x9306:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1836 = int_to_int £temporary1835 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1836
x9310:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1837 = unsignedValue / base
x9313:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x9317:	xor edx, edx	; 3: 102 49 -46
x9320:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1837, offset 6
x9324:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x9328:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x9332:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x9336:	mov ax, [bp + 14]	; 3: -117 70 14
x9339:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x9342:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 -116 36
x9347:	mov [bp + 20], bp	; 3: -119 110 20
x9350:	add bp, 18	; 3: -125 -59 18
x9353:	nop	; 1: -112
x9354:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x9356:	mov ax, [bp + 16]	; 3: -117 70 16
x9359:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x9362:	mov ax, [bp + 14]	; 3: -117 70 14
x9365:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x9368:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 -90 36
x9373:	mov [bp + 20], bp	; 3: -119 110 20
x9376:	add bp, 18	; 3: -125 -59 18
x9379:	nop	; 1: -112
x9380:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1839 = return_value

printUnsignedLongRec$17:	; c = £temporary1839
x9382:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x9385:	mov al, [bp + 18]	; 3: -118 70 18
x9388:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x9391:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 -67 36
x9396:	mov [bp + 21], bp	; 3: -119 110 21
x9399:	add bp, 19	; 3: -125 -59 19
x9402:	jmp printChar	; 3: -23 -73 -10

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x9405:	mov ax, [bp]	; 3: -117 70 0
x9408:	mov di, [bp + 4]	; 3: -117 126 4
x9411:	mov bp, [bp + 2]	; 3: -117 110 2
x9414:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x9416:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x9420:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1825 = digit + 48
x9422:	mov bx, [bp + 6]	; 3: -117 94 6
x9425:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1826 = int_to_int £temporary1825 (Signed_Int -> Signed_Char)
x9428:	cmp bx, 0	; 3: -125 -5 0
x9431:	jge digitToChar$3	; 2: 125 4
x9433:	neg bx	; 2: -9 -37
x9435:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1826

digitToChar$4:	; return
x9437:	mov ax, [bp]	; 3: -117 70 0
x9440:	mov di, [bp + 4]	; 3: -117 126 4
x9443:	mov bp, [bp + 2]	; 3: -117 110 2
x9446:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x9448:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x9452:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1827 = digit - 10
x9454:	mov bx, [bp + 6]	; 3: -117 94 6
x9457:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1828 = £temporary1827 + 65
x9460:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1829 = int_to_int £temporary1828 (Signed_Int -> Signed_Char)
x9463:	cmp bx, 0	; 3: -125 -5 0
x9466:	jge digitToChar$9	; 2: 125 4
x9468:	neg bx	; 2: -9 -37
x9470:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1829

digitToChar$10:	; return
x9472:	mov ax, [bp]	; 3: -117 70 0
x9475:	mov di, [bp + 4]	; 3: -117 126 4
x9478:	mov bp, [bp + 2]	; 3: -117 110 2
x9481:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1830 = digit - 10
x9483:	mov bx, [bp + 6]	; 3: -117 94 6
x9486:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1831 = £temporary1830 + 97
x9489:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1832 = int_to_int £temporary1831 (Signed_Int -> Signed_Char)
x9492:	cmp bx, 0	; 3: -125 -5 0
x9495:	jge digitToChar$14	; 2: 125 4
x9497:	neg bx	; 2: -9 -37
x9499:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1832

digitToChar$15:	; return
x9501:	mov ax, [bp]	; 3: -117 70 0
x9504:	mov di, [bp + 4]	; 3: -117 126 4
x9507:	mov bp, [bp + 2]	; 3: -117 110 2
x9510:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x9512:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x9515:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x9517:	fcompp	; 2: -34 -39
x9519:	fstsw ax	; 3: -101 -33 -32
x9522:	sahf	; 1: -98
x9523:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x9525:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x9529:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 71 37
x9534:	mov [bp + 24], bp	; 3: -119 110 24
x9537:	add bp, 22	; 3: -125 -59 22
x9540:	jmp printChar	; 3: -23 45 -10

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x9543:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1895 = -longDoubleValue
x9546:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x9548:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x9551:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x9556:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x9561:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1896 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x9564:	fistp dword [container4bytes#]	; 4: -37 30 -64 37
x9568:	mov eax, [container4bytes#]	; 4: 102 -95 -64 37

printLongDoublePlain$14:	; longValue = £temporary1896
x9572:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x9576:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x9580:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x9584:	mov ax, [bp + 14]	; 3: -117 70 14
x9587:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x9590:	mov ax, [bp + 16]	; 3: -117 70 16
x9593:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x9596:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 -118 37
x9601:	mov [bp + 28], bp	; 3: -119 110 28
x9604:	add bp, 26	; 3: -125 -59 26
x9607:	jmp printLongInt	; 3: -23 86 -11

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x9610:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1898 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x9613:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1899 = longDoubleValue - £temporary1898
x9616:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x9618:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x9621:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x9624:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x9627:	mov ax, [bp + 18]	; 3: -117 70 18
x9630:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x9633:	mov ax, [bp + 20]	; 3: -117 70 20
x9636:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x9639:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 -75 37
x9644:	mov [bp + 28], bp	; 3: -119 110 28
x9647:	add bp, 26	; 3: -125 -59 26
x9650:	nop	; 1: -112
x9651:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x9653:	mov ax, [bp]	; 3: -117 70 0
x9656:	mov di, [bp + 4]	; 3: -117 126 4
x9659:	mov bp, [bp + 2]	; 3: -117 110 2
x9662:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

container4bytes#:
x9664:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; push float longDoubleValue
x9668:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x9671:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1874 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x9674:	fistp dword [container4bytes#]	; 4: -37 30 -64 37
x9678:	mov eax, [container4bytes#]	; 4: 102 -95 -64 37

printLongDoubleFraction$3:	; £temporary1875 = int_to_float £temporary1874 (Signed_Long_Int -> Long_Double)
x9682:	mov [container4bytes#], eax	; 4: 102 -93 -64 37
x9686:	fild dword [container4bytes#]	; 4: -37 6 -64 37

printLongDoubleFraction$4:	; £temporary1876 = longDoubleValue - £temporary1875
x9690:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x9692:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x9695:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x9699:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 6
x9701:	mov word [bp + 16], 6	; 5: -57 70 16 6 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x9706:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x9710:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x9712:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x9716:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x9718:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x9722:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 8 38
x9727:	mov [bp + 20], bp	; 3: -119 110 20
x9730:	add bp, 18	; 3: -125 -59 18
x9733:	jmp printChar	; 3: -23 108 -11

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1882 = precision
x9736:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x9739:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1882 <= 0 goto 35
x9742:	cmp ax, 0	; 3: -125 -8 0
x9745:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; push float 10.0
x9747:	fld qword [float8$10.0#]	; 4: -35 6 100 38

printLongDoubleFraction$18:	; push float longDoubleValue
x9751:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1884 = 10.0 * longDoubleValue
x9754:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; pop float longDoubleValue10
x9756:	fstp qword [bp + 18]	; 3: -35 94 18

printLongDoubleFraction$21:	; push float longDoubleValue10
x9759:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$22:	; £temporary1885 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x9762:	fistp word [container2bytes#]	; 4: -33 30 115 26
x9766:	mov ax, [container2bytes#]	; 3: -95 115 26

printLongDoubleFraction$23:	; digitValue = £temporary1885
x9769:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$24:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$25:	; £temporary1886 = digitValue + 48
x9772:	mov ax, [bp + 26]	; 3: -117 70 26
x9775:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$26:	; £temporary1887 = int_to_int £temporary1886 (Signed_Int -> Signed_Char)
x9778:	cmp ax, 0	; 3: -125 -8 0
x9781:	jge printLongDoubleFraction$27	; 2: 125 4
x9783:	neg ax	; 2: -9 -40
x9785:	neg al	; 2: -10 -40

printLongDoubleFraction$27:	; parameter £temporary1887, offset 6
x9787:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$28:	; call function noellipse-noellipse printChar
x9790:	mov word [bp + 28], printLongDoubleFraction$29	; 5: -57 70 28 76 38
x9795:	mov [bp + 30], bp	; 3: -119 110 30
x9798:	add bp, 28	; 3: -125 -59 28
x9801:	jmp printChar	; 3: -23 40 -11

printLongDoubleFraction$29:	; post call

printLongDoubleFraction$30:	; push float longDoubleValue10
x9804:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$31:	; £temporary1889 = int_to_float digitValue (Signed_Int -> Long_Double)
x9807:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$32:	; £temporary1890 = longDoubleValue10 - £temporary1889
x9810:	fsub	; 2: -34 -23

printLongDoubleFraction$33:	; pop float longDoubleValue
x9812:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$34:	; goto 14
x9815:	jmp printLongDoubleFraction$14	; 2: -21 -81

printLongDoubleFraction$35:	; return
x9817:	mov ax, [bp]	; 3: -117 70 0
x9820:	mov di, [bp + 4]	; 3: -117 126 4
x9823:	mov bp, [bp + 2]	; 3: -117 110 2
x9826:	jmp ax	; 2: -1 -32

printLongDoubleFraction$36:	; function end printLongDoubleFraction

float8$10.0#:
x9828:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x9836:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x9839:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x9841:	fcompp	; 2: -34 -39
x9843:	fstsw ax	; 3: -101 -33 -32
x9846:	sahf	; 1: -98
x9847:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x9849:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary834 = -x
x9852:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x9854:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x9856:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary838

fabs$9:	; return
x9859:	mov ax, [bp]	; 3: -117 70 0
x9862:	mov di, [bp + 4]	; 3: -117 126 4
x9865:	mov bp, [bp + 2]	; 3: -117 110 2
x9868:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x9870:	mov ax, [bp + 6]	; 3: -117 70 6
x9873:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x9876:	mov word [bp + 8], tolower$3	; 5: -57 70 8 -94 38
x9881:	mov [bp + 10], bp	; 3: -119 110 10
x9884:	add bp, 8	; 3: -125 -59 8
x9887:	jmp isupper	; 3: -23 -118 -10

tolower$3:	; post call

tolower$4:	; £temporary460 = return_value

tolower$5:	; if £temporary460 == 0 goto 31
x9890:	cmp bx, 0	; 3: -125 -5 0
x9893:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x9895:	mov word [bp + 8], tolower$8	; 5: -57 70 8 -75 38
x9900:	mov [bp + 10], bp	; 3: -119 110 10
x9903:	add bp, 8	; 3: -125 -59 8
x9906:	jmp localeconv	; 3: -23 -30 -10

tolower$8:	; post call

tolower$9:	; £temporary461 = return_value

tolower$10:	; localeConvPtr = £temporary461
x9909:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x9912:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x9916:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary463 -> localeConvPtr = *localeConvPtr, offset 12
x9918:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary463 -> localeConvPtr
x9921:	mov ax, [si + 12]	; 3: -117 68 12
x9924:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary464 -> localeConvPtr = *localeConvPtr, offset 14
x9927:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary464 -> localeConvPtr
x9930:	mov ax, [si + 14]	; 3: -117 68 14
x9933:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x9936:	mov ax, [bp + 12]	; 3: -117 70 12
x9939:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x9942:	mov ax, [bp + 6]	; 3: -117 70 6
x9945:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x9948:	mov word [bp + 14], tolower$20	; 5: -57 70 14 -22 38
x9953:	mov [bp + 16], bp	; 3: -119 110 16
x9956:	add bp, 14	; 3: -125 -59 14
x9959:	jmp strchr	; 3: -23 67 -4

tolower$20:	; post call

tolower$21:	; £temporary465 = return_value

tolower$22:	; index = £temporary465 - upperCase
x9962:	sub bx, [bp + 12]	; 3: 43 94 12
x9965:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary468 = lowerCase + index
x9968:	mov si, [bp + 10]	; 3: -117 118 10
x9971:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary467 -> £temporary468 = *£temporary468

tolower$25:	; £temporary469 = int_to_int £temporary467 -> £temporary468 (Signed_Char -> Signed_Int)
x9974:	mov bl, [si]	; 2: -118 28
x9976:	and bx, 255	; 4: -127 -29 -1 0
x9980:	cmp bl, 0	; 3: -128 -5 0
x9983:	jge tolower$26	; 2: 125 4
x9985:	neg bl	; 2: -10 -37
x9987:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary469

tolower$27:	; return
x9989:	mov ax, [bp]	; 3: -117 70 0
x9992:	mov di, [bp + 4]	; 3: -117 126 4
x9995:	mov bp, [bp + 2]	; 3: -117 110 2
x9998:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary470 = c + 32
x10000:	mov bx, [bp + 6]	; 3: -117 94 6
x10003:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary470

tolower$30:	; return
x10006:	mov ax, [bp]	; 3: -117 70 0
x10009:	mov di, [bp + 4]	; 3: -117 126 4
x10012:	mov bp, [bp + 2]	; 3: -117 110 2
x10015:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x10017:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x10020:	mov ax, [bp]	; 3: -117 70 0
x10023:	mov di, [bp + 4]	; 3: -117 126 4
x10026:	mov bp, [bp + 2]	; 3: -117 110 2
x10029:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x10031:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x10034:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x10036:	fcompp	; 2: -34 -39
x10038:	fstsw ax	; 3: -101 -33 -32
x10041:	sahf	; 1: -98
x10042:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x10044:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x10048:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 78 39
x10053:	mov [bp + 26], bp	; 3: -119 110 26
x10056:	add bp, 24	; 3: -125 -59 24
x10059:	jmp printChar	; 3: -23 38 -12

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x10062:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x10064:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x10067:	mov ax, [bp + 20]	; 3: -117 70 20
x10070:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x10073:	mov ax, [bp + 18]	; 3: -117 70 18
x10076:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x10079:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 109 39
x10084:	mov [bp + 26], bp	; 3: -119 110 26
x10087:	add bp, 24	; 3: -125 -59 24
x10090:	jmp printLongDoubleFraction	; 3: -23 87 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x10093:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x10097:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary1915 = 69
x10099:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x10101:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary1915 = 101
x10103:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary1915, offset 6
x10105:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x10108:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 -118 39
x10113:	mov [bp + 26], bp	; 3: -119 110 26
x10116:	add bp, 24	; 3: -125 -59 24
x10119:	jmp printChar	; 3: -23 -22 -13

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x10122:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x10126:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 -100 39
x10131:	mov [bp + 26], bp	; 3: -119 110 26
x10134:	add bp, 24	; 3: -125 -59 24
x10137:	jmp printChar	; 3: -23 -40 -13

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x10140:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x10143:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x10146:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x10148:	fcompp	; 2: -34 -39
x10150:	fstsw ax	; 3: -101 -33 -32
x10153:	sahf	; 1: -98
x10154:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x10156:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x10160:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 -66 39
x10165:	mov [bp + 26], bp	; 3: -119 110 26
x10168:	add bp, 24	; 3: -125 -59 24
x10171:	jmp printChar	; 3: -23 -74 -13

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x10174:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary1920 = -value
x10177:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x10179:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x10182:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x10185:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x10188:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 -38 39
x10193:	mov [bp + 26], bp	; 3: -119 110 26
x10196:	add bp, 24	; 3: -125 -59 24
x10199:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary1921 = return_value

printLongDoubleExpo$43:	; £temporary1922 = float_to_int £temporary1921 (Double -> Signed_Int)
x10202:	fistp word [container2bytes#]	; 4: -33 30 115 26
x10206:	mov ax, [container2bytes#]	; 3: -95 115 26

printLongDoubleExpo$44:	; expo = £temporary1922
x10209:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x10212:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x10215:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x10218:	fld qword [float8$10.0#]	; 4: -35 6 100 38

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x10222:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary1923 = int_to_float expo (Signed_Int -> Double)
x10225:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary1923, offset 14
x10228:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x10231:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 5 40
x10236:	mov [bp + 36], bp	; 3: -119 110 36
x10239:	add bp, 34	; 3: -125 -59 34
x10242:	jmp pow	; 3: -23 -26 1

printLongDoubleExpo$52:	; post call
x10245:	fstp qword [bp + 34]	; 3: -35 94 34
x10248:	fld qword [bp + 26]	; 3: -35 70 26
x10251:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary1924 = return_value

printLongDoubleExpo$54:	; £temporary1925 = value / £temporary1924
x10254:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x10256:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x10259:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x10262:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x10265:	mov ax, [bp + 14]	; 3: -117 70 14
x10268:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x10271:	mov ax, [bp + 16]	; 3: -117 70 16
x10274:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x10277:	mov ax, [bp + 18]	; 3: -117 70 18
x10280:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x10283:	mov ax, [bp + 20]	; 3: -117 70 20
x10286:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x10289:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 63 40
x10294:	mov [bp + 28], bp	; 3: -119 110 28
x10297:	add bp, 26	; 3: -125 -59 26
x10300:	jmp printLongDoublePlain	; 3: -23 -23 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x10303:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x10307:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary1931 = 69
x10309:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x10311:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary1931 = 101
x10313:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary1931, offset 6
x10315:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x10318:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 92 40
x10323:	mov [bp + 28], bp	; 3: -119 110 28
x10326:	add bp, 26	; 3: -125 -59 26
x10329:	jmp printChar	; 3: -23 24 -13

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary1933 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x10332:	mov ax, [bp + 24]	; 3: -117 70 24
x10335:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x10341:	cmp ax, 0	; 3: -125 -8 0
x10344:	jge printLongDoubleExpo$75	; 2: 125 5
x10346:	neg ax	; 2: -9 -40
x10348:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary1933, offset 6
x10351:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x10355:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x10360:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x10365:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 -117 40
x10370:	mov [bp + 28], bp	; 3: -119 110 28
x10373:	add bp, 26	; 3: -125 -59 26
x10376:	jmp printLongInt	; 3: -23 85 -14

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x10379:	mov ax, [bp]	; 3: -117 70 0
x10382:	mov di, [bp + 4]	; 3: -117 126 4
x10385:	mov bp, [bp + 2]	; 3: -117 110 2
x10388:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; call header integral zero 0 stack zero 0

log10$1:	; push float x
x10390:	fld qword [bp + 6]	; 3: -35 70 6

log10$2:	; parameter x, offset 6
x10393:	fstp qword [bp + 20]	; 3: -35 94 20

log10$3:	; call function noellipse-noellipse log
x10396:	mov word [bp + 14], log10$4	; 5: -57 70 14 -86 40
x10401:	mov [bp + 16], bp	; 3: -119 110 16
x10404:	add bp, 14	; 3: -125 -59 14
x10407:	nop	; 1: -112
x10408:	jmp log	; 2: -21 25

log10$4:	; post call

log10$5:	; £temporary555 = return_value

log10$6:	; push float 2.302585092
x10410:	fld qword [float8$2.302585092#]	; 4: -35 6 -69 40

log10$7:	; £temporary556 = £temporary555 / 2.302585092
x10414:	fdiv	; 2: -34 -7

log10$8:	; return_value = £temporary556

log10$9:	; return
x10416:	mov ax, [bp]	; 3: -117 70 0
x10419:	mov di, [bp + 4]	; 3: -117 126 4
x10422:	mov bp, [bp + 2]	; 3: -117 110 2
x10425:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$2.302585092#:
x10427:	dq 2.302585092	; 8: 94 45 -109 -69 -79 107 2 64

log:	; push float x
x10435:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x10438:	fldz	; 2: -39 -18

log$2:	; if x <= 0 goto 76
x10440:	fcompp	; 2: -34 -39
x10442:	fstsw ax	; 3: -101 -33 -32
x10445:	sahf	; 1: -98
x10446:	jae log$76	; 4: 15 -125 -18 0

log$3:	; n = 0
x10450:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x
x10455:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push 1
x10458:	fld1	; 2: -39 -24

log$6:	; if x <= 1 goto 16
x10460:	fcompp	; 2: -34 -39
x10462:	fstsw ax	; 3: -101 -33 -32
x10465:	sahf	; 1: -98
x10466:	jae log$16	; 2: 115 30

log$7:	; push float x
x10468:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push 1
x10471:	fld1	; 2: -39 -24

log$9:	; if x <= 1 goto 28
x10473:	fcompp	; 2: -34 -39
x10475:	fstsw ax	; 3: -101 -33 -32
x10478:	sahf	; 1: -98
x10479:	jae log$28	; 2: 115 64

log$10:	; push float x
x10481:	fld qword [bp + 6]	; 3: -35 70 6

log$11:	; push float 2.718281828
x10484:	fld qword [float8$2.718281828#]	; 4: -35 6 -45 41

log$12:	; £temporary537 = x / 2.718281828
x10488:	fdiv	; 2: -34 -7

log$13:	; pop float x
x10490:	fstp qword [bp + 6]	; 3: -35 94 6

log$14:	; ++n
x10493:	inc word [bp + 14]	; 3: -1 70 14

log$15:	; goto 7
x10496:	jmp log$7	; 2: -21 -30

log$16:	; push float x
x10498:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 0.3678794412
x10501:	fld qword [float8$0.3678794412#]	; 4: -35 6 -37 41

log$18:	; if x >= 0.3678794412 goto 28
x10505:	fcompp	; 2: -34 -39
x10507:	fstsw ax	; 3: -101 -33 -32
x10510:	sahf	; 1: -98
x10511:	jbe log$28	; 2: 118 32

log$19:	; push float x
x10513:	fld qword [bp + 6]	; 3: -35 70 6

log$20:	; push float 0.3678794412
x10516:	fld qword [float8$0.3678794412#]	; 4: -35 6 -37 41

log$21:	; if x >= 0.3678794412 goto 28
x10520:	fcompp	; 2: -34 -39
x10522:	fstsw ax	; 3: -101 -33 -32
x10525:	sahf	; 1: -98
x10526:	jbe log$28	; 2: 118 17

log$22:	; push float x
x10528:	fld qword [bp + 6]	; 3: -35 70 6

log$23:	; push float 2.718281828
x10531:	fld qword [float8$2.718281828#]	; 4: -35 6 -45 41

log$24:	; £temporary541 = x * 2.718281828
x10535:	fmul	; 2: -34 -55

log$25:	; pop float x
x10537:	fstp qword [bp + 6]	; 3: -35 94 6

log$26:	; --n
x10540:	dec word [bp + 14]	; 3: -1 78 14

log$27:	; goto 19
x10543:	jmp log$19	; 2: -21 -32

log$28:	; push 1
x10545:	fld1	; 2: -39 -24

log$29:	; pop float index
x10547:	fstp qword [bp + 16]	; 3: -35 94 16

log$30:	; push 0
x10550:	fldz	; 2: -39 -18

log$31:	; pop float sum
x10552:	fstp qword [bp + 32]	; 3: -35 94 32

log$32:	; push 1
x10555:	fld1	; 2: -39 -24

log$33:	; pop float sign
x10557:	fstp qword [bp + 40]	; 3: -35 94 40

log$34:	; push float x
x10560:	fld qword [bp + 6]	; 3: -35 70 6

log$35:	; push 1
x10563:	fld1	; 2: -39 -24

log$36:	; £temporary543 = x - 1
x10565:	fsub	; 2: -34 -23

log$37:	; pop float x_minus_1
x10567:	fstp qword [bp + 48]	; 3: -35 94 48

log$38:	; push float x_minus_1
x10570:	fld qword [bp + 48]	; 3: -35 70 48

log$39:	; pop float power
x10573:	fstp qword [bp + 56]	; 3: -35 94 56

log$40:	; push float sign
x10576:	fld qword [bp + 40]	; 3: -35 70 40

log$41:	; push float power
x10579:	fld qword [bp + 56]	; 3: -35 70 56

log$42:	; £temporary544 = sign * power
x10582:	fmul	; 2: -34 -55

log$43:	; push float index
x10584:	fld qword [bp + 16]	; 3: -35 70 16

log$44:	; push 1
x10587:	fld1	; 2: -39 -24

log$45:	; index = index + 1
x10589:	fadd	; 2: -34 -63

log$46:	; top float index
x10591:	fst qword [bp + 16]	; 3: -35 86 16

log$47:	; push 1
x10594:	fld1	; 2: -39 -24

log$48:	; index = index - 1
x10596:	fsub	; 2: -34 -23

log$49:	; £temporary546 = £temporary544 / £temporary545
x10598:	fdiv	; 2: -34 -7

log$50:	; pop float term
x10600:	fstp qword [bp + 24]	; 3: -35 94 24

log$51:	; push float sum
x10603:	fld qword [bp + 32]	; 3: -35 70 32

log$52:	; push float term
x10606:	fld qword [bp + 24]	; 3: -35 70 24

log$53:	; £temporary547 = sum + term
x10609:	fadd	; 2: -34 -63

log$54:	; pop float sum
x10611:	fstp qword [bp + 32]	; 3: -35 94 32

log$55:	; push float power
x10614:	fld qword [bp + 56]	; 3: -35 70 56

log$56:	; push float x_minus_1
x10617:	fld qword [bp + 48]	; 3: -35 70 48

log$57:	; £temporary548 = power * x_minus_1
x10620:	fmul	; 2: -34 -55

log$58:	; pop float power
x10622:	fstp qword [bp + 56]	; 3: -35 94 56

log$59:	; push float sign
x10625:	fld qword [bp + 40]	; 3: -35 70 40

log$60:	; push float -1.0
x10628:	fld qword [float8$minus1.0#]	; 4: -35 6 83 4

log$61:	; £temporary549 = sign * -1.0
x10632:	fmul	; 2: -34 -55

log$62:	; pop float sign
x10634:	fstp qword [bp + 40]	; 3: -35 94 40

log$63:	; call header integral zero 0 stack zero 0

log$64:	; push float term
x10637:	fld qword [bp + 24]	; 3: -35 70 24

log$65:	; parameter term, offset 6
x10640:	fstp qword [bp + 70]	; 3: -35 94 70

log$66:	; call function noellipse-noellipse fabs
x10643:	mov word [bp + 64], log$67	; 5: -57 70 64 -95 41
x10648:	mov [bp + 66], bp	; 3: -119 110 66
x10651:	add bp, 64	; 3: -125 -59 64
x10654:	jmp fabs	; 3: -23 -53 -4

log$67:	; post call

log$68:	; £temporary550 = return_value

log$69:	; push float 0.000000001
x10657:	fld qword [float8$0.000000001#]	; 4: -35 6 -29 41

log$70:	; if £temporary550 >= 0.000000001 goto 40
x10661:	fcompp	; 2: -34 -39
x10663:	fstsw ax	; 3: -101 -33 -32
x10666:	sahf	; 1: -98
x10667:	jbe log$40	; 2: 118 -93

log$71:	; push float sum
x10669:	fld qword [bp + 32]	; 3: -35 70 32

log$72:	; £temporary552 = int_to_float n (Signed_Int -> Double)
x10672:	fild word [bp + 14]	; 3: -33 70 14

log$73:	; £temporary553 = sum + £temporary552
x10675:	fadd	; 2: -34 -63

log$74:	; return_value = £temporary553

log$75:	; return
x10677:	mov ax, [bp]	; 3: -117 70 0
x10680:	mov di, [bp + 4]	; 3: -117 126 4
x10683:	mov bp, [bp + 2]	; 3: -117 110 2
x10686:	jmp ax	; 2: -1 -32

log$76:	; errno = 6
x10688:	mov word [errno], 6	; 6: -57 6 35 10 6 0

log$77:	; push 0
x10694:	fldz	; 2: -39 -18

log$78:	; return_value = 0

log$79:	; return
x10696:	mov ax, [bp]	; 3: -117 70 0
x10699:	mov di, [bp + 4]	; 3: -117 126 4
x10702:	mov bp, [bp + 2]	; 3: -117 110 2
x10705:	jmp ax	; 2: -1 -32

log$80:	; function end log

float8$2.718281828#:
x10707:	dq 2.718281828	; 8: -101 -111 4 -117 10 -65 5 64

float8$0.3678794412#:
x10715:	dq 0.3678794412	; 8: -55 -56 52 54 86 -117 -41 63

float8$0.000000001#:
x10723:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

pow:	; push float x
x10731:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x10734:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x10736:	fcompp	; 2: -34 -39
x10738:	fstsw ax	; 3: -101 -33 -32
x10741:	sahf	; 1: -98
x10742:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x10744:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x10747:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x10750:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x10753:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x10756:	mov word [bp + 30], pow$9	; 5: -57 70 30 18 42
x10761:	mov [bp + 32], bp	; 3: -119 110 32
x10764:	add bp, 30	; 3: -125 -59 30
x10767:	jmp log	; 3: -23 -79 -2

pow$9:	; post call
x10770:	fstp qword [bp + 30]	; 3: -35 94 30
x10773:	fld qword [bp + 22]	; 3: -35 70 22
x10776:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary559 = return_value

pow$11:	; £temporary560 = y * £temporary559
x10779:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary560, offset 6
x10781:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x10784:	mov word [bp + 22], pow$14	; 5: -57 70 22 46 42
x10789:	mov [bp + 24], bp	; 3: -119 110 24
x10792:	add bp, 22	; 3: -125 -59 22
x10795:	jmp exp	; 3: -23 102 1

pow$14:	; post call

pow$15:	; £temporary561 = return_value

pow$16:	; return_value = £temporary561

pow$17:	; return
x10798:	mov ax, [bp]	; 3: -117 70 0
x10801:	mov di, [bp + 4]	; 3: -117 126 4
x10804:	mov bp, [bp + 2]	; 3: -117 110 2
x10807:	jmp ax	; 2: -1 -32

pow$18:	; push float x
x10809:	fld qword [bp + 6]	; 3: -35 70 6

pow$19:	; push 0
x10812:	fldz	; 2: -39 -18

pow$20:	; if x != 0 goto 27
x10814:	fcompp	; 2: -34 -39
x10816:	fstsw ax	; 3: -101 -33 -32
x10819:	sahf	; 1: -98
x10820:	jne pow$27	; 2: 117 26

pow$21:	; push float y
x10822:	fld qword [bp + 14]	; 3: -35 70 14

pow$22:	; push 0
x10825:	fldz	; 2: -39 -18

pow$23:	; if y != 0 goto 27
x10827:	fcompp	; 2: -34 -39
x10829:	fstsw ax	; 3: -101 -33 -32
x10832:	sahf	; 1: -98
x10833:	jne pow$27	; 2: 117 13

pow$24:	; push 1
x10835:	fld1	; 2: -39 -24

pow$25:	; return_value = 1

pow$26:	; return
x10837:	mov ax, [bp]	; 3: -117 70 0
x10840:	mov di, [bp + 4]	; 3: -117 126 4
x10843:	mov bp, [bp + 2]	; 3: -117 110 2
x10846:	jmp ax	; 2: -1 -32

pow$27:	; push float x
x10848:	fld qword [bp + 6]	; 3: -35 70 6

pow$28:	; push 0
x10851:	fldz	; 2: -39 -18

pow$29:	; if x != 0 goto 36
x10853:	fcompp	; 2: -34 -39
x10855:	fstsw ax	; 3: -101 -33 -32
x10858:	sahf	; 1: -98
x10859:	jne pow$36	; 2: 117 26

pow$30:	; push float y
x10861:	fld qword [bp + 14]	; 3: -35 70 14

pow$31:	; push 0
x10864:	fldz	; 2: -39 -18

pow$32:	; if y <= 0 goto 36
x10866:	fcompp	; 2: -34 -39
x10868:	fstsw ax	; 3: -101 -33 -32
x10871:	sahf	; 1: -98
x10872:	jae pow$36	; 2: 115 13

pow$33:	; push 0
x10874:	fldz	; 2: -39 -18

pow$34:	; return_value = 0

pow$35:	; return
x10876:	mov ax, [bp]	; 3: -117 70 0
x10879:	mov di, [bp + 4]	; 3: -117 126 4
x10882:	mov bp, [bp + 2]	; 3: -117 110 2
x10885:	jmp ax	; 2: -1 -32

pow$36:	; push float x
x10887:	fld qword [bp + 6]	; 3: -35 70 6

pow$37:	; push 0
x10890:	fldz	; 2: -39 -18

pow$38:	; if x >= 0 goto 90
x10892:	fcompp	; 2: -34 -39
x10894:	fstsw ax	; 3: -101 -33 -32
x10897:	sahf	; 1: -98
x10898:	jbe pow$90	; 4: 15 -122 -25 0

pow$39:	; call header integral zero 0 stack zero 0

pow$40:	; push float y
x10902:	fld qword [bp + 14]	; 3: -35 70 14

pow$41:	; parameter y, offset 6
x10905:	fstp qword [bp + 28]	; 3: -35 94 28

pow$42:	; call function noellipse-noellipse floor
x10908:	mov word [bp + 22], pow$43	; 5: -57 70 22 -86 42
x10913:	mov [bp + 24], bp	; 3: -119 110 24
x10916:	add bp, 22	; 3: -125 -59 22
x10919:	jmp floor	; 3: -23 96 1

pow$43:	; post call

pow$44:	; £temporary569 = return_value

pow$45:	; call header integral zero 0 stack no zero 1
x10922:	fstp qword [bp + 22]	; 3: -35 94 22

pow$46:	; push float y
x10925:	fld qword [bp + 14]	; 3: -35 70 14

pow$47:	; parameter y, offset 6
x10928:	fstp qword [bp + 36]	; 3: -35 94 36

pow$48:	; call function noellipse-noellipse ceil
x10931:	mov word [bp + 30], pow$49	; 5: -57 70 30 -63 42
x10936:	mov [bp + 32], bp	; 3: -119 110 32
x10939:	add bp, 30	; 3: -125 -59 30
x10942:	jmp ceil	; 3: -23 -105 1

pow$49:	; post call
x10945:	fstp qword [bp + 30]	; 3: -35 94 30
x10948:	fld qword [bp + 22]	; 3: -35 70 22
x10951:	fld qword [bp + 30]	; 3: -35 70 30

pow$50:	; £temporary570 = return_value

pow$51:	; if £temporary569 != £temporary570 goto 90
x10954:	fcompp	; 2: -34 -39
x10956:	fstsw ax	; 3: -101 -33 -32
x10959:	sahf	; 1: -98
x10960:	jne pow$90	; 4: 15 -123 -87 0

pow$52:	; push float y
x10964:	fld qword [bp + 14]	; 3: -35 70 14

pow$53:	; £temporary573 = float_to_int y (Double -> Signed_Long_Int)
x10967:	fistp dword [container4bytes#]	; 4: -37 30 -64 37
x10971:	mov eax, [container4bytes#]	; 4: 102 -95 -64 37

pow$54:	; long_y = £temporary573
x10975:	mov [bp + 22], eax	; 4: 102 -119 70 22

pow$55:	; £temporary574 = long_y % 2
x10979:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x10983:	xor edx, edx	; 3: 102 49 -46
x10986:	idiv dword [int4$2#]	; 5: 102 -9 62 -112 43

pow$56:	; if £temporary574 != 0 goto 73
x10991:	cmp edx, 0	; 4: 102 -125 -6 0
x10995:	jne pow$73	; 2: 117 67

pow$57:	; call header integral zero 0 stack zero 0

pow$58:	; push float y
x10997:	fld qword [bp + 14]	; 3: -35 70 14

pow$59:	; call header integral zero 0 stack no zero 1
x11000:	fstp qword [bp + 26]	; 3: -35 94 26

pow$60:	; push float x
x11003:	fld qword [bp + 6]	; 3: -35 70 6

pow$61:	; £temporary576 = -x
x11006:	fchs	; 2: -39 -32

pow$62:	; parameter £temporary576, offset 6
x11008:	fstp qword [bp + 40]	; 3: -35 94 40

pow$63:	; call function noellipse-noellipse log
x11011:	mov word [bp + 34], pow$64	; 5: -57 70 34 17 43
x11016:	mov [bp + 36], bp	; 3: -119 110 36
x11019:	add bp, 34	; 3: -125 -59 34
x11022:	jmp log	; 3: -23 -78 -3

pow$64:	; post call
x11025:	fstp qword [bp + 34]	; 3: -35 94 34
x11028:	fld qword [bp + 26]	; 3: -35 70 26
x11031:	fld qword [bp + 34]	; 3: -35 70 34

pow$65:	; £temporary577 = return_value

pow$66:	; £temporary578 = y * £temporary577
x11034:	fmul	; 2: -34 -55

pow$67:	; parameter £temporary578, offset 6
x11036:	fstp qword [bp + 32]	; 3: -35 94 32

pow$68:	; call function noellipse-noellipse exp
x11039:	mov word [bp + 26], pow$69	; 5: -57 70 26 45 43
x11044:	mov [bp + 28], bp	; 3: -119 110 28
x11047:	add bp, 26	; 3: -125 -59 26
x11050:	nop	; 1: -112
x11051:	jmp exp	; 2: -21 103

pow$69:	; post call

pow$70:	; £temporary579 = return_value

pow$71:	; return_value = £temporary579

pow$72:	; return
x11053:	mov ax, [bp]	; 3: -117 70 0
x11056:	mov di, [bp + 4]	; 3: -117 126 4
x11059:	mov bp, [bp + 2]	; 3: -117 110 2
x11062:	jmp ax	; 2: -1 -32

pow$73:	; call header integral zero 0 stack zero 0

pow$74:	; push float y
x11064:	fld qword [bp + 14]	; 3: -35 70 14

pow$75:	; call header integral zero 0 stack no zero 1
x11067:	fstp qword [bp + 26]	; 3: -35 94 26

pow$76:	; push float x
x11070:	fld qword [bp + 6]	; 3: -35 70 6

pow$77:	; £temporary580 = -x
x11073:	fchs	; 2: -39 -32

pow$78:	; parameter £temporary580, offset 6
x11075:	fstp qword [bp + 40]	; 3: -35 94 40

pow$79:	; call function noellipse-noellipse log
x11078:	mov word [bp + 34], pow$80	; 5: -57 70 34 84 43
x11083:	mov [bp + 36], bp	; 3: -119 110 36
x11086:	add bp, 34	; 3: -125 -59 34
x11089:	jmp log	; 3: -23 111 -3

pow$80:	; post call
x11092:	fstp qword [bp + 34]	; 3: -35 94 34
x11095:	fld qword [bp + 26]	; 3: -35 70 26
x11098:	fld qword [bp + 34]	; 3: -35 70 34

pow$81:	; £temporary581 = return_value

pow$82:	; £temporary582 = y * £temporary581
x11101:	fmul	; 2: -34 -55

pow$83:	; parameter £temporary582, offset 6
x11103:	fstp qword [bp + 32]	; 3: -35 94 32

pow$84:	; call function noellipse-noellipse exp
x11106:	mov word [bp + 26], pow$85	; 5: -57 70 26 112 43
x11111:	mov [bp + 28], bp	; 3: -119 110 28
x11114:	add bp, 26	; 3: -125 -59 26
x11117:	nop	; 1: -112
x11118:	jmp exp	; 2: -21 36

pow$85:	; post call

pow$86:	; £temporary583 = return_value

pow$87:	; £temporary584 = -£temporary583
x11120:	fchs	; 2: -39 -32

pow$88:	; return_value = £temporary584

pow$89:	; return
x11122:	mov ax, [bp]	; 3: -117 70 0
x11125:	mov di, [bp + 4]	; 3: -117 126 4
x11128:	mov bp, [bp + 2]	; 3: -117 110 2
x11131:	jmp ax	; 2: -1 -32

pow$90:	; errno = 6
x11133:	mov word [errno], 6	; 6: -57 6 35 10 6 0

pow$91:	; push 0
x11139:	fldz	; 2: -39 -18

pow$92:	; return_value = 0

pow$93:	; return
x11141:	mov ax, [bp]	; 3: -117 70 0
x11144:	mov di, [bp + 4]	; 3: -117 126 4
x11147:	mov bp, [bp + 2]	; 3: -117 110 2
x11150:	jmp ax	; 2: -1 -32

pow$94:	; function end pow

int4$2#:
x11152:	dd 2	; 4: 2 0 0 0

exp:	; push 1
x11156:	fld1	; 2: -39 -24

exp$1:	; pop float index
x11158:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x11161:	fld1	; 2: -39 -24

exp$3:	; pop float sum
x11163:	fstp qword [bp + 30]	; 3: -35 94 30

exp$4:	; push 1
x11166:	fld1	; 2: -39 -24

exp$5:	; pop float faculty
x11168:	fstp qword [bp + 38]	; 3: -35 94 38

exp$6:	; push float x
x11171:	fld qword [bp + 6]	; 3: -35 70 6

exp$7:	; pop float power
x11174:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x11177:	fld qword [bp + 46]	; 3: -35 70 46

exp$9:	; push float faculty
x11180:	fld qword [bp + 38]	; 3: -35 70 38

exp$10:	; £temporary526 = power / faculty
x11183:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x11185:	fstp qword [bp + 22]	; 3: -35 94 22

exp$12:	; push float sum
x11188:	fld qword [bp + 30]	; 3: -35 70 30

exp$13:	; push float term
x11191:	fld qword [bp + 22]	; 3: -35 70 22

exp$14:	; £temporary527 = sum + term
x11194:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x11196:	fstp qword [bp + 30]	; 3: -35 94 30

exp$16:	; push float power
x11199:	fld qword [bp + 46]	; 3: -35 70 46

exp$17:	; push float x
x11202:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary528 = power * x
x11205:	fmul	; 2: -34 -55

exp$19:	; pop float power
x11207:	fstp qword [bp + 46]	; 3: -35 94 46

exp$20:	; push float faculty
x11210:	fld qword [bp + 38]	; 3: -35 70 38

exp$21:	; push float index
x11213:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x11216:	fld1	; 2: -39 -24

exp$23:	; index = index + 1
x11218:	fadd	; 2: -34 -63

exp$24:	; top float index
x11220:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary530 = faculty * £temporary529
x11223:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x11225:	fstp qword [bp + 38]	; 3: -35 94 38

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x11228:	fld qword [bp + 22]	; 3: -35 70 22

exp$29:	; parameter term, offset 6
x11231:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x11234:	mov word [bp + 54], exp$31	; 5: -57 70 54 -16 43
x11239:	mov [bp + 56], bp	; 3: -119 110 56
x11242:	add bp, 54	; 3: -125 -59 54
x11245:	jmp fabs	; 3: -23 124 -6

exp$31:	; post call

exp$32:	; £temporary531 = return_value

exp$33:	; push float 0.000000001
x11248:	fld qword [float8$0.000000001#]	; 4: -35 6 -29 41

exp$34:	; if £temporary531 >= 0.000000001 goto 8
x11252:	fcompp	; 2: -34 -39
x11254:	fstsw ax	; 3: -101 -33 -32
x11257:	sahf	; 1: -98
x11258:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x11260:	fld qword [bp + 30]	; 3: -35 70 30

exp$36:	; return_value = sum

exp$37:	; return
x11263:	mov ax, [bp]	; 3: -117 70 0
x11266:	mov di, [bp + 4]	; 3: -117 126 4
x11269:	mov bp, [bp + 2]	; 3: -117 110 2
x11272:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

floor:	; push float x
x11274:	fld qword [bp + 6]	; 3: -35 70 6

floor$1:	; push 0
x11277:	fldz	; 2: -39 -18

floor$2:	; if x >= 0 goto 13
x11279:	fcompp	; 2: -34 -39
x11281:	fstsw ax	; 3: -101 -33 -32
x11284:	sahf	; 1: -98
x11285:	jbe floor$13	; 2: 118 35

floor$3:	; call header integral zero 0 stack zero 0

floor$4:	; push float x
x11287:	fld qword [bp + 6]	; 3: -35 70 6

floor$5:	; £temporary810 = -x
x11290:	fchs	; 2: -39 -32

floor$6:	; parameter £temporary810, offset 6
x11292:	fstp qword [bp + 20]	; 3: -35 94 20

floor$7:	; call function noellipse-noellipse ceil
x11295:	mov word [bp + 14], floor$8	; 5: -57 70 14 45 44
x11300:	mov [bp + 16], bp	; 3: -119 110 16
x11303:	add bp, 14	; 3: -125 -59 14
x11306:	nop	; 1: -112
x11307:	jmp ceil	; 2: -21 43

floor$8:	; post call

floor$9:	; £temporary811 = return_value

floor$10:	; £temporary812 = -£temporary811
x11309:	fchs	; 2: -39 -32

floor$11:	; return_value = £temporary812

floor$12:	; return
x11311:	mov ax, [bp]	; 3: -117 70 0
x11314:	mov di, [bp + 4]	; 3: -117 126 4
x11317:	mov bp, [bp + 2]	; 3: -117 110 2
x11320:	jmp ax	; 2: -1 -32

floor$13:	; push float x
x11322:	fld qword [bp + 6]	; 3: -35 70 6

floor$14:	; £temporary813 = float_to_int x (Double -> Signed_Long_Int)
x11325:	fistp dword [container4bytes#]	; 4: -37 30 -64 37
x11329:	mov eax, [container4bytes#]	; 4: 102 -95 -64 37

floor$15:	; £temporary814 = int_to_float £temporary813 (Signed_Long_Int -> Double)
x11333:	mov [container4bytes#], eax	; 4: 102 -93 -64 37
x11337:	fild dword [container4bytes#]	; 4: -37 6 -64 37

floor$16:	; return_value = £temporary814

floor$17:	; return
x11341:	mov ax, [bp]	; 3: -117 70 0
x11344:	mov di, [bp + 4]	; 3: -117 126 4
x11347:	mov bp, [bp + 2]	; 3: -117 110 2
x11350:	jmp ax	; 2: -1 -32

floor$18:	; function end floor

ceil:	; push float x
x11352:	fld qword [bp + 6]	; 3: -35 70 6

ceil$1:	; push 0
x11355:	fldz	; 2: -39 -18

ceil$2:	; if x >= 0 goto 13
x11357:	fcompp	; 2: -34 -39
x11359:	fstsw ax	; 3: -101 -33 -32
x11362:	sahf	; 1: -98
x11363:	jbe ceil$13	; 2: 118 35

ceil$3:	; call header integral zero 0 stack zero 0

ceil$4:	; push float x
x11365:	fld qword [bp + 6]	; 3: -35 70 6

ceil$5:	; £temporary817 = -x
x11368:	fchs	; 2: -39 -32

ceil$6:	; parameter £temporary817, offset 6
x11370:	fstp qword [bp + 20]	; 3: -35 94 20

ceil$7:	; call function noellipse-noellipse floor
x11373:	mov word [bp + 14], ceil$8	; 5: -57 70 14 123 44
x11378:	mov [bp + 16], bp	; 3: -119 110 16
x11381:	add bp, 14	; 3: -125 -59 14
x11384:	nop	; 1: -112
x11385:	jmp floor	; 2: -21 -113

ceil$8:	; post call

ceil$9:	; £temporary818 = return_value

ceil$10:	; £temporary819 = -£temporary818
x11387:	fchs	; 2: -39 -32

ceil$11:	; return_value = £temporary819

ceil$12:	; return
x11389:	mov ax, [bp]	; 3: -117 70 0
x11392:	mov di, [bp + 4]	; 3: -117 126 4
x11395:	mov bp, [bp + 2]	; 3: -117 110 2
x11398:	jmp ax	; 2: -1 -32

ceil$13:	; push float x
x11400:	fld qword [bp + 6]	; 3: -35 70 6

ceil$14:	; push float 0.999999999999
x11403:	fld qword [float8$0.999999999999#]	; 4: -35 6 -84 44

ceil$15:	; £temporary820 = x + 0.999999999999
x11407:	fadd	; 2: -34 -63

ceil$16:	; £temporary821 = float_to_int £temporary820 (Double -> Signed_Long_Int)
x11409:	fistp dword [container4bytes#]	; 4: -37 30 -64 37
x11413:	mov eax, [container4bytes#]	; 4: 102 -95 -64 37

ceil$17:	; £temporary822 = int_to_float £temporary821 (Signed_Long_Int -> Double)
x11417:	mov [container4bytes#], eax	; 4: 102 -93 -64 37
x11421:	fild dword [container4bytes#]	; 4: -37 6 -64 37

ceil$18:	; return_value = £temporary822

ceil$19:	; return
x11425:	mov ax, [bp]	; 3: -117 70 0
x11428:	mov di, [bp + 4]	; 3: -117 126 4
x11431:	mov bp, [bp + 2]	; 3: -117 110 2
x11434:	jmp ax	; 2: -1 -32

ceil$20:	; function end ceil

float8$0.999999999999#:
x11436:	dq 0.999999999999	; 8: -47 -36 -1 -1 -1 -1 -17 63

isdigit:	; if c < 48 goto 4
x11444:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x11448:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x11450:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x11454:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary395 = 1
x11456:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x11459:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary395 = 0
x11461:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary395

isdigit$6:	; return
x11464:	mov ax, [bp]	; 3: -117 70 0
x11467:	mov di, [bp + 4]	; 3: -117 126 4
x11470:	mov bp, [bp + 2]	; 3: -117 110 2
x11473:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

sin:	; call header integral zero 0 stack zero 0

sin$1:	; push float x
x11475:	fld qword [bp + 6]	; 3: -35 70 6

sin$2:	; parameter x, offset 6
x11478:	fstp qword [bp + 20]	; 3: -35 94 20

sin$3:	; call function noellipse-noellipse fabs
x11481:	mov word [bp + 14], sin$4	; 5: -57 70 14 -25 44
x11486:	mov [bp + 16], bp	; 3: -119 110 16
x11489:	add bp, 14	; 3: -125 -59 14
x11492:	jmp fabs	; 3: -23 -123 -7

sin$4:	; post call

sin$5:	; £temporary664 = return_value

sin$6:	; push float 6.283185306
x11495:	fld qword [float8$6.283185306#]	; 4: -35 6 99 4

sin$7:	; if £temporary664 <= 6.283185306 goto 17
x11499:	fcompp	; 2: -34 -39
x11501:	fstsw ax	; 3: -101 -33 -32
x11504:	sahf	; 1: -98
x11505:	jae sin$17	; 2: 115 30

sin$8:	; call header integral zero 0 stack zero 0

sin$9:	; push float x
x11507:	fld qword [bp + 6]	; 3: -35 70 6

sin$10:	; parameter x, offset 6
x11510:	fstp qword [bp + 20]	; 3: -35 94 20

sin$11:	; push float 6.283185306
x11513:	fld qword [float8$6.283185306#]	; 4: -35 6 99 4

sin$12:	; parameter 6.283185306, offset 14
x11517:	fstp qword [bp + 28]	; 3: -35 94 28

sin$13:	; call function noellipse-noellipse fmod
x11520:	mov word [bp + 14], sin$14	; 5: -57 70 14 14 45
x11525:	mov [bp + 16], bp	; 3: -119 110 16
x11528:	add bp, 14	; 3: -125 -59 14
x11531:	jmp fmod	; 3: -23 -88 0

sin$14:	; post call

sin$15:	; £temporary666 = return_value

sin$16:	; pop float x
x11534:	fstp qword [bp + 6]	; 3: -35 94 6

sin$17:	; push 1
x11537:	fld1	; 2: -39 -24

sin$18:	; pop float index
x11539:	fstp qword [bp + 14]	; 3: -35 94 14

sin$19:	; push 0
x11542:	fldz	; 2: -39 -18

sin$20:	; pop float sum
x11544:	fstp qword [bp + 30]	; 3: -35 94 30

sin$21:	; push 1
x11547:	fld1	; 2: -39 -24

sin$22:	; pop float sign
x11549:	fstp qword [bp + 38]	; 3: -35 94 38

sin$23:	; push float x
x11552:	fld qword [bp + 6]	; 3: -35 70 6

sin$24:	; pop float power
x11555:	fstp qword [bp + 46]	; 3: -35 94 46

sin$25:	; push 1
x11558:	fld1	; 2: -39 -24

sin$26:	; pop float faculty
x11560:	fstp qword [bp + 54]	; 3: -35 94 54

sin$27:	; push float sign
x11563:	fld qword [bp + 38]	; 3: -35 70 38

sin$28:	; push float power
x11566:	fld qword [bp + 46]	; 3: -35 70 46

sin$29:	; £temporary667 = sign * power
x11569:	fmul	; 2: -34 -55

sin$30:	; push float faculty
x11571:	fld qword [bp + 54]	; 3: -35 70 54

sin$31:	; £temporary668 = £temporary667 / faculty
x11574:	fdiv	; 2: -34 -7

sin$32:	; pop float term
x11576:	fstp qword [bp + 22]	; 3: -35 94 22

sin$33:	; push float sum
x11579:	fld qword [bp + 30]	; 3: -35 70 30

sin$34:	; push float term
x11582:	fld qword [bp + 22]	; 3: -35 70 22

sin$35:	; £temporary669 = sum + term
x11585:	fadd	; 2: -34 -63

sin$36:	; pop float sum
x11587:	fstp qword [bp + 30]	; 3: -35 94 30

sin$37:	; push float sign
x11590:	fld qword [bp + 38]	; 3: -35 70 38

sin$38:	; push float -1
x11593:	fld qword [float8$minus1#]	; 4: -35 6 -82 45

sin$39:	; £temporary670 = sign * -1
x11597:	fmul	; 2: -34 -55

sin$40:	; pop float sign
x11599:	fstp qword [bp + 38]	; 3: -35 94 38

sin$41:	; push float power
x11602:	fld qword [bp + 46]	; 3: -35 70 46

sin$42:	; push float x
x11605:	fld qword [bp + 6]	; 3: -35 70 6

sin$43:	; push float x
x11608:	fld qword [bp + 6]	; 3: -35 70 6

sin$44:	; £temporary671 = x * x
x11611:	fmul	; 2: -34 -55

sin$45:	; £temporary672 = power * £temporary671
x11613:	fmul	; 2: -34 -55

sin$46:	; pop float power
x11615:	fstp qword [bp + 46]	; 3: -35 94 46

sin$47:	; push float faculty
x11618:	fld qword [bp + 54]	; 3: -35 70 54

sin$48:	; push float index
x11621:	fld qword [bp + 14]	; 3: -35 70 14

sin$49:	; push 1
x11624:	fld1	; 2: -39 -24

sin$50:	; index = index + 1
x11626:	fadd	; 2: -34 -63

sin$51:	; top float index
x11628:	fst qword [bp + 14]	; 3: -35 86 14

sin$52:	; push float index
x11631:	fld qword [bp + 14]	; 3: -35 70 14

sin$53:	; push 1
x11634:	fld1	; 2: -39 -24

sin$54:	; index = index + 1
x11636:	fadd	; 2: -34 -63

sin$55:	; top float index
x11638:	fst qword [bp + 14]	; 3: -35 86 14

sin$56:	; £temporary675 = £temporary673 * £temporary674
x11641:	fmul	; 2: -34 -55

sin$57:	; £temporary676 = faculty * £temporary675
x11643:	fmul	; 2: -34 -55

sin$58:	; pop float faculty
x11645:	fstp qword [bp + 54]	; 3: -35 94 54

sin$59:	; call header integral zero 0 stack zero 0

sin$60:	; push float term
x11648:	fld qword [bp + 22]	; 3: -35 70 22

sin$61:	; parameter term, offset 6
x11651:	fstp qword [bp + 68]	; 3: -35 94 68

sin$62:	; call function noellipse-noellipse fabs
x11654:	mov word [bp + 62], sin$63	; 5: -57 70 62 -108 45
x11659:	mov [bp + 64], bp	; 3: -119 110 64
x11662:	add bp, 62	; 3: -125 -59 62
x11665:	jmp fabs	; 3: -23 -40 -8

sin$63:	; post call

sin$64:	; £temporary677 = return_value

sin$65:	; push float 0.000000001
x11668:	fld qword [float8$0.000000001#]	; 4: -35 6 -29 41

sin$66:	; if £temporary677 >= 0.000000001 goto 27
x11672:	fcompp	; 2: -34 -39
x11674:	fstsw ax	; 3: -101 -33 -32
x11677:	sahf	; 1: -98
x11678:	jbe sin$27	; 2: 118 -117

sin$67:	; push float sum
x11680:	fld qword [bp + 30]	; 3: -35 70 30

sin$68:	; return_value = sum

sin$69:	; return
x11683:	mov ax, [bp]	; 3: -117 70 0
x11686:	mov di, [bp + 4]	; 3: -117 126 4
x11689:	mov bp, [bp + 2]	; 3: -117 110 2
x11692:	jmp ax	; 2: -1 -32

sin$70:	; function end sin

float8$minus1#:
x11694:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

fmod:	; push float y
x11702:	fld qword [bp + 14]	; 3: -35 70 14

fmod$1:	; push 0
x11705:	fldz	; 2: -39 -18

fmod$2:	; if y == 0 goto 28
x11707:	fcompp	; 2: -34 -39
x11709:	fstsw ax	; 3: -101 -33 -32
x11712:	sahf	; 1: -98
x11713:	je fmod$28	; 2: 116 86

fmod$3:	; call header integral zero 0 stack zero 0

fmod$4:	; push float x
x11715:	fld qword [bp + 6]	; 3: -35 70 6

fmod$5:	; push float y
x11718:	fld qword [bp + 14]	; 3: -35 70 14

fmod$6:	; push float x
x11721:	fld qword [bp + 6]	; 3: -35 70 6

fmod$7:	; push float y
x11724:	fld qword [bp + 14]	; 3: -35 70 14

fmod$8:	; £temporary651 = x / y
x11727:	fdiv	; 2: -34 -7

fmod$9:	; £temporary652 = float_to_int £temporary651 (Double -> Signed_Int)
x11729:	fistp word [container2bytes#]	; 4: -33 30 115 26
x11733:	mov ax, [container2bytes#]	; 3: -95 115 26

fmod$10:	; £temporary653 = int_to_float £temporary652 (Signed_Int -> Double)
x11736:	mov [container2bytes#], ax	; 3: -93 115 26
x11739:	fild word [container2bytes#]	; 4: -33 6 115 26

fmod$11:	; £temporary654 = y * £temporary653
x11743:	fmul	; 2: -34 -55

fmod$12:	; £temporary655 = x - £temporary654
x11745:	fsub	; 2: -34 -23

fmod$13:	; parameter £temporary655, offset 6
x11747:	fstp qword [bp + 28]	; 3: -35 94 28

fmod$14:	; call function noellipse-noellipse fabs
x11750:	mov word [bp + 22], fmod$15	; 5: -57 70 22 -12 45
x11755:	mov [bp + 24], bp	; 3: -119 110 24
x11758:	add bp, 22	; 3: -125 -59 22
x11761:	jmp fabs	; 3: -23 120 -8

fmod$15:	; post call

fmod$16:	; £temporary656 = return_value

fmod$17:	; pop float remainder
x11764:	fstp qword [bp + 22]	; 3: -35 94 22

fmod$18:	; push float x
x11767:	fld qword [bp + 6]	; 3: -35 70 6

fmod$19:	; push 0
x11770:	fldz	; 2: -39 -18

fmod$20:	; if x <= 0 goto 24
x11772:	fcompp	; 2: -34 -39
x11774:	fstsw ax	; 3: -101 -33 -32
x11777:	sahf	; 1: -98
x11778:	jae fmod$24	; 2: 115 5

fmod$21:	; push float remainder
x11780:	fld qword [bp + 22]	; 3: -35 70 22

fmod$22:	; decrease stack

fmod$23:	; goto 26
x11783:	jmp fmod$26	; 2: -21 5

fmod$24:	; push float remainder
x11785:	fld qword [bp + 22]	; 3: -35 70 22

fmod$25:	; £temporary658 = -remainder
x11788:	fchs	; 2: -39 -32

fmod$26:	; return_value = £temporary662

fmod$27:	; return
x11790:	mov ax, [bp]	; 3: -117 70 0
x11793:	mov di, [bp + 4]	; 3: -117 126 4
x11796:	mov bp, [bp + 2]	; 3: -117 110 2
x11799:	jmp ax	; 2: -1 -32

fmod$28:	; errno = 6
x11801:	mov word [errno], 6	; 6: -57 6 35 10 6 0

fmod$29:	; push 0
x11807:	fldz	; 2: -39 -18

fmod$30:	; return_value = 0

fmod$31:	; return
x11809:	mov ax, [bp]	; 3: -117 70 0
x11812:	mov di, [bp + 4]	; 3: -117 126 4
x11815:	mov bp, [bp + 2]	; 3: -117 110 2
x11818:	jmp ax	; 2: -1 -32

fmod$32:	; function end fmod

cos:	; call header integral zero 0 stack zero 0

cos$1:	; push float x
x11820:	fld qword [bp + 6]	; 3: -35 70 6

cos$2:	; parameter x, offset 6
x11823:	fstp qword [bp + 20]	; 3: -35 94 20

cos$3:	; call function noellipse-noellipse fabs
x11826:	mov word [bp + 14], cos$4	; 5: -57 70 14 64 46
x11831:	mov [bp + 16], bp	; 3: -119 110 16
x11834:	add bp, 14	; 3: -125 -59 14
x11837:	jmp fabs	; 3: -23 44 -8

cos$4:	; post call

cos$5:	; £temporary683 = return_value

cos$6:	; push float 6.283185306
x11840:	fld qword [float8$6.283185306#]	; 4: -35 6 99 4

cos$7:	; if £temporary683 <= 6.283185306 goto 17
x11844:	fcompp	; 2: -34 -39
x11846:	fstsw ax	; 3: -101 -33 -32
x11849:	sahf	; 1: -98
x11850:	jae cos$17	; 2: 115 30

cos$8:	; call header integral zero 0 stack zero 0

cos$9:	; push float x
x11852:	fld qword [bp + 6]	; 3: -35 70 6

cos$10:	; parameter x, offset 6
x11855:	fstp qword [bp + 20]	; 3: -35 94 20

cos$11:	; push float 6.283185306
x11858:	fld qword [float8$6.283185306#]	; 4: -35 6 99 4

cos$12:	; parameter 6.283185306, offset 14
x11862:	fstp qword [bp + 28]	; 3: -35 94 28

cos$13:	; call function noellipse-noellipse fmod
x11865:	mov word [bp + 14], cos$14	; 5: -57 70 14 103 46
x11870:	mov [bp + 16], bp	; 3: -119 110 16
x11873:	add bp, 14	; 3: -125 -59 14
x11876:	jmp fmod	; 3: -23 79 -1

cos$14:	; post call

cos$15:	; £temporary685 = return_value

cos$16:	; pop float x
x11879:	fstp qword [bp + 6]	; 3: -35 94 6

cos$17:	; push 0
x11882:	fldz	; 2: -39 -18

cos$18:	; pop float index
x11884:	fstp qword [bp + 14]	; 3: -35 94 14

cos$19:	; push 0
x11887:	fldz	; 2: -39 -18

cos$20:	; pop float sum
x11889:	fstp qword [bp + 30]	; 3: -35 94 30

cos$21:	; push 1
x11892:	fld1	; 2: -39 -24

cos$22:	; pop float sign
x11894:	fstp qword [bp + 38]	; 3: -35 94 38

cos$23:	; push 1
x11897:	fld1	; 2: -39 -24

cos$24:	; pop float power
x11899:	fstp qword [bp + 46]	; 3: -35 94 46

cos$25:	; push 1
x11902:	fld1	; 2: -39 -24

cos$26:	; pop float faculty
x11904:	fstp qword [bp + 54]	; 3: -35 94 54

cos$27:	; push float sign
x11907:	fld qword [bp + 38]	; 3: -35 70 38

cos$28:	; push float power
x11910:	fld qword [bp + 46]	; 3: -35 70 46

cos$29:	; £temporary686 = sign * power
x11913:	fmul	; 2: -34 -55

cos$30:	; push float faculty
x11915:	fld qword [bp + 54]	; 3: -35 70 54

cos$31:	; £temporary687 = £temporary686 / faculty
x11918:	fdiv	; 2: -34 -7

cos$32:	; pop float term
x11920:	fstp qword [bp + 22]	; 3: -35 94 22

cos$33:	; push float sum
x11923:	fld qword [bp + 30]	; 3: -35 70 30

cos$34:	; push float term
x11926:	fld qword [bp + 22]	; 3: -35 70 22

cos$35:	; £temporary688 = sum + term
x11929:	fadd	; 2: -34 -63

cos$36:	; pop float sum
x11931:	fstp qword [bp + 30]	; 3: -35 94 30

cos$37:	; push float sign
x11934:	fld qword [bp + 38]	; 3: -35 70 38

cos$38:	; push float -1
x11937:	fld qword [float8$minus1#]	; 4: -35 6 -82 45

cos$39:	; £temporary689 = sign * -1
x11941:	fmul	; 2: -34 -55

cos$40:	; pop float sign
x11943:	fstp qword [bp + 38]	; 3: -35 94 38

cos$41:	; push float power
x11946:	fld qword [bp + 46]	; 3: -35 70 46

cos$42:	; push float x
x11949:	fld qword [bp + 6]	; 3: -35 70 6

cos$43:	; push float x
x11952:	fld qword [bp + 6]	; 3: -35 70 6

cos$44:	; £temporary690 = x * x
x11955:	fmul	; 2: -34 -55

cos$45:	; £temporary691 = power * £temporary690
x11957:	fmul	; 2: -34 -55

cos$46:	; pop float power
x11959:	fstp qword [bp + 46]	; 3: -35 94 46

cos$47:	; push float faculty
x11962:	fld qword [bp + 54]	; 3: -35 70 54

cos$48:	; push float index
x11965:	fld qword [bp + 14]	; 3: -35 70 14

cos$49:	; push 1
x11968:	fld1	; 2: -39 -24

cos$50:	; index = index + 1
x11970:	fadd	; 2: -34 -63

cos$51:	; top float index
x11972:	fst qword [bp + 14]	; 3: -35 86 14

cos$52:	; push float index
x11975:	fld qword [bp + 14]	; 3: -35 70 14

cos$53:	; push 1
x11978:	fld1	; 2: -39 -24

cos$54:	; index = index + 1
x11980:	fadd	; 2: -34 -63

cos$55:	; top float index
x11982:	fst qword [bp + 14]	; 3: -35 86 14

cos$56:	; £temporary694 = £temporary692 * £temporary693
x11985:	fmul	; 2: -34 -55

cos$57:	; £temporary695 = faculty * £temporary694
x11987:	fmul	; 2: -34 -55

cos$58:	; pop float faculty
x11989:	fstp qword [bp + 54]	; 3: -35 94 54

cos$59:	; call header integral zero 0 stack zero 0

cos$60:	; push float term
x11992:	fld qword [bp + 22]	; 3: -35 70 22

cos$61:	; parameter term, offset 6
x11995:	fstp qword [bp + 68]	; 3: -35 94 68

cos$62:	; call function noellipse-noellipse fabs
x11998:	mov word [bp + 62], cos$63	; 5: -57 70 62 -20 46
x12003:	mov [bp + 64], bp	; 3: -119 110 64
x12006:	add bp, 62	; 3: -125 -59 62
x12009:	jmp fabs	; 3: -23 -128 -9

cos$63:	; post call

cos$64:	; £temporary696 = return_value

cos$65:	; push float 0.000000001
x12012:	fld qword [float8$0.000000001#]	; 4: -35 6 -29 41

cos$66:	; if £temporary696 >= 0.000000001 goto 27
x12016:	fcompp	; 2: -34 -39
x12018:	fstsw ax	; 3: -101 -33 -32
x12021:	sahf	; 1: -98
x12022:	jbe cos$27	; 2: 118 -117

cos$67:	; push float sum
x12024:	fld qword [bp + 30]	; 3: -35 70 30

cos$68:	; return_value = sum

cos$69:	; return
x12027:	mov ax, [bp]	; 3: -117 70 0
x12030:	mov di, [bp + 4]	; 3: -117 126 4
x12033:	mov bp, [bp + 2]	; 3: -117 110 2
x12036:	jmp ax	; 2: -1 -32

cos$70:	; function end cos

tan:	; call header integral zero 0 stack zero 0

tan$1:	; push float x
x12038:	fld qword [bp + 6]	; 3: -35 70 6

tan$2:	; parameter x, offset 6
x12041:	fstp qword [bp + 20]	; 3: -35 94 20

tan$3:	; call function noellipse-noellipse cos
x12044:	mov word [bp + 14], tan$4	; 5: -57 70 14 26 47
x12049:	mov [bp + 16], bp	; 3: -119 110 16
x12052:	add bp, 14	; 3: -125 -59 14
x12055:	jmp cos	; 3: -23 18 -1

tan$4:	; post call

tan$5:	; £temporary702 = return_value

tan$6:	; pop float cos_x
x12058:	fstp qword [bp + 14]	; 3: -35 94 14

tan$7:	; push float cos_x
x12061:	fld qword [bp + 14]	; 3: -35 70 14

tan$8:	; push 0
x12064:	fldz	; 2: -39 -18

tan$9:	; if cos_x == 0 goto 20
x12066:	fcompp	; 2: -34 -39
x12068:	fstsw ax	; 3: -101 -33 -32
x12071:	sahf	; 1: -98
x12072:	je tan$20	; 2: 116 36

tan$10:	; call header integral zero 0 stack zero 0

tan$11:	; push float x
x12074:	fld qword [bp + 6]	; 3: -35 70 6

tan$12:	; parameter x, offset 6
x12077:	fstp qword [bp + 28]	; 3: -35 94 28

tan$13:	; call function noellipse-noellipse sin
x12080:	mov word [bp + 22], tan$14	; 5: -57 70 22 62 47
x12085:	mov [bp + 24], bp	; 3: -119 110 24
x12088:	add bp, 22	; 3: -125 -59 22
x12091:	jmp sin	; 3: -23 -107 -3

tan$14:	; post call

tan$15:	; £temporary704 = return_value

tan$16:	; push float cos_x
x12094:	fld qword [bp + 14]	; 3: -35 70 14

tan$17:	; £temporary705 = £temporary704 / cos_x
x12097:	fdiv	; 2: -34 -7

tan$18:	; return_value = £temporary705

tan$19:	; return
x12099:	mov ax, [bp]	; 3: -117 70 0
x12102:	mov di, [bp + 4]	; 3: -117 126 4
x12105:	mov bp, [bp + 2]	; 3: -117 110 2
x12108:	jmp ax	; 2: -1 -32

tan$20:	; errno = 6
x12110:	mov word [errno], 6	; 6: -57 6 35 10 6 0

tan$21:	; push 0
x12116:	fldz	; 2: -39 -18

tan$22:	; return_value = 0

tan$23:	; return
x12118:	mov ax, [bp]	; 3: -117 70 0
x12121:	mov di, [bp + 4]	; 3: -117 126 4
x12124:	mov bp, [bp + 2]	; 3: -117 110 2
x12127:	jmp ax	; 2: -1 -32

tan$24:	; function end tan

asin:	; push float x
x12129:	fld qword [bp + 6]	; 3: -35 70 6

asin$1:	; push 1
x12132:	fld1	; 2: -39 -24

asin$2:	; if x != 1 goto 6
x12134:	fcompp	; 2: -34 -39
x12136:	fstsw ax	; 3: -101 -33 -32
x12139:	sahf	; 1: -98
x12140:	jne asin$6	; 2: 117 15

asin$3:	; push float 1.5707963265
x12142:	fld qword [float8$1.5707963265#]	; 4: -35 6 115 4

asin$4:	; return_value = 1.5707963265

asin$5:	; return
x12146:	mov ax, [bp]	; 3: -117 70 0
x12149:	mov di, [bp + 4]	; 3: -117 126 4
x12152:	mov bp, [bp + 2]	; 3: -117 110 2
x12155:	jmp ax	; 2: -1 -32

asin$6:	; push float x
x12157:	fld qword [bp + 6]	; 3: -35 70 6

asin$7:	; push 0
x12160:	fldz	; 2: -39 -18

asin$8:	; if x >= 0 goto 19
x12162:	fcompp	; 2: -34 -39
x12164:	fstsw ax	; 3: -101 -33 -32
x12167:	sahf	; 1: -98
x12168:	jbe asin$19	; 2: 118 35

asin$9:	; call header integral zero 0 stack zero 0

asin$10:	; push float x
x12170:	fld qword [bp + 6]	; 3: -35 70 6

asin$11:	; £temporary710 = -x
x12173:	fchs	; 2: -39 -32

asin$12:	; parameter £temporary710, offset 6
x12175:	fstp qword [bp + 20]	; 3: -35 94 20

asin$13:	; call function noellipse-noellipse asin
x12178:	mov word [bp + 14], asin$14	; 5: -57 70 14 -96 47
x12183:	mov [bp + 16], bp	; 3: -119 110 16
x12186:	add bp, 14	; 3: -125 -59 14
x12189:	nop	; 1: -112
x12190:	jmp asin	; 2: -21 -63

asin$14:	; post call

asin$15:	; £temporary711 = return_value

asin$16:	; £temporary712 = -£temporary711
x12192:	fchs	; 2: -39 -32

asin$17:	; return_value = £temporary712

asin$18:	; return
x12194:	mov ax, [bp]	; 3: -117 70 0
x12197:	mov di, [bp + 4]	; 3: -117 126 4
x12200:	mov bp, [bp + 2]	; 3: -117 110 2
x12203:	jmp ax	; 2: -1 -32

asin$19:	; push float x
x12205:	fld qword [bp + 6]	; 3: -35 70 6

asin$20:	; push 1
x12208:	fld1	; 2: -39 -24

asin$21:	; if x >= 1 goto 41
x12210:	fcompp	; 2: -34 -39
x12212:	fstsw ax	; 3: -101 -33 -32
x12215:	sahf	; 1: -98
x12216:	jbe asin$41	; 2: 118 74

asin$22:	; call header integral zero 0 stack zero 0

asin$23:	; push float x
x12218:	fld qword [bp + 6]	; 3: -35 70 6

asin$24:	; call header integral zero 0 stack no zero 1
x12221:	fstp qword [bp + 14]	; 3: -35 94 14

asin$25:	; push 1
x12224:	fld1	; 2: -39 -24

asin$26:	; push float x
x12226:	fld qword [bp + 6]	; 3: -35 70 6

asin$27:	; push float x
x12229:	fld qword [bp + 6]	; 3: -35 70 6

asin$28:	; £temporary714 = x * x
x12232:	fmul	; 2: -34 -55

asin$29:	; £temporary715 = 1 - £temporary714
x12234:	fsub	; 2: -34 -23

asin$30:	; parameter £temporary715, offset 6
x12236:	fstp qword [bp + 28]	; 3: -35 94 28

asin$31:	; call function noellipse-noellipse sqrt
x12239:	mov word [bp + 22], asin$32	; 5: -57 70 22 -35 47
x12244:	mov [bp + 24], bp	; 3: -119 110 24
x12247:	add bp, 22	; 3: -125 -59 22
x12250:	nop	; 1: -112
x12251:	jmp sqrt	; 2: -21 58

asin$32:	; post call
x12253:	fstp qword [bp + 22]	; 3: -35 94 22
x12256:	fld qword [bp + 14]	; 3: -35 70 14
x12259:	fld qword [bp + 22]	; 3: -35 70 22

asin$33:	; £temporary716 = return_value

asin$34:	; £temporary717 = x / £temporary716
x12262:	fdiv	; 2: -34 -7

asin$35:	; parameter £temporary717, offset 6
x12264:	fstp qword [bp + 20]	; 3: -35 94 20

asin$36:	; call function noellipse-noellipse atan
x12267:	mov word [bp + 14], asin$37	; 5: -57 70 14 -7 47
x12272:	mov [bp + 16], bp	; 3: -119 110 16
x12275:	add bp, 14	; 3: -125 -59 14
x12278:	jmp atan	; 3: -23 -110 0

asin$37:	; post call

asin$38:	; £temporary718 = return_value

asin$39:	; return_value = £temporary718

asin$40:	; return
x12281:	mov ax, [bp]	; 3: -117 70 0
x12284:	mov di, [bp + 4]	; 3: -117 126 4
x12287:	mov bp, [bp + 2]	; 3: -117 110 2
x12290:	jmp ax	; 2: -1 -32

asin$41:	; errno = 6
x12292:	mov word [errno], 6	; 6: -57 6 35 10 6 0

asin$42:	; push 0
x12298:	fldz	; 2: -39 -18

asin$43:	; return_value = 0

asin$44:	; return
x12300:	mov ax, [bp]	; 3: -117 70 0
x12303:	mov di, [bp + 4]	; 3: -117 126 4
x12306:	mov bp, [bp + 2]	; 3: -117 110 2
x12309:	jmp ax	; 2: -1 -32

asin$45:	; function end asin

sqrt:	; push float x
x12311:	fld qword [bp + 6]	; 3: -35 70 6

sqrt$1:	; push 0
x12314:	fldz	; 2: -39 -18

sqrt$2:	; if x < 0 goto 28
x12316:	fcompp	; 2: -34 -39
x12318:	fstsw ax	; 3: -101 -33 -32
x12321:	sahf	; 1: -98
x12322:	ja sqrt$28	; 2: 119 84

sqrt$3:	; push 1
x12324:	fld1	; 2: -39 -24

sqrt$4:	; pop float root_i_plus_1
x12326:	fstp qword [bp + 22]	; 3: -35 94 22

sqrt$5:	; push float root_i_plus_1
x12329:	fld qword [bp + 22]	; 3: -35 70 22

sqrt$6:	; pop float root_i
x12332:	fstp qword [bp + 14]	; 3: -35 94 14

sqrt$7:	; push float root_i
x12335:	fld qword [bp + 14]	; 3: -35 70 14

sqrt$8:	; push float x
x12338:	fld qword [bp + 6]	; 3: -35 70 6

sqrt$9:	; push float root_i
x12341:	fld qword [bp + 14]	; 3: -35 70 14

sqrt$10:	; £temporary624 = x / root_i
x12344:	fdiv	; 2: -34 -7

sqrt$11:	; £temporary625 = root_i + £temporary624
x12346:	fadd	; 2: -34 -63

sqrt$12:	; push float 2
x12348:	fld qword [float8$2#]	; 4: -35 6 -77 4

sqrt$13:	; £temporary626 = £temporary625 / 2
x12352:	fdiv	; 2: -34 -7

sqrt$14:	; pop float root_i_plus_1
x12354:	fstp qword [bp + 22]	; 3: -35 94 22

sqrt$15:	; call header integral zero 0 stack zero 0

sqrt$16:	; push float root_i_plus_1
x12357:	fld qword [bp + 22]	; 3: -35 70 22

sqrt$17:	; push float root_i
x12360:	fld qword [bp + 14]	; 3: -35 70 14

sqrt$18:	; £temporary627 = root_i_plus_1 - root_i
x12363:	fsub	; 2: -34 -23

sqrt$19:	; parameter £temporary627, offset 6
x12365:	fstp qword [bp + 36]	; 3: -35 94 36

sqrt$20:	; call function noellipse-noellipse fabs
x12368:	mov word [bp + 30], sqrt$21	; 5: -57 70 30 94 48
x12373:	mov [bp + 32], bp	; 3: -119 110 32
x12376:	add bp, 30	; 3: -125 -59 30
x12379:	jmp fabs	; 3: -23 14 -10

sqrt$21:	; post call

sqrt$22:	; £temporary628 = return_value

sqrt$23:	; push float 0.000000001
x12382:	fld qword [float8$0.000000001#]	; 4: -35 6 -29 41

sqrt$24:	; if £temporary628 >= 0.000000001 goto 5
x12386:	fcompp	; 2: -34 -39
x12388:	fstsw ax	; 3: -101 -33 -32
x12391:	sahf	; 1: -98
x12392:	jbe sqrt$5	; 2: 118 -65

sqrt$25:	; push float root_i_plus_1
x12394:	fld qword [bp + 22]	; 3: -35 70 22

sqrt$26:	; return_value = root_i_plus_1

sqrt$27:	; return
x12397:	mov ax, [bp]	; 3: -117 70 0
x12400:	mov di, [bp + 4]	; 3: -117 126 4
x12403:	mov bp, [bp + 2]	; 3: -117 110 2
x12406:	jmp ax	; 2: -1 -32

sqrt$28:	; errno = 6
x12408:	mov word [errno], 6	; 6: -57 6 35 10 6 0

sqrt$29:	; push 0
x12414:	fldz	; 2: -39 -18

sqrt$30:	; return_value = 0

sqrt$31:	; return
x12416:	mov ax, [bp]	; 3: -117 70 0
x12419:	mov di, [bp + 4]	; 3: -117 126 4
x12422:	mov bp, [bp + 2]	; 3: -117 110 2
x12425:	jmp ax	; 2: -1 -32

sqrt$32:	; function end sqrt

atan:	; push float x
x12427:	fld qword [bp + 6]	; 3: -35 70 6

atan$1:	; push 0
x12430:	fldz	; 2: -39 -18

atan$2:	; if x >= 0 goto 13
x12432:	fcompp	; 2: -34 -39
x12434:	fstsw ax	; 3: -101 -33 -32
x12437:	sahf	; 1: -98
x12438:	jbe atan$13	; 2: 118 35

atan$3:	; call header integral zero 0 stack zero 0

atan$4:	; push float x
x12440:	fld qword [bp + 6]	; 3: -35 70 6

atan$5:	; £temporary737 = -x
x12443:	fchs	; 2: -39 -32

atan$6:	; parameter £temporary737, offset 6
x12445:	fstp qword [bp + 20]	; 3: -35 94 20

atan$7:	; call function noellipse-noellipse atan
x12448:	mov word [bp + 14], atan$8	; 5: -57 70 14 -82 48
x12453:	mov [bp + 16], bp	; 3: -119 110 16
x12456:	add bp, 14	; 3: -125 -59 14
x12459:	nop	; 1: -112
x12460:	jmp atan	; 2: -21 -35

atan$8:	; post call

atan$9:	; £temporary738 = return_value

atan$10:	; £temporary739 = -£temporary738
x12462:	fchs	; 2: -39 -32

atan$11:	; return_value = £temporary739

atan$12:	; return
x12464:	mov ax, [bp]	; 3: -117 70 0
x12467:	mov di, [bp + 4]	; 3: -117 126 4
x12470:	mov bp, [bp + 2]	; 3: -117 110 2
x12473:	jmp ax	; 2: -1 -32

atan$13:	; push float x
x12475:	fld qword [bp + 6]	; 3: -35 70 6

atan$14:	; push 1
x12478:	fld1	; 2: -39 -24

atan$15:	; if x <= 1 goto 28
x12480:	fcompp	; 2: -34 -39
x12482:	fstsw ax	; 3: -101 -33 -32
x12485:	sahf	; 1: -98
x12486:	jae atan$28	; 2: 115 53

atan$16:	; push float 1.5707963265
x12488:	fld qword [float8$1.5707963265#]	; 4: -35 6 115 4

atan$17:	; call header integral zero 0 stack no zero 1
x12492:	fstp qword [bp + 14]	; 3: -35 94 14

atan$18:	; push 1
x12495:	fld1	; 2: -39 -24

atan$19:	; push float x
x12497:	fld qword [bp + 6]	; 3: -35 70 6

atan$20:	; £temporary741 = 1 / x
x12500:	fdiv	; 2: -34 -7

atan$21:	; parameter £temporary741, offset 6
x12502:	fstp qword [bp + 28]	; 3: -35 94 28

atan$22:	; call function noellipse-noellipse atan
x12505:	mov word [bp + 22], atan$23	; 5: -57 70 22 -25 48
x12510:	mov [bp + 24], bp	; 3: -119 110 24
x12513:	add bp, 22	; 3: -125 -59 22
x12516:	nop	; 1: -112
x12517:	jmp atan	; 2: -21 -92

atan$23:	; post call
x12519:	fstp qword [bp + 22]	; 3: -35 94 22
x12522:	fld qword [bp + 14]	; 3: -35 70 14
x12525:	fld qword [bp + 22]	; 3: -35 70 22

atan$24:	; £temporary742 = return_value

atan$25:	; £temporary743 = 1.5707963265 - £temporary742
x12528:	fsub	; 2: -34 -23

atan$26:	; return_value = £temporary743

atan$27:	; return
x12530:	mov ax, [bp]	; 3: -117 70 0
x12533:	mov di, [bp + 4]	; 3: -117 126 4
x12536:	mov bp, [bp + 2]	; 3: -117 110 2
x12539:	jmp ax	; 2: -1 -32

atan$28:	; push float x
x12541:	fld qword [bp + 6]	; 3: -35 70 6

atan$29:	; push float 0.5
x12544:	fld qword [float8$0.5#]	; 4: -35 6 -12 49

atan$30:	; if x <= 0.5 goto 54
x12548:	fcompp	; 2: -34 -39
x12550:	fstsw ax	; 3: -101 -33 -32
x12553:	sahf	; 1: -98
x12554:	jae atan$54	; 2: 115 102

atan$31:	; push float 2
x12556:	fld qword [float8$2#]	; 4: -35 6 -77 4

atan$32:	; call header integral zero 0 stack no zero 1
x12560:	fstp qword [bp + 14]	; 3: -35 94 14

atan$33:	; push float x
x12563:	fld qword [bp + 6]	; 3: -35 70 6

atan$34:	; push 1
x12566:	fld1	; 2: -39 -24

atan$35:	; call header integral zero 0 stack no zero 3
x12568:	fstp qword [bp + 22]	; 3: -35 94 22
x12571:	fstp qword [bp + 30]	; 3: -35 94 30

atan$36:	; push 1
x12574:	fld1	; 2: -39 -24

atan$37:	; push float x
x12576:	fld qword [bp + 6]	; 3: -35 70 6

atan$38:	; push float x
x12579:	fld qword [bp + 6]	; 3: -35 70 6

atan$39:	; £temporary745 = x * x
x12582:	fmul	; 2: -34 -55

atan$40:	; £temporary746 = 1 + £temporary745
x12584:	fadd	; 2: -34 -63

atan$41:	; parameter £temporary746, offset 14
x12586:	fstp qword [bp + 52]	; 3: -35 94 52

atan$42:	; call function noellipse-noellipse sqrt
x12589:	mov word [bp + 46], atan$43	; 5: -57 70 46 59 49
x12594:	mov [bp + 48], bp	; 3: -119 110 48
x12597:	add bp, 46	; 3: -125 -59 46
x12600:	jmp sqrt	; 3: -23 -36 -2

atan$43:	; post call
x12603:	fstp qword [bp + 38]	; 3: -35 94 38
x12606:	fld qword [bp + 30]	; 3: -35 70 30
x12609:	fld qword [bp + 22]	; 3: -35 70 22
x12612:	fld qword [bp + 38]	; 3: -35 70 38

atan$44:	; £temporary747 = return_value

atan$45:	; £temporary748 = 1 + £temporary747
x12615:	fadd	; 2: -34 -63

atan$46:	; £temporary749 = x / £temporary748
x12617:	fdiv	; 2: -34 -7

atan$47:	; parameter £temporary749, offset 6
x12619:	fstp qword [bp + 28]	; 3: -35 94 28

atan$48:	; call function noellipse-noellipse atan
x12622:	mov word [bp + 22], atan$49	; 5: -57 70 22 92 49
x12627:	mov [bp + 24], bp	; 3: -119 110 24
x12630:	add bp, 22	; 3: -125 -59 22
x12633:	jmp atan	; 3: -23 47 -1

atan$49:	; post call
x12636:	fstp qword [bp + 22]	; 3: -35 94 22
x12639:	fld qword [bp + 14]	; 3: -35 70 14
x12642:	fld qword [bp + 22]	; 3: -35 70 22

atan$50:	; £temporary750 = return_value

atan$51:	; £temporary751 = 2 * £temporary750
x12645:	fmul	; 2: -34 -55

atan$52:	; return_value = £temporary751

atan$53:	; return
x12647:	mov ax, [bp]	; 3: -117 70 0
x12650:	mov di, [bp + 4]	; 3: -117 126 4
x12653:	mov bp, [bp + 2]	; 3: -117 110 2
x12656:	jmp ax	; 2: -1 -32

atan$54:	; push 0
x12658:	fldz	; 2: -39 -18

atan$55:	; pop float sum
x12660:	fstp qword [bp + 22]	; 3: -35 94 22

atan$56:	; push 1
x12663:	fld1	; 2: -39 -24

atan$57:	; pop float sign
x12665:	fstp qword [bp + 30]	; 3: -35 94 30

atan$58:	; push 1
x12668:	fld1	; 2: -39 -24

atan$59:	; pop float denominator
x12670:	fstp qword [bp + 38]	; 3: -35 94 38

atan$60:	; push float x
x12673:	fld qword [bp + 6]	; 3: -35 70 6

atan$61:	; pop float product
x12676:	fstp qword [bp + 46]	; 3: -35 94 46

atan$62:	; push float sign
x12679:	fld qword [bp + 30]	; 3: -35 70 30

atan$63:	; push float product
x12682:	fld qword [bp + 46]	; 3: -35 70 46

atan$64:	; £temporary752 = sign * product
x12685:	fmul	; 2: -34 -55

atan$65:	; push float denominator
x12687:	fld qword [bp + 38]	; 3: -35 70 38

atan$66:	; £temporary753 = £temporary752 / denominator
x12690:	fdiv	; 2: -34 -7

atan$67:	; pop float term
x12692:	fstp qword [bp + 14]	; 3: -35 94 14

atan$68:	; push float sum
x12695:	fld qword [bp + 22]	; 3: -35 70 22

atan$69:	; push float term
x12698:	fld qword [bp + 14]	; 3: -35 70 14

atan$70:	; £temporary754 = sum + term
x12701:	fadd	; 2: -34 -63

atan$71:	; pop float sum
x12703:	fstp qword [bp + 22]	; 3: -35 94 22

atan$72:	; push float sign
x12706:	fld qword [bp + 30]	; 3: -35 70 30

atan$73:	; £temporary755 = -sign
x12709:	fchs	; 2: -39 -32

atan$74:	; pop float sign
x12711:	fstp qword [bp + 30]	; 3: -35 94 30

atan$75:	; push float product
x12714:	fld qword [bp + 46]	; 3: -35 70 46

atan$76:	; push float x
x12717:	fld qword [bp + 6]	; 3: -35 70 6

atan$77:	; push float x
x12720:	fld qword [bp + 6]	; 3: -35 70 6

atan$78:	; £temporary756 = x * x
x12723:	fmul	; 2: -34 -55

atan$79:	; £temporary757 = product * £temporary756
x12725:	fmul	; 2: -34 -55

atan$80:	; pop float product
x12727:	fstp qword [bp + 46]	; 3: -35 94 46

atan$81:	; push float denominator
x12730:	fld qword [bp + 38]	; 3: -35 70 38

atan$82:	; push float 2
x12733:	fld qword [float8$2#]	; 4: -35 6 -77 4

atan$83:	; £temporary758 = denominator + 2
x12737:	fadd	; 2: -34 -63

atan$84:	; pop float denominator
x12739:	fstp qword [bp + 38]	; 3: -35 94 38

atan$85:	; call header integral zero 0 stack zero 0

atan$86:	; push float term
x12742:	fld qword [bp + 14]	; 3: -35 70 14

atan$87:	; parameter term, offset 6
x12745:	fstp qword [bp + 60]	; 3: -35 94 60

atan$88:	; call function noellipse-noellipse fabs
x12748:	mov word [bp + 54], atan$89	; 5: -57 70 54 -38 49
x12753:	mov [bp + 56], bp	; 3: -119 110 56
x12756:	add bp, 54	; 3: -125 -59 54
x12759:	jmp fabs	; 3: -23 -110 -12

atan$89:	; post call

atan$90:	; £temporary759 = return_value

atan$91:	; push float 0.000000001
x12762:	fld qword [float8$0.000000001#]	; 4: -35 6 -29 41

atan$92:	; if £temporary759 >= 0.000000001 goto 62
x12766:	fcompp	; 2: -34 -39
x12768:	fstsw ax	; 3: -101 -33 -32
x12771:	sahf	; 1: -98
x12772:	jbe atan$62	; 2: 118 -95

atan$93:	; push float sum
x12774:	fld qword [bp + 22]	; 3: -35 70 22

atan$94:	; return_value = sum

atan$95:	; return
x12777:	mov ax, [bp]	; 3: -117 70 0
x12780:	mov di, [bp + 4]	; 3: -117 126 4
x12783:	mov bp, [bp + 2]	; 3: -117 110 2
x12786:	jmp ax	; 2: -1 -32

atan$96:	; function end atan

float8$0.5#:
x12788:	dq 0.5	; 8: 0 0 0 0 0 0 -32 63

acos:	; push float x
x12796:	fld qword [bp + 6]	; 3: -35 70 6

acos$1:	; push 0
x12799:	fldz	; 2: -39 -18

acos$2:	; if x != 0 goto 6
x12801:	fcompp	; 2: -34 -39
x12803:	fstsw ax	; 3: -101 -33 -32
x12806:	sahf	; 1: -98
x12807:	jne acos$6	; 2: 117 15

acos$3:	; push float 1.5707963265
x12809:	fld qword [float8$1.5707963265#]	; 4: -35 6 115 4

acos$4:	; return_value = 1.5707963265

acos$5:	; return
x12813:	mov ax, [bp]	; 3: -117 70 0
x12816:	mov di, [bp + 4]	; 3: -117 126 4
x12819:	mov bp, [bp + 2]	; 3: -117 110 2
x12822:	jmp ax	; 2: -1 -32

acos$6:	; push float x
x12824:	fld qword [bp + 6]	; 3: -35 70 6

acos$7:	; push 0
x12827:	fldz	; 2: -39 -18

acos$8:	; if x >= 0 goto 20
x12829:	fcompp	; 2: -34 -39
x12831:	fstsw ax	; 3: -101 -33 -32
x12834:	sahf	; 1: -98
x12835:	jbe acos$20	; 2: 118 51

acos$9:	; push float 3.141592653
x12837:	fld qword [float8$3.141592653#]	; 4: -35 6 107 4

acos$10:	; call header integral zero 0 stack no zero 1
x12841:	fstp qword [bp + 14]	; 3: -35 94 14

acos$11:	; push float x
x12844:	fld qword [bp + 6]	; 3: -35 70 6

acos$12:	; £temporary724 = -x
x12847:	fchs	; 2: -39 -32

acos$13:	; parameter £temporary724, offset 6
x12849:	fstp qword [bp + 28]	; 3: -35 94 28

acos$14:	; call function noellipse-noellipse acos
x12852:	mov word [bp + 22], acos$15	; 5: -57 70 22 66 50
x12857:	mov [bp + 24], bp	; 3: -119 110 24
x12860:	add bp, 22	; 3: -125 -59 22
x12863:	nop	; 1: -112
x12864:	jmp acos	; 2: -21 -70

acos$15:	; post call
x12866:	fstp qword [bp + 22]	; 3: -35 94 22
x12869:	fld qword [bp + 14]	; 3: -35 70 14
x12872:	fld qword [bp + 22]	; 3: -35 70 22

acos$16:	; £temporary725 = return_value

acos$17:	; £temporary726 = 3.141592653 - £temporary725
x12875:	fsub	; 2: -34 -23

acos$18:	; return_value = £temporary726

acos$19:	; return
x12877:	mov ax, [bp]	; 3: -117 70 0
x12880:	mov di, [bp + 4]	; 3: -117 126 4
x12883:	mov bp, [bp + 2]	; 3: -117 110 2
x12886:	jmp ax	; 2: -1 -32

acos$20:	; push float x
x12888:	fld qword [bp + 6]	; 3: -35 70 6

acos$21:	; push 1
x12891:	fld1	; 2: -39 -24

acos$22:	; if x > 1 goto 42
x12893:	fcompp	; 2: -34 -39
x12895:	fstsw ax	; 3: -101 -33 -32
x12898:	sahf	; 1: -98
x12899:	jb acos$42	; 2: 114 62

acos$23:	; call header integral zero 0 stack zero 0

acos$24:	; call header integral zero 0 stack zero 0

acos$25:	; push 1
x12901:	fld1	; 2: -39 -24

acos$26:	; push float x
x12903:	fld qword [bp + 6]	; 3: -35 70 6

acos$27:	; push float x
x12906:	fld qword [bp + 6]	; 3: -35 70 6

acos$28:	; £temporary728 = x * x
x12909:	fmul	; 2: -34 -55

acos$29:	; £temporary729 = 1 - £temporary728
x12911:	fsub	; 2: -34 -23

acos$30:	; parameter £temporary729, offset 6
x12913:	fstp qword [bp + 20]	; 3: -35 94 20

acos$31:	; call function noellipse-noellipse sqrt
x12916:	mov word [bp + 14], acos$32	; 5: -57 70 14 -126 50
x12921:	mov [bp + 16], bp	; 3: -119 110 16
x12924:	add bp, 14	; 3: -125 -59 14
x12927:	jmp sqrt	; 3: -23 -107 -3

acos$32:	; post call

acos$33:	; £temporary730 = return_value

acos$34:	; push float x
x12930:	fld qword [bp + 6]	; 3: -35 70 6

acos$35:	; £temporary731 = £temporary730 / x
x12933:	fdiv	; 2: -34 -7

acos$36:	; parameter £temporary731, offset 6
x12935:	fstp qword [bp + 20]	; 3: -35 94 20

acos$37:	; call function noellipse-noellipse atan
x12938:	mov word [bp + 14], acos$38	; 5: -57 70 14 -104 50
x12943:	mov [bp + 16], bp	; 3: -119 110 16
x12946:	add bp, 14	; 3: -125 -59 14
x12949:	jmp atan	; 3: -23 -13 -3

acos$38:	; post call

acos$39:	; £temporary732 = return_value

acos$40:	; return_value = £temporary732

acos$41:	; return
x12952:	mov ax, [bp]	; 3: -117 70 0
x12955:	mov di, [bp + 4]	; 3: -117 126 4
x12958:	mov bp, [bp + 2]	; 3: -117 110 2
x12961:	jmp ax	; 2: -1 -32

acos$42:	; errno = 6
x12963:	mov word [errno], 6	; 6: -57 6 35 10 6 0

acos$43:	; push 0
x12969:	fldz	; 2: -39 -18

acos$44:	; return_value = 0

acos$45:	; return
x12971:	mov ax, [bp]	; 3: -117 70 0
x12974:	mov di, [bp + 4]	; 3: -117 126 4
x12977:	mov bp, [bp + 2]	; 3: -117 110 2
x12980:	jmp ax	; 2: -1 -32

acos$46:	; function end acos

sinh:	; call header integral zero 0 stack zero 0

sinh$1:	; push float x
x12982:	fld qword [bp + 6]	; 3: -35 70 6

sinh$2:	; parameter x, offset 6
x12985:	fstp qword [bp + 20]	; 3: -35 94 20

sinh$3:	; call function noellipse-noellipse exp
x12988:	mov word [bp + 14], sinh$4	; 5: -57 70 14 -54 50
x12993:	mov [bp + 16], bp	; 3: -119 110 16
x12996:	add bp, 14	; 3: -125 -59 14
x12999:	jmp exp	; 3: -23 -54 -8

sinh$4:	; post call

sinh$5:	; £temporary790 = return_value

sinh$6:	; call header integral zero 0 stack no zero 1
x13002:	fstp qword [bp + 14]	; 3: -35 94 14

sinh$7:	; push float x
x13005:	fld qword [bp + 6]	; 3: -35 70 6

sinh$8:	; £temporary791 = -x
x13008:	fchs	; 2: -39 -32

sinh$9:	; parameter £temporary791, offset 6
x13010:	fstp qword [bp + 28]	; 3: -35 94 28

sinh$10:	; call function noellipse-noellipse exp
x13013:	mov word [bp + 22], sinh$11	; 5: -57 70 22 -29 50
x13018:	mov [bp + 24], bp	; 3: -119 110 24
x13021:	add bp, 22	; 3: -125 -59 22
x13024:	jmp exp	; 3: -23 -79 -8

sinh$11:	; post call
x13027:	fstp qword [bp + 22]	; 3: -35 94 22
x13030:	fld qword [bp + 14]	; 3: -35 70 14
x13033:	fld qword [bp + 22]	; 3: -35 70 22

sinh$12:	; £temporary792 = return_value

sinh$13:	; £temporary793 = £temporary790 - £temporary792
x13036:	fsub	; 2: -34 -23

sinh$14:	; push float 2
x13038:	fld qword [float8$2#]	; 4: -35 6 -77 4

sinh$15:	; £temporary794 = £temporary793 / 2
x13042:	fdiv	; 2: -34 -7

sinh$16:	; return_value = £temporary794

sinh$17:	; return
x13044:	mov ax, [bp]	; 3: -117 70 0
x13047:	mov di, [bp + 4]	; 3: -117 126 4
x13050:	mov bp, [bp + 2]	; 3: -117 110 2
x13053:	jmp ax	; 2: -1 -32

sinh$18:	; function end sinh

cosh:	; call header integral zero 0 stack zero 0

cosh$1:	; push float x
x13055:	fld qword [bp + 6]	; 3: -35 70 6

cosh$2:	; parameter x, offset 6
x13058:	fstp qword [bp + 20]	; 3: -35 94 20

cosh$3:	; call function noellipse-noellipse exp
x13061:	mov word [bp + 14], cosh$4	; 5: -57 70 14 19 51
x13066:	mov [bp + 16], bp	; 3: -119 110 16
x13069:	add bp, 14	; 3: -125 -59 14
x13072:	jmp exp	; 3: -23 -127 -8

cosh$4:	; post call

cosh$5:	; £temporary797 = return_value

cosh$6:	; call header integral zero 0 stack no zero 1
x13075:	fstp qword [bp + 14]	; 3: -35 94 14

cosh$7:	; push float x
x13078:	fld qword [bp + 6]	; 3: -35 70 6

cosh$8:	; £temporary798 = -x
x13081:	fchs	; 2: -39 -32

cosh$9:	; parameter £temporary798, offset 6
x13083:	fstp qword [bp + 28]	; 3: -35 94 28

cosh$10:	; call function noellipse-noellipse exp
x13086:	mov word [bp + 22], cosh$11	; 5: -57 70 22 44 51
x13091:	mov [bp + 24], bp	; 3: -119 110 24
x13094:	add bp, 22	; 3: -125 -59 22
x13097:	jmp exp	; 3: -23 104 -8

cosh$11:	; post call
x13100:	fstp qword [bp + 22]	; 3: -35 94 22
x13103:	fld qword [bp + 14]	; 3: -35 70 14
x13106:	fld qword [bp + 22]	; 3: -35 70 22

cosh$12:	; £temporary799 = return_value

cosh$13:	; £temporary800 = £temporary797 + £temporary799
x13109:	fadd	; 2: -34 -63

cosh$14:	; push float 2
x13111:	fld qword [float8$2#]	; 4: -35 6 -77 4

cosh$15:	; £temporary801 = £temporary800 / 2
x13115:	fdiv	; 2: -34 -7

cosh$16:	; return_value = £temporary801

cosh$17:	; return
x13117:	mov ax, [bp]	; 3: -117 70 0
x13120:	mov di, [bp + 4]	; 3: -117 126 4
x13123:	mov bp, [bp + 2]	; 3: -117 110 2
x13126:	jmp ax	; 2: -1 -32

cosh$18:	; function end cosh

tanh:	; call header integral zero 0 stack zero 0

tanh$1:	; push float x
x13128:	fld qword [bp + 6]	; 3: -35 70 6

tanh$2:	; parameter x, offset 6
x13131:	fstp qword [bp + 20]	; 3: -35 94 20

tanh$3:	; call function noellipse-noellipse sinh
x13134:	mov word [bp + 14], tanh$4	; 5: -57 70 14 92 51
x13139:	mov [bp + 16], bp	; 3: -119 110 16
x13142:	add bp, 14	; 3: -125 -59 14
x13145:	jmp sinh	; 3: -23 90 -1

tanh$4:	; post call

tanh$5:	; £temporary804 = return_value

tanh$6:	; call header integral zero 0 stack no zero 1
x13148:	fstp qword [bp + 14]	; 3: -35 94 14

tanh$7:	; push float x
x13151:	fld qword [bp + 6]	; 3: -35 70 6

tanh$8:	; parameter x, offset 6
x13154:	fstp qword [bp + 28]	; 3: -35 94 28

tanh$9:	; call function noellipse-noellipse cosh
x13157:	mov word [bp + 22], tanh$10	; 5: -57 70 22 115 51
x13162:	mov [bp + 24], bp	; 3: -119 110 24
x13165:	add bp, 22	; 3: -125 -59 22
x13168:	nop	; 1: -112
x13169:	jmp cosh	; 2: -21 -116

tanh$10:	; post call
x13171:	fstp qword [bp + 22]	; 3: -35 94 22
x13174:	fld qword [bp + 14]	; 3: -35 70 14
x13177:	fld qword [bp + 22]	; 3: -35 70 22

tanh$11:	; £temporary805 = return_value

tanh$12:	; £temporary806 = £temporary804 / £temporary805
x13180:	fdiv	; 2: -34 -7

tanh$13:	; return_value = £temporary806

tanh$14:	; return
x13182:	mov ax, [bp]	; 3: -117 70 0
x13185:	mov di, [bp + 4]	; 3: -117 126 4
x13188:	mov bp, [bp + 2]	; 3: -117 110 2
x13191:	jmp ax	; 2: -1 -32

tanh$15:	; function end tanh

frexp:	; push float x
x13193:	fld qword [bp + 6]	; 3: -35 70 6

frexp$1:	; push 0
x13196:	fldz	; 2: -39 -18

frexp$2:	; if x == 0 goto 42
x13198:	fcompp	; 2: -34 -39
x13200:	fstsw ax	; 3: -101 -33 -32
x13203:	sahf	; 1: -98
x13204:	je frexp$42	; 4: 15 -124 -106 0

frexp$3:	; call header integral zero 0 stack zero 0

frexp$4:	; call header integral zero 0 stack zero 0

frexp$5:	; push float x
x13208:	fld qword [bp + 6]	; 3: -35 70 6

frexp$6:	; parameter x, offset 6
x13211:	fstp qword [bp + 22]	; 3: -35 94 22

frexp$7:	; call function noellipse-noellipse fabs
x13214:	mov word [bp + 16], frexp$8	; 5: -57 70 16 -84 51
x13219:	mov [bp + 18], bp	; 3: -119 110 18
x13222:	add bp, 16	; 3: -125 -59 16
x13225:	jmp fabs	; 3: -23 -64 -14

frexp$8:	; post call

frexp$9:	; £temporary603 = return_value

frexp$10:	; parameter £temporary603, offset 6
x13228:	fstp qword [bp + 22]	; 3: -35 94 22

frexp$11:	; call function noellipse-noellipse log2
x13231:	mov word [bp + 16], frexp$12	; 5: -57 70 16 -67 51
x13236:	mov [bp + 18], bp	; 3: -119 110 18
x13239:	add bp, 16	; 3: -125 -59 16
x13242:	jmp @24$log2	; 3: -23 -117 0

frexp$12:	; post call

frexp$13:	; £temporary604 = return_value

frexp$14:	; £temporary605 = int_to_int £temporary604 (Signed_Int -> Signed_Int)

frexp$15:	; exponent = £temporary605
x13245:	mov [bp + 16], bx	; 3: -119 94 16

frexp$16:	; call header integral zero 0 stack zero 0

frexp$17:	; push float 2
x13248:	fld qword [float8$2#]	; 4: -35 6 -77 4

frexp$18:	; parameter 2, offset 6
x13252:	fstp qword [bp + 24]	; 3: -35 94 24

frexp$19:	; £temporary606 = int_to_float exponent (Signed_Int -> Double)
x13255:	fild word [bp + 16]	; 3: -33 70 16

frexp$20:	; parameter £temporary606, offset 14
x13258:	fstp qword [bp + 32]	; 3: -35 94 32

frexp$21:	; call function noellipse-noellipse pow
x13261:	mov word [bp + 18], frexp$22	; 5: -57 70 18 -37 51
x13266:	mov [bp + 20], bp	; 3: -119 110 20
x13269:	add bp, 18	; 3: -125 -59 18
x13272:	jmp pow	; 3: -23 16 -10

frexp$22:	; post call

frexp$23:	; £temporary607 = return_value

frexp$24:	; push float x
x13275:	fld qword [bp + 6]	; 3: -35 70 6

frexp$25:	; if £temporary607 >= x goto 27
x13278:	fcompp	; 2: -34 -39
x13280:	fstsw ax	; 3: -101 -33 -32
x13283:	sahf	; 1: -98
x13284:	jbe frexp$27	; 2: 118 3

frexp$26:	; ++exponent
x13286:	inc word [bp + 16]	; 3: -1 70 16

frexp$27:	; if p == 0 goto 30
x13289:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x13293:	je frexp$30	; 2: 116 8

frexp$28:	; £temporary611 -> p = *p
x13295:	mov si, [bp + 14]	; 3: -117 118 14

frexp$29:	; £temporary611 -> p = exponent
x13298:	mov ax, [bp + 16]	; 3: -117 70 16
x13301:	mov [si], ax	; 2: -119 4

frexp$30:	; push float x
x13303:	fld qword [bp + 6]	; 3: -35 70 6

frexp$31:	; call header integral zero 0 stack no zero 1
x13306:	fstp qword [bp + 18]	; 3: -35 94 18

frexp$32:	; push float 2
x13309:	fld qword [float8$2#]	; 4: -35 6 -77 4

frexp$33:	; parameter 2, offset 6
x13313:	fstp qword [bp + 32]	; 3: -35 94 32

frexp$34:	; £temporary612 = int_to_float exponent (Signed_Int -> Double)
x13316:	fild word [bp + 16]	; 3: -33 70 16

frexp$35:	; parameter £temporary612, offset 14
x13319:	fstp qword [bp + 40]	; 3: -35 94 40

frexp$36:	; call function noellipse-noellipse pow
x13322:	mov word [bp + 26], frexp$37	; 5: -57 70 26 24 52
x13327:	mov [bp + 28], bp	; 3: -119 110 28
x13330:	add bp, 26	; 3: -125 -59 26
x13333:	jmp pow	; 3: -23 -45 -11

frexp$37:	; post call
x13336:	fstp qword [bp + 26]	; 3: -35 94 26
x13339:	fld qword [bp + 18]	; 3: -35 70 18
x13342:	fld qword [bp + 26]	; 3: -35 70 26

frexp$38:	; £temporary613 = return_value

frexp$39:	; £temporary614 = x / £temporary613
x13345:	fdiv	; 2: -34 -7

frexp$40:	; return_value = £temporary614

frexp$41:	; return
x13347:	mov ax, [bp]	; 3: -117 70 0
x13350:	mov di, [bp + 4]	; 3: -117 126 4
x13353:	mov bp, [bp + 2]	; 3: -117 110 2
x13356:	jmp ax	; 2: -1 -32

frexp$42:	; if p == 0 goto 45
x13358:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x13362:	je frexp$45	; 2: 116 7

frexp$43:	; £temporary616 -> p = *p
x13364:	mov si, [bp + 14]	; 3: -117 118 14

frexp$44:	; £temporary616 -> p = 0
x13367:	mov word [si], 0	; 4: -57 4 0 0

frexp$45:	; push 0
x13371:	fldz	; 2: -39 -18

frexp$46:	; return_value = 0

frexp$47:	; return
x13373:	mov ax, [bp]	; 3: -117 70 0
x13376:	mov di, [bp + 4]	; 3: -117 126 4
x13379:	mov bp, [bp + 2]	; 3: -117 110 2
x13382:	jmp ax	; 2: -1 -32

frexp$48:	; function end frexp

@24$log2:	; call header integral zero 0 stack zero 0

@24$log2$1:	; push float x
x13384:	fld qword [bp + 6]	; 3: -35 70 6

@24$log2$2:	; parameter x, offset 6
x13387:	fstp qword [bp + 20]	; 3: -35 94 20

@24$log2$3:	; call function noellipse-noellipse log
x13390:	mov word [bp + 14], @24$log2$4	; 5: -57 70 14 92 52
x13395:	mov [bp + 16], bp	; 3: -119 110 16
x13398:	add bp, 14	; 3: -125 -59 14
x13401:	jmp log	; 3: -23 103 -12

@24$log2$4:	; post call

@24$log2$5:	; £temporary598 = return_value

@24$log2$6:	; push float 0.6931471805
x13404:	fld qword [float8$0.6931471805#]	; 4: -35 6 117 52

@24$log2$7:	; £temporary599 = £temporary598 / 0.6931471805
x13408:	fdiv	; 2: -34 -7

@24$log2$8:	; £temporary600 = float_to_int £temporary599 (Double -> Signed_Int)
x13410:	fistp word [container2bytes#]	; 4: -33 30 115 26
x13414:	mov bx, [container2bytes#]	; 4: -117 30 115 26

@24$log2$9:	; return_value = £temporary600

@24$log2$10:	; return
x13418:	mov ax, [bp]	; 3: -117 70 0
x13421:	mov di, [bp + 4]	; 3: -117 126 4
x13424:	mov bp, [bp + 2]	; 3: -117 110 2
x13427:	jmp ax	; 2: -1 -32

@24$log2$11:	; function end log2

float8$0.6931471805#:
x13429:	dq 0.6931471805	; 8: -52 -4 -15 -2 66 46 -26 63

perror:	; call header integral zero 0 stack zero 0

perror$1:	; parameter string_25s3A2025s2E0A#, offset 6
x13437:	mov word [bp + 14], string_25s3A2025s2E0A#	; 5: -57 70 14 -67 52

perror$2:	; parameter s, offset 8
x13442:	mov ax, [bp + 6]	; 3: -117 70 6
x13445:	mov [bp + 16], ax	; 3: -119 70 16

perror$3:	; call header integral zero 0 stack zero 0

perror$4:	; parameter errno, offset 16
x13448:	mov ax, [errno]	; 3: -95 35 10
x13451:	mov [bp + 24], ax	; 3: -119 70 24

perror$5:	; call function noellipse-noellipse strerror
x13454:	mov word [bp + 18], perror$6	; 5: -57 70 18 -100 52
x13459:	mov [bp + 20], bp	; 3: -119 110 20
x13462:	add bp, 18	; 3: -125 -59 18
x13465:	nop	; 1: -112
x13466:	jmp strerror	; 2: -21 42

perror$6:	; post call

perror$7:	; £temporary1177 = return_value

perror$8:	; parameter £temporary1177, offset 10
x13468:	mov [bp + 18], bx	; 3: -119 94 18

perror$9:	; call function noellipse-ellipse printf, extra 0
x13471:	mov word [bp + 8], perror$10	; 5: -57 70 8 -78 52
x13476:	mov [bp + 10], bp	; 3: -119 110 10
x13479:	add bp, 8	; 3: -125 -59 8
x13482:	mov di, bp	; 2: -119 -17
x13484:	add di, 4	; 3: -125 -57 4
x13487:	jmp printf	; 3: -23 -128 -41

perror$10:	; post call

perror$11:	; return
x13490:	mov ax, [bp]	; 3: -117 70 0
x13493:	mov di, [bp + 4]	; 3: -117 126 4
x13496:	mov bp, [bp + 2]	; 3: -117 110 2
x13499:	jmp ax	; 2: -1 -32

perror$12:	; function end perror

string_25s3A2025s2E0A#:
x13501:	db "%s: %s.", 10, 0	; 9: 37 115 58 32 37 115 46 10 0

strerror:	; call header integral zero 0 stack zero 0

strerror$1:	; call function noellipse-noellipse localeconv
x13510:	mov word [bp + 8], strerror$2	; 5: -57 70 8 -44 52
x13515:	mov [bp + 10], bp	; 3: -119 110 10
x13518:	add bp, 8	; 3: -125 -59 8
x13521:	jmp localeconv	; 3: -23 -61 -24

strerror$2:	; post call

strerror$3:	; £temporary3276 = return_value

strerror$4:	; localeConvPtr = £temporary3276
x13524:	mov [bp + 8], bx	; 3: -119 94 8

strerror$5:	; if localeConvPtr == 0 goto 9
x13527:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x13531:	je strerror$9	; 2: 116 8

strerror$6:	; £temporary3278 -> localeConvPtr = *localeConvPtr, offset 16
x13533:	mov si, [bp + 8]	; 3: -117 118 8

strerror$7:	; £temporary3282 = £temporary3278 -> localeConvPtr
x13536:	mov ax, [si + 16]	; 3: -117 68 16

strerror$8:	; goto 10
x13539:	jmp strerror$10	; 2: -21 3

strerror$9:	; £temporary3282 = 0
x13541:	mov ax, 0	; 3: -72 0 0

strerror$10:	; messageList = £temporary3282
x13544:	mov [bp + 10], ax	; 3: -119 70 10

strerror$11:	; if messageList == 0 goto 14
x13547:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13551:	je strerror$14	; 2: 116 5

strerror$12:	; £temporary3287 = messageList
x13553:	mov ax, [bp + 10]	; 3: -117 70 10

strerror$13:	; goto 15
x13556:	jmp strerror$15	; 2: -21 3

strerror$14:	; £temporary3287 = enMessageList
x13558:	mov ax, enMessageList	; 3: -72 -126 33

strerror$15:	; messageList = £temporary3287
x13561:	mov [bp + 10], ax	; 3: -119 70 10

strerror$16:	; £temporary3289 = errno * 2
x13564:	mov ax, [bp + 6]	; 3: -117 70 6
x13567:	xor dx, dx	; 2: 49 -46
x13569:	mul word [int2$2#]	; 4: -9 38 23 53

strerror$17:	; £temporary3290 = messageList + £temporary3289
x13573:	mov si, [bp + 10]	; 3: -117 118 10
x13576:	add si, ax	; 2: 1 -58

strerror$18:	; £temporary3288 -> £temporary3290 = *£temporary3290

strerror$19:	; return_value = £temporary3288 -> £temporary3290
x13578:	mov bx, [si]	; 2: -117 28

strerror$20:	; return
x13580:	mov ax, [bp]	; 3: -117 70 0
x13583:	mov di, [bp + 4]	; 3: -117 126 4
x13586:	mov bp, [bp + 2]	; 3: -117 110 2
x13589:	jmp ax	; 2: -1 -32

strerror$21:	; function end strerror

int2$2#:
x13591:	dw 2	; 2: 2 0

modf:	; call header integral zero 0 stack zero 0

modf$1:	; push float x
x13593:	fld qword [bp + 6]	; 3: -35 70 6

modf$2:	; parameter x, offset 6
x13596:	fstp qword [bp + 22]	; 3: -35 94 22

modf$3:	; call function noellipse-noellipse fabs
x13599:	mov word [bp + 16], modf$4	; 5: -57 70 16 45 53
x13604:	mov [bp + 18], bp	; 3: -119 110 18
x13607:	add bp, 16	; 3: -125 -59 16
x13610:	jmp fabs	; 3: -23 63 -15

modf$4:	; post call

modf$5:	; £temporary631 = return_value

modf$6:	; pop float abs_x
x13613:	fstp qword [bp + 16]	; 3: -35 94 16

modf$7:	; push float abs_x
x13616:	fld qword [bp + 16]	; 3: -35 70 16

modf$8:	; £temporary632 = float_to_int abs_x (Double -> Signed_Long_Int)
x13619:	fistp dword [container4bytes#]	; 4: -37 30 -64 37
x13623:	mov eax, [container4bytes#]	; 4: 102 -95 -64 37

modf$9:	; £temporary633 = int_to_float £temporary632 (Signed_Long_Int -> Double)
x13627:	mov [container4bytes#], eax	; 4: 102 -93 -64 37
x13631:	fild dword [container4bytes#]	; 4: -37 6 -64 37

modf$10:	; pop float integral
x13635:	fstp qword [bp + 24]	; 3: -35 94 24

modf$11:	; push float abs_x
x13638:	fld qword [bp + 16]	; 3: -35 70 16

modf$12:	; push float integral
x13641:	fld qword [bp + 24]	; 3: -35 70 24

modf$13:	; £temporary634 = abs_x - integral
x13644:	fsub	; 2: -34 -23

modf$14:	; pop float fractional
x13646:	fstp qword [bp + 32]	; 3: -35 94 32

modf$15:	; if p == 0 goto 26
x13649:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x13653:	je modf$26	; 2: 116 28

modf$16:	; £temporary636 -> p = *p
x13655:	mov si, [bp + 14]	; 3: -117 118 14

modf$17:	; push float x
x13658:	fld qword [bp + 6]	; 3: -35 70 6

modf$18:	; push 0
x13661:	fldz	; 2: -39 -18

modf$19:	; if x <= 0 goto 23
x13663:	fcompp	; 2: -34 -39
x13665:	fstsw ax	; 3: -101 -33 -32
x13668:	sahf	; 1: -98
x13669:	jae modf$23	; 2: 115 5

modf$20:	; push float integral
x13671:	fld qword [bp + 24]	; 3: -35 70 24

modf$21:	; decrease stack

modf$22:	; goto 25
x13674:	jmp modf$25	; 2: -21 5

modf$23:	; push float integral
x13676:	fld qword [bp + 24]	; 3: -35 70 24

modf$24:	; £temporary638 = -integral
x13679:	fchs	; 2: -39 -32

modf$25:	; pop float £temporary636 -> p
x13681:	fstp qword [si]	; 2: -35 28

modf$26:	; push float x
x13683:	fld qword [bp + 6]	; 3: -35 70 6

modf$27:	; push 0
x13686:	fldz	; 2: -39 -18

modf$28:	; if x <= 0 goto 32
x13688:	fcompp	; 2: -34 -39
x13690:	fstsw ax	; 3: -101 -33 -32
x13693:	sahf	; 1: -98
x13694:	jae modf$32	; 2: 115 5

modf$29:	; push float fractional
x13696:	fld qword [bp + 32]	; 3: -35 70 32

modf$30:	; decrease stack

modf$31:	; goto 34
x13699:	jmp modf$34	; 2: -21 5

modf$32:	; push float fractional
x13701:	fld qword [bp + 32]	; 3: -35 70 32

modf$33:	; £temporary644 = -fractional
x13704:	fchs	; 2: -39 -32

modf$34:	; return_value = £temporary648

modf$35:	; return
x13706:	mov ax, [bp]	; 3: -117 70 0
x13709:	mov di, [bp + 4]	; 3: -117 126 4
x13712:	mov bp, [bp + 2]	; 3: -117 110 2
x13715:	jmp ax	; 2: -1 -32

modf$36:	; function end modf

math_test_2:	; call header integral zero 0 stack zero 0

math_test_2$1:	; parameter string_fmod2825f2C2025f29203D2025f2C20errno203D2025i0A#, offset 6
x13717:	mov word [bp + 28], string_fmod2825f2C2025f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 28 -21 54

math_test_2$2:	; push float x
x13722:	fld qword [bp + 6]	; 3: -35 70 6

math_test_2$3:	; parameter x, offset 8
x13725:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_2$4:	; push float y
x13728:	fld qword [bp + 14]	; 3: -35 70 14

math_test_2$5:	; parameter y, offset 16
x13731:	fstp qword [bp + 38]	; 3: -35 94 38

math_test_2$6:	; call header integral zero 0 stack zero 0

math_test_2$7:	; push float x
x13734:	fld qword [bp + 6]	; 3: -35 70 6

math_test_2$8:	; parameter x, offset 30
x13737:	fstp qword [bp + 52]	; 3: -35 94 52

math_test_2$9:	; push float y
x13740:	fld qword [bp + 14]	; 3: -35 70 14

math_test_2$10:	; parameter y, offset 38
x13743:	fstp qword [bp + 60]	; 3: -35 94 60

math_test_2$11:	; call function noellipse-noellipse fmod
x13746:	mov word [bp + 46], math_test_2$12	; 5: -57 70 46 -64 53
x13751:	mov [bp + 48], bp	; 3: -119 110 48
x13754:	add bp, 46	; 3: -125 -59 46
x13757:	jmp fmod	; 3: -23 -10 -9

math_test_2$12:	; post call

math_test_2$13:	; £temporary4135 = return_value

math_test_2$14:	; parameter £temporary4135, offset 24
x13760:	fstp qword [bp + 46]	; 3: -35 94 46

math_test_2$15:	; parameter errno, offset 32
x13763:	mov ax, [errno]	; 3: -95 35 10
x13766:	mov [bp + 54], ax	; 3: -119 70 54

math_test_2$16:	; call function noellipse-ellipse printf, extra 0
x13769:	mov word [bp + 22], math_test_2$17	; 5: -57 70 22 -36 53
x13774:	mov [bp + 24], bp	; 3: -119 110 24
x13777:	add bp, 22	; 3: -125 -59 22
x13780:	mov di, bp	; 2: -119 -17
x13782:	add di, 26	; 3: -125 -57 26
x13785:	jmp printf	; 3: -23 86 -42

math_test_2$17:	; post call

math_test_2$18:	; errno = 0
x13788:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_2$19:	; call header integral zero 0 stack zero 0

math_test_2$20:	; parameter string_atan22825f2C2025f29203D2025f2C20errno203D2025i0A#, offset 6
x13794:	mov word [bp + 28], string_atan22825f2C2025f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 28 10 55

math_test_2$21:	; push float x
x13799:	fld qword [bp + 6]	; 3: -35 70 6

math_test_2$22:	; parameter x, offset 8
x13802:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_2$23:	; push float y
x13805:	fld qword [bp + 14]	; 3: -35 70 14

math_test_2$24:	; parameter y, offset 16
x13808:	fstp qword [bp + 38]	; 3: -35 94 38

math_test_2$25:	; call header integral zero 0 stack zero 0

math_test_2$26:	; push float x
x13811:	fld qword [bp + 6]	; 3: -35 70 6

math_test_2$27:	; parameter x, offset 30
x13814:	fstp qword [bp + 52]	; 3: -35 94 52

math_test_2$28:	; push float y
x13817:	fld qword [bp + 14]	; 3: -35 70 14

math_test_2$29:	; parameter y, offset 38
x13820:	fstp qword [bp + 60]	; 3: -35 94 60

math_test_2$30:	; call function noellipse-noellipse atan2
x13823:	mov word [bp + 46], math_test_2$31	; 5: -57 70 46 13 54
x13828:	mov [bp + 48], bp	; 3: -119 110 48
x13831:	add bp, 46	; 3: -125 -59 46
x13834:	jmp atan2	; 3: -23 80 1

math_test_2$31:	; post call

math_test_2$32:	; £temporary4137 = return_value

math_test_2$33:	; parameter £temporary4137, offset 24
x13837:	fstp qword [bp + 46]	; 3: -35 94 46

math_test_2$34:	; parameter errno, offset 32
x13840:	mov ax, [errno]	; 3: -95 35 10
x13843:	mov [bp + 54], ax	; 3: -119 70 54

math_test_2$35:	; call function noellipse-ellipse printf, extra 0
x13846:	mov word [bp + 22], math_test_2$36	; 5: -57 70 22 41 54
x13851:	mov [bp + 24], bp	; 3: -119 110 24
x13854:	add bp, 22	; 3: -125 -59 22
x13857:	mov di, bp	; 2: -119 -17
x13859:	add di, 26	; 3: -125 -57 26
x13862:	jmp printf	; 3: -23 9 -42

math_test_2$36:	; post call

math_test_2$37:	; errno = 0
x13865:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_2$38:	; call header integral zero 0 stack zero 0

math_test_2$39:	; parameter string_pow2825f2C2025f29203D2025f2C20errno203D2025i0A#, offset 6
x13871:	mov word [bp + 28], string_pow2825f2C2025f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 28 42 55

math_test_2$40:	; push float x
x13876:	fld qword [bp + 6]	; 3: -35 70 6

math_test_2$41:	; parameter x, offset 8
x13879:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_2$42:	; push float y
x13882:	fld qword [bp + 14]	; 3: -35 70 14

math_test_2$43:	; parameter y, offset 16
x13885:	fstp qword [bp + 38]	; 3: -35 94 38

math_test_2$44:	; call header integral zero 0 stack zero 0

math_test_2$45:	; push float x
x13888:	fld qword [bp + 6]	; 3: -35 70 6

math_test_2$46:	; parameter x, offset 30
x13891:	fstp qword [bp + 52]	; 3: -35 94 52

math_test_2$47:	; push float y
x13894:	fld qword [bp + 14]	; 3: -35 70 14

math_test_2$48:	; parameter y, offset 38
x13897:	fstp qword [bp + 60]	; 3: -35 94 60

math_test_2$49:	; call function noellipse-noellipse pow
x13900:	mov word [bp + 46], math_test_2$50	; 5: -57 70 46 90 54
x13905:	mov [bp + 48], bp	; 3: -119 110 48
x13908:	add bp, 46	; 3: -125 -59 46
x13911:	jmp pow	; 3: -23 -111 -13

math_test_2$50:	; post call

math_test_2$51:	; £temporary4139 = return_value

math_test_2$52:	; parameter £temporary4139, offset 24
x13914:	fstp qword [bp + 46]	; 3: -35 94 46

math_test_2$53:	; parameter errno, offset 32
x13917:	mov ax, [errno]	; 3: -95 35 10
x13920:	mov [bp + 54], ax	; 3: -119 70 54

math_test_2$54:	; call function noellipse-ellipse printf, extra 0
x13923:	mov word [bp + 22], math_test_2$55	; 5: -57 70 22 118 54
x13928:	mov [bp + 24], bp	; 3: -119 110 24
x13931:	add bp, 22	; 3: -125 -59 22
x13934:	mov di, bp	; 2: -119 -17
x13936:	add di, 26	; 3: -125 -57 26
x13939:	jmp printf	; 3: -23 -68 -43

math_test_2$55:	; post call

math_test_2$56:	; errno = 0
x13942:	mov word [errno], 0	; 6: -57 6 35 10 0 0

math_test_2$57:	; call header integral zero 0 stack zero 0

math_test_2$58:	; parameter string_0A#, offset 6
x13948:	mov word [bp + 28], string_0A#	; 5: -57 70 28 48 12

math_test_2$59:	; call function noellipse-ellipse printf, extra 0
x13953:	mov word [bp + 22], math_test_2$60	; 5: -57 70 22 -111 54
x13958:	mov [bp + 24], bp	; 3: -119 110 24
x13961:	add bp, 22	; 3: -125 -59 22
x13964:	mov di, bp	; 2: -119 -17
x13966:	jmp printf	; 3: -23 -95 -43

math_test_2$60:	; post call

math_test_2$61:	; call header integral zero 0 stack zero 0

math_test_2$62:	; parameter string_ldexp2825f2C2025i29203D2025f0A0A#, offset 6
x13969:	mov word [bp + 28], string_ldexp2825f2C2025i29203D2025f0A0A#	; 5: -57 70 28 72 55

math_test_2$63:	; push float x
x13974:	fld qword [bp + 6]	; 3: -35 70 6

math_test_2$64:	; parameter x, offset 8
x13977:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_2$65:	; push float y
x13980:	fld qword [bp + 14]	; 3: -35 70 14

math_test_2$66:	; £temporary4142 = float_to_int y (Double -> Signed_Int)
x13983:	fistp word [container2bytes#]	; 4: -33 30 115 26
x13987:	mov ax, [container2bytes#]	; 3: -95 115 26

math_test_2$67:	; parameter £temporary4142, offset 16
x13990:	mov [bp + 38], ax	; 3: -119 70 38

math_test_2$68:	; call header integral zero 0 stack zero 0

math_test_2$69:	; push float x
x13993:	fld qword [bp + 6]	; 3: -35 70 6

math_test_2$70:	; parameter x, offset 24
x13996:	fstp qword [bp + 46]	; 3: -35 94 46

math_test_2$71:	; push float y
x13999:	fld qword [bp + 14]	; 3: -35 70 14

math_test_2$72:	; £temporary4143 = float_to_int y (Double -> Signed_Int)
x14002:	fistp word [container2bytes#]	; 4: -33 30 115 26
x14006:	mov ax, [container2bytes#]	; 3: -95 115 26

math_test_2$73:	; parameter £temporary4143, offset 32
x14009:	mov [bp + 54], ax	; 3: -119 70 54

math_test_2$74:	; call function noellipse-noellipse ldexp
x14012:	mov word [bp + 40], math_test_2$75	; 5: -57 70 40 -54 54
x14017:	mov [bp + 42], bp	; 3: -119 110 42
x14020:	add bp, 40	; 3: -125 -59 40
x14023:	jmp ldexp	; 3: -23 -55 1

math_test_2$75:	; post call

math_test_2$76:	; £temporary4144 = return_value

math_test_2$77:	; parameter £temporary4144, offset 18
x14026:	fstp qword [bp + 40]	; 3: -35 94 40

math_test_2$78:	; call function noellipse-ellipse printf, extra 0
x14029:	mov word [bp + 22], math_test_2$79	; 5: -57 70 22 -32 54
x14034:	mov [bp + 24], bp	; 3: -119 110 24
x14037:	add bp, 22	; 3: -125 -59 22
x14040:	mov di, bp	; 2: -119 -17
x14042:	add di, 18	; 3: -125 -57 18
x14045:	jmp printf	; 3: -23 82 -43

math_test_2$79:	; post call

math_test_2$80:	; return
x14048:	mov ax, [bp]	; 3: -117 70 0
x14051:	mov di, [bp + 4]	; 3: -117 126 4
x14054:	mov bp, [bp + 2]	; 3: -117 110 2
x14057:	jmp ax	; 2: -1 -32

math_test_2$81:	; function end math_test_2

string_fmod2825f2C2025f29203D2025f2C20errno203D2025i0A#:
x14059:	db "fmod(%f, %f) = %f, errno = %i", 10, 0	; 31: 102 109 111 100 40 37 102 44 32 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_atan22825f2C2025f29203D2025f2C20errno203D2025i0A#:
x14090:	db "atan2(%f, %f) = %f, errno = %i", 10, 0	; 32: 97 116 97 110 50 40 37 102 44 32 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_pow2825f2C2025f29203D2025f2C20errno203D2025i0A#:
x14122:	db "pow(%f, %f) = %f, errno = %i", 10, 0	; 30: 112 111 119 40 37 102 44 32 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_ldexp2825f2C2025i29203D2025f0A0A#:
x14152:	db "ldexp(%f, %i) = %f", 10, 10, 0	; 21: 108 100 101 120 112 40 37 102 44 32 37 105 41 32 61 32 37 102 10 10 0

atan2:	; push float y
x14173:	fld qword [bp + 14]	; 3: -35 70 14

atan2$1:	; push 0
x14176:	fldz	; 2: -39 -18

atan2$2:	; if y <= 0 goto 13
x14178:	fcompp	; 2: -34 -39
x14180:	fstsw ax	; 3: -101 -33 -32
x14183:	sahf	; 1: -98
x14184:	jae atan2$13	; 2: 115 36

atan2$3:	; call header integral zero 0 stack zero 0

atan2$4:	; push float x
x14186:	fld qword [bp + 6]	; 3: -35 70 6

atan2$5:	; push float y
x14189:	fld qword [bp + 14]	; 3: -35 70 14

atan2$6:	; £temporary767 = x / y
x14192:	fdiv	; 2: -34 -7

atan2$7:	; parameter £temporary767, offset 6
x14194:	fstp qword [bp + 28]	; 3: -35 94 28

atan2$8:	; call function noellipse-noellipse atan
x14197:	mov word [bp + 22], atan2$9	; 5: -57 70 22 -125 55
x14202:	mov [bp + 24], bp	; 3: -119 110 24
x14205:	add bp, 22	; 3: -125 -59 22
x14208:	jmp atan	; 3: -23 8 -7

atan2$9:	; post call

atan2$10:	; £temporary768 = return_value

atan2$11:	; return_value = £temporary768

atan2$12:	; return
x14211:	mov ax, [bp]	; 3: -117 70 0
x14214:	mov di, [bp + 4]	; 3: -117 126 4
x14217:	mov bp, [bp + 2]	; 3: -117 110 2
x14220:	jmp ax	; 2: -1 -32

atan2$13:	; push float x
x14222:	fld qword [bp + 6]	; 3: -35 70 6

atan2$14:	; push 0
x14225:	fldz	; 2: -39 -18

atan2$15:	; if x < 0 goto 31
x14227:	fcompp	; 2: -34 -39
x14229:	fstsw ax	; 3: -101 -33 -32
x14232:	sahf	; 1: -98
x14233:	ja atan2$31	; 2: 119 67

atan2$16:	; push float y
x14235:	fld qword [bp + 14]	; 3: -35 70 14

atan2$17:	; push 0
x14238:	fldz	; 2: -39 -18

atan2$18:	; if y >= 0 goto 31
x14240:	fcompp	; 2: -34 -39
x14242:	fstsw ax	; 3: -101 -33 -32
x14245:	sahf	; 1: -98
x14246:	jbe atan2$31	; 2: 118 54

atan2$19:	; push float 3.141592653
x14248:	fld qword [float8$3.141592653#]	; 4: -35 6 107 4

atan2$20:	; call header integral zero 0 stack no zero 1
x14252:	fstp qword [bp + 22]	; 3: -35 94 22

atan2$21:	; push float x
x14255:	fld qword [bp + 6]	; 3: -35 70 6

atan2$22:	; push float y
x14258:	fld qword [bp + 14]	; 3: -35 70 14

atan2$23:	; £temporary772 = x / y
x14261:	fdiv	; 2: -34 -7

atan2$24:	; parameter £temporary772, offset 6
x14263:	fstp qword [bp + 36]	; 3: -35 94 36

atan2$25:	; call function noellipse-noellipse atan
x14266:	mov word [bp + 30], atan2$26	; 5: -57 70 30 -56 55
x14271:	mov [bp + 32], bp	; 3: -119 110 32
x14274:	add bp, 30	; 3: -125 -59 30
x14277:	jmp atan	; 3: -23 -61 -8

atan2$26:	; post call
x14280:	fstp qword [bp + 30]	; 3: -35 94 30
x14283:	fld qword [bp + 22]	; 3: -35 70 22
x14286:	fld qword [bp + 30]	; 3: -35 70 30

atan2$27:	; £temporary773 = return_value

atan2$28:	; £temporary774 = 3.141592653 + £temporary773
x14289:	fadd	; 2: -34 -63

atan2$29:	; return_value = £temporary774

atan2$30:	; return
x14291:	mov ax, [bp]	; 3: -117 70 0
x14294:	mov di, [bp + 4]	; 3: -117 126 4
x14297:	mov bp, [bp + 2]	; 3: -117 110 2
x14300:	jmp ax	; 2: -1 -32

atan2$31:	; push float x
x14302:	fld qword [bp + 6]	; 3: -35 70 6

atan2$32:	; push 0
x14305:	fldz	; 2: -39 -18

atan2$33:	; if x >= 0 goto 49
x14307:	fcompp	; 2: -34 -39
x14309:	fstsw ax	; 3: -101 -33 -32
x14312:	sahf	; 1: -98
x14313:	jbe atan2$49	; 2: 118 67

atan2$34:	; push float y
x14315:	fld qword [bp + 14]	; 3: -35 70 14

atan2$35:	; push 0
x14318:	fldz	; 2: -39 -18

atan2$36:	; if y >= 0 goto 49
x14320:	fcompp	; 2: -34 -39
x14322:	fstsw ax	; 3: -101 -33 -32
x14325:	sahf	; 1: -98
x14326:	jbe atan2$49	; 2: 118 54

atan2$37:	; push float -3.141592653
x14328:	fld qword [float8$minus3.141592653#]	; 4: -35 6 -125 4

atan2$38:	; call header integral zero 0 stack no zero 1
x14332:	fstp qword [bp + 22]	; 3: -35 94 22

atan2$39:	; push float x
x14335:	fld qword [bp + 6]	; 3: -35 70 6

atan2$40:	; push float y
x14338:	fld qword [bp + 14]	; 3: -35 70 14

atan2$41:	; £temporary778 = x / y
x14341:	fdiv	; 2: -34 -7

atan2$42:	; parameter £temporary778, offset 6
x14343:	fstp qword [bp + 36]	; 3: -35 94 36

atan2$43:	; call function noellipse-noellipse atan
x14346:	mov word [bp + 30], atan2$44	; 5: -57 70 30 24 56
x14351:	mov [bp + 32], bp	; 3: -119 110 32
x14354:	add bp, 30	; 3: -125 -59 30
x14357:	jmp atan	; 3: -23 115 -8

atan2$44:	; post call
x14360:	fstp qword [bp + 30]	; 3: -35 94 30
x14363:	fld qword [bp + 22]	; 3: -35 70 22
x14366:	fld qword [bp + 30]	; 3: -35 70 30

atan2$45:	; £temporary779 = return_value

atan2$46:	; £temporary780 = -3.141592653 + £temporary779
x14369:	fadd	; 2: -34 -63

atan2$47:	; return_value = £temporary780

atan2$48:	; return
x14371:	mov ax, [bp]	; 3: -117 70 0
x14374:	mov di, [bp + 4]	; 3: -117 126 4
x14377:	mov bp, [bp + 2]	; 3: -117 110 2
x14380:	jmp ax	; 2: -1 -32

atan2$49:	; push float x
x14382:	fld qword [bp + 6]	; 3: -35 70 6

atan2$50:	; push 0
x14385:	fldz	; 2: -39 -18

atan2$51:	; if x <= 0 goto 58
x14387:	fcompp	; 2: -34 -39
x14389:	fstsw ax	; 3: -101 -33 -32
x14392:	sahf	; 1: -98
x14393:	jae atan2$58	; 2: 115 28

atan2$52:	; push float y
x14395:	fld qword [bp + 14]	; 3: -35 70 14

atan2$53:	; push 0
x14398:	fldz	; 2: -39 -18

atan2$54:	; if y != 0 goto 58
x14400:	fcompp	; 2: -34 -39
x14402:	fstsw ax	; 3: -101 -33 -32
x14405:	sahf	; 1: -98
x14406:	jne atan2$58	; 2: 117 15

atan2$55:	; push float 1.5707963265
x14408:	fld qword [float8$1.5707963265#]	; 4: -35 6 115 4

atan2$56:	; return_value = 1.5707963265

atan2$57:	; return
x14412:	mov ax, [bp]	; 3: -117 70 0
x14415:	mov di, [bp + 4]	; 3: -117 126 4
x14418:	mov bp, [bp + 2]	; 3: -117 110 2
x14421:	jmp ax	; 2: -1 -32

atan2$58:	; push float x
x14423:	fld qword [bp + 6]	; 3: -35 70 6

atan2$59:	; push 0
x14426:	fldz	; 2: -39 -18

atan2$60:	; if x >= 0 goto 67
x14428:	fcompp	; 2: -34 -39
x14430:	fstsw ax	; 3: -101 -33 -32
x14433:	sahf	; 1: -98
x14434:	jbe atan2$67	; 2: 118 28

atan2$61:	; push float y
x14436:	fld qword [bp + 14]	; 3: -35 70 14

atan2$62:	; push 0
x14439:	fldz	; 2: -39 -18

atan2$63:	; if y != 0 goto 67
x14441:	fcompp	; 2: -34 -39
x14443:	fstsw ax	; 3: -101 -33 -32
x14446:	sahf	; 1: -98
x14447:	jne atan2$67	; 2: 117 15

atan2$64:	; push float -1.5707963265
x14449:	fld qword [float8$minus1.5707963265#]	; 4: -35 6 123 4

atan2$65:	; return_value = -1.5707963265

atan2$66:	; return
x14453:	mov ax, [bp]	; 3: -117 70 0
x14456:	mov di, [bp + 4]	; 3: -117 126 4
x14459:	mov bp, [bp + 2]	; 3: -117 110 2
x14462:	jmp ax	; 2: -1 -32

atan2$67:	; errno = 6
x14464:	mov word [errno], 6	; 6: -57 6 35 10 6 0

atan2$68:	; push 0
x14470:	fldz	; 2: -39 -18

atan2$69:	; return_value = 0

atan2$70:	; return
x14472:	mov ax, [bp]	; 3: -117 70 0
x14475:	mov di, [bp + 4]	; 3: -117 126 4
x14478:	mov bp, [bp + 2]	; 3: -117 110 2
x14481:	jmp ax	; 2: -1 -32

atan2$71:	; function end atan2

ldexp:	; push float x
x14483:	fld qword [bp + 6]	; 3: -35 70 6

ldexp$1:	; call header integral zero 0 stack no zero 1
x14486:	fstp qword [bp + 16]	; 3: -35 94 16

ldexp$2:	; push float 2
x14489:	fld qword [float8$2#]	; 4: -35 6 -77 4

ldexp$3:	; parameter 2, offset 6
x14493:	fstp qword [bp + 30]	; 3: -35 94 30

ldexp$4:	; £temporary593 = int_to_float n (Signed_Int -> Double)
x14496:	fild word [bp + 14]	; 3: -33 70 14

ldexp$5:	; parameter £temporary593, offset 14
x14499:	fstp qword [bp + 38]	; 3: -35 94 38

ldexp$6:	; call function noellipse-noellipse pow
x14502:	mov word [bp + 24], ldexp$7	; 5: -57 70 24 -76 56
x14507:	mov [bp + 26], bp	; 3: -119 110 26
x14510:	add bp, 24	; 3: -125 -59 24
x14513:	jmp pow	; 3: -23 55 -15

ldexp$7:	; post call
x14516:	fstp qword [bp + 24]	; 3: -35 94 24
x14519:	fld qword [bp + 16]	; 3: -35 70 16
x14522:	fld qword [bp + 24]	; 3: -35 70 24

ldexp$8:	; £temporary594 = return_value

ldexp$9:	; £temporary595 = x * £temporary594
x14525:	fmul	; 2: -34 -55

ldexp$10:	; return_value = £temporary595

ldexp$11:	; return
x14527:	mov ax, [bp]	; 3: -117 70 0
x14530:	mov di, [bp + 4]	; 3: -117 126 4
x14533:	mov bp, [bp + 2]	; 3: -117 110 2
x14536:	jmp ax	; 2: -1 -32

ldexp$12:	; function end ldexp

$Path:
x14538:	db "C:\D\Main.com", 0	; 14: 67 58 92 68 92 77 97 105 110 46 99 111 109 0

$StackTop:
x14552:
