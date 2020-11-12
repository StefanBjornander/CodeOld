	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 74 60
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 74 60 0 0

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
x320:	mov word [bp + 14], string_atof28221232E4562229203D2025f0A#	; 5: -57 70 14 16 6

stdlib_test$2:	; call header integral zero 0 stack zero 0

stdlib_test$3:	; parameter string_1232E456#, offset 14
x325:	mov word [bp + 22], string_1232E456#	; 5: -57 70 22 38 6

stdlib_test$4:	; call function noellipse-noellipse atof
x330:	mov word [bp + 16], stdlib_test$5	; 5: -57 70 16 88 1
x335:	mov [bp + 18], bp	; 3: -119 110 18
x338:	add bp, 16	; 3: -125 -59 16
x341:	jmp atof	; 3: -23 -105 6

stdlib_test$5:	; post call

stdlib_test$6:	; £temporary5960 = return_value

stdlib_test$7:	; parameter £temporary5960, offset 8
x344:	fstp qword [bp + 16]	; 3: -35 94 16

stdlib_test$8:	; call function noellipse-ellipse printf, extra 0
x347:	mov word [bp + 8], stdlib_test$9	; 5: -57 70 8 110 1
x352:	mov [bp + 10], bp	; 3: -119 110 10
x355:	add bp, 8	; 3: -125 -59 8
x358:	mov di, bp	; 2: -119 -17
x360:	add di, 8	; 3: -125 -57 8
x363:	jmp printf	; 3: -23 -81 33

stdlib_test$9:	; post call

stdlib_test$10:	; call header integral zero 0 stack zero 0

stdlib_test$11:	; parameter string_strtod28221232E456789abc222C2026p29203D202825f2C2025s290A#, offset 6
x366:	mov word [bp + 14], string_strtod28221232E456789abc222C2026p29203D202825f2C2025s290A#	; 5: -57 70 14 46 6

stdlib_test$12:	; call header integral zero 0 stack zero 0

stdlib_test$13:	; parameter string_1232E456789abc#, offset 14
x371:	mov word [bp + 22], string_1232E456789abc#	; 5: -57 70 22 86 6

stdlib_test$14:	; £temporary5962 = &p
x376:	mov si, bp	; 2: -119 -18
x378:	add si, 6	; 3: -125 -58 6

stdlib_test$15:	; parameter £temporary5962, offset 16
x381:	mov [bp + 24], si	; 3: -119 118 24

stdlib_test$16:	; call function noellipse-noellipse strtod
x384:	mov word [bp + 16], stdlib_test$17	; 5: -57 70 16 -114 1
x389:	mov [bp + 18], bp	; 3: -119 110 18
x392:	add bp, 16	; 3: -125 -59 16
x395:	jmp strtod	; 3: -23 -123 6

stdlib_test$17:	; post call

stdlib_test$18:	; £temporary5963 = return_value

stdlib_test$19:	; parameter £temporary5963, offset 8
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
x423:	jmp printf	; 3: -23 115 33

stdlib_test$22:	; post call

stdlib_test$23:	; call header integral zero 0 stack zero 0

stdlib_test$24:	; parameter string_0Agetenv2822path2229203D2025s0A#, offset 6
x426:	mov word [bp + 12], string_0Agetenv2822path2229203D2025s0A#	; 5: -57 70 12 100 6

stdlib_test$25:	; call header integral zero 0 stack zero 0

stdlib_test$26:	; parameter string_path#, offset 14
x431:	mov word [bp + 20], string_path#	; 5: -57 70 20 122 6

stdlib_test$27:	; call function noellipse-noellipse getenv
x436:	mov word [bp + 14], stdlib_test$28	; 5: -57 70 14 -62 1
x441:	mov [bp + 16], bp	; 3: -119 110 16
x444:	add bp, 14	; 3: -125 -59 14
x447:	jmp getenv	; 3: -23 -36 54

stdlib_test$28:	; post call

stdlib_test$29:	; £temporary5965 = return_value

stdlib_test$30:	; parameter £temporary5965, offset 8
x450:	mov [bp + 14], bx	; 3: -119 94 14

stdlib_test$31:	; call function noellipse-ellipse printf, extra 0
x453:	mov word [bp + 6], stdlib_test$32	; 5: -57 70 6 -40 1
x458:	mov [bp + 8], bp	; 3: -119 110 8
x461:	add bp, 6	; 3: -125 -59 6
x464:	mov di, bp	; 2: -119 -17
x466:	add di, 2	; 3: -125 -57 2
x469:	jmp printf	; 3: -23 69 33

stdlib_test$32:	; post call

stdlib_test$33:	; call header integral zero 0 stack zero 0

stdlib_test$34:	; parameter string_system2822dir22290A#, offset 6
x472:	mov word [bp + 12], string_system2822dir22290A#	; 5: -57 70 12 127 6

stdlib_test$35:	; call function noellipse-ellipse printf, extra 0
x477:	mov word [bp + 6], stdlib_test$36	; 5: -57 70 6 -19 1
x482:	mov [bp + 8], bp	; 3: -119 110 8
x485:	add bp, 6	; 3: -125 -59 6
x488:	mov di, bp	; 2: -119 -17
x490:	jmp printf	; 3: -23 48 33

stdlib_test$36:	; post call

stdlib_test$37:	; call header integral zero 0 stack zero 0

stdlib_test$38:	; parameter string_dir#, offset 6
x493:	mov word [bp + 12], string_dir#	; 5: -57 70 12 -114 6

stdlib_test$39:	; call function noellipse-noellipse system
x498:	mov word [bp + 6], stdlib_test$40	; 5: -57 70 6 0 2
x503:	mov [bp + 8], bp	; 3: -119 110 8
x506:	add bp, 6	; 3: -125 -59 6
x509:	jmp system	; 3: -23 -84 54

stdlib_test$40:	; post call

stdlib_test$41:	; call header integral zero 0 stack zero 0

stdlib_test$42:	; parameter string_0Aabs282D329203D2025i2C20abs28329203D2025i0A#, offset 6
x512:	mov word [bp + 12], string_0Aabs282D329203D2025i2C20abs28329203D2025i0A#	; 5: -57 70 12 -110 6

stdlib_test$43:	; call header integral zero 0 stack zero 0

stdlib_test$44:	; parameter -3, offset 14
x517:	mov word [bp + 20], -3	; 5: -57 70 20 -3 -1

stdlib_test$45:	; call function noellipse-noellipse _abs
x522:	mov word [bp + 14], stdlib_test$46	; 5: -57 70 14 24 2
x527:	mov [bp + 16], bp	; 3: -119 110 16
x530:	add bp, 14	; 3: -125 -59 14
x533:	jmp _abs	; 3: -23 -94 54

stdlib_test$46:	; post call

stdlib_test$47:	; £temporary5969 = return_value

stdlib_test$48:	; parameter £temporary5969, offset 8
x536:	mov [bp + 14], bx	; 3: -119 94 14

stdlib_test$49:	; call header integral zero 0 stack zero 0

stdlib_test$50:	; parameter 3, offset 16
x539:	mov word [bp + 22], 3	; 5: -57 70 22 3 0

stdlib_test$51:	; call function noellipse-noellipse _abs
x544:	mov word [bp + 16], stdlib_test$52	; 5: -57 70 16 46 2
x549:	mov [bp + 18], bp	; 3: -119 110 18
x552:	add bp, 16	; 3: -125 -59 16
x555:	jmp _abs	; 3: -23 -116 54

stdlib_test$52:	; post call

stdlib_test$53:	; £temporary5970 = return_value

stdlib_test$54:	; parameter £temporary5970, offset 10
x558:	mov [bp + 16], bx	; 3: -119 94 16

stdlib_test$55:	; call function noellipse-ellipse printf, extra 0
x561:	mov word [bp + 6], stdlib_test$56	; 5: -57 70 6 68 2
x566:	mov [bp + 8], bp	; 3: -119 110 8
x569:	add bp, 6	; 3: -125 -59 6
x572:	mov di, bp	; 2: -119 -17
x574:	add di, 4	; 3: -125 -57 4
x577:	jmp printf	; 3: -23 -39 32

stdlib_test$56:	; post call

stdlib_test$57:	; call header integral zero 0 stack zero 0

stdlib_test$58:	; parameter string_labs282D3l29203D2025li2C20labs283l29203D2025li0A0A#, offset 6
x580:	mov word [bp + 12], string_labs282D3l29203D2025li2C20labs283l29203D2025li0A0A#	; 5: -57 70 12 -82 6

stdlib_test$59:	; call header integral zero 0 stack zero 0

stdlib_test$60:	; parameter -3, offset 14
x585:	mov dword [bp + 20], -3	; 8: 102 -57 70 20 -3 -1 -1 -1

stdlib_test$61:	; call function noellipse-noellipse labs
x593:	mov word [bp + 14], stdlib_test$62	; 5: -57 70 14 95 2
x598:	mov [bp + 16], bp	; 3: -119 110 16
x601:	add bp, 14	; 3: -125 -59 14
x604:	jmp labs	; 3: -23 17 47

stdlib_test$62:	; post call

stdlib_test$63:	; £temporary5972 = return_value

stdlib_test$64:	; parameter £temporary5972, offset 8
x607:	mov [bp + 14], ebx	; 4: 102 -119 94 14

stdlib_test$65:	; call header integral zero 0 stack zero 0

stdlib_test$66:	; parameter 3, offset 18
x611:	mov dword [bp + 24], 3	; 8: 102 -57 70 24 3 0 0 0

stdlib_test$67:	; call function noellipse-noellipse labs
x619:	mov word [bp + 18], stdlib_test$68	; 5: -57 70 18 121 2
x624:	mov [bp + 20], bp	; 3: -119 110 20
x627:	add bp, 18	; 3: -125 -59 18
x630:	jmp labs	; 3: -23 -9 46

stdlib_test$68:	; post call

stdlib_test$69:	; £temporary5973 = return_value

stdlib_test$70:	; parameter £temporary5973, offset 12
x633:	mov [bp + 18], ebx	; 4: 102 -119 94 18

stdlib_test$71:	; call function noellipse-ellipse printf, extra 0
x637:	mov word [bp + 6], stdlib_test$72	; 5: -57 70 6 -112 2
x642:	mov [bp + 8], bp	; 3: -119 110 8
x645:	add bp, 6	; 3: -125 -59 6
x648:	mov di, bp	; 2: -119 -17
x650:	add di, 8	; 3: -125 -57 8
x653:	jmp printf	; 3: -23 -115 32

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
x677:	jmp div	; 3: -23 45 54

stdlib_test$77:	; post call

stdlib_test$78:	; £temporary5975 -> £temporary5976 = return_value

stdlib_test$79:	; i = £temporary5975 -> £temporary5976
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

stdlib_test$81:	; parameter string_div_t28102C20329203D202825i2C2025i290A#, offset 6
x699:	mov word [bp + 16], string_div_t28102C20329203D202825i2C2025i290A#	; 5: -57 70 16 -48 6

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
x732:	jmp printf	; 3: -23 62 32

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
x770:	jmp print_div	; 3: -23 28 54

stdlib_test$89:	; post call

stdlib_test$90:	; £temporary5980 -> £temporary5981 = return_value

stdlib_test$91:	; j = £temporary5980 -> £temporary5981
x773:	mov si, bp	; 2: -119 -18
x775:	add si, 10	; 3: -125 -58 10
x778:	mov al, 4	; 2: -80 4

stdlib_test$91$Loop:
x780:	mov ah, [bx]	; 2: -118 39
x782:	mov [si], ah	; 2: -120 36
x784:	inc bx	; 1: 67
x785:	inc si	; 1: 70
x786:	dec al	; 2: -2 -56
x788:	cmp al, 0	; 2: 60 0
x790:	jne stdlib_test$91$Loop	; 2: 117 -12

stdlib_test$92:	; call header integral zero 0 stack zero 0

stdlib_test$93:	; parameter string_div_t28102C20329203D202825i2C2025i290A0A#, offset 6
x792:	mov word [bp + 20], string_div_t28102C20329203D202825i2C2025i290A0A#	; 5: -57 70 20 -23 6

stdlib_test$94:	; parameter j$quot, offset 8
x797:	mov ax, [bp + 10]	; 3: -117 70 10
x800:	mov [bp + 22], ax	; 3: -119 70 22

stdlib_test$95:	; parameter j$rem, offset 10
x803:	mov ax, [bp + 12]	; 3: -117 70 12
x806:	mov [bp + 24], ax	; 3: -119 70 24

stdlib_test$96:	; call function noellipse-ellipse printf, extra 0
x809:	mov word [bp + 14], stdlib_test$97	; 5: -57 70 14 60 3
x814:	mov [bp + 16], bp	; 3: -119 110 16
x817:	add bp, 14	; 3: -125 -59 14
x820:	mov di, bp	; 2: -119 -17
x822:	add di, 4	; 3: -125 -57 4
x825:	jmp printf	; 3: -23 -31 31

stdlib_test$97:	; post call

stdlib_test$98:	; call header integral zero 0 stack zero 0

stdlib_test$99:	; parameter 10, offset 6
x828:	mov dword [bp + 12], 10	; 8: 102 -57 70 12 10 0 0 0

stdlib_test$100:	; parameter 3, offset 10
x836:	mov dword [bp + 16], 3	; 8: 102 -57 70 16 3 0 0 0

stdlib_test$101:	; call function noellipse-noellipse ldiv
x844:	mov word [bp + 6], stdlib_test$102	; 5: -57 70 6 90 3
x849:	mov [bp + 8], bp	; 3: -119 110 8
x852:	add bp, 6	; 3: -125 -59 6
x855:	jmp ldiv	; 3: -23 23 54

stdlib_test$102:	; post call

stdlib_test$103:	; £temporary5985 -> £temporary5986 = return_value

stdlib_test$104:	; li = £temporary5985 -> £temporary5986
x858:	mov si, bp	; 2: -119 -18
x860:	add si, 6	; 3: -125 -58 6
x863:	mov al, 8	; 2: -80 8

stdlib_test$104$Loop:
x865:	mov ah, [bx]	; 2: -118 39
x867:	mov [si], ah	; 2: -120 36
x869:	inc bx	; 1: 67
x870:	inc si	; 1: 70
x871:	dec al	; 2: -2 -56
x873:	cmp al, 0	; 2: 60 0
x875:	jne stdlib_test$104$Loop	; 2: 117 -12

stdlib_test$105:	; call header integral zero 0 stack zero 0

stdlib_test$106:	; parameter string_ldiv_t28102C20329203D202825li2C2025li290A#, offset 6
x877:	mov word [bp + 20], string_ldiv_t28102C20329203D202825li2C2025li290A#	; 5: -57 70 20 3 7

stdlib_test$107:	; parameter li$quot, offset 8
x882:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x886:	mov [bp + 22], eax	; 4: 102 -119 70 22

stdlib_test$108:	; parameter li$rem, offset 12
x890:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x894:	mov [bp + 26], eax	; 4: 102 -119 70 26

stdlib_test$109:	; call function noellipse-ellipse printf, extra 0
x898:	mov word [bp + 14], stdlib_test$110	; 5: -57 70 14 -107 3
x903:	mov [bp + 16], bp	; 3: -119 110 16
x906:	add bp, 14	; 3: -125 -59 14
x909:	mov di, bp	; 2: -119 -17
x911:	add di, 8	; 3: -125 -57 8
x914:	jmp printf	; 3: -23 -120 31

stdlib_test$110:	; post call

stdlib_test$111:	; call header integral zero 0 stack zero 0

stdlib_test$112:	; parameter li, offset 6
x917:	mov si, bp	; 2: -119 -18
x919:	add si, 6	; 3: -125 -58 6
x922:	mov di, bp	; 2: -119 -17
x924:	add di, 20	; 3: -125 -57 20
x927:	mov al, 8	; 2: -80 8

stdlib_test$112$Loop:
x929:	mov ah, [si]	; 2: -118 36
x931:	mov [di], ah	; 2: -120 37
x933:	inc si	; 1: 70
x934:	inc di	; 1: 71
x935:	dec al	; 2: -2 -56
x937:	cmp al, 0	; 2: 60 0
x939:	jne stdlib_test$112$Loop	; 2: 117 -12

stdlib_test$113:	; call function noellipse-noellipse print_ldiv
x941:	mov word [bp + 14], stdlib_test$114	; 5: -57 70 14 -69 3
x946:	mov [bp + 16], bp	; 3: -119 110 16
x949:	add bp, 14	; 3: -125 -59 14
x952:	jmp print_ldiv	; 3: -23 17 54

stdlib_test$114:	; post call

stdlib_test$115:	; £temporary5990 -> £temporary5991 = return_value

stdlib_test$116:	; lj = £temporary5990 -> £temporary5991
x955:	mov si, bp	; 2: -119 -18
x957:	add si, 14	; 3: -125 -58 14
x960:	mov al, 8	; 2: -80 8

stdlib_test$116$Loop:
x962:	mov ah, [bx]	; 2: -118 39
x964:	mov [si], ah	; 2: -120 36
x966:	inc bx	; 1: 67
x967:	inc si	; 1: 70
x968:	dec al	; 2: -2 -56
x970:	cmp al, 0	; 2: 60 0
x972:	jne stdlib_test$116$Loop	; 2: 117 -12

stdlib_test$117:	; call header integral zero 0 stack zero 0

stdlib_test$118:	; parameter string_ldiv_t28102C20329203D202825li2C2025li290A0A#, offset 6
x974:	mov word [bp + 28], string_ldiv_t28102C20329203D202825li2C2025li290A0A#	; 5: -57 70 28 31 7

stdlib_test$119:	; parameter lj$quot, offset 8
x979:	mov eax, [bp + 14]	; 4: 102 -117 70 14
x983:	mov [bp + 30], eax	; 4: 102 -119 70 30

stdlib_test$120:	; parameter lj$rem, offset 12
x987:	mov eax, [bp + 18]	; 4: 102 -117 70 18
x991:	mov [bp + 34], eax	; 4: 102 -119 70 34

stdlib_test$121:	; call function noellipse-ellipse printf, extra 0
x995:	mov word [bp + 22], stdlib_test$122	; 5: -57 70 22 -10 3
x1000:	mov [bp + 24], bp	; 3: -119 110 24
x1003:	add bp, 22	; 3: -125 -59 22
x1006:	mov di, bp	; 2: -119 -17
x1008:	add di, 8	; 3: -125 -57 8
x1011:	jmp printf	; 3: -23 39 31

stdlib_test$122:	; post call

stdlib_test$123:	; list[0] = 3
x1014:	mov word [bp + 6], 3	; 5: -57 70 6 3 0

stdlib_test$124:	; list[1] = 4
x1019:	mov word [bp + 8], 4	; 5: -57 70 8 4 0

stdlib_test$125:	; list[2] = 2
x1024:	mov word [bp + 10], 2	; 5: -57 70 10 2 0

stdlib_test$126:	; list[3] = 1
x1029:	mov word [bp + 12], 1	; 5: -57 70 12 1 0

stdlib_test$127:	; size = 4
x1034:	mov word [bp + 14], 4	; 5: -57 70 14 4 0

stdlib_test$128:	; call header integral zero 0 stack zero 0

stdlib_test$129:	; parameter string_0AA20List2013A20#, offset 6
x1039:	mov word [bp + 24], string_0AA20List2013A20#	; 5: -57 70 24 60 7

stdlib_test$130:	; call function noellipse-ellipse printf, extra 0
x1044:	mov word [bp + 18], stdlib_test$131	; 5: -57 70 18 36 4
x1049:	mov [bp + 20], bp	; 3: -119 110 20
x1052:	add bp, 18	; 3: -125 -59 18
x1055:	mov di, bp	; 2: -119 -17
x1057:	jmp printf	; 3: -23 -7 30

stdlib_test$131:	; post call

stdlib_test$132:	; index = 0
x1060:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

stdlib_test$133:	; if index >= size goto 144
x1065:	mov ax, [bp + 14]	; 3: -117 70 14
x1068:	cmp [bp + 16], ax	; 3: 57 70 16
x1071:	jge stdlib_test$144	; 2: 125 50

stdlib_test$134:	; call header integral zero 0 stack zero 0

stdlib_test$135:	; parameter string_25i20#, offset 6
x1073:	mov word [bp + 24], string_25i20#	; 5: -57 70 24 72 7

stdlib_test$136:	; £temporary6003 = index * 2
x1078:	mov ax, [bp + 16]	; 3: -117 70 16
x1081:	xor dx, dx	; 2: 49 -46
x1083:	mul word [int2$2#]	; 4: -9 38 76 7

stdlib_test$137:	; £temporary6004 = list + £temporary6003
x1087:	mov si, bp	; 2: -119 -18
x1089:	add si, 6	; 3: -125 -58 6
x1092:	add si, ax	; 2: 1 -58

stdlib_test$138:	; £temporary6005 -> £temporary6004 = *£temporary6004

stdlib_test$139:	; parameter £temporary6005 -> £temporary6004, offset 8
x1094:	mov ax, [si]	; 2: -117 4
x1096:	mov [bp + 26], ax	; 3: -119 70 26

stdlib_test$140:	; call function noellipse-ellipse printf, extra 0
x1099:	mov word [bp + 18], stdlib_test$141	; 5: -57 70 18 94 4
x1104:	mov [bp + 20], bp	; 3: -119 110 20
x1107:	add bp, 18	; 3: -125 -59 18
x1110:	mov di, bp	; 2: -119 -17
x1112:	add di, 2	; 3: -125 -57 2
x1115:	jmp printf	; 3: -23 -65 30

stdlib_test$141:	; post call

stdlib_test$142:	; ++index
x1118:	inc word [bp + 16]	; 3: -1 70 16

stdlib_test$143:	; goto 133
x1121:	jmp stdlib_test$133	; 2: -21 -58

stdlib_test$144:	; call header integral zero 0 stack zero 0

stdlib_test$145:	; parameter string_0AB20List2023A20#, offset 6
x1123:	mov word [bp + 24], string_0AB20List2023A20#	; 5: -57 70 24 78 7

stdlib_test$146:	; call function noellipse-ellipse printf, extra 0
x1128:	mov word [bp + 18], stdlib_test$147	; 5: -57 70 18 120 4
x1133:	mov [bp + 20], bp	; 3: -119 110 20
x1136:	add bp, 18	; 3: -125 -59 18
x1139:	mov di, bp	; 2: -119 -17
x1141:	jmp printf	; 3: -23 -91 30

stdlib_test$147:	; post call

stdlib_test$148:	; call header integral zero 0 stack zero 0

stdlib_test$149:	; parameter list, offset 6
x1144:	mov [bp + 24], bp	; 3: -119 110 24
x1147:	add word [bp + 24], 6	; 4: -125 70 24 6

stdlib_test$150:	; parameter size, offset 8
x1151:	mov ax, [bp + 14]	; 3: -117 70 14
x1154:	mov [bp + 26], ax	; 3: -119 70 26

stdlib_test$151:	; parameter 2, offset 10
x1157:	mov word [bp + 28], 2	; 5: -57 70 28 2 0

stdlib_test$152:	; parameter compare, offset 12
x1162:	mov word [bp + 30], compare	; 5: -57 70 30 90 7

stdlib_test$153:	; call function noellipse-ellipse qsort, extra 0
x1167:	mov word [bp + 18], stdlib_test$154	; 5: -57 70 18 -97 4
x1172:	mov [bp + 20], bp	; 3: -119 110 20
x1175:	add bp, 18	; 3: -125 -59 18
x1178:	mov di, bp	; 2: -119 -17
x1180:	jmp qsort	; 3: -23 -122 53

stdlib_test$154:	; post call

stdlib_test$155:	; index = 0
x1183:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

stdlib_test$156:	; if index >= size goto 167
x1188:	mov ax, [bp + 14]	; 3: -117 70 14
x1191:	cmp [bp + 16], ax	; 3: 57 70 16
x1194:	jge stdlib_test$167	; 2: 125 50

stdlib_test$157:	; call header integral zero 0 stack zero 0

stdlib_test$158:	; parameter string_25i20#, offset 6
x1196:	mov word [bp + 24], string_25i20#	; 5: -57 70 24 72 7

stdlib_test$159:	; £temporary6012 = index * 2
x1201:	mov ax, [bp + 16]	; 3: -117 70 16
x1204:	xor dx, dx	; 2: 49 -46
x1206:	mul word [int2$2#]	; 4: -9 38 76 7

stdlib_test$160:	; £temporary6013 = list + £temporary6012
x1210:	mov si, bp	; 2: -119 -18
x1212:	add si, 6	; 3: -125 -58 6
x1215:	add si, ax	; 2: 1 -58

stdlib_test$161:	; £temporary6014 -> £temporary6013 = *£temporary6013

stdlib_test$162:	; parameter £temporary6014 -> £temporary6013, offset 8
x1217:	mov ax, [si]	; 2: -117 4
x1219:	mov [bp + 26], ax	; 3: -119 70 26

stdlib_test$163:	; call function noellipse-ellipse printf, extra 0
x1222:	mov word [bp + 18], stdlib_test$164	; 5: -57 70 18 -39 4
x1227:	mov [bp + 20], bp	; 3: -119 110 20
x1230:	add bp, 18	; 3: -125 -59 18
x1233:	mov di, bp	; 2: -119 -17
x1235:	add di, 2	; 3: -125 -57 2
x1238:	jmp printf	; 3: -23 68 30

stdlib_test$164:	; post call

stdlib_test$165:	; ++index
x1241:	inc word [bp + 16]	; 3: -1 70 16

stdlib_test$166:	; goto 156
x1244:	jmp stdlib_test$156	; 2: -21 -58

stdlib_test$167:	; call header integral zero 0 stack zero 0

stdlib_test$168:	; parameter string_0AC20List2033A20#, offset 6
x1246:	mov word [bp + 24], string_0AC20List2033A20#	; 5: -57 70 24 -110 7

stdlib_test$169:	; call function noellipse-ellipse printf, extra 0
x1251:	mov word [bp + 18], stdlib_test$170	; 5: -57 70 18 -13 4
x1256:	mov [bp + 20], bp	; 3: -119 110 20
x1259:	add bp, 18	; 3: -125 -59 18
x1262:	mov di, bp	; 2: -119 -17
x1264:	jmp printf	; 3: -23 42 30

stdlib_test$170:	; post call

stdlib_test$171:	; call header integral zero 0 stack zero 0

stdlib_test$172:	; parameter list, offset 6
x1267:	mov [bp + 24], bp	; 3: -119 110 24
x1270:	add word [bp + 24], 6	; 4: -125 70 24 6

stdlib_test$173:	; parameter size, offset 8
x1274:	mov ax, [bp + 14]	; 3: -117 70 14
x1277:	mov [bp + 26], ax	; 3: -119 70 26

stdlib_test$174:	; parameter 2, offset 10
x1280:	mov word [bp + 28], 2	; 5: -57 70 28 2 0

stdlib_test$175:	; parameter reverse_compare, offset 12
x1285:	mov word [bp + 30], reverse_compare	; 5: -57 70 30 -98 7

stdlib_test$176:	; call function noellipse-ellipse qsort, extra 0
x1290:	mov word [bp + 18], stdlib_test$177	; 5: -57 70 18 26 5
x1295:	mov [bp + 20], bp	; 3: -119 110 20
x1298:	add bp, 18	; 3: -125 -59 18
x1301:	mov di, bp	; 2: -119 -17
x1303:	jmp qsort	; 3: -23 11 53

stdlib_test$177:	; post call

stdlib_test$178:	; index = 0
x1306:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

stdlib_test$179:	; if index >= size goto 190
x1311:	mov ax, [bp + 14]	; 3: -117 70 14
x1314:	cmp [bp + 16], ax	; 3: 57 70 16
x1317:	jge stdlib_test$190	; 2: 125 50

stdlib_test$180:	; call header integral zero 0 stack zero 0

stdlib_test$181:	; parameter string_25i20#, offset 6
x1319:	mov word [bp + 24], string_25i20#	; 5: -57 70 24 72 7

stdlib_test$182:	; £temporary6021 = index * 2
x1324:	mov ax, [bp + 16]	; 3: -117 70 16
x1327:	xor dx, dx	; 2: 49 -46
x1329:	mul word [int2$2#]	; 4: -9 38 76 7

stdlib_test$183:	; £temporary6022 = list + £temporary6021
x1333:	mov si, bp	; 2: -119 -18
x1335:	add si, 6	; 3: -125 -58 6
x1338:	add si, ax	; 2: 1 -58

stdlib_test$184:	; £temporary6023 -> £temporary6022 = *£temporary6022

stdlib_test$185:	; parameter £temporary6023 -> £temporary6022, offset 8
x1340:	mov ax, [si]	; 2: -117 4
x1342:	mov [bp + 26], ax	; 3: -119 70 26

stdlib_test$186:	; call function noellipse-ellipse printf, extra 0
x1345:	mov word [bp + 18], stdlib_test$187	; 5: -57 70 18 84 5
x1350:	mov [bp + 20], bp	; 3: -119 110 20
x1353:	add bp, 18	; 3: -125 -59 18
x1356:	mov di, bp	; 2: -119 -17
x1358:	add di, 2	; 3: -125 -57 2
x1361:	jmp printf	; 3: -23 -55 29

stdlib_test$187:	; post call

stdlib_test$188:	; ++index
x1364:	inc word [bp + 16]	; 3: -1 70 16

stdlib_test$189:	; goto 179
x1367:	jmp stdlib_test$179	; 2: -21 -58

stdlib_test$190:	; call header integral zero 0 stack zero 0

stdlib_test$191:	; parameter string_0A0ASearch3A0A#, offset 6
x1369:	mov word [bp + 24], string_0A0ASearch3A0A#	; 5: -57 70 24 -42 7

stdlib_test$192:	; call function noellipse-ellipse printf, extra 0
x1374:	mov word [bp + 18], stdlib_test$193	; 5: -57 70 18 110 5
x1379:	mov [bp + 20], bp	; 3: -119 110 20
x1382:	add bp, 18	; 3: -125 -59 18
x1385:	mov di, bp	; 2: -119 -17
x1387:	jmp printf	; 3: -23 -81 29

stdlib_test$193:	; post call

stdlib_test$194:	; key = 0
x1390:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

stdlib_test$195:	; if key >= 6 goto 222
x1395:	cmp word [bp + 16], 6	; 4: -125 126 16 6
x1399:	jge stdlib_test$222	; 2: 125 119

stdlib_test$196:	; call header integral zero 0 stack zero 0

stdlib_test$197:	; £temporary6028 = &key
x1401:	mov si, bp	; 2: -119 -18
x1403:	add si, 16	; 3: -125 -58 16

stdlib_test$198:	; parameter £temporary6028, offset 6
x1406:	mov [bp + 24], si	; 3: -119 118 24

stdlib_test$199:	; parameter list, offset 8
x1409:	mov [bp + 26], bp	; 3: -119 110 26
x1412:	add word [bp + 26], 6	; 4: -125 70 26 6

stdlib_test$200:	; parameter size, offset 10
x1416:	mov ax, [bp + 14]	; 3: -117 70 14
x1419:	mov [bp + 28], ax	; 3: -119 70 28

stdlib_test$201:	; parameter 2, offset 12
x1422:	mov word [bp + 30], 2	; 5: -57 70 30 2 0

stdlib_test$202:	; parameter compare, offset 14
x1427:	mov word [bp + 32], compare	; 5: -57 70 32 90 7

stdlib_test$203:	; call function noellipse-noellipse bsearch
x1432:	mov word [bp + 18], stdlib_test$204	; 5: -57 70 18 -90 5
x1437:	mov [bp + 20], bp	; 3: -119 110 20
x1440:	add bp, 18	; 3: -125 -59 18
x1443:	jmp bsearch	; 3: -23 108 53

stdlib_test$204:	; post call

stdlib_test$205:	; £temporary6030 = return_value

stdlib_test$206:	; £temporary6031 = int_to_int £temporary6030 (Pointer -> Pointer)

stdlib_test$207:	; p = £temporary6031
x1446:	mov [bp + 18], bx	; 3: -119 94 18

stdlib_test$208:	; if p == 0 goto 212
x1449:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x1453:	je stdlib_test$212	; 2: 116 18

stdlib_test$209:	; £temporary6033 = p - list
x1455:	mov ax, [bp + 18]	; 3: -117 70 18
x1458:	mov bx, bp	; 2: -119 -21
x1460:	add bx, 6	; 3: -125 -61 6
x1463:	sub ax, bx	; 2: 41 -40

stdlib_test$210:	; £temporary6038 = £temporary6033 / 2
x1465:	xor dx, dx	; 2: 49 -46
x1467:	div word [int2$2#]	; 4: -9 54 76 7

stdlib_test$211:	; goto 213
x1471:	jmp stdlib_test$213	; 2: -21 3

stdlib_test$212:	; £temporary6038 = -1
x1473:	mov ax, -1	; 3: -72 -1 -1

stdlib_test$213:	; index = £temporary6038
x1476:	mov [bp + 20], ax	; 3: -119 70 20

stdlib_test$214:	; call header integral zero 0 stack zero 0

stdlib_test$215:	; parameter string_20202825i2C2025i290A#, offset 6
x1479:	mov word [bp + 28], string_20202825i2C2025i290A#	; 5: -57 70 28 -31 7

stdlib_test$216:	; parameter key, offset 8
x1484:	mov ax, [bp + 16]	; 3: -117 70 16
x1487:	mov [bp + 30], ax	; 3: -119 70 30

stdlib_test$217:	; parameter index, offset 10
x1490:	mov ax, [bp + 20]	; 3: -117 70 20
x1493:	mov [bp + 32], ax	; 3: -119 70 32

stdlib_test$218:	; call function noellipse-ellipse printf, extra 0
x1496:	mov word [bp + 22], stdlib_test$219	; 5: -57 70 22 -21 5
x1501:	mov [bp + 24], bp	; 3: -119 110 24
x1504:	add bp, 22	; 3: -125 -59 22
x1507:	mov di, bp	; 2: -119 -17
x1509:	add di, 4	; 3: -125 -57 4
x1512:	jmp printf	; 3: -23 50 29

stdlib_test$219:	; post call

stdlib_test$220:	; ++key
x1515:	inc word [bp + 16]	; 3: -1 70 16

stdlib_test$221:	; goto 195
x1518:	jmp stdlib_test$195	; 2: -21 -125

stdlib_test$222:	; call header integral zero 0 stack zero 0

stdlib_test$223:	; parameter string_0A#, offset 6
x1520:	mov word [bp + 22], string_0A#	; 5: -57 70 22 -19 7

stdlib_test$224:	; call function noellipse-ellipse printf, extra 0
x1525:	mov word [bp + 16], stdlib_test$225	; 5: -57 70 16 5 6
x1530:	mov [bp + 18], bp	; 3: -119 110 18
x1533:	add bp, 16	; 3: -125 -59 16
x1536:	mov di, bp	; 2: -119 -17
x1538:	jmp printf	; 3: -23 24 29

stdlib_test$225:	; post call

stdlib_test$226:	; return
x1541:	mov ax, [bp]	; 3: -117 70 0
x1544:	mov di, [bp + 4]	; 3: -117 126 4
x1547:	mov bp, [bp + 2]	; 3: -117 110 2
x1550:	jmp ax	; 2: -1 -32

stdlib_test$227:	; function end stdlib_test

string_atof28221232E4562229203D2025f0A#:
x1552:	db "atof(", 34, "123.456", 34, ") = %f", 10, 0	; 22: 97 116 111 102 40 34 49 50 51 46 52 53 54 34 41 32 61 32 37 102 10 0

string_1232E456#:
x1574:	db "123.456", 0	; 8: 49 50 51 46 52 53 54 0

string_strtod28221232E456789abc222C2026p29203D202825f2C2025s290A#:
x1582:	db "strtod(", 34, "123.456789abc", 34, ", &p) = (%f, %s)", 10, 0	; 40: 115 116 114 116 111 100 40 34 49 50 51 46 52 53 54 55 56 57 97 98 99 34 44 32 38 112 41 32 61 32 40 37 102 44 32 37 115 41 10 0

string_1232E456789abc#:
x1622:	db "123.456789abc", 0	; 14: 49 50 51 46 52 53 54 55 56 57 97 98 99 0

string_0Agetenv2822path2229203D2025s0A#:
x1636:	db 10, "getenv(", 34, "path", 34, ") = %s", 10, 0	; 22: 10 103 101 116 101 110 118 40 34 112 97 116 104 34 41 32 61 32 37 115 10 0

string_path#:
x1658:	db "path", 0	; 5: 112 97 116 104 0

string_system2822dir22290A#:
x1663:	db "system(", 34, "dir", 34, ")", 10, 0	; 15: 115 121 115 116 101 109 40 34 100 105 114 34 41 10 0

string_dir#:
x1678:	db "dir", 0	; 4: 100 105 114 0

string_0Aabs282D329203D2025i2C20abs28329203D2025i0A#:
x1682:	db 10, "abs(-3) = %i, abs(3) = %i", 10, 0	; 28: 10 97 98 115 40 45 51 41 32 61 32 37 105 44 32 97 98 115 40 51 41 32 61 32 37 105 10 0

string_labs282D3l29203D2025li2C20labs283l29203D2025li0A0A#:
x1710:	db "labs(-3l) = %li, labs(3l) = %li", 10, 10, 0	; 34: 108 97 98 115 40 45 51 108 41 32 61 32 37 108 105 44 32 108 97 98 115 40 51 108 41 32 61 32 37 108 105 10 10 0

string_div_t28102C20329203D202825i2C2025i290A#:
x1744:	db "div_t(10, 3) = (%i, %i)", 10, 0	; 25: 100 105 118 95 116 40 49 48 44 32 51 41 32 61 32 40 37 105 44 32 37 105 41 10 0

string_div_t28102C20329203D202825i2C2025i290A0A#:
x1769:	db "div_t(10, 3) = (%i, %i)", 10, 10, 0	; 26: 100 105 118 95 116 40 49 48 44 32 51 41 32 61 32 40 37 105 44 32 37 105 41 10 10 0

string_ldiv_t28102C20329203D202825li2C2025li290A#:
x1795:	db "ldiv_t(10, 3) = (%li, %li)", 10, 0	; 28: 108 100 105 118 95 116 40 49 48 44 32 51 41 32 61 32 40 37 108 105 44 32 37 108 105 41 10 0

string_ldiv_t28102C20329203D202825li2C2025li290A0A#:
x1823:	db "ldiv_t(10, 3) = (%li, %li)", 10, 10, 0	; 29: 108 100 105 118 95 116 40 49 48 44 32 51 41 32 61 32 40 37 108 105 44 32 37 108 105 41 10 10 0

string_0AA20List2013A20#:
x1852:	db 10, "A List 1: ", 0	; 12: 10 65 32 76 105 115 116 32 49 58 32 0

string_25i20#:
x1864:	db "%i ", 0	; 4: 37 105 32 0

int2$2#:
x1868:	dw 2	; 2: 2 0

string_0AB20List2023A20#:
x1870:	db 10, "B List 2: ", 0	; 12: 10 66 32 76 105 115 116 32 50 58 32 0

compare:	; £temporary5889 = int_to_int valuePtr1 (Pointer -> Pointer)
x1882:	mov si, [bp + 6]	; 3: -117 118 6

compare$1:	; £temporary5890 -> £temporary5889 = *£temporary5889

compare$2:	; intValue1 = £temporary5890 -> £temporary5889
x1885:	mov ax, [si]	; 2: -117 4
x1887:	mov [bp + 10], ax	; 3: -119 70 10

compare$3:	; £temporary5891 = int_to_int valuePtr2 (Pointer -> Pointer)
x1890:	mov si, [bp + 8]	; 3: -117 118 8

compare$4:	; £temporary5892 -> £temporary5891 = *£temporary5891

compare$5:	; intValue2 = £temporary5892 -> £temporary5891
x1893:	mov ax, [si]	; 2: -117 4
x1895:	mov [bp + 12], ax	; 3: -119 70 12

compare$6:	; if intValue1 >= intValue2 goto 9
x1898:	mov ax, [bp + 12]	; 3: -117 70 12
x1901:	cmp [bp + 10], ax	; 3: 57 70 10
x1904:	jge compare$9	; 2: 125 5

compare$7:	; £temporary5902 = -1
x1906:	mov bx, -1	; 3: -69 -1 -1

compare$8:	; goto 14
x1909:	jmp compare$14	; 2: -21 16

compare$9:	; if intValue1 != intValue2 goto 12
x1911:	mov ax, [bp + 12]	; 3: -117 70 12
x1914:	cmp [bp + 10], ax	; 3: 57 70 10
x1917:	jne compare$12	; 2: 117 5

compare$10:	; £temporary5898 = 0
x1919:	mov bx, 0	; 3: -69 0 0

compare$11:	; goto 13
x1922:	jmp compare$13	; 2: -21 3

compare$12:	; £temporary5898 = 1
x1924:	mov bx, 1	; 3: -69 1 0

compare$13:	; £temporary5902 = £temporary5898

compare$14:	; return_value = £temporary5902

compare$15:	; return
x1927:	mov ax, [bp]	; 3: -117 70 0
x1930:	mov di, [bp + 4]	; 3: -117 126 4
x1933:	mov bp, [bp + 2]	; 3: -117 110 2
x1936:	jmp ax	; 2: -1 -32

compare$16:	; function end compare

string_0AC20List2033A20#:
x1938:	db 10, "C List 3: ", 0	; 12: 10 67 32 76 105 115 116 32 51 58 32 0

reverse_compare:	; £temporary5903 = int_to_int valuePtr1 (Pointer -> Pointer)
x1950:	mov si, [bp + 6]	; 3: -117 118 6

reverse_compare$1:	; £temporary5904 -> £temporary5903 = *£temporary5903

reverse_compare$2:	; intValue1 = £temporary5904 -> £temporary5903
x1953:	mov ax, [si]	; 2: -117 4
x1955:	mov [bp + 10], ax	; 3: -119 70 10

reverse_compare$3:	; £temporary5905 = int_to_int valuePtr2 (Pointer -> Pointer)
x1958:	mov si, [bp + 8]	; 3: -117 118 8

reverse_compare$4:	; £temporary5906 -> £temporary5905 = *£temporary5905

reverse_compare$5:	; intValue2 = £temporary5906 -> £temporary5905
x1961:	mov ax, [si]	; 2: -117 4
x1963:	mov [bp + 12], ax	; 3: -119 70 12

reverse_compare$6:	; if intValue1 >= intValue2 goto 9
x1966:	mov ax, [bp + 12]	; 3: -117 70 12
x1969:	cmp [bp + 10], ax	; 3: 57 70 10
x1972:	jge reverse_compare$9	; 2: 125 5

reverse_compare$7:	; £temporary5916 = 1
x1974:	mov bx, 1	; 3: -69 1 0

reverse_compare$8:	; goto 14
x1977:	jmp reverse_compare$14	; 2: -21 16

reverse_compare$9:	; if intValue1 != intValue2 goto 12
x1979:	mov ax, [bp + 12]	; 3: -117 70 12
x1982:	cmp [bp + 10], ax	; 3: 57 70 10
x1985:	jne reverse_compare$12	; 2: 117 5

reverse_compare$10:	; £temporary5912 = 0
x1987:	mov bx, 0	; 3: -69 0 0

reverse_compare$11:	; goto 13
x1990:	jmp reverse_compare$13	; 2: -21 3

reverse_compare$12:	; £temporary5912 = -1
x1992:	mov bx, -1	; 3: -69 -1 -1

reverse_compare$13:	; £temporary5916 = £temporary5912

reverse_compare$14:	; return_value = £temporary5916

reverse_compare$15:	; return
x1995:	mov ax, [bp]	; 3: -117 70 0
x1998:	mov di, [bp + 4]	; 3: -117 126 4
x2001:	mov bp, [bp + 2]	; 3: -117 110 2
x2004:	jmp ax	; 2: -1 -32

reverse_compare$16:	; function end reverse_compare

string_0A0ASearch3A0A#:
x2006:	db 10, 10, "Search:", 10, 0	; 11: 10 10 83 101 97 114 99 104 58 10 0

string_20202825i2C2025i290A#:
x2017:	db "  (%i, %i)", 10, 0	; 12: 32 32 40 37 105 44 32 37 105 41 10 0

string_0A#:
x2029:	db 10, 0	; 2: 10 0

atof:	; call header integral zero 0 stack zero 0

atof$1:	; parameter s, offset 6
x2031:	mov ax, [bp + 6]	; 3: -117 70 6
x2034:	mov [bp + 14], ax	; 3: -119 70 14

atof$2:	; parameter 0, offset 8
x2037:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

atof$3:	; call function noellipse-noellipse strtod
x2042:	mov word [bp + 8], atof$4	; 5: -57 70 8 8 8
x2047:	mov [bp + 10], bp	; 3: -119 110 10
x2050:	add bp, 8	; 3: -125 -59 8
x2053:	nop	; 1: -112
x2054:	jmp strtod	; 2: -21 11

atof$4:	; post call

atof$5:	; £temporary3283 = return_value

atof$6:	; return_value = £temporary3283

atof$7:	; return
x2056:	mov ax, [bp]	; 3: -117 70 0
x2059:	mov di, [bp + 4]	; 3: -117 126 4
x2062:	mov bp, [bp + 2]	; 3: -117 110 2
x2065:	jmp ax	; 2: -1 -32

atof$8:	; function end atof

strtod:	; chars = 0
x2067:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strtod$1:	; push 0
x2072:	fldz	; 2: -39 -18

strtod$2:	; pop float value
x2074:	fstp qword [bp + 12]	; 3: -35 94 12

strtod$3:	; call header integral zero 0 stack zero 0

strtod$4:	; parameter s, offset 6
x2077:	mov ax, [bp + 6]	; 3: -117 70 6
x2080:	mov [bp + 26], ax	; 3: -119 70 26

strtod$5:	; parameter string_25lf25n#, offset 8
x2083:	mov word [bp + 28], string_25lf25n#	; 5: -57 70 28 106 8

strtod$6:	; £temporary3286 = &value
x2088:	mov si, bp	; 2: -119 -18
x2090:	add si, 12	; 3: -125 -58 12

strtod$7:	; parameter £temporary3286, offset 10
x2093:	mov [bp + 30], si	; 3: -119 118 30

strtod$8:	; £temporary3287 = &chars
x2096:	mov si, bp	; 2: -119 -18
x2098:	add si, 10	; 3: -125 -58 10

strtod$9:	; parameter £temporary3287, offset 12
x2101:	mov [bp + 32], si	; 3: -119 118 32

strtod$10:	; call function noellipse-ellipse sscanf, extra 0
x2104:	mov word [bp + 20], strtod$11	; 5: -57 70 20 75 8
x2109:	mov [bp + 22], bp	; 3: -119 110 22
x2112:	add bp, 20	; 3: -125 -59 20
x2115:	mov di, bp	; 2: -119 -17
x2117:	add di, 4	; 3: -125 -57 4
x2120:	nop	; 1: -112
x2121:	jmp sscanf	; 2: -21 37

strtod$11:	; post call

strtod$12:	; if endp == 0 goto 15
x2123:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x2127:	je strtod$15	; 2: 116 11

strtod$13:	; £temporary3290 -> endp = *endp
x2129:	mov si, [bp + 8]	; 3: -117 118 8

strtod$14:	; £temporary3290 -> endp = s + chars
x2132:	mov ax, [bp + 6]	; 3: -117 70 6
x2135:	add ax, [bp + 10]	; 3: 3 70 10
x2138:	mov [si], ax	; 2: -119 4

strtod$15:	; push float value
x2140:	fld qword [bp + 12]	; 3: -35 70 12

strtod$16:	; return_value = value

strtod$17:	; return
x2143:	mov ax, [bp]	; 3: -117 70 0
x2146:	mov di, [bp + 4]	; 3: -117 126 4
x2149:	mov bp, [bp + 2]	; 3: -117 110 2
x2152:	jmp ax	; 2: -1 -32

strtod$18:	; function end strtod

string_25lf25n#:
x2154:	db "%lf%n", 0	; 6: 37 108 102 37 110 0

sscanf:	; £temporary1762 = &format
x2160:	mov si, bp	; 2: -119 -18
x2162:	add si, 8	; 3: -125 -58 8

sscanf$1:	; £temporary1763 = int_to_int £temporary1762 (Pointer -> Pointer)

sscanf$2:	; arg_list = £temporary1763 + 2
x2165:	add si, 2	; 3: -125 -58 2
x2168:	mov [di + 10], si	; 3: -119 117 10

sscanf$3:	; call header integral zero 0 stack zero 0

sscanf$4:	; parameter inString, offset 6
x2171:	mov ax, [bp + 6]	; 3: -117 70 6
x2174:	mov [di + 18], ax	; 3: -119 69 18

sscanf$5:	; parameter format, offset 8
x2177:	mov ax, [bp + 8]	; 3: -117 70 8
x2180:	mov [di + 20], ax	; 3: -119 69 20

sscanf$6:	; parameter arg_list, offset 10
x2183:	mov ax, [di + 10]	; 3: -117 69 10
x2186:	mov [di + 22], ax	; 3: -119 69 22

sscanf$7:	; call function ellipse-noellipse vsscanf
x2189:	mov word [di + 12], sscanf$8	; 5: -57 69 12 -96 8
x2194:	mov [di + 14], bp	; 3: -119 109 14
x2197:	mov [di + 16], di	; 3: -119 125 16
x2200:	add di, 12	; 3: -125 -57 12
x2203:	mov bp, di	; 2: -119 -3
x2205:	nop	; 1: -112
x2206:	jmp vsscanf	; 2: -21 11

sscanf$8:	; post call

sscanf$9:	; £temporary1765 = return_value

sscanf$10:	; return_value = £temporary1765

sscanf$11:	; return
x2208:	mov ax, [bp]	; 3: -117 70 0
x2211:	mov di, [bp + 4]	; 3: -117 126 4
x2214:	mov bp, [bp + 2]	; 3: -117 110 2
x2217:	jmp ax	; 2: -1 -32

sscanf$12:	; function end sscanf

vsscanf:	; g_inStatus = 1
x2219:	mov word [g_inStatus], 1	; 6: -57 6 -36 8 1 0

vsscanf$1:	; £temporary1770 = int_to_int inString (Pointer -> Pointer)
x2225:	mov ax, [bp + 6]	; 3: -117 70 6

vsscanf$2:	; g_inDevice = £temporary1770
x2228:	mov [g_inDevice], ax	; 3: -93 -34 8

vsscanf$3:	; call header integral zero 0 stack zero 0

vsscanf$4:	; parameter format, offset 6
x2231:	mov ax, [bp + 8]	; 3: -117 70 8
x2234:	mov [bp + 18], ax	; 3: -119 70 18

vsscanf$5:	; parameter arg_list, offset 8
x2237:	mov ax, [bp + 10]	; 3: -117 70 10
x2240:	mov [bp + 20], ax	; 3: -119 70 20

vsscanf$6:	; call function noellipse-noellipse scanFormat
x2243:	mov word [bp + 12], vsscanf$7	; 5: -57 70 12 -47 8
x2248:	mov [bp + 14], bp	; 3: -119 110 14
x2251:	add bp, 12	; 3: -125 -59 12
x2254:	nop	; 1: -112
x2255:	jmp scanFormat	; 2: -21 15

vsscanf$7:	; post call

vsscanf$8:	; £temporary1771 = return_value

vsscanf$9:	; return_value = £temporary1771

vsscanf$10:	; return
x2257:	mov ax, [bp]	; 3: -117 70 0
x2260:	mov di, [bp + 4]	; 3: -117 126 4
x2263:	mov bp, [bp + 2]	; 3: -117 110 2
x2266:	jmp ax	; 2: -1 -32

vsscanf$11:	; function end vsscanf

g_inStatus:
x2268:	db 0, 0	; 2: 0 0

g_inDevice:
x2270:	db 0, 0	; 2: 0 0

scanFormat:	; percent = 0
x2272:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$1:	; shortInt = 0
x2277:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$2:	; longIntOrDouble = 0
x2282:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$3:	; longDouble = 0
x2287:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$4:	; star = 0
x2292:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$5:	; g_inCount = 0
x2297:	mov word [g_inCount], 0	; 6: -57 6 -2 13 0 0

scanFormat$6:	; g_inChars = 0
x2303:	mov word [g_inChars], 0	; 6: -57 6 0 14 0 0

scanFormat$7:	; index = 0
x2309:	mov word [bp + 31], 0	; 5: -57 70 31 0 0

scanFormat$8:	; £temporary1548 = format + index
x2314:	mov si, [bp + 6]	; 3: -117 118 6
x2317:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$9:	; £temporary1547 -> £temporary1548 = *£temporary1548

scanFormat$10:	; if £temporary1547 -> £temporary1548 == 0 goto 326
x2320:	cmp byte [si], 0	; 3: -128 60 0
x2323:	je scanFormat$326	; 4: 15 -124 -40 4

scanFormat$11:	; £temporary1552 = format + index
x2327:	mov si, [bp + 6]	; 3: -117 118 6
x2330:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$12:	; £temporary1551 -> £temporary1552 = *£temporary1552

scanFormat$13:	; c = £temporary1551 -> £temporary1552
x2333:	mov al, [si]	; 2: -118 4
x2335:	mov [bp + 10], al	; 3: -120 70 10

scanFormat$14:	; £temporary1553 = int_to_int c (Signed_Char -> Signed_Int)
x2338:	mov al, [bp + 10]	; 3: -118 70 10
x2341:	and ax, 255	; 3: 37 -1 0
x2344:	cmp al, 0	; 2: 60 0
x2346:	jge scanFormat$15	; 2: 125 4
x2348:	neg al	; 2: -10 -40
x2350:	neg ax	; 2: -9 -40

scanFormat$15:	; d = £temporary1553 + 1
x2352:	inc ax	; 1: 64
x2353:	mov [bp + 55], ax	; 3: -119 70 55

scanFormat$16:	; if percent == 0 goto 318
x2356:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x2360:	je scanFormat$318	; 4: 15 -124 -114 4

scanFormat$17:	; £temporary1555 = d - 1
x2364:	mov ax, [bp + 55]	; 3: -117 70 55
x2367:	dec ax	; 1: 72

scanFormat$18:	; case £temporary1555 == 104 goto 36
x2368:	cmp ax, 104	; 3: -125 -8 104
x2371:	je scanFormat$36	; 2: 116 100

scanFormat$19:	; case £temporary1555 == 108 goto 38
x2373:	cmp ax, 108	; 3: -125 -8 108
x2376:	je scanFormat$38	; 2: 116 103

scanFormat$20:	; case £temporary1555 == 76 goto 40
x2378:	cmp ax, 76	; 3: -125 -8 76
x2381:	je scanFormat$40	; 2: 116 106

scanFormat$21:	; case £temporary1555 == 42 goto 42
x2383:	cmp ax, 42	; 3: -125 -8 42
x2386:	je scanFormat$42	; 2: 116 109

scanFormat$22:	; case £temporary1555 == 99 goto 44
x2388:	cmp ax, 99	; 3: -125 -8 99
x2391:	je scanFormat$44	; 2: 116 112

scanFormat$23:	; case £temporary1555 == 115 goto 62
x2393:	cmp ax, 115	; 3: -125 -8 115
x2396:	je scanFormat$62	; 4: 15 -124 -72 0

scanFormat$24:	; case £temporary1555 == 100 goto 81
x2400:	cmp ax, 100	; 3: -125 -8 100
x2403:	je scanFormat$81	; 4: 15 -124 1 1

scanFormat$25:	; case £temporary1555 == 105 goto 81
x2407:	cmp ax, 105	; 3: -125 -8 105
x2410:	je scanFormat$81	; 4: 15 -124 -6 0

scanFormat$26:	; case £temporary1555 == 111 goto 117
x2414:	cmp ax, 111	; 3: -125 -8 111
x2417:	je scanFormat$117	; 4: 15 -124 -121 1

scanFormat$27:	; case £temporary1555 == 120 goto 153
x2421:	cmp ax, 120	; 3: -125 -8 120
x2424:	je scanFormat$153	; 4: 15 -124 -2 1

scanFormat$28:	; case £temporary1555 == 117 goto 189
x2428:	cmp ax, 117	; 3: -125 -8 117
x2431:	je scanFormat$189	; 4: 15 -124 117 2

scanFormat$29:	; case £temporary1555 == 103 goto 225
x2435:	cmp ax, 103	; 3: -125 -8 103
x2438:	je scanFormat$225	; 4: 15 -124 -20 2

scanFormat$30:	; case £temporary1555 == 102 goto 225
x2442:	cmp ax, 102	; 3: -125 -8 102
x2445:	je scanFormat$225	; 4: 15 -124 -27 2

scanFormat$31:	; case £temporary1555 == 101 goto 225
x2449:	cmp ax, 101	; 3: -125 -8 101
x2452:	je scanFormat$225	; 4: 15 -124 -34 2

scanFormat$32:	; case £temporary1555 == 91 goto 261
x2456:	cmp ax, 91	; 3: -125 -8 91
x2459:	je scanFormat$261	; 4: 15 -124 75 3

scanFormat$33:	; case £temporary1555 == 110 goto 302
x2463:	cmp ax, 110	; 3: -125 -8 110
x2466:	je scanFormat$302	; 4: 15 -124 -37 3

scanFormat$34:	; case end £temporary1555

scanFormat$35:	; goto 311
x2470:	jmp scanFormat$311	; 3: -23 -10 3

scanFormat$36:	; shortInt = 1
x2473:	mov word [bp + 15], 1	; 5: -57 70 15 1 0

scanFormat$37:	; goto 324
x2478:	jmp scanFormat$324	; 3: -23 56 4

scanFormat$38:	; longIntOrDouble = 1
x2481:	mov word [bp + 17], 1	; 5: -57 70 17 1 0

scanFormat$39:	; goto 324
x2486:	jmp scanFormat$324	; 3: -23 48 4

scanFormat$40:	; longDouble = 1
x2489:	mov word [bp + 19], 1	; 5: -57 70 19 1 0

scanFormat$41:	; goto 324
x2494:	jmp scanFormat$324	; 3: -23 40 4

scanFormat$42:	; star = 1
x2497:	mov word [bp + 21], 1	; 5: -57 70 21 1 0

scanFormat$43:	; goto 324
x2502:	jmp scanFormat$324	; 3: -23 32 4

scanFormat$44:	; call header integral zero 0 stack zero 0

scanFormat$45:	; call function noellipse-noellipse scanChar
x2505:	mov word [bp + 57], scanFormat$46	; 5: -57 70 57 -41 9
x2510:	mov [bp + 59], bp	; 3: -119 110 59
x2513:	add bp, 57	; 3: -125 -59 57
x2516:	jmp scanChar	; 3: -23 64 4

scanFormat$46:	; post call

scanFormat$47:	; £temporary1556 = return_value

scanFormat$48:	; charValue = £temporary1556
x2519:	mov [bp + 57], bl	; 3: -120 94 57

scanFormat$49:	; if star != 0 goto 57
x2522:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x2526:	jne scanFormat$57	; 2: 117 23

scanFormat$50:	; arg_list = arg_list + 2
x2528:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$51:	; £temporary1560 = arg_list - 2
x2532:	mov si, [bp + 8]	; 3: -117 118 8
x2535:	sub si, 2	; 3: -125 -18 2

scanFormat$52:	; £temporary1561 = int_to_int £temporary1560 (Signed_Int -> Pointer)

scanFormat$53:	; £temporary1562 -> £temporary1561 = *£temporary1561

scanFormat$54:	; charPtr = £temporary1562 -> £temporary1561
x2538:	mov ax, [si]	; 2: -117 4
x2540:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$55:	; £temporary1563 -> charPtr = *charPtr
x2543:	mov si, [bp + 11]	; 3: -117 118 11

scanFormat$56:	; £temporary1563 -> charPtr = charValue
x2546:	mov al, [bp + 57]	; 3: -118 70 57
x2549:	mov [si], al	; 2: -120 4

scanFormat$57:	; percent = 0
x2551:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$58:	; £temporary1564 = int_to_int charValue (Signed_Char -> Signed_Int)
x2556:	mov al, [bp + 57]	; 3: -118 70 57
x2559:	and ax, 255	; 3: 37 -1 0
x2562:	cmp al, 0	; 2: 60 0
x2564:	jge scanFormat$59	; 2: 125 4
x2566:	neg al	; 2: -10 -40
x2568:	neg ax	; 2: -9 -40

scanFormat$59:	; if £temporary1564 == -1 goto 324
x2570:	cmp ax, -1	; 3: -125 -8 -1
x2573:	je scanFormat$324	; 4: 15 -124 -40 3

scanFormat$60:	; ++g_inCount
x2577:	inc word [g_inCount]	; 4: -1 6 -2 13

scanFormat$61:	; goto 324
x2581:	jmp scanFormat$324	; 3: -23 -47 3

scanFormat$62:	; if star != 0 goto 74
x2584:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x2588:	jne scanFormat$74	; 2: 117 42

scanFormat$63:	; arg_list = arg_list + 2
x2590:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$64:	; £temporary1570 = arg_list - 2
x2594:	mov si, [bp + 8]	; 3: -117 118 8
x2597:	sub si, 2	; 3: -125 -18 2

scanFormat$65:	; £temporary1571 = int_to_int £temporary1570 (Signed_Int -> Pointer)

scanFormat$66:	; £temporary1572 -> £temporary1571 = *£temporary1571

scanFormat$67:	; charPtr = £temporary1572 -> £temporary1571
x2600:	mov ax, [si]	; 2: -117 4
x2602:	mov [bp + 11], ax	; 3: -119 70 11

scanFormat$68:	; call header integral zero 0 stack zero 0

scanFormat$69:	; parameter charPtr, offset 6
x2605:	mov ax, [bp + 11]	; 3: -117 70 11
x2608:	mov [bp + 63], ax	; 3: -119 70 63

scanFormat$70:	; parameter 0, offset 8
x2611:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$71:	; call function noellipse-noellipse scanString
x2616:	mov word [bp + 57], scanFormat$72	; 5: -57 70 57 70 10
x2621:	mov [bp + 59], bp	; 3: -119 110 59
x2624:	add bp, 57	; 3: -125 -59 57
x2627:	jmp scanString	; 3: -23 64 4

scanFormat$72:	; post call

scanFormat$73:	; goto 79
x2630:	jmp scanFormat$79	; 2: -21 24

scanFormat$74:	; call header integral zero 0 stack zero 0

scanFormat$75:	; parameter 0, offset 6
x2632:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

scanFormat$76:	; parameter 0, offset 8
x2637:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

scanFormat$77:	; call function noellipse-noellipse scanString
x2642:	mov word [bp + 57], scanFormat$78	; 5: -57 70 57 96 10
x2647:	mov [bp + 59], bp	; 3: -119 110 59
x2650:	add bp, 57	; 3: -125 -59 57
x2653:	jmp scanString	; 3: -23 38 4

scanFormat$78:	; post call

scanFormat$79:	; percent = 0
x2656:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$80:	; goto 324
x2661:	jmp scanFormat$324	; 3: -23 -127 3

scanFormat$81:	; call header integral zero 0 stack zero 0

scanFormat$82:	; parameter 10, offset 6
x2664:	mov word [bp + 63], 10	; 5: -57 70 63 10 0

scanFormat$83:	; call function noellipse-noellipse scanLongInt
x2669:	mov word [bp + 57], scanFormat$84	; 5: -57 70 57 123 10
x2674:	mov [bp + 59], bp	; 3: -119 110 59
x2677:	add bp, 57	; 3: -125 -59 57
x2680:	jmp scanLongInt	; 3: -23 -113 6

scanFormat$84:	; post call

scanFormat$85:	; £temporary1575 = return_value

scanFormat$86:	; longValue = £temporary1575
x2683:	mov [bp + 23], ebx	; 4: 102 -119 94 23

scanFormat$87:	; if star != 0 goto 115
x2687:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x2691:	jne scanFormat$115	; 2: 117 111

scanFormat$88:	; if shortInt == 0 goto 98
x2693:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x2697:	je scanFormat$98	; 2: 116 37

scanFormat$89:	; arg_list = arg_list + 2
x2699:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$90:	; £temporary1579 = arg_list - 2
x2703:	mov si, [bp + 8]	; 3: -117 118 8
x2706:	sub si, 2	; 3: -125 -18 2

scanFormat$91:	; £temporary1580 = int_to_int £temporary1579 (Signed_Int -> Pointer)

scanFormat$92:	; £temporary1581 -> £temporary1580 = *£temporary1580

scanFormat$93:	; shortPtr = £temporary1581 -> £temporary1580
x2709:	mov ax, [si]	; 2: -117 4
x2711:	mov [bp + 29], ax	; 3: -119 70 29

scanFormat$94:	; £temporary1582 -> shortPtr = *shortPtr
x2714:	mov si, [bp + 29]	; 3: -117 118 29

scanFormat$95:	; £temporary1583 = int_to_int longValue (Signed_Long_Int -> Signed_Short_Int)
x2717:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x2721:	cmp eax, 0	; 4: 102 -125 -8 0
x2725:	jge scanFormat$96	; 2: 125 5
x2727:	neg eax	; 3: 102 -9 -40
x2730:	neg al	; 2: -10 -40

scanFormat$96:	; £temporary1582 -> shortPtr = £temporary1583
x2732:	mov [si], al	; 2: -120 4

scanFormat$97:	; goto 115
x2734:	jmp scanFormat$115	; 2: -21 68

scanFormat$98:	; if longIntOrDouble != 0 goto 108
x2736:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x2740:	jne scanFormat$108	; 2: 117 37

scanFormat$99:	; arg_list = arg_list + 2
x2742:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$100:	; £temporary1587 = arg_list - 2
x2746:	mov si, [bp + 8]	; 3: -117 118 8
x2749:	sub si, 2	; 3: -125 -18 2

scanFormat$101:	; £temporary1588 = int_to_int £temporary1587 (Signed_Int -> Pointer)

scanFormat$102:	; £temporary1589 -> £temporary1588 = *£temporary1588

scanFormat$103:	; intPtr = £temporary1589 -> £temporary1588
x2752:	mov ax, [si]	; 2: -117 4
x2754:	mov [bp + 33], ax	; 3: -119 70 33

scanFormat$104:	; £temporary1590 -> intPtr = *intPtr
x2757:	mov si, [bp + 33]	; 3: -117 118 33

scanFormat$105:	; £temporary1591 = int_to_int longValue (Signed_Long_Int -> Signed_Int)
x2760:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x2764:	cmp eax, 0	; 4: 102 -125 -8 0
x2768:	jge scanFormat$106	; 2: 125 5
x2770:	neg eax	; 3: 102 -9 -40
x2773:	neg ax	; 2: -9 -40

scanFormat$106:	; £temporary1590 -> intPtr = £temporary1591
x2775:	mov [si], ax	; 2: -119 4

scanFormat$107:	; goto 115
x2777:	jmp scanFormat$115	; 2: -21 25

scanFormat$108:	; arg_list = arg_list + 2
x2779:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$109:	; £temporary1593 = arg_list - 2
x2783:	mov si, [bp + 8]	; 3: -117 118 8
x2786:	sub si, 2	; 3: -125 -18 2

scanFormat$110:	; £temporary1594 = int_to_int £temporary1593 (Signed_Int -> Pointer)

scanFormat$111:	; £temporary1595 -> £temporary1594 = *£temporary1594

scanFormat$112:	; longPtr = £temporary1595 -> £temporary1594
x2789:	mov ax, [si]	; 2: -117 4
x2791:	mov [bp + 27], ax	; 3: -119 70 27

scanFormat$113:	; £temporary1596 -> longPtr = *longPtr
x2794:	mov si, [bp + 27]	; 3: -117 118 27

scanFormat$114:	; £temporary1596 -> longPtr = longValue
x2797:	mov eax, [bp + 23]	; 4: 102 -117 70 23
x2801:	mov [si], eax	; 3: 102 -119 4

scanFormat$115:	; percent = 0
x2804:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$116:	; goto 324
x2809:	jmp scanFormat$324	; 3: -23 -19 2

scanFormat$117:	; call header integral zero 0 stack zero 0

scanFormat$118:	; parameter 8, offset 6
x2812:	mov word [bp + 63], 8	; 5: -57 70 63 8 0

scanFormat$119:	; call function noellipse-noellipse scanUnsignedLongInt
x2817:	mov word [bp + 57], scanFormat$120	; 5: -57 70 57 15 11
x2822:	mov [bp + 59], bp	; 3: -119 110 59
x2825:	add bp, 57	; 3: -125 -59 57
x2828:	jmp scanUnsignedLongInt	; 3: -23 -14 14

scanFormat$120:	; post call

scanFormat$121:	; £temporary1598 = return_value

scanFormat$122:	; unsignedLongValue = £temporary1598
x2831:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$123:	; if star != 0 goto 151
x2835:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x2839:	jne scanFormat$151	; 2: 117 89

scanFormat$124:	; if shortInt == 0 goto 134
x2841:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x2845:	je scanFormat$134	; 2: 116 26

scanFormat$125:	; arg_list = arg_list + 2
x2847:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$126:	; £temporary1602 = arg_list - 2
x2851:	mov si, [bp + 8]	; 3: -117 118 8
x2854:	sub si, 2	; 3: -125 -18 2

scanFormat$127:	; £temporary1603 = int_to_int £temporary1602 (Signed_Int -> Pointer)

scanFormat$128:	; £temporary1604 -> £temporary1603 = *£temporary1603

scanFormat$129:	; unsignedShortPtr = £temporary1604 -> £temporary1603
x2857:	mov ax, [si]	; 2: -117 4
x2859:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$130:	; £temporary1605 -> unsignedShortPtr = *unsignedShortPtr
x2862:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$131:	; £temporary1606 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x2865:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$132:	; £temporary1605 -> unsignedShortPtr = £temporary1606
x2869:	mov [si], al	; 2: -120 4

scanFormat$133:	; goto 151
x2871:	jmp scanFormat$151	; 2: -21 57

scanFormat$134:	; if longIntOrDouble != 0 goto 144
x2873:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x2877:	jne scanFormat$144	; 2: 117 26

scanFormat$135:	; arg_list = arg_list + 2
x2879:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$136:	; £temporary1610 = arg_list - 2
x2883:	mov si, [bp + 8]	; 3: -117 118 8
x2886:	sub si, 2	; 3: -125 -18 2

scanFormat$137:	; £temporary1611 = int_to_int £temporary1610 (Signed_Int -> Pointer)

scanFormat$138:	; £temporary1612 -> £temporary1611 = *£temporary1611

scanFormat$139:	; unsignedIntPtr = £temporary1612 -> £temporary1611
x2889:	mov ax, [si]	; 2: -117 4
x2891:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$140:	; £temporary1613 -> unsignedIntPtr = *unsignedIntPtr
x2894:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$141:	; £temporary1614 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x2897:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$142:	; £temporary1613 -> unsignedIntPtr = £temporary1614
x2901:	mov [si], ax	; 2: -119 4

scanFormat$143:	; goto 151
x2903:	jmp scanFormat$151	; 2: -21 25

scanFormat$144:	; arg_list = arg_list + 2
x2905:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$145:	; £temporary1616 = arg_list - 2
x2909:	mov si, [bp + 8]	; 3: -117 118 8
x2912:	sub si, 2	; 3: -125 -18 2

scanFormat$146:	; £temporary1617 = int_to_int £temporary1616 (Signed_Int -> Pointer)

scanFormat$147:	; £temporary1618 -> £temporary1617 = *£temporary1617

scanFormat$148:	; unsignedLongPtr = £temporary1618 -> £temporary1617
x2915:	mov ax, [si]	; 2: -117 4
x2917:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$149:	; £temporary1619 -> unsignedLongPtr = *unsignedLongPtr
x2920:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$150:	; £temporary1619 -> unsignedLongPtr = unsignedLongValue
x2923:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x2927:	mov [si], eax	; 3: 102 -119 4

scanFormat$151:	; percent = 0
x2930:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$152:	; goto 324
x2935:	jmp scanFormat$324	; 3: -23 111 2

scanFormat$153:	; call header integral zero 0 stack zero 0

scanFormat$154:	; parameter 16, offset 6
x2938:	mov word [bp + 63], 16	; 5: -57 70 63 16 0

scanFormat$155:	; call function noellipse-noellipse scanUnsignedLongInt
x2943:	mov word [bp + 57], scanFormat$156	; 5: -57 70 57 -115 11
x2948:	mov [bp + 59], bp	; 3: -119 110 59
x2951:	add bp, 57	; 3: -125 -59 57
x2954:	jmp scanUnsignedLongInt	; 3: -23 116 14

scanFormat$156:	; post call

scanFormat$157:	; £temporary1621 = return_value

scanFormat$158:	; unsignedLongValue = £temporary1621
x2957:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$159:	; if star != 0 goto 187
x2961:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x2965:	jne scanFormat$187	; 2: 117 89

scanFormat$160:	; if shortInt == 0 goto 170
x2967:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x2971:	je scanFormat$170	; 2: 116 26

scanFormat$161:	; arg_list = arg_list + 2
x2973:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$162:	; £temporary1625 = arg_list - 2
x2977:	mov si, [bp + 8]	; 3: -117 118 8
x2980:	sub si, 2	; 3: -125 -18 2

scanFormat$163:	; £temporary1626 = int_to_int £temporary1625 (Signed_Int -> Pointer)

scanFormat$164:	; £temporary1627 -> £temporary1626 = *£temporary1626

scanFormat$165:	; unsignedShortPtr = £temporary1627 -> £temporary1626
x2983:	mov ax, [si]	; 2: -117 4
x2985:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$166:	; £temporary1628 -> unsignedShortPtr = *unsignedShortPtr
x2988:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$167:	; £temporary1629 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x2991:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$168:	; £temporary1628 -> unsignedShortPtr = £temporary1629
x2995:	mov [si], al	; 2: -120 4

scanFormat$169:	; goto 187
x2997:	jmp scanFormat$187	; 2: -21 57

scanFormat$170:	; if longIntOrDouble != 0 goto 180
x2999:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x3003:	jne scanFormat$180	; 2: 117 26

scanFormat$171:	; arg_list = arg_list + 2
x3005:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$172:	; £temporary1633 = arg_list - 2
x3009:	mov si, [bp + 8]	; 3: -117 118 8
x3012:	sub si, 2	; 3: -125 -18 2

scanFormat$173:	; £temporary1634 = int_to_int £temporary1633 (Signed_Int -> Pointer)

scanFormat$174:	; £temporary1635 -> £temporary1634 = *£temporary1634

scanFormat$175:	; unsignedIntPtr = £temporary1635 -> £temporary1634
x3015:	mov ax, [si]	; 2: -117 4
x3017:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$176:	; £temporary1636 -> unsignedIntPtr = *unsignedIntPtr
x3020:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$177:	; £temporary1637 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x3023:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$178:	; £temporary1636 -> unsignedIntPtr = £temporary1637
x3027:	mov [si], ax	; 2: -119 4

scanFormat$179:	; goto 187
x3029:	jmp scanFormat$187	; 2: -21 25

scanFormat$180:	; arg_list = arg_list + 2
x3031:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$181:	; £temporary1639 = arg_list - 2
x3035:	mov si, [bp + 8]	; 3: -117 118 8
x3038:	sub si, 2	; 3: -125 -18 2

scanFormat$182:	; £temporary1640 = int_to_int £temporary1639 (Signed_Int -> Pointer)

scanFormat$183:	; £temporary1641 -> £temporary1640 = *£temporary1640

scanFormat$184:	; unsignedLongPtr = £temporary1641 -> £temporary1640
x3041:	mov ax, [si]	; 2: -117 4
x3043:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$185:	; £temporary1642 -> unsignedLongPtr = *unsignedLongPtr
x3046:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$186:	; £temporary1642 -> unsignedLongPtr = unsignedLongValue
x3049:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x3053:	mov [si], eax	; 3: 102 -119 4

scanFormat$187:	; percent = 0
x3056:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$188:	; goto 324
x3061:	jmp scanFormat$324	; 3: -23 -15 1

scanFormat$189:	; call header integral zero 0 stack zero 0

scanFormat$190:	; parameter 0, offset 6
x3064:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

scanFormat$191:	; call function noellipse-noellipse scanUnsignedLongInt
x3069:	mov word [bp + 57], scanFormat$192	; 5: -57 70 57 11 12
x3074:	mov [bp + 59], bp	; 3: -119 110 59
x3077:	add bp, 57	; 3: -125 -59 57
x3080:	jmp scanUnsignedLongInt	; 3: -23 -10 13

scanFormat$192:	; post call

scanFormat$193:	; £temporary1644 = return_value

scanFormat$194:	; unsignedLongValue = £temporary1644
x3083:	mov [bp + 37], ebx	; 4: 102 -119 94 37

scanFormat$195:	; if star != 0 goto 223
x3087:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x3091:	jne scanFormat$223	; 2: 117 89

scanFormat$196:	; if shortInt == 0 goto 206
x3093:	cmp word [bp + 15], 0	; 4: -125 126 15 0
x3097:	je scanFormat$206	; 2: 116 26

scanFormat$197:	; arg_list = arg_list + 2
x3099:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$198:	; £temporary1648 = arg_list - 2
x3103:	mov si, [bp + 8]	; 3: -117 118 8
x3106:	sub si, 2	; 3: -125 -18 2

scanFormat$199:	; £temporary1649 = int_to_int £temporary1648 (Signed_Int -> Pointer)

scanFormat$200:	; £temporary1650 -> £temporary1649 = *£temporary1649

scanFormat$201:	; unsignedShortPtr = £temporary1650 -> £temporary1649
x3109:	mov ax, [si]	; 2: -117 4
x3111:	mov [bp + 43], ax	; 3: -119 70 43

scanFormat$202:	; £temporary1651 -> unsignedShortPtr = *unsignedShortPtr
x3114:	mov si, [bp + 43]	; 3: -117 118 43

scanFormat$203:	; £temporary1652 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
x3117:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$204:	; £temporary1651 -> unsignedShortPtr = £temporary1652
x3121:	mov [si], al	; 2: -120 4

scanFormat$205:	; goto 223
x3123:	jmp scanFormat$223	; 2: -21 57

scanFormat$206:	; if longIntOrDouble != 0 goto 216
x3125:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x3129:	jne scanFormat$216	; 2: 117 26

scanFormat$207:	; arg_list = arg_list + 2
x3131:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$208:	; £temporary1656 = arg_list - 2
x3135:	mov si, [bp + 8]	; 3: -117 118 8
x3138:	sub si, 2	; 3: -125 -18 2

scanFormat$209:	; £temporary1657 = int_to_int £temporary1656 (Signed_Int -> Pointer)

scanFormat$210:	; £temporary1658 -> £temporary1657 = *£temporary1657

scanFormat$211:	; unsignedIntPtr = £temporary1658 -> £temporary1657
x3141:	mov ax, [si]	; 2: -117 4
x3143:	mov [bp + 45], ax	; 3: -119 70 45

scanFormat$212:	; £temporary1659 -> unsignedIntPtr = *unsignedIntPtr
x3146:	mov si, [bp + 45]	; 3: -117 118 45

scanFormat$213:	; £temporary1660 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
x3149:	mov eax, [bp + 37]	; 4: 102 -117 70 37

scanFormat$214:	; £temporary1659 -> unsignedIntPtr = £temporary1660
x3153:	mov [si], ax	; 2: -119 4

scanFormat$215:	; goto 223
x3155:	jmp scanFormat$223	; 2: -21 25

scanFormat$216:	; arg_list = arg_list + 2
x3157:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$217:	; £temporary1662 = arg_list - 2
x3161:	mov si, [bp + 8]	; 3: -117 118 8
x3164:	sub si, 2	; 3: -125 -18 2

scanFormat$218:	; £temporary1663 = int_to_int £temporary1662 (Signed_Int -> Pointer)

scanFormat$219:	; £temporary1664 -> £temporary1663 = *£temporary1663

scanFormat$220:	; unsignedLongPtr = £temporary1664 -> £temporary1663
x3167:	mov ax, [si]	; 2: -117 4
x3169:	mov [bp + 41], ax	; 3: -119 70 41

scanFormat$221:	; £temporary1665 -> unsignedLongPtr = *unsignedLongPtr
x3172:	mov si, [bp + 41]	; 3: -117 118 41

scanFormat$222:	; £temporary1665 -> unsignedLongPtr = unsignedLongValue
x3175:	mov eax, [bp + 37]	; 4: 102 -117 70 37
x3179:	mov [si], eax	; 3: 102 -119 4

scanFormat$223:	; percent = 0
x3182:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$224:	; goto 324
x3187:	jmp scanFormat$324	; 3: -23 115 1

scanFormat$225:	; call header integral zero 0 stack zero 0

scanFormat$226:	; call function noellipse-noellipse scanLongDouble
x3190:	mov word [bp + 57], scanFormat$227	; 5: -57 70 57 -124 12
x3195:	mov [bp + 59], bp	; 3: -119 110 59
x3198:	add bp, 57	; 3: -125 -59 57
x3201:	jmp scanLongDouble	; 3: -23 -23 14

scanFormat$227:	; post call

scanFormat$228:	; £temporary1667 = return_value

scanFormat$229:	; pop float longDoubleValue
x3204:	fstp qword [bp + 47]	; 3: -35 94 47

scanFormat$230:	; if star != 0 goto 259
x3207:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x3211:	jne scanFormat$259	; 2: 117 85

scanFormat$231:	; if longIntOrDouble == 0 goto 241
x3213:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x3217:	je scanFormat$241	; 2: 116 25

scanFormat$232:	; arg_list = arg_list + 2
x3219:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$233:	; £temporary1671 = arg_list - 2
x3223:	mov si, [bp + 8]	; 3: -117 118 8
x3226:	sub si, 2	; 3: -125 -18 2

scanFormat$234:	; £temporary1672 = int_to_int £temporary1671 (Signed_Int -> Pointer)

scanFormat$235:	; £temporary1673 -> £temporary1672 = *£temporary1672

scanFormat$236:	; doublePtr = £temporary1673 -> £temporary1672
x3229:	mov ax, [si]	; 2: -117 4
x3231:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$237:	; £temporary1674 -> doublePtr = *doublePtr
x3234:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$238:	; push float longDoubleValue
x3237:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$239:	; pop float £temporary1674 -> doublePtr
x3240:	fstp qword [si]	; 2: -35 28

scanFormat$240:	; goto 259
x3242:	jmp scanFormat$259	; 2: -21 54

scanFormat$241:	; if longDouble == 0 goto 251
x3244:	cmp word [bp + 19], 0	; 4: -125 126 19 0
x3248:	je scanFormat$251	; 2: 116 25

scanFormat$242:	; arg_list = arg_list + 2
x3250:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$243:	; £temporary1677 = arg_list - 2
x3254:	mov si, [bp + 8]	; 3: -117 118 8
x3257:	sub si, 2	; 3: -125 -18 2

scanFormat$244:	; £temporary1678 = int_to_int £temporary1677 (Signed_Int -> Pointer)

scanFormat$245:	; £temporary1679 -> £temporary1678 = *£temporary1678

scanFormat$246:	; longDoublePtr = £temporary1679 -> £temporary1678
x3260:	mov ax, [si]	; 2: -117 4
x3262:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$247:	; £temporary1680 -> longDoublePtr = *longDoublePtr
x3265:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$248:	; push float longDoubleValue
x3268:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$249:	; pop float £temporary1680 -> longDoublePtr
x3271:	fstp qword [si]	; 2: -35 28

scanFormat$250:	; goto 259
x3273:	jmp scanFormat$259	; 2: -21 23

scanFormat$251:	; arg_list = arg_list + 2
x3275:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$252:	; £temporary1682 = arg_list - 2
x3279:	mov si, [bp + 8]	; 3: -117 118 8
x3282:	sub si, 2	; 3: -125 -18 2

scanFormat$253:	; £temporary1683 = int_to_int £temporary1682 (Signed_Int -> Pointer)

scanFormat$254:	; £temporary1684 -> £temporary1683 = *£temporary1683

scanFormat$255:	; floatPtr = £temporary1684 -> £temporary1683
x3285:	mov ax, [si]	; 2: -117 4
x3287:	mov [bp + 57], ax	; 3: -119 70 57

scanFormat$256:	; £temporary1685 -> floatPtr = *floatPtr
x3290:	mov si, [bp + 57]	; 3: -117 118 57

scanFormat$257:	; push float longDoubleValue
x3293:	fld qword [bp + 47]	; 3: -35 70 47

scanFormat$258:	; pop float £temporary1685 -> floatPtr
x3296:	fstp dword [si]	; 2: -39 28

scanFormat$259:	; percent = 0
x3298:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$260:	; goto 324
x3303:	jmp scanFormat$324	; 3: -23 -1 0

scanFormat$261:	; not = 0
x3306:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

scanFormat$262:	; ++index
x3311:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$263:	; £temporary1691 = format + index
x3314:	mov si, [bp + 6]	; 3: -117 118 6
x3317:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$264:	; £temporary1690 -> £temporary1691 = *£temporary1691

scanFormat$265:	; if £temporary1690 -> £temporary1691 != 94 goto 268
x3320:	cmp byte [si], 94	; 3: -128 60 94
x3323:	jne scanFormat$268	; 2: 117 12

scanFormat$266:	; not = 1
x3325:	mov word [bp + 57], 1	; 5: -57 70 57 1 0

scanFormat$267:	; startIndex = index + 1
x3330:	mov ax, [bp + 31]	; 3: -117 70 31
x3333:	inc ax	; 1: 64
x3334:	mov [bp + 59], ax	; 3: -119 70 59

scanFormat$268:	; £temporary1695 = format + index
x3337:	mov si, [bp + 6]	; 3: -117 118 6
x3340:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$269:	; £temporary1694 -> £temporary1695 = *£temporary1695

scanFormat$270:	; if £temporary1694 -> £temporary1695 == 93 goto 273
x3343:	cmp byte [si], 93	; 3: -128 60 93
x3346:	je scanFormat$273	; 2: 116 5

scanFormat$271:	; ++index
x3348:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$272:	; goto 268
x3351:	jmp scanFormat$268	; 2: -21 -16

scanFormat$273:	; £temporary1699 = format + index
x3353:	mov si, [bp + 6]	; 3: -117 118 6
x3356:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$274:	; £temporary1698 -> £temporary1699 = *£temporary1699

scanFormat$275:	; £temporary1698 -> £temporary1699 = 0
x3359:	mov byte [si], 0	; 3: -58 4 0

scanFormat$276:	; if star != 0 goto 292
x3362:	cmp word [bp + 21], 0	; 4: -125 126 21 0
x3366:	jne scanFormat$292	; 2: 117 53

scanFormat$277:	; arg_list = arg_list + 2
x3368:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$278:	; £temporary1703 = arg_list - 2
x3372:	mov si, [bp + 8]	; 3: -117 118 8
x3375:	sub si, 2	; 3: -125 -18 2

scanFormat$279:	; £temporary1704 = int_to_int £temporary1703 (Signed_Int -> Pointer)

scanFormat$280:	; £temporary1705 -> £temporary1704 = *£temporary1704

scanFormat$281:	; string = £temporary1705 -> £temporary1704
x3378:	mov ax, [si]	; 2: -117 4
x3380:	mov [bp + 61], ax	; 3: -119 70 61

scanFormat$282:	; call header integral zero 0 stack zero 0

scanFormat$283:	; parameter string, offset 6
x3383:	mov ax, [bp + 61]	; 3: -117 70 61
x3386:	mov [bp + 69], ax	; 3: -119 70 69

scanFormat$284:	; £temporary1707 = format + startIndex
x3389:	mov si, [bp + 6]	; 3: -117 118 6
x3392:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$285:	; £temporary1706 -> £temporary1707 = *£temporary1707

scanFormat$286:	; £temporary1708 = &£temporary1706 -> £temporary1707

scanFormat$287:	; parameter £temporary1708, offset 8
x3395:	mov [bp + 71], si	; 3: -119 118 71

scanFormat$288:	; parameter not, offset 10
x3398:	mov ax, [bp + 57]	; 3: -117 70 57
x3401:	mov [bp + 73], ax	; 3: -119 70 73

scanFormat$289:	; call function noellipse-noellipse scanPattern
x3404:	mov word [bp + 63], scanFormat$290	; 5: -57 70 63 90 13
x3409:	mov [bp + 65], bp	; 3: -119 110 65
x3412:	add bp, 63	; 3: -125 -59 63
x3415:	jmp scanPattern	; 3: -23 97 20

scanFormat$290:	; post call

scanFormat$291:	; goto 324
x3418:	jmp scanFormat$324	; 3: -23 -116 0

scanFormat$292:	; call header integral zero 0 stack zero 0

scanFormat$293:	; parameter 0, offset 6
x3421:	mov word [bp + 67], 0	; 5: -57 70 67 0 0

scanFormat$294:	; £temporary1711 = format + startIndex
x3426:	mov si, [bp + 6]	; 3: -117 118 6
x3429:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$295:	; £temporary1710 -> £temporary1711 = *£temporary1711

scanFormat$296:	; £temporary1712 = &£temporary1710 -> £temporary1711

scanFormat$297:	; parameter £temporary1712, offset 8
x3432:	mov [bp + 69], si	; 3: -119 118 69

scanFormat$298:	; parameter not, offset 10
x3435:	mov ax, [bp + 57]	; 3: -117 70 57
x3438:	mov [bp + 71], ax	; 3: -119 70 71

scanFormat$299:	; call function noellipse-noellipse scanPattern
x3441:	mov word [bp + 61], scanFormat$300	; 5: -57 70 61 127 13
x3446:	mov [bp + 63], bp	; 3: -119 110 63
x3449:	add bp, 61	; 3: -125 -59 61
x3452:	jmp scanPattern	; 3: -23 60 20

scanFormat$300:	; post call

scanFormat$301:	; goto 324
x3455:	jmp scanFormat$324	; 2: -21 104

scanFormat$302:	; arg_list = arg_list + 2
x3457:	add word [bp + 8], 2	; 4: -125 70 8 2

scanFormat$303:	; £temporary1715 = arg_list - 2
x3461:	mov si, [bp + 8]	; 3: -117 118 8
x3464:	sub si, 2	; 3: -125 -18 2

scanFormat$304:	; £temporary1716 = int_to_int £temporary1715 (Signed_Int -> Pointer)

scanFormat$305:	; £temporary1717 -> £temporary1716 = *£temporary1716

scanFormat$306:	; charsPtr = £temporary1717 -> £temporary1716
x3467:	mov ax, [si]	; 2: -117 4
x3469:	mov [bp + 35], ax	; 3: -119 70 35

scanFormat$307:	; £temporary1718 -> charsPtr = *charsPtr
x3472:	mov si, [bp + 35]	; 3: -117 118 35

scanFormat$308:	; £temporary1718 -> charsPtr = g_inChars
x3475:	mov ax, [g_inChars]	; 3: -95 0 14
x3478:	mov [si], ax	; 2: -119 4

scanFormat$309:	; percent = 0
x3480:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanFormat$310:	; goto 324
x3485:	jmp scanFormat$324	; 2: -21 74

scanFormat$311:	; call header integral zero 0 stack zero 0

scanFormat$312:	; parameter string_scanFormat20c203D202725c270A#, offset 6
x3487:	mov word [bp + 63], string_scanFormat20c203D202725c270A#	; 5: -57 70 63 2 14

scanFormat$313:	; £temporary1719 = int_to_int c (Signed_Char -> Signed_Int)
x3492:	mov al, [bp + 10]	; 3: -118 70 10
x3495:	and ax, 255	; 3: 37 -1 0
x3498:	cmp al, 0	; 2: 60 0
x3500:	jge scanFormat$314	; 2: 125 4
x3502:	neg al	; 2: -10 -40
x3504:	neg ax	; 2: -9 -40

scanFormat$314:	; parameter £temporary1719, offset 8
x3506:	mov [bp + 65], ax	; 3: -119 70 65

scanFormat$315:	; call function noellipse-ellipse printf, extra 0
x3509:	mov word [bp + 57], scanFormat$316	; 5: -57 70 57 -56 13
x3514:	mov [bp + 59], bp	; 3: -119 110 59
x3517:	add bp, 57	; 3: -125 -59 57
x3520:	mov di, bp	; 2: -119 -17
x3522:	add di, 2	; 3: -125 -57 2
x3525:	jmp printf	; 3: -23 85 21

scanFormat$316:	; post call

scanFormat$317:	; goto 324
x3528:	jmp scanFormat$324	; 2: -21 31

scanFormat$318:	; if c != 37 goto 324
x3530:	cmp byte [bp + 10], 37	; 4: -128 126 10 37
x3534:	jne scanFormat$324	; 2: 117 25

scanFormat$319:	; percent = 1
x3536:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanFormat$320:	; shortInt = 0
x3541:	mov word [bp + 15], 0	; 5: -57 70 15 0 0

scanFormat$321:	; longIntOrDouble = 0
x3546:	mov word [bp + 17], 0	; 5: -57 70 17 0 0

scanFormat$322:	; longDouble = 0
x3551:	mov word [bp + 19], 0	; 5: -57 70 19 0 0

scanFormat$323:	; star = 0
x3556:	mov word [bp + 21], 0	; 5: -57 70 21 0 0

scanFormat$324:	; ++index
x3561:	inc word [bp + 31]	; 3: -1 70 31

scanFormat$325:	; goto 8
x3564:	jmp scanFormat$8	; 3: -23 27 -5

scanFormat$326:	; return_value = g_inCount
x3567:	mov bx, [g_inCount]	; 4: -117 30 -2 13

scanFormat$327:	; return
x3571:	mov ax, [bp]	; 3: -117 70 0
x3574:	mov di, [bp + 4]	; 3: -117 126 4
x3577:	mov bp, [bp + 2]	; 3: -117 110 2
x3580:	jmp ax	; 2: -1 -32

scanFormat$328:	; function end scanFormat

g_inCount:
x3582:	db 0, 0	; 2: 0 0

g_inChars:
x3584:	db 0, 0	; 2: 0 0

string_scanFormat20c203D202725c270A#:
x3586:	db "scanFormat c = ", 39, "%c", 39, 10, 0	; 21: 115 99 97 110 70 111 114 109 97 116 32 99 32 61 32 39 37 99 39 10 0

scanChar:	; c = 0
x3607:	mov byte [bp + 6], 0	; 4: -58 70 6 0

scanChar$1:	; case g_inStatus == 0 goto 5
x3611:	mov ax, [g_inStatus]	; 3: -95 -36 8
x3614:	cmp ax, 0	; 3: -125 -8 0
x3617:	je scanChar$5	; 2: 116 7

scanChar$2:	; case g_inStatus == 1 goto 18
x3619:	cmp ax, 1	; 3: -125 -8 1
x3622:	je scanChar$18	; 2: 116 50

scanChar$3:	; case end g_inStatus

scanChar$4:	; goto 26
x3624:	jmp scanChar$26	; 2: -21 79

scanChar$5:	; £temporary1235 = int_to_int g_inDevice (Pointer -> Pointer)
x3626:	mov ax, [g_inDevice]	; 3: -95 -34 8

scanChar$6:	; stream = £temporary1235
x3629:	mov [bp + 7], ax	; 3: -119 70 7

scanChar$7:	; £temporary1236 -> stream = *stream, offset 2
x3632:	mov si, [bp + 7]	; 3: -117 118 7

scanChar$8:	; handle = £temporary1236 -> stream
x3635:	mov ax, [si + 2]	; 3: -117 68 2
x3638:	mov [bp + 9], ax	; 3: -119 70 9

scanChar$9:	; ah = 63
x3641:	mov ah, 63	; 2: -76 63

scanChar$10:	; bx = handle
x3643:	mov bx, [bp + 9]	; 3: -117 94 9

scanChar$11:	; cx = 1
x3646:	mov cx, 1	; 3: -71 1 0

scanChar$12:	; £temporary1241 = &c
x3649:	mov dx, bp	; 2: -119 -22
x3651:	add dx, 6	; 3: -125 -62 6

scanChar$13:	; dx = £temporary1241

scanChar$14:	; interrupt 33
x3654:	int 33	; 2: -51 33

scanChar$15:	; ++g_inChars
x3656:	inc word [g_inChars]	; 4: -1 6 0 14

scanChar$16:	; return_value = c
x3660:	mov bl, [bp + 6]	; 3: -118 94 6

scanChar$17:	; return
x3663:	mov ax, [bp]	; 3: -117 70 0
x3666:	mov di, [bp + 4]	; 3: -117 126 4
x3669:	mov bp, [bp + 2]	; 3: -117 110 2
x3672:	jmp ax	; 2: -1 -32

scanChar$18:	; £temporary1243 = int_to_int g_inDevice (Pointer -> Pointer)
x3674:	mov ax, [g_inDevice]	; 3: -95 -34 8

scanChar$19:	; inString = £temporary1243
x3677:	mov [bp + 11], ax	; 3: -119 70 11

scanChar$20:	; £temporary1244 = g_inChars
x3680:	mov ax, [g_inChars]	; 3: -95 0 14

scanChar$21:	; ++g_inChars
x3683:	inc word [g_inChars]	; 4: -1 6 0 14

scanChar$22:	; £temporary1246 = inString + £temporary1244
x3687:	mov si, [bp + 11]	; 3: -117 118 11
x3690:	add si, ax	; 2: 1 -58

scanChar$23:	; £temporary1245 -> £temporary1246 = *£temporary1246

scanChar$24:	; return_value = £temporary1245 -> £temporary1246
x3692:	mov bl, [si]	; 2: -118 28

scanChar$25:	; return
x3694:	mov ax, [bp]	; 3: -117 70 0
x3697:	mov di, [bp + 4]	; 3: -117 126 4
x3700:	mov bp, [bp + 2]	; 3: -117 110 2
x3703:	jmp ax	; 2: -1 -32

scanChar$26:	; return_value = 0
x3705:	mov bl, 0	; 2: -77 0

scanChar$27:	; return
x3707:	mov ax, [bp]	; 3: -117 70 0
x3710:	mov di, [bp + 4]	; 3: -117 126 4
x3713:	mov bp, [bp + 2]	; 3: -117 110 2
x3716:	jmp ax	; 2: -1 -32

scanChar$28:	; function end scanChar

scanString:	; index = 0
x3718:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

scanString$1:	; call header integral zero 0 stack zero 0

scanString$2:	; call function noellipse-noellipse scanChar
x3723:	mov word [bp + 12], scanString$3	; 5: -57 70 12 -103 14
x3728:	mov [bp + 14], bp	; 3: -119 110 14
x3731:	add bp, 12	; 3: -125 -59 12
x3734:	jmp scanChar	; 3: -23 126 -1

scanString$3:	; post call

scanString$4:	; £temporary1298 = return_value

scanString$5:	; input = £temporary1298
x3737:	mov [bp + 12], bl	; 3: -120 94 12

scanString$6:	; found = 0
x3740:	mov word [bp + 13], 0	; 5: -57 70 13 0 0

scanString$7:	; call header integral zero 0 stack zero 0

scanString$8:	; £temporary1299 = int_to_int input (Signed_Char -> Signed_Int)
x3745:	mov al, [bp + 12]	; 3: -118 70 12
x3748:	and ax, 255	; 3: 37 -1 0
x3751:	cmp al, 0	; 2: 60 0
x3753:	jge scanString$9	; 2: 125 4
x3755:	neg al	; 2: -10 -40
x3757:	neg ax	; 2: -9 -40

scanString$9:	; parameter £temporary1299, offset 6
x3759:	mov [bp + 21], ax	; 3: -119 70 21

scanString$10:	; call function noellipse-noellipse isspace
x3762:	mov word [bp + 15], scanString$11	; 5: -57 70 15 -64 14
x3767:	mov [bp + 17], bp	; 3: -119 110 17
x3770:	add bp, 15	; 3: -125 -59 15
x3773:	jmp isspace	; 3: -23 19 2

scanString$11:	; post call

scanString$12:	; £temporary1300 = return_value

scanString$13:	; if £temporary1300 == 0 goto 20
x3776:	cmp bx, 0	; 3: -125 -5 0
x3779:	je scanString$20	; 2: 116 19

scanString$14:	; call header integral zero 0 stack zero 0

scanString$15:	; call function noellipse-noellipse scanChar
x3781:	mov word [bp + 15], scanString$16	; 5: -57 70 15 -45 14
x3786:	mov [bp + 17], bp	; 3: -119 110 17
x3789:	add bp, 15	; 3: -125 -59 15
x3792:	jmp scanChar	; 3: -23 68 -1

scanString$16:	; post call

scanString$17:	; £temporary1301 = return_value

scanString$18:	; input = £temporary1301
x3795:	mov [bp + 12], bl	; 3: -120 94 12

scanString$19:	; goto 7
x3798:	jmp scanString$7	; 2: -21 -55

scanString$20:	; if string == 0 goto 82
x3800:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x3804:	je scanString$82	; 4: 15 -124 11 1

scanString$21:	; if precision != 0 goto 50
x3808:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x3812:	jne scanString$50	; 2: 117 121

scanString$22:	; call header integral zero 0 stack zero 0

scanString$23:	; £temporary1305 = int_to_int input (Signed_Char -> Signed_Int)
x3814:	mov al, [bp + 12]	; 3: -118 70 12
x3817:	and ax, 255	; 3: 37 -1 0
x3820:	cmp al, 0	; 2: 60 0
x3822:	jge scanString$24	; 2: 125 4
x3824:	neg al	; 2: -10 -40
x3826:	neg ax	; 2: -9 -40

scanString$24:	; parameter £temporary1305, offset 6
x3828:	mov [bp + 21], ax	; 3: -119 70 21

scanString$25:	; call function noellipse-noellipse isspace
x3831:	mov word [bp + 15], scanString$26	; 5: -57 70 15 5 15
x3836:	mov [bp + 17], bp	; 3: -119 110 17
x3839:	add bp, 15	; 3: -125 -59 15
x3842:	jmp isspace	; 3: -23 -50 1

scanString$26:	; post call

scanString$27:	; £temporary1306 = return_value

scanString$28:	; if £temporary1306 != 0 goto 45
x3845:	cmp bx, 0	; 3: -125 -5 0
x3848:	jne scanString$45	; 2: 117 69

scanString$29:	; £temporary1309 = int_to_int input (Signed_Char -> Signed_Int)
x3850:	mov al, [bp + 12]	; 3: -118 70 12
x3853:	and ax, 255	; 3: 37 -1 0
x3856:	cmp al, 0	; 2: 60 0
x3858:	jge scanString$30	; 2: 125 4
x3860:	neg al	; 2: -10 -40
x3862:	neg ax	; 2: -9 -40

scanString$30:	; if £temporary1309 == -1 goto 45
x3864:	cmp ax, -1	; 3: -125 -8 -1
x3867:	je scanString$45	; 2: 116 50

scanString$31:	; if input == 10 goto 45
x3869:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x3873:	je scanString$45	; 2: 116 44

scanString$32:	; £temporary1314 = index
x3875:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$33:	; ++index
x3878:	inc word [bp + 10]	; 3: -1 70 10

scanString$34:	; £temporary1316 = string + £temporary1314
x3881:	mov si, [bp + 6]	; 3: -117 118 6
x3884:	add si, ax	; 2: 1 -58

scanString$35:	; £temporary1315 -> £temporary1316 = *£temporary1316

scanString$36:	; £temporary1315 -> £temporary1316 = input
x3886:	mov al, [bp + 12]	; 3: -118 70 12
x3889:	mov [si], al	; 2: -120 4

scanString$37:	; call header integral zero 0 stack zero 0

scanString$38:	; call function noellipse-noellipse scanChar
x3891:	mov word [bp + 15], scanString$39	; 5: -57 70 15 65 15
x3896:	mov [bp + 17], bp	; 3: -119 110 17
x3899:	add bp, 15	; 3: -125 -59 15
x3902:	jmp scanChar	; 3: -23 -42 -2

scanString$39:	; post call

scanString$40:	; £temporary1317 = return_value

scanString$41:	; input = £temporary1317
x3905:	mov [bp + 12], bl	; 3: -120 94 12

scanString$42:	; found = 1
x3908:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$43:	; ++g_inChars
x3913:	inc word [g_inChars]	; 4: -1 6 0 14

scanString$44:	; goto 22
x3917:	jmp scanString$22	; 2: -21 -105

scanString$45:	; £temporary1320 = string + index
x3919:	mov si, [bp + 6]	; 3: -117 118 6
x3922:	add si, [bp + 10]	; 3: 3 118 10

scanString$46:	; £temporary1319 -> £temporary1320 = *£temporary1320

scanString$47:	; £temporary1319 -> £temporary1320 = 0
x3925:	mov byte [si], 0	; 3: -58 4 0

scanString$48:	; ++g_inChars
x3928:	inc word [g_inChars]	; 4: -1 6 0 14

scanString$49:	; goto 126
x3932:	jmp scanString$126	; 3: -23 95 1

scanString$50:	; £temporary1322 = precision
x3935:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$51:	; --precision
x3938:	dec word [bp + 8]	; 3: -1 78 8

scanString$52:	; if £temporary1322 <= 0 goto 76
x3941:	cmp ax, 0	; 3: -125 -8 0
x3944:	jle scanString$76	; 2: 126 105

scanString$53:	; call header integral zero 0 stack zero 0

scanString$54:	; £temporary1324 = int_to_int input (Signed_Char -> Signed_Int)
x3946:	mov al, [bp + 12]	; 3: -118 70 12
x3949:	and ax, 255	; 3: 37 -1 0
x3952:	cmp al, 0	; 2: 60 0
x3954:	jge scanString$55	; 2: 125 4
x3956:	neg al	; 2: -10 -40
x3958:	neg ax	; 2: -9 -40

scanString$55:	; parameter £temporary1324, offset 6
x3960:	mov [bp + 21], ax	; 3: -119 70 21

scanString$56:	; call function noellipse-noellipse isspace
x3963:	mov word [bp + 15], scanString$57	; 5: -57 70 15 -119 15
x3968:	mov [bp + 17], bp	; 3: -119 110 17
x3971:	add bp, 15	; 3: -125 -59 15
x3974:	jmp isspace	; 3: -23 74 1

scanString$57:	; post call

scanString$58:	; £temporary1325 = return_value

scanString$59:	; if £temporary1325 != 0 goto 76
x3977:	cmp bx, 0	; 3: -125 -5 0
x3980:	jne scanString$76	; 2: 117 69

scanString$60:	; £temporary1328 = int_to_int input (Signed_Char -> Signed_Int)
x3982:	mov al, [bp + 12]	; 3: -118 70 12
x3985:	and ax, 255	; 3: 37 -1 0
x3988:	cmp al, 0	; 2: 60 0
x3990:	jge scanString$61	; 2: 125 4
x3992:	neg al	; 2: -10 -40
x3994:	neg ax	; 2: -9 -40

scanString$61:	; if £temporary1328 == -1 goto 76
x3996:	cmp ax, -1	; 3: -125 -8 -1
x3999:	je scanString$76	; 2: 116 50

scanString$62:	; if input == 10 goto 76
x4001:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x4005:	je scanString$76	; 2: 116 44

scanString$63:	; £temporary1334 = index
x4007:	mov ax, [bp + 10]	; 3: -117 70 10

scanString$64:	; ++index
x4010:	inc word [bp + 10]	; 3: -1 70 10

scanString$65:	; £temporary1336 = string + £temporary1334
x4013:	mov si, [bp + 6]	; 3: -117 118 6
x4016:	add si, ax	; 2: 1 -58

scanString$66:	; £temporary1335 -> £temporary1336 = *£temporary1336

scanString$67:	; £temporary1335 -> £temporary1336 = input
x4018:	mov al, [bp + 12]	; 3: -118 70 12
x4021:	mov [si], al	; 2: -120 4

scanString$68:	; call header integral zero 0 stack zero 0

scanString$69:	; call function noellipse-noellipse scanChar
x4023:	mov word [bp + 15], scanString$70	; 5: -57 70 15 -59 15
x4028:	mov [bp + 17], bp	; 3: -119 110 17
x4031:	add bp, 15	; 3: -125 -59 15
x4034:	jmp scanChar	; 3: -23 82 -2

scanString$70:	; post call

scanString$71:	; £temporary1337 = return_value

scanString$72:	; input = £temporary1337
x4037:	mov [bp + 12], bl	; 3: -120 94 12

scanString$73:	; found = 1
x4040:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$74:	; ++g_inChars
x4045:	inc word [g_inChars]	; 4: -1 6 0 14

scanString$75:	; goto 50
x4049:	jmp scanString$50	; 2: -21 -116

scanString$76:	; if precision <= 0 goto 126
x4051:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4055:	jle scanString$126	; 4: 15 -114 -29 0

scanString$77:	; £temporary1341 = string + index
x4059:	mov si, [bp + 6]	; 3: -117 118 6
x4062:	add si, [bp + 10]	; 3: 3 118 10

scanString$78:	; £temporary1340 -> £temporary1341 = *£temporary1341

scanString$79:	; £temporary1340 -> £temporary1341 = 0
x4065:	mov byte [si], 0	; 3: -58 4 0

scanString$80:	; ++g_inChars
x4068:	inc word [g_inChars]	; 4: -1 6 0 14

scanString$81:	; goto 126
x4072:	jmp scanString$126	; 3: -23 -45 0

scanString$82:	; if precision != 0 goto 103
x4075:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4079:	jne scanString$103	; 2: 117 95

scanString$83:	; call header integral zero 0 stack zero 0

scanString$84:	; £temporary1344 = int_to_int input (Signed_Char -> Signed_Int)
x4081:	mov al, [bp + 12]	; 3: -118 70 12
x4084:	and ax, 255	; 3: 37 -1 0
x4087:	cmp al, 0	; 2: 60 0
x4089:	jge scanString$85	; 2: 125 4
x4091:	neg al	; 2: -10 -40
x4093:	neg ax	; 2: -9 -40

scanString$85:	; parameter £temporary1344, offset 6
x4095:	mov [bp + 21], ax	; 3: -119 70 21

scanString$86:	; call function noellipse-noellipse isspace
x4098:	mov word [bp + 15], scanString$87	; 5: -57 70 15 16 16
x4103:	mov [bp + 17], bp	; 3: -119 110 17
x4106:	add bp, 15	; 3: -125 -59 15
x4109:	jmp isspace	; 3: -23 -61 0

scanString$87:	; post call

scanString$88:	; £temporary1345 = return_value

scanString$89:	; if £temporary1345 != 0 goto 101
x4112:	cmp bx, 0	; 3: -125 -5 0
x4115:	jne scanString$101	; 2: 117 53

scanString$90:	; £temporary1348 = int_to_int input (Signed_Char -> Signed_Int)
x4117:	mov al, [bp + 12]	; 3: -118 70 12
x4120:	and ax, 255	; 3: 37 -1 0
x4123:	cmp al, 0	; 2: 60 0
x4125:	jge scanString$91	; 2: 125 4
x4127:	neg al	; 2: -10 -40
x4129:	neg ax	; 2: -9 -40

scanString$91:	; if £temporary1348 == -1 goto 101
x4131:	cmp ax, -1	; 3: -125 -8 -1
x4134:	je scanString$101	; 2: 116 34

scanString$92:	; if input == 10 goto 101
x4136:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x4140:	je scanString$101	; 2: 116 28

scanString$93:	; call header integral zero 0 stack zero 0

scanString$94:	; call function noellipse-noellipse scanChar
x4142:	mov word [bp + 15], scanString$95	; 5: -57 70 15 60 16
x4147:	mov [bp + 17], bp	; 3: -119 110 17
x4150:	add bp, 15	; 3: -125 -59 15
x4153:	jmp scanChar	; 3: -23 -37 -3

scanString$95:	; post call

scanString$96:	; £temporary1353 = return_value

scanString$97:	; input = £temporary1353
x4156:	mov [bp + 12], bl	; 3: -120 94 12

scanString$98:	; found = 1
x4159:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$99:	; ++g_inChars
x4164:	inc word [g_inChars]	; 4: -1 6 0 14

scanString$100:	; goto 83
x4168:	jmp scanString$83	; 2: -21 -89

scanString$101:	; ++g_inChars
x4170:	inc word [g_inChars]	; 4: -1 6 0 14

scanString$102:	; goto 126
x4174:	jmp scanString$126	; 2: -21 110

scanString$103:	; £temporary1356 = precision
x4176:	mov ax, [bp + 8]	; 3: -117 70 8

scanString$104:	; --precision
x4179:	dec word [bp + 8]	; 3: -1 78 8

scanString$105:	; if £temporary1356 <= 0 goto 124
x4182:	cmp ax, 0	; 3: -125 -8 0
x4185:	jle scanString$124	; 2: 126 89

scanString$106:	; call header integral zero 0 stack zero 0

scanString$107:	; £temporary1358 = int_to_int input (Signed_Char -> Signed_Int)
x4187:	mov al, [bp + 12]	; 3: -118 70 12
x4190:	and ax, 255	; 3: 37 -1 0
x4193:	cmp al, 0	; 2: 60 0
x4195:	jge scanString$108	; 2: 125 4
x4197:	neg al	; 2: -10 -40
x4199:	neg ax	; 2: -9 -40

scanString$108:	; parameter £temporary1358, offset 6
x4201:	mov [bp + 21], ax	; 3: -119 70 21

scanString$109:	; call function noellipse-noellipse isspace
x4204:	mov word [bp + 15], scanString$110	; 5: -57 70 15 122 16
x4209:	mov [bp + 17], bp	; 3: -119 110 17
x4212:	add bp, 15	; 3: -125 -59 15
x4215:	nop	; 1: -112
x4216:	jmp isspace	; 2: -21 89

scanString$110:	; post call

scanString$111:	; £temporary1359 = return_value

scanString$112:	; if £temporary1359 != 0 goto 124
x4218:	cmp bx, 0	; 3: -125 -5 0
x4221:	jne scanString$124	; 2: 117 53

scanString$113:	; £temporary1362 = int_to_int input (Signed_Char -> Signed_Int)
x4223:	mov al, [bp + 12]	; 3: -118 70 12
x4226:	and ax, 255	; 3: 37 -1 0
x4229:	cmp al, 0	; 2: 60 0
x4231:	jge scanString$114	; 2: 125 4
x4233:	neg al	; 2: -10 -40
x4235:	neg ax	; 2: -9 -40

scanString$114:	; if £temporary1362 == -1 goto 124
x4237:	cmp ax, -1	; 3: -125 -8 -1
x4240:	je scanString$124	; 2: 116 34

scanString$115:	; if input == 10 goto 124
x4242:	cmp byte [bp + 12], 10	; 4: -128 126 12 10
x4246:	je scanString$124	; 2: 116 28

scanString$116:	; call header integral zero 0 stack zero 0

scanString$117:	; call function noellipse-noellipse scanChar
x4248:	mov word [bp + 15], scanString$118	; 5: -57 70 15 -90 16
x4253:	mov [bp + 17], bp	; 3: -119 110 17
x4256:	add bp, 15	; 3: -125 -59 15
x4259:	jmp scanChar	; 3: -23 113 -3

scanString$118:	; post call

scanString$119:	; £temporary1368 = return_value

scanString$120:	; input = £temporary1368
x4262:	mov [bp + 12], bl	; 3: -120 94 12

scanString$121:	; found = 1
x4265:	mov word [bp + 13], 1	; 5: -57 70 13 1 0

scanString$122:	; ++g_inChars
x4270:	inc word [g_inChars]	; 4: -1 6 0 14

scanString$123:	; goto 103
x4274:	jmp scanString$103	; 2: -21 -100

scanString$124:	; if precision <= 0 goto 126
x4276:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4280:	jle scanString$126	; 2: 126 4

scanString$125:	; ++g_inChars
x4282:	inc word [g_inChars]	; 4: -1 6 0 14

scanString$126:	; if found == 0 goto 128
x4286:	cmp word [bp + 13], 0	; 4: -125 126 13 0
x4290:	je scanString$128	; 2: 116 4

scanString$127:	; ++g_inCount
x4292:	inc word [g_inCount]	; 4: -1 6 -2 13

scanString$128:	; return
x4296:	mov ax, [bp]	; 3: -117 70 0
x4299:	mov di, [bp + 4]	; 3: -117 126 4
x4302:	mov bp, [bp + 2]	; 3: -117 110 2
x4305:	jmp ax	; 2: -1 -32

scanString$129:	; function end scanString

isspace:	; if c == 32 goto 6
x4307:	cmp word [bp + 6], 32	; 4: -125 126 6 32
x4311:	je isspace$6	; 2: 116 30

isspace$1:	; if c == 12 goto 6
x4313:	cmp word [bp + 6], 12	; 4: -125 126 6 12
x4317:	je isspace$6	; 2: 116 24

isspace$2:	; if c == 10 goto 6
x4319:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x4323:	je isspace$6	; 2: 116 18

isspace$3:	; if c == 13 goto 6
x4325:	cmp word [bp + 6], 13	; 4: -125 126 6 13
x4329:	je isspace$6	; 2: 116 12

isspace$4:	; if c == 9 goto 6
x4331:	cmp word [bp + 6], 9	; 4: -125 126 6 9
x4335:	je isspace$6	; 2: 116 6

isspace$5:	; if c != 11 goto 8
x4337:	cmp word [bp + 6], 11	; 4: -125 126 6 11
x4341:	jne isspace$8	; 2: 117 5

isspace$6:	; £temporary462 = 1
x4343:	mov bx, 1	; 3: -69 1 0

isspace$7:	; goto 9
x4346:	jmp isspace$9	; 2: -21 3

isspace$8:	; £temporary462 = 0
x4348:	mov bx, 0	; 3: -69 0 0

isspace$9:	; return_value = £temporary462

isspace$10:	; return
x4351:	mov ax, [bp]	; 3: -117 70 0
x4354:	mov di, [bp + 4]	; 3: -117 126 4
x4357:	mov bp, [bp + 2]	; 3: -117 110 2
x4360:	jmp ax	; 2: -1 -32

isspace$11:	; function end isspace

scanLongInt:	; longValue = 0
x4362:	mov dword [bp + 8], 0	; 8: 102 -57 70 8 0 0 0 0

scanLongInt$1:	; minus = 0
x4370:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanLongInt$2:	; found = 0
x4375:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

scanLongInt$3:	; call header integral zero 0 stack zero 0

scanLongInt$4:	; call function noellipse-noellipse scanChar
x4380:	mov word [bp + 16], scanLongInt$5	; 5: -57 70 16 42 17
x4385:	mov [bp + 18], bp	; 3: -119 110 18
x4388:	add bp, 16	; 3: -125 -59 16
x4391:	jmp scanChar	; 3: -23 -19 -4

scanLongInt$5:	; post call

scanLongInt$6:	; £temporary1431 = return_value

scanLongInt$7:	; input = £temporary1431
x4394:	mov [bp + 16], bl	; 3: -120 94 16

scanLongInt$8:	; call header integral zero 0 stack zero 0

scanLongInt$9:	; £temporary1432 = int_to_int input (Signed_Char -> Signed_Int)
x4397:	mov al, [bp + 16]	; 3: -118 70 16
x4400:	and ax, 255	; 3: 37 -1 0
x4403:	cmp al, 0	; 2: 60 0
x4405:	jge scanLongInt$10	; 2: 125 4
x4407:	neg al	; 2: -10 -40
x4409:	neg ax	; 2: -9 -40

scanLongInt$10:	; parameter £temporary1432, offset 6
x4411:	mov [bp + 23], ax	; 3: -119 70 23

scanLongInt$11:	; call function noellipse-noellipse isspace
x4414:	mov word [bp + 17], scanLongInt$12	; 5: -57 70 17 76 17
x4419:	mov [bp + 19], bp	; 3: -119 110 19
x4422:	add bp, 17	; 3: -125 -59 17
x4425:	nop	; 1: -112
x4426:	jmp isspace	; 2: -21 -121

scanLongInt$12:	; post call

scanLongInt$13:	; £temporary1433 = return_value

scanLongInt$14:	; if £temporary1433 == 0 goto 21
x4428:	cmp bx, 0	; 3: -125 -5 0
x4431:	je scanLongInt$21	; 2: 116 19

scanLongInt$15:	; call header integral zero 0 stack zero 0

scanLongInt$16:	; call function noellipse-noellipse scanChar
x4433:	mov word [bp + 17], scanLongInt$17	; 5: -57 70 17 95 17
x4438:	mov [bp + 19], bp	; 3: -119 110 19
x4441:	add bp, 17	; 3: -125 -59 17
x4444:	jmp scanChar	; 3: -23 -72 -4

scanLongInt$17:	; post call

scanLongInt$18:	; £temporary1434 = return_value

scanLongInt$19:	; input = £temporary1434
x4447:	mov [bp + 16], bl	; 3: -120 94 16

scanLongInt$20:	; goto 8
x4450:	jmp scanLongInt$8	; 2: -21 -55

scanLongInt$21:	; if input != 43 goto 28
x4452:	cmp byte [bp + 16], 43	; 4: -128 126 16 43
x4456:	jne scanLongInt$28	; 2: 117 19

scanLongInt$22:	; call header integral zero 0 stack zero 0

scanLongInt$23:	; call function noellipse-noellipse scanChar
x4458:	mov word [bp + 17], scanLongInt$24	; 5: -57 70 17 120 17
x4463:	mov [bp + 19], bp	; 3: -119 110 19
x4466:	add bp, 17	; 3: -125 -59 17
x4469:	jmp scanChar	; 3: -23 -97 -4

scanLongInt$24:	; post call

scanLongInt$25:	; £temporary1437 = return_value

scanLongInt$26:	; input = £temporary1437
x4472:	mov [bp + 16], bl	; 3: -120 94 16

scanLongInt$27:	; goto 35
x4475:	jmp scanLongInt$35	; 2: -21 28

scanLongInt$28:	; if input != 45 goto 35
x4477:	cmp byte [bp + 16], 45	; 4: -128 126 16 45
x4481:	jne scanLongInt$35	; 2: 117 22

scanLongInt$29:	; minus = 1
x4483:	mov word [bp + 12], 1	; 5: -57 70 12 1 0

scanLongInt$30:	; call header integral zero 0 stack zero 0

scanLongInt$31:	; call function noellipse-noellipse scanChar
x4488:	mov word [bp + 17], scanLongInt$32	; 5: -57 70 17 -106 17
x4493:	mov [bp + 19], bp	; 3: -119 110 19
x4496:	add bp, 17	; 3: -125 -59 17
x4499:	jmp scanChar	; 3: -23 -127 -4

scanLongInt$32:	; post call

scanLongInt$33:	; £temporary1439 = return_value

scanLongInt$34:	; input = £temporary1439
x4502:	mov [bp + 16], bl	; 3: -120 94 16

scanLongInt$35:	; if base != 0 goto 59
x4505:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x4509:	jne scanLongInt$59	; 2: 117 95

scanLongInt$36:	; if input != 48 goto 58
x4511:	cmp byte [bp + 16], 48	; 4: -128 126 16 48
x4515:	jne scanLongInt$58	; 2: 117 84

scanLongInt$37:	; call header integral zero 0 stack zero 0

scanLongInt$38:	; call function noellipse-noellipse scanChar
x4517:	mov word [bp + 17], scanLongInt$39	; 5: -57 70 17 -77 17
x4522:	mov [bp + 19], bp	; 3: -119 110 19
x4525:	add bp, 17	; 3: -125 -59 17
x4528:	jmp scanChar	; 3: -23 100 -4

scanLongInt$39:	; post call

scanLongInt$40:	; £temporary1442 = return_value

scanLongInt$41:	; input = £temporary1442
x4531:	mov [bp + 16], bl	; 3: -120 94 16

scanLongInt$42:	; call header integral zero 0 stack zero 0

scanLongInt$43:	; £temporary1443 = int_to_int input (Signed_Char -> Signed_Int)
x4534:	mov al, [bp + 16]	; 3: -118 70 16
x4537:	and ax, 255	; 3: 37 -1 0
x4540:	cmp al, 0	; 2: 60 0
x4542:	jge scanLongInt$44	; 2: 125 4
x4544:	neg al	; 2: -10 -40
x4546:	neg ax	; 2: -9 -40

scanLongInt$44:	; parameter £temporary1443, offset 6
x4548:	mov [bp + 23], ax	; 3: -119 70 23

scanLongInt$45:	; call function noellipse-noellipse tolower
x4551:	mov word [bp + 17], scanLongInt$46	; 5: -57 70 17 -43 17
x4556:	mov [bp + 19], bp	; 3: -119 110 19
x4559:	add bp, 17	; 3: -125 -59 17
x4562:	jmp tolower	; 3: -23 -22 0

scanLongInt$46:	; post call

scanLongInt$47:	; £temporary1444 = return_value

scanLongInt$48:	; if £temporary1444 != 120 goto 56
x4565:	cmp bx, 120	; 3: -125 -5 120
x4568:	jne scanLongInt$56	; 2: 117 24

scanLongInt$49:	; base = 16
x4570:	mov word [bp + 6], 16	; 5: -57 70 6 16 0

scanLongInt$50:	; call header integral zero 0 stack zero 0

scanLongInt$51:	; call function noellipse-noellipse scanChar
x4575:	mov word [bp + 17], scanLongInt$52	; 5: -57 70 17 -19 17
x4580:	mov [bp + 19], bp	; 3: -119 110 19
x4583:	add bp, 17	; 3: -125 -59 17
x4586:	jmp scanChar	; 3: -23 42 -4

scanLongInt$52:	; post call

scanLongInt$53:	; £temporary1446 = return_value

scanLongInt$54:	; input = £temporary1446
x4589:	mov [bp + 16], bl	; 3: -120 94 16

scanLongInt$55:	; goto 59
x4592:	jmp scanLongInt$59	; 2: -21 12

scanLongInt$56:	; base = 8
x4594:	mov word [bp + 6], 8	; 5: -57 70 6 8 0

scanLongInt$57:	; goto 59
x4599:	jmp scanLongInt$59	; 2: -21 5

scanLongInt$58:	; base = 10
x4601:	mov word [bp + 6], 10	; 5: -57 70 6 10 0

scanLongInt$59:	; call header integral zero 0 stack zero 0

scanLongInt$60:	; parameter input, offset 6
x4606:	mov al, [bp + 16]	; 3: -118 70 16
x4609:	mov [bp + 23], al	; 3: -120 70 23

scanLongInt$61:	; parameter base, offset 7
x4612:	mov ax, [bp + 6]	; 3: -117 70 6
x4615:	mov [bp + 24], ax	; 3: -119 70 24

scanLongInt$62:	; call function noellipse-noellipse isDigitInBase
x4618:	mov word [bp + 17], scanLongInt$63	; 5: -57 70 17 24 18
x4623:	mov [bp + 19], bp	; 3: -119 110 19
x4626:	add bp, 17	; 3: -125 -59 17
x4629:	jmp @23$isDigitInBase	; 3: -23 69 5

scanLongInt$63:	; post call

scanLongInt$64:	; £temporary1447 = return_value

scanLongInt$65:	; if £temporary1447 == 0 goto 82
x4632:	cmp bx, 0	; 3: -125 -5 0
x4635:	je scanLongInt$82	; 2: 116 100

scanLongInt$66:	; £temporary1448 = int_to_int base (Signed_Int -> Signed_Long_Int)
x4637:	mov bx, [bp + 6]	; 3: -117 94 6
x4640:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x4647:	cmp bx, 0	; 3: -125 -5 0
x4650:	jge scanLongInt$67	; 2: 125 5
x4652:	neg bx	; 2: -9 -37
x4654:	neg ebx	; 3: 102 -9 -37

scanLongInt$67:	; longValue = longValue * £temporary1448
x4657:	mov eax, [bp + 8]	; 4: 102 -117 70 8
x4661:	xor edx, edx	; 3: 102 49 -46
x4664:	imul ebx	; 3: 102 -9 -21
x4667:	mov [bp + 8], eax	; 4: 102 -119 70 8

scanLongInt$68:	; call header integral zero 0 stack zero 0

scanLongInt$69:	; parameter input, offset 6
x4671:	mov al, [bp + 16]	; 3: -118 70 16
x4674:	mov [bp + 23], al	; 3: -120 70 23

scanLongInt$70:	; call function noellipse-noellipse digitToValue
x4677:	mov word [bp + 17], scanLongInt$71	; 5: -57 70 17 83 18
x4682:	mov [bp + 19], bp	; 3: -119 110 19
x4685:	add bp, 17	; 3: -125 -59 17
x4688:	jmp @24$digitToValue	; 3: -23 -80 6

scanLongInt$71:	; post call

scanLongInt$72:	; £temporary1450 = return_value

scanLongInt$73:	; £temporary1451 = int_to_int £temporary1450 (Signed_Int -> Signed_Long_Int)
x4691:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0
x4698:	cmp bx, 0	; 3: -125 -5 0
x4701:	jge scanLongInt$74	; 2: 125 5
x4703:	neg bx	; 2: -9 -37
x4705:	neg ebx	; 3: 102 -9 -37

scanLongInt$74:	; longValue = longValue + £temporary1451
x4708:	add [bp + 8], ebx	; 4: 102 1 94 8

scanLongInt$75:	; call header integral zero 0 stack zero 0

scanLongInt$76:	; call function noellipse-noellipse scanChar
x4712:	mov word [bp + 17], scanLongInt$77	; 5: -57 70 17 118 18
x4717:	mov [bp + 19], bp	; 3: -119 110 19
x4720:	add bp, 17	; 3: -125 -59 17
x4723:	jmp scanChar	; 3: -23 -95 -5

scanLongInt$77:	; post call

scanLongInt$78:	; £temporary1453 = return_value

scanLongInt$79:	; input = £temporary1453
x4726:	mov [bp + 16], bl	; 3: -120 94 16

scanLongInt$80:	; found = 1
x4729:	mov word [bp + 14], 1	; 5: -57 70 14 1 0

scanLongInt$81:	; goto 59
x4734:	jmp scanLongInt$59	; 3: -23 125 -1

scanLongInt$82:	; if minus == 0 goto 85
x4737:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x4741:	je scanLongInt$85	; 2: 116 11

scanLongInt$83:	; £temporary1455 = -longValue
x4743:	mov eax, [bp + 8]	; 4: 102 -117 70 8
x4747:	neg eax	; 3: 102 -9 -40

scanLongInt$84:	; longValue = £temporary1455
x4750:	mov [bp + 8], eax	; 4: 102 -119 70 8

scanLongInt$85:	; if found == 0 goto 87
x4754:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x4758:	je scanLongInt$87	; 2: 116 4

scanLongInt$86:	; ++g_inCount
x4760:	inc word [g_inCount]	; 4: -1 6 -2 13

scanLongInt$87:	; call header integral zero 0 stack zero 0

scanLongInt$88:	; parameter input, offset 6
x4764:	mov al, [bp + 16]	; 3: -118 70 16
x4767:	mov [bp + 23], al	; 3: -120 70 23

scanLongInt$89:	; call function noellipse-noellipse unscanChar
x4770:	mov word [bp + 17], scanLongInt$90	; 5: -57 70 17 -80 18
x4775:	mov [bp + 19], bp	; 3: -119 110 19
x4778:	add bp, 17	; 3: -125 -59 17
x4781:	jmp unscanChar	; 3: -23 45 7

scanLongInt$90:	; post call

scanLongInt$91:	; return_value = longValue
x4784:	mov ebx, [bp + 8]	; 4: 102 -117 94 8

scanLongInt$92:	; return
x4788:	mov ax, [bp]	; 3: -117 70 0
x4791:	mov di, [bp + 4]	; 3: -117 126 4
x4794:	mov bp, [bp + 2]	; 3: -117 110 2
x4797:	jmp ax	; 2: -1 -32

scanLongInt$93:	; function end scanLongInt

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x4799:	mov ax, [bp + 6]	; 3: -117 70 6
x4802:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x4805:	mov word [bp + 8], tolower$3	; 5: -57 70 8 -45 18
x4810:	mov [bp + 10], bp	; 3: -119 110 10
x4813:	add bp, 8	; 3: -125 -59 8
x4816:	jmp isupper	; 3: -23 -115 0

tolower$3:	; post call

tolower$4:	; £temporary463 = return_value

tolower$5:	; if £temporary463 == 0 goto 31
x4819:	cmp bx, 0	; 3: -125 -5 0
x4822:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x4824:	mov word [bp + 8], tolower$8	; 5: -57 70 8 -26 18
x4829:	mov [bp + 10], bp	; 3: -119 110 10
x4832:	add bp, 8	; 3: -125 -59 8
x4835:	jmp localeconv	; 3: -23 -27 0

tolower$8:	; post call

tolower$9:	; £temporary464 = return_value

tolower$10:	; localeConvPtr = £temporary464
x4838:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x4841:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4845:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary466 -> localeConvPtr = *localeConvPtr, offset 12
x4847:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary466 -> localeConvPtr
x4850:	mov ax, [si + 12]	; 3: -117 68 12
x4853:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary467 -> localeConvPtr = *localeConvPtr, offset 14
x4856:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary467 -> localeConvPtr
x4859:	mov ax, [si + 14]	; 3: -117 68 14
x4862:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x4865:	mov ax, [bp + 12]	; 3: -117 70 12
x4868:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x4871:	mov ax, [bp + 6]	; 3: -117 70 6
x4874:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x4877:	mov word [bp + 14], tolower$20	; 5: -57 70 14 27 19
x4882:	mov [bp + 16], bp	; 3: -119 110 16
x4885:	add bp, 14	; 3: -125 -59 14
x4888:	jmp strchr	; 3: -23 -14 3

tolower$20:	; post call

tolower$21:	; £temporary468 = return_value

tolower$22:	; index = £temporary468 - upperCase
x4891:	sub bx, [bp + 12]	; 3: 43 94 12
x4894:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary471 = lowerCase + index
x4897:	mov si, [bp + 10]	; 3: -117 118 10
x4900:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary470 -> £temporary471 = *£temporary471

tolower$25:	; £temporary472 = int_to_int £temporary470 -> £temporary471 (Signed_Char -> Signed_Int)
x4903:	mov bl, [si]	; 2: -118 28
x4905:	and bx, 255	; 4: -127 -29 -1 0
x4909:	cmp bl, 0	; 3: -128 -5 0
x4912:	jge tolower$26	; 2: 125 4
x4914:	neg bl	; 2: -10 -37
x4916:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary472

tolower$27:	; return
x4918:	mov ax, [bp]	; 3: -117 70 0
x4921:	mov di, [bp + 4]	; 3: -117 126 4
x4924:	mov bp, [bp + 2]	; 3: -117 110 2
x4927:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary473 = c + 32
x4929:	mov bx, [bp + 6]	; 3: -117 94 6
x4932:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary473

tolower$30:	; return
x4935:	mov ax, [bp]	; 3: -117 70 0
x4938:	mov di, [bp + 4]	; 3: -117 126 4
x4941:	mov bp, [bp + 2]	; 3: -117 110 2
x4944:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x4946:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x4949:	mov ax, [bp]	; 3: -117 70 0
x4952:	mov di, [bp + 4]	; 3: -117 126 4
x4955:	mov bp, [bp + 2]	; 3: -117 110 2
x4958:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x4960:	mov word [bp + 8], isupper$2	; 5: -57 70 8 110 19
x4965:	mov [bp + 10], bp	; 3: -119 110 10
x4968:	add bp, 8	; 3: -125 -59 8
x4971:	nop	; 1: -112
x4972:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary383 = return_value

isupper$4:	; localeConvPtr = £temporary383
x4974:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x4977:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4981:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary385 -> localeConvPtr = *localeConvPtr, offset 14
x4983:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary385 -> localeConvPtr, offset 6
x4986:	mov ax, [si + 14]	; 3: -117 68 14
x4989:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x4992:	mov ax, [bp + 6]	; 3: -117 70 6
x4995:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x4998:	mov word [bp + 10], isupper$11	; 5: -57 70 10 -108 19
x5003:	mov [bp + 12], bp	; 3: -119 110 12
x5006:	add bp, 10	; 3: -125 -59 10
x5009:	jmp strchr	; 3: -23 121 3

isupper$11:	; post call

isupper$12:	; £temporary386 = return_value

isupper$13:	; if £temporary386 == 0 goto 16
x5012:	cmp bx, 0	; 3: -125 -5 0
x5015:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary388 = 1
x5017:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x5020:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary388 = 0
x5022:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary388

isupper$18:	; return
x5025:	mov ax, [bp]	; 3: -117 70 0
x5028:	mov di, [bp + 4]	; 3: -117 126 4
x5031:	mov bp, [bp + 2]	; 3: -117 110 2
x5034:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x5036:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x5040:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x5042:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x5046:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary392 = 1
x5048:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x5051:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary392 = 0
x5053:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary392

isupper$25:	; return
x5056:	mov ax, [bp]	; 3: -117 70 0
x5059:	mov di, [bp + 4]	; 3: -117 126 4
x5062:	mov bp, [bp + 2]	; 3: -117 110 2
x5065:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x5067:	cmp word [@15$g_currStructPtr], 0	; 5: -125 62 -23 19 0
x5072:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary516 -> g_currStructPtr = *g_currStructPtr, offset 2
x5074:	mov si, [@15$g_currStructPtr]	; 4: -117 54 -23 19

localeconv$2:	; £temporary520 = £temporary516 -> g_currStructPtr
x5078:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x5081:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary520 = 0
x5083:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary520

localeconv$6:	; return
x5086:	mov ax, [bp]	; 3: -117 70 0
x5089:	mov di, [bp + 4]	; 3: -117 126 4
x5092:	mov bp, [bp + 2]	; 3: -117 110 2
x5095:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@15$g_currStructPtr:
x5097:	dw @13$sArray	; 2: -21 19

@13$sArray:
x5099:	dw string_# ; 2: -9 19
x5101:	dw @12$en_US_utf8	; 2: -8 19
x5103:	dw string_C# ; 2: 8 23
x5105:	dw @12$en_US_utf8	; 2: -8 19
x5107:	dw string_US# ; 2: 10 23
x5109:	dw @12$en_US_utf8	; 2: -8 19

string_#:
x5111:	db 0	; 1: 0

@12$en_US_utf8:
x5112:	dw -5	; 2: -5 -1
x5114:	dw -4	; 2: -4 -1
x5116:	dw @8$enShortDayList ; 2: 10 20
x5118:	dw @9$enLongDayList ; 2: 52 20
x5120:	dw @10$enShortMonthList ; 2: 123 20
x5122:	dw @11$enLongMonthList ; 2: -61 20
x5124:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: 45 21
x5126:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: 72 21
x5128:	dw enMessageList ; 2: 99 21

@8$enShortDayList:
x5130:	dw string_Sun# ; 2: 24 20
x5132:	dw string_Mon# ; 2: 28 20
x5134:	dw string_Tue# ; 2: 32 20
x5136:	dw string_Wed# ; 2: 36 20
x5138:	dw string_Thu# ; 2: 40 20
x5140:	dw string_Fri# ; 2: 44 20
x5142:	dw string_Sat# ; 2: 48 20

string_Sun#:
x5144:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x5148:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x5152:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x5156:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x5160:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x5164:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x5168:	db "Sat", 0	; 4: 83 97 116 0

@9$enLongDayList:
x5172:	dw string_Sunday# ; 2: 66 20
x5174:	dw string_Monday# ; 2: 73 20
x5176:	dw string_Tuesday# ; 2: 80 20
x5178:	dw string_Wednesday# ; 2: 88 20
x5180:	dw string_Thursday# ; 2: 98 20
x5182:	dw string_Friday# ; 2: 107 20
x5184:	dw string_Saturday# ; 2: 114 20

string_Sunday#:
x5186:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x5193:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x5200:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x5208:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x5218:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x5227:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x5234:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@10$enShortMonthList:
x5243:	dw string_Jan# ; 2: -109 20
x5245:	dw string_Feb# ; 2: -105 20
x5247:	dw string_Mar# ; 2: -101 20
x5249:	dw string_Apr# ; 2: -97 20
x5251:	dw string_May# ; 2: -93 20
x5253:	dw string_Jun# ; 2: -89 20
x5255:	dw string_Jul# ; 2: -85 20
x5257:	dw string_Aug# ; 2: -81 20
x5259:	dw string_Sep# ; 2: -77 20
x5261:	dw string_Oct# ; 2: -73 20
x5263:	dw string_Nov# ; 2: -69 20
x5265:	dw string_Dec# ; 2: -65 20

string_Jan#:
x5267:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x5271:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x5275:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x5279:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x5283:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x5287:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x5291:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x5295:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x5299:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x5303:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x5307:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x5311:	db "Dec", 0	; 4: 68 101 99 0

@11$enLongMonthList:
x5315:	dw string_January# ; 2: -37 20
x5317:	dw string_February# ; 2: -29 20
x5319:	dw string_March# ; 2: -20 20
x5321:	dw string_April# ; 2: -14 20
x5323:	dw string_May# ; 2: -93 20
x5325:	dw string_June# ; 2: -8 20
x5327:	dw string_July# ; 2: -3 20
x5329:	dw string_August# ; 2: 2 21
x5331:	dw string_September# ; 2: 9 21
x5333:	dw string_October# ; 2: 19 21
x5335:	dw string_November# ; 2: 27 21
x5337:	dw string_December# ; 2: 36 21

string_January#:
x5339:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x5347:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x5356:	db "March", 0	; 6: 77 97 114 99 104 0

string_April#:
x5362:	db "April", 0	; 6: 65 112 114 105 108 0

string_June#:
x5368:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x5373:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x5378:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_September#:
x5385:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_October#:
x5395:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

string_November#:
x5403:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x5412:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x5421:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x5448:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

enMessageList:
x5475:	dw string_no20error# ; 2: -117 21
x5477:	dw string_function20number20invalid# ; 2: -108 21
x5479:	dw string_file20not20found# ; 2: -84 21
x5481:	dw string_path20not20found# ; 2: -69 21
x5483:	dw string_no20handle20available# ; 2: -54 21
x5485:	dw string_access20denied# ; 2: -34 21
x5487:	dw string_out20of20domain# ; 2: -20 21
x5489:	dw string_out20of20range# ; 2: -6 21
x5491:	dw string_invalid20multibyte20sequence# ; 2: 7 22
x5493:	dw string_error20while20opening# ; 2: 34 22
x5495:	dw string_error20while20flushing# ; 2: 54 22
x5497:	dw string_error20while20closing# ; 2: 75 22
x5499:	dw string_open20mode20invalid# ; 2: 95 22
x5501:	dw string_error20while20writing# ; 2: 113 22
x5503:	dw string_error20while20reading# ; 2: -123 22
x5505:	dw string_error20while20seeking# ; 2: -103 22
x5507:	dw string_error20while20telling# ; 2: -83 22
x5509:	dw string_error20while20sizing# ; 2: -63 22
x5511:	dw string_error20while20removing20file# ; 2: -44 22
x5513:	dw string_error20while20renaming20file# ; 2: -18 22

string_no20error#:
x5515:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x5524:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x5548:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x5563:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x5578:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x5598:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x5612:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x5626:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x5639:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x5666:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x5686:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x5707:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x5727:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x5745:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x5765:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x5785:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x5805:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x5825:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x5844:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x5870:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_C#:
x5896:	db "C", 0	; 2: 67 0

string_US#:
x5898:	db "US", 0	; 3: 85 83 0

strchr:	; £temporary3997 = int_to_int i (Signed_Int -> Signed_Char)
x5901:	mov ax, [bp + 8]	; 3: -117 70 8
x5904:	cmp ax, 0	; 3: -125 -8 0
x5907:	jge strchr$1	; 2: 125 4
x5909:	neg ax	; 2: -9 -40
x5911:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary3997
x5913:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x5916:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary3999 = text + index
x5921:	mov si, [bp + 6]	; 3: -117 118 6
x5924:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary3998 -> £temporary3999 = *£temporary3999

strchr$5:	; if £temporary3998 -> £temporary3999 == 0 goto 16
x5927:	cmp byte [si], 0	; 3: -128 60 0
x5930:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary4003 = text + index
x5932:	mov si, [bp + 6]	; 3: -117 118 6
x5935:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary4002 -> £temporary4003 = *£temporary4003

strchr$8:	; if £temporary4002 -> £temporary4003 != c goto 14
x5938:	mov al, [bp + 12]	; 3: -118 70 12
x5941:	cmp [si], al	; 2: 56 4
x5943:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary4006 = text + index
x5945:	mov bx, [bp + 6]	; 3: -117 94 6
x5948:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary4005 -> £temporary4006 = *£temporary4006

strchr$11:	; £temporary4007 = &£temporary4005 -> £temporary4006

strchr$12:	; return_value = £temporary4007

strchr$13:	; return
x5951:	mov ax, [bp]	; 3: -117 70 0
x5954:	mov di, [bp + 4]	; 3: -117 126 4
x5957:	mov bp, [bp + 2]	; 3: -117 110 2
x5960:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x5962:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x5965:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x5967:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x5970:	mov ax, [bp]	; 3: -117 70 0
x5973:	mov di, [bp + 4]	; 3: -117 126 4
x5976:	mov bp, [bp + 2]	; 3: -117 110 2
x5979:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

@23$isDigitInBase:	; call header integral zero 0 stack zero 0

@23$isDigitInBase$1:	; £temporary1379 = int_to_int c (Signed_Char -> Signed_Int)
x5981:	mov al, [bp + 6]	; 3: -118 70 6
x5984:	and ax, 255	; 3: 37 -1 0
x5987:	cmp al, 0	; 2: 60 0
x5989:	jge @23$isDigitInBase$2	; 2: 125 4
x5991:	neg al	; 2: -10 -40
x5993:	neg ax	; 2: -9 -40

@23$isDigitInBase$2:	; parameter £temporary1379, offset 6
x5995:	mov [bp + 15], ax	; 3: -119 70 15

@23$isDigitInBase$3:	; call function noellipse-noellipse isdigit
x5998:	mov word [bp + 9], @23$isDigitInBase$4	; 5: -57 70 9 124 23
x6003:	mov [bp + 11], bp	; 3: -119 110 11
x6006:	add bp, 9	; 3: -125 -59 9
x6009:	jmp isdigit	; 3: -23 -3 0

@23$isDigitInBase$4:	; post call

@23$isDigitInBase$5:	; £temporary1380 = return_value

@23$isDigitInBase$6:	; if £temporary1380 == 0 goto 17
x6012:	cmp bx, 0	; 3: -125 -5 0
x6015:	je @23$isDigitInBase$17	; 2: 116 52

@23$isDigitInBase$7:	; £temporary1381 = c - 48
x6017:	mov al, [bp + 6]	; 3: -118 70 6
x6020:	sub al, 48	; 2: 44 48

@23$isDigitInBase$8:	; £temporary1382 = int_to_int £temporary1381 (Signed_Char -> Signed_Int)
x6022:	and ax, 255	; 3: 37 -1 0
x6025:	cmp al, 0	; 2: 60 0
x6027:	jge @23$isDigitInBase$9	; 2: 125 4
x6029:	neg al	; 2: -10 -40
x6031:	neg ax	; 2: -9 -40

@23$isDigitInBase$9:	; value = £temporary1382
x6033:	mov [bp + 9], ax	; 3: -119 70 9

@23$isDigitInBase$10:	; if value < 0 goto 14
x6036:	cmp word [bp + 9], 0	; 4: -125 126 9 0
x6040:	jl @23$isDigitInBase$14	; 2: 124 13

@23$isDigitInBase$11:	; if value >= base goto 14
x6042:	mov ax, [bp + 7]	; 3: -117 70 7
x6045:	cmp [bp + 9], ax	; 3: 57 70 9
x6048:	jge @23$isDigitInBase$14	; 2: 125 5

@23$isDigitInBase$12:	; £temporary1386 = 1
x6050:	mov bx, 1	; 3: -69 1 0

@23$isDigitInBase$13:	; goto 15
x6053:	jmp @23$isDigitInBase$15	; 2: -21 3

@23$isDigitInBase$14:	; £temporary1386 = 0
x6055:	mov bx, 0	; 3: -69 0 0

@23$isDigitInBase$15:	; return_value = £temporary1386

@23$isDigitInBase$16:	; return
x6058:	mov ax, [bp]	; 3: -117 70 0
x6061:	mov di, [bp + 4]	; 3: -117 126 4
x6064:	mov bp, [bp + 2]	; 3: -117 110 2
x6067:	jmp ax	; 2: -1 -32

@23$isDigitInBase$17:	; call header integral zero 0 stack zero 0

@23$isDigitInBase$18:	; £temporary1387 = int_to_int c (Signed_Char -> Signed_Int)
x6069:	mov al, [bp + 6]	; 3: -118 70 6
x6072:	and ax, 255	; 3: 37 -1 0
x6075:	cmp al, 0	; 2: 60 0
x6077:	jge @23$isDigitInBase$19	; 2: 125 4
x6079:	neg al	; 2: -10 -40
x6081:	neg ax	; 2: -9 -40

@23$isDigitInBase$19:	; parameter £temporary1387, offset 6
x6083:	mov [bp + 15], ax	; 3: -119 70 15

@23$isDigitInBase$20:	; call function noellipse-noellipse islower
x6086:	mov word [bp + 9], @23$isDigitInBase$21	; 5: -57 70 9 -44 23
x6091:	mov [bp + 11], bp	; 3: -119 110 11
x6094:	add bp, 9	; 3: -125 -59 9
x6097:	jmp islower	; 3: -23 -60 0

@23$isDigitInBase$21:	; post call

@23$isDigitInBase$22:	; £temporary1388 = return_value

@23$isDigitInBase$23:	; if £temporary1388 == 0 goto 34
x6100:	cmp bx, 0	; 3: -125 -5 0
x6103:	je @23$isDigitInBase$34	; 2: 116 55

@23$isDigitInBase$24:	; £temporary1389 = c - 97
x6105:	mov al, [bp + 6]	; 3: -118 70 6
x6108:	sub al, 97	; 2: 44 97

@23$isDigitInBase$25:	; £temporary1390 = int_to_int £temporary1389 (Signed_Char -> Signed_Int)
x6110:	and ax, 255	; 3: 37 -1 0
x6113:	cmp al, 0	; 2: 60 0
x6115:	jge @23$isDigitInBase$26	; 2: 125 4
x6117:	neg al	; 2: -10 -40
x6119:	neg ax	; 2: -9 -40

@23$isDigitInBase$26:	; value = £temporary1390 + 10
x6121:	add ax, 10	; 3: -125 -64 10
x6124:	mov [bp + 9], ax	; 3: -119 70 9

@23$isDigitInBase$27:	; if value < 0 goto 31
x6127:	cmp word [bp + 9], 0	; 4: -125 126 9 0
x6131:	jl @23$isDigitInBase$31	; 2: 124 13

@23$isDigitInBase$28:	; if value >= base goto 31
x6133:	mov ax, [bp + 7]	; 3: -117 70 7
x6136:	cmp [bp + 9], ax	; 3: 57 70 9
x6139:	jge @23$isDigitInBase$31	; 2: 125 5

@23$isDigitInBase$29:	; £temporary1395 = 1
x6141:	mov bx, 1	; 3: -69 1 0

@23$isDigitInBase$30:	; goto 32
x6144:	jmp @23$isDigitInBase$32	; 2: -21 3

@23$isDigitInBase$31:	; £temporary1395 = 0
x6146:	mov bx, 0	; 3: -69 0 0

@23$isDigitInBase$32:	; return_value = £temporary1395

@23$isDigitInBase$33:	; return
x6149:	mov ax, [bp]	; 3: -117 70 0
x6152:	mov di, [bp + 4]	; 3: -117 126 4
x6155:	mov bp, [bp + 2]	; 3: -117 110 2
x6158:	jmp ax	; 2: -1 -32

@23$isDigitInBase$34:	; call header integral zero 0 stack zero 0

@23$isDigitInBase$35:	; £temporary1396 = int_to_int c (Signed_Char -> Signed_Int)
x6160:	mov al, [bp + 6]	; 3: -118 70 6
x6163:	and ax, 255	; 3: 37 -1 0
x6166:	cmp al, 0	; 2: 60 0
x6168:	jge @23$isDigitInBase$36	; 2: 125 4
x6170:	neg al	; 2: -10 -40
x6172:	neg ax	; 2: -9 -40

@23$isDigitInBase$36:	; parameter £temporary1396, offset 6
x6174:	mov [bp + 15], ax	; 3: -119 70 15

@23$isDigitInBase$37:	; call function noellipse-noellipse isupper
x6177:	mov word [bp + 9], @23$isDigitInBase$38	; 5: -57 70 9 47 24
x6182:	mov [bp + 11], bp	; 3: -119 110 11
x6185:	add bp, 9	; 3: -125 -59 9
x6188:	jmp isupper	; 3: -23 49 -5

@23$isDigitInBase$38:	; post call

@23$isDigitInBase$39:	; £temporary1397 = return_value

@23$isDigitInBase$40:	; if £temporary1397 == 0 goto 51
x6191:	cmp bx, 0	; 3: -125 -5 0
x6194:	je @23$isDigitInBase$51	; 2: 116 55

@23$isDigitInBase$41:	; £temporary1398 = c - 65
x6196:	mov al, [bp + 6]	; 3: -118 70 6
x6199:	sub al, 65	; 2: 44 65

@23$isDigitInBase$42:	; £temporary1399 = int_to_int £temporary1398 (Signed_Char -> Signed_Int)
x6201:	and ax, 255	; 3: 37 -1 0
x6204:	cmp al, 0	; 2: 60 0
x6206:	jge @23$isDigitInBase$43	; 2: 125 4
x6208:	neg al	; 2: -10 -40
x6210:	neg ax	; 2: -9 -40

@23$isDigitInBase$43:	; value = £temporary1399 + 10
x6212:	add ax, 10	; 3: -125 -64 10
x6215:	mov [bp + 9], ax	; 3: -119 70 9

@23$isDigitInBase$44:	; if value < 0 goto 48
x6218:	cmp word [bp + 9], 0	; 4: -125 126 9 0
x6222:	jl @23$isDigitInBase$48	; 2: 124 13

@23$isDigitInBase$45:	; if value >= base goto 48
x6224:	mov ax, [bp + 7]	; 3: -117 70 7
x6227:	cmp [bp + 9], ax	; 3: 57 70 9
x6230:	jge @23$isDigitInBase$48	; 2: 125 5

@23$isDigitInBase$46:	; £temporary1404 = 1
x6232:	mov bx, 1	; 3: -69 1 0

@23$isDigitInBase$47:	; goto 49
x6235:	jmp @23$isDigitInBase$49	; 2: -21 3

@23$isDigitInBase$48:	; £temporary1404 = 0
x6237:	mov bx, 0	; 3: -69 0 0

@23$isDigitInBase$49:	; return_value = £temporary1404

@23$isDigitInBase$50:	; return
x6240:	mov ax, [bp]	; 3: -117 70 0
x6243:	mov di, [bp + 4]	; 3: -117 126 4
x6246:	mov bp, [bp + 2]	; 3: -117 110 2
x6249:	jmp ax	; 2: -1 -32

@23$isDigitInBase$51:	; return_value = 0
x6251:	mov bx, 0	; 3: -69 0 0

@23$isDigitInBase$52:	; return
x6254:	mov ax, [bp]	; 3: -117 70 0
x6257:	mov di, [bp + 4]	; 3: -117 126 4
x6260:	mov bp, [bp + 2]	; 3: -117 110 2
x6263:	jmp ax	; 2: -1 -32

@23$isDigitInBase$53:	; function end isDigitInBase

isdigit:	; if c < 48 goto 4
x6265:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x6269:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x6271:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x6275:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary406 = 1
x6277:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x6280:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary406 = 0
x6282:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary406

isdigit$6:	; return
x6285:	mov ax, [bp]	; 3: -117 70 0
x6288:	mov di, [bp + 4]	; 3: -117 126 4
x6291:	mov bp, [bp + 2]	; 3: -117 110 2
x6294:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

islower:	; call header integral zero 0 stack zero 0

islower$1:	; call function noellipse-noellipse localeconv
x6296:	mov word [bp + 8], islower$2	; 5: -57 70 8 -90 24
x6301:	mov [bp + 10], bp	; 3: -119 110 10
x6304:	add bp, 8	; 3: -125 -59 8
x6307:	jmp localeconv	; 3: -23 37 -5

islower$2:	; post call

islower$3:	; £temporary371 = return_value

islower$4:	; localeConvPtr = £temporary371
x6310:	mov [bp + 8], bx	; 3: -119 94 8

islower$5:	; if localeConvPtr == 0 goto 19
x6313:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6317:	je islower$19	; 2: 116 53

islower$6:	; call header integral zero 0 stack zero 0

islower$7:	; £temporary373 -> localeConvPtr = *localeConvPtr, offset 12
x6319:	mov si, [bp + 8]	; 3: -117 118 8

islower$8:	; parameter £temporary373 -> localeConvPtr, offset 6
x6322:	mov ax, [si + 12]	; 3: -117 68 12
x6325:	mov [bp + 16], ax	; 3: -119 70 16

islower$9:	; parameter c, offset 8
x6328:	mov ax, [bp + 6]	; 3: -117 70 6
x6331:	mov [bp + 18], ax	; 3: -119 70 18

islower$10:	; call function noellipse-noellipse strchr
x6334:	mov word [bp + 10], islower$11	; 5: -57 70 10 -52 24
x6339:	mov [bp + 12], bp	; 3: -119 110 12
x6342:	add bp, 10	; 3: -125 -59 10
x6345:	jmp strchr	; 3: -23 65 -2

islower$11:	; post call

islower$12:	; £temporary374 = return_value

islower$13:	; if £temporary374 == 0 goto 16
x6348:	cmp bx, 0	; 3: -125 -5 0
x6351:	je islower$16	; 2: 116 5

islower$14:	; £temporary376 = 1
x6353:	mov bx, 1	; 3: -69 1 0

islower$15:	; goto 17
x6356:	jmp islower$17	; 2: -21 3

islower$16:	; £temporary376 = 0
x6358:	mov bx, 0	; 3: -69 0 0

islower$17:	; return_value = £temporary376

islower$18:	; return
x6361:	mov ax, [bp]	; 3: -117 70 0
x6364:	mov di, [bp + 4]	; 3: -117 126 4
x6367:	mov bp, [bp + 2]	; 3: -117 110 2
x6370:	jmp ax	; 2: -1 -32

islower$19:	; if c < 97 goto 23
x6372:	cmp word [bp + 6], 97	; 4: -125 126 6 97
x6376:	jl islower$23	; 2: 124 11

islower$20:	; if c > 122 goto 23
x6378:	cmp word [bp + 6], 122	; 4: -125 126 6 122
x6382:	jg islower$23	; 2: 127 5

islower$21:	; £temporary380 = 1
x6384:	mov bx, 1	; 3: -69 1 0

islower$22:	; goto 24
x6387:	jmp islower$24	; 2: -21 3

islower$23:	; £temporary380 = 0
x6389:	mov bx, 0	; 3: -69 0 0

islower$24:	; return_value = £temporary380

islower$25:	; return
x6392:	mov ax, [bp]	; 3: -117 70 0
x6395:	mov di, [bp + 4]	; 3: -117 126 4
x6398:	mov bp, [bp + 2]	; 3: -117 110 2
x6401:	jmp ax	; 2: -1 -32

islower$26:	; function end islower

@24$digitToValue:	; call header integral zero 0 stack zero 0

@24$digitToValue$1:	; £temporary1411 = int_to_int c (Signed_Char -> Signed_Int)
x6403:	mov al, [bp + 6]	; 3: -118 70 6
x6406:	and ax, 255	; 3: 37 -1 0
x6409:	cmp al, 0	; 2: 60 0
x6411:	jge @24$digitToValue$2	; 2: 125 4
x6413:	neg al	; 2: -10 -40
x6415:	neg ax	; 2: -9 -40

@24$digitToValue$2:	; parameter £temporary1411, offset 6
x6417:	mov [bp + 13], ax	; 3: -119 70 13

@24$digitToValue$3:	; call function noellipse-noellipse isdigit
x6420:	mov word [bp + 7], @24$digitToValue$4	; 5: -57 70 7 34 25
x6425:	mov [bp + 9], bp	; 3: -119 110 9
x6428:	add bp, 7	; 3: -125 -59 7
x6431:	jmp isdigit	; 3: -23 87 -1

@24$digitToValue$4:	; post call

@24$digitToValue$5:	; £temporary1412 = return_value

@24$digitToValue$6:	; if £temporary1412 == 0 goto 11
x6434:	cmp bx, 0	; 3: -125 -5 0
x6437:	je @24$digitToValue$11	; 2: 116 30

@24$digitToValue$7:	; £temporary1413 = c - 48
x6439:	mov bl, [bp + 6]	; 3: -118 94 6
x6442:	sub bl, 48	; 3: -128 -21 48

@24$digitToValue$8:	; £temporary1414 = int_to_int £temporary1413 (Signed_Char -> Signed_Int)
x6445:	and bx, 255	; 4: -127 -29 -1 0
x6449:	cmp bl, 0	; 3: -128 -5 0
x6452:	jge @24$digitToValue$9	; 2: 125 4
x6454:	neg bl	; 2: -10 -37
x6456:	neg bx	; 2: -9 -37

@24$digitToValue$9:	; return_value = £temporary1414

@24$digitToValue$10:	; return
x6458:	mov ax, [bp]	; 3: -117 70 0
x6461:	mov di, [bp + 4]	; 3: -117 126 4
x6464:	mov bp, [bp + 2]	; 3: -117 110 2
x6467:	jmp ax	; 2: -1 -32

@24$digitToValue$11:	; call header integral zero 0 stack zero 0

@24$digitToValue$12:	; £temporary1415 = int_to_int c (Signed_Char -> Signed_Int)
x6469:	mov al, [bp + 6]	; 3: -118 70 6
x6472:	and ax, 255	; 3: 37 -1 0
x6475:	cmp al, 0	; 2: 60 0
x6477:	jge @24$digitToValue$13	; 2: 125 4
x6479:	neg al	; 2: -10 -40
x6481:	neg ax	; 2: -9 -40

@24$digitToValue$13:	; parameter £temporary1415, offset 6
x6483:	mov [bp + 13], ax	; 3: -119 70 13

@24$digitToValue$14:	; call function noellipse-noellipse islower
x6486:	mov word [bp + 7], @24$digitToValue$15	; 5: -57 70 7 100 25
x6491:	mov [bp + 9], bp	; 3: -119 110 9
x6494:	add bp, 7	; 3: -125 -59 7
x6497:	jmp islower	; 3: -23 52 -1

@24$digitToValue$15:	; post call

@24$digitToValue$16:	; £temporary1416 = return_value

@24$digitToValue$17:	; if £temporary1416 == 0 goto 23
x6500:	cmp bx, 0	; 3: -125 -5 0
x6503:	je @24$digitToValue$23	; 2: 116 33

@24$digitToValue$18:	; £temporary1417 = c - 97
x6505:	mov bl, [bp + 6]	; 3: -118 94 6
x6508:	sub bl, 97	; 3: -128 -21 97

@24$digitToValue$19:	; £temporary1418 = int_to_int £temporary1417 (Signed_Char -> Signed_Int)
x6511:	and bx, 255	; 4: -127 -29 -1 0
x6515:	cmp bl, 0	; 3: -128 -5 0
x6518:	jge @24$digitToValue$20	; 2: 125 4
x6520:	neg bl	; 2: -10 -37
x6522:	neg bx	; 2: -9 -37

@24$digitToValue$20:	; £temporary1419 = £temporary1418 + 10
x6524:	add bx, 10	; 3: -125 -61 10

@24$digitToValue$21:	; return_value = £temporary1419

@24$digitToValue$22:	; return
x6527:	mov ax, [bp]	; 3: -117 70 0
x6530:	mov di, [bp + 4]	; 3: -117 126 4
x6533:	mov bp, [bp + 2]	; 3: -117 110 2
x6536:	jmp ax	; 2: -1 -32

@24$digitToValue$23:	; call header integral zero 0 stack zero 0

@24$digitToValue$24:	; £temporary1420 = int_to_int c (Signed_Char -> Signed_Int)
x6538:	mov al, [bp + 6]	; 3: -118 70 6
x6541:	and ax, 255	; 3: 37 -1 0
x6544:	cmp al, 0	; 2: 60 0
x6546:	jge @24$digitToValue$25	; 2: 125 4
x6548:	neg al	; 2: -10 -40
x6550:	neg ax	; 2: -9 -40

@24$digitToValue$25:	; parameter £temporary1420, offset 6
x6552:	mov [bp + 13], ax	; 3: -119 70 13

@24$digitToValue$26:	; call function noellipse-noellipse isupper
x6555:	mov word [bp + 7], @24$digitToValue$27	; 5: -57 70 7 -87 25
x6560:	mov [bp + 9], bp	; 3: -119 110 9
x6563:	add bp, 7	; 3: -125 -59 7
x6566:	jmp isupper	; 3: -23 -73 -7

@24$digitToValue$27:	; post call

@24$digitToValue$28:	; £temporary1421 = return_value

@24$digitToValue$29:	; if £temporary1421 == 0 goto 35
x6569:	cmp bx, 0	; 3: -125 -5 0
x6572:	je @24$digitToValue$35	; 2: 116 33

@24$digitToValue$30:	; £temporary1422 = c - 65
x6574:	mov bl, [bp + 6]	; 3: -118 94 6
x6577:	sub bl, 65	; 3: -128 -21 65

@24$digitToValue$31:	; £temporary1423 = int_to_int £temporary1422 (Signed_Char -> Signed_Int)
x6580:	and bx, 255	; 4: -127 -29 -1 0
x6584:	cmp bl, 0	; 3: -128 -5 0
x6587:	jge @24$digitToValue$32	; 2: 125 4
x6589:	neg bl	; 2: -10 -37
x6591:	neg bx	; 2: -9 -37

@24$digitToValue$32:	; £temporary1424 = £temporary1423 + 10
x6593:	add bx, 10	; 3: -125 -61 10

@24$digitToValue$33:	; return_value = £temporary1424

@24$digitToValue$34:	; return
x6596:	mov ax, [bp]	; 3: -117 70 0
x6599:	mov di, [bp + 4]	; 3: -117 126 4
x6602:	mov bp, [bp + 2]	; 3: -117 110 2
x6605:	jmp ax	; 2: -1 -32

@24$digitToValue$35:	; return_value = 0
x6607:	mov bx, 0	; 3: -69 0 0

@24$digitToValue$36:	; return
x6610:	mov ax, [bp]	; 3: -117 70 0
x6613:	mov di, [bp + 4]	; 3: -117 126 4
x6616:	mov bp, [bp + 2]	; 3: -117 110 2
x6619:	jmp ax	; 2: -1 -32

@24$digitToValue$37:	; function end digitToValue

unscanChar:	; case g_inStatus == 0 goto 4
x6621:	mov ax, [g_inStatus]	; 3: -95 -36 8
x6624:	cmp ax, 0	; 3: -125 -8 0
x6627:	je unscanChar$4	; 2: 116 7

unscanChar$1:	; case g_inStatus == 1 goto 6
x6629:	cmp ax, 1	; 3: -125 -8 1
x6632:	je unscanChar$6	; 2: 116 8

unscanChar$2:	; case end g_inStatus

unscanChar$3:	; goto 7
x6634:	jmp unscanChar$7	; 2: -21 10

unscanChar$4:	; --g_inChars
x6636:	dec word [g_inChars]	; 4: -1 14 0 14

unscanChar$5:	; goto 7
x6640:	jmp unscanChar$7	; 2: -21 4

unscanChar$6:	; --g_inChars
x6642:	dec word [g_inChars]	; 4: -1 14 0 14

unscanChar$7:	; return
x6646:	mov ax, [bp]	; 3: -117 70 0
x6649:	mov di, [bp + 4]	; 3: -117 126 4
x6652:	mov bp, [bp + 2]	; 3: -117 110 2
x6655:	jmp ax	; 2: -1 -32

unscanChar$8:	; function end unscanChar

scanUnsignedLongInt:	; unsignedLongValue = 0
x6657:	mov dword [bp + 8], 0	; 8: 102 -57 70 8 0 0 0 0

scanUnsignedLongInt$1:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$2:	; call function noellipse-noellipse scanChar
x6665:	mov word [bp + 16], scanUnsignedLongInt$3	; 5: -57 70 16 23 26
x6670:	mov [bp + 18], bp	; 3: -119 110 18
x6673:	add bp, 16	; 3: -125 -59 16
x6676:	jmp scanChar	; 3: -23 0 -12

scanUnsignedLongInt$3:	; post call

scanUnsignedLongInt$4:	; £temporary1466 = return_value

scanUnsignedLongInt$5:	; input = £temporary1466
x6679:	mov [bp + 16], bl	; 3: -120 94 16

scanUnsignedLongInt$6:	; found = 1
x6682:	mov word [bp + 17], 1	; 5: -57 70 17 1 0

scanUnsignedLongInt$7:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$8:	; £temporary1467 = int_to_int input (Signed_Char -> Signed_Int)
x6687:	mov al, [bp + 16]	; 3: -118 70 16
x6690:	and ax, 255	; 3: 37 -1 0
x6693:	cmp al, 0	; 2: 60 0
x6695:	jge scanUnsignedLongInt$9	; 2: 125 4
x6697:	neg al	; 2: -10 -40
x6699:	neg ax	; 2: -9 -40

scanUnsignedLongInt$9:	; parameter £temporary1467, offset 6
x6701:	mov [bp + 25], ax	; 3: -119 70 25

scanUnsignedLongInt$10:	; call function noellipse-noellipse isspace
x6704:	mov word [bp + 19], scanUnsignedLongInt$11	; 5: -57 70 19 62 26
x6709:	mov [bp + 21], bp	; 3: -119 110 21
x6712:	add bp, 19	; 3: -125 -59 19
x6715:	jmp isspace	; 3: -23 -107 -10

scanUnsignedLongInt$11:	; post call

scanUnsignedLongInt$12:	; £temporary1468 = return_value

scanUnsignedLongInt$13:	; if £temporary1468 == 0 goto 20
x6718:	cmp bx, 0	; 3: -125 -5 0
x6721:	je scanUnsignedLongInt$20	; 2: 116 19

scanUnsignedLongInt$14:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$15:	; call function noellipse-noellipse scanChar
x6723:	mov word [bp + 19], scanUnsignedLongInt$16	; 5: -57 70 19 81 26
x6728:	mov [bp + 21], bp	; 3: -119 110 21
x6731:	add bp, 19	; 3: -125 -59 19
x6734:	jmp scanChar	; 3: -23 -58 -13

scanUnsignedLongInt$16:	; post call

scanUnsignedLongInt$17:	; £temporary1469 = return_value

scanUnsignedLongInt$18:	; input = £temporary1469
x6737:	mov [bp + 16], bl	; 3: -120 94 16

scanUnsignedLongInt$19:	; goto 7
x6740:	jmp scanUnsignedLongInt$7	; 2: -21 -55

scanUnsignedLongInt$20:	; if input != 43 goto 26
x6742:	cmp byte [bp + 16], 43	; 4: -128 126 16 43
x6746:	jne scanUnsignedLongInt$26	; 2: 117 17

scanUnsignedLongInt$21:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$22:	; call function noellipse-noellipse scanChar
x6748:	mov word [bp + 19], scanUnsignedLongInt$23	; 5: -57 70 19 106 26
x6753:	mov [bp + 21], bp	; 3: -119 110 21
x6756:	add bp, 19	; 3: -125 -59 19
x6759:	jmp scanChar	; 3: -23 -83 -13

scanUnsignedLongInt$23:	; post call

scanUnsignedLongInt$24:	; £temporary1472 = return_value

scanUnsignedLongInt$25:	; input = £temporary1472
x6762:	mov [bp + 16], bl	; 3: -120 94 16

scanUnsignedLongInt$26:	; if base != 0 goto 50
x6765:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x6769:	jne scanUnsignedLongInt$50	; 2: 117 95

scanUnsignedLongInt$27:	; if input != 48 goto 49
x6771:	cmp byte [bp + 16], 48	; 4: -128 126 16 48
x6775:	jne scanUnsignedLongInt$49	; 2: 117 84

scanUnsignedLongInt$28:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$29:	; call function noellipse-noellipse scanChar
x6777:	mov word [bp + 19], scanUnsignedLongInt$30	; 5: -57 70 19 -121 26
x6782:	mov [bp + 21], bp	; 3: -119 110 21
x6785:	add bp, 19	; 3: -125 -59 19
x6788:	jmp scanChar	; 3: -23 -112 -13

scanUnsignedLongInt$30:	; post call

scanUnsignedLongInt$31:	; £temporary1475 = return_value

scanUnsignedLongInt$32:	; input = £temporary1475
x6791:	mov [bp + 16], bl	; 3: -120 94 16

scanUnsignedLongInt$33:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$34:	; £temporary1476 = int_to_int input (Signed_Char -> Signed_Int)
x6794:	mov al, [bp + 16]	; 3: -118 70 16
x6797:	and ax, 255	; 3: 37 -1 0
x6800:	cmp al, 0	; 2: 60 0
x6802:	jge scanUnsignedLongInt$35	; 2: 125 4
x6804:	neg al	; 2: -10 -40
x6806:	neg ax	; 2: -9 -40

scanUnsignedLongInt$35:	; parameter £temporary1476, offset 6
x6808:	mov [bp + 25], ax	; 3: -119 70 25

scanUnsignedLongInt$36:	; call function noellipse-noellipse tolower
x6811:	mov word [bp + 19], scanUnsignedLongInt$37	; 5: -57 70 19 -87 26
x6816:	mov [bp + 21], bp	; 3: -119 110 21
x6819:	add bp, 19	; 3: -125 -59 19
x6822:	jmp tolower	; 3: -23 22 -8

scanUnsignedLongInt$37:	; post call

scanUnsignedLongInt$38:	; £temporary1477 = return_value

scanUnsignedLongInt$39:	; if £temporary1477 != 120 goto 47
x6825:	cmp bx, 120	; 3: -125 -5 120
x6828:	jne scanUnsignedLongInt$47	; 2: 117 24

scanUnsignedLongInt$40:	; base = 16
x6830:	mov word [bp + 6], 16	; 5: -57 70 6 16 0

scanUnsignedLongInt$41:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$42:	; call function noellipse-noellipse scanChar
x6835:	mov word [bp + 19], scanUnsignedLongInt$43	; 5: -57 70 19 -63 26
x6840:	mov [bp + 21], bp	; 3: -119 110 21
x6843:	add bp, 19	; 3: -125 -59 19
x6846:	jmp scanChar	; 3: -23 86 -13

scanUnsignedLongInt$43:	; post call

scanUnsignedLongInt$44:	; £temporary1479 = return_value

scanUnsignedLongInt$45:	; input = £temporary1479
x6849:	mov [bp + 16], bl	; 3: -120 94 16

scanUnsignedLongInt$46:	; goto 50
x6852:	jmp scanUnsignedLongInt$50	; 2: -21 12

scanUnsignedLongInt$47:	; base = 8
x6854:	mov word [bp + 6], 8	; 5: -57 70 6 8 0

scanUnsignedLongInt$48:	; goto 50
x6859:	jmp scanUnsignedLongInt$50	; 2: -21 5

scanUnsignedLongInt$49:	; base = 10
x6861:	mov word [bp + 6], 10	; 5: -57 70 6 10 0

scanUnsignedLongInt$50:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$51:	; parameter input, offset 6
x6866:	mov al, [bp + 16]	; 3: -118 70 16
x6869:	mov [bp + 25], al	; 3: -120 70 25

scanUnsignedLongInt$52:	; parameter base, offset 7
x6872:	mov ax, [bp + 6]	; 3: -117 70 6
x6875:	mov [bp + 26], ax	; 3: -119 70 26

scanUnsignedLongInt$53:	; call function noellipse-noellipse isDigitInBase
x6878:	mov word [bp + 19], scanUnsignedLongInt$54	; 5: -57 70 19 -20 26
x6883:	mov [bp + 21], bp	; 3: -119 110 21
x6886:	add bp, 19	; 3: -125 -59 19
x6889:	jmp @23$isDigitInBase	; 3: -23 113 -4

scanUnsignedLongInt$54:	; post call

scanUnsignedLongInt$55:	; £temporary1480 = return_value

scanUnsignedLongInt$56:	; if £temporary1480 == 0 goto 73
x6892:	cmp bx, 0	; 3: -125 -5 0
x6895:	je scanUnsignedLongInt$73	; 2: 116 79

scanUnsignedLongInt$57:	; £temporary1481 = int_to_int base (Signed_Int -> Unsigned_Long_Int)
x6897:	mov bx, [bp + 6]	; 3: -117 94 6
x6900:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0

scanUnsignedLongInt$58:	; unsignedLongValue = unsignedLongValue * £temporary1481
x6907:	mov eax, [bp + 8]	; 4: 102 -117 70 8
x6911:	xor edx, edx	; 3: 102 49 -46
x6914:	mul ebx	; 3: 102 -9 -29
x6917:	mov [bp + 8], eax	; 4: 102 -119 70 8

scanUnsignedLongInt$59:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$60:	; parameter input, offset 6
x6921:	mov al, [bp + 16]	; 3: -118 70 16
x6924:	mov [bp + 25], al	; 3: -120 70 25

scanUnsignedLongInt$61:	; call function noellipse-noellipse digitToValue
x6927:	mov word [bp + 19], scanUnsignedLongInt$62	; 5: -57 70 19 29 27
x6932:	mov [bp + 21], bp	; 3: -119 110 21
x6935:	add bp, 19	; 3: -125 -59 19
x6938:	jmp @24$digitToValue	; 3: -23 -26 -3

scanUnsignedLongInt$62:	; post call

scanUnsignedLongInt$63:	; £temporary1483 = return_value

scanUnsignedLongInt$64:	; £temporary1484 = int_to_int £temporary1483 (Signed_Int -> Unsigned_Long_Int)
x6941:	and ebx, 65535	; 7: 102 -127 -29 -1 -1 0 0

scanUnsignedLongInt$65:	; unsignedLongValue = unsignedLongValue + £temporary1484
x6948:	add [bp + 8], ebx	; 4: 102 1 94 8

scanUnsignedLongInt$66:	; found = 1
x6952:	mov word [bp + 17], 1	; 5: -57 70 17 1 0

scanUnsignedLongInt$67:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$68:	; call function noellipse-noellipse scanChar
x6957:	mov word [bp + 19], scanUnsignedLongInt$69	; 5: -57 70 19 59 27
x6962:	mov [bp + 21], bp	; 3: -119 110 21
x6965:	add bp, 19	; 3: -125 -59 19
x6968:	jmp scanChar	; 3: -23 -36 -14

scanUnsignedLongInt$69:	; post call

scanUnsignedLongInt$70:	; £temporary1486 = return_value

scanUnsignedLongInt$71:	; input = £temporary1486
x6971:	mov [bp + 16], bl	; 3: -120 94 16

scanUnsignedLongInt$72:	; goto 50
x6974:	jmp scanUnsignedLongInt$50	; 2: -21 -110

scanUnsignedLongInt$73:	; if found == 0 goto 75
x6976:	cmp word [bp + 17], 0	; 4: -125 126 17 0
x6980:	je scanUnsignedLongInt$75	; 2: 116 4

scanUnsignedLongInt$74:	; ++g_inCount
x6982:	inc word [g_inCount]	; 4: -1 6 -2 13

scanUnsignedLongInt$75:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$76:	; parameter input, offset 6
x6986:	mov al, [bp + 16]	; 3: -118 70 16
x6989:	mov [bp + 25], al	; 3: -120 70 25

scanUnsignedLongInt$77:	; call function noellipse-noellipse unscanChar
x6992:	mov word [bp + 19], scanUnsignedLongInt$78	; 5: -57 70 19 94 27
x6997:	mov [bp + 21], bp	; 3: -119 110 21
x7000:	add bp, 19	; 3: -125 -59 19
x7003:	jmp unscanChar	; 3: -23 127 -2

scanUnsignedLongInt$78:	; post call

scanUnsignedLongInt$79:	; return_value = unsignedLongValue
x7006:	mov ebx, [bp + 8]	; 4: 102 -117 94 8

scanUnsignedLongInt$80:	; return
x7010:	mov ax, [bp]	; 3: -117 70 0
x7013:	mov di, [bp + 4]	; 3: -117 126 4
x7016:	mov bp, [bp + 2]	; 3: -117 110 2
x7019:	jmp ax	; 2: -1 -32

scanUnsignedLongInt$81:	; function end scanUnsignedLongInt

scanLongDouble:	; minus = 0
x7021:	mov word [bp + 6], 0	; 5: -57 70 6 0 0

scanLongDouble$1:	; found = 0
x7026:	mov word [bp + 8], 0	; 5: -57 70 8 0 0

scanLongDouble$2:	; push float 0.0
x7031:	fldz	; 2: -39 -18

scanLongDouble$3:	; pop float value
x7033:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$4:	; push float 1.0
x7036:	fld1	; 2: -39 -24

scanLongDouble$5:	; pop float factor
x7038:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$6:	; call header integral zero 0 stack zero 0

scanLongDouble$7:	; call function noellipse-noellipse scanChar
x7041:	mov word [bp + 26], scanLongDouble$8	; 5: -57 70 26 -113 27
x7046:	mov [bp + 28], bp	; 3: -119 110 28
x7049:	add bp, 26	; 3: -125 -59 26
x7052:	jmp scanChar	; 3: -23 -120 -14

scanLongDouble$8:	; post call

scanLongDouble$9:	; £temporary1497 = return_value

scanLongDouble$10:	; input = £temporary1497
x7055:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$11:	; call header integral zero 0 stack zero 0

scanLongDouble$12:	; £temporary1498 = int_to_int input (Signed_Char -> Signed_Int)
x7058:	mov al, [bp + 26]	; 3: -118 70 26
x7061:	and ax, 255	; 3: 37 -1 0
x7064:	cmp al, 0	; 2: 60 0
x7066:	jge scanLongDouble$13	; 2: 125 4
x7068:	neg al	; 2: -10 -40
x7070:	neg ax	; 2: -9 -40

scanLongDouble$13:	; parameter £temporary1498, offset 6
x7072:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$14:	; call function noellipse-noellipse isspace
x7075:	mov word [bp + 27], scanLongDouble$15	; 5: -57 70 27 -79 27
x7080:	mov [bp + 29], bp	; 3: -119 110 29
x7083:	add bp, 27	; 3: -125 -59 27
x7086:	jmp isspace	; 3: -23 34 -11

scanLongDouble$15:	; post call

scanLongDouble$16:	; £temporary1499 = return_value

scanLongDouble$17:	; if £temporary1499 == 0 goto 24
x7089:	cmp bx, 0	; 3: -125 -5 0
x7092:	je scanLongDouble$24	; 2: 116 19

scanLongDouble$18:	; call header integral zero 0 stack zero 0

scanLongDouble$19:	; call function noellipse-noellipse scanChar
x7094:	mov word [bp + 27], scanLongDouble$20	; 5: -57 70 27 -60 27
x7099:	mov [bp + 29], bp	; 3: -119 110 29
x7102:	add bp, 27	; 3: -125 -59 27
x7105:	jmp scanChar	; 3: -23 83 -14

scanLongDouble$20:	; post call

scanLongDouble$21:	; £temporary1500 = return_value

scanLongDouble$22:	; input = £temporary1500
x7108:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$23:	; goto 11
x7111:	jmp scanLongDouble$11	; 2: -21 -55

scanLongDouble$24:	; if input != 43 goto 31
x7113:	cmp byte [bp + 26], 43	; 4: -128 126 26 43
x7117:	jne scanLongDouble$31	; 2: 117 19

scanLongDouble$25:	; call header integral zero 0 stack zero 0

scanLongDouble$26:	; call function noellipse-noellipse scanChar
x7119:	mov word [bp + 27], scanLongDouble$27	; 5: -57 70 27 -35 27
x7124:	mov [bp + 29], bp	; 3: -119 110 29
x7127:	add bp, 27	; 3: -125 -59 27
x7130:	jmp scanChar	; 3: -23 58 -14

scanLongDouble$27:	; post call

scanLongDouble$28:	; £temporary1503 = return_value

scanLongDouble$29:	; input = £temporary1503
x7133:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$30:	; goto 38
x7136:	jmp scanLongDouble$38	; 2: -21 28

scanLongDouble$31:	; if input != 45 goto 38
x7138:	cmp byte [bp + 26], 45	; 4: -128 126 26 45
x7142:	jne scanLongDouble$38	; 2: 117 22

scanLongDouble$32:	; minus = 1
x7144:	mov word [bp + 6], 1	; 5: -57 70 6 1 0

scanLongDouble$33:	; call header integral zero 0 stack zero 0

scanLongDouble$34:	; call function noellipse-noellipse scanChar
x7149:	mov word [bp + 27], scanLongDouble$35	; 5: -57 70 27 -5 27
x7154:	mov [bp + 29], bp	; 3: -119 110 29
x7157:	add bp, 27	; 3: -125 -59 27
x7160:	jmp scanChar	; 3: -23 28 -14

scanLongDouble$35:	; post call

scanLongDouble$36:	; £temporary1505 = return_value

scanLongDouble$37:	; input = £temporary1505
x7163:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$38:	; call header integral zero 0 stack zero 0

scanLongDouble$39:	; £temporary1506 = int_to_int input (Signed_Char -> Signed_Int)
x7166:	mov al, [bp + 26]	; 3: -118 70 26
x7169:	and ax, 255	; 3: 37 -1 0
x7172:	cmp al, 0	; 2: 60 0
x7174:	jge scanLongDouble$40	; 2: 125 4
x7176:	neg al	; 2: -10 -40
x7178:	neg ax	; 2: -9 -40

scanLongDouble$40:	; parameter £temporary1506, offset 6
x7180:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$41:	; call function noellipse-noellipse isdigit
x7183:	mov word [bp + 27], scanLongDouble$42	; 5: -57 70 27 29 28
x7188:	mov [bp + 29], bp	; 3: -119 110 29
x7191:	add bp, 27	; 3: -125 -59 27
x7194:	jmp isdigit	; 3: -23 92 -4

scanLongDouble$42:	; post call

scanLongDouble$43:	; £temporary1507 = return_value

scanLongDouble$44:	; if £temporary1507 == 0 goto 60
x7197:	cmp bx, 0	; 3: -125 -5 0
x7200:	je scanLongDouble$60	; 2: 116 61

scanLongDouble$45:	; push float 10.0
x7202:	fld qword [float8$10.0#]	; 4: -35 6 -112 29

scanLongDouble$46:	; push float value
x7206:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$47:	; £temporary1508 = 10.0 * value
x7209:	fmul	; 2: -34 -55

scanLongDouble$48:	; £temporary1509 = input - 48
x7211:	mov al, [bp + 26]	; 3: -118 70 26
x7214:	sub al, 48	; 2: 44 48

scanLongDouble$49:	; £temporary1511 = int_to_int £temporary1509 (Signed_Char -> Signed_Int)
x7216:	and ax, 255	; 3: 37 -1 0
x7219:	cmp al, 0	; 2: 60 0
x7221:	jge scanLongDouble$50	; 2: 125 4
x7223:	neg al	; 2: -10 -40
x7225:	neg ax	; 2: -9 -40

scanLongDouble$50:	; £temporary1510 = int_to_float £temporary1511 (Signed_Int -> Long_Double)
x7227:	mov [container2bytes#], ax	; 3: -93 -104 29
x7230:	fild word [container2bytes#]	; 4: -33 6 -104 29

scanLongDouble$51:	; £temporary1512 = £temporary1508 + £temporary1510
x7234:	fadd	; 2: -34 -63

scanLongDouble$52:	; pop float value
x7236:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$53:	; call header integral zero 0 stack zero 0

scanLongDouble$54:	; call function noellipse-noellipse scanChar
x7239:	mov word [bp + 27], scanLongDouble$55	; 5: -57 70 27 85 28
x7244:	mov [bp + 29], bp	; 3: -119 110 29
x7247:	add bp, 27	; 3: -125 -59 27
x7250:	jmp scanChar	; 3: -23 -62 -15

scanLongDouble$55:	; post call

scanLongDouble$56:	; £temporary1513 = return_value

scanLongDouble$57:	; input = £temporary1513
x7253:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$58:	; found = 1
x7256:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$59:	; goto 38
x7261:	jmp scanLongDouble$38	; 2: -21 -97

scanLongDouble$60:	; if input != 46 goto 92
x7263:	cmp byte [bp + 26], 46	; 4: -128 126 26 46
x7267:	jne scanLongDouble$92	; 2: 117 125

scanLongDouble$61:	; call header integral zero 0 stack zero 0

scanLongDouble$62:	; call function noellipse-noellipse scanChar
x7269:	mov word [bp + 27], scanLongDouble$63	; 5: -57 70 27 115 28
x7274:	mov [bp + 29], bp	; 3: -119 110 29
x7277:	add bp, 27	; 3: -125 -59 27
x7280:	jmp scanChar	; 3: -23 -92 -15

scanLongDouble$63:	; post call

scanLongDouble$64:	; £temporary1516 = return_value

scanLongDouble$65:	; input = £temporary1516
x7283:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$66:	; call header integral zero 0 stack zero 0

scanLongDouble$67:	; £temporary1517 = int_to_int input (Signed_Char -> Signed_Int)
x7286:	mov al, [bp + 26]	; 3: -118 70 26
x7289:	and ax, 255	; 3: 37 -1 0
x7292:	cmp al, 0	; 2: 60 0
x7294:	jge scanLongDouble$68	; 2: 125 4
x7296:	neg al	; 2: -10 -40
x7298:	neg ax	; 2: -9 -40

scanLongDouble$68:	; parameter £temporary1517, offset 6
x7300:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$69:	; call function noellipse-noellipse isdigit
x7303:	mov word [bp + 27], scanLongDouble$70	; 5: -57 70 27 -107 28
x7308:	mov [bp + 29], bp	; 3: -119 110 29
x7311:	add bp, 27	; 3: -125 -59 27
x7314:	jmp isdigit	; 3: -23 -28 -5

scanLongDouble$70:	; post call

scanLongDouble$71:	; £temporary1518 = return_value

scanLongDouble$72:	; if £temporary1518 == 0 goto 92
x7317:	cmp bx, 0	; 3: -125 -5 0
x7320:	je scanLongDouble$92	; 2: 116 72

scanLongDouble$73:	; push float factor
x7322:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$74:	; push float 10.0
x7325:	fld qword [float8$10.0#]	; 4: -35 6 -112 29

scanLongDouble$75:	; £temporary1519 = factor / 10.0
x7329:	fdiv	; 2: -34 -7

scanLongDouble$76:	; pop float factor
x7331:	fstp qword [bp + 18]	; 3: -35 94 18

scanLongDouble$77:	; push float value
x7334:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$78:	; push float factor
x7337:	fld qword [bp + 18]	; 3: -35 70 18

scanLongDouble$79:	; £temporary1520 = input - 48
x7340:	mov al, [bp + 26]	; 3: -118 70 26
x7343:	sub al, 48	; 2: 44 48

scanLongDouble$80:	; £temporary1522 = int_to_int £temporary1520 (Signed_Char -> Signed_Int)
x7345:	and ax, 255	; 3: 37 -1 0
x7348:	cmp al, 0	; 2: 60 0
x7350:	jge scanLongDouble$81	; 2: 125 4
x7352:	neg al	; 2: -10 -40
x7354:	neg ax	; 2: -9 -40

scanLongDouble$81:	; £temporary1521 = int_to_float £temporary1522 (Signed_Int -> Long_Double)
x7356:	mov [container2bytes#], ax	; 3: -93 -104 29
x7359:	fild word [container2bytes#]	; 4: -33 6 -104 29

scanLongDouble$82:	; £temporary1523 = factor * £temporary1521
x7363:	fmul	; 2: -34 -55

scanLongDouble$83:	; £temporary1524 = value + £temporary1523
x7365:	fadd	; 2: -34 -63

scanLongDouble$84:	; pop float value
x7367:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$85:	; call header integral zero 0 stack zero 0

scanLongDouble$86:	; call function noellipse-noellipse scanChar
x7370:	mov word [bp + 27], scanLongDouble$87	; 5: -57 70 27 -40 28
x7375:	mov [bp + 29], bp	; 3: -119 110 29
x7378:	add bp, 27	; 3: -125 -59 27
x7381:	jmp scanChar	; 3: -23 63 -15

scanLongDouble$87:	; post call

scanLongDouble$88:	; £temporary1525 = return_value

scanLongDouble$89:	; input = £temporary1525
x7384:	mov [bp + 26], bl	; 3: -120 94 26

scanLongDouble$90:	; found = 1
x7387:	mov word [bp + 8], 1	; 5: -57 70 8 1 0

scanLongDouble$91:	; goto 66
x7392:	jmp scanLongDouble$66	; 2: -21 -108

scanLongDouble$92:	; call header integral zero 0 stack zero 0

scanLongDouble$93:	; £temporary1527 = int_to_int input (Signed_Char -> Signed_Int)
x7394:	mov al, [bp + 26]	; 3: -118 70 26
x7397:	and ax, 255	; 3: 37 -1 0
x7400:	cmp al, 0	; 2: 60 0
x7402:	jge scanLongDouble$94	; 2: 125 4
x7404:	neg al	; 2: -10 -40
x7406:	neg ax	; 2: -9 -40

scanLongDouble$94:	; parameter £temporary1527, offset 6
x7408:	mov [bp + 33], ax	; 3: -119 70 33

scanLongDouble$95:	; call function noellipse-noellipse tolower
x7411:	mov word [bp + 27], scanLongDouble$96	; 5: -57 70 27 1 29
x7416:	mov [bp + 29], bp	; 3: -119 110 29
x7419:	add bp, 27	; 3: -125 -59 27
x7422:	jmp tolower	; 3: -23 -66 -11

scanLongDouble$96:	; post call

scanLongDouble$97:	; £temporary1528 = return_value

scanLongDouble$98:	; if £temporary1528 != 101 goto 118
x7425:	cmp bx, 101	; 3: -125 -5 101
x7428:	jne scanLongDouble$118	; 2: 117 80

scanLongDouble$99:	; call header integral zero 0 stack zero 0

scanLongDouble$100:	; parameter 10, offset 6
x7430:	mov word [bp + 33], 10	; 5: -57 70 33 10 0

scanLongDouble$101:	; call function noellipse-noellipse scanLongInt
x7435:	mov word [bp + 27], scanLongDouble$102	; 5: -57 70 27 25 29
x7440:	mov [bp + 29], bp	; 3: -119 110 29
x7443:	add bp, 27	; 3: -125 -59 27
x7446:	jmp scanLongInt	; 3: -23 -15 -13

scanLongDouble$102:	; post call

scanLongDouble$103:	; £temporary1530 = return_value

scanLongDouble$104:	; £temporary1531 = int_to_float £temporary1530 (Signed_Long_Int -> Double)
x7449:	mov [container4bytes#], ebx	; 5: 102 -119 30 -102 29
x7454:	fild dword [container4bytes#]	; 4: -37 6 -102 29

scanLongDouble$105:	; pop float exponent
x7458:	fstp qword [bp + 27]	; 3: -35 94 27

scanLongDouble$106:	; push float value
x7461:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$107:	; call header integral zero 0 stack no zero 1
x7464:	fstp qword [bp + 35]	; 3: -35 94 35

scanLongDouble$108:	; push float 10.0
x7467:	fld qword [float8$10.0#]	; 4: -35 6 -112 29

scanLongDouble$109:	; parameter 10.0, offset 6
x7471:	fstp qword [bp + 49]	; 3: -35 94 49

scanLongDouble$110:	; push float exponent
x7474:	fld qword [bp + 27]	; 3: -35 70 27

scanLongDouble$111:	; parameter exponent, offset 14
x7477:	fstp qword [bp + 57]	; 3: -35 94 57

scanLongDouble$112:	; call function noellipse-noellipse pow
x7480:	mov word [bp + 43], scanLongDouble$113	; 5: -57 70 43 70 29
x7485:	mov [bp + 45], bp	; 3: -119 110 45
x7488:	add bp, 43	; 3: -125 -59 43
x7491:	nop	; 1: -112
x7492:	jmp pow	; 2: -21 88

scanLongDouble$113:	; post call
x7494:	fstp qword [bp + 43]	; 3: -35 94 43
x7497:	fld qword [bp + 35]	; 3: -35 70 35
x7500:	fld qword [bp + 43]	; 3: -35 70 43

scanLongDouble$114:	; £temporary1532 = return_value

scanLongDouble$115:	; £temporary1533 = value * £temporary1532
x7503:	fmul	; 2: -34 -55

scanLongDouble$116:	; pop float value
x7505:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$117:	; goto 122
x7508:	jmp scanLongDouble$122	; 2: -21 20

scanLongDouble$118:	; call header integral zero 0 stack zero 0

scanLongDouble$119:	; parameter input, offset 6
x7510:	mov al, [bp + 26]	; 3: -118 70 26
x7513:	mov [bp + 33], al	; 3: -120 70 33

scanLongDouble$120:	; call function noellipse-noellipse unscanChar
x7516:	mov word [bp + 27], scanLongDouble$121	; 5: -57 70 27 106 29
x7521:	mov [bp + 29], bp	; 3: -119 110 29
x7524:	add bp, 27	; 3: -125 -59 27
x7527:	jmp unscanChar	; 3: -23 115 -4

scanLongDouble$121:	; post call

scanLongDouble$122:	; if minus == 0 goto 126
x7530:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x7534:	je scanLongDouble$126	; 2: 116 8

scanLongDouble$123:	; push float value
x7536:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$124:	; £temporary1535 = -value
x7539:	fchs	; 2: -39 -32

scanLongDouble$125:	; pop float value
x7541:	fstp qword [bp + 10]	; 3: -35 94 10

scanLongDouble$126:	; if found == 0 goto 128
x7544:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x7548:	je scanLongDouble$128	; 2: 116 4

scanLongDouble$127:	; ++g_inCount
x7550:	inc word [g_inCount]	; 4: -1 6 -2 13

scanLongDouble$128:	; push float value
x7554:	fld qword [bp + 10]	; 3: -35 70 10

scanLongDouble$129:	; return_value = value

scanLongDouble$130:	; return
x7557:	mov ax, [bp]	; 3: -117 70 0
x7560:	mov di, [bp + 4]	; 3: -117 126 4
x7563:	mov bp, [bp + 2]	; 3: -117 110 2
x7566:	jmp ax	; 2: -1 -32

scanLongDouble$131:	; function end scanLongDouble

float8$10.0#:
x7568:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

container2bytes#:
x7576:	db 0, 0	; 2: 0 0

container4bytes#:
x7578:	db 0, 0, 0, 0	; 4: 0 0 0 0

pow:	; push float x
x7582:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x7585:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x7587:	fcompp	; 2: -34 -39
x7589:	fstsw ax	; 3: -101 -33 -32
x7592:	sahf	; 1: -98
x7593:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x7595:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x7598:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x7601:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x7604:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x7607:	mov word [bp + 30], pow$9	; 5: -57 70 30 -59 29
x7612:	mov [bp + 32], bp	; 3: -119 110 32
x7615:	add bp, 30	; 3: -125 -59 30
x7618:	jmp log	; 3: -23 -124 1

pow$9:	; post call
x7621:	fstp qword [bp + 30]	; 3: -35 94 30
x7624:	fld qword [bp + 22]	; 3: -35 70 22
x7627:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary554 = return_value

pow$11:	; £temporary555 = y * £temporary554
x7630:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary555, offset 6
x7632:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x7635:	mov word [bp + 22], pow$14	; 5: -57 70 22 -31 29
x7640:	mov [bp + 24], bp	; 3: -119 110 24
x7643:	add bp, 22	; 3: -125 -59 22
x7646:	jmp exp	; 3: -23 -70 2

pow$14:	; post call

pow$15:	; £temporary556 = return_value

pow$16:	; return_value = £temporary556

pow$17:	; return
x7649:	mov ax, [bp]	; 3: -117 70 0
x7652:	mov di, [bp + 4]	; 3: -117 126 4
x7655:	mov bp, [bp + 2]	; 3: -117 110 2
x7658:	jmp ax	; 2: -1 -32

pow$18:	; push float x
x7660:	fld qword [bp + 6]	; 3: -35 70 6

pow$19:	; push 0
x7663:	fldz	; 2: -39 -18

pow$20:	; if x != 0 goto 27
x7665:	fcompp	; 2: -34 -39
x7667:	fstsw ax	; 3: -101 -33 -32
x7670:	sahf	; 1: -98
x7671:	jne pow$27	; 2: 117 26

pow$21:	; push float y
x7673:	fld qword [bp + 14]	; 3: -35 70 14

pow$22:	; push 0
x7676:	fldz	; 2: -39 -18

pow$23:	; if y != 0 goto 27
x7678:	fcompp	; 2: -34 -39
x7680:	fstsw ax	; 3: -101 -33 -32
x7683:	sahf	; 1: -98
x7684:	jne pow$27	; 2: 117 13

pow$24:	; push 1
x7686:	fld1	; 2: -39 -24

pow$25:	; return_value = 1

pow$26:	; return
x7688:	mov ax, [bp]	; 3: -117 70 0
x7691:	mov di, [bp + 4]	; 3: -117 126 4
x7694:	mov bp, [bp + 2]	; 3: -117 110 2
x7697:	jmp ax	; 2: -1 -32

pow$27:	; push float x
x7699:	fld qword [bp + 6]	; 3: -35 70 6

pow$28:	; push 0
x7702:	fldz	; 2: -39 -18

pow$29:	; if x != 0 goto 36
x7704:	fcompp	; 2: -34 -39
x7706:	fstsw ax	; 3: -101 -33 -32
x7709:	sahf	; 1: -98
x7710:	jne pow$36	; 2: 117 26

pow$30:	; push float y
x7712:	fld qword [bp + 14]	; 3: -35 70 14

pow$31:	; push 0
x7715:	fldz	; 2: -39 -18

pow$32:	; if y <= 0 goto 36
x7717:	fcompp	; 2: -34 -39
x7719:	fstsw ax	; 3: -101 -33 -32
x7722:	sahf	; 1: -98
x7723:	jae pow$36	; 2: 115 13

pow$33:	; push 0
x7725:	fldz	; 2: -39 -18

pow$34:	; return_value = 0

pow$35:	; return
x7727:	mov ax, [bp]	; 3: -117 70 0
x7730:	mov di, [bp + 4]	; 3: -117 126 4
x7733:	mov bp, [bp + 2]	; 3: -117 110 2
x7736:	jmp ax	; 2: -1 -32

pow$36:	; push float x
x7738:	fld qword [bp + 6]	; 3: -35 70 6

pow$37:	; push 0
x7741:	fldz	; 2: -39 -18

pow$38:	; if x >= 0 goto 90
x7743:	fcompp	; 2: -34 -39
x7745:	fstsw ax	; 3: -101 -33 -32
x7748:	sahf	; 1: -98
x7749:	jbe pow$90	; 4: 15 -122 -25 0

pow$39:	; call header integral zero 0 stack zero 0

pow$40:	; push float y
x7753:	fld qword [bp + 14]	; 3: -35 70 14

pow$41:	; parameter y, offset 6
x7756:	fstp qword [bp + 28]	; 3: -35 94 28

pow$42:	; call function noellipse-noellipse floor
x7759:	mov word [bp + 22], pow$43	; 5: -57 70 22 93 30
x7764:	mov [bp + 24], bp	; 3: -119 110 24
x7767:	add bp, 22	; 3: -125 -59 22
x7770:	jmp floor	; 3: -23 -76 2

pow$43:	; post call

pow$44:	; £temporary564 = return_value

pow$45:	; call header integral zero 0 stack no zero 1
x7773:	fstp qword [bp + 22]	; 3: -35 94 22

pow$46:	; push float y
x7776:	fld qword [bp + 14]	; 3: -35 70 14

pow$47:	; parameter y, offset 6
x7779:	fstp qword [bp + 36]	; 3: -35 94 36

pow$48:	; call function noellipse-noellipse ceil
x7782:	mov word [bp + 30], pow$49	; 5: -57 70 30 116 30
x7787:	mov [bp + 32], bp	; 3: -119 110 32
x7790:	add bp, 30	; 3: -125 -59 30
x7793:	jmp ceil	; 3: -23 -21 2

pow$49:	; post call
x7796:	fstp qword [bp + 30]	; 3: -35 94 30
x7799:	fld qword [bp + 22]	; 3: -35 70 22
x7802:	fld qword [bp + 30]	; 3: -35 70 30

pow$50:	; £temporary565 = return_value

pow$51:	; if £temporary564 != £temporary565 goto 90
x7805:	fcompp	; 2: -34 -39
x7807:	fstsw ax	; 3: -101 -33 -32
x7810:	sahf	; 1: -98
x7811:	jne pow$90	; 4: 15 -123 -87 0

pow$52:	; push float y
x7815:	fld qword [bp + 14]	; 3: -35 70 14

pow$53:	; £temporary568 = float_to_int y (Double -> Signed_Long_Int)
x7818:	fistp dword [container4bytes#]	; 4: -37 30 -102 29
x7822:	mov eax, [container4bytes#]	; 4: 102 -95 -102 29

pow$54:	; long_y = £temporary568
x7826:	mov [bp + 22], eax	; 4: 102 -119 70 22

pow$55:	; £temporary569 = long_y % 2
x7830:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x7834:	xor edx, edx	; 3: 102 49 -46
x7837:	idiv dword [int4$2#]	; 5: 102 -9 62 67 31

pow$56:	; if £temporary569 != 0 goto 73
x7842:	cmp edx, 0	; 4: 102 -125 -6 0
x7846:	jne pow$73	; 2: 117 67

pow$57:	; call header integral zero 0 stack zero 0

pow$58:	; push float y
x7848:	fld qword [bp + 14]	; 3: -35 70 14

pow$59:	; call header integral zero 0 stack no zero 1
x7851:	fstp qword [bp + 26]	; 3: -35 94 26

pow$60:	; push float x
x7854:	fld qword [bp + 6]	; 3: -35 70 6

pow$61:	; £temporary571 = -x
x7857:	fchs	; 2: -39 -32

pow$62:	; parameter £temporary571, offset 6
x7859:	fstp qword [bp + 40]	; 3: -35 94 40

pow$63:	; call function noellipse-noellipse log
x7862:	mov word [bp + 34], pow$64	; 5: -57 70 34 -60 30
x7867:	mov [bp + 36], bp	; 3: -119 110 36
x7870:	add bp, 34	; 3: -125 -59 34
x7873:	jmp log	; 3: -23 -123 0

pow$64:	; post call
x7876:	fstp qword [bp + 34]	; 3: -35 94 34
x7879:	fld qword [bp + 26]	; 3: -35 70 26
x7882:	fld qword [bp + 34]	; 3: -35 70 34

pow$65:	; £temporary572 = return_value

pow$66:	; £temporary573 = y * £temporary572
x7885:	fmul	; 2: -34 -55

pow$67:	; parameter £temporary573, offset 6
x7887:	fstp qword [bp + 32]	; 3: -35 94 32

pow$68:	; call function noellipse-noellipse exp
x7890:	mov word [bp + 26], pow$69	; 5: -57 70 26 -32 30
x7895:	mov [bp + 28], bp	; 3: -119 110 28
x7898:	add bp, 26	; 3: -125 -59 26
x7901:	jmp exp	; 3: -23 -69 1

pow$69:	; post call

pow$70:	; £temporary574 = return_value

pow$71:	; return_value = £temporary574

pow$72:	; return
x7904:	mov ax, [bp]	; 3: -117 70 0
x7907:	mov di, [bp + 4]	; 3: -117 126 4
x7910:	mov bp, [bp + 2]	; 3: -117 110 2
x7913:	jmp ax	; 2: -1 -32

pow$73:	; call header integral zero 0 stack zero 0

pow$74:	; push float y
x7915:	fld qword [bp + 14]	; 3: -35 70 14

pow$75:	; call header integral zero 0 stack no zero 1
x7918:	fstp qword [bp + 26]	; 3: -35 94 26

pow$76:	; push float x
x7921:	fld qword [bp + 6]	; 3: -35 70 6

pow$77:	; £temporary575 = -x
x7924:	fchs	; 2: -39 -32

pow$78:	; parameter £temporary575, offset 6
x7926:	fstp qword [bp + 40]	; 3: -35 94 40

pow$79:	; call function noellipse-noellipse log
x7929:	mov word [bp + 34], pow$80	; 5: -57 70 34 7 31
x7934:	mov [bp + 36], bp	; 3: -119 110 36
x7937:	add bp, 34	; 3: -125 -59 34
x7940:	nop	; 1: -112
x7941:	jmp log	; 2: -21 66

pow$80:	; post call
x7943:	fstp qword [bp + 34]	; 3: -35 94 34
x7946:	fld qword [bp + 26]	; 3: -35 70 26
x7949:	fld qword [bp + 34]	; 3: -35 70 34

pow$81:	; £temporary576 = return_value

pow$82:	; £temporary577 = y * £temporary576
x7952:	fmul	; 2: -34 -55

pow$83:	; parameter £temporary577, offset 6
x7954:	fstp qword [bp + 32]	; 3: -35 94 32

pow$84:	; call function noellipse-noellipse exp
x7957:	mov word [bp + 26], pow$85	; 5: -57 70 26 35 31
x7962:	mov [bp + 28], bp	; 3: -119 110 28
x7965:	add bp, 26	; 3: -125 -59 26
x7968:	jmp exp	; 3: -23 120 1

pow$85:	; post call

pow$86:	; £temporary578 = return_value

pow$87:	; £temporary579 = -£temporary578
x7971:	fchs	; 2: -39 -32

pow$88:	; return_value = £temporary579

pow$89:	; return
x7973:	mov ax, [bp]	; 3: -117 70 0
x7976:	mov di, [bp + 4]	; 3: -117 126 4
x7979:	mov bp, [bp + 2]	; 3: -117 110 2
x7982:	jmp ax	; 2: -1 -32

pow$90:	; errno = 6
x7984:	mov word [errno], 6	; 6: -57 6 71 31 6 0

pow$91:	; push 0
x7990:	fldz	; 2: -39 -18

pow$92:	; return_value = 0

pow$93:	; return
x7992:	mov ax, [bp]	; 3: -117 70 0
x7995:	mov di, [bp + 4]	; 3: -117 126 4
x7998:	mov bp, [bp + 2]	; 3: -117 110 2
x8001:	jmp ax	; 2: -1 -32

pow$94:	; function end pow

int4$2#:
x8003:	dd 2	; 4: 2 0 0 0

errno:
x8007:	dw 0	; 2: 0 0

log:	; push float x
x8009:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x8012:	fldz	; 2: -39 -18

log$2:	; if x <= 0 goto 76
x8014:	fcompp	; 2: -34 -39
x8016:	fstsw ax	; 3: -101 -33 -32
x8019:	sahf	; 1: -98
x8020:	jae log$76	; 4: 15 -125 -18 0

log$3:	; n = 0
x8024:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x
x8029:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push 1
x8032:	fld1	; 2: -39 -24

log$6:	; if x <= 1 goto 16
x8034:	fcompp	; 2: -34 -39
x8036:	fstsw ax	; 3: -101 -33 -32
x8039:	sahf	; 1: -98
x8040:	jae log$16	; 2: 115 30

log$7:	; push float x
x8042:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push 1
x8045:	fld1	; 2: -39 -24

log$9:	; if x <= 1 goto 28
x8047:	fcompp	; 2: -34 -39
x8049:	fstsw ax	; 3: -101 -33 -32
x8052:	sahf	; 1: -98
x8053:	jae log$28	; 2: 115 64

log$10:	; push float x
x8055:	fld qword [bp + 6]	; 3: -35 70 6

log$11:	; push float 2.71
x8058:	fld qword [float8$2.71#]	; 4: -35 6 89 32

log$12:	; £temporary532 = x / 2.71
x8062:	fdiv	; 2: -34 -7

log$13:	; pop float x
x8064:	fstp qword [bp + 6]	; 3: -35 94 6

log$14:	; ++n
x8067:	inc word [bp + 14]	; 3: -1 70 14

log$15:	; goto 7
x8070:	jmp log$7	; 2: -21 -30

log$16:	; push float x
x8072:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 0.3690036900369003690036900369
x8075:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 97 32

log$18:	; if x >= 0.3690036900369003690036900369 goto 28
x8079:	fcompp	; 2: -34 -39
x8081:	fstsw ax	; 3: -101 -33 -32
x8084:	sahf	; 1: -98
x8085:	jbe log$28	; 2: 118 32

log$19:	; push float x
x8087:	fld qword [bp + 6]	; 3: -35 70 6

log$20:	; push float 0.3690036900369003690036900369
x8090:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 97 32

log$21:	; if x >= 0.3690036900369003690036900369 goto 28
x8094:	fcompp	; 2: -34 -39
x8096:	fstsw ax	; 3: -101 -33 -32
x8099:	sahf	; 1: -98
x8100:	jbe log$28	; 2: 118 17

log$22:	; push float x
x8102:	fld qword [bp + 6]	; 3: -35 70 6

log$23:	; push float 2.71
x8105:	fld qword [float8$2.71#]	; 4: -35 6 89 32

log$24:	; £temporary536 = x * 2.71
x8109:	fmul	; 2: -34 -55

log$25:	; pop float x
x8111:	fstp qword [bp + 6]	; 3: -35 94 6

log$26:	; --n
x8114:	dec word [bp + 14]	; 3: -1 78 14

log$27:	; goto 19
x8117:	jmp log$19	; 2: -21 -32

log$28:	; push 1
x8119:	fld1	; 2: -39 -24

log$29:	; pop float index
x8121:	fstp qword [bp + 16]	; 3: -35 94 16

log$30:	; push 0
x8124:	fldz	; 2: -39 -18

log$31:	; pop float sum
x8126:	fstp qword [bp + 32]	; 3: -35 94 32

log$32:	; push 1
x8129:	fld1	; 2: -39 -24

log$33:	; pop float sign
x8131:	fstp qword [bp + 40]	; 3: -35 94 40

log$34:	; push float x
x8134:	fld qword [bp + 6]	; 3: -35 70 6

log$35:	; push 1
x8137:	fld1	; 2: -39 -24

log$36:	; £temporary538 = x - 1
x8139:	fsub	; 2: -34 -23

log$37:	; pop float x_minus_1
x8141:	fstp qword [bp + 48]	; 3: -35 94 48

log$38:	; push float x_minus_1
x8144:	fld qword [bp + 48]	; 3: -35 70 48

log$39:	; pop float power
x8147:	fstp qword [bp + 56]	; 3: -35 94 56

log$40:	; push float sign
x8150:	fld qword [bp + 40]	; 3: -35 70 40

log$41:	; push float power
x8153:	fld qword [bp + 56]	; 3: -35 70 56

log$42:	; £temporary539 = sign * power
x8156:	fmul	; 2: -34 -55

log$43:	; push float index
x8158:	fld qword [bp + 16]	; 3: -35 70 16

log$44:	; push 1
x8161:	fld1	; 2: -39 -24

log$45:	; index = index + 1
x8163:	fadd	; 2: -34 -63

log$46:	; top float index
x8165:	fst qword [bp + 16]	; 3: -35 86 16

log$47:	; push 1
x8168:	fld1	; 2: -39 -24

log$48:	; index = index - 1
x8170:	fsub	; 2: -34 -23

log$49:	; £temporary541 = £temporary539 / £temporary540
x8172:	fdiv	; 2: -34 -7

log$50:	; pop float term
x8174:	fstp qword [bp + 24]	; 3: -35 94 24

log$51:	; push float sum
x8177:	fld qword [bp + 32]	; 3: -35 70 32

log$52:	; push float term
x8180:	fld qword [bp + 24]	; 3: -35 70 24

log$53:	; £temporary542 = sum + term
x8183:	fadd	; 2: -34 -63

log$54:	; pop float sum
x8185:	fstp qword [bp + 32]	; 3: -35 94 32

log$55:	; push float power
x8188:	fld qword [bp + 56]	; 3: -35 70 56

log$56:	; push float x_minus_1
x8191:	fld qword [bp + 48]	; 3: -35 70 48

log$57:	; £temporary543 = power * x_minus_1
x8194:	fmul	; 2: -34 -55

log$58:	; pop float power
x8196:	fstp qword [bp + 56]	; 3: -35 94 56

log$59:	; push float sign
x8199:	fld qword [bp + 40]	; 3: -35 70 40

log$60:	; push float -1.0
x8202:	fld qword [float8$minus1.0#]	; 4: -35 6 105 32

log$61:	; £temporary544 = sign * -1.0
x8206:	fmul	; 2: -34 -55

log$62:	; pop float sign
x8208:	fstp qword [bp + 40]	; 3: -35 94 40

log$63:	; call header integral zero 0 stack zero 0

log$64:	; push float term
x8211:	fld qword [bp + 24]	; 3: -35 70 24

log$65:	; parameter term, offset 6
x8214:	fstp qword [bp + 70]	; 3: -35 94 70

log$66:	; call function noellipse-noellipse fabs
x8217:	mov word [bp + 64], log$67	; 5: -57 70 64 39 32
x8222:	mov [bp + 66], bp	; 3: -119 110 66
x8225:	add bp, 64	; 3: -125 -59 64
x8228:	nop	; 1: -112
x8229:	jmp fabs	; 2: -21 82

log$67:	; post call

log$68:	; £temporary545 = return_value

log$69:	; push float 0.000000001
x8231:	fld qword [float8$0.000000001#]	; 4: -35 6 113 32

log$70:	; if £temporary545 >= 0.000000001 goto 40
x8235:	fcompp	; 2: -34 -39
x8237:	fstsw ax	; 3: -101 -33 -32
x8240:	sahf	; 1: -98
x8241:	jbe log$40	; 2: 118 -93

log$71:	; push float sum
x8243:	fld qword [bp + 32]	; 3: -35 70 32

log$72:	; £temporary547 = int_to_float n (Signed_Int -> Double)
x8246:	fild word [bp + 14]	; 3: -33 70 14

log$73:	; £temporary548 = sum + £temporary547
x8249:	fadd	; 2: -34 -63

log$74:	; return_value = £temporary548

log$75:	; return
x8251:	mov ax, [bp]	; 3: -117 70 0
x8254:	mov di, [bp + 4]	; 3: -117 126 4
x8257:	mov bp, [bp + 2]	; 3: -117 110 2
x8260:	jmp ax	; 2: -1 -32

log$76:	; errno = 6
x8262:	mov word [errno], 6	; 6: -57 6 71 31 6 0

log$77:	; push 0
x8268:	fldz	; 2: -39 -18

log$78:	; return_value = 0

log$79:	; return
x8270:	mov ax, [bp]	; 3: -117 70 0
x8273:	mov di, [bp + 4]	; 3: -117 126 4
x8276:	mov bp, [bp + 2]	; 3: -117 110 2
x8279:	jmp ax	; 2: -1 -32

log$80:	; function end log

float8$2.71#:
x8281:	dq 2.71	; 8: -82 71 -31 122 20 -82 5 64

float8$0.3690036900369003690036900369#:
x8289:	dq 0.3690036900369003690036900369	; 8: -86 -12 51 -89 -63 -99 -41 63

float8$minus1.0#:
x8297:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x8305:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

fabs:	; push float x
x8313:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x8316:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x8318:	fcompp	; 2: -34 -39
x8320:	fstsw ax	; 3: -101 -33 -32
x8323:	sahf	; 1: -98
x8324:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x8326:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary829 = -x
x8329:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x8331:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x8333:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary833

fabs$9:	; return
x8336:	mov ax, [bp]	; 3: -117 70 0
x8339:	mov di, [bp + 4]	; 3: -117 126 4
x8342:	mov bp, [bp + 2]	; 3: -117 110 2
x8345:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

exp:	; push 1
x8347:	fld1	; 2: -39 -24

exp$1:	; pop float index
x8349:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x8352:	fld1	; 2: -39 -24

exp$3:	; pop float sum
x8354:	fstp qword [bp + 30]	; 3: -35 94 30

exp$4:	; push 1
x8357:	fld1	; 2: -39 -24

exp$5:	; pop float faculty
x8359:	fstp qword [bp + 38]	; 3: -35 94 38

exp$6:	; push float x
x8362:	fld qword [bp + 6]	; 3: -35 70 6

exp$7:	; pop float power
x8365:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x8368:	fld qword [bp + 46]	; 3: -35 70 46

exp$9:	; push float faculty
x8371:	fld qword [bp + 38]	; 3: -35 70 38

exp$10:	; £temporary521 = power / faculty
x8374:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x8376:	fstp qword [bp + 22]	; 3: -35 94 22

exp$12:	; push float sum
x8379:	fld qword [bp + 30]	; 3: -35 70 30

exp$13:	; push float term
x8382:	fld qword [bp + 22]	; 3: -35 70 22

exp$14:	; £temporary522 = sum + term
x8385:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x8387:	fstp qword [bp + 30]	; 3: -35 94 30

exp$16:	; push float power
x8390:	fld qword [bp + 46]	; 3: -35 70 46

exp$17:	; push float x
x8393:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary523 = power * x
x8396:	fmul	; 2: -34 -55

exp$19:	; pop float power
x8398:	fstp qword [bp + 46]	; 3: -35 94 46

exp$20:	; push float faculty
x8401:	fld qword [bp + 38]	; 3: -35 70 38

exp$21:	; push float index
x8404:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x8407:	fld1	; 2: -39 -24

exp$23:	; index = index + 1
x8409:	fadd	; 2: -34 -63

exp$24:	; top float index
x8411:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary525 = faculty * £temporary524
x8414:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x8416:	fstp qword [bp + 38]	; 3: -35 94 38

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x8419:	fld qword [bp + 22]	; 3: -35 70 22

exp$29:	; parameter term, offset 6
x8422:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x8425:	mov word [bp + 54], exp$31	; 5: -57 70 54 -9 32
x8430:	mov [bp + 56], bp	; 3: -119 110 56
x8433:	add bp, 54	; 3: -125 -59 54
x8436:	nop	; 1: -112
x8437:	jmp fabs	; 2: -21 -126

exp$31:	; post call

exp$32:	; £temporary526 = return_value

exp$33:	; push float 0.000000001
x8439:	fld qword [float8$0.000000001#]	; 4: -35 6 113 32

exp$34:	; if £temporary526 >= 0.000000001 goto 8
x8443:	fcompp	; 2: -34 -39
x8445:	fstsw ax	; 3: -101 -33 -32
x8448:	sahf	; 1: -98
x8449:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x8451:	fld qword [bp + 30]	; 3: -35 70 30

exp$36:	; return_value = sum

exp$37:	; return
x8454:	mov ax, [bp]	; 3: -117 70 0
x8457:	mov di, [bp + 4]	; 3: -117 126 4
x8460:	mov bp, [bp + 2]	; 3: -117 110 2
x8463:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

floor:	; push float x
x8465:	fld qword [bp + 6]	; 3: -35 70 6

floor$1:	; push 0
x8468:	fldz	; 2: -39 -18

floor$2:	; if x >= 0 goto 13
x8470:	fcompp	; 2: -34 -39
x8472:	fstsw ax	; 3: -101 -33 -32
x8475:	sahf	; 1: -98
x8476:	jbe floor$13	; 2: 118 35

floor$3:	; call header integral zero 0 stack zero 0

floor$4:	; push float x
x8478:	fld qword [bp + 6]	; 3: -35 70 6

floor$5:	; £temporary805 = -x
x8481:	fchs	; 2: -39 -32

floor$6:	; parameter £temporary805, offset 6
x8483:	fstp qword [bp + 20]	; 3: -35 94 20

floor$7:	; call function noellipse-noellipse ceil
x8486:	mov word [bp + 14], floor$8	; 5: -57 70 14 52 33
x8491:	mov [bp + 16], bp	; 3: -119 110 16
x8494:	add bp, 14	; 3: -125 -59 14
x8497:	nop	; 1: -112
x8498:	jmp ceil	; 2: -21 43

floor$8:	; post call

floor$9:	; £temporary806 = return_value

floor$10:	; £temporary807 = -£temporary806
x8500:	fchs	; 2: -39 -32

floor$11:	; return_value = £temporary807

floor$12:	; return
x8502:	mov ax, [bp]	; 3: -117 70 0
x8505:	mov di, [bp + 4]	; 3: -117 126 4
x8508:	mov bp, [bp + 2]	; 3: -117 110 2
x8511:	jmp ax	; 2: -1 -32

floor$13:	; push float x
x8513:	fld qword [bp + 6]	; 3: -35 70 6

floor$14:	; £temporary808 = float_to_int x (Double -> Signed_Long_Int)
x8516:	fistp dword [container4bytes#]	; 4: -37 30 -102 29
x8520:	mov eax, [container4bytes#]	; 4: 102 -95 -102 29

floor$15:	; £temporary809 = int_to_float £temporary808 (Signed_Long_Int -> Double)
x8524:	mov [container4bytes#], eax	; 4: 102 -93 -102 29
x8528:	fild dword [container4bytes#]	; 4: -37 6 -102 29

floor$16:	; return_value = £temporary809

floor$17:	; return
x8532:	mov ax, [bp]	; 3: -117 70 0
x8535:	mov di, [bp + 4]	; 3: -117 126 4
x8538:	mov bp, [bp + 2]	; 3: -117 110 2
x8541:	jmp ax	; 2: -1 -32

floor$18:	; function end floor

ceil:	; push float x
x8543:	fld qword [bp + 6]	; 3: -35 70 6

ceil$1:	; push 0
x8546:	fldz	; 2: -39 -18

ceil$2:	; if x >= 0 goto 13
x8548:	fcompp	; 2: -34 -39
x8550:	fstsw ax	; 3: -101 -33 -32
x8553:	sahf	; 1: -98
x8554:	jbe ceil$13	; 2: 118 35

ceil$3:	; call header integral zero 0 stack zero 0

ceil$4:	; push float x
x8556:	fld qword [bp + 6]	; 3: -35 70 6

ceil$5:	; £temporary812 = -x
x8559:	fchs	; 2: -39 -32

ceil$6:	; parameter £temporary812, offset 6
x8561:	fstp qword [bp + 20]	; 3: -35 94 20

ceil$7:	; call function noellipse-noellipse floor
x8564:	mov word [bp + 14], ceil$8	; 5: -57 70 14 -126 33
x8569:	mov [bp + 16], bp	; 3: -119 110 16
x8572:	add bp, 14	; 3: -125 -59 14
x8575:	nop	; 1: -112
x8576:	jmp floor	; 2: -21 -113

ceil$8:	; post call

ceil$9:	; £temporary813 = return_value

ceil$10:	; £temporary814 = -£temporary813
x8578:	fchs	; 2: -39 -32

ceil$11:	; return_value = £temporary814

ceil$12:	; return
x8580:	mov ax, [bp]	; 3: -117 70 0
x8583:	mov di, [bp + 4]	; 3: -117 126 4
x8586:	mov bp, [bp + 2]	; 3: -117 110 2
x8589:	jmp ax	; 2: -1 -32

ceil$13:	; push float x
x8591:	fld qword [bp + 6]	; 3: -35 70 6

ceil$14:	; push float 0.999999999999
x8594:	fld qword [float8$0.999999999999#]	; 4: -35 6 -77 33

ceil$15:	; £temporary815 = x + 0.999999999999
x8598:	fadd	; 2: -34 -63

ceil$16:	; £temporary816 = float_to_int £temporary815 (Double -> Signed_Long_Int)
x8600:	fistp dword [container4bytes#]	; 4: -37 30 -102 29
x8604:	mov eax, [container4bytes#]	; 4: 102 -95 -102 29

ceil$17:	; £temporary817 = int_to_float £temporary816 (Signed_Long_Int -> Double)
x8608:	mov [container4bytes#], eax	; 4: 102 -93 -102 29
x8612:	fild dword [container4bytes#]	; 4: -37 6 -102 29

ceil$18:	; return_value = £temporary817

ceil$19:	; return
x8616:	mov ax, [bp]	; 3: -117 70 0
x8619:	mov di, [bp + 4]	; 3: -117 126 4
x8622:	mov bp, [bp + 2]	; 3: -117 110 2
x8625:	jmp ax	; 2: -1 -32

ceil$20:	; function end ceil

float8$0.999999999999#:
x8627:	dq 0.999999999999	; 8: -47 -36 -1 -1 -1 -1 -17 63

scanPattern:	; index = 0
x8635:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

scanPattern$1:	; call header integral zero 0 stack zero 0

scanPattern$2:	; call function noellipse-noellipse scanChar
x8640:	mov word [bp + 14], scanPattern$3	; 5: -57 70 14 -50 33
x8645:	mov [bp + 16], bp	; 3: -119 110 16
x8648:	add bp, 14	; 3: -125 -59 14
x8651:	jmp scanChar	; 3: -23 73 -20

scanPattern$3:	; post call

scanPattern$4:	; £temporary1250 = return_value

scanPattern$5:	; input = £temporary1250
x8654:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$6:	; call header integral zero 0 stack zero 0

scanPattern$7:	; £temporary1251 = int_to_int input (Signed_Char -> Signed_Int)
x8657:	mov al, [bp + 14]	; 3: -118 70 14
x8660:	and ax, 255	; 3: 37 -1 0
x8663:	cmp al, 0	; 2: 60 0
x8665:	jge scanPattern$8	; 2: 125 4
x8667:	neg al	; 2: -10 -40
x8669:	neg ax	; 2: -9 -40

scanPattern$8:	; parameter £temporary1251, offset 6
x8671:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$9:	; call function noellipse-noellipse isspace
x8674:	mov word [bp + 15], scanPattern$10	; 5: -57 70 15 -16 33
x8679:	mov [bp + 17], bp	; 3: -119 110 17
x8682:	add bp, 15	; 3: -125 -59 15
x8685:	jmp isspace	; 3: -23 -29 -18

scanPattern$10:	; post call

scanPattern$11:	; £temporary1252 = return_value

scanPattern$12:	; if £temporary1252 == 0 goto 19
x8688:	cmp bx, 0	; 3: -125 -5 0
x8691:	je scanPattern$19	; 2: 116 19

scanPattern$13:	; call header integral zero 0 stack zero 0

scanPattern$14:	; call function noellipse-noellipse scanChar
x8693:	mov word [bp + 15], scanPattern$15	; 5: -57 70 15 3 34
x8698:	mov [bp + 17], bp	; 3: -119 110 17
x8701:	add bp, 15	; 3: -125 -59 15
x8704:	jmp scanChar	; 3: -23 20 -20

scanPattern$15:	; post call

scanPattern$16:	; £temporary1253 = return_value

scanPattern$17:	; input = £temporary1253
x8707:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$18:	; goto 6
x8710:	jmp scanPattern$6	; 2: -21 -55

scanPattern$19:	; if string == 0 goto 53
x8712:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x8716:	je scanPattern$53	; 4: 15 -124 -113 0

scanPattern$20:	; if not != 0 goto 29
x8720:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x8724:	jne scanPattern$29	; 2: 117 42

scanPattern$21:	; call header integral zero 0 stack zero 0

scanPattern$22:	; parameter pattern, offset 6
x8726:	mov ax, [bp + 8]	; 3: -117 70 8
x8729:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$23:	; £temporary1258 = int_to_int input (Signed_Char -> Signed_Int)
x8732:	mov al, [bp + 14]	; 3: -118 70 14
x8735:	and ax, 255	; 3: 37 -1 0
x8738:	cmp al, 0	; 2: 60 0
x8740:	jge scanPattern$24	; 2: 125 4
x8742:	neg al	; 2: -10 -40
x8744:	neg ax	; 2: -9 -40

scanPattern$24:	; parameter £temporary1258, offset 8
x8746:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$25:	; call function noellipse-noellipse strchr
x8749:	mov word [bp + 15], scanPattern$26	; 5: -57 70 15 59 34
x8754:	mov [bp + 17], bp	; 3: -119 110 17
x8757:	add bp, 15	; 3: -125 -59 15
x8760:	jmp strchr	; 3: -23 -46 -12

scanPattern$26:	; post call

scanPattern$27:	; £temporary1259 = return_value

scanPattern$28:	; if £temporary1259 != 0 goto 38
x8763:	cmp bx, 0	; 3: -125 -5 0
x8766:	jne scanPattern$38	; 2: 117 48

scanPattern$29:	; if not == 0 goto 49
x8768:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x8772:	je scanPattern$49	; 2: 116 78

scanPattern$30:	; call header integral zero 0 stack zero 0

scanPattern$31:	; parameter pattern, offset 6
x8774:	mov ax, [bp + 8]	; 3: -117 70 8
x8777:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$32:	; £temporary1262 = int_to_int input (Signed_Char -> Signed_Int)
x8780:	mov al, [bp + 14]	; 3: -118 70 14
x8783:	and ax, 255	; 3: 37 -1 0
x8786:	cmp al, 0	; 2: 60 0
x8788:	jge scanPattern$33	; 2: 125 4
x8790:	neg al	; 2: -10 -40
x8792:	neg ax	; 2: -9 -40

scanPattern$33:	; parameter £temporary1262, offset 8
x8794:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$34:	; call function noellipse-noellipse strchr
x8797:	mov word [bp + 15], scanPattern$35	; 5: -57 70 15 107 34
x8802:	mov [bp + 17], bp	; 3: -119 110 17
x8805:	add bp, 15	; 3: -125 -59 15
x8808:	jmp strchr	; 3: -23 -94 -12

scanPattern$35:	; post call

scanPattern$36:	; £temporary1263 = return_value

scanPattern$37:	; if £temporary1263 != 0 goto 49
x8811:	cmp bx, 0	; 3: -125 -5 0
x8814:	jne scanPattern$49	; 2: 117 36

scanPattern$38:	; £temporary1269 = index
x8816:	mov ax, [bp + 12]	; 3: -117 70 12

scanPattern$39:	; ++index
x8819:	inc word [bp + 12]	; 3: -1 70 12

scanPattern$40:	; £temporary1271 = string + £temporary1269
x8822:	mov si, [bp + 6]	; 3: -117 118 6
x8825:	add si, ax	; 2: 1 -58

scanPattern$41:	; £temporary1270 -> £temporary1271 = *£temporary1271

scanPattern$42:	; £temporary1270 -> £temporary1271 = input
x8827:	mov al, [bp + 14]	; 3: -118 70 14
x8830:	mov [si], al	; 2: -120 4

scanPattern$43:	; call header integral zero 0 stack zero 0

scanPattern$44:	; call function noellipse-noellipse scanChar
x8832:	mov word [bp + 15], scanPattern$45	; 5: -57 70 15 -114 34
x8837:	mov [bp + 17], bp	; 3: -119 110 17
x8840:	add bp, 15	; 3: -125 -59 15
x8843:	jmp scanChar	; 3: -23 -119 -21

scanPattern$45:	; post call

scanPattern$46:	; £temporary1272 = return_value

scanPattern$47:	; input = £temporary1272
x8846:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$48:	; goto 20
x8849:	jmp scanPattern$20	; 3: -23 124 -1

scanPattern$49:	; £temporary1274 = string + index
x8852:	mov si, [bp + 6]	; 3: -117 118 6
x8855:	add si, [bp + 12]	; 3: 3 118 12

scanPattern$50:	; £temporary1273 -> £temporary1274 = *£temporary1274

scanPattern$51:	; £temporary1273 -> £temporary1274 = 0
x8858:	mov byte [si], 0	; 3: -58 4 0

scanPattern$52:	; goto 77
x8861:	jmp scanPattern$77	; 2: -21 115

scanPattern$53:	; if not != 0 goto 62
x8863:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x8867:	jne scanPattern$62	; 2: 117 42

scanPattern$54:	; call header integral zero 0 stack zero 0

scanPattern$55:	; parameter pattern, offset 6
x8869:	mov ax, [bp + 8]	; 3: -117 70 8
x8872:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$56:	; £temporary1277 = int_to_int input (Signed_Char -> Signed_Int)
x8875:	mov al, [bp + 14]	; 3: -118 70 14
x8878:	and ax, 255	; 3: 37 -1 0
x8881:	cmp al, 0	; 2: 60 0
x8883:	jge scanPattern$57	; 2: 125 4
x8885:	neg al	; 2: -10 -40
x8887:	neg ax	; 2: -9 -40

scanPattern$57:	; parameter £temporary1277, offset 8
x8889:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$58:	; call function noellipse-noellipse strchr
x8892:	mov word [bp + 15], scanPattern$59	; 5: -57 70 15 -54 34
x8897:	mov [bp + 17], bp	; 3: -119 110 17
x8900:	add bp, 15	; 3: -125 -59 15
x8903:	jmp strchr	; 3: -23 67 -12

scanPattern$59:	; post call

scanPattern$60:	; £temporary1278 = return_value

scanPattern$61:	; if £temporary1278 != 0 goto 71
x8906:	cmp bx, 0	; 3: -125 -5 0
x8909:	jne scanPattern$71	; 2: 117 48

scanPattern$62:	; if not == 0 goto 77
x8911:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x8915:	je scanPattern$77	; 2: 116 61

scanPattern$63:	; call header integral zero 0 stack zero 0

scanPattern$64:	; parameter pattern, offset 6
x8917:	mov ax, [bp + 8]	; 3: -117 70 8
x8920:	mov [bp + 21], ax	; 3: -119 70 21

scanPattern$65:	; £temporary1281 = int_to_int input (Signed_Char -> Signed_Int)
x8923:	mov al, [bp + 14]	; 3: -118 70 14
x8926:	and ax, 255	; 3: 37 -1 0
x8929:	cmp al, 0	; 2: 60 0
x8931:	jge scanPattern$66	; 2: 125 4
x8933:	neg al	; 2: -10 -40
x8935:	neg ax	; 2: -9 -40

scanPattern$66:	; parameter £temporary1281, offset 8
x8937:	mov [bp + 23], ax	; 3: -119 70 23

scanPattern$67:	; call function noellipse-noellipse strchr
x8940:	mov word [bp + 15], scanPattern$68	; 5: -57 70 15 -6 34
x8945:	mov [bp + 17], bp	; 3: -119 110 17
x8948:	add bp, 15	; 3: -125 -59 15
x8951:	jmp strchr	; 3: -23 19 -12

scanPattern$68:	; post call

scanPattern$69:	; £temporary1282 = return_value

scanPattern$70:	; if £temporary1282 != 0 goto 77
x8954:	cmp bx, 0	; 3: -125 -5 0
x8957:	jne scanPattern$77	; 2: 117 19

scanPattern$71:	; call header integral zero 0 stack zero 0

scanPattern$72:	; call function noellipse-noellipse scanChar
x8959:	mov word [bp + 15], scanPattern$73	; 5: -57 70 15 13 35
x8964:	mov [bp + 17], bp	; 3: -119 110 17
x8967:	add bp, 15	; 3: -125 -59 15
x8970:	jmp scanChar	; 3: -23 10 -21

scanPattern$73:	; post call

scanPattern$74:	; £temporary1288 = return_value

scanPattern$75:	; input = £temporary1288
x8973:	mov [bp + 14], bl	; 3: -120 94 14

scanPattern$76:	; goto 53
x8976:	jmp scanPattern$53	; 2: -21 -115

scanPattern$77:	; return
x8978:	mov ax, [bp]	; 3: -117 70 0
x8981:	mov di, [bp + 4]	; 3: -117 126 4
x8984:	mov bp, [bp + 2]	; 3: -117 110 2
x8987:	jmp ax	; 2: -1 -32

scanPattern$78:	; function end scanPattern

printf:	; £temporary2381 = &format
x8989:	mov si, bp	; 2: -119 -18
x8991:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2382 = int_to_int £temporary2381 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2382 + 2
x8994:	add si, 2	; 3: -125 -58 2
x8997:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; call header integral zero 0 stack zero 0

printf$4:	; parameter format, offset 6
x9000:	mov ax, [bp + 6]	; 3: -117 70 6
x9003:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; parameter arg_list, offset 8
x9006:	mov ax, [di + 8]	; 3: -117 69 8
x9009:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; call function ellipse-noellipse vprintf
x9012:	mov word [di + 10], printf$7	; 5: -57 69 10 71 35
x9017:	mov [di + 12], bp	; 3: -119 109 12
x9020:	mov [di + 14], di	; 3: -119 125 14
x9023:	add di, 10	; 3: -125 -57 10
x9026:	mov bp, di	; 2: -119 -3
x9028:	nop	; 1: -112
x9029:	jmp vprintf	; 2: -21 11

printf$7:	; post call

printf$8:	; £temporary2384 = return_value

printf$9:	; return_value = £temporary2384

printf$10:	; return
x9031:	mov ax, [bp]	; 3: -117 70 0
x9034:	mov di, [bp + 4]	; 3: -117 126 4
x9037:	mov bp, [bp + 2]	; 3: -117 110 2
x9040:	jmp ax	; 2: -1 -32

printf$11:	; function end printf

vprintf:	; call header integral zero 0 stack zero 0

vprintf$1:	; parameter stdout, offset 6
x9042:	mov ax, [stdout]	; 3: -95 125 35
x9045:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; parameter format, offset 8
x9048:	mov ax, [bp + 6]	; 3: -117 70 6
x9051:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; parameter arg_list, offset 10
x9054:	mov ax, [bp + 8]	; 3: -117 70 8
x9057:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; call function noellipse-noellipse vfprintf
x9060:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 114 35
x9065:	mov [bp + 12], bp	; 3: -119 110 12
x9068:	add bp, 10	; 3: -125 -59 10
x9071:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; post call

vprintf$6:	; £temporary2388 = return_value

vprintf$7:	; return_value = £temporary2388

vprintf$8:	; return
x9074:	mov ax, [bp]	; 3: -117 70 0
x9077:	mov di, [bp + 4]	; 3: -117 126 4
x9080:	mov bp, [bp + 2]	; 3: -117 110 2
x9083:	jmp ax	; 2: -1 -32

vprintf$9:	; function end vprintf

stdout:
x9085:	dw g_fileArray + 29	; 2: -100 35

g_fileArray:
x9087:	dw 1	; 2: 1 0
x9089:	dw 0	; 2: 0 0
x9091:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x9116:	dw 1	; 2: 1 0
x9118:	dw 1	; 2: 1 0
x9120:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x9145:	dw 1	; 2: 1 0
x9147:	dw 2	; 2: 2 0
x9149:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x9174:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

vfprintf:	; g_outStatus = 0
x9667:	mov word [g_outStatus], 0	; 6: -57 6 -12 37 0 0

vfprintf$1:	; £temporary2400 = int_to_int outStream (Pointer -> Pointer)
x9673:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2400
x9676:	mov [g_outDevice], ax	; 3: -93 -10 37

vfprintf$3:	; call header integral zero 0 stack zero 0

vfprintf$4:	; parameter format, offset 6
x9679:	mov ax, [bp + 8]	; 3: -117 70 8
x9682:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; parameter arg_list, offset 8
x9685:	mov ax, [bp + 10]	; 3: -117 70 10
x9688:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; call function noellipse-noellipse printFormat
x9691:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 -23 37
x9696:	mov [bp + 14], bp	; 3: -119 110 14
x9699:	add bp, 12	; 3: -125 -59 12
x9702:	nop	; 1: -112
x9703:	jmp printFormat	; 2: -21 15

vfprintf$7:	; post call

vfprintf$8:	; £temporary2401 = return_value

vfprintf$9:	; return_value = £temporary2401

vfprintf$10:	; return
x9705:	mov ax, [bp]	; 3: -117 70 0
x9708:	mov di, [bp + 4]	; 3: -117 126 4
x9711:	mov bp, [bp + 2]	; 3: -117 110 2
x9714:	jmp ax	; 2: -1 -32

vfprintf$11:	; function end vfprintf

g_outStatus:
x9716:	db 0, 0	; 2: 0 0

g_outDevice:
x9718:	db 0, 0	; 2: 0 0

printFormat:	; width = 0
x9720:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; precision = 0
x9725:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; percent = 0
x9730:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; plus = 0
x9735:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; minus = 0
x9740:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; space = 0
x9745:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; zero = 0
x9750:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; grid = 0
x9755:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; widthStar = 0
x9760:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; period = 0
x9765:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; precisionStar = 0
x9770:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; shortInt = 0
x9775:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; longInt = 0
x9780:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; longDouble = 0
x9785:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; g_outChars = 0
x9790:	mov word [g_outChars], 0	; 6: -57 6 90 43 0 0

printFormat$15:	; index = 0
x9796:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2233 = format + index
x9801:	mov si, [bp + 6]	; 3: -117 118 6
x9804:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2232 -> £temporary2233 = *£temporary2233

printFormat$18:	; if £temporary2232 -> £temporary2233 == 0 goto 286
x9807:	cmp byte [si], 0	; 3: -128 60 0
x9810:	je printFormat$286	; 4: 15 -124 -34 4

printFormat$19:	; £temporary2237 = format + index
x9814:	mov si, [bp + 6]	; 3: -117 118 6
x9817:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2236 -> £temporary2237 = *£temporary2237

printFormat$21:	; c = £temporary2236 -> £temporary2237
x9820:	mov al, [si]	; 2: -118 4
x9822:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 264
x9825:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x9829:	je printFormat$264	; 4: 15 -124 99 4

printFormat$23:	; case c == 43 goto 52
x9833:	mov al, [bp + 40]	; 3: -118 70 40
x9836:	cmp al, 43	; 2: 60 43
x9838:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; case c == 45 goto 54
x9842:	cmp al, 45	; 2: 60 45
x9844:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; case c == 32 goto 56
x9848:	cmp al, 32	; 2: 60 32
x9850:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; case c == 48 goto 58
x9854:	cmp al, 48	; 2: 60 48
x9856:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; case c == 35 goto 60
x9860:	cmp al, 35	; 2: 60 35
x9862:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; case c == 46 goto 62
x9866:	cmp al, 46	; 2: 60 46
x9868:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; case c == 42 goto 64
x9872:	cmp al, 42	; 2: 60 42
x9874:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; case c == 104 goto 69
x9878:	cmp al, 104	; 2: 60 104
x9880:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; case c == 108 goto 71
x9884:	cmp al, 108	; 2: 60 108
x9886:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; case c == 76 goto 73
x9890:	cmp al, 76	; 2: 60 76
x9892:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; case c == 37 goto 75
x9896:	cmp al, 37	; 2: 60 37
x9898:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; case c == 110 goto 75
x9902:	cmp al, 110	; 2: 60 110
x9904:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; case c == 112 goto 75
x9908:	cmp al, 112	; 2: 60 112
x9910:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; case c == 71 goto 75
x9914:	cmp al, 71	; 2: 60 71
x9916:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; case c == 103 goto 75
x9920:	cmp al, 103	; 2: 60 103
x9922:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; case c == 69 goto 75
x9926:	cmp al, 69	; 2: 60 69
x9928:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; case c == 101 goto 75
x9932:	cmp al, 101	; 2: 60 101
x9934:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; case c == 102 goto 75
x9938:	cmp al, 102	; 2: 60 102
x9940:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; case c == 115 goto 75
x9944:	cmp al, 115	; 2: 60 115
x9946:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; case c == 99 goto 75
x9950:	cmp al, 99	; 2: 60 99
x9952:	je printFormat$75	; 2: 116 125

printFormat$43:	; case c == 88 goto 75
x9954:	cmp al, 88	; 2: 60 88
x9956:	je printFormat$75	; 2: 116 121

printFormat$44:	; case c == 120 goto 75
x9958:	cmp al, 120	; 2: 60 120
x9960:	je printFormat$75	; 2: 116 117

printFormat$45:	; case c == 111 goto 75
x9962:	cmp al, 111	; 2: 60 111
x9964:	je printFormat$75	; 2: 116 113

printFormat$46:	; case c == 98 goto 75
x9966:	cmp al, 98	; 2: 60 98
x9968:	je printFormat$75	; 2: 116 109

printFormat$47:	; case c == 117 goto 75
x9970:	cmp al, 117	; 2: 60 117
x9972:	je printFormat$75	; 2: 116 105

printFormat$48:	; case c == 100 goto 75
x9974:	cmp al, 100	; 2: 60 100
x9976:	je printFormat$75	; 2: 116 101

printFormat$49:	; case c == 105 goto 75
x9978:	cmp al, 105	; 2: 60 105
x9980:	je printFormat$75	; 2: 116 97

printFormat$50:	; case end c

printFormat$51:	; goto 241
x9982:	jmp printFormat$241	; 3: -23 88 3

printFormat$52:	; plus = 1
x9985:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 284
x9990:	jmp printFormat$284	; 3: -23 37 4

printFormat$54:	; minus = 1
x9993:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 284
x9998:	jmp printFormat$284	; 3: -23 29 4

printFormat$56:	; space = 1
x10001:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 284
x10006:	jmp printFormat$284	; 3: -23 21 4

printFormat$58:	; zero = 1
x10009:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 284
x10014:	jmp printFormat$284	; 3: -23 13 4

printFormat$60:	; grid = 1
x10017:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 284
x10022:	jmp printFormat$284	; 3: -23 5 4

printFormat$62:	; period = 1
x10025:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 284
x10030:	jmp printFormat$284	; 3: -23 -3 3

printFormat$64:	; if period != 0 goto 67
x10033:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x10037:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x10039:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 284
x10044:	jmp printFormat$284	; 3: -23 -17 3

printFormat$67:	; precision = -1
x10047:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 284
x10052:	jmp printFormat$284	; 3: -23 -25 3

printFormat$69:	; shortInt = 1
x10055:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 284
x10060:	jmp printFormat$284	; 3: -23 -33 3

printFormat$71:	; longInt = 1
x10063:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 284
x10068:	jmp printFormat$284	; 3: -23 -41 3

printFormat$73:	; longDouble = 1
x10071:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 284
x10076:	jmp printFormat$284	; 3: -23 -49 3

printFormat$75:	; if minus == 0 goto 106
x10079:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x10083:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x10087:	mov ax, [g_outChars]	; 3: -95 90 43
x10090:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; call header integral zero 0 stack zero 0

printFormat$78:	; £temporary2241 = format + index
x10093:	mov si, [bp + 6]	; 3: -117 118 6
x10096:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2240 -> £temporary2241 = *£temporary2241

printFormat$80:	; £temporary2242 = &£temporary2240 -> £temporary2241

printFormat$81:	; parameter £temporary2242, offset 6
x10099:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; parameter arg_list, offset 8
x10102:	mov ax, [bp + 8]	; 3: -117 70 8
x10105:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; parameter plus, offset 10
x10108:	mov ax, [bp + 18]	; 3: -117 70 18
x10111:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; parameter space, offset 12
x10114:	mov ax, [bp + 22]	; 3: -117 70 22
x10117:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; parameter grid, offset 14
x10120:	mov ax, [bp + 26]	; 3: -117 70 26
x10123:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; £temporary2243 = &width
x10126:	mov si, bp	; 2: -119 -18
x10128:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2243, offset 16
x10131:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; parameter precision, offset 18
x10134:	mov ax, [bp + 14]	; 3: -117 70 14
x10137:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; parameter shortInt, offset 20
x10140:	mov ax, [bp + 34]	; 3: -117 70 34
x10143:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; parameter longInt, offset 22
x10146:	mov ax, [bp + 36]	; 3: -117 70 36
x10149:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; parameter longDouble, offset 24
x10152:	mov ax, [bp + 38]	; 3: -117 70 38
x10155:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; parameter 1, offset 26
x10158:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; parameter 0, offset 28
x10163:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; call function noellipse-noellipse printArgument
x10168:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 -58 39
x10173:	mov [bp + 45], bp	; 3: -119 110 45
x10176:	add bp, 43	; 3: -125 -59 43
x10179:	jmp printArgument	; 3: -23 -104 3

printFormat$95:	; post call

printFormat$96:	; £temporary2244 = return_value

printFormat$97:	; arg_list = £temporary2244
x10182:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2246 = g_outChars - startChars
x10185:	mov ax, [g_outChars]	; 3: -95 90 43
x10188:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x10191:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2246 >= width goto 239
x10194:	cmp ax, [bp + 12]	; 3: 59 70 12
x10197:	jge printFormat$239	; 4: 15 -115 120 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x10201:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x10205:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 -21 39
x10210:	mov [bp + 47], bp	; 3: -119 110 47
x10213:	add bp, 45	; 3: -125 -59 45
x10216:	jmp printChar	; 3: -23 -124 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x10219:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 186
x10221:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x10225:	je printFormat$186	; 4: 15 -124 100 1

printFormat$107:	; startChars = g_outChars
x10229:	mov ax, [g_outChars]	; 3: -95 90 43
x10232:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$108:	; oldOutStatus = g_outStatus
x10235:	mov ax, [g_outStatus]	; 3: -95 -12 37
x10238:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$109:	; negative = 0
x10241:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$110:	; g_outStatus = 2
x10246:	mov word [g_outStatus], 2	; 6: -57 6 -12 37 2 0

printFormat$111:	; call header integral zero 0 stack zero 0

printFormat$112:	; £temporary2250 = format + index
x10252:	mov si, [bp + 6]	; 3: -117 118 6
x10255:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2249 -> £temporary2250 = *£temporary2250

printFormat$114:	; £temporary2251 = &£temporary2249 -> £temporary2250

printFormat$115:	; parameter £temporary2251, offset 6
x10258:	mov [bp + 53], si	; 3: -119 118 53

printFormat$116:	; parameter arg_list, offset 8
x10261:	mov ax, [bp + 8]	; 3: -117 70 8
x10264:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$117:	; parameter 0, offset 10
x10267:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$118:	; parameter 0, offset 12
x10272:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$119:	; parameter grid, offset 14
x10277:	mov ax, [bp + 26]	; 3: -117 70 26
x10280:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$120:	; £temporary2252 = &width
x10283:	mov si, bp	; 2: -119 -18
x10285:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2252, offset 16
x10288:	mov [bp + 63], si	; 3: -119 118 63

printFormat$122:	; parameter precision, offset 18
x10291:	mov ax, [bp + 14]	; 3: -117 70 14
x10294:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$123:	; parameter shortInt, offset 20
x10297:	mov ax, [bp + 34]	; 3: -117 70 34
x10300:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$124:	; parameter longInt, offset 22
x10303:	mov ax, [bp + 36]	; 3: -117 70 36
x10306:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$125:	; parameter longDouble, offset 24
x10309:	mov ax, [bp + 38]	; 3: -117 70 38
x10312:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$126:	; parameter 0, offset 26
x10315:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$127:	; £temporary2253 = &negative
x10320:	mov si, bp	; 2: -119 -18
x10322:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2253, offset 28
x10325:	mov [bp + 75], si	; 3: -119 118 75

printFormat$129:	; call function noellipse-noellipse printArgument
x10328:	mov word [bp + 47], printFormat$130	; 5: -57 70 47 102 40
x10333:	mov [bp + 49], bp	; 3: -119 110 49
x10336:	add bp, 47	; 3: -125 -59 47
x10339:	jmp printArgument	; 3: -23 -8 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x10342:	mov ax, [bp + 43]	; 3: -117 70 43
x10345:	mov [g_outStatus], ax	; 3: -93 -12 37

printFormat$132:	; field = g_outChars - startChars
x10348:	mov ax, [g_outChars]	; 3: -95 90 43
x10351:	sub ax, [bp + 41]	; 3: 43 70 41
x10354:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x10357:	mov ax, [bp + 41]	; 3: -117 70 41
x10360:	mov [g_outChars], ax	; 3: -93 90 43

printFormat$134:	; if negative == 0 goto 145
x10363:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x10367:	je printFormat$145	; 2: 116 41

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 88, offset 6
x10369:	mov byte [bp + 55], 88	; 4: -58 70 55 88

printFormat$137:	; call function noellipse-noellipse printChar
x10373:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 -109 40
x10378:	mov [bp + 51], bp	; 3: -119 110 51
x10381:	add bp, 49	; 3: -125 -59 49
x10384:	jmp printChar	; 3: -23 -36 9

printFormat$138:	; post call

printFormat$139:	; call header integral zero 0 stack zero 0

printFormat$140:	; parameter 45, offset 6
x10387:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$141:	; call function noellipse-noellipse printChar
x10391:	mov word [bp + 49], printFormat$142	; 5: -57 70 49 -91 40
x10396:	mov [bp + 51], bp	; 3: -119 110 51
x10399:	add bp, 49	; 3: -125 -59 49
x10402:	jmp printChar	; 3: -23 -54 9

printFormat$142:	; post call

printFormat$143:	; ++field
x10405:	inc word [bp + 47]	; 3: -1 70 47

printFormat$144:	; goto 158
x10408:	jmp printFormat$158	; 2: -21 57

printFormat$145:	; if plus == 0 goto 152
x10410:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x10414:	je printFormat$152	; 2: 116 23

printFormat$146:	; call header integral zero 0 stack zero 0

printFormat$147:	; parameter 43, offset 6
x10416:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$148:	; call function noellipse-noellipse printChar
x10420:	mov word [bp + 49], printFormat$149	; 5: -57 70 49 -62 40
x10425:	mov [bp + 51], bp	; 3: -119 110 51
x10428:	add bp, 49	; 3: -125 -59 49
x10431:	jmp printChar	; 3: -23 -83 9

printFormat$149:	; post call

printFormat$150:	; ++field
x10434:	inc word [bp + 47]	; 3: -1 70 47

printFormat$151:	; goto 158
x10437:	jmp printFormat$158	; 2: -21 28

printFormat$152:	; if space == 0 goto 158
x10439:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x10443:	je printFormat$158	; 2: 116 22

printFormat$153:	; call header integral zero 0 stack zero 0

printFormat$154:	; parameter 32, offset 6
x10445:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$155:	; call function noellipse-noellipse printChar
x10449:	mov word [bp + 49], printFormat$156	; 5: -57 70 49 -33 40
x10454:	mov [bp + 51], bp	; 3: -119 110 51
x10457:	add bp, 49	; 3: -125 -59 49
x10460:	jmp printChar	; 3: -23 -112 9

printFormat$156:	; post call

printFormat$157:	; £temporary2266 = field + 1
x10463:	mov ax, [bp + 47]	; 3: -117 70 47
x10466:	inc ax	; 1: 64

printFormat$158:	; ++field
x10467:	inc word [bp + 47]	; 3: -1 70 47

printFormat$159:	; if £temporary2266 >= width goto 165
x10470:	cmp ax, [bp + 12]	; 3: 59 70 12
x10473:	jge printFormat$165	; 2: 125 20

printFormat$160:	; call header integral zero 0 stack zero 0

printFormat$161:	; parameter 48, offset 6
x10475:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$162:	; call function noellipse-noellipse printChar
x10479:	mov word [bp + 49], printFormat$163	; 5: -57 70 49 -3 40
x10484:	mov [bp + 51], bp	; 3: -119 110 51
x10487:	add bp, 49	; 3: -125 -59 49
x10490:	jmp printChar	; 3: -23 114 9

printFormat$163:	; post call

printFormat$164:	; goto 158
x10493:	jmp printFormat$158	; 2: -21 -28

printFormat$165:	; call header integral zero 0 stack zero 0

printFormat$166:	; £temporary2270 = format + index
x10495:	mov si, [bp + 6]	; 3: -117 118 6
x10498:	add si, [bp + 10]	; 3: 3 118 10

printFormat$167:	; £temporary2269 -> £temporary2270 = *£temporary2270

printFormat$168:	; £temporary2271 = &£temporary2269 -> £temporary2270

printFormat$169:	; parameter £temporary2271, offset 6
x10501:	mov [bp + 55], si	; 3: -119 118 55

printFormat$170:	; parameter arg_list, offset 8
x10504:	mov ax, [bp + 8]	; 3: -117 70 8
x10507:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$171:	; parameter 0, offset 10
x10510:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$172:	; parameter 0, offset 12
x10515:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$173:	; parameter grid, offset 14
x10520:	mov ax, [bp + 26]	; 3: -117 70 26
x10523:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$174:	; parameter 0, offset 16
x10526:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$175:	; parameter precision, offset 18
x10531:	mov ax, [bp + 14]	; 3: -117 70 14
x10534:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$176:	; parameter shortInt, offset 20
x10537:	mov ax, [bp + 34]	; 3: -117 70 34
x10540:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$177:	; parameter longInt, offset 22
x10543:	mov ax, [bp + 36]	; 3: -117 70 36
x10546:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$178:	; parameter longDouble, offset 24
x10549:	mov ax, [bp + 38]	; 3: -117 70 38
x10552:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$179:	; parameter 0, offset 26
x10555:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$180:	; parameter 0, offset 28
x10560:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$181:	; call function noellipse-noellipse printArgument
x10565:	mov word [bp + 49], printFormat$182	; 5: -57 70 49 83 41
x10570:	mov [bp + 51], bp	; 3: -119 110 51
x10573:	add bp, 49	; 3: -125 -59 49
x10576:	jmp printArgument	; 3: -23 11 2

printFormat$182:	; post call

printFormat$183:	; £temporary2272 = return_value

printFormat$184:	; arg_list = £temporary2272
x10579:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$185:	; goto 239
x10582:	jmp printFormat$239	; 3: -23 -8 0

printFormat$186:	; startChars = g_outChars
x10585:	mov ax, [g_outChars]	; 3: -95 90 43
x10588:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$187:	; oldOutStatus = g_outStatus
x10591:	mov ax, [g_outStatus]	; 3: -95 -12 37
x10594:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$188:	; g_outStatus = 2
x10597:	mov word [g_outStatus], 2	; 6: -57 6 -12 37 2 0

printFormat$189:	; call header integral zero 0 stack zero 0

printFormat$190:	; £temporary2274 = format + index
x10603:	mov si, [bp + 6]	; 3: -117 118 6
x10606:	add si, [bp + 10]	; 3: 3 118 10

printFormat$191:	; £temporary2273 -> £temporary2274 = *£temporary2274

printFormat$192:	; £temporary2275 = &£temporary2273 -> £temporary2274

printFormat$193:	; parameter £temporary2275, offset 6
x10609:	mov [bp + 51], si	; 3: -119 118 51

printFormat$194:	; parameter arg_list, offset 8
x10612:	mov ax, [bp + 8]	; 3: -117 70 8
x10615:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$195:	; parameter plus, offset 10
x10618:	mov ax, [bp + 18]	; 3: -117 70 18
x10621:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$196:	; parameter space, offset 12
x10624:	mov ax, [bp + 22]	; 3: -117 70 22
x10627:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$197:	; parameter grid, offset 14
x10630:	mov ax, [bp + 26]	; 3: -117 70 26
x10633:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$198:	; £temporary2276 = &width
x10636:	mov si, bp	; 2: -119 -18
x10638:	add si, 12	; 3: -125 -58 12

printFormat$199:	; parameter £temporary2276, offset 16
x10641:	mov [bp + 61], si	; 3: -119 118 61

printFormat$200:	; parameter precision, offset 18
x10644:	mov ax, [bp + 14]	; 3: -117 70 14
x10647:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$201:	; parameter shortInt, offset 20
x10650:	mov ax, [bp + 34]	; 3: -117 70 34
x10653:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$202:	; parameter longInt, offset 22
x10656:	mov ax, [bp + 36]	; 3: -117 70 36
x10659:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$203:	; parameter longDouble, offset 24
x10662:	mov ax, [bp + 38]	; 3: -117 70 38
x10665:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$204:	; parameter 1, offset 26
x10668:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$205:	; parameter 0, offset 28
x10673:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$206:	; call function noellipse-noellipse printArgument
x10678:	mov word [bp + 45], printFormat$207	; 5: -57 70 45 -60 41
x10683:	mov [bp + 47], bp	; 3: -119 110 47
x10686:	add bp, 45	; 3: -125 -59 45
x10689:	jmp printArgument	; 3: -23 -102 1

printFormat$207:	; post call

printFormat$208:	; g_outStatus = oldOutStatus
x10692:	mov ax, [bp + 43]	; 3: -117 70 43
x10695:	mov [g_outStatus], ax	; 3: -93 -12 37

printFormat$209:	; field = g_outChars - startChars
x10698:	mov ax, [g_outChars]	; 3: -95 90 43
x10701:	sub ax, [bp + 41]	; 3: 43 70 41
x10704:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$210:	; g_outChars = startChars
x10707:	mov ax, [bp + 41]	; 3: -117 70 41
x10710:	mov [g_outChars], ax	; 3: -93 90 43

printFormat$211:	; £temporary2279 = field
x10713:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$212:	; ++field
x10716:	inc word [bp + 45]	; 3: -1 70 45

printFormat$213:	; if £temporary2279 >= width goto 219
x10719:	cmp ax, [bp + 12]	; 3: 59 70 12
x10722:	jge printFormat$219	; 2: 125 20

printFormat$214:	; call header integral zero 0 stack zero 0

printFormat$215:	; parameter 32, offset 6
x10724:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$216:	; call function noellipse-noellipse printChar
x10728:	mov word [bp + 47], printFormat$217	; 5: -57 70 47 -10 41
x10733:	mov [bp + 49], bp	; 3: -119 110 49
x10736:	add bp, 47	; 3: -125 -59 47
x10739:	jmp printChar	; 3: -23 121 8

printFormat$217:	; post call

printFormat$218:	; goto 211
x10742:	jmp printFormat$211	; 2: -21 -31

printFormat$219:	; call header integral zero 0 stack zero 0

printFormat$220:	; £temporary2283 = format + index
x10744:	mov si, [bp + 6]	; 3: -117 118 6
x10747:	add si, [bp + 10]	; 3: 3 118 10

printFormat$221:	; £temporary2282 -> £temporary2283 = *£temporary2283

printFormat$222:	; £temporary2284 = &£temporary2282 -> £temporary2283

printFormat$223:	; parameter £temporary2284, offset 6
x10750:	mov [bp + 53], si	; 3: -119 118 53

printFormat$224:	; parameter arg_list, offset 8
x10753:	mov ax, [bp + 8]	; 3: -117 70 8
x10756:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$225:	; parameter plus, offset 10
x10759:	mov ax, [bp + 18]	; 3: -117 70 18
x10762:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$226:	; parameter space, offset 12
x10765:	mov ax, [bp + 22]	; 3: -117 70 22
x10768:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$227:	; parameter grid, offset 14
x10771:	mov ax, [bp + 26]	; 3: -117 70 26
x10774:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$228:	; parameter 0, offset 16
x10777:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$229:	; parameter precision, offset 18
x10782:	mov ax, [bp + 14]	; 3: -117 70 14
x10785:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$230:	; parameter shortInt, offset 20
x10788:	mov ax, [bp + 34]	; 3: -117 70 34
x10791:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$231:	; parameter longInt, offset 22
x10794:	mov ax, [bp + 36]	; 3: -117 70 36
x10797:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$232:	; parameter longDouble, offset 24
x10800:	mov ax, [bp + 38]	; 3: -117 70 38
x10803:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$233:	; parameter 1, offset 26
x10806:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$234:	; parameter 0, offset 28
x10811:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$235:	; call function noellipse-noellipse printArgument
x10816:	mov word [bp + 47], printFormat$236	; 5: -57 70 47 78 42
x10821:	mov [bp + 49], bp	; 3: -119 110 49
x10824:	add bp, 47	; 3: -125 -59 47
x10827:	jmp printArgument	; 3: -23 16 1

printFormat$236:	; post call

printFormat$237:	; £temporary2285 = return_value

printFormat$238:	; arg_list = £temporary2285
x10830:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$239:	; percent = 0
x10833:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$240:	; goto 284
x10838:	jmp printFormat$284	; 3: -23 -43 0

printFormat$241:	; value = 0
x10841:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$242:	; call header integral zero 0 stack zero 0

printFormat$243:	; £temporary2288 = int_to_int c (Signed_Char -> Signed_Int)
x10846:	mov al, [bp + 40]	; 3: -118 70 40
x10849:	and ax, 255	; 3: 37 -1 0
x10852:	cmp al, 0	; 2: 60 0
x10854:	jge printFormat$244	; 2: 125 4
x10856:	neg al	; 2: -10 -40
x10858:	neg ax	; 2: -9 -40

printFormat$244:	; parameter £temporary2288, offset 6
x10860:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$245:	; call function noellipse-noellipse isdigit
x10863:	mov word [bp + 43], printFormat$246	; 5: -57 70 43 125 42
x10868:	mov [bp + 45], bp	; 3: -119 110 45
x10871:	add bp, 43	; 3: -125 -59 43
x10874:	jmp isdigit	; 3: -23 -4 -19

printFormat$246:	; post call

printFormat$247:	; £temporary2289 = return_value

printFormat$248:	; if £temporary2289 == 0 goto 258
x10877:	cmp bx, 0	; 3: -125 -5 0
x10880:	je printFormat$258	; 2: 116 49

printFormat$249:	; £temporary2290 = value * 10
x10882:	mov ax, [bp + 41]	; 3: -117 70 41
x10885:	xor dx, dx	; 2: 49 -46
x10887:	imul word [int2$10#]	; 4: -9 46 92 43

printFormat$250:	; £temporary2291 = c - 48
x10891:	mov bl, [bp + 40]	; 3: -118 94 40
x10894:	sub bl, 48	; 3: -128 -21 48

printFormat$251:	; £temporary2292 = int_to_int £temporary2291 (Signed_Char -> Signed_Int)
x10897:	and bx, 255	; 4: -127 -29 -1 0
x10901:	cmp bl, 0	; 3: -128 -5 0
x10904:	jge printFormat$252	; 2: 125 4
x10906:	neg bl	; 2: -10 -37
x10908:	neg bx	; 2: -9 -37

printFormat$252:	; value = £temporary2290 + £temporary2292
x10910:	add ax, bx	; 2: 1 -40
x10912:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$253:	; £temporary2294 = index + 1
x10915:	mov ax, [bp + 10]	; 3: -117 70 10
x10918:	inc ax	; 1: 64

printFormat$254:	; £temporary2296 = format + £temporary2294
x10919:	mov si, [bp + 6]	; 3: -117 118 6
x10922:	add si, ax	; 2: 1 -58

printFormat$255:	; £temporary2295 -> £temporary2296 = *£temporary2296

printFormat$256:	; c = £temporary2295 -> £temporary2296
x10924:	mov al, [si]	; 2: -118 4
x10926:	mov [bp + 40], al	; 3: -120 70 40

printFormat$257:	; goto 242
x10929:	jmp printFormat$242	; 2: -21 -85

printFormat$258:	; --index
x10931:	dec word [bp + 10]	; 3: -1 78 10

printFormat$259:	; if period != 0 goto 262
x10934:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x10938:	jne printFormat$262	; 2: 117 8

printFormat$260:	; width = value
x10940:	mov ax, [bp + 41]	; 3: -117 70 41
x10943:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$261:	; goto 284
x10946:	jmp printFormat$284	; 2: -21 106

printFormat$262:	; precision = value
x10948:	mov ax, [bp + 41]	; 3: -117 70 41
x10951:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$263:	; goto 284
x10954:	jmp printFormat$284	; 2: -21 98

printFormat$264:	; if c != 37 goto 280
x10956:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x10960:	jne printFormat$280	; 2: 117 72

printFormat$265:	; percent = 1
x10962:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$266:	; plus = 0
x10967:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$267:	; minus = 0
x10972:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$268:	; space = 0
x10977:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$269:	; zero = 0
x10982:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$270:	; grid = 0
x10987:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$271:	; widthStar = 0
x10992:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$272:	; period = 0
x10997:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$273:	; precisionStar = 0
x11002:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$274:	; shortInt = 0
x11007:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$275:	; longInt = 0
x11012:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$276:	; longDouble = 0
x11017:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$277:	; width = 0
x11022:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$278:	; precision = 0
x11027:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$279:	; goto 284
x11032:	jmp printFormat$284	; 2: -21 20

printFormat$280:	; call header integral zero 0 stack zero 0

printFormat$281:	; parameter c, offset 6
x11034:	mov al, [bp + 40]	; 3: -118 70 40
x11037:	mov [bp + 47], al	; 3: -120 70 47

printFormat$282:	; call function noellipse-noellipse printChar
x11040:	mov word [bp + 41], printFormat$283	; 5: -57 70 41 46 43
x11045:	mov [bp + 43], bp	; 3: -119 110 43
x11048:	add bp, 41	; 3: -125 -59 41
x11051:	jmp printChar	; 3: -23 65 7

printFormat$283:	; post call

printFormat$284:	; ++index
x11054:	inc word [bp + 10]	; 3: -1 70 10

printFormat$285:	; goto 16
x11057:	jmp printFormat$16	; 3: -23 21 -5

printFormat$286:	; if g_outStatus != 1 goto 292
x11060:	cmp word [g_outStatus], 1	; 5: -125 62 -12 37 1
x11065:	jne printFormat$292	; 2: 117 16

printFormat$287:	; £temporary2305 = int_to_int g_outDevice (Pointer -> Pointer)
x11067:	mov ax, [g_outDevice]	; 3: -95 -10 37

printFormat$288:	; outString = £temporary2305
x11070:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$289:	; £temporary2307 = outString + g_outChars
x11073:	mov si, [bp + 40]	; 3: -117 118 40
x11076:	add si, [g_outChars]	; 4: 3 54 90 43

printFormat$290:	; £temporary2306 -> £temporary2307 = *£temporary2307

printFormat$291:	; £temporary2306 -> £temporary2307 = 0
x11080:	mov byte [si], 0	; 3: -58 4 0

printFormat$292:	; return_value = g_outChars
x11083:	mov bx, [g_outChars]	; 4: -117 30 90 43

printFormat$293:	; return
x11087:	mov ax, [bp]	; 3: -117 70 0
x11090:	mov di, [bp + 4]	; 3: -117 126 4
x11093:	mov bp, [bp + 2]	; 3: -117 110 2
x11096:	jmp ax	; 2: -1 -32

printFormat$294:	; function end printFormat

g_outChars:
x11098:	db 0, 0	; 2: 0 0

int2$10#:
x11100:	dw 10	; 2: 10 0

printArgument:	; £temporary2006 -> format = *format
x11102:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary2006 -> format
x11105:	mov al, [si]	; 2: -118 4
x11107:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x11110:	mov al, [bp + 30]	; 3: -118 70 30
x11113:	cmp al, 100	; 2: 60 100
x11115:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x11117:	cmp al, 105	; 2: 60 105
x11119:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x11121:	cmp al, 99	; 2: 60 99
x11123:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x11127:	cmp al, 115	; 2: 60 115
x11129:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x11133:	cmp al, 88	; 2: 60 88
x11135:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x11139:	cmp al, 120	; 2: 60 120
x11141:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x11145:	cmp al, 98	; 2: 60 98
x11147:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x11151:	cmp al, 111	; 2: 60 111
x11153:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x11157:	cmp al, 117	; 2: 60 117
x11159:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x11163:	cmp al, 71	; 2: 60 71
x11165:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x11169:	cmp al, 103	; 2: 60 103
x11171:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x11175:	cmp al, 69	; 2: 60 69
x11177:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x11181:	cmp al, 101	; 2: 60 101
x11183:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x11187:	cmp al, 102	; 2: 60 102
x11189:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x11193:	cmp al, 112	; 2: 60 112
x11195:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x11199:	cmp al, 110	; 2: 60 110
x11201:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x11205:	cmp al, 37	; 2: 60 37
x11207:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x11211:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x11214:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x11218:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x11220:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary2008 = arg_list - 2
x11224:	mov si, [bp + 8]	; 3: -117 118 8
x11227:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary2009 = int_to_int £temporary2008 (Signed_Int -> Pointer)

printArgument$25:	; £temporary2010 -> £temporary2009 = *£temporary2009

printArgument$26:	; £temporary2011 = int_to_int £temporary2010 -> £temporary2009 (Signed_Int -> Signed_Short_Int)
x11230:	mov ax, [si]	; 2: -117 4
x11232:	cmp ax, 0	; 3: -125 -8 0
x11235:	jge printArgument$27	; 2: 125 4
x11237:	neg ax	; 2: -9 -40
x11239:	neg al	; 2: -10 -40

printArgument$27:	; £temporary2012 = int_to_int £temporary2011 (Signed_Short_Int -> Signed_Long_Int)
x11241:	and eax, 255	; 6: 102 37 -1 0 0 0
x11247:	cmp al, 0	; 2: 60 0
x11249:	jge printArgument$28	; 2: 125 5
x11251:	neg al	; 2: -10 -40
x11253:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary2012
x11256:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x11260:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x11262:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x11266:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x11268:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary2014 = arg_list - 4
x11272:	mov si, [bp + 8]	; 3: -117 118 8
x11275:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary2015 = int_to_int £temporary2014 (Signed_Int -> Pointer)

printArgument$34:	; £temporary2016 -> £temporary2015 = *£temporary2015

printArgument$35:	; longValue = £temporary2016 -> £temporary2015
x11278:	mov eax, [si]	; 3: 102 -117 4
x11281:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x11285:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x11287:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary2018 = arg_list - 2
x11291:	mov si, [bp + 8]	; 3: -117 118 8
x11294:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary2019 = int_to_int £temporary2018 (Signed_Int -> Pointer)

printArgument$40:	; £temporary2020 -> £temporary2019 = *£temporary2019

printArgument$41:	; £temporary2021 = int_to_int £temporary2020 -> £temporary2019 (Signed_Int -> Signed_Long_Int)
x11297:	mov ax, [si]	; 2: -117 4
x11299:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x11305:	cmp ax, 0	; 3: -125 -8 0
x11308:	jge printArgument$42	; 2: 125 5
x11310:	neg ax	; 2: -9 -40
x11312:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary2021
x11315:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x11319:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x11323:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary2025 -> negativePtr = *negativePtr
x11325:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x11328:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x11333:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary2027 = 1
x11335:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x11338:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary2027 = 0
x11340:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary2025 -> negativePtr = £temporary2027
x11343:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x11345:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x11349:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x11351:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x11355:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x11359:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 109 44
x11364:	mov [bp + 50], bp	; 3: -119 110 50
x11367:	add bp, 48	; 3: -125 -59 48
x11370:	jmp labs	; 3: -23 3 5

printArgument$54:	; post call

printArgument$55:	; £temporary2030 = return_value

printArgument$56:	; longValue = £temporary2030
x11373:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x11377:	mov ax, [bp + 8]	; 3: -117 70 8
x11380:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x11383:	mov ax, [bp + 16]	; 3: -117 70 16
x11386:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary2031 = &precision
x11389:	mov si, bp	; 2: -119 -18
x11391:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary2031, offset 10
x11394:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x11397:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 -109 44
x11402:	mov [bp + 50], bp	; 3: -119 110 50
x11405:	add bp, 48	; 3: -125 -59 48
x11408:	jmp checkWidthAndPrecision	; 3: -23 -4 4

printArgument$63:	; post call

printArgument$64:	; £temporary2032 = return_value

printArgument$65:	; arg_list = £temporary2032
x11411:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x11414:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x11418:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x11422:	mov ax, [bp + 10]	; 3: -117 70 10
x11425:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x11428:	mov ax, [bp + 12]	; 3: -117 70 12
x11431:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x11434:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 -72 44
x11439:	mov [bp + 50], bp	; 3: -119 110 50
x11442:	add bp, 48	; 3: -125 -59 48
x11445:	jmp printLongInt	; 3: -23 35 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x11448:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x11451:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary2035 = arg_list - 2
x11455:	mov si, [bp + 8]	; 3: -117 118 8
x11458:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary2036 = int_to_int £temporary2035 (Signed_Int -> Pointer)

printArgument$76:	; £temporary2037 -> £temporary2036 = *£temporary2036

printArgument$77:	; £temporary2038 = int_to_int £temporary2037 -> £temporary2036 (Signed_Int -> Signed_Char)
x11461:	mov ax, [si]	; 2: -117 4
x11463:	cmp ax, 0	; 3: -125 -8 0
x11466:	jge printArgument$78	; 2: 125 4
x11468:	neg ax	; 2: -9 -40
x11470:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary2038
x11472:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x11475:	mov ax, [bp + 8]	; 3: -117 70 8
x11478:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x11481:	mov ax, [bp + 16]	; 3: -117 70 16
x11484:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary2039 = &precision
x11487:	mov si, bp	; 2: -119 -18
x11489:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary2039, offset 10
x11492:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x11495:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 -11 44
x11500:	mov [bp + 46], bp	; 3: -119 110 46
x11503:	add bp, 44	; 3: -125 -59 44
x11506:	jmp checkWidthAndPrecision	; 3: -23 -102 4

printArgument$85:	; post call

printArgument$86:	; £temporary2040 = return_value

printArgument$87:	; arg_list = £temporary2040
x11509:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x11512:	mov al, [bp + 31]	; 3: -118 70 31
x11515:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x11518:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 12 45
x11523:	mov [bp + 46], bp	; 3: -119 110 46
x11526:	add bp, 44	; 3: -125 -59 44
x11529:	jmp printChar	; 3: -23 99 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x11532:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x11535:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2043 = arg_list - 2
x11539:	mov si, [bp + 8]	; 3: -117 118 8
x11542:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2044 = int_to_int £temporary2043 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2045 -> £temporary2044 = *£temporary2044

printArgument$97:	; stringValue = £temporary2045 -> £temporary2044
x11545:	mov ax, [si]	; 2: -117 4
x11547:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x11550:	mov ax, [bp + 8]	; 3: -117 70 8
x11553:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x11556:	mov ax, [bp + 16]	; 3: -117 70 16
x11559:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2046 = &precision
x11562:	mov si, bp	; 2: -119 -18
x11564:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2046, offset 10
x11567:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x11570:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 64 45
x11575:	mov [bp + 48], bp	; 3: -119 110 48
x11578:	add bp, 46	; 3: -125 -59 46
x11581:	jmp checkWidthAndPrecision	; 3: -23 79 4

printArgument$104:	; post call

printArgument$105:	; £temporary2047 = return_value

printArgument$106:	; arg_list = £temporary2047
x11584:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x11587:	mov ax, [bp + 44]	; 3: -117 70 44
x11590:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x11593:	mov ax, [bp + 18]	; 3: -117 70 18
x11596:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x11599:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 93 45
x11604:	mov [bp + 48], bp	; 3: -119 110 48
x11607:	add bp, 46	; 3: -125 -59 46
x11610:	jmp printString	; 3: -23 -38 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x11613:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x11616:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x11620:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2063 = 10
x11622:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x11628:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x11630:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x11634:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2059 = 8
x11636:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x11642:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x11644:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x11648:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2055 = 2
x11650:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x11656:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2055 = 16
x11658:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2059 = £temporary2055

printArgument$124:	; £temporary2063 = £temporary2059

printArgument$125:	; base = £temporary2063
x11664:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x11668:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x11672:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x11674:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2065 = arg_list - 2
x11678:	mov si, [bp + 8]	; 3: -117 118 8
x11681:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2066 = int_to_int £temporary2065 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2067 -> £temporary2066 = *£temporary2066

printArgument$131:	; £temporary2068 = int_to_int £temporary2067 -> £temporary2066 (Unsigned_Int -> Unsigned_Short_Int)
x11684:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2069 = int_to_int £temporary2068 (Unsigned_Short_Int -> Unsigned_Long_Int)
x11686:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2069
x11692:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x11696:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x11698:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x11702:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x11704:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2071 = arg_list - 4
x11708:	mov si, [bp + 8]	; 3: -117 118 8
x11711:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2072 = int_to_int £temporary2071 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2073 -> £temporary2072 = *£temporary2072

printArgument$140:	; value = £temporary2073 -> £temporary2072
x11714:	mov eax, [si]	; 3: 102 -117 4
x11717:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x11721:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x11723:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2075 = arg_list - 2
x11727:	mov si, [bp + 8]	; 3: -117 118 8
x11730:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2076 = int_to_int £temporary2075 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2077 -> £temporary2076 = *£temporary2076

printArgument$146:	; £temporary2078 = int_to_int £temporary2077 -> £temporary2076 (Unsigned_Int -> Unsigned_Long_Int)
x11733:	mov ax, [si]	; 2: -117 4
x11735:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2078
x11741:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x11745:	mov ax, [bp + 8]	; 3: -117 70 8
x11748:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x11751:	mov ax, [bp + 16]	; 3: -117 70 16
x11754:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2081 = &precision
x11757:	mov si, bp	; 2: -119 -18
x11759:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2081, offset 10
x11762:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x11765:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 3 46
x11770:	mov [bp + 54], bp	; 3: -119 110 54
x11773:	add bp, 52	; 3: -125 -59 52
x11776:	jmp checkWidthAndPrecision	; 3: -23 -116 3

printArgument$154:	; post call

printArgument$155:	; £temporary2082 = return_value

printArgument$156:	; arg_list = £temporary2082
x11779:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x11782:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x11786:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x11790:	mov ax, [bp + 10]	; 3: -117 70 10
x11793:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x11796:	mov ax, [bp + 12]	; 3: -117 70 12
x11799:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x11802:	mov ax, [bp + 14]	; 3: -117 70 14
x11805:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x11808:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x11812:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2083 = int_to_int c (Signed_Char -> Signed_Int)
x11816:	mov al, [bp + 30]	; 3: -118 70 30
x11819:	and ax, 255	; 3: 37 -1 0
x11822:	cmp al, 0	; 2: 60 0
x11824:	jge printArgument$165	; 2: 125 4
x11826:	neg al	; 2: -10 -40
x11828:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2083, offset 26
x11830:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x11833:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 71 46
x11838:	mov [bp + 74], bp	; 3: -119 110 74
x11841:	add bp, 72	; 3: -125 -59 72
x11844:	jmp isupper	; 3: -23 25 -27

printArgument$167:	; post call

printArgument$168:	; £temporary2084 = return_value

printArgument$169:	; parameter £temporary2084, offset 20
x11847:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x11850:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 88 46
x11855:	mov [bp + 54], bp	; 3: -119 110 54
x11858:	add bp, 52	; 3: -125 -59 52
x11861:	jmp printUnsignedLong	; 3: -23 -49 5

printArgument$171:	; post call

printArgument$172:	; goto 359
x11864:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x11867:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x11871:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x11873:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2087 = arg_list - 8
x11877:	mov si, [bp + 8]	; 3: -117 118 8
x11880:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2088 = int_to_int £temporary2087 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2089 -> £temporary2088 = *£temporary2088

printArgument$178:	; push float £temporary2089 -> £temporary2088
x11883:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x11885:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x11888:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x11891:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x11894:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x11899:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x11904:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x11909:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x11914:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 -104 46
x11919:	mov [bp + 46], bp	; 3: -119 110 46
x11922:	add bp, 44	; 3: -125 -59 44
x11925:	jmp printLongDoublePlain	; 3: -23 58 7

printArgument$188:	; post call

printArgument$189:	; goto 196
x11928:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x11930:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2092 = arg_list - 8
x11934:	mov si, [bp + 8]	; 3: -117 118 8
x11937:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2093 = int_to_int £temporary2092 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2094 -> £temporary2093 = *£temporary2093

printArgument$194:	; push float £temporary2094 -> £temporary2093
x11940:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x11942:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x11945:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x11949:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2098 -> negativePtr = *negativePtr
x11951:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x11954:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x11957:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x11959:	fcompp	; 2: -34 -39
x11961:	fstsw ax	; 3: -101 -33 -32
x11964:	sahf	; 1: -98
x11965:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2100 = 1
x11967:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x11970:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2100 = 0
x11972:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2098 -> negativePtr = £temporary2100
x11975:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x11977:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x11981:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x11983:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x11986:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x11989:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 -29 46
x11994:	mov [bp + 46], bp	; 3: -119 110 46
x11997:	add bp, 44	; 3: -125 -59 44
x12000:	jmp fabs	; 3: -23 -106 -15

printArgument$210:	; post call

printArgument$211:	; £temporary2103 = return_value

printArgument$212:	; pop float longDoubleValue
x12003:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x12006:	mov ax, [bp + 8]	; 3: -117 70 8
x12009:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x12012:	mov ax, [bp + 16]	; 3: -117 70 16
x12015:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2104 = &precision
x12018:	mov si, bp	; 2: -119 -18
x12020:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2104, offset 10
x12023:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x12026:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 8 47
x12031:	mov [bp + 46], bp	; 3: -119 110 46
x12034:	add bp, 44	; 3: -125 -59 44
x12037:	jmp checkWidthAndPrecision	; 3: -23 -121 2

printArgument$219:	; post call

printArgument$220:	; £temporary2105 = return_value

printArgument$221:	; arg_list = £temporary2105
x12040:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x12043:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x12047:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x12049:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x12052:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x12055:	mov ax, [bp + 10]	; 3: -117 70 10
x12058:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x12061:	mov ax, [bp + 12]	; 3: -117 70 12
x12064:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x12067:	mov ax, [bp + 14]	; 3: -117 70 14
x12070:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x12073:	mov ax, [bp + 18]	; 3: -117 70 18
x12076:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x12079:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 61 47
x12084:	mov [bp + 46], bp	; 3: -119 110 46
x12087:	add bp, 44	; 3: -125 -59 44
x12090:	jmp printLongDoublePlain	; 3: -23 -107 6

printArgument$231:	; post call

printArgument$232:	; goto 359
x12093:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2108 = int_to_int c (Signed_Char -> Signed_Int)
x12096:	mov al, [bp + 30]	; 3: -118 70 30
x12099:	and ax, 255	; 3: 37 -1 0
x12102:	cmp al, 0	; 2: 60 0
x12104:	jge printArgument$235	; 2: 125 4
x12106:	neg al	; 2: -10 -40
x12108:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2108, offset 6
x12110:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x12113:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 95 47
x12118:	mov [bp + 46], bp	; 3: -119 110 46
x12121:	add bp, 44	; 3: -125 -59 44
x12124:	jmp tolower	; 3: -23 96 -29

printArgument$237:	; post call

printArgument$238:	; £temporary2109 = return_value

printArgument$239:	; if £temporary2109 != 101 goto 257
x12127:	cmp bx, 101	; 3: -125 -5 101
x12130:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x12132:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x12135:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x12138:	mov ax, [bp + 10]	; 3: -117 70 10
x12141:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x12144:	mov ax, [bp + 12]	; 3: -117 70 12
x12147:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x12150:	mov ax, [bp + 14]	; 3: -117 70 14
x12153:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x12156:	mov ax, [bp + 18]	; 3: -117 70 18
x12159:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2111 = int_to_int c (Signed_Char -> Signed_Int)
x12162:	mov al, [bp + 30]	; 3: -118 70 30
x12165:	and ax, 255	; 3: 37 -1 0
x12168:	cmp al, 0	; 2: 60 0
x12170:	jge printArgument$249	; 2: 125 4
x12172:	neg al	; 2: -10 -40
x12174:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2111, offset 28
x12176:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x12179:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 -95 47
x12184:	mov [bp + 68], bp	; 3: -119 110 68
x12187:	add bp, 66	; 3: -125 -59 66
x12190:	jmp isupper	; 3: -23 -65 -29

printArgument$251:	; post call

printArgument$252:	; £temporary2112 = return_value

printArgument$253:	; parameter £temporary2112, offset 22
x12193:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x12196:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 -78 47
x12201:	mov [bp + 46], bp	; 3: -119 110 46
x12204:	add bp, 44	; 3: -125 -59 44
x12207:	jmp printLongDoubleExpo	; 3: -23 88 7

printArgument$255:	; post call

printArgument$256:	; goto 359
x12210:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x12213:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x12216:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x12219:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 -55 47
x12224:	mov [bp + 46], bp	; 3: -119 110 46
x12227:	add bp, 44	; 3: -125 -59 44
x12230:	jmp fabs	; 3: -23 -80 -16

printArgument$262:	; post call

printArgument$263:	; £temporary2114 = return_value

printArgument$264:	; parameter £temporary2114, offset 6
x12233:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x12236:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 -38 47
x12241:	mov [bp + 46], bp	; 3: -119 110 46
x12244:	add bp, 44	; 3: -125 -59 44
x12247:	jmp log10	; 3: -23 -105 8

printArgument$266:	; post call

printArgument$267:	; £temporary2115 = return_value

printArgument$268:	; £temporary2116 = float_to_int £temporary2115 (Double -> Signed_Int)
x12250:	fistp word [container2bytes#]	; 4: -33 30 -104 29
x12254:	mov ax, [container2bytes#]	; 3: -95 -104 29

printArgument$269:	; expo = £temporary2116
x12257:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x12260:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x12264:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x12266:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x12270:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x12272:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x12275:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x12278:	mov ax, [bp + 10]	; 3: -117 70 10
x12281:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x12284:	mov ax, [bp + 12]	; 3: -117 70 12
x12287:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x12290:	mov ax, [bp + 14]	; 3: -117 70 14
x12293:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x12296:	mov ax, [bp + 18]	; 3: -117 70 18
x12299:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x12302:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 28 48
x12307:	mov [bp + 48], bp	; 3: -119 110 48
x12310:	add bp, 46	; 3: -125 -59 46
x12313:	jmp printLongDoublePlain	; 3: -23 -74 5

printArgument$280:	; post call

printArgument$281:	; goto 359
x12316:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x12319:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x12322:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x12325:	mov ax, [bp + 10]	; 3: -117 70 10
x12328:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x12331:	mov ax, [bp + 12]	; 3: -117 70 12
x12334:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x12337:	mov ax, [bp + 14]	; 3: -117 70 14
x12340:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x12343:	mov ax, [bp + 18]	; 3: -117 70 18
x12346:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2121 = int_to_int c (Signed_Char -> Signed_Int)
x12349:	mov al, [bp + 30]	; 3: -118 70 30
x12352:	and ax, 255	; 3: 37 -1 0
x12355:	cmp al, 0	; 2: 60 0
x12357:	jge printArgument$291	; 2: 125 4
x12359:	neg al	; 2: -10 -40
x12361:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2121, offset 28
x12363:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x12366:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 92 48
x12371:	mov [bp + 70], bp	; 3: -119 110 70
x12374:	add bp, 68	; 3: -125 -59 68
x12377:	jmp isupper	; 3: -23 4 -29

printArgument$293:	; post call

printArgument$294:	; £temporary2122 = return_value

printArgument$295:	; parameter £temporary2122, offset 22
x12380:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x12383:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 109 48
x12388:	mov [bp + 48], bp	; 3: -119 110 48
x12391:	add bp, 46	; 3: -125 -59 46
x12394:	jmp printLongDoubleExpo	; 3: -23 -99 6

printArgument$297:	; post call

printArgument$298:	; goto 359
x12397:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x12400:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2125 = arg_list - 2
x12404:	mov si, [bp + 8]	; 3: -117 118 8
x12407:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2126 = int_to_int £temporary2125 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2127 -> £temporary2126 = *£temporary2126

printArgument$303:	; ptrValue = £temporary2127 -> £temporary2126
x12410:	mov ax, [si]	; 2: -117 4
x12412:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x12415:	mov ax, [bp + 8]	; 3: -117 70 8
x12418:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x12421:	mov ax, [bp + 16]	; 3: -117 70 16
x12424:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2128 = &precision
x12427:	mov si, bp	; 2: -119 -18
x12429:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2128, offset 10
x12432:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x12435:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 -95 48
x12440:	mov [bp + 46], bp	; 3: -119 110 46
x12443:	add bp, 44	; 3: -125 -59 44
x12446:	jmp checkWidthAndPrecision	; 3: -23 -18 0

printArgument$310:	; post call

printArgument$311:	; £temporary2129 = return_value

printArgument$312:	; arg_list = £temporary2129
x12449:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2130 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x12452:	mov ax, [bp + 42]	; 3: -117 70 42
x12455:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2130, offset 6
x12461:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x12465:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x12470:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x12475:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x12480:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x12488:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x12493:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 -37 48
x12498:	mov [bp + 46], bp	; 3: -119 110 46
x12501:	add bp, 44	; 3: -125 -59 44
x12504:	jmp printUnsignedLong	; 3: -23 76 3

printArgument$322:	; post call

printArgument$323:	; goto 359
x12507:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x12510:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2133 = arg_list - 2
x12514:	mov si, [bp + 8]	; 3: -117 118 8
x12517:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2134 = int_to_int £temporary2133 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2135 -> £temporary2134 = *£temporary2134

printArgument$328:	; ptrValue = £temporary2135 -> £temporary2134
x12520:	mov ax, [si]	; 2: -117 4
x12522:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x12525:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2137 = arg_list - 2
x12529:	mov si, [bp + 8]	; 3: -117 118 8
x12532:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2138 = int_to_int £temporary2137 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2139 -> £temporary2138 = *£temporary2138

printArgument$333:	; intPtr = £temporary2139 -> £temporary2138
x12535:	mov ax, [si]	; 2: -117 4
x12537:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x12540:	mov ax, [bp + 8]	; 3: -117 70 8
x12543:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x12546:	mov ax, [bp + 16]	; 3: -117 70 16
x12549:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2140 = &precision
x12552:	mov si, bp	; 2: -119 -18
x12554:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2140, offset 10
x12557:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x12560:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 30 49
x12565:	mov [bp + 46], bp	; 3: -119 110 46
x12568:	add bp, 44	; 3: -125 -59 44
x12571:	nop	; 1: -112
x12572:	jmp checkWidthAndPrecision	; 2: -21 113

printArgument$340:	; post call

printArgument$341:	; £temporary2141 = return_value

printArgument$342:	; arg_list = £temporary2141
x12574:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2142 -> intPtr = *intPtr
x12577:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2142 -> intPtr = g_outChars
x12580:	mov ax, [g_outChars]	; 3: -95 90 43
x12583:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x12585:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x12587:	mov ax, [bp + 8]	; 3: -117 70 8
x12590:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x12593:	mov ax, [bp + 16]	; 3: -117 70 16
x12596:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2143 = &precision
x12599:	mov si, bp	; 2: -119 -18
x12601:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2143, offset 10
x12604:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x12607:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 77 49
x12612:	mov [bp + 46], bp	; 3: -119 110 46
x12615:	add bp, 44	; 3: -125 -59 44
x12618:	nop	; 1: -112
x12619:	jmp checkWidthAndPrecision	; 2: -21 66

printArgument$352:	; post call

printArgument$353:	; £temporary2144 = return_value

printArgument$354:	; arg_list = £temporary2144
x12621:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x12624:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x12628:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 98 49
x12633:	mov [bp + 46], bp	; 3: -119 110 46
x12636:	add bp, 44	; 3: -125 -59 44
x12639:	jmp printChar	; 3: -23 13 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x12642:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x12645:	mov ax, [bp]	; 3: -117 70 0
x12648:	mov di, [bp + 4]	; 3: -117 126 4
x12651:	mov bp, [bp + 2]	; 3: -117 110 2
x12654:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

labs:	; if value >= 0 goto 4
x12656:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12661:	jge labs$4	; 2: 125 9

labs$1:	; £temporary3394 = -value
x12663:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x12667:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary3398 = £temporary3394

labs$3:	; goto 5
x12670:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary3398 = value
x12672:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary3398

labs$6:	; return
x12676:	mov ax, [bp]	; 3: -117 70 0
x12679:	mov di, [bp + 4]	; 3: -117 126 4
x12682:	mov bp, [bp + 2]	; 3: -117 110 2
x12685:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x12687:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x12691:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary1989 -> widthPtr = *widthPtr
x12693:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary1989 -> widthPtr != -1 goto 9
x12696:	cmp word [si], -1	; 3: -125 60 -1
x12699:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary1992 -> widthPtr = *widthPtr
x12701:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x12704:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary1994 = arg_list - 2
x12708:	mov di, [bp + 6]	; 3: -117 126 6
x12711:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary1995 = int_to_int £temporary1994 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary1996 -> £temporary1995 = *£temporary1995

checkWidthAndPrecision$8:	; £temporary1992 -> widthPtr = £temporary1996 -> £temporary1995
x12714:	mov ax, [di]	; 2: -117 5
x12716:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x12718:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x12722:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary1998 -> precisionPtr = *precisionPtr
x12724:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary1998 -> precisionPtr != -1 goto 18
x12727:	cmp word [si], -1	; 3: -125 60 -1
x12730:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary2001 -> precisionPtr = *precisionPtr
x12732:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x12735:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary2003 = arg_list - 2
x12739:	mov di, [bp + 6]	; 3: -117 126 6
x12742:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary2004 = int_to_int £temporary2003 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary2005 -> £temporary2004 = *£temporary2004

checkWidthAndPrecision$17:	; £temporary2001 -> precisionPtr = £temporary2005 -> £temporary2004
x12745:	mov ax, [di]	; 2: -117 5
x12747:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x12749:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x12752:	mov ax, [bp]	; 3: -117 70 0
x12755:	mov di, [bp + 4]	; 3: -117 126 4
x12758:	mov bp, [bp + 2]	; 3: -117 110 2
x12761:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x12763:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12768:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1844 = -longValue
x12770:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x12774:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1844
x12777:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x12781:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x12785:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 -1 49
x12790:	mov [bp + 16], bp	; 3: -119 110 16
x12793:	add bp, 14	; 3: -125 -59 14
x12796:	nop	; 1: -112
x12797:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x12799:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x12801:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x12805:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x12807:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x12811:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 25 50
x12816:	mov [bp + 16], bp	; 3: -119 110 16
x12819:	add bp, 14	; 3: -125 -59 14
x12822:	nop	; 1: -112
x12823:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x12825:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x12827:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x12831:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x12833:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x12837:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 51 50
x12842:	mov [bp + 16], bp	; 3: -119 110 16
x12845:	add bp, 14	; 3: -125 -59 14
x12848:	nop	; 1: -112
x12849:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x12851:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x12856:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x12858:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x12862:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 76 50
x12867:	mov [bp + 16], bp	; 3: -119 110 16
x12870:	add bp, 14	; 3: -125 -59 14
x12873:	nop	; 1: -112
x12874:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x12876:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x12878:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x12882:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x12886:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 100 50
x12891:	mov [bp + 16], bp	; 3: -119 110 16
x12894:	add bp, 14	; 3: -125 -59 14
x12897:	nop	; 1: -112
x12898:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x12900:	mov ax, [bp]	; 3: -117 70 0
x12903:	mov di, [bp + 4]	; 3: -117 126 4
x12906:	mov bp, [bp + 2]	; 3: -117 110 2
x12909:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x12911:	mov ax, [g_outStatus]	; 3: -95 -12 37
x12914:	cmp ax, 0	; 3: -125 -8 0
x12917:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x12919:	cmp ax, 1	; 3: -125 -8 1
x12922:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x12924:	cmp ax, 2	; 3: -125 -8 2
x12927:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x12929:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1786 = int_to_int g_outDevice (Pointer -> Pointer)
x12931:	mov ax, [g_outDevice]	; 3: -95 -10 37

printChar$6:	; stream = £temporary1786
x12934:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x12937:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1789 -> stream = *stream, offset 2
x12939:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1789 -> stream
x12942:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x12945:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1792 = &c
x12948:	mov dx, bp	; 2: -119 -22
x12950:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1792

printChar$13:	; interrupt 33
x12953:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x12955:	inc word [g_outChars]	; 4: -1 6 90 43

printChar$15:	; goto 25
x12959:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1794 = int_to_int g_outDevice (Pointer -> Pointer)
x12961:	mov ax, [g_outDevice]	; 3: -95 -10 37

printChar$17:	; outString = £temporary1794
x12964:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1795 = g_outChars
x12967:	mov ax, [g_outChars]	; 3: -95 90 43

printChar$19:	; ++g_outChars
x12970:	inc word [g_outChars]	; 4: -1 6 90 43

printChar$20:	; £temporary1797 = outString + £temporary1795
x12974:	mov si, [bp + 9]	; 3: -117 118 9
x12977:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1796 -> £temporary1797 = *£temporary1797

printChar$22:	; £temporary1796 -> £temporary1797 = c
x12979:	mov al, [bp + 6]	; 3: -118 70 6
x12982:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x12984:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x12986:	inc word [g_outChars]	; 4: -1 6 90 43

printChar$25:	; return
x12990:	mov ax, [bp]	; 3: -117 70 0
x12993:	mov di, [bp + 4]	; 3: -117 126 4
x12996:	mov bp, [bp + 2]	; 3: -117 110 2
x12999:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x13001:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x13006:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1834 = longValue % 10
x13008:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x13012:	xor edx, edx	; 3: 102 49 -46
x13015:	idiv dword [int4$10#]	; 5: 102 -9 62 51 51

printLongIntRec$2:	; £temporary1835 = int_to_int £temporary1834 (Signed_Long_Int -> Signed_Int)
x13020:	cmp edx, 0	; 4: 102 -125 -6 0
x13024:	jge printLongIntRec$3	; 2: 125 5
x13026:	neg edx	; 3: 102 -9 -38
x13029:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1835
x13031:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1836 = longValue / 10
x13034:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x13038:	xor edx, edx	; 3: 102 49 -46
x13041:	idiv dword [int4$10#]	; 5: 102 -9 62 51 51

printLongIntRec$6:	; parameter £temporary1836, offset 6
x13046:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x13050:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 8 51
x13055:	mov [bp + 14], bp	; 3: -119 110 14
x13058:	add bp, 12	; 3: -125 -59 12
x13061:	nop	; 1: -112
x13062:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1838 = digit + 48
x13064:	mov ax, [bp + 10]	; 3: -117 70 10
x13067:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1839 = int_to_int £temporary1838 (Signed_Int -> Signed_Char)
x13070:	cmp ax, 0	; 3: -125 -8 0
x13073:	jge printLongIntRec$12	; 2: 125 4
x13075:	neg ax	; 2: -9 -40
x13077:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1839, offset 6
x13079:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x13082:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 40 51
x13087:	mov [bp + 14], bp	; 3: -119 110 14
x13090:	add bp, 12	; 3: -125 -59 12
x13093:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x13096:	mov ax, [bp]	; 3: -117 70 0
x13099:	mov di, [bp + 4]	; 3: -117 126 4
x13102:	mov bp, [bp + 2]	; 3: -117 110 2
x13105:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x13107:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x13111:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x13115:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x13117:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x13121:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x13123:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1803 = s + index
x13128:	mov si, [bp + 6]	; 3: -117 118 6
x13131:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1802 -> £temporary1803 = *£temporary1803

printString$5:	; if £temporary1802 -> £temporary1803 == 0 goto 53
x13134:	cmp byte [si], 0	; 3: -128 60 0
x13137:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1807 = s + index
x13141:	mov si, [bp + 6]	; 3: -117 118 6
x13144:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1806 -> £temporary1807 = *£temporary1807

printString$9:	; parameter £temporary1806 -> £temporary1807, offset 6
x13147:	mov al, [si]	; 2: -118 4
x13149:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x13152:	mov word [bp + 12], printString$11	; 5: -57 70 12 110 51
x13157:	mov [bp + 14], bp	; 3: -119 110 14
x13160:	add bp, 12	; 3: -125 -59 12
x13163:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x13166:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x13169:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x13171:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1809 = precision
x13176:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x13179:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1809 <= 0 goto 53
x13182:	cmp ax, 0	; 3: -125 -8 0
x13185:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1812 = s + index
x13189:	mov si, [bp + 6]	; 3: -117 118 6
x13192:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1811 -> £temporary1812 = *£temporary1812

printString$20:	; if £temporary1811 -> £temporary1812 == 0 goto 53
x13195:	cmp byte [si], 0	; 3: -128 60 0
x13198:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1817 = s + index
x13202:	mov si, [bp + 6]	; 3: -117 118 6
x13205:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1816 -> £temporary1817 = *£temporary1817

printString$24:	; parameter £temporary1816 -> £temporary1817, offset 6
x13208:	mov al, [si]	; 2: -118 4
x13210:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x13213:	mov word [bp + 12], printString$26	; 5: -57 70 12 -85 51
x13218:	mov [bp + 14], bp	; 3: -119 110 14
x13221:	add bp, 12	; 3: -125 -59 12
x13224:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x13227:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x13230:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x13232:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x13236:	mov word [bp + 10], printString$32	; 5: -57 70 10 -62 51
x13241:	mov [bp + 12], bp	; 3: -119 110 12
x13244:	add bp, 10	; 3: -125 -59 10
x13247:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x13250:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x13254:	mov word [bp + 10], printString$36	; 5: -57 70 10 -44 51
x13259:	mov [bp + 12], bp	; 3: -119 110 12
x13262:	add bp, 10	; 3: -125 -59 10
x13265:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x13268:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x13272:	mov word [bp + 10], printString$40	; 5: -57 70 10 -26 51
x13277:	mov [bp + 12], bp	; 3: -119 110 12
x13280:	add bp, 10	; 3: -125 -59 10
x13283:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x13286:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x13290:	mov word [bp + 10], printString$44	; 5: -57 70 10 -8 51
x13295:	mov [bp + 12], bp	; 3: -119 110 12
x13298:	add bp, 10	; 3: -125 -59 10
x13301:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x13304:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x13308:	mov word [bp + 10], printString$48	; 5: -57 70 10 10 52
x13313:	mov [bp + 12], bp	; 3: -119 110 12
x13316:	add bp, 10	; 3: -125 -59 10
x13319:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x13322:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x13326:	mov word [bp + 10], printString$52	; 5: -57 70 10 28 52
x13331:	mov [bp + 12], bp	; 3: -119 110 12
x13334:	add bp, 10	; 3: -125 -59 10
x13337:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x13340:	mov ax, [bp]	; 3: -117 70 0
x13343:	mov di, [bp + 4]	; 3: -117 126 4
x13346:	mov bp, [bp + 2]	; 3: -117 110 2
x13349:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

printUnsignedLong:	; if plus == 0 goto 5
x13351:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x13355:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x13357:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x13361:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 63 52
x13366:	mov [bp + 24], bp	; 3: -119 110 24
x13369:	add bp, 22	; 3: -125 -59 22
x13372:	jmp printChar	; 3: -23 48 -2

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x13375:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x13379:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x13381:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x13385:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 87 52
x13390:	mov [bp + 24], bp	; 3: -119 110 24
x13393:	add bp, 22	; 3: -125 -59 22
x13396:	jmp printChar	; 3: -23 24 -2

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x13399:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x13403:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x13405:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x13410:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x13412:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x13416:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 118 52
x13421:	mov [bp + 24], bp	; 3: -119 110 24
x13424:	add bp, 22	; 3: -125 -59 22
x13427:	jmp printChar	; 3: -23 -7 -3

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x13430:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x13435:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x13437:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x13441:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 -113 52
x13446:	mov [bp + 24], bp	; 3: -119 110 24
x13449:	add bp, 22	; 3: -125 -59 22
x13452:	jmp printChar	; 3: -23 -32 -3

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x13455:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x13459:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1893 = 88
x13461:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x13463:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1893 = 120
x13465:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1893, offset 6
x13467:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x13470:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 -84 52
x13475:	mov [bp + 24], bp	; 3: -119 110 24
x13478:	add bp, 22	; 3: -125 -59 22
x13481:	jmp printChar	; 3: -23 -61 -3

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x13484:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x13489:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x13491:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x13495:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 -59 52
x13500:	mov [bp + 24], bp	; 3: -119 110 24
x13503:	add bp, 22	; 3: -125 -59 22
x13506:	jmp printChar	; 3: -23 -86 -3

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x13509:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x13511:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x13515:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x13519:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x13523:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x13527:	mov ax, [bp + 20]	; 3: -117 70 20
x13530:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x13533:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 -21 52
x13538:	mov [bp + 24], bp	; 3: -119 110 24
x13541:	add bp, 22	; 3: -125 -59 22
x13544:	nop	; 1: -112
x13545:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x13547:	mov ax, [bp]	; 3: -117 70 0
x13550:	mov di, [bp + 4]	; 3: -117 126 4
x13553:	mov bp, [bp + 2]	; 3: -117 110 2
x13556:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x13558:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x13563:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1869 = unsignedValue % base
x13565:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x13569:	xor edx, edx	; 3: 102 49 -46
x13572:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1870 = int_to_int £temporary1869 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1870
x13576:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1871 = unsignedValue / base
x13579:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x13583:	xor edx, edx	; 3: 102 49 -46
x13586:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1871, offset 6
x13590:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x13594:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x13598:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x13602:	mov ax, [bp + 14]	; 3: -117 70 14
x13605:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x13608:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 54 53
x13613:	mov [bp + 20], bp	; 3: -119 110 20
x13616:	add bp, 18	; 3: -125 -59 18
x13619:	nop	; 1: -112
x13620:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x13622:	mov ax, [bp + 16]	; 3: -117 70 16
x13625:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x13628:	mov ax, [bp + 14]	; 3: -117 70 14
x13631:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x13634:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 80 53
x13639:	mov [bp + 20], bp	; 3: -119 110 20
x13642:	add bp, 18	; 3: -125 -59 18
x13645:	nop	; 1: -112
x13646:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1873 = return_value

printUnsignedLongRec$17:	; c = £temporary1873
x13648:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x13651:	mov al, [bp + 18]	; 3: -118 70 18
x13654:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x13657:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 103 53
x13662:	mov [bp + 21], bp	; 3: -119 110 21
x13665:	add bp, 19	; 3: -125 -59 19
x13668:	jmp printChar	; 3: -23 8 -3

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x13671:	mov ax, [bp]	; 3: -117 70 0
x13674:	mov di, [bp + 4]	; 3: -117 126 4
x13677:	mov bp, [bp + 2]	; 3: -117 110 2
x13680:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x13682:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x13686:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1859 = digit + 48
x13688:	mov bx, [bp + 6]	; 3: -117 94 6
x13691:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1860 = int_to_int £temporary1859 (Signed_Int -> Signed_Char)
x13694:	cmp bx, 0	; 3: -125 -5 0
x13697:	jge digitToChar$3	; 2: 125 4
x13699:	neg bx	; 2: -9 -37
x13701:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1860

digitToChar$4:	; return
x13703:	mov ax, [bp]	; 3: -117 70 0
x13706:	mov di, [bp + 4]	; 3: -117 126 4
x13709:	mov bp, [bp + 2]	; 3: -117 110 2
x13712:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x13714:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x13718:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1861 = digit - 10
x13720:	mov bx, [bp + 6]	; 3: -117 94 6
x13723:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1862 = £temporary1861 + 65
x13726:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1863 = int_to_int £temporary1862 (Signed_Int -> Signed_Char)
x13729:	cmp bx, 0	; 3: -125 -5 0
x13732:	jge digitToChar$9	; 2: 125 4
x13734:	neg bx	; 2: -9 -37
x13736:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1863

digitToChar$10:	; return
x13738:	mov ax, [bp]	; 3: -117 70 0
x13741:	mov di, [bp + 4]	; 3: -117 126 4
x13744:	mov bp, [bp + 2]	; 3: -117 110 2
x13747:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1864 = digit - 10
x13749:	mov bx, [bp + 6]	; 3: -117 94 6
x13752:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1865 = £temporary1864 + 97
x13755:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1866 = int_to_int £temporary1865 (Signed_Int -> Signed_Char)
x13758:	cmp bx, 0	; 3: -125 -5 0
x13761:	jge digitToChar$14	; 2: 125 4
x13763:	neg bx	; 2: -9 -37
x13765:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1866

digitToChar$15:	; return
x13767:	mov ax, [bp]	; 3: -117 70 0
x13770:	mov di, [bp + 4]	; 3: -117 126 4
x13773:	mov bp, [bp + 2]	; 3: -117 110 2
x13776:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x13778:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x13781:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x13783:	fcompp	; 2: -34 -39
x13785:	fstsw ax	; 3: -101 -33 -32
x13788:	sahf	; 1: -98
x13789:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x13791:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x13795:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 -15 53
x13800:	mov [bp + 24], bp	; 3: -119 110 24
x13803:	add bp, 22	; 3: -125 -59 22
x13806:	jmp printChar	; 3: -23 126 -4

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x13809:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1929 = -longDoubleValue
x13812:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x13814:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x13817:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x13822:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x13827:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1930 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x13830:	fistp dword [container4bytes#]	; 4: -37 30 -102 29
x13834:	mov eax, [container4bytes#]	; 4: 102 -95 -102 29

printLongDoublePlain$14:	; longValue = £temporary1930
x13838:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x13842:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x13846:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x13850:	mov ax, [bp + 14]	; 3: -117 70 14
x13853:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x13856:	mov ax, [bp + 16]	; 3: -117 70 16
x13859:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x13862:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 52 54
x13867:	mov [bp + 28], bp	; 3: -119 110 28
x13870:	add bp, 26	; 3: -125 -59 26
x13873:	jmp printLongInt	; 3: -23 -89 -5

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x13876:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1932 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x13879:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1933 = longDoubleValue - £temporary1932
x13882:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x13884:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x13887:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x13890:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x13893:	mov ax, [bp + 18]	; 3: -117 70 18
x13896:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x13899:	mov ax, [bp + 20]	; 3: -117 70 20
x13902:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x13905:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 95 54
x13910:	mov [bp + 28], bp	; 3: -119 110 28
x13913:	add bp, 26	; 3: -125 -59 26
x13916:	nop	; 1: -112
x13917:	jmp printLongDoubleFraction	; 2: -21 11

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x13919:	mov ax, [bp]	; 3: -117 70 0
x13922:	mov di, [bp + 4]	; 3: -117 126 4
x13925:	mov bp, [bp + 2]	; 3: -117 110 2
x13928:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

printLongDoubleFraction:	; push float longDoubleValue
x13930:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x13933:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1908 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x13936:	fistp dword [container4bytes#]	; 4: -37 30 -102 29
x13940:	mov eax, [container4bytes#]	; 4: 102 -95 -102 29

printLongDoubleFraction$3:	; £temporary1909 = int_to_float £temporary1908 (Signed_Long_Int -> Long_Double)
x13944:	mov [container4bytes#], eax	; 4: 102 -93 -102 29
x13948:	fild dword [container4bytes#]	; 4: -37 6 -102 29

printLongDoubleFraction$4:	; £temporary1910 = longDoubleValue - £temporary1909
x13952:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x13954:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x13957:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x13961:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 6
x13963:	mov word [bp + 16], 6	; 5: -57 70 16 6 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x13968:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x13972:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x13974:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x13978:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x13980:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x13984:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 -82 54
x13989:	mov [bp + 20], bp	; 3: -119 110 20
x13992:	add bp, 18	; 3: -125 -59 18
x13995:	jmp printChar	; 3: -23 -63 -5

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1916 = precision
x13998:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x14001:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1916 <= 0 goto 35
x14004:	cmp ax, 0	; 3: -125 -8 0
x14007:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; push float 10.0
x14009:	fld qword [float8$10.0#]	; 4: -35 6 -112 29

printLongDoubleFraction$18:	; push float longDoubleValue
x14013:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1918 = 10.0 * longDoubleValue
x14016:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; pop float longDoubleValue10
x14018:	fstp qword [bp + 18]	; 3: -35 94 18

printLongDoubleFraction$21:	; push float longDoubleValue10
x14021:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$22:	; £temporary1919 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x14024:	fistp word [container2bytes#]	; 4: -33 30 -104 29
x14028:	mov ax, [container2bytes#]	; 3: -95 -104 29

printLongDoubleFraction$23:	; digitValue = £temporary1919
x14031:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$24:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$25:	; £temporary1920 = digitValue + 48
x14034:	mov ax, [bp + 26]	; 3: -117 70 26
x14037:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$26:	; £temporary1921 = int_to_int £temporary1920 (Signed_Int -> Signed_Char)
x14040:	cmp ax, 0	; 3: -125 -8 0
x14043:	jge printLongDoubleFraction$27	; 2: 125 4
x14045:	neg ax	; 2: -9 -40
x14047:	neg al	; 2: -10 -40

printLongDoubleFraction$27:	; parameter £temporary1921, offset 6
x14049:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$28:	; call function noellipse-noellipse printChar
x14052:	mov word [bp + 28], printLongDoubleFraction$29	; 5: -57 70 28 -14 54
x14057:	mov [bp + 30], bp	; 3: -119 110 30
x14060:	add bp, 28	; 3: -125 -59 28
x14063:	jmp printChar	; 3: -23 125 -5

printLongDoubleFraction$29:	; post call

printLongDoubleFraction$30:	; push float longDoubleValue10
x14066:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$31:	; £temporary1923 = int_to_float digitValue (Signed_Int -> Long_Double)
x14069:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$32:	; £temporary1924 = longDoubleValue10 - £temporary1923
x14072:	fsub	; 2: -34 -23

printLongDoubleFraction$33:	; pop float longDoubleValue
x14074:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$34:	; goto 14
x14077:	jmp printLongDoubleFraction$14	; 2: -21 -81

printLongDoubleFraction$35:	; return
x14079:	mov ax, [bp]	; 3: -117 70 0
x14082:	mov di, [bp + 4]	; 3: -117 126 4
x14085:	mov bp, [bp + 2]	; 3: -117 110 2
x14088:	jmp ax	; 2: -1 -32

printLongDoubleFraction$36:	; function end printLongDoubleFraction

printLongDoubleExpo:	; push float value
x14090:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x14093:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x14095:	fcompp	; 2: -34 -39
x14097:	fstsw ax	; 3: -101 -33 -32
x14100:	sahf	; 1: -98
x14101:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x14103:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x14107:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 41 55
x14112:	mov [bp + 26], bp	; 3: -119 110 26
x14115:	add bp, 24	; 3: -125 -59 24
x14118:	jmp printChar	; 3: -23 70 -5

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x14121:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x14123:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x14126:	mov ax, [bp + 20]	; 3: -117 70 20
x14129:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x14132:	mov ax, [bp + 18]	; 3: -117 70 18
x14135:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x14138:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 72 55
x14143:	mov [bp + 26], bp	; 3: -119 110 26
x14146:	add bp, 24	; 3: -125 -59 24
x14149:	jmp printLongDoubleFraction	; 3: -23 34 -1

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x14152:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x14156:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary1949 = 69
x14158:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x14160:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary1949 = 101
x14162:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary1949, offset 6
x14164:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x14167:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 101 55
x14172:	mov [bp + 26], bp	; 3: -119 110 26
x14175:	add bp, 24	; 3: -125 -59 24
x14178:	jmp printChar	; 3: -23 10 -5

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x14181:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x14185:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 119 55
x14190:	mov [bp + 26], bp	; 3: -119 110 26
x14193:	add bp, 24	; 3: -125 -59 24
x14196:	jmp printChar	; 3: -23 -8 -6

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x14199:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x14202:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x14205:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x14207:	fcompp	; 2: -34 -39
x14209:	fstsw ax	; 3: -101 -33 -32
x14212:	sahf	; 1: -98
x14213:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x14215:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x14219:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 -103 55
x14224:	mov [bp + 26], bp	; 3: -119 110 26
x14227:	add bp, 24	; 3: -125 -59 24
x14230:	jmp printChar	; 3: -23 -42 -6

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x14233:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary1954 = -value
x14236:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x14238:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x14241:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x14244:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x14247:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 -75 55
x14252:	mov [bp + 26], bp	; 3: -119 110 26
x14255:	add bp, 24	; 3: -125 -59 24
x14258:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary1955 = return_value

printLongDoubleExpo$43:	; £temporary1956 = float_to_int £temporary1955 (Double -> Signed_Int)
x14261:	fistp word [container2bytes#]	; 4: -33 30 -104 29
x14265:	mov ax, [container2bytes#]	; 3: -95 -104 29

printLongDoubleExpo$44:	; expo = £temporary1956
x14268:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x14271:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x14274:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x14277:	fld qword [float8$10.0#]	; 4: -35 6 -112 29

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x14281:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary1957 = int_to_float expo (Signed_Int -> Double)
x14284:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary1957, offset 14
x14287:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x14290:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 -32 55
x14295:	mov [bp + 36], bp	; 3: -119 110 36
x14298:	add bp, 34	; 3: -125 -59 34
x14301:	jmp pow	; 3: -23 -66 -27

printLongDoubleExpo$52:	; post call
x14304:	fstp qword [bp + 34]	; 3: -35 94 34
x14307:	fld qword [bp + 26]	; 3: -35 70 26
x14310:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary1958 = return_value

printLongDoubleExpo$54:	; £temporary1959 = value / £temporary1958
x14313:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x14315:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x14318:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x14321:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x14324:	mov ax, [bp + 14]	; 3: -117 70 14
x14327:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x14330:	mov ax, [bp + 16]	; 3: -117 70 16
x14333:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x14336:	mov ax, [bp + 18]	; 3: -117 70 18
x14339:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x14342:	mov ax, [bp + 20]	; 3: -117 70 20
x14345:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x14348:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 26 56
x14353:	mov [bp + 28], bp	; 3: -119 110 28
x14356:	add bp, 26	; 3: -125 -59 26
x14359:	jmp printLongDoublePlain	; 3: -23 -72 -3

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x14362:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x14366:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary1965 = 69
x14368:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x14370:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary1965 = 101
x14372:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary1965, offset 6
x14374:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x14377:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 55 56
x14382:	mov [bp + 28], bp	; 3: -119 110 28
x14385:	add bp, 26	; 3: -125 -59 26
x14388:	jmp printChar	; 3: -23 56 -6

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary1967 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x14391:	mov ax, [bp + 24]	; 3: -117 70 24
x14394:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x14400:	cmp ax, 0	; 3: -125 -8 0
x14403:	jge printLongDoubleExpo$75	; 2: 125 5
x14405:	neg ax	; 2: -9 -40
x14407:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary1967, offset 6
x14410:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x14414:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x14419:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x14424:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 102 56
x14429:	mov [bp + 28], bp	; 3: -119 110 28
x14432:	add bp, 26	; 3: -125 -59 26
x14435:	jmp printLongInt	; 3: -23 117 -7

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x14438:	mov ax, [bp]	; 3: -117 70 0
x14441:	mov di, [bp + 4]	; 3: -117 126 4
x14444:	mov bp, [bp + 2]	; 3: -117 110 2
x14447:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; call header integral zero 0 stack zero 0

log10$1:	; push float x
x14449:	fld qword [bp + 6]	; 3: -35 70 6

log10$2:	; parameter x, offset 6
x14452:	fstp qword [bp + 20]	; 3: -35 94 20

log10$3:	; call function noellipse-noellipse log
x14455:	mov word [bp + 14], log10$4	; 5: -57 70 14 -123 56
x14460:	mov [bp + 16], bp	; 3: -119 110 16
x14463:	add bp, 14	; 3: -125 -59 14
x14466:	jmp log	; 3: -23 -60 -26

log10$4:	; post call

log10$5:	; £temporary550 = return_value

log10$6:	; push float 2.30
x14469:	fld qword [float8$2.30#]	; 4: -35 6 -106 56

log10$7:	; £temporary551 = £temporary550 / 2.30
x14473:	fdiv	; 2: -34 -7

log10$8:	; return_value = £temporary551

log10$9:	; return
x14475:	mov ax, [bp]	; 3: -117 70 0
x14478:	mov di, [bp + 4]	; 3: -117 126 4
x14481:	mov bp, [bp + 2]	; 3: -117 110 2
x14484:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$2.30#:
x14486:	dq 2.30	; 8: 102 102 102 102 102 102 2 64

getenv:	; return_value = 0
x14494:	mov bx, 0	; 3: -69 0 0

getenv$1:	; return
x14497:	mov ax, [bp]	; 3: -117 70 0
x14500:	mov di, [bp + 4]	; 3: -117 126 4
x14503:	mov bp, [bp + 2]	; 3: -117 110 2
x14506:	jmp ax	; 2: -1 -32

getenv$2:	; function end getenv

system:	; return_value = -1
x14508:	mov bx, -1	; 3: -69 -1 -1

system$1:	; return
x14511:	mov ax, [bp]	; 3: -117 70 0
x14514:	mov di, [bp + 4]	; 3: -117 126 4
x14517:	mov bp, [bp + 2]	; 3: -117 110 2
x14520:	jmp ax	; 2: -1 -32

system$2:	; function end system

_abs:	; if value >= 0 goto 4
x14522:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x14526:	jge _abs$4	; 2: 125 7

_abs$1:	; £temporary3388 = -value
x14528:	mov bx, [bp + 6]	; 3: -117 94 6
x14531:	neg bx	; 2: -9 -37

_abs$2:	; £temporary3392 = £temporary3388

_abs$3:	; goto 5
x14533:	jmp _abs$5	; 2: -21 3

_abs$4:	; £temporary3392 = value
x14535:	mov bx, [bp + 6]	; 3: -117 94 6

_abs$5:	; return_value = £temporary3392

_abs$6:	; return
x14538:	mov ax, [bp]	; 3: -117 70 0
x14541:	mov di, [bp + 4]	; 3: -117 126 4
x14544:	mov bp, [bp + 2]	; 3: -117 110 2
x14547:	jmp ax	; 2: -1 -32

_abs$7:	; function end _abs

div:	; result$quot = 0
x14549:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

div$1:	; result$rem = 0
x14554:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

div$2:	; if denum != 0 goto 6
x14559:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x14563:	jne div$6	; 2: 117 22

div$3:	; errno = 6
x14565:	mov word [errno], 6	; 6: -57 6 71 31 6 0

div$4:	; return_value = result
x14571:	mov bx, bp	; 2: -119 -21
x14573:	add bx, 10	; 3: -125 -61 10

div$5:	; return
x14576:	mov ax, [bp]	; 3: -117 70 0
x14579:	mov di, [bp + 4]	; 3: -117 126 4
x14582:	mov bp, [bp + 2]	; 3: -117 110 2
x14585:	jmp ax	; 2: -1 -32

div$6:	; result$quot = num / denum
x14587:	mov ax, [bp + 6]	; 3: -117 70 6
x14590:	xor dx, dx	; 2: 49 -46
x14592:	idiv word [bp + 8]	; 3: -9 126 8
x14595:	mov [bp + 10], ax	; 3: -119 70 10

div$7:	; result$rem = num % denum
x14598:	mov ax, [bp + 6]	; 3: -117 70 6
x14601:	xor dx, dx	; 2: 49 -46
x14603:	idiv word [bp + 8]	; 3: -9 126 8
x14606:	mov [bp + 12], dx	; 3: -119 86 12

div$8:	; return_value = result
x14609:	mov bx, bp	; 2: -119 -21
x14611:	add bx, 10	; 3: -125 -61 10

div$9:	; return
x14614:	mov ax, [bp]	; 3: -117 70 0
x14617:	mov di, [bp + 4]	; 3: -117 126 4
x14620:	mov bp, [bp + 2]	; 3: -117 110 2
x14623:	jmp ax	; 2: -1 -32

div$10:	; function end div

print_div:	; call header integral zero 0 stack zero 0

print_div$1:	; parameter string_div_t20quot2025i20rem2025i0A#, offset 6
x14625:	mov word [bp + 16], string_div_t20quot2025i20rem2025i0A#	; 5: -57 70 16 91 57

print_div$2:	; parameter d$quot, offset 8
x14630:	mov ax, [bp + 6]	; 3: -117 70 6
x14633:	mov [bp + 18], ax	; 3: -119 70 18

print_div$3:	; parameter d$rem, offset 10
x14636:	mov ax, [bp + 8]	; 3: -117 70 8
x14639:	mov [bp + 20], ax	; 3: -119 70 20

print_div$4:	; call function noellipse-ellipse printf, extra 0
x14642:	mov word [bp + 10], print_div$5	; 5: -57 70 10 69 57
x14647:	mov [bp + 12], bp	; 3: -119 110 12
x14650:	add bp, 10	; 3: -125 -59 10
x14653:	mov di, bp	; 2: -119 -17
x14655:	add di, 4	; 3: -125 -57 4
x14658:	jmp printf	; 3: -23 -40 -23

print_div$5:	; post call

print_div$6:	; ++d$quot
x14661:	inc word [bp + 6]	; 3: -1 70 6

print_div$7:	; ++d$rem
x14664:	inc word [bp + 8]	; 3: -1 70 8

print_div$8:	; return_value = d
x14667:	mov bx, bp	; 2: -119 -21
x14669:	add bx, 6	; 3: -125 -61 6

print_div$9:	; return
x14672:	mov ax, [bp]	; 3: -117 70 0
x14675:	mov di, [bp + 4]	; 3: -117 126 4
x14678:	mov bp, [bp + 2]	; 3: -117 110 2
x14681:	jmp ax	; 2: -1 -32

print_div$10:	; function end print_div

string_div_t20quot2025i20rem2025i0A#:
x14683:	db "div_t quot %i rem %i", 10, 0	; 22: 100 105 118 95 116 32 113 117 111 116 32 37 105 32 114 101 109 32 37 105 10 0

ldiv:	; result$quot = 0
x14705:	mov dword [bp + 14], 0	; 8: 102 -57 70 14 0 0 0 0

ldiv$1:	; result$rem = 0
x14713:	mov dword [bp + 18], 0	; 8: 102 -57 70 18 0 0 0 0

ldiv$2:	; if denum != 0 goto 6
x14721:	cmp dword [bp + 10], 0	; 5: 102 -125 126 10 0
x14726:	jne ldiv$6	; 2: 117 22

ldiv$3:	; errno = 6
x14728:	mov word [errno], 6	; 6: -57 6 71 31 6 0

ldiv$4:	; return_value = result
x14734:	mov bx, bp	; 2: -119 -21
x14736:	add bx, 14	; 3: -125 -61 14

ldiv$5:	; return
x14739:	mov ax, [bp]	; 3: -117 70 0
x14742:	mov di, [bp + 4]	; 3: -117 126 4
x14745:	mov bp, [bp + 2]	; 3: -117 110 2
x14748:	jmp ax	; 2: -1 -32

ldiv$6:	; result$quot = num / denum
x14750:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x14754:	xor edx, edx	; 3: 102 49 -46
x14757:	idiv dword [bp + 10]	; 4: 102 -9 126 10
x14761:	mov [bp + 14], eax	; 4: 102 -119 70 14

ldiv$7:	; result$rem = num % denum
x14765:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x14769:	xor edx, edx	; 3: 102 49 -46
x14772:	idiv dword [bp + 10]	; 4: 102 -9 126 10
x14776:	mov [bp + 18], edx	; 4: 102 -119 86 18

ldiv$8:	; return_value = result
x14780:	mov bx, bp	; 2: -119 -21
x14782:	add bx, 14	; 3: -125 -61 14

ldiv$9:	; return
x14785:	mov ax, [bp]	; 3: -117 70 0
x14788:	mov di, [bp + 4]	; 3: -117 126 4
x14791:	mov bp, [bp + 2]	; 3: -117 110 2
x14794:	jmp ax	; 2: -1 -32

ldiv$10:	; function end ldiv

print_ldiv:	; call header integral zero 0 stack zero 0

print_ldiv$1:	; parameter string_ldiv_t20quot2025li20rem2025li0A#, offset 6
x14796:	mov word [bp + 20], string_ldiv_t20quot2025li20rem2025li0A#	; 5: -57 70 20 12 58

print_ldiv$2:	; parameter ld$quot, offset 8
x14801:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x14805:	mov [bp + 22], eax	; 4: 102 -119 70 22

print_ldiv$3:	; parameter ld$rem, offset 12
x14809:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x14813:	mov [bp + 26], eax	; 4: 102 -119 70 26

print_ldiv$4:	; call function noellipse-ellipse printf, extra 0
x14817:	mov word [bp + 14], print_ldiv$5	; 5: -57 70 14 -12 57
x14822:	mov [bp + 16], bp	; 3: -119 110 16
x14825:	add bp, 14	; 3: -125 -59 14
x14828:	mov di, bp	; 2: -119 -17
x14830:	add di, 8	; 3: -125 -57 8
x14833:	jmp printf	; 3: -23 41 -23

print_ldiv$5:	; post call

print_ldiv$6:	; --ld$quot
x14836:	dec dword [bp + 6]	; 4: 102 -1 78 6

print_ldiv$7:	; --ld$rem
x14840:	dec dword [bp + 10]	; 4: 102 -1 78 10

print_ldiv$8:	; return_value = ld
x14844:	mov bx, bp	; 2: -119 -21
x14846:	add bx, 6	; 3: -125 -61 6

print_ldiv$9:	; return
x14849:	mov ax, [bp]	; 3: -117 70 0
x14852:	mov di, [bp + 4]	; 3: -117 126 4
x14855:	mov bp, [bp + 2]	; 3: -117 110 2
x14858:	jmp ax	; 2: -1 -32

print_ldiv$10:	; function end print_ldiv

string_ldiv_t20quot2025li20rem2025li0A#:
x14860:	db "ldiv_t quot %li rem %li", 10, 0	; 25: 108 100 105 118 95 116 32 113 117 111 116 32 37 108 105 32 114 101 109 32 37 108 105 10 0

qsort:	; £temporary3366 = int_to_int valueList (Pointer -> Pointer)
x14885:	mov ax, [bp + 6]	; 3: -117 70 6

qsort$1:	; charList = £temporary3366
x14888:	mov [bp + 14], ax	; 3: -119 70 14

qsort$2:	; size = listSize - 1
x14891:	mov ax, [bp + 8]	; 3: -117 70 8
x14894:	dec ax	; 1: 72
x14895:	mov [bp + 16], ax	; 3: -119 70 16

qsort$3:	; if size <= 0 goto 31
x14898:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x14902:	jle qsort$31	; 4: 15 -114 -118 0

qsort$4:	; update = 0
x14906:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

qsort$5:	; index = 0
x14911:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

qsort$6:	; if index >= size goto 28
x14916:	mov ax, [bp + 16]	; 3: -117 70 16
x14919:	cmp [bp + 18], ax	; 3: 57 70 18
x14922:	jge qsort$28	; 2: 125 108

qsort$7:	; £temporary3372 = index * valueSize
x14924:	mov ax, [bp + 18]	; 3: -117 70 18
x14927:	xor dx, dx	; 2: 49 -46
x14929:	imul word [bp + 10]	; 3: -9 110 10

qsort$8:	; valuePtr1 = charList + £temporary3372
x14932:	mov bx, [bp + 14]	; 3: -117 94 14
x14935:	add bx, ax	; 2: 1 -61
x14937:	mov [bp + 22], bx	; 3: -119 94 22

qsort$9:	; £temporary3374 = index + 1
x14940:	mov ax, [bp + 18]	; 3: -117 70 18
x14943:	inc ax	; 1: 64

qsort$10:	; £temporary3375 = £temporary3374 * valueSize
x14944:	xor dx, dx	; 2: 49 -46
x14946:	imul word [bp + 10]	; 3: -9 110 10

qsort$11:	; valuePtr2 = charList + £temporary3375
x14949:	mov bx, [bp + 14]	; 3: -117 94 14
x14952:	add bx, ax	; 2: 1 -61
x14954:	mov [bp + 24], bx	; 3: -119 94 24

qsort$12:	; call header integral zero 0 stack zero 0

qsort$13:	; parameter valuePtr1, offset 6
x14957:	mov ax, [bp + 22]	; 3: -117 70 22
x14960:	mov [bp + 32], ax	; 3: -119 70 32

qsort$14:	; parameter valuePtr2, offset 8
x14963:	mov ax, [bp + 24]	; 3: -117 70 24
x14966:	mov [bp + 34], ax	; 3: -119 70 34

qsort$15:	; call function noellipse-noellipse compare
x14969:	mov word [bp + 26], qsort$16	; 5: -57 70 26 -119 58
x14974:	mov [bp + 28], bp	; 3: -119 110 28
x14977:	mov ax, [bp + 12]	; 3: -117 70 12
x14980:	add bp, 26	; 3: -125 -59 26
x14983:	jmp ax	; 2: -1 -32

qsort$16:	; post call

qsort$17:	; £temporary3377 = return_value

qsort$18:	; if £temporary3377 <= 0 goto 26
x14985:	cmp bx, 0	; 3: -125 -5 0
x14988:	jle qsort$26	; 2: 126 37

qsort$19:	; call header integral zero 0 stack zero 0

qsort$20:	; parameter valuePtr1, offset 6
x14990:	mov ax, [bp + 22]	; 3: -117 70 22
x14993:	mov [bp + 32], ax	; 3: -119 70 32

qsort$21:	; parameter valuePtr2, offset 8
x14996:	mov ax, [bp + 24]	; 3: -117 70 24
x14999:	mov [bp + 34], ax	; 3: -119 70 34

qsort$22:	; parameter valueSize, offset 10
x15002:	mov ax, [bp + 10]	; 3: -117 70 10
x15005:	mov [bp + 36], ax	; 3: -119 70 36

qsort$23:	; call function noellipse-noellipse memswap
x15008:	mov word [bp + 26], qsort$24	; 5: -57 70 26 -82 58
x15013:	mov [bp + 28], bp	; 3: -119 110 28
x15016:	add bp, 26	; 3: -125 -59 26
x15019:	nop	; 1: -112
x15020:	jmp @26$memswap	; 2: -21 33

qsort$24:	; post call

qsort$25:	; update = 1
x15022:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

qsort$26:	; ++index
x15027:	inc word [bp + 18]	; 3: -1 70 18

qsort$27:	; goto 6
x15030:	jmp qsort$6	; 2: -21 -116

qsort$28:	; if update == 0 goto 31
x15032:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x15036:	je qsort$31	; 2: 116 6

qsort$29:	; --size
x15038:	dec word [bp + 16]	; 3: -1 78 16

qsort$30:	; goto 3
x15041:	jmp qsort$3	; 3: -23 110 -1

qsort$31:	; return
x15044:	mov ax, [bp]	; 3: -117 70 0
x15047:	mov di, [bp + 4]	; 3: -117 126 4
x15050:	mov bp, [bp + 2]	; 3: -117 110 2
x15053:	jmp ax	; 2: -1 -32

qsort$32:	; function end qsort

@26$memswap:	; index = 0
x15055:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

@26$memswap$1:	; if index >= valueSize goto 15
x15060:	mov ax, [bp + 10]	; 3: -117 70 10
x15063:	cmp [bp + 12], ax	; 3: 57 70 12
x15066:	jge @26$memswap$15	; 2: 125 43

@26$memswap$2:	; £temporary3359 = value1 + index
x15068:	mov si, [bp + 6]	; 3: -117 118 6
x15071:	add si, [bp + 12]	; 3: 3 118 12

@26$memswap$3:	; £temporary3358 -> £temporary3359 = *£temporary3359

@26$memswap$4:	; tempValue = £temporary3358 -> £temporary3359
x15074:	mov al, [si]	; 2: -118 4
x15076:	mov [bp + 14], al	; 3: -120 70 14

@26$memswap$5:	; £temporary3361 = value1 + index
x15079:	mov si, [bp + 6]	; 3: -117 118 6
x15082:	add si, [bp + 12]	; 3: 3 118 12

@26$memswap$6:	; £temporary3360 -> £temporary3361 = *£temporary3361

@26$memswap$7:	; £temporary3363 = value2 + index
x15085:	mov di, [bp + 8]	; 3: -117 126 8
x15088:	add di, [bp + 12]	; 3: 3 126 12

@26$memswap$8:	; £temporary3362 -> £temporary3363 = *£temporary3363

@26$memswap$9:	; £temporary3360 -> £temporary3361 = £temporary3362 -> £temporary3363
x15091:	mov al, [di]	; 2: -118 5
x15093:	mov [si], al	; 2: -120 4

@26$memswap$10:	; £temporary3365 = value2 + index
x15095:	mov si, [bp + 8]	; 3: -117 118 8
x15098:	add si, [bp + 12]	; 3: 3 118 12

@26$memswap$11:	; £temporary3364 -> £temporary3365 = *£temporary3365

@26$memswap$12:	; £temporary3364 -> £temporary3365 = tempValue
x15101:	mov al, [bp + 14]	; 3: -118 70 14
x15104:	mov [si], al	; 2: -120 4

@26$memswap$13:	; ++index
x15106:	inc word [bp + 12]	; 3: -1 70 12

@26$memswap$14:	; goto 1
x15109:	jmp @26$memswap$1	; 2: -21 -51

@26$memswap$15:	; return
x15111:	mov ax, [bp]	; 3: -117 70 0
x15114:	mov di, [bp + 4]	; 3: -117 126 4
x15117:	mov bp, [bp + 2]	; 3: -117 110 2
x15120:	jmp ax	; 2: -1 -32

@26$memswap$16:	; function end memswap

bsearch:	; firstIndex = 0
x15122:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

bsearch$1:	; lastIndex = listSize - 1
x15127:	mov ax, [bp + 10]	; 3: -117 70 10
x15130:	dec ax	; 1: 72
x15131:	mov [bp + 18], ax	; 3: -119 70 18

bsearch$2:	; if listSize != 0 goto 5
x15134:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x15138:	jne bsearch$5	; 2: 117 14

bsearch$3:	; return_value = 0
x15140:	mov bx, 0	; 3: -69 0 0

bsearch$4:	; return
x15143:	mov ax, [bp]	; 3: -117 70 0
x15146:	mov di, [bp + 4]	; 3: -117 126 4
x15149:	mov bp, [bp + 2]	; 3: -117 110 2
x15152:	jmp ax	; 2: -1 -32

bsearch$5:	; £temporary3302 = int_to_int valueList (Pointer -> Pointer)
x15154:	mov bx, [bp + 8]	; 3: -117 94 8

bsearch$6:	; £temporary3303 = firstIndex * valueSize
x15157:	mov ax, [bp + 16]	; 3: -117 70 16
x15160:	xor dx, dx	; 2: 49 -46
x15162:	imul word [bp + 12]	; 3: -9 110 12

bsearch$7:	; firstValuePtr = £temporary3302 + £temporary3303
x15165:	add bx, ax	; 2: 1 -61
x15167:	mov [bp + 20], bx	; 3: -119 94 20

bsearch$8:	; call header integral zero 0 stack zero 0

bsearch$9:	; parameter keyPtr, offset 6
x15170:	mov ax, [bp + 6]	; 3: -117 70 6
x15173:	mov [bp + 28], ax	; 3: -119 70 28

bsearch$10:	; parameter firstValuePtr, offset 8
x15176:	mov ax, [bp + 20]	; 3: -117 70 20
x15179:	mov [bp + 30], ax	; 3: -119 70 30

bsearch$11:	; call function noellipse-noellipse compare
x15182:	mov word [bp + 22], bsearch$12	; 5: -57 70 22 94 59
x15187:	mov [bp + 24], bp	; 3: -119 110 24
x15190:	mov ax, [bp + 14]	; 3: -117 70 14
x15193:	add bp, 22	; 3: -125 -59 22
x15196:	jmp ax	; 2: -1 -32

bsearch$12:	; post call

bsearch$13:	; £temporary3305 = return_value

bsearch$14:	; firstCompare = £temporary3305
x15198:	mov [bp + 22], bx	; 3: -119 94 22

bsearch$15:	; if firstCompare >= 0 goto 18
x15201:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x15205:	jge bsearch$18	; 2: 125 14

bsearch$16:	; return_value = 0
x15207:	mov bx, 0	; 3: -69 0 0

bsearch$17:	; return
x15210:	mov ax, [bp]	; 3: -117 70 0
x15213:	mov di, [bp + 4]	; 3: -117 126 4
x15216:	mov bp, [bp + 2]	; 3: -117 110 2
x15219:	jmp ax	; 2: -1 -32

bsearch$18:	; if firstCompare != 0 goto 21
x15221:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x15225:	jne bsearch$21	; 2: 117 14

bsearch$19:	; return_value = firstValuePtr
x15227:	mov bx, [bp + 20]	; 3: -117 94 20

bsearch$20:	; return
x15230:	mov ax, [bp]	; 3: -117 70 0
x15233:	mov di, [bp + 4]	; 3: -117 126 4
x15236:	mov bp, [bp + 2]	; 3: -117 110 2
x15239:	jmp ax	; 2: -1 -32

bsearch$21:	; £temporary3308 = int_to_int valueList (Pointer -> Pointer)
x15241:	mov bx, [bp + 8]	; 3: -117 94 8

bsearch$22:	; £temporary3309 = lastIndex * valueSize
x15244:	mov ax, [bp + 18]	; 3: -117 70 18
x15247:	xor dx, dx	; 2: 49 -46
x15249:	imul word [bp + 12]	; 3: -9 110 12

bsearch$23:	; lastValuePtr = £temporary3308 + £temporary3309
x15252:	add bx, ax	; 2: 1 -61
x15254:	mov [bp + 20], bx	; 3: -119 94 20

bsearch$24:	; call header integral zero 0 stack zero 0

bsearch$25:	; parameter keyPtr, offset 6
x15257:	mov ax, [bp + 6]	; 3: -117 70 6
x15260:	mov [bp + 28], ax	; 3: -119 70 28

bsearch$26:	; parameter lastValuePtr, offset 8
x15263:	mov ax, [bp + 20]	; 3: -117 70 20
x15266:	mov [bp + 30], ax	; 3: -119 70 30

bsearch$27:	; call function noellipse-noellipse compare
x15269:	mov word [bp + 22], bsearch$28	; 5: -57 70 22 -75 59
x15274:	mov [bp + 24], bp	; 3: -119 110 24
x15277:	mov ax, [bp + 14]	; 3: -117 70 14
x15280:	add bp, 22	; 3: -125 -59 22
x15283:	jmp ax	; 2: -1 -32

bsearch$28:	; post call

bsearch$29:	; £temporary3311 = return_value

bsearch$30:	; lastCompare = £temporary3311
x15285:	mov [bp + 22], bx	; 3: -119 94 22

bsearch$31:	; if lastCompare <= 0 goto 34
x15288:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x15292:	jle bsearch$34	; 2: 126 14

bsearch$32:	; return_value = 0
x15294:	mov bx, 0	; 3: -69 0 0

bsearch$33:	; return
x15297:	mov ax, [bp]	; 3: -117 70 0
x15300:	mov di, [bp + 4]	; 3: -117 126 4
x15303:	mov bp, [bp + 2]	; 3: -117 110 2
x15306:	jmp ax	; 2: -1 -32

bsearch$34:	; if lastCompare != 0 goto 37
x15308:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x15312:	jne bsearch$37	; 2: 117 14

bsearch$35:	; return_value = lastValuePtr
x15314:	mov bx, [bp + 20]	; 3: -117 94 20

bsearch$36:	; return
x15317:	mov ax, [bp]	; 3: -117 70 0
x15320:	mov di, [bp + 4]	; 3: -117 126 4
x15323:	mov bp, [bp + 2]	; 3: -117 110 2
x15326:	jmp ax	; 2: -1 -32

bsearch$37:	; £temporary3314 = firstIndex + lastIndex
x15328:	mov ax, [bp + 16]	; 3: -117 70 16
x15331:	add ax, [bp + 18]	; 3: 3 70 18

bsearch$38:	; middleIndex = £temporary3314 / 2
x15334:	xor dx, dx	; 2: 49 -46
x15336:	idiv word [int2$2#]	; 4: -9 62 76 7
x15340:	mov [bp + 20], ax	; 3: -119 70 20

bsearch$39:	; £temporary3316 = int_to_int valueList (Pointer -> Pointer)
x15343:	mov bx, [bp + 8]	; 3: -117 94 8

bsearch$40:	; £temporary3317 = middleIndex * valueSize
x15346:	mov ax, [bp + 20]	; 3: -117 70 20
x15349:	xor dx, dx	; 2: 49 -46
x15351:	imul word [bp + 12]	; 3: -9 110 12

bsearch$41:	; middleValuePtr = £temporary3316 + £temporary3317
x15354:	add bx, ax	; 2: 1 -61
x15356:	mov [bp + 22], bx	; 3: -119 94 22

bsearch$42:	; call header integral zero 0 stack zero 0

bsearch$43:	; parameter keyPtr, offset 6
x15359:	mov ax, [bp + 6]	; 3: -117 70 6
x15362:	mov [bp + 30], ax	; 3: -119 70 30

bsearch$44:	; parameter middleValuePtr, offset 8
x15365:	mov ax, [bp + 22]	; 3: -117 70 22
x15368:	mov [bp + 32], ax	; 3: -119 70 32

bsearch$45:	; call function noellipse-noellipse compare
x15371:	mov word [bp + 24], bsearch$46	; 5: -57 70 24 27 60
x15376:	mov [bp + 26], bp	; 3: -119 110 26
x15379:	mov ax, [bp + 14]	; 3: -117 70 14
x15382:	add bp, 24	; 3: -125 -59 24
x15385:	jmp ax	; 2: -1 -32

bsearch$46:	; post call

bsearch$47:	; £temporary3319 = return_value

bsearch$48:	; middleCompare = £temporary3319
x15387:	mov [bp + 24], bx	; 3: -119 94 24

bsearch$49:	; if middleCompare >= 0 goto 52
x15390:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x15394:	jge bsearch$52	; 2: 125 9

bsearch$50:	; lastIndex = middleIndex
x15396:	mov ax, [bp + 20]	; 3: -117 70 20
x15399:	mov [bp + 18], ax	; 3: -119 70 18

bsearch$51:	; goto 5
x15402:	jmp bsearch$5	; 3: -23 5 -1

bsearch$52:	; if middleCompare <= 0 goto 55
x15405:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x15409:	jle bsearch$55	; 2: 126 9

bsearch$53:	; firstIndex = middleIndex
x15411:	mov ax, [bp + 20]	; 3: -117 70 20
x15414:	mov [bp + 16], ax	; 3: -119 70 16

bsearch$54:	; goto 5
x15417:	jmp bsearch$5	; 3: -23 -10 -2

bsearch$55:	; return_value = middleValuePtr
x15420:	mov bx, [bp + 22]	; 3: -117 94 22

bsearch$56:	; return
x15423:	mov ax, [bp]	; 3: -117 70 0
x15426:	mov di, [bp + 4]	; 3: -117 126 4
x15429:	mov bp, [bp + 2]	; 3: -117 110 2
x15432:	jmp ax	; 2: -1 -32

bsearch$57:	; function end bsearch

$StackTop:
x15434:
