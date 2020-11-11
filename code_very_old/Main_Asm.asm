	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 -118 59
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 -118 59 0 0

main:	; call header integral zero 0 stack zero 0

main$1:	; call function noellipse-noellipse stdlib_test
x283:	mov word [bp + 6], main$2	; 5: -57 70 6 41 1
x288:	mov [bp + 8], bp	; 3: -119 110 8
x291:	add bp, 6	; 3: -125 -59 6
x294:	nop	; 1: -112
x295:	jmp stdlib_test	; 2: -21 23

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

stdlib_test:	; call header integral zero 0 stack zero 0

stdlib_test$1:	; parameter string_atof28221232E4562229203D2025f0A#, offset 6
x320:	mov word [bp + 14], string_atof28221232E4562229203D2025f0A#	; 5: -57 70 14 -98 5

stdlib_test$2:	; call header integral zero 0 stack zero 0

stdlib_test$3:	; parameter string_1232E456#, offset 14
x325:	mov word [bp + 22], string_1232E456#	; 5: -57 70 22 -76 5

stdlib_test$4:	; call function noellipse-noellipse atof
x330:	mov word [bp + 16], stdlib_test$5	; 5: -57 70 16 88 1
x335:	mov [bp + 18], bp	; 3: -119 110 18
x338:	add bp, 16	; 3: -125 -59 16
x341:	jmp atof	; 3: -23 -17 5

stdlib_test$5:	; post call

stdlib_test$6:	; £temporary6003 = return_value

stdlib_test$7:	; parameter £temporary6003, offset 8
x344:	fstp qword [bp + 16]	; 3: -35 94 16

stdlib_test$8:	; call function noellipse-ellipse printf, extra 0
x347:	mov word [bp + 8], stdlib_test$9	; 5: -57 70 8 110 1
x352:	mov [bp + 10], bp	; 3: -119 110 10
x355:	add bp, 8	; 3: -125 -59 8
x358:	mov di, bp	; 2: -119 -17
x360:	add di, 8	; 3: -125 -57 8
x363:	jmp printf	; 3: -23 7 33

stdlib_test$9:	; post call

stdlib_test$10:	; call header integral zero 0 stack zero 0

stdlib_test$11:	; parameter string_strtod28221232E456789abc222C2026p29203D202825f2C2025s290A#, offset 6
x366:	mov word [bp + 14], string_strtod28221232E456789abc222C2026p29203D202825f2C2025s290A#	; 5: -57 70 14 -68 5

stdlib_test$12:	; call header integral zero 0 stack zero 0

stdlib_test$13:	; parameter string_1232E456789abc#, offset 14
x371:	mov word [bp + 22], string_1232E456789abc#	; 5: -57 70 22 -28 5

stdlib_test$14:	; £temporary6005 = &p
x376:	mov si, bp	; 2: -119 -18
x378:	add si, 6	; 3: -125 -58 6

stdlib_test$15:	; parameter £temporary6005, offset 16
x381:	mov [bp + 24], si	; 3: -119 118 24

stdlib_test$16:	; call function noellipse-noellipse strtod
x384:	mov word [bp + 16], stdlib_test$17	; 5: -57 70 16 -114 1
x389:	mov [bp + 18], bp	; 3: -119 110 18
x392:	add bp, 16	; 3: -125 -59 16
x395:	jmp strtod	; 3: -23 -35 5

stdlib_test$17:	; post call

stdlib_test$18:	; £temporary6006 = return_value

stdlib_test$19:	; parameter £temporary6006, offset 8
x398:	fstp qword [bp + 16]	; 3: -35 94 16

stdlib_test$20:	; parameter p, offset 16
x401:	mov ax, [bp + 6]	; 3: -117 70 6
x404:	mov [bp + 24], ax	; 3: -119 70 24

stdlib_test$21:	; call function noellipse-ellipse printf, extra 0
x407:	mov word [bp + 8], stdlib_test$22	; 5: -57 70 8 -86 1
x412:	mov [bp + 10], bp	; 3: -119 110 10
x415:	add bp, 8	; 3: -125 -59 8
x418:	mov di, bp	; 2: -119 -17
x420:	add di, 10	; 3: -125 -57 10
x423:	jmp printf	; 3: -23 -53 32

stdlib_test$22:	; post call

stdlib_test$23:	; call header integral zero 0 stack zero 0

stdlib_test$24:	; parameter string_0Agetenv2822path2229203D2025s0A#, offset 6
x426:	mov word [bp + 12], string_0Agetenv2822path2229203D2025s0A#	; 5: -57 70 12 -14 5

stdlib_test$25:	; call header integral zero 0 stack zero 0

stdlib_test$26:	; parameter string_path#, offset 14
x431:	mov word [bp + 20], string_path#	; 5: -57 70 20 8 6

stdlib_test$27:	; call function noellipse-noellipse getenv
x436:	mov word [bp + 14], stdlib_test$28	; 5: -57 70 14 -62 1
x441:	mov [bp + 16], bp	; 3: -119 110 16
x444:	add bp, 14	; 3: -125 -59 14
x447:	jmp getenv	; 3: -23 52 54

stdlib_test$28:	; post call

stdlib_test$29:	; £temporary6008 = return_value

stdlib_test$30:	; parameter £temporary6008, offset 8
x450:	mov [bp + 14], bx	; 3: -119 94 14

stdlib_test$31:	; call function noellipse-ellipse printf, extra 0
x453:	mov word [bp + 6], stdlib_test$32	; 5: -57 70 6 -40 1
x458:	mov [bp + 8], bp	; 3: -119 110 8
x461:	add bp, 6	; 3: -125 -59 6
x464:	mov di, bp	; 2: -119 -17
x466:	add di, 2	; 3: -125 -57 2
x469:	jmp printf	; 3: -23 -99 32

stdlib_test$32:	; post call

stdlib_test$33:	; call header integral zero 0 stack zero 0

stdlib_test$34:	; parameter string_system2822dir22290A#, offset 6
x472:	mov word [bp + 12], string_system2822dir22290A#	; 5: -57 70 12 13 6

stdlib_test$35:	; call function noellipse-ellipse printf, extra 0
x477:	mov word [bp + 6], stdlib_test$36	; 5: -57 70 6 -19 1
x482:	mov [bp + 8], bp	; 3: -119 110 8
x485:	add bp, 6	; 3: -125 -59 6
x488:	mov di, bp	; 2: -119 -17
x490:	jmp printf	; 3: -23 -120 32

stdlib_test$36:	; post call

stdlib_test$37:	; call header integral zero 0 stack zero 0

stdlib_test$38:	; parameter string_dir#, offset 6
x493:	mov word [bp + 12], string_dir#	; 5: -57 70 12 28 6

stdlib_test$39:	; call function noellipse-noellipse system
x498:	mov word [bp + 6], stdlib_test$40	; 5: -57 70 6 0 2
x503:	mov [bp + 8], bp	; 3: -119 110 8
x506:	add bp, 6	; 3: -125 -59 6
x509:	jmp system	; 3: -23 4 54

stdlib_test$40:	; post call

stdlib_test$41:	; call header integral zero 0 stack zero 0

stdlib_test$42:	; parameter string_0Aabs282D329203D2025i2C20abs28329203D2025i0A#, offset 6
x512:	mov word [bp + 12], string_0Aabs282D329203D2025i2C20abs28329203D2025i0A#	; 5: -57 70 12 32 6

stdlib_test$43:	; call header integral zero 0 stack zero 0

stdlib_test$44:	; parameter -3, offset 14
x517:	mov word [bp + 20], -3	; 5: -57 70 20 -3 -1

stdlib_test$45:	; call function noellipse-noellipse _abs
x522:	mov word [bp + 14], stdlib_test$46	; 5: -57 70 14 24 2
x527:	mov [bp + 16], bp	; 3: -119 110 16
x530:	add bp, 14	; 3: -125 -59 14
x533:	jmp _abs	; 3: -23 -6 53

stdlib_test$46:	; post call

stdlib_test$47:	; £temporary6012 = return_value

stdlib_test$48:	; parameter £temporary6012, offset 8
x536:	mov [bp + 14], bx	; 3: -119 94 14

stdlib_test$49:	; call header integral zero 0 stack zero 0

stdlib_test$50:	; parameter 3, offset 16
x539:	mov word [bp + 22], 3	; 5: -57 70 22 3 0

stdlib_test$51:	; call function noellipse-noellipse _abs
x544:	mov word [bp + 16], stdlib_test$52	; 5: -57 70 16 46 2
x549:	mov [bp + 18], bp	; 3: -119 110 18
x552:	add bp, 16	; 3: -125 -59 16
x555:	jmp _abs	; 3: -23 -28 53

stdlib_test$52:	; post call

stdlib_test$53:	; £temporary6013 = return_value

stdlib_test$54:	; parameter £temporary6013, offset 10
x558:	mov [bp + 16], bx	; 3: -119 94 16

stdlib_test$55:	; call function noellipse-ellipse printf, extra 0
x561:	mov word [bp + 6], stdlib_test$56	; 5: -57 70 6 68 2
x566:	mov [bp + 8], bp	; 3: -119 110 8
x569:	add bp, 6	; 3: -125 -59 6
x572:	mov di, bp	; 2: -119 -17
x574:	add di, 4	; 3: -125 -57 4
x577:	jmp printf	; 3: -23 49 32

stdlib_test$56:	; post call

stdlib_test$57:	; call header integral zero 0 stack zero 0

stdlib_test$58:	; parameter string_labs282D3l29203D2025li2C20labs283l29203D2025li0A0A#, offset 6
x580:	mov word [bp + 12], string_labs282D3l29203D2025li2C20labs283l29203D2025li0A0A#	; 5: -57 70 12 60 6

stdlib_test$59:	; call header integral zero 0 stack zero 0

stdlib_test$60:	; parameter -3, offset 14
x585:	mov dword [bp + 20], -3	; 8: 102 -57 70 20 -3 -1 -1 -1

stdlib_test$61:	; call function noellipse-noellipse labs
x593:	mov word [bp + 14], stdlib_test$62	; 5: -57 70 14 95 2
x598:	mov [bp + 16], bp	; 3: -119 110 16
x601:	add bp, 14	; 3: -125 -59 14
x604:	jmp labs	; 3: -23 105 46

stdlib_test$62:	; post call

stdlib_test$63:	; £temporary6015 = return_value

stdlib_test$64:	; parameter £temporary6015, offset 8
x607:	mov [bp + 14], ebx	; 4: 102 -119 94 14

stdlib_test$65:	; call header integral zero 0 stack zero 0

stdlib_test$66:	; parameter 3, offset 18
x611:	mov dword [bp + 24], 3	; 8: 102 -57 70 24 3 0 0 0

stdlib_test$67:	; call function noellipse-noellipse labs
x619:	mov word [bp + 18], stdlib_test$68	; 5: -57 70 18 121 2
x624:	mov [bp + 20], bp	; 3: -119 110 20
x627:	add bp, 18	; 3: -125 -59 18
x630:	jmp labs	; 3: -23 79 46

stdlib_test$68:	; post call

stdlib_test$69:	; £temporary6016 = return_value

stdlib_test$70:	; parameter £temporary6016, offset 12
x633:	mov [bp + 18], ebx	; 4: 102 -119 94 18

stdlib_test$71:	; call function noellipse-ellipse printf, extra 0
x637:	mov word [bp + 6], stdlib_test$72	; 5: -57 70 6 -112 2
x642:	mov [bp + 8], bp	; 3: -119 110 8
x645:	add bp, 6	; 3: -125 -59 6
x648:	mov di, bp	; 2: -119 -17
x650:	add di, 8	; 3: -125 -57 8
x653:	jmp printf	; 3: -23 -27 31

stdlib_test$72:	; post call

stdlib_test$73:	; call header integral zero 0 stack zero 0

stdlib_test$74:	; parameter 10, offset 6
x656:	mov word [bp + 12], 10	; 5: -57 70 12 10 0

stdlib_test$75:	; parameter 3, offset 8
x661:	mov word [bp + 14], 3	; 5: -57 70 14 3 0

stdlib_test$76:	; call function noellipse-noellipse div
x666:	mov word [bp + 6], stdlib_test$77	; 5: -57 70 6 -88 2
x671:	mov [bp + 8], bp	; 3: -119 110 8
x674:	add bp, 6	; 3: -125 -59 6
x677:	jmp div	; 3: -23 -123 53

stdlib_test$77:	; post call

stdlib_test$78:	; £temporary6018 -> £temporary6019 = return_value

stdlib_test$79:	; i = £temporary6018 -> £temporary6019
x680:	mov si, bp	; 2: -119 -18
x682:	add si, 6	; 3: -125 -58 6
x685:	mov al, 4	; 2: -80 4

stdlib_test$79$Loop:
x687:	mov ah, [bx]	; 2: -118 39
x689:	mov [si], ah	; 2: -120 36
x691:	inc bx	; 1: 67
x692:	inc si	; 1: 70
x693:	dec al	; 2: -2 -56
x695:	cmp al, 0	; 2: 60 0
x697:	jne stdlib_test$79$Loop	; 2: 117 -12

stdlib_test$80:	; call header integral zero 0 stack zero 0

stdlib_test$81:	; parameter string_div_t28102C20329203D202825i2C2025i292C0A#, offset 6
x699:	mov word [bp + 16], string_div_t28102C20329203D202825i2C2025i292C0A#	; 5: -57 70 16 94 6

stdlib_test$82:	; parameter i$quot, offset 8
x704:	mov ax, [bp + 6]	; 3: -117 70 6
x707:	mov [bp + 18], ax	; 3: -119 70 18

stdlib_test$83:	; parameter i$rem, offset 10
x710:	mov ax, [bp + 8]	; 3: -117 70 8
x713:	mov [bp + 20], ax	; 3: -119 70 20

stdlib_test$84:	; call function noellipse-ellipse printf, extra 0
x716:	mov word [bp + 10], stdlib_test$85	; 5: -57 70 10 -33 2
x721:	mov [bp + 12], bp	; 3: -119 110 12
x724:	add bp, 10	; 3: -125 -59 10
x727:	mov di, bp	; 2: -119 -17
x729:	add di, 4	; 3: -125 -57 4
x732:	jmp printf	; 3: -23 -106 31

stdlib_test$85:	; post call

stdlib_test$86:	; call header integral zero 0 stack zero 0

stdlib_test$87:	; parameter i, offset 6
x735:	mov si, bp	; 2: -119 -18
x737:	add si, 6	; 3: -125 -58 6
x740:	mov di, bp	; 2: -119 -17
x742:	add di, 16	; 3: -125 -57 16
x745:	mov al, 4	; 2: -80 4

stdlib_test$87$Loop:
x747:	mov ah, [si]	; 2: -118 36
x749:	mov [di], ah	; 2: -120 37
x751:	inc si	; 1: 70
x752:	inc di	; 1: 71
x753:	dec al	; 2: -2 -56
x755:	cmp al, 0	; 2: 60 0
x757:	jne stdlib_test$87$Loop	; 2: 117 -12

stdlib_test$88:	; call function noellipse-noellipse print_div
x759:	mov word [bp + 10], stdlib_test$89	; 5: -57 70 10 5 3
x764:	mov [bp + 12], bp	; 3: -119 110 12
x767:	add bp, 10	; 3: -125 -59 10
x770:	jmp print_div	; 3: -23 116 53

stdlib_test$89:	; post call

stdlib_test$90:	; call header integral zero 0 stack zero 0

stdlib_test$91:	; parameter 10, offset 6
x773:	mov dword [bp + 12], 10	; 8: 102 -57 70 12 10 0 0 0

stdlib_test$92:	; parameter 3, offset 10
x781:	mov dword [bp + 16], 3	; 8: 102 -57 70 16 3 0 0 0

stdlib_test$93:	; call function noellipse-noellipse ldiv
x789:	mov word [bp + 6], stdlib_test$94	; 5: -57 70 6 35 3
x794:	mov [bp + 8], bp	; 3: -119 110 8
x797:	add bp, 6	; 3: -125 -59 6
x800:	jmp ldiv	; 3: -23 -101 53

stdlib_test$94:	; post call

stdlib_test$95:	; £temporary6024 -> £temporary6025 = return_value

stdlib_test$96:	; li = £temporary6024 -> £temporary6025
x803:	mov si, bp	; 2: -119 -18
x805:	add si, 6	; 3: -125 -58 6
x808:	mov al, 8	; 2: -80 8

stdlib_test$96$Loop:
x810:	mov ah, [bx]	; 2: -118 39
x812:	mov [si], ah	; 2: -120 36
x814:	inc bx	; 1: 67
x815:	inc si	; 1: 70
x816:	dec al	; 2: -2 -56
x818:	cmp al, 0	; 2: 60 0
x820:	jne stdlib_test$96$Loop	; 2: 117 -12

stdlib_test$97:	; call header integral zero 0 stack zero 0

stdlib_test$98:	; parameter string_ldiv_t28102C20329203D202825li2C2025li290A#, offset 6
x822:	mov word [bp + 20], string_ldiv_t28102C20329203D202825li2C2025li290A#	; 5: -57 70 20 120 6

stdlib_test$99:	; parameter li$quot, offset 8
x827:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x831:	mov [bp + 22], eax	; 4: 102 -119 70 22

stdlib_test$100:	; parameter li$rem, offset 12
x835:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x839:	mov [bp + 26], eax	; 4: 102 -119 70 26

stdlib_test$101:	; call function noellipse-ellipse printf, extra 0
x843:	mov word [bp + 14], stdlib_test$102	; 5: -57 70 14 94 3
x848:	mov [bp + 16], bp	; 3: -119 110 16
x851:	add bp, 14	; 3: -125 -59 14
x854:	mov di, bp	; 2: -119 -17
x856:	add di, 8	; 3: -125 -57 8
x859:	jmp printf	; 3: -23 23 31

stdlib_test$102:	; post call

stdlib_test$103:	; call header integral zero 0 stack zero 0

stdlib_test$104:	; parameter li, offset 6
x862:	mov si, bp	; 2: -119 -18
x864:	add si, 6	; 3: -125 -58 6
x867:	mov di, bp	; 2: -119 -17
x869:	add di, 20	; 3: -125 -57 20
x872:	mov al, 8	; 2: -80 8

stdlib_test$104$Loop:
x874:	mov ah, [si]	; 2: -118 36
x876:	mov [di], ah	; 2: -120 37
x878:	inc si	; 1: 70
x879:	inc di	; 1: 71
x880:	dec al	; 2: -2 -56
x882:	cmp al, 0	; 2: 60 0
x884:	jne stdlib_test$104$Loop	; 2: 117 -12

stdlib_test$105:	; call function noellipse-noellipse print_ldiv
x886:	mov word [bp + 14], stdlib_test$106	; 5: -57 70 14 -124 3
x891:	mov [bp + 16], bp	; 3: -119 110 16
x894:	add bp, 14	; 3: -125 -59 14
x897:	jmp print_ldiv	; 3: -23 -107 53

stdlib_test$106:	; post call

stdlib_test$107:	; list[0] = 3
x900:	mov word [bp + 6], 3	; 5: -57 70 6 3 0

stdlib_test$108:	; list[1] = 4
x905:	mov word [bp + 8], 4	; 5: -57 70 8 4 0

stdlib_test$109:	; list[2] = 2
x910:	mov word [bp + 10], 2	; 5: -57 70 10 2 0

stdlib_test$110:	; list[3] = 1
x915:	mov word [bp + 12], 1	; 5: -57 70 12 1 0

stdlib_test$111:	; size = 4
x920:	mov word [bp + 14], 4	; 5: -57 70 14 4 0

stdlib_test$112:	; call header integral zero 0 stack zero 0

stdlib_test$113:	; parameter string_0AA20List2013A20#, offset 6
x925:	mov word [bp + 24], string_0AA20List2013A20#	; 5: -57 70 24 -108 6

stdlib_test$114:	; call function noellipse-ellipse printf, extra 0
x930:	mov word [bp + 18], stdlib_test$115	; 5: -57 70 18 -78 3
x935:	mov [bp + 20], bp	; 3: -119 110 20
x938:	add bp, 18	; 3: -125 -59 18
x941:	mov di, bp	; 2: -119 -17
x943:	jmp printf	; 3: -23 -61 30

stdlib_test$115:	; post call

stdlib_test$116:	; index = 0
x946:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

stdlib_test$117:	; if index >= size goto 128
x951:	mov ax, [bp + 14]	; 3: -117 70 14
x954:	cmp [bp + 16], ax	; 3: 57 70 16
x957:	jge stdlib_test$128	; 2: 125 50

stdlib_test$118:	; call header integral zero 0 stack zero 0

stdlib_test$119:	; parameter string_25i20#, offset 6
x959:	mov word [bp + 24], string_25i20#	; 5: -57 70 24 -96 6

stdlib_test$120:	; £temporary6038 = index * 2
x964:	mov ax, [bp + 16]	; 3: -117 70 16
x967:	xor dx, dx	; 2: 49 -46
x969:	mul word [int2$2#]	; 4: -9 38 -92 6

stdlib_test$121:	; £temporary6039 = list + £temporary6038
x973:	mov si, bp	; 2: -119 -18
x975:	add si, 6	; 3: -125 -58 6
x978:	add si, ax	; 2: 1 -58

stdlib_test$122:	; £temporary6040 -> £temporary6039 = *£temporary6039

stdlib_test$123:	; parameter £temporary6040 -> £temporary6039, offset 8
x980:	mov ax, [si]	; 2: -117 4
x982:	mov [bp + 26], ax	; 3: -119 70 26

stdlib_test$124:	; call function noellipse-ellipse printf, extra 0
x985:	mov word [bp + 18], stdlib_test$125	; 5: -57 70 18 -20 3
x990:	mov [bp + 20], bp	; 3: -119 110 20
x993:	add bp, 18	; 3: -125 -59 18
x996:	mov di, bp	; 2: -119 -17
x998:	add di, 2	; 3: -125 -57 2
x1001:	jmp printf	; 3: -23 -119 30

stdlib_test$125:	; post call

stdlib_test$126:	; ++index
x1004:	inc word [bp + 16]	; 3: -1 70 16

stdlib_test$127:	; goto 117
x1007:	jmp stdlib_test$117	; 2: -21 -58

stdlib_test$128:	; call header integral zero 0 stack zero 0

stdlib_test$129:	; parameter string_0AB20List2023A20#, offset 6
x1009:	mov word [bp + 24], string_0AB20List2023A20#	; 5: -57 70 24 -90 6

stdlib_test$130:	; call function noellipse-ellipse printf, extra 0
x1014:	mov word [bp + 18], stdlib_test$131	; 5: -57 70 18 6 4
x1019:	mov [bp + 20], bp	; 3: -119 110 20
x1022:	add bp, 18	; 3: -125 -59 18
x1025:	mov di, bp	; 2: -119 -17
x1027:	jmp printf	; 3: -23 111 30

stdlib_test$131:	; post call

stdlib_test$132:	; call header integral zero 0 stack zero 0

stdlib_test$133:	; parameter list, offset 6
x1030:	mov [bp + 24], bp	; 3: -119 110 24
x1033:	add word [bp + 24], 6	; 4: -125 70 24 6

stdlib_test$134:	; parameter size, offset 8
x1037:	mov ax, [bp + 14]	; 3: -117 70 14
x1040:	mov [bp + 26], ax	; 3: -119 70 26

stdlib_test$135:	; parameter 2, offset 10
x1043:	mov word [bp + 28], 2	; 5: -57 70 28 2 0

stdlib_test$136:	; parameter compare, offset 12
x1048:	mov word [bp + 30], compare	; 5: -57 70 30 -78 6

stdlib_test$137:	; call function noellipse-ellipse qsort, extra 0
x1053:	mov word [bp + 18], stdlib_test$138	; 5: -57 70 18 45 4
x1058:	mov [bp + 20], bp	; 3: -119 110 20
x1061:	add bp, 18	; 3: -125 -59 18
x1064:	mov di, bp	; 2: -119 -17
x1066:	jmp qsort	; 3: -23 56 53

stdlib_test$138:	; post call

stdlib_test$139:	; index = 0
x1069:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

stdlib_test$140:	; if index >= size goto 151
x1074:	mov ax, [bp + 14]	; 3: -117 70 14
x1077:	cmp [bp + 16], ax	; 3: 57 70 16
x1080:	jge stdlib_test$151	; 2: 125 50

stdlib_test$141:	; call header integral zero 0 stack zero 0

stdlib_test$142:	; parameter string_25i20#, offset 6
x1082:	mov word [bp + 24], string_25i20#	; 5: -57 70 24 -96 6

stdlib_test$143:	; £temporary6047 = index * 2
x1087:	mov ax, [bp + 16]	; 3: -117 70 16
x1090:	xor dx, dx	; 2: 49 -46
x1092:	mul word [int2$2#]	; 4: -9 38 -92 6

stdlib_test$144:	; £temporary6048 = list + £temporary6047
x1096:	mov si, bp	; 2: -119 -18
x1098:	add si, 6	; 3: -125 -58 6
x1101:	add si, ax	; 2: 1 -58

stdlib_test$145:	; £temporary6049 -> £temporary6048 = *£temporary6048

stdlib_test$146:	; parameter £temporary6049 -> £temporary6048, offset 8
x1103:	mov ax, [si]	; 2: -117 4
x1105:	mov [bp + 26], ax	; 3: -119 70 26

stdlib_test$147:	; call function noellipse-ellipse printf, extra 0
x1108:	mov word [bp + 18], stdlib_test$148	; 5: -57 70 18 103 4
x1113:	mov [bp + 20], bp	; 3: -119 110 20
x1116:	add bp, 18	; 3: -125 -59 18
x1119:	mov di, bp	; 2: -119 -17
x1121:	add di, 2	; 3: -125 -57 2
x1124:	jmp printf	; 3: -23 14 30

stdlib_test$148:	; post call

stdlib_test$149:	; ++index
x1127:	inc word [bp + 16]	; 3: -1 70 16

stdlib_test$150:	; goto 140
x1130:	jmp stdlib_test$140	; 2: -21 -58

stdlib_test$151:	; call header integral zero 0 stack zero 0

stdlib_test$152:	; parameter string_0AC20List2033A20#, offset 6
x1132:	mov word [bp + 24], string_0AC20List2033A20#	; 5: -57 70 24 -22 6

stdlib_test$153:	; call function noellipse-ellipse printf, extra 0
x1137:	mov word [bp + 18], stdlib_test$154	; 5: -57 70 18 -127 4
x1142:	mov [bp + 20], bp	; 3: -119 110 20
x1145:	add bp, 18	; 3: -125 -59 18
x1148:	mov di, bp	; 2: -119 -17
x1150:	jmp printf	; 3: -23 -12 29

stdlib_test$154:	; post call

stdlib_test$155:	; call header integral zero 0 stack zero 0

stdlib_test$156:	; parameter list, offset 6
x1153:	mov [bp + 24], bp	; 3: -119 110 24
x1156:	add word [bp + 24], 6	; 4: -125 70 24 6

stdlib_test$157:	; parameter size, offset 8
x1160:	mov ax, [bp + 14]	; 3: -117 70 14
x1163:	mov [bp + 26], ax	; 3: -119 70 26

stdlib_test$158:	; parameter 2, offset 10
x1166:	mov word [bp + 28], 2	; 5: -57 70 28 2 0

stdlib_test$159:	; parameter reverse_compare, offset 12
x1171:	mov word [bp + 30], reverse_compare	; 5: -57 70 30 -10 6

stdlib_test$160:	; call function noellipse-ellipse qsort, extra 0
x1176:	mov word [bp + 18], stdlib_test$161	; 5: -57 70 18 -88 4
x1181:	mov [bp + 20], bp	; 3: -119 110 20
x1184:	add bp, 18	; 3: -125 -59 18
x1187:	mov di, bp	; 2: -119 -17
x1189:	jmp qsort	; 3: -23 -67 52

stdlib_test$161:	; post call

stdlib_test$162:	; index = 0
x1192:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

stdlib_test$163:	; if index >= size goto 174
x1197:	mov ax, [bp + 14]	; 3: -117 70 14
x1200:	cmp [bp + 16], ax	; 3: 57 70 16
x1203:	jge stdlib_test$174	; 2: 125 50

stdlib_test$164:	; call header integral zero 0 stack zero 0

stdlib_test$165:	; parameter string_25i20#, offset 6
x1205:	mov word [bp + 24], string_25i20#	; 5: -57 70 24 -96 6

stdlib_test$166:	; £temporary6056 = index * 2
x1210:	mov ax, [bp + 16]	; 3: -117 70 16
x1213:	xor dx, dx	; 2: 49 -46
x1215:	mul word [int2$2#]	; 4: -9 38 -92 6

stdlib_test$167:	; £temporary6057 = list + £temporary6056
x1219:	mov si, bp	; 2: -119 -18
x1221:	add si, 6	; 3: -125 -58 6
x1224:	add si, ax	; 2: 1 -58

stdlib_test$168:	; £temporary6058 -> £temporary6057 = *£temporary6057

stdlib_test$169:	; parameter £temporary6058 -> £temporary6057, offset 8
x1226:	mov ax, [si]	; 2: -117 4
x1228:	mov [bp + 26], ax	; 3: -119 70 26

stdlib_test$170:	; call function noellipse-ellipse printf, extra 0
x1231:	mov word [bp + 18], stdlib_test$171	; 5: -57 70 18 -30 4
x1236:	mov [bp + 20], bp	; 3: -119 110 20
x1239:	add bp, 18	; 3: -125 -59 18
x1242:	mov di, bp	; 2: -119 -17
x1244:	add di, 2	; 3: -125 -57 2
x1247:	jmp printf	; 3: -23 -109 29

stdlib_test$171:	; post call

stdlib_test$172:	; ++index
x1250:	inc word [bp + 16]	; 3: -1 70 16

stdlib_test$173:	; goto 163
x1253:	jmp stdlib_test$163	; 2: -21 -58

stdlib_test$174:	; call header integral zero 0 stack zero 0

stdlib_test$175:	; parameter string_0A0ASearch3A0A#, offset 6
x1255:	mov word [bp + 24], string_0A0ASearch3A0A#	; 5: -57 70 24 46 7

stdlib_test$176:	; call function noellipse-ellipse printf, extra 0
x1260:	mov word [bp + 18], stdlib_test$177	; 5: -57 70 18 -4 4
x1265:	mov [bp + 20], bp	; 3: -119 110 20
x1268:	add bp, 18	; 3: -125 -59 18
x1271:	mov di, bp	; 2: -119 -17
x1273:	jmp printf	; 3: -23 121 29

stdlib_test$177:	; post call

stdlib_test$178:	; key = 0
x1276:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

stdlib_test$179:	; if key >= 6 goto 206
x1281:	cmp word [bp + 16], 6	; 4: -125 126 16 6
x1285:	jge stdlib_test$206	; 2: 125 119

stdlib_test$180:	; call header integral zero 0 stack zero 0

stdlib_test$181:	; £temporary6063 = &key
x1287:	mov si, bp	; 2: -119 -18
x1289:	add si, 16	; 3: -125 -58 16

stdlib_test$182:	; parameter £temporary6063, offset 6
x1292:	mov [bp + 24], si	; 3: -119 118 24

stdlib_test$183:	; parameter list, offset 8
x1295:	mov [bp + 26], bp	; 3: -119 110 26
x1298:	add word [bp + 26], 6	; 4: -125 70 26 6

stdlib_test$184:	; parameter size, offset 10
x1302:	mov ax, [bp + 14]	; 3: -117 70 14
x1305:	mov [bp + 28], ax	; 3: -119 70 28

stdlib_test$185:	; parameter 2, offset 12
x1308:	mov word [bp + 30], 2	; 5: -57 70 30 2 0

stdlib_test$186:	; parameter compare, offset 14
x1313:	mov word [bp + 32], compare	; 5: -57 70 32 -78 6

stdlib_test$187:	; call function noellipse-noellipse bsearch
x1318:	mov word [bp + 18], stdlib_test$188	; 5: -57 70 18 52 5
x1323:	mov [bp + 20], bp	; 3: -119 110 20
x1326:	add bp, 18	; 3: -125 -59 18
x1329:	jmp bsearch	; 3: -23 30 53

stdlib_test$188:	; post call

stdlib_test$189:	; £temporary6065 = return_value

stdlib_test$190:	; £temporary6066 = int_to_int £temporary6065 (Pointer -> Pointer)

stdlib_test$191:	; p = £temporary6066
x1332:	mov [bp + 18], bx	; 3: -119 94 18

stdlib_test$192:	; if p == 0 goto 196
x1335:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x1339:	je stdlib_test$196	; 2: 116 18

stdlib_test$193:	; £temporary6068 = p - list
x1341:	mov ax, [bp + 18]	; 3: -117 70 18
x1344:	mov bx, bp	; 2: -119 -21
x1346:	add bx, 6	; 3: -125 -61 6
x1349:	sub ax, bx	; 2: 41 -40

stdlib_test$194:	; £temporary6073 = £temporary6068 / 2
x1351:	xor dx, dx	; 2: 49 -46
x1353:	div word [int2$2#]	; 4: -9 54 -92 6

stdlib_test$195:	; goto 197
x1357:	jmp stdlib_test$197	; 2: -21 3

stdlib_test$196:	; £temporary6073 = -1
x1359:	mov ax, -1	; 3: -72 -1 -1

stdlib_test$197:	; index = £temporary6073
x1362:	mov [bp + 20], ax	; 3: -119 70 20

stdlib_test$198:	; call header integral zero 0 stack zero 0

stdlib_test$199:	; parameter string_20202825i2C2025i290A#, offset 6
x1365:	mov word [bp + 28], string_20202825i2C2025i290A#	; 5: -57 70 28 57 7

stdlib_test$200:	; parameter key, offset 8
x1370:	mov ax, [bp + 16]	; 3: -117 70 16
x1373:	mov [bp + 30], ax	; 3: -119 70 30

stdlib_test$201:	; parameter index, offset 10
x1376:	mov ax, [bp + 20]	; 3: -117 70 20
x1379:	mov [bp + 32], ax	; 3: -119 70 32

stdlib_test$202:	; call function noellipse-ellipse printf, extra 0
x1382:	mov word [bp + 22], stdlib_test$203	; 5: -57 70 22 121 5
x1387:	mov [bp + 24], bp	; 3: -119 110 24
x1390:	add bp, 22	; 3: -125 -59 22
x1393:	mov di, bp	; 2: -119 -17
x1395:	add di, 4	; 3: -125 -57 4
x1398:	jmp printf	; 3: -23 -4 28

stdlib_test$203:	; post call

stdlib_test$204:	; ++key
x1401:	inc word [bp + 16]	; 3: -1 70 16

stdlib_test$205:	; goto 179
x1404:	jmp stdlib_test$179	; 2: -21 -125

stdlib_test$206:	; call header integral zero 0 stack zero 0

stdlib_test$207:	; parameter string_0A#, offset 6
x1406:	mov word [bp + 24], string_0A#	; 5: -57 70 24 69 7

stdlib_test$208:	; call function noellipse-ellipse printf, extra 0
x1411:	mov word [bp + 18], stdlib_test$209	; 5: -57 70 18 -109 5
x1416:	mov [bp + 20], bp	; 3: -119 110 20
x1419:	add bp, 18	; 3: -125 -59 18
x1422:	mov di, bp	; 2: -119 -17
x1424:	jmp printf	; 3: -23 -30 28

stdlib_test$209:	; post call

stdlib_test$210:	; return
x1427:	mov ax, [bp]	; 3: -117 70 0
x1430:	mov di, [bp + 4]	; 3: -117 126 4
x1433:	mov bp, [bp + 2]	; 3: -117 110 2
x1436:	jmp ax	; 2: -1 -32

stdlib_test$211:	; function end stdlib_test

string_atof28221232E4562229203D2025f0A#:
x1438:	db "atof(", 34, "123.456", 34, ") = %f", 10, 0	; 22: 97 116 111 102 40 34 49 50 51 46 52 53 54 34 41 32 61 32 37 102 10 0

string_1232E456#:
x1460:	db "123.456", 0	; 8: 49 50 51 46 52 53 54 0

string_strtod28221232E456789abc222C2026p29203D202825f2C2025s290A#:
x1468:	db "strtod(", 34, "123.456789abc", 34, ", &p) = (%f, %s)", 10, 0	; 40: 115 116 114 116 111 100 40 34 49 50 51 46 52 53 54 55 56 57 97 98 99 34 44 32 38 112 41 32 61 32 40 37 102 44 32 37 115 41 10 0

string_1232E456789abc#:
x1508:	db "123.456789abc", 0	; 14: 49 50 51 46 52 53 54 55 56 57 97 98 99 0

string_0Agetenv2822path2229203D2025s0A#:
x1522:	db 10, "getenv(", 34, "path", 34, ") = %s", 10, 0	; 22: 10 103 101 116 101 110 118 40 34 112 97 116 104 34 41 32 61 32 37 115 10 0

string_path#:
x1544:	db "path", 0	; 5: 112 97 116 104 0

string_system2822dir22290A#:
x1549:	db "system(", 34, "dir", 34, ")", 10, 0	; 15: 115 121 115 116 101 109 40 34 100 105 114 34 41 10 0

string_dir#:
x1564:	db "dir", 0	; 4: 100 105 114 0

string_0Aabs282D329203D2025i2C20abs28329203D2025i0A#:
x1568:	db 10, "abs(-3) = %i, abs(3) = %i", 10, 0	; 28: 10 97 98 115 40 45 51 41 32 61 32 37 105 44 32 97 98 115 40 51 41 32 61 32 37 105 10 0

string_labs282D3l29203D2025li2C20labs283l29203D2025li0A0A#:
x1596:	db "labs(-3l) = %li, labs(3l) = %li", 10, 10, 0	; 34: 108 97 98 115 40 45 51 108 41 32 61 32 37 108 105 44 32 108 97 98 115 40 51 108 41 32 61 32 37 108 105 10 10 0

string_div_t28102C20329203D202825i2C2025i292C0A#:
x1630:	db "div_t(10, 3) = (%i, %i),", 10, 0	; 26: 100 105 118 95 116 40 49 48 44 32 51 41 32 61 32 40 37 105 44 32 37 105 41 44 10 0

string_ldiv_t28102C20329203D202825li2C2025li290A#:
x1656:	db "ldiv_t(10, 3) = (%li, %li)", 10, 0	; 28: 108 100 105 118 95 116 40 49 48 44 32 51 41 32 61 32 40 37 108 105 44 32 37 108 105 41 10 0

string_0AA20List2013A20#:
x1684:	db 10, "A List 1: ", 0	; 12: 10 65 32 76 105 115 116 32 49 58 32 0

string_25i20#:
x1696:	db "%i ", 0	; 4: 37 105 32 0

int2$2#:
x1700:	dw 2	; 2: 2 0

string_0AB20List2023A20#:
x1702:	db 10, "B List 2: ", 0	; 12: 10 66 32 76 105 115 116 32 50 58 32 0

compare:	; £temporary5942 = int_to_int valuePtr1 (Pointer -> Pointer)
x1714:	mov si, [bp + 6]	; 3: -117 118 6

compare$1:	; £temporary5943 -> £temporary5942 = *£temporary5942

compare$2:	; intValue1 = £temporary5943 -> £temporary5942
x1717:	mov ax, [si]	; 2: -117 4
x1719:	mov [bp + 10], ax	; 3: -119 70 10

compare$3:	; £temporary5944 = int_to_int valuePtr2 (Pointer -> Pointer)
x1722:	mov si, [bp + 8]	; 3: -117 118 8

compare$4:	; £temporary5945 -> £temporary5944 = *£temporary5944

compare$5:	; intValue2 = £temporary5945 -> £temporary5944
x1725:	mov ax, [si]	; 2: -117 4
x1727:	mov [bp + 12], ax	; 3: -119 70 12

compare$6:	; if intValue1 >= intValue2 goto 9
x1730:	mov ax, [bp + 12]	; 3: -117 70 12
x1733:	cmp [bp + 10], ax	; 3: 57 70 10
x1736:	jge compare$9	; 2: 125 5

compare$7:	; £temporary5955 = -1
x1738:	mov bx, -1	; 3: -69 -1 -1

compare$8:	; goto 14
x1741:	jmp compare$14	; 2: -21 16

compare$9:	; if intValue1 != intValue2 goto 12
x1743:	mov ax, [bp + 12]	; 3: -117 70 12
x1746:	cmp [bp + 10], ax	; 3: 57 70 10
x1749:	jne compare$12	; 2: 117 5

compare$10:	; £temporary5951 = 0
x1751:	mov bx, 0	; 3: -69 0 0

compare$11:	; goto 13
x1754:	jmp compare$13	; 2: -21 3

compare$12:	; £temporary5951 = 1
x1756:	mov bx, 1	; 3: -69 1 0

compare$13:	; £temporary5955 = £temporary5951

compare$14:	; return_value = £temporary5955

compare$15:	; return
x1759:	mov ax, [bp]	; 3: -117 70 0
x1762:	mov di, [bp + 4]	; 3: -117 126 4
x1765:	mov bp, [bp + 2]	; 3: -117 110 2
x1768:	jmp ax	; 2: -1 -32

compare$16:	; function end compare

string_0AC20List2033A20#:
x1770:	db 10, "C List 3: ", 0	; 12: 10 67 32 76 105 115 116 32 51 58 32 0

reverse_compare:	; £temporary5956 = int_to_int valuePtr1 (Pointer -> Pointer)
x1782:	mov si, [bp + 6]	; 3: -117 118 6

reverse_compare$1:	; £temporary5957 -> £temporary5956 = *£temporary5956

reverse_compare$2:	; intValue1 = £temporary5957 -> £temporary5956
x1785:	mov ax, [si]	; 2: -117 4
x1787:	mov [bp + 10], ax	; 3: -119 70 10

reverse_compare$3:	; £temporary5958 = int_to_int valuePtr2 (Pointer -> Pointer)
x1790:	mov si, [bp + 8]	; 3: -117 118 8

reverse_compare$4:	; £temporary5959 -> £temporary5958 = *£temporary5958

reverse_compare$5:	; intValue2 = £temporary5959 -> £temporary5958
x1793:	mov ax, [si]	; 2: -117 4
x1795:	mov [bp + 12], ax	; 3: -119 70 12

reverse_compare$6:	; if intValue1 >= intValue2 goto 9
x1798:	mov ax, [bp + 12]	; 3: -117 70 12
x1801:	cmp [bp + 10], ax	; 3: 57 70 10
x1804:	jge reverse_compare$9	; 2: 125 5

reverse_compare$7:	; £temporary5969 = 1
x1806:	mov bx, 1	; 3: -69 1 0

reverse_compare$8:	; goto 14
x1809:	jmp reverse_compare$14	; 2: -21 16

reverse_compare$9:	; if intValue1 != intValue2 goto 12
x1811:	mov ax, [bp + 12]	; 3: -117 70 12
x1814:	cmp [bp + 10], ax	; 3: 57 70 10
x1817:	jne reverse_compare$12	; 2: 117 5

reverse_compare$10:	; £temporary5965 = 0
x1819:	mov bx, 0	; 3: -69 0 0

reverse_compare$11:	; goto 13
x1822:	jmp reverse_compare$13	; 2: -21 3

reverse_compare$12:	; £temporary5965 = -1
x1824:	mov bx, -1	; 3: -69 -1 -1

reverse_compare$13:	; £temporary5969 = £temporary5965

reverse_compare$14:	; return_value = £temporary5969

reverse_compare$15:	; return
x1827:	mov ax, [bp]	; 3: -117 70 0
x1830:	mov di, [bp + 4]	; 3: -117 126 4
x1833:	mov bp, [bp + 2]	; 3: -117 110 2
x1836:	jmp ax	; 2: -1 -32

reverse_compare$16:	; function end reverse_compare

string_0A0ASearch3A0A#:
x1838:	db 10, 10, "Search:", 10, 0	; 11: 10 10 83 101 97 114 99 104 58 10 0

string_20202825i2C2025i290A#:
x1849:	db "  (%i, %i)", 10, 0	; 12: 32 32 40 37 105 44 32 37 105 41 10 0

string_0A#:
x1861:	db 10, 0	; 2: 10 0

atof:	; call header integral zero 0 stack zero 0

atof$1:	; parameter s, offset 6
x1863:	mov ax, [bp + 6]	; 3: -117 70 6
x1866:	mov [bp + 14], ax	; 3: -119 70 14

atof$2:	; parameter 0, offset 8
x1869:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

atof$3:	; call function noellipse-noellipse strtod
x1874:	mov word [bp + 8], atof$4	; 5: -57 70 8 96 7
x1879:	mov [bp + 10], bp	; 3: -119 110 10
x1882:	add bp, 8	; 3: -125 -59 8
x1885:	nop	; 1: -112
x1886:	jmp strtod	; 2: -21 11

atof$4:	; post call

atof$5:	; £temporary3283 = return_value

atof$6:	; return_value = £temporary3283

atof$7:	; return
x1888:	mov ax, [bp]	; 3: -117 70 0
x1891:	mov di, [bp + 4]	; 3: -117 126 4
x1894:	mov bp, [bp + 2]	; 3: -117 110 2
x1897:	jmp ax	; 2: -1 -32

atof$8:	; function end atof

strtod:	; chars = 0
x1899:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strtod$1:	; push 0
x1904:	fldz	; 2: -39 -18

strtod$2:	; pop float value
x1906:	fstp qword [bp + 12]	; 3: -35 94 12

strtod$3:	; call header integral zero 0 stack zero 0

strtod$4:	; parameter s, offset 6
x1909:	mov ax, [bp + 6]	; 3: -117 70 6
x1912:	mov [bp + 26], ax	; 3: -119 70 26

strtod$5:	; parameter string_25lf25n#, offset 8
x1915:	mov word [bp + 28], string_25lf25n#	; 5: -57 70 28 -62 7

strtod$6:	; £temporary3286 = &value
x1920:	mov si, bp	; 2: -119 -18
x1922:	add si, 12	; 3: -125 -58 12

strtod$7:	; parameter £temporary3286, offset 10
x1925:	mov [bp + 30], si	; 3: -119 118 30

strtod$8:	; £temporary3287 = &chars
x1928:	mov si, bp	; 2: -119 -18
x1930:	add si, 10	; 3: -125 -58 10

strtod$9:	; parameter £temporary3287, offset 12
x1933:	mov [bp + 32], si	; 3: -119 118 32

strtod$10:	; call function noellipse-ellipse sscanf, extra 0
x1936:	mov word [bp + 20], strtod$11	; 5: -57 70 20 -93 7
x1941:	mov [bp + 22], bp	; 3: -119 110 22
x1944:	add bp, 20	; 3: -125 -59 20
x1947:	mov di, bp	; 2: -119 -17
x1949:	add di, 4	; 3: -125 -57 4
x1952:	nop	; 1: -112
x1953:	jmp sscanf	; 2: -21 37

strtod$11:	; post call

strtod$12:	; if endp == 0 goto 15
x1955:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x1959:	je strtod$15	; 2: 116 11

strtod$13:	; £temporary3290 -> endp = *endp
x1961:	mov si, [bp + 8]	; 3: -117 118 8

strtod$14:	; £temporary3290 -> endp = s + chars
x1964:	mov ax, [bp + 6]	; 3: -117 70 6
x1967:	add ax, [bp + 10]	; 3: 3 70 10
x1970:	mov [si], ax	; 2: -119 4

strtod$15:	; push float value
x1972:	fld qword [bp + 12]	; 3: -35 70 12

strtod$16:	; return_value = value

strtod$17:	; return
x1975:	mov ax, [bp]	; 3: -117 70 0
x1978:	mov di, [bp + 4]	; 3: -117 126 4
x1981:	mov bp, [bp + 2]	; 3: -117 110 2
x1984:	jmp ax	; 2: -1 -32

strtod$18:	; function end strtod

string_25lf25n#:
x1986:	db "%lf%n", 0	; 6: 37 108 102 37 110 0

sscanf:	; £temporary1762 = &format
x1992:	mov si, bp	; 2: -119 -18
x1994:	add si, 8	; 3: -125 -58 8

sscanf$1:	; £temporary1763 = int_to_int £temporary1762 (Pointer -> Pointer)

sscanf$2:	; arg_list = £temporary1763 + 2
x1997:	add si, 2	; 3: -125 -58 2
x2000:	mov [di + 10], si	; 3: -119 117 10

sscanf$3:	; call header integral zero 0 stack zero 0

sscanf$4:	; parameter inString, offset 6
x2003:	mov ax, [bp + 6]	; 3: -117 70 6
x2006:	mov [di + 18], ax	; 3: -119 69 18

sscanf$5:	; parameter format, offset 8
x2009:	mov ax, [bp + 8]	; 3: -117 70 8
x2012:	mov [di + 20], ax	; 3: -119 69 20

sscanf$6:	; parameter arg_list, offset 10
x2015:	mov ax, [di + 10]	; 3: -117 69 10
x2018:	mov [di + 22], ax	; 3: -119 69 22

sscanf$7:	; call function ellipse-noellipse vsscanf
x2021:	mov word [di + 12], sscanf$8	; 5: -57 69 12 -8 7
x2026:	mov [di + 14], bp	; 3: -119 109 14
x2029:	mov [di + 16], di	; 3: -119 125 16
x2032:	add di, 12	; 3: -125 -57 12
x2035:	mov bp, di	; 2: -119 -3
x2037:	nop	; 1: -112
x2038:	jmp vsscanf	; 2: -21 11

sscanf$8:	; post call

sscanf$9:	; £temporary1765 = return_value

sscanf$10:	; return_value = £temporary1765

sscanf$11:	; return
x2040:	mov ax, [bp]	; 3: -117 70 0
x2043:	mov di, [bp + 4]	; 3: -117 126 4
x2046:	mov bp, [bp + 2]	; 3: -117 110 2
x2049:	jmp ax	; 2: -1 -32

sscanf$12:	; function end sscanf

vsscanf:	; g_inStatus = 1
x2051:	mov word [g_inStatus], 1	; 6: -57 6 52 8 1 0

vsscanf$1:	; £temporary1770 = int_to_int inString (Pointer -> Pointer)
x2057:	mov ax, [bp + 6]	; 3: -117 70 6

vsscanf$2:	; g_inDevice = £temporary1770
x2060:	mov [g_inDevice], ax	; 3: -93 54 8

vsscanf$3:	; call header integral zero 0 stack zero 0

vsscanf$4:	; parameter format, offset 6
x2063:	mov ax, [bp + 8]	; 3: -117 70 8
x2066:	mov [bp + 18], ax	; 3: -119 70 18

vsscanf$5:	; parameter arg_list, offset 8
x2069:	mov ax, [bp + 10]	; 3: -117 70 10
x2072:	mov [bp + 20], ax	; 3: -119 70 20

vsscanf$6:	; call function noellipse-noellipse scanFormat
x2075:	mov word [bp + 12], vsscanf$7	; 5: -57 70 12 41 8
x2080:	mov [bp + 14], bp	; 3: -119 110 14
x2083:	add bp, 12	; 3: -125 -59 12
x2086:	nop	; 1: -112
x2087:	jmp scanFormat	; 2: -21 15

vsscanf$7:	; post call

vsscanf$8:	; £temporary1771 = return_value

vsscanf$9:	; return_value = £temporary1771

vsscanf$10:	; return
x2089:	mov ax, [bp]	; 3: -117 70 0
x2092:	mov di, [bp + 4]	; 3: -117 126 4
x2095:	mov bp, [bp + 2]	; 3: -117 110 2
x2098:	jmp ax	; 2: -1 -32

vsscanf$11:	; function end vsscanf

g_inStatus:
x2100:	db 0, 0	; 2: 0 0

g_inDevice:
x2102:	db 0, 0	; 2: 0 0

scanFormat:	; percent = 0
x2104:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$1:	; shortInt = 0
x2109:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$2:	; longIntOrDouble = 0
x2114:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$3:	; longDouble = 0
x2119:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$4:	; star = 0
x2124:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$5:	; g_inCount = 0
x2129:	mov word [g_inCount], 0	; 6: -57 6 86 13 0 0

scanFormat$6:	; g_inChars = 0
x2135:	mov word [g_inChars], 0	; 6: -57 6 88 13 0 0

scanFormat$7:	; index = 0
x2141:	mov word [bp + 31], 0	; 5: -57 70 31 0 0

scanFormat$8:	; £temporary1548 = format + index
x2146:	mov si, [bp + 6]	; 3: -117 118 6
x2149:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$9:	; £temporary1547 -> £temporary1548 = *£temporary1548

scanFormat$10:	; if £temporary1547 -> £temporary1548 == 0 goto 326
x2152:	cmp byte [si], 0	; 3: -128 60 0
x2155:	je scanFormat$326	; 4: 15 -124 -40 4

scanFormat$11:	; £temporary1552 = format + index
x2159:	mov si, [bp + 6]	; 3: -117 118 6
x2162:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$12:	; £temporary1551 -> £temporary1552 = *£temporary1552

scanFormat$13:	; c = £temporary1551 -> £temporary1552
x2165:	mov al, [si]	; 2: -118 4
x2167:	mov [bp + 10], al	; 3: -120 70 10

scanFormat$14:	; £temporary1553 = int_to_int c (Signed_Char -> Signed_Int)
x2170:	mov al, [bp + 10]	; 3: -118 70 10
x2173:	and ax, 255	; 3: 37 -1 0
x2176:	cmp al, 0	; 2: 60 0
x2178:	jge scanFormat$15	; 2: 125 4
x2180:	neg al	; 2: -10 -40
x2182:	neg ax	; 2: -9 -40

scanFormat$15:	; d = £temporary1553 + 1
x2184:	inc ax	; 1: 64
x2185:	mov [bp + 55], ax	; 3: -119 70 55

scanFormat$16:	; if percent == 0 goto 318
x2188:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x2192:	je scanFormat$318	; 4: 15 -124 -114 4

scanFormat$17:	; £temporary1555 = d - 1
x2196:	mov ax, [bp + 55]	; 3: -117 70 55
x2199:	dec ax	; 1: 72

scanFormat$18:	; case £temporary1555 == 104 goto 36
x2200:	cmp ax, 104	; 3: -125 -8 104
x2203:	je scanFormat$36	; 2: 116 100

scanFormat$19:	; case £temporary1555 == 108 goto 38
x2205:	cmp ax, 108	; 3: -125 -8 108
x2208:	je scanFormat$38	; 2: 116 103

scanFormat$20:	; case £temporary1555 == 76 goto 40
x2210:	cmp ax, 76	; 3: -125 -8 76
x2213:	je scanFormat$40	; 2: 116 106

scanFormat$21:	; case £temporary1555 == 42 goto 42
x2215:	cmp ax, 42	; 3: -125 -8 42
x2218:	je scanFormat$42	; 2: 116 109

scanFormat$22:	; case £temporary1555 == 99 goto 44
x2220:	cmp ax, 99	; 3: -125 -8 99
x2223:	je scanFormat$44	; 2: 116 112

scanFormat$23:	; case £temporary1555 == 115 goto 62
x2225:	cmp ax, 115	; 3: -125 -8 115
x2228:	je scanFormat$62	; 4: 15 -124 -72 0

scanFormat$24:	; case £temporary1555 == 100 goto 81
x2232:	cmp ax, 100	; 3: -125 -8 100
x2235:	je scanFormat$81	; 4: 15 -124 1 1

scanFormat$25:	; case £temporary1555 == 105 goto 81
x2239:	cmp ax, 105	; 3: -125 -8 105
x2242:	je scanFormat$81	; 4: 15 -124 -6 0

scanFormat$26:	; case £temporary1555 == 111 goto 117
x2246:	cmp ax, 111	; 3: -125 -8 111
x2249:	je scanFormat$117	; 4: 15 -124 -121 1

scanFormat$27:	; case £temporary1555 == 120 goto 153
x2253:	cmp ax, 120	; 3: -125 -8 120
x2256:	je scanFormat$153	; 4: 15 -124 -2 1

scanFormat$28:	; case £temporary1555 == 117 goto 189
x2260:	cmp ax, 117	; 3: -125 -8 117
x2263:	je scanFormat$189	; 4: 15 -124 117 2

scanFormat$29:	; case £temporary1555 == 103 goto 225
x2267:	cmp ax, 103	; 3: -125 -8 103
x2270:	je scanFormat$225	; 4: 15 -124 -20 2

scanFormat$30:	; case £temporary1555 == 102 goto 225
x2274:	cmp ax, 102	; 3: -125 -8 102
x2277:	je scanFormat$225	; 4: 15 -124 -27 2

scanFormat$31:	; case £temporary1555 == 101 goto 225
x2281:	cmp ax, 101	; 3: -125 -8 101
x2284:	je scanFormat$225	; 4: 15 -124 -34 2

scanFormat$32:	; case £temporary1555 == 91 goto 261
x2288:	cmp ax, 91	; 3: -125 -8 91
x2291:	je scanFormat$261	; 4: 15 -124 75 3

scanFormat$33:	; case £temporary1555 == 110 goto 302
x2295:	cmp ax, 110	; 3: -125 -8 110
x2298:	je scanFormat$302	; 4: 15 -124 -37 3

scanFormat$34:	; case end £temporary1555

scanFormat$35:	; goto 311
x2302:	jmp scanFormat$311	; 3: -23 -10 3

scanFormat$36:	; shortInt = 1
x2305:	mov word [bp + 15], 1	; 5: -57 70 15 1 0

scanFormat$37:	; goto 324
x2310:	jmp scanFormat$324	; 3: -23 56 4

scanFormat$38:	; longIntOrDouble = 1
x2313:	mov word [bp + 17], 1	; 5: -57 70 17 1 0

scanFormat$39:	; goto 324
x2318:	jmp scanFormat$324	; 3: -23 48 4

scanFormat$40:	; longDouble = 1
x2321:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanFormat$41:	; goto 324
x2326:	jmp scanFormat$324	; 3: -23 40 4

scanFormat$42:	; star = 1
x2329:	mov word [bp + 21], 1	; 5: -57 70 21 1 0

scanFormat$43:	; goto 324
x2334:	jmp scanFormat$324	; 3: -23 32 4

scanFormat$44:	; call header integral zero 0 stack zero 0

scanFormat$45:	; call function noellipse-noellipse scanChar
x2337:	mov word [bp + 57], scanFormat$46	; 5: -57 70 57 47 9
x2342:	mov [bp + 59], bp	; 3: -119 110 59
x2345:	add bp, 57	; 3: -125 -59 57
x2348:	jmp scanChar	; 3: -23 64 4

scanFormat$46:	; post call

scanFormat$47:	; £temporary1556 = return_value

scanFormat$48:	; charValue = £temporary1556
x2351:	mov [bp + 57], bl	; 3: -120 94 57

scanFormat$49:	; if star != 0 goto 57
x2354:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x2358:	jne scanFormat$57	; 2: 117 23

scanFormat$50:	; arg_list = arg_list + 2
x2360:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$51:	; £temporary1560 = arg_list - 2
x2364:	mov si, [bp + 8]	; 3: -117 118 8
x2367:	sub si, 2	; 3: -125 -18 2

scanFormat$52:	; £temporary1561 = int_to_int £temporary1560 (Signed_Int -> Pointer)

scanFormat$53:	; £temporary1562 -> £temporary1561 = *£temporary1561

scanFormat$54:	; charPtr = £temporary1562 -> £temporary1561
x2370:	mov ax, [si]	; 2: -117 4
x2372:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$55:	; £temporary1563 -> charPtr = *charPtr
x2375:	mov si, [bp + 11]	; 3: -117 118 11

scanFormat$56:	; £temporary1563 -> charPtr = charValue
x2378:	mov al, [bp + 57]	; 3: -118 70 57
x2381:	mov [si], al	; 2: -120 4

scanFormat$57:	; percent = 0
x2383:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$58:	; £temporary1564 = int_to_int charValue (Signed_Char -> Signed_Int)
x2388:	mov al, [bp + 57]	; 3: -118 70 57
x2391:	and ax, 255	; 3: 37 -1 0
x2394:	cmp al, 0	; 2: 60 0
x2396:	jge scanFormat$59	; 2: 125 4
x2398:	neg al	; 2: -10 -40
x2400:	neg ax	; 2: -9 -40

scanFormat$59:	; if £temporary1564 == -1 goto 324
x2402:	cmp ax, -1	; 3: -125 -8 -1
x2405:	je scanFormat$324	; 4: 15 -124 -40 3

scanFormat$60:	; ++g_inCount
x2409:	inc word [g_inCount]	; 4: -1 6 86 13

scanFormat$61:	; goto 324
x2413:	jmp scanFormat$324	; 3: -23 -47 3

scanFormat$62:	; if star != 0 goto 74
x2416:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x2420:	jne scanFormat$74	; 2: 117 42

scanFormat$63:	; arg_list = arg_list + 2
x2422:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$64:	; £temporary1570 = arg_list - 2
x2426:	mov si, [bp + 8]	; 3: -117 118 8
x2429:	sub si, 2	; 3: -125 -18 2

scanFormat$65:	; £temporary1571 = int_to_int £temporary1570 (Signed_Int -> Pointer)

scanFormat$66:	; £temporary1572 -> £temporary1571 = *£temporary1571

scanFormat$67:	; charPtr = £temporary1572 -> £temporary1571
x2432:	mov ax, [si]	; 2: -117 4
x2434:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$68:	; call header integral zero 0 stack zero 0

scanFormat$69:	; parameter charPtr, offset 6
x2437:	mov ax, [bp + 11]	; 3: -117 70 11
x2440:	mov [bp + 63], ax	; 3: -119 70 63

scanFormat$70:	; parameter 0, offset 8
x2443:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$71:	; call function noellipse-noellipse scanString
x2448:	mov word [bp + 57], scanFormat$72	; 5: -57 70 57 -98 9
x2453:	mov [bp + 59], bp	; 3: -119 110 59
x2456:	add bp, 57	; 3: -125 -59 57
x2459:	jmp scanString	; 3: -23 64 4

scanFormat$72:	; post call

scanFormat$73:	; goto 79
x2462:	jmp scanFormat$79	; 2: -21 24

scanFormat$74:	; call header integral zero 0 stack zero 0

scanFormat$75:	; parameter 0, offset 6
x2464:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

scanFormat$76:	; parameter 0, offset 8
x2469:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$77:	; call function noellipse-noellipse scanString
x2474:	mov word [bp + 57], scanFormat$78	; 5: -57 70 57 -72 9
x2479:	mov [bp + 59], bp	; 3: -119 110 59
x2482:	add bp, 57	; 3: -125 -59 57
x2485:	jmp scanString	; 3: -23 38 4

scanFormat$78:	; post call

scanFormat$79:	; percent = 0
x2488:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$80:	; goto 324
x2493:	jmp scanFormat$324	; 3: -23 -127 3

scanFormat$81:	; call header integral zero 0 stack zero 0

scanFormat$82:	; parameter 10, offset 6
x2496:	mov word [bp + 63], 10	; 5: -57 70 63 10 0

scanFormat$83:	; call function noellipse-noellipse scanLongInt
x2501:	mov word [bp + 57], scanFormat$84	; 5: -57 70 57 -45 9
x2506:	mov [bp + 59], bp	; 3: -119 110 59
x2509:	add bp, 57	; 3: -125 -59 57
x2512:	jmp scanLongInt	; 3: -23 -113 6

scanFormat$84:	; post call

scanFormat$85:	; £temporary1575 = return_value

scanFormat$86:	; longValue = £temporary1575
x2515:	mov [bp + 23], ebx	; 4: 102 -119 94 23

scanFormat$87:	; if star != 0 goto 115
x2519:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x2523:	jne scanFormat$115	; 2: 117 111

scanFormat$88:	; if shortInt == 0 goto 98
x2525:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x2529:	je scanFormat$98	; 2: 116 37

scanFormat$89:	; arg_list = arg_list + 2
x2531:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$90:	; £temporary1579 = arg_list - 2
x2535:	mov si, [bp + 8]	; 3: -117 118 8
x2538:	sub si, 2	; 3: -125 -18 2

scanFormat$91:	; £temporary1580 = int_to_int £temporary1579 (Signed_Int -> Pointer)

scanFormat$92:	; £temporary1581 -> £temporary1580 = *£temporary1580

scanFormat$93:	; shortPtr = £temporary1581 -> £temporary1580
x2541:	mov ax, [si]	; 2: -117 4
x2543:	mov [bp + 29], ax	; 3: -119 70 29

scanFormat$94:	; £temporary1582 -> shortPtr = *shortPtr
x2546:	mov si, [bp + 29]	; 3: -117 118 29

scanFormat$95:	; £temporary1583 = int_to_int longValue (Signed_Long_Int -> Signed_Short_Int)
x2549:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x2553:	cmp eax, 0	; 4: 102 -125 -8 0
x2557:	jge scanFormat$96	; 2: 125 5
x2559:	neg eax	; 3: 102 -9 -40
x2562:	neg al	; 2: -10 -40

scanFormat$96:	; £temporary1582 -> shortPtr = £temporary1583
x2564:	mov [si], al	; 2: -120 4

scanFormat$97:	; goto 115
x2566:	jmp scanFormat$115	; 2: -21 68

scanFormat$98:	; if longIntOrDouble != 0 goto 108
x2568:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x2572:	jne scanFormat$108	; 2: 117 37

scanFormat$99:	; arg_list = arg_list + 2
x2574:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$100:	; £temporary1587 = arg_list - 2
x2578:	mov si, [bp + 8]	; 3: -117 118 8
x2581:	sub si, 2	; 3: -125 -18 2

scanFormat$101:	; £temporary1588 = int_to_int £temporary1587 (Signed_Int -> Pointer)

scanFormat$102:	; £temporary1589 -> £temporary1588 = *£temporary1588

scanFormat$103:	; intPtr = £temporary1589 -> £temporary1588
x2584:	mov ax, [si]	; 2: -117 4
x2586:	mov [bp + 33], ax	; 3: -119 70 33

scanFormat$104:	; £temporary1590 -> intPtr = *intPtr
x2589:	mov si, [bp + 33]	; 3: -117 118 33

scanFormat$105:	; £temporary1591 = int_to_int longValue (Signed_Long_Int -> Signed_Int)
x2592:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x2596:	cmp eax, 0	; 4: 102 -125 -8 0
x2600:	jge scanFormat$106	; 2: 125 5
x2602:	neg eax	; 3: 102 -9 -40
x2605:	neg ax	; 2: -9 -40

scanFormat$106:	; £temporary1590 -> intPtr = £temporary1591
x2607:	mov [si], ax	; 2: -119 4

scanFormat$107:	; goto 115
x2609:	jmp scanFormat$115	; 2: -21 25

scanFormat$108:	; arg_list = arg_list + 2
x2611:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$109:	; £temporary1593 = arg_list - 2
x2615:	mov si, [bp + 8]	; 3: -117 118 8
x2618:	sub si, 2	; 3: -125 -18 2

scanFormat$110:	; £temporary1594 = int_to_int £temporary1593 (Signed_Int -> Pointer)

scanFormat$111:	; £temporary1595 -> £temporary1594 = *£temporary1594

scanFormat$112:	; longPtr = £temporary1595 -> £temporary1594
x2621:	mov ax, [si]	; 2: -117 4
x2623:	mov [bp + 27], ax	; 3: -119 70 27

scanFormat$113:	; £temporary1596 -> longPtr = *longPtr
x2626:	mov si, [bp + 27]	; 3: -117 118 27

scanFormat$114:	; £temporary1596 -> longPtr = longValue
x2629:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x2633:	mov [si], eax	; 3: 102 -119 4

scanFormat$115:	; percent = 0
x2636:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$116:	; goto 324
x2641:	jmp scanFormat$324	; 3: -23 -19 2

scanFormat$117:	; call header integral zero 0 stack zero 0

scanFormat$118:	; parameter 8, offset 6
x2644:	mov word [bp + 63], 8	; 5: -57 70 63 8 0

scanFormat$119:	; call function noellipse-noellipse scanUnsignedLongInt
x2649:	mov word [bp + 57], scanFormat$120	; 5: -57 70 57 103 10
x2654:	mov [bp + 59], bp	; 3: -119 110 59
x2657:	add bp, 57	; 3: -125 -59 57
x2660:	jmp scanUnsignedLongInt	; 3: -23 -14 14

scanFormat$120:	; post call

scanFormat$121:	; £temporary1598 = return_value

scanFormat$122:	; unsignedLongValue = £temporary1598
x2663:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$123:	; if star != 0 goto 151
x2667:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x2671:	jne scanFormat$151	; 2: 117 89

scanFormat$124:	; if shortInt == 0 goto 134
x2673:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x2677:	je scanFormat$134	; 2: 116 26

scanFormat$125:	; arg_list = arg_list + 2
x2679:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$126:	; £temporary1602 = arg_list - 2
x2683:	mov si, [bp + 8]	; 3: -117 118 8
x2686:	sub si, 2	; 3: -125 -18 2

scanFormat$127:	; £temporary1603 = int_to_int £temporary1602 (Signed_Int -> Pointer)

scanFormat$128:	; £temporary1604 -> £temporary1603 = *£temporary1603

scanFormat$129:	; unsignedShortPtr = £temporary1604 -> £temporary1603
x2689:	mov ax, [si]	; 2: -117 4
x2691:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$130:	; £temporary1605 -> unsignedShortPtr = *unsignedShortPtr
x2694:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$131:	; £temporary1606 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x2697:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$132:	; £temporary1605 -> unsignedShortPtr = £temporary1606
x2701:	mov [si], al	; 2: -120 4

scanFormat$133:	; goto 151
x2703:	jmp scanFormat$151	; 2: -21 57

scanFormat$134:	; if longIntOrDouble != 0 goto 144
x2705:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x2709:	jne scanFormat$144	; 2: 117 26

scanFormat$135:	; arg_list = arg_list + 2
x2711:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$136:	; £temporary1610 = arg_list - 2
x2715:	mov si, [bp + 8]	; 3: -117 118 8
x2718:	sub si, 2	; 3: -125 -18 2

scanFormat$137:	; £temporary1611 = int_to_int £temporary1610 (Signed_Int -> Pointer)

scanFormat$138:	; £temporary1612 -> £temporary1611 = *£temporary1611

scanFormat$139:	; unsignedIntPtr = £temporary1612 -> £temporary1611
x2721:	mov ax, [si]	; 2: -117 4
x2723:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$140:	; £temporary1613 -> unsignedIntPtr = *unsignedIntPtr
x2726:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$141:	; £temporary1614 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x2729:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$142:	; £temporary1613 -> unsignedIntPtr = £temporary1614
x2733:	mov [si], ax	; 2: -119 4

scanFormat$143:	; goto 151
x2735:	jmp scanFormat$151	; 2: -21 25

scanFormat$144:	; arg_list = arg_list + 2
x2737:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$145:	; £temporary1616 = arg_list - 2
x2741:	mov si, [bp + 8]	; 3: -117 118 8
x2744:	sub si, 2	; 3: -125 -18 2

scanFormat$146:	; £temporary1617 = int_to_int £temporary1616 (Signed_Int -> Pointer)

scanFormat$147:	; £temporary1618 -> £temporary1617 = *£temporary1617

scanFormat$148:	; unsignedLongPtr = £temporary1618 -> £temporary1617
x2747:	mov ax, [si]	; 2: -117 4
x2749:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$149:	; £temporary1619 -> unsignedLongPtr = *unsignedLongPtr
x2752:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$150:	; £temporary1619 -> unsignedLongPtr = unsignedLongValue
x2755:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x2759:	mov [si], eax	; 3: 102 -119 4

scanFormat$151:	; percent = 0
x2762:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$152:	; goto 324
x2767:	jmp scanFormat$324	; 3: -23 111 2

scanFormat$153:	; call header integral zero 0 stack zero 0

scanFormat$154:	; parameter 16, offset 6
x2770:	mov word [bp + 63], 16	; 5: -57 70 63 16 0

scanFormat$155:	; call function noellipse-noellipse scanUnsignedLongInt
x2775:	mov word [bp + 57], scanFormat$156	; 5: -57 70 57 -27 10
x2780:	mov [bp + 59], bp	; 3: -119 110 59
x2783:	add bp, 57	; 3: -125 -59 57
x2786:	jmp scanUnsignedLongInt	; 3: -23 116 14

scanFormat$156:	; post call

scanFormat$157:	; £temporary1621 = return_value

scanFormat$158:	; unsignedLongValue = £temporary1621
x2789:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$159:	; if star != 0 goto 187
x2793:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x2797:	jne scanFormat$187	; 2: 117 89

scanFormat$160:	; if shortInt == 0 goto 170
x2799:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x2803:	je scanFormat$170	; 2: 116 26

scanFormat$161:	; arg_list = arg_list + 2
x2805:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$162:	; £temporary1625 = arg_list - 2
x2809:	mov si, [bp + 8]	; 3: -117 118 8
x2812:	sub si, 2	; 3: -125 -18 2

scanFormat$163:	; £temporary1626 = int_to_int £temporary1625 (Signed_Int -> Pointer)

scanFormat$164:	; £temporary1627 -> £temporary1626 = *£temporary1626

scanFormat$165:	; unsignedShortPtr = £temporary1627 -> £temporary1626
x2815:	mov ax, [si]	; 2: -117 4
x2817:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$166:	; £temporary1628 -> unsignedShortPtr = *unsignedShortPtr
x2820:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$167:	; £temporary1629 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x2823:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$168:	; £temporary1628 -> unsignedShortPtr = £temporary1629
x2827:	mov [si], al	; 2: -120 4

scanFormat$169:	; goto 187
x2829:	jmp scanFormat$187	; 2: -21 57

scanFormat$170:	; if longIntOrDouble != 0 goto 180
x2831:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x2835:	jne scanFormat$180	; 2: 117 26

scanFormat$171:	; arg_list = arg_list + 2
x2837:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$172:	; £temporary1633 = arg_list - 2
x2841:	mov si, [bp + 8]	; 3: -117 118 8
x2844:	sub si, 2	; 3: -125 -18 2

scanFormat$173:	; £temporary1634 = int_to_int £temporary1633 (Signed_Int -> Pointer)

scanFormat$174:	; £temporary1635 -> £temporary1634 = *£temporary1634

scanFormat$175:	; unsignedIntPtr = £temporary1635 -> £temporary1634
x2847:	mov ax, [si]	; 2: -117 4
x2849:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$176:	; £temporary1636 -> unsignedIntPtr = *unsignedIntPtr
x2852:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$177:	; £temporary1637 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x2855:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$178:	; £temporary1636 -> unsignedIntPtr = £temporary1637
x2859:	mov [si], ax	; 2: -119 4

scanFormat$179:	; goto 187
x2861:	jmp scanFormat$187	; 2: -21 25

scanFormat$180:	; arg_list = arg_list + 2
x2863:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$181:	; £temporary1639 = arg_list - 2
x2867:	mov si, [bp + 8]	; 3: -117 118 8
x2870:	sub si, 2	; 3: -125 -18 2

scanFormat$182:	; £temporary1640 = int_to_int £temporary1639 (Signed_Int -> Pointer)

scanFormat$183:	; £temporary1641 -> £temporary1640 = *£temporary1640

scanFormat$184:	; unsignedLongPtr = £temporary1641 -> £temporary1640
x2873:	mov ax, [si]	; 2: -117 4
x2875:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$185:	; £temporary1642 -> unsignedLongPtr = *unsignedLongPtr
x2878:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$186:	; £temporary1642 -> unsignedLongPtr = unsignedLongValue
x2881:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x2885:	mov [si], eax	; 3: 102 -119 4

scanFormat$187:	; percent = 0
x2888:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$188:	; goto 324
x2893:	jmp scanFormat$324	; 3: -23 -15 1

scanFormat$189:	; call header integral zero 0 stack zero 0

scanFormat$190:	; parameter 0, offset 6
x2896:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

scanFormat$191:	; call function noellipse-noellipse scanUnsignedLongInt
x2901:	mov word [bp + 57], scanFormat$192	; 5: -57 70 57 99 11
x2906:	mov [bp + 59], bp	; 3: -119 110 59
x2909:	add bp, 57	; 3: -125 -59 57
x2912:	jmp scanUnsignedLongInt	; 3: -23 -10 13

scanFormat$192:	; post call

scanFormat$193:	; £temporary1644 = return_value

scanFormat$194:	; unsignedLongValue = £temporary1644
x2915:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$195:	; if star != 0 goto 223
x2919:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x2923:	jne scanFormat$223	; 2: 117 89

scanFormat$196:	; if shortInt == 0 goto 206
x2925:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x2929:	je scanFormat$206	; 2: 116 26

scanFormat$197:	; arg_list = arg_list + 2
x2931:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$198:	; £temporary1648 = arg_list - 2
x2935:	mov si, [bp + 8]	; 3: -117 118 8
x2938:	sub si, 2	; 3: -125 -18 2

scanFormat$199:	; £temporary1649 = int_to_int £temporary1648 (Signed_Int -> Pointer)

scanFormat$200:	; £temporary1650 -> £temporary1649 = *£temporary1649

scanFormat$201:	; unsignedShortPtr = £temporary1650 -> £temporary1649
x2941:	mov ax, [si]	; 2: -117 4
x2943:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$202:	; £temporary1651 -> unsignedShortPtr = *unsignedShortPtr
x2946:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$203:	; £temporary1652 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x2949:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$204:	; £temporary1651 -> unsignedShortPtr = £temporary1652
x2953:	mov [si], al	; 2: -120 4

scanFormat$205:	; goto 223
x2955:	jmp scanFormat$223	; 2: -21 57

scanFormat$206:	; if longIntOrDouble != 0 goto 216
x2957:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x2961:	jne scanFormat$216	; 2: 117 26

scanFormat$207:	; arg_list = arg_list + 2
x2963:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$208:	; £temporary1656 = arg_list - 2
x2967:	mov si, [bp + 8]	; 3: -117 118 8
x2970:	sub si, 2	; 3: -125 -18 2

scanFormat$209:	; £temporary1657 = int_to_int £temporary1656 (Signed_Int -> Pointer)

scanFormat$210:	; £temporary1658 -> £temporary1657 = *£temporary1657

scanFormat$211:	; unsignedIntPtr = £temporary1658 -> £temporary1657
x2973:	mov ax, [si]	; 2: -117 4
x2975:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$212:	; £temporary1659 -> unsignedIntPtr = *unsignedIntPtr
x2978:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$213:	; £temporary1660 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x2981:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$214:	; £temporary1659 -> unsignedIntPtr = £temporary1660
x2985:	mov [si], ax	; 2: -119 4

scanFormat$215:	; goto 223
x2987:	jmp scanFormat$223	; 2: -21 25

scanFormat$216:	; arg_list = arg_list + 2
x2989:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$217:	; £temporary1662 = arg_list - 2
x2993:	mov si, [bp + 8]	; 3: -117 118 8
x2996:	sub si, 2	; 3: -125 -18 2

scanFormat$218:	; £temporary1663 = int_to_int £temporary1662 (Signed_Int -> Pointer)

scanFormat$219:	; £temporary1664 -> £temporary1663 = *£temporary1663

scanFormat$220:	; unsignedLongPtr = £temporary1664 -> £temporary1663
x2999:	mov ax, [si]	; 2: -117 4
x3001:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$221:	; £temporary1665 -> unsignedLongPtr = *unsignedLongPtr
x3004:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$222:	; £temporary1665 -> unsignedLongPtr = unsignedLongValue
x3007:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x3011:	mov [si], eax	; 3: 102 -119 4

scanFormat$223:	; percent = 0
x3014:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$224:	; goto 324
x3019:	jmp scanFormat$324	; 3: -23 115 1

scanFormat$225:	; call header integral zero 0 stack zero 0

scanFormat$226:	; call function noellipse-noellipse scanLongDouble
x3022:	mov word [bp + 57], scanFormat$227	; 5: -57 70 57 -36 11
x3027:	mov [bp + 59], bp	; 3: -119 110 59
x3030:	add bp, 57	; 3: -125 -59 57
x3033:	jmp scanLongDouble	; 3: -23 -23 14

scanFormat$227:	; post call

scanFormat$228:	; £temporary1667 = return_value

scanFormat$229:	; pop float longDoubleValue
x3036:	fstp qword [bp + 47]	; 3: -35 94 47

scanFormat$230:	; if star != 0 goto 259
x3039:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x3043:	jne scanFormat$259	; 2: 117 85

scanFormat$231:	; if longIntOrDouble == 0 goto 241
x3045:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x3049:	je scanFormat$241	; 2: 116 25

scanFormat$232:	; arg_list = arg_list + 2
x3051:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$233:	; £temporary1671 = arg_list - 2
x3055:	mov si, [bp + 8]	; 3: -117 118 8
x3058:	sub si, 2	; 3: -125 -18 2

scanFormat$234:	; £temporary1672 = int_to_int £temporary1671 (Signed_Int -> Pointer)

scanFormat$235:	; £temporary1673 -> £temporary1672 = *£temporary1672

scanFormat$236:	; doublePtr = £temporary1673 -> £temporary1672
x3061:	mov ax, [si]	; 2: -117 4
x3063:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$237:	; £temporary1674 -> doublePtr = *doublePtr
x3066:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$238:	; push float longDoubleValue
x3069:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$239:	; pop float £temporary1674 -> doublePtr
x3072:	fstp qword [si]	; 2: -35 28

scanFormat$240:	; goto 259
x3074:	jmp scanFormat$259	; 2: -21 54

scanFormat$241:	; if longDouble == 0 goto 251
x3076:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x3080:	je scanFormat$251	; 2: 116 25

scanFormat$242:	; arg_list = arg_list + 2
x3082:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$243:	; £temporary1677 = arg_list - 2
x3086:	mov si, [bp + 8]	; 3: -117 118 8
x3089:	sub si, 2	; 3: -125 -18 2

scanFormat$244:	; £temporary1678 = int_to_int £temporary1677 (Signed_Int -> Pointer)

scanFormat$245:	; £temporary1679 -> £temporary1678 = *£temporary1678

scanFormat$246:	; longDoublePtr = £temporary1679 -> £temporary1678
x3092:	mov ax, [si]	; 2: -117 4
x3094:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$247:	; £temporary1680 -> longDoublePtr = *longDoublePtr
x3097:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$248:	; push float longDoubleValue
x3100:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$249:	; pop float £temporary1680 -> longDoublePtr
x3103:	fstp qword [si]	; 2: -35 28

scanFormat$250:	; goto 259
x3105:	jmp scanFormat$259	; 2: -21 23

scanFormat$251:	; arg_list = arg_list + 2
x3107:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$252:	; £temporary1682 = arg_list - 2
x3111:	mov si, [bp + 8]	; 3: -117 118 8
x3114:	sub si, 2	; 3: -125 -18 2

scanFormat$253:	; £temporary1683 = int_to_int £temporary1682 (Signed_Int -> Pointer)

scanFormat$254:	; £temporary1684 -> £temporary1683 = *£temporary1683

scanFormat$255:	; floatPtr = £temporary1684 -> £temporary1683
x3117:	mov ax, [si]	; 2: -117 4
x3119:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$256:	; £temporary1685 -> floatPtr = *floatPtr
x3122:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$257:	; push float longDoubleValue
x3125:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$258:	; pop float £temporary1685 -> floatPtr
x3128:	fstp dword [si]	; 2: -39 28

scanFormat$259:	; percent = 0
x3130:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$260:	; goto 324
x3135:	jmp scanFormat$324	; 3: -23 -1 0

scanFormat$261:	; not = 0
x3138:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

scanFormat$262:	; ++index
x3143:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$263:	; £temporary1691 = format + index
x3146:	mov si, [bp + 6]	; 3: -117 118 6
x3149:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$264:	; £temporary1690 -> £temporary1691 = *£temporary1691

scanFormat$265:	; if £temporary1690 -> £temporary1691 != 94 goto 268
x3152:	cmp byte [si], 94	; 3: -128 60 94
x3155:	jne scanFormat$268	; 2: 117 12

scanFormat$266:	; not = 1
x3157:	mov word [bp + 57], 1	; 5: -57 70 57 1 0

scanFormat$267:	; startIndex = index + 1
x3162:	mov ax, [bp + 31]	; 3: -117 70 31
x3165:	inc ax	; 1: 64
x3166:	mov [bp + 59], ax	; 3: -119 70 59

scanFormat$268:	; £temporary1695 = format + index
x3169:	mov si, [bp + 6]	; 3: -117 118 6
x3172:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$269:	; £temporary1694 -> £temporary1695 = *£temporary1695

scanFormat$270:	; if £temporary1694 -> £temporary1695 == 93 goto 273
x3175:	cmp byte [si], 93	; 3: -128 60 93
x3178:	je scanFormat$273	; 2: 116 5

scanFormat$271:	; ++index
x3180:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$272:	; goto 268
x3183:	jmp scanFormat$268	; 2: -21 -16

scanFormat$273:	; £temporary1699 = format + index
x3185:	mov si, [bp + 6]	; 3: -117 118 6
x3188:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$274:	; £temporary1698 -> £temporary1699 = *£temporary1699

scanFormat$275:	; £temporary1698 -> £temporary1699 = 0
x3191:	mov byte [si], 0	; 3: -58 4 0

scanFormat$276:	; if star != 0 goto 292
x3194:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x3198:	jne scanFormat$292	; 2: 117 53

scanFormat$277:	; arg_list = arg_list + 2
x3200:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$278:	; £temporary1703 = arg_list - 2
x3204:	mov si, [bp + 8]	; 3: -117 118 8
x3207:	sub si, 2	; 3: -125 -18 2

scanFormat$279:	; £temporary1704 = int_to_int £temporary1703 (Signed_Int -> Pointer)

scanFormat$280:	; £temporary1705 -> £temporary1704 = *£temporary1704

scanFormat$281:	; string = £temporary1705 -> £temporary1704
x3210:	mov ax, [si]	; 2: -117 4
x3212:	mov [bp + 61], ax	; 3: -119 70 61

scanFormat$282:	; call header integral zero 0 stack zero 0

scanFormat$283:	; parameter string, offset 6
x3215:	mov ax, [bp + 61]	; 3: -117 70 61
x3218:	mov [bp + 69], ax	; 3: -119 70 69

scanFormat$284:	; £temporary1707 = format + startIndex
x3221:	mov si, [bp + 6]	; 3: -117 118 6
x3224:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$285:	; £temporary1706 -> £temporary1707 = *£temporary1707

scanFormat$286:	; £temporary1708 = &£temporary1706 -> £temporary1707

scanFormat$287:	; parameter £temporary1708, offset 8
x3227:	mov [bp + 71], si	; 3: -119 118 71

scanFormat$288:	; parameter not, offset 10
x3230:	mov ax, [bp + 57]	; 3: -117 70 57
x3233:	mov [bp + 73], ax	; 3: -119 70 73

scanFormat$289:	; call function noellipse-noellipse scanPattern
x3236:	mov word [bp + 63], scanFormat$290	; 5: -57 70 63 -78 12
x3241:	mov [bp + 65], bp	; 3: -119 110 65
x3244:	add bp, 63	; 3: -125 -59 63
x3247:	jmp scanPattern	; 3: -23 97 20

scanFormat$290:	; post call

scanFormat$291:	; goto 324
x3250:	jmp scanFormat$324	; 3: -23 -116 0

scanFormat$292:	; call header integral zero 0 stack zero 0

scanFormat$293:	; parameter 0, offset 6
x3253:	mov word [bp + 67], 0	; 5: -57 70 67 0 0

scanFormat$294:	; £temporary1711 = format + startIndex
x3258:	mov si, [bp + 6]	; 3: -117 118 6
x3261:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$295:	; £temporary1710 -> £temporary1711 = *£temporary1711

scanFormat$296:	; £temporary1712 = &£temporary1710 -> £temporary1711

scanFormat$297:	; parameter £temporary1712, offset 8
x3264:	mov [bp + 69], si	; 3: -119 118 69

scanFormat$298:	; parameter not, offset 10
x3267:	mov ax, [bp + 57]	; 3: -117 70 57
x3270:	mov [bp + 71], ax	; 3: -119 70 71

scanFormat$299:	; call function noellipse-noellipse scanPattern
x3273:	mov word [bp + 61], scanFormat$300	; 5: -57 70 61 -41 12
x3278:	mov [bp + 63], bp	; 3: -119 110 63
x3281:	add bp, 61	; 3: -125 -59 61
x3284:	jmp scanPattern	; 3: -23 60 20

scanFormat$300:	; post call

scanFormat$301:	; goto 324
x3287:	jmp scanFormat$324	; 2: -21 104

scanFormat$302:	; arg_list = arg_list + 2
x3289:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$303:	; £temporary1715 = arg_list - 2
x3293:	mov si, [bp + 8]	; 3: -117 118 8
x3296:	sub si, 2	; 3: -125 -18 2

scanFormat$304:	; £temporary1716 = int_to_int £temporary1715 (Signed_Int -> Pointer)

scanFormat$305:	; £temporary1717 -> £temporary1716 = *£temporary1716

scanFormat$306:	; charsPtr = £temporary1717 -> £temporary1716
x3299:	mov ax, [si]	; 2: -117 4
x3301:	mov [bp + 35], ax	; 3: -119 70 35

scanFormat$307:	; £temporary1718 -> charsPtr = *charsPtr
x3304:	mov si, [bp + 35]	; 3: -117 118 35

scanFormat$308:	; £temporary1718 -> charsPtr = g_inChars
x3307:	mov ax, [g_inChars]	; 3: -95 88 13
x3310:	mov [si], ax	; 2: -119 4

scanFormat$309:	; percent = 0
x3312:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$310:	; goto 324
x3317:	jmp scanFormat$324	; 2: -21 74

scanFormat$311:	; call header integral zero 0 stack zero 0

scanFormat$312:	; parameter string_scanFormat20c203D202725c270A#, offset 6
x3319:	mov word [bp + 63], string_scanFormat20c203D202725c270A#	; 5: -57 70 63 90 13

scanFormat$313:	; £temporary1719 = int_to_int c (Signed_Char -> Signed_Int)
x3324:	mov al, [bp + 10]	; 3: -118 70 10
x3327:	and ax, 255	; 3: 37 -1 0
x3330:	cmp al, 0	; 2: 60 0
x3332:	jge scanFormat$314	; 2: 125 4
x3334:	neg al	; 2: -10 -40
x3336:	neg ax	; 2: -9 -40

scanFormat$314:	; parameter £temporary1719, offset 8
x3338:	mov [bp + 65], ax	; 3: -119 70 65

scanFormat$315:	; call function noellipse-ellipse printf, extra 0
x3341:	mov word [bp + 57], scanFormat$316	; 5: -57 70 57 32 13
x3346:	mov [bp + 59], bp	; 3: -119 110 59
x3349:	add bp, 57	; 3: -125 -59 57
x3352:	mov di, bp	; 2: -119 -17
x3354:	add di, 2	; 3: -125 -57 2
x3357:	jmp printf	; 3: -23 85 21

scanFormat$316:	; post call

scanFormat$317:	; goto 324
x3360:	jmp scanFormat$324	; 2: -21 31

scanFormat$318:	; if c != 37 goto 324
x3362:	cmp byte [bp + 10], 37	; 4: -128 126 10 37
x3366:	jne scanFormat$324	; 2: 117 25

scanFormat$319:	; percent = 1
x3368:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanFormat$320:	; shortInt = 0
x3373:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$321:	; longIntOrDouble = 0
x3378:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$322:	; longDouble = 0
x3383:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$323:	; star = 0
x3388:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$324:	; ++index
x3393:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$325:	; goto 8
x3396:	jmp scanFormat$8	; 3: -23 27 -5

scanFormat$326:	; return_value = g_inCount
x3399:	mov bx, [g_inCount]	; 4: -117 30 86 13

scanFormat$327:	; return
x3403:	mov ax, [bp]	; 3: -117 70 0
x3406:	mov di, [bp + 4]	; 3: -117 126 4
x3409:	mov bp, [bp + 2]	; 3: -117 110 2
x3412:	jmp ax	; 2: -1 -32

scanFormat$328:	; function end scanFormat

g_inCount:
x3414:	db 0, 0	; 2: 0 0

g_inChars:
x3416:	db 0, 0	; 2: 0 0

string_scanFormat20c203D202725c270A#:
x3418:	db "scanFormat c = ", 39, "%c", 39, 10, 0	; 21: 115 99 97 110 70 111 114 109 97 116 32 99 32 61 32 39 37 99 39 10 0

scanChar:	; c = 0
x3439:	mov byte [bp + 6], 0	; 4: -58 70 6 0

scanChar$1:	; case g_inStatus == 0 goto 5
x3443:	mov ax, [g_inStatus]	; 3: -95 52 8
x3446:	cmp ax, 0	; 3: -125 -8 0
x3449:	je scanChar$5	; 2: 116 7

scanChar$2:	; case g_inStatus == 1 goto 18
x3451:	cmp ax, 1	; 3: -125 -8 1
x3454:	je scanChar$18	; 2: 116 50

scanChar$3:	; case end g_inStatus

scanChar$4:	; goto 26
x3456:	jmp scanChar$26	; 2: -21 79

scanChar$5:	; £temporary1235 = int_to_int g_inDevice (Pointer -> Pointer)
x3458:	mov ax, [g_inDevice]	; 3: -95 54 8

scanChar$6:	; stream = £temporary1235
x3461:	mov [bp + 7], ax	; 3: -119 70 7

scanChar$7:	; £temporary1236 -> stream = *stream, offset 2
x3464:	mov si, [bp + 7]	; 3: -117 118 7

scanChar$8:	; handle = £temporary1236 -> stream
x3467:	mov ax, [si + 2]	; 3: -117 68 2
x3470:	mov [bp + 9], ax	; 3: -119 70 9

scanChar$9:	; ah = 63
x3473:	mov ah, 63	; 2: -76 63

scanChar$10:	; bx = handle
x3475:	mov bx, [bp + 9]	; 3: -117 94 9

scanChar$11:	; cx = 1
x3478:	mov cx, 1	; 3: -71 1 0

scanChar$12:	; £temporary1241 = &c
x3481:	mov dx, bp	; 2: -119 -22
x3483:	add dx, 6	; 3: -125 -62 6

scanChar$13:	; dx = £temporary1241

scanChar$14:	; interrupt 33
x3486:	int 33	; 2: -51 33

scanChar$15:	; ++g_inChars
x3488:	inc word [g_inChars]	; 4: -1 6 88 13

scanChar$16:	; return_value = c
x3492:	mov bl, [bp + 6]	; 3: -118 94 6

scanChar$17:	; return
x3495:	mov ax, [bp]	; 3: -117 70 0
x3498:	mov di, [bp + 4]	; 3: -117 126 4
x3501:	mov bp, [bp + 2]	; 3: -117 110 2
x3504:	jmp ax	; 2: -1 -32

scanChar$18:	; £temporary1243 = int_to_int g_inDevice (Pointer -> Pointer)
x3506:	mov ax, [g_inDevice]	; 3: -95 54 8

scanChar$19:	; inString = £temporary1243
x3509:	mov [bp + 11], ax	; 3: -119 70 11

scanChar$20:	; £temporary1244 = g_inChars
x3512:	mov ax, [g_inChars]	; 3: -95 88 13

scanChar$21:	; ++g_inChars
x3515:	inc word [g_inChars]	; 4: -1 6 88 13

scanChar$22:	; £temporary1246 = inString + £temporary1244
x3519:	mov si, [bp + 11]	; 3: -117 118 11
x3522:	add si, ax	; 2: 1 -58

scanChar$23:	; £temporary1245 -> £temporary1246 = *£temporary1246

scanChar$24:	; return_value = £temporary1245 -> £temporary1246
x3524:	mov bl, [si]	; 2: -118 28

scanChar$25:	; return
x3526:	mov ax, [bp]	; 3: -117 70 0
x3529:	mov di, [bp + 4]	; 3: -117 126 4
x3532:	mov bp, [bp + 2]	; 3: -117 110 2
x3535:	jmp ax	; 2: -1 -32

scanChar$26:	; return_value = 0
x3537:	mov bl, 0	; 2: -77 0

scanChar$27:	; return
x3539:	mov ax, [bp]	; 3: -117 70 0
x3542:	mov di, [bp + 4]	; 3: -117 126 4
x3545:	mov bp, [bp + 2]	; 3: -117 110 2
x3548:	jmp ax	; 2: -1 -32

scanChar$28:	; function end scanChar

scanString:	; index = 0
x3550:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanString$1:	; call header integral zero 0 stack zero 0

scanString$2:	; call function noellipse-noellipse scanChar
x3555:	mov word [bp + 12], scanString$3	; 5: -57 70 12 -15 13
x3560:	mov [bp + 14], bp	; 3: -119 110 14
x3563:	add bp, 12	; 3: -125 -59 12
x3566:	jmp scanChar	; 3: -23 126 -1

scanString$3:	; post call

scanString$4:	; £temporary1298 = return_value

scanString$5:	; input = £temporary1298
x3569:	mov [bp + 12], bl	; 3: -120 94 12

scanString$6:	; found = 0
x3572:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanString$7:	; call header integral zero 0 stack zero 0

scanString$8:	; £temporary1299 = int_to_int input (Signed_Char -> Signed_Int)
x3577:	mov al, [bp + 12]	; 3: -118 70 12
x3580:	and ax, 255	; 3: 37 -1 0
x3583:	cmp al, 0	; 2: 60 0
x3585:	jge scanString$9	; 2: 125 4
x3587:	neg al	; 2: -10 -40
x3589:	neg ax	; 2: -9 -40

scanString$9:	; parameter £temporary1299, offset 6
x3591:	mov [bp + 21], ax	; 3: -119 70 21

scanString$10:	; call function noellipse-noellipse isspace
x3594:	mov word [bp + 15], scanString$11	; 5: -57 70 15 24 14
x3599:	mov [bp + 17], bp	; 3: -119 110 17
x3602:	add bp, 15	; 3: -125 -59 15
x3605:	jmp isspace	; 3: -23 19 2

scanString$11:	; post call

scanString$12:	; £temporary1300 = return_value

scanString$13:	; if £temporary1300 == 0 goto 20
x3608:	cmp bx, 0	; 3: -125 -5 0
x3611:	je scanString$20	; 2: 116 19

scanString$14:	; call header integral zero 0 stack zero 0

scanString$15:	; call function noellipse-noellipse scanChar
x3613:	mov word [bp + 15], scanString$16	; 5: -57 70 15 43 14
x3618:	mov [bp + 17], bp	; 3: -119 110 17
x3621:	add bp, 15	; 3: -125 -59 15
x3624:	jmp scanChar	; 3: -23 68 -1

scanString$16:	; post call

scanString$17:	; £temporary1301 = return_value

scanString$18:	; input = £temporary1301
x3627:	mov [bp + 12], bl	; 3: -120 94 12

scanString$19:	; goto 7
x3630:	jmp scanString$7	; 2: -21 -55

scanString$20:	; if string == 0 goto 82
x3632:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x3636:	je scanString$82	; 4: 15 -124 11 1

scanString$21:	; if precision != 0 goto 50
x3640:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x3644:	jne scanString$50	; 2: 117 121

scanString$22:	; call header integral zero 0 stack zero 0

scanString$23:	; £temporary1305 = int_to_int input (Signed_Char -> Signed_Int)
x3646:	mov al, [bp + 12]	; 3: -118 70 12
x3649:	and ax, 255	; 3: 37 -1 0
x3652:	cmp al, 0	; 2: 60 0
x3654:	jge scanString$24	; 2: 125 4
x3656:	neg al	; 2: -10 -40
x3658:	neg ax	; 2: -9 -40

scanString$24:	; parameter £temporary1305, offset 6
x3660:	mov [bp + 21], ax	; 3: -119 70 21

scanString$25:	; call function noellipse-noellipse isspace
x3663:	mov word [bp + 15], scanString$26	; 5: -57 70 15 93 14
x3668:	mov [bp + 17], bp	; 3: -119 110 17
x3671:	add bp, 15	; 3: -125 -59 15
x3674:	jmp isspace	; 3: -23 -50 1

scanString$26:	; post call

scanString$27:	; £temporary1306 = return_value

scanString$28:	; if £temporary1306 != 0 goto 45
x3677:	cmp bx, 0	; 3: -125 -5 0
x3680:	jne scanString$45	; 2: 117 69

scanString$29:	; £temporary1309 = int_to_int input (Signed_Char -> Signed_Int)
x3682:	mov al, [bp + 12]	; 3: -118 70 12
x3685:	and ax, 255	; 3: 37 -1 0
x3688:	cmp al, 0	; 2: 60 0
x3690:	jge scanString$30	; 2: 125 4
x3692:	neg al	; 2: -10 -40
x3694:	neg ax	; 2: -9 -40

scanString$30:	; if £temporary1309 == -1 goto 45
x3696:	cmp ax, -1	; 3: -125 -8 -1
x3699:	je scanString$45	; 2: 116 50

scanString$31:	; if input == 10 goto 45
x3701:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x3705:	je scanString$45	; 2: 116 44

scanString$32:	; £temporary1314 = index
x3707:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$33:	; ++index
x3710:	inc word [bp + 10]	; 3: -1 70 10

scanString$34:	; £temporary1316 = string + £temporary1314
x3713:	mov si, [bp + 6]	; 3: -117 118 6
x3716:	add si, ax	; 2: 1 -58

scanString$35:	; £temporary1315 -> £temporary1316 = *£temporary1316

scanString$36:	; £temporary1315 -> £temporary1316 = input
x3718:	mov al, [bp + 12]	; 3: -118 70 12
x3721:	mov [si], al	; 2: -120 4

scanString$37:	; call header integral zero 0 stack zero 0

scanString$38:	; call function noellipse-noellipse scanChar
x3723:	mov word [bp + 15], scanString$39	; 5: -57 70 15 -103 14
x3728:	mov [bp + 17], bp	; 3: -119 110 17
x3731:	add bp, 15	; 3: -125 -59 15
x3734:	jmp scanChar	; 3: -23 -42 -2

scanString$39:	; post call

scanString$40:	; £temporary1317 = return_value

scanString$41:	; input = £temporary1317
x3737:	mov [bp + 12], bl	; 3: -120 94 12

scanString$42:	; found = 1
x3740:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$43:	; ++g_inChars
x3745:	inc word [g_inChars]	; 4: -1 6 88 13

scanString$44:	; goto 22
x3749:	jmp scanString$22	; 2: -21 -105

scanString$45:	; £temporary1320 = string + index
x3751:	mov si, [bp + 6]	; 3: -117 118 6
x3754:	add si, [bp + 10]	; 3: 3 118 10

scanString$46:	; £temporary1319 -> £temporary1320 = *£temporary1320

scanString$47:	; £temporary1319 -> £temporary1320 = 0
x3757:	mov byte [si], 0	; 3: -58 4 0

scanString$48:	; ++g_inChars
x3760:	inc word [g_inChars]	; 4: -1 6 88 13

scanString$49:	; goto 126
x3764:	jmp scanString$126	; 3: -23 95 1

scanString$50:	; £temporary1322 = precision
x3767:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$51:	; --precision
x3770:	dec word [bp + 8]	; 3: -1 78 8

scanString$52:	; if £temporary1322 <= 0 goto 76
x3773:	cmp ax, 0	; 3: -125 -8 0
x3776:	jle scanString$76	; 2: 126 105

scanString$53:	; call header integral zero 0 stack zero 0

scanString$54:	; £temporary1324 = int_to_int input (Signed_Char -> Signed_Int)
x3778:	mov al, [bp + 12]	; 3: -118 70 12
x3781:	and ax, 255	; 3: 37 -1 0
x3784:	cmp al, 0	; 2: 60 0
x3786:	jge scanString$55	; 2: 125 4
x3788:	neg al	; 2: -10 -40
x3790:	neg ax	; 2: -9 -40

scanString$55:	; parameter £temporary1324, offset 6
x3792:	mov [bp + 21], ax	; 3: -119 70 21

scanString$56:	; call function noellipse-noellipse isspace
x3795:	mov word [bp + 15], scanString$57	; 5: -57 70 15 -31 14
x3800:	mov [bp + 17], bp	; 3: -119 110 17
x3803:	add bp, 15	; 3: -125 -59 15
x3806:	jmp isspace	; 3: -23 74 1

scanString$57:	; post call

scanString$58:	; £temporary1325 = return_value

scanString$59:	; if £temporary1325 != 0 goto 76
x3809:	cmp bx, 0	; 3: -125 -5 0
x3812:	jne scanString$76	; 2: 117 69

scanString$60:	; £temporary1328 = int_to_int input (Signed_Char -> Signed_Int)
x3814:	mov al, [bp + 12]	; 3: -118 70 12
x3817:	and ax, 255	; 3: 37 -1 0
x3820:	cmp al, 0	; 2: 60 0
x3822:	jge scanString$61	; 2: 125 4
x3824:	neg al	; 2: -10 -40
x3826:	neg ax	; 2: -9 -40

scanString$61:	; if £temporary1328 == -1 goto 76
x3828:	cmp ax, -1	; 3: -125 -8 -1
x3831:	je scanString$76	; 2: 116 50

scanString$62:	; if input == 10 goto 76
x3833:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x3837:	je scanString$76	; 2: 116 44

scanString$63:	; £temporary1334 = index
x3839:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$64:	; ++index
x3842:	inc word [bp + 10]	; 3: -1 70 10

scanString$65:	; £temporary1336 = string + £temporary1334
x3845:	mov si, [bp + 6]	; 3: -117 118 6
x3848:	add si, ax	; 2: 1 -58

scanString$66:	; £temporary1335 -> £temporary1336 = *£temporary1336

scanString$67:	; £temporary1335 -> £temporary1336 = input
x3850:	mov al, [bp + 12]	; 3: -118 70 12
x3853:	mov [si], al	; 2: -120 4

scanString$68:	; call header integral zero 0 stack zero 0

scanString$69:	; call function noellipse-noellipse scanChar
x3855:	mov word [bp + 15], scanString$70	; 5: -57 70 15 29 15
x3860:	mov [bp + 17], bp	; 3: -119 110 17
x3863:	add bp, 15	; 3: -125 -59 15
x3866:	jmp scanChar	; 3: -23 82 -2

scanString$70:	; post call

scanString$71:	; £temporary1337 = return_value

scanString$72:	; input = £temporary1337
x3869:	mov [bp + 12], bl	; 3: -120 94 12

scanString$73:	; found = 1
x3872:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$74:	; ++g_inChars
x3877:	inc word [g_inChars]	; 4: -1 6 88 13

scanString$75:	; goto 50
x3881:	jmp scanString$50	; 2: -21 -116

scanString$76:	; if precision <= 0 goto 126
x3883:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x3887:	jle scanString$126	; 4: 15 -114 -29 0

scanString$77:	; £temporary1341 = string + index
x3891:	mov si, [bp + 6]	; 3: -117 118 6
x3894:	add si, [bp + 10]	; 3: 3 118 10

scanString$78:	; £temporary1340 -> £temporary1341 = *£temporary1341

scanString$79:	; £temporary1340 -> £temporary1341 = 0
x3897:	mov byte [si], 0	; 3: -58 4 0

scanString$80:	; ++g_inChars
x3900:	inc word [g_inChars]	; 4: -1 6 88 13

scanString$81:	; goto 126
x3904:	jmp scanString$126	; 3: -23 -45 0

scanString$82:	; if precision != 0 goto 103
x3907:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x3911:	jne scanString$103	; 2: 117 95

scanString$83:	; call header integral zero 0 stack zero 0

scanString$84:	; £temporary1344 = int_to_int input (Signed_Char -> Signed_Int)
x3913:	mov al, [bp + 12]	; 3: -118 70 12
x3916:	and ax, 255	; 3: 37 -1 0
x3919:	cmp al, 0	; 2: 60 0
x3921:	jge scanString$85	; 2: 125 4
x3923:	neg al	; 2: -10 -40
x3925:	neg ax	; 2: -9 -40

scanString$85:	; parameter £temporary1344, offset 6
x3927:	mov [bp + 21], ax	; 3: -119 70 21

scanString$86:	; call function noellipse-noellipse isspace
x3930:	mov word [bp + 15], scanString$87	; 5: -57 70 15 104 15
x3935:	mov [bp + 17], bp	; 3: -119 110 17
x3938:	add bp, 15	; 3: -125 -59 15
x3941:	jmp isspace	; 3: -23 -61 0

scanString$87:	; post call

scanString$88:	; £temporary1345 = return_value

scanString$89:	; if £temporary1345 != 0 goto 101
x3944:	cmp bx, 0	; 3: -125 -5 0
x3947:	jne scanString$101	; 2: 117 53

scanString$90:	; £temporary1348 = int_to_int input (Signed_Char -> Signed_Int)
x3949:	mov al, [bp + 12]	; 3: -118 70 12
x3952:	and ax, 255	; 3: 37 -1 0
x3955:	cmp al, 0	; 2: 60 0
x3957:	jge scanString$91	; 2: 125 4
x3959:	neg al	; 2: -10 -40
x3961:	neg ax	; 2: -9 -40

scanString$91:	; if £temporary1348 == -1 goto 101
x3963:	cmp ax, -1	; 3: -125 -8 -1
x3966:	je scanString$101	; 2: 116 34

scanString$92:	; if input == 10 goto 101
x3968:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x3972:	je scanString$101	; 2: 116 28

scanString$93:	; call header integral zero 0 stack zero 0

scanString$94:	; call function noellipse-noellipse scanChar
x3974:	mov word [bp + 15], scanString$95	; 5: -57 70 15 -108 15
x3979:	mov [bp + 17], bp	; 3: -119 110 17
x3982:	add bp, 15	; 3: -125 -59 15
x3985:	jmp scanChar	; 3: -23 -37 -3

scanString$95:	; post call

scanString$96:	; £temporary1353 = return_value

scanString$97:	; input = £temporary1353
x3988:	mov [bp + 12], bl	; 3: -120 94 12

scanString$98:	; found = 1
x3991:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$99:	; ++g_inChars
x3996:	inc word [g_inChars]	; 4: -1 6 88 13

scanString$100:	; goto 83
x4000:	jmp scanString$83	; 2: -21 -89

scanString$101:	; ++g_inChars
x4002:	inc word [g_inChars]	; 4: -1 6 88 13

scanString$102:	; goto 126
x4006:	jmp scanString$126	; 2: -21 110

scanString$103:	; £temporary1356 = precision
x4008:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$104:	; --precision
x4011:	dec word [bp + 8]	; 3: -1 78 8

scanString$105:	; if £temporary1356 <= 0 goto 124
x4014:	cmp ax, 0	; 3: -125 -8 0
x4017:	jle scanString$124	; 2: 126 89

scanString$106:	; call header integral zero 0 stack zero 0

scanString$107:	; £temporary1358 = int_to_int input (Signed_Char -> Signed_Int)
x4019:	mov al, [bp + 12]	; 3: -118 70 12
x4022:	and ax, 255	; 3: 37 -1 0
x4025:	cmp al, 0	; 2: 60 0
x4027:	jge scanString$108	; 2: 125 4
x4029:	neg al	; 2: -10 -40
x4031:	neg ax	; 2: -9 -40

scanString$108:	; parameter £temporary1358, offset 6
x4033:	mov [bp + 21], ax	; 3: -119 70 21

scanString$109:	; call function noellipse-noellipse isspace
x4036:	mov word [bp + 15], scanString$110	; 5: -57 70 15 -46 15
x4041:	mov [bp + 17], bp	; 3: -119 110 17
x4044:	add bp, 15	; 3: -125 -59 15
x4047:	nop	; 1: -112
x4048:	jmp isspace	; 2: -21 89

scanString$110:	; post call

scanString$111:	; £temporary1359 = return_value

scanString$112:	; if £temporary1359 != 0 goto 124
x4050:	cmp bx, 0	; 3: -125 -5 0
x4053:	jne scanString$124	; 2: 117 53

scanString$113:	; £temporary1362 = int_to_int input (Signed_Char -> Signed_Int)
x4055:	mov al, [bp + 12]	; 3: -118 70 12
x4058:	and ax, 255	; 3: 37 -1 0
x4061:	cmp al, 0	; 2: 60 0
x4063:	jge scanString$114	; 2: 125 4
x4065:	neg al	; 2: -10 -40
x4067:	neg ax	; 2: -9 -40

scanString$114:	; if £temporary1362 == -1 goto 124
x4069:	cmp ax, -1	; 3: -125 -8 -1
x4072:	je scanString$124	; 2: 116 34

scanString$115:	; if input == 10 goto 124
x4074:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x4078:	je scanString$124	; 2: 116 28

scanString$116:	; call header integral zero 0 stack zero 0

scanString$117:	; call function noellipse-noellipse scanChar
x4080:	mov word [bp + 15], scanString$118	; 5: -57 70 15 -2 15
x4085:	mov [bp + 17], bp	; 3: -119 110 17
x4088:	add bp, 15	; 3: -125 -59 15
x4091:	jmp scanChar	; 3: -23 113 -3

scanString$118:	; post call

scanString$119:	; £temporary1368 = return_value

scanString$120:	; input = £temporary1368
x4094:	mov [bp + 12], bl	; 3: -120 94 12

scanString$121:	; found = 1
x4097:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$122:	; ++g_inChars
x4102:	inc word [g_inChars]	; 4: -1 6 88 13

scanString$123:	; goto 103
x4106:	jmp scanString$103	; 2: -21 -100

scanString$124:	; if precision <= 0 goto 126
x4108:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4112:	jle scanString$126	; 2: 126 4

scanString$125:	; ++g_inChars
x4114:	inc word [g_inChars]	; 4: -1 6 88 13

scanString$126:	; if found == 0 goto 128
x4118:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x4122:	je scanString$128	; 2: 116 4

scanString$127:	; ++g_inCount
x4124:	inc word [g_inCount]	; 4: -1 6 86 13

scanString$128:	; return
x4128:	mov ax, [bp]	; 3: -117 70 0
x4131:	mov di, [bp + 4]	; 3: -117 126 4
x4134:	mov bp, [bp + 2]	; 3: -117 110 2
x4137:	jmp ax	; 2: -1 -32

scanString$129:	; function end scanString

isspace:	; if c == 32 goto 6
x4139:	cmp word [bp + 6], 32	; 4: -125 126 6 32
x4143:	je isspace$6	; 2: 116 30

isspace$1:	; if c == 12 goto 6
x4145:	cmp word [bp + 6], 12	; 4: -125 126 6 12
x4149:	je isspace$6	; 2: 116 24

isspace$2:	; if c == 10 goto 6
x4151:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x4155:	je isspace$6	; 2: 116 18

isspace$3:	; if c == 13 goto 6
x4157:	cmp word [bp + 6], 13	; 4: -125 126 6 13
x4161:	je isspace$6	; 2: 116 12

isspace$4:	; if c == 9 goto 6
x4163:	cmp word [bp + 6], 9	; 4: -125 126 6 9
x4167:	je isspace$6	; 2: 116 6

isspace$5:	; if c != 11 goto 8
x4169:	cmp word [bp + 6], 11	; 4: -125 126 6 11
x4173:	jne isspace$8	; 2: 117 5

isspace$6:	; £temporary462 = 1
x4175:	mov bx, 1	; 3: -69 1 0

isspace$7:	; goto 9
x4178:	jmp isspace$9	; 2: -21 3

isspace$8:	; £temporary462 = 0
x4180:	mov bx, 0	; 3: -69 0 0

isspace$9:	; return_value = £temporary462

isspace$10:	; return
x4183:	mov ax, [bp]	; 3: -117 70 0
x4186:	mov di, [bp + 4]	; 3: -117 126 4
x4189:	mov bp, [bp + 2]	; 3: -117 110 2
x4192:	jmp ax	; 2: -1 -32

isspace$11:	; function end isspace

scanLongInt:	; longValue = 0
x4194:	mov dword [bp + 8], 0	; 8: 102 -57 70 8 0 0 0 0

scanLongInt$1:	; minus = 0
x4202:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanLongInt$2:	; found = 0
x4207:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

scanLongInt$3:	; call header integral zero 0 stack zero 0

scanLongInt$4:	; call function noellipse-noellipse scanChar
x4212:	mov word [bp + 16], scanLongInt$5	; 5: -57 70 16 -126 16
x4217:	mov [bp + 18], bp	; 3: -119 110 18
x4220:	add bp, 16	; 3: -125 -59 16
x4223:	jmp scanChar	; 3: -23 -19 -4

scanLongInt$5:	; post call

scanLongInt$6:	; £temporary1431 = return_value

scanLongInt$7:	; input = £temporary1431
x4226:	mov [bp + 16], bl	; 3: -120 94 16

scanLongInt$8:	; call header integral zero 0 stack zero 0

scanLongInt$9:	; £temporary1432 = int_to_int input (Signed_Char -> Signed_Int)
x4229:	mov al, [bp + 16]	; 3: -118 70 16
x4232:	and ax, 255	; 3: 37 -1 0
x4235:	cmp al, 0	; 2: 60 0
x4237:	jge scanLongInt$10	; 2: 125 4
x4239:	neg al	; 2: -10 -40
x4241:	neg ax	; 2: -9 -40

scanLongInt$10:	; parameter £temporary1432, offset 6
x4243:	mov [bp + 23], ax	; 3: -119 70 23

scanLongInt$11:	; call function noellipse-noellipse isspace
x4246:	mov word [bp + 17], scanLongInt$12	; 5: -57 70 17 -92 16
x4251:	mov [bp + 19], bp	; 3: -119 110 19
x4254:	add bp, 17	; 3: -125 -59 17
x4257:	nop	; 1: -112
x4258:	jmp isspace	; 2: -21 -121

scanLongInt$12:	; post call

scanLongInt$13:	; £temporary1433 = return_value

scanLongInt$14:	; if £temporary1433 == 0 goto 21
x4260:	cmp bx, 0	; 3: -125 -5 0
x4263:	je scanLongInt$21	; 2: 116 19

scanLongInt$15:	; call header integral zero 0 stack zero 0

scanLongInt$16:	; call function noellipse-noellipse scanChar
x4265:	mov word [bp + 17], scanLongInt$17	; 5: -57 70 17 -73 16
x4270:	mov [bp + 19], bp	; 3: -119 110 19
x4273:	add bp, 17	; 3: -125 -59 17
x4276:	jmp scanChar	; 3: -23 -72 -4

scanLongInt$17:	; post call

scanLongInt$18:	; £temporary1434 = return_value

scanLongInt$19:	; input = £temporary1434
x4279:	mov [bp + 16], bl	; 3: -120 94 16

scanLongInt$20:	; goto 8
x4282:	jmp scanLongInt$8	; 2: -21 -55

scanLongInt$21:	; if input != 43 goto 28
x4284:	cmp byte [bp + 16], 43	; 4: -128 126 16 43
x4288:	jne scanLongInt$28	; 2: 117 19

scanLongInt$22:	; call header integral zero 0 stack zero 0

scanLongInt$23:	; call function noellipse-noellipse scanChar
x4290:	mov word [bp + 17], scanLongInt$24	; 5: -57 70 17 -48 16
x4295:	mov [bp + 19], bp	; 3: -119 110 19
x4298:	add bp, 17	; 3: -125 -59 17
x4301:	jmp scanChar	; 3: -23 -97 -4

scanLongInt$24:	; post call

scanLongInt$25:	; £temporary1437 = return_value

scanLongInt$26:	; input = £temporary1437
x4304:	mov [bp + 16], bl	; 3: -120 94 16

scanLongInt$27:	; goto 35
x4307:	jmp scanLongInt$35	; 2: -21 28

scanLongInt$28:	; if input != 45 goto 35
x4309:	cmp byte [bp + 16], 45	; 4: -128 126 16 45
x4313:	jne scanLongInt$35	; 2: 117 22

scanLongInt$29:	; minus = 1
x4315:	mov word [bp + 12], 1	; 5: -57 70 12 1 0

scanLongInt$30:	; call header integral zero 0 stack zero 0

scanLongInt$31:	; call function noellipse-noellipse scanChar
x4320:	mov word [bp + 17], scanLongInt$32	; 5: -57 70 17 -18 16
x4325:	mov [bp + 19], bp	; 3: -119 110 19
x4328:	add bp, 17	; 3: -125 -59 17
x4331:	jmp scanChar	; 3: -23 -127 -4

scanLongInt$32:	; post call

scanLongInt$33:	; £temporary1439 = return_value

scanLongInt$34:	; input = £temporary1439
x4334:	mov [bp + 16], bl	; 3: -120 94 16

scanLongInt$35:	; if base != 0 goto 59
x4337:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x4341:	jne scanLongInt$59	; 2: 117 95

scanLongInt$36:	; if input != 48 goto 58
x4343:	cmp byte [bp + 16], 48	; 4: -128 126 16 48
x4347:	jne scanLongInt$58	; 2: 117 84

scanLongInt$37:	; call header integral zero 0 stack zero 0

scanLongInt$38:	; call function noellipse-noellipse scanChar
x4349:	mov word [bp + 17], scanLongInt$39	; 5: -57 70 17 11 17
x4354:	mov [bp + 19], bp	; 3: -119 110 19
x4357:	add bp, 17	; 3: -125 -59 17
x4360:	jmp scanChar	; 3: -23 100 -4

scanLongInt$39:	; post call

scanLongInt$40:	; £temporary1442 = return_value

scanLongInt$41:	; input = £temporary1442
x4363:	mov [bp + 16], bl	; 3: -120 94 16

scanLongInt$42:	; call header integral zero 0 stack zero 0

scanLongInt$43:	; £temporary1443 = int_to_int input (Signed_Char -> Signed_Int)
x4366:	mov al, [bp + 16]	; 3: -118 70 16
x4369:	and ax, 255	; 3: 37 -1 0
x4372:	cmp al, 0	; 2: 60 0
x4374:	jge scanLongInt$44	; 2: 125 4
x4376:	neg al	; 2: -10 -40
x4378:	neg ax	; 2: -9 -40

scanLongInt$44:	; parameter £temporary1443, offset 6
x4380:	mov [bp + 23], ax	; 3: -119 70 23

scanLongInt$45:	; call function noellipse-noellipse tolower
x4383:	mov word [bp + 17], scanLongInt$46	; 5: -57 70 17 45 17
x4388:	mov [bp + 19], bp	; 3: -119 110 19
x4391:	add bp, 17	; 3: -125 -59 17
x4394:	jmp tolower	; 3: -23 -22 0

scanLongInt$46:	; post call

scanLongInt$47:	; £temporary1444 = return_value

scanLongInt$48:	; if £temporary1444 != 120 goto 56
x4397:	cmp bx, 120	; 3: -125 -5 120
x4400:	jne scanLongInt$56	; 2: 117 24

scanLongInt$49:	; base = 16
x4402:	mov word [bp + 6], 16	; 5: -57 70 6 16 0

scanLongInt$50:	; call header integral zero 0 stack zero 0

scanLongInt$51:	; call function noellipse-noellipse scanChar
x4407:	mov word [bp + 17], scanLongInt$52	; 5: -57 70 17 69 17
x4412:	mov [bp + 19], bp	; 3: -119 110 19
x4415:	add bp, 17	; 3: -125 -59 17
x4418:	jmp scanChar	; 3: -23 42 -4

scanLongInt$52:	; post call

scanLongInt$53:	; £temporary1446 = return_value

scanLongInt$54:	; input = £temporary1446
x4421:	mov [bp + 16], bl	; 3: -120 94 16

scanLongInt$55:	; goto 59
x4424:	jmp scanLongInt$59	; 2: -21 12

scanLongInt$56:	; base = 8
x4426:	mov word [bp + 6], 8	; 5: -57 70 6 8 0

scanLongInt$57:	; goto 59
x4431:	jmp scanLongInt$59	; 2: -21 5

scanLongInt$58:	; base = 10
x4433:	mov word [bp + 6], 10	; 5: -57 70 6 10 0

scanLongInt$59:	; call header integral zero 0 stack zero 0

scanLongInt$60:	; parameter input, offset 6
x4438:	mov al, [bp + 16]	; 3: -118 70 16
x4441:	mov [bp + 23], al	; 3: -120 70 23

scanLongInt$61:	; parameter base, offset 7
x4444:	mov ax, [bp + 6]	; 3: -117 70 6
x4447:	mov [bp + 24], ax	; 3: -119 70 24

scanLongInt$62:	; call function noellipse-noellipse isDigitInBase
x4450:	mov word [bp + 17], scanLongInt$63	; 5: -57 70 17 112 17
x4455:	mov [bp + 19], bp	; 3: -119 110 19
x4458:	add bp, 17	; 3: -125 -59 17
x4461:	jmp @24$isDigitInBase	; 3: -23 69 5

scanLongInt$63:	; post call

scanLongInt$64:	; £temporary1447 = return_value

scanLongInt$65:	; if £temporary1447 == 0 goto 82
x4464:	cmp bx, 0	; 3: -125 -5 0
x4467:	je scanLongInt$82	; 2: 116 100

scanLongInt$66:	; £temporary1448 = int_to_int base (Signed_Int -> Signed_Long_Int)
x4469:	mov bx, [bp + 6]	; 3: -117 94 6
x4472:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x4479:	cmp bx, 0	; 3: -125 -5 0
x4482:	jge scanLongInt$67	; 2: 125 5
x4484:	neg bx	; 2: -9 -37
x4486:	neg ebx	; 3: 102 -9 -37

scanLongInt$67:	; longValue = longValue * £temporary1448
x4489:	mov eax, [bp + 8]	; 4: 102 -117 70 8
x4493:	xor edx, edx	; 3: 102 49 -46
x4496:	imul ebx	; 3: 102 -9 -21
x4499:	mov [bp + 8], eax	; 4: 102 -119 70 8

scanLongInt$68:	; call header integral zero 0 stack zero 0

scanLongInt$69:	; parameter input, offset 6
x4503:	mov al, [bp + 16]	; 3: -118 70 16
x4506:	mov [bp + 23], al	; 3: -120 70 23

scanLongInt$70:	; call function noellipse-noellipse digitToValue
x4509:	mov word [bp + 17], scanLongInt$71	; 5: -57 70 17 -85 17
x4514:	mov [bp + 19], bp	; 3: -119 110 19
x4517:	add bp, 17	; 3: -125 -59 17
x4520:	jmp @25$digitToValue	; 3: -23 -80 6

scanLongInt$71:	; post call

scanLongInt$72:	; £temporary1450 = return_value

scanLongInt$73:	; £temporary1451 = int_to_int £temporary1450 (Signed_Int -> Signed_Long_Int)
x4523:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x4530:	cmp bx, 0	; 3: -125 -5 0
x4533:	jge scanLongInt$74	; 2: 125 5
x4535:	neg bx	; 2: -9 -37
x4537:	neg ebx	; 3: 102 -9 -37

scanLongInt$74:	; longValue = longValue + £temporary1451
x4540:	add [bp + 8], ebx	; 4: 102 1 94 8

scanLongInt$75:	; call header integral zero 0 stack zero 0

scanLongInt$76:	; call function noellipse-noellipse scanChar
x4544:	mov word [bp + 17], scanLongInt$77	; 5: -57 70 17 -50 17
x4549:	mov [bp + 19], bp	; 3: -119 110 19
x4552:	add bp, 17	; 3: -125 -59 17
x4555:	jmp scanChar	; 3: -23 -95 -5

scanLongInt$77:	; post call

scanLongInt$78:	; £temporary1453 = return_value

scanLongInt$79:	; input = £temporary1453
x4558:	mov [bp + 16], bl	; 3: -120 94 16

scanLongInt$80:	; found = 1
x4561:	mov word [bp + 14], 1	; 5: -57 70 14 1 0

scanLongInt$81:	; goto 59
x4566:	jmp scanLongInt$59	; 3: -23 125 -1

scanLongInt$82:	; if minus == 0 goto 85
x4569:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x4573:	je scanLongInt$85	; 2: 116 11

scanLongInt$83:	; £temporary1455 = -longValue
x4575:	mov eax, [bp + 8]	; 4: 102 -117 70 8
x4579:	neg eax	; 3: 102 -9 -40

scanLongInt$84:	; longValue = £temporary1455
x4582:	mov [bp + 8], eax	; 4: 102 -119 70 8

scanLongInt$85:	; if found == 0 goto 87
x4586:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x4590:	je scanLongInt$87	; 2: 116 4

scanLongInt$86:	; ++g_inCount
x4592:	inc word [g_inCount]	; 4: -1 6 86 13

scanLongInt$87:	; call header integral zero 0 stack zero 0

scanLongInt$88:	; parameter input, offset 6
x4596:	mov al, [bp + 16]	; 3: -118 70 16
x4599:	mov [bp + 23], al	; 3: -120 70 23

scanLongInt$89:	; call function noellipse-noellipse unscanChar
x4602:	mov word [bp + 17], scanLongInt$90	; 5: -57 70 17 8 18
x4607:	mov [bp + 19], bp	; 3: -119 110 19
x4610:	add bp, 17	; 3: -125 -59 17
x4613:	jmp unscanChar	; 3: -23 45 7

scanLongInt$90:	; post call

scanLongInt$91:	; return_value = longValue
x4616:	mov ebx, [bp + 8]	; 4: 102 -117 94 8

scanLongInt$92:	; return
x4620:	mov ax, [bp]	; 3: -117 70 0
x4623:	mov di, [bp + 4]	; 3: -117 126 4
x4626:	mov bp, [bp + 2]	; 3: -117 110 2
x4629:	jmp ax	; 2: -1 -32

scanLongInt$93:	; function end scanLongInt

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x4631:	mov ax, [bp + 6]	; 3: -117 70 6
x4634:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x4637:	mov word [bp + 8], tolower$3	; 5: -57 70 8 43 18
x4642:	mov [bp + 10], bp	; 3: -119 110 10
x4645:	add bp, 8	; 3: -125 -59 8
x4648:	jmp isupper	; 3: -23 -115 0

tolower$3:	; post call

tolower$4:	; £temporary463 = return_value

tolower$5:	; if £temporary463 == 0 goto 31
x4651:	cmp bx, 0	; 3: -125 -5 0
x4654:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x4656:	mov word [bp + 8], tolower$8	; 5: -57 70 8 62 18
x4661:	mov [bp + 10], bp	; 3: -119 110 10
x4664:	add bp, 8	; 3: -125 -59 8
x4667:	jmp localeconv	; 3: -23 -27 0

tolower$8:	; post call

tolower$9:	; £temporary464 = return_value

tolower$10:	; localeConvPtr = £temporary464
x4670:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x4673:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4677:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary466 -> localeConvPtr = *localeConvPtr, offset 12
x4679:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary466 -> localeConvPtr
x4682:	mov ax, [si + 12]	; 3: -117 68 12
x4685:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary467 -> localeConvPtr = *localeConvPtr, offset 14
x4688:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary467 -> localeConvPtr
x4691:	mov ax, [si + 14]	; 3: -117 68 14
x4694:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x4697:	mov ax, [bp + 12]	; 3: -117 70 12
x4700:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x4703:	mov ax, [bp + 6]	; 3: -117 70 6
x4706:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x4709:	mov word [bp + 14], tolower$20	; 5: -57 70 14 115 18
x4714:	mov [bp + 16], bp	; 3: -119 110 16
x4717:	add bp, 14	; 3: -125 -59 14
x4720:	jmp strchr	; 3: -23 -14 3

tolower$20:	; post call

tolower$21:	; £temporary468 = return_value

tolower$22:	; index = £temporary468 - upperCase
x4723:	sub bx, [bp + 12]	; 3: 43 94 12
x4726:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary471 = lowerCase + index
x4729:	mov si, [bp + 10]	; 3: -117 118 10
x4732:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary470 -> £temporary471 = *£temporary471

tolower$25:	; £temporary472 = int_to_int £temporary470 -> £temporary471 (Signed_Char -> Signed_Int)
x4735:	mov bl, [si]	; 2: -118 28
x4737:	and bx, 255	; 4: -127 -29 -1 0
x4741:	cmp bl, 0	; 3: -128 -5 0
x4744:	jge tolower$26	; 2: 125 4
x4746:	neg bl	; 2: -10 -37
x4748:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary472

tolower$27:	; return
x4750:	mov ax, [bp]	; 3: -117 70 0
x4753:	mov di, [bp + 4]	; 3: -117 126 4
x4756:	mov bp, [bp + 2]	; 3: -117 110 2
x4759:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary473 = c + 32
x4761:	mov bx, [bp + 6]	; 3: -117 94 6
x4764:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary473

tolower$30:	; return
x4767:	mov ax, [bp]	; 3: -117 70 0
x4770:	mov di, [bp + 4]	; 3: -117 126 4
x4773:	mov bp, [bp + 2]	; 3: -117 110 2
x4776:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x4778:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x4781:	mov ax, [bp]	; 3: -117 70 0
x4784:	mov di, [bp + 4]	; 3: -117 126 4
x4787:	mov bp, [bp + 2]	; 3: -117 110 2
x4790:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x4792:	mov word [bp + 8], isupper$2	; 5: -57 70 8 -58 18
x4797:	mov [bp + 10], bp	; 3: -119 110 10
x4800:	add bp, 8	; 3: -125 -59 8
x4803:	nop	; 1: -112
x4804:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary383 = return_value

isupper$4:	; localeConvPtr = £temporary383
x4806:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x4809:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4813:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary385 -> localeConvPtr = *localeConvPtr, offset 14
x4815:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary385 -> localeConvPtr, offset 6
x4818:	mov ax, [si + 14]	; 3: -117 68 14
x4821:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x4824:	mov ax, [bp + 6]	; 3: -117 70 6
x4827:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x4830:	mov word [bp + 10], isupper$11	; 5: -57 70 10 -20 18
x4835:	mov [bp + 12], bp	; 3: -119 110 12
x4838:	add bp, 10	; 3: -125 -59 10
x4841:	jmp strchr	; 3: -23 121 3

isupper$11:	; post call

isupper$12:	; £temporary386 = return_value

isupper$13:	; if £temporary386 == 0 goto 16
x4844:	cmp bx, 0	; 3: -125 -5 0
x4847:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary388 = 1
x4849:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x4852:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary388 = 0
x4854:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary388

isupper$18:	; return
x4857:	mov ax, [bp]	; 3: -117 70 0
x4860:	mov di, [bp + 4]	; 3: -117 126 4
x4863:	mov bp, [bp + 2]	; 3: -117 110 2
x4866:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x4868:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x4872:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x4874:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x4878:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary392 = 1
x4880:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x4883:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary392 = 0
x4885:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary392

isupper$25:	; return
x4888:	mov ax, [bp]	; 3: -117 70 0
x4891:	mov di, [bp + 4]	; 3: -117 126 4
x4894:	mov bp, [bp + 2]	; 3: -117 110 2
x4897:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x4899:	cmp word [@16$g_currStructPtr], 0	; 5: -125 62 65 19 0
x4904:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary516 -> g_currStructPtr = *g_currStructPtr, offset 2
x4906:	mov si, [@16$g_currStructPtr]	; 4: -117 54 65 19

localeconv$2:	; £temporary520 = £temporary516 -> g_currStructPtr
x4910:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x4913:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary520 = 0
x4915:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary520

localeconv$6:	; return
x4918:	mov ax, [bp]	; 3: -117 70 0
x4921:	mov di, [bp + 4]	; 3: -117 126 4
x4924:	mov bp, [bp + 2]	; 3: -117 110 2
x4927:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@16$g_currStructPtr:
x4929:	dw @14$sArray	; 2: 67 19

@14$sArray:
x4931:	dw string_# ; 2: 79 19
x4933:	dw @13$en_US_utf8	; 2: 80 19
x4935:	dw string_C# ; 2: 96 22
x4937:	dw @13$en_US_utf8	; 2: 80 19
x4939:	dw string_US# ; 2: 98 22
x4941:	dw @13$en_US_utf8	; 2: 80 19

string_#:
x4943:	db 0	; 1: 0

@13$en_US_utf8:
x4944:	dw -5	; 2: -5 -1
x4946:	dw -4	; 2: -4 -1
x4948:	dw @9$enShortDayList ; 2: 98 19
x4950:	dw @10$enLongDayList ; 2: -116 19
x4952:	dw @11$enShortMonthList ; 2: -45 19
x4954:	dw @12$enLongMonthList ; 2: 27 20
x4956:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -123 20
x4958:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -96 20
x4960:	dw enMessageList ; 2: -69 20

@9$enShortDayList:
x4962:	dw string_Sun# ; 2: 112 19
x4964:	dw string_Mon# ; 2: 116 19
x4966:	dw string_Tue# ; 2: 120 19
x4968:	dw string_Wed# ; 2: 124 19
x4970:	dw string_Thu# ; 2: -128 19
x4972:	dw string_Fri# ; 2: -124 19
x4974:	dw string_Sat# ; 2: -120 19

string_Sun#:
x4976:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x4980:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x4984:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x4988:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x4992:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x4996:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x5000:	db "Sat", 0	; 4: 83 97 116 0

@10$enLongDayList:
x5004:	dw string_Sunday# ; 2: -102 19
x5006:	dw string_Monday# ; 2: -95 19
x5008:	dw string_Tuesday# ; 2: -88 19
x5010:	dw string_Wednesday# ; 2: -80 19
x5012:	dw string_Thursday# ; 2: -70 19
x5014:	dw string_Friday# ; 2: -61 19
x5016:	dw string_Saturday# ; 2: -54 19

string_Sunday#:
x5018:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x5025:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x5032:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x5040:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x5050:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x5059:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x5066:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@11$enShortMonthList:
x5075:	dw string_Jan# ; 2: -21 19
x5077:	dw string_Feb# ; 2: -17 19
x5079:	dw string_Mar# ; 2: -13 19
x5081:	dw string_Apr# ; 2: -9 19
x5083:	dw string_May# ; 2: -5 19
x5085:	dw string_Jun# ; 2: -1 19
x5087:	dw string_Jul# ; 2: 3 20
x5089:	dw string_Aug# ; 2: 7 20
x5091:	dw string_Sep# ; 2: 11 20
x5093:	dw string_Oct# ; 2: 15 20
x5095:	dw string_Nov# ; 2: 19 20
x5097:	dw string_Dec# ; 2: 23 20

string_Jan#:
x5099:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x5103:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x5107:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x5111:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x5115:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x5119:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x5123:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x5127:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x5131:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x5135:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x5139:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x5143:	db "Dec", 0	; 4: 68 101 99 0

@12$enLongMonthList:
x5147:	dw string_January# ; 2: 51 20
x5149:	dw string_February# ; 2: 59 20
x5151:	dw string_March# ; 2: 68 20
x5153:	dw string_April# ; 2: 74 20
x5155:	dw string_May# ; 2: -5 19
x5157:	dw string_June# ; 2: 80 20
x5159:	dw string_July# ; 2: 85 20
x5161:	dw string_August# ; 2: 90 20
x5163:	dw string_September# ; 2: 97 20
x5165:	dw string_October# ; 2: 107 20
x5167:	dw string_November# ; 2: 115 20
x5169:	dw string_December# ; 2: 124 20

string_January#:
x5171:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x5179:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x5188:	db "March", 0	; 6: 77 97 114 99 104 0

string_April#:
x5194:	db "April", 0	; 6: 65 112 114 105 108 0

string_June#:
x5200:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x5205:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x5210:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_September#:
x5217:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_October#:
x5227:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

string_November#:
x5235:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x5244:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x5253:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x5280:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

enMessageList:
x5307:	dw string_no20error# ; 2: -29 20
x5309:	dw string_function20number20invalid# ; 2: -20 20
x5311:	dw string_file20not20found# ; 2: 4 21
x5313:	dw string_path20not20found# ; 2: 19 21
x5315:	dw string_no20handle20available# ; 2: 34 21
x5317:	dw string_access20denied# ; 2: 54 21
x5319:	dw string_out20of20domain# ; 2: 68 21
x5321:	dw string_out20of20range# ; 2: 82 21
x5323:	dw string_invalid20multibyte20sequence# ; 2: 95 21
x5325:	dw string_error20while20opening# ; 2: 122 21
x5327:	dw string_error20while20flushing# ; 2: -114 21
x5329:	dw string_error20while20closing# ; 2: -93 21
x5331:	dw string_open20mode20invalid# ; 2: -73 21
x5333:	dw string_error20while20writing# ; 2: -55 21
x5335:	dw string_error20while20reading# ; 2: -35 21
x5337:	dw string_error20while20seeking# ; 2: -15 21
x5339:	dw string_error20while20telling# ; 2: 5 22
x5341:	dw string_error20while20sizing# ; 2: 25 22
x5343:	dw string_error20while20removing20file# ; 2: 44 22
x5345:	dw string_error20while20renaming20file# ; 2: 70 22

string_no20error#:
x5347:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x5356:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x5380:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x5395:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x5410:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x5430:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x5444:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x5458:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x5471:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x5498:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x5518:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x5539:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x5559:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x5577:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x5597:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x5617:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x5637:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x5657:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x5676:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x5702:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_C#:
x5728:	db "C", 0	; 2: 67 0

string_US#:
x5730:	db "US", 0	; 3: 85 83 0

strchr:	; £temporary4050 = int_to_int i (Signed_Int -> Signed_Char)
x5733:	mov ax, [bp + 8]	; 3: -117 70 8
x5736:	cmp ax, 0	; 3: -125 -8 0
x5739:	jge strchr$1	; 2: 125 4
x5741:	neg ax	; 2: -9 -40
x5743:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary4050
x5745:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x5748:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary4052 = text + index
x5753:	mov si, [bp + 6]	; 3: -117 118 6
x5756:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary4051 -> £temporary4052 = *£temporary4052

strchr$5:	; if £temporary4051 -> £temporary4052 == 0 goto 16
x5759:	cmp byte [si], 0	; 3: -128 60 0
x5762:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary4056 = text + index
x5764:	mov si, [bp + 6]	; 3: -117 118 6
x5767:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary4055 -> £temporary4056 = *£temporary4056

strchr$8:	; if £temporary4055 -> £temporary4056 != c goto 14
x5770:	mov al, [bp + 12]	; 3: -118 70 12
x5773:	cmp [si], al	; 2: 56 4
x5775:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary4059 = text + index
x5777:	mov bx, [bp + 6]	; 3: -117 94 6
x5780:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary4058 -> £temporary4059 = *£temporary4059

strchr$11:	; £temporary4060 = &£temporary4058 -> £temporary4059

strchr$12:	; return_value = £temporary4060

strchr$13:	; return
x5783:	mov ax, [bp]	; 3: -117 70 0
x5786:	mov di, [bp + 4]	; 3: -117 126 4
x5789:	mov bp, [bp + 2]	; 3: -117 110 2
x5792:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x5794:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x5797:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x5799:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x5802:	mov ax, [bp]	; 3: -117 70 0
x5805:	mov di, [bp + 4]	; 3: -117 126 4
x5808:	mov bp, [bp + 2]	; 3: -117 110 2
x5811:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

@24$isDigitInBase:	; call header integral zero 0 stack zero 0

@24$isDigitInBase$1:	; £temporary1379 = int_to_int c (Signed_Char -> Signed_Int)
x5813:	mov al, [bp + 6]	; 3: -118 70 6
x5816:	and ax, 255	; 3: 37 -1 0
x5819:	cmp al, 0	; 2: 60 0
x5821:	jge @24$isDigitInBase$2	; 2: 125 4
x5823:	neg al	; 2: -10 -40
x5825:	neg ax	; 2: -9 -40

@24$isDigitInBase$2:	; parameter £temporary1379, offset 6
x5827:	mov [bp + 15], ax	; 3: -119 70 15

@24$isDigitInBase$3:	; call function noellipse-noellipse isdigit
x5830:	mov word [bp + 9], @24$isDigitInBase$4	; 5: -57 70 9 -44 22
x5835:	mov [bp + 11], bp	; 3: -119 110 11
x5838:	add bp, 9	; 3: -125 -59 9
x5841:	jmp isdigit	; 3: -23 -3 0

@24$isDigitInBase$4:	; post call

@24$isDigitInBase$5:	; £temporary1380 = return_value

@24$isDigitInBase$6:	; if £temporary1380 == 0 goto 17
x5844:	cmp bx, 0	; 3: -125 -5 0
x5847:	je @24$isDigitInBase$17	; 2: 116 52

@24$isDigitInBase$7:	; £temporary1381 = c - 48
x5849:	mov al, [bp + 6]	; 3: -118 70 6
x5852:	sub al, 48	; 2: 44 48

@24$isDigitInBase$8:	; £temporary1382 = int_to_int £temporary1381 (Signed_Char -> Signed_Int)
x5854:	and ax, 255	; 3: 37 -1 0
x5857:	cmp al, 0	; 2: 60 0
x5859:	jge @24$isDigitInBase$9	; 2: 125 4
x5861:	neg al	; 2: -10 -40
x5863:	neg ax	; 2: -9 -40

@24$isDigitInBase$9:	; value = £temporary1382
x5865:	mov [bp + 9], ax	; 3: -119 70 9

@24$isDigitInBase$10:	; if value < 0 goto 14
x5868:	cmp word [bp + 9], 0	; 4: -125 126 9 0
x5872:	jl @24$isDigitInBase$14	; 2: 124 13

@24$isDigitInBase$11:	; if value >= base goto 14
x5874:	mov ax, [bp + 7]	; 3: -117 70 7
x5877:	cmp [bp + 9], ax	; 3: 57 70 9
x5880:	jge @24$isDigitInBase$14	; 2: 125 5

@24$isDigitInBase$12:	; £temporary1386 = 1
x5882:	mov bx, 1	; 3: -69 1 0

@24$isDigitInBase$13:	; goto 15
x5885:	jmp @24$isDigitInBase$15	; 2: -21 3

@24$isDigitInBase$14:	; £temporary1386 = 0
x5887:	mov bx, 0	; 3: -69 0 0

@24$isDigitInBase$15:	; return_value = £temporary1386

@24$isDigitInBase$16:	; return
x5890:	mov ax, [bp]	; 3: -117 70 0
x5893:	mov di, [bp + 4]	; 3: -117 126 4
x5896:	mov bp, [bp + 2]	; 3: -117 110 2
x5899:	jmp ax	; 2: -1 -32

@24$isDigitInBase$17:	; call header integral zero 0 stack zero 0

@24$isDigitInBase$18:	; £temporary1387 = int_to_int c (Signed_Char -> Signed_Int)
x5901:	mov al, [bp + 6]	; 3: -118 70 6
x5904:	and ax, 255	; 3: 37 -1 0
x5907:	cmp al, 0	; 2: 60 0
x5909:	jge @24$isDigitInBase$19	; 2: 125 4
x5911:	neg al	; 2: -10 -40
x5913:	neg ax	; 2: -9 -40

@24$isDigitInBase$19:	; parameter £temporary1387, offset 6
x5915:	mov [bp + 15], ax	; 3: -119 70 15

@24$isDigitInBase$20:	; call function noellipse-noellipse islower
x5918:	mov word [bp + 9], @24$isDigitInBase$21	; 5: -57 70 9 44 23
x5923:	mov [bp + 11], bp	; 3: -119 110 11
x5926:	add bp, 9	; 3: -125 -59 9
x5929:	jmp islower	; 3: -23 -60 0

@24$isDigitInBase$21:	; post call

@24$isDigitInBase$22:	; £temporary1388 = return_value

@24$isDigitInBase$23:	; if £temporary1388 == 0 goto 34
x5932:	cmp bx, 0	; 3: -125 -5 0
x5935:	je @24$isDigitInBase$34	; 2: 116 55

@24$isDigitInBase$24:	; £temporary1389 = c - 97
x5937:	mov al, [bp + 6]	; 3: -118 70 6
x5940:	sub al, 97	; 2: 44 97

@24$isDigitInBase$25:	; £temporary1390 = int_to_int £temporary1389 (Signed_Char -> Signed_Int)
x5942:	and ax, 255	; 3: 37 -1 0
x5945:	cmp al, 0	; 2: 60 0
x5947:	jge @24$isDigitInBase$26	; 2: 125 4
x5949:	neg al	; 2: -10 -40
x5951:	neg ax	; 2: -9 -40

@24$isDigitInBase$26:	; value = £temporary1390 + 10
x5953:	add ax, 10	; 3: -125 -64 10
x5956:	mov [bp + 9], ax	; 3: -119 70 9

@24$isDigitInBase$27:	; if value < 0 goto 31
x5959:	cmp word [bp + 9], 0	; 4: -125 126 9 0
x5963:	jl @24$isDigitInBase$31	; 2: 124 13

@24$isDigitInBase$28:	; if value >= base goto 31
x5965:	mov ax, [bp + 7]	; 3: -117 70 7
x5968:	cmp [bp + 9], ax	; 3: 57 70 9
x5971:	jge @24$isDigitInBase$31	; 2: 125 5

@24$isDigitInBase$29:	; £temporary1395 = 1
x5973:	mov bx, 1	; 3: -69 1 0

@24$isDigitInBase$30:	; goto 32
x5976:	jmp @24$isDigitInBase$32	; 2: -21 3

@24$isDigitInBase$31:	; £temporary1395 = 0
x5978:	mov bx, 0	; 3: -69 0 0

@24$isDigitInBase$32:	; return_value = £temporary1395

@24$isDigitInBase$33:	; return
x5981:	mov ax, [bp]	; 3: -117 70 0
x5984:	mov di, [bp + 4]	; 3: -117 126 4
x5987:	mov bp, [bp + 2]	; 3: -117 110 2
x5990:	jmp ax	; 2: -1 -32

@24$isDigitInBase$34:	; call header integral zero 0 stack zero 0

@24$isDigitInBase$35:	; £temporary1396 = int_to_int c (Signed_Char -> Signed_Int)
x5992:	mov al, [bp + 6]	; 3: -118 70 6
x5995:	and ax, 255	; 3: 37 -1 0
x5998:	cmp al, 0	; 2: 60 0
x6000:	jge @24$isDigitInBase$36	; 2: 125 4
x6002:	neg al	; 2: -10 -40
x6004:	neg ax	; 2: -9 -40

@24$isDigitInBase$36:	; parameter £temporary1396, offset 6
x6006:	mov [bp + 15], ax	; 3: -119 70 15

@24$isDigitInBase$37:	; call function noellipse-noellipse isupper
x6009:	mov word [bp + 9], @24$isDigitInBase$38	; 5: -57 70 9 -121 23
x6014:	mov [bp + 11], bp	; 3: -119 110 11
x6017:	add bp, 9	; 3: -125 -59 9
x6020:	jmp isupper	; 3: -23 49 -5

@24$isDigitInBase$38:	; post call

@24$isDigitInBase$39:	; £temporary1397 = return_value

@24$isDigitInBase$40:	; if £temporary1397 == 0 goto 51
x6023:	cmp bx, 0	; 3: -125 -5 0
x6026:	je @24$isDigitInBase$51	; 2: 116 55

@24$isDigitInBase$41:	; £temporary1398 = c - 65
x6028:	mov al, [bp + 6]	; 3: -118 70 6
x6031:	sub al, 65	; 2: 44 65

@24$isDigitInBase$42:	; £temporary1399 = int_to_int £temporary1398 (Signed_Char -> Signed_Int)
x6033:	and ax, 255	; 3: 37 -1 0
x6036:	cmp al, 0	; 2: 60 0
x6038:	jge @24$isDigitInBase$43	; 2: 125 4
x6040:	neg al	; 2: -10 -40
x6042:	neg ax	; 2: -9 -40

@24$isDigitInBase$43:	; value = £temporary1399 + 10
x6044:	add ax, 10	; 3: -125 -64 10
x6047:	mov [bp + 9], ax	; 3: -119 70 9

@24$isDigitInBase$44:	; if value < 0 goto 48
x6050:	cmp word [bp + 9], 0	; 4: -125 126 9 0
x6054:	jl @24$isDigitInBase$48	; 2: 124 13

@24$isDigitInBase$45:	; if value >= base goto 48
x6056:	mov ax, [bp + 7]	; 3: -117 70 7
x6059:	cmp [bp + 9], ax	; 3: 57 70 9
x6062:	jge @24$isDigitInBase$48	; 2: 125 5

@24$isDigitInBase$46:	; £temporary1404 = 1
x6064:	mov bx, 1	; 3: -69 1 0

@24$isDigitInBase$47:	; goto 49
x6067:	jmp @24$isDigitInBase$49	; 2: -21 3

@24$isDigitInBase$48:	; £temporary1404 = 0
x6069:	mov bx, 0	; 3: -69 0 0

@24$isDigitInBase$49:	; return_value = £temporary1404

@24$isDigitInBase$50:	; return
x6072:	mov ax, [bp]	; 3: -117 70 0
x6075:	mov di, [bp + 4]	; 3: -117 126 4
x6078:	mov bp, [bp + 2]	; 3: -117 110 2
x6081:	jmp ax	; 2: -1 -32

@24$isDigitInBase$51:	; return_value = 0
x6083:	mov bx, 0	; 3: -69 0 0

@24$isDigitInBase$52:	; return
x6086:	mov ax, [bp]	; 3: -117 70 0
x6089:	mov di, [bp + 4]	; 3: -117 126 4
x6092:	mov bp, [bp + 2]	; 3: -117 110 2
x6095:	jmp ax	; 2: -1 -32

@24$isDigitInBase$53:	; function end isDigitInBase

isdigit:	; if c < 48 goto 4
x6097:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x6101:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x6103:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x6107:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary406 = 1
x6109:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x6112:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary406 = 0
x6114:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary406

isdigit$6:	; return
x6117:	mov ax, [bp]	; 3: -117 70 0
x6120:	mov di, [bp + 4]	; 3: -117 126 4
x6123:	mov bp, [bp + 2]	; 3: -117 110 2
x6126:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

islower:	; call header integral zero 0 stack zero 0

islower$1:	; call function noellipse-noellipse localeconv
x6128:	mov word [bp + 8], islower$2	; 5: -57 70 8 -2 23
x6133:	mov [bp + 10], bp	; 3: -119 110 10
x6136:	add bp, 8	; 3: -125 -59 8
x6139:	jmp localeconv	; 3: -23 37 -5

islower$2:	; post call

islower$3:	; £temporary371 = return_value

islower$4:	; localeConvPtr = £temporary371
x6142:	mov [bp + 8], bx	; 3: -119 94 8

islower$5:	; if localeConvPtr == 0 goto 19
x6145:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6149:	je islower$19	; 2: 116 53

islower$6:	; call header integral zero 0 stack zero 0

islower$7:	; £temporary373 -> localeConvPtr = *localeConvPtr, offset 12
x6151:	mov si, [bp + 8]	; 3: -117 118 8

islower$8:	; parameter £temporary373 -> localeConvPtr, offset 6
x6154:	mov ax, [si + 12]	; 3: -117 68 12
x6157:	mov [bp + 16], ax	; 3: -119 70 16

islower$9:	; parameter c, offset 8
x6160:	mov ax, [bp + 6]	; 3: -117 70 6
x6163:	mov [bp + 18], ax	; 3: -119 70 18

islower$10:	; call function noellipse-noellipse strchr
x6166:	mov word [bp + 10], islower$11	; 5: -57 70 10 36 24
x6171:	mov [bp + 12], bp	; 3: -119 110 12
x6174:	add bp, 10	; 3: -125 -59 10
x6177:	jmp strchr	; 3: -23 65 -2

islower$11:	; post call

islower$12:	; £temporary374 = return_value

islower$13:	; if £temporary374 == 0 goto 16
x6180:	cmp bx, 0	; 3: -125 -5 0
x6183:	je islower$16	; 2: 116 5

islower$14:	; £temporary376 = 1
x6185:	mov bx, 1	; 3: -69 1 0

islower$15:	; goto 17
x6188:	jmp islower$17	; 2: -21 3

islower$16:	; £temporary376 = 0
x6190:	mov bx, 0	; 3: -69 0 0

islower$17:	; return_value = £temporary376

islower$18:	; return
x6193:	mov ax, [bp]	; 3: -117 70 0
x6196:	mov di, [bp + 4]	; 3: -117 126 4
x6199:	mov bp, [bp + 2]	; 3: -117 110 2
x6202:	jmp ax	; 2: -1 -32

islower$19:	; if c < 97 goto 23
x6204:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x6208:	jl islower$23	; 2: 124 11

islower$20:	; if c > 122 goto 23
x6210:	cmp word [bp + 6], 122	; 4: -125 126 6 122
x6214:	jg islower$23	; 2: 127 5

islower$21:	; £temporary380 = 1
x6216:	mov bx, 1	; 3: -69 1 0

islower$22:	; goto 24
x6219:	jmp islower$24	; 2: -21 3

islower$23:	; £temporary380 = 0
x6221:	mov bx, 0	; 3: -69 0 0

islower$24:	; return_value = £temporary380

islower$25:	; return
x6224:	mov ax, [bp]	; 3: -117 70 0
x6227:	mov di, [bp + 4]	; 3: -117 126 4
x6230:	mov bp, [bp + 2]	; 3: -117 110 2
x6233:	jmp ax	; 2: -1 -32

islower$26:	; function end islower

@25$digitToValue:	; call header integral zero 0 stack zero 0

@25$digitToValue$1:	; £temporary1411 = int_to_int c (Signed_Char -> Signed_Int)
x6235:	mov al, [bp + 6]	; 3: -118 70 6
x6238:	and ax, 255	; 3: 37 -1 0
x6241:	cmp al, 0	; 2: 60 0
x6243:	jge @25$digitToValue$2	; 2: 125 4
x6245:	neg al	; 2: -10 -40
x6247:	neg ax	; 2: -9 -40

@25$digitToValue$2:	; parameter £temporary1411, offset 6
x6249:	mov [bp + 13], ax	; 3: -119 70 13

@25$digitToValue$3:	; call function noellipse-noellipse isdigit
x6252:	mov word [bp + 7], @25$digitToValue$4	; 5: -57 70 7 122 24
x6257:	mov [bp + 9], bp	; 3: -119 110 9
x6260:	add bp, 7	; 3: -125 -59 7
x6263:	jmp isdigit	; 3: -23 87 -1

@25$digitToValue$4:	; post call

@25$digitToValue$5:	; £temporary1412 = return_value

@25$digitToValue$6:	; if £temporary1412 == 0 goto 11
x6266:	cmp bx, 0	; 3: -125 -5 0
x6269:	je @25$digitToValue$11	; 2: 116 30

@25$digitToValue$7:	; £temporary1413 = c - 48
x6271:	mov bl, [bp + 6]	; 3: -118 94 6
x6274:	sub bl, 48	; 3: -128 -21 48

@25$digitToValue$8:	; £temporary1414 = int_to_int £temporary1413 (Signed_Char -> Signed_Int)
x6277:	and bx, 255	; 4: -127 -29 -1 0
x6281:	cmp bl, 0	; 3: -128 -5 0
x6284:	jge @25$digitToValue$9	; 2: 125 4
x6286:	neg bl	; 2: -10 -37
x6288:	neg bx	; 2: -9 -37

@25$digitToValue$9:	; return_value = £temporary1414

@25$digitToValue$10:	; return
x6290:	mov ax, [bp]	; 3: -117 70 0
x6293:	mov di, [bp + 4]	; 3: -117 126 4
x6296:	mov bp, [bp + 2]	; 3: -117 110 2
x6299:	jmp ax	; 2: -1 -32

@25$digitToValue$11:	; call header integral zero 0 stack zero 0

@25$digitToValue$12:	; £temporary1415 = int_to_int c (Signed_Char -> Signed_Int)
x6301:	mov al, [bp + 6]	; 3: -118 70 6
x6304:	and ax, 255	; 3: 37 -1 0
x6307:	cmp al, 0	; 2: 60 0
x6309:	jge @25$digitToValue$13	; 2: 125 4
x6311:	neg al	; 2: -10 -40
x6313:	neg ax	; 2: -9 -40

@25$digitToValue$13:	; parameter £temporary1415, offset 6
x6315:	mov [bp + 13], ax	; 3: -119 70 13

@25$digitToValue$14:	; call function noellipse-noellipse islower
x6318:	mov word [bp + 7], @25$digitToValue$15	; 5: -57 70 7 -68 24
x6323:	mov [bp + 9], bp	; 3: -119 110 9
x6326:	add bp, 7	; 3: -125 -59 7
x6329:	jmp islower	; 3: -23 52 -1

@25$digitToValue$15:	; post call

@25$digitToValue$16:	; £temporary1416 = return_value

@25$digitToValue$17:	; if £temporary1416 == 0 goto 23
x6332:	cmp bx, 0	; 3: -125 -5 0
x6335:	je @25$digitToValue$23	; 2: 116 33

@25$digitToValue$18:	; £temporary1417 = c - 97
x6337:	mov bl, [bp + 6]	; 3: -118 94 6
x6340:	sub bl, 97	; 3: -128 -21 97

@25$digitToValue$19:	; £temporary1418 = int_to_int £temporary1417 (Signed_Char -> Signed_Int)
x6343:	and bx, 255	; 4: -127 -29 -1 0
x6347:	cmp bl, 0	; 3: -128 -5 0
x6350:	jge @25$digitToValue$20	; 2: 125 4
x6352:	neg bl	; 2: -10 -37
x6354:	neg bx	; 2: -9 -37

@25$digitToValue$20:	; £temporary1419 = £temporary1418 + 10
x6356:	add bx, 10	; 3: -125 -61 10

@25$digitToValue$21:	; return_value = £temporary1419

@25$digitToValue$22:	; return
x6359:	mov ax, [bp]	; 3: -117 70 0
x6362:	mov di, [bp + 4]	; 3: -117 126 4
x6365:	mov bp, [bp + 2]	; 3: -117 110 2
x6368:	jmp ax	; 2: -1 -32

@25$digitToValue$23:	; call header integral zero 0 stack zero 0

@25$digitToValue$24:	; £temporary1420 = int_to_int c (Signed_Char -> Signed_Int)
x6370:	mov al, [bp + 6]	; 3: -118 70 6
x6373:	and ax, 255	; 3: 37 -1 0
x6376:	cmp al, 0	; 2: 60 0
x6378:	jge @25$digitToValue$25	; 2: 125 4
x6380:	neg al	; 2: -10 -40
x6382:	neg ax	; 2: -9 -40

@25$digitToValue$25:	; parameter £temporary1420, offset 6
x6384:	mov [bp + 13], ax	; 3: -119 70 13

@25$digitToValue$26:	; call function noellipse-noellipse isupper
x6387:	mov word [bp + 7], @25$digitToValue$27	; 5: -57 70 7 1 25
x6392:	mov [bp + 9], bp	; 3: -119 110 9
x6395:	add bp, 7	; 3: -125 -59 7
x6398:	jmp isupper	; 3: -23 -73 -7

@25$digitToValue$27:	; post call

@25$digitToValue$28:	; £temporary1421 = return_value

@25$digitToValue$29:	; if £temporary1421 == 0 goto 35
x6401:	cmp bx, 0	; 3: -125 -5 0
x6404:	je @25$digitToValue$35	; 2: 116 33

@25$digitToValue$30:	; £temporary1422 = c - 65
x6406:	mov bl, [bp + 6]	; 3: -118 94 6
x6409:	sub bl, 65	; 3: -128 -21 65

@25$digitToValue$31:	; £temporary1423 = int_to_int £temporary1422 (Signed_Char -> Signed_Int)
x6412:	and bx, 255	; 4: -127 -29 -1 0
x6416:	cmp bl, 0	; 3: -128 -5 0
x6419:	jge @25$digitToValue$32	; 2: 125 4
x6421:	neg bl	; 2: -10 -37
x6423:	neg bx	; 2: -9 -37

@25$digitToValue$32:	; £temporary1424 = £temporary1423 + 10
x6425:	add bx, 10	; 3: -125 -61 10

@25$digitToValue$33:	; return_value = £temporary1424

@25$digitToValue$34:	; return
x6428:	mov ax, [bp]	; 3: -117 70 0
x6431:	mov di, [bp + 4]	; 3: -117 126 4
x6434:	mov bp, [bp + 2]	; 3: -117 110 2
x6437:	jmp ax	; 2: -1 -32

@25$digitToValue$35:	; return_value = 0
x6439:	mov bx, 0	; 3: -69 0 0

@25$digitToValue$36:	; return
x6442:	mov ax, [bp]	; 3: -117 70 0
x6445:	mov di, [bp + 4]	; 3: -117 126 4
x6448:	mov bp, [bp + 2]	; 3: -117 110 2
x6451:	jmp ax	; 2: -1 -32

@25$digitToValue$37:	; function end digitToValue

unscanChar:	; case g_inStatus == 0 goto 4
x6453:	mov ax, [g_inStatus]	; 3: -95 52 8
x6456:	cmp ax, 0	; 3: -125 -8 0
x6459:	je unscanChar$4	; 2: 116 7

unscanChar$1:	; case g_inStatus == 1 goto 6
x6461:	cmp ax, 1	; 3: -125 -8 1
x6464:	je unscanChar$6	; 2: 116 8

unscanChar$2:	; case end g_inStatus

unscanChar$3:	; goto 7
x6466:	jmp unscanChar$7	; 2: -21 10

unscanChar$4:	; --g_inChars
x6468:	dec word [g_inChars]	; 4: -1 14 88 13

unscanChar$5:	; goto 7
x6472:	jmp unscanChar$7	; 2: -21 4

unscanChar$6:	; --g_inChars
x6474:	dec word [g_inChars]	; 4: -1 14 88 13

unscanChar$7:	; return
x6478:	mov ax, [bp]	; 3: -117 70 0
x6481:	mov di, [bp + 4]	; 3: -117 126 4
x6484:	mov bp, [bp + 2]	; 3: -117 110 2
x6487:	jmp ax	; 2: -1 -32

unscanChar$8:	; function end unscanChar

scanUnsignedLongInt:	; unsignedLongValue = 0
x6489:	mov dword [bp + 8], 0	; 8: 102 -57 70 8 0 0 0 0

scanUnsignedLongInt$1:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$2:	; call function noellipse-noellipse scanChar
x6497:	mov word [bp + 16], scanUnsignedLongInt$3	; 5: -57 70 16 111 25
x6502:	mov [bp + 18], bp	; 3: -119 110 18
x6505:	add bp, 16	; 3: -125 -59 16
x6508:	jmp scanChar	; 3: -23 0 -12

scanUnsignedLongInt$3:	; post call

scanUnsignedLongInt$4:	; £temporary1466 = return_value

scanUnsignedLongInt$5:	; input = £temporary1466
x6511:	mov [bp + 16], bl	; 3: -120 94 16

scanUnsignedLongInt$6:	; found = 1
x6514:	mov word [bp + 17], 1	; 5: -57 70 17 1 0

scanUnsignedLongInt$7:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$8:	; £temporary1467 = int_to_int input (Signed_Char -> Signed_Int)
x6519:	mov al, [bp + 16]	; 3: -118 70 16
x6522:	and ax, 255	; 3: 37 -1 0
x6525:	cmp al, 0	; 2: 60 0
x6527:	jge scanUnsignedLongInt$9	; 2: 125 4
x6529:	neg al	; 2: -10 -40
x6531:	neg ax	; 2: -9 -40

scanUnsignedLongInt$9:	; parameter £temporary1467, offset 6
x6533:	mov [bp + 25], ax	; 3: -119 70 25

scanUnsignedLongInt$10:	; call function noellipse-noellipse isspace
x6536:	mov word [bp + 19], scanUnsignedLongInt$11	; 5: -57 70 19 -106 25
x6541:	mov [bp + 21], bp	; 3: -119 110 21
x6544:	add bp, 19	; 3: -125 -59 19
x6547:	jmp isspace	; 3: -23 -107 -10

scanUnsignedLongInt$11:	; post call

scanUnsignedLongInt$12:	; £temporary1468 = return_value

scanUnsignedLongInt$13:	; if £temporary1468 == 0 goto 20
x6550:	cmp bx, 0	; 3: -125 -5 0
x6553:	je scanUnsignedLongInt$20	; 2: 116 19

scanUnsignedLongInt$14:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$15:	; call function noellipse-noellipse scanChar
x6555:	mov word [bp + 19], scanUnsignedLongInt$16	; 5: -57 70 19 -87 25
x6560:	mov [bp + 21], bp	; 3: -119 110 21
x6563:	add bp, 19	; 3: -125 -59 19
x6566:	jmp scanChar	; 3: -23 -58 -13

scanUnsignedLongInt$16:	; post call

scanUnsignedLongInt$17:	; £temporary1469 = return_value

scanUnsignedLongInt$18:	; input = £temporary1469
x6569:	mov [bp + 16], bl	; 3: -120 94 16

scanUnsignedLongInt$19:	; goto 7
x6572:	jmp scanUnsignedLongInt$7	; 2: -21 -55

scanUnsignedLongInt$20:	; if input != 43 goto 26
x6574:	cmp byte [bp + 16], 43	; 4: -128 126 16 43
x6578:	jne scanUnsignedLongInt$26	; 2: 117 17

scanUnsignedLongInt$21:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$22:	; call function noellipse-noellipse scanChar
x6580:	mov word [bp + 19], scanUnsignedLongInt$23	; 5: -57 70 19 -62 25
x6585:	mov [bp + 21], bp	; 3: -119 110 21
x6588:	add bp, 19	; 3: -125 -59 19
x6591:	jmp scanChar	; 3: -23 -83 -13

scanUnsignedLongInt$23:	; post call

scanUnsignedLongInt$24:	; £temporary1472 = return_value

scanUnsignedLongInt$25:	; input = £temporary1472
x6594:	mov [bp + 16], bl	; 3: -120 94 16

scanUnsignedLongInt$26:	; if base != 0 goto 50
x6597:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x6601:	jne scanUnsignedLongInt$50	; 2: 117 95

scanUnsignedLongInt$27:	; if input != 48 goto 49
x6603:	cmp byte [bp + 16], 48	; 4: -128 126 16 48
x6607:	jne scanUnsignedLongInt$49	; 2: 117 84

scanUnsignedLongInt$28:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$29:	; call function noellipse-noellipse scanChar
x6609:	mov word [bp + 19], scanUnsignedLongInt$30	; 5: -57 70 19 -33 25
x6614:	mov [bp + 21], bp	; 3: -119 110 21
x6617:	add bp, 19	; 3: -125 -59 19
x6620:	jmp scanChar	; 3: -23 -112 -13

scanUnsignedLongInt$30:	; post call

scanUnsignedLongInt$31:	; £temporary1475 = return_value

scanUnsignedLongInt$32:	; input = £temporary1475
x6623:	mov [bp + 16], bl	; 3: -120 94 16

scanUnsignedLongInt$33:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$34:	; £temporary1476 = int_to_int input (Signed_Char -> Signed_Int)
x6626:	mov al, [bp + 16]	; 3: -118 70 16
x6629:	and ax, 255	; 3: 37 -1 0
x6632:	cmp al, 0	; 2: 60 0
x6634:	jge scanUnsignedLongInt$35	; 2: 125 4
x6636:	neg al	; 2: -10 -40
x6638:	neg ax	; 2: -9 -40

scanUnsignedLongInt$35:	; parameter £temporary1476, offset 6
x6640:	mov [bp + 25], ax	; 3: -119 70 25

scanUnsignedLongInt$36:	; call function noellipse-noellipse tolower
x6643:	mov word [bp + 19], scanUnsignedLongInt$37	; 5: -57 70 19 1 26
x6648:	mov [bp + 21], bp	; 3: -119 110 21
x6651:	add bp, 19	; 3: -125 -59 19
x6654:	jmp tolower	; 3: -23 22 -8

scanUnsignedLongInt$37:	; post call

scanUnsignedLongInt$38:	; £temporary1477 = return_value

scanUnsignedLongInt$39:	; if £temporary1477 != 120 goto 47
x6657:	cmp bx, 120	; 3: -125 -5 120
x6660:	jne scanUnsignedLongInt$47	; 2: 117 24

scanUnsignedLongInt$40:	; base = 16
x6662:	mov word [bp + 6], 16	; 5: -57 70 6 16 0

scanUnsignedLongInt$41:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$42:	; call function noellipse-noellipse scanChar
x6667:	mov word [bp + 19], scanUnsignedLongInt$43	; 5: -57 70 19 25 26
x6672:	mov [bp + 21], bp	; 3: -119 110 21
x6675:	add bp, 19	; 3: -125 -59 19
x6678:	jmp scanChar	; 3: -23 86 -13

scanUnsignedLongInt$43:	; post call

scanUnsignedLongInt$44:	; £temporary1479 = return_value

scanUnsignedLongInt$45:	; input = £temporary1479
x6681:	mov [bp + 16], bl	; 3: -120 94 16

scanUnsignedLongInt$46:	; goto 50
x6684:	jmp scanUnsignedLongInt$50	; 2: -21 12

scanUnsignedLongInt$47:	; base = 8
x6686:	mov word [bp + 6], 8	; 5: -57 70 6 8 0

scanUnsignedLongInt$48:	; goto 50
x6691:	jmp scanUnsignedLongInt$50	; 2: -21 5

scanUnsignedLongInt$49:	; base = 10
x6693:	mov word [bp + 6], 10	; 5: -57 70 6 10 0

scanUnsignedLongInt$50:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$51:	; parameter input, offset 6
x6698:	mov al, [bp + 16]	; 3: -118 70 16
x6701:	mov [bp + 25], al	; 3: -120 70 25

scanUnsignedLongInt$52:	; parameter base, offset 7
x6704:	mov ax, [bp + 6]	; 3: -117 70 6
x6707:	mov [bp + 26], ax	; 3: -119 70 26

scanUnsignedLongInt$53:	; call function noellipse-noellipse isDigitInBase
x6710:	mov word [bp + 19], scanUnsignedLongInt$54	; 5: -57 70 19 68 26
x6715:	mov [bp + 21], bp	; 3: -119 110 21
x6718:	add bp, 19	; 3: -125 -59 19
x6721:	jmp @24$isDigitInBase	; 3: -23 113 -4

scanUnsignedLongInt$54:	; post call

scanUnsignedLongInt$55:	; £temporary1480 = return_value

scanUnsignedLongInt$56:	; if £temporary1480 == 0 goto 73
x6724:	cmp bx, 0	; 3: -125 -5 0
x6727:	je scanUnsignedLongInt$73	; 2: 116 79

scanUnsignedLongInt$57:	; £temporary1481 = int_to_int base (Signed_Int -> Unsigned_Long_Int)
x6729:	mov bx, [bp + 6]	; 3: -117 94 6
x6732:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0

scanUnsignedLongInt$58:	; unsignedLongValue = unsignedLongValue * £temporary1481
x6739:	mov eax, [bp + 8]	; 4: 102 -117 70 8
x6743:	xor edx, edx	; 3: 102 49 -46
x6746:	mul ebx	; 3: 102 -9 -29
x6749:	mov [bp + 8], eax	; 4: 102 -119 70 8

scanUnsignedLongInt$59:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$60:	; parameter input, offset 6
x6753:	mov al, [bp + 16]	; 3: -118 70 16
x6756:	mov [bp + 25], al	; 3: -120 70 25

scanUnsignedLongInt$61:	; call function noellipse-noellipse digitToValue
x6759:	mov word [bp + 19], scanUnsignedLongInt$62	; 5: -57 70 19 117 26
x6764:	mov [bp + 21], bp	; 3: -119 110 21
x6767:	add bp, 19	; 3: -125 -59 19
x6770:	jmp @25$digitToValue	; 3: -23 -26 -3

scanUnsignedLongInt$62:	; post call

scanUnsignedLongInt$63:	; £temporary1483 = return_value

scanUnsignedLongInt$64:	; £temporary1484 = int_to_int £temporary1483 (Signed_Int -> Unsigned_Long_Int)
x6773:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0

scanUnsignedLongInt$65:	; unsignedLongValue = unsignedLongValue + £temporary1484
x6780:	add [bp + 8], ebx	; 4: 102 1 94 8

scanUnsignedLongInt$66:	; found = 1
x6784:	mov word [bp + 17], 1	; 5: -57 70 17 1 0

scanUnsignedLongInt$67:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$68:	; call function noellipse-noellipse scanChar
x6789:	mov word [bp + 19], scanUnsignedLongInt$69	; 5: -57 70 19 -109 26
x6794:	mov [bp + 21], bp	; 3: -119 110 21
x6797:	add bp, 19	; 3: -125 -59 19
x6800:	jmp scanChar	; 3: -23 -36 -14

scanUnsignedLongInt$69:	; post call

scanUnsignedLongInt$70:	; £temporary1486 = return_value

scanUnsignedLongInt$71:	; input = £temporary1486
x6803:	mov [bp + 16], bl	; 3: -120 94 16

scanUnsignedLongInt$72:	; goto 50
x6806:	jmp scanUnsignedLongInt$50	; 2: -21 -110

scanUnsignedLongInt$73:	; if found == 0 goto 75
x6808:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x6812:	je scanUnsignedLongInt$75	; 2: 116 4

scanUnsignedLongInt$74:	; ++g_inCount
x6814:	inc word [g_inCount]	; 4: -1 6 86 13

scanUnsignedLongInt$75:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$76:	; parameter input, offset 6
x6818:	mov al, [bp + 16]	; 3: -118 70 16
x6821:	mov [bp + 25], al	; 3: -120 70 25

scanUnsignedLongInt$77:	; call function noellipse-noellipse unscanChar
x6824:	mov word [bp + 19], scanUnsignedLongInt$78	; 5: -57 70 19 -74 26
x6829:	mov [bp + 21], bp	; 3: -119 110 21
x6832:	add bp, 19	; 3: -125 -59 19
x6835:	jmp unscanChar	; 3: -23 127 -2

scanUnsignedLongInt$78:	; post call

scanUnsignedLongInt$79:	; return_value = unsignedLongValue
x6838:	mov ebx, [bp + 8]	; 4: 102 -117 94 8

scanUnsignedLongInt$80:	; return
x6842:	mov ax, [bp]	; 3: -117 70 0
x6845:	mov di, [bp + 4]	; 3: -117 126 4
x6848:	mov bp, [bp + 2]	; 3: -117 110 2
x6851:	jmp ax	; 2: -1 -32

scanUnsignedLongInt$81:	; function end scanUnsignedLongInt

scanLongDouble:	; minus = 0
x6853:	mov word [bp + 6], 0	; 5: -57 70 6 0 0

scanLongDouble$1:	; found = 0
x6858:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

scanLongDouble$2:	; push float 0.0
x6863:	fldz	; 2: -39 -18

scanLongDouble$3:	; pop float value
x6865:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$4:	; push float 1.0
x6868:	fld1	; 2: -39 -24

scanLongDouble$5:	; pop float factor
x6870:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$6:	; call header integral zero 0 stack zero 0

scanLongDouble$7:	; call function noellipse-noellipse scanChar
x6873:	mov word [bp + 26], scanLongDouble$8	; 5: -57 70 26 -25 26
x6878:	mov [bp + 28], bp	; 3: -119 110 28
x6881:	add bp, 26	; 3: -125 -59 26
x6884:	jmp scanChar	; 3: -23 -120 -14

scanLongDouble$8:	; post call

scanLongDouble$9:	; £temporary1497 = return_value

scanLongDouble$10:	; input = £temporary1497
x6887:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$11:	; call header integral zero 0 stack zero 0

scanLongDouble$12:	; £temporary1498 = int_to_int input (Signed_Char -> Signed_Int)
x6890:	mov al, [bp + 26]	; 3: -118 70 26
x6893:	and ax, 255	; 3: 37 -1 0
x6896:	cmp al, 0	; 2: 60 0
x6898:	jge scanLongDouble$13	; 2: 125 4
x6900:	neg al	; 2: -10 -40
x6902:	neg ax	; 2: -9 -40

scanLongDouble$13:	; parameter £temporary1498, offset 6
x6904:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$14:	; call function noellipse-noellipse isspace
x6907:	mov word [bp + 27], scanLongDouble$15	; 5: -57 70 27 9 27
x6912:	mov [bp + 29], bp	; 3: -119 110 29
x6915:	add bp, 27	; 3: -125 -59 27
x6918:	jmp isspace	; 3: -23 34 -11

scanLongDouble$15:	; post call

scanLongDouble$16:	; £temporary1499 = return_value

scanLongDouble$17:	; if £temporary1499 == 0 goto 24
x6921:	cmp bx, 0	; 3: -125 -5 0
x6924:	je scanLongDouble$24	; 2: 116 19

scanLongDouble$18:	; call header integral zero 0 stack zero 0

scanLongDouble$19:	; call function noellipse-noellipse scanChar
x6926:	mov word [bp + 27], scanLongDouble$20	; 5: -57 70 27 28 27
x6931:	mov [bp + 29], bp	; 3: -119 110 29
x6934:	add bp, 27	; 3: -125 -59 27
x6937:	jmp scanChar	; 3: -23 83 -14

scanLongDouble$20:	; post call

scanLongDouble$21:	; £temporary1500 = return_value

scanLongDouble$22:	; input = £temporary1500
x6940:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$23:	; goto 11
x6943:	jmp scanLongDouble$11	; 2: -21 -55

scanLongDouble$24:	; if input != 43 goto 31
x6945:	cmp byte [bp + 26], 43	; 4: -128 126 26 43
x6949:	jne scanLongDouble$31	; 2: 117 19

scanLongDouble$25:	; call header integral zero 0 stack zero 0

scanLongDouble$26:	; call function noellipse-noellipse scanChar
x6951:	mov word [bp + 27], scanLongDouble$27	; 5: -57 70 27 53 27
x6956:	mov [bp + 29], bp	; 3: -119 110 29
x6959:	add bp, 27	; 3: -125 -59 27
x6962:	jmp scanChar	; 3: -23 58 -14

scanLongDouble$27:	; post call

scanLongDouble$28:	; £temporary1503 = return_value

scanLongDouble$29:	; input = £temporary1503
x6965:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$30:	; goto 38
x6968:	jmp scanLongDouble$38	; 2: -21 28

scanLongDouble$31:	; if input != 45 goto 38
x6970:	cmp byte [bp + 26], 45	; 4: -128 126 26 45
x6974:	jne scanLongDouble$38	; 2: 117 22

scanLongDouble$32:	; minus = 1
x6976:	mov word [bp + 6], 1	; 5: -57 70 6 1 0

scanLongDouble$33:	; call header integral zero 0 stack zero 0

scanLongDouble$34:	; call function noellipse-noellipse scanChar
x6981:	mov word [bp + 27], scanLongDouble$35	; 5: -57 70 27 83 27
x6986:	mov [bp + 29], bp	; 3: -119 110 29
x6989:	add bp, 27	; 3: -125 -59 27
x6992:	jmp scanChar	; 3: -23 28 -14

scanLongDouble$35:	; post call

scanLongDouble$36:	; £temporary1505 = return_value

scanLongDouble$37:	; input = £temporary1505
x6995:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$38:	; call header integral zero 0 stack zero 0

scanLongDouble$39:	; £temporary1506 = int_to_int input (Signed_Char -> Signed_Int)
x6998:	mov al, [bp + 26]	; 3: -118 70 26
x7001:	and ax, 255	; 3: 37 -1 0
x7004:	cmp al, 0	; 2: 60 0
x7006:	jge scanLongDouble$40	; 2: 125 4
x7008:	neg al	; 2: -10 -40
x7010:	neg ax	; 2: -9 -40

scanLongDouble$40:	; parameter £temporary1506, offset 6
x7012:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$41:	; call function noellipse-noellipse isdigit
x7015:	mov word [bp + 27], scanLongDouble$42	; 5: -57 70 27 117 27
x7020:	mov [bp + 29], bp	; 3: -119 110 29
x7023:	add bp, 27	; 3: -125 -59 27
x7026:	jmp isdigit	; 3: -23 92 -4

scanLongDouble$42:	; post call

scanLongDouble$43:	; £temporary1507 = return_value

scanLongDouble$44:	; if £temporary1507 == 0 goto 60
x7029:	cmp bx, 0	; 3: -125 -5 0
x7032:	je scanLongDouble$60	; 2: 116 61

scanLongDouble$45:	; push float 10.0
x7034:	fld qword [float8$10.0#]	; 4: -35 6 -24 28

scanLongDouble$46:	; push float value
x7038:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$47:	; £temporary1508 = 10.0 * value
x7041:	fmul	; 2: -34 -55

scanLongDouble$48:	; £temporary1509 = input - 48
x7043:	mov al, [bp + 26]	; 3: -118 70 26
x7046:	sub al, 48	; 2: 44 48

scanLongDouble$49:	; £temporary1511 = int_to_int £temporary1509 (Signed_Char -> Signed_Int)
x7048:	and ax, 255	; 3: 37 -1 0
x7051:	cmp al, 0	; 2: 60 0
x7053:	jge scanLongDouble$50	; 2: 125 4
x7055:	neg al	; 2: -10 -40
x7057:	neg ax	; 2: -9 -40

scanLongDouble$50:	; £temporary1510 = int_to_float £temporary1511 (Signed_Int -> Long_Double)
x7059:	mov [container2bytes#], ax	; 3: -93 -16 28
x7062:	fild word [container2bytes#]	; 4: -33 6 -16 28

scanLongDouble$51:	; £temporary1512 = £temporary1508 + £temporary1510
x7066:	fadd	; 2: -34 -63

scanLongDouble$52:	; pop float value
x7068:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$53:	; call header integral zero 0 stack zero 0

scanLongDouble$54:	; call function noellipse-noellipse scanChar
x7071:	mov word [bp + 27], scanLongDouble$55	; 5: -57 70 27 -83 27
x7076:	mov [bp + 29], bp	; 3: -119 110 29
x7079:	add bp, 27	; 3: -125 -59 27
x7082:	jmp scanChar	; 3: -23 -62 -15

scanLongDouble$55:	; post call

scanLongDouble$56:	; £temporary1513 = return_value

scanLongDouble$57:	; input = £temporary1513
x7085:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$58:	; found = 1
x7088:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$59:	; goto 38
x7093:	jmp scanLongDouble$38	; 2: -21 -97

scanLongDouble$60:	; if input != 46 goto 92
x7095:	cmp byte [bp + 26], 46	; 4: -128 126 26 46
x7099:	jne scanLongDouble$92	; 2: 117 125

scanLongDouble$61:	; call header integral zero 0 stack zero 0

scanLongDouble$62:	; call function noellipse-noellipse scanChar
x7101:	mov word [bp + 27], scanLongDouble$63	; 5: -57 70 27 -53 27
x7106:	mov [bp + 29], bp	; 3: -119 110 29
x7109:	add bp, 27	; 3: -125 -59 27
x7112:	jmp scanChar	; 3: -23 -92 -15

scanLongDouble$63:	; post call

scanLongDouble$64:	; £temporary1516 = return_value

scanLongDouble$65:	; input = £temporary1516
x7115:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$66:	; call header integral zero 0 stack zero 0

scanLongDouble$67:	; £temporary1517 = int_to_int input (Signed_Char -> Signed_Int)
x7118:	mov al, [bp + 26]	; 3: -118 70 26
x7121:	and ax, 255	; 3: 37 -1 0
x7124:	cmp al, 0	; 2: 60 0
x7126:	jge scanLongDouble$68	; 2: 125 4
x7128:	neg al	; 2: -10 -40
x7130:	neg ax	; 2: -9 -40

scanLongDouble$68:	; parameter £temporary1517, offset 6
x7132:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$69:	; call function noellipse-noellipse isdigit
x7135:	mov word [bp + 27], scanLongDouble$70	; 5: -57 70 27 -19 27
x7140:	mov [bp + 29], bp	; 3: -119 110 29
x7143:	add bp, 27	; 3: -125 -59 27
x7146:	jmp isdigit	; 3: -23 -28 -5

scanLongDouble$70:	; post call

scanLongDouble$71:	; £temporary1518 = return_value

scanLongDouble$72:	; if £temporary1518 == 0 goto 92
x7149:	cmp bx, 0	; 3: -125 -5 0
x7152:	je scanLongDouble$92	; 2: 116 72

scanLongDouble$73:	; push float factor
x7154:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$74:	; push float 10.0
x7157:	fld qword [float8$10.0#]	; 4: -35 6 -24 28

scanLongDouble$75:	; £temporary1519 = factor / 10.0
x7161:	fdiv	; 2: -34 -7

scanLongDouble$76:	; pop float factor
x7163:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$77:	; push float value
x7166:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$78:	; push float factor
x7169:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$79:	; £temporary1520 = input - 48
x7172:	mov al, [bp + 26]	; 3: -118 70 26
x7175:	sub al, 48	; 2: 44 48

scanLongDouble$80:	; £temporary1522 = int_to_int £temporary1520 (Signed_Char -> Signed_Int)
x7177:	and ax, 255	; 3: 37 -1 0
x7180:	cmp al, 0	; 2: 60 0
x7182:	jge scanLongDouble$81	; 2: 125 4
x7184:	neg al	; 2: -10 -40
x7186:	neg ax	; 2: -9 -40

scanLongDouble$81:	; £temporary1521 = int_to_float £temporary1522 (Signed_Int -> Long_Double)
x7188:	mov [container2bytes#], ax	; 3: -93 -16 28
x7191:	fild word [container2bytes#]	; 4: -33 6 -16 28

scanLongDouble$82:	; £temporary1523 = factor * £temporary1521
x7195:	fmul	; 2: -34 -55

scanLongDouble$83:	; £temporary1524 = value + £temporary1523
x7197:	fadd	; 2: -34 -63

scanLongDouble$84:	; pop float value
x7199:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$85:	; call header integral zero 0 stack zero 0

scanLongDouble$86:	; call function noellipse-noellipse scanChar
x7202:	mov word [bp + 27], scanLongDouble$87	; 5: -57 70 27 48 28
x7207:	mov [bp + 29], bp	; 3: -119 110 29
x7210:	add bp, 27	; 3: -125 -59 27
x7213:	jmp scanChar	; 3: -23 63 -15

scanLongDouble$87:	; post call

scanLongDouble$88:	; £temporary1525 = return_value

scanLongDouble$89:	; input = £temporary1525
x7216:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$90:	; found = 1
x7219:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$91:	; goto 66
x7224:	jmp scanLongDouble$66	; 2: -21 -108

scanLongDouble$92:	; call header integral zero 0 stack zero 0

scanLongDouble$93:	; £temporary1527 = int_to_int input (Signed_Char -> Signed_Int)
x7226:	mov al, [bp + 26]	; 3: -118 70 26
x7229:	and ax, 255	; 3: 37 -1 0
x7232:	cmp al, 0	; 2: 60 0
x7234:	jge scanLongDouble$94	; 2: 125 4
x7236:	neg al	; 2: -10 -40
x7238:	neg ax	; 2: -9 -40

scanLongDouble$94:	; parameter £temporary1527, offset 6
x7240:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$95:	; call function noellipse-noellipse tolower
x7243:	mov word [bp + 27], scanLongDouble$96	; 5: -57 70 27 89 28
x7248:	mov [bp + 29], bp	; 3: -119 110 29
x7251:	add bp, 27	; 3: -125 -59 27
x7254:	jmp tolower	; 3: -23 -66 -11

scanLongDouble$96:	; post call

scanLongDouble$97:	; £temporary1528 = return_value

scanLongDouble$98:	; if £temporary1528 != 101 goto 118
x7257:	cmp bx, 101	; 3: -125 -5 101
x7260:	jne scanLongDouble$118	; 2: 117 80

scanLongDouble$99:	; call header integral zero 0 stack zero 0

scanLongDouble$100:	; parameter 10, offset 6
x7262:	mov word [bp + 33], 10	; 5: -57 70 33 10 0

scanLongDouble$101:	; call function noellipse-noellipse scanLongInt
x7267:	mov word [bp + 27], scanLongDouble$102	; 5: -57 70 27 113 28
x7272:	mov [bp + 29], bp	; 3: -119 110 29
x7275:	add bp, 27	; 3: -125 -59 27
x7278:	jmp scanLongInt	; 3: -23 -15 -13

scanLongDouble$102:	; post call

scanLongDouble$103:	; £temporary1530 = return_value

scanLongDouble$104:	; £temporary1531 = int_to_float £temporary1530 (Signed_Long_Int -> Double)
x7281:	mov [container4bytes#], ebx	; 5: 102 -119 30 -14 28
x7286:	fild dword [container4bytes#]	; 4: -37 6 -14 28

scanLongDouble$105:	; pop float exponent
x7290:	fstp qword [bp + 27]	; 3: -35 94 27

scanLongDouble$106:	; push float value
x7293:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$107:	; call header integral zero 0 stack no zero 1
x7296:	fstp qword [bp + 35]	; 3: -35 94 35

scanLongDouble$108:	; push float 10.0
x7299:	fld qword [float8$10.0#]	; 4: -35 6 -24 28

scanLongDouble$109:	; parameter 10.0, offset 6
x7303:	fstp qword [bp + 49]	; 3: -35 94 49

scanLongDouble$110:	; push float exponent
x7306:	fld qword [bp + 27]	; 3: -35 70 27

scanLongDouble$111:	; parameter exponent, offset 14
x7309:	fstp qword [bp + 57]	; 3: -35 94 57

scanLongDouble$112:	; call function noellipse-noellipse pow
x7312:	mov word [bp + 43], scanLongDouble$113	; 5: -57 70 43 -98 28
x7317:	mov [bp + 45], bp	; 3: -119 110 45
x7320:	add bp, 43	; 3: -125 -59 43
x7323:	nop	; 1: -112
x7324:	jmp pow	; 2: -21 88

scanLongDouble$113:	; post call
x7326:	fstp qword [bp + 43]	; 3: -35 94 43
x7329:	fld qword [bp + 35]	; 3: -35 70 35
x7332:	fld qword [bp + 43]	; 3: -35 70 43

scanLongDouble$114:	; £temporary1532 = return_value

scanLongDouble$115:	; £temporary1533 = value * £temporary1532
x7335:	fmul	; 2: -34 -55

scanLongDouble$116:	; pop float value
x7337:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$117:	; goto 122
x7340:	jmp scanLongDouble$122	; 2: -21 20

scanLongDouble$118:	; call header integral zero 0 stack zero 0

scanLongDouble$119:	; parameter input, offset 6
x7342:	mov al, [bp + 26]	; 3: -118 70 26
x7345:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$120:	; call function noellipse-noellipse unscanChar
x7348:	mov word [bp + 27], scanLongDouble$121	; 5: -57 70 27 -62 28
x7353:	mov [bp + 29], bp	; 3: -119 110 29
x7356:	add bp, 27	; 3: -125 -59 27
x7359:	jmp unscanChar	; 3: -23 115 -4

scanLongDouble$121:	; post call

scanLongDouble$122:	; if minus == 0 goto 126
x7362:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x7366:	je scanLongDouble$126	; 2: 116 8

scanLongDouble$123:	; push float value
x7368:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$124:	; £temporary1535 = -value
x7371:	fchs	; 2: -39 -32

scanLongDouble$125:	; pop float value
x7373:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$126:	; if found == 0 goto 128
x7376:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7380:	je scanLongDouble$128	; 2: 116 4

scanLongDouble$127:	; ++g_inCount
x7382:	inc word [g_inCount]	; 4: -1 6 86 13

scanLongDouble$128:	; push float value
x7386:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$129:	; return_value = value

scanLongDouble$130:	; return
x7389:	mov ax, [bp]	; 3: -117 70 0
x7392:	mov di, [bp + 4]	; 3: -117 126 4
x7395:	mov bp, [bp + 2]	; 3: -117 110 2
x7398:	jmp ax	; 2: -1 -32

scanLongDouble$131:	; function end scanLongDouble

float8$10.0#:
x7400:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

container2bytes#:
x7408:	db 0, 0	; 2: 0 0

container4bytes#:
x7410:	db 0, 0, 0, 0	; 4: 0 0 0 0

pow:	; push float x
x7414:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x7417:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x7419:	fcompp	; 2: -34 -39
x7421:	fstsw ax	; 3: -101 -33 -32
x7424:	sahf	; 1: -98
x7425:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x7427:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x7430:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x7433:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x7436:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x7439:	mov word [bp + 30], pow$9	; 5: -57 70 30 29 29
x7444:	mov [bp + 32], bp	; 3: -119 110 32
x7447:	add bp, 30	; 3: -125 -59 30
x7450:	jmp log	; 3: -23 -124 1

pow$9:	; post call
x7453:	fstp qword [bp + 30]	; 3: -35 94 30
x7456:	fld qword [bp + 22]	; 3: -35 70 22
x7459:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary554 = return_value

pow$11:	; £temporary555 = y * £temporary554
x7462:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary555, offset 6
x7464:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x7467:	mov word [bp + 22], pow$14	; 5: -57 70 22 57 29
x7472:	mov [bp + 24], bp	; 3: -119 110 24
x7475:	add bp, 22	; 3: -125 -59 22
x7478:	jmp exp	; 3: -23 -70 2

pow$14:	; post call

pow$15:	; £temporary556 = return_value

pow$16:	; return_value = £temporary556

pow$17:	; return
x7481:	mov ax, [bp]	; 3: -117 70 0
x7484:	mov di, [bp + 4]	; 3: -117 126 4
x7487:	mov bp, [bp + 2]	; 3: -117 110 2
x7490:	jmp ax	; 2: -1 -32

pow$18:	; push float x
x7492:	fld qword [bp + 6]	; 3: -35 70 6

pow$19:	; push 0
x7495:	fldz	; 2: -39 -18

pow$20:	; if x != 0 goto 27
x7497:	fcompp	; 2: -34 -39
x7499:	fstsw ax	; 3: -101 -33 -32
x7502:	sahf	; 1: -98
x7503:	jne pow$27	; 2: 117 26

pow$21:	; push float y
x7505:	fld qword [bp + 14]	; 3: -35 70 14

pow$22:	; push 0
x7508:	fldz	; 2: -39 -18

pow$23:	; if y != 0 goto 27
x7510:	fcompp	; 2: -34 -39
x7512:	fstsw ax	; 3: -101 -33 -32
x7515:	sahf	; 1: -98
x7516:	jne pow$27	; 2: 117 13

pow$24:	; push 1
x7518:	fld1	; 2: -39 -24

pow$25:	; return_value = 1

pow$26:	; return
x7520:	mov ax, [bp]	; 3: -117 70 0
x7523:	mov di, [bp + 4]	; 3: -117 126 4
x7526:	mov bp, [bp + 2]	; 3: -117 110 2
x7529:	jmp ax	; 2: -1 -32

pow$27:	; push float x
x7531:	fld qword [bp + 6]	; 3: -35 70 6

pow$28:	; push 0
x7534:	fldz	; 2: -39 -18

pow$29:	; if x != 0 goto 36
x7536:	fcompp	; 2: -34 -39
x7538:	fstsw ax	; 3: -101 -33 -32
x7541:	sahf	; 1: -98
x7542:	jne pow$36	; 2: 117 26

pow$30:	; push float y
x7544:	fld qword [bp + 14]	; 3: -35 70 14

pow$31:	; push 0
x7547:	fldz	; 2: -39 -18

pow$32:	; if y <= 0 goto 36
x7549:	fcompp	; 2: -34 -39
x7551:	fstsw ax	; 3: -101 -33 -32
x7554:	sahf	; 1: -98
x7555:	jae pow$36	; 2: 115 13

pow$33:	; push 0
x7557:	fldz	; 2: -39 -18

pow$34:	; return_value = 0

pow$35:	; return
x7559:	mov ax, [bp]	; 3: -117 70 0
x7562:	mov di, [bp + 4]	; 3: -117 126 4
x7565:	mov bp, [bp + 2]	; 3: -117 110 2
x7568:	jmp ax	; 2: -1 -32

pow$36:	; push float x
x7570:	fld qword [bp + 6]	; 3: -35 70 6

pow$37:	; push 0
x7573:	fldz	; 2: -39 -18

pow$38:	; if x >= 0 goto 90
x7575:	fcompp	; 2: -34 -39
x7577:	fstsw ax	; 3: -101 -33 -32
x7580:	sahf	; 1: -98
x7581:	jbe pow$90	; 4: 15 -122 -25 0

pow$39:	; call header integral zero 0 stack zero 0

pow$40:	; push float y
x7585:	fld qword [bp + 14]	; 3: -35 70 14

pow$41:	; parameter y, offset 6
x7588:	fstp qword [bp + 28]	; 3: -35 94 28

pow$42:	; call function noellipse-noellipse floor
x7591:	mov word [bp + 22], pow$43	; 5: -57 70 22 -75 29
x7596:	mov [bp + 24], bp	; 3: -119 110 24
x7599:	add bp, 22	; 3: -125 -59 22
x7602:	jmp floor	; 3: -23 -76 2

pow$43:	; post call

pow$44:	; £temporary564 = return_value

pow$45:	; call header integral zero 0 stack no zero 1
x7605:	fstp qword [bp + 22]	; 3: -35 94 22

pow$46:	; push float y
x7608:	fld qword [bp + 14]	; 3: -35 70 14

pow$47:	; parameter y, offset 6
x7611:	fstp qword [bp + 36]	; 3: -35 94 36

pow$48:	; call function noellipse-noellipse ceil
x7614:	mov word [bp + 30], pow$49	; 5: -57 70 30 -52 29
x7619:	mov [bp + 32], bp	; 3: -119 110 32
x7622:	add bp, 30	; 3: -125 -59 30
x7625:	jmp ceil	; 3: -23 -21 2

pow$49:	; post call
x7628:	fstp qword [bp + 30]	; 3: -35 94 30
x7631:	fld qword [bp + 22]	; 3: -35 70 22
x7634:	fld qword [bp + 30]	; 3: -35 70 30

pow$50:	; £temporary565 = return_value

pow$51:	; if £temporary564 != £temporary565 goto 90
x7637:	fcompp	; 2: -34 -39
x7639:	fstsw ax	; 3: -101 -33 -32
x7642:	sahf	; 1: -98
x7643:	jne pow$90	; 4: 15 -123 -87 0

pow$52:	; push float y
x7647:	fld qword [bp + 14]	; 3: -35 70 14

pow$53:	; £temporary568 = float_to_int y (Double -> Signed_Long_Int)
x7650:	fistp dword [container4bytes#]	; 4: -37 30 -14 28
x7654:	mov eax, [container4bytes#]	; 4: 102 -95 -14 28

pow$54:	; long_y = £temporary568
x7658:	mov [bp + 22], eax	; 4: 102 -119 70 22

pow$55:	; £temporary569 = long_y % 2
x7662:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x7666:	xor edx, edx	; 3: 102 49 -46
x7669:	idiv dword [int4$2#]	; 5: 102 -9 62 -101 30

pow$56:	; if £temporary569 != 0 goto 73
x7674:	cmp edx, 0	; 4: 102 -125 -6 0
x7678:	jne pow$73	; 2: 117 67

pow$57:	; call header integral zero 0 stack zero 0

pow$58:	; push float y
x7680:	fld qword [bp + 14]	; 3: -35 70 14

pow$59:	; call header integral zero 0 stack no zero 1
x7683:	fstp qword [bp + 26]	; 3: -35 94 26

pow$60:	; push float x
x7686:	fld qword [bp + 6]	; 3: -35 70 6

pow$61:	; £temporary571 = -x
x7689:	fchs	; 2: -39 -32

pow$62:	; parameter £temporary571, offset 6
x7691:	fstp qword [bp + 40]	; 3: -35 94 40

pow$63:	; call function noellipse-noellipse log
x7694:	mov word [bp + 34], pow$64	; 5: -57 70 34 28 30
x7699:	mov [bp + 36], bp	; 3: -119 110 36
x7702:	add bp, 34	; 3: -125 -59 34
x7705:	jmp log	; 3: -23 -123 0

pow$64:	; post call
x7708:	fstp qword [bp + 34]	; 3: -35 94 34
x7711:	fld qword [bp + 26]	; 3: -35 70 26
x7714:	fld qword [bp + 34]	; 3: -35 70 34

pow$65:	; £temporary572 = return_value

pow$66:	; £temporary573 = y * £temporary572
x7717:	fmul	; 2: -34 -55

pow$67:	; parameter £temporary573, offset 6
x7719:	fstp qword [bp + 32]	; 3: -35 94 32

pow$68:	; call function noellipse-noellipse exp
x7722:	mov word [bp + 26], pow$69	; 5: -57 70 26 56 30
x7727:	mov [bp + 28], bp	; 3: -119 110 28
x7730:	add bp, 26	; 3: -125 -59 26
x7733:	jmp exp	; 3: -23 -69 1

pow$69:	; post call

pow$70:	; £temporary574 = return_value

pow$71:	; return_value = £temporary574

pow$72:	; return
x7736:	mov ax, [bp]	; 3: -117 70 0
x7739:	mov di, [bp + 4]	; 3: -117 126 4
x7742:	mov bp, [bp + 2]	; 3: -117 110 2
x7745:	jmp ax	; 2: -1 -32

pow$73:	; call header integral zero 0 stack zero 0

pow$74:	; push float y
x7747:	fld qword [bp + 14]	; 3: -35 70 14

pow$75:	; call header integral zero 0 stack no zero 1
x7750:	fstp qword [bp + 26]	; 3: -35 94 26

pow$76:	; push float x
x7753:	fld qword [bp + 6]	; 3: -35 70 6

pow$77:	; £temporary575 = -x
x7756:	fchs	; 2: -39 -32

pow$78:	; parameter £temporary575, offset 6
x7758:	fstp qword [bp + 40]	; 3: -35 94 40

pow$79:	; call function noellipse-noellipse log
x7761:	mov word [bp + 34], pow$80	; 5: -57 70 34 95 30
x7766:	mov [bp + 36], bp	; 3: -119 110 36
x7769:	add bp, 34	; 3: -125 -59 34
x7772:	nop	; 1: -112
x7773:	jmp log	; 2: -21 66

pow$80:	; post call
x7775:	fstp qword [bp + 34]	; 3: -35 94 34
x7778:	fld qword [bp + 26]	; 3: -35 70 26
x7781:	fld qword [bp + 34]	; 3: -35 70 34

pow$81:	; £temporary576 = return_value

pow$82:	; £temporary577 = y * £temporary576
x7784:	fmul	; 2: -34 -55

pow$83:	; parameter £temporary577, offset 6
x7786:	fstp qword [bp + 32]	; 3: -35 94 32

pow$84:	; call function noellipse-noellipse exp
x7789:	mov word [bp + 26], pow$85	; 5: -57 70 26 123 30
x7794:	mov [bp + 28], bp	; 3: -119 110 28
x7797:	add bp, 26	; 3: -125 -59 26
x7800:	jmp exp	; 3: -23 120 1

pow$85:	; post call

pow$86:	; £temporary578 = return_value

pow$87:	; £temporary579 = -£temporary578
x7803:	fchs	; 2: -39 -32

pow$88:	; return_value = £temporary579

pow$89:	; return
x7805:	mov ax, [bp]	; 3: -117 70 0
x7808:	mov di, [bp + 4]	; 3: -117 126 4
x7811:	mov bp, [bp + 2]	; 3: -117 110 2
x7814:	jmp ax	; 2: -1 -32

pow$90:	; errno = 6
x7816:	mov word [errno], 6	; 6: -57 6 -97 30 6 0

pow$91:	; push 0
x7822:	fldz	; 2: -39 -18

pow$92:	; return_value = 0

pow$93:	; return
x7824:	mov ax, [bp]	; 3: -117 70 0
x7827:	mov di, [bp + 4]	; 3: -117 126 4
x7830:	mov bp, [bp + 2]	; 3: -117 110 2
x7833:	jmp ax	; 2: -1 -32

pow$94:	; function end pow

int4$2#:
x7835:	dd 2	; 4: 2 0 0 0

errno:
x7839:	dw 0	; 2: 0 0

log:	; push float x
x7841:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x7844:	fldz	; 2: -39 -18

log$2:	; if x <= 0 goto 76
x7846:	fcompp	; 2: -34 -39
x7848:	fstsw ax	; 3: -101 -33 -32
x7851:	sahf	; 1: -98
x7852:	jae log$76	; 4: 15 -125 -18 0

log$3:	; n = 0
x7856:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x
x7861:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push 1
x7864:	fld1	; 2: -39 -24

log$6:	; if x <= 1 goto 16
x7866:	fcompp	; 2: -34 -39
x7868:	fstsw ax	; 3: -101 -33 -32
x7871:	sahf	; 1: -98
x7872:	jae log$16	; 2: 115 30

log$7:	; push float x
x7874:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push 1
x7877:	fld1	; 2: -39 -24

log$9:	; if x <= 1 goto 28
x7879:	fcompp	; 2: -34 -39
x7881:	fstsw ax	; 3: -101 -33 -32
x7884:	sahf	; 1: -98
x7885:	jae log$28	; 2: 115 64

log$10:	; push float x
x7887:	fld qword [bp + 6]	; 3: -35 70 6

log$11:	; push float 2.71
x7890:	fld qword [float8$2.71#]	; 4: -35 6 -79 31

log$12:	; £temporary532 = x / 2.71
x7894:	fdiv	; 2: -34 -7

log$13:	; pop float x
x7896:	fstp qword [bp + 6]	; 3: -35 94 6

log$14:	; ++n
x7899:	inc word [bp + 14]	; 3: -1 70 14

log$15:	; goto 7
x7902:	jmp log$7	; 2: -21 -30

log$16:	; push float x
x7904:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 0.3690036900369003690036900369
x7907:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 -71 31

log$18:	; if x >= 0.3690036900369003690036900369 goto 28
x7911:	fcompp	; 2: -34 -39
x7913:	fstsw ax	; 3: -101 -33 -32
x7916:	sahf	; 1: -98
x7917:	jbe log$28	; 2: 118 32

log$19:	; push float x
x7919:	fld qword [bp + 6]	; 3: -35 70 6

log$20:	; push float 0.3690036900369003690036900369
x7922:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 -71 31

log$21:	; if x >= 0.3690036900369003690036900369 goto 28
x7926:	fcompp	; 2: -34 -39
x7928:	fstsw ax	; 3: -101 -33 -32
x7931:	sahf	; 1: -98
x7932:	jbe log$28	; 2: 118 17

log$22:	; push float x
x7934:	fld qword [bp + 6]	; 3: -35 70 6

log$23:	; push float 2.71
x7937:	fld qword [float8$2.71#]	; 4: -35 6 -79 31

log$24:	; £temporary536 = x * 2.71
x7941:	fmul	; 2: -34 -55

log$25:	; pop float x
x7943:	fstp qword [bp + 6]	; 3: -35 94 6

log$26:	; --n
x7946:	dec word [bp + 14]	; 3: -1 78 14

log$27:	; goto 19
x7949:	jmp log$19	; 2: -21 -32

log$28:	; push 1
x7951:	fld1	; 2: -39 -24

log$29:	; pop float index
x7953:	fstp qword [bp + 16]	; 3: -35 94 16

log$30:	; push 0
x7956:	fldz	; 2: -39 -18

log$31:	; pop float sum
x7958:	fstp qword [bp + 32]	; 3: -35 94 32

log$32:	; push 1
x7961:	fld1	; 2: -39 -24

log$33:	; pop float sign
x7963:	fstp qword [bp + 40]	; 3: -35 94 40

log$34:	; push float x
x7966:	fld qword [bp + 6]	; 3: -35 70 6

log$35:	; push 1
x7969:	fld1	; 2: -39 -24

log$36:	; £temporary538 = x - 1
x7971:	fsub	; 2: -34 -23

log$37:	; pop float x_minus_1
x7973:	fstp qword [bp + 48]	; 3: -35 94 48

log$38:	; push float x_minus_1
x7976:	fld qword [bp + 48]	; 3: -35 70 48

log$39:	; pop float power
x7979:	fstp qword [bp + 56]	; 3: -35 94 56

log$40:	; push float sign
x7982:	fld qword [bp + 40]	; 3: -35 70 40

log$41:	; push float power
x7985:	fld qword [bp + 56]	; 3: -35 70 56

log$42:	; £temporary539 = sign * power
x7988:	fmul	; 2: -34 -55

log$43:	; push float index
x7990:	fld qword [bp + 16]	; 3: -35 70 16

log$44:	; push 1
x7993:	fld1	; 2: -39 -24

log$45:	; index = index + 1
x7995:	fadd	; 2: -34 -63

log$46:	; top float index
x7997:	fst qword [bp + 16]	; 3: -35 86 16

log$47:	; push 1
x8000:	fld1	; 2: -39 -24

log$48:	; index = index - 1
x8002:	fsub	; 2: -34 -23

log$49:	; £temporary541 = £temporary539 / £temporary540
x8004:	fdiv	; 2: -34 -7

log$50:	; pop float term
x8006:	fstp qword [bp + 24]	; 3: -35 94 24

log$51:	; push float sum
x8009:	fld qword [bp + 32]	; 3: -35 70 32

log$52:	; push float term
x8012:	fld qword [bp + 24]	; 3: -35 70 24

log$53:	; £temporary542 = sum + term
x8015:	fadd	; 2: -34 -63

log$54:	; pop float sum
x8017:	fstp qword [bp + 32]	; 3: -35 94 32

log$55:	; push float power
x8020:	fld qword [bp + 56]	; 3: -35 70 56

log$56:	; push float x_minus_1
x8023:	fld qword [bp + 48]	; 3: -35 70 48

log$57:	; £temporary543 = power * x_minus_1
x8026:	fmul	; 2: -34 -55

log$58:	; pop float power
x8028:	fstp qword [bp + 56]	; 3: -35 94 56

log$59:	; push float sign
x8031:	fld qword [bp + 40]	; 3: -35 70 40

log$60:	; push float -1.0
x8034:	fld qword [float8$minus1.0#]	; 4: -35 6 -63 31

log$61:	; £temporary544 = sign * -1.0
x8038:	fmul	; 2: -34 -55

log$62:	; pop float sign
x8040:	fstp qword [bp + 40]	; 3: -35 94 40

log$63:	; call header integral zero 0 stack zero 0

log$64:	; push float term
x8043:	fld qword [bp + 24]	; 3: -35 70 24

log$65:	; parameter term, offset 6
x8046:	fstp qword [bp + 70]	; 3: -35 94 70

log$66:	; call function noellipse-noellipse fabs
x8049:	mov word [bp + 64], log$67	; 5: -57 70 64 127 31
x8054:	mov [bp + 66], bp	; 3: -119 110 66
x8057:	add bp, 64	; 3: -125 -59 64
x8060:	nop	; 1: -112
x8061:	jmp fabs	; 2: -21 82

log$67:	; post call

log$68:	; £temporary545 = return_value

log$69:	; push float 0.000000001
x8063:	fld qword [float8$0.000000001#]	; 4: -35 6 -55 31

log$70:	; if £temporary545 >= 0.000000001 goto 40
x8067:	fcompp	; 2: -34 -39
x8069:	fstsw ax	; 3: -101 -33 -32
x8072:	sahf	; 1: -98
x8073:	jbe log$40	; 2: 118 -93

log$71:	; push float sum
x8075:	fld qword [bp + 32]	; 3: -35 70 32

log$72:	; £temporary547 = int_to_float n (Signed_Int -> Double)
x8078:	fild word [bp + 14]	; 3: -33 70 14

log$73:	; £temporary548 = sum + £temporary547
x8081:	fadd	; 2: -34 -63

log$74:	; return_value = £temporary548

log$75:	; return
x8083:	mov ax, [bp]	; 3: -117 70 0
x8086:	mov di, [bp + 4]	; 3: -117 126 4
x8089:	mov bp, [bp + 2]	; 3: -117 110 2
x8092:	jmp ax	; 2: -1 -32

log$76:	; errno = 6
x8094:	mov word [errno], 6	; 6: -57 6 -97 30 6 0

log$77:	; push 0
x8100:	fldz	; 2: -39 -18

log$78:	; return_value = 0

log$79:	; return
x8102:	mov ax, [bp]	; 3: -117 70 0
x8105:	mov di, [bp + 4]	; 3: -117 126 4
x8108:	mov bp, [bp + 2]	; 3: -117 110 2
x8111:	jmp ax	; 2: -1 -32

log$80:	; function end log

float8$2.71#:
x8113:	dq 2.71	; 8: -82 71 -31 122 20 -82 5 64

float8$0.3690036900369003690036900369#:
x8121:	dq 0.3690036900369003690036900369	; 8: -86 -12 51 -89 -63 -99 -41 63

float8$minus1.0#:
x8129:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x8137:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

fabs:	; push float x
x8145:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x8148:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x8150:	fcompp	; 2: -34 -39
x8152:	fstsw ax	; 3: -101 -33 -32
x8155:	sahf	; 1: -98
x8156:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x8158:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary829 = -x
x8161:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x8163:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x8165:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary833

fabs$9:	; return
x8168:	mov ax, [bp]	; 3: -117 70 0
x8171:	mov di, [bp + 4]	; 3: -117 126 4
x8174:	mov bp, [bp + 2]	; 3: -117 110 2
x8177:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

exp:	; push 1
x8179:	fld1	; 2: -39 -24

exp$1:	; pop float index
x8181:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x8184:	fld1	; 2: -39 -24

exp$3:	; pop float sum
x8186:	fstp qword [bp + 30]	; 3: -35 94 30

exp$4:	; push 1
x8189:	fld1	; 2: -39 -24

exp$5:	; pop float faculty
x8191:	fstp qword [bp + 38]	; 3: -35 94 38

exp$6:	; push float x
x8194:	fld qword [bp + 6]	; 3: -35 70 6

exp$7:	; pop float power
x8197:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x8200:	fld qword [bp + 46]	; 3: -35 70 46

exp$9:	; push float faculty
x8203:	fld qword [bp + 38]	; 3: -35 70 38

exp$10:	; £temporary521 = power / faculty
x8206:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x8208:	fstp qword [bp + 22]	; 3: -35 94 22

exp$12:	; push float sum
x8211:	fld qword [bp + 30]	; 3: -35 70 30

exp$13:	; push float term
x8214:	fld qword [bp + 22]	; 3: -35 70 22

exp$14:	; £temporary522 = sum + term
x8217:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x8219:	fstp qword [bp + 30]	; 3: -35 94 30

exp$16:	; push float power
x8222:	fld qword [bp + 46]	; 3: -35 70 46

exp$17:	; push float x
x8225:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary523 = power * x
x8228:	fmul	; 2: -34 -55

exp$19:	; pop float power
x8230:	fstp qword [bp + 46]	; 3: -35 94 46

exp$20:	; push float faculty
x8233:	fld qword [bp + 38]	; 3: -35 70 38

exp$21:	; push float index
x8236:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x8239:	fld1	; 2: -39 -24

exp$23:	; index = index + 1
x8241:	fadd	; 2: -34 -63

exp$24:	; top float index
x8243:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary525 = faculty * £temporary524
x8246:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x8248:	fstp qword [bp + 38]	; 3: -35 94 38

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x8251:	fld qword [bp + 22]	; 3: -35 70 22

exp$29:	; parameter term, offset 6
x8254:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x8257:	mov word [bp + 54], exp$31	; 5: -57 70 54 79 32
x8262:	mov [bp + 56], bp	; 3: -119 110 56
x8265:	add bp, 54	; 3: -125 -59 54
x8268:	nop	; 1: -112
x8269:	jmp fabs	; 2: -21 -126

exp$31:	; post call

exp$32:	; £temporary526 = return_value

exp$33:	; push float 0.000000001
x8271:	fld qword [float8$0.000000001#]	; 4: -35 6 -55 31

exp$34:	; if £temporary526 >= 0.000000001 goto 8
x8275:	fcompp	; 2: -34 -39
x8277:	fstsw ax	; 3: -101 -33 -32
x8280:	sahf	; 1: -98
x8281:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x8283:	fld qword [bp + 30]	; 3: -35 70 30

exp$36:	; return_value = sum

exp$37:	; return
x8286:	mov ax, [bp]	; 3: -117 70 0
x8289:	mov di, [bp + 4]	; 3: -117 126 4
x8292:	mov bp, [bp + 2]	; 3: -117 110 2
x8295:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

floor:	; push float x
x8297:	fld qword [bp + 6]	; 3: -35 70 6

floor$1:	; push 0
x8300:	fldz	; 2: -39 -18

floor$2:	; if x >= 0 goto 13
x8302:	fcompp	; 2: -34 -39
x8304:	fstsw ax	; 3: -101 -33 -32
x8307:	sahf	; 1: -98
x8308:	jbe floor$13	; 2: 118 35

floor$3:	; call header integral zero 0 stack zero 0

floor$4:	; push float x
x8310:	fld qword [bp + 6]	; 3: -35 70 6

floor$5:	; £temporary805 = -x
x8313:	fchs	; 2: -39 -32

floor$6:	; parameter £temporary805, offset 6
x8315:	fstp qword [bp + 20]	; 3: -35 94 20

floor$7:	; call function noellipse-noellipse ceil
x8318:	mov word [bp + 14], floor$8	; 5: -57 70 14 -116 32
x8323:	mov [bp + 16], bp	; 3: -119 110 16
x8326:	add bp, 14	; 3: -125 -59 14
x8329:	nop	; 1: -112
x8330:	jmp ceil	; 2: -21 43

floor$8:	; post call

floor$9:	; £temporary806 = return_value

floor$10:	; £temporary807 = -£temporary806
x8332:	fchs	; 2: -39 -32

floor$11:	; return_value = £temporary807

floor$12:	; return
x8334:	mov ax, [bp]	; 3: -117 70 0
x8337:	mov di, [bp + 4]	; 3: -117 126 4
x8340:	mov bp, [bp + 2]	; 3: -117 110 2
x8343:	jmp ax	; 2: -1 -32

floor$13:	; push float x
x8345:	fld qword [bp + 6]	; 3: -35 70 6

floor$14:	; £temporary808 = float_to_int x (Double -> Signed_Long_Int)
x8348:	fistp dword [container4bytes#]	; 4: -37 30 -14 28
x8352:	mov eax, [container4bytes#]	; 4: 102 -95 -14 28

floor$15:	; £temporary809 = int_to_float £temporary808 (Signed_Long_Int -> Double)
x8356:	mov [container4bytes#], eax	; 4: 102 -93 -14 28
x8360:	fild dword [container4bytes#]	; 4: -37 6 -14 28

floor$16:	; return_value = £temporary809

floor$17:	; return
x8364:	mov ax, [bp]	; 3: -117 70 0
x8367:	mov di, [bp + 4]	; 3: -117 126 4
x8370:	mov bp, [bp + 2]	; 3: -117 110 2
x8373:	jmp ax	; 2: -1 -32

floor$18:	; function end floor

ceil:	; push float x
x8375:	fld qword [bp + 6]	; 3: -35 70 6

ceil$1:	; push 0
x8378:	fldz	; 2: -39 -18

ceil$2:	; if x >= 0 goto 13
x8380:	fcompp	; 2: -34 -39
x8382:	fstsw ax	; 3: -101 -33 -32
x8385:	sahf	; 1: -98
x8386:	jbe ceil$13	; 2: 118 35

ceil$3:	; call header integral zero 0 stack zero 0

ceil$4:	; push float x
x8388:	fld qword [bp + 6]	; 3: -35 70 6

ceil$5:	; £temporary812 = -x
x8391:	fchs	; 2: -39 -32

ceil$6:	; parameter £temporary812, offset 6
x8393:	fstp qword [bp + 20]	; 3: -35 94 20

ceil$7:	; call function noellipse-noellipse floor
x8396:	mov word [bp + 14], ceil$8	; 5: -57 70 14 -38 32
x8401:	mov [bp + 16], bp	; 3: -119 110 16
x8404:	add bp, 14	; 3: -125 -59 14
x8407:	nop	; 1: -112
x8408:	jmp floor	; 2: -21 -113

ceil$8:	; post call

ceil$9:	; £temporary813 = return_value

ceil$10:	; £temporary814 = -£temporary813
x8410:	fchs	; 2: -39 -32

ceil$11:	; return_value = £temporary814

ceil$12:	; return
x8412:	mov ax, [bp]	; 3: -117 70 0
x8415:	mov di, [bp + 4]	; 3: -117 126 4
x8418:	mov bp, [bp + 2]	; 3: -117 110 2
x8421:	jmp ax	; 2: -1 -32

ceil$13:	; push float x
x8423:	fld qword [bp + 6]	; 3: -35 70 6

ceil$14:	; push float 0.999999999999
x8426:	fld qword [float8$0.999999999999#]	; 4: -35 6 11 33

ceil$15:	; £temporary815 = x + 0.999999999999
x8430:	fadd	; 2: -34 -63

ceil$16:	; £temporary816 = float_to_int £temporary815 (Double -> Signed_Long_Int)
x8432:	fistp dword [container4bytes#]	; 4: -37 30 -14 28
x8436:	mov eax, [container4bytes#]	; 4: 102 -95 -14 28

ceil$17:	; £temporary817 = int_to_float £temporary816 (Signed_Long_Int -> Double)
x8440:	mov [container4bytes#], eax	; 4: 102 -93 -14 28
x8444:	fild dword [container4bytes#]	; 4: -37 6 -14 28

ceil$18:	; return_value = £temporary817

ceil$19:	; return
x8448:	mov ax, [bp]	; 3: -117 70 0
x8451:	mov di, [bp + 4]	; 3: -117 126 4
x8454:	mov bp, [bp + 2]	; 3: -117 110 2
x8457:	jmp ax	; 2: -1 -32

ceil$20:	; function end ceil

float8$0.999999999999#:
x8459:	dq 0.999999999999	; 8: -47 -36 -1 -1 -1 -1 -17 63

scanPattern:	; index = 0
x8467:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanPattern$1:	; call header integral zero 0 stack zero 0

scanPattern$2:	; call function noellipse-noellipse scanChar
x8472:	mov word [bp + 14], scanPattern$3	; 5: -57 70 14 38 33
x8477:	mov [bp + 16], bp	; 3: -119 110 16
x8480:	add bp, 14	; 3: -125 -59 14
x8483:	jmp scanChar	; 3: -23 73 -20

scanPattern$3:	; post call

scanPattern$4:	; £temporary1250 = return_value

scanPattern$5:	; input = £temporary1250
x8486:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$6:	; call header integral zero 0 stack zero 0

scanPattern$7:	; £temporary1251 = int_to_int input (Signed_Char -> Signed_Int)
x8489:	mov al, [bp + 14]	; 3: -118 70 14
x8492:	and ax, 255	; 3: 37 -1 0
x8495:	cmp al, 0	; 2: 60 0
x8497:	jge scanPattern$8	; 2: 125 4
x8499:	neg al	; 2: -10 -40
x8501:	neg ax	; 2: -9 -40

scanPattern$8:	; parameter £temporary1251, offset 6
x8503:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$9:	; call function noellipse-noellipse isspace
x8506:	mov word [bp + 15], scanPattern$10	; 5: -57 70 15 72 33
x8511:	mov [bp + 17], bp	; 3: -119 110 17
x8514:	add bp, 15	; 3: -125 -59 15
x8517:	jmp isspace	; 3: -23 -29 -18

scanPattern$10:	; post call

scanPattern$11:	; £temporary1252 = return_value

scanPattern$12:	; if £temporary1252 == 0 goto 19
x8520:	cmp bx, 0	; 3: -125 -5 0
x8523:	je scanPattern$19	; 2: 116 19

scanPattern$13:	; call header integral zero 0 stack zero 0

scanPattern$14:	; call function noellipse-noellipse scanChar
x8525:	mov word [bp + 15], scanPattern$15	; 5: -57 70 15 91 33
x8530:	mov [bp + 17], bp	; 3: -119 110 17
x8533:	add bp, 15	; 3: -125 -59 15
x8536:	jmp scanChar	; 3: -23 20 -20

scanPattern$15:	; post call

scanPattern$16:	; £temporary1253 = return_value

scanPattern$17:	; input = £temporary1253
x8539:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$18:	; goto 6
x8542:	jmp scanPattern$6	; 2: -21 -55

scanPattern$19:	; if string == 0 goto 53
x8544:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x8548:	je scanPattern$53	; 4: 15 -124 -113 0

scanPattern$20:	; if not != 0 goto 29
x8552:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x8556:	jne scanPattern$29	; 2: 117 42

scanPattern$21:	; call header integral zero 0 stack zero 0

scanPattern$22:	; parameter pattern, offset 6
x8558:	mov ax, [bp + 8]	; 3: -117 70 8
x8561:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$23:	; £temporary1258 = int_to_int input (Signed_Char -> Signed_Int)
x8564:	mov al, [bp + 14]	; 3: -118 70 14
x8567:	and ax, 255	; 3: 37 -1 0
x8570:	cmp al, 0	; 2: 60 0
x8572:	jge scanPattern$24	; 2: 125 4
x8574:	neg al	; 2: -10 -40
x8576:	neg ax	; 2: -9 -40

scanPattern$24:	; parameter £temporary1258, offset 8
x8578:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$25:	; call function noellipse-noellipse strchr
x8581:	mov word [bp + 15], scanPattern$26	; 5: -57 70 15 -109 33
x8586:	mov [bp + 17], bp	; 3: -119 110 17
x8589:	add bp, 15	; 3: -125 -59 15
x8592:	jmp strchr	; 3: -23 -46 -12

scanPattern$26:	; post call

scanPattern$27:	; £temporary1259 = return_value

scanPattern$28:	; if £temporary1259 != 0 goto 38
x8595:	cmp bx, 0	; 3: -125 -5 0
x8598:	jne scanPattern$38	; 2: 117 48

scanPattern$29:	; if not == 0 goto 49
x8600:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x8604:	je scanPattern$49	; 2: 116 78

scanPattern$30:	; call header integral zero 0 stack zero 0

scanPattern$31:	; parameter pattern, offset 6
x8606:	mov ax, [bp + 8]	; 3: -117 70 8
x8609:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$32:	; £temporary1262 = int_to_int input (Signed_Char -> Signed_Int)
x8612:	mov al, [bp + 14]	; 3: -118 70 14
x8615:	and ax, 255	; 3: 37 -1 0
x8618:	cmp al, 0	; 2: 60 0
x8620:	jge scanPattern$33	; 2: 125 4
x8622:	neg al	; 2: -10 -40
x8624:	neg ax	; 2: -9 -40

scanPattern$33:	; parameter £temporary1262, offset 8
x8626:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$34:	; call function noellipse-noellipse strchr
x8629:	mov word [bp + 15], scanPattern$35	; 5: -57 70 15 -61 33
x8634:	mov [bp + 17], bp	; 3: -119 110 17
x8637:	add bp, 15	; 3: -125 -59 15
x8640:	jmp strchr	; 3: -23 -94 -12

scanPattern$35:	; post call

scanPattern$36:	; £temporary1263 = return_value

scanPattern$37:	; if £temporary1263 != 0 goto 49
x8643:	cmp bx, 0	; 3: -125 -5 0
x8646:	jne scanPattern$49	; 2: 117 36

scanPattern$38:	; £temporary1269 = index
x8648:	mov ax, [bp + 12]	; 3: -117 70 12

scanPattern$39:	; ++index
x8651:	inc word [bp + 12]	; 3: -1 70 12

scanPattern$40:	; £temporary1271 = string + £temporary1269
x8654:	mov si, [bp + 6]	; 3: -117 118 6
x8657:	add si, ax	; 2: 1 -58

scanPattern$41:	; £temporary1270 -> £temporary1271 = *£temporary1271

scanPattern$42:	; £temporary1270 -> £temporary1271 = input
x8659:	mov al, [bp + 14]	; 3: -118 70 14
x8662:	mov [si], al	; 2: -120 4

scanPattern$43:	; call header integral zero 0 stack zero 0

scanPattern$44:	; call function noellipse-noellipse scanChar
x8664:	mov word [bp + 15], scanPattern$45	; 5: -57 70 15 -26 33
x8669:	mov [bp + 17], bp	; 3: -119 110 17
x8672:	add bp, 15	; 3: -125 -59 15
x8675:	jmp scanChar	; 3: -23 -119 -21

scanPattern$45:	; post call

scanPattern$46:	; £temporary1272 = return_value

scanPattern$47:	; input = £temporary1272
x8678:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$48:	; goto 20
x8681:	jmp scanPattern$20	; 3: -23 124 -1

scanPattern$49:	; £temporary1274 = string + index
x8684:	mov si, [bp + 6]	; 3: -117 118 6
x8687:	add si, [bp + 12]	; 3: 3 118 12

scanPattern$50:	; £temporary1273 -> £temporary1274 = *£temporary1274

scanPattern$51:	; £temporary1273 -> £temporary1274 = 0
x8690:	mov byte [si], 0	; 3: -58 4 0

scanPattern$52:	; goto 77
x8693:	jmp scanPattern$77	; 2: -21 115

scanPattern$53:	; if not != 0 goto 62
x8695:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x8699:	jne scanPattern$62	; 2: 117 42

scanPattern$54:	; call header integral zero 0 stack zero 0

scanPattern$55:	; parameter pattern, offset 6
x8701:	mov ax, [bp + 8]	; 3: -117 70 8
x8704:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$56:	; £temporary1277 = int_to_int input (Signed_Char -> Signed_Int)
x8707:	mov al, [bp + 14]	; 3: -118 70 14
x8710:	and ax, 255	; 3: 37 -1 0
x8713:	cmp al, 0	; 2: 60 0
x8715:	jge scanPattern$57	; 2: 125 4
x8717:	neg al	; 2: -10 -40
x8719:	neg ax	; 2: -9 -40

scanPattern$57:	; parameter £temporary1277, offset 8
x8721:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$58:	; call function noellipse-noellipse strchr
x8724:	mov word [bp + 15], scanPattern$59	; 5: -57 70 15 34 34
x8729:	mov [bp + 17], bp	; 3: -119 110 17
x8732:	add bp, 15	; 3: -125 -59 15
x8735:	jmp strchr	; 3: -23 67 -12

scanPattern$59:	; post call

scanPattern$60:	; £temporary1278 = return_value

scanPattern$61:	; if £temporary1278 != 0 goto 71
x8738:	cmp bx, 0	; 3: -125 -5 0
x8741:	jne scanPattern$71	; 2: 117 48

scanPattern$62:	; if not == 0 goto 77
x8743:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x8747:	je scanPattern$77	; 2: 116 61

scanPattern$63:	; call header integral zero 0 stack zero 0

scanPattern$64:	; parameter pattern, offset 6
x8749:	mov ax, [bp + 8]	; 3: -117 70 8
x8752:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$65:	; £temporary1281 = int_to_int input (Signed_Char -> Signed_Int)
x8755:	mov al, [bp + 14]	; 3: -118 70 14
x8758:	and ax, 255	; 3: 37 -1 0
x8761:	cmp al, 0	; 2: 60 0
x8763:	jge scanPattern$66	; 2: 125 4
x8765:	neg al	; 2: -10 -40
x8767:	neg ax	; 2: -9 -40

scanPattern$66:	; parameter £temporary1281, offset 8
x8769:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$67:	; call function noellipse-noellipse strchr
x8772:	mov word [bp + 15], scanPattern$68	; 5: -57 70 15 82 34
x8777:	mov [bp + 17], bp	; 3: -119 110 17
x8780:	add bp, 15	; 3: -125 -59 15
x8783:	jmp strchr	; 3: -23 19 -12

scanPattern$68:	; post call

scanPattern$69:	; £temporary1282 = return_value

scanPattern$70:	; if £temporary1282 != 0 goto 77
x8786:	cmp bx, 0	; 3: -125 -5 0
x8789:	jne scanPattern$77	; 2: 117 19

scanPattern$71:	; call header integral zero 0 stack zero 0

scanPattern$72:	; call function noellipse-noellipse scanChar
x8791:	mov word [bp + 15], scanPattern$73	; 5: -57 70 15 101 34
x8796:	mov [bp + 17], bp	; 3: -119 110 17
x8799:	add bp, 15	; 3: -125 -59 15
x8802:	jmp scanChar	; 3: -23 10 -21

scanPattern$73:	; post call

scanPattern$74:	; £temporary1288 = return_value

scanPattern$75:	; input = £temporary1288
x8805:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$76:	; goto 53
x8808:	jmp scanPattern$53	; 2: -21 -115

scanPattern$77:	; return
x8810:	mov ax, [bp]	; 3: -117 70 0
x8813:	mov di, [bp + 4]	; 3: -117 126 4
x8816:	mov bp, [bp + 2]	; 3: -117 110 2
x8819:	jmp ax	; 2: -1 -32

scanPattern$78:	; function end scanPattern

printf:	; £temporary2381 = &format
x8821:	mov si, bp	; 2: -119 -18
x8823:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2382 = int_to_int £temporary2381 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2382 + 2
x8826:	add si, 2	; 3: -125 -58 2
x8829:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; call header integral zero 0 stack zero 0

printf$4:	; parameter format, offset 6
x8832:	mov ax, [bp + 6]	; 3: -117 70 6
x8835:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; parameter arg_list, offset 8
x8838:	mov ax, [di + 8]	; 3: -117 69 8
x8841:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; call function ellipse-noellipse vprintf
x8844:	mov word [di + 10], printf$7	; 5: -57 69 10 -97 34
x8849:	mov [di + 12], bp	; 3: -119 109 12
x8852:	mov [di + 14], di	; 3: -119 125 14
x8855:	add di, 10	; 3: -125 -57 10
x8858:	mov bp, di	; 2: -119 -3
x8860:	nop	; 1: -112
x8861:	jmp vprintf	; 2: -21 11

printf$7:	; post call

printf$8:	; £temporary2384 = return_value

printf$9:	; return_value = £temporary2384

printf$10:	; return
x8863:	mov ax, [bp]	; 3: -117 70 0
x8866:	mov di, [bp + 4]	; 3: -117 126 4
x8869:	mov bp, [bp + 2]	; 3: -117 110 2
x8872:	jmp ax	; 2: -1 -32

printf$11:	; function end printf

vprintf:	; call header integral zero 0 stack zero 0

vprintf$1:	; parameter stdout, offset 6
x8874:	mov ax, [stdout]	; 3: -95 -43 34
x8877:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; parameter format, offset 8
x8880:	mov ax, [bp + 6]	; 3: -117 70 6
x8883:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; parameter arg_list, offset 10
x8886:	mov ax, [bp + 8]	; 3: -117 70 8
x8889:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; call function noellipse-noellipse vfprintf
x8892:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 -54 34
x8897:	mov [bp + 12], bp	; 3: -119 110 12
x8900:	add bp, 10	; 3: -125 -59 10
x8903:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; post call

vprintf$6:	; £temporary2388 = return_value

vprintf$7:	; return_value = £temporary2388

vprintf$8:	; return
x8906:	mov ax, [bp]	; 3: -117 70 0
x8909:	mov di, [bp + 4]	; 3: -117 126 4
x8912:	mov bp, [bp + 2]	; 3: -117 110 2
x8915:	jmp ax	; 2: -1 -32

vprintf$9:	; function end vprintf

stdout:
x8917:	dw g_fileArray + 29	; 2: -12 34

g_fileArray:
x8919:	dw 1	; 2: 1 0
x8921:	dw 0	; 2: 0 0
x8923:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x8948:	dw 1	; 2: 1 0
x8950:	dw 1	; 2: 1 0
x8952:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x8977:	dw 1	; 2: 1 0
x8979:	dw 2	; 2: 2 0
x8981:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x9006:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

vfprintf:	; g_outStatus = 0
x9499:	mov word [g_outStatus], 0	; 6: -57 6 76 37 0 0

vfprintf$1:	; £temporary2400 = int_to_int outStream (Pointer -> Pointer)
x9505:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2400
x9508:	mov [g_outDevice], ax	; 3: -93 78 37

vfprintf$3:	; call header integral zero 0 stack zero 0

vfprintf$4:	; parameter format, offset 6
x9511:	mov ax, [bp + 8]	; 3: -117 70 8
x9514:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; parameter arg_list, offset 8
x9517:	mov ax, [bp + 10]	; 3: -117 70 10
x9520:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; call function noellipse-noellipse printFormat
x9523:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 65 37
x9528:	mov [bp + 14], bp	; 3: -119 110 14
x9531:	add bp, 12	; 3: -125 -59 12
x9534:	nop	; 1: -112
x9535:	jmp printFormat	; 2: -21 15

vfprintf$7:	; post call

vfprintf$8:	; £temporary2401 = return_value

vfprintf$9:	; return_value = £temporary2401

vfprintf$10:	; return
x9537:	mov ax, [bp]	; 3: -117 70 0
x9540:	mov di, [bp + 4]	; 3: -117 126 4
x9543:	mov bp, [bp + 2]	; 3: -117 110 2
x9546:	jmp ax	; 2: -1 -32

vfprintf$11:	; function end vfprintf

g_outStatus:
x9548:	db 0, 0	; 2: 0 0

g_outDevice:
x9550:	db 0, 0	; 2: 0 0

printFormat:	; width = 0
x9552:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; precision = 0
x9557:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; percent = 0
x9562:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; plus = 0
x9567:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; minus = 0
x9572:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; space = 0
x9577:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; zero = 0
x9582:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; grid = 0
x9587:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; widthStar = 0
x9592:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; period = 0
x9597:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; precisionStar = 0
x9602:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; shortInt = 0
x9607:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; longInt = 0
x9612:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; longDouble = 0
x9617:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; g_outChars = 0
x9622:	mov word [g_outChars], 0	; 6: -57 6 -78 42 0 0

printFormat$15:	; index = 0
x9628:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2233 = format + index
x9633:	mov si, [bp + 6]	; 3: -117 118 6
x9636:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2232 -> £temporary2233 = *£temporary2233

printFormat$18:	; if £temporary2232 -> £temporary2233 == 0 goto 286
x9639:	cmp byte [si], 0	; 3: -128 60 0
x9642:	je printFormat$286	; 4: 15 -124 -34 4

printFormat$19:	; £temporary2237 = format + index
x9646:	mov si, [bp + 6]	; 3: -117 118 6
x9649:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2236 -> £temporary2237 = *£temporary2237

printFormat$21:	; c = £temporary2236 -> £temporary2237
x9652:	mov al, [si]	; 2: -118 4
x9654:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 264
x9657:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x9661:	je printFormat$264	; 4: 15 -124 99 4

printFormat$23:	; case c == 43 goto 52
x9665:	mov al, [bp + 40]	; 3: -118 70 40
x9668:	cmp al, 43	; 2: 60 43
x9670:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; case c == 45 goto 54
x9674:	cmp al, 45	; 2: 60 45
x9676:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; case c == 32 goto 56
x9680:	cmp al, 32	; 2: 60 32
x9682:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; case c == 48 goto 58
x9686:	cmp al, 48	; 2: 60 48
x9688:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; case c == 35 goto 60
x9692:	cmp al, 35	; 2: 60 35
x9694:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; case c == 46 goto 62
x9698:	cmp al, 46	; 2: 60 46
x9700:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; case c == 42 goto 64
x9704:	cmp al, 42	; 2: 60 42
x9706:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; case c == 104 goto 69
x9710:	cmp al, 104	; 2: 60 104
x9712:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; case c == 108 goto 71
x9716:	cmp al, 108	; 2: 60 108
x9718:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; case c == 76 goto 73
x9722:	cmp al, 76	; 2: 60 76
x9724:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; case c == 37 goto 75
x9728:	cmp al, 37	; 2: 60 37
x9730:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; case c == 110 goto 75
x9734:	cmp al, 110	; 2: 60 110
x9736:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; case c == 112 goto 75
x9740:	cmp al, 112	; 2: 60 112
x9742:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; case c == 71 goto 75
x9746:	cmp al, 71	; 2: 60 71
x9748:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; case c == 103 goto 75
x9752:	cmp al, 103	; 2: 60 103
x9754:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; case c == 69 goto 75
x9758:	cmp al, 69	; 2: 60 69
x9760:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; case c == 101 goto 75
x9764:	cmp al, 101	; 2: 60 101
x9766:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; case c == 102 goto 75
x9770:	cmp al, 102	; 2: 60 102
x9772:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; case c == 115 goto 75
x9776:	cmp al, 115	; 2: 60 115
x9778:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; case c == 99 goto 75
x9782:	cmp al, 99	; 2: 60 99
x9784:	je printFormat$75	; 2: 116 125

printFormat$43:	; case c == 88 goto 75
x9786:	cmp al, 88	; 2: 60 88
x9788:	je printFormat$75	; 2: 116 121

printFormat$44:	; case c == 120 goto 75
x9790:	cmp al, 120	; 2: 60 120
x9792:	je printFormat$75	; 2: 116 117

printFormat$45:	; case c == 111 goto 75
x9794:	cmp al, 111	; 2: 60 111
x9796:	je printFormat$75	; 2: 116 113

printFormat$46:	; case c == 98 goto 75
x9798:	cmp al, 98	; 2: 60 98
x9800:	je printFormat$75	; 2: 116 109

printFormat$47:	; case c == 117 goto 75
x9802:	cmp al, 117	; 2: 60 117
x9804:	je printFormat$75	; 2: 116 105

printFormat$48:	; case c == 100 goto 75
x9806:	cmp al, 100	; 2: 60 100
x9808:	je printFormat$75	; 2: 116 101

printFormat$49:	; case c == 105 goto 75
x9810:	cmp al, 105	; 2: 60 105
x9812:	je printFormat$75	; 2: 116 97

printFormat$50:	; case end c

printFormat$51:	; goto 241
x9814:	jmp printFormat$241	; 3: -23 88 3

printFormat$52:	; plus = 1
x9817:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 284
x9822:	jmp printFormat$284	; 3: -23 37 4

printFormat$54:	; minus = 1
x9825:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 284
x9830:	jmp printFormat$284	; 3: -23 29 4

printFormat$56:	; space = 1
x9833:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 284
x9838:	jmp printFormat$284	; 3: -23 21 4

printFormat$58:	; zero = 1
x9841:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 284
x9846:	jmp printFormat$284	; 3: -23 13 4

printFormat$60:	; grid = 1
x9849:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 284
x9854:	jmp printFormat$284	; 3: -23 5 4

printFormat$62:	; period = 1
x9857:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 284
x9862:	jmp printFormat$284	; 3: -23 -3 3

printFormat$64:	; if period != 0 goto 67
x9865:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x9869:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x9871:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 284
x9876:	jmp printFormat$284	; 3: -23 -17 3

printFormat$67:	; precision = -1
x9879:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 284
x9884:	jmp printFormat$284	; 3: -23 -25 3

printFormat$69:	; shortInt = 1
x9887:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 284
x9892:	jmp printFormat$284	; 3: -23 -33 3

printFormat$71:	; longInt = 1
x9895:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 284
x9900:	jmp printFormat$284	; 3: -23 -41 3

printFormat$73:	; longDouble = 1
x9903:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 284
x9908:	jmp printFormat$284	; 3: -23 -49 3

printFormat$75:	; if minus == 0 goto 106
x9911:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x9915:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x9919:	mov ax, [g_outChars]	; 3: -95 -78 42
x9922:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; call header integral zero 0 stack zero 0

printFormat$78:	; £temporary2241 = format + index
x9925:	mov si, [bp + 6]	; 3: -117 118 6
x9928:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2240 -> £temporary2241 = *£temporary2241

printFormat$80:	; £temporary2242 = &£temporary2240 -> £temporary2241

printFormat$81:	; parameter £temporary2242, offset 6
x9931:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; parameter arg_list, offset 8
x9934:	mov ax, [bp + 8]	; 3: -117 70 8
x9937:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; parameter plus, offset 10
x9940:	mov ax, [bp + 18]	; 3: -117 70 18
x9943:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; parameter space, offset 12
x9946:	mov ax, [bp + 22]	; 3: -117 70 22
x9949:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; parameter grid, offset 14
x9952:	mov ax, [bp + 26]	; 3: -117 70 26
x9955:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; £temporary2243 = &width
x9958:	mov si, bp	; 2: -119 -18
x9960:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2243, offset 16
x9963:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; parameter precision, offset 18
x9966:	mov ax, [bp + 14]	; 3: -117 70 14
x9969:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; parameter shortInt, offset 20
x9972:	mov ax, [bp + 34]	; 3: -117 70 34
x9975:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; parameter longInt, offset 22
x9978:	mov ax, [bp + 36]	; 3: -117 70 36
x9981:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; parameter longDouble, offset 24
x9984:	mov ax, [bp + 38]	; 3: -117 70 38
x9987:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; parameter 1, offset 26
x9990:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; parameter 0, offset 28
x9995:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; call function noellipse-noellipse printArgument
x10000:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 30 39
x10005:	mov [bp + 45], bp	; 3: -119 110 45
x10008:	add bp, 43	; 3: -125 -59 43
x10011:	jmp printArgument	; 3: -23 -104 3

printFormat$95:	; post call

printFormat$96:	; £temporary2244 = return_value

printFormat$97:	; arg_list = £temporary2244
x10014:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2246 = g_outChars - startChars
x10017:	mov ax, [g_outChars]	; 3: -95 -78 42
x10020:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x10023:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2246 >= width goto 239
x10026:	cmp ax, [bp + 12]	; 3: 59 70 12
x10029:	jge printFormat$239	; 4: 15 -115 120 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x10033:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x10037:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 67 39
x10042:	mov [bp + 47], bp	; 3: -119 110 47
x10045:	add bp, 45	; 3: -125 -59 45
x10048:	jmp printChar	; 3: -23 -124 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x10051:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 186
x10053:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x10057:	je printFormat$186	; 4: 15 -124 100 1

printFormat$107:	; startChars = g_outChars
x10061:	mov ax, [g_outChars]	; 3: -95 -78 42
x10064:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$108:	; oldOutStatus = g_outStatus
x10067:	mov ax, [g_outStatus]	; 3: -95 76 37
x10070:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$109:	; negative = 0
x10073:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$110:	; g_outStatus = 2
x10078:	mov word [g_outStatus], 2	; 6: -57 6 76 37 2 0

printFormat$111:	; call header integral zero 0 stack zero 0

printFormat$112:	; £temporary2250 = format + index
x10084:	mov si, [bp + 6]	; 3: -117 118 6
x10087:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2249 -> £temporary2250 = *£temporary2250

printFormat$114:	; £temporary2251 = &£temporary2249 -> £temporary2250

printFormat$115:	; parameter £temporary2251, offset 6
x10090:	mov [bp + 53], si	; 3: -119 118 53

printFormat$116:	; parameter arg_list, offset 8
x10093:	mov ax, [bp + 8]	; 3: -117 70 8
x10096:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$117:	; parameter 0, offset 10
x10099:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$118:	; parameter 0, offset 12
x10104:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$119:	; parameter grid, offset 14
x10109:	mov ax, [bp + 26]	; 3: -117 70 26
x10112:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$120:	; £temporary2252 = &width
x10115:	mov si, bp	; 2: -119 -18
x10117:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2252, offset 16
x10120:	mov [bp + 63], si	; 3: -119 118 63

printFormat$122:	; parameter precision, offset 18
x10123:	mov ax, [bp + 14]	; 3: -117 70 14
x10126:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$123:	; parameter shortInt, offset 20
x10129:	mov ax, [bp + 34]	; 3: -117 70 34
x10132:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$124:	; parameter longInt, offset 22
x10135:	mov ax, [bp + 36]	; 3: -117 70 36
x10138:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$125:	; parameter longDouble, offset 24
x10141:	mov ax, [bp + 38]	; 3: -117 70 38
x10144:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$126:	; parameter 0, offset 26
x10147:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$127:	; £temporary2253 = &negative
x10152:	mov si, bp	; 2: -119 -18
x10154:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2253, offset 28
x10157:	mov [bp + 75], si	; 3: -119 118 75

printFormat$129:	; call function noellipse-noellipse printArgument
x10160:	mov word [bp + 47], printFormat$130	; 5: -57 70 47 -66 39
x10165:	mov [bp + 49], bp	; 3: -119 110 49
x10168:	add bp, 47	; 3: -125 -59 47
x10171:	jmp printArgument	; 3: -23 -8 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x10174:	mov ax, [bp + 43]	; 3: -117 70 43
x10177:	mov [g_outStatus], ax	; 3: -93 76 37

printFormat$132:	; field = g_outChars - startChars
x10180:	mov ax, [g_outChars]	; 3: -95 -78 42
x10183:	sub ax, [bp + 41]	; 3: 43 70 41
x10186:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x10189:	mov ax, [bp + 41]	; 3: -117 70 41
x10192:	mov [g_outChars], ax	; 3: -93 -78 42

printFormat$134:	; if negative == 0 goto 145
x10195:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x10199:	je printFormat$145	; 2: 116 41

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 88, offset 6
x10201:	mov byte [bp + 55], 88	; 4: -58 70 55 88

printFormat$137:	; call function noellipse-noellipse printChar
x10205:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 -21 39
x10210:	mov [bp + 51], bp	; 3: -119 110 51
x10213:	add bp, 49	; 3: -125 -59 49
x10216:	jmp printChar	; 3: -23 -36 9

printFormat$138:	; post call

printFormat$139:	; call header integral zero 0 stack zero 0

printFormat$140:	; parameter 45, offset 6
x10219:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$141:	; call function noellipse-noellipse printChar
x10223:	mov word [bp + 49], printFormat$142	; 5: -57 70 49 -3 39
x10228:	mov [bp + 51], bp	; 3: -119 110 51
x10231:	add bp, 49	; 3: -125 -59 49
x10234:	jmp printChar	; 3: -23 -54 9

printFormat$142:	; post call

printFormat$143:	; ++field
x10237:	inc word [bp + 47]	; 3: -1 70 47

printFormat$144:	; goto 158
x10240:	jmp printFormat$158	; 2: -21 57

printFormat$145:	; if plus == 0 goto 152
x10242:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x10246:	je printFormat$152	; 2: 116 23

printFormat$146:	; call header integral zero 0 stack zero 0

printFormat$147:	; parameter 43, offset 6
x10248:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$148:	; call function noellipse-noellipse printChar
x10252:	mov word [bp + 49], printFormat$149	; 5: -57 70 49 26 40
x10257:	mov [bp + 51], bp	; 3: -119 110 51
x10260:	add bp, 49	; 3: -125 -59 49
x10263:	jmp printChar	; 3: -23 -83 9

printFormat$149:	; post call

printFormat$150:	; ++field
x10266:	inc word [bp + 47]	; 3: -1 70 47

printFormat$151:	; goto 158
x10269:	jmp printFormat$158	; 2: -21 28

printFormat$152:	; if space == 0 goto 158
x10271:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x10275:	je printFormat$158	; 2: 116 22

printFormat$153:	; call header integral zero 0 stack zero 0

printFormat$154:	; parameter 32, offset 6
x10277:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$155:	; call function noellipse-noellipse printChar
x10281:	mov word [bp + 49], printFormat$156	; 5: -57 70 49 55 40
x10286:	mov [bp + 51], bp	; 3: -119 110 51
x10289:	add bp, 49	; 3: -125 -59 49
x10292:	jmp printChar	; 3: -23 -112 9

printFormat$156:	; post call

printFormat$157:	; £temporary2266 = field + 1
x10295:	mov ax, [bp + 47]	; 3: -117 70 47
x10298:	inc ax	; 1: 64

printFormat$158:	; ++field
x10299:	inc word [bp + 47]	; 3: -1 70 47

printFormat$159:	; if £temporary2266 >= width goto 165
x10302:	cmp ax, [bp + 12]	; 3: 59 70 12
x10305:	jge printFormat$165	; 2: 125 20

printFormat$160:	; call header integral zero 0 stack zero 0

printFormat$161:	; parameter 48, offset 6
x10307:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$162:	; call function noellipse-noellipse printChar
x10311:	mov word [bp + 49], printFormat$163	; 5: -57 70 49 85 40
x10316:	mov [bp + 51], bp	; 3: -119 110 51
x10319:	add bp, 49	; 3: -125 -59 49
x10322:	jmp printChar	; 3: -23 114 9

printFormat$163:	; post call

printFormat$164:	; goto 158
x10325:	jmp printFormat$158	; 2: -21 -28

printFormat$165:	; call header integral zero 0 stack zero 0

printFormat$166:	; £temporary2270 = format + index
x10327:	mov si, [bp + 6]	; 3: -117 118 6
x10330:	add si, [bp + 10]	; 3: 3 118 10

printFormat$167:	; £temporary2269 -> £temporary2270 = *£temporary2270

printFormat$168:	; £temporary2271 = &£temporary2269 -> £temporary2270

printFormat$169:	; parameter £temporary2271, offset 6
x10333:	mov [bp + 55], si	; 3: -119 118 55

printFormat$170:	; parameter arg_list, offset 8
x10336:	mov ax, [bp + 8]	; 3: -117 70 8
x10339:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$171:	; parameter 0, offset 10
x10342:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$172:	; parameter 0, offset 12
x10347:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$173:	; parameter grid, offset 14
x10352:	mov ax, [bp + 26]	; 3: -117 70 26
x10355:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$174:	; parameter 0, offset 16
x10358:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$175:	; parameter precision, offset 18
x10363:	mov ax, [bp + 14]	; 3: -117 70 14
x10366:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$176:	; parameter shortInt, offset 20
x10369:	mov ax, [bp + 34]	; 3: -117 70 34
x10372:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$177:	; parameter longInt, offset 22
x10375:	mov ax, [bp + 36]	; 3: -117 70 36
x10378:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$178:	; parameter longDouble, offset 24
x10381:	mov ax, [bp + 38]	; 3: -117 70 38
x10384:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$179:	; parameter 0, offset 26
x10387:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$180:	; parameter 0, offset 28
x10392:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$181:	; call function noellipse-noellipse printArgument
x10397:	mov word [bp + 49], printFormat$182	; 5: -57 70 49 -85 40
x10402:	mov [bp + 51], bp	; 3: -119 110 51
x10405:	add bp, 49	; 3: -125 -59 49
x10408:	jmp printArgument	; 3: -23 11 2

printFormat$182:	; post call

printFormat$183:	; £temporary2272 = return_value

printFormat$184:	; arg_list = £temporary2272
x10411:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$185:	; goto 239
x10414:	jmp printFormat$239	; 3: -23 -8 0

printFormat$186:	; startChars = g_outChars
x10417:	mov ax, [g_outChars]	; 3: -95 -78 42
x10420:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$187:	; oldOutStatus = g_outStatus
x10423:	mov ax, [g_outStatus]	; 3: -95 76 37
x10426:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$188:	; g_outStatus = 2
x10429:	mov word [g_outStatus], 2	; 6: -57 6 76 37 2 0

printFormat$189:	; call header integral zero 0 stack zero 0

printFormat$190:	; £temporary2274 = format + index
x10435:	mov si, [bp + 6]	; 3: -117 118 6
x10438:	add si, [bp + 10]	; 3: 3 118 10

printFormat$191:	; £temporary2273 -> £temporary2274 = *£temporary2274

printFormat$192:	; £temporary2275 = &£temporary2273 -> £temporary2274

printFormat$193:	; parameter £temporary2275, offset 6
x10441:	mov [bp + 51], si	; 3: -119 118 51

printFormat$194:	; parameter arg_list, offset 8
x10444:	mov ax, [bp + 8]	; 3: -117 70 8
x10447:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$195:	; parameter plus, offset 10
x10450:	mov ax, [bp + 18]	; 3: -117 70 18
x10453:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$196:	; parameter space, offset 12
x10456:	mov ax, [bp + 22]	; 3: -117 70 22
x10459:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$197:	; parameter grid, offset 14
x10462:	mov ax, [bp + 26]	; 3: -117 70 26
x10465:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$198:	; £temporary2276 = &width
x10468:	mov si, bp	; 2: -119 -18
x10470:	add si, 12	; 3: -125 -58 12

printFormat$199:	; parameter £temporary2276, offset 16
x10473:	mov [bp + 61], si	; 3: -119 118 61

printFormat$200:	; parameter precision, offset 18
x10476:	mov ax, [bp + 14]	; 3: -117 70 14
x10479:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$201:	; parameter shortInt, offset 20
x10482:	mov ax, [bp + 34]	; 3: -117 70 34
x10485:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$202:	; parameter longInt, offset 22
x10488:	mov ax, [bp + 36]	; 3: -117 70 36
x10491:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$203:	; parameter longDouble, offset 24
x10494:	mov ax, [bp + 38]	; 3: -117 70 38
x10497:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$204:	; parameter 1, offset 26
x10500:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$205:	; parameter 0, offset 28
x10505:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$206:	; call function noellipse-noellipse printArgument
x10510:	mov word [bp + 45], printFormat$207	; 5: -57 70 45 28 41
x10515:	mov [bp + 47], bp	; 3: -119 110 47
x10518:	add bp, 45	; 3: -125 -59 45
x10521:	jmp printArgument	; 3: -23 -102 1

printFormat$207:	; post call

printFormat$208:	; g_outStatus = oldOutStatus
x10524:	mov ax, [bp + 43]	; 3: -117 70 43
x10527:	mov [g_outStatus], ax	; 3: -93 76 37

printFormat$209:	; field = g_outChars - startChars
x10530:	mov ax, [g_outChars]	; 3: -95 -78 42
x10533:	sub ax, [bp + 41]	; 3: 43 70 41
x10536:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$210:	; g_outChars = startChars
x10539:	mov ax, [bp + 41]	; 3: -117 70 41
x10542:	mov [g_outChars], ax	; 3: -93 -78 42

printFormat$211:	; £temporary2279 = field
x10545:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$212:	; ++field
x10548:	inc word [bp + 45]	; 3: -1 70 45

printFormat$213:	; if £temporary2279 >= width goto 219
x10551:	cmp ax, [bp + 12]	; 3: 59 70 12
x10554:	jge printFormat$219	; 2: 125 20

printFormat$214:	; call header integral zero 0 stack zero 0

printFormat$215:	; parameter 32, offset 6
x10556:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$216:	; call function noellipse-noellipse printChar
x10560:	mov word [bp + 47], printFormat$217	; 5: -57 70 47 78 41
x10565:	mov [bp + 49], bp	; 3: -119 110 49
x10568:	add bp, 47	; 3: -125 -59 47
x10571:	jmp printChar	; 3: -23 121 8

printFormat$217:	; post call

printFormat$218:	; goto 211
x10574:	jmp printFormat$211	; 2: -21 -31

printFormat$219:	; call header integral zero 0 stack zero 0

printFormat$220:	; £temporary2283 = format + index
x10576:	mov si, [bp + 6]	; 3: -117 118 6
x10579:	add si, [bp + 10]	; 3: 3 118 10

printFormat$221:	; £temporary2282 -> £temporary2283 = *£temporary2283

printFormat$222:	; £temporary2284 = &£temporary2282 -> £temporary2283

printFormat$223:	; parameter £temporary2284, offset 6
x10582:	mov [bp + 53], si	; 3: -119 118 53

printFormat$224:	; parameter arg_list, offset 8
x10585:	mov ax, [bp + 8]	; 3: -117 70 8
x10588:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$225:	; parameter plus, offset 10
x10591:	mov ax, [bp + 18]	; 3: -117 70 18
x10594:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$226:	; parameter space, offset 12
x10597:	mov ax, [bp + 22]	; 3: -117 70 22
x10600:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$227:	; parameter grid, offset 14
x10603:	mov ax, [bp + 26]	; 3: -117 70 26
x10606:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$228:	; parameter 0, offset 16
x10609:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$229:	; parameter precision, offset 18
x10614:	mov ax, [bp + 14]	; 3: -117 70 14
x10617:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$230:	; parameter shortInt, offset 20
x10620:	mov ax, [bp + 34]	; 3: -117 70 34
x10623:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$231:	; parameter longInt, offset 22
x10626:	mov ax, [bp + 36]	; 3: -117 70 36
x10629:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$232:	; parameter longDouble, offset 24
x10632:	mov ax, [bp + 38]	; 3: -117 70 38
x10635:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$233:	; parameter 1, offset 26
x10638:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$234:	; parameter 0, offset 28
x10643:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$235:	; call function noellipse-noellipse printArgument
x10648:	mov word [bp + 47], printFormat$236	; 5: -57 70 47 -90 41
x10653:	mov [bp + 49], bp	; 3: -119 110 49
x10656:	add bp, 47	; 3: -125 -59 47
x10659:	jmp printArgument	; 3: -23 16 1

printFormat$236:	; post call

printFormat$237:	; £temporary2285 = return_value

printFormat$238:	; arg_list = £temporary2285
x10662:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$239:	; percent = 0
x10665:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$240:	; goto 284
x10670:	jmp printFormat$284	; 3: -23 -43 0

printFormat$241:	; value = 0
x10673:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$242:	; call header integral zero 0 stack zero 0

printFormat$243:	; £temporary2288 = int_to_int c (Signed_Char -> Signed_Int)
x10678:	mov al, [bp + 40]	; 3: -118 70 40
x10681:	and ax, 255	; 3: 37 -1 0
x10684:	cmp al, 0	; 2: 60 0
x10686:	jge printFormat$244	; 2: 125 4
x10688:	neg al	; 2: -10 -40
x10690:	neg ax	; 2: -9 -40

printFormat$244:	; parameter £temporary2288, offset 6
x10692:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$245:	; call function noellipse-noellipse isdigit
x10695:	mov word [bp + 43], printFormat$246	; 5: -57 70 43 -43 41
x10700:	mov [bp + 45], bp	; 3: -119 110 45
x10703:	add bp, 43	; 3: -125 -59 43
x10706:	jmp isdigit	; 3: -23 -4 -19

printFormat$246:	; post call

printFormat$247:	; £temporary2289 = return_value

printFormat$248:	; if £temporary2289 == 0 goto 258
x10709:	cmp bx, 0	; 3: -125 -5 0
x10712:	je printFormat$258	; 2: 116 49

printFormat$249:	; £temporary2290 = value * 10
x10714:	mov ax, [bp + 41]	; 3: -117 70 41
x10717:	xor dx, dx	; 2: 49 -46
x10719:	imul word [int2$10#]	; 4: -9 46 -76 42

printFormat$250:	; £temporary2291 = c - 48
x10723:	mov bl, [bp + 40]	; 3: -118 94 40
x10726:	sub bl, 48	; 3: -128 -21 48

printFormat$251:	; £temporary2292 = int_to_int £temporary2291 (Signed_Char -> Signed_Int)
x10729:	and bx, 255	; 4: -127 -29 -1 0
x10733:	cmp bl, 0	; 3: -128 -5 0
x10736:	jge printFormat$252	; 2: 125 4
x10738:	neg bl	; 2: -10 -37
x10740:	neg bx	; 2: -9 -37

printFormat$252:	; value = £temporary2290 + £temporary2292
x10742:	add ax, bx	; 2: 1 -40
x10744:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$253:	; £temporary2294 = index + 1
x10747:	mov ax, [bp + 10]	; 3: -117 70 10
x10750:	inc ax	; 1: 64

printFormat$254:	; £temporary2296 = format + £temporary2294
x10751:	mov si, [bp + 6]	; 3: -117 118 6
x10754:	add si, ax	; 2: 1 -58

printFormat$255:	; £temporary2295 -> £temporary2296 = *£temporary2296

printFormat$256:	; c = £temporary2295 -> £temporary2296
x10756:	mov al, [si]	; 2: -118 4
x10758:	mov [bp + 40], al	; 3: -120 70 40

printFormat$257:	; goto 242
x10761:	jmp printFormat$242	; 2: -21 -85

printFormat$258:	; --index
x10763:	dec word [bp + 10]	; 3: -1 78 10

printFormat$259:	; if period != 0 goto 262
x10766:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x10770:	jne printFormat$262	; 2: 117 8

printFormat$260:	; width = value
x10772:	mov ax, [bp + 41]	; 3: -117 70 41
x10775:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$261:	; goto 284
x10778:	jmp printFormat$284	; 2: -21 106

printFormat$262:	; precision = value
x10780:	mov ax, [bp + 41]	; 3: -117 70 41
x10783:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$263:	; goto 284
x10786:	jmp printFormat$284	; 2: -21 98

printFormat$264:	; if c != 37 goto 280
x10788:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x10792:	jne printFormat$280	; 2: 117 72

printFormat$265:	; percent = 1
x10794:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$266:	; plus = 0
x10799:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$267:	; minus = 0
x10804:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$268:	; space = 0
x10809:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$269:	; zero = 0
x10814:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$270:	; grid = 0
x10819:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$271:	; widthStar = 0
x10824:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$272:	; period = 0
x10829:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$273:	; precisionStar = 0
x10834:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$274:	; shortInt = 0
x10839:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$275:	; longInt = 0
x10844:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$276:	; longDouble = 0
x10849:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$277:	; width = 0
x10854:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$278:	; precision = 0
x10859:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$279:	; goto 284
x10864:	jmp printFormat$284	; 2: -21 20

printFormat$280:	; call header integral zero 0 stack zero 0

printFormat$281:	; parameter c, offset 6
x10866:	mov al, [bp + 40]	; 3: -118 70 40
x10869:	mov [bp + 47], al	; 3: -120 70 47

printFormat$282:	; call function noellipse-noellipse printChar
x10872:	mov word [bp + 41], printFormat$283	; 5: -57 70 41 -122 42
x10877:	mov [bp + 43], bp	; 3: -119 110 43
x10880:	add bp, 41	; 3: -125 -59 41
x10883:	jmp printChar	; 3: -23 65 7

printFormat$283:	; post call

printFormat$284:	; ++index
x10886:	inc word [bp + 10]	; 3: -1 70 10

printFormat$285:	; goto 16
x10889:	jmp printFormat$16	; 3: -23 21 -5

printFormat$286:	; if g_outStatus != 1 goto 292
x10892:	cmp word [g_outStatus], 1	; 5: -125 62 76 37 1
x10897:	jne printFormat$292	; 2: 117 16

printFormat$287:	; £temporary2305 = int_to_int g_outDevice (Pointer -> Pointer)
x10899:	mov ax, [g_outDevice]	; 3: -95 78 37

printFormat$288:	; outString = £temporary2305
x10902:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$289:	; £temporary2307 = outString + g_outChars
x10905:	mov si, [bp + 40]	; 3: -117 118 40
x10908:	add si, [g_outChars]	; 4: 3 54 -78 42

printFormat$290:	; £temporary2306 -> £temporary2307 = *£temporary2307

printFormat$291:	; £temporary2306 -> £temporary2307 = 0
x10912:	mov byte [si], 0	; 3: -58 4 0

printFormat$292:	; return_value = g_outChars
x10915:	mov bx, [g_outChars]	; 4: -117 30 -78 42

printFormat$293:	; return
x10919:	mov ax, [bp]	; 3: -117 70 0
x10922:	mov di, [bp + 4]	; 3: -117 126 4
x10925:	mov bp, [bp + 2]	; 3: -117 110 2
x10928:	jmp ax	; 2: -1 -32

printFormat$294:	; function end printFormat

g_outChars:
x10930:	db 0, 0	; 2: 0 0

int2$10#:
x10932:	dw 10	; 2: 10 0

printArgument:	; £temporary2006 -> format = *format
x10934:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary2006 -> format
x10937:	mov al, [si]	; 2: -118 4
x10939:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x10942:	mov al, [bp + 30]	; 3: -118 70 30
x10945:	cmp al, 100	; 2: 60 100
x10947:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x10949:	cmp al, 105	; 2: 60 105
x10951:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x10953:	cmp al, 99	; 2: 60 99
x10955:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x10959:	cmp al, 115	; 2: 60 115
x10961:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x10965:	cmp al, 88	; 2: 60 88
x10967:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x10971:	cmp al, 120	; 2: 60 120
x10973:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x10977:	cmp al, 98	; 2: 60 98
x10979:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x10983:	cmp al, 111	; 2: 60 111
x10985:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x10989:	cmp al, 117	; 2: 60 117
x10991:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x10995:	cmp al, 71	; 2: 60 71
x10997:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x11001:	cmp al, 103	; 2: 60 103
x11003:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x11007:	cmp al, 69	; 2: 60 69
x11009:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x11013:	cmp al, 101	; 2: 60 101
x11015:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x11019:	cmp al, 102	; 2: 60 102
x11021:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x11025:	cmp al, 112	; 2: 60 112
x11027:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x11031:	cmp al, 110	; 2: 60 110
x11033:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x11037:	cmp al, 37	; 2: 60 37
x11039:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x11043:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x11046:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x11050:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x11052:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary2008 = arg_list - 2
x11056:	mov si, [bp + 8]	; 3: -117 118 8
x11059:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary2009 = int_to_int £temporary2008 (Signed_Int -> Pointer)

printArgument$25:	; £temporary2010 -> £temporary2009 = *£temporary2009

printArgument$26:	; £temporary2011 = int_to_int £temporary2010 -> £temporary2009 (Signed_Int -> Signed_Short_Int)
x11062:	mov ax, [si]	; 2: -117 4
x11064:	cmp ax, 0	; 3: -125 -8 0
x11067:	jge printArgument$27	; 2: 125 4
x11069:	neg ax	; 2: -9 -40
x11071:	neg al	; 2: -10 -40

printArgument$27:	; £temporary2012 = int_to_int £temporary2011 (Signed_Short_Int -> Signed_Long_Int)
x11073:	and eax, 255	; 6: 102 37 -1 0 0 0
x11079:	cmp al, 0	; 2: 60 0
x11081:	jge printArgument$28	; 2: 125 5
x11083:	neg al	; 2: -10 -40
x11085:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary2012
x11088:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x11092:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x11094:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x11098:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x11100:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary2014 = arg_list - 4
x11104:	mov si, [bp + 8]	; 3: -117 118 8
x11107:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary2015 = int_to_int £temporary2014 (Signed_Int -> Pointer)

printArgument$34:	; £temporary2016 -> £temporary2015 = *£temporary2015

printArgument$35:	; longValue = £temporary2016 -> £temporary2015
x11110:	mov eax, [si]	; 3: 102 -117 4
x11113:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x11117:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x11119:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary2018 = arg_list - 2
x11123:	mov si, [bp + 8]	; 3: -117 118 8
x11126:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary2019 = int_to_int £temporary2018 (Signed_Int -> Pointer)

printArgument$40:	; £temporary2020 -> £temporary2019 = *£temporary2019

printArgument$41:	; £temporary2021 = int_to_int £temporary2020 -> £temporary2019 (Signed_Int -> Signed_Long_Int)
x11129:	mov ax, [si]	; 2: -117 4
x11131:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x11137:	cmp ax, 0	; 3: -125 -8 0
x11140:	jge printArgument$42	; 2: 125 5
x11142:	neg ax	; 2: -9 -40
x11144:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary2021
x11147:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x11151:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x11155:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary2025 -> negativePtr = *negativePtr
x11157:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x11160:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x11165:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary2027 = 1
x11167:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x11170:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary2027 = 0
x11172:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary2025 -> negativePtr = £temporary2027
x11175:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x11177:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x11181:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x11183:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x11187:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x11191:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 -59 43
x11196:	mov [bp + 50], bp	; 3: -119 110 50
x11199:	add bp, 48	; 3: -125 -59 48
x11202:	jmp labs	; 3: -23 3 5

printArgument$54:	; post call

printArgument$55:	; £temporary2030 = return_value

printArgument$56:	; longValue = £temporary2030
x11205:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x11209:	mov ax, [bp + 8]	; 3: -117 70 8
x11212:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x11215:	mov ax, [bp + 16]	; 3: -117 70 16
x11218:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary2031 = &precision
x11221:	mov si, bp	; 2: -119 -18
x11223:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary2031, offset 10
x11226:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x11229:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 -21 43
x11234:	mov [bp + 50], bp	; 3: -119 110 50
x11237:	add bp, 48	; 3: -125 -59 48
x11240:	jmp checkWidthAndPrecision	; 3: -23 -4 4

printArgument$63:	; post call

printArgument$64:	; £temporary2032 = return_value

printArgument$65:	; arg_list = £temporary2032
x11243:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x11246:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x11250:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x11254:	mov ax, [bp + 10]	; 3: -117 70 10
x11257:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x11260:	mov ax, [bp + 12]	; 3: -117 70 12
x11263:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x11266:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 16 44
x11271:	mov [bp + 50], bp	; 3: -119 110 50
x11274:	add bp, 48	; 3: -125 -59 48
x11277:	jmp printLongInt	; 3: -23 35 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x11280:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x11283:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary2035 = arg_list - 2
x11287:	mov si, [bp + 8]	; 3: -117 118 8
x11290:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary2036 = int_to_int £temporary2035 (Signed_Int -> Pointer)

printArgument$76:	; £temporary2037 -> £temporary2036 = *£temporary2036

printArgument$77:	; £temporary2038 = int_to_int £temporary2037 -> £temporary2036 (Signed_Int -> Signed_Char)
x11293:	mov ax, [si]	; 2: -117 4
x11295:	cmp ax, 0	; 3: -125 -8 0
x11298:	jge printArgument$78	; 2: 125 4
x11300:	neg ax	; 2: -9 -40
x11302:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary2038
x11304:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x11307:	mov ax, [bp + 8]	; 3: -117 70 8
x11310:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x11313:	mov ax, [bp + 16]	; 3: -117 70 16
x11316:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary2039 = &precision
x11319:	mov si, bp	; 2: -119 -18
x11321:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary2039, offset 10
x11324:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x11327:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 77 44
x11332:	mov [bp + 46], bp	; 3: -119 110 46
x11335:	add bp, 44	; 3: -125 -59 44
x11338:	jmp checkWidthAndPrecision	; 3: -23 -102 4

printArgument$85:	; post call

printArgument$86:	; £temporary2040 = return_value

printArgument$87:	; arg_list = £temporary2040
x11341:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x11344:	mov al, [bp + 31]	; 3: -118 70 31
x11347:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x11350:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 100 44
x11355:	mov [bp + 46], bp	; 3: -119 110 46
x11358:	add bp, 44	; 3: -125 -59 44
x11361:	jmp printChar	; 3: -23 99 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x11364:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x11367:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2043 = arg_list - 2
x11371:	mov si, [bp + 8]	; 3: -117 118 8
x11374:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2044 = int_to_int £temporary2043 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2045 -> £temporary2044 = *£temporary2044

printArgument$97:	; stringValue = £temporary2045 -> £temporary2044
x11377:	mov ax, [si]	; 2: -117 4
x11379:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x11382:	mov ax, [bp + 8]	; 3: -117 70 8
x11385:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x11388:	mov ax, [bp + 16]	; 3: -117 70 16
x11391:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2046 = &precision
x11394:	mov si, bp	; 2: -119 -18
x11396:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2046, offset 10
x11399:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x11402:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 -104 44
x11407:	mov [bp + 48], bp	; 3: -119 110 48
x11410:	add bp, 46	; 3: -125 -59 46
x11413:	jmp checkWidthAndPrecision	; 3: -23 79 4

printArgument$104:	; post call

printArgument$105:	; £temporary2047 = return_value

printArgument$106:	; arg_list = £temporary2047
x11416:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x11419:	mov ax, [bp + 44]	; 3: -117 70 44
x11422:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x11425:	mov ax, [bp + 18]	; 3: -117 70 18
x11428:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x11431:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 -75 44
x11436:	mov [bp + 48], bp	; 3: -119 110 48
x11439:	add bp, 46	; 3: -125 -59 46
x11442:	jmp printString	; 3: -23 -38 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x11445:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x11448:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x11452:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2063 = 10
x11454:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x11460:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x11462:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x11466:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2059 = 8
x11468:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x11474:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x11476:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x11480:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2055 = 2
x11482:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x11488:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2055 = 16
x11490:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2059 = £temporary2055

printArgument$124:	; £temporary2063 = £temporary2059

printArgument$125:	; base = £temporary2063
x11496:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x11500:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x11504:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x11506:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2065 = arg_list - 2
x11510:	mov si, [bp + 8]	; 3: -117 118 8
x11513:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2066 = int_to_int £temporary2065 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2067 -> £temporary2066 = *£temporary2066

printArgument$131:	; £temporary2068 = int_to_int £temporary2067 -> £temporary2066 (Unsigned_Int -> Unsigned_Short_Int)
x11516:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2069 = int_to_int £temporary2068 (Unsigned_Short_Int -> Unsigned_Long_Int)
x11518:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2069
x11524:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x11528:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x11530:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x11534:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x11536:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2071 = arg_list - 4
x11540:	mov si, [bp + 8]	; 3: -117 118 8
x11543:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2072 = int_to_int £temporary2071 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2073 -> £temporary2072 = *£temporary2072

printArgument$140:	; value = £temporary2073 -> £temporary2072
x11546:	mov eax, [si]	; 3: 102 -117 4
x11549:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x11553:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x11555:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2075 = arg_list - 2
x11559:	mov si, [bp + 8]	; 3: -117 118 8
x11562:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2076 = int_to_int £temporary2075 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2077 -> £temporary2076 = *£temporary2076

printArgument$146:	; £temporary2078 = int_to_int £temporary2077 -> £temporary2076 (Unsigned_Int -> Unsigned_Long_Int)
x11565:	mov ax, [si]	; 2: -117 4
x11567:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2078
x11573:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x11577:	mov ax, [bp + 8]	; 3: -117 70 8
x11580:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x11583:	mov ax, [bp + 16]	; 3: -117 70 16
x11586:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2081 = &precision
x11589:	mov si, bp	; 2: -119 -18
x11591:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2081, offset 10
x11594:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x11597:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 91 45
x11602:	mov [bp + 54], bp	; 3: -119 110 54
x11605:	add bp, 52	; 3: -125 -59 52
x11608:	jmp checkWidthAndPrecision	; 3: -23 -116 3

printArgument$154:	; post call

printArgument$155:	; £temporary2082 = return_value

printArgument$156:	; arg_list = £temporary2082
x11611:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x11614:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x11618:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x11622:	mov ax, [bp + 10]	; 3: -117 70 10
x11625:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x11628:	mov ax, [bp + 12]	; 3: -117 70 12
x11631:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x11634:	mov ax, [bp + 14]	; 3: -117 70 14
x11637:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x11640:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x11644:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2083 = int_to_int c (Signed_Char -> Signed_Int)
x11648:	mov al, [bp + 30]	; 3: -118 70 30
x11651:	and ax, 255	; 3: 37 -1 0
x11654:	cmp al, 0	; 2: 60 0
x11656:	jge printArgument$165	; 2: 125 4
x11658:	neg al	; 2: -10 -40
x11660:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2083, offset 26
x11662:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x11665:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 -97 45
x11670:	mov [bp + 74], bp	; 3: -119 110 74
x11673:	add bp, 72	; 3: -125 -59 72
x11676:	jmp isupper	; 3: -23 25 -27

printArgument$167:	; post call

printArgument$168:	; £temporary2084 = return_value

printArgument$169:	; parameter £temporary2084, offset 20
x11679:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x11682:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 -80 45
x11687:	mov [bp + 54], bp	; 3: -119 110 54
x11690:	add bp, 52	; 3: -125 -59 52
x11693:	jmp printUnsignedLong	; 3: -23 -49 5

printArgument$171:	; post call

printArgument$172:	; goto 359
x11696:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x11699:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x11703:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x11705:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2087 = arg_list - 8
x11709:	mov si, [bp + 8]	; 3: -117 118 8
x11712:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2088 = int_to_int £temporary2087 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2089 -> £temporary2088 = *£temporary2088

printArgument$178:	; push float £temporary2089 -> £temporary2088
x11715:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x11717:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x11720:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x11723:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x11726:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x11731:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x11736:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x11741:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x11746:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 -16 45
x11751:	mov [bp + 46], bp	; 3: -119 110 46
x11754:	add bp, 44	; 3: -125 -59 44
x11757:	jmp printLongDoublePlain	; 3: -23 58 7

printArgument$188:	; post call

printArgument$189:	; goto 196
x11760:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x11762:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2092 = arg_list - 8
x11766:	mov si, [bp + 8]	; 3: -117 118 8
x11769:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2093 = int_to_int £temporary2092 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2094 -> £temporary2093 = *£temporary2093

printArgument$194:	; push float £temporary2094 -> £temporary2093
x11772:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x11774:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x11777:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x11781:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2098 -> negativePtr = *negativePtr
x11783:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x11786:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x11789:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x11791:	fcompp	; 2: -34 -39
x11793:	fstsw ax	; 3: -101 -33 -32
x11796:	sahf	; 1: -98
x11797:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2100 = 1
x11799:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x11802:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2100 = 0
x11804:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2098 -> negativePtr = £temporary2100
x11807:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x11809:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x11813:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x11815:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x11818:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x11821:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 59 46
x11826:	mov [bp + 46], bp	; 3: -119 110 46
x11829:	add bp, 44	; 3: -125 -59 44
x11832:	jmp fabs	; 3: -23 -106 -15

printArgument$210:	; post call

printArgument$211:	; £temporary2103 = return_value

printArgument$212:	; pop float longDoubleValue
x11835:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x11838:	mov ax, [bp + 8]	; 3: -117 70 8
x11841:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x11844:	mov ax, [bp + 16]	; 3: -117 70 16
x11847:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2104 = &precision
x11850:	mov si, bp	; 2: -119 -18
x11852:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2104, offset 10
x11855:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x11858:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 96 46
x11863:	mov [bp + 46], bp	; 3: -119 110 46
x11866:	add bp, 44	; 3: -125 -59 44
x11869:	jmp checkWidthAndPrecision	; 3: -23 -121 2

printArgument$219:	; post call

printArgument$220:	; £temporary2105 = return_value

printArgument$221:	; arg_list = £temporary2105
x11872:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x11875:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x11879:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x11881:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x11884:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x11887:	mov ax, [bp + 10]	; 3: -117 70 10
x11890:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x11893:	mov ax, [bp + 12]	; 3: -117 70 12
x11896:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x11899:	mov ax, [bp + 14]	; 3: -117 70 14
x11902:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x11905:	mov ax, [bp + 18]	; 3: -117 70 18
x11908:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x11911:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 -107 46
x11916:	mov [bp + 46], bp	; 3: -119 110 46
x11919:	add bp, 44	; 3: -125 -59 44
x11922:	jmp printLongDoublePlain	; 3: -23 -107 6

printArgument$231:	; post call

printArgument$232:	; goto 359
x11925:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2108 = int_to_int c (Signed_Char -> Signed_Int)
x11928:	mov al, [bp + 30]	; 3: -118 70 30
x11931:	and ax, 255	; 3: 37 -1 0
x11934:	cmp al, 0	; 2: 60 0
x11936:	jge printArgument$235	; 2: 125 4
x11938:	neg al	; 2: -10 -40
x11940:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2108, offset 6
x11942:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x11945:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 -73 46
x11950:	mov [bp + 46], bp	; 3: -119 110 46
x11953:	add bp, 44	; 3: -125 -59 44
x11956:	jmp tolower	; 3: -23 96 -29

printArgument$237:	; post call

printArgument$238:	; £temporary2109 = return_value

printArgument$239:	; if £temporary2109 != 101 goto 257
x11959:	cmp bx, 101	; 3: -125 -5 101
x11962:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x11964:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x11967:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x11970:	mov ax, [bp + 10]	; 3: -117 70 10
x11973:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x11976:	mov ax, [bp + 12]	; 3: -117 70 12
x11979:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x11982:	mov ax, [bp + 14]	; 3: -117 70 14
x11985:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x11988:	mov ax, [bp + 18]	; 3: -117 70 18
x11991:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2111 = int_to_int c (Signed_Char -> Signed_Int)
x11994:	mov al, [bp + 30]	; 3: -118 70 30
x11997:	and ax, 255	; 3: 37 -1 0
x12000:	cmp al, 0	; 2: 60 0
x12002:	jge printArgument$249	; 2: 125 4
x12004:	neg al	; 2: -10 -40
x12006:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2111, offset 28
x12008:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x12011:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 -7 46
x12016:	mov [bp + 68], bp	; 3: -119 110 68
x12019:	add bp, 66	; 3: -125 -59 66
x12022:	jmp isupper	; 3: -23 -65 -29

printArgument$251:	; post call

printArgument$252:	; £temporary2112 = return_value

printArgument$253:	; parameter £temporary2112, offset 22
x12025:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x12028:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 10 47
x12033:	mov [bp + 46], bp	; 3: -119 110 46
x12036:	add bp, 44	; 3: -125 -59 44
x12039:	jmp printLongDoubleExpo	; 3: -23 88 7

printArgument$255:	; post call

printArgument$256:	; goto 359
x12042:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x12045:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x12048:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x12051:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 33 47
x12056:	mov [bp + 46], bp	; 3: -119 110 46
x12059:	add bp, 44	; 3: -125 -59 44
x12062:	jmp fabs	; 3: -23 -80 -16

printArgument$262:	; post call

printArgument$263:	; £temporary2114 = return_value

printArgument$264:	; parameter £temporary2114, offset 6
x12065:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x12068:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 50 47
x12073:	mov [bp + 46], bp	; 3: -119 110 46
x12076:	add bp, 44	; 3: -125 -59 44
x12079:	jmp log10	; 3: -23 -105 8

printArgument$266:	; post call

printArgument$267:	; £temporary2115 = return_value

printArgument$268:	; £temporary2116 = float_to_int £temporary2115 (Double -> Signed_Int)
x12082:	fistp word [container2bytes#]	; 4: -33 30 -16 28
x12086:	mov ax, [container2bytes#]	; 3: -95 -16 28

printArgument$269:	; expo = £temporary2116
x12089:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x12092:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x12096:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x12098:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x12102:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x12104:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x12107:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x12110:	mov ax, [bp + 10]	; 3: -117 70 10
x12113:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x12116:	mov ax, [bp + 12]	; 3: -117 70 12
x12119:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x12122:	mov ax, [bp + 14]	; 3: -117 70 14
x12125:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x12128:	mov ax, [bp + 18]	; 3: -117 70 18
x12131:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x12134:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 116 47
x12139:	mov [bp + 48], bp	; 3: -119 110 48
x12142:	add bp, 46	; 3: -125 -59 46
x12145:	jmp printLongDoublePlain	; 3: -23 -74 5

printArgument$280:	; post call

printArgument$281:	; goto 359
x12148:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x12151:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x12154:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x12157:	mov ax, [bp + 10]	; 3: -117 70 10
x12160:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x12163:	mov ax, [bp + 12]	; 3: -117 70 12
x12166:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x12169:	mov ax, [bp + 14]	; 3: -117 70 14
x12172:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x12175:	mov ax, [bp + 18]	; 3: -117 70 18
x12178:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2121 = int_to_int c (Signed_Char -> Signed_Int)
x12181:	mov al, [bp + 30]	; 3: -118 70 30
x12184:	and ax, 255	; 3: 37 -1 0
x12187:	cmp al, 0	; 2: 60 0
x12189:	jge printArgument$291	; 2: 125 4
x12191:	neg al	; 2: -10 -40
x12193:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2121, offset 28
x12195:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x12198:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 -76 47
x12203:	mov [bp + 70], bp	; 3: -119 110 70
x12206:	add bp, 68	; 3: -125 -59 68
x12209:	jmp isupper	; 3: -23 4 -29

printArgument$293:	; post call

printArgument$294:	; £temporary2122 = return_value

printArgument$295:	; parameter £temporary2122, offset 22
x12212:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x12215:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 -59 47
x12220:	mov [bp + 48], bp	; 3: -119 110 48
x12223:	add bp, 46	; 3: -125 -59 46
x12226:	jmp printLongDoubleExpo	; 3: -23 -99 6

printArgument$297:	; post call

printArgument$298:	; goto 359
x12229:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x12232:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2125 = arg_list - 2
x12236:	mov si, [bp + 8]	; 3: -117 118 8
x12239:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2126 = int_to_int £temporary2125 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2127 -> £temporary2126 = *£temporary2126

printArgument$303:	; ptrValue = £temporary2127 -> £temporary2126
x12242:	mov ax, [si]	; 2: -117 4
x12244:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x12247:	mov ax, [bp + 8]	; 3: -117 70 8
x12250:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x12253:	mov ax, [bp + 16]	; 3: -117 70 16
x12256:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2128 = &precision
x12259:	mov si, bp	; 2: -119 -18
x12261:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2128, offset 10
x12264:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x12267:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 -7 47
x12272:	mov [bp + 46], bp	; 3: -119 110 46
x12275:	add bp, 44	; 3: -125 -59 44
x12278:	jmp checkWidthAndPrecision	; 3: -23 -18 0

printArgument$310:	; post call

printArgument$311:	; £temporary2129 = return_value

printArgument$312:	; arg_list = £temporary2129
x12281:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2130 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x12284:	mov ax, [bp + 42]	; 3: -117 70 42
x12287:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2130, offset 6
x12293:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x12297:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x12302:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x12307:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x12312:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x12320:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x12325:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 51 48
x12330:	mov [bp + 46], bp	; 3: -119 110 46
x12333:	add bp, 44	; 3: -125 -59 44
x12336:	jmp printUnsignedLong	; 3: -23 76 3

printArgument$322:	; post call

printArgument$323:	; goto 359
x12339:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x12342:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2133 = arg_list - 2
x12346:	mov si, [bp + 8]	; 3: -117 118 8
x12349:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2134 = int_to_int £temporary2133 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2135 -> £temporary2134 = *£temporary2134

printArgument$328:	; ptrValue = £temporary2135 -> £temporary2134
x12352:	mov ax, [si]	; 2: -117 4
x12354:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x12357:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2137 = arg_list - 2
x12361:	mov si, [bp + 8]	; 3: -117 118 8
x12364:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2138 = int_to_int £temporary2137 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2139 -> £temporary2138 = *£temporary2138

printArgument$333:	; intPtr = £temporary2139 -> £temporary2138
x12367:	mov ax, [si]	; 2: -117 4
x12369:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x12372:	mov ax, [bp + 8]	; 3: -117 70 8
x12375:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x12378:	mov ax, [bp + 16]	; 3: -117 70 16
x12381:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2140 = &precision
x12384:	mov si, bp	; 2: -119 -18
x12386:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2140, offset 10
x12389:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x12392:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 118 48
x12397:	mov [bp + 46], bp	; 3: -119 110 46
x12400:	add bp, 44	; 3: -125 -59 44
x12403:	nop	; 1: -112
x12404:	jmp checkWidthAndPrecision	; 2: -21 113

printArgument$340:	; post call

printArgument$341:	; £temporary2141 = return_value

printArgument$342:	; arg_list = £temporary2141
x12406:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2142 -> intPtr = *intPtr
x12409:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2142 -> intPtr = g_outChars
x12412:	mov ax, [g_outChars]	; 3: -95 -78 42
x12415:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x12417:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x12419:	mov ax, [bp + 8]	; 3: -117 70 8
x12422:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x12425:	mov ax, [bp + 16]	; 3: -117 70 16
x12428:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2143 = &precision
x12431:	mov si, bp	; 2: -119 -18
x12433:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2143, offset 10
x12436:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x12439:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 -91 48
x12444:	mov [bp + 46], bp	; 3: -119 110 46
x12447:	add bp, 44	; 3: -125 -59 44
x12450:	nop	; 1: -112
x12451:	jmp checkWidthAndPrecision	; 2: -21 66

printArgument$352:	; post call

printArgument$353:	; £temporary2144 = return_value

printArgument$354:	; arg_list = £temporary2144
x12453:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x12456:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x12460:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 -70 48
x12465:	mov [bp + 46], bp	; 3: -119 110 46
x12468:	add bp, 44	; 3: -125 -59 44
x12471:	jmp printChar	; 3: -23 13 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x12474:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x12477:	mov ax, [bp]	; 3: -117 70 0
x12480:	mov di, [bp + 4]	; 3: -117 126 4
x12483:	mov bp, [bp + 2]	; 3: -117 110 2
x12486:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

labs:	; if value >= 0 goto 4
x12488:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12493:	jge labs$4	; 2: 125 9

labs$1:	; £temporary3447 = -value
x12495:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x12499:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary3451 = £temporary3447

labs$3:	; goto 5
x12502:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary3451 = value
x12504:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary3451

labs$6:	; return
x12508:	mov ax, [bp]	; 3: -117 70 0
x12511:	mov di, [bp + 4]	; 3: -117 126 4
x12514:	mov bp, [bp + 2]	; 3: -117 110 2
x12517:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x12519:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12523:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary1989 -> widthPtr = *widthPtr
x12525:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary1989 -> widthPtr != -1 goto 9
x12528:	cmp word [si], -1	; 3: -125 60 -1
x12531:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary1992 -> widthPtr = *widthPtr
x12533:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x12536:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary1994 = arg_list - 2
x12540:	mov di, [bp + 6]	; 3: -117 126 6
x12543:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary1995 = int_to_int £temporary1994 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary1996 -> £temporary1995 = *£temporary1995

checkWidthAndPrecision$8:	; £temporary1992 -> widthPtr = £temporary1996 -> £temporary1995
x12546:	mov ax, [di]	; 2: -117 5
x12548:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x12550:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x12554:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary1998 -> precisionPtr = *precisionPtr
x12556:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary1998 -> precisionPtr != -1 goto 18
x12559:	cmp word [si], -1	; 3: -125 60 -1
x12562:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary2001 -> precisionPtr = *precisionPtr
x12564:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x12567:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary2003 = arg_list - 2
x12571:	mov di, [bp + 6]	; 3: -117 126 6
x12574:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary2004 = int_to_int £temporary2003 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary2005 -> £temporary2004 = *£temporary2004

checkWidthAndPrecision$17:	; £temporary2001 -> precisionPtr = £temporary2005 -> £temporary2004
x12577:	mov ax, [di]	; 2: -117 5
x12579:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x12581:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x12584:	mov ax, [bp]	; 3: -117 70 0
x12587:	mov di, [bp + 4]	; 3: -117 126 4
x12590:	mov bp, [bp + 2]	; 3: -117 110 2
x12593:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x12595:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12600:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1844 = -longValue
x12602:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x12606:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1844
x12609:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x12613:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x12617:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 87 49
x12622:	mov [bp + 16], bp	; 3: -119 110 16
x12625:	add bp, 14	; 3: -125 -59 14
x12628:	nop	; 1: -112
x12629:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x12631:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x12633:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x12637:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x12639:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x12643:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 113 49
x12648:	mov [bp + 16], bp	; 3: -119 110 16
x12651:	add bp, 14	; 3: -125 -59 14
x12654:	nop	; 1: -112
x12655:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x12657:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x12659:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x12663:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x12665:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x12669:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 -117 49
x12674:	mov [bp + 16], bp	; 3: -119 110 16
x12677:	add bp, 14	; 3: -125 -59 14
x12680:	nop	; 1: -112
x12681:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x12683:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12688:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x12690:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x12694:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 -92 49
x12699:	mov [bp + 16], bp	; 3: -119 110 16
x12702:	add bp, 14	; 3: -125 -59 14
x12705:	nop	; 1: -112
x12706:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x12708:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x12710:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x12714:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x12718:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 -68 49
x12723:	mov [bp + 16], bp	; 3: -119 110 16
x12726:	add bp, 14	; 3: -125 -59 14
x12729:	nop	; 1: -112
x12730:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x12732:	mov ax, [bp]	; 3: -117 70 0
x12735:	mov di, [bp + 4]	; 3: -117 126 4
x12738:	mov bp, [bp + 2]	; 3: -117 110 2
x12741:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x12743:	mov ax, [g_outStatus]	; 3: -95 76 37
x12746:	cmp ax, 0	; 3: -125 -8 0
x12749:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x12751:	cmp ax, 1	; 3: -125 -8 1
x12754:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x12756:	cmp ax, 2	; 3: -125 -8 2
x12759:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x12761:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1786 = int_to_int g_outDevice (Pointer -> Pointer)
x12763:	mov ax, [g_outDevice]	; 3: -95 78 37

printChar$6:	; stream = £temporary1786
x12766:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x12769:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1789 -> stream = *stream, offset 2
x12771:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1789 -> stream
x12774:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x12777:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1792 = &c
x12780:	mov dx, bp	; 2: -119 -22
x12782:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1792

printChar$13:	; interrupt 33
x12785:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x12787:	inc word [g_outChars]	; 4: -1 6 -78 42

printChar$15:	; goto 25
x12791:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1794 = int_to_int g_outDevice (Pointer -> Pointer)
x12793:	mov ax, [g_outDevice]	; 3: -95 78 37

printChar$17:	; outString = £temporary1794
x12796:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1795 = g_outChars
x12799:	mov ax, [g_outChars]	; 3: -95 -78 42

printChar$19:	; ++g_outChars
x12802:	inc word [g_outChars]	; 4: -1 6 -78 42

printChar$20:	; £temporary1797 = outString + £temporary1795
x12806:	mov si, [bp + 9]	; 3: -117 118 9
x12809:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1796 -> £temporary1797 = *£temporary1797

printChar$22:	; £temporary1796 -> £temporary1797 = c
x12811:	mov al, [bp + 6]	; 3: -118 70 6
x12814:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x12816:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x12818:	inc word [g_outChars]	; 4: -1 6 -78 42

printChar$25:	; return
x12822:	mov ax, [bp]	; 3: -117 70 0
x12825:	mov di, [bp + 4]	; 3: -117 126 4
x12828:	mov bp, [bp + 2]	; 3: -117 110 2
x12831:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x12833:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12838:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1834 = longValue % 10
x12840:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x12844:	xor edx, edx	; 3: 102 49 -46
x12847:	idiv dword [int4$10#]	; 5: 102 -9 62 -117 50

printLongIntRec$2:	; £temporary1835 = int_to_int £temporary1834 (Signed_Long_Int -> Signed_Int)
x12852:	cmp edx, 0	; 4: 102 -125 -6 0
x12856:	jge printLongIntRec$3	; 2: 125 5
x12858:	neg edx	; 3: 102 -9 -38
x12861:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1835
x12863:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1836 = longValue / 10
x12866:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x12870:	xor edx, edx	; 3: 102 49 -46
x12873:	idiv dword [int4$10#]	; 5: 102 -9 62 -117 50

printLongIntRec$6:	; parameter £temporary1836, offset 6
x12878:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x12882:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 96 50
x12887:	mov [bp + 14], bp	; 3: -119 110 14
x12890:	add bp, 12	; 3: -125 -59 12
x12893:	nop	; 1: -112
x12894:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1838 = digit + 48
x12896:	mov ax, [bp + 10]	; 3: -117 70 10
x12899:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1839 = int_to_int £temporary1838 (Signed_Int -> Signed_Char)
x12902:	cmp ax, 0	; 3: -125 -8 0
x12905:	jge printLongIntRec$12	; 2: 125 4
x12907:	neg ax	; 2: -9 -40
x12909:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1839, offset 6
x12911:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x12914:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 -128 50
x12919:	mov [bp + 14], bp	; 3: -119 110 14
x12922:	add bp, 12	; 3: -125 -59 12
x12925:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x12928:	mov ax, [bp]	; 3: -117 70 0
x12931:	mov di, [bp + 4]	; 3: -117 126 4
x12934:	mov bp, [bp + 2]	; 3: -117 110 2
x12937:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x12939:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x12943:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x12947:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x12949:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12953:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x12955:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1803 = s + index
x12960:	mov si, [bp + 6]	; 3: -117 118 6
x12963:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1802 -> £temporary1803 = *£temporary1803

printString$5:	; if £temporary1802 -> £temporary1803 == 0 goto 53
x12966:	cmp byte [si], 0	; 3: -128 60 0
x12969:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1807 = s + index
x12973:	mov si, [bp + 6]	; 3: -117 118 6
x12976:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1806 -> £temporary1807 = *£temporary1807

printString$9:	; parameter £temporary1806 -> £temporary1807, offset 6
x12979:	mov al, [si]	; 2: -118 4
x12981:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x12984:	mov word [bp + 12], printString$11	; 5: -57 70 12 -58 50
x12989:	mov [bp + 14], bp	; 3: -119 110 14
x12992:	add bp, 12	; 3: -125 -59 12
x12995:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x12998:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x13001:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x13003:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1809 = precision
x13008:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x13011:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1809 <= 0 goto 53
x13014:	cmp ax, 0	; 3: -125 -8 0
x13017:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1812 = s + index
x13021:	mov si, [bp + 6]	; 3: -117 118 6
x13024:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1811 -> £temporary1812 = *£temporary1812

printString$20:	; if £temporary1811 -> £temporary1812 == 0 goto 53
x13027:	cmp byte [si], 0	; 3: -128 60 0
x13030:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1817 = s + index
x13034:	mov si, [bp + 6]	; 3: -117 118 6
x13037:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1816 -> £temporary1817 = *£temporary1817

printString$24:	; parameter £temporary1816 -> £temporary1817, offset 6
x13040:	mov al, [si]	; 2: -118 4
x13042:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x13045:	mov word [bp + 12], printString$26	; 5: -57 70 12 3 51
x13050:	mov [bp + 14], bp	; 3: -119 110 14
x13053:	add bp, 12	; 3: -125 -59 12
x13056:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x13059:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x13062:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x13064:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x13068:	mov word [bp + 10], printString$32	; 5: -57 70 10 26 51
x13073:	mov [bp + 12], bp	; 3: -119 110 12
x13076:	add bp, 10	; 3: -125 -59 10
x13079:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x13082:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x13086:	mov word [bp + 10], printString$36	; 5: -57 70 10 44 51
x13091:	mov [bp + 12], bp	; 3: -119 110 12
x13094:	add bp, 10	; 3: -125 -59 10
x13097:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x13100:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x13104:	mov word [bp + 10], printString$40	; 5: -57 70 10 62 51
x13109:	mov [bp + 12], bp	; 3: -119 110 12
x13112:	add bp, 10	; 3: -125 -59 10
x13115:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x13118:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x13122:	mov word [bp + 10], printString$44	; 5: -57 70 10 80 51
x13127:	mov [bp + 12], bp	; 3: -119 110 12
x13130:	add bp, 10	; 3: -125 -59 10
x13133:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x13136:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x13140:	mov word [bp + 10], printString$48	; 5: -57 70 10 98 51
x13145:	mov [bp + 12], bp	; 3: -119 110 12
x13148:	add bp, 10	; 3: -125 -59 10
x13151:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x13154:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x13158:	mov word [bp + 10], printString$52	; 5: -57 70 10 116 51
x13163:	mov [bp + 12], bp	; 3: -119 110 12
x13166:	add bp, 10	; 3: -125 -59 10
x13169:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x13172:	mov ax, [bp]	; 3: -117 70 0
x13175:	mov di, [bp + 4]	; 3: -117 126 4
x13178:	mov bp, [bp + 2]	; 3: -117 110 2
x13181:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

printUnsignedLong:	; if plus == 0 goto 5
x13183:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13187:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x13189:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x13193:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 -105 51
x13198:	mov [bp + 24], bp	; 3: -119 110 24
x13201:	add bp, 22	; 3: -125 -59 22
x13204:	jmp printChar	; 3: -23 48 -2

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x13207:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x13211:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x13213:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x13217:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 -81 51
x13222:	mov [bp + 24], bp	; 3: -119 110 24
x13225:	add bp, 22	; 3: -125 -59 22
x13228:	jmp printChar	; 3: -23 24 -2

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x13231:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x13235:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x13237:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x13242:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x13244:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x13248:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 -50 51
x13253:	mov [bp + 24], bp	; 3: -119 110 24
x13256:	add bp, 22	; 3: -125 -59 22
x13259:	jmp printChar	; 3: -23 -7 -3

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x13262:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x13267:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x13269:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x13273:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 -25 51
x13278:	mov [bp + 24], bp	; 3: -119 110 24
x13281:	add bp, 22	; 3: -125 -59 22
x13284:	jmp printChar	; 3: -23 -32 -3

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x13287:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x13291:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1893 = 88
x13293:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x13295:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1893 = 120
x13297:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1893, offset 6
x13299:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x13302:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 4 52
x13307:	mov [bp + 24], bp	; 3: -119 110 24
x13310:	add bp, 22	; 3: -125 -59 22
x13313:	jmp printChar	; 3: -23 -61 -3

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x13316:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x13321:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x13323:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x13327:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 29 52
x13332:	mov [bp + 24], bp	; 3: -119 110 24
x13335:	add bp, 22	; 3: -125 -59 22
x13338:	jmp printChar	; 3: -23 -86 -3

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x13341:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x13343:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x13347:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x13351:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x13355:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x13359:	mov ax, [bp + 20]	; 3: -117 70 20
x13362:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x13365:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 67 52
x13370:	mov [bp + 24], bp	; 3: -119 110 24
x13373:	add bp, 22	; 3: -125 -59 22
x13376:	nop	; 1: -112
x13377:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x13379:	mov ax, [bp]	; 3: -117 70 0
x13382:	mov di, [bp + 4]	; 3: -117 126 4
x13385:	mov bp, [bp + 2]	; 3: -117 110 2
x13388:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x13390:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x13395:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1869 = unsignedValue % base
x13397:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x13401:	xor edx, edx	; 3: 102 49 -46
x13404:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1870 = int_to_int £temporary1869 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1870
x13408:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1871 = unsignedValue / base
x13411:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x13415:	xor edx, edx	; 3: 102 49 -46
x13418:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1871, offset 6
x13422:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x13426:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x13430:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x13434:	mov ax, [bp + 14]	; 3: -117 70 14
x13437:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x13440:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 -114 52
x13445:	mov [bp + 20], bp	; 3: -119 110 20
x13448:	add bp, 18	; 3: -125 -59 18
x13451:	nop	; 1: -112
x13452:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x13454:	mov ax, [bp + 16]	; 3: -117 70 16
x13457:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x13460:	mov ax, [bp + 14]	; 3: -117 70 14
x13463:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x13466:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 -88 52
x13471:	mov [bp + 20], bp	; 3: -119 110 20
x13474:	add bp, 18	; 3: -125 -59 18
x13477:	nop	; 1: -112
x13478:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1873 = return_value

printUnsignedLongRec$17:	; c = £temporary1873
x13480:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x13483:	mov al, [bp + 18]	; 3: -118 70 18
x13486:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x13489:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 -65 52
x13494:	mov [bp + 21], bp	; 3: -119 110 21
x13497:	add bp, 19	; 3: -125 -59 19
x13500:	jmp printChar	; 3: -23 8 -3

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x13503:	mov ax, [bp]	; 3: -117 70 0
x13506:	mov di, [bp + 4]	; 3: -117 126 4
x13509:	mov bp, [bp + 2]	; 3: -117 110 2
x13512:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x13514:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x13518:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1859 = digit + 48
x13520:	mov bx, [bp + 6]	; 3: -117 94 6
x13523:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1860 = int_to_int £temporary1859 (Signed_Int -> Signed_Char)
x13526:	cmp bx, 0	; 3: -125 -5 0
x13529:	jge digitToChar$3	; 2: 125 4
x13531:	neg bx	; 2: -9 -37
x13533:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1860

digitToChar$4:	; return
x13535:	mov ax, [bp]	; 3: -117 70 0
x13538:	mov di, [bp + 4]	; 3: -117 126 4
x13541:	mov bp, [bp + 2]	; 3: -117 110 2
x13544:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x13546:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x13550:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1861 = digit - 10
x13552:	mov bx, [bp + 6]	; 3: -117 94 6
x13555:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1862 = £temporary1861 + 65
x13558:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1863 = int_to_int £temporary1862 (Signed_Int -> Signed_Char)
x13561:	cmp bx, 0	; 3: -125 -5 0
x13564:	jge digitToChar$9	; 2: 125 4
x13566:	neg bx	; 2: -9 -37
x13568:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1863

digitToChar$10:	; return
x13570:	mov ax, [bp]	; 3: -117 70 0
x13573:	mov di, [bp + 4]	; 3: -117 126 4
x13576:	mov bp, [bp + 2]	; 3: -117 110 2
x13579:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1864 = digit - 10
x13581:	mov bx, [bp + 6]	; 3: -117 94 6
x13584:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1865 = £temporary1864 + 97
x13587:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1866 = int_to_int £temporary1865 (Signed_Int -> Signed_Char)
x13590:	cmp bx, 0	; 3: -125 -5 0
x13593:	jge digitToChar$14	; 2: 125 4
x13595:	neg bx	; 2: -9 -37
x13597:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1866

digitToChar$15:	; return
x13599:	mov ax, [bp]	; 3: -117 70 0
x13602:	mov di, [bp + 4]	; 3: -117 126 4
x13605:	mov bp, [bp + 2]	; 3: -117 110 2
x13608:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x13610:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x13613:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x13615:	fcompp	; 2: -34 -39
x13617:	fstsw ax	; 3: -101 -33 -32
x13620:	sahf	; 1: -98
x13621:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x13623:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x13627:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 73 53
x13632:	mov [bp + 24], bp	; 3: -119 110 24
x13635:	add bp, 22	; 3: -125 -59 22
x13638:	jmp printChar	; 3: -23 126 -4

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x13641:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1929 = -longDoubleValue
x13644:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x13646:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x13649:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x13654:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x13659:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1930 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x13662:	fistp dword [container4bytes#]	; 4: -37 30 -14 28
x13666:	mov eax, [container4bytes#]	; 4: 102 -95 -14 28

printLongDoublePlain$14:	; longValue = £temporary1930
x13670:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x13674:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x13678:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x13682:	mov ax, [bp + 14]	; 3: -117 70 14
x13685:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x13688:	mov ax, [bp + 16]	; 3: -117 70 16
x13691:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x13694:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 -116 53
x13699:	mov [bp + 28], bp	; 3: -119 110 28
x13702:	add bp, 26	; 3: -125 -59 26
x13705:	jmp printLongInt	; 3: -23 -89 -5

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x13708:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1932 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x13711:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1933 = longDoubleValue - £temporary1932
x13714:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x13716:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x13719:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x13722:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x13725:	mov ax, [bp + 18]	; 3: -117 70 18
x13728:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x13731:	mov ax, [bp + 20]	; 3: -117 70 20
x13734:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x13737:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 -73 53
x13742:	mov [bp + 28], bp	; 3: -119 110 28
x13745:	add bp, 26	; 3: -125 -59 26
x13748:	nop	; 1: -112
x13749:	jmp printLongDoubleFraction	; 2: -21 11

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x13751:	mov ax, [bp]	; 3: -117 70 0
x13754:	mov di, [bp + 4]	; 3: -117 126 4
x13757:	mov bp, [bp + 2]	; 3: -117 110 2
x13760:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

printLongDoubleFraction:	; push float longDoubleValue
x13762:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x13765:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1908 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x13768:	fistp dword [container4bytes#]	; 4: -37 30 -14 28
x13772:	mov eax, [container4bytes#]	; 4: 102 -95 -14 28

printLongDoubleFraction$3:	; £temporary1909 = int_to_float £temporary1908 (Signed_Long_Int -> Long_Double)
x13776:	mov [container4bytes#], eax	; 4: 102 -93 -14 28
x13780:	fild dword [container4bytes#]	; 4: -37 6 -14 28

printLongDoubleFraction$4:	; £temporary1910 = longDoubleValue - £temporary1909
x13784:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x13786:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x13789:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x13793:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 6
x13795:	mov word [bp + 16], 6	; 5: -57 70 16 6 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x13800:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x13804:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x13806:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x13810:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x13812:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x13816:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 6 54
x13821:	mov [bp + 20], bp	; 3: -119 110 20
x13824:	add bp, 18	; 3: -125 -59 18
x13827:	jmp printChar	; 3: -23 -63 -5

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1916 = precision
x13830:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x13833:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1916 <= 0 goto 35
x13836:	cmp ax, 0	; 3: -125 -8 0
x13839:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; push float 10.0
x13841:	fld qword [float8$10.0#]	; 4: -35 6 -24 28

printLongDoubleFraction$18:	; push float longDoubleValue
x13845:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1918 = 10.0 * longDoubleValue
x13848:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; pop float longDoubleValue10
x13850:	fstp qword [bp + 18]	; 3: -35 94 18

printLongDoubleFraction$21:	; push float longDoubleValue10
x13853:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$22:	; £temporary1919 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x13856:	fistp word [container2bytes#]	; 4: -33 30 -16 28
x13860:	mov ax, [container2bytes#]	; 3: -95 -16 28

printLongDoubleFraction$23:	; digitValue = £temporary1919
x13863:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$24:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$25:	; £temporary1920 = digitValue + 48
x13866:	mov ax, [bp + 26]	; 3: -117 70 26
x13869:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$26:	; £temporary1921 = int_to_int £temporary1920 (Signed_Int -> Signed_Char)
x13872:	cmp ax, 0	; 3: -125 -8 0
x13875:	jge printLongDoubleFraction$27	; 2: 125 4
x13877:	neg ax	; 2: -9 -40
x13879:	neg al	; 2: -10 -40

printLongDoubleFraction$27:	; parameter £temporary1921, offset 6
x13881:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$28:	; call function noellipse-noellipse printChar
x13884:	mov word [bp + 28], printLongDoubleFraction$29	; 5: -57 70 28 74 54
x13889:	mov [bp + 30], bp	; 3: -119 110 30
x13892:	add bp, 28	; 3: -125 -59 28
x13895:	jmp printChar	; 3: -23 125 -5

printLongDoubleFraction$29:	; post call

printLongDoubleFraction$30:	; push float longDoubleValue10
x13898:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$31:	; £temporary1923 = int_to_float digitValue (Signed_Int -> Long_Double)
x13901:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$32:	; £temporary1924 = longDoubleValue10 - £temporary1923
x13904:	fsub	; 2: -34 -23

printLongDoubleFraction$33:	; pop float longDoubleValue
x13906:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$34:	; goto 14
x13909:	jmp printLongDoubleFraction$14	; 2: -21 -81

printLongDoubleFraction$35:	; return
x13911:	mov ax, [bp]	; 3: -117 70 0
x13914:	mov di, [bp + 4]	; 3: -117 126 4
x13917:	mov bp, [bp + 2]	; 3: -117 110 2
x13920:	jmp ax	; 2: -1 -32

printLongDoubleFraction$36:	; function end printLongDoubleFraction

printLongDoubleExpo:	; push float value
x13922:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x13925:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x13927:	fcompp	; 2: -34 -39
x13929:	fstsw ax	; 3: -101 -33 -32
x13932:	sahf	; 1: -98
x13933:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x13935:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x13939:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 -127 54
x13944:	mov [bp + 26], bp	; 3: -119 110 26
x13947:	add bp, 24	; 3: -125 -59 24
x13950:	jmp printChar	; 3: -23 70 -5

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x13953:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x13955:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x13958:	mov ax, [bp + 20]	; 3: -117 70 20
x13961:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x13964:	mov ax, [bp + 18]	; 3: -117 70 18
x13967:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x13970:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 -96 54
x13975:	mov [bp + 26], bp	; 3: -119 110 26
x13978:	add bp, 24	; 3: -125 -59 24
x13981:	jmp printLongDoubleFraction	; 3: -23 34 -1

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x13984:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x13988:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary1949 = 69
x13990:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x13992:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary1949 = 101
x13994:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary1949, offset 6
x13996:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x13999:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 -67 54
x14004:	mov [bp + 26], bp	; 3: -119 110 26
x14007:	add bp, 24	; 3: -125 -59 24
x14010:	jmp printChar	; 3: -23 10 -5

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x14013:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x14017:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 -49 54
x14022:	mov [bp + 26], bp	; 3: -119 110 26
x14025:	add bp, 24	; 3: -125 -59 24
x14028:	jmp printChar	; 3: -23 -8 -6

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x14031:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x14034:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x14037:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x14039:	fcompp	; 2: -34 -39
x14041:	fstsw ax	; 3: -101 -33 -32
x14044:	sahf	; 1: -98
x14045:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x14047:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x14051:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 -15 54
x14056:	mov [bp + 26], bp	; 3: -119 110 26
x14059:	add bp, 24	; 3: -125 -59 24
x14062:	jmp printChar	; 3: -23 -42 -6

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x14065:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary1954 = -value
x14068:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x14070:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x14073:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x14076:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x14079:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 13 55
x14084:	mov [bp + 26], bp	; 3: -119 110 26
x14087:	add bp, 24	; 3: -125 -59 24
x14090:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary1955 = return_value

printLongDoubleExpo$43:	; £temporary1956 = float_to_int £temporary1955 (Double -> Signed_Int)
x14093:	fistp word [container2bytes#]	; 4: -33 30 -16 28
x14097:	mov ax, [container2bytes#]	; 3: -95 -16 28

printLongDoubleExpo$44:	; expo = £temporary1956
x14100:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x14103:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x14106:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x14109:	fld qword [float8$10.0#]	; 4: -35 6 -24 28

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x14113:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary1957 = int_to_float expo (Signed_Int -> Double)
x14116:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary1957, offset 14
x14119:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x14122:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 56 55
x14127:	mov [bp + 36], bp	; 3: -119 110 36
x14130:	add bp, 34	; 3: -125 -59 34
x14133:	jmp pow	; 3: -23 -66 -27

printLongDoubleExpo$52:	; post call
x14136:	fstp qword [bp + 34]	; 3: -35 94 34
x14139:	fld qword [bp + 26]	; 3: -35 70 26
x14142:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary1958 = return_value

printLongDoubleExpo$54:	; £temporary1959 = value / £temporary1958
x14145:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x14147:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x14150:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x14153:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x14156:	mov ax, [bp + 14]	; 3: -117 70 14
x14159:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x14162:	mov ax, [bp + 16]	; 3: -117 70 16
x14165:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x14168:	mov ax, [bp + 18]	; 3: -117 70 18
x14171:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x14174:	mov ax, [bp + 20]	; 3: -117 70 20
x14177:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x14180:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 114 55
x14185:	mov [bp + 28], bp	; 3: -119 110 28
x14188:	add bp, 26	; 3: -125 -59 26
x14191:	jmp printLongDoublePlain	; 3: -23 -72 -3

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x14194:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x14198:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary1965 = 69
x14200:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x14202:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary1965 = 101
x14204:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary1965, offset 6
x14206:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x14209:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 -113 55
x14214:	mov [bp + 28], bp	; 3: -119 110 28
x14217:	add bp, 26	; 3: -125 -59 26
x14220:	jmp printChar	; 3: -23 56 -6

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary1967 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x14223:	mov ax, [bp + 24]	; 3: -117 70 24
x14226:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x14232:	cmp ax, 0	; 3: -125 -8 0
x14235:	jge printLongDoubleExpo$75	; 2: 125 5
x14237:	neg ax	; 2: -9 -40
x14239:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary1967, offset 6
x14242:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x14246:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x14251:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x14256:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 -66 55
x14261:	mov [bp + 28], bp	; 3: -119 110 28
x14264:	add bp, 26	; 3: -125 -59 26
x14267:	jmp printLongInt	; 3: -23 117 -7

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x14270:	mov ax, [bp]	; 3: -117 70 0
x14273:	mov di, [bp + 4]	; 3: -117 126 4
x14276:	mov bp, [bp + 2]	; 3: -117 110 2
x14279:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; call header integral zero 0 stack zero 0

log10$1:	; push float x
x14281:	fld qword [bp + 6]	; 3: -35 70 6

log10$2:	; parameter x, offset 6
x14284:	fstp qword [bp + 20]	; 3: -35 94 20

log10$3:	; call function noellipse-noellipse log
x14287:	mov word [bp + 14], log10$4	; 5: -57 70 14 -35 55
x14292:	mov [bp + 16], bp	; 3: -119 110 16
x14295:	add bp, 14	; 3: -125 -59 14
x14298:	jmp log	; 3: -23 -60 -26

log10$4:	; post call

log10$5:	; £temporary550 = return_value

log10$6:	; push float 2.30
x14301:	fld qword [float8$2.30#]	; 4: -35 6 -18 55

log10$7:	; £temporary551 = £temporary550 / 2.30
x14305:	fdiv	; 2: -34 -7

log10$8:	; return_value = £temporary551

log10$9:	; return
x14307:	mov ax, [bp]	; 3: -117 70 0
x14310:	mov di, [bp + 4]	; 3: -117 126 4
x14313:	mov bp, [bp + 2]	; 3: -117 110 2
x14316:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$2.30#:
x14318:	dq 2.30	; 8: 102 102 102 102 102 102 2 64

getenv:	; return_value = 0
x14326:	mov bx, 0	; 3: -69 0 0

getenv$1:	; return
x14329:	mov ax, [bp]	; 3: -117 70 0
x14332:	mov di, [bp + 4]	; 3: -117 126 4
x14335:	mov bp, [bp + 2]	; 3: -117 110 2
x14338:	jmp ax	; 2: -1 -32

getenv$2:	; function end getenv

system:	; return_value = -1
x14340:	mov bx, -1	; 3: -69 -1 -1

system$1:	; return
x14343:	mov ax, [bp]	; 3: -117 70 0
x14346:	mov di, [bp + 4]	; 3: -117 126 4
x14349:	mov bp, [bp + 2]	; 3: -117 110 2
x14352:	jmp ax	; 2: -1 -32

system$2:	; function end system

_abs:	; if value >= 0 goto 4
x14354:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x14358:	jge _abs$4	; 2: 125 7

_abs$1:	; £temporary3441 = -value
x14360:	mov bx, [bp + 6]	; 3: -117 94 6
x14363:	neg bx	; 2: -9 -37

_abs$2:	; £temporary3445 = £temporary3441

_abs$3:	; goto 5
x14365:	jmp _abs$5	; 2: -21 3

_abs$4:	; £temporary3445 = value
x14367:	mov bx, [bp + 6]	; 3: -117 94 6

_abs$5:	; return_value = £temporary3445

_abs$6:	; return
x14370:	mov ax, [bp]	; 3: -117 70 0
x14373:	mov di, [bp + 4]	; 3: -117 126 4
x14376:	mov bp, [bp + 2]	; 3: -117 110 2
x14379:	jmp ax	; 2: -1 -32

_abs$7:	; function end _abs

div:	; result$quot = 0
x14381:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

div$1:	; result$rem = 0
x14386:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

div$2:	; if denum != 0 goto 6
x14391:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x14395:	jne div$6	; 2: 117 22

div$3:	; errno = 6
x14397:	mov word [errno], 6	; 6: -57 6 -97 30 6 0

div$4:	; return_value = result
x14403:	mov bx, bp	; 2: -119 -21
x14405:	add bx, 10	; 3: -125 -61 10

div$5:	; return
x14408:	mov ax, [bp]	; 3: -117 70 0
x14411:	mov di, [bp + 4]	; 3: -117 126 4
x14414:	mov bp, [bp + 2]	; 3: -117 110 2
x14417:	jmp ax	; 2: -1 -32

div$6:	; result$quot = num / denum
x14419:	mov ax, [bp + 6]	; 3: -117 70 6
x14422:	xor dx, dx	; 2: 49 -46
x14424:	idiv word [bp + 8]	; 3: -9 126 8
x14427:	mov [bp + 10], ax	; 3: -119 70 10

div$7:	; result$rem = num % denum
x14430:	mov ax, [bp + 6]	; 3: -117 70 6
x14433:	xor dx, dx	; 2: 49 -46
x14435:	idiv word [bp + 8]	; 3: -9 126 8
x14438:	mov [bp + 12], dx	; 3: -119 86 12

div$8:	; return_value = result
x14441:	mov bx, bp	; 2: -119 -21
x14443:	add bx, 10	; 3: -125 -61 10

div$9:	; return
x14446:	mov ax, [bp]	; 3: -117 70 0
x14449:	mov di, [bp + 4]	; 3: -117 126 4
x14452:	mov bp, [bp + 2]	; 3: -117 110 2
x14455:	jmp ax	; 2: -1 -32

div$10:	; function end div

print_div:	; call header integral zero 0 stack zero 0

print_div$1:	; parameter string_div_t20quot2025i20rem2025i0A#, offset 6
x14457:	mov word [bp + 16], string_div_t20quot2025i20rem2025i0A#	; 5: -57 70 16 -88 56

print_div$2:	; parameter d$quot, offset 8
x14462:	mov ax, [bp + 6]	; 3: -117 70 6
x14465:	mov [bp + 18], ax	; 3: -119 70 18

print_div$3:	; parameter d$rem, offset 10
x14468:	mov ax, [bp + 8]	; 3: -117 70 8
x14471:	mov [bp + 20], ax	; 3: -119 70 20

print_div$4:	; call function noellipse-ellipse printf, extra 0
x14474:	mov word [bp + 10], print_div$5	; 5: -57 70 10 -99 56
x14479:	mov [bp + 12], bp	; 3: -119 110 12
x14482:	add bp, 10	; 3: -125 -59 10
x14485:	mov di, bp	; 2: -119 -17
x14487:	add di, 4	; 3: -125 -57 4
x14490:	jmp printf	; 3: -23 -40 -23

print_div$5:	; post call

print_div$6:	; return
x14493:	mov ax, [bp]	; 3: -117 70 0
x14496:	mov di, [bp + 4]	; 3: -117 126 4
x14499:	mov bp, [bp + 2]	; 3: -117 110 2
x14502:	jmp ax	; 2: -1 -32

print_div$7:	; function end print_div

string_div_t20quot2025i20rem2025i0A#:
x14504:	db "div_t quot %i rem %i", 10, 0	; 22: 100 105 118 95 116 32 113 117 111 116 32 37 105 32 114 101 109 32 37 105 10 0

ldiv:	; result$quot = 0
x14526:	mov dword [bp + 14], 0	; 8: 102 -57 70 14 0 0 0 0

ldiv$1:	; result$rem = 0
x14534:	mov dword [bp + 18], 0	; 8: 102 -57 70 18 0 0 0 0

ldiv$2:	; if denum != 0 goto 6
x14542:	cmp dword [bp + 10], 0	; 5: 102 -125 126 10 0
x14547:	jne ldiv$6	; 2: 117 22

ldiv$3:	; errno = 6
x14549:	mov word [errno], 6	; 6: -57 6 -97 30 6 0

ldiv$4:	; return_value = result
x14555:	mov bx, bp	; 2: -119 -21
x14557:	add bx, 14	; 3: -125 -61 14

ldiv$5:	; return
x14560:	mov ax, [bp]	; 3: -117 70 0
x14563:	mov di, [bp + 4]	; 3: -117 126 4
x14566:	mov bp, [bp + 2]	; 3: -117 110 2
x14569:	jmp ax	; 2: -1 -32

ldiv$6:	; result$quot = num / denum
x14571:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x14575:	xor edx, edx	; 3: 102 49 -46
x14578:	idiv dword [bp + 10]	; 4: 102 -9 126 10
x14582:	mov [bp + 14], eax	; 4: 102 -119 70 14

ldiv$7:	; result$rem = num % denum
x14586:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x14590:	xor edx, edx	; 3: 102 49 -46
x14593:	idiv dword [bp + 10]	; 4: 102 -9 126 10
x14597:	mov [bp + 18], edx	; 4: 102 -119 86 18

ldiv$8:	; return_value = result
x14601:	mov bx, bp	; 2: -119 -21
x14603:	add bx, 14	; 3: -125 -61 14

ldiv$9:	; return
x14606:	mov ax, [bp]	; 3: -117 70 0
x14609:	mov di, [bp + 4]	; 3: -117 126 4
x14612:	mov bp, [bp + 2]	; 3: -117 110 2
x14615:	jmp ax	; 2: -1 -32

ldiv$10:	; function end ldiv

print_ldiv:	; call header integral zero 0 stack zero 0

print_ldiv$1:	; parameter string_ldiv_t20quot2025li20rem2025li0A#, offset 6
x14617:	mov word [bp + 20], string_ldiv_t20quot2025li20rem2025li0A#	; 5: -57 70 20 76 57

print_ldiv$2:	; parameter ld$quot, offset 8
x14622:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x14626:	mov [bp + 22], eax	; 4: 102 -119 70 22

print_ldiv$3:	; parameter ld$rem, offset 12
x14630:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x14634:	mov [bp + 26], eax	; 4: 102 -119 70 26

print_ldiv$4:	; call function noellipse-ellipse printf, extra 0
x14638:	mov word [bp + 14], print_ldiv$5	; 5: -57 70 14 65 57
x14643:	mov [bp + 16], bp	; 3: -119 110 16
x14646:	add bp, 14	; 3: -125 -59 14
x14649:	mov di, bp	; 2: -119 -17
x14651:	add di, 8	; 3: -125 -57 8
x14654:	jmp printf	; 3: -23 52 -23

print_ldiv$5:	; post call

print_ldiv$6:	; return
x14657:	mov ax, [bp]	; 3: -117 70 0
x14660:	mov di, [bp + 4]	; 3: -117 126 4
x14663:	mov bp, [bp + 2]	; 3: -117 110 2
x14666:	jmp ax	; 2: -1 -32

print_ldiv$7:	; function end print_ldiv

string_ldiv_t20quot2025li20rem2025li0A#:
x14668:	db "ldiv_t quot %li rem %li", 10, 0	; 25: 108 100 105 118 95 116 32 113 117 111 116 32 37 108 105 32 114 101 109 32 37 108 105 10 0

qsort:	; £temporary3366 = int_to_int valueList (Pointer -> Pointer)
x14693:	mov ax, [bp + 6]	; 3: -117 70 6

qsort$1:	; charList = £temporary3366
x14696:	mov [bp + 14], ax	; 3: -119 70 14

qsort$2:	; size = listSize - 1
x14699:	mov ax, [bp + 8]	; 3: -117 70 8
x14702:	dec ax	; 1: 72
x14703:	mov [bp + 16], ax	; 3: -119 70 16

qsort$3:	; if size <= 0 goto 31
x14706:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x14710:	jle qsort$31	; 4: 15 -114 -118 0

qsort$4:	; update = 0
x14714:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

qsort$5:	; index = 0
x14719:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

qsort$6:	; if index >= size goto 28
x14724:	mov ax, [bp + 16]	; 3: -117 70 16
x14727:	cmp [bp + 20], ax	; 3: 57 70 20
x14730:	jge qsort$28	; 2: 125 108

qsort$7:	; £temporary3372 = index * valueSize
x14732:	mov ax, [bp + 20]	; 3: -117 70 20
x14735:	xor dx, dx	; 2: 49 -46
x14737:	imul word [bp + 10]	; 3: -9 110 10

qsort$8:	; valuePtr1 = charList + £temporary3372
x14740:	mov bx, [bp + 14]	; 3: -117 94 14
x14743:	add bx, ax	; 2: 1 -61
x14745:	mov [bp + 22], bx	; 3: -119 94 22

qsort$9:	; £temporary3374 = index + 1
x14748:	mov ax, [bp + 20]	; 3: -117 70 20
x14751:	inc ax	; 1: 64

qsort$10:	; £temporary3375 = £temporary3374 * valueSize
x14752:	xor dx, dx	; 2: 49 -46
x14754:	imul word [bp + 10]	; 3: -9 110 10

qsort$11:	; valuePtr2 = charList + £temporary3375
x14757:	mov bx, [bp + 14]	; 3: -117 94 14
x14760:	add bx, ax	; 2: 1 -61
x14762:	mov [bp + 24], bx	; 3: -119 94 24

qsort$12:	; call header integral zero 0 stack zero 0

qsort$13:	; parameter valuePtr1, offset 6
x14765:	mov ax, [bp + 22]	; 3: -117 70 22
x14768:	mov [bp + 32], ax	; 3: -119 70 32

qsort$14:	; parameter valuePtr2, offset 8
x14771:	mov ax, [bp + 24]	; 3: -117 70 24
x14774:	mov [bp + 34], ax	; 3: -119 70 34

qsort$15:	; call function noellipse-noellipse compare
x14777:	mov word [bp + 26], qsort$16	; 5: -57 70 26 -55 57
x14782:	mov [bp + 28], bp	; 3: -119 110 28
x14785:	mov ax, [bp + 12]	; 3: -117 70 12
x14788:	add bp, 26	; 3: -125 -59 26
x14791:	jmp ax	; 2: -1 -32

qsort$16:	; post call

qsort$17:	; £temporary3377 = return_value

qsort$18:	; if £temporary3377 <= 0 goto 26
x14793:	cmp bx, 0	; 3: -125 -5 0
x14796:	jle qsort$26	; 2: 126 37

qsort$19:	; call header integral zero 0 stack zero 0

qsort$20:	; parameter valuePtr1, offset 6
x14798:	mov ax, [bp + 22]	; 3: -117 70 22
x14801:	mov [bp + 32], ax	; 3: -119 70 32

qsort$21:	; parameter valuePtr2, offset 8
x14804:	mov ax, [bp + 24]	; 3: -117 70 24
x14807:	mov [bp + 34], ax	; 3: -119 70 34

qsort$22:	; parameter valueSize, offset 10
x14810:	mov ax, [bp + 10]	; 3: -117 70 10
x14813:	mov [bp + 36], ax	; 3: -119 70 36

qsort$23:	; call function noellipse-noellipse memswap
x14816:	mov word [bp + 26], qsort$24	; 5: -57 70 26 -18 57
x14821:	mov [bp + 28], bp	; 3: -119 110 28
x14824:	add bp, 26	; 3: -125 -59 26
x14827:	nop	; 1: -112
x14828:	jmp @27$memswap	; 2: -21 33

qsort$24:	; post call

qsort$25:	; update = 1
x14830:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

qsort$26:	; ++index
x14835:	inc word [bp + 20]	; 3: -1 70 20

qsort$27:	; goto 6
x14838:	jmp qsort$6	; 2: -21 -116

qsort$28:	; if update == 0 goto 31
x14840:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x14844:	je qsort$31	; 2: 116 6

qsort$29:	; --size
x14846:	dec word [bp + 16]	; 3: -1 78 16

qsort$30:	; goto 3
x14849:	jmp qsort$3	; 3: -23 110 -1

qsort$31:	; return
x14852:	mov ax, [bp]	; 3: -117 70 0
x14855:	mov di, [bp + 4]	; 3: -117 126 4
x14858:	mov bp, [bp + 2]	; 3: -117 110 2
x14861:	jmp ax	; 2: -1 -32

qsort$32:	; function end qsort

@27$memswap:	; index = 0
x14863:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

@27$memswap$1:	; if index >= valueSize goto 15
x14868:	mov ax, [bp + 10]	; 3: -117 70 10
x14871:	cmp [bp + 12], ax	; 3: 57 70 12
x14874:	jge @27$memswap$15	; 2: 125 43

@27$memswap$2:	; £temporary3359 = value1 + index
x14876:	mov si, [bp + 6]	; 3: -117 118 6
x14879:	add si, [bp + 12]	; 3: 3 118 12

@27$memswap$3:	; £temporary3358 -> £temporary3359 = *£temporary3359

@27$memswap$4:	; tempValue = £temporary3358 -> £temporary3359
x14882:	mov al, [si]	; 2: -118 4
x14884:	mov [bp + 14], al	; 3: -120 70 14

@27$memswap$5:	; £temporary3361 = value1 + index
x14887:	mov si, [bp + 6]	; 3: -117 118 6
x14890:	add si, [bp + 12]	; 3: 3 118 12

@27$memswap$6:	; £temporary3360 -> £temporary3361 = *£temporary3361

@27$memswap$7:	; £temporary3363 = value2 + index
x14893:	mov di, [bp + 8]	; 3: -117 126 8
x14896:	add di, [bp + 12]	; 3: 3 126 12

@27$memswap$8:	; £temporary3362 -> £temporary3363 = *£temporary3363

@27$memswap$9:	; £temporary3360 -> £temporary3361 = £temporary3362 -> £temporary3363
x14899:	mov al, [di]	; 2: -118 5
x14901:	mov [si], al	; 2: -120 4

@27$memswap$10:	; £temporary3365 = value2 + index
x14903:	mov si, [bp + 8]	; 3: -117 118 8
x14906:	add si, [bp + 12]	; 3: 3 118 12

@27$memswap$11:	; £temporary3364 -> £temporary3365 = *£temporary3365

@27$memswap$12:	; £temporary3364 -> £temporary3365 = tempValue
x14909:	mov al, [bp + 14]	; 3: -118 70 14
x14912:	mov [si], al	; 2: -120 4

@27$memswap$13:	; ++index
x14914:	inc word [bp + 12]	; 3: -1 70 12

@27$memswap$14:	; goto 1
x14917:	jmp @27$memswap$1	; 2: -21 -51

@27$memswap$15:	; return
x14919:	mov ax, [bp]	; 3: -117 70 0
x14922:	mov di, [bp + 4]	; 3: -117 126 4
x14925:	mov bp, [bp + 2]	; 3: -117 110 2
x14928:	jmp ax	; 2: -1 -32

@27$memswap$16:	; function end memswap

bsearch:	; firstIndex = 0
x14930:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

bsearch$1:	; lastIndex = listSize - 1
x14935:	mov ax, [bp + 10]	; 3: -117 70 10
x14938:	dec ax	; 1: 72
x14939:	mov [bp + 18], ax	; 3: -119 70 18

bsearch$2:	; if listSize != 0 goto 5
x14942:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x14946:	jne bsearch$5	; 2: 117 14

bsearch$3:	; return_value = 0
x14948:	mov bx, 0	; 3: -69 0 0

bsearch$4:	; return
x14951:	mov ax, [bp]	; 3: -117 70 0
x14954:	mov di, [bp + 4]	; 3: -117 126 4
x14957:	mov bp, [bp + 2]	; 3: -117 110 2
x14960:	jmp ax	; 2: -1 -32

bsearch$5:	; £temporary3302 = int_to_int valueList (Pointer -> Pointer)
x14962:	mov bx, [bp + 8]	; 3: -117 94 8

bsearch$6:	; £temporary3303 = firstIndex * valueSize
x14965:	mov ax, [bp + 16]	; 3: -117 70 16
x14968:	xor dx, dx	; 2: 49 -46
x14970:	imul word [bp + 12]	; 3: -9 110 12

bsearch$7:	; firstValuePtr = £temporary3302 + £temporary3303
x14973:	add bx, ax	; 2: 1 -61
x14975:	mov [bp + 20], bx	; 3: -119 94 20

bsearch$8:	; call header integral zero 0 stack zero 0

bsearch$9:	; parameter keyPtr, offset 6
x14978:	mov ax, [bp + 6]	; 3: -117 70 6
x14981:	mov [bp + 28], ax	; 3: -119 70 28

bsearch$10:	; parameter firstValuePtr, offset 8
x14984:	mov ax, [bp + 20]	; 3: -117 70 20
x14987:	mov [bp + 30], ax	; 3: -119 70 30

bsearch$11:	; call function noellipse-noellipse compare
x14990:	mov word [bp + 22], bsearch$12	; 5: -57 70 22 -98 58
x14995:	mov [bp + 24], bp	; 3: -119 110 24
x14998:	mov ax, [bp + 14]	; 3: -117 70 14
x15001:	add bp, 22	; 3: -125 -59 22
x15004:	jmp ax	; 2: -1 -32

bsearch$12:	; post call

bsearch$13:	; £temporary3305 = return_value

bsearch$14:	; firstCompare = £temporary3305
x15006:	mov [bp + 22], bx	; 3: -119 94 22

bsearch$15:	; if firstCompare >= 0 goto 18
x15009:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x15013:	jge bsearch$18	; 2: 125 14

bsearch$16:	; return_value = 0
x15015:	mov bx, 0	; 3: -69 0 0

bsearch$17:	; return
x15018:	mov ax, [bp]	; 3: -117 70 0
x15021:	mov di, [bp + 4]	; 3: -117 126 4
x15024:	mov bp, [bp + 2]	; 3: -117 110 2
x15027:	jmp ax	; 2: -1 -32

bsearch$18:	; if firstCompare != 0 goto 21
x15029:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x15033:	jne bsearch$21	; 2: 117 14

bsearch$19:	; return_value = firstValuePtr
x15035:	mov bx, [bp + 20]	; 3: -117 94 20

bsearch$20:	; return
x15038:	mov ax, [bp]	; 3: -117 70 0
x15041:	mov di, [bp + 4]	; 3: -117 126 4
x15044:	mov bp, [bp + 2]	; 3: -117 110 2
x15047:	jmp ax	; 2: -1 -32

bsearch$21:	; £temporary3308 = int_to_int valueList (Pointer -> Pointer)
x15049:	mov bx, [bp + 8]	; 3: -117 94 8

bsearch$22:	; £temporary3309 = lastIndex * valueSize
x15052:	mov ax, [bp + 18]	; 3: -117 70 18
x15055:	xor dx, dx	; 2: 49 -46
x15057:	imul word [bp + 12]	; 3: -9 110 12

bsearch$23:	; lastValuePtr = £temporary3308 + £temporary3309
x15060:	add bx, ax	; 2: 1 -61
x15062:	mov [bp + 20], bx	; 3: -119 94 20

bsearch$24:	; call header integral zero 0 stack zero 0

bsearch$25:	; parameter keyPtr, offset 6
x15065:	mov ax, [bp + 6]	; 3: -117 70 6
x15068:	mov [bp + 28], ax	; 3: -119 70 28

bsearch$26:	; parameter lastValuePtr, offset 8
x15071:	mov ax, [bp + 20]	; 3: -117 70 20
x15074:	mov [bp + 30], ax	; 3: -119 70 30

bsearch$27:	; call function noellipse-noellipse compare
x15077:	mov word [bp + 22], bsearch$28	; 5: -57 70 22 -11 58
x15082:	mov [bp + 24], bp	; 3: -119 110 24
x15085:	mov ax, [bp + 14]	; 3: -117 70 14
x15088:	add bp, 22	; 3: -125 -59 22
x15091:	jmp ax	; 2: -1 -32

bsearch$28:	; post call

bsearch$29:	; £temporary3311 = return_value

bsearch$30:	; lastCompare = £temporary3311
x15093:	mov [bp + 22], bx	; 3: -119 94 22

bsearch$31:	; if lastCompare <= 0 goto 34
x15096:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x15100:	jle bsearch$34	; 2: 126 14

bsearch$32:	; return_value = 0
x15102:	mov bx, 0	; 3: -69 0 0

bsearch$33:	; return
x15105:	mov ax, [bp]	; 3: -117 70 0
x15108:	mov di, [bp + 4]	; 3: -117 126 4
x15111:	mov bp, [bp + 2]	; 3: -117 110 2
x15114:	jmp ax	; 2: -1 -32

bsearch$34:	; if lastCompare != 0 goto 37
x15116:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x15120:	jne bsearch$37	; 2: 117 14

bsearch$35:	; return_value = lastValuePtr
x15122:	mov bx, [bp + 20]	; 3: -117 94 20

bsearch$36:	; return
x15125:	mov ax, [bp]	; 3: -117 70 0
x15128:	mov di, [bp + 4]	; 3: -117 126 4
x15131:	mov bp, [bp + 2]	; 3: -117 110 2
x15134:	jmp ax	; 2: -1 -32

bsearch$37:	; £temporary3314 = firstIndex + lastIndex
x15136:	mov ax, [bp + 16]	; 3: -117 70 16
x15139:	add ax, [bp + 18]	; 3: 3 70 18

bsearch$38:	; middleIndex = £temporary3314 / 2
x15142:	xor dx, dx	; 2: 49 -46
x15144:	idiv word [int2$2#]	; 4: -9 62 -92 6
x15148:	mov [bp + 20], ax	; 3: -119 70 20

bsearch$39:	; £temporary3316 = int_to_int valueList (Pointer -> Pointer)
x15151:	mov bx, [bp + 8]	; 3: -117 94 8

bsearch$40:	; £temporary3317 = middleIndex * valueSize
x15154:	mov ax, [bp + 20]	; 3: -117 70 20
x15157:	xor dx, dx	; 2: 49 -46
x15159:	imul word [bp + 12]	; 3: -9 110 12

bsearch$41:	; middleValuePtr = £temporary3316 + £temporary3317
x15162:	add bx, ax	; 2: 1 -61
x15164:	mov [bp + 22], bx	; 3: -119 94 22

bsearch$42:	; call header integral zero 0 stack zero 0

bsearch$43:	; parameter keyPtr, offset 6
x15167:	mov ax, [bp + 6]	; 3: -117 70 6
x15170:	mov [bp + 30], ax	; 3: -119 70 30

bsearch$44:	; parameter middleValuePtr, offset 8
x15173:	mov ax, [bp + 22]	; 3: -117 70 22
x15176:	mov [bp + 32], ax	; 3: -119 70 32

bsearch$45:	; call function noellipse-noellipse compare
x15179:	mov word [bp + 24], bsearch$46	; 5: -57 70 24 91 59
x15184:	mov [bp + 26], bp	; 3: -119 110 26
x15187:	mov ax, [bp + 14]	; 3: -117 70 14
x15190:	add bp, 24	; 3: -125 -59 24
x15193:	jmp ax	; 2: -1 -32

bsearch$46:	; post call

bsearch$47:	; £temporary3319 = return_value

bsearch$48:	; middleCompare = £temporary3319
x15195:	mov [bp + 24], bx	; 3: -119 94 24

bsearch$49:	; if middleCompare >= 0 goto 52
x15198:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x15202:	jge bsearch$52	; 2: 125 9

bsearch$50:	; lastIndex = middleIndex
x15204:	mov ax, [bp + 20]	; 3: -117 70 20
x15207:	mov [bp + 18], ax	; 3: -119 70 18

bsearch$51:	; goto 5
x15210:	jmp bsearch$5	; 3: -23 5 -1

bsearch$52:	; if middleCompare <= 0 goto 55
x15213:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x15217:	jle bsearch$55	; 2: 126 9

bsearch$53:	; firstIndex = middleIndex
x15219:	mov ax, [bp + 20]	; 3: -117 70 20
x15222:	mov [bp + 16], ax	; 3: -119 70 16

bsearch$54:	; goto 5
x15225:	jmp bsearch$5	; 3: -23 -10 -2

bsearch$55:	; return_value = middleValuePtr
x15228:	mov bx, [bp + 22]	; 3: -117 94 22

bsearch$56:	; return
x15231:	mov ax, [bp]	; 3: -117 70 0
x15234:	mov di, [bp + 4]	; 3: -117 126 4
x15237:	mov bp, [bp + 2]	; 3: -117 110 2
x15240:	jmp ax	; 2: -1 -32

bsearch$57:	; function end bsearch

$StackTop:
x15242:
