	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 50 55
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 50 55 0 0
	; Initialize Argument List
x283:	mov si, bp	; 2: -119 -18
x285:	mov word [bp], $Path	; 5: -57 70 0 36 55
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

main_math$1:	; push float 1.000010
x397:	fld qword [float8$1.000010#]	; 4: -35 6 -15 3

main_math$2:	; parameter 1.000010, offset 6
x401:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$3:	; call function noellipse-noellipse math_test_1
x404:	mov word [bp + 6], main_math$4	; 5: -57 70 6 -94 1
x409:	mov [bp + 8], bp	; 3: -119 110 8
x412:	add bp, 6	; 3: -125 -59 6
x415:	jmp math_test_1	; 3: -23 -17 2

main_math$4:	; post call

main_math$5:	; call header integral zero 0 stack zero 0

main_math$6:	; push float 1.0
x418:	fld1	; 2: -39 -24

main_math$7:	; parameter 1.0, offset 6
x420:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$8:	; call function noellipse-noellipse math_test_1
x423:	mov word [bp + 6], main_math$9	; 5: -57 70 6 -75 1
x428:	mov [bp + 8], bp	; 3: -119 110 8
x431:	add bp, 6	; 3: -125 -59 6
x434:	jmp math_test_1	; 3: -23 -36 2

main_math$9:	; post call

main_math$10:	; call header integral zero 0 stack zero 0

main_math$11:	; push float 0.999999
x437:	fld qword [float8$0.999999#]	; 4: -35 6 -7 3

main_math$12:	; parameter 0.999999, offset 6
x441:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$13:	; call function noellipse-noellipse math_test_1
x444:	mov word [bp + 6], main_math$14	; 5: -57 70 6 -54 1
x449:	mov [bp + 8], bp	; 3: -119 110 8
x452:	add bp, 6	; 3: -125 -59 6
x455:	jmp math_test_1	; 3: -23 -57 2

main_math$14:	; post call

main_math$15:	; call header integral zero 0 stack zero 0

main_math$16:	; push float 0.000010
x458:	fld qword [float8$0.000010#]	; 4: -35 6 1 4

main_math$17:	; parameter 0.000010, offset 6
x462:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$18:	; call function noellipse-noellipse math_test_1
x465:	mov word [bp + 6], main_math$19	; 5: -57 70 6 -33 1
x470:	mov [bp + 8], bp	; 3: -119 110 8
x473:	add bp, 6	; 3: -125 -59 6
x476:	jmp math_test_1	; 3: -23 -78 2

main_math$19:	; post call

main_math$20:	; call header integral zero 0 stack zero 0

main_math$21:	; push 0
x479:	fldz	; 2: -39 -18

main_math$22:	; parameter 0, offset 6
x481:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$23:	; call function noellipse-noellipse math_test_1
x484:	mov word [bp + 6], main_math$24	; 5: -57 70 6 -14 1
x489:	mov [bp + 8], bp	; 3: -119 110 8
x492:	add bp, 6	; 3: -125 -59 6
x495:	jmp math_test_1	; 3: -23 -97 2

main_math$24:	; post call

main_math$25:	; call header integral zero 0 stack zero 0

main_math$26:	; push float -0.000010
x498:	fld qword [float8$minus0.000010#]	; 4: -35 6 9 4

main_math$27:	; parameter -0.000010, offset 6
x502:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$28:	; call function noellipse-noellipse math_test_1
x505:	mov word [bp + 6], main_math$29	; 5: -57 70 6 7 2
x510:	mov [bp + 8], bp	; 3: -119 110 8
x513:	add bp, 6	; 3: -125 -59 6
x516:	jmp math_test_1	; 3: -23 -118 2

main_math$29:	; post call

main_math$30:	; call header integral zero 0 stack zero 0

main_math$31:	; push float -0.999999
x519:	fld qword [float8$minus0.999999#]	; 4: -35 6 17 4

main_math$32:	; parameter -0.999999, offset 6
x523:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$33:	; call function noellipse-noellipse math_test_1
x526:	mov word [bp + 6], main_math$34	; 5: -57 70 6 28 2
x531:	mov [bp + 8], bp	; 3: -119 110 8
x534:	add bp, 6	; 3: -125 -59 6
x537:	jmp math_test_1	; 3: -23 117 2

main_math$34:	; post call

main_math$35:	; call header integral zero 0 stack zero 0

main_math$36:	; push float -1.0
x540:	fld qword [float8$minus1.0#]	; 4: -35 6 25 4

main_math$37:	; parameter -1.0, offset 6
x544:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$38:	; call function noellipse-noellipse math_test_1
x547:	mov word [bp + 6], main_math$39	; 5: -57 70 6 49 2
x552:	mov [bp + 8], bp	; 3: -119 110 8
x555:	add bp, 6	; 3: -125 -59 6
x558:	jmp math_test_1	; 3: -23 96 2

main_math$39:	; post call

main_math$40:	; call header integral zero 0 stack zero 0

main_math$41:	; push float -1.000010
x561:	fld qword [float8$minus1.000010#]	; 4: -35 6 33 4

main_math$42:	; parameter -1.000010, offset 6
x565:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$43:	; call function noellipse-noellipse math_test_1
x568:	mov word [bp + 6], main_math$44	; 5: -57 70 6 70 2
x573:	mov [bp + 8], bp	; 3: -119 110 8
x576:	add bp, 6	; 3: -125 -59 6
x579:	jmp math_test_1	; 3: -23 75 2

main_math$44:	; post call

main_math$45:	; call header integral zero 0 stack zero 0

main_math$46:	; push float 6.2831853071795864769252866
x582:	fld qword [float8$6.2831853071795864769252866#]	; 4: -35 6 41 4

main_math$47:	; parameter 6.2831853071795864769252866, offset 6
x586:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$48:	; call function noellipse-noellipse math_test_1
x589:	mov word [bp + 6], main_math$49	; 5: -57 70 6 91 2
x594:	mov [bp + 8], bp	; 3: -119 110 8
x597:	add bp, 6	; 3: -125 -59 6
x600:	jmp math_test_1	; 3: -23 54 2

main_math$49:	; post call

main_math$50:	; call header integral zero 0 stack zero 0

main_math$51:	; push float 3.1415926535897932384626433
x603:	fld qword [float8$3.1415926535897932384626433#]	; 4: -35 6 49 4

main_math$52:	; parameter 3.1415926535897932384626433, offset 6
x607:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$53:	; call function noellipse-noellipse math_test_1
x610:	mov word [bp + 6], main_math$54	; 5: -57 70 6 112 2
x615:	mov [bp + 8], bp	; 3: -119 110 8
x618:	add bp, 6	; 3: -125 -59 6
x621:	jmp math_test_1	; 3: -23 33 2

main_math$54:	; post call

main_math$55:	; call header integral zero 0 stack zero 0

main_math$56:	; push float 1.57079632679489661923132165
x624:	fld qword [float8$1.57079632679489661923132165#]	; 4: -35 6 57 4

main_math$57:	; parameter 1.57079632679489661923132165, offset 6
x628:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$58:	; call function noellipse-noellipse math_test_1
x631:	mov word [bp + 6], main_math$59	; 5: -57 70 6 -123 2
x636:	mov [bp + 8], bp	; 3: -119 110 8
x639:	add bp, 6	; 3: -125 -59 6
x642:	jmp math_test_1	; 3: -23 12 2

main_math$59:	; post call

main_math$60:	; call header integral zero 0 stack zero 0

main_math$61:	; push float -1.57079632679489661923132165
x645:	fld qword [float8$minus1.57079632679489661923132165#]	; 4: -35 6 65 4

main_math$62:	; parameter -1.57079632679489661923132165, offset 6
x649:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$63:	; call function noellipse-noellipse math_test_1
x652:	mov word [bp + 6], main_math$64	; 5: -57 70 6 -102 2
x657:	mov [bp + 8], bp	; 3: -119 110 8
x660:	add bp, 6	; 3: -125 -59 6
x663:	jmp math_test_1	; 3: -23 -9 1

main_math$64:	; post call

main_math$65:	; call header integral zero 0 stack zero 0

main_math$66:	; push float -3.1415926535897932384626433
x666:	fld qword [float8$minus3.1415926535897932384626433#]	; 4: -35 6 73 4

main_math$67:	; parameter -3.1415926535897932384626433, offset 6
x670:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$68:	; call function noellipse-noellipse math_test_1
x673:	mov word [bp + 6], main_math$69	; 5: -57 70 6 -81 2
x678:	mov [bp + 8], bp	; 3: -119 110 8
x681:	add bp, 6	; 3: -125 -59 6
x684:	jmp math_test_1	; 3: -23 -30 1

main_math$69:	; post call

main_math$70:	; call header integral zero 0 stack zero 0

main_math$71:	; push float -6.2831853071795864769252866
x687:	fld qword [float8$minus6.2831853071795864769252866#]	; 4: -35 6 81 4

main_math$72:	; parameter -6.2831853071795864769252866, offset 6
x691:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$73:	; call function noellipse-noellipse math_test_1
x694:	mov word [bp + 6], main_math$74	; 5: -57 70 6 -60 2
x699:	mov [bp + 8], bp	; 3: -119 110 8
x702:	add bp, 6	; 3: -125 -59 6
x705:	jmp math_test_1	; 3: -23 -51 1

main_math$74:	; post call

main_math$75:	; call header integral zero 0 stack zero 0

main_math$76:	; push float 1.0
x708:	fld1	; 2: -39 -24

main_math$77:	; parameter 1.0, offset 6
x710:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$78:	; push float 2.0
x713:	fld qword [float8$2.0#]	; 4: -35 6 89 4

main_math$79:	; parameter 2.0, offset 14
x717:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$80:	; call function noellipse-noellipse math_test_2
x720:	mov word [bp + 6], main_math$81	; 5: -57 70 6 -34 2
x725:	mov [bp + 8], bp	; 3: -119 110 8
x728:	add bp, 6	; 3: -125 -59 6
x731:	jmp math_test_2	; 3: -23 3 50

main_math$81:	; post call

main_math$82:	; call header integral zero 0 stack zero 0

main_math$83:	; push float 3.0
x734:	fld qword [float8$3.0#]	; 4: -35 6 97 4

main_math$84:	; parameter 3.0, offset 6
x738:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$85:	; push float 4.0
x741:	fld qword [float8$4.0#]	; 4: -35 6 105 4

main_math$86:	; parameter 4.0, offset 14
x745:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$87:	; call function noellipse-noellipse math_test_2
x748:	mov word [bp + 6], main_math$88	; 5: -57 70 6 -6 2
x753:	mov [bp + 8], bp	; 3: -119 110 8
x756:	add bp, 6	; 3: -125 -59 6
x759:	jmp math_test_2	; 3: -23 -25 49

main_math$88:	; post call

main_math$89:	; call header integral zero 0 stack zero 0

main_math$90:	; push 0
x762:	fldz	; 2: -39 -18

main_math$91:	; parameter 0, offset 6
x764:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$92:	; push float 2.0
x767:	fld qword [float8$2.0#]	; 4: -35 6 89 4

main_math$93:	; parameter 2.0, offset 14
x771:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$94:	; call function noellipse-noellipse math_test_2
x774:	mov word [bp + 6], main_math$95	; 5: -57 70 6 20 3
x779:	mov [bp + 8], bp	; 3: -119 110 8
x782:	add bp, 6	; 3: -125 -59 6
x785:	jmp math_test_2	; 3: -23 -51 49

main_math$95:	; post call

main_math$96:	; call header integral zero 0 stack zero 0

main_math$97:	; push 0
x788:	fldz	; 2: -39 -18

main_math$98:	; parameter 0, offset 6
x790:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$99:	; push float -2.0
x793:	fld qword [float8$minus2.0#]	; 4: -35 6 113 4

main_math$100:	; parameter -2.0, offset 14
x797:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$101:	; call function noellipse-noellipse math_test_2
x800:	mov word [bp + 6], main_math$102	; 5: -57 70 6 46 3
x805:	mov [bp + 8], bp	; 3: -119 110 8
x808:	add bp, 6	; 3: -125 -59 6
x811:	jmp math_test_2	; 3: -23 -77 49

main_math$102:	; post call

main_math$103:	; call header integral zero 0 stack zero 0

main_math$104:	; push 1
x814:	fld1	; 2: -39 -24

main_math$105:	; parameter 1, offset 6
x816:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$106:	; push float 2.0
x819:	fld qword [float8$2.0#]	; 4: -35 6 89 4

main_math$107:	; parameter 2.0, offset 14
x823:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$108:	; call function noellipse-noellipse math_test_2
x826:	mov word [bp + 6], main_math$109	; 5: -57 70 6 72 3
x831:	mov [bp + 8], bp	; 3: -119 110 8
x834:	add bp, 6	; 3: -125 -59 6
x837:	jmp math_test_2	; 3: -23 -103 49

main_math$109:	; post call

main_math$110:	; call header integral zero 0 stack zero 0

main_math$111:	; push 1
x840:	fld1	; 2: -39 -24

main_math$112:	; parameter 1, offset 6
x842:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$113:	; push float -2.0
x845:	fld qword [float8$minus2.0#]	; 4: -35 6 113 4

main_math$114:	; parameter -2.0, offset 14
x849:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$115:	; call function noellipse-noellipse math_test_2
x852:	mov word [bp + 6], main_math$116	; 5: -57 70 6 98 3
x857:	mov [bp + 8], bp	; 3: -119 110 8
x860:	add bp, 6	; 3: -125 -59 6
x863:	jmp math_test_2	; 3: -23 127 49

main_math$116:	; post call

main_math$117:	; call header integral zero 0 stack zero 0

main_math$118:	; push 0
x866:	fldz	; 2: -39 -18

main_math$119:	; parameter 0, offset 6
x868:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$120:	; push 0
x871:	fldz	; 2: -39 -18

main_math$121:	; parameter 0, offset 14
x873:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$122:	; call function noellipse-noellipse math_test_2
x876:	mov word [bp + 6], main_math$123	; 5: -57 70 6 122 3
x881:	mov [bp + 8], bp	; 3: -119 110 8
x884:	add bp, 6	; 3: -125 -59 6
x887:	jmp math_test_2	; 3: -23 103 49

main_math$123:	; post call

main_math$124:	; call header integral zero 0 stack zero 0

main_math$125:	; push float 2
x890:	fld qword [float8$2#]	; 4: -35 6 121 4

main_math$126:	; parameter 2, offset 6
x894:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$127:	; push 0
x897:	fldz	; 2: -39 -18

main_math$128:	; parameter 0, offset 14
x899:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$129:	; call function noellipse-noellipse math_test_2
x902:	mov word [bp + 6], main_math$130	; 5: -57 70 6 -108 3
x907:	mov [bp + 8], bp	; 3: -119 110 8
x910:	add bp, 6	; 3: -125 -59 6
x913:	jmp math_test_2	; 3: -23 77 49

main_math$130:	; post call

main_math$131:	; call header integral zero 0 stack zero 0

main_math$132:	; push float -2
x916:	fld qword [float8$minus2#]	; 4: -35 6 -127 4

main_math$133:	; parameter -2, offset 6
x920:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$134:	; push 0
x923:	fldz	; 2: -39 -18

main_math$135:	; parameter 0, offset 14
x925:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$136:	; call function noellipse-noellipse math_test_2
x928:	mov word [bp + 6], main_math$137	; 5: -57 70 6 -82 3
x933:	mov [bp + 8], bp	; 3: -119 110 8
x936:	add bp, 6	; 3: -125 -59 6
x939:	jmp math_test_2	; 3: -23 51 49

main_math$137:	; post call

main_math$138:	; call header integral zero 0 stack zero 0

main_math$139:	; push float -1.0
x942:	fld qword [float8$minus1.0#]	; 4: -35 6 25 4

main_math$140:	; parameter -1.0, offset 6
x946:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$141:	; push float -1.0
x949:	fld qword [float8$minus1.0#]	; 4: -35 6 25 4

main_math$142:	; parameter -1.0, offset 14
x953:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$143:	; call function noellipse-noellipse math_test_2
x956:	mov word [bp + 6], main_math$144	; 5: -57 70 6 -54 3
x961:	mov [bp + 8], bp	; 3: -119 110 8
x964:	add bp, 6	; 3: -125 -59 6
x967:	jmp math_test_2	; 3: -23 23 49

main_math$144:	; post call

main_math$145:	; call header integral zero 0 stack zero 0

main_math$146:	; push float -2.0
x970:	fld qword [float8$minus2.0#]	; 4: -35 6 113 4

main_math$147:	; parameter -2.0, offset 6
x974:	fstp qword [bp + 12]	; 3: -35 94 12

main_math$148:	; push float -4.0
x977:	fld qword [float8$minus4.0#]	; 4: -35 6 -119 4

main_math$149:	; parameter -4.0, offset 14
x981:	fstp qword [bp + 20]	; 3: -35 94 20

main_math$150:	; call function noellipse-noellipse math_test_2
x984:	mov word [bp + 6], main_math$151	; 5: -57 70 6 -26 3
x989:	mov [bp + 8], bp	; 3: -119 110 8
x992:	add bp, 6	; 3: -125 -59 6
x995:	jmp math_test_2	; 3: -23 -5 48

main_math$151:	; post call

main_math$152:	; return
x998:	mov ax, [bp]	; 3: -117 70 0
x1001:	mov di, [bp + 4]	; 3: -117 126 4
x1004:	mov bp, [bp + 2]	; 3: -117 110 2
x1007:	jmp ax	; 2: -1 -32

main_math$153:	; function end main_math

float8$1.000010#:
x1009:	dq 1.000010	; 8: 114 -60 90 124 10 0 -16 63

float8$0.999999#:
x1017:	dq 0.999999	; 8: -23 11 33 -25 -3 -1 -17 63

float8$0.000010#:
x1025:	dq 0.000010	; 8: -15 104 -29 -120 -75 -8 -28 62

float8$minus0.000010#:
x1033:	dq -0.000010	; 8: -15 104 -29 -120 -75 -8 -28 -66

float8$minus0.999999#:
x1041:	dq -0.999999	; 8: -23 11 33 -25 -3 -1 -17 -65

float8$minus1.0#:
x1049:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$minus1.000010#:
x1057:	dq -1.000010	; 8: 114 -60 90 124 10 0 -16 -65

float8$6.2831853071795864769252866#:
x1065:	dq 6.2831853071795864769252866	; 8: 23 45 68 84 -5 33 25 64

float8$3.1415926535897932384626433#:
x1073:	dq 3.1415926535897932384626433	; 8: 23 45 68 84 -5 33 9 64

float8$1.57079632679489661923132165#:
x1081:	dq 1.57079632679489661923132165	; 8: 24 45 68 84 -5 33 -7 63

float8$minus1.57079632679489661923132165#:
x1089:	dq -1.57079632679489661923132165	; 8: 24 45 68 84 -5 33 -7 -65

float8$minus3.1415926535897932384626433#:
x1097:	dq -3.1415926535897932384626433	; 8: 23 45 68 84 -5 33 9 -64

float8$minus6.2831853071795864769252866#:
x1105:	dq -6.2831853071795864769252866	; 8: 23 45 68 84 -5 33 25 -64

float8$2.0#:
x1113:	dq 2.0	; 8: 0 0 0 0 0 0 0 64

float8$3.0#:
x1121:	dq 3.0	; 8: 0 0 0 0 0 0 8 64

float8$4.0#:
x1129:	dq 4.0	; 8: 0 0 0 0 0 0 16 64

float8$minus2.0#:
x1137:	dq -2.0	; 8: 0 0 0 0 0 0 0 -64

float8$2#:
x1145:	dq 2.0	; 8: 0 0 0 0 0 0 0 64

float8$minus2#:
x1153:	dq -2.0	; 8: 0 0 0 0 0 0 0 -64

float8$minus4.0#:
x1161:	dq -4.0	; 8: 0 0 0 0 0 0 16 -64

math_test_1:	; call header integral zero 0 stack zero 0

math_test_1$1:	; parameter string_3C25f3E0A#, offset 6
x1169:	mov word [bp + 20], string_3C25f3E0A#	; 5: -57 70 20 -69 9

math_test_1$2:	; push float x
x1174:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$3:	; parameter x, offset 8
x1177:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$4:	; call function noellipse-ellipse printf, extra 0
x1180:	mov word [bp + 14], math_test_1$5	; 5: -57 70 14 -81 4
x1185:	mov [bp + 16], bp	; 3: -119 110 16
x1188:	add bp, 14	; 3: -125 -59 14
x1191:	mov di, bp	; 2: -119 -17
x1193:	add di, 8	; 3: -125 -57 8
x1196:	jmp printf	; 3: -23 59 7

math_test_1$5:	; post call

math_test_1$6:	; call header integral zero 0 stack zero 0

math_test_1$7:	; parameter string_2020sin2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1199:	mov word [bp + 20], string_2020sin2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 -63 9

math_test_1$8:	; push float x
x1204:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$9:	; parameter x, offset 8
x1207:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$10:	; call header integral zero 0 stack zero 0

math_test_1$11:	; push float x
x1210:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$12:	; parameter x, offset 22
x1213:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$13:	; call function noellipse-noellipse sin
x1216:	mov word [bp + 30], math_test_1$14	; 5: -57 70 30 -50 4
x1221:	mov [bp + 32], bp	; 3: -119 110 32
x1224:	add bp, 30	; 3: -125 -59 30
x1227:	jmp sin	; 3: -23 -106 39

math_test_1$14:	; post call

math_test_1$15:	; £temporary3953 = return_value

math_test_1$16:	; parameter £temporary3953, offset 16
x1230:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$17:	; parameter errno, offset 24
x1233:	mov ax, [errno]	; 3: -95 -35 9
x1236:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$18:	; call function noellipse-ellipse printf, extra 0
x1239:	mov word [bp + 14], math_test_1$19	; 5: -57 70 14 -22 4
x1244:	mov [bp + 16], bp	; 3: -119 110 16
x1247:	add bp, 14	; 3: -125 -59 14
x1250:	mov di, bp	; 2: -119 -17
x1252:	add di, 18	; 3: -125 -57 18
x1255:	jmp printf	; 3: -23 0 7

math_test_1$19:	; post call

math_test_1$20:	; errno = 0
x1258:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$21:	; call header integral zero 0 stack zero 0

math_test_1$22:	; parameter string_2020cos2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1264:	mov word [bp + 20], string_2020cos2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 -33 9

math_test_1$23:	; push float x
x1269:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$24:	; parameter x, offset 8
x1272:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$25:	; call header integral zero 0 stack zero 0

math_test_1$26:	; push float x
x1275:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$27:	; parameter x, offset 22
x1278:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$28:	; call function noellipse-noellipse cos
x1281:	mov word [bp + 30], math_test_1$29	; 5: -57 70 30 15 5
x1286:	mov [bp + 32], bp	; 3: -119 110 32
x1289:	add bp, 30	; 3: -125 -59 30
x1292:	jmp cos	; 3: -23 -79 40

math_test_1$29:	; post call

math_test_1$30:	; £temporary3955 = return_value

math_test_1$31:	; parameter £temporary3955, offset 16
x1295:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$32:	; parameter errno, offset 24
x1298:	mov ax, [errno]	; 3: -95 -35 9
x1301:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$33:	; call function noellipse-ellipse printf, extra 0
x1304:	mov word [bp + 14], math_test_1$34	; 5: -57 70 14 43 5
x1309:	mov [bp + 16], bp	; 3: -119 110 16
x1312:	add bp, 14	; 3: -125 -59 14
x1315:	mov di, bp	; 2: -119 -17
x1317:	add di, 18	; 3: -125 -57 18
x1320:	jmp printf	; 3: -23 -65 6

math_test_1$34:	; post call

math_test_1$35:	; errno = 0
x1323:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$36:	; call header integral zero 0 stack zero 0

math_test_1$37:	; parameter string_2020tan2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1329:	mov word [bp + 20], string_2020tan2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 -5 9

math_test_1$38:	; push float x
x1334:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$39:	; parameter x, offset 8
x1337:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$40:	; call header integral zero 0 stack zero 0

math_test_1$41:	; push float x
x1340:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$42:	; parameter x, offset 22
x1343:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$43:	; call function noellipse-noellipse tan
x1346:	mov word [bp + 30], math_test_1$44	; 5: -57 70 30 80 5
x1351:	mov [bp + 32], bp	; 3: -119 110 32
x1354:	add bp, 30	; 3: -125 -59 30
x1357:	jmp tan	; 3: -23 74 41

math_test_1$44:	; post call

math_test_1$45:	; £temporary3957 = return_value

math_test_1$46:	; parameter £temporary3957, offset 16
x1360:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$47:	; parameter errno, offset 24
x1363:	mov ax, [errno]	; 3: -95 -35 9
x1366:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$48:	; call function noellipse-ellipse printf, extra 0
x1369:	mov word [bp + 14], math_test_1$49	; 5: -57 70 14 108 5
x1374:	mov [bp + 16], bp	; 3: -119 110 16
x1377:	add bp, 14	; 3: -125 -59 14
x1380:	mov di, bp	; 2: -119 -17
x1382:	add di, 18	; 3: -125 -57 18
x1385:	jmp printf	; 3: -23 126 6

math_test_1$49:	; post call

math_test_1$50:	; errno = 0
x1388:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$51:	; call header integral zero 0 stack zero 0

math_test_1$52:	; parameter string_2020asin2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1394:	mov word [bp + 20], string_2020asin2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 23 10

math_test_1$53:	; push float x
x1399:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$54:	; parameter x, offset 8
x1402:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$55:	; call header integral zero 0 stack zero 0

math_test_1$56:	; push float x
x1405:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$57:	; parameter x, offset 22
x1408:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$58:	; call function noellipse-noellipse asin
x1411:	mov word [bp + 30], math_test_1$59	; 5: -57 70 30 -111 5
x1416:	mov [bp + 32], bp	; 3: -119 110 32
x1419:	add bp, 30	; 3: -125 -59 30
x1422:	jmp asin	; 3: -23 100 41

math_test_1$59:	; post call

math_test_1$60:	; £temporary3959 = return_value

math_test_1$61:	; parameter £temporary3959, offset 16
x1425:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$62:	; parameter errno, offset 24
x1428:	mov ax, [errno]	; 3: -95 -35 9
x1431:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$63:	; call function noellipse-ellipse printf, extra 0
x1434:	mov word [bp + 14], math_test_1$64	; 5: -57 70 14 -83 5
x1439:	mov [bp + 16], bp	; 3: -119 110 16
x1442:	add bp, 14	; 3: -125 -59 14
x1445:	mov di, bp	; 2: -119 -17
x1447:	add di, 18	; 3: -125 -57 18
x1450:	jmp printf	; 3: -23 61 6

math_test_1$64:	; post call

math_test_1$65:	; errno = 0
x1453:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$66:	; call header integral zero 0 stack zero 0

math_test_1$67:	; parameter string_2020acos2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1459:	mov word [bp + 20], string_2020acos2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 52 10

math_test_1$68:	; push float x
x1464:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$69:	; parameter x, offset 8
x1467:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$70:	; call header integral zero 0 stack zero 0

math_test_1$71:	; push float x
x1470:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$72:	; parameter x, offset 22
x1473:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$73:	; call function noellipse-noellipse acos
x1476:	mov word [bp + 30], math_test_1$74	; 5: -57 70 30 -46 5
x1481:	mov [bp + 32], bp	; 3: -119 110 32
x1484:	add bp, 30	; 3: -125 -59 30
x1487:	jmp acos	; 3: -23 -61 43

math_test_1$74:	; post call

math_test_1$75:	; £temporary3961 = return_value

math_test_1$76:	; parameter £temporary3961, offset 16
x1490:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$77:	; parameter errno, offset 24
x1493:	mov ax, [errno]	; 3: -95 -35 9
x1496:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$78:	; call function noellipse-ellipse printf, extra 0
x1499:	mov word [bp + 14], math_test_1$79	; 5: -57 70 14 -18 5
x1504:	mov [bp + 16], bp	; 3: -119 110 16
x1507:	add bp, 14	; 3: -125 -59 14
x1510:	mov di, bp	; 2: -119 -17
x1512:	add di, 18	; 3: -125 -57 18
x1515:	jmp printf	; 3: -23 -4 5

math_test_1$79:	; post call

math_test_1$80:	; errno = 0
x1518:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$81:	; call header integral zero 0 stack zero 0

math_test_1$82:	; parameter string_2020atan2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1524:	mov word [bp + 20], string_2020atan2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 81 10

math_test_1$83:	; push float x
x1529:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$84:	; parameter x, offset 8
x1532:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$85:	; call header integral zero 0 stack zero 0

math_test_1$86:	; push float x
x1535:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$87:	; parameter x, offset 22
x1538:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$88:	; call function noellipse-noellipse atan
x1541:	mov word [bp + 30], math_test_1$89	; 5: -57 70 30 19 6
x1546:	mov [bp + 32], bp	; 3: -119 110 32
x1549:	add bp, 30	; 3: -125 -59 30
x1552:	jmp atan	; 3: -23 11 42

math_test_1$89:	; post call

math_test_1$90:	; £temporary3963 = return_value

math_test_1$91:	; parameter £temporary3963, offset 16
x1555:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$92:	; parameter errno, offset 24
x1558:	mov ax, [errno]	; 3: -95 -35 9
x1561:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$93:	; call function noellipse-ellipse printf, extra 0
x1564:	mov word [bp + 14], math_test_1$94	; 5: -57 70 14 47 6
x1569:	mov [bp + 16], bp	; 3: -119 110 16
x1572:	add bp, 14	; 3: -125 -59 14
x1575:	mov di, bp	; 2: -119 -17
x1577:	add di, 18	; 3: -125 -57 18
x1580:	jmp printf	; 3: -23 -69 5

math_test_1$94:	; post call

math_test_1$95:	; errno = 0
x1583:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$96:	; call header integral zero 0 stack zero 0

math_test_1$97:	; parameter string_2020exp2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1589:	mov word [bp + 20], string_2020exp2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 110 10

math_test_1$98:	; push float x
x1594:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$99:	; parameter x, offset 8
x1597:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$100:	; call header integral zero 0 stack zero 0

math_test_1$101:	; push float x
x1600:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$102:	; parameter x, offset 22
x1603:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$103:	; call function noellipse-noellipse exp
x1606:	mov word [bp + 30], math_test_1$104	; 5: -57 70 30 84 6
x1611:	mov [bp + 32], bp	; 3: -119 110 32
x1614:	add bp, 30	; 3: -125 -59 30
x1617:	jmp exp	; 3: -23 -47 36

math_test_1$104:	; post call

math_test_1$105:	; £temporary3965 = return_value

math_test_1$106:	; parameter £temporary3965, offset 16
x1620:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$107:	; parameter errno, offset 24
x1623:	mov ax, [errno]	; 3: -95 -35 9
x1626:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$108:	; call function noellipse-ellipse printf, extra 0
x1629:	mov word [bp + 14], math_test_1$109	; 5: -57 70 14 112 6
x1634:	mov [bp + 16], bp	; 3: -119 110 16
x1637:	add bp, 14	; 3: -125 -59 14
x1640:	mov di, bp	; 2: -119 -17
x1642:	add di, 18	; 3: -125 -57 18
x1645:	jmp printf	; 3: -23 122 5

math_test_1$109:	; post call

math_test_1$110:	; errno = 0
x1648:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$111:	; call header integral zero 0 stack zero 0

math_test_1$112:	; parameter string_2020log2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1654:	mov word [bp + 20], string_2020log2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 -118 10

math_test_1$113:	; push float x
x1659:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$114:	; parameter x, offset 8
x1662:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$115:	; call header integral zero 0 stack zero 0

math_test_1$116:	; push float x
x1665:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$117:	; parameter x, offset 22
x1668:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$118:	; call function noellipse-noellipse log
x1671:	mov word [bp + 30], math_test_1$119	; 5: -57 70 30 -107 6
x1676:	mov [bp + 32], bp	; 3: -119 110 32
x1679:	add bp, 30	; 3: -125 -59 30
x1682:	jmp log	; 3: -23 -26 33

math_test_1$119:	; post call

math_test_1$120:	; £temporary3967 = return_value

math_test_1$121:	; parameter £temporary3967, offset 16
x1685:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$122:	; parameter errno, offset 24
x1688:	mov ax, [errno]	; 3: -95 -35 9
x1691:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$123:	; call function noellipse-ellipse printf, extra 0
x1694:	mov word [bp + 14], math_test_1$124	; 5: -57 70 14 -79 6
x1699:	mov [bp + 16], bp	; 3: -119 110 16
x1702:	add bp, 14	; 3: -125 -59 14
x1705:	mov di, bp	; 2: -119 -17
x1707:	add di, 18	; 3: -125 -57 18
x1710:	jmp printf	; 3: -23 57 5

math_test_1$124:	; post call

math_test_1$125:	; errno = 0
x1713:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$126:	; call header integral zero 0 stack zero 0

math_test_1$127:	; parameter string_2020log102825f29203D2025f2C20errno203D2025i0A#, offset 6
x1719:	mov word [bp + 20], string_2020log102825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 -90 10

math_test_1$128:	; push float x
x1724:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$129:	; parameter x, offset 8
x1727:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$130:	; call header integral zero 0 stack zero 0

math_test_1$131:	; push float x
x1730:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$132:	; parameter x, offset 22
x1733:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$133:	; call function noellipse-noellipse log10
x1736:	mov word [bp + 30], math_test_1$134	; 5: -57 70 30 -42 6
x1741:	mov [bp + 32], bp	; 3: -119 110 32
x1744:	add bp, 30	; 3: -125 -59 30
x1747:	jmp log10	; 3: -23 120 33

math_test_1$134:	; post call

math_test_1$135:	; £temporary3969 = return_value

math_test_1$136:	; parameter £temporary3969, offset 16
x1750:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$137:	; parameter errno, offset 24
x1753:	mov ax, [errno]	; 3: -95 -35 9
x1756:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$138:	; call function noellipse-ellipse printf, extra 0
x1759:	mov word [bp + 14], math_test_1$139	; 5: -57 70 14 -14 6
x1764:	mov [bp + 16], bp	; 3: -119 110 16
x1767:	add bp, 14	; 3: -125 -59 14
x1770:	mov di, bp	; 2: -119 -17
x1772:	add di, 18	; 3: -125 -57 18
x1775:	jmp printf	; 3: -23 -8 4

math_test_1$139:	; post call

math_test_1$140:	; errno = 0
x1778:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$141:	; call header integral zero 0 stack zero 0

math_test_1$142:	; parameter string_2020sinh2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1784:	mov word [bp + 20], string_2020sinh2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 -60 10

math_test_1$143:	; push float x
x1789:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$144:	; parameter x, offset 8
x1792:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$145:	; call header integral zero 0 stack zero 0

math_test_1$146:	; push float x
x1795:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$147:	; parameter x, offset 22
x1798:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$148:	; call function noellipse-noellipse sinh
x1801:	mov word [bp + 30], math_test_1$149	; 5: -57 70 30 23 7
x1806:	mov [bp + 32], bp	; 3: -119 110 32
x1809:	add bp, 30	; 3: -125 -59 30
x1812:	jmp sinh	; 3: -23 21 43

math_test_1$149:	; post call

math_test_1$150:	; £temporary3971 = return_value

math_test_1$151:	; parameter £temporary3971, offset 16
x1815:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$152:	; parameter errno, offset 24
x1818:	mov ax, [errno]	; 3: -95 -35 9
x1821:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$153:	; call function noellipse-ellipse printf, extra 0
x1824:	mov word [bp + 14], math_test_1$154	; 5: -57 70 14 51 7
x1829:	mov [bp + 16], bp	; 3: -119 110 16
x1832:	add bp, 14	; 3: -125 -59 14
x1835:	mov di, bp	; 2: -119 -17
x1837:	add di, 18	; 3: -125 -57 18
x1840:	jmp printf	; 3: -23 -73 4

math_test_1$154:	; post call

math_test_1$155:	; errno = 0
x1843:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$156:	; call header integral zero 0 stack zero 0

math_test_1$157:	; parameter string_2020cosh2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1849:	mov word [bp + 20], string_2020cosh2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 -31 10

math_test_1$158:	; push float x
x1854:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$159:	; parameter x, offset 8
x1857:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$160:	; call header integral zero 0 stack zero 0

math_test_1$161:	; push float x
x1860:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$162:	; parameter x, offset 22
x1863:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$163:	; call function noellipse-noellipse cosh
x1866:	mov word [bp + 30], math_test_1$164	; 5: -57 70 30 88 7
x1871:	mov [bp + 32], bp	; 3: -119 110 32
x1874:	add bp, 30	; 3: -125 -59 30
x1877:	jmp cosh	; 3: -23 29 43

math_test_1$164:	; post call

math_test_1$165:	; £temporary3973 = return_value

math_test_1$166:	; parameter £temporary3973, offset 16
x1880:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$167:	; parameter errno, offset 24
x1883:	mov ax, [errno]	; 3: -95 -35 9
x1886:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$168:	; call function noellipse-ellipse printf, extra 0
x1889:	mov word [bp + 14], math_test_1$169	; 5: -57 70 14 116 7
x1894:	mov [bp + 16], bp	; 3: -119 110 16
x1897:	add bp, 14	; 3: -125 -59 14
x1900:	mov di, bp	; 2: -119 -17
x1902:	add di, 18	; 3: -125 -57 18
x1905:	jmp printf	; 3: -23 118 4

math_test_1$169:	; post call

math_test_1$170:	; errno = 0
x1908:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$171:	; call header integral zero 0 stack zero 0

math_test_1$172:	; parameter string_2020tanh2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1914:	mov word [bp + 20], string_2020tanh2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 -2 10

math_test_1$173:	; push float x
x1919:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$174:	; parameter x, offset 8
x1922:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$175:	; call header integral zero 0 stack zero 0

math_test_1$176:	; push float x
x1925:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$177:	; parameter x, offset 22
x1928:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$178:	; call function noellipse-noellipse tanh
x1931:	mov word [bp + 30], math_test_1$179	; 5: -57 70 30 -103 7
x1936:	mov [bp + 32], bp	; 3: -119 110 32
x1939:	add bp, 30	; 3: -125 -59 30
x1942:	jmp tanh	; 3: -23 37 43

math_test_1$179:	; post call

math_test_1$180:	; £temporary3975 = return_value

math_test_1$181:	; parameter £temporary3975, offset 16
x1945:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$182:	; parameter errno, offset 24
x1948:	mov ax, [errno]	; 3: -95 -35 9
x1951:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$183:	; call function noellipse-ellipse printf, extra 0
x1954:	mov word [bp + 14], math_test_1$184	; 5: -57 70 14 -75 7
x1959:	mov [bp + 16], bp	; 3: -119 110 16
x1962:	add bp, 14	; 3: -125 -59 14
x1965:	mov di, bp	; 2: -119 -17
x1967:	add di, 18	; 3: -125 -57 18
x1970:	jmp printf	; 3: -23 53 4

math_test_1$184:	; post call

math_test_1$185:	; errno = 0
x1973:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$186:	; call header integral zero 0 stack zero 0

math_test_1$187:	; parameter string_2020sqrt2825f29203D2025f2C20errno203D2025i0A#, offset 6
x1979:	mov word [bp + 20], string_2020sqrt2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 27 11

math_test_1$188:	; push float x
x1984:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$189:	; parameter x, offset 8
x1987:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$190:	; call header integral zero 0 stack zero 0

math_test_1$191:	; push float x
x1990:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$192:	; parameter x, offset 22
x1993:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$193:	; call function noellipse-noellipse sqrt
x1996:	mov word [bp + 30], math_test_1$194	; 5: -57 70 30 -38 7
x2001:	mov [bp + 32], bp	; 3: -119 110 32
x2004:	add bp, 30	; 3: -125 -59 30
x2007:	jmp sqrt	; 3: -23 -48 39

math_test_1$194:	; post call

math_test_1$195:	; £temporary3977 = return_value

math_test_1$196:	; parameter £temporary3977, offset 16
x2010:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$197:	; parameter errno, offset 24
x2013:	mov ax, [errno]	; 3: -95 -35 9
x2016:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$198:	; call function noellipse-ellipse printf, extra 0
x2019:	mov word [bp + 14], math_test_1$199	; 5: -57 70 14 -10 7
x2024:	mov [bp + 16], bp	; 3: -119 110 16
x2027:	add bp, 14	; 3: -125 -59 14
x2030:	mov di, bp	; 2: -119 -17
x2032:	add di, 18	; 3: -125 -57 18
x2035:	jmp printf	; 3: -23 -12 3

math_test_1$199:	; post call

math_test_1$200:	; errno = 0
x2038:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$201:	; call header integral zero 0 stack zero 0

math_test_1$202:	; parameter string_2020floor2825f29203D2025f2C20errno203D2025i0A#, offset 6
x2044:	mov word [bp + 20], string_2020floor2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 56 11

math_test_1$203:	; push float x
x2049:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$204:	; parameter x, offset 8
x2052:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$205:	; call header integral zero 0 stack zero 0

math_test_1$206:	; push float x
x2055:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$207:	; parameter x, offset 22
x2058:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$208:	; call function noellipse-noellipse floor
x2061:	mov word [bp + 30], math_test_1$209	; 5: -57 70 30 27 8
x2066:	mov [bp + 32], bp	; 3: -119 110 32
x2069:	add bp, 30	; 3: -125 -59 30
x2072:	jmp floor	; 3: -23 -128 35

math_test_1$209:	; post call

math_test_1$210:	; £temporary3979 = return_value

math_test_1$211:	; parameter £temporary3979, offset 16
x2075:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$212:	; parameter errno, offset 24
x2078:	mov ax, [errno]	; 3: -95 -35 9
x2081:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$213:	; call function noellipse-ellipse printf, extra 0
x2084:	mov word [bp + 14], math_test_1$214	; 5: -57 70 14 55 8
x2089:	mov [bp + 16], bp	; 3: -119 110 16
x2092:	add bp, 14	; 3: -125 -59 14
x2095:	mov di, bp	; 2: -119 -17
x2097:	add di, 18	; 3: -125 -57 18
x2100:	jmp printf	; 3: -23 -77 3

math_test_1$214:	; post call

math_test_1$215:	; errno = 0
x2103:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$216:	; call header integral zero 0 stack zero 0

math_test_1$217:	; parameter string_2020ceil2825f29203D2025f2C20errno203D2025i0A#, offset 6
x2109:	mov word [bp + 20], string_2020ceil2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 86 11

math_test_1$218:	; push float x
x2114:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$219:	; parameter x, offset 8
x2117:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$220:	; call header integral zero 0 stack zero 0

math_test_1$221:	; push float x
x2120:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$222:	; parameter x, offset 22
x2123:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$223:	; call function noellipse-noellipse ceil
x2126:	mov word [bp + 30], math_test_1$224	; 5: -57 70 30 92 8
x2131:	mov [bp + 32], bp	; 3: -119 110 32
x2134:	add bp, 30	; 3: -125 -59 30
x2137:	jmp ceil	; 3: -23 -115 35

math_test_1$224:	; post call

math_test_1$225:	; £temporary3981 = return_value

math_test_1$226:	; parameter £temporary3981, offset 16
x2140:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$227:	; parameter errno, offset 24
x2143:	mov ax, [errno]	; 3: -95 -35 9
x2146:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$228:	; call function noellipse-ellipse printf, extra 0
x2149:	mov word [bp + 14], math_test_1$229	; 5: -57 70 14 120 8
x2154:	mov [bp + 16], bp	; 3: -119 110 16
x2157:	add bp, 14	; 3: -125 -59 14
x2160:	mov di, bp	; 2: -119 -17
x2162:	add di, 18	; 3: -125 -57 18
x2165:	jmp printf	; 3: -23 114 3

math_test_1$229:	; post call

math_test_1$230:	; errno = 0
x2168:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$231:	; call header integral zero 0 stack zero 0

math_test_1$232:	; parameter string_2020fabs2825f29203D2025f2C20errno203D2025i0A#, offset 6
x2174:	mov word [bp + 20], string_2020fabs2825f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 20 115 11

math_test_1$233:	; push float x
x2179:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$234:	; parameter x, offset 8
x2182:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$235:	; call header integral zero 0 stack zero 0

math_test_1$236:	; push float x
x2185:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$237:	; parameter x, offset 22
x2188:	fstp qword [bp + 36]	; 3: -35 94 36

math_test_1$238:	; call function noellipse-noellipse fabs
x2191:	mov word [bp + 30], math_test_1$239	; 5: -57 70 30 -99 8
x2196:	mov [bp + 32], bp	; 3: -119 110 32
x2199:	add bp, 30	; 3: -125 -59 30
x2202:	jmp fabs	; 3: -23 -121 29

math_test_1$239:	; post call

math_test_1$240:	; £temporary3983 = return_value

math_test_1$241:	; parameter £temporary3983, offset 16
x2205:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_1$242:	; parameter errno, offset 24
x2208:	mov ax, [errno]	; 3: -95 -35 9
x2211:	mov [bp + 38], ax	; 3: -119 70 38

math_test_1$243:	; call function noellipse-ellipse printf, extra 0
x2214:	mov word [bp + 14], math_test_1$244	; 5: -57 70 14 -71 8
x2219:	mov [bp + 16], bp	; 3: -119 110 16
x2222:	add bp, 14	; 3: -125 -59 14
x2225:	mov di, bp	; 2: -119 -17
x2227:	add di, 18	; 3: -125 -57 18
x2230:	jmp printf	; 3: -23 49 3

math_test_1$244:	; post call

math_test_1$245:	; errno = 0
x2233:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$246:	; j = 0
x2239:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

math_test_1$247:	; call header integral zero 0 stack zero 0

math_test_1$248:	; push float x
x2244:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$249:	; parameter x, offset 6
x2247:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$250:	; £temporary3985 = &j
x2250:	mov si, bp	; 2: -119 -18
x2252:	add si, 14	; 3: -125 -58 14

math_test_1$251:	; parameter £temporary3985, offset 14
x2255:	mov [bp + 30], si	; 3: -119 118 30

math_test_1$252:	; call function noellipse-noellipse frexp
x2258:	mov word [bp + 16], math_test_1$253	; 5: -57 70 16 -32 8
x2263:	mov [bp + 18], bp	; 3: -119 110 18
x2266:	add bp, 16	; 3: -125 -59 16
x2269:	jmp frexp	; 3: -23 31 42

math_test_1$253:	; post call

math_test_1$254:	; £temporary3986 = return_value

math_test_1$255:	; pop float z
x2272:	fstp qword [bp + 16]	; 3: -35 94 16

math_test_1$256:	; call header integral zero 0 stack zero 0

math_test_1$257:	; parameter string_frexp2028z2C20j29203D202825f2C2025i292C20errno203D2025i0A#, offset 6
x2275:	mov word [bp + 30], string_frexp2028z2C20j29203D202825f2C2025i292C20errno203D2025i0A#	; 5: -57 70 30 -112 11

math_test_1$258:	; push float z
x2280:	fld qword [bp + 16]	; 3: -35 70 16

math_test_1$259:	; parameter z, offset 8
x2283:	fstp qword [bp + 32]	; 3: -35 94 32

math_test_1$260:	; parameter j, offset 16
x2286:	mov ax, [bp + 14]	; 3: -117 70 14
x2289:	mov [bp + 40], ax	; 3: -119 70 40

math_test_1$261:	; parameter errno, offset 18
x2292:	mov ax, [errno]	; 3: -95 -35 9
x2295:	mov [bp + 42], ax	; 3: -119 70 42

math_test_1$262:	; call function noellipse-ellipse printf, extra 0
x2298:	mov word [bp + 24], math_test_1$263	; 5: -57 70 24 13 9
x2303:	mov [bp + 26], bp	; 3: -119 110 26
x2306:	add bp, 24	; 3: -125 -59 24
x2309:	mov di, bp	; 2: -119 -17
x2311:	add di, 12	; 3: -125 -57 12
x2314:	jmp printf	; 3: -23 -35 2

math_test_1$263:	; post call

math_test_1$264:	; if errno == 0 goto 270
x2317:	cmp word [errno], 0	; 5: -125 62 -35 9 0
x2322:	je math_test_1$270	; 2: 116 25

math_test_1$265:	; call header integral zero 0 stack zero 0

math_test_1$266:	; parameter string_Error20message3A#, offset 6
x2324:	mov word [bp + 30], string_Error20message3A#	; 5: -57 70 30 -75 11

math_test_1$267:	; call function noellipse-noellipse perror
x2329:	mov word [bp + 24], math_test_1$268	; 5: -57 70 24 39 9
x2334:	mov [bp + 26], bp	; 3: -119 110 26
x2337:	add bp, 24	; 3: -125 -59 24
x2340:	jmp perror	; 3: -23 -94 42

math_test_1$268:	; post call

math_test_1$269:	; errno = 0
x2343:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$270:	; push 0
x2349:	fldz	; 2: -39 -18

math_test_1$271:	; pop float w
x2351:	fstp qword [bp + 14]	; 3: -35 94 14

math_test_1$272:	; call header integral zero 0 stack zero 0

math_test_1$273:	; push float x
x2354:	fld qword [bp + 6]	; 3: -35 70 6

math_test_1$274:	; parameter x, offset 6
x2357:	fstp qword [bp + 28]	; 3: -35 94 28

math_test_1$275:	; £temporary3990 = &w
x2360:	mov si, bp	; 2: -119 -18
x2362:	add si, 14	; 3: -125 -58 14

math_test_1$276:	; parameter £temporary3990, offset 14
x2365:	mov [bp + 36], si	; 3: -119 118 36

math_test_1$277:	; call function noellipse-noellipse modf
x2368:	mov word [bp + 22], math_test_1$278	; 5: -57 70 22 78 9
x2373:	mov [bp + 24], bp	; 3: -119 110 24
x2376:	add bp, 22	; 3: -125 -59 22
x2379:	jmp modf	; 3: -23 23 43

math_test_1$278:	; post call

math_test_1$279:	; £temporary3991 = return_value

math_test_1$280:	; pop float z
x2382:	fstp qword [bp + 22]	; 3: -35 94 22

math_test_1$281:	; call header integral zero 0 stack zero 0

math_test_1$282:	; parameter string_modf2028z2C20w29203D202825f2C2025f292C20errno203D2025i0A#, offset 6
x2385:	mov word [bp + 36], string_modf2028z2C20w29203D202825f2C2025f292C20errno203D2025i0A#	; 5: -57 70 36 -60 11

math_test_1$283:	; push float z
x2390:	fld qword [bp + 22]	; 3: -35 70 22

math_test_1$284:	; parameter z, offset 8
x2393:	fstp qword [bp + 38]	; 3: -35 94 38

math_test_1$285:	; push float w
x2396:	fld qword [bp + 14]	; 3: -35 70 14

math_test_1$286:	; parameter w, offset 16
x2399:	fstp qword [bp + 46]	; 3: -35 94 46

math_test_1$287:	; parameter errno, offset 24
x2402:	mov ax, [errno]	; 3: -95 -35 9
x2405:	mov [bp + 54], ax	; 3: -119 70 54

math_test_1$288:	; call function noellipse-ellipse printf, extra 0
x2408:	mov word [bp + 30], math_test_1$289	; 5: -57 70 30 123 9
x2413:	mov [bp + 32], bp	; 3: -119 110 32
x2416:	add bp, 30	; 3: -125 -59 30
x2419:	mov di, bp	; 2: -119 -17
x2421:	add di, 18	; 3: -125 -57 18
x2424:	jmp printf	; 3: -23 111 2

math_test_1$289:	; post call

math_test_1$290:	; if errno == 0 goto 296
x2427:	cmp word [errno], 0	; 5: -125 62 -35 9 0
x2432:	je math_test_1$296	; 2: 116 25

math_test_1$291:	; call header integral zero 0 stack zero 0

math_test_1$292:	; parameter string_Error20message3A#, offset 6
x2434:	mov word [bp + 36], string_Error20message3A#	; 5: -57 70 36 -75 11

math_test_1$293:	; call function noellipse-noellipse perror
x2439:	mov word [bp + 30], math_test_1$294	; 5: -57 70 30 -107 9
x2444:	mov [bp + 32], bp	; 3: -119 110 32
x2447:	add bp, 30	; 3: -125 -59 30
x2450:	jmp perror	; 3: -23 52 42

math_test_1$294:	; post call

math_test_1$295:	; errno = 0
x2453:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_1$296:	; call header integral zero 0 stack zero 0

math_test_1$297:	; parameter string_0A#, offset 6
x2459:	mov word [bp + 20], string_0A#	; 5: -57 70 20 -24 11

math_test_1$298:	; call function noellipse-ellipse printf, extra 0
x2464:	mov word [bp + 14], math_test_1$299	; 5: -57 70 14 -80 9
x2469:	mov [bp + 16], bp	; 3: -119 110 16
x2472:	add bp, 14	; 3: -125 -59 14
x2475:	mov di, bp	; 2: -119 -17
x2477:	jmp printf	; 3: -23 58 2

math_test_1$299:	; post call

math_test_1$300:	; return
x2480:	mov ax, [bp]	; 3: -117 70 0
x2483:	mov di, [bp + 4]	; 3: -117 126 4
x2486:	mov bp, [bp + 2]	; 3: -117 110 2
x2489:	jmp ax	; 2: -1 -32

math_test_1$301:	; function end math_test_1

string_3C25f3E0A#:
x2491:	db "<%f>", 10, 0	; 6: 60 37 102 62 10 0

string_2020sin2825f29203D2025f2C20errno203D2025i0A#:
x2497:	db "  sin(%f) = %f, errno = %i", 10, 0	; 28: 32 32 115 105 110 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

errno:
x2525:	dw 0	; 2: 0 0

string_2020cos2825f29203D2025f2C20errno203D2025i0A#:
x2527:	db "  cos(%f) = %f, errno = %i", 10, 0	; 28: 32 32 99 111 115 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020tan2825f29203D2025f2C20errno203D2025i0A#:
x2555:	db "  tan(%f) = %f, errno = %i", 10, 0	; 28: 32 32 116 97 110 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020asin2825f29203D2025f2C20errno203D2025i0A#:
x2583:	db "  asin(%f) = %f, errno = %i", 10, 0	; 29: 32 32 97 115 105 110 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020acos2825f29203D2025f2C20errno203D2025i0A#:
x2612:	db "  acos(%f) = %f, errno = %i", 10, 0	; 29: 32 32 97 99 111 115 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020atan2825f29203D2025f2C20errno203D2025i0A#:
x2641:	db "  atan(%f) = %f, errno = %i", 10, 0	; 29: 32 32 97 116 97 110 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020exp2825f29203D2025f2C20errno203D2025i0A#:
x2670:	db "  exp(%f) = %f, errno = %i", 10, 0	; 28: 32 32 101 120 112 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020log2825f29203D2025f2C20errno203D2025i0A#:
x2698:	db "  log(%f) = %f, errno = %i", 10, 0	; 28: 32 32 108 111 103 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020log102825f29203D2025f2C20errno203D2025i0A#:
x2726:	db "  log10(%f) = %f, errno = %i", 10, 0	; 30: 32 32 108 111 103 49 48 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020sinh2825f29203D2025f2C20errno203D2025i0A#:
x2756:	db "  sinh(%f) = %f, errno = %i", 10, 0	; 29: 32 32 115 105 110 104 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020cosh2825f29203D2025f2C20errno203D2025i0A#:
x2785:	db "  cosh(%f) = %f, errno = %i", 10, 0	; 29: 32 32 99 111 115 104 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020tanh2825f29203D2025f2C20errno203D2025i0A#:
x2814:	db "  tanh(%f) = %f, errno = %i", 10, 0	; 29: 32 32 116 97 110 104 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020sqrt2825f29203D2025f2C20errno203D2025i0A#:
x2843:	db "  sqrt(%f) = %f, errno = %i", 10, 0	; 29: 32 32 115 113 114 116 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020floor2825f29203D2025f2C20errno203D2025i0A#:
x2872:	db "  floor(%f) = %f, errno = %i", 10, 0	; 30: 32 32 102 108 111 111 114 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020ceil2825f29203D2025f2C20errno203D2025i0A#:
x2902:	db "  ceil(%f) = %f, errno = %i", 10, 0	; 29: 32 32 99 101 105 108 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_2020fabs2825f29203D2025f2C20errno203D2025i0A#:
x2931:	db "  fabs(%f) = %f, errno = %i", 10, 0	; 29: 32 32 102 97 98 115 40 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_frexp2028z2C20j29203D202825f2C2025i292C20errno203D2025i0A#:
x2960:	db "frexp (z, j) = (%f, %i), errno = %i", 10, 0	; 37: 102 114 101 120 112 32 40 122 44 32 106 41 32 61 32 40 37 102 44 32 37 105 41 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_Error20message3A#:
x2997:	db "Error message:", 0	; 15: 69 114 114 111 114 32 109 101 115 115 97 103 101 58 0

string_modf2028z2C20w29203D202825f2C2025f292C20errno203D2025i0A#:
x3012:	db "modf (z, w) = (%f, %f), errno = %i", 10, 0	; 36: 109 111 100 102 32 40 122 44 32 119 41 32 61 32 40 37 102 44 32 37 102 41 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_0A#:
x3048:	db 10, 0	; 2: 10 0

printf:	; £temporary2312 = &format
x3050:	mov si, bp	; 2: -119 -18
x3052:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2313 = int_to_int £temporary2312 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2313 + 2
x3055:	add si, 2	; 3: -125 -58 2
x3058:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; call header integral zero 0 stack zero 0

printf$4:	; parameter format, offset 6
x3061:	mov ax, [bp + 6]	; 3: -117 70 6
x3064:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; parameter arg_list, offset 8
x3067:	mov ax, [di + 8]	; 3: -117 69 8
x3070:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; call function ellipse-noellipse vprintf
x3073:	mov word [di + 10], printf$7	; 5: -57 69 10 20 12
x3078:	mov [di + 12], bp	; 3: -119 109 12
x3081:	mov [di + 14], di	; 3: -119 125 14
x3084:	add di, 10	; 3: -125 -57 10
x3087:	mov bp, di	; 2: -119 -3
x3089:	nop	; 1: -112
x3090:	jmp vprintf	; 2: -21 11

printf$7:	; post call

printf$8:	; £temporary2315 = return_value

printf$9:	; return_value = £temporary2315

printf$10:	; return
x3092:	mov ax, [bp]	; 3: -117 70 0
x3095:	mov di, [bp + 4]	; 3: -117 126 4
x3098:	mov bp, [bp + 2]	; 3: -117 110 2
x3101:	jmp ax	; 2: -1 -32

printf$11:	; function end printf

vprintf:	; call header integral zero 0 stack zero 0

vprintf$1:	; parameter stdout, offset 6
x3103:	mov ax, [stdout]	; 3: -95 74 12
x3106:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; parameter format, offset 8
x3109:	mov ax, [bp + 6]	; 3: -117 70 6
x3112:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; parameter arg_list, offset 10
x3115:	mov ax, [bp + 8]	; 3: -117 70 8
x3118:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; call function noellipse-noellipse vfprintf
x3121:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 63 12
x3126:	mov [bp + 12], bp	; 3: -119 110 12
x3129:	add bp, 10	; 3: -125 -59 10
x3132:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; post call

vprintf$6:	; £temporary2319 = return_value

vprintf$7:	; return_value = £temporary2319

vprintf$8:	; return
x3135:	mov ax, [bp]	; 3: -117 70 0
x3138:	mov di, [bp + 4]	; 3: -117 126 4
x3141:	mov bp, [bp + 2]	; 3: -117 110 2
x3144:	jmp ax	; 2: -1 -32

vprintf$9:	; function end vprintf

stdout:
x3146:	dw g_fileArray + 29	; 2: 105 12

g_fileArray:
x3148:	dw 1	; 2: 1 0
x3150:	dw 0	; 2: 0 0
x3152:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x3177:	dw 1	; 2: 1 0
x3179:	dw 1	; 2: 1 0
x3181:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x3206:	dw 1	; 2: 1 0
x3208:	dw 2	; 2: 2 0
x3210:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x3235:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

vfprintf:	; g_outStatus = 0
x3728:	mov word [g_outStatus], 0	; 6: -57 6 -63 14 0 0

vfprintf$1:	; £temporary2331 = int_to_int outStream (Pointer -> Pointer)
x3734:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2331
x3737:	mov [g_outDevice], ax	; 3: -93 -61 14

vfprintf$3:	; call header integral zero 0 stack zero 0

vfprintf$4:	; parameter format, offset 6
x3740:	mov ax, [bp + 8]	; 3: -117 70 8
x3743:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; parameter arg_list, offset 8
x3746:	mov ax, [bp + 10]	; 3: -117 70 10
x3749:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; call function noellipse-noellipse printFormat
x3752:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 -74 14
x3757:	mov [bp + 14], bp	; 3: -119 110 14
x3760:	add bp, 12	; 3: -125 -59 12
x3763:	nop	; 1: -112
x3764:	jmp printFormat	; 2: -21 15

vfprintf$7:	; post call

vfprintf$8:	; £temporary2332 = return_value

vfprintf$9:	; return_value = £temporary2332

vfprintf$10:	; return
x3766:	mov ax, [bp]	; 3: -117 70 0
x3769:	mov di, [bp + 4]	; 3: -117 126 4
x3772:	mov bp, [bp + 2]	; 3: -117 110 2
x3775:	jmp ax	; 2: -1 -32

vfprintf$11:	; function end vfprintf

g_outStatus:
x3777:	db 0, 0	; 2: 0 0

g_outDevice:
x3779:	db 0, 0	; 2: 0 0

printFormat:	; width = 0
x3781:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; precision = 0
x3786:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; percent = 0
x3791:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; plus = 0
x3796:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; minus = 0
x3801:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; space = 0
x3806:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; zero = 0
x3811:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; grid = 0
x3816:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; widthStar = 0
x3821:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; period = 0
x3826:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; precisionStar = 0
x3831:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; shortInt = 0
x3836:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; longInt = 0
x3841:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; longDouble = 0
x3846:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; g_outChars = 0
x3851:	mov word [g_outChars], 0	; 6: -57 6 21 20 0 0

printFormat$15:	; index = 0
x3857:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2166 = format + index
x3862:	mov si, [bp + 6]	; 3: -117 118 6
x3865:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2165 -> £temporary2166 = *£temporary2166

printFormat$18:	; if £temporary2165 -> £temporary2166 == 0 goto 282
x3868:	cmp byte [si], 0	; 3: -128 60 0
x3871:	je printFormat$282	; 4: 15 -124 -52 4

printFormat$19:	; £temporary2170 = format + index
x3875:	mov si, [bp + 6]	; 3: -117 118 6
x3878:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2169 -> £temporary2170 = *£temporary2170

printFormat$21:	; c = £temporary2169 -> £temporary2170
x3881:	mov al, [si]	; 2: -118 4
x3883:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 260
x3886:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x3890:	je printFormat$260	; 4: 15 -124 81 4

printFormat$23:	; case c == 43 goto 52
x3894:	mov al, [bp + 40]	; 3: -118 70 40
x3897:	cmp al, 43	; 2: 60 43
x3899:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; case c == 45 goto 54
x3903:	cmp al, 45	; 2: 60 45
x3905:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; case c == 32 goto 56
x3909:	cmp al, 32	; 2: 60 32
x3911:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; case c == 48 goto 58
x3915:	cmp al, 48	; 2: 60 48
x3917:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; case c == 35 goto 60
x3921:	cmp al, 35	; 2: 60 35
x3923:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; case c == 46 goto 62
x3927:	cmp al, 46	; 2: 60 46
x3929:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; case c == 42 goto 64
x3933:	cmp al, 42	; 2: 60 42
x3935:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; case c == 104 goto 69
x3939:	cmp al, 104	; 2: 60 104
x3941:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; case c == 108 goto 71
x3945:	cmp al, 108	; 2: 60 108
x3947:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; case c == 76 goto 73
x3951:	cmp al, 76	; 2: 60 76
x3953:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; case c == 37 goto 75
x3957:	cmp al, 37	; 2: 60 37
x3959:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; case c == 110 goto 75
x3963:	cmp al, 110	; 2: 60 110
x3965:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; case c == 112 goto 75
x3969:	cmp al, 112	; 2: 60 112
x3971:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; case c == 71 goto 75
x3975:	cmp al, 71	; 2: 60 71
x3977:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; case c == 103 goto 75
x3981:	cmp al, 103	; 2: 60 103
x3983:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; case c == 69 goto 75
x3987:	cmp al, 69	; 2: 60 69
x3989:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; case c == 101 goto 75
x3993:	cmp al, 101	; 2: 60 101
x3995:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; case c == 102 goto 75
x3999:	cmp al, 102	; 2: 60 102
x4001:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; case c == 115 goto 75
x4005:	cmp al, 115	; 2: 60 115
x4007:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; case c == 99 goto 75
x4011:	cmp al, 99	; 2: 60 99
x4013:	je printFormat$75	; 2: 116 125

printFormat$43:	; case c == 88 goto 75
x4015:	cmp al, 88	; 2: 60 88
x4017:	je printFormat$75	; 2: 116 121

printFormat$44:	; case c == 120 goto 75
x4019:	cmp al, 120	; 2: 60 120
x4021:	je printFormat$75	; 2: 116 117

printFormat$45:	; case c == 111 goto 75
x4023:	cmp al, 111	; 2: 60 111
x4025:	je printFormat$75	; 2: 116 113

printFormat$46:	; case c == 98 goto 75
x4027:	cmp al, 98	; 2: 60 98
x4029:	je printFormat$75	; 2: 116 109

printFormat$47:	; case c == 117 goto 75
x4031:	cmp al, 117	; 2: 60 117
x4033:	je printFormat$75	; 2: 116 105

printFormat$48:	; case c == 100 goto 75
x4035:	cmp al, 100	; 2: 60 100
x4037:	je printFormat$75	; 2: 116 101

printFormat$49:	; case c == 105 goto 75
x4039:	cmp al, 105	; 2: 60 105
x4041:	je printFormat$75	; 2: 116 97

printFormat$50:	; case end c

printFormat$51:	; goto 237
x4043:	jmp printFormat$237	; 3: -23 70 3

printFormat$52:	; plus = 1
x4046:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 280
x4051:	jmp printFormat$280	; 3: -23 19 4

printFormat$54:	; minus = 1
x4054:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 280
x4059:	jmp printFormat$280	; 3: -23 11 4

printFormat$56:	; space = 1
x4062:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 280
x4067:	jmp printFormat$280	; 3: -23 3 4

printFormat$58:	; zero = 1
x4070:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 280
x4075:	jmp printFormat$280	; 3: -23 -5 3

printFormat$60:	; grid = 1
x4078:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 280
x4083:	jmp printFormat$280	; 3: -23 -13 3

printFormat$62:	; period = 1
x4086:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 280
x4091:	jmp printFormat$280	; 3: -23 -21 3

printFormat$64:	; if period != 0 goto 67
x4094:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x4098:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x4100:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 280
x4105:	jmp printFormat$280	; 3: -23 -35 3

printFormat$67:	; precision = -1
x4108:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 280
x4113:	jmp printFormat$280	; 3: -23 -43 3

printFormat$69:	; shortInt = 1
x4116:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 280
x4121:	jmp printFormat$280	; 3: -23 -51 3

printFormat$71:	; longInt = 1
x4124:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 280
x4129:	jmp printFormat$280	; 3: -23 -59 3

printFormat$73:	; longDouble = 1
x4132:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 280
x4137:	jmp printFormat$280	; 3: -23 -67 3

printFormat$75:	; if minus == 0 goto 106
x4140:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x4144:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x4148:	mov ax, [g_outChars]	; 3: -95 21 20
x4151:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; call header integral zero 0 stack zero 0

printFormat$78:	; £temporary2174 = format + index
x4154:	mov si, [bp + 6]	; 3: -117 118 6
x4157:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2173 -> £temporary2174 = *£temporary2174

printFormat$80:	; £temporary2175 = &£temporary2173 -> £temporary2174

printFormat$81:	; parameter £temporary2175, offset 6
x4160:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; parameter arg_list, offset 8
x4163:	mov ax, [bp + 8]	; 3: -117 70 8
x4166:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; parameter plus, offset 10
x4169:	mov ax, [bp + 18]	; 3: -117 70 18
x4172:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; parameter space, offset 12
x4175:	mov ax, [bp + 22]	; 3: -117 70 22
x4178:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; parameter grid, offset 14
x4181:	mov ax, [bp + 26]	; 3: -117 70 26
x4184:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; £temporary2176 = &width
x4187:	mov si, bp	; 2: -119 -18
x4189:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2176, offset 16
x4192:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; parameter precision, offset 18
x4195:	mov ax, [bp + 14]	; 3: -117 70 14
x4198:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; parameter shortInt, offset 20
x4201:	mov ax, [bp + 34]	; 3: -117 70 34
x4204:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; parameter longInt, offset 22
x4207:	mov ax, [bp + 36]	; 3: -117 70 36
x4210:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; parameter longDouble, offset 24
x4213:	mov ax, [bp + 38]	; 3: -117 70 38
x4216:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; parameter 1, offset 26
x4219:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; parameter 0, offset 28
x4224:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; call function noellipse-noellipse printArgument
x4229:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 -109 16
x4234:	mov [bp + 45], bp	; 3: -119 110 45
x4237:	add bp, 43	; 3: -125 -59 43
x4240:	jmp printArgument	; 3: -23 -122 3

printFormat$95:	; post call

printFormat$96:	; £temporary2177 = return_value

printFormat$97:	; arg_list = £temporary2177
x4243:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2179 = g_outChars - startChars
x4246:	mov ax, [g_outChars]	; 3: -95 21 20
x4249:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x4252:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2179 >= width goto 235
x4255:	cmp ax, [bp + 12]	; 3: 59 70 12
x4258:	jge printFormat$235	; 4: 15 -115 102 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x4262:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x4266:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 -72 16
x4271:	mov [bp + 47], bp	; 3: -119 110 47
x4274:	add bp, 45	; 3: -125 -59 45
x4277:	jmp printChar	; 3: -23 116 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x4280:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 182
x4282:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x4286:	je printFormat$182	; 4: 15 -124 82 1

printFormat$107:	; startChars = g_outChars
x4290:	mov ax, [g_outChars]	; 3: -95 21 20
x4293:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$108:	; oldOutStatus = g_outStatus
x4296:	mov ax, [g_outStatus]	; 3: -95 -63 14
x4299:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$109:	; negative = 0
x4302:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$110:	; g_outStatus = 2
x4307:	mov word [g_outStatus], 2	; 6: -57 6 -63 14 2 0

printFormat$111:	; call header integral zero 0 stack zero 0

printFormat$112:	; £temporary2183 = format + index
x4313:	mov si, [bp + 6]	; 3: -117 118 6
x4316:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2182 -> £temporary2183 = *£temporary2183

printFormat$114:	; £temporary2184 = &£temporary2182 -> £temporary2183

printFormat$115:	; parameter £temporary2184, offset 6
x4319:	mov [bp + 53], si	; 3: -119 118 53

printFormat$116:	; parameter arg_list, offset 8
x4322:	mov ax, [bp + 8]	; 3: -117 70 8
x4325:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$117:	; parameter 0, offset 10
x4328:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$118:	; parameter 0, offset 12
x4333:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$119:	; parameter grid, offset 14
x4338:	mov ax, [bp + 26]	; 3: -117 70 26
x4341:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$120:	; £temporary2185 = &width
x4344:	mov si, bp	; 2: -119 -18
x4346:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2185, offset 16
x4349:	mov [bp + 63], si	; 3: -119 118 63

printFormat$122:	; parameter precision, offset 18
x4352:	mov ax, [bp + 14]	; 3: -117 70 14
x4355:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$123:	; parameter shortInt, offset 20
x4358:	mov ax, [bp + 34]	; 3: -117 70 34
x4361:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$124:	; parameter longInt, offset 22
x4364:	mov ax, [bp + 36]	; 3: -117 70 36
x4367:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$125:	; parameter longDouble, offset 24
x4370:	mov ax, [bp + 38]	; 3: -117 70 38
x4373:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$126:	; parameter 0, offset 26
x4376:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$127:	; £temporary2186 = &negative
x4381:	mov si, bp	; 2: -119 -18
x4383:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2186, offset 28
x4386:	mov [bp + 75], si	; 3: -119 118 75

printFormat$129:	; call function noellipse-noellipse printArgument
x4389:	mov word [bp + 47], printFormat$130	; 5: -57 70 47 51 17
x4394:	mov [bp + 49], bp	; 3: -119 110 49
x4397:	add bp, 47	; 3: -125 -59 47
x4400:	jmp printArgument	; 3: -23 -26 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x4403:	mov ax, [bp + 43]	; 3: -117 70 43
x4406:	mov [g_outStatus], ax	; 3: -93 -63 14

printFormat$132:	; field = g_outChars - startChars
x4409:	mov ax, [g_outChars]	; 3: -95 21 20
x4412:	sub ax, [bp + 41]	; 3: 43 70 41
x4415:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x4418:	mov ax, [bp + 41]	; 3: -117 70 41
x4421:	mov [g_outChars], ax	; 3: -93 21 20

printFormat$134:	; if negative == 0 goto 141
x4424:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x4428:	je printFormat$141	; 2: 116 23

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 45, offset 6
x4430:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$137:	; call function noellipse-noellipse printChar
x4434:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 96 17
x4439:	mov [bp + 51], bp	; 3: -119 110 51
x4442:	add bp, 49	; 3: -125 -59 49
x4445:	jmp printChar	; 3: -23 -52 9

printFormat$138:	; post call

printFormat$139:	; ++field
x4448:	inc word [bp + 47]	; 3: -1 70 47

printFormat$140:	; goto 154
x4451:	jmp printFormat$154	; 2: -21 57

printFormat$141:	; if plus == 0 goto 148
x4453:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x4457:	je printFormat$148	; 2: 116 23

printFormat$142:	; call header integral zero 0 stack zero 0

printFormat$143:	; parameter 43, offset 6
x4459:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$144:	; call function noellipse-noellipse printChar
x4463:	mov word [bp + 49], printFormat$145	; 5: -57 70 49 125 17
x4468:	mov [bp + 51], bp	; 3: -119 110 51
x4471:	add bp, 49	; 3: -125 -59 49
x4474:	jmp printChar	; 3: -23 -81 9

printFormat$145:	; post call

printFormat$146:	; ++field
x4477:	inc word [bp + 47]	; 3: -1 70 47

printFormat$147:	; goto 154
x4480:	jmp printFormat$154	; 2: -21 28

printFormat$148:	; if space == 0 goto 154
x4482:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x4486:	je printFormat$154	; 2: 116 22

printFormat$149:	; call header integral zero 0 stack zero 0

printFormat$150:	; parameter 32, offset 6
x4488:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$151:	; call function noellipse-noellipse printChar
x4492:	mov word [bp + 49], printFormat$152	; 5: -57 70 49 -102 17
x4497:	mov [bp + 51], bp	; 3: -119 110 51
x4500:	add bp, 49	; 3: -125 -59 49
x4503:	jmp printChar	; 3: -23 -110 9

printFormat$152:	; post call

printFormat$153:	; £temporary2198 = field + 1
x4506:	mov ax, [bp + 47]	; 3: -117 70 47
x4509:	inc ax	; 1: 64

printFormat$154:	; ++field
x4510:	inc word [bp + 47]	; 3: -1 70 47

printFormat$155:	; if £temporary2198 >= width goto 161
x4513:	cmp ax, [bp + 12]	; 3: 59 70 12
x4516:	jge printFormat$161	; 2: 125 20

printFormat$156:	; call header integral zero 0 stack zero 0

printFormat$157:	; parameter 48, offset 6
x4518:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$158:	; call function noellipse-noellipse printChar
x4522:	mov word [bp + 49], printFormat$159	; 5: -57 70 49 -72 17
x4527:	mov [bp + 51], bp	; 3: -119 110 51
x4530:	add bp, 49	; 3: -125 -59 49
x4533:	jmp printChar	; 3: -23 116 9

printFormat$159:	; post call

printFormat$160:	; goto 154
x4536:	jmp printFormat$154	; 2: -21 -28

printFormat$161:	; call header integral zero 0 stack zero 0

printFormat$162:	; £temporary2202 = format + index
x4538:	mov si, [bp + 6]	; 3: -117 118 6
x4541:	add si, [bp + 10]	; 3: 3 118 10

printFormat$163:	; £temporary2201 -> £temporary2202 = *£temporary2202

printFormat$164:	; £temporary2203 = &£temporary2201 -> £temporary2202

printFormat$165:	; parameter £temporary2203, offset 6
x4544:	mov [bp + 55], si	; 3: -119 118 55

printFormat$166:	; parameter arg_list, offset 8
x4547:	mov ax, [bp + 8]	; 3: -117 70 8
x4550:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$167:	; parameter 0, offset 10
x4553:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$168:	; parameter 0, offset 12
x4558:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$169:	; parameter grid, offset 14
x4563:	mov ax, [bp + 26]	; 3: -117 70 26
x4566:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$170:	; parameter 0, offset 16
x4569:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$171:	; parameter precision, offset 18
x4574:	mov ax, [bp + 14]	; 3: -117 70 14
x4577:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$172:	; parameter shortInt, offset 20
x4580:	mov ax, [bp + 34]	; 3: -117 70 34
x4583:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$173:	; parameter longInt, offset 22
x4586:	mov ax, [bp + 36]	; 3: -117 70 36
x4589:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$174:	; parameter longDouble, offset 24
x4592:	mov ax, [bp + 38]	; 3: -117 70 38
x4595:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$175:	; parameter 0, offset 26
x4598:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$176:	; parameter 0, offset 28
x4603:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$177:	; call function noellipse-noellipse printArgument
x4608:	mov word [bp + 49], printFormat$178	; 5: -57 70 49 14 18
x4613:	mov [bp + 51], bp	; 3: -119 110 51
x4616:	add bp, 49	; 3: -125 -59 49
x4619:	jmp printArgument	; 3: -23 11 2

printFormat$178:	; post call

printFormat$179:	; £temporary2204 = return_value

printFormat$180:	; arg_list = £temporary2204
x4622:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$181:	; goto 235
x4625:	jmp printFormat$235	; 3: -23 -8 0

printFormat$182:	; startChars = g_outChars
x4628:	mov ax, [g_outChars]	; 3: -95 21 20
x4631:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$183:	; oldOutStatus = g_outStatus
x4634:	mov ax, [g_outStatus]	; 3: -95 -63 14
x4637:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$184:	; g_outStatus = 2
x4640:	mov word [g_outStatus], 2	; 6: -57 6 -63 14 2 0

printFormat$185:	; call header integral zero 0 stack zero 0

printFormat$186:	; £temporary2206 = format + index
x4646:	mov si, [bp + 6]	; 3: -117 118 6
x4649:	add si, [bp + 10]	; 3: 3 118 10

printFormat$187:	; £temporary2205 -> £temporary2206 = *£temporary2206

printFormat$188:	; £temporary2207 = &£temporary2205 -> £temporary2206

printFormat$189:	; parameter £temporary2207, offset 6
x4652:	mov [bp + 51], si	; 3: -119 118 51

printFormat$190:	; parameter arg_list, offset 8
x4655:	mov ax, [bp + 8]	; 3: -117 70 8
x4658:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$191:	; parameter plus, offset 10
x4661:	mov ax, [bp + 18]	; 3: -117 70 18
x4664:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$192:	; parameter space, offset 12
x4667:	mov ax, [bp + 22]	; 3: -117 70 22
x4670:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$193:	; parameter grid, offset 14
x4673:	mov ax, [bp + 26]	; 3: -117 70 26
x4676:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$194:	; £temporary2208 = &width
x4679:	mov si, bp	; 2: -119 -18
x4681:	add si, 12	; 3: -125 -58 12

printFormat$195:	; parameter £temporary2208, offset 16
x4684:	mov [bp + 61], si	; 3: -119 118 61

printFormat$196:	; parameter precision, offset 18
x4687:	mov ax, [bp + 14]	; 3: -117 70 14
x4690:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$197:	; parameter shortInt, offset 20
x4693:	mov ax, [bp + 34]	; 3: -117 70 34
x4696:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$198:	; parameter longInt, offset 22
x4699:	mov ax, [bp + 36]	; 3: -117 70 36
x4702:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$199:	; parameter longDouble, offset 24
x4705:	mov ax, [bp + 38]	; 3: -117 70 38
x4708:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$200:	; parameter 1, offset 26
x4711:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$201:	; parameter 0, offset 28
x4716:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$202:	; call function noellipse-noellipse printArgument
x4721:	mov word [bp + 45], printFormat$203	; 5: -57 70 45 127 18
x4726:	mov [bp + 47], bp	; 3: -119 110 47
x4729:	add bp, 45	; 3: -125 -59 45
x4732:	jmp printArgument	; 3: -23 -102 1

printFormat$203:	; post call

printFormat$204:	; g_outStatus = oldOutStatus
x4735:	mov ax, [bp + 43]	; 3: -117 70 43
x4738:	mov [g_outStatus], ax	; 3: -93 -63 14

printFormat$205:	; field = g_outChars - startChars
x4741:	mov ax, [g_outChars]	; 3: -95 21 20
x4744:	sub ax, [bp + 41]	; 3: 43 70 41
x4747:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$206:	; g_outChars = startChars
x4750:	mov ax, [bp + 41]	; 3: -117 70 41
x4753:	mov [g_outChars], ax	; 3: -93 21 20

printFormat$207:	; £temporary2211 = field
x4756:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$208:	; ++field
x4759:	inc word [bp + 45]	; 3: -1 70 45

printFormat$209:	; if £temporary2211 >= width goto 215
x4762:	cmp ax, [bp + 12]	; 3: 59 70 12
x4765:	jge printFormat$215	; 2: 125 20

printFormat$210:	; call header integral zero 0 stack zero 0

printFormat$211:	; parameter 32, offset 6
x4767:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$212:	; call function noellipse-noellipse printChar
x4771:	mov word [bp + 47], printFormat$213	; 5: -57 70 47 -79 18
x4776:	mov [bp + 49], bp	; 3: -119 110 49
x4779:	add bp, 47	; 3: -125 -59 47
x4782:	jmp printChar	; 3: -23 123 8

printFormat$213:	; post call

printFormat$214:	; goto 207
x4785:	jmp printFormat$207	; 2: -21 -31

printFormat$215:	; call header integral zero 0 stack zero 0

printFormat$216:	; £temporary2215 = format + index
x4787:	mov si, [bp + 6]	; 3: -117 118 6
x4790:	add si, [bp + 10]	; 3: 3 118 10

printFormat$217:	; £temporary2214 -> £temporary2215 = *£temporary2215

printFormat$218:	; £temporary2216 = &£temporary2214 -> £temporary2215

printFormat$219:	; parameter £temporary2216, offset 6
x4793:	mov [bp + 53], si	; 3: -119 118 53

printFormat$220:	; parameter arg_list, offset 8
x4796:	mov ax, [bp + 8]	; 3: -117 70 8
x4799:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$221:	; parameter plus, offset 10
x4802:	mov ax, [bp + 18]	; 3: -117 70 18
x4805:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$222:	; parameter space, offset 12
x4808:	mov ax, [bp + 22]	; 3: -117 70 22
x4811:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$223:	; parameter grid, offset 14
x4814:	mov ax, [bp + 26]	; 3: -117 70 26
x4817:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$224:	; parameter 0, offset 16
x4820:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$225:	; parameter precision, offset 18
x4825:	mov ax, [bp + 14]	; 3: -117 70 14
x4828:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$226:	; parameter shortInt, offset 20
x4831:	mov ax, [bp + 34]	; 3: -117 70 34
x4834:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$227:	; parameter longInt, offset 22
x4837:	mov ax, [bp + 36]	; 3: -117 70 36
x4840:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$228:	; parameter longDouble, offset 24
x4843:	mov ax, [bp + 38]	; 3: -117 70 38
x4846:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$229:	; parameter 1, offset 26
x4849:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$230:	; parameter 0, offset 28
x4854:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$231:	; call function noellipse-noellipse printArgument
x4859:	mov word [bp + 47], printFormat$232	; 5: -57 70 47 9 19
x4864:	mov [bp + 49], bp	; 3: -119 110 49
x4867:	add bp, 47	; 3: -125 -59 47
x4870:	jmp printArgument	; 3: -23 16 1

printFormat$232:	; post call

printFormat$233:	; £temporary2217 = return_value

printFormat$234:	; arg_list = £temporary2217
x4873:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$235:	; percent = 0
x4876:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$236:	; goto 280
x4881:	jmp printFormat$280	; 3: -23 -43 0

printFormat$237:	; value = 0
x4884:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$238:	; call header integral zero 0 stack zero 0

printFormat$239:	; £temporary2220 = int_to_int c (Signed_Char -> Signed_Int)
x4889:	mov al, [bp + 40]	; 3: -118 70 40
x4892:	and ax, 255	; 3: 37 -1 0
x4895:	cmp al, 0	; 2: 60 0
x4897:	jge printFormat$240	; 2: 125 4
x4899:	neg al	; 2: -10 -40
x4901:	neg ax	; 2: -9 -40

printFormat$240:	; parameter £temporary2220, offset 6
x4903:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$241:	; call function noellipse-noellipse isdigit
x4906:	mov word [bp + 43], printFormat$242	; 5: -57 70 43 56 19
x4911:	mov [bp + 45], bp	; 3: -119 110 45
x4914:	add bp, 43	; 3: -125 -59 43
x4917:	jmp isdigit	; 3: -23 13 25

printFormat$242:	; post call

printFormat$243:	; £temporary2221 = return_value

printFormat$244:	; if £temporary2221 == 0 goto 254
x4920:	cmp bx, 0	; 3: -125 -5 0
x4923:	je printFormat$254	; 2: 116 49

printFormat$245:	; £temporary2222 = value * 10
x4925:	mov ax, [bp + 41]	; 3: -117 70 41
x4928:	xor dx, dx	; 2: 49 -46
x4930:	imul word [int2$10#]	; 4: -9 46 23 20

printFormat$246:	; £temporary2223 = c - 48
x4934:	mov bl, [bp + 40]	; 3: -118 94 40
x4937:	sub bl, 48	; 3: -128 -21 48

printFormat$247:	; £temporary2224 = int_to_int £temporary2223 (Signed_Char -> Signed_Int)
x4940:	and bx, 255	; 4: -127 -29 -1 0
x4944:	cmp bl, 0	; 3: -128 -5 0
x4947:	jge printFormat$248	; 2: 125 4
x4949:	neg bl	; 2: -10 -37
x4951:	neg bx	; 2: -9 -37

printFormat$248:	; value = £temporary2222 + £temporary2224
x4953:	add ax, bx	; 2: 1 -40
x4955:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$249:	; £temporary2226 = index + 1
x4958:	mov ax, [bp + 10]	; 3: -117 70 10
x4961:	inc ax	; 1: 64

printFormat$250:	; £temporary2228 = format + £temporary2226
x4962:	mov si, [bp + 6]	; 3: -117 118 6
x4965:	add si, ax	; 2: 1 -58

printFormat$251:	; £temporary2227 -> £temporary2228 = *£temporary2228

printFormat$252:	; c = £temporary2227 -> £temporary2228
x4967:	mov al, [si]	; 2: -118 4
x4969:	mov [bp + 40], al	; 3: -120 70 40

printFormat$253:	; goto 238
x4972:	jmp printFormat$238	; 2: -21 -85

printFormat$254:	; --index
x4974:	dec word [bp + 10]	; 3: -1 78 10

printFormat$255:	; if period != 0 goto 258
x4977:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x4981:	jne printFormat$258	; 2: 117 8

printFormat$256:	; width = value
x4983:	mov ax, [bp + 41]	; 3: -117 70 41
x4986:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$257:	; goto 280
x4989:	jmp printFormat$280	; 2: -21 106

printFormat$258:	; precision = value
x4991:	mov ax, [bp + 41]	; 3: -117 70 41
x4994:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$259:	; goto 280
x4997:	jmp printFormat$280	; 2: -21 98

printFormat$260:	; if c != 37 goto 276
x4999:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x5003:	jne printFormat$276	; 2: 117 72

printFormat$261:	; percent = 1
x5005:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$262:	; plus = 0
x5010:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$263:	; minus = 0
x5015:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$264:	; space = 0
x5020:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$265:	; zero = 0
x5025:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$266:	; grid = 0
x5030:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$267:	; widthStar = 0
x5035:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$268:	; period = 0
x5040:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$269:	; precisionStar = 0
x5045:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$270:	; shortInt = 0
x5050:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$271:	; longInt = 0
x5055:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$272:	; longDouble = 0
x5060:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$273:	; width = 0
x5065:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$274:	; precision = 0
x5070:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$275:	; goto 280
x5075:	jmp printFormat$280	; 2: -21 20

printFormat$276:	; call header integral zero 0 stack zero 0

printFormat$277:	; parameter c, offset 6
x5077:	mov al, [bp + 40]	; 3: -118 70 40
x5080:	mov [bp + 47], al	; 3: -120 70 47

printFormat$278:	; call function noellipse-noellipse printChar
x5083:	mov word [bp + 41], printFormat$279	; 5: -57 70 41 -23 19
x5088:	mov [bp + 43], bp	; 3: -119 110 43
x5091:	add bp, 41	; 3: -125 -59 41
x5094:	jmp printChar	; 3: -23 67 7

printFormat$279:	; post call

printFormat$280:	; ++index
x5097:	inc word [bp + 10]	; 3: -1 70 10

printFormat$281:	; goto 16
x5100:	jmp printFormat$16	; 3: -23 39 -5

printFormat$282:	; if g_outStatus != 1 goto 288
x5103:	cmp word [g_outStatus], 1	; 5: -125 62 -63 14 1
x5108:	jne printFormat$288	; 2: 117 16

printFormat$283:	; £temporary2237 = int_to_int g_outDevice (Pointer -> Pointer)
x5110:	mov ax, [g_outDevice]	; 3: -95 -61 14

printFormat$284:	; outString = £temporary2237
x5113:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$285:	; £temporary2239 = outString + g_outChars
x5116:	mov si, [bp + 40]	; 3: -117 118 40
x5119:	add si, [g_outChars]	; 4: 3 54 21 20

printFormat$286:	; £temporary2238 -> £temporary2239 = *£temporary2239

printFormat$287:	; £temporary2238 -> £temporary2239 = 0
x5123:	mov byte [si], 0	; 3: -58 4 0

printFormat$288:	; return_value = g_outChars
x5126:	mov bx, [g_outChars]	; 4: -117 30 21 20

printFormat$289:	; return
x5130:	mov ax, [bp]	; 3: -117 70 0
x5133:	mov di, [bp + 4]	; 3: -117 126 4
x5136:	mov bp, [bp + 2]	; 3: -117 110 2
x5139:	jmp ax	; 2: -1 -32

printFormat$290:	; function end printFormat

g_outChars:
x5141:	db 0, 0	; 2: 0 0

int2$10#:
x5143:	dw 10	; 2: 10 0

printArgument:	; £temporary1939 -> format = *format
x5145:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary1939 -> format
x5148:	mov al, [si]	; 2: -118 4
x5150:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x5153:	mov al, [bp + 30]	; 3: -118 70 30
x5156:	cmp al, 100	; 2: 60 100
x5158:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x5160:	cmp al, 105	; 2: 60 105
x5162:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x5164:	cmp al, 99	; 2: 60 99
x5166:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x5170:	cmp al, 115	; 2: 60 115
x5172:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x5176:	cmp al, 88	; 2: 60 88
x5178:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x5182:	cmp al, 120	; 2: 60 120
x5184:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x5188:	cmp al, 98	; 2: 60 98
x5190:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x5194:	cmp al, 111	; 2: 60 111
x5196:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x5200:	cmp al, 117	; 2: 60 117
x5202:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x5206:	cmp al, 71	; 2: 60 71
x5208:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x5212:	cmp al, 103	; 2: 60 103
x5214:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x5218:	cmp al, 69	; 2: 60 69
x5220:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x5224:	cmp al, 101	; 2: 60 101
x5226:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x5230:	cmp al, 102	; 2: 60 102
x5232:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x5236:	cmp al, 112	; 2: 60 112
x5238:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x5242:	cmp al, 110	; 2: 60 110
x5244:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x5248:	cmp al, 37	; 2: 60 37
x5250:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x5254:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x5257:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x5261:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x5263:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary1941 = arg_list - 2
x5267:	mov si, [bp + 8]	; 3: -117 118 8
x5270:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary1942 = int_to_int £temporary1941 (Signed_Int -> Pointer)

printArgument$25:	; £temporary1943 -> £temporary1942 = *£temporary1942

printArgument$26:	; £temporary1944 = int_to_int £temporary1943 -> £temporary1942 (Signed_Int -> Signed_Short_Int)
x5273:	mov ax, [si]	; 2: -117 4
x5275:	cmp ax, 0	; 3: -125 -8 0
x5278:	jge printArgument$27	; 2: 125 4
x5280:	neg ax	; 2: -9 -40
x5282:	neg al	; 2: -10 -40

printArgument$27:	; £temporary1945 = int_to_int £temporary1944 (Signed_Short_Int -> Signed_Long_Int)
x5284:	and eax, 255	; 6: 102 37 -1 0 0 0
x5290:	cmp al, 0	; 2: 60 0
x5292:	jge printArgument$28	; 2: 125 5
x5294:	neg al	; 2: -10 -40
x5296:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary1945
x5299:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x5303:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x5305:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x5309:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x5311:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary1947 = arg_list - 4
x5315:	mov si, [bp + 8]	; 3: -117 118 8
x5318:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary1948 = int_to_int £temporary1947 (Signed_Int -> Pointer)

printArgument$34:	; £temporary1949 -> £temporary1948 = *£temporary1948

printArgument$35:	; longValue = £temporary1949 -> £temporary1948
x5321:	mov eax, [si]	; 3: 102 -117 4
x5324:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x5328:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x5330:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary1951 = arg_list - 2
x5334:	mov si, [bp + 8]	; 3: -117 118 8
x5337:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary1952 = int_to_int £temporary1951 (Signed_Int -> Pointer)

printArgument$40:	; £temporary1953 -> £temporary1952 = *£temporary1952

printArgument$41:	; £temporary1954 = int_to_int £temporary1953 -> £temporary1952 (Signed_Int -> Signed_Long_Int)
x5340:	mov ax, [si]	; 2: -117 4
x5342:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x5348:	cmp ax, 0	; 3: -125 -8 0
x5351:	jge printArgument$42	; 2: 125 5
x5353:	neg ax	; 2: -9 -40
x5355:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary1954
x5358:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x5362:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x5366:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary1958 -> negativePtr = *negativePtr
x5368:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x5371:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x5376:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary1960 = 1
x5378:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x5381:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary1960 = 0
x5383:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary1958 -> negativePtr = £temporary1960
x5386:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x5388:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x5392:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x5394:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x5398:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x5402:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 40 21
x5407:	mov [bp + 50], bp	; 3: -119 110 50
x5410:	add bp, 48	; 3: -125 -59 48
x5413:	jmp labs	; 3: -23 5 5

printArgument$54:	; post call

printArgument$55:	; £temporary1963 = return_value

printArgument$56:	; longValue = £temporary1963
x5416:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x5420:	mov ax, [bp + 8]	; 3: -117 70 8
x5423:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x5426:	mov ax, [bp + 16]	; 3: -117 70 16
x5429:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary1964 = &precision
x5432:	mov si, bp	; 2: -119 -18
x5434:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary1964, offset 10
x5437:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x5440:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 78 21
x5445:	mov [bp + 50], bp	; 3: -119 110 50
x5448:	add bp, 48	; 3: -125 -59 48
x5451:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; post call

printArgument$64:	; £temporary1965 = return_value

printArgument$65:	; arg_list = £temporary1965
x5454:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x5457:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x5461:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x5465:	mov ax, [bp + 10]	; 3: -117 70 10
x5468:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x5471:	mov ax, [bp + 12]	; 3: -117 70 12
x5474:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x5477:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 115 21
x5482:	mov [bp + 50], bp	; 3: -119 110 50
x5485:	add bp, 48	; 3: -125 -59 48
x5488:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x5491:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x5494:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary1968 = arg_list - 2
x5498:	mov si, [bp + 8]	; 3: -117 118 8
x5501:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary1969 = int_to_int £temporary1968 (Signed_Int -> Pointer)

printArgument$76:	; £temporary1970 -> £temporary1969 = *£temporary1969

printArgument$77:	; £temporary1971 = int_to_int £temporary1970 -> £temporary1969 (Signed_Int -> Signed_Char)
x5504:	mov ax, [si]	; 2: -117 4
x5506:	cmp ax, 0	; 3: -125 -8 0
x5509:	jge printArgument$78	; 2: 125 4
x5511:	neg ax	; 2: -9 -40
x5513:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary1971
x5515:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x5518:	mov ax, [bp + 8]	; 3: -117 70 8
x5521:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x5524:	mov ax, [bp + 16]	; 3: -117 70 16
x5527:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary1972 = &precision
x5530:	mov si, bp	; 2: -119 -18
x5532:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary1972, offset 10
x5535:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x5538:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 -80 21
x5543:	mov [bp + 46], bp	; 3: -119 110 46
x5546:	add bp, 44	; 3: -125 -59 44
x5549:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; post call

printArgument$86:	; £temporary1973 = return_value

printArgument$87:	; arg_list = £temporary1973
x5552:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x5555:	mov al, [bp + 31]	; 3: -118 70 31
x5558:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x5561:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 -57 21
x5566:	mov [bp + 46], bp	; 3: -119 110 46
x5569:	add bp, 44	; 3: -125 -59 44
x5572:	jmp printChar	; 3: -23 101 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x5575:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x5578:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary1976 = arg_list - 2
x5582:	mov si, [bp + 8]	; 3: -117 118 8
x5585:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary1977 = int_to_int £temporary1976 (Signed_Int -> Pointer)

printArgument$96:	; £temporary1978 -> £temporary1977 = *£temporary1977

printArgument$97:	; stringValue = £temporary1978 -> £temporary1977
x5588:	mov ax, [si]	; 2: -117 4
x5590:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x5593:	mov ax, [bp + 8]	; 3: -117 70 8
x5596:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x5599:	mov ax, [bp + 16]	; 3: -117 70 16
x5602:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary1979 = &precision
x5605:	mov si, bp	; 2: -119 -18
x5607:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary1979, offset 10
x5610:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x5613:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 -5 21
x5618:	mov [bp + 48], bp	; 3: -119 110 48
x5621:	add bp, 46	; 3: -125 -59 46
x5624:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; post call

printArgument$105:	; £temporary1980 = return_value

printArgument$106:	; arg_list = £temporary1980
x5627:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x5630:	mov ax, [bp + 44]	; 3: -117 70 44
x5633:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x5636:	mov ax, [bp + 18]	; 3: -117 70 18
x5639:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x5642:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 24 22
x5647:	mov [bp + 48], bp	; 3: -119 110 48
x5650:	add bp, 46	; 3: -125 -59 46
x5653:	jmp printString	; 3: -23 -36 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x5656:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x5659:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x5663:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary1996 = 10
x5665:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x5671:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x5673:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x5677:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary1992 = 8
x5679:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x5685:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x5687:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x5691:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary1988 = 2
x5693:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x5699:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary1988 = 16
x5701:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary1992 = £temporary1988

printArgument$124:	; £temporary1996 = £temporary1992

printArgument$125:	; base = £temporary1996
x5707:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x5711:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x5715:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x5717:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary1998 = arg_list - 2
x5721:	mov si, [bp + 8]	; 3: -117 118 8
x5724:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary1999 = int_to_int £temporary1998 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2000 -> £temporary1999 = *£temporary1999

printArgument$131:	; £temporary2001 = int_to_int £temporary2000 -> £temporary1999 (Unsigned_Int -> Unsigned_Short_Int)
x5727:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2002 = int_to_int £temporary2001 (Unsigned_Short_Int -> Unsigned_Long_Int)
x5729:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2002
x5735:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x5739:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x5741:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x5745:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x5747:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2004 = arg_list - 4
x5751:	mov si, [bp + 8]	; 3: -117 118 8
x5754:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2005 = int_to_int £temporary2004 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2006 -> £temporary2005 = *£temporary2005

printArgument$140:	; value = £temporary2006 -> £temporary2005
x5757:	mov eax, [si]	; 3: 102 -117 4
x5760:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x5764:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x5766:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2008 = arg_list - 2
x5770:	mov si, [bp + 8]	; 3: -117 118 8
x5773:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2009 = int_to_int £temporary2008 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2010 -> £temporary2009 = *£temporary2009

printArgument$146:	; £temporary2011 = int_to_int £temporary2010 -> £temporary2009 (Unsigned_Int -> Unsigned_Long_Int)
x5776:	mov ax, [si]	; 2: -117 4
x5778:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2011
x5784:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x5788:	mov ax, [bp + 8]	; 3: -117 70 8
x5791:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x5794:	mov ax, [bp + 16]	; 3: -117 70 16
x5797:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2014 = &precision
x5800:	mov si, bp	; 2: -119 -18
x5802:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2014, offset 10
x5805:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x5808:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 -66 22
x5813:	mov [bp + 54], bp	; 3: -119 110 54
x5816:	add bp, 52	; 3: -125 -59 52
x5819:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; post call

printArgument$155:	; £temporary2015 = return_value

printArgument$156:	; arg_list = £temporary2015
x5822:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x5825:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x5829:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x5833:	mov ax, [bp + 10]	; 3: -117 70 10
x5836:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x5839:	mov ax, [bp + 12]	; 3: -117 70 12
x5842:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x5845:	mov ax, [bp + 14]	; 3: -117 70 14
x5848:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x5851:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x5855:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2016 = int_to_int c (Signed_Char -> Signed_Int)
x5859:	mov al, [bp + 30]	; 3: -118 70 30
x5862:	and ax, 255	; 3: 37 -1 0
x5865:	cmp al, 0	; 2: 60 0
x5867:	jge printArgument$165	; 2: 125 4
x5869:	neg al	; 2: -10 -40
x5871:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2016, offset 26
x5873:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x5876:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 2 23
x5881:	mov [bp + 74], bp	; 3: -119 110 74
x5884:	add bp, 72	; 3: -125 -59 72
x5887:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; post call

printArgument$168:	; £temporary2017 = return_value

printArgument$169:	; parameter £temporary2017, offset 20
x5890:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x5893:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 19 23
x5898:	mov [bp + 54], bp	; 3: -119 110 54
x5901:	add bp, 52	; 3: -125 -59 52
x5904:	jmp printUnsignedLong	; 3: -23 34 12

printArgument$171:	; post call

printArgument$172:	; goto 359
x5907:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x5910:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x5914:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x5916:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2020 = arg_list - 8
x5920:	mov si, [bp + 8]	; 3: -117 118 8
x5923:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2021 = int_to_int £temporary2020 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2022 -> £temporary2021 = *£temporary2021

printArgument$178:	; push float £temporary2022 -> £temporary2021
x5926:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x5928:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x5931:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x5934:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x5937:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x5942:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x5947:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x5952:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x5957:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 83 23
x5962:	mov [bp + 46], bp	; 3: -119 110 46
x5965:	add bp, 44	; 3: -125 -59 44
x5968:	jmp printLongDoublePlain	; 3: -23 -115 13

printArgument$188:	; post call

printArgument$189:	; goto 196
x5971:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x5973:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2025 = arg_list - 8
x5977:	mov si, [bp + 8]	; 3: -117 118 8
x5980:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2026 = int_to_int £temporary2025 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2027 -> £temporary2026 = *£temporary2026

printArgument$194:	; push float £temporary2027 -> £temporary2026
x5983:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x5985:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x5988:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x5992:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2031 -> negativePtr = *negativePtr
x5994:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x5997:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x6000:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x6002:	fcompp	; 2: -34 -39
x6004:	fstsw ax	; 3: -101 -33 -32
x6007:	sahf	; 1: -98
x6008:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2033 = 1
x6010:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x6013:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2033 = 0
x6015:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2031 -> negativePtr = £temporary2033
x6018:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x6020:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x6024:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x6026:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x6029:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x6032:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 -98 23
x6037:	mov [bp + 46], bp	; 3: -119 110 46
x6040:	add bp, 44	; 3: -125 -59 44
x6043:	jmp fabs	; 3: -23 -122 14

printArgument$210:	; post call

printArgument$211:	; £temporary2036 = return_value

printArgument$212:	; pop float longDoubleValue
x6046:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x6049:	mov ax, [bp + 8]	; 3: -117 70 8
x6052:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x6055:	mov ax, [bp + 16]	; 3: -117 70 16
x6058:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2037 = &precision
x6061:	mov si, bp	; 2: -119 -18
x6063:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2037, offset 10
x6066:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x6069:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 -61 23
x6074:	mov [bp + 46], bp	; 3: -119 110 46
x6077:	add bp, 44	; 3: -125 -59 44
x6080:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; post call

printArgument$220:	; £temporary2038 = return_value

printArgument$221:	; arg_list = £temporary2038
x6083:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x6086:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x6090:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x6092:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x6095:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x6098:	mov ax, [bp + 10]	; 3: -117 70 10
x6101:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x6104:	mov ax, [bp + 12]	; 3: -117 70 12
x6107:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x6110:	mov ax, [bp + 14]	; 3: -117 70 14
x6113:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x6116:	mov ax, [bp + 18]	; 3: -117 70 18
x6119:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x6122:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 -8 23
x6127:	mov [bp + 46], bp	; 3: -119 110 46
x6130:	add bp, 44	; 3: -125 -59 44
x6133:	jmp printLongDoublePlain	; 3: -23 -24 12

printArgument$231:	; post call

printArgument$232:	; goto 359
x6136:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2041 = int_to_int c (Signed_Char -> Signed_Int)
x6139:	mov al, [bp + 30]	; 3: -118 70 30
x6142:	and ax, 255	; 3: 37 -1 0
x6145:	cmp al, 0	; 2: 60 0
x6147:	jge printArgument$235	; 2: 125 4
x6149:	neg al	; 2: -10 -40
x6151:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2041, offset 6
x6153:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x6156:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 26 24
x6161:	mov [bp + 46], bp	; 3: -119 110 46
x6164:	add bp, 44	; 3: -125 -59 44
x6167:	jmp tolower	; 3: -23 44 14

printArgument$237:	; post call

printArgument$238:	; £temporary2042 = return_value

printArgument$239:	; if £temporary2042 != 101 goto 257
x6170:	cmp bx, 101	; 3: -125 -5 101
x6173:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x6175:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x6178:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x6181:	mov ax, [bp + 10]	; 3: -117 70 10
x6184:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x6187:	mov ax, [bp + 12]	; 3: -117 70 12
x6190:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x6193:	mov ax, [bp + 14]	; 3: -117 70 14
x6196:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x6199:	mov ax, [bp + 18]	; 3: -117 70 18
x6202:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2044 = int_to_int c (Signed_Char -> Signed_Int)
x6205:	mov al, [bp + 30]	; 3: -118 70 30
x6208:	and ax, 255	; 3: 37 -1 0
x6211:	cmp al, 0	; 2: 60 0
x6213:	jge printArgument$249	; 2: 125 4
x6215:	neg al	; 2: -10 -40
x6217:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2044, offset 28
x6219:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x6222:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 92 24
x6227:	mov [bp + 68], bp	; 3: -119 110 68
x6230:	add bp, 66	; 3: -125 -59 66
x6233:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; post call

printArgument$252:	; £temporary2045 = return_value

printArgument$253:	; parameter £temporary2045, offset 22
x6236:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x6239:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 109 24
x6244:	mov [bp + 46], bp	; 3: -119 110 46
x6247:	add bp, 44	; 3: -125 -59 44
x6250:	jmp printLongDoubleExpo	; 3: -23 122 14

printArgument$255:	; post call

printArgument$256:	; goto 359
x6253:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x6256:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x6259:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x6262:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 -124 24
x6267:	mov [bp + 46], bp	; 3: -119 110 46
x6270:	add bp, 44	; 3: -125 -59 44
x6273:	jmp fabs	; 3: -23 -96 13

printArgument$262:	; post call

printArgument$263:	; £temporary2047 = return_value

printArgument$264:	; parameter £temporary2047, offset 6
x6276:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x6279:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 -107 24
x6284:	mov [bp + 46], bp	; 3: -119 110 46
x6287:	add bp, 44	; 3: -125 -59 44
x6290:	jmp log10	; 3: -23 -71 15

printArgument$266:	; post call

printArgument$267:	; £temporary2048 = return_value

printArgument$268:	; £temporary2049 = float_to_int £temporary2048 (Double -> Signed_Int)
x6293:	fistp word [container2bytes#]	; 4: -33 30 43 26
x6297:	mov ax, [container2bytes#]	; 3: -95 43 26

printArgument$269:	; expo = £temporary2049
x6300:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x6303:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x6307:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x6309:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x6313:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x6315:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x6318:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x6321:	mov ax, [bp + 10]	; 3: -117 70 10
x6324:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x6327:	mov ax, [bp + 12]	; 3: -117 70 12
x6330:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x6333:	mov ax, [bp + 14]	; 3: -117 70 14
x6336:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x6339:	mov ax, [bp + 18]	; 3: -117 70 18
x6342:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x6345:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 -41 24
x6350:	mov [bp + 48], bp	; 3: -119 110 48
x6353:	add bp, 46	; 3: -125 -59 46
x6356:	jmp printLongDoublePlain	; 3: -23 9 12

printArgument$280:	; post call

printArgument$281:	; goto 359
x6359:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x6362:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x6365:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x6368:	mov ax, [bp + 10]	; 3: -117 70 10
x6371:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x6374:	mov ax, [bp + 12]	; 3: -117 70 12
x6377:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x6380:	mov ax, [bp + 14]	; 3: -117 70 14
x6383:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x6386:	mov ax, [bp + 18]	; 3: -117 70 18
x6389:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2054 = int_to_int c (Signed_Char -> Signed_Int)
x6392:	mov al, [bp + 30]	; 3: -118 70 30
x6395:	and ax, 255	; 3: 37 -1 0
x6398:	cmp al, 0	; 2: 60 0
x6400:	jge printArgument$291	; 2: 125 4
x6402:	neg al	; 2: -10 -40
x6404:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2054, offset 28
x6406:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x6409:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 23 25
x6414:	mov [bp + 70], bp	; 3: -119 110 70
x6417:	add bp, 68	; 3: -125 -59 68
x6420:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; post call

printArgument$294:	; £temporary2055 = return_value

printArgument$295:	; parameter £temporary2055, offset 22
x6423:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x6426:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 40 25
x6431:	mov [bp + 48], bp	; 3: -119 110 48
x6434:	add bp, 46	; 3: -125 -59 46
x6437:	jmp printLongDoubleExpo	; 3: -23 -65 13

printArgument$297:	; post call

printArgument$298:	; goto 359
x6440:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x6443:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2058 = arg_list - 2
x6447:	mov si, [bp + 8]	; 3: -117 118 8
x6450:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2059 = int_to_int £temporary2058 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2060 -> £temporary2059 = *£temporary2059

printArgument$303:	; ptrValue = £temporary2060 -> £temporary2059
x6453:	mov ax, [si]	; 2: -117 4
x6455:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x6458:	mov ax, [bp + 8]	; 3: -117 70 8
x6461:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x6464:	mov ax, [bp + 16]	; 3: -117 70 16
x6467:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2061 = &precision
x6470:	mov si, bp	; 2: -119 -18
x6472:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2061, offset 10
x6475:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x6478:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 92 25
x6483:	mov [bp + 46], bp	; 3: -119 110 46
x6486:	add bp, 44	; 3: -125 -59 44
x6489:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; post call

printArgument$311:	; £temporary2062 = return_value

printArgument$312:	; arg_list = £temporary2062
x6492:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2063 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x6495:	mov ax, [bp + 42]	; 3: -117 70 42
x6498:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2063, offset 6
x6504:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x6508:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x6513:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x6518:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x6523:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x6531:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x6536:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 -106 25
x6541:	mov [bp + 46], bp	; 3: -119 110 46
x6544:	add bp, 44	; 3: -125 -59 44
x6547:	jmp printUnsignedLong	; 3: -23 -97 9

printArgument$322:	; post call

printArgument$323:	; goto 359
x6550:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x6553:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2066 = arg_list - 2
x6557:	mov si, [bp + 8]	; 3: -117 118 8
x6560:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2067 = int_to_int £temporary2066 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2068 -> £temporary2067 = *£temporary2067

printArgument$328:	; ptrValue = £temporary2068 -> £temporary2067
x6563:	mov ax, [si]	; 2: -117 4
x6565:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x6568:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2070 = arg_list - 2
x6572:	mov si, [bp + 8]	; 3: -117 118 8
x6575:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2071 = int_to_int £temporary2070 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2072 -> £temporary2071 = *£temporary2071

printArgument$333:	; intPtr = £temporary2072 -> £temporary2071
x6578:	mov ax, [si]	; 2: -117 4
x6580:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x6583:	mov ax, [bp + 8]	; 3: -117 70 8
x6586:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x6589:	mov ax, [bp + 16]	; 3: -117 70 16
x6592:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2073 = &precision
x6595:	mov si, bp	; 2: -119 -18
x6597:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2073, offset 10
x6600:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x6603:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 -39 25
x6608:	mov [bp + 46], bp	; 3: -119 110 46
x6611:	add bp, 44	; 3: -125 -59 44
x6614:	nop	; 1: -112
x6615:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; post call

printArgument$341:	; £temporary2074 = return_value

printArgument$342:	; arg_list = £temporary2074
x6617:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2075 -> intPtr = *intPtr
x6620:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2075 -> intPtr = g_outChars
x6623:	mov ax, [g_outChars]	; 3: -95 21 20
x6626:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x6628:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x6630:	mov ax, [bp + 8]	; 3: -117 70 8
x6633:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x6636:	mov ax, [bp + 16]	; 3: -117 70 16
x6639:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2076 = &precision
x6642:	mov si, bp	; 2: -119 -18
x6644:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2076, offset 10
x6647:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x6650:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 8 26
x6655:	mov [bp + 46], bp	; 3: -119 110 46
x6658:	add bp, 44	; 3: -125 -59 44
x6661:	nop	; 1: -112
x6662:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; post call

printArgument$353:	; £temporary2077 = return_value

printArgument$354:	; arg_list = £temporary2077
x6664:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x6667:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x6671:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 29 26
x6676:	mov [bp + 46], bp	; 3: -119 110 46
x6679:	add bp, 44	; 3: -125 -59 44
x6682:	jmp printChar	; 3: -23 15 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x6685:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x6688:	mov ax, [bp]	; 3: -117 70 0
x6691:	mov di, [bp + 4]	; 3: -117 126 4
x6694:	mov bp, [bp + 2]	; 3: -117 110 2
x6697:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

container2bytes#:
x6699:	db 0, 0	; 2: 0 0

labs:	; if value >= 0 goto 4
x6701:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6706:	jge labs$4	; 2: 125 9

labs$1:	; £temporary2543 = -value
x6708:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x6712:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary2547 = £temporary2543

labs$3:	; goto 5
x6715:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary2547 = value
x6717:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary2547

labs$6:	; return
x6721:	mov ax, [bp]	; 3: -117 70 0
x6724:	mov di, [bp + 4]	; 3: -117 126 4
x6727:	mov bp, [bp + 2]	; 3: -117 110 2
x6730:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x6732:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6736:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary1921 -> widthPtr = *widthPtr
x6738:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary1921 -> widthPtr != -1 goto 9
x6741:	cmp word [si], -1	; 3: -125 60 -1
x6744:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary1924 -> widthPtr = *widthPtr
x6746:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x6749:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary1926 = arg_list - 2
x6753:	mov di, [bp + 6]	; 3: -117 126 6
x6756:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary1927 = int_to_int £temporary1926 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary1928 -> £temporary1927 = *£temporary1927

checkWidthAndPrecision$8:	; £temporary1924 -> widthPtr = £temporary1928 -> £temporary1927
x6759:	mov ax, [di]	; 2: -117 5
x6761:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x6763:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6767:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary1930 -> precisionPtr = *precisionPtr
x6769:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary1930 -> precisionPtr != -1 goto 18
x6772:	cmp word [si], -1	; 3: -125 60 -1
x6775:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary1933 -> precisionPtr = *precisionPtr
x6777:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x6780:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary1935 = arg_list - 2
x6784:	mov di, [bp + 6]	; 3: -117 126 6
x6787:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary1936 = int_to_int £temporary1935 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary1937 -> £temporary1936 = *£temporary1936

checkWidthAndPrecision$17:	; £temporary1933 -> precisionPtr = £temporary1937 -> £temporary1936
x6790:	mov ax, [di]	; 2: -117 5
x6792:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x6794:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x6797:	mov ax, [bp]	; 3: -117 70 0
x6800:	mov di, [bp + 4]	; 3: -117 126 4
x6803:	mov bp, [bp + 2]	; 3: -117 110 2
x6806:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x6808:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6813:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1776 = -longValue
x6815:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6819:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1776
x6822:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x6826:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x6830:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 -68 26
x6835:	mov [bp + 16], bp	; 3: -119 110 16
x6838:	add bp, 14	; 3: -125 -59 14
x6841:	nop	; 1: -112
x6842:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x6844:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x6846:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x6850:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x6852:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x6856:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 -42 26
x6861:	mov [bp + 16], bp	; 3: -119 110 16
x6864:	add bp, 14	; 3: -125 -59 14
x6867:	nop	; 1: -112
x6868:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x6870:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x6872:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x6876:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x6878:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x6882:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 -16 26
x6887:	mov [bp + 16], bp	; 3: -119 110 16
x6890:	add bp, 14	; 3: -125 -59 14
x6893:	nop	; 1: -112
x6894:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x6896:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6901:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x6903:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x6907:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 9 27
x6912:	mov [bp + 16], bp	; 3: -119 110 16
x6915:	add bp, 14	; 3: -125 -59 14
x6918:	nop	; 1: -112
x6919:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x6921:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x6923:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6927:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x6931:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 33 27
x6936:	mov [bp + 16], bp	; 3: -119 110 16
x6939:	add bp, 14	; 3: -125 -59 14
x6942:	nop	; 1: -112
x6943:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x6945:	mov ax, [bp]	; 3: -117 70 0
x6948:	mov di, [bp + 4]	; 3: -117 126 4
x6951:	mov bp, [bp + 2]	; 3: -117 110 2
x6954:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x6956:	mov ax, [g_outStatus]	; 3: -95 -63 14
x6959:	cmp ax, 0	; 3: -125 -8 0
x6962:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x6964:	cmp ax, 1	; 3: -125 -8 1
x6967:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x6969:	cmp ax, 2	; 3: -125 -8 2
x6972:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x6974:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1718 = int_to_int g_outDevice (Pointer -> Pointer)
x6976:	mov ax, [g_outDevice]	; 3: -95 -61 14

printChar$6:	; stream = £temporary1718
x6979:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x6982:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1721 -> stream = *stream, offset 2
x6984:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1721 -> stream
x6987:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x6990:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1724 = &c
x6993:	mov dx, bp	; 2: -119 -22
x6995:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1724

printChar$13:	; interrupt 33
x6998:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x7000:	inc word [g_outChars]	; 4: -1 6 21 20

printChar$15:	; goto 25
x7004:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1726 = int_to_int g_outDevice (Pointer -> Pointer)
x7006:	mov ax, [g_outDevice]	; 3: -95 -61 14

printChar$17:	; outString = £temporary1726
x7009:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1727 = g_outChars
x7012:	mov ax, [g_outChars]	; 3: -95 21 20

printChar$19:	; ++g_outChars
x7015:	inc word [g_outChars]	; 4: -1 6 21 20

printChar$20:	; £temporary1729 = outString + £temporary1727
x7019:	mov si, [bp + 9]	; 3: -117 118 9
x7022:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1728 -> £temporary1729 = *£temporary1729

printChar$22:	; £temporary1728 -> £temporary1729 = c
x7024:	mov al, [bp + 6]	; 3: -118 70 6
x7027:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x7029:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x7031:	inc word [g_outChars]	; 4: -1 6 21 20

printChar$25:	; return
x7035:	mov ax, [bp]	; 3: -117 70 0
x7038:	mov di, [bp + 4]	; 3: -117 126 4
x7041:	mov bp, [bp + 2]	; 3: -117 110 2
x7044:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x7046:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x7051:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1766 = longValue % 10
x7053:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7057:	xor edx, edx	; 3: 102 49 -46
x7060:	idiv dword [int4$10#]	; 5: 102 -9 62 -16 27

printLongIntRec$2:	; £temporary1767 = int_to_int £temporary1766 (Signed_Long_Int -> Signed_Int)
x7065:	cmp edx, 0	; 4: 102 -125 -6 0
x7069:	jge printLongIntRec$3	; 2: 125 5
x7071:	neg edx	; 3: 102 -9 -38
x7074:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1767
x7076:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1768 = longValue / 10
x7079:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x7083:	xor edx, edx	; 3: 102 49 -46
x7086:	idiv dword [int4$10#]	; 5: 102 -9 62 -16 27

printLongIntRec$6:	; parameter £temporary1768, offset 6
x7091:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x7095:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 -59 27
x7100:	mov [bp + 14], bp	; 3: -119 110 14
x7103:	add bp, 12	; 3: -125 -59 12
x7106:	nop	; 1: -112
x7107:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1770 = digit + 48
x7109:	mov ax, [bp + 10]	; 3: -117 70 10
x7112:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1771 = int_to_int £temporary1770 (Signed_Int -> Signed_Char)
x7115:	cmp ax, 0	; 3: -125 -8 0
x7118:	jge printLongIntRec$12	; 2: 125 4
x7120:	neg ax	; 2: -9 -40
x7122:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1771, offset 6
x7124:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x7127:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 -27 27
x7132:	mov [bp + 14], bp	; 3: -119 110 14
x7135:	add bp, 12	; 3: -125 -59 12
x7138:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x7141:	mov ax, [bp]	; 3: -117 70 0
x7144:	mov di, [bp + 4]	; 3: -117 126 4
x7147:	mov bp, [bp + 2]	; 3: -117 110 2
x7150:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x7152:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x7156:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x7160:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x7162:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7166:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x7168:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1735 = s + index
x7173:	mov si, [bp + 6]	; 3: -117 118 6
x7176:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1734 -> £temporary1735 = *£temporary1735

printString$5:	; if £temporary1734 -> £temporary1735 == 0 goto 53
x7179:	cmp byte [si], 0	; 3: -128 60 0
x7182:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1739 = s + index
x7186:	mov si, [bp + 6]	; 3: -117 118 6
x7189:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1738 -> £temporary1739 = *£temporary1739

printString$9:	; parameter £temporary1738 -> £temporary1739, offset 6
x7192:	mov al, [si]	; 2: -118 4
x7194:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x7197:	mov word [bp + 12], printString$11	; 5: -57 70 12 43 28
x7202:	mov [bp + 14], bp	; 3: -119 110 14
x7205:	add bp, 12	; 3: -125 -59 12
x7208:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x7211:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x7214:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x7216:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1741 = precision
x7221:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x7224:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1741 <= 0 goto 53
x7227:	cmp ax, 0	; 3: -125 -8 0
x7230:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1744 = s + index
x7234:	mov si, [bp + 6]	; 3: -117 118 6
x7237:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1743 -> £temporary1744 = *£temporary1744

printString$20:	; if £temporary1743 -> £temporary1744 == 0 goto 53
x7240:	cmp byte [si], 0	; 3: -128 60 0
x7243:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1749 = s + index
x7247:	mov si, [bp + 6]	; 3: -117 118 6
x7250:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1748 -> £temporary1749 = *£temporary1749

printString$24:	; parameter £temporary1748 -> £temporary1749, offset 6
x7253:	mov al, [si]	; 2: -118 4
x7255:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x7258:	mov word [bp + 12], printString$26	; 5: -57 70 12 104 28
x7263:	mov [bp + 14], bp	; 3: -119 110 14
x7266:	add bp, 12	; 3: -125 -59 12
x7269:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x7272:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x7275:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x7277:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x7281:	mov word [bp + 10], printString$32	; 5: -57 70 10 127 28
x7286:	mov [bp + 12], bp	; 3: -119 110 12
x7289:	add bp, 10	; 3: -125 -59 10
x7292:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x7295:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x7299:	mov word [bp + 10], printString$36	; 5: -57 70 10 -111 28
x7304:	mov [bp + 12], bp	; 3: -119 110 12
x7307:	add bp, 10	; 3: -125 -59 10
x7310:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x7313:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x7317:	mov word [bp + 10], printString$40	; 5: -57 70 10 -93 28
x7322:	mov [bp + 12], bp	; 3: -119 110 12
x7325:	add bp, 10	; 3: -125 -59 10
x7328:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x7331:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x7335:	mov word [bp + 10], printString$44	; 5: -57 70 10 -75 28
x7340:	mov [bp + 12], bp	; 3: -119 110 12
x7343:	add bp, 10	; 3: -125 -59 10
x7346:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x7349:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x7353:	mov word [bp + 10], printString$48	; 5: -57 70 10 -57 28
x7358:	mov [bp + 12], bp	; 3: -119 110 12
x7361:	add bp, 10	; 3: -125 -59 10
x7364:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x7367:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x7371:	mov word [bp + 10], printString$52	; 5: -57 70 10 -39 28
x7376:	mov [bp + 12], bp	; 3: -119 110 12
x7379:	add bp, 10	; 3: -125 -59 10
x7382:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x7385:	mov ax, [bp]	; 3: -117 70 0
x7388:	mov di, [bp + 4]	; 3: -117 126 4
x7391:	mov bp, [bp + 2]	; 3: -117 110 2
x7394:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x7396:	mov word [bp + 8], isupper$2	; 5: -57 70 8 -14 28
x7401:	mov [bp + 10], bp	; 3: -119 110 10
x7404:	add bp, 8	; 3: -125 -59 8
x7407:	nop	; 1: -112
x7408:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary372 = return_value

isupper$4:	; localeConvPtr = £temporary372
x7410:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x7413:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7417:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary374 -> localeConvPtr = *localeConvPtr, offset 14
x7419:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary374 -> localeConvPtr, offset 6
x7422:	mov ax, [si + 14]	; 3: -117 68 14
x7425:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x7428:	mov ax, [bp + 6]	; 3: -117 70 6
x7431:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x7434:	mov word [bp + 10], isupper$11	; 5: -57 70 10 24 29
x7439:	mov [bp + 12], bp	; 3: -119 110 12
x7442:	add bp, 10	; 3: -125 -59 10
x7445:	jmp strchr	; 3: -23 -51 5

isupper$11:	; post call

isupper$12:	; £temporary375 = return_value

isupper$13:	; if £temporary375 == 0 goto 16
x7448:	cmp bx, 0	; 3: -125 -5 0
x7451:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary377 = 1
x7453:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x7456:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary377 = 0
x7458:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary377

isupper$18:	; return
x7461:	mov ax, [bp]	; 3: -117 70 0
x7464:	mov di, [bp + 4]	; 3: -117 126 4
x7467:	mov bp, [bp + 2]	; 3: -117 110 2
x7470:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x7472:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x7476:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x7478:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x7482:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary381 = 1
x7484:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x7487:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary381 = 0
x7489:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary381

isupper$25:	; return
x7492:	mov ax, [bp]	; 3: -117 70 0
x7495:	mov di, [bp + 4]	; 3: -117 126 4
x7498:	mov bp, [bp + 2]	; 3: -117 110 2
x7501:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x7503:	cmp word [@23$g_currStructPtr], 0	; 5: -125 62 109 29 0
x7508:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary521 -> g_currStructPtr = *g_currStructPtr, offset 2
x7510:	mov si, [@23$g_currStructPtr]	; 4: -117 54 109 29

localeconv$2:	; £temporary525 = £temporary521 -> g_currStructPtr
x7514:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x7517:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary525 = 0
x7519:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary525

localeconv$6:	; return
x7522:	mov ax, [bp]	; 3: -117 70 0
x7525:	mov di, [bp + 4]	; 3: -117 126 4
x7528:	mov bp, [bp + 2]	; 3: -117 110 2
x7531:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@23$g_currStructPtr:
x7533:	dw @21$sArray	; 2: 111 29

@21$sArray:
x7535:	dw string_# ; 2: 127 29
x7537:	dw @20$sw_EN_utf8	; 2: -128 29
x7539:	dw string_C# ; 2: 109 32
x7541:	dw @14$en_US_utf8	; 2: 111 32
x7543:	dw string_US# ; 2: -33 34
x7545:	dw @14$en_US_utf8	; 2: 111 32
x7547:	dw string_SE# ; 2: -30 34
x7549:	dw @20$sw_EN_utf8	; 2: -128 29

string_#:
x7551:	db 0	; 1: 0

@20$sw_EN_utf8:
x7552:	dw 1	; 2: 1 0
x7554:	dw 2	; 2: 2 0
x7556:	dw @15$swShortDayList ; 2: -110 29
x7558:	dw @16$swLongDayList ; 2: -68 29
x7560:	dw @12$enShortMonthList ; 2: -4 29
x7562:	dw @18$swLongMonthList ; 2: 68 30
x7564:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -78 30
x7566:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -51 30
x7568:	dw @19$swMessageList ; 2: -24 30

@15$swShortDayList:
x7570:	dw string_Son# ; 2: -96 29
x7572:	dw string_Man# ; 2: -92 29
x7574:	dw string_Tis# ; 2: -88 29
x7576:	dw string_Ons# ; 2: -84 29
x7578:	dw string_Tor# ; 2: -80 29
x7580:	dw string_Fre# ; 2: -76 29
x7582:	dw string_Lor# ; 2: -72 29

string_Son#:
x7584:	db "Son", 0	; 4: 83 111 110 0

string_Man#:
x7588:	db "Man", 0	; 4: 77 97 110 0

string_Tis#:
x7592:	db "Tis", 0	; 4: 84 105 115 0

string_Ons#:
x7596:	db "Ons", 0	; 4: 79 110 115 0

string_Tor#:
x7600:	db "Tor", 0	; 4: 84 111 114 0

string_Fre#:
x7604:	db "Fre", 0	; 4: 70 114 101 0

string_Lor#:
x7608:	db "Lor", 0	; 4: 76 111 114 0

@16$swLongDayList:
x7612:	dw string_Sondag# ; 2: -54 29
x7614:	dw string_Mandag# ; 2: -47 29
x7616:	dw string_Tisdag# ; 2: -40 29
x7618:	dw string_Onsdag# ; 2: -33 29
x7620:	dw string_Torsdag# ; 2: -26 29
x7622:	dw string_Fredag# ; 2: -18 29
x7624:	dw string_Lordag# ; 2: -11 29

string_Sondag#:
x7626:	db "Sondag", 0	; 7: 83 111 110 100 97 103 0

string_Mandag#:
x7633:	db "Mandag", 0	; 7: 77 97 110 100 97 103 0

string_Tisdag#:
x7640:	db "Tisdag", 0	; 7: 84 105 115 100 97 103 0

string_Onsdag#:
x7647:	db "Onsdag", 0	; 7: 79 110 115 100 97 103 0

string_Torsdag#:
x7654:	db "Torsdag", 0	; 8: 84 111 114 115 100 97 103 0

string_Fredag#:
x7662:	db "Fredag", 0	; 7: 70 114 101 100 97 103 0

string_Lordag#:
x7669:	db "Lordag", 0	; 7: 76 111 114 100 97 103 0

@12$enShortMonthList:
x7676:	dw string_Jan# ; 2: 20 30
x7678:	dw string_Feb# ; 2: 24 30
x7680:	dw string_Mar# ; 2: 28 30
x7682:	dw string_Apr# ; 2: 32 30
x7684:	dw string_May# ; 2: 36 30
x7686:	dw string_Jun# ; 2: 40 30
x7688:	dw string_Jul# ; 2: 44 30
x7690:	dw string_Aug# ; 2: 48 30
x7692:	dw string_Sep# ; 2: 52 30
x7694:	dw string_Oct# ; 2: 56 30
x7696:	dw string_Nov# ; 2: 60 30
x7698:	dw string_Dec# ; 2: 64 30

string_Jan#:
x7700:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x7704:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x7708:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x7712:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x7716:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x7720:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x7724:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x7728:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x7732:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x7736:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x7740:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x7744:	db "Dec", 0	; 4: 68 101 99 0

@18$swLongMonthList:
x7748:	dw string_Januari# ; 2: 92 30
x7750:	dw string_Februari# ; 2: 100 30
x7752:	dw string_Mars# ; 2: 109 30
x7754:	dw string_April# ; 2: 114 30
x7756:	dw string_Maj# ; 2: 120 30
x7758:	dw string_Juni# ; 2: 124 30
x7760:	dw string_Juli# ; 2: -127 30
x7762:	dw string_Augusit# ; 2: -122 30
x7764:	dw string_September# ; 2: -114 30
x7766:	dw string_Oktober# ; 2: -104 30
x7768:	dw string_November# ; 2: -96 30
x7770:	dw string_December# ; 2: -87 30

string_Januari#:
x7772:	db "Januari", 0	; 8: 74 97 110 117 97 114 105 0

string_Februari#:
x7780:	db "Februari", 0	; 9: 70 101 98 114 117 97 114 105 0

string_Mars#:
x7789:	db "Mars", 0	; 5: 77 97 114 115 0

string_April#:
x7794:	db "April", 0	; 6: 65 112 114 105 108 0

string_Maj#:
x7800:	db "Maj", 0	; 4: 77 97 106 0

string_Juni#:
x7804:	db "Juni", 0	; 5: 74 117 110 105 0

string_Juli#:
x7809:	db "Juli", 0	; 5: 74 117 108 105 0

string_Augusit#:
x7814:	db "Augusit", 0	; 8: 65 117 103 117 115 105 116 0

string_September#:
x7822:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_Oktober#:
x7832:	db "Oktober", 0	; 8: 79 107 116 111 98 101 114 0

string_November#:
x7840:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x7849:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x7858:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x7885:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

@19$swMessageList:
x7912:	dw string_inga20fel# ; 2: 14 31
x7914:	dw string_felaktigt20functionsnummer# ; 2: 23 31
x7916:	dw string_hittar20ej20filen# ; 2: 49 31
x7918:	dw string_hittar20ej20sokvagen# ; 2: 65 31
x7920:	dw string_inget20handtag20tillgangligt# ; 2: 84 31
x7922:	dw string_atkomst20nekad# ; 2: 111 31
x7924:	dw string_utanfor20doman# ; 2: 125 31
x7926:	dw string_utanfor20range# ; 2: -117 31
x7928:	dw string_felaktig20multibyte2Dsekvens# ; 2: -103 31
x7930:	dw string_fel20vid20oppning# ; 2: -76 31
x7932:	dw string_fel20vid20flushing# ; 2: -60 31
x7934:	dw string_fel20vid20stangning# ; 2: -43 31
x7936:	dw string_fel20oppningslage# ; 2: -25 31
x7938:	dw string_fel20vid20skrivning# ; 2: -8 31
x7940:	dw string_fel20vid20lasning# ; 2: 10 32
x7942:	dw string_fel20vid20sokning# ; 2: 26 32
x7944:	dw string_fel20vid20telling# ; 2: 42 32
x7946:	dw string_fel20vid20borttagning20av20fil# ; 2: 58 32
x7948:	dw string_fel20vid20namnbyte20av20fil# ; 2: 85 32

string_inga20fel#:
x7950:	db "inga fel", 0	; 9: 105 110 103 97 32 102 101 108 0

string_felaktigt20functionsnummer#:
x7959:	db "felaktigt functionsnummer", 0	; 26: 102 101 108 97 107 116 105 103 116 32 102 117 110 99 116 105 111 110 115 110 117 109 109 101 114 0

string_hittar20ej20filen#:
x7985:	db "hittar ej filen", 0	; 16: 104 105 116 116 97 114 32 101 106 32 102 105 108 101 110 0

string_hittar20ej20sokvagen#:
x8001:	db "hittar ej sokvagen", 0	; 19: 104 105 116 116 97 114 32 101 106 32 115 111 107 118 97 103 101 110 0

string_inget20handtag20tillgangligt#:
x8020:	db "inget handtag tillgangligt", 0	; 27: 105 110 103 101 116 32 104 97 110 100 116 97 103 32 116 105 108 108 103 97 110 103 108 105 103 116 0

string_atkomst20nekad#:
x8047:	db "atkomst nekad", 0	; 14: 97 116 107 111 109 115 116 32 110 101 107 97 100 0

string_utanfor20doman#:
x8061:	db "utanfor doman", 0	; 14: 117 116 97 110 102 111 114 32 100 111 109 97 110 0

string_utanfor20range#:
x8075:	db "utanfor range", 0	; 14: 117 116 97 110 102 111 114 32 114 97 110 103 101 0

string_felaktig20multibyte2Dsekvens#:
x8089:	db "felaktig multibyte-sekvens", 0	; 27: 102 101 108 97 107 116 105 103 32 109 117 108 116 105 98 121 116 101 45 115 101 107 118 101 110 115 0

string_fel20vid20oppning#:
x8116:	db "fel vid oppning", 0	; 16: 102 101 108 32 118 105 100 32 111 112 112 110 105 110 103 0

string_fel20vid20flushing#:
x8132:	db "fel vid flushing", 0	; 17: 102 101 108 32 118 105 100 32 102 108 117 115 104 105 110 103 0

string_fel20vid20stangning#:
x8149:	db "fel vid stangning", 0	; 18: 102 101 108 32 118 105 100 32 115 116 97 110 103 110 105 110 103 0

string_fel20oppningslage#:
x8167:	db "fel oppningslage", 0	; 17: 102 101 108 32 111 112 112 110 105 110 103 115 108 97 103 101 0

string_fel20vid20skrivning#:
x8184:	db "fel vid skrivning", 0	; 18: 102 101 108 32 118 105 100 32 115 107 114 105 118 110 105 110 103 0

string_fel20vid20lasning#:
x8202:	db "fel vid lasning", 0	; 16: 102 101 108 32 118 105 100 32 108 97 115 110 105 110 103 0

string_fel20vid20sokning#:
x8218:	db "fel vid sokning", 0	; 16: 102 101 108 32 118 105 100 32 115 111 107 110 105 110 103 0

string_fel20vid20telling#:
x8234:	db "fel vid telling", 0	; 16: 102 101 108 32 118 105 100 32 116 101 108 108 105 110 103 0

string_fel20vid20borttagning20av20fil#:
x8250:	db "fel vid borttagning av fil", 0	; 27: 102 101 108 32 118 105 100 32 98 111 114 116 116 97 103 110 105 110 103 32 97 118 32 102 105 108 0

string_fel20vid20namnbyte20av20fil#:
x8277:	db "fel vid namnbyte av fil", 0	; 24: 102 101 108 32 118 105 100 32 110 97 109 110 98 121 116 101 32 97 118 32 102 105 108 0

string_C#:
x8301:	db "C", 0	; 2: 67 0

@14$en_US_utf8:
x8303:	dw -5	; 2: -5 -1
x8305:	dw -4	; 2: -4 -1
x8307:	dw @10$enShortDayList ; 2: -127 32
x8309:	dw @11$enLongDayList ; 2: -85 32
x8311:	dw @12$enShortMonthList ; 2: -4 29
x8313:	dw @13$enLongMonthList ; 2: -14 32
x8315:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -78 30
x8317:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -51 30
x8319:	dw enMessageList ; 2: 58 33

@10$enShortDayList:
x8321:	dw string_Sun# ; 2: -113 32
x8323:	dw string_Mon# ; 2: -109 32
x8325:	dw string_Tue# ; 2: -105 32
x8327:	dw string_Wed# ; 2: -101 32
x8329:	dw string_Thu# ; 2: -97 32
x8331:	dw string_Fri# ; 2: -93 32
x8333:	dw string_Sat# ; 2: -89 32

string_Sun#:
x8335:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x8339:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x8343:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x8347:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x8351:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x8355:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x8359:	db "Sat", 0	; 4: 83 97 116 0

@11$enLongDayList:
x8363:	dw string_Sunday# ; 2: -71 32
x8365:	dw string_Monday# ; 2: -64 32
x8367:	dw string_Tuesday# ; 2: -57 32
x8369:	dw string_Wednesday# ; 2: -49 32
x8371:	dw string_Thursday# ; 2: -39 32
x8373:	dw string_Friday# ; 2: -30 32
x8375:	dw string_Saturday# ; 2: -23 32

string_Sunday#:
x8377:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x8384:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x8391:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x8399:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x8409:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x8418:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x8425:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@13$enLongMonthList:
x8434:	dw string_January# ; 2: 10 33
x8436:	dw string_February# ; 2: 18 33
x8438:	dw string_March# ; 2: 27 33
x8440:	dw string_April# ; 2: 114 30
x8442:	dw string_May# ; 2: 36 30
x8444:	dw string_June# ; 2: 33 33
x8446:	dw string_July# ; 2: 38 33
x8448:	dw string_August# ; 2: 43 33
x8450:	dw string_September# ; 2: -114 30
x8452:	dw string_October# ; 2: 50 33
x8454:	dw string_November# ; 2: -96 30
x8456:	dw string_December# ; 2: -87 30

string_January#:
x8458:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x8466:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x8475:	db "March", 0	; 6: 77 97 114 99 104 0

string_June#:
x8481:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x8486:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x8491:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_October#:
x8498:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

enMessageList:
x8506:	dw string_no20error# ; 2: 98 33
x8508:	dw string_function20number20invalid# ; 2: 107 33
x8510:	dw string_file20not20found# ; 2: -125 33
x8512:	dw string_path20not20found# ; 2: -110 33
x8514:	dw string_no20handle20available# ; 2: -95 33
x8516:	dw string_access20denied# ; 2: -75 33
x8518:	dw string_out20of20domain# ; 2: -61 33
x8520:	dw string_out20of20range# ; 2: -47 33
x8522:	dw string_invalid20multibyte20sequence# ; 2: -34 33
x8524:	dw string_error20while20opening# ; 2: -7 33
x8526:	dw string_error20while20flushing# ; 2: 13 34
x8528:	dw string_error20while20closing# ; 2: 34 34
x8530:	dw string_open20mode20invalid# ; 2: 54 34
x8532:	dw string_error20while20writing# ; 2: 72 34
x8534:	dw string_error20while20reading# ; 2: 92 34
x8536:	dw string_error20while20seeking# ; 2: 112 34
x8538:	dw string_error20while20telling# ; 2: -124 34
x8540:	dw string_error20while20sizing# ; 2: -104 34
x8542:	dw string_error20while20removing20file# ; 2: -85 34
x8544:	dw string_error20while20renaming20file# ; 2: -59 34

string_no20error#:
x8546:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x8555:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x8579:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x8594:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x8609:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x8629:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x8643:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x8657:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x8670:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x8697:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x8717:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x8738:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x8758:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x8776:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x8796:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x8816:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x8836:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x8856:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x8875:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x8901:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_US#:
x8927:	db "US", 0	; 3: 85 83 0

string_SE#:
x8930:	db "SE", 0	; 3: 83 69 0

strchr:	; £temporary3168 = int_to_int i (Signed_Int -> Signed_Char)
x8933:	mov ax, [bp + 8]	; 3: -117 70 8
x8936:	cmp ax, 0	; 3: -125 -8 0
x8939:	jge strchr$1	; 2: 125 4
x8941:	neg ax	; 2: -9 -40
x8943:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary3168
x8945:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x8948:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary3170 = text + index
x8953:	mov si, [bp + 6]	; 3: -117 118 6
x8956:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary3169 -> £temporary3170 = *£temporary3170

strchr$5:	; if £temporary3169 -> £temporary3170 == 0 goto 16
x8959:	cmp byte [si], 0	; 3: -128 60 0
x8962:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary3174 = text + index
x8964:	mov si, [bp + 6]	; 3: -117 118 6
x8967:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary3173 -> £temporary3174 = *£temporary3174

strchr$8:	; if £temporary3173 -> £temporary3174 != c goto 14
x8970:	mov al, [bp + 12]	; 3: -118 70 12
x8973:	cmp [si], al	; 2: 56 4
x8975:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary3177 = text + index
x8977:	mov bx, [bp + 6]	; 3: -117 94 6
x8980:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary3176 -> £temporary3177 = *£temporary3177

strchr$11:	; £temporary3178 = &£temporary3176 -> £temporary3177

strchr$12:	; return_value = £temporary3178

strchr$13:	; return
x8983:	mov ax, [bp]	; 3: -117 70 0
x8986:	mov di, [bp + 4]	; 3: -117 126 4
x8989:	mov bp, [bp + 2]	; 3: -117 110 2
x8992:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x8994:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x8997:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x8999:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x9002:	mov ax, [bp]	; 3: -117 70 0
x9005:	mov di, [bp + 4]	; 3: -117 126 4
x9008:	mov bp, [bp + 2]	; 3: -117 110 2
x9011:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x9013:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x9017:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x9019:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x9023:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 77 35
x9028:	mov [bp + 24], bp	; 3: -119 110 24
x9031:	add bp, 22	; 3: -125 -59 22
x9034:	jmp printChar	; 3: -23 -33 -9

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x9037:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x9041:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x9043:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x9047:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 101 35
x9052:	mov [bp + 24], bp	; 3: -119 110 24
x9055:	add bp, 22	; 3: -125 -59 22
x9058:	jmp printChar	; 3: -23 -57 -9

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x9061:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x9065:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x9067:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x9072:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x9074:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x9078:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 -124 35
x9083:	mov [bp + 24], bp	; 3: -119 110 24
x9086:	add bp, 22	; 3: -125 -59 22
x9089:	jmp printChar	; 3: -23 -88 -9

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x9092:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x9097:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x9099:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x9103:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 -99 35
x9108:	mov [bp + 24], bp	; 3: -119 110 24
x9111:	add bp, 22	; 3: -125 -59 22
x9114:	jmp printChar	; 3: -23 -113 -9

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x9117:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x9121:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1825 = 88
x9123:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x9125:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1825 = 120
x9127:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1825, offset 6
x9129:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x9132:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 -70 35
x9137:	mov [bp + 24], bp	; 3: -119 110 24
x9140:	add bp, 22	; 3: -125 -59 22
x9143:	jmp printChar	; 3: -23 114 -9

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x9146:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x9151:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x9153:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x9157:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 -45 35
x9162:	mov [bp + 24], bp	; 3: -119 110 24
x9165:	add bp, 22	; 3: -125 -59 22
x9168:	jmp printChar	; 3: -23 89 -9

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x9171:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x9173:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x9177:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x9181:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x9185:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x9189:	mov ax, [bp + 20]	; 3: -117 70 20
x9192:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x9195:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 -7 35
x9200:	mov [bp + 24], bp	; 3: -119 110 24
x9203:	add bp, 22	; 3: -125 -59 22
x9206:	nop	; 1: -112
x9207:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x9209:	mov ax, [bp]	; 3: -117 70 0
x9212:	mov di, [bp + 4]	; 3: -117 126 4
x9215:	mov bp, [bp + 2]	; 3: -117 110 2
x9218:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x9220:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x9225:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1801 = unsignedValue % base
x9227:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x9231:	xor edx, edx	; 3: 102 49 -46
x9234:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1802 = int_to_int £temporary1801 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1802
x9238:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1803 = unsignedValue / base
x9241:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x9245:	xor edx, edx	; 3: 102 49 -46
x9248:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1803, offset 6
x9252:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x9256:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x9260:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x9264:	mov ax, [bp + 14]	; 3: -117 70 14
x9267:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x9270:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 68 36
x9275:	mov [bp + 20], bp	; 3: -119 110 20
x9278:	add bp, 18	; 3: -125 -59 18
x9281:	nop	; 1: -112
x9282:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x9284:	mov ax, [bp + 16]	; 3: -117 70 16
x9287:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x9290:	mov ax, [bp + 14]	; 3: -117 70 14
x9293:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x9296:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 94 36
x9301:	mov [bp + 20], bp	; 3: -119 110 20
x9304:	add bp, 18	; 3: -125 -59 18
x9307:	nop	; 1: -112
x9308:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1805 = return_value

printUnsignedLongRec$17:	; c = £temporary1805
x9310:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x9313:	mov al, [bp + 18]	; 3: -118 70 18
x9316:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x9319:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 117 36
x9324:	mov [bp + 21], bp	; 3: -119 110 21
x9327:	add bp, 19	; 3: -125 -59 19
x9330:	jmp printChar	; 3: -23 -73 -10

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x9333:	mov ax, [bp]	; 3: -117 70 0
x9336:	mov di, [bp + 4]	; 3: -117 126 4
x9339:	mov bp, [bp + 2]	; 3: -117 110 2
x9342:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x9344:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x9348:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1791 = digit + 48
x9350:	mov bx, [bp + 6]	; 3: -117 94 6
x9353:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1792 = int_to_int £temporary1791 (Signed_Int -> Signed_Char)
x9356:	cmp bx, 0	; 3: -125 -5 0
x9359:	jge digitToChar$3	; 2: 125 4
x9361:	neg bx	; 2: -9 -37
x9363:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1792

digitToChar$4:	; return
x9365:	mov ax, [bp]	; 3: -117 70 0
x9368:	mov di, [bp + 4]	; 3: -117 126 4
x9371:	mov bp, [bp + 2]	; 3: -117 110 2
x9374:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x9376:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x9380:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1793 = digit - 10
x9382:	mov bx, [bp + 6]	; 3: -117 94 6
x9385:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1794 = £temporary1793 + 65
x9388:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1795 = int_to_int £temporary1794 (Signed_Int -> Signed_Char)
x9391:	cmp bx, 0	; 3: -125 -5 0
x9394:	jge digitToChar$9	; 2: 125 4
x9396:	neg bx	; 2: -9 -37
x9398:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1795

digitToChar$10:	; return
x9400:	mov ax, [bp]	; 3: -117 70 0
x9403:	mov di, [bp + 4]	; 3: -117 126 4
x9406:	mov bp, [bp + 2]	; 3: -117 110 2
x9409:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1796 = digit - 10
x9411:	mov bx, [bp + 6]	; 3: -117 94 6
x9414:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1797 = £temporary1796 + 97
x9417:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1798 = int_to_int £temporary1797 (Signed_Int -> Signed_Char)
x9420:	cmp bx, 0	; 3: -125 -5 0
x9423:	jge digitToChar$14	; 2: 125 4
x9425:	neg bx	; 2: -9 -37
x9427:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1798

digitToChar$15:	; return
x9429:	mov ax, [bp]	; 3: -117 70 0
x9432:	mov di, [bp + 4]	; 3: -117 126 4
x9435:	mov bp, [bp + 2]	; 3: -117 110 2
x9438:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x9440:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x9443:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x9445:	fcompp	; 2: -34 -39
x9447:	fstsw ax	; 3: -101 -33 -32
x9450:	sahf	; 1: -98
x9451:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x9453:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x9457:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 -1 36
x9462:	mov [bp + 24], bp	; 3: -119 110 24
x9465:	add bp, 22	; 3: -125 -59 22
x9468:	jmp printChar	; 3: -23 45 -10

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x9471:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1861 = -longDoubleValue
x9474:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x9476:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x9479:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x9484:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x9489:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1862 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x9492:	fistp dword [container4bytes#]	; 4: -37 30 120 37
x9496:	mov eax, [container4bytes#]	; 4: 102 -95 120 37

printLongDoublePlain$14:	; longValue = £temporary1862
x9500:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x9504:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x9508:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x9512:	mov ax, [bp + 14]	; 3: -117 70 14
x9515:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x9518:	mov ax, [bp + 16]	; 3: -117 70 16
x9521:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x9524:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 66 37
x9529:	mov [bp + 28], bp	; 3: -119 110 28
x9532:	add bp, 26	; 3: -125 -59 26
x9535:	jmp printLongInt	; 3: -23 86 -11

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x9538:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1864 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x9541:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1865 = longDoubleValue - £temporary1864
x9544:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x9546:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x9549:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x9552:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x9555:	mov ax, [bp + 18]	; 3: -117 70 18
x9558:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x9561:	mov ax, [bp + 20]	; 3: -117 70 20
x9564:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x9567:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 109 37
x9572:	mov [bp + 28], bp	; 3: -119 110 28
x9575:	add bp, 26	; 3: -125 -59 26
x9578:	nop	; 1: -112
x9579:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x9581:	mov ax, [bp]	; 3: -117 70 0
x9584:	mov di, [bp + 4]	; 3: -117 126 4
x9587:	mov bp, [bp + 2]	; 3: -117 110 2
x9590:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

container4bytes#:
x9592:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; push float longDoubleValue
x9596:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x9599:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1840 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x9602:	fistp dword [container4bytes#]	; 4: -37 30 120 37
x9606:	mov eax, [container4bytes#]	; 4: 102 -95 120 37

printLongDoubleFraction$3:	; £temporary1841 = int_to_float £temporary1840 (Signed_Long_Int -> Long_Double)
x9610:	mov [container4bytes#], eax	; 4: 102 -93 120 37
x9614:	fild dword [container4bytes#]	; 4: -37 6 120 37

printLongDoubleFraction$4:	; £temporary1842 = longDoubleValue - £temporary1841
x9618:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x9620:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x9623:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x9627:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 6
x9629:	mov word [bp + 16], 6	; 5: -57 70 16 6 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x9634:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x9638:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x9640:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x9644:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x9646:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x9650:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 -64 37
x9655:	mov [bp + 20], bp	; 3: -119 110 20
x9658:	add bp, 18	; 3: -125 -59 18
x9661:	jmp printChar	; 3: -23 108 -11

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1848 = precision
x9664:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x9667:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1848 <= 0 goto 35
x9670:	cmp ax, 0	; 3: -125 -8 0
x9673:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; push float 10.0
x9675:	fld qword [float8$10.0#]	; 4: -35 6 28 38

printLongDoubleFraction$18:	; push float longDoubleValue
x9679:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1850 = 10.0 * longDoubleValue
x9682:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; pop float longDoubleValue10
x9684:	fstp qword [bp + 18]	; 3: -35 94 18

printLongDoubleFraction$21:	; push float longDoubleValue10
x9687:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$22:	; £temporary1851 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x9690:	fistp word [container2bytes#]	; 4: -33 30 43 26
x9694:	mov ax, [container2bytes#]	; 3: -95 43 26

printLongDoubleFraction$23:	; digitValue = £temporary1851
x9697:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$24:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$25:	; £temporary1852 = digitValue + 48
x9700:	mov ax, [bp + 26]	; 3: -117 70 26
x9703:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$26:	; £temporary1853 = int_to_int £temporary1852 (Signed_Int -> Signed_Char)
x9706:	cmp ax, 0	; 3: -125 -8 0
x9709:	jge printLongDoubleFraction$27	; 2: 125 4
x9711:	neg ax	; 2: -9 -40
x9713:	neg al	; 2: -10 -40

printLongDoubleFraction$27:	; parameter £temporary1853, offset 6
x9715:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$28:	; call function noellipse-noellipse printChar
x9718:	mov word [bp + 28], printLongDoubleFraction$29	; 5: -57 70 28 4 38
x9723:	mov [bp + 30], bp	; 3: -119 110 30
x9726:	add bp, 28	; 3: -125 -59 28
x9729:	jmp printChar	; 3: -23 40 -11

printLongDoubleFraction$29:	; post call

printLongDoubleFraction$30:	; push float longDoubleValue10
x9732:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$31:	; £temporary1855 = int_to_float digitValue (Signed_Int -> Long_Double)
x9735:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$32:	; £temporary1856 = longDoubleValue10 - £temporary1855
x9738:	fsub	; 2: -34 -23

printLongDoubleFraction$33:	; pop float longDoubleValue
x9740:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$34:	; goto 14
x9743:	jmp printLongDoubleFraction$14	; 2: -21 -81

printLongDoubleFraction$35:	; return
x9745:	mov ax, [bp]	; 3: -117 70 0
x9748:	mov di, [bp + 4]	; 3: -117 126 4
x9751:	mov bp, [bp + 2]	; 3: -117 110 2
x9754:	jmp ax	; 2: -1 -32

printLongDoubleFraction$36:	; function end printLongDoubleFraction

float8$10.0#:
x9756:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x9764:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x9767:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x9769:	fcompp	; 2: -34 -39
x9771:	fstsw ax	; 3: -101 -33 -32
x9774:	sahf	; 1: -98
x9775:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x9777:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary800 = -x
x9780:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x9782:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x9784:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary804

fabs$9:	; return
x9787:	mov ax, [bp]	; 3: -117 70 0
x9790:	mov di, [bp + 4]	; 3: -117 126 4
x9793:	mov bp, [bp + 2]	; 3: -117 110 2
x9796:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x9798:	mov ax, [bp + 6]	; 3: -117 70 6
x9801:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x9804:	mov word [bp + 8], tolower$3	; 5: -57 70 8 90 38
x9809:	mov [bp + 10], bp	; 3: -119 110 10
x9812:	add bp, 8	; 3: -125 -59 8
x9815:	jmp isupper	; 3: -23 -118 -10

tolower$3:	; post call

tolower$4:	; £temporary460 = return_value

tolower$5:	; if £temporary460 == 0 goto 31
x9818:	cmp bx, 0	; 3: -125 -5 0
x9821:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x9823:	mov word [bp + 8], tolower$8	; 5: -57 70 8 109 38
x9828:	mov [bp + 10], bp	; 3: -119 110 10
x9831:	add bp, 8	; 3: -125 -59 8
x9834:	jmp localeconv	; 3: -23 -30 -10

tolower$8:	; post call

tolower$9:	; £temporary461 = return_value

tolower$10:	; localeConvPtr = £temporary461
x9837:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x9840:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x9844:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary463 -> localeConvPtr = *localeConvPtr, offset 12
x9846:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary463 -> localeConvPtr
x9849:	mov ax, [si + 12]	; 3: -117 68 12
x9852:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary464 -> localeConvPtr = *localeConvPtr, offset 14
x9855:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary464 -> localeConvPtr
x9858:	mov ax, [si + 14]	; 3: -117 68 14
x9861:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x9864:	mov ax, [bp + 12]	; 3: -117 70 12
x9867:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x9870:	mov ax, [bp + 6]	; 3: -117 70 6
x9873:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x9876:	mov word [bp + 14], tolower$20	; 5: -57 70 14 -94 38
x9881:	mov [bp + 16], bp	; 3: -119 110 16
x9884:	add bp, 14	; 3: -125 -59 14
x9887:	jmp strchr	; 3: -23 67 -4

tolower$20:	; post call

tolower$21:	; £temporary465 = return_value

tolower$22:	; index = £temporary465 - upperCase
x9890:	sub bx, [bp + 12]	; 3: 43 94 12
x9893:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary468 = lowerCase + index
x9896:	mov si, [bp + 10]	; 3: -117 118 10
x9899:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary467 -> £temporary468 = *£temporary468

tolower$25:	; £temporary469 = int_to_int £temporary467 -> £temporary468 (Signed_Char -> Signed_Int)
x9902:	mov bl, [si]	; 2: -118 28
x9904:	and bx, 255	; 4: -127 -29 -1 0
x9908:	cmp bl, 0	; 3: -128 -5 0
x9911:	jge tolower$26	; 2: 125 4
x9913:	neg bl	; 2: -10 -37
x9915:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary469

tolower$27:	; return
x9917:	mov ax, [bp]	; 3: -117 70 0
x9920:	mov di, [bp + 4]	; 3: -117 126 4
x9923:	mov bp, [bp + 2]	; 3: -117 110 2
x9926:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary470 = c + 32
x9928:	mov bx, [bp + 6]	; 3: -117 94 6
x9931:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary470

tolower$30:	; return
x9934:	mov ax, [bp]	; 3: -117 70 0
x9937:	mov di, [bp + 4]	; 3: -117 126 4
x9940:	mov bp, [bp + 2]	; 3: -117 110 2
x9943:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x9945:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x9948:	mov ax, [bp]	; 3: -117 70 0
x9951:	mov di, [bp + 4]	; 3: -117 126 4
x9954:	mov bp, [bp + 2]	; 3: -117 110 2
x9957:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x9959:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x9962:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x9964:	fcompp	; 2: -34 -39
x9966:	fstsw ax	; 3: -101 -33 -32
x9969:	sahf	; 1: -98
x9970:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x9972:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x9976:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 6 39
x9981:	mov [bp + 26], bp	; 3: -119 110 26
x9984:	add bp, 24	; 3: -125 -59 24
x9987:	jmp printChar	; 3: -23 38 -12

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x9990:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x9992:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x9995:	mov ax, [bp + 20]	; 3: -117 70 20
x9998:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x10001:	mov ax, [bp + 18]	; 3: -117 70 18
x10004:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x10007:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 37 39
x10012:	mov [bp + 26], bp	; 3: -119 110 26
x10015:	add bp, 24	; 3: -125 -59 24
x10018:	jmp printLongDoubleFraction	; 3: -23 87 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x10021:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x10025:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary1881 = 69
x10027:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x10029:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary1881 = 101
x10031:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary1881, offset 6
x10033:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x10036:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 66 39
x10041:	mov [bp + 26], bp	; 3: -119 110 26
x10044:	add bp, 24	; 3: -125 -59 24
x10047:	jmp printChar	; 3: -23 -22 -13

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x10050:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x10054:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 84 39
x10059:	mov [bp + 26], bp	; 3: -119 110 26
x10062:	add bp, 24	; 3: -125 -59 24
x10065:	jmp printChar	; 3: -23 -40 -13

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x10068:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x10071:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x10074:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x10076:	fcompp	; 2: -34 -39
x10078:	fstsw ax	; 3: -101 -33 -32
x10081:	sahf	; 1: -98
x10082:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x10084:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x10088:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 118 39
x10093:	mov [bp + 26], bp	; 3: -119 110 26
x10096:	add bp, 24	; 3: -125 -59 24
x10099:	jmp printChar	; 3: -23 -74 -13

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x10102:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary1886 = -value
x10105:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x10107:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x10110:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x10113:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x10116:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 -110 39
x10121:	mov [bp + 26], bp	; 3: -119 110 26
x10124:	add bp, 24	; 3: -125 -59 24
x10127:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary1887 = return_value

printLongDoubleExpo$43:	; £temporary1888 = float_to_int £temporary1887 (Double -> Signed_Int)
x10130:	fistp word [container2bytes#]	; 4: -33 30 43 26
x10134:	mov ax, [container2bytes#]	; 3: -95 43 26

printLongDoubleExpo$44:	; expo = £temporary1888
x10137:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x10140:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x10143:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x10146:	fld qword [float8$10.0#]	; 4: -35 6 28 38

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x10150:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary1889 = int_to_float expo (Signed_Int -> Double)
x10153:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary1889, offset 14
x10156:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x10159:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -67 39
x10164:	mov [bp + 36], bp	; 3: -119 110 36
x10167:	add bp, 34	; 3: -125 -59 34
x10170:	jmp pow	; 3: -23 -26 1

printLongDoubleExpo$52:	; post call
x10173:	fstp qword [bp + 34]	; 3: -35 94 34
x10176:	fld qword [bp + 26]	; 3: -35 70 26
x10179:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary1890 = return_value

printLongDoubleExpo$54:	; £temporary1891 = value / £temporary1890
x10182:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x10184:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x10187:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x10190:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x10193:	mov ax, [bp + 14]	; 3: -117 70 14
x10196:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x10199:	mov ax, [bp + 16]	; 3: -117 70 16
x10202:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x10205:	mov ax, [bp + 18]	; 3: -117 70 18
x10208:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x10211:	mov ax, [bp + 20]	; 3: -117 70 20
x10214:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x10217:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 -9 39
x10222:	mov [bp + 28], bp	; 3: -119 110 28
x10225:	add bp, 26	; 3: -125 -59 26
x10228:	jmp printLongDoublePlain	; 3: -23 -23 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x10231:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x10235:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary1897 = 69
x10237:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x10239:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary1897 = 101
x10241:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary1897, offset 6
x10243:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x10246:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 20 40
x10251:	mov [bp + 28], bp	; 3: -119 110 28
x10254:	add bp, 26	; 3: -125 -59 26
x10257:	jmp printChar	; 3: -23 24 -13

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary1899 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x10260:	mov ax, [bp + 24]	; 3: -117 70 24
x10263:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x10269:	cmp ax, 0	; 3: -125 -8 0
x10272:	jge printLongDoubleExpo$75	; 2: 125 5
x10274:	neg ax	; 2: -9 -40
x10276:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary1899, offset 6
x10279:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x10283:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x10288:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x10293:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 67 40
x10298:	mov [bp + 28], bp	; 3: -119 110 28
x10301:	add bp, 26	; 3: -125 -59 26
x10304:	jmp printLongInt	; 3: -23 85 -14

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x10307:	mov ax, [bp]	; 3: -117 70 0
x10310:	mov di, [bp + 4]	; 3: -117 126 4
x10313:	mov bp, [bp + 2]	; 3: -117 110 2
x10316:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; call header integral zero 0 stack zero 0

log10$1:	; push float x
x10318:	fld qword [bp + 6]	; 3: -35 70 6

log10$2:	; parameter x, offset 6
x10321:	fstp qword [bp + 20]	; 3: -35 94 20

log10$3:	; call function noellipse-noellipse log
x10324:	mov word [bp + 14], log10$4	; 5: -57 70 14 98 40
x10329:	mov [bp + 16], bp	; 3: -119 110 16
x10332:	add bp, 14	; 3: -125 -59 14
x10335:	nop	; 1: -112
x10336:	jmp log	; 2: -21 25

log10$4:	; post call

log10$5:	; £temporary555 = return_value

log10$6:	; push float 2.3025850929940456840179914
x10338:	fld qword [float8$2.3025850929940456840179914#]	; 4: -35 6 115 40

log10$7:	; £temporary556 = £temporary555 / 2.3025850929940456840179914
x10342:	fdiv	; 2: -34 -7

log10$8:	; return_value = £temporary556

log10$9:	; return
x10344:	mov ax, [bp]	; 3: -117 70 0
x10347:	mov di, [bp + 4]	; 3: -117 126 4
x10350:	mov bp, [bp + 2]	; 3: -117 110 2
x10353:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$2.3025850929940456840179914#:
x10355:	dq 2.3025850929940456840179914	; 8: 21 85 -75 -69 -79 107 2 64

log:	; push float x
x10363:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x10366:	fldz	; 2: -39 -18

log$2:	; if x <= 0 goto 76
x10368:	fcompp	; 2: -34 -39
x10370:	fstsw ax	; 3: -101 -33 -32
x10373:	sahf	; 1: -98
x10374:	jae log$76	; 4: 15 -125 -18 0

log$3:	; n = 0
x10378:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x
x10383:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push 1
x10386:	fld1	; 2: -39 -24

log$6:	; if x <= 1 goto 16
x10388:	fcompp	; 2: -34 -39
x10390:	fstsw ax	; 3: -101 -33 -32
x10393:	sahf	; 1: -98
x10394:	jae log$16	; 2: 115 30

log$7:	; push float x
x10396:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push 1
x10399:	fld1	; 2: -39 -24

log$9:	; if x <= 1 goto 28
x10401:	fcompp	; 2: -34 -39
x10403:	fstsw ax	; 3: -101 -33 -32
x10406:	sahf	; 1: -98
x10407:	jae log$28	; 2: 115 64

log$10:	; push float x
x10409:	fld qword [bp + 6]	; 3: -35 70 6

log$11:	; push float 2.7182818284590452353602874
x10412:	fld qword [float8$2.7182818284590452353602874#]	; 4: -35 6 -117 41

log$12:	; £temporary537 = x / 2.7182818284590452353602874
x10416:	fdiv	; 2: -34 -7

log$13:	; pop float x
x10418:	fstp qword [bp + 6]	; 3: -35 94 6

log$14:	; ++n
x10421:	inc word [bp + 14]	; 3: -1 70 14

log$15:	; goto 7
x10424:	jmp log$7	; 2: -21 -30

log$16:	; push float x
x10426:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 0.3678794411714423215955237798
x10429:	fld qword [float8$0.3678794411714423215955237798#]	; 4: -35 6 -109 41

log$18:	; if x >= 0.3678794411714423215955237798 goto 28
x10433:	fcompp	; 2: -34 -39
x10435:	fstsw ax	; 3: -101 -33 -32
x10438:	sahf	; 1: -98
x10439:	jbe log$28	; 2: 118 32

log$19:	; push float x
x10441:	fld qword [bp + 6]	; 3: -35 70 6

log$20:	; push float 0.3678794411714423215955237798
x10444:	fld qword [float8$0.3678794411714423215955237798#]	; 4: -35 6 -109 41

log$21:	; if x >= 0.3678794411714423215955237798 goto 28
x10448:	fcompp	; 2: -34 -39
x10450:	fstsw ax	; 3: -101 -33 -32
x10453:	sahf	; 1: -98
x10454:	jbe log$28	; 2: 118 17

log$22:	; push float x
x10456:	fld qword [bp + 6]	; 3: -35 70 6

log$23:	; push float 2.7182818284590452353602874
x10459:	fld qword [float8$2.7182818284590452353602874#]	; 4: -35 6 -117 41

log$24:	; £temporary541 = x * 2.7182818284590452353602874
x10463:	fmul	; 2: -34 -55

log$25:	; pop float x
x10465:	fstp qword [bp + 6]	; 3: -35 94 6

log$26:	; --n
x10468:	dec word [bp + 14]	; 3: -1 78 14

log$27:	; goto 19
x10471:	jmp log$19	; 2: -21 -32

log$28:	; push 1
x10473:	fld1	; 2: -39 -24

log$29:	; pop float index
x10475:	fstp qword [bp + 16]	; 3: -35 94 16

log$30:	; push 0
x10478:	fldz	; 2: -39 -18

log$31:	; pop float sum
x10480:	fstp qword [bp + 32]	; 3: -35 94 32

log$32:	; push 1
x10483:	fld1	; 2: -39 -24

log$33:	; pop float sign
x10485:	fstp qword [bp + 40]	; 3: -35 94 40

log$34:	; push float x
x10488:	fld qword [bp + 6]	; 3: -35 70 6

log$35:	; push 1
x10491:	fld1	; 2: -39 -24

log$36:	; £temporary543 = x - 1
x10493:	fsub	; 2: -34 -23

log$37:	; pop float x_minus_1
x10495:	fstp qword [bp + 48]	; 3: -35 94 48

log$38:	; push float x_minus_1
x10498:	fld qword [bp + 48]	; 3: -35 70 48

log$39:	; pop float power
x10501:	fstp qword [bp + 56]	; 3: -35 94 56

log$40:	; push float sign
x10504:	fld qword [bp + 40]	; 3: -35 70 40

log$41:	; push float power
x10507:	fld qword [bp + 56]	; 3: -35 70 56

log$42:	; £temporary544 = sign * power
x10510:	fmul	; 2: -34 -55

log$43:	; push float index
x10512:	fld qword [bp + 16]	; 3: -35 70 16

log$44:	; push 1
x10515:	fld1	; 2: -39 -24

log$45:	; index = index + 1
x10517:	fadd	; 2: -34 -63

log$46:	; top float index
x10519:	fst qword [bp + 16]	; 3: -35 86 16

log$47:	; push 1
x10522:	fld1	; 2: -39 -24

log$48:	; index = index - 1
x10524:	fsub	; 2: -34 -23

log$49:	; £temporary546 = £temporary544 / £temporary545
x10526:	fdiv	; 2: -34 -7

log$50:	; pop float term
x10528:	fstp qword [bp + 24]	; 3: -35 94 24

log$51:	; push float sum
x10531:	fld qword [bp + 32]	; 3: -35 70 32

log$52:	; push float term
x10534:	fld qword [bp + 24]	; 3: -35 70 24

log$53:	; £temporary547 = sum + term
x10537:	fadd	; 2: -34 -63

log$54:	; pop float sum
x10539:	fstp qword [bp + 32]	; 3: -35 94 32

log$55:	; push float power
x10542:	fld qword [bp + 56]	; 3: -35 70 56

log$56:	; push float x_minus_1
x10545:	fld qword [bp + 48]	; 3: -35 70 48

log$57:	; £temporary548 = power * x_minus_1
x10548:	fmul	; 2: -34 -55

log$58:	; pop float power
x10550:	fstp qword [bp + 56]	; 3: -35 94 56

log$59:	; push float sign
x10553:	fld qword [bp + 40]	; 3: -35 70 40

log$60:	; push float -1.0
x10556:	fld qword [float8$minus1.0#]	; 4: -35 6 25 4

log$61:	; £temporary549 = sign * -1.0
x10560:	fmul	; 2: -34 -55

log$62:	; pop float sign
x10562:	fstp qword [bp + 40]	; 3: -35 94 40

log$63:	; call header integral zero 0 stack zero 0

log$64:	; push float term
x10565:	fld qword [bp + 24]	; 3: -35 70 24

log$65:	; parameter term, offset 6
x10568:	fstp qword [bp + 70]	; 3: -35 94 70

log$66:	; call function noellipse-noellipse fabs
x10571:	mov word [bp + 64], log$67	; 5: -57 70 64 89 41
x10576:	mov [bp + 66], bp	; 3: -119 110 66
x10579:	add bp, 64	; 3: -125 -59 64
x10582:	jmp fabs	; 3: -23 -53 -4

log$67:	; post call

log$68:	; £temporary550 = return_value

log$69:	; push float 0.000000001
x10585:	fld qword [float8$0.000000001#]	; 4: -35 6 -101 41

log$70:	; if £temporary550 >= 0.000000001 goto 40
x10589:	fcompp	; 2: -34 -39
x10591:	fstsw ax	; 3: -101 -33 -32
x10594:	sahf	; 1: -98
x10595:	jbe log$40	; 2: 118 -93

log$71:	; push float sum
x10597:	fld qword [bp + 32]	; 3: -35 70 32

log$72:	; £temporary552 = int_to_float n (Signed_Int -> Double)
x10600:	fild word [bp + 14]	; 3: -33 70 14

log$73:	; £temporary553 = sum + £temporary552
x10603:	fadd	; 2: -34 -63

log$74:	; return_value = £temporary553

log$75:	; return
x10605:	mov ax, [bp]	; 3: -117 70 0
x10608:	mov di, [bp + 4]	; 3: -117 126 4
x10611:	mov bp, [bp + 2]	; 3: -117 110 2
x10614:	jmp ax	; 2: -1 -32

log$76:	; errno = 6
x10616:	mov word [errno], 6	; 6: -57 6 -35 9 6 0

log$77:	; push 0
x10622:	fldz	; 2: -39 -18

log$78:	; return_value = 0

log$79:	; return
x10624:	mov ax, [bp]	; 3: -117 70 0
x10627:	mov di, [bp + 4]	; 3: -117 126 4
x10630:	mov bp, [bp + 2]	; 3: -117 110 2
x10633:	jmp ax	; 2: -1 -32

log$80:	; function end log

float8$2.7182818284590452353602874#:
x10635:	dq 2.7182818284590452353602874	; 8: 104 87 20 -117 10 -65 5 64

float8$0.3678794411714423215955237798#:
x10643:	dq 0.3678794411714423215955237798	; 8: 56 -17 44 54 86 -117 -41 63

float8$0.000000001#:
x10651:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

pow:	; push float x
x10659:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x10662:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x10664:	fcompp	; 2: -34 -39
x10666:	fstsw ax	; 3: -101 -33 -32
x10669:	sahf	; 1: -98
x10670:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x10672:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x10675:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x10678:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x10681:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x10684:	mov word [bp + 30], pow$9	; 5: -57 70 30 -54 41
x10689:	mov [bp + 32], bp	; 3: -119 110 32
x10692:	add bp, 30	; 3: -125 -59 30
x10695:	jmp log	; 3: -23 -79 -2

pow$9:	; post call
x10698:	fstp qword [bp + 30]	; 3: -35 94 30
x10701:	fld qword [bp + 22]	; 3: -35 70 22
x10704:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary559 = return_value

pow$11:	; £temporary560 = y * £temporary559
x10707:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary560, offset 6
x10709:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x10712:	mov word [bp + 22], pow$14	; 5: -57 70 22 -26 41
x10717:	mov [bp + 24], bp	; 3: -119 110 24
x10720:	add bp, 22	; 3: -125 -59 22
x10723:	jmp exp	; 3: -23 63 1

pow$14:	; post call

pow$15:	; £temporary561 = return_value

pow$16:	; return_value = £temporary561

pow$17:	; return
x10726:	mov ax, [bp]	; 3: -117 70 0
x10729:	mov di, [bp + 4]	; 3: -117 126 4
x10732:	mov bp, [bp + 2]	; 3: -117 110 2
x10735:	jmp ax	; 2: -1 -32

pow$18:	; push float x
x10737:	fld qword [bp + 6]	; 3: -35 70 6

pow$19:	; push 0
x10740:	fldz	; 2: -39 -18

pow$20:	; if x != 0 goto 27
x10742:	fcompp	; 2: -34 -39
x10744:	fstsw ax	; 3: -101 -33 -32
x10747:	sahf	; 1: -98
x10748:	jne pow$27	; 2: 117 26

pow$21:	; push float y
x10750:	fld qword [bp + 14]	; 3: -35 70 14

pow$22:	; push 0
x10753:	fldz	; 2: -39 -18

pow$23:	; if y <= 0 goto 27
x10755:	fcompp	; 2: -34 -39
x10757:	fstsw ax	; 3: -101 -33 -32
x10760:	sahf	; 1: -98
x10761:	jae pow$27	; 2: 115 13

pow$24:	; push 0
x10763:	fldz	; 2: -39 -18

pow$25:	; return_value = 0

pow$26:	; return
x10765:	mov ax, [bp]	; 3: -117 70 0
x10768:	mov di, [bp + 4]	; 3: -117 126 4
x10771:	mov bp, [bp + 2]	; 3: -117 110 2
x10774:	jmp ax	; 2: -1 -32

pow$27:	; push float x
x10776:	fld qword [bp + 6]	; 3: -35 70 6

pow$28:	; push 0
x10779:	fldz	; 2: -39 -18

pow$29:	; if x >= 0 goto 81
x10781:	fcompp	; 2: -34 -39
x10783:	fstsw ax	; 3: -101 -33 -32
x10786:	sahf	; 1: -98
x10787:	jbe pow$81	; 4: 15 -122 -25 0

pow$30:	; call header integral zero 0 stack zero 0

pow$31:	; push float y
x10791:	fld qword [bp + 14]	; 3: -35 70 14

pow$32:	; parameter y, offset 6
x10794:	fstp qword [bp + 28]	; 3: -35 94 28

pow$33:	; call function noellipse-noellipse floor
x10797:	mov word [bp + 22], pow$34	; 5: -57 70 22 59 42
x10802:	mov [bp + 24], bp	; 3: -119 110 24
x10805:	add bp, 22	; 3: -125 -59 22
x10808:	jmp floor	; 3: -23 96 1

pow$34:	; post call

pow$35:	; £temporary566 = return_value

pow$36:	; call header integral zero 0 stack no zero 1
x10811:	fstp qword [bp + 22]	; 3: -35 94 22

pow$37:	; push float y
x10814:	fld qword [bp + 14]	; 3: -35 70 14

pow$38:	; parameter y, offset 6
x10817:	fstp qword [bp + 36]	; 3: -35 94 36

pow$39:	; call function noellipse-noellipse ceil
x10820:	mov word [bp + 30], pow$40	; 5: -57 70 30 82 42
x10825:	mov [bp + 32], bp	; 3: -119 110 32
x10828:	add bp, 30	; 3: -125 -59 30
x10831:	jmp ceil	; 3: -23 -105 1

pow$40:	; post call
x10834:	fstp qword [bp + 30]	; 3: -35 94 30
x10837:	fld qword [bp + 22]	; 3: -35 70 22
x10840:	fld qword [bp + 30]	; 3: -35 70 30

pow$41:	; £temporary567 = return_value

pow$42:	; if £temporary566 != £temporary567 goto 81
x10843:	fcompp	; 2: -34 -39
x10845:	fstsw ax	; 3: -101 -33 -32
x10848:	sahf	; 1: -98
x10849:	jne pow$81	; 4: 15 -123 -87 0

pow$43:	; push float y
x10853:	fld qword [bp + 14]	; 3: -35 70 14

pow$44:	; £temporary570 = float_to_int y (Double -> Signed_Long_Int)
x10856:	fistp dword [container4bytes#]	; 4: -37 30 120 37
x10860:	mov eax, [container4bytes#]	; 4: 102 -95 120 37

pow$45:	; long_y = £temporary570
x10864:	mov [bp + 22], eax	; 4: 102 -119 70 22

pow$46:	; £temporary571 = long_y % 2
x10868:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x10872:	xor edx, edx	; 3: 102 49 -46
x10875:	idiv dword [int4$2#]	; 5: 102 -9 62 33 43

pow$47:	; if £temporary571 != 0 goto 64
x10880:	cmp edx, 0	; 4: 102 -125 -6 0
x10884:	jne pow$64	; 2: 117 67

pow$48:	; call header integral zero 0 stack zero 0

pow$49:	; push float y
x10886:	fld qword [bp + 14]	; 3: -35 70 14

pow$50:	; call header integral zero 0 stack no zero 1
x10889:	fstp qword [bp + 26]	; 3: -35 94 26

pow$51:	; push float x
x10892:	fld qword [bp + 6]	; 3: -35 70 6

pow$52:	; £temporary573 = -x
x10895:	fchs	; 2: -39 -32

pow$53:	; parameter £temporary573, offset 6
x10897:	fstp qword [bp + 40]	; 3: -35 94 40

pow$54:	; call function noellipse-noellipse log
x10900:	mov word [bp + 34], pow$55	; 5: -57 70 34 -94 42
x10905:	mov [bp + 36], bp	; 3: -119 110 36
x10908:	add bp, 34	; 3: -125 -59 34
x10911:	jmp log	; 3: -23 -39 -3

pow$55:	; post call
x10914:	fstp qword [bp + 34]	; 3: -35 94 34
x10917:	fld qword [bp + 26]	; 3: -35 70 26
x10920:	fld qword [bp + 34]	; 3: -35 70 34

pow$56:	; £temporary574 = return_value

pow$57:	; £temporary575 = y * £temporary574
x10923:	fmul	; 2: -34 -55

pow$58:	; parameter £temporary575, offset 6
x10925:	fstp qword [bp + 32]	; 3: -35 94 32

pow$59:	; call function noellipse-noellipse exp
x10928:	mov word [bp + 26], pow$60	; 5: -57 70 26 -66 42
x10933:	mov [bp + 28], bp	; 3: -119 110 28
x10936:	add bp, 26	; 3: -125 -59 26
x10939:	nop	; 1: -112
x10940:	jmp exp	; 2: -21 103

pow$60:	; post call

pow$61:	; £temporary576 = return_value

pow$62:	; return_value = £temporary576

pow$63:	; return
x10942:	mov ax, [bp]	; 3: -117 70 0
x10945:	mov di, [bp + 4]	; 3: -117 126 4
x10948:	mov bp, [bp + 2]	; 3: -117 110 2
x10951:	jmp ax	; 2: -1 -32

pow$64:	; call header integral zero 0 stack zero 0

pow$65:	; push float y
x10953:	fld qword [bp + 14]	; 3: -35 70 14

pow$66:	; call header integral zero 0 stack no zero 1
x10956:	fstp qword [bp + 26]	; 3: -35 94 26

pow$67:	; push float x
x10959:	fld qword [bp + 6]	; 3: -35 70 6

pow$68:	; £temporary577 = -x
x10962:	fchs	; 2: -39 -32

pow$69:	; parameter £temporary577, offset 6
x10964:	fstp qword [bp + 40]	; 3: -35 94 40

pow$70:	; call function noellipse-noellipse log
x10967:	mov word [bp + 34], pow$71	; 5: -57 70 34 -27 42
x10972:	mov [bp + 36], bp	; 3: -119 110 36
x10975:	add bp, 34	; 3: -125 -59 34
x10978:	jmp log	; 3: -23 -106 -3

pow$71:	; post call
x10981:	fstp qword [bp + 34]	; 3: -35 94 34
x10984:	fld qword [bp + 26]	; 3: -35 70 26
x10987:	fld qword [bp + 34]	; 3: -35 70 34

pow$72:	; £temporary578 = return_value

pow$73:	; £temporary579 = y * £temporary578
x10990:	fmul	; 2: -34 -55

pow$74:	; parameter £temporary579, offset 6
x10992:	fstp qword [bp + 32]	; 3: -35 94 32

pow$75:	; call function noellipse-noellipse exp
x10995:	mov word [bp + 26], pow$76	; 5: -57 70 26 1 43
x11000:	mov [bp + 28], bp	; 3: -119 110 28
x11003:	add bp, 26	; 3: -125 -59 26
x11006:	nop	; 1: -112
x11007:	jmp exp	; 2: -21 36

pow$76:	; post call

pow$77:	; £temporary580 = return_value

pow$78:	; £temporary581 = -£temporary580
x11009:	fchs	; 2: -39 -32

pow$79:	; return_value = £temporary581

pow$80:	; return
x11011:	mov ax, [bp]	; 3: -117 70 0
x11014:	mov di, [bp + 4]	; 3: -117 126 4
x11017:	mov bp, [bp + 2]	; 3: -117 110 2
x11020:	jmp ax	; 2: -1 -32

pow$81:	; errno = 6
x11022:	mov word [errno], 6	; 6: -57 6 -35 9 6 0

pow$82:	; push 0
x11028:	fldz	; 2: -39 -18

pow$83:	; return_value = 0

pow$84:	; return
x11030:	mov ax, [bp]	; 3: -117 70 0
x11033:	mov di, [bp + 4]	; 3: -117 126 4
x11036:	mov bp, [bp + 2]	; 3: -117 110 2
x11039:	jmp ax	; 2: -1 -32

pow$85:	; function end pow

int4$2#:
x11041:	dd 2	; 4: 2 0 0 0

exp:	; push 1
x11045:	fld1	; 2: -39 -24

exp$1:	; pop float index
x11047:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x11050:	fld1	; 2: -39 -24

exp$3:	; pop float sum
x11052:	fstp qword [bp + 30]	; 3: -35 94 30

exp$4:	; push 1
x11055:	fld1	; 2: -39 -24

exp$5:	; pop float faculty
x11057:	fstp qword [bp + 38]	; 3: -35 94 38

exp$6:	; push float x
x11060:	fld qword [bp + 6]	; 3: -35 70 6

exp$7:	; pop float power
x11063:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x11066:	fld qword [bp + 46]	; 3: -35 70 46

exp$9:	; push float faculty
x11069:	fld qword [bp + 38]	; 3: -35 70 38

exp$10:	; £temporary526 = power / faculty
x11072:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x11074:	fstp qword [bp + 22]	; 3: -35 94 22

exp$12:	; push float sum
x11077:	fld qword [bp + 30]	; 3: -35 70 30

exp$13:	; push float term
x11080:	fld qword [bp + 22]	; 3: -35 70 22

exp$14:	; £temporary527 = sum + term
x11083:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x11085:	fstp qword [bp + 30]	; 3: -35 94 30

exp$16:	; push float power
x11088:	fld qword [bp + 46]	; 3: -35 70 46

exp$17:	; push float x
x11091:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary528 = power * x
x11094:	fmul	; 2: -34 -55

exp$19:	; pop float power
x11096:	fstp qword [bp + 46]	; 3: -35 94 46

exp$20:	; push float faculty
x11099:	fld qword [bp + 38]	; 3: -35 70 38

exp$21:	; push float index
x11102:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x11105:	fld1	; 2: -39 -24

exp$23:	; index = index + 1
x11107:	fadd	; 2: -34 -63

exp$24:	; top float index
x11109:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary530 = faculty * £temporary529
x11112:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x11114:	fstp qword [bp + 38]	; 3: -35 94 38

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x11117:	fld qword [bp + 22]	; 3: -35 70 22

exp$29:	; parameter term, offset 6
x11120:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x11123:	mov word [bp + 54], exp$31	; 5: -57 70 54 -127 43
x11128:	mov [bp + 56], bp	; 3: -119 110 56
x11131:	add bp, 54	; 3: -125 -59 54
x11134:	jmp fabs	; 3: -23 -93 -6

exp$31:	; post call

exp$32:	; £temporary531 = return_value

exp$33:	; push float 0.000000001
x11137:	fld qword [float8$0.000000001#]	; 4: -35 6 -101 41

exp$34:	; if £temporary531 >= 0.000000001 goto 8
x11141:	fcompp	; 2: -34 -39
x11143:	fstsw ax	; 3: -101 -33 -32
x11146:	sahf	; 1: -98
x11147:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x11149:	fld qword [bp + 30]	; 3: -35 70 30

exp$36:	; return_value = sum

exp$37:	; return
x11152:	mov ax, [bp]	; 3: -117 70 0
x11155:	mov di, [bp + 4]	; 3: -117 126 4
x11158:	mov bp, [bp + 2]	; 3: -117 110 2
x11161:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

floor:	; push float x
x11163:	fld qword [bp + 6]	; 3: -35 70 6

floor$1:	; push 0
x11166:	fldz	; 2: -39 -18

floor$2:	; if x >= 0 goto 13
x11168:	fcompp	; 2: -34 -39
x11170:	fstsw ax	; 3: -101 -33 -32
x11173:	sahf	; 1: -98
x11174:	jbe floor$13	; 2: 118 35

floor$3:	; call header integral zero 0 stack zero 0

floor$4:	; push float x
x11176:	fld qword [bp + 6]	; 3: -35 70 6

floor$5:	; £temporary776 = -x
x11179:	fchs	; 2: -39 -32

floor$6:	; parameter £temporary776, offset 6
x11181:	fstp qword [bp + 20]	; 3: -35 94 20

floor$7:	; call function noellipse-noellipse ceil
x11184:	mov word [bp + 14], floor$8	; 5: -57 70 14 -66 43
x11189:	mov [bp + 16], bp	; 3: -119 110 16
x11192:	add bp, 14	; 3: -125 -59 14
x11195:	nop	; 1: -112
x11196:	jmp ceil	; 2: -21 43

floor$8:	; post call

floor$9:	; £temporary777 = return_value

floor$10:	; £temporary778 = -£temporary777
x11198:	fchs	; 2: -39 -32

floor$11:	; return_value = £temporary778

floor$12:	; return
x11200:	mov ax, [bp]	; 3: -117 70 0
x11203:	mov di, [bp + 4]	; 3: -117 126 4
x11206:	mov bp, [bp + 2]	; 3: -117 110 2
x11209:	jmp ax	; 2: -1 -32

floor$13:	; push float x
x11211:	fld qword [bp + 6]	; 3: -35 70 6

floor$14:	; £temporary779 = float_to_int x (Double -> Signed_Long_Int)
x11214:	fistp dword [container4bytes#]	; 4: -37 30 120 37
x11218:	mov eax, [container4bytes#]	; 4: 102 -95 120 37

floor$15:	; £temporary780 = int_to_float £temporary779 (Signed_Long_Int -> Double)
x11222:	mov [container4bytes#], eax	; 4: 102 -93 120 37
x11226:	fild dword [container4bytes#]	; 4: -37 6 120 37

floor$16:	; return_value = £temporary780

floor$17:	; return
x11230:	mov ax, [bp]	; 3: -117 70 0
x11233:	mov di, [bp + 4]	; 3: -117 126 4
x11236:	mov bp, [bp + 2]	; 3: -117 110 2
x11239:	jmp ax	; 2: -1 -32

floor$18:	; function end floor

ceil:	; push float x
x11241:	fld qword [bp + 6]	; 3: -35 70 6

ceil$1:	; push 0
x11244:	fldz	; 2: -39 -18

ceil$2:	; if x >= 0 goto 13
x11246:	fcompp	; 2: -34 -39
x11248:	fstsw ax	; 3: -101 -33 -32
x11251:	sahf	; 1: -98
x11252:	jbe ceil$13	; 2: 118 35

ceil$3:	; call header integral zero 0 stack zero 0

ceil$4:	; push float x
x11254:	fld qword [bp + 6]	; 3: -35 70 6

ceil$5:	; £temporary783 = -x
x11257:	fchs	; 2: -39 -32

ceil$6:	; parameter £temporary783, offset 6
x11259:	fstp qword [bp + 20]	; 3: -35 94 20

ceil$7:	; call function noellipse-noellipse floor
x11262:	mov word [bp + 14], ceil$8	; 5: -57 70 14 12 44
x11267:	mov [bp + 16], bp	; 3: -119 110 16
x11270:	add bp, 14	; 3: -125 -59 14
x11273:	nop	; 1: -112
x11274:	jmp floor	; 2: -21 -113

ceil$8:	; post call

ceil$9:	; £temporary784 = return_value

ceil$10:	; £temporary785 = -£temporary784
x11276:	fchs	; 2: -39 -32

ceil$11:	; return_value = £temporary785

ceil$12:	; return
x11278:	mov ax, [bp]	; 3: -117 70 0
x11281:	mov di, [bp + 4]	; 3: -117 126 4
x11284:	mov bp, [bp + 2]	; 3: -117 110 2
x11287:	jmp ax	; 2: -1 -32

ceil$13:	; push float x
x11289:	fld qword [bp + 6]	; 3: -35 70 6

ceil$14:	; push float 0.999999999999
x11292:	fld qword [float8$0.999999999999#]	; 4: -35 6 61 44

ceil$15:	; £temporary786 = x + 0.999999999999
x11296:	fadd	; 2: -34 -63

ceil$16:	; £temporary787 = float_to_int £temporary786 (Double -> Signed_Long_Int)
x11298:	fistp dword [container4bytes#]	; 4: -37 30 120 37
x11302:	mov eax, [container4bytes#]	; 4: 102 -95 120 37

ceil$17:	; £temporary788 = int_to_float £temporary787 (Signed_Long_Int -> Double)
x11306:	mov [container4bytes#], eax	; 4: 102 -93 120 37
x11310:	fild dword [container4bytes#]	; 4: -37 6 120 37

ceil$18:	; return_value = £temporary788

ceil$19:	; return
x11314:	mov ax, [bp]	; 3: -117 70 0
x11317:	mov di, [bp + 4]	; 3: -117 126 4
x11320:	mov bp, [bp + 2]	; 3: -117 110 2
x11323:	jmp ax	; 2: -1 -32

ceil$20:	; function end ceil

float8$0.999999999999#:
x11325:	dq 0.999999999999	; 8: -47 -36 -1 -1 -1 -1 -17 63

isdigit:	; if c < 48 goto 4
x11333:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x11337:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x11339:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x11343:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary395 = 1
x11345:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x11348:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary395 = 0
x11350:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary395

isdigit$6:	; return
x11353:	mov ax, [bp]	; 3: -117 70 0
x11356:	mov di, [bp + 4]	; 3: -117 126 4
x11359:	mov bp, [bp + 2]	; 3: -117 110 2
x11362:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

sin:	; call header integral zero 0 stack zero 0

sin$1:	; push float x
x11364:	fld qword [bp + 6]	; 3: -35 70 6

sin$2:	; parameter x, offset 6
x11367:	fstp qword [bp + 20]	; 3: -35 94 20

sin$3:	; call function noellipse-noellipse fabs
x11370:	mov word [bp + 14], sin$4	; 5: -57 70 14 120 44
x11375:	mov [bp + 16], bp	; 3: -119 110 16
x11378:	add bp, 14	; 3: -125 -59 14
x11381:	jmp fabs	; 3: -23 -84 -7

sin$4:	; post call

sin$5:	; £temporary655 = return_value

sin$6:	; push float 6.2831853071795864769252866
x11384:	fld qword [float8$6.2831853071795864769252866#]	; 4: -35 6 41 4

sin$7:	; if £temporary655 <= 6.2831853071795864769252866 goto 17
x11388:	fcompp	; 2: -34 -39
x11390:	fstsw ax	; 3: -101 -33 -32
x11393:	sahf	; 1: -98
x11394:	jae sin$17	; 2: 115 30

sin$8:	; call header integral zero 0 stack zero 0

sin$9:	; push float x
x11396:	fld qword [bp + 6]	; 3: -35 70 6

sin$10:	; parameter x, offset 6
x11399:	fstp qword [bp + 20]	; 3: -35 94 20

sin$11:	; push float 6.2831853071795864769252866
x11402:	fld qword [float8$6.2831853071795864769252866#]	; 4: -35 6 41 4

sin$12:	; parameter 6.2831853071795864769252866, offset 14
x11406:	fstp qword [bp + 28]	; 3: -35 94 28

sin$13:	; call function noellipse-noellipse fmod
x11409:	mov word [bp + 14], sin$14	; 5: -57 70 14 -97 44
x11414:	mov [bp + 16], bp	; 3: -119 110 16
x11417:	add bp, 14	; 3: -125 -59 14
x11420:	jmp fmod	; 3: -23 -88 0

sin$14:	; post call

sin$15:	; £temporary657 = return_value

sin$16:	; pop float x
x11423:	fstp qword [bp + 6]	; 3: -35 94 6

sin$17:	; push 1
x11426:	fld1	; 2: -39 -24

sin$18:	; pop float index
x11428:	fstp qword [bp + 14]	; 3: -35 94 14

sin$19:	; push 0
x11431:	fldz	; 2: -39 -18

sin$20:	; pop float sum
x11433:	fstp qword [bp + 30]	; 3: -35 94 30

sin$21:	; push 1
x11436:	fld1	; 2: -39 -24

sin$22:	; pop float sign
x11438:	fstp qword [bp + 38]	; 3: -35 94 38

sin$23:	; push float x
x11441:	fld qword [bp + 6]	; 3: -35 70 6

sin$24:	; pop float power
x11444:	fstp qword [bp + 46]	; 3: -35 94 46

sin$25:	; push 1
x11447:	fld1	; 2: -39 -24

sin$26:	; pop float faculty
x11449:	fstp qword [bp + 54]	; 3: -35 94 54

sin$27:	; push float sign
x11452:	fld qword [bp + 38]	; 3: -35 70 38

sin$28:	; push float power
x11455:	fld qword [bp + 46]	; 3: -35 70 46

sin$29:	; £temporary658 = sign * power
x11458:	fmul	; 2: -34 -55

sin$30:	; push float faculty
x11460:	fld qword [bp + 54]	; 3: -35 70 54

sin$31:	; £temporary659 = £temporary658 / faculty
x11463:	fdiv	; 2: -34 -7

sin$32:	; pop float term
x11465:	fstp qword [bp + 22]	; 3: -35 94 22

sin$33:	; push float sum
x11468:	fld qword [bp + 30]	; 3: -35 70 30

sin$34:	; push float term
x11471:	fld qword [bp + 22]	; 3: -35 70 22

sin$35:	; £temporary660 = sum + term
x11474:	fadd	; 2: -34 -63

sin$36:	; pop float sum
x11476:	fstp qword [bp + 30]	; 3: -35 94 30

sin$37:	; push float sign
x11479:	fld qword [bp + 38]	; 3: -35 70 38

sin$38:	; push float -1
x11482:	fld qword [float8$minus1#]	; 4: -35 6 63 45

sin$39:	; £temporary661 = sign * -1
x11486:	fmul	; 2: -34 -55

sin$40:	; pop float sign
x11488:	fstp qword [bp + 38]	; 3: -35 94 38

sin$41:	; push float power
x11491:	fld qword [bp + 46]	; 3: -35 70 46

sin$42:	; push float x
x11494:	fld qword [bp + 6]	; 3: -35 70 6

sin$43:	; push float x
x11497:	fld qword [bp + 6]	; 3: -35 70 6

sin$44:	; £temporary662 = x * x
x11500:	fmul	; 2: -34 -55

sin$45:	; £temporary663 = power * £temporary662
x11502:	fmul	; 2: -34 -55

sin$46:	; pop float power
x11504:	fstp qword [bp + 46]	; 3: -35 94 46

sin$47:	; push float faculty
x11507:	fld qword [bp + 54]	; 3: -35 70 54

sin$48:	; push float index
x11510:	fld qword [bp + 14]	; 3: -35 70 14

sin$49:	; push 1
x11513:	fld1	; 2: -39 -24

sin$50:	; index = index + 1
x11515:	fadd	; 2: -34 -63

sin$51:	; top float index
x11517:	fst qword [bp + 14]	; 3: -35 86 14

sin$52:	; push float index
x11520:	fld qword [bp + 14]	; 3: -35 70 14

sin$53:	; push 1
x11523:	fld1	; 2: -39 -24

sin$54:	; index = index + 1
x11525:	fadd	; 2: -34 -63

sin$55:	; top float index
x11527:	fst qword [bp + 14]	; 3: -35 86 14

sin$56:	; £temporary666 = £temporary664 * £temporary665
x11530:	fmul	; 2: -34 -55

sin$57:	; £temporary667 = faculty * £temporary666
x11532:	fmul	; 2: -34 -55

sin$58:	; pop float faculty
x11534:	fstp qword [bp + 54]	; 3: -35 94 54

sin$59:	; call header integral zero 0 stack zero 0

sin$60:	; push float term
x11537:	fld qword [bp + 22]	; 3: -35 70 22

sin$61:	; parameter term, offset 6
x11540:	fstp qword [bp + 68]	; 3: -35 94 68

sin$62:	; call function noellipse-noellipse fabs
x11543:	mov word [bp + 62], sin$63	; 5: -57 70 62 37 45
x11548:	mov [bp + 64], bp	; 3: -119 110 64
x11551:	add bp, 62	; 3: -125 -59 62
x11554:	jmp fabs	; 3: -23 -1 -8

sin$63:	; post call

sin$64:	; £temporary668 = return_value

sin$65:	; push float 0.000000001
x11557:	fld qword [float8$0.000000001#]	; 4: -35 6 -101 41

sin$66:	; if £temporary668 >= 0.000000001 goto 27
x11561:	fcompp	; 2: -34 -39
x11563:	fstsw ax	; 3: -101 -33 -32
x11566:	sahf	; 1: -98
x11567:	jbe sin$27	; 2: 118 -117

sin$67:	; push float sum
x11569:	fld qword [bp + 30]	; 3: -35 70 30

sin$68:	; return_value = sum

sin$69:	; return
x11572:	mov ax, [bp]	; 3: -117 70 0
x11575:	mov di, [bp + 4]	; 3: -117 126 4
x11578:	mov bp, [bp + 2]	; 3: -117 110 2
x11581:	jmp ax	; 2: -1 -32

sin$70:	; function end sin

float8$minus1#:
x11583:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

fmod:	; push float y
x11591:	fld qword [bp + 14]	; 3: -35 70 14

fmod$1:	; push 0
x11594:	fldz	; 2: -39 -18

fmod$2:	; if y == 0 goto 28
x11596:	fcompp	; 2: -34 -39
x11598:	fstsw ax	; 3: -101 -33 -32
x11601:	sahf	; 1: -98
x11602:	je fmod$28	; 2: 116 89

fmod$3:	; push float x
x11604:	fld qword [bp + 6]	; 3: -35 70 6

fmod$4:	; push float y
x11607:	fld qword [bp + 14]	; 3: -35 70 14

fmod$5:	; £temporary643 = x / y
x11610:	fdiv	; 2: -34 -7

fmod$6:	; pop float quotient
x11612:	fstp qword [bp + 22]	; 3: -35 94 22

fmod$7:	; call header integral zero 0 stack zero 0

fmod$8:	; push float quotient
x11615:	fld qword [bp + 22]	; 3: -35 70 22

fmod$9:	; push float quotient
x11618:	fld qword [bp + 22]	; 3: -35 70 22

fmod$10:	; £temporary644 = float_to_int quotient (Double -> Signed_Long_Int)
x11621:	fistp dword [container4bytes#]	; 4: -37 30 120 37
x11625:	mov eax, [container4bytes#]	; 4: 102 -95 120 37

fmod$11:	; £temporary645 = int_to_float £temporary644 (Signed_Long_Int -> Double)
x11629:	mov [container4bytes#], eax	; 4: 102 -93 120 37
x11633:	fild dword [container4bytes#]	; 4: -37 6 120 37

fmod$12:	; £temporary646 = quotient - £temporary645
x11637:	fsub	; 2: -34 -23

fmod$13:	; parameter £temporary646, offset 6
x11639:	fstp qword [bp + 36]	; 3: -35 94 36

fmod$14:	; call function noellipse-noellipse fabs
x11642:	mov word [bp + 30], fmod$15	; 5: -57 70 30 -120 45
x11647:	mov [bp + 32], bp	; 3: -119 110 32
x11650:	add bp, 30	; 3: -125 -59 30
x11653:	jmp fabs	; 3: -23 -100 -8

fmod$15:	; post call

fmod$16:	; £temporary647 = return_value

fmod$17:	; pop float remainder
x11656:	fstp qword [bp + 30]	; 3: -35 94 30

fmod$18:	; push float x
x11659:	fld qword [bp + 6]	; 3: -35 70 6

fmod$19:	; push 0
x11662:	fldz	; 2: -39 -18

fmod$20:	; if x <= 0 goto 24
x11664:	fcompp	; 2: -34 -39
x11666:	fstsw ax	; 3: -101 -33 -32
x11669:	sahf	; 1: -98
x11670:	jae fmod$24	; 2: 115 5

fmod$21:	; push float remainder
x11672:	fld qword [bp + 30]	; 3: -35 70 30

fmod$22:	; decrease stack

fmod$23:	; goto 26
x11675:	jmp fmod$26	; 2: -21 5

fmod$24:	; push float remainder
x11677:	fld qword [bp + 30]	; 3: -35 70 30

fmod$25:	; £temporary649 = -remainder
x11680:	fchs	; 2: -39 -32

fmod$26:	; return_value = £temporary653

fmod$27:	; return
x11682:	mov ax, [bp]	; 3: -117 70 0
x11685:	mov di, [bp + 4]	; 3: -117 126 4
x11688:	mov bp, [bp + 2]	; 3: -117 110 2
x11691:	jmp ax	; 2: -1 -32

fmod$28:	; errno = 6
x11693:	mov word [errno], 6	; 6: -57 6 -35 9 6 0

fmod$29:	; push 0
x11699:	fldz	; 2: -39 -18

fmod$30:	; return_value = 0

fmod$31:	; return
x11701:	mov ax, [bp]	; 3: -117 70 0
x11704:	mov di, [bp + 4]	; 3: -117 126 4
x11707:	mov bp, [bp + 2]	; 3: -117 110 2
x11710:	jmp ax	; 2: -1 -32

fmod$32:	; function end fmod

cos:	; call header integral zero 0 stack zero 0

cos$1:	; push float x
x11712:	fld qword [bp + 6]	; 3: -35 70 6

cos$2:	; parameter x, offset 6
x11715:	fstp qword [bp + 20]	; 3: -35 94 20

cos$3:	; call function noellipse-noellipse fabs
x11718:	mov word [bp + 14], cos$4	; 5: -57 70 14 -44 45
x11723:	mov [bp + 16], bp	; 3: -119 110 16
x11726:	add bp, 14	; 3: -125 -59 14
x11729:	jmp fabs	; 3: -23 80 -8

cos$4:	; post call

cos$5:	; £temporary674 = return_value

cos$6:	; push float 6.2831853071795864769252866
x11732:	fld qword [float8$6.2831853071795864769252866#]	; 4: -35 6 41 4

cos$7:	; if £temporary674 <= 6.2831853071795864769252866 goto 17
x11736:	fcompp	; 2: -34 -39
x11738:	fstsw ax	; 3: -101 -33 -32
x11741:	sahf	; 1: -98
x11742:	jae cos$17	; 2: 115 30

cos$8:	; call header integral zero 0 stack zero 0

cos$9:	; push float x
x11744:	fld qword [bp + 6]	; 3: -35 70 6

cos$10:	; parameter x, offset 6
x11747:	fstp qword [bp + 20]	; 3: -35 94 20

cos$11:	; push float 6.2831853071795864769252866
x11750:	fld qword [float8$6.2831853071795864769252866#]	; 4: -35 6 41 4

cos$12:	; parameter 6.2831853071795864769252866, offset 14
x11754:	fstp qword [bp + 28]	; 3: -35 94 28

cos$13:	; call function noellipse-noellipse fmod
x11757:	mov word [bp + 14], cos$14	; 5: -57 70 14 -5 45
x11762:	mov [bp + 16], bp	; 3: -119 110 16
x11765:	add bp, 14	; 3: -125 -59 14
x11768:	jmp fmod	; 3: -23 76 -1

cos$14:	; post call

cos$15:	; £temporary676 = return_value

cos$16:	; pop float x
x11771:	fstp qword [bp + 6]	; 3: -35 94 6

cos$17:	; push 0
x11774:	fldz	; 2: -39 -18

cos$18:	; pop float index
x11776:	fstp qword [bp + 14]	; 3: -35 94 14

cos$19:	; push 0
x11779:	fldz	; 2: -39 -18

cos$20:	; pop float sum
x11781:	fstp qword [bp + 30]	; 3: -35 94 30

cos$21:	; push 1
x11784:	fld1	; 2: -39 -24

cos$22:	; pop float sign
x11786:	fstp qword [bp + 38]	; 3: -35 94 38

cos$23:	; push 1
x11789:	fld1	; 2: -39 -24

cos$24:	; pop float power
x11791:	fstp qword [bp + 46]	; 3: -35 94 46

cos$25:	; push 1
x11794:	fld1	; 2: -39 -24

cos$26:	; pop float faculty
x11796:	fstp qword [bp + 54]	; 3: -35 94 54

cos$27:	; push float sign
x11799:	fld qword [bp + 38]	; 3: -35 70 38

cos$28:	; push float power
x11802:	fld qword [bp + 46]	; 3: -35 70 46

cos$29:	; £temporary677 = sign * power
x11805:	fmul	; 2: -34 -55

cos$30:	; push float faculty
x11807:	fld qword [bp + 54]	; 3: -35 70 54

cos$31:	; £temporary678 = £temporary677 / faculty
x11810:	fdiv	; 2: -34 -7

cos$32:	; pop float term
x11812:	fstp qword [bp + 22]	; 3: -35 94 22

cos$33:	; push float sum
x11815:	fld qword [bp + 30]	; 3: -35 70 30

cos$34:	; push float term
x11818:	fld qword [bp + 22]	; 3: -35 70 22

cos$35:	; £temporary679 = sum + term
x11821:	fadd	; 2: -34 -63

cos$36:	; pop float sum
x11823:	fstp qword [bp + 30]	; 3: -35 94 30

cos$37:	; push float sign
x11826:	fld qword [bp + 38]	; 3: -35 70 38

cos$38:	; push float -1
x11829:	fld qword [float8$minus1#]	; 4: -35 6 63 45

cos$39:	; £temporary680 = sign * -1
x11833:	fmul	; 2: -34 -55

cos$40:	; pop float sign
x11835:	fstp qword [bp + 38]	; 3: -35 94 38

cos$41:	; push float power
x11838:	fld qword [bp + 46]	; 3: -35 70 46

cos$42:	; push float x
x11841:	fld qword [bp + 6]	; 3: -35 70 6

cos$43:	; push float x
x11844:	fld qword [bp + 6]	; 3: -35 70 6

cos$44:	; £temporary681 = x * x
x11847:	fmul	; 2: -34 -55

cos$45:	; £temporary682 = power * £temporary681
x11849:	fmul	; 2: -34 -55

cos$46:	; pop float power
x11851:	fstp qword [bp + 46]	; 3: -35 94 46

cos$47:	; push float faculty
x11854:	fld qword [bp + 54]	; 3: -35 70 54

cos$48:	; push float index
x11857:	fld qword [bp + 14]	; 3: -35 70 14

cos$49:	; push 1
x11860:	fld1	; 2: -39 -24

cos$50:	; index = index + 1
x11862:	fadd	; 2: -34 -63

cos$51:	; top float index
x11864:	fst qword [bp + 14]	; 3: -35 86 14

cos$52:	; push float index
x11867:	fld qword [bp + 14]	; 3: -35 70 14

cos$53:	; push 1
x11870:	fld1	; 2: -39 -24

cos$54:	; index = index + 1
x11872:	fadd	; 2: -34 -63

cos$55:	; top float index
x11874:	fst qword [bp + 14]	; 3: -35 86 14

cos$56:	; £temporary685 = £temporary683 * £temporary684
x11877:	fmul	; 2: -34 -55

cos$57:	; £temporary686 = faculty * £temporary685
x11879:	fmul	; 2: -34 -55

cos$58:	; pop float faculty
x11881:	fstp qword [bp + 54]	; 3: -35 94 54

cos$59:	; call header integral zero 0 stack zero 0

cos$60:	; push float term
x11884:	fld qword [bp + 22]	; 3: -35 70 22

cos$61:	; parameter term, offset 6
x11887:	fstp qword [bp + 68]	; 3: -35 94 68

cos$62:	; call function noellipse-noellipse fabs
x11890:	mov word [bp + 62], cos$63	; 5: -57 70 62 -128 46
x11895:	mov [bp + 64], bp	; 3: -119 110 64
x11898:	add bp, 62	; 3: -125 -59 62
x11901:	jmp fabs	; 3: -23 -92 -9

cos$63:	; post call

cos$64:	; £temporary687 = return_value

cos$65:	; push float 0.000000001
x11904:	fld qword [float8$0.000000001#]	; 4: -35 6 -101 41

cos$66:	; if £temporary687 >= 0.000000001 goto 27
x11908:	fcompp	; 2: -34 -39
x11910:	fstsw ax	; 3: -101 -33 -32
x11913:	sahf	; 1: -98
x11914:	jbe cos$27	; 2: 118 -117

cos$67:	; push float sum
x11916:	fld qword [bp + 30]	; 3: -35 70 30

cos$68:	; return_value = sum

cos$69:	; return
x11919:	mov ax, [bp]	; 3: -117 70 0
x11922:	mov di, [bp + 4]	; 3: -117 126 4
x11925:	mov bp, [bp + 2]	; 3: -117 110 2
x11928:	jmp ax	; 2: -1 -32

cos$70:	; function end cos

tan:	; call header integral zero 0 stack zero 0

tan$1:	; push float x
x11930:	fld qword [bp + 6]	; 3: -35 70 6

tan$2:	; parameter x, offset 6
x11933:	fstp qword [bp + 20]	; 3: -35 94 20

tan$3:	; call function noellipse-noellipse cos
x11936:	mov word [bp + 14], tan$4	; 5: -57 70 14 -82 46
x11941:	mov [bp + 16], bp	; 3: -119 110 16
x11944:	add bp, 14	; 3: -125 -59 14
x11947:	jmp cos	; 3: -23 18 -1

tan$4:	; post call

tan$5:	; £temporary693 = return_value

tan$6:	; pop float cos_x
x11950:	fstp qword [bp + 14]	; 3: -35 94 14

tan$7:	; push float cos_x
x11953:	fld qword [bp + 14]	; 3: -35 70 14

tan$8:	; push 0
x11956:	fldz	; 2: -39 -18

tan$9:	; if cos_x == 0 goto 20
x11958:	fcompp	; 2: -34 -39
x11960:	fstsw ax	; 3: -101 -33 -32
x11963:	sahf	; 1: -98
x11964:	je tan$20	; 2: 116 36

tan$10:	; call header integral zero 0 stack zero 0

tan$11:	; push float x
x11966:	fld qword [bp + 6]	; 3: -35 70 6

tan$12:	; parameter x, offset 6
x11969:	fstp qword [bp + 28]	; 3: -35 94 28

tan$13:	; call function noellipse-noellipse sin
x11972:	mov word [bp + 22], tan$14	; 5: -57 70 22 -46 46
x11977:	mov [bp + 24], bp	; 3: -119 110 24
x11980:	add bp, 22	; 3: -125 -59 22
x11983:	jmp sin	; 3: -23 -110 -3

tan$14:	; post call

tan$15:	; £temporary695 = return_value

tan$16:	; push float cos_x
x11986:	fld qword [bp + 14]	; 3: -35 70 14

tan$17:	; £temporary696 = £temporary695 / cos_x
x11989:	fdiv	; 2: -34 -7

tan$18:	; return_value = £temporary696

tan$19:	; return
x11991:	mov ax, [bp]	; 3: -117 70 0
x11994:	mov di, [bp + 4]	; 3: -117 126 4
x11997:	mov bp, [bp + 2]	; 3: -117 110 2
x12000:	jmp ax	; 2: -1 -32

tan$20:	; errno = 6
x12002:	mov word [errno], 6	; 6: -57 6 -35 9 6 0

tan$21:	; push 0
x12008:	fldz	; 2: -39 -18

tan$22:	; return_value = 0

tan$23:	; return
x12010:	mov ax, [bp]	; 3: -117 70 0
x12013:	mov di, [bp + 4]	; 3: -117 126 4
x12016:	mov bp, [bp + 2]	; 3: -117 110 2
x12019:	jmp ax	; 2: -1 -32

tan$24:	; function end tan

asin:	; push float x
x12021:	fld qword [bp + 6]	; 3: -35 70 6

asin$1:	; push 1
x12024:	fld1	; 2: -39 -24

asin$2:	; if x != 1 goto 6
x12026:	fcompp	; 2: -34 -39
x12028:	fstsw ax	; 3: -101 -33 -32
x12031:	sahf	; 1: -98
x12032:	jne asin$6	; 2: 117 15

asin$3:	; push float 1.57079632679489661923132165
x12034:	fld qword [float8$1.57079632679489661923132165#]	; 4: -35 6 57 4

asin$4:	; return_value = 1.57079632679489661923132165

asin$5:	; return
x12038:	mov ax, [bp]	; 3: -117 70 0
x12041:	mov di, [bp + 4]	; 3: -117 126 4
x12044:	mov bp, [bp + 2]	; 3: -117 110 2
x12047:	jmp ax	; 2: -1 -32

asin$6:	; push float x
x12049:	fld qword [bp + 6]	; 3: -35 70 6

asin$7:	; push float -1
x12052:	fld qword [float8$minus1#]	; 4: -35 6 63 45

asin$8:	; if x != -1 goto 12
x12056:	fcompp	; 2: -34 -39
x12058:	fstsw ax	; 3: -101 -33 -32
x12061:	sahf	; 1: -98
x12062:	jne asin$12	; 2: 117 15

asin$9:	; push float -1.57079632679489661923132165
x12064:	fld qword [float8$minus1.57079632679489661923132165#]	; 4: -35 6 65 4

asin$10:	; return_value = -1.57079632679489661923132165

asin$11:	; return
x12068:	mov ax, [bp]	; 3: -117 70 0
x12071:	mov di, [bp + 4]	; 3: -117 126 4
x12074:	mov bp, [bp + 2]	; 3: -117 110 2
x12077:	jmp ax	; 2: -1 -32

asin$12:	; call header integral zero 0 stack zero 0

asin$13:	; push float x
x12079:	fld qword [bp + 6]	; 3: -35 70 6

asin$14:	; parameter x, offset 6
x12082:	fstp qword [bp + 20]	; 3: -35 94 20

asin$15:	; call function noellipse-noellipse fabs
x12085:	mov word [bp + 14], asin$16	; 5: -57 70 14 67 47
x12090:	mov [bp + 16], bp	; 3: -119 110 16
x12093:	add bp, 14	; 3: -125 -59 14
x12096:	jmp fabs	; 3: -23 -31 -10

asin$16:	; post call

asin$17:	; £temporary701 = return_value

asin$18:	; push 1
x12099:	fld1	; 2: -39 -24

asin$19:	; if £temporary701 >= 1 goto 39
x12101:	fcompp	; 2: -34 -39
x12103:	fstsw ax	; 3: -101 -33 -32
x12106:	sahf	; 1: -98
x12107:	jbe asin$39	; 2: 118 74

asin$20:	; call header integral zero 0 stack zero 0

asin$21:	; push float x
x12109:	fld qword [bp + 6]	; 3: -35 70 6

asin$22:	; call header integral zero 0 stack no zero 1
x12112:	fstp qword [bp + 14]	; 3: -35 94 14

asin$23:	; push 1
x12115:	fld1	; 2: -39 -24

asin$24:	; push float x
x12117:	fld qword [bp + 6]	; 3: -35 70 6

asin$25:	; push float x
x12120:	fld qword [bp + 6]	; 3: -35 70 6

asin$26:	; £temporary703 = x * x
x12123:	fmul	; 2: -34 -55

asin$27:	; £temporary704 = 1 - £temporary703
x12125:	fsub	; 2: -34 -23

asin$28:	; parameter £temporary704, offset 6
x12127:	fstp qword [bp + 28]	; 3: -35 94 28

asin$29:	; call function noellipse-noellipse sqrt
x12130:	mov word [bp + 22], asin$30	; 5: -57 70 22 112 47
x12135:	mov [bp + 24], bp	; 3: -119 110 24
x12138:	add bp, 22	; 3: -125 -59 22
x12141:	nop	; 1: -112
x12142:	jmp sqrt	; 2: -21 58

asin$30:	; post call
x12144:	fstp qword [bp + 22]	; 3: -35 94 22
x12147:	fld qword [bp + 14]	; 3: -35 70 14
x12150:	fld qword [bp + 22]	; 3: -35 70 22

asin$31:	; £temporary705 = return_value

asin$32:	; £temporary706 = x / £temporary705
x12153:	fdiv	; 2: -34 -7

asin$33:	; parameter £temporary706, offset 6
x12155:	fstp qword [bp + 20]	; 3: -35 94 20

asin$34:	; call function noellipse-noellipse atan
x12158:	mov word [bp + 14], asin$35	; 5: -57 70 14 -116 47
x12163:	mov [bp + 16], bp	; 3: -119 110 16
x12166:	add bp, 14	; 3: -125 -59 14
x12169:	jmp atan	; 3: -23 -110 0

asin$35:	; post call

asin$36:	; £temporary707 = return_value

asin$37:	; return_value = £temporary707

asin$38:	; return
x12172:	mov ax, [bp]	; 3: -117 70 0
x12175:	mov di, [bp + 4]	; 3: -117 126 4
x12178:	mov bp, [bp + 2]	; 3: -117 110 2
x12181:	jmp ax	; 2: -1 -32

asin$39:	; errno = 6
x12183:	mov word [errno], 6	; 6: -57 6 -35 9 6 0

asin$40:	; push 0
x12189:	fldz	; 2: -39 -18

asin$41:	; return_value = 0

asin$42:	; return
x12191:	mov ax, [bp]	; 3: -117 70 0
x12194:	mov di, [bp + 4]	; 3: -117 126 4
x12197:	mov bp, [bp + 2]	; 3: -117 110 2
x12200:	jmp ax	; 2: -1 -32

asin$43:	; function end asin

sqrt:	; push float x
x12202:	fld qword [bp + 6]	; 3: -35 70 6

sqrt$1:	; push 0
x12205:	fldz	; 2: -39 -18

sqrt$2:	; if x < 0 goto 28
x12207:	fcompp	; 2: -34 -39
x12209:	fstsw ax	; 3: -101 -33 -32
x12212:	sahf	; 1: -98
x12213:	ja sqrt$28	; 2: 119 84

sqrt$3:	; push 1
x12215:	fld1	; 2: -39 -24

sqrt$4:	; pop float root_i_plus_1
x12217:	fstp qword [bp + 22]	; 3: -35 94 22

sqrt$5:	; push float root_i_plus_1
x12220:	fld qword [bp + 22]	; 3: -35 70 22

sqrt$6:	; pop float root_i
x12223:	fstp qword [bp + 14]	; 3: -35 94 14

sqrt$7:	; push float root_i
x12226:	fld qword [bp + 14]	; 3: -35 70 14

sqrt$8:	; push float x
x12229:	fld qword [bp + 6]	; 3: -35 70 6

sqrt$9:	; push float root_i
x12232:	fld qword [bp + 14]	; 3: -35 70 14

sqrt$10:	; £temporary616 = x / root_i
x12235:	fdiv	; 2: -34 -7

sqrt$11:	; £temporary617 = root_i + £temporary616
x12237:	fadd	; 2: -34 -63

sqrt$12:	; push float 2
x12239:	fld qword [float8$2#]	; 4: -35 6 121 4

sqrt$13:	; £temporary618 = £temporary617 / 2
x12243:	fdiv	; 2: -34 -7

sqrt$14:	; pop float root_i_plus_1
x12245:	fstp qword [bp + 22]	; 3: -35 94 22

sqrt$15:	; call header integral zero 0 stack zero 0

sqrt$16:	; push float root_i_plus_1
x12248:	fld qword [bp + 22]	; 3: -35 70 22

sqrt$17:	; push float root_i
x12251:	fld qword [bp + 14]	; 3: -35 70 14

sqrt$18:	; £temporary619 = root_i_plus_1 - root_i
x12254:	fsub	; 2: -34 -23

sqrt$19:	; parameter £temporary619, offset 6
x12256:	fstp qword [bp + 36]	; 3: -35 94 36

sqrt$20:	; call function noellipse-noellipse fabs
x12259:	mov word [bp + 30], sqrt$21	; 5: -57 70 30 -15 47
x12264:	mov [bp + 32], bp	; 3: -119 110 32
x12267:	add bp, 30	; 3: -125 -59 30
x12270:	jmp fabs	; 3: -23 51 -10

sqrt$21:	; post call

sqrt$22:	; £temporary620 = return_value

sqrt$23:	; push float 0.000000001
x12273:	fld qword [float8$0.000000001#]	; 4: -35 6 -101 41

sqrt$24:	; if £temporary620 >= 0.000000001 goto 5
x12277:	fcompp	; 2: -34 -39
x12279:	fstsw ax	; 3: -101 -33 -32
x12282:	sahf	; 1: -98
x12283:	jbe sqrt$5	; 2: 118 -65

sqrt$25:	; push float root_i_plus_1
x12285:	fld qword [bp + 22]	; 3: -35 70 22

sqrt$26:	; return_value = root_i_plus_1

sqrt$27:	; return
x12288:	mov ax, [bp]	; 3: -117 70 0
x12291:	mov di, [bp + 4]	; 3: -117 126 4
x12294:	mov bp, [bp + 2]	; 3: -117 110 2
x12297:	jmp ax	; 2: -1 -32

sqrt$28:	; errno = 6
x12299:	mov word [errno], 6	; 6: -57 6 -35 9 6 0

sqrt$29:	; push 0
x12305:	fldz	; 2: -39 -18

sqrt$30:	; return_value = 0

sqrt$31:	; return
x12307:	mov ax, [bp]	; 3: -117 70 0
x12310:	mov di, [bp + 4]	; 3: -117 126 4
x12313:	mov bp, [bp + 2]	; 3: -117 110 2
x12316:	jmp ax	; 2: -1 -32

sqrt$32:	; function end sqrt

atan:	; push float x
x12318:	fld qword [bp + 6]	; 3: -35 70 6

atan$1:	; push 0
x12321:	fldz	; 2: -39 -18

atan$2:	; if x >= 0 goto 13
x12323:	fcompp	; 2: -34 -39
x12325:	fstsw ax	; 3: -101 -33 -32
x12328:	sahf	; 1: -98
x12329:	jbe atan$13	; 2: 118 35

atan$3:	; call header integral zero 0 stack zero 0

atan$4:	; push float x
x12331:	fld qword [bp + 6]	; 3: -35 70 6

atan$5:	; £temporary723 = -x
x12334:	fchs	; 2: -39 -32

atan$6:	; parameter £temporary723, offset 6
x12336:	fstp qword [bp + 20]	; 3: -35 94 20

atan$7:	; call function noellipse-noellipse atan
x12339:	mov word [bp + 14], atan$8	; 5: -57 70 14 65 48
x12344:	mov [bp + 16], bp	; 3: -119 110 16
x12347:	add bp, 14	; 3: -125 -59 14
x12350:	nop	; 1: -112
x12351:	jmp atan	; 2: -21 -35

atan$8:	; post call

atan$9:	; £temporary724 = return_value

atan$10:	; £temporary725 = -£temporary724
x12353:	fchs	; 2: -39 -32

atan$11:	; return_value = £temporary725

atan$12:	; return
x12355:	mov ax, [bp]	; 3: -117 70 0
x12358:	mov di, [bp + 4]	; 3: -117 126 4
x12361:	mov bp, [bp + 2]	; 3: -117 110 2
x12364:	jmp ax	; 2: -1 -32

atan$13:	; push float x
x12366:	fld qword [bp + 6]	; 3: -35 70 6

atan$14:	; push 1
x12369:	fld1	; 2: -39 -24

atan$15:	; if x <= 1 goto 28
x12371:	fcompp	; 2: -34 -39
x12373:	fstsw ax	; 3: -101 -33 -32
x12376:	sahf	; 1: -98
x12377:	jae atan$28	; 2: 115 53

atan$16:	; push float 1.57079632679489661923132165
x12379:	fld qword [float8$1.57079632679489661923132165#]	; 4: -35 6 57 4

atan$17:	; call header integral zero 0 stack no zero 1
x12383:	fstp qword [bp + 14]	; 3: -35 94 14

atan$18:	; push 1
x12386:	fld1	; 2: -39 -24

atan$19:	; push float x
x12388:	fld qword [bp + 6]	; 3: -35 70 6

atan$20:	; £temporary727 = 1 / x
x12391:	fdiv	; 2: -34 -7

atan$21:	; parameter £temporary727, offset 6
x12393:	fstp qword [bp + 28]	; 3: -35 94 28

atan$22:	; call function noellipse-noellipse atan
x12396:	mov word [bp + 22], atan$23	; 5: -57 70 22 122 48
x12401:	mov [bp + 24], bp	; 3: -119 110 24
x12404:	add bp, 22	; 3: -125 -59 22
x12407:	nop	; 1: -112
x12408:	jmp atan	; 2: -21 -92

atan$23:	; post call
x12410:	fstp qword [bp + 22]	; 3: -35 94 22
x12413:	fld qword [bp + 14]	; 3: -35 70 14
x12416:	fld qword [bp + 22]	; 3: -35 70 22

atan$24:	; £temporary728 = return_value

atan$25:	; £temporary729 = 1.57079632679489661923132165 - £temporary728
x12419:	fsub	; 2: -34 -23

atan$26:	; return_value = £temporary729

atan$27:	; return
x12421:	mov ax, [bp]	; 3: -117 70 0
x12424:	mov di, [bp + 4]	; 3: -117 126 4
x12427:	mov bp, [bp + 2]	; 3: -117 110 2
x12430:	jmp ax	; 2: -1 -32

atan$28:	; push float x
x12432:	fld qword [bp + 6]	; 3: -35 70 6

atan$29:	; push float 0.5
x12435:	fld qword [float8$0.5#]	; 4: -35 6 -115 49

atan$30:	; if x <= 0.5 goto 54
x12439:	fcompp	; 2: -34 -39
x12441:	fstsw ax	; 3: -101 -33 -32
x12444:	sahf	; 1: -98
x12445:	jae atan$54	; 2: 115 108

atan$31:	; push float 2
x12447:	fld qword [float8$2#]	; 4: -35 6 121 4

atan$32:	; call header integral zero 0 stack no zero 1
x12451:	fstp qword [bp + 14]	; 3: -35 94 14

atan$33:	; push float x
x12454:	fld qword [bp + 6]	; 3: -35 70 6

atan$34:	; push 1
x12457:	fld1	; 2: -39 -24

atan$35:	; call header integral zero 0 stack no zero 3
x12459:	fstp qword [bp + 14]	; 3: -35 94 14
x12462:	fstp qword [bp + 22]	; 3: -35 94 22
x12465:	fstp qword [bp + 30]	; 3: -35 94 30

atan$36:	; push 1
x12468:	fld1	; 2: -39 -24

atan$37:	; push float x
x12470:	fld qword [bp + 6]	; 3: -35 70 6

atan$38:	; push float x
x12473:	fld qword [bp + 6]	; 3: -35 70 6

atan$39:	; £temporary731 = x * x
x12476:	fmul	; 2: -34 -55

atan$40:	; £temporary732 = 1 + £temporary731
x12478:	fadd	; 2: -34 -63

atan$41:	; parameter £temporary732, offset 6
x12480:	fstp qword [bp + 52]	; 3: -35 94 52

atan$42:	; call function noellipse-noellipse sqrt
x12483:	mov word [bp + 46], atan$43	; 5: -57 70 46 -47 48
x12488:	mov [bp + 48], bp	; 3: -119 110 48
x12491:	add bp, 46	; 3: -125 -59 46
x12494:	jmp sqrt	; 3: -23 -39 -2

atan$43:	; post call
x12497:	fstp qword [bp + 38]	; 3: -35 94 38
x12500:	fld qword [bp + 30]	; 3: -35 70 30
x12503:	fld qword [bp + 22]	; 3: -35 70 22
x12506:	fld qword [bp + 14]	; 3: -35 70 14
x12509:	fld qword [bp + 38]	; 3: -35 70 38

atan$44:	; £temporary733 = return_value

atan$45:	; £temporary734 = 1 + £temporary733
x12512:	fadd	; 2: -34 -63

atan$46:	; £temporary735 = x / £temporary734
x12514:	fdiv	; 2: -34 -7

atan$47:	; parameter £temporary735, offset 6
x12516:	fstp qword [bp + 28]	; 3: -35 94 28

atan$48:	; call function noellipse-noellipse atan
x12519:	mov word [bp + 22], atan$49	; 5: -57 70 22 -11 48
x12524:	mov [bp + 24], bp	; 3: -119 110 24
x12527:	add bp, 22	; 3: -125 -59 22
x12530:	jmp atan	; 3: -23 41 -1

atan$49:	; post call
x12533:	fstp qword [bp + 22]	; 3: -35 94 22
x12536:	fld qword [bp + 14]	; 3: -35 70 14
x12539:	fld qword [bp + 22]	; 3: -35 70 22

atan$50:	; £temporary736 = return_value

atan$51:	; £temporary737 = 2 * £temporary736
x12542:	fmul	; 2: -34 -55

atan$52:	; return_value = £temporary737

atan$53:	; return
x12544:	mov ax, [bp]	; 3: -117 70 0
x12547:	mov di, [bp + 4]	; 3: -117 126 4
x12550:	mov bp, [bp + 2]	; 3: -117 110 2
x12553:	jmp ax	; 2: -1 -32

atan$54:	; push 0
x12555:	fldz	; 2: -39 -18

atan$55:	; pop float sum
x12557:	fstp qword [bp + 22]	; 3: -35 94 22

atan$56:	; push 1
x12560:	fld1	; 2: -39 -24

atan$57:	; pop float sign
x12562:	fstp qword [bp + 30]	; 3: -35 94 30

atan$58:	; push 1
x12565:	fld1	; 2: -39 -24

atan$59:	; pop float denominator
x12567:	fstp qword [bp + 38]	; 3: -35 94 38

atan$60:	; push float x
x12570:	fld qword [bp + 6]	; 3: -35 70 6

atan$61:	; pop float product
x12573:	fstp qword [bp + 46]	; 3: -35 94 46

atan$62:	; push float sign
x12576:	fld qword [bp + 30]	; 3: -35 70 30

atan$63:	; push float product
x12579:	fld qword [bp + 46]	; 3: -35 70 46

atan$64:	; £temporary738 = sign * product
x12582:	fmul	; 2: -34 -55

atan$65:	; push float denominator
x12584:	fld qword [bp + 38]	; 3: -35 70 38

atan$66:	; £temporary739 = £temporary738 / denominator
x12587:	fdiv	; 2: -34 -7

atan$67:	; pop float term
x12589:	fstp qword [bp + 14]	; 3: -35 94 14

atan$68:	; push float sum
x12592:	fld qword [bp + 22]	; 3: -35 70 22

atan$69:	; push float term
x12595:	fld qword [bp + 14]	; 3: -35 70 14

atan$70:	; £temporary740 = sum + term
x12598:	fadd	; 2: -34 -63

atan$71:	; pop float sum
x12600:	fstp qword [bp + 22]	; 3: -35 94 22

atan$72:	; push float sign
x12603:	fld qword [bp + 30]	; 3: -35 70 30

atan$73:	; £temporary741 = -sign
x12606:	fchs	; 2: -39 -32

atan$74:	; pop float sign
x12608:	fstp qword [bp + 30]	; 3: -35 94 30

atan$75:	; push float product
x12611:	fld qword [bp + 46]	; 3: -35 70 46

atan$76:	; push float x
x12614:	fld qword [bp + 6]	; 3: -35 70 6

atan$77:	; push float x
x12617:	fld qword [bp + 6]	; 3: -35 70 6

atan$78:	; £temporary742 = x * x
x12620:	fmul	; 2: -34 -55

atan$79:	; £temporary743 = product * £temporary742
x12622:	fmul	; 2: -34 -55

atan$80:	; pop float product
x12624:	fstp qword [bp + 46]	; 3: -35 94 46

atan$81:	; push float denominator
x12627:	fld qword [bp + 38]	; 3: -35 70 38

atan$82:	; push float 2
x12630:	fld qword [float8$2#]	; 4: -35 6 121 4

atan$83:	; £temporary744 = denominator + 2
x12634:	fadd	; 2: -34 -63

atan$84:	; pop float denominator
x12636:	fstp qword [bp + 38]	; 3: -35 94 38

atan$85:	; call header integral zero 0 stack zero 0

atan$86:	; push float term
x12639:	fld qword [bp + 14]	; 3: -35 70 14

atan$87:	; parameter term, offset 6
x12642:	fstp qword [bp + 60]	; 3: -35 94 60

atan$88:	; call function noellipse-noellipse fabs
x12645:	mov word [bp + 54], atan$89	; 5: -57 70 54 115 49
x12650:	mov [bp + 56], bp	; 3: -119 110 56
x12653:	add bp, 54	; 3: -125 -59 54
x12656:	jmp fabs	; 3: -23 -79 -12

atan$89:	; post call

atan$90:	; £temporary745 = return_value

atan$91:	; push float 0.000000001
x12659:	fld qword [float8$0.000000001#]	; 4: -35 6 -101 41

atan$92:	; if £temporary745 >= 0.000000001 goto 62
x12663:	fcompp	; 2: -34 -39
x12665:	fstsw ax	; 3: -101 -33 -32
x12668:	sahf	; 1: -98
x12669:	jbe atan$62	; 2: 118 -95

atan$93:	; push float sum
x12671:	fld qword [bp + 22]	; 3: -35 70 22

atan$94:	; return_value = sum

atan$95:	; return
x12674:	mov ax, [bp]	; 3: -117 70 0
x12677:	mov di, [bp + 4]	; 3: -117 126 4
x12680:	mov bp, [bp + 2]	; 3: -117 110 2
x12683:	jmp ax	; 2: -1 -32

atan$96:	; function end atan

float8$0.5#:
x12685:	dq 0.5	; 8: 0 0 0 0 0 0 -32 63

acos:	; push float x
x12693:	fld qword [bp + 6]	; 3: -35 70 6

acos$1:	; push 0
x12696:	fldz	; 2: -39 -18

acos$2:	; if x != 0 goto 6
x12698:	fcompp	; 2: -34 -39
x12700:	fstsw ax	; 3: -101 -33 -32
x12703:	sahf	; 1: -98
x12704:	jne acos$6	; 2: 117 15

acos$3:	; push float 1.57079632679489661923132165
x12706:	fld qword [float8$1.57079632679489661923132165#]	; 4: -35 6 57 4

acos$4:	; return_value = 1.57079632679489661923132165

acos$5:	; return
x12710:	mov ax, [bp]	; 3: -117 70 0
x12713:	mov di, [bp + 4]	; 3: -117 126 4
x12716:	mov bp, [bp + 2]	; 3: -117 110 2
x12719:	jmp ax	; 2: -1 -32

acos$6:	; call header integral zero 0 stack zero 0

acos$7:	; push float x
x12721:	fld qword [bp + 6]	; 3: -35 70 6

acos$8:	; parameter x, offset 6
x12724:	fstp qword [bp + 20]	; 3: -35 94 20

acos$9:	; call function noellipse-noellipse fabs
x12727:	mov word [bp + 14], acos$10	; 5: -57 70 14 -59 49
x12732:	mov [bp + 16], bp	; 3: -119 110 16
x12735:	add bp, 14	; 3: -125 -59 14
x12738:	jmp fabs	; 3: -23 95 -12

acos$10:	; post call

acos$11:	; £temporary712 = return_value

acos$12:	; push 1
x12741:	fld1	; 2: -39 -24

acos$13:	; if £temporary712 >= 1 goto 33
x12743:	fcompp	; 2: -34 -39
x12745:	fstsw ax	; 3: -101 -33 -32
x12748:	sahf	; 1: -98
x12749:	jbe acos$33	; 2: 118 74

acos$14:	; call header integral zero 0 stack zero 0

acos$15:	; push float x
x12751:	fld qword [bp + 6]	; 3: -35 70 6

acos$16:	; call header integral zero 0 stack no zero 1
x12754:	fstp qword [bp + 14]	; 3: -35 94 14

acos$17:	; push 1
x12757:	fld1	; 2: -39 -24

acos$18:	; push float x
x12759:	fld qword [bp + 6]	; 3: -35 70 6

acos$19:	; push float x
x12762:	fld qword [bp + 6]	; 3: -35 70 6

acos$20:	; £temporary714 = x * x
x12765:	fmul	; 2: -34 -55

acos$21:	; £temporary715 = 1 - £temporary714
x12767:	fsub	; 2: -34 -23

acos$22:	; parameter £temporary715, offset 6
x12769:	fstp qword [bp + 28]	; 3: -35 94 28

acos$23:	; call function noellipse-noellipse sqrt
x12772:	mov word [bp + 22], acos$24	; 5: -57 70 22 -14 49
x12777:	mov [bp + 24], bp	; 3: -119 110 24
x12780:	add bp, 22	; 3: -125 -59 22
x12783:	jmp sqrt	; 3: -23 -72 -3

acos$24:	; post call
x12786:	fstp qword [bp + 22]	; 3: -35 94 22
x12789:	fld qword [bp + 14]	; 3: -35 70 14
x12792:	fld qword [bp + 22]	; 3: -35 70 22

acos$25:	; £temporary716 = return_value

acos$26:	; £temporary717 = x / £temporary716
x12795:	fdiv	; 2: -34 -7

acos$27:	; parameter £temporary717, offset 6
x12797:	fstp qword [bp + 20]	; 3: -35 94 20

acos$28:	; call function noellipse-noellipse atan
x12800:	mov word [bp + 14], acos$29	; 5: -57 70 14 14 50
x12805:	mov [bp + 16], bp	; 3: -119 110 16
x12808:	add bp, 14	; 3: -125 -59 14
x12811:	jmp atan	; 3: -23 16 -2

acos$29:	; post call

acos$30:	; £temporary718 = return_value

acos$31:	; return_value = £temporary718

acos$32:	; return
x12814:	mov ax, [bp]	; 3: -117 70 0
x12817:	mov di, [bp + 4]	; 3: -117 126 4
x12820:	mov bp, [bp + 2]	; 3: -117 110 2
x12823:	jmp ax	; 2: -1 -32

acos$33:	; errno = 6
x12825:	mov word [errno], 6	; 6: -57 6 -35 9 6 0

acos$34:	; push 0
x12831:	fldz	; 2: -39 -18

acos$35:	; return_value = 0

acos$36:	; return
x12833:	mov ax, [bp]	; 3: -117 70 0
x12836:	mov di, [bp + 4]	; 3: -117 126 4
x12839:	mov bp, [bp + 2]	; 3: -117 110 2
x12842:	jmp ax	; 2: -1 -32

acos$37:	; function end acos

sinh:	; call header integral zero 0 stack zero 0

sinh$1:	; push float x
x12844:	fld qword [bp + 6]	; 3: -35 70 6

sinh$2:	; parameter x, offset 6
x12847:	fstp qword [bp + 20]	; 3: -35 94 20

sinh$3:	; call function noellipse-noellipse exp
x12850:	mov word [bp + 14], sinh$4	; 5: -57 70 14 64 50
x12855:	mov [bp + 16], bp	; 3: -119 110 16
x12858:	add bp, 14	; 3: -125 -59 14
x12861:	jmp exp	; 3: -23 -27 -8

sinh$4:	; post call

sinh$5:	; £temporary756 = return_value

sinh$6:	; call header integral zero 0 stack no zero 1
x12864:	fstp qword [bp + 14]	; 3: -35 94 14

sinh$7:	; push float x
x12867:	fld qword [bp + 6]	; 3: -35 70 6

sinh$8:	; £temporary757 = -x
x12870:	fchs	; 2: -39 -32

sinh$9:	; parameter £temporary757, offset 6
x12872:	fstp qword [bp + 28]	; 3: -35 94 28

sinh$10:	; call function noellipse-noellipse exp
x12875:	mov word [bp + 22], sinh$11	; 5: -57 70 22 89 50
x12880:	mov [bp + 24], bp	; 3: -119 110 24
x12883:	add bp, 22	; 3: -125 -59 22
x12886:	jmp exp	; 3: -23 -52 -8

sinh$11:	; post call
x12889:	fstp qword [bp + 22]	; 3: -35 94 22
x12892:	fld qword [bp + 14]	; 3: -35 70 14
x12895:	fld qword [bp + 22]	; 3: -35 70 22

sinh$12:	; £temporary758 = return_value

sinh$13:	; £temporary759 = £temporary756 - £temporary758
x12898:	fsub	; 2: -34 -23

sinh$14:	; push float 2
x12900:	fld qword [float8$2#]	; 4: -35 6 121 4

sinh$15:	; £temporary760 = £temporary759 / 2
x12904:	fdiv	; 2: -34 -7

sinh$16:	; return_value = £temporary760

sinh$17:	; return
x12906:	mov ax, [bp]	; 3: -117 70 0
x12909:	mov di, [bp + 4]	; 3: -117 126 4
x12912:	mov bp, [bp + 2]	; 3: -117 110 2
x12915:	jmp ax	; 2: -1 -32

sinh$18:	; function end sinh

cosh:	; call header integral zero 0 stack zero 0

cosh$1:	; push float x
x12917:	fld qword [bp + 6]	; 3: -35 70 6

cosh$2:	; parameter x, offset 6
x12920:	fstp qword [bp + 20]	; 3: -35 94 20

cosh$3:	; call function noellipse-noellipse exp
x12923:	mov word [bp + 14], cosh$4	; 5: -57 70 14 -119 50
x12928:	mov [bp + 16], bp	; 3: -119 110 16
x12931:	add bp, 14	; 3: -125 -59 14
x12934:	jmp exp	; 3: -23 -100 -8

cosh$4:	; post call

cosh$5:	; £temporary763 = return_value

cosh$6:	; call header integral zero 0 stack no zero 1
x12937:	fstp qword [bp + 14]	; 3: -35 94 14

cosh$7:	; push float x
x12940:	fld qword [bp + 6]	; 3: -35 70 6

cosh$8:	; £temporary764 = -x
x12943:	fchs	; 2: -39 -32

cosh$9:	; parameter £temporary764, offset 6
x12945:	fstp qword [bp + 28]	; 3: -35 94 28

cosh$10:	; call function noellipse-noellipse exp
x12948:	mov word [bp + 22], cosh$11	; 5: -57 70 22 -94 50
x12953:	mov [bp + 24], bp	; 3: -119 110 24
x12956:	add bp, 22	; 3: -125 -59 22
x12959:	jmp exp	; 3: -23 -125 -8

cosh$11:	; post call
x12962:	fstp qword [bp + 22]	; 3: -35 94 22
x12965:	fld qword [bp + 14]	; 3: -35 70 14
x12968:	fld qword [bp + 22]	; 3: -35 70 22

cosh$12:	; £temporary765 = return_value

cosh$13:	; £temporary766 = £temporary763 + £temporary765
x12971:	fadd	; 2: -34 -63

cosh$14:	; push float 2
x12973:	fld qword [float8$2#]	; 4: -35 6 121 4

cosh$15:	; £temporary767 = £temporary766 / 2
x12977:	fdiv	; 2: -34 -7

cosh$16:	; return_value = £temporary767

cosh$17:	; return
x12979:	mov ax, [bp]	; 3: -117 70 0
x12982:	mov di, [bp + 4]	; 3: -117 126 4
x12985:	mov bp, [bp + 2]	; 3: -117 110 2
x12988:	jmp ax	; 2: -1 -32

cosh$18:	; function end cosh

tanh:	; call header integral zero 0 stack zero 0

tanh$1:	; push float x
x12990:	fld qword [bp + 6]	; 3: -35 70 6

tanh$2:	; parameter x, offset 6
x12993:	fstp qword [bp + 20]	; 3: -35 94 20

tanh$3:	; call function noellipse-noellipse sinh
x12996:	mov word [bp + 14], tanh$4	; 5: -57 70 14 -46 50
x13001:	mov [bp + 16], bp	; 3: -119 110 16
x13004:	add bp, 14	; 3: -125 -59 14
x13007:	jmp sinh	; 3: -23 90 -1

tanh$4:	; post call

tanh$5:	; £temporary770 = return_value

tanh$6:	; call header integral zero 0 stack no zero 1
x13010:	fstp qword [bp + 14]	; 3: -35 94 14

tanh$7:	; push float x
x13013:	fld qword [bp + 6]	; 3: -35 70 6

tanh$8:	; parameter x, offset 6
x13016:	fstp qword [bp + 28]	; 3: -35 94 28

tanh$9:	; call function noellipse-noellipse cosh
x13019:	mov word [bp + 22], tanh$10	; 5: -57 70 22 -23 50
x13024:	mov [bp + 24], bp	; 3: -119 110 24
x13027:	add bp, 22	; 3: -125 -59 22
x13030:	nop	; 1: -112
x13031:	jmp cosh	; 2: -21 -116

tanh$10:	; post call
x13033:	fstp qword [bp + 22]	; 3: -35 94 22
x13036:	fld qword [bp + 14]	; 3: -35 70 14
x13039:	fld qword [bp + 22]	; 3: -35 70 22

tanh$11:	; £temporary771 = return_value

tanh$12:	; £temporary772 = £temporary770 / £temporary771
x13042:	fdiv	; 2: -34 -7

tanh$13:	; return_value = £temporary772

tanh$14:	; return
x13044:	mov ax, [bp]	; 3: -117 70 0
x13047:	mov di, [bp + 4]	; 3: -117 126 4
x13050:	mov bp, [bp + 2]	; 3: -117 110 2
x13053:	jmp ax	; 2: -1 -32

tanh$15:	; function end tanh

frexp:	; push float x
x13055:	fld qword [bp + 6]	; 3: -35 70 6

frexp$1:	; push 0
x13058:	fldz	; 2: -39 -18

frexp$2:	; if x == 0 goto 32
x13060:	fcompp	; 2: -34 -39
x13062:	fstsw ax	; 3: -101 -33 -32
x13065:	sahf	; 1: -98
x13066:	je frexp$32	; 2: 116 110

frexp$3:	; call header integral zero 0 stack zero 0

frexp$4:	; call header integral zero 0 stack zero 0

frexp$5:	; push float x
x13068:	fld qword [bp + 6]	; 3: -35 70 6

frexp$6:	; parameter x, offset 6
x13071:	fstp qword [bp + 22]	; 3: -35 94 22

frexp$7:	; call function noellipse-noellipse fabs
x13074:	mov word [bp + 16], frexp$8	; 5: -57 70 16 32 51
x13079:	mov [bp + 18], bp	; 3: -119 110 18
x13082:	add bp, 16	; 3: -125 -59 16
x13085:	jmp fabs	; 3: -23 4 -13

frexp$8:	; post call

frexp$9:	; £temporary600 = return_value

frexp$10:	; parameter £temporary600, offset 6
x13088:	fstp qword [bp + 22]	; 3: -35 94 22

frexp$11:	; call function noellipse-noellipse log2
x13091:	mov word [bp + 16], frexp$12	; 5: -57 70 16 49 51
x13096:	mov [bp + 18], bp	; 3: -119 110 18
x13099:	add bp, 16	; 3: -125 -59 16
x13102:	nop	; 1: -112
x13103:	jmp @24$log2	; 2: -21 99

frexp$12:	; post call

frexp$13:	; £temporary601 = return_value

frexp$14:	; £temporary602 = £temporary601 + 1
x13105:	inc bx	; 1: 67

frexp$15:	; £temporary603 = int_to_int £temporary602 (Signed_Int -> Signed_Int)

frexp$16:	; exponent = £temporary603
x13106:	mov [bp + 16], bx	; 3: -119 94 16

frexp$17:	; if p == 0 goto 20
x13109:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x13113:	je frexp$20	; 2: 116 8

frexp$18:	; £temporary605 -> p = *p
x13115:	mov si, [bp + 14]	; 3: -117 118 14

frexp$19:	; £temporary605 -> p = exponent
x13118:	mov ax, [bp + 16]	; 3: -117 70 16
x13121:	mov [si], ax	; 2: -119 4

frexp$20:	; push float x
x13123:	fld qword [bp + 6]	; 3: -35 70 6

frexp$21:	; call header integral zero 0 stack no zero 1
x13126:	fstp qword [bp + 18]	; 3: -35 94 18

frexp$22:	; push float 2
x13129:	fld qword [float8$2#]	; 4: -35 6 121 4

frexp$23:	; parameter 2, offset 6
x13133:	fstp qword [bp + 32]	; 3: -35 94 32

frexp$24:	; £temporary606 = int_to_float exponent (Signed_Int -> Double)
x13136:	fild word [bp + 16]	; 3: -33 70 16

frexp$25:	; parameter £temporary606, offset 14
x13139:	fstp qword [bp + 40]	; 3: -35 94 40

frexp$26:	; call function noellipse-noellipse pow
x13142:	mov word [bp + 26], frexp$27	; 5: -57 70 26 100 51
x13147:	mov [bp + 28], bp	; 3: -119 110 28
x13150:	add bp, 26	; 3: -125 -59 26
x13153:	jmp pow	; 3: -23 63 -10

frexp$27:	; post call
x13156:	fstp qword [bp + 26]	; 3: -35 94 26
x13159:	fld qword [bp + 18]	; 3: -35 70 18
x13162:	fld qword [bp + 26]	; 3: -35 70 26

frexp$28:	; £temporary607 = return_value

frexp$29:	; £temporary608 = x / £temporary607
x13165:	fdiv	; 2: -34 -7

frexp$30:	; return_value = £temporary608

frexp$31:	; return
x13167:	mov ax, [bp]	; 3: -117 70 0
x13170:	mov di, [bp + 4]	; 3: -117 126 4
x13173:	mov bp, [bp + 2]	; 3: -117 110 2
x13176:	jmp ax	; 2: -1 -32

frexp$32:	; if p == 0 goto 35
x13178:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x13182:	je frexp$35	; 2: 116 7

frexp$33:	; £temporary610 -> p = *p
x13184:	mov si, [bp + 14]	; 3: -117 118 14

frexp$34:	; £temporary610 -> p = 0
x13187:	mov word [si], 0	; 4: -57 4 0 0

frexp$35:	; push 0
x13191:	fldz	; 2: -39 -18

frexp$36:	; return_value = 0

frexp$37:	; return
x13193:	mov ax, [bp]	; 3: -117 70 0
x13196:	mov di, [bp + 4]	; 3: -117 126 4
x13199:	mov bp, [bp + 2]	; 3: -117 110 2
x13202:	jmp ax	; 2: -1 -32

frexp$38:	; function end frexp

@24$log2:	; call header integral zero 0 stack zero 0

@24$log2$1:	; push float x
x13204:	fld qword [bp + 6]	; 3: -35 70 6

@24$log2$2:	; parameter x, offset 6
x13207:	fstp qword [bp + 20]	; 3: -35 94 20

@24$log2$3:	; call function noellipse-noellipse log
x13210:	mov word [bp + 14], @24$log2$4	; 5: -57 70 14 -88 51
x13215:	mov [bp + 16], bp	; 3: -119 110 16
x13218:	add bp, 14	; 3: -125 -59 14
x13221:	jmp log	; 3: -23 -45 -12

@24$log2$4:	; post call

@24$log2$5:	; £temporary595 = return_value

@24$log2$6:	; push float 0.6931471805599453094172321
x13224:	fld qword [float8$0.6931471805599453094172321#]	; 4: -35 6 -63 51

@24$log2$7:	; £temporary596 = £temporary595 / 0.6931471805599453094172321
x13228:	fdiv	; 2: -34 -7

@24$log2$8:	; £temporary597 = float_to_int £temporary596 (Double -> Signed_Int)
x13230:	fistp word [container2bytes#]	; 4: -33 30 43 26
x13234:	mov bx, [container2bytes#]	; 4: -117 30 43 26

@24$log2$9:	; return_value = £temporary597

@24$log2$10:	; return
x13238:	mov ax, [bp]	; 3: -117 70 0
x13241:	mov di, [bp + 4]	; 3: -117 126 4
x13244:	mov bp, [bp + 2]	; 3: -117 110 2
x13247:	jmp ax	; 2: -1 -32

@24$log2$11:	; function end log2

float8$0.6931471805599453094172321#:
x13249:	dq 0.6931471805599453094172321	; 8: -18 57 -6 -2 66 46 -26 63

perror:	; call header integral zero 0 stack zero 0

perror$1:	; parameter string_25s3A2025s2E0A#, offset 6
x13257:	mov word [bp + 14], string_25s3A2025s2E0A#	; 5: -57 70 14 9 52

perror$2:	; parameter s, offset 8
x13262:	mov ax, [bp + 6]	; 3: -117 70 6
x13265:	mov [bp + 16], ax	; 3: -119 70 16

perror$3:	; call header integral zero 0 stack zero 0

perror$4:	; parameter errno, offset 16
x13268:	mov ax, [errno]	; 3: -95 -35 9
x13271:	mov [bp + 24], ax	; 3: -119 70 24

perror$5:	; call function noellipse-noellipse strerror
x13274:	mov word [bp + 18], perror$6	; 5: -57 70 18 -24 51
x13279:	mov [bp + 20], bp	; 3: -119 110 20
x13282:	add bp, 18	; 3: -125 -59 18
x13285:	nop	; 1: -112
x13286:	jmp strerror	; 2: -21 42

perror$6:	; post call

perror$7:	; £temporary1143 = return_value

perror$8:	; parameter £temporary1143, offset 10
x13288:	mov [bp + 18], bx	; 3: -119 94 18

perror$9:	; call function noellipse-ellipse printf, extra 0
x13291:	mov word [bp + 8], perror$10	; 5: -57 70 8 -2 51
x13296:	mov [bp + 10], bp	; 3: -119 110 10
x13299:	add bp, 8	; 3: -125 -59 8
x13302:	mov di, bp	; 2: -119 -17
x13304:	add di, 4	; 3: -125 -57 4
x13307:	jmp printf	; 3: -23 -20 -41

perror$10:	; post call

perror$11:	; return
x13310:	mov ax, [bp]	; 3: -117 70 0
x13313:	mov di, [bp + 4]	; 3: -117 126 4
x13316:	mov bp, [bp + 2]	; 3: -117 110 2
x13319:	jmp ax	; 2: -1 -32

perror$12:	; function end perror

string_25s3A2025s2E0A#:
x13321:	db "%s: %s.", 10, 0	; 9: 37 115 58 32 37 115 46 10 0

strerror:	; call header integral zero 0 stack zero 0

strerror$1:	; call function noellipse-noellipse localeconv
x13330:	mov word [bp + 8], strerror$2	; 5: -57 70 8 32 52
x13335:	mov [bp + 10], bp	; 3: -119 110 10
x13338:	add bp, 8	; 3: -125 -59 8
x13341:	jmp localeconv	; 3: -23 47 -23

strerror$2:	; post call

strerror$3:	; £temporary3242 = return_value

strerror$4:	; localeConvPtr = £temporary3242
x13344:	mov [bp + 8], bx	; 3: -119 94 8

strerror$5:	; if localeConvPtr == 0 goto 9
x13347:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x13351:	je strerror$9	; 2: 116 8

strerror$6:	; £temporary3244 -> localeConvPtr = *localeConvPtr, offset 16
x13353:	mov si, [bp + 8]	; 3: -117 118 8

strerror$7:	; £temporary3248 = £temporary3244 -> localeConvPtr
x13356:	mov ax, [si + 16]	; 3: -117 68 16

strerror$8:	; goto 10
x13359:	jmp strerror$10	; 2: -21 3

strerror$9:	; £temporary3248 = 0
x13361:	mov ax, 0	; 3: -72 0 0

strerror$10:	; messageList = £temporary3248
x13364:	mov [bp + 10], ax	; 3: -119 70 10

strerror$11:	; if messageList == 0 goto 14
x13367:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13371:	je strerror$14	; 2: 116 5

strerror$12:	; £temporary3253 = messageList
x13373:	mov ax, [bp + 10]	; 3: -117 70 10

strerror$13:	; goto 15
x13376:	jmp strerror$15	; 2: -21 3

strerror$14:	; £temporary3253 = enMessageList
x13378:	mov ax, enMessageList	; 3: -72 58 33

strerror$15:	; messageList = £temporary3253
x13381:	mov [bp + 10], ax	; 3: -119 70 10

strerror$16:	; £temporary3255 = errno * 2
x13384:	mov ax, [bp + 6]	; 3: -117 70 6
x13387:	xor dx, dx	; 2: 49 -46
x13389:	mul word [int2$2#]	; 4: -9 38 99 52

strerror$17:	; £temporary3256 = messageList + £temporary3255
x13393:	mov si, [bp + 10]	; 3: -117 118 10
x13396:	add si, ax	; 2: 1 -58

strerror$18:	; £temporary3254 -> £temporary3256 = *£temporary3256

strerror$19:	; return_value = £temporary3254 -> £temporary3256
x13398:	mov bx, [si]	; 2: -117 28

strerror$20:	; return
x13400:	mov ax, [bp]	; 3: -117 70 0
x13403:	mov di, [bp + 4]	; 3: -117 126 4
x13406:	mov bp, [bp + 2]	; 3: -117 110 2
x13409:	jmp ax	; 2: -1 -32

strerror$21:	; function end strerror

int2$2#:
x13411:	dw 2	; 2: 2 0

modf:	; call header integral zero 0 stack zero 0

modf$1:	; push float x
x13413:	fld qword [bp + 6]	; 3: -35 70 6

modf$2:	; parameter x, offset 6
x13416:	fstp qword [bp + 22]	; 3: -35 94 22

modf$3:	; call function noellipse-noellipse fabs
x13419:	mov word [bp + 16], modf$4	; 5: -57 70 16 121 52
x13424:	mov [bp + 18], bp	; 3: -119 110 18
x13427:	add bp, 16	; 3: -125 -59 16
x13430:	jmp fabs	; 3: -23 -85 -15

modf$4:	; post call

modf$5:	; £temporary623 = return_value

modf$6:	; pop float abs_x
x13433:	fstp qword [bp + 16]	; 3: -35 94 16

modf$7:	; push float abs_x
x13436:	fld qword [bp + 16]	; 3: -35 70 16

modf$8:	; £temporary624 = float_to_int abs_x (Double -> Signed_Long_Int)
x13439:	fistp dword [container4bytes#]	; 4: -37 30 120 37
x13443:	mov eax, [container4bytes#]	; 4: 102 -95 120 37

modf$9:	; £temporary625 = int_to_float £temporary624 (Signed_Long_Int -> Double)
x13447:	mov [container4bytes#], eax	; 4: 102 -93 120 37
x13451:	fild dword [container4bytes#]	; 4: -37 6 120 37

modf$10:	; pop float integral
x13455:	fstp qword [bp + 24]	; 3: -35 94 24

modf$11:	; push float abs_x
x13458:	fld qword [bp + 16]	; 3: -35 70 16

modf$12:	; push float integral
x13461:	fld qword [bp + 24]	; 3: -35 70 24

modf$13:	; £temporary626 = abs_x - integral
x13464:	fsub	; 2: -34 -23

modf$14:	; pop float fractional
x13466:	fstp qword [bp + 32]	; 3: -35 94 32

modf$15:	; if p == 0 goto 26
x13469:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x13473:	je modf$26	; 2: 116 28

modf$16:	; £temporary628 -> p = *p
x13475:	mov si, [bp + 14]	; 3: -117 118 14

modf$17:	; push float x
x13478:	fld qword [bp + 6]	; 3: -35 70 6

modf$18:	; push 0
x13481:	fldz	; 2: -39 -18

modf$19:	; if x <= 0 goto 23
x13483:	fcompp	; 2: -34 -39
x13485:	fstsw ax	; 3: -101 -33 -32
x13488:	sahf	; 1: -98
x13489:	jae modf$23	; 2: 115 5

modf$20:	; push float fractional
x13491:	fld qword [bp + 32]	; 3: -35 70 32

modf$21:	; decrease stack

modf$22:	; goto 25
x13494:	jmp modf$25	; 2: -21 5

modf$23:	; push float fractional
x13496:	fld qword [bp + 32]	; 3: -35 70 32

modf$24:	; £temporary630 = -fractional
x13499:	fchs	; 2: -39 -32

modf$25:	; pop float £temporary628 -> p
x13501:	fstp qword [si]	; 2: -35 28

modf$26:	; push float x
x13503:	fld qword [bp + 6]	; 3: -35 70 6

modf$27:	; push 0
x13506:	fldz	; 2: -39 -18

modf$28:	; if x <= 0 goto 32
x13508:	fcompp	; 2: -34 -39
x13510:	fstsw ax	; 3: -101 -33 -32
x13513:	sahf	; 1: -98
x13514:	jae modf$32	; 2: 115 5

modf$29:	; push float integral
x13516:	fld qword [bp + 24]	; 3: -35 70 24

modf$30:	; decrease stack

modf$31:	; goto 34
x13519:	jmp modf$34	; 2: -21 5

modf$32:	; push float integral
x13521:	fld qword [bp + 24]	; 3: -35 70 24

modf$33:	; £temporary636 = -integral
x13524:	fchs	; 2: -39 -32

modf$34:	; return_value = £temporary640

modf$35:	; return
x13526:	mov ax, [bp]	; 3: -117 70 0
x13529:	mov di, [bp + 4]	; 3: -117 126 4
x13532:	mov bp, [bp + 2]	; 3: -117 110 2
x13535:	jmp ax	; 2: -1 -32

modf$36:	; function end modf

math_test_2:	; call header integral zero 0 stack zero 0

math_test_2$1:	; parameter string_fmod2825f2C2025f29203D2025f2C20errno203D2025i0A#, offset 6
x13537:	mov word [bp + 28], string_fmod2825f2C2025f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 28 55 54

math_test_2$2:	; push float x
x13542:	fld qword [bp + 6]	; 3: -35 70 6

math_test_2$3:	; parameter x, offset 8
x13545:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_2$4:	; push float y
x13548:	fld qword [bp + 14]	; 3: -35 70 14

math_test_2$5:	; parameter y, offset 16
x13551:	fstp qword [bp + 38]	; 3: -35 94 38

math_test_2$6:	; call header integral zero 0 stack zero 0

math_test_2$7:	; push float x
x13554:	fld qword [bp + 6]	; 3: -35 70 6

math_test_2$8:	; parameter x, offset 30
x13557:	fstp qword [bp + 52]	; 3: -35 94 52

math_test_2$9:	; push float y
x13560:	fld qword [bp + 14]	; 3: -35 70 14

math_test_2$10:	; parameter y, offset 38
x13563:	fstp qword [bp + 60]	; 3: -35 94 60

math_test_2$11:	; call function noellipse-noellipse fmod
x13566:	mov word [bp + 46], math_test_2$12	; 5: -57 70 46 12 53
x13571:	mov [bp + 48], bp	; 3: -119 110 48
x13574:	add bp, 46	; 3: -125 -59 46
x13577:	jmp fmod	; 3: -23 59 -8

math_test_2$12:	; post call

math_test_2$13:	; £temporary4095 = return_value

math_test_2$14:	; parameter £temporary4095, offset 24
x13580:	fstp qword [bp + 46]	; 3: -35 94 46

math_test_2$15:	; parameter errno, offset 32
x13583:	mov ax, [errno]	; 3: -95 -35 9
x13586:	mov [bp + 54], ax	; 3: -119 70 54

math_test_2$16:	; call function noellipse-ellipse printf, extra 0
x13589:	mov word [bp + 22], math_test_2$17	; 5: -57 70 22 40 53
x13594:	mov [bp + 24], bp	; 3: -119 110 24
x13597:	add bp, 22	; 3: -125 -59 22
x13600:	mov di, bp	; 2: -119 -17
x13602:	add di, 26	; 3: -125 -57 26
x13605:	jmp printf	; 3: -23 -62 -42

math_test_2$17:	; post call

math_test_2$18:	; errno = 0
x13608:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_2$19:	; call header integral zero 0 stack zero 0

math_test_2$20:	; parameter string_atan22825f2C2025f29203D2025f2C20errno203D2025i0A#, offset 6
x13614:	mov word [bp + 28], string_atan22825f2C2025f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 28 86 54

math_test_2$21:	; push float x
x13619:	fld qword [bp + 6]	; 3: -35 70 6

math_test_2$22:	; parameter x, offset 8
x13622:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_2$23:	; push float y
x13625:	fld qword [bp + 14]	; 3: -35 70 14

math_test_2$24:	; parameter y, offset 16
x13628:	fstp qword [bp + 38]	; 3: -35 94 38

math_test_2$25:	; call header integral zero 0 stack zero 0

math_test_2$26:	; push float x
x13631:	fld qword [bp + 6]	; 3: -35 70 6

math_test_2$27:	; parameter x, offset 30
x13634:	fstp qword [bp + 52]	; 3: -35 94 52

math_test_2$28:	; push float y
x13637:	fld qword [bp + 14]	; 3: -35 70 14

math_test_2$29:	; parameter y, offset 38
x13640:	fstp qword [bp + 60]	; 3: -35 94 60

math_test_2$30:	; call function noellipse-noellipse atan2
x13643:	mov word [bp + 46], math_test_2$31	; 5: -57 70 46 89 53
x13648:	mov [bp + 48], bp	; 3: -119 110 48
x13651:	add bp, 46	; 3: -125 -59 46
x13654:	jmp atan2	; 3: -23 80 1

math_test_2$31:	; post call

math_test_2$32:	; £temporary4097 = return_value

math_test_2$33:	; parameter £temporary4097, offset 24
x13657:	fstp qword [bp + 46]	; 3: -35 94 46

math_test_2$34:	; parameter errno, offset 32
x13660:	mov ax, [errno]	; 3: -95 -35 9
x13663:	mov [bp + 54], ax	; 3: -119 70 54

math_test_2$35:	; call function noellipse-ellipse printf, extra 0
x13666:	mov word [bp + 22], math_test_2$36	; 5: -57 70 22 117 53
x13671:	mov [bp + 24], bp	; 3: -119 110 24
x13674:	add bp, 22	; 3: -125 -59 22
x13677:	mov di, bp	; 2: -119 -17
x13679:	add di, 26	; 3: -125 -57 26
x13682:	jmp printf	; 3: -23 117 -42

math_test_2$36:	; post call

math_test_2$37:	; errno = 0
x13685:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_2$38:	; call header integral zero 0 stack zero 0

math_test_2$39:	; parameter string_pow2825f2C2025f29203D2025f2C20errno203D2025i0A#, offset 6
x13691:	mov word [bp + 28], string_pow2825f2C2025f29203D2025f2C20errno203D2025i0A#	; 5: -57 70 28 118 54

math_test_2$40:	; push float x
x13696:	fld qword [bp + 6]	; 3: -35 70 6

math_test_2$41:	; parameter x, offset 8
x13699:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_2$42:	; push float y
x13702:	fld qword [bp + 14]	; 3: -35 70 14

math_test_2$43:	; parameter y, offset 16
x13705:	fstp qword [bp + 38]	; 3: -35 94 38

math_test_2$44:	; call header integral zero 0 stack zero 0

math_test_2$45:	; push float x
x13708:	fld qword [bp + 6]	; 3: -35 70 6

math_test_2$46:	; parameter x, offset 30
x13711:	fstp qword [bp + 52]	; 3: -35 94 52

math_test_2$47:	; push float y
x13714:	fld qword [bp + 14]	; 3: -35 70 14

math_test_2$48:	; parameter y, offset 38
x13717:	fstp qword [bp + 60]	; 3: -35 94 60

math_test_2$49:	; call function noellipse-noellipse pow
x13720:	mov word [bp + 46], math_test_2$50	; 5: -57 70 46 -90 53
x13725:	mov [bp + 48], bp	; 3: -119 110 48
x13728:	add bp, 46	; 3: -125 -59 46
x13731:	jmp pow	; 3: -23 -3 -13

math_test_2$50:	; post call

math_test_2$51:	; £temporary4099 = return_value

math_test_2$52:	; parameter £temporary4099, offset 24
x13734:	fstp qword [bp + 46]	; 3: -35 94 46

math_test_2$53:	; parameter errno, offset 32
x13737:	mov ax, [errno]	; 3: -95 -35 9
x13740:	mov [bp + 54], ax	; 3: -119 70 54

math_test_2$54:	; call function noellipse-ellipse printf, extra 0
x13743:	mov word [bp + 22], math_test_2$55	; 5: -57 70 22 -62 53
x13748:	mov [bp + 24], bp	; 3: -119 110 24
x13751:	add bp, 22	; 3: -125 -59 22
x13754:	mov di, bp	; 2: -119 -17
x13756:	add di, 26	; 3: -125 -57 26
x13759:	jmp printf	; 3: -23 40 -42

math_test_2$55:	; post call

math_test_2$56:	; errno = 0
x13762:	mov word [errno], 0	; 6: -57 6 -35 9 0 0

math_test_2$57:	; call header integral zero 0 stack zero 0

math_test_2$58:	; parameter string_0A#, offset 6
x13768:	mov word [bp + 28], string_0A#	; 5: -57 70 28 -24 11

math_test_2$59:	; call function noellipse-ellipse printf, extra 0
x13773:	mov word [bp + 22], math_test_2$60	; 5: -57 70 22 -35 53
x13778:	mov [bp + 24], bp	; 3: -119 110 24
x13781:	add bp, 22	; 3: -125 -59 22
x13784:	mov di, bp	; 2: -119 -17
x13786:	jmp printf	; 3: -23 13 -42

math_test_2$60:	; post call

math_test_2$61:	; call header integral zero 0 stack zero 0

math_test_2$62:	; parameter string_ldexp2825f2C2025i29203D2025f0A0A#, offset 6
x13789:	mov word [bp + 28], string_ldexp2825f2C2025i29203D2025f0A0A#	; 5: -57 70 28 -108 54

math_test_2$63:	; push float x
x13794:	fld qword [bp + 6]	; 3: -35 70 6

math_test_2$64:	; parameter x, offset 8
x13797:	fstp qword [bp + 30]	; 3: -35 94 30

math_test_2$65:	; push float y
x13800:	fld qword [bp + 14]	; 3: -35 70 14

math_test_2$66:	; £temporary4102 = float_to_int y (Double -> Signed_Int)
x13803:	fistp word [container2bytes#]	; 4: -33 30 43 26
x13807:	mov ax, [container2bytes#]	; 3: -95 43 26

math_test_2$67:	; parameter £temporary4102, offset 16
x13810:	mov [bp + 38], ax	; 3: -119 70 38

math_test_2$68:	; call header integral zero 0 stack zero 0

math_test_2$69:	; push float x
x13813:	fld qword [bp + 6]	; 3: -35 70 6

math_test_2$70:	; parameter x, offset 24
x13816:	fstp qword [bp + 46]	; 3: -35 94 46

math_test_2$71:	; push float y
x13819:	fld qword [bp + 14]	; 3: -35 70 14

math_test_2$72:	; £temporary4103 = float_to_int y (Double -> Signed_Int)
x13822:	fistp word [container2bytes#]	; 4: -33 30 43 26
x13826:	mov ax, [container2bytes#]	; 3: -95 43 26

math_test_2$73:	; parameter £temporary4103, offset 32
x13829:	mov [bp + 54], ax	; 3: -119 70 54

math_test_2$74:	; call function noellipse-noellipse ldexp
x13832:	mov word [bp + 40], math_test_2$75	; 5: -57 70 40 22 54
x13837:	mov [bp + 42], bp	; 3: -119 110 42
x13840:	add bp, 40	; 3: -125 -59 40
x13843:	jmp ldexp	; 3: -23 -41 0

math_test_2$75:	; post call

math_test_2$76:	; £temporary4104 = return_value

math_test_2$77:	; parameter £temporary4104, offset 18
x13846:	fstp qword [bp + 40]	; 3: -35 94 40

math_test_2$78:	; call function noellipse-ellipse printf, extra 0
x13849:	mov word [bp + 22], math_test_2$79	; 5: -57 70 22 44 54
x13854:	mov [bp + 24], bp	; 3: -119 110 24
x13857:	add bp, 22	; 3: -125 -59 22
x13860:	mov di, bp	; 2: -119 -17
x13862:	add di, 18	; 3: -125 -57 18
x13865:	jmp printf	; 3: -23 -66 -43

math_test_2$79:	; post call

math_test_2$80:	; return
x13868:	mov ax, [bp]	; 3: -117 70 0
x13871:	mov di, [bp + 4]	; 3: -117 126 4
x13874:	mov bp, [bp + 2]	; 3: -117 110 2
x13877:	jmp ax	; 2: -1 -32

math_test_2$81:	; function end math_test_2

string_fmod2825f2C2025f29203D2025f2C20errno203D2025i0A#:
x13879:	db "fmod(%f, %f) = %f, errno = %i", 10, 0	; 31: 102 109 111 100 40 37 102 44 32 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_atan22825f2C2025f29203D2025f2C20errno203D2025i0A#:
x13910:	db "atan2(%f, %f) = %f, errno = %i", 10, 0	; 32: 97 116 97 110 50 40 37 102 44 32 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_pow2825f2C2025f29203D2025f2C20errno203D2025i0A#:
x13942:	db "pow(%f, %f) = %f, errno = %i", 10, 0	; 30: 112 111 119 40 37 102 44 32 37 102 41 32 61 32 37 102 44 32 101 114 114 110 111 32 61 32 37 105 10 0

string_ldexp2825f2C2025i29203D2025f0A0A#:
x13972:	db "ldexp(%f, %i) = %f", 10, 10, 0	; 21: 108 100 101 120 112 40 37 102 44 32 37 105 41 32 61 32 37 102 10 10 0

atan2:	; push float y
x13993:	fld qword [bp + 14]	; 3: -35 70 14

atan2$1:	; push 0
x13996:	fldz	; 2: -39 -18

atan2$2:	; if y == 0 goto 13
x13998:	fcompp	; 2: -34 -39
x14000:	fstsw ax	; 3: -101 -33 -32
x14003:	sahf	; 1: -98
x14004:	je atan2$13	; 2: 116 36

atan2$3:	; call header integral zero 0 stack zero 0

atan2$4:	; push float x
x14006:	fld qword [bp + 6]	; 3: -35 70 6

atan2$5:	; push float y
x14009:	fld qword [bp + 14]	; 3: -35 70 14

atan2$6:	; £temporary753 = x / y
x14012:	fdiv	; 2: -34 -7

atan2$7:	; parameter £temporary753, offset 6
x14014:	fstp qword [bp + 28]	; 3: -35 94 28

atan2$8:	; call function noellipse-noellipse atan
x14017:	mov word [bp + 22], atan2$9	; 5: -57 70 22 -49 54
x14022:	mov [bp + 24], bp	; 3: -119 110 24
x14025:	add bp, 22	; 3: -125 -59 22
x14028:	jmp atan	; 3: -23 79 -7

atan2$9:	; post call

atan2$10:	; £temporary754 = return_value

atan2$11:	; return_value = £temporary754

atan2$12:	; return
x14031:	mov ax, [bp]	; 3: -117 70 0
x14034:	mov di, [bp + 4]	; 3: -117 126 4
x14037:	mov bp, [bp + 2]	; 3: -117 110 2
x14040:	jmp ax	; 2: -1 -32

atan2$13:	; errno = 6
x14042:	mov word [errno], 6	; 6: -57 6 -35 9 6 0

atan2$14:	; push 0
x14048:	fldz	; 2: -39 -18

atan2$15:	; return_value = 0

atan2$16:	; return
x14050:	mov ax, [bp]	; 3: -117 70 0
x14053:	mov di, [bp + 4]	; 3: -117 126 4
x14056:	mov bp, [bp + 2]	; 3: -117 110 2
x14059:	jmp ax	; 2: -1 -32

atan2$17:	; function end atan2

ldexp:	; push float x
x14061:	fld qword [bp + 6]	; 3: -35 70 6

ldexp$1:	; call header integral zero 0 stack no zero 1
x14064:	fstp qword [bp + 16]	; 3: -35 94 16

ldexp$2:	; push float 2
x14067:	fld qword [float8$2#]	; 4: -35 6 121 4

ldexp$3:	; parameter 2, offset 6
x14071:	fstp qword [bp + 30]	; 3: -35 94 30

ldexp$4:	; £temporary590 = int_to_float n (Signed_Int -> Double)
x14074:	fild word [bp + 14]	; 3: -33 70 14

ldexp$5:	; parameter £temporary590, offset 14
x14077:	fstp qword [bp + 38]	; 3: -35 94 38

ldexp$6:	; call function noellipse-noellipse pow
x14080:	mov word [bp + 24], ldexp$7	; 5: -57 70 24 14 55
x14085:	mov [bp + 26], bp	; 3: -119 110 26
x14088:	add bp, 24	; 3: -125 -59 24
x14091:	jmp pow	; 3: -23 -107 -14

ldexp$7:	; post call
x14094:	fstp qword [bp + 24]	; 3: -35 94 24
x14097:	fld qword [bp + 16]	; 3: -35 70 16
x14100:	fld qword [bp + 24]	; 3: -35 70 24

ldexp$8:	; £temporary591 = return_value

ldexp$9:	; £temporary592 = x * £temporary591
x14103:	fmul	; 2: -34 -55

ldexp$10:	; return_value = £temporary592

ldexp$11:	; return
x14105:	mov ax, [bp]	; 3: -117 70 0
x14108:	mov di, [bp + 4]	; 3: -117 126 4
x14111:	mov bp, [bp + 2]	; 3: -117 110 2
x14114:	jmp ax	; 2: -1 -32

ldexp$12:	; function end ldexp

$Path:
x14116:	db "C:\D\Main.com", 0	; 14: 67 58 92 68 92 77 97 105 110 46 99 111 109 0

$StackTop:
x14130:
