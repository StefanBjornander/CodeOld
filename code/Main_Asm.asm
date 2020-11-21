	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: 189 160 58
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: 199 6 254 255 254 255
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: 155 217 126 0
x269:	or word [bp], 3072	; 5: 129 78 0 0 12
x274:	fldcw [bp]	; 3: 217 110 0
x277:	mov word [$StackTop], 0	; 6: 199 6 160 58 0 0

main:	; CallHeader 6 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

main$1:	; Parameter 6 string_in2Etxt# 6
x283:	mov word [bp + 12], string_in2Etxt#	; 5: 199 70 12 74 1

main$2:	; Parameter 6 string_out2Etxt# 8
x288:	mov word [bp + 14], string_out2Etxt#	; 5: 199 70 14 81 1

main$3:	; Call 6 file_test 0
x293:	mov word [bp + 6], main$4	; 5: 199 70 6 51 1
x298:	mov [bp + 8], bp	; 3: 137 110 8
x301:	add bp, 6	; 3: 131 197 6
x304:	nop	; 1: 144
x305:	jmp file_test	; 2: 235 38

main$4:	; PostCall 6

main$5:	; Return 0
x307:	cmp word [bp], 0	; 4: 131 126 0 0
x311:	je return_label$0	; 2: 116 11
x313:	mov ax, [bp]	; 3: 139 70 0
x316:	mov di, [bp + 4]	; 3: 139 126 4
x319:	mov bp, [bp + 2]	; 3: 139 110 2
x322:	jmp ax	; 2: 255 224

return_label$0:
x324:	mov al, 0	; 2: 176 0
x326:	mov ah, 76	; 2: 180 76
x328:	int 33	; 2: 205 33

main$6:	; FunctionEnd main

string_in2Etxt#:
x330:	db "in.txt", 0	; 7: 105 110 46 116 120 116 0

string_out2Etxt#:
x337:	db "out.txt", 0	; 8: 111 117 116 46 116 120 116 0

file_test:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$1:	; Parameter 10 inFileName 6
x345:	mov ax, [bp + 6]	; 3: 139 70 6
x348:	mov [bp + 16], ax	; 3: 137 70 16

file_test$2:	; Parameter 10 string_r# 8
x351:	mov word [bp + 18], string_r#	; 5: 199 70 18 94 3

file_test$3:	; Call 10 fopen 0
x356:	mov word [bp + 10], file_test$4	; 5: 199 70 10 114 1
x361:	mov [bp + 12], bp	; 3: 137 110 12
x364:	add bp, 10	; 3: 131 197 10
x367:	jmp fopen	; 3: 233 4 5

file_test$4:	; PostCall 10

file_test$5:	; GetReturnValue £temporary4972

file_test$6:	; Assign inFilePtr £temporary4972
x370:	mov [bp + 10], bx	; 3: 137 94 10

file_test$7:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$8:	; Parameter 12 outFileName 6
x373:	mov ax, [bp + 8]	; 3: 139 70 8
x376:	mov [bp + 18], ax	; 3: 137 70 18

file_test$9:	; Parameter 12 string_w# 8
x379:	mov word [bp + 20], string_w#	; 5: 199 70 20 96 3

file_test$10:	; Call 12 fopen 0
x384:	mov word [bp + 12], file_test$11	; 5: 199 70 12 142 1
x389:	mov [bp + 14], bp	; 3: 137 110 14
x392:	add bp, 12	; 3: 131 197 12
x395:	jmp fopen	; 3: 233 232 4

file_test$11:	; PostCall 12

file_test$12:	; GetReturnValue £temporary4973

file_test$13:	; Assign outFilePtr £temporary4973
x398:	mov [bp + 12], bx	; 3: 137 94 12

file_test$14:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$15:	; Parameter 14 string_25s3A2025li2C2025s3A2025li0A# 6
x401:	mov word [bp + 20], string_25s3A2025li2C2025s3A2025li0A#	; 5: 199 70 20 98 3

file_test$16:	; Parameter 14 inFileName 8
x406:	mov ax, [bp + 6]	; 3: 139 70 6
x409:	mov [bp + 22], ax	; 3: 137 70 22

file_test$17:	; Parameter 14 inFilePtr 10
x412:	mov ax, [bp + 10]	; 3: 139 70 10
x415:	mov [bp + 24], ax	; 3: 137 70 24

file_test$18:	; Parameter 14 outFileName 12
x418:	mov ax, [bp + 8]	; 3: 139 70 8
x421:	mov [bp + 26], ax	; 3: 137 70 26

file_test$19:	; Parameter 14 outFilePtr 14
x424:	mov ax, [bp + 12]	; 3: 139 70 12
x427:	mov [bp + 28], ax	; 3: 137 70 28

file_test$20:	; Call 14 printf 0
x430:	mov word [bp + 14], file_test$21	; 5: 199 70 14 193 1
x435:	mov [bp + 16], bp	; 3: 137 110 16
x438:	add bp, 14	; 3: 131 197 14
x441:	mov di, bp	; 2: 137 239
x443:	add di, 8	; 3: 131 199 8
x446:	jmp printf	; 3: 233 73 9

file_test$21:	; PostCall 14

file_test$22:	; NotEqual 34 inFilePtr 0
x449:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x453:	jne file_test$34	; 2: 117 59

file_test$23:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$24:	; Parameter 14 stderr 6
x455:	mov ax, [stderr]	; 3: 161 116 3
x458:	mov [bp + 20], ax	; 3: 137 70 20

file_test$25:	; Parameter 14 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x461:	mov word [bp + 22], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 5: 199 70 22 186 5

file_test$26:	; Parameter 14 string_inFilePtr20213D20NULL# 10
x466:	mov word [bp + 24], string_inFilePtr20213D20NULL#	; 5: 199 70 24 232 5

file_test$27:	; Parameter 14 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x471:	mov word [bp + 26], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 5: 199 70 26 250 5

file_test$28:	; Parameter 14 13 14
x476:	mov word [bp + 28], 13	; 5: 199 70 28 13 0

file_test$29:	; Call 14 fprintf 0
x481:	mov word [bp + 14], file_test$30	; 5: 199 70 14 244 1
x486:	mov [bp + 16], bp	; 3: 137 110 16
x489:	add bp, 14	; 3: 131 197 14
x492:	mov di, bp	; 2: 137 239
x494:	add di, 6	; 3: 131 199 6
x497:	jmp fprintf	; 3: 233 49 37

file_test$30:	; PostCall 14

file_test$31:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$32:	; Call 14 abort 0
x500:	mov word [bp + 14], file_test$33	; 5: 199 70 14 2 2
x505:	mov [bp + 16], bp	; 3: 137 110 16
x508:	add bp, 14	; 3: 131 197 14
x511:	jmp abort	; 3: 233 94 37

file_test$33:	; PostCall 14

file_test$34:	; NotEqual 46 outFilePtr 0
x514:	cmp word [bp + 12], 0	; 4: 131 126 12 0
x518:	jne file_test$46	; 2: 117 59

file_test$35:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$36:	; Parameter 14 stderr 6
x520:	mov ax, [stderr]	; 3: 161 116 3
x523:	mov [bp + 20], ax	; 3: 137 70 20

file_test$37:	; Parameter 14 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x526:	mov word [bp + 22], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 5: 199 70 22 186 5

file_test$38:	; Parameter 14 string_outFilePtr20213D20NULL# 10
x531:	mov word [bp + 24], string_outFilePtr20213D20NULL#	; 5: 199 70 24 59 6

file_test$39:	; Parameter 14 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x536:	mov word [bp + 26], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 5: 199 70 26 250 5

file_test$40:	; Parameter 14 14 14
x541:	mov word [bp + 28], 14	; 5: 199 70 28 14 0

file_test$41:	; Call 14 fprintf 0
x546:	mov word [bp + 14], file_test$42	; 5: 199 70 14 53 2
x551:	mov [bp + 16], bp	; 3: 137 110 16
x554:	add bp, 14	; 3: 131 197 14
x557:	mov di, bp	; 2: 137 239
x559:	add di, 6	; 3: 131 199 6
x562:	jmp fprintf	; 3: 233 240 36

file_test$42:	; PostCall 14

file_test$43:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$44:	; Call 14 abort 0
x565:	mov word [bp + 14], file_test$45	; 5: 199 70 14 67 2
x570:	mov [bp + 16], bp	; 3: 137 110 16
x573:	add bp, 14	; 3: 131 197 14
x576:	jmp abort	; 3: 233 29 37

file_test$45:	; PostCall 14

file_test$46:	; Assign size 0
x579:	mov word [bp + 14], 0	; 5: 199 70 14 0 0

file_test$47:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$48:	; Parameter 18 inFilePtr 6
x584:	mov ax, [bp + 10]	; 3: 139 70 10
x587:	mov [bp + 24], ax	; 3: 137 70 24

file_test$49:	; Parameter 18 string_25i# 8
x590:	mov word [bp + 26], string_25i#	; 5: 199 70 26 78 6

file_test$50:	; address £temporary4983 size
x595:	mov si, bp	; 2: 137 238
x597:	add si, 14	; 3: 131 198 14

file_test$51:	; Parameter 18 £temporary4983 10
x600:	mov [bp + 28], si	; 3: 137 118 28

file_test$52:	; Call 18 fscanf 0
x603:	mov word [bp + 18], file_test$53	; 5: 199 70 18 110 2
x608:	mov [bp + 20], bp	; 3: 137 110 20
x611:	add bp, 18	; 3: 131 197 18
x614:	mov di, bp	; 2: 137 239
x616:	add di, 2	; 3: 131 199 2
x619:	jmp fscanf	; 3: 233 3 37

file_test$53:	; PostCall 18

file_test$54:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$55:	; Parameter 18 string_size2025i0A# 6
x622:	mov word [bp + 24], string_size2025i0A#	; 5: 199 70 24 81 6

file_test$56:	; Parameter 18 size 8
x627:	mov ax, [bp + 14]	; 3: 139 70 14
x630:	mov [bp + 26], ax	; 3: 137 70 26

file_test$57:	; Call 18 printf 0
x633:	mov word [bp + 18], file_test$58	; 5: 199 70 18 140 2
x638:	mov [bp + 20], bp	; 3: 137 110 20
x641:	add bp, 18	; 3: 131 197 18
x644:	mov di, bp	; 2: 137 239
x646:	add di, 2	; 3: 131 199 2
x649:	jmp printf	; 3: 233 126 8

file_test$58:	; PostCall 18

file_test$59:	; Assign index 0
x652:	mov word [bp + 16], 0	; 5: 199 70 16 0 0

file_test$60:	; SignedGreaterThanEqual 93 index size
x657:	mov ax, [bp + 14]	; 3: 139 70 14
x660:	cmp [bp + 16], ax	; 3: 57 70 16
x663:	jge file_test$93	; 4: 15 141 144 0

file_test$61:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$62:	; Parameter 26 inFilePtr 6
x667:	mov ax, [bp + 10]	; 3: 139 70 10
x670:	mov [bp + 32], ax	; 3: 137 70 32

file_test$63:	; Parameter 26 string_25lf# 8
x673:	mov word [bp + 34], string_25lf#	; 5: 199 70 34 90 6

file_test$64:	; address £temporary4988 value
x678:	mov si, bp	; 2: 137 238
x680:	add si, 18	; 3: 131 198 18

file_test$65:	; Parameter 26 £temporary4988 10
x683:	mov [bp + 36], si	; 3: 137 118 36

file_test$66:	; Call 26 fscanf 0
x686:	mov word [bp + 26], file_test$67	; 5: 199 70 26 193 2
x691:	mov [bp + 28], bp	; 3: 137 110 28
x694:	add bp, 26	; 3: 131 197 26
x697:	mov di, bp	; 2: 137 239
x699:	add di, 2	; 3: 131 199 2
x702:	jmp fscanf	; 3: 233 176 36

file_test$67:	; PostCall 26

file_test$68:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$69:	; Parameter 26 string_Y20value2025f0A# 6
x705:	mov word [bp + 32], string_Y20value2025f0A#	; 5: 199 70 32 94 6

file_test$70:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$71:	; PushFloat value
x710:	fld qword [bp + 18]	; 3: 221 70 18

file_test$72:	; Parameter 26 value 14
x713:	fstp qword [bp + 40]	; 3: 221 94 40

file_test$73:	; Call 26 sqrt 8
x716:	mov word [bp + 34], file_test$74	; 5: 199 70 34 218 2
x721:	mov [bp + 36], bp	; 3: 137 110 36
x724:	add bp, 34	; 3: 131 197 34
x727:	jmp sqrt	; 3: 233 94 54

file_test$74:	; PostCall 26

file_test$75:	; GetReturnValue £temporary4990

file_test$76:	; Parameter 26 £temporary4990 8
x730:	fstp qword [bp + 34]	; 3: 221 94 34

file_test$77:	; Call 26 printf 0
x733:	mov word [bp + 26], file_test$78	; 5: 199 70 26 240 2
x738:	mov [bp + 28], bp	; 3: 137 110 28
x741:	add bp, 26	; 3: 131 197 26
x744:	mov di, bp	; 2: 137 239
x746:	add di, 8	; 3: 131 199 8
x749:	jmp printf	; 3: 233 26 8

file_test$78:	; PostCall 26

file_test$79:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$80:	; Parameter 26 outFilePtr 6
x752:	mov ax, [bp + 12]	; 3: 139 70 12
x755:	mov [bp + 32], ax	; 3: 137 70 32

file_test$81:	; Parameter 26 string_Z20value2025f0A# 8
x758:	mov word [bp + 34], string_Z20value2025f0A#	; 5: 199 70 34 106 6

file_test$82:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$83:	; PushFloat value
x763:	fld qword [bp + 18]	; 3: 221 70 18

file_test$84:	; Parameter 26 value 16
x766:	fstp qword [bp + 42]	; 3: 221 94 42

file_test$85:	; Call 26 sqrt 10
x769:	mov word [bp + 36], file_test$86	; 5: 199 70 36 15 3
x774:	mov [bp + 38], bp	; 3: 137 110 38
x777:	add bp, 36	; 3: 131 197 36
x780:	jmp sqrt	; 3: 233 41 54

file_test$86:	; PostCall 26

file_test$87:	; GetReturnValue £temporary4992

file_test$88:	; Parameter 26 £temporary4992 10
x783:	fstp qword [bp + 36]	; 3: 221 94 36

file_test$89:	; Call 26 fprintf 0
x786:	mov word [bp + 26], file_test$90	; 5: 199 70 26 37 3
x791:	mov [bp + 28], bp	; 3: 137 110 28
x794:	add bp, 26	; 3: 131 197 26
x797:	mov di, bp	; 2: 137 239
x799:	add di, 8	; 3: 131 199 8
x802:	jmp fprintf	; 3: 233 0 36

file_test$90:	; PostCall 26

file_test$91:	; Increment index
x805:	inc word [bp + 16]	; 3: 255 70 16

file_test$92:	; Goto 60
x808:	jmp file_test$60	; 3: 233 102 255

file_test$93:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$94:	; Parameter 14 inFilePtr 6
x811:	mov ax, [bp + 10]	; 3: 139 70 10
x814:	mov [bp + 20], ax	; 3: 137 70 20

file_test$95:	; Call 14 fclose 0
x817:	mov word [bp + 14], file_test$96	; 5: 199 70 14 63 3
x822:	mov [bp + 16], bp	; 3: 137 110 16
x825:	add bp, 14	; 3: 131 197 14
x828:	jmp fclose	; 3: 233 117 54

file_test$96:	; PostCall 14

file_test$97:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$98:	; Parameter 14 outFilePtr 6
x831:	mov ax, [bp + 12]	; 3: 139 70 12
x834:	mov [bp + 20], ax	; 3: 137 70 20

file_test$99:	; Call 14 fclose 0
x837:	mov word [bp + 14], file_test$100	; 5: 199 70 14 83 3
x842:	mov [bp + 16], bp	; 3: 137 110 16
x845:	add bp, 14	; 3: 131 197 14
x848:	jmp fclose	; 3: 233 97 54

file_test$100:	; PostCall 14

file_test$101:	; Return 0
x851:	mov ax, [bp]	; 3: 139 70 0
x854:	mov di, [bp + 4]	; 3: 139 126 4
x857:	mov bp, [bp + 2]	; 3: 139 110 2
x860:	jmp ax	; 2: 255 224

file_test$102:	; FunctionEnd file_test

string_r#:
x862:	db "r", 0	; 2: 114 0

string_w#:
x864:	db "w", 0	; 2: 119 0

string_25s3A2025li2C2025s3A2025li0A#:
x866:	db "%s: %li, %s: %li", 10, 0	; 18: 37 115 58 32 37 108 105 44 32 37 115 58 32 37 108 105 10 0

stderr:
x884:	dw g_fileArray + 58	; 2: 176 3

g_fileArray:
x886:	dw 1	; 2: 1 0
x888:	dw 0	; 2: 0 0
x890:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x915:	dw 1	; 2: 1 0
x917:	dw 1	; 2: 1 0
x919:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x944:	dw 1	; 2: 1 0
x946:	dw 2	; 2: 2 0
x948:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x973:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
x1466:	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0	; 46: 65 115 115 101 114 116 105 111 110 32 102 97 105 108 101 100 58 32 34 37 115 34 32 105 110 32 102 105 108 101 32 37 115 32 97 116 32 108 105 110 101 32 37 105 10 0

string_inFilePtr20213D20NULL#:
x1512:	db "inFilePtr != NULL", 0	; 18: 105 110 70 105 108 101 80 116 114 32 33 61 32 78 85 76 76 0

string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
x1530:	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0	; 65: 67 58 92 85 115 101 114 115 92 83 116 101 102 97 110 92 68 111 99 117 109 101 110 116 115 92 118 97 103 114 97 110 116 92 104 111 109 101 115 116 101 97 100 92 99 111 100 101 92 99 111 100 101 92 70 105 108 101 84 101 115 116 46 99 0

string_outFilePtr20213D20NULL#:
x1595:	db "outFilePtr != NULL", 0	; 19: 111 117 116 70 105 108 101 80 116 114 32 33 61 32 78 85 76 76 0

string_25i#:
x1614:	db "%i", 0	; 3: 37 105 0

string_size2025i0A#:
x1617:	db "size %i", 10, 0	; 9: 115 105 122 101 32 37 105 10 0

string_25lf#:
x1626:	db "%lf", 0	; 4: 37 108 102 0

string_Y20value2025f0A#:
x1630:	db "Y value %f", 10, 0	; 12: 89 32 118 97 108 117 101 32 37 102 10 0

string_Z20value2025f0A#:
x1642:	db "Z value %f", 10, 0	; 12: 90 32 118 97 108 117 101 32 37 102 10 0

fopen:	; Assign index 0
x1654:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

fopen$1:	; SignedGreaterThanEqual 21 index 20
x1659:	cmp word [bp + 10], 20	; 4: 131 126 10 20
x1663:	jge fopen$21	; 2: 125 78

fopen$2:	; UnsignedMultiply £temporary904 index 29
x1665:	mov ax, [bp + 10]	; 3: 139 70 10
x1668:	xor dx, dx	; 2: 49 210
x1670:	mul word [int2$29#]	; 4: 247 38 221 6

fopen$3:	; BinaryAdd £temporary905 g_fileArray £temporary904
x1674:	mov si, g_fileArray	; 3: 190 118 3
x1677:	add si, ax	; 2: 1 198

fopen$4:	; Deref £temporary903 -> £temporary905 £temporary905 0

fopen$5:	; NotEqual 19 £temporary903.open$0 -> £temporary905 0
x1679:	cmp word [si], 0	; 3: 131 60 0
x1682:	jne fopen$19	; 2: 117 54

fopen$6:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

fopen$7:	; Parameter 12 name 6
x1684:	mov ax, [bp + 6]	; 3: 139 70 6
x1687:	mov [bp + 18], ax	; 3: 137 70 18

fopen$8:	; Parameter 12 mode 8
x1690:	mov ax, [bp + 8]	; 3: 139 70 8
x1693:	mov [bp + 20], ax	; 3: 137 70 20

fopen$9:	; UnsignedMultiply £temporary909 index 29
x1696:	mov ax, [bp + 10]	; 3: 139 70 10
x1699:	xor dx, dx	; 2: 49 210
x1701:	mul word [int2$29#]	; 4: 247 38 221 6

fopen$10:	; BinaryAdd £temporary910 g_fileArray £temporary909
x1705:	mov si, g_fileArray	; 3: 190 118 3
x1708:	add si, ax	; 2: 1 198

fopen$11:	; Deref £temporary908 -> £temporary910 £temporary910 0

fopen$12:	; address £temporary911 £temporary908 -> £temporary910

fopen$13:	; Parameter 12 £temporary911 10
x1710:	mov [bp + 22], si	; 3: 137 118 22

fopen$14:	; Call 12 freopen 0
x1713:	mov word [bp + 12], fopen$15	; 5: 199 70 12 191 6
x1718:	mov [bp + 14], bp	; 3: 137 110 14
x1721:	add bp, 12	; 3: 131 197 12
x1724:	nop	; 1: 144
x1725:	jmp freopen	; 2: 235 32

fopen$15:	; PostCall 12

fopen$16:	; GetReturnValue £temporary912

fopen$17:	; SetReturnValue £temporary912

fopen$18:	; Return £temporary912
x1727:	mov ax, [bp]	; 3: 139 70 0
x1730:	mov di, [bp + 4]	; 3: 139 126 4
x1733:	mov bp, [bp + 2]	; 3: 139 110 2
x1736:	jmp ax	; 2: 255 224

fopen$19:	; Increment index
x1738:	inc word [bp + 10]	; 3: 255 70 10

fopen$20:	; Goto 1
x1741:	jmp fopen$1	; 2: 235 172

fopen$21:	; SetReturnValue 0
x1743:	mov bx, 0	; 3: 187 0 0

fopen$22:	; Return 0
x1746:	mov ax, [bp]	; 3: 139 70 0
x1749:	mov di, [bp + 4]	; 3: 139 126 4
x1752:	mov bp, [bp + 2]	; 3: 139 110 2
x1755:	jmp ax	; 2: 255 224

fopen$23:	; FunctionEnd fopen

int2$29#:
x1757:	dw 29	; 2: 29 0

freopen:	; Assign handle -1
x1759:	mov word [bp + 12], -1	; 5: 199 70 12 255 255

freopen$1:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$2:	; Parameter 14 mode 6
x1764:	mov ax, [bp + 8]	; 3: 139 70 8
x1767:	mov [bp + 20], ax	; 3: 137 70 20

freopen$3:	; Parameter 14 string_r# 8
x1770:	mov word [bp + 22], string_r#	; 5: 199 70 22 94 3

freopen$4:	; Call 14 strcmp 0
x1775:	mov word [bp + 14], freopen$5	; 5: 199 70 14 253 6
x1780:	mov [bp + 16], bp	; 3: 137 110 16
x1783:	add bp, 14	; 3: 131 197 14
x1786:	jmp strcmp	; 3: 233 103 2

freopen$5:	; PostCall 14

freopen$6:	; GetReturnValue £temporary916

freopen$7:	; NotEqual 16 £temporary916 0
x1789:	cmp bx, 0	; 3: 131 251 0
x1792:	jne freopen$16	; 2: 117 30

freopen$8:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$9:	; Parameter 14 name 6
x1794:	mov ax, [bp + 6]	; 3: 139 70 6
x1797:	mov [bp + 20], ax	; 3: 137 70 20

freopen$10:	; Parameter 14 64 8
x1800:	mov byte [bp + 22], 64	; 4: 198 70 22 64

freopen$11:	; Call 14 fileopen 0
x1804:	mov word [bp + 14], freopen$12	; 5: 199 70 14 26 7
x1809:	mov [bp + 16], bp	; 3: 137 110 16
x1812:	add bp, 14	; 3: 131 197 14
x1815:	jmp @1112$fileopen	; 3: 233 235 2

freopen$12:	; PostCall 14

freopen$13:	; GetReturnValue £temporary918

freopen$14:	; Assign handle £temporary918
x1818:	mov [bp + 12], bx	; 3: 137 94 12

freopen$15:	; Goto 130
x1821:	jmp freopen$130	; 3: 233 210 1

freopen$16:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$17:	; Parameter 14 mode 6
x1824:	mov ax, [bp + 8]	; 3: 139 70 8
x1827:	mov [bp + 20], ax	; 3: 137 70 20

freopen$18:	; Parameter 14 string_w# 8
x1830:	mov word [bp + 22], string_w#	; 5: 199 70 22 96 3

freopen$19:	; Call 14 strcmp 0
x1835:	mov word [bp + 14], freopen$20	; 5: 199 70 14 57 7
x1840:	mov [bp + 16], bp	; 3: 137 110 16
x1843:	add bp, 14	; 3: 131 197 14
x1846:	jmp strcmp	; 3: 233 43 2

freopen$20:	; PostCall 14

freopen$21:	; GetReturnValue £temporary919

freopen$22:	; NotEqual 30 £temporary919 0
x1849:	cmp bx, 0	; 3: 131 251 0
x1852:	jne freopen$30	; 2: 117 26

freopen$23:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$24:	; Parameter 14 name 6
x1854:	mov ax, [bp + 6]	; 3: 139 70 6
x1857:	mov [bp + 20], ax	; 3: 137 70 20

freopen$25:	; Call 14 filecreate 0
x1860:	mov word [bp + 14], freopen$26	; 5: 199 70 14 82 7
x1865:	mov [bp + 16], bp	; 3: 137 110 16
x1868:	add bp, 14	; 3: 131 197 14
x1871:	jmp @1099$filecreate	; 3: 233 226 2

freopen$26:	; PostCall 14

freopen$27:	; GetReturnValue £temporary921

freopen$28:	; Assign handle £temporary921
x1874:	mov [bp + 12], bx	; 3: 137 94 12

freopen$29:	; Goto 130
x1877:	jmp freopen$130	; 3: 233 154 1

freopen$30:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$31:	; Parameter 14 mode 6
x1880:	mov ax, [bp + 8]	; 3: 139 70 8
x1883:	mov [bp + 20], ax	; 3: 137 70 20

freopen$32:	; Parameter 14 string_a# 8
x1886:	mov word [bp + 22], string_a#	; 5: 199 70 22 89 9

freopen$33:	; Call 14 strcmp 0
x1891:	mov word [bp + 14], freopen$34	; 5: 199 70 14 113 7
x1896:	mov [bp + 16], bp	; 3: 137 110 16
x1899:	add bp, 14	; 3: 131 197 14
x1902:	jmp strcmp	; 3: 233 243 1

freopen$34:	; PostCall 14

freopen$35:	; GetReturnValue £temporary922

freopen$36:	; NotEqual 59 £temporary922 0
x1905:	cmp bx, 0	; 3: 131 251 0
x1908:	jne freopen$59	; 2: 117 92

freopen$37:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$38:	; Parameter 14 name 6
x1910:	mov ax, [bp + 6]	; 3: 139 70 6
x1913:	mov [bp + 20], ax	; 3: 137 70 20

freopen$39:	; Parameter 14 65 8
x1916:	mov byte [bp + 22], 65	; 4: 198 70 22 65

freopen$40:	; Call 14 fileopen 0
x1920:	mov word [bp + 14], freopen$41	; 5: 199 70 14 142 7
x1925:	mov [bp + 16], bp	; 3: 137 110 16
x1928:	add bp, 14	; 3: 131 197 14
x1931:	jmp @1112$fileopen	; 3: 233 119 2

freopen$41:	; PostCall 14

freopen$42:	; GetReturnValue £temporary924

freopen$43:	; Assign handle £temporary924
x1934:	mov [bp + 12], bx	; 3: 137 94 12

freopen$44:	; Equal 52 handle -1
x1937:	cmp word [bp + 12], -1	; 4: 131 126 12 255
x1941:	je freopen$52	; 2: 116 33

freopen$45:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$46:	; Parameter 14 stream 6
x1943:	mov ax, [bp + 10]	; 3: 139 70 10
x1946:	mov [bp + 20], ax	; 3: 137 70 20

freopen$47:	; Parameter 14 0 8
x1949:	mov word [bp + 22], 0	; 5: 199 70 22 0 0

freopen$48:	; Parameter 14 2 10
x1954:	mov word [bp + 24], 2	; 5: 199 70 24 2 0

freopen$49:	; Call 14 fseek 0
x1959:	mov word [bp + 14], freopen$50	; 5: 199 70 14 181 7
x1964:	mov [bp + 16], bp	; 3: 137 110 16
x1967:	add bp, 14	; 3: 131 197 14
x1970:	jmp fseek	; 3: 233 176 2

freopen$50:	; PostCall 14

freopen$51:	; Goto 130
x1973:	jmp freopen$130	; 3: 233 58 1

freopen$52:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$53:	; Parameter 14 name 6
x1976:	mov ax, [bp + 6]	; 3: 139 70 6
x1979:	mov [bp + 20], ax	; 3: 137 70 20

freopen$54:	; Call 14 filecreate 0
x1982:	mov word [bp + 14], freopen$55	; 5: 199 70 14 204 7
x1987:	mov [bp + 16], bp	; 3: 137 110 16
x1990:	add bp, 14	; 3: 131 197 14
x1993:	jmp @1099$filecreate	; 3: 233 104 2

freopen$55:	; PostCall 14

freopen$56:	; GetReturnValue £temporary927

freopen$57:	; Assign handle £temporary927
x1996:	mov [bp + 12], bx	; 3: 137 94 12

freopen$58:	; Goto 130
x1999:	jmp freopen$130	; 3: 233 32 1

freopen$59:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$60:	; Parameter 14 mode 6
x2002:	mov ax, [bp + 8]	; 3: 139 70 8
x2005:	mov [bp + 20], ax	; 3: 137 70 20

freopen$61:	; Parameter 14 string_r2B# 8
x2008:	mov word [bp + 22], string_r2B#	; 5: 199 70 22 91 9

freopen$62:	; Call 14 strcmp 0
x2013:	mov word [bp + 14], freopen$63	; 5: 199 70 14 235 7
x2018:	mov [bp + 16], bp	; 3: 137 110 16
x2021:	add bp, 14	; 3: 131 197 14
x2024:	jmp strcmp	; 3: 233 121 1

freopen$63:	; PostCall 14

freopen$64:	; GetReturnValue £temporary928

freopen$65:	; NotEqual 74 £temporary928 0
x2027:	cmp bx, 0	; 3: 131 251 0
x2030:	jne freopen$74	; 2: 117 30

freopen$66:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$67:	; Parameter 14 name 6
x2032:	mov ax, [bp + 6]	; 3: 139 70 6
x2035:	mov [bp + 20], ax	; 3: 137 70 20

freopen$68:	; Parameter 14 66 8
x2038:	mov byte [bp + 22], 66	; 4: 198 70 22 66

freopen$69:	; Call 14 fileopen 0
x2042:	mov word [bp + 14], freopen$70	; 5: 199 70 14 8 8
x2047:	mov [bp + 16], bp	; 3: 137 110 16
x2050:	add bp, 14	; 3: 131 197 14
x2053:	jmp @1112$fileopen	; 3: 233 253 1

freopen$70:	; PostCall 14

freopen$71:	; GetReturnValue £temporary930

freopen$72:	; Assign handle £temporary930
x2056:	mov [bp + 12], bx	; 3: 137 94 12

freopen$73:	; Goto 130
x2059:	jmp freopen$130	; 3: 233 228 0

freopen$74:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$75:	; Parameter 14 mode 6
x2062:	mov ax, [bp + 8]	; 3: 139 70 8
x2065:	mov [bp + 20], ax	; 3: 137 70 20

freopen$76:	; Parameter 14 string_w2B# 8
x2068:	mov word [bp + 22], string_w2B#	; 5: 199 70 22 94 9

freopen$77:	; Call 14 strcmp 0
x2073:	mov word [bp + 14], freopen$78	; 5: 199 70 14 39 8
x2078:	mov [bp + 16], bp	; 3: 137 110 16
x2081:	add bp, 14	; 3: 131 197 14
x2084:	jmp strcmp	; 3: 233 61 1

freopen$78:	; PostCall 14

freopen$79:	; GetReturnValue £temporary931

freopen$80:	; NotEqual 102 £temporary931 0
x2087:	cmp bx, 0	; 3: 131 251 0
x2090:	jne freopen$102	; 2: 117 80

freopen$81:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$82:	; Parameter 14 name 6
x2092:	mov ax, [bp + 6]	; 3: 139 70 6
x2095:	mov [bp + 20], ax	; 3: 137 70 20

freopen$83:	; Call 14 fileexists 0
x2098:	mov word [bp + 14], freopen$84	; 5: 199 70 14 64 8
x2103:	mov [bp + 16], bp	; 3: 137 110 16
x2106:	add bp, 14	; 3: 131 197 14
x2109:	jmp fileexists	; 3: 233 112 2

freopen$84:	; PostCall 14

freopen$85:	; GetReturnValue £temporary933

freopen$86:	; Equal 95 £temporary933 0
x2112:	cmp bx, 0	; 3: 131 251 0
x2115:	je freopen$95	; 2: 116 30

freopen$87:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$88:	; Parameter 14 name 6
x2117:	mov ax, [bp + 6]	; 3: 139 70 6
x2120:	mov [bp + 20], ax	; 3: 137 70 20

freopen$89:	; Parameter 14 66 8
x2123:	mov byte [bp + 22], 66	; 4: 198 70 22 66

freopen$90:	; Call 14 fileopen 0
x2127:	mov word [bp + 14], freopen$91	; 5: 199 70 14 93 8
x2132:	mov [bp + 16], bp	; 3: 137 110 16
x2135:	add bp, 14	; 3: 131 197 14
x2138:	jmp @1112$fileopen	; 3: 233 168 1

freopen$91:	; PostCall 14

freopen$92:	; GetReturnValue £temporary934

freopen$93:	; Assign handle £temporary934
x2141:	mov [bp + 12], bx	; 3: 137 94 12

freopen$94:	; Goto 130
x2144:	jmp freopen$130	; 3: 233 143 0

freopen$95:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$96:	; Parameter 14 name 6
x2147:	mov ax, [bp + 6]	; 3: 139 70 6
x2150:	mov [bp + 20], ax	; 3: 137 70 20

freopen$97:	; Call 14 filecreate 0
x2153:	mov word [bp + 14], freopen$98	; 5: 199 70 14 119 8
x2158:	mov [bp + 16], bp	; 3: 137 110 16
x2161:	add bp, 14	; 3: 131 197 14
x2164:	jmp @1099$filecreate	; 3: 233 189 1

freopen$98:	; PostCall 14

freopen$99:	; GetReturnValue £temporary935

freopen$100:	; Assign handle £temporary935
x2167:	mov [bp + 12], bx	; 3: 137 94 12

freopen$101:	; Goto 130
x2170:	jmp freopen$130	; 2: 235 118

freopen$102:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$103:	; Parameter 14 mode 6
x2172:	mov ax, [bp + 8]	; 3: 139 70 8
x2175:	mov [bp + 20], ax	; 3: 137 70 20

freopen$104:	; Parameter 14 string_a2B# 8
x2178:	mov word [bp + 22], string_a2B#	; 5: 199 70 22 97 9

freopen$105:	; Call 14 strcmp 0
x2183:	mov word [bp + 14], freopen$106	; 5: 199 70 14 149 8
x2188:	mov [bp + 16], bp	; 3: 137 110 16
x2191:	add bp, 14	; 3: 131 197 14
x2194:	jmp strcmp	; 3: 233 207 0

freopen$106:	; PostCall 14

freopen$107:	; GetReturnValue £temporary937

freopen$108:	; NotEqual 130 £temporary937 0
x2197:	cmp bx, 0	; 3: 131 251 0
x2200:	jne freopen$130	; 2: 117 88

freopen$109:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$110:	; Parameter 14 name 6
x2202:	mov ax, [bp + 6]	; 3: 139 70 6
x2205:	mov [bp + 20], ax	; 3: 137 70 20

freopen$111:	; Parameter 14 66 8
x2208:	mov byte [bp + 22], 66	; 4: 198 70 22 66

freopen$112:	; Call 14 fileopen 0
x2212:	mov word [bp + 14], freopen$113	; 5: 199 70 14 178 8
x2217:	mov [bp + 16], bp	; 3: 137 110 16
x2220:	add bp, 14	; 3: 131 197 14
x2223:	jmp @1112$fileopen	; 3: 233 83 1

freopen$113:	; PostCall 14

freopen$114:	; GetReturnValue £temporary939

freopen$115:	; Assign handle £temporary939
x2226:	mov [bp + 12], bx	; 3: 137 94 12

freopen$116:	; Equal 124 handle -1
x2229:	cmp word [bp + 12], -1	; 4: 131 126 12 255
x2233:	je freopen$124	; 2: 116 32

freopen$117:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$118:	; Parameter 14 stream 6
x2235:	mov ax, [bp + 10]	; 3: 139 70 10
x2238:	mov [bp + 20], ax	; 3: 137 70 20

freopen$119:	; Parameter 14 0 8
x2241:	mov word [bp + 22], 0	; 5: 199 70 22 0 0

freopen$120:	; Parameter 14 2 10
x2246:	mov word [bp + 24], 2	; 5: 199 70 24 2 0

freopen$121:	; Call 14 fseek 0
x2251:	mov word [bp + 14], freopen$122	; 5: 199 70 14 217 8
x2256:	mov [bp + 16], bp	; 3: 137 110 16
x2259:	add bp, 14	; 3: 131 197 14
x2262:	jmp fseek	; 3: 233 140 1

freopen$122:	; PostCall 14

freopen$123:	; Goto 130
x2265:	jmp freopen$130	; 2: 235 23

freopen$124:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$125:	; Parameter 14 name 6
x2267:	mov ax, [bp + 6]	; 3: 139 70 6
x2270:	mov [bp + 20], ax	; 3: 137 70 20

freopen$126:	; Call 14 filecreate 0
x2273:	mov word [bp + 14], freopen$127	; 5: 199 70 14 239 8
x2278:	mov [bp + 16], bp	; 3: 137 110 16
x2281:	add bp, 14	; 3: 131 197 14
x2284:	jmp @1099$filecreate	; 3: 233 69 1

freopen$127:	; PostCall 14

freopen$128:	; GetReturnValue £temporary942

freopen$129:	; Assign handle £temporary942
x2287:	mov [bp + 12], bx	; 3: 137 94 12

freopen$130:	; Equal 147 handle -1
x2290:	cmp word [bp + 12], -1	; 4: 131 126 12 255
x2294:	je freopen$147	; 2: 116 76

freopen$131:	; Deref £temporary944 -> stream stream 0
x2296:	mov si, [bp + 10]	; 3: 139 118 10

freopen$132:	; Assign £temporary944 -> stream 1
x2299:	mov word [si], 1	; 4: 199 4 1 0

freopen$133:	; Deref £temporary945 -> stream stream 2
x2303:	mov si, [bp + 10]	; 3: 139 118 10

freopen$134:	; Assign £temporary945 -> stream handle
x2306:	mov ax, [bp + 12]	; 3: 139 70 12
x2309:	mov [si + 2], ax	; 3: 137 68 2

freopen$135:	; Deref £temporary946 -> stream stream 25
x2312:	mov si, [bp + 10]	; 3: 139 118 10

freopen$136:	; Assign £temporary946 -> stream 0
x2315:	mov word [si + 25], 0	; 5: 199 68 25 0 0

freopen$137:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$138:	; Deref £temporary947 -> stream stream 4
x2320:	mov si, [bp + 10]	; 3: 139 118 10

freopen$139:	; Parameter 14 £temporary947 -> stream 6
x2323:	mov [bp + 20], si	; 3: 137 118 20
x2326:	add word [bp + 20], 4	; 4: 131 70 20 4

freopen$140:	; Parameter 14 name 8
x2330:	mov ax, [bp + 6]	; 3: 139 70 6
x2333:	mov [bp + 22], ax	; 3: 137 70 22

freopen$141:	; Call 14 strcpy 0
x2336:	mov word [bp + 14], freopen$142	; 5: 199 70 14 46 9
x2341:	mov [bp + 16], bp	; 3: 137 110 16
x2344:	add bp, 14	; 3: 131 197 14
x2347:	jmp strcpy	; 3: 233 160 1

freopen$142:	; PostCall 14

freopen$143:	; Deref £temporary949 -> stream stream 27
x2350:	mov si, [bp + 10]	; 3: 139 118 10

freopen$144:	; Assign £temporary949 -> stream 0
x2353:	mov word [si + 27], 0	; 5: 199 68 27 0 0

freopen$145:	; SetReturnValue stream
x2358:	mov bx, [bp + 10]	; 3: 139 94 10

freopen$146:	; Return stream
x2361:	mov ax, [bp]	; 3: 139 70 0
x2364:	mov di, [bp + 4]	; 3: 139 126 4
x2367:	mov bp, [bp + 2]	; 3: 139 110 2
x2370:	jmp ax	; 2: 255 224

freopen$147:	; Deref £temporary950 -> stream stream 0
x2372:	mov si, [bp + 10]	; 3: 139 118 10

freopen$148:	; Assign £temporary950 -> stream 0
x2375:	mov word [si], 0	; 4: 199 4 0 0

freopen$149:	; SetReturnValue 0
x2379:	mov bx, 0	; 3: 187 0 0

freopen$150:	; Return 0
x2382:	mov ax, [bp]	; 3: 139 70 0
x2385:	mov di, [bp + 4]	; 3: 139 126 4
x2388:	mov bp, [bp + 2]	; 3: 139 110 2
x2391:	jmp ax	; 2: 255 224

freopen$151:	; FunctionEnd freopen

string_a#:
x2393:	db "a", 0	; 2: 97 0

string_r2B#:
x2395:	db "r+", 0	; 3: 114 43 0

string_w2B#:
x2398:	db "w+", 0	; 3: 119 43 0

string_a2B#:
x2401:	db "a+", 0	; 3: 97 43 0

strcmp:	; Assign index 0
x2404:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

strcmp$1:	; BinaryAdd £temporary3946 left index
x2409:	mov si, [bp + 6]	; 3: 139 118 6
x2412:	add si, [bp + 10]	; 3: 3 118 10

strcmp$2:	; Deref £temporary3945 -> £temporary3946 £temporary3946 0

strcmp$3:	; NotEqual 9 £temporary3945 -> £temporary3946 0
x2415:	cmp byte [si], 0	; 3: 128 60 0
x2418:	jne strcmp$9	; 2: 117 25

strcmp$4:	; BinaryAdd £temporary3949 right index
x2420:	mov si, [bp + 8]	; 3: 139 118 8
x2423:	add si, [bp + 10]	; 3: 3 118 10

strcmp$5:	; Deref £temporary3948 -> £temporary3949 £temporary3949 0

strcmp$6:	; NotEqual 9 £temporary3948 -> £temporary3949 0
x2426:	cmp byte [si], 0	; 3: 128 60 0
x2429:	jne strcmp$9	; 2: 117 14

strcmp$7:	; SetReturnValue 0
x2431:	mov bx, 0	; 3: 187 0 0

strcmp$8:	; Return 0
x2434:	mov ax, [bp]	; 3: 139 70 0
x2437:	mov di, [bp + 4]	; 3: 139 126 4
x2440:	mov bp, [bp + 2]	; 3: 139 110 2
x2443:	jmp ax	; 2: 255 224

strcmp$9:	; BinaryAdd £temporary3953 left index
x2445:	mov si, [bp + 6]	; 3: 139 118 6
x2448:	add si, [bp + 10]	; 3: 3 118 10

strcmp$10:	; Deref £temporary3952 -> £temporary3953 £temporary3953 0

strcmp$11:	; NotEqual 14 £temporary3952 -> £temporary3953 0
x2451:	cmp byte [si], 0	; 3: 128 60 0
x2454:	jne strcmp$14	; 2: 117 14

strcmp$12:	; SetReturnValue -1
x2456:	mov bx, -1	; 3: 187 255 255

strcmp$13:	; Return -1
x2459:	mov ax, [bp]	; 3: 139 70 0
x2462:	mov di, [bp + 4]	; 3: 139 126 4
x2465:	mov bp, [bp + 2]	; 3: 139 110 2
x2468:	jmp ax	; 2: 255 224

strcmp$14:	; BinaryAdd £temporary3956 right index
x2470:	mov si, [bp + 8]	; 3: 139 118 8
x2473:	add si, [bp + 10]	; 3: 3 118 10

strcmp$15:	; Deref £temporary3955 -> £temporary3956 £temporary3956 0

strcmp$16:	; NotEqual 19 £temporary3955 -> £temporary3956 0
x2476:	cmp byte [si], 0	; 3: 128 60 0
x2479:	jne strcmp$19	; 2: 117 14

strcmp$17:	; SetReturnValue 1
x2481:	mov bx, 1	; 3: 187 1 0

strcmp$18:	; Return 1
x2484:	mov ax, [bp]	; 3: 139 70 0
x2487:	mov di, [bp + 4]	; 3: 139 126 4
x2490:	mov bp, [bp + 2]	; 3: 139 110 2
x2493:	jmp ax	; 2: 255 224

strcmp$19:	; BinaryAdd £temporary3959 left index
x2495:	mov si, [bp + 6]	; 3: 139 118 6
x2498:	add si, [bp + 10]	; 3: 3 118 10

strcmp$20:	; Deref £temporary3958 -> £temporary3959 £temporary3959 0

strcmp$21:	; BinaryAdd £temporary3961 right index
x2501:	mov di, [bp + 8]	; 3: 139 126 8
x2504:	add di, [bp + 10]	; 3: 3 126 10

strcmp$22:	; Deref £temporary3960 -> £temporary3961 £temporary3961 0

strcmp$23:	; SignedGreaterThanEqual 26 £temporary3958 -> £temporary3959 £temporary3960 -> £temporary3961
x2507:	mov al, [di]	; 2: 138 5
x2509:	cmp [si], al	; 2: 56 4
x2511:	jge strcmp$26	; 2: 125 14

strcmp$24:	; SetReturnValue -1
x2513:	mov bx, -1	; 3: 187 255 255

strcmp$25:	; Return -1
x2516:	mov ax, [bp]	; 3: 139 70 0
x2519:	mov di, [bp + 4]	; 3: 139 126 4
x2522:	mov bp, [bp + 2]	; 3: 139 110 2
x2525:	jmp ax	; 2: 255 224

strcmp$26:	; BinaryAdd £temporary3964 left index
x2527:	mov si, [bp + 6]	; 3: 139 118 6
x2530:	add si, [bp + 10]	; 3: 3 118 10

strcmp$27:	; Deref £temporary3963 -> £temporary3964 £temporary3964 0

strcmp$28:	; BinaryAdd £temporary3966 right index
x2533:	mov di, [bp + 8]	; 3: 139 126 8
x2536:	add di, [bp + 10]	; 3: 3 126 10

strcmp$29:	; Deref £temporary3965 -> £temporary3966 £temporary3966 0

strcmp$30:	; SignedLessThanEqual 33 £temporary3963 -> £temporary3964 £temporary3965 -> £temporary3966
x2539:	mov al, [di]	; 2: 138 5
x2541:	cmp [si], al	; 2: 56 4
x2543:	jle strcmp$33	; 2: 126 14

strcmp$31:	; SetReturnValue 1
x2545:	mov bx, 1	; 3: 187 1 0

strcmp$32:	; Return 1
x2548:	mov ax, [bp]	; 3: 139 70 0
x2551:	mov di, [bp + 4]	; 3: 139 126 4
x2554:	mov bp, [bp + 2]	; 3: 139 110 2
x2557:	jmp ax	; 2: 255 224

strcmp$33:	; Increment index
x2559:	inc word [bp + 10]	; 3: 255 70 10

strcmp$34:	; Goto 1
x2562:	jmp strcmp$1	; 3: 233 100 255

strcmp$35:	; FunctionEnd strcmp

@1112$fileopen:	; AssignRegister ah 61
x2565:	mov ah, 61	; 2: 180 61

@1112$fileopen$1:	; AssignRegister al mode
x2567:	mov al, [bp + 8]	; 3: 138 70 8

@1112$fileopen$2:	; AssignRegister dx name
x2570:	mov dx, [bp + 6]	; 3: 139 86 6

@1112$fileopen$3:	; Interrupt 33
x2573:	int 33	; 2: 205 33

@1112$fileopen$4:	; NotCarry 8
x2575:	jnc @1112$fileopen$8	; 2: 115 20

@1112$fileopen$5:	; Assign errno 9
x2577:	mov word [errno], 9	; 6: 199 6 50 10 9 0

@1112$fileopen$6:	; SetReturnValue -1
x2583:	mov bx, -1	; 3: 187 255 255

@1112$fileopen$7:	; Return -1
x2586:	mov ax, [bp]	; 3: 139 70 0
x2589:	mov di, [bp + 4]	; 3: 139 126 4
x2592:	mov bp, [bp + 2]	; 3: 139 110 2
x2595:	jmp ax	; 2: 255 224

@1112$fileopen$8:	; InspectRegister £temporary900 ax

@1112$fileopen$9:	; SetReturnValue £temporary900
x2597:	mov bx, ax	; 2: 137 195

@1112$fileopen$10:	; Return £temporary900
x2599:	mov ax, [bp]	; 3: 139 70 0
x2602:	mov di, [bp + 4]	; 3: 139 126 4
x2605:	mov bp, [bp + 2]	; 3: 139 110 2
x2608:	jmp ax	; 2: 255 224

@1112$fileopen$11:	; FunctionEnd fileopen

errno:
x2610:	dw 0	; 2: 0 0

@1099$filecreate:	; AssignRegister ah 60
x2612:	mov ah, 60	; 2: 180 60

@1099$filecreate$1:	; AssignRegister cx 0
x2614:	mov cx, 0	; 3: 185 0 0

@1099$filecreate$2:	; AssignRegister dx name
x2617:	mov dx, [bp + 6]	; 3: 139 86 6

@1099$filecreate$3:	; Interrupt 33
x2620:	int 33	; 2: 205 33

@1099$filecreate$4:	; InspectRegister £temporary888 ax

@1099$filecreate$5:	; Assign handle £temporary888
x2622:	mov [bp + 8], ax	; 3: 137 70 8

@1099$filecreate$6:	; NotCarry 10
x2625:	jnc @1099$filecreate$10	; 2: 115 20

@1099$filecreate$7:	; Assign errno 9
x2627:	mov word [errno], 9	; 6: 199 6 50 10 9 0

@1099$filecreate$8:	; SetReturnValue -1
x2633:	mov bx, -1	; 3: 187 255 255

@1099$filecreate$9:	; Return -1
x2636:	mov ax, [bp]	; 3: 139 70 0
x2639:	mov di, [bp + 4]	; 3: 139 126 4
x2642:	mov bp, [bp + 2]	; 3: 139 110 2
x2645:	jmp ax	; 2: 255 224

@1099$filecreate$10:	; SetReturnValue handle
x2647:	mov bx, [bp + 8]	; 3: 139 94 8

@1099$filecreate$11:	; Return handle
x2650:	mov ax, [bp]	; 3: 139 70 0
x2653:	mov di, [bp + 4]	; 3: 139 126 4
x2656:	mov bp, [bp + 2]	; 3: 139 110 2
x2659:	jmp ax	; 2: 255 224

@1099$filecreate$12:	; FunctionEnd filecreate

fseek:	; IntegralToIntegral £temporary1123 origin
x2661:	mov ax, [bp + 10]	; 3: 139 70 10
x2664:	cmp ax, 0	; 3: 131 248 0
x2667:	jge fseek$1	; 2: 125 4
x2669:	neg ax	; 2: 247 216
x2671:	neg al	; 2: 246 216

fseek$1:	; AssignRegister al £temporary1123

fseek$2:	; AssignRegister ah 66
x2673:	mov ah, 66	; 2: 180 66

fseek$3:	; Deref £temporary1126 -> stream stream 2
x2675:	mov si, [bp + 6]	; 3: 139 118 6

fseek$4:	; AssignRegister bx £temporary1126 -> stream
x2678:	mov bx, [si + 2]	; 3: 139 92 2

fseek$5:	; AssignRegister cx 0
x2681:	mov cx, 0	; 3: 185 0 0

fseek$6:	; IntegralToIntegral £temporary1129 offset
x2684:	mov dx, [bp + 8]	; 3: 139 86 8

fseek$7:	; AssignRegister dx £temporary1129

fseek$8:	; Interrupt 33
x2687:	int 33	; 2: 205 33

fseek$9:	; Carry 16
x2689:	jc fseek$16	; 2: 114 23

fseek$10:	; Deref £temporary1132 -> stream stream 23
x2691:	mov si, [bp + 6]	; 3: 139 118 6

fseek$11:	; InspectRegister £temporary1133 ax

fseek$12:	; Assign £temporary1132 -> stream £temporary1133
x2694:	mov [si + 23], ax	; 3: 137 68 23

fseek$13:	; Deref £temporary1134 -> stream stream 23
x2697:	mov si, [bp + 6]	; 3: 139 118 6

fseek$14:	; SetReturnValue £temporary1134 -> stream
x2700:	mov bx, [si + 23]	; 3: 139 92 23

fseek$15:	; Return £temporary1134 -> stream
x2703:	mov ax, [bp]	; 3: 139 70 0
x2706:	mov di, [bp + 4]	; 3: 139 126 4
x2709:	mov bp, [bp + 2]	; 3: 139 110 2
x2712:	jmp ax	; 2: 255 224

fseek$16:	; Deref £temporary1135 -> stream stream 21
x2714:	mov si, [bp + 6]	; 3: 139 118 6

fseek$17:	; Assign £temporary1135 -> stream 15
x2717:	mov word [si + 21], 15	; 5: 199 68 21 15 0

fseek$18:	; SetReturnValue -1
x2722:	mov bx, -1	; 3: 187 255 255

fseek$19:	; Return -1
x2725:	mov ax, [bp]	; 3: 139 70 0
x2728:	mov di, [bp + 4]	; 3: 139 126 4
x2731:	mov bp, [bp + 2]	; 3: 139 110 2
x2734:	jmp ax	; 2: 255 224

fseek$20:	; FunctionEnd fseek

fileexists:	; AssignRegister ah 67
x2736:	mov ah, 67	; 2: 180 67

fileexists$1:	; AssignRegister al 0
x2738:	mov al, 0	; 2: 176 0

fileexists$2:	; AssignRegister dx name
x2740:	mov dx, [bp + 6]	; 3: 139 86 6

fileexists$3:	; Interrupt 33
x2743:	int 33	; 2: 205 33

fileexists$4:	; Carry 7
x2745:	jc fileexists$7	; 2: 114 5

fileexists$5:	; Assign £temporary895 1
x2747:	mov bx, 1	; 3: 187 1 0

fileexists$6:	; Goto 8
x2750:	jmp fileexists$8	; 2: 235 3

fileexists$7:	; Assign £temporary895 0
x2752:	mov bx, 0	; 3: 187 0 0

fileexists$8:	; SetReturnValue £temporary895

fileexists$9:	; Return £temporary895
x2755:	mov ax, [bp]	; 3: 139 70 0
x2758:	mov di, [bp + 4]	; 3: 139 126 4
x2761:	mov bp, [bp + 2]	; 3: 139 110 2
x2764:	jmp ax	; 2: 255 224

fileexists$10:	; FunctionEnd fileexists

strcpy:	; Assign index 0
x2766:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

strcpy$1:	; BinaryAdd £temporary3889 source index
x2771:	mov si, [bp + 8]	; 3: 139 118 8
x2774:	add si, [bp + 10]	; 3: 3 118 10

strcpy$2:	; Deref £temporary3888 -> £temporary3889 £temporary3889 0

strcpy$3:	; Equal 11 £temporary3888 -> £temporary3889 0
x2777:	cmp byte [si], 0	; 3: 128 60 0
x2780:	je strcpy$11	; 2: 116 21

strcpy$4:	; BinaryAdd £temporary3893 target index
x2782:	mov si, [bp + 6]	; 3: 139 118 6
x2785:	add si, [bp + 10]	; 3: 3 118 10

strcpy$5:	; Deref £temporary3892 -> £temporary3893 £temporary3893 0

strcpy$6:	; BinaryAdd £temporary3895 source index
x2788:	mov di, [bp + 8]	; 3: 139 126 8
x2791:	add di, [bp + 10]	; 3: 3 126 10

strcpy$7:	; Deref £temporary3894 -> £temporary3895 £temporary3895 0

strcpy$8:	; Assign £temporary3892 -> £temporary3893 £temporary3894 -> £temporary3895
x2794:	mov al, [di]	; 2: 138 5
x2796:	mov [si], al	; 2: 136 4

strcpy$9:	; Increment index
x2798:	inc word [bp + 10]	; 3: 255 70 10

strcpy$10:	; Goto 1
x2801:	jmp strcpy$1	; 2: 235 224

strcpy$11:	; BinaryAdd £temporary3897 target index
x2803:	mov si, [bp + 6]	; 3: 139 118 6
x2806:	add si, [bp + 10]	; 3: 3 118 10

strcpy$12:	; Deref £temporary3896 -> £temporary3897 £temporary3897 0

strcpy$13:	; Assign £temporary3896 -> £temporary3897 0
x2809:	mov byte [si], 0	; 3: 198 4 0

strcpy$14:	; SetReturnValue target
x2812:	mov bx, [bp + 6]	; 3: 139 94 6

strcpy$15:	; Return target
x2815:	mov ax, [bp]	; 3: 139 70 0
x2818:	mov di, [bp + 4]	; 3: 139 126 4
x2821:	mov bp, [bp + 2]	; 3: 139 110 2
x2824:	jmp ax	; 2: 255 224

strcpy$16:	; FunctionEnd strcpy

printf:	; address £temporary2367 format
x2826:	mov si, bp	; 2: 137 238
x2828:	add si, 6	; 3: 131 198 6

printf$1:	; IntegralToIntegral £temporary2368 £temporary2367

printf$2:	; BinaryAdd arg_list £temporary2368 2
x2831:	add si, 2	; 3: 131 198 2
x2834:	mov [di + 8], si	; 3: 137 117 8

printf$3:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printf$4:	; Parameter 10 format 6
x2837:	mov ax, [bp + 6]	; 3: 139 70 6
x2840:	mov [di + 16], ax	; 3: 137 69 16

printf$5:	; Parameter 10 arg_list 8
x2843:	mov ax, [di + 8]	; 3: 139 69 8
x2846:	mov [di + 18], ax	; 3: 137 69 18

printf$6:	; Call 10 vprintf 0
x2849:	mov word [di + 10], printf$7	; 5: 199 69 10 52 11
x2854:	mov [di + 12], bp	; 3: 137 109 12
x2857:	mov [di + 14], di	; 3: 137 125 14
x2860:	add di, 10	; 3: 131 199 10
x2863:	mov bp, di	; 2: 137 253
x2865:	nop	; 1: 144
x2866:	jmp vprintf	; 2: 235 11

printf$7:	; PostCall 10

printf$8:	; GetReturnValue £temporary2370

printf$9:	; SetReturnValue £temporary2370

printf$10:	; Return £temporary2370
x2868:	mov ax, [bp]	; 3: 139 70 0
x2871:	mov di, [bp + 4]	; 3: 139 126 4
x2874:	mov bp, [bp + 2]	; 3: 139 110 2
x2877:	jmp ax	; 2: 255 224

printf$11:	; FunctionEnd printf

vprintf:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

vprintf$1:	; Parameter 10 stdout 6
x2879:	mov ax, [stdout]	; 3: 161 106 11
x2882:	mov [bp + 16], ax	; 3: 137 70 16

vprintf$2:	; Parameter 10 format 8
x2885:	mov ax, [bp + 6]	; 3: 139 70 6
x2888:	mov [bp + 18], ax	; 3: 137 70 18

vprintf$3:	; Parameter 10 arg_list 10
x2891:	mov ax, [bp + 8]	; 3: 139 70 8
x2894:	mov [bp + 20], ax	; 3: 137 70 20

vprintf$4:	; Call 10 vfprintf 0
x2897:	mov word [bp + 10], vprintf$5	; 5: 199 70 10 95 11
x2902:	mov [bp + 12], bp	; 3: 137 110 12
x2905:	add bp, 10	; 3: 131 197 10
x2908:	nop	; 1: 144
x2909:	jmp vfprintf	; 2: 235 13

vprintf$5:	; PostCall 10

vprintf$6:	; GetReturnValue £temporary2374

vprintf$7:	; SetReturnValue £temporary2374

vprintf$8:	; Return £temporary2374
x2911:	mov ax, [bp]	; 3: 139 70 0
x2914:	mov di, [bp + 4]	; 3: 139 126 4
x2917:	mov bp, [bp + 2]	; 3: 139 110 2
x2920:	jmp ax	; 2: 255 224

vprintf$9:	; FunctionEnd vprintf

stdout:
x2922:	dw g_fileArray + 29	; 2: 147 3

vfprintf:	; Assign g_outStatus 0
x2924:	mov word [g_outStatus], 0	; 6: 199 6 157 11 0 0

vfprintf$1:	; IntegralToIntegral £temporary2386 outStream
x2930:	mov ax, [bp + 6]	; 3: 139 70 6

vfprintf$2:	; Assign g_outDevice £temporary2386
x2933:	mov [g_outDevice], ax	; 3: 163 159 11

vfprintf$3:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

vfprintf$4:	; Parameter 12 format 6
x2936:	mov ax, [bp + 8]	; 3: 139 70 8
x2939:	mov [bp + 18], ax	; 3: 137 70 18

vfprintf$5:	; Parameter 12 arg_list 8
x2942:	mov ax, [bp + 10]	; 3: 139 70 10
x2945:	mov [bp + 20], ax	; 3: 137 70 20

vfprintf$6:	; Call 12 printFormat 0
x2948:	mov word [bp + 12], vfprintf$7	; 5: 199 70 12 146 11
x2953:	mov [bp + 14], bp	; 3: 137 110 14
x2956:	add bp, 12	; 3: 131 197 12
x2959:	nop	; 1: 144
x2960:	jmp printFormat	; 2: 235 15

vfprintf$7:	; PostCall 12

vfprintf$8:	; GetReturnValue £temporary2387

vfprintf$9:	; SetReturnValue £temporary2387

vfprintf$10:	; Return £temporary2387
x2962:	mov ax, [bp]	; 3: 139 70 0
x2965:	mov di, [bp + 4]	; 3: 139 126 4
x2968:	mov bp, [bp + 2]	; 3: 139 110 2
x2971:	jmp ax	; 2: 255 224

vfprintf$11:	; FunctionEnd vfprintf

g_outStatus:
x2973:	db 0, 0	; 2: 0 0

g_outDevice:
x2975:	db 0, 0	; 2: 0 0

printFormat:	; Assign width 0
x2977:	mov word [bp + 12], 0	; 5: 199 70 12 0 0

printFormat$1:	; Assign precision 0
x2982:	mov word [bp + 14], 0	; 5: 199 70 14 0 0

printFormat$2:	; Assign percent 0
x2987:	mov word [bp + 16], 0	; 5: 199 70 16 0 0

printFormat$3:	; Assign plus 0
x2992:	mov word [bp + 18], 0	; 5: 199 70 18 0 0

printFormat$4:	; Assign minus 0
x2997:	mov word [bp + 20], 0	; 5: 199 70 20 0 0

printFormat$5:	; Assign space 0
x3002:	mov word [bp + 22], 0	; 5: 199 70 22 0 0

printFormat$6:	; Assign zero 0
x3007:	mov word [bp + 24], 0	; 5: 199 70 24 0 0

printFormat$7:	; Assign grid 0
x3012:	mov word [bp + 26], 0	; 5: 199 70 26 0 0

printFormat$8:	; Assign widthStar 0
x3017:	mov word [bp + 28], 0	; 5: 199 70 28 0 0

printFormat$9:	; Assign period 0
x3022:	mov word [bp + 30], 0	; 5: 199 70 30 0 0

printFormat$10:	; Assign precisionStar 0
x3027:	mov word [bp + 32], 0	; 5: 199 70 32 0 0

printFormat$11:	; Assign shortInt 0
x3032:	mov word [bp + 34], 0	; 5: 199 70 34 0 0

printFormat$12:	; Assign longInt 0
x3037:	mov word [bp + 36], 0	; 5: 199 70 36 0 0

printFormat$13:	; Assign longDouble 0
x3042:	mov word [bp + 38], 0	; 5: 199 70 38 0 0

printFormat$14:	; Assign g_outChars 0
x3047:	mov word [g_outChars], 0	; 6: 199 6 251 16 0 0

printFormat$15:	; Assign index 0
x3053:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

printFormat$16:	; BinaryAdd £temporary2221 format index
x3058:	mov si, [bp + 6]	; 3: 139 118 6
x3061:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; Deref £temporary2220 -> £temporary2221 £temporary2221 0

printFormat$18:	; Equal 285 £temporary2220 -> £temporary2221 0
x3064:	cmp byte [si], 0	; 3: 128 60 0
x3067:	je printFormat$285	; 4: 15 132 214 4

printFormat$19:	; BinaryAdd £temporary2225 format index
x3071:	mov si, [bp + 6]	; 3: 139 118 6
x3074:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; Deref £temporary2224 -> £temporary2225 £temporary2225 0

printFormat$21:	; Assign c £temporary2224 -> £temporary2225
x3077:	mov al, [si]	; 2: 138 4
x3079:	mov [bp + 40], al	; 3: 136 70 40

printFormat$22:	; Equal 263 percent 0
x3082:	cmp word [bp + 16], 0	; 4: 131 126 16 0
x3086:	je printFormat$263	; 4: 15 132 91 4

printFormat$23:	; Case 52 c 43
x3090:	mov al, [bp + 40]	; 3: 138 70 40
x3093:	cmp al, 43	; 2: 60 43
x3095:	je printFormat$52	; 4: 15 132 143 0

printFormat$24:	; Case 54 c 45
x3099:	cmp al, 45	; 2: 60 45
x3101:	je printFormat$54	; 4: 15 132 145 0

printFormat$25:	; Case 56 c 32
x3105:	cmp al, 32	; 2: 60 32
x3107:	je printFormat$56	; 4: 15 132 147 0

printFormat$26:	; Case 58 c 48
x3111:	cmp al, 48	; 2: 60 48
x3113:	je printFormat$58	; 4: 15 132 149 0

printFormat$27:	; Case 60 c 35
x3117:	cmp al, 35	; 2: 60 35
x3119:	je printFormat$60	; 4: 15 132 151 0

printFormat$28:	; Case 62 c 46
x3123:	cmp al, 46	; 2: 60 46
x3125:	je printFormat$62	; 4: 15 132 153 0

printFormat$29:	; Case 64 c 42
x3129:	cmp al, 42	; 2: 60 42
x3131:	je printFormat$64	; 4: 15 132 155 0

printFormat$30:	; Case 69 c 104
x3135:	cmp al, 104	; 2: 60 104
x3137:	je printFormat$69	; 4: 15 132 171 0

printFormat$31:	; Case 71 c 108
x3141:	cmp al, 108	; 2: 60 108
x3143:	je printFormat$71	; 4: 15 132 173 0

printFormat$32:	; Case 73 c 76
x3147:	cmp al, 76	; 2: 60 76
x3149:	je printFormat$73	; 4: 15 132 175 0

printFormat$33:	; Case 75 c 37
x3153:	cmp al, 37	; 2: 60 37
x3155:	je printFormat$75	; 4: 15 132 177 0

printFormat$34:	; Case 75 c 110
x3159:	cmp al, 110	; 2: 60 110
x3161:	je printFormat$75	; 4: 15 132 171 0

printFormat$35:	; Case 75 c 112
x3165:	cmp al, 112	; 2: 60 112
x3167:	je printFormat$75	; 4: 15 132 165 0

printFormat$36:	; Case 75 c 71
x3171:	cmp al, 71	; 2: 60 71
x3173:	je printFormat$75	; 4: 15 132 159 0

printFormat$37:	; Case 75 c 103
x3177:	cmp al, 103	; 2: 60 103
x3179:	je printFormat$75	; 4: 15 132 153 0

printFormat$38:	; Case 75 c 69
x3183:	cmp al, 69	; 2: 60 69
x3185:	je printFormat$75	; 4: 15 132 147 0

printFormat$39:	; Case 75 c 101
x3189:	cmp al, 101	; 2: 60 101
x3191:	je printFormat$75	; 4: 15 132 141 0

printFormat$40:	; Case 75 c 102
x3195:	cmp al, 102	; 2: 60 102
x3197:	je printFormat$75	; 4: 15 132 135 0

printFormat$41:	; Case 75 c 115
x3201:	cmp al, 115	; 2: 60 115
x3203:	je printFormat$75	; 4: 15 132 129 0

printFormat$42:	; Case 75 c 99
x3207:	cmp al, 99	; 2: 60 99
x3209:	je printFormat$75	; 2: 116 125

printFormat$43:	; Case 75 c 88
x3211:	cmp al, 88	; 2: 60 88
x3213:	je printFormat$75	; 2: 116 121

printFormat$44:	; Case 75 c 120
x3215:	cmp al, 120	; 2: 60 120
x3217:	je printFormat$75	; 2: 116 117

printFormat$45:	; Case 75 c 111
x3219:	cmp al, 111	; 2: 60 111
x3221:	je printFormat$75	; 2: 116 113

printFormat$46:	; Case 75 c 98
x3223:	cmp al, 98	; 2: 60 98
x3225:	je printFormat$75	; 2: 116 109

printFormat$47:	; Case 75 c 117
x3227:	cmp al, 117	; 2: 60 117
x3229:	je printFormat$75	; 2: 116 105

printFormat$48:	; Case 75 c 100
x3231:	cmp al, 100	; 2: 60 100
x3233:	je printFormat$75	; 2: 116 101

printFormat$49:	; Case 75 c 105
x3235:	cmp al, 105	; 2: 60 105
x3237:	je printFormat$75	; 2: 116 97

printFormat$50:	; CaseEnd c

printFormat$51:	; Goto 239
x3239:	jmp printFormat$239	; 3: 233 78 3

printFormat$52:	; Assign plus 1
x3242:	mov word [bp + 18], 1	; 5: 199 70 18 1 0

printFormat$53:	; Goto 283
x3247:	jmp printFormat$283	; 3: 233 29 4

printFormat$54:	; Assign minus 1
x3250:	mov word [bp + 20], 1	; 5: 199 70 20 1 0

printFormat$55:	; Goto 283
x3255:	jmp printFormat$283	; 3: 233 21 4

printFormat$56:	; Assign space 1
x3258:	mov word [bp + 22], 1	; 5: 199 70 22 1 0

printFormat$57:	; Goto 283
x3263:	jmp printFormat$283	; 3: 233 13 4

printFormat$58:	; Assign zero 1
x3266:	mov word [bp + 24], 1	; 5: 199 70 24 1 0

printFormat$59:	; Goto 283
x3271:	jmp printFormat$283	; 3: 233 5 4

printFormat$60:	; Assign grid 1
x3274:	mov word [bp + 26], 1	; 5: 199 70 26 1 0

printFormat$61:	; Goto 283
x3279:	jmp printFormat$283	; 3: 233 253 3

printFormat$62:	; Assign period 1
x3282:	mov word [bp + 30], 1	; 5: 199 70 30 1 0

printFormat$63:	; Goto 283
x3287:	jmp printFormat$283	; 3: 233 245 3

printFormat$64:	; NotEqual 67 period 0
x3290:	cmp word [bp + 30], 0	; 4: 131 126 30 0
x3294:	jne printFormat$67	; 2: 117 8

printFormat$65:	; Assign width -1
x3296:	mov word [bp + 12], -1	; 5: 199 70 12 255 255

printFormat$66:	; Goto 283
x3301:	jmp printFormat$283	; 3: 233 231 3

printFormat$67:	; Assign precision -1
x3304:	mov word [bp + 14], -1	; 5: 199 70 14 255 255

printFormat$68:	; Goto 283
x3309:	jmp printFormat$283	; 3: 233 223 3

printFormat$69:	; Assign shortInt 1
x3312:	mov word [bp + 34], 1	; 5: 199 70 34 1 0

printFormat$70:	; Goto 283
x3317:	jmp printFormat$283	; 3: 233 215 3

printFormat$71:	; Assign longInt 1
x3320:	mov word [bp + 36], 1	; 5: 199 70 36 1 0

printFormat$72:	; Goto 283
x3325:	jmp printFormat$283	; 3: 233 207 3

printFormat$73:	; Assign longDouble 1
x3328:	mov word [bp + 38], 1	; 5: 199 70 38 1 0

printFormat$74:	; Goto 283
x3333:	jmp printFormat$283	; 3: 233 199 3

printFormat$75:	; Equal 107 minus 0
x3336:	cmp word [bp + 20], 0	; 4: 131 126 20 0
x3340:	je printFormat$107	; 4: 15 132 140 0

printFormat$76:	; Assign startChars g_outChars
x3344:	mov ax, [g_outChars]	; 3: 161 251 16
x3347:	mov [bp + 41], ax	; 3: 137 70 41

printFormat$77:	; CallHeader 43 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$78:	; BinaryAdd £temporary2229 format index
x3350:	mov si, [bp + 6]	; 3: 139 118 6
x3353:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; Deref £temporary2228 -> £temporary2229 £temporary2229 0

printFormat$80:	; address £temporary2230 £temporary2228 -> £temporary2229

printFormat$81:	; Parameter 43 £temporary2230 6
x3356:	mov [bp + 49], si	; 3: 137 118 49

printFormat$82:	; Parameter 43 arg_list 8
x3359:	mov ax, [bp + 8]	; 3: 139 70 8
x3362:	mov [bp + 51], ax	; 3: 137 70 51

printFormat$83:	; Parameter 43 plus 10
x3365:	mov ax, [bp + 18]	; 3: 139 70 18
x3368:	mov [bp + 53], ax	; 3: 137 70 53

printFormat$84:	; Parameter 43 space 12
x3371:	mov ax, [bp + 22]	; 3: 139 70 22
x3374:	mov [bp + 55], ax	; 3: 137 70 55

printFormat$85:	; Parameter 43 grid 14
x3377:	mov ax, [bp + 26]	; 3: 139 70 26
x3380:	mov [bp + 57], ax	; 3: 137 70 57

printFormat$86:	; address £temporary2231 width
x3383:	mov si, bp	; 2: 137 238
x3385:	add si, 12	; 3: 131 198 12

printFormat$87:	; Parameter 43 £temporary2231 16
x3388:	mov [bp + 59], si	; 3: 137 118 59

printFormat$88:	; Parameter 43 precision 18
x3391:	mov ax, [bp + 14]	; 3: 139 70 14
x3394:	mov [bp + 61], ax	; 3: 137 70 61

printFormat$89:	; Parameter 43 shortInt 20
x3397:	mov ax, [bp + 34]	; 3: 139 70 34
x3400:	mov [bp + 63], ax	; 3: 137 70 63

printFormat$90:	; Parameter 43 longInt 22
x3403:	mov ax, [bp + 36]	; 3: 139 70 36
x3406:	mov [bp + 65], ax	; 3: 137 70 65

printFormat$91:	; Parameter 43 longDouble 24
x3409:	mov ax, [bp + 38]	; 3: 139 70 38
x3412:	mov [bp + 67], ax	; 3: 137 70 67

printFormat$92:	; Parameter 43 1 26
x3415:	mov word [bp + 69], 1	; 5: 199 70 69 1 0

printFormat$93:	; Parameter 43 0 28
x3420:	mov word [bp + 71], 0	; 5: 199 70 71 0 0

printFormat$94:	; Call 43 printArgument 0
x3425:	mov word [bp + 43], printFormat$95	; 5: 199 70 43 111 13
x3430:	mov [bp + 45], bp	; 3: 137 110 45
x3433:	add bp, 43	; 3: 131 197 43
x3436:	jmp printArgument	; 3: 233 144 3

printFormat$95:	; PostCall 43

printFormat$96:	; GetReturnValue £temporary2232

printFormat$97:	; Assign arg_list £temporary2232
x3439:	mov [bp + 8], bx	; 3: 137 94 8

printFormat$98:	; BinarySubtract field g_outChars startChars
x3442:	mov ax, [g_outChars]	; 3: 161 251 16
x3445:	sub ax, [bp + 41]	; 3: 43 70 41
x3448:	mov [bp + 43], ax	; 3: 137 70 43

printFormat$99:	; Assign £temporary2234 field
x3451:	mov ax, [bp + 43]	; 3: 139 70 43

printFormat$100:	; Increment field
x3454:	inc word [bp + 43]	; 3: 255 70 43

printFormat$101:	; SignedGreaterThanEqual 237 £temporary2234 width
x3457:	cmp ax, [bp + 12]	; 3: 59 70 12
x3460:	jge printFormat$237	; 4: 15 141 104 2

printFormat$102:	; CallHeader 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$103:	; Parameter 45 32 6
x3464:	mov byte [bp + 51], 32	; 4: 198 70 51 32

printFormat$104:	; Call 45 printChar 0
x3468:	mov word [bp + 45], printFormat$105	; 5: 199 70 45 154 13
x3473:	mov [bp + 47], bp	; 3: 137 110 47
x3476:	add bp, 45	; 3: 131 197 45
x3479:	jmp printChar	; 3: 233 120 10

printFormat$105:	; PostCall 45

printFormat$106:	; Goto 99
x3482:	jmp printFormat$99	; 2: 235 223

printFormat$107:	; Equal 184 zero 0
x3484:	cmp word [bp + 24], 0	; 4: 131 126 24 0
x3488:	je printFormat$184	; 4: 15 132 84 1

printFormat$108:	; Assign startChars g_outChars
x3492:	mov ax, [g_outChars]	; 3: 161 251 16
x3495:	mov [bp + 41], ax	; 3: 137 70 41

printFormat$109:	; Assign oldOutStatus g_outStatus
x3498:	mov ax, [g_outStatus]	; 3: 161 157 11
x3501:	mov [bp + 43], ax	; 3: 137 70 43

printFormat$110:	; Assign negative 0
x3504:	mov word [bp + 45], 0	; 5: 199 70 45 0 0

printFormat$111:	; Assign g_outStatus 2
x3509:	mov word [g_outStatus], 2	; 6: 199 6 157 11 2 0

printFormat$112:	; CallHeader 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$113:	; BinaryAdd £temporary2238 format index
x3515:	mov si, [bp + 6]	; 3: 139 118 6
x3518:	add si, [bp + 10]	; 3: 3 118 10

printFormat$114:	; Deref £temporary2237 -> £temporary2238 £temporary2238 0

printFormat$115:	; address £temporary2239 £temporary2237 -> £temporary2238

printFormat$116:	; Parameter 47 £temporary2239 6
x3521:	mov [bp + 53], si	; 3: 137 118 53

printFormat$117:	; Parameter 47 arg_list 8
x3524:	mov ax, [bp + 8]	; 3: 139 70 8
x3527:	mov [bp + 55], ax	; 3: 137 70 55

printFormat$118:	; Parameter 47 0 10
x3530:	mov word [bp + 57], 0	; 5: 199 70 57 0 0

printFormat$119:	; Parameter 47 0 12
x3535:	mov word [bp + 59], 0	; 5: 199 70 59 0 0

printFormat$120:	; Parameter 47 grid 14
x3540:	mov ax, [bp + 26]	; 3: 139 70 26
x3543:	mov [bp + 61], ax	; 3: 137 70 61

printFormat$121:	; address £temporary2240 width
x3546:	mov si, bp	; 2: 137 238
x3548:	add si, 12	; 3: 131 198 12

printFormat$122:	; Parameter 47 £temporary2240 16
x3551:	mov [bp + 63], si	; 3: 137 118 63

printFormat$123:	; Parameter 47 precision 18
x3554:	mov ax, [bp + 14]	; 3: 139 70 14
x3557:	mov [bp + 65], ax	; 3: 137 70 65

printFormat$124:	; Parameter 47 shortInt 20
x3560:	mov ax, [bp + 34]	; 3: 139 70 34
x3563:	mov [bp + 67], ax	; 3: 137 70 67

printFormat$125:	; Parameter 47 longInt 22
x3566:	mov ax, [bp + 36]	; 3: 139 70 36
x3569:	mov [bp + 69], ax	; 3: 137 70 69

printFormat$126:	; Parameter 47 longDouble 24
x3572:	mov ax, [bp + 38]	; 3: 139 70 38
x3575:	mov [bp + 71], ax	; 3: 137 70 71

printFormat$127:	; Parameter 47 0 26
x3578:	mov word [bp + 73], 0	; 5: 199 70 73 0 0

printFormat$128:	; address £temporary2241 negative
x3583:	mov si, bp	; 2: 137 238
x3585:	add si, 45	; 3: 131 198 45

printFormat$129:	; Parameter 47 £temporary2241 28
x3588:	mov [bp + 75], si	; 3: 137 118 75

printFormat$130:	; Call 47 printArgument 0
x3591:	mov word [bp + 47], printFormat$131	; 5: 199 70 47 21 14
x3596:	mov [bp + 49], bp	; 3: 137 110 49
x3599:	add bp, 47	; 3: 131 197 47
x3602:	jmp printArgument	; 3: 233 234 2

printFormat$131:	; PostCall 47

printFormat$132:	; Assign g_outStatus oldOutStatus
x3605:	mov ax, [bp + 43]	; 3: 139 70 43
x3608:	mov [g_outStatus], ax	; 3: 163 157 11

printFormat$133:	; BinarySubtract field g_outChars startChars
x3611:	mov ax, [g_outChars]	; 3: 161 251 16
x3614:	sub ax, [bp + 41]	; 3: 43 70 41
x3617:	mov [bp + 47], ax	; 3: 137 70 47

printFormat$134:	; Assign g_outChars startChars
x3620:	mov ax, [bp + 41]	; 3: 139 70 41
x3623:	mov [g_outChars], ax	; 3: 163 251 16

printFormat$135:	; Equal 142 negative 0
x3626:	cmp word [bp + 45], 0	; 4: 131 126 45 0
x3630:	je printFormat$142	; 2: 116 23

printFormat$136:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$137:	; Parameter 49 45 6
x3632:	mov byte [bp + 55], 45	; 4: 198 70 55 45

printFormat$138:	; Call 49 printChar 0
x3636:	mov word [bp + 49], printFormat$139	; 5: 199 70 49 66 14
x3641:	mov [bp + 51], bp	; 3: 137 110 51
x3644:	add bp, 49	; 3: 131 197 49
x3647:	jmp printChar	; 3: 233 208 9

printFormat$139:	; PostCall 49

printFormat$140:	; Increment field
x3650:	inc word [bp + 47]	; 3: 255 70 47

printFormat$141:	; Goto 155
x3653:	jmp printFormat$155	; 2: 235 56

printFormat$142:	; Equal 149 plus 0
x3655:	cmp word [bp + 18], 0	; 4: 131 126 18 0
x3659:	je printFormat$149	; 2: 116 23

printFormat$143:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$144:	; Parameter 49 43 6
x3661:	mov byte [bp + 55], 43	; 4: 198 70 55 43

printFormat$145:	; Call 49 printChar 0
x3665:	mov word [bp + 49], printFormat$146	; 5: 199 70 49 95 14
x3670:	mov [bp + 51], bp	; 3: 137 110 51
x3673:	add bp, 49	; 3: 131 197 49
x3676:	jmp printChar	; 3: 233 179 9

printFormat$146:	; PostCall 49

printFormat$147:	; Increment field
x3679:	inc word [bp + 47]	; 3: 255 70 47

printFormat$148:	; Goto 155
x3682:	jmp printFormat$155	; 2: 235 27

printFormat$149:	; Equal 155 space 0
x3684:	cmp word [bp + 22], 0	; 4: 131 126 22 0
x3688:	je printFormat$155	; 2: 116 21

printFormat$150:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$151:	; Parameter 49 32 6
x3690:	mov byte [bp + 55], 32	; 4: 198 70 55 32

printFormat$152:	; Call 49 printChar 0
x3694:	mov word [bp + 49], printFormat$153	; 5: 199 70 49 124 14
x3699:	mov [bp + 51], bp	; 3: 137 110 51
x3702:	add bp, 49	; 3: 131 197 49
x3705:	jmp printChar	; 3: 233 150 9

printFormat$153:	; PostCall 49

printFormat$154:	; Increment field
x3708:	inc word [bp + 47]	; 3: 255 70 47

printFormat$155:	; Assign £temporary2253 field
x3711:	mov ax, [bp + 47]	; 3: 139 70 47

printFormat$156:	; Increment field
x3714:	inc word [bp + 47]	; 3: 255 70 47

printFormat$157:	; SignedGreaterThanEqual 163 £temporary2253 width
x3717:	cmp ax, [bp + 12]	; 3: 59 70 12
x3720:	jge printFormat$163	; 2: 125 20

printFormat$158:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$159:	; Parameter 49 48 6
x3722:	mov byte [bp + 55], 48	; 4: 198 70 55 48

printFormat$160:	; Call 49 printChar 0
x3726:	mov word [bp + 49], printFormat$161	; 5: 199 70 49 156 14
x3731:	mov [bp + 51], bp	; 3: 137 110 51
x3734:	add bp, 49	; 3: 131 197 49
x3737:	jmp printChar	; 3: 233 118 9

printFormat$161:	; PostCall 49

printFormat$162:	; Goto 155
x3740:	jmp printFormat$155	; 2: 235 225

printFormat$163:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$164:	; BinaryAdd £temporary2257 format index
x3742:	mov si, [bp + 6]	; 3: 139 118 6
x3745:	add si, [bp + 10]	; 3: 3 118 10

printFormat$165:	; Deref £temporary2256 -> £temporary2257 £temporary2257 0

printFormat$166:	; address £temporary2258 £temporary2256 -> £temporary2257

printFormat$167:	; Parameter 49 £temporary2258 6
x3748:	mov [bp + 55], si	; 3: 137 118 55

printFormat$168:	; Parameter 49 arg_list 8
x3751:	mov ax, [bp + 8]	; 3: 139 70 8
x3754:	mov [bp + 57], ax	; 3: 137 70 57

printFormat$169:	; Parameter 49 0 10
x3757:	mov word [bp + 59], 0	; 5: 199 70 59 0 0

printFormat$170:	; Parameter 49 0 12
x3762:	mov word [bp + 61], 0	; 5: 199 70 61 0 0

printFormat$171:	; Parameter 49 grid 14
x3767:	mov ax, [bp + 26]	; 3: 139 70 26
x3770:	mov [bp + 63], ax	; 3: 137 70 63

printFormat$172:	; Parameter 49 0 16
x3773:	mov word [bp + 65], 0	; 5: 199 70 65 0 0

printFormat$173:	; Parameter 49 precision 18
x3778:	mov ax, [bp + 14]	; 3: 139 70 14
x3781:	mov [bp + 67], ax	; 3: 137 70 67

printFormat$174:	; Parameter 49 shortInt 20
x3784:	mov ax, [bp + 34]	; 3: 139 70 34
x3787:	mov [bp + 69], ax	; 3: 137 70 69

printFormat$175:	; Parameter 49 longInt 22
x3790:	mov ax, [bp + 36]	; 3: 139 70 36
x3793:	mov [bp + 71], ax	; 3: 137 70 71

printFormat$176:	; Parameter 49 longDouble 24
x3796:	mov ax, [bp + 38]	; 3: 139 70 38
x3799:	mov [bp + 73], ax	; 3: 137 70 73

printFormat$177:	; Parameter 49 0 26
x3802:	mov word [bp + 75], 0	; 5: 199 70 75 0 0

printFormat$178:	; Parameter 49 0 28
x3807:	mov word [bp + 77], 0	; 5: 199 70 77 0 0

printFormat$179:	; Call 49 printArgument 0
x3812:	mov word [bp + 49], printFormat$180	; 5: 199 70 49 242 14
x3817:	mov [bp + 51], bp	; 3: 137 110 51
x3820:	add bp, 49	; 3: 131 197 49
x3823:	jmp printArgument	; 3: 233 13 2

printFormat$180:	; PostCall 49

printFormat$181:	; GetReturnValue £temporary2259

printFormat$182:	; Assign arg_list £temporary2259
x3826:	mov [bp + 8], bx	; 3: 137 94 8

printFormat$183:	; Goto 237
x3829:	jmp printFormat$237	; 3: 233 248 0

printFormat$184:	; Assign startChars g_outChars
x3832:	mov ax, [g_outChars]	; 3: 161 251 16
x3835:	mov [bp + 41], ax	; 3: 137 70 41

printFormat$185:	; Assign oldOutStatus g_outStatus
x3838:	mov ax, [g_outStatus]	; 3: 161 157 11
x3841:	mov [bp + 43], ax	; 3: 137 70 43

printFormat$186:	; Assign g_outStatus 2
x3844:	mov word [g_outStatus], 2	; 6: 199 6 157 11 2 0

printFormat$187:	; CallHeader 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$188:	; BinaryAdd £temporary2261 format index
x3850:	mov si, [bp + 6]	; 3: 139 118 6
x3853:	add si, [bp + 10]	; 3: 3 118 10

printFormat$189:	; Deref £temporary2260 -> £temporary2261 £temporary2261 0

printFormat$190:	; address £temporary2262 £temporary2260 -> £temporary2261

printFormat$191:	; Parameter 45 £temporary2262 6
x3856:	mov [bp + 51], si	; 3: 137 118 51

printFormat$192:	; Parameter 45 arg_list 8
x3859:	mov ax, [bp + 8]	; 3: 139 70 8
x3862:	mov [bp + 53], ax	; 3: 137 70 53

printFormat$193:	; Parameter 45 plus 10
x3865:	mov ax, [bp + 18]	; 3: 139 70 18
x3868:	mov [bp + 55], ax	; 3: 137 70 55

printFormat$194:	; Parameter 45 space 12
x3871:	mov ax, [bp + 22]	; 3: 139 70 22
x3874:	mov [bp + 57], ax	; 3: 137 70 57

printFormat$195:	; Parameter 45 grid 14
x3877:	mov ax, [bp + 26]	; 3: 139 70 26
x3880:	mov [bp + 59], ax	; 3: 137 70 59

printFormat$196:	; address £temporary2263 width
x3883:	mov si, bp	; 2: 137 238
x3885:	add si, 12	; 3: 131 198 12

printFormat$197:	; Parameter 45 £temporary2263 16
x3888:	mov [bp + 61], si	; 3: 137 118 61

printFormat$198:	; Parameter 45 precision 18
x3891:	mov ax, [bp + 14]	; 3: 139 70 14
x3894:	mov [bp + 63], ax	; 3: 137 70 63

printFormat$199:	; Parameter 45 shortInt 20
x3897:	mov ax, [bp + 34]	; 3: 139 70 34
x3900:	mov [bp + 65], ax	; 3: 137 70 65

printFormat$200:	; Parameter 45 longInt 22
x3903:	mov ax, [bp + 36]	; 3: 139 70 36
x3906:	mov [bp + 67], ax	; 3: 137 70 67

printFormat$201:	; Parameter 45 longDouble 24
x3909:	mov ax, [bp + 38]	; 3: 139 70 38
x3912:	mov [bp + 69], ax	; 3: 137 70 69

printFormat$202:	; Parameter 45 1 26
x3915:	mov word [bp + 71], 1	; 5: 199 70 71 1 0

printFormat$203:	; Parameter 45 0 28
x3920:	mov word [bp + 73], 0	; 5: 199 70 73 0 0

printFormat$204:	; Call 45 printArgument 0
x3925:	mov word [bp + 45], printFormat$205	; 5: 199 70 45 99 15
x3930:	mov [bp + 47], bp	; 3: 137 110 47
x3933:	add bp, 45	; 3: 131 197 45
x3936:	jmp printArgument	; 3: 233 156 1

printFormat$205:	; PostCall 45

printFormat$206:	; Assign g_outStatus oldOutStatus
x3939:	mov ax, [bp + 43]	; 3: 139 70 43
x3942:	mov [g_outStatus], ax	; 3: 163 157 11

printFormat$207:	; BinarySubtract field g_outChars startChars
x3945:	mov ax, [g_outChars]	; 3: 161 251 16
x3948:	sub ax, [bp + 41]	; 3: 43 70 41
x3951:	mov [bp + 45], ax	; 3: 137 70 45

printFormat$208:	; Assign g_outChars startChars
x3954:	mov ax, [bp + 41]	; 3: 139 70 41
x3957:	mov [g_outChars], ax	; 3: 163 251 16

printFormat$209:	; Assign £temporary2266 field
x3960:	mov ax, [bp + 45]	; 3: 139 70 45

printFormat$210:	; Increment field
x3963:	inc word [bp + 45]	; 3: 255 70 45

printFormat$211:	; SignedGreaterThanEqual 217 £temporary2266 width
x3966:	cmp ax, [bp + 12]	; 3: 59 70 12
x3969:	jge printFormat$217	; 2: 125 20

printFormat$212:	; CallHeader 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$213:	; Parameter 47 32 6
x3971:	mov byte [bp + 53], 32	; 4: 198 70 53 32

printFormat$214:	; Call 47 printChar 0
x3975:	mov word [bp + 47], printFormat$215	; 5: 199 70 47 149 15
x3980:	mov [bp + 49], bp	; 3: 137 110 49
x3983:	add bp, 47	; 3: 131 197 47
x3986:	jmp printChar	; 3: 233 125 8

printFormat$215:	; PostCall 47

printFormat$216:	; Goto 209
x3989:	jmp printFormat$209	; 2: 235 225

printFormat$217:	; CallHeader 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$218:	; BinaryAdd £temporary2270 format index
x3991:	mov si, [bp + 6]	; 3: 139 118 6
x3994:	add si, [bp + 10]	; 3: 3 118 10

printFormat$219:	; Deref £temporary2269 -> £temporary2270 £temporary2270 0

printFormat$220:	; address £temporary2271 £temporary2269 -> £temporary2270

printFormat$221:	; Parameter 47 £temporary2271 6
x3997:	mov [bp + 53], si	; 3: 137 118 53

printFormat$222:	; Parameter 47 arg_list 8
x4000:	mov ax, [bp + 8]	; 3: 139 70 8
x4003:	mov [bp + 55], ax	; 3: 137 70 55

printFormat$223:	; Parameter 47 plus 10
x4006:	mov ax, [bp + 18]	; 3: 139 70 18
x4009:	mov [bp + 57], ax	; 3: 137 70 57

printFormat$224:	; Parameter 47 space 12
x4012:	mov ax, [bp + 22]	; 3: 139 70 22
x4015:	mov [bp + 59], ax	; 3: 137 70 59

printFormat$225:	; Parameter 47 grid 14
x4018:	mov ax, [bp + 26]	; 3: 139 70 26
x4021:	mov [bp + 61], ax	; 3: 137 70 61

printFormat$226:	; Parameter 47 0 16
x4024:	mov word [bp + 63], 0	; 5: 199 70 63 0 0

printFormat$227:	; Parameter 47 precision 18
x4029:	mov ax, [bp + 14]	; 3: 139 70 14
x4032:	mov [bp + 65], ax	; 3: 137 70 65

printFormat$228:	; Parameter 47 shortInt 20
x4035:	mov ax, [bp + 34]	; 3: 139 70 34
x4038:	mov [bp + 67], ax	; 3: 137 70 67

printFormat$229:	; Parameter 47 longInt 22
x4041:	mov ax, [bp + 36]	; 3: 139 70 36
x4044:	mov [bp + 69], ax	; 3: 137 70 69

printFormat$230:	; Parameter 47 longDouble 24
x4047:	mov ax, [bp + 38]	; 3: 139 70 38
x4050:	mov [bp + 71], ax	; 3: 137 70 71

printFormat$231:	; Parameter 47 1 26
x4053:	mov word [bp + 73], 1	; 5: 199 70 73 1 0

printFormat$232:	; Parameter 47 0 28
x4058:	mov word [bp + 75], 0	; 5: 199 70 75 0 0

printFormat$233:	; Call 47 printArgument 0
x4063:	mov word [bp + 47], printFormat$234	; 5: 199 70 47 237 15
x4068:	mov [bp + 49], bp	; 3: 137 110 49
x4071:	add bp, 47	; 3: 131 197 47
x4074:	jmp printArgument	; 3: 233 18 1

printFormat$234:	; PostCall 47

printFormat$235:	; GetReturnValue £temporary2272

printFormat$236:	; Assign arg_list £temporary2272
x4077:	mov [bp + 8], bx	; 3: 137 94 8

printFormat$237:	; Assign percent 0
x4080:	mov word [bp + 16], 0	; 5: 199 70 16 0 0

printFormat$238:	; Goto 283
x4085:	jmp printFormat$283	; 3: 233 215 0

printFormat$239:	; Assign value 0
x4088:	mov word [bp + 41], 0	; 5: 199 70 41 0 0

printFormat$240:	; CallHeader 43 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$241:	; IntegralToIntegral £temporary2275 c
x4093:	mov al, [bp + 40]	; 3: 138 70 40
x4096:	and ax, 255	; 3: 37 255 0
x4099:	cmp al, 0	; 2: 60 0
x4101:	jge printFormat$242	; 2: 125 4
x4103:	neg al	; 2: 246 216
x4105:	neg ax	; 2: 247 216

printFormat$242:	; Parameter 43 £temporary2275 6
x4107:	mov [bp + 49], ax	; 3: 137 70 49

printFormat$243:	; Call 43 isdigit 0
x4110:	mov word [bp + 43], printFormat$244	; 5: 199 70 43 28 16
x4115:	mov [bp + 45], bp	; 3: 137 110 45
x4118:	add bp, 43	; 3: 131 197 43
x4121:	jmp isdigit	; 3: 233 234 22

printFormat$244:	; PostCall 43

printFormat$245:	; GetReturnValue £temporary2276

printFormat$246:	; Equal 257 £temporary2276 0
x4124:	cmp bx, 0	; 3: 131 251 0
x4127:	je printFormat$257	; 2: 116 51

printFormat$247:	; SignedMultiply £temporary2277 value 10
x4129:	mov ax, [bp + 41]	; 3: 139 70 41
x4132:	xor dx, dx	; 2: 49 210
x4134:	imul word [int2$10#]	; 4: 247 46 253 16

printFormat$248:	; BinarySubtract £temporary2278 c 48
x4138:	mov bl, [bp + 40]	; 3: 138 94 40
x4141:	sub bl, 48	; 3: 128 235 48

printFormat$249:	; IntegralToIntegral £temporary2279 £temporary2278
x4144:	and bx, 255	; 4: 129 227 255 0
x4148:	cmp bl, 0	; 3: 128 251 0
x4151:	jge printFormat$250	; 2: 125 4
x4153:	neg bl	; 2: 246 219
x4155:	neg bx	; 2: 247 219

printFormat$250:	; BinaryAdd value £temporary2277 £temporary2279
x4157:	add ax, bx	; 2: 1 216
x4159:	mov [bp + 41], ax	; 3: 137 70 41

printFormat$251:	; Increment index
x4162:	inc word [bp + 10]	; 3: 255 70 10

printFormat$252:	; Assign £temporary2281 index
x4165:	mov ax, [bp + 10]	; 3: 139 70 10

printFormat$253:	; BinaryAdd £temporary2283 format £temporary2281
x4168:	mov si, [bp + 6]	; 3: 139 118 6
x4171:	add si, ax	; 2: 1 198

printFormat$254:	; Deref £temporary2282 -> £temporary2283 £temporary2283 0

printFormat$255:	; Assign c £temporary2282 -> £temporary2283
x4173:	mov al, [si]	; 2: 138 4
x4175:	mov [bp + 40], al	; 3: 136 70 40

printFormat$256:	; Goto 240
x4178:	jmp printFormat$240	; 2: 235 169

printFormat$257:	; Decrement index
x4180:	dec word [bp + 10]	; 3: 255 78 10

printFormat$258:	; NotEqual 261 period 0
x4183:	cmp word [bp + 30], 0	; 4: 131 126 30 0
x4187:	jne printFormat$261	; 2: 117 8

printFormat$259:	; Assign width value
x4189:	mov ax, [bp + 41]	; 3: 139 70 41
x4192:	mov [bp + 12], ax	; 3: 137 70 12

printFormat$260:	; Goto 283
x4195:	jmp printFormat$283	; 2: 235 106

printFormat$261:	; Assign precision value
x4197:	mov ax, [bp + 41]	; 3: 139 70 41
x4200:	mov [bp + 14], ax	; 3: 137 70 14

printFormat$262:	; Goto 283
x4203:	jmp printFormat$283	; 2: 235 98

printFormat$263:	; NotEqual 279 c 37
x4205:	cmp byte [bp + 40], 37	; 4: 128 126 40 37
x4209:	jne printFormat$279	; 2: 117 72

printFormat$264:	; Assign percent 1
x4211:	mov word [bp + 16], 1	; 5: 199 70 16 1 0

printFormat$265:	; Assign plus 0
x4216:	mov word [bp + 18], 0	; 5: 199 70 18 0 0

printFormat$266:	; Assign minus 0
x4221:	mov word [bp + 20], 0	; 5: 199 70 20 0 0

printFormat$267:	; Assign space 0
x4226:	mov word [bp + 22], 0	; 5: 199 70 22 0 0

printFormat$268:	; Assign zero 0
x4231:	mov word [bp + 24], 0	; 5: 199 70 24 0 0

printFormat$269:	; Assign grid 0
x4236:	mov word [bp + 26], 0	; 5: 199 70 26 0 0

printFormat$270:	; Assign widthStar 0
x4241:	mov word [bp + 28], 0	; 5: 199 70 28 0 0

printFormat$271:	; Assign period 0
x4246:	mov word [bp + 30], 0	; 5: 199 70 30 0 0

printFormat$272:	; Assign precisionStar 0
x4251:	mov word [bp + 32], 0	; 5: 199 70 32 0 0

printFormat$273:	; Assign shortInt 0
x4256:	mov word [bp + 34], 0	; 5: 199 70 34 0 0

printFormat$274:	; Assign longInt 0
x4261:	mov word [bp + 36], 0	; 5: 199 70 36 0 0

printFormat$275:	; Assign longDouble 0
x4266:	mov word [bp + 38], 0	; 5: 199 70 38 0 0

printFormat$276:	; Assign width 0
x4271:	mov word [bp + 12], 0	; 5: 199 70 12 0 0

printFormat$277:	; Assign precision 0
x4276:	mov word [bp + 14], 0	; 5: 199 70 14 0 0

printFormat$278:	; Goto 283
x4281:	jmp printFormat$283	; 2: 235 20

printFormat$279:	; CallHeader 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$280:	; Parameter 41 c 6
x4283:	mov al, [bp + 40]	; 3: 138 70 40
x4286:	mov [bp + 47], al	; 3: 136 70 47

printFormat$281:	; Call 41 printChar 0
x4289:	mov word [bp + 41], printFormat$282	; 5: 199 70 41 207 16
x4294:	mov [bp + 43], bp	; 3: 137 110 43
x4297:	add bp, 41	; 3: 131 197 41
x4300:	jmp printChar	; 3: 233 67 7

printFormat$282:	; PostCall 41

printFormat$283:	; Increment index
x4303:	inc word [bp + 10]	; 3: 255 70 10

printFormat$284:	; Goto 16
x4306:	jmp printFormat$16	; 3: 233 29 251

printFormat$285:	; NotEqual 291 g_outStatus 1
x4309:	cmp word [g_outStatus], 1	; 5: 131 62 157 11 1
x4314:	jne printFormat$291	; 2: 117 16

printFormat$286:	; IntegralToIntegral £temporary2292 g_outDevice
x4316:	mov ax, [g_outDevice]	; 3: 161 159 11

printFormat$287:	; Assign outString £temporary2292
x4319:	mov [bp + 40], ax	; 3: 137 70 40

printFormat$288:	; BinaryAdd £temporary2294 outString g_outChars
x4322:	mov si, [bp + 40]	; 3: 139 118 40
x4325:	add si, [g_outChars]	; 4: 3 54 251 16

printFormat$289:	; Deref £temporary2293 -> £temporary2294 £temporary2294 0

printFormat$290:	; Assign £temporary2293 -> £temporary2294 0
x4329:	mov byte [si], 0	; 3: 198 4 0

printFormat$291:	; SetReturnValue g_outChars
x4332:	mov bx, [g_outChars]	; 4: 139 30 251 16

printFormat$292:	; Return g_outChars
x4336:	mov ax, [bp]	; 3: 139 70 0
x4339:	mov di, [bp + 4]	; 3: 139 126 4
x4342:	mov bp, [bp + 2]	; 3: 139 110 2
x4345:	jmp ax	; 2: 255 224

printFormat$293:	; FunctionEnd printFormat

g_outChars:
x4347:	db 0, 0	; 2: 0 0

int2$10#:
x4349:	dw 10	; 2: 10 0

printArgument:	; Deref £temporary1994 -> format format 0
x4351:	mov si, [bp + 6]	; 3: 139 118 6

printArgument$1:	; Assign c £temporary1994 -> format
x4354:	mov al, [si]	; 2: 138 4
x4356:	mov [bp + 30], al	; 3: 136 70 30

printArgument$2:	; Case 21 c 100
x4359:	mov al, [bp + 30]	; 3: 138 70 30
x4362:	cmp al, 100	; 2: 60 100
x4364:	je printArgument$21	; 2: 116 97

printArgument$3:	; Case 21 c 105
x4366:	cmp al, 105	; 2: 60 105
x4368:	je printArgument$21	; 2: 116 93

printArgument$4:	; Case 73 c 99
x4370:	cmp al, 99	; 2: 60 99
x4372:	je printArgument$73	; 4: 15 132 68 1

printArgument$5:	; Case 93 c 115
x4376:	cmp al, 115	; 2: 60 115
x4378:	je printArgument$93	; 4: 15 132 146 1

printArgument$6:	; Case 113 c 88
x4382:	cmp al, 88	; 2: 60 88
x4384:	je printArgument$113	; 4: 15 132 221 1

printArgument$7:	; Case 113 c 120
x4388:	cmp al, 120	; 2: 60 120
x4390:	je printArgument$113	; 4: 15 132 215 1

printArgument$8:	; Case 113 c 98
x4394:	cmp al, 98	; 2: 60 98
x4396:	je printArgument$113	; 4: 15 132 209 1

printArgument$9:	; Case 113 c 111
x4400:	cmp al, 111	; 2: 60 111
x4402:	je printArgument$113	; 4: 15 132 203 1

printArgument$10:	; Case 113 c 117
x4406:	cmp al, 117	; 2: 60 117
x4408:	je printArgument$113	; 4: 15 132 197 1

printArgument$11:	; Case 173 c 71
x4412:	cmp al, 71	; 2: 60 71
x4414:	je printArgument$173	; 4: 15 132 186 2

printArgument$12:	; Case 173 c 103
x4418:	cmp al, 103	; 2: 60 103
x4420:	je printArgument$173	; 4: 15 132 180 2

printArgument$13:	; Case 173 c 69
x4424:	cmp al, 69	; 2: 60 69
x4426:	je printArgument$173	; 4: 15 132 174 2

printArgument$14:	; Case 173 c 101
x4430:	cmp al, 101	; 2: 60 101
x4432:	je printArgument$173	; 4: 15 132 168 2

printArgument$15:	; Case 173 c 102
x4436:	cmp al, 102	; 2: 60 102
x4438:	je printArgument$173	; 4: 15 132 162 2

printArgument$16:	; Case 299 c 112
x4442:	cmp al, 112	; 2: 60 112
x4444:	je printArgument$299	; 4: 15 132 177 4

printArgument$17:	; Case 324 c 110
x4448:	cmp al, 110	; 2: 60 110
x4450:	je printArgument$324	; 4: 15 132 25 5

printArgument$18:	; Case 346 c 37
x4454:	cmp al, 37	; 2: 60 37
x4456:	je printArgument$346	; 4: 15 132 96 5

printArgument$19:	; CaseEnd c

printArgument$20:	; Goto 359
x4460:	jmp printArgument$359	; 3: 233 148 5

printArgument$21:	; Equal 30 shortInt 0
x4463:	cmp word [bp + 20], 0	; 4: 131 126 20 0
x4467:	je printArgument$30	; 2: 116 42

printArgument$22:	; BinaryAdd arg_list arg_list 2
x4469:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$23:	; BinarySubtract £temporary1996 arg_list 2
x4473:	mov si, [bp + 8]	; 3: 139 118 8
x4476:	sub si, 2	; 3: 131 238 2

printArgument$24:	; IntegralToIntegral £temporary1997 £temporary1996

printArgument$25:	; Deref £temporary1998 -> £temporary1997 £temporary1997 0

printArgument$26:	; IntegralToIntegral £temporary1999 £temporary1998 -> £temporary1997
x4479:	mov ax, [si]	; 2: 139 4
x4481:	cmp ax, 0	; 3: 131 248 0
x4484:	jge printArgument$27	; 2: 125 4
x4486:	neg ax	; 2: 247 216
x4488:	neg al	; 2: 246 216

printArgument$27:	; IntegralToIntegral £temporary2000 £temporary1999
x4490:	and eax, 255	; 6: 102 37 255 0 0 0
x4496:	cmp al, 0	; 2: 60 0
x4498:	jge printArgument$28	; 2: 125 5
x4500:	neg al	; 2: 246 216
x4502:	neg eax	; 3: 102 247 216

printArgument$28:	; Assign longValue £temporary2000
x4505:	mov [bp + 44], eax	; 4: 102 137 70 44

printArgument$29:	; Goto 43
x4509:	jmp printArgument$43	; 2: 235 57

printArgument$30:	; Equal 37 longInt 0
x4511:	cmp word [bp + 22], 0	; 4: 131 126 22 0
x4515:	je printArgument$37	; 2: 116 19

printArgument$31:	; BinaryAdd arg_list arg_list 4
x4517:	add word [bp + 8], 4	; 4: 131 70 8 4

printArgument$32:	; BinarySubtract £temporary2002 arg_list 4
x4521:	mov si, [bp + 8]	; 3: 139 118 8
x4524:	sub si, 4	; 3: 131 238 4

printArgument$33:	; IntegralToIntegral £temporary2003 £temporary2002

printArgument$34:	; Deref £temporary2004 -> £temporary2003 £temporary2003 0

printArgument$35:	; Assign longValue £temporary2004 -> £temporary2003
x4527:	mov eax, [si]	; 3: 102 139 4
x4530:	mov [bp + 44], eax	; 4: 102 137 70 44

printArgument$36:	; Goto 43
x4534:	jmp printArgument$43	; 2: 235 32

printArgument$37:	; BinaryAdd arg_list arg_list 2
x4536:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$38:	; BinarySubtract £temporary2006 arg_list 2
x4540:	mov si, [bp + 8]	; 3: 139 118 8
x4543:	sub si, 2	; 3: 131 238 2

printArgument$39:	; IntegralToIntegral £temporary2007 £temporary2006

printArgument$40:	; Deref £temporary2008 -> £temporary2007 £temporary2007 0

printArgument$41:	; IntegralToIntegral £temporary2009 £temporary2008 -> £temporary2007
x4546:	mov ax, [si]	; 2: 139 4
x4548:	and eax, 65535	; 6: 102 37 255 255 0 0
x4554:	cmp ax, 0	; 3: 131 248 0
x4557:	jge printArgument$42	; 2: 125 5
x4559:	neg ax	; 2: 247 216
x4561:	neg eax	; 3: 102 247 216

printArgument$42:	; Assign longValue £temporary2009
x4564:	mov [bp + 44], eax	; 4: 102 137 70 44

printArgument$43:	; Equal 50 negativePtr 0
x4568:	cmp word [bp + 28], 0	; 4: 131 126 28 0
x4572:	je printArgument$50	; 2: 116 20

printArgument$44:	; Deref £temporary2013 -> negativePtr negativePtr 0
x4574:	mov si, [bp + 28]	; 3: 139 118 28

printArgument$45:	; SignedGreaterThanEqual 48 longValue 0
x4577:	cmp dword [bp + 44], 0	; 5: 102 131 126 44 0
x4582:	jge printArgument$48	; 2: 125 5

printArgument$46:	; Assign £temporary2015 1
x4584:	mov ax, 1	; 3: 184 1 0

printArgument$47:	; Goto 49
x4587:	jmp printArgument$49	; 2: 235 3

printArgument$48:	; Assign £temporary2015 0
x4589:	mov ax, 0	; 3: 184 0 0

printArgument$49:	; Assign £temporary2013 -> negativePtr £temporary2015
x4592:	mov [si], ax	; 2: 137 4

printArgument$50:	; NotEqual 57 sign 0
x4594:	cmp word [bp + 26], 0	; 4: 131 126 26 0
x4598:	jne printArgument$57	; 2: 117 26

printArgument$51:	; CallHeader 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$52:	; Parameter 48 longValue 6
x4600:	mov eax, [bp + 44]	; 4: 102 139 70 44
x4604:	mov [bp + 54], eax	; 4: 102 137 70 54

printArgument$53:	; Call 48 labs 0
x4608:	mov word [bp + 48], printArgument$54	; 5: 199 70 48 14 18
x4613:	mov [bp + 50], bp	; 3: 137 110 50
x4616:	add bp, 48	; 3: 131 197 48
x4619:	jmp labs	; 3: 233 5 5

printArgument$54:	; PostCall 48

printArgument$55:	; GetReturnValue £temporary2018

printArgument$56:	; Assign longValue £temporary2018
x4622:	mov [bp + 44], ebx	; 4: 102 137 94 44

printArgument$57:	; CallHeader 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$58:	; Parameter 48 arg_list 6
x4626:	mov ax, [bp + 8]	; 3: 139 70 8
x4629:	mov [bp + 54], ax	; 3: 137 70 54

printArgument$59:	; Parameter 48 widthPtr 8
x4632:	mov ax, [bp + 16]	; 3: 139 70 16
x4635:	mov [bp + 56], ax	; 3: 137 70 56

printArgument$60:	; address £temporary2019 precision
x4638:	mov si, bp	; 2: 137 238
x4640:	add si, 18	; 3: 131 198 18

printArgument$61:	; Parameter 48 £temporary2019 10
x4643:	mov [bp + 58], si	; 3: 137 118 58

printArgument$62:	; Call 48 checkWidthAndPrecision 0
x4646:	mov word [bp + 48], printArgument$63	; 5: 199 70 48 52 18
x4651:	mov [bp + 50], bp	; 3: 137 110 50
x4654:	add bp, 48	; 3: 131 197 48
x4657:	jmp checkWidthAndPrecision	; 3: 233 254 4

printArgument$63:	; PostCall 48

printArgument$64:	; GetReturnValue £temporary2020

printArgument$65:	; Assign arg_list £temporary2020
x4660:	mov [bp + 8], bx	; 3: 137 94 8

printArgument$66:	; CallHeader 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$67:	; Parameter 48 longValue 6
x4663:	mov eax, [bp + 44]	; 4: 102 139 70 44
x4667:	mov [bp + 54], eax	; 4: 102 137 70 54

printArgument$68:	; Parameter 48 plus 10
x4671:	mov ax, [bp + 10]	; 3: 139 70 10
x4674:	mov [bp + 58], ax	; 3: 137 70 58

printArgument$69:	; Parameter 48 space 12
x4677:	mov ax, [bp + 12]	; 3: 139 70 12
x4680:	mov [bp + 60], ax	; 3: 137 70 60

printArgument$70:	; Call 48 printLongInt 0
x4683:	mov word [bp + 48], printArgument$71	; 5: 199 70 48 89 18
x4688:	mov [bp + 50], bp	; 3: 137 110 50
x4691:	add bp, 48	; 3: 131 197 48
x4694:	jmp printLongInt	; 3: 233 37 5

printArgument$71:	; PostCall 48

printArgument$72:	; Goto 359
x4697:	jmp printArgument$359	; 3: 233 167 4

printArgument$73:	; BinaryAdd arg_list arg_list 2
x4700:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$74:	; BinarySubtract £temporary2023 arg_list 2
x4704:	mov si, [bp + 8]	; 3: 139 118 8
x4707:	sub si, 2	; 3: 131 238 2

printArgument$75:	; IntegralToIntegral £temporary2024 £temporary2023

printArgument$76:	; Deref £temporary2025 -> £temporary2024 £temporary2024 0

printArgument$77:	; IntegralToIntegral £temporary2026 £temporary2025 -> £temporary2024
x4710:	mov ax, [si]	; 2: 139 4
x4712:	cmp ax, 0	; 3: 131 248 0
x4715:	jge printArgument$78	; 2: 125 4
x4717:	neg ax	; 2: 247 216
x4719:	neg al	; 2: 246 216

printArgument$78:	; Assign charValue £temporary2026
x4721:	mov [bp + 31], al	; 3: 136 70 31

printArgument$79:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$80:	; Parameter 44 arg_list 6
x4724:	mov ax, [bp + 8]	; 3: 139 70 8
x4727:	mov [bp + 50], ax	; 3: 137 70 50

printArgument$81:	; Parameter 44 widthPtr 8
x4730:	mov ax, [bp + 16]	; 3: 139 70 16
x4733:	mov [bp + 52], ax	; 3: 137 70 52

printArgument$82:	; address £temporary2027 precision
x4736:	mov si, bp	; 2: 137 238
x4738:	add si, 18	; 3: 131 198 18

printArgument$83:	; Parameter 44 £temporary2027 10
x4741:	mov [bp + 54], si	; 3: 137 118 54

printArgument$84:	; Call 44 checkWidthAndPrecision 0
x4744:	mov word [bp + 44], printArgument$85	; 5: 199 70 44 150 18
x4749:	mov [bp + 46], bp	; 3: 137 110 46
x4752:	add bp, 44	; 3: 131 197 44
x4755:	jmp checkWidthAndPrecision	; 3: 233 156 4

printArgument$85:	; PostCall 44

printArgument$86:	; GetReturnValue £temporary2028

printArgument$87:	; Assign arg_list £temporary2028
x4758:	mov [bp + 8], bx	; 3: 137 94 8

printArgument$88:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$89:	; Parameter 44 charValue 6
x4761:	mov al, [bp + 31]	; 3: 138 70 31
x4764:	mov [bp + 50], al	; 3: 136 70 50

printArgument$90:	; Call 44 printChar 0
x4767:	mov word [bp + 44], printArgument$91	; 5: 199 70 44 173 18
x4772:	mov [bp + 46], bp	; 3: 137 110 46
x4775:	add bp, 44	; 3: 131 197 44
x4778:	jmp printChar	; 3: 233 101 5

printArgument$91:	; PostCall 44

printArgument$92:	; Goto 359
x4781:	jmp printArgument$359	; 3: 233 83 4

printArgument$93:	; BinaryAdd arg_list arg_list 2
x4784:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$94:	; BinarySubtract £temporary2031 arg_list 2
x4788:	mov si, [bp + 8]	; 3: 139 118 8
x4791:	sub si, 2	; 3: 131 238 2

printArgument$95:	; IntegralToIntegral £temporary2032 £temporary2031

printArgument$96:	; Deref £temporary2033 -> £temporary2032 £temporary2032 0

printArgument$97:	; Assign stringValue £temporary2033 -> £temporary2032
x4794:	mov ax, [si]	; 2: 139 4
x4796:	mov [bp + 44], ax	; 3: 137 70 44

printArgument$98:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$99:	; Parameter 46 arg_list 6
x4799:	mov ax, [bp + 8]	; 3: 139 70 8
x4802:	mov [bp + 52], ax	; 3: 137 70 52

printArgument$100:	; Parameter 46 widthPtr 8
x4805:	mov ax, [bp + 16]	; 3: 139 70 16
x4808:	mov [bp + 54], ax	; 3: 137 70 54

printArgument$101:	; address £temporary2034 precision
x4811:	mov si, bp	; 2: 137 238
x4813:	add si, 18	; 3: 131 198 18

printArgument$102:	; Parameter 46 £temporary2034 10
x4816:	mov [bp + 56], si	; 3: 137 118 56

printArgument$103:	; Call 46 checkWidthAndPrecision 0
x4819:	mov word [bp + 46], printArgument$104	; 5: 199 70 46 225 18
x4824:	mov [bp + 48], bp	; 3: 137 110 48
x4827:	add bp, 46	; 3: 131 197 46
x4830:	jmp checkWidthAndPrecision	; 3: 233 81 4

printArgument$104:	; PostCall 46

printArgument$105:	; GetReturnValue £temporary2035

printArgument$106:	; Assign arg_list £temporary2035
x4833:	mov [bp + 8], bx	; 3: 137 94 8

printArgument$107:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$108:	; Parameter 46 stringValue 6
x4836:	mov ax, [bp + 44]	; 3: 139 70 44
x4839:	mov [bp + 52], ax	; 3: 137 70 52

printArgument$109:	; Parameter 46 precision 8
x4842:	mov ax, [bp + 18]	; 3: 139 70 18
x4845:	mov [bp + 54], ax	; 3: 137 70 54

printArgument$110:	; Call 46 printString 0
x4848:	mov word [bp + 46], printArgument$111	; 5: 199 70 46 254 18
x4853:	mov [bp + 48], bp	; 3: 137 110 48
x4856:	add bp, 46	; 3: 131 197 46
x4859:	jmp printString	; 3: 233 220 5

printArgument$111:	; PostCall 46

printArgument$112:	; Goto 359
x4862:	jmp printArgument$359	; 3: 233 2 4

printArgument$113:	; NotEqual 116 c 117
x4865:	cmp byte [bp + 30], 117	; 4: 128 126 30 117
x4869:	jne printArgument$116	; 2: 117 8

printArgument$114:	; Assign £temporary2051 10
x4871:	mov eax, 10	; 6: 102 184 10 0 0 0

printArgument$115:	; Goto 125
x4877:	jmp printArgument$125	; 2: 235 34

printArgument$116:	; NotEqual 119 c 111
x4879:	cmp byte [bp + 30], 111	; 4: 128 126 30 111
x4883:	jne printArgument$119	; 2: 117 8

printArgument$117:	; Assign £temporary2047 8
x4885:	mov eax, 8	; 6: 102 184 8 0 0 0

printArgument$118:	; Goto 124
x4891:	jmp printArgument$124	; 2: 235 20

printArgument$119:	; NotEqual 122 c 98
x4893:	cmp byte [bp + 30], 98	; 4: 128 126 30 98
x4897:	jne printArgument$122	; 2: 117 8

printArgument$120:	; Assign £temporary2043 2
x4899:	mov eax, 2	; 6: 102 184 2 0 0 0

printArgument$121:	; Goto 123
x4905:	jmp printArgument$123	; 2: 235 6

printArgument$122:	; Assign £temporary2043 16
x4907:	mov eax, 16	; 6: 102 184 16 0 0 0

printArgument$123:	; Assign £temporary2047 £temporary2043

printArgument$124:	; Assign £temporary2051 £temporary2047

printArgument$125:	; Assign base £temporary2051
x4913:	mov [bp + 44], eax	; 4: 102 137 70 44

printArgument$126:	; Equal 135 shortInt 0
x4917:	cmp word [bp + 20], 0	; 4: 131 126 20 0
x4921:	je printArgument$135	; 2: 116 24

printArgument$127:	; BinaryAdd arg_list arg_list 2
x4923:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$128:	; BinarySubtract £temporary2053 arg_list 2
x4927:	mov si, [bp + 8]	; 3: 139 118 8
x4930:	sub si, 2	; 3: 131 238 2

printArgument$129:	; IntegralToIntegral £temporary2054 £temporary2053

printArgument$130:	; Deref £temporary2055 -> £temporary2054 £temporary2054 0

printArgument$131:	; IntegralToIntegral £temporary2056 £temporary2055 -> £temporary2054
x4933:	mov ax, [si]	; 2: 139 4

printArgument$132:	; IntegralToIntegral £temporary2057 £temporary2056
x4935:	and eax, 255	; 6: 102 37 255 0 0 0

printArgument$133:	; Assign value £temporary2057
x4941:	mov [bp + 48], eax	; 4: 102 137 70 48

printArgument$134:	; Goto 148
x4945:	jmp printArgument$148	; 2: 235 47

printArgument$135:	; Equal 142 longInt 0
x4947:	cmp word [bp + 22], 0	; 4: 131 126 22 0
x4951:	je printArgument$142	; 2: 116 19

printArgument$136:	; BinaryAdd arg_list arg_list 4
x4953:	add word [bp + 8], 4	; 4: 131 70 8 4

printArgument$137:	; BinarySubtract £temporary2059 arg_list 4
x4957:	mov si, [bp + 8]	; 3: 139 118 8
x4960:	sub si, 4	; 3: 131 238 4

printArgument$138:	; IntegralToIntegral £temporary2060 £temporary2059

printArgument$139:	; Deref £temporary2061 -> £temporary2060 £temporary2060 0

printArgument$140:	; Assign value £temporary2061 -> £temporary2060
x4963:	mov eax, [si]	; 3: 102 139 4
x4966:	mov [bp + 48], eax	; 4: 102 137 70 48

printArgument$141:	; Goto 148
x4970:	jmp printArgument$148	; 2: 235 22

printArgument$142:	; BinaryAdd arg_list arg_list 2
x4972:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$143:	; BinarySubtract £temporary2063 arg_list 2
x4976:	mov si, [bp + 8]	; 3: 139 118 8
x4979:	sub si, 2	; 3: 131 238 2

printArgument$144:	; IntegralToIntegral £temporary2064 £temporary2063

printArgument$145:	; Deref £temporary2065 -> £temporary2064 £temporary2064 0

printArgument$146:	; IntegralToIntegral £temporary2066 £temporary2065 -> £temporary2064
x4982:	mov ax, [si]	; 2: 139 4
x4984:	and eax, 65535	; 6: 102 37 255 255 0 0

printArgument$147:	; Assign value £temporary2066
x4990:	mov [bp + 48], eax	; 4: 102 137 70 48

printArgument$148:	; CallHeader 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$149:	; Parameter 52 arg_list 6
x4994:	mov ax, [bp + 8]	; 3: 139 70 8
x4997:	mov [bp + 58], ax	; 3: 137 70 58

printArgument$150:	; Parameter 52 widthPtr 8
x5000:	mov ax, [bp + 16]	; 3: 139 70 16
x5003:	mov [bp + 60], ax	; 3: 137 70 60

printArgument$151:	; address £temporary2069 precision
x5006:	mov si, bp	; 2: 137 238
x5008:	add si, 18	; 3: 131 198 18

printArgument$152:	; Parameter 52 £temporary2069 10
x5011:	mov [bp + 62], si	; 3: 137 118 62

printArgument$153:	; Call 52 checkWidthAndPrecision 0
x5014:	mov word [bp + 52], printArgument$154	; 5: 199 70 52 164 19
x5019:	mov [bp + 54], bp	; 3: 137 110 54
x5022:	add bp, 52	; 3: 131 197 52
x5025:	jmp checkWidthAndPrecision	; 3: 233 142 3

printArgument$154:	; PostCall 52

printArgument$155:	; GetReturnValue £temporary2070

printArgument$156:	; Assign arg_list £temporary2070
x5028:	mov [bp + 8], bx	; 3: 137 94 8

printArgument$157:	; CallHeader 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$158:	; Parameter 52 value 6
x5031:	mov eax, [bp + 48]	; 4: 102 139 70 48
x5035:	mov [bp + 58], eax	; 4: 102 137 70 58

printArgument$159:	; Parameter 52 plus 10
x5039:	mov ax, [bp + 10]	; 3: 139 70 10
x5042:	mov [bp + 62], ax	; 3: 137 70 62

printArgument$160:	; Parameter 52 space 12
x5045:	mov ax, [bp + 12]	; 3: 139 70 12
x5048:	mov [bp + 64], ax	; 3: 137 70 64

printArgument$161:	; Parameter 52 grid 14
x5051:	mov ax, [bp + 14]	; 3: 139 70 14
x5054:	mov [bp + 66], ax	; 3: 137 70 66

printArgument$162:	; Parameter 52 base 16
x5057:	mov eax, [bp + 44]	; 4: 102 139 70 44
x5061:	mov [bp + 68], eax	; 4: 102 137 70 68

printArgument$163:	; CallHeader 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$164:	; IntegralToIntegral £temporary2071 c
x5065:	mov al, [bp + 30]	; 3: 138 70 30
x5068:	and ax, 255	; 3: 37 255 0
x5071:	cmp al, 0	; 2: 60 0
x5073:	jge printArgument$165	; 2: 125 4
x5075:	neg al	; 2: 246 216
x5077:	neg ax	; 2: 247 216

printArgument$165:	; Parameter 52 £temporary2071 26
x5079:	mov [bp + 78], ax	; 3: 137 70 78

printArgument$166:	; Call 52 isupper 20
x5082:	mov word [bp + 72], printArgument$167	; 5: 199 70 72 232 19
x5087:	mov [bp + 74], bp	; 3: 137 110 74
x5090:	add bp, 72	; 3: 131 197 72
x5093:	jmp isupper	; 3: 233 226 5

printArgument$167:	; PostCall 52

printArgument$168:	; GetReturnValue £temporary2072

printArgument$169:	; Parameter 52 £temporary2072 20
x5096:	mov [bp + 72], bx	; 3: 137 94 72

printArgument$170:	; Call 52 printUnsignedLong 0
x5099:	mov word [bp + 52], printArgument$171	; 5: 199 70 52 249 19
x5104:	mov [bp + 54], bp	; 3: 137 110 54
x5107:	add bp, 52	; 3: 131 197 52
x5110:	jmp printUnsignedLong	; 3: 233 206 9

printArgument$171:	; PostCall 52

printArgument$172:	; Goto 359
x5113:	jmp printArgument$359	; 3: 233 7 3

printArgument$173:	; Equal 190 longDouble 0
x5116:	cmp word [bp + 24], 0	; 4: 131 126 24 0
x5120:	je printArgument$190	; 2: 116 57

printArgument$174:	; BinaryAdd arg_list arg_list 8
x5122:	add word [bp + 8], 8	; 4: 131 70 8 8

printArgument$175:	; BinarySubtract £temporary2075 arg_list 8
x5126:	mov si, [bp + 8]	; 3: 139 118 8
x5129:	sub si, 8	; 3: 131 238 8

printArgument$176:	; IntegralToIntegral £temporary2076 £temporary2075

printArgument$177:	; Deref £temporary2077 -> £temporary2076 £temporary2076 0

printArgument$178:	; PushFloat £temporary2077 -> £temporary2076
x5132:	fld qword [si]	; 2: 221 4

printArgument$179:	; PopFloat longDoubleValue
x5134:	fstp qword [bp + 34]	; 3: 221 94 34

printArgument$180:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$181:	; PushFloat longDoubleValue
x5137:	fld qword [bp + 34]	; 3: 221 70 34

printArgument$182:	; Parameter 44 longDoubleValue 6
x5140:	fstp qword [bp + 50]	; 3: 221 94 50

printArgument$183:	; Parameter 44 0 14
x5143:	mov word [bp + 58], 0	; 5: 199 70 58 0 0

printArgument$184:	; Parameter 44 0 16
x5148:	mov word [bp + 60], 0	; 5: 199 70 60 0 0

printArgument$185:	; Parameter 44 0 18
x5153:	mov word [bp + 62], 0	; 5: 199 70 62 0 0

printArgument$186:	; Parameter 44 3 20
x5158:	mov word [bp + 64], 3	; 5: 199 70 64 3 0

printArgument$187:	; Call 44 printLongDoublePlain 0
x5163:	mov word [bp + 44], printArgument$188	; 5: 199 70 44 57 20
x5168:	mov [bp + 46], bp	; 3: 137 110 46
x5171:	add bp, 44	; 3: 131 197 44
x5174:	jmp printLongDoublePlain	; 3: 233 57 11

printArgument$188:	; PostCall 44

printArgument$189:	; Goto 196
x5177:	jmp printArgument$196	; 2: 235 15

printArgument$190:	; BinaryAdd arg_list arg_list 8
x5179:	add word [bp + 8], 8	; 4: 131 70 8 8

printArgument$191:	; BinarySubtract £temporary2080 arg_list 8
x5183:	mov si, [bp + 8]	; 3: 139 118 8
x5186:	sub si, 8	; 3: 131 238 8

printArgument$192:	; IntegralToIntegral £temporary2081 £temporary2080

printArgument$193:	; Deref £temporary2082 -> £temporary2081 £temporary2081 0

printArgument$194:	; PushFloat £temporary2082 -> £temporary2081
x5189:	fld qword [si]	; 2: 221 4

printArgument$195:	; PopFloat longDoubleValue
x5191:	fstp qword [bp + 34]	; 3: 221 94 34

printArgument$196:	; Equal 205 negativePtr 0
x5194:	cmp word [bp + 28], 0	; 4: 131 126 28 0
x5198:	je printArgument$205	; 2: 116 26

printArgument$197:	; Deref £temporary2086 -> negativePtr negativePtr 0
x5200:	mov si, [bp + 28]	; 3: 139 118 28

printArgument$198:	; PushFloat longDoubleValue
x5203:	fld qword [bp + 34]	; 3: 221 70 34

printArgument$199:	; PushZero
x5206:	fldz	; 2: 217 238

printArgument$200:	; SignedGreaterThanEqual 203 longDoubleValue 0
x5208:	fcompp	; 2: 222 217
x5210:	fstsw ax	; 3: 155 223 224
x5213:	sahf	; 1: 158
x5214:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; Assign £temporary2088 1
x5216:	mov ax, 1	; 3: 184 1 0

printArgument$202:	; Goto 204
x5219:	jmp printArgument$204	; 2: 235 3

printArgument$203:	; Assign £temporary2088 0
x5221:	mov ax, 0	; 3: 184 0 0

printArgument$204:	; Assign £temporary2086 -> negativePtr £temporary2088
x5224:	mov [si], ax	; 2: 137 4

printArgument$205:	; NotEqual 213 sign 0
x5226:	cmp word [bp + 26], 0	; 4: 131 126 26 0
x5230:	jne printArgument$213	; 2: 117 23

printArgument$206:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$207:	; PushFloat longDoubleValue
x5232:	fld qword [bp + 34]	; 3: 221 70 34

printArgument$208:	; Parameter 44 longDoubleValue 6
x5235:	fstp qword [bp + 50]	; 3: 221 94 50

printArgument$209:	; Call 44 fabs 0
x5238:	mov word [bp + 44], printArgument$210	; 5: 199 70 44 132 20
x5243:	mov [bp + 46], bp	; 3: 137 110 46
x5246:	add bp, 44	; 3: 131 197 44
x5249:	jmp fabs	; 3: 233 50 12

printArgument$210:	; PostCall 44

printArgument$211:	; GetReturnValue £temporary2091

printArgument$212:	; PopFloat longDoubleValue
x5252:	fstp qword [bp + 34]	; 3: 221 94 34

printArgument$213:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$214:	; Parameter 44 arg_list 6
x5255:	mov ax, [bp + 8]	; 3: 139 70 8
x5258:	mov [bp + 50], ax	; 3: 137 70 50

printArgument$215:	; Parameter 44 widthPtr 8
x5261:	mov ax, [bp + 16]	; 3: 139 70 16
x5264:	mov [bp + 52], ax	; 3: 137 70 52

printArgument$216:	; address £temporary2092 precision
x5267:	mov si, bp	; 2: 137 238
x5269:	add si, 18	; 3: 131 198 18

printArgument$217:	; Parameter 44 £temporary2092 10
x5272:	mov [bp + 54], si	; 3: 137 118 54

printArgument$218:	; Call 44 checkWidthAndPrecision 0
x5275:	mov word [bp + 44], printArgument$219	; 5: 199 70 44 169 20
x5280:	mov [bp + 46], bp	; 3: 137 110 46
x5283:	add bp, 44	; 3: 131 197 44
x5286:	jmp checkWidthAndPrecision	; 3: 233 137 2

printArgument$219:	; PostCall 44

printArgument$220:	; GetReturnValue £temporary2093

printArgument$221:	; Assign arg_list £temporary2093
x5289:	mov [bp + 8], bx	; 3: 137 94 8

printArgument$222:	; NotEqual 233 c 102
x5292:	cmp byte [bp + 30], 102	; 4: 128 126 30 102
x5296:	jne printArgument$233	; 2: 117 47

printArgument$223:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$224:	; PushFloat longDoubleValue
x5298:	fld qword [bp + 34]	; 3: 221 70 34

printArgument$225:	; Parameter 44 longDoubleValue 6
x5301:	fstp qword [bp + 50]	; 3: 221 94 50

printArgument$226:	; Parameter 44 plus 14
x5304:	mov ax, [bp + 10]	; 3: 139 70 10
x5307:	mov [bp + 58], ax	; 3: 137 70 58

printArgument$227:	; Parameter 44 space 16
x5310:	mov ax, [bp + 12]	; 3: 139 70 12
x5313:	mov [bp + 60], ax	; 3: 137 70 60

printArgument$228:	; Parameter 44 grid 18
x5316:	mov ax, [bp + 14]	; 3: 139 70 14
x5319:	mov [bp + 62], ax	; 3: 137 70 62

printArgument$229:	; Parameter 44 precision 20
x5322:	mov ax, [bp + 18]	; 3: 139 70 18
x5325:	mov [bp + 64], ax	; 3: 137 70 64

printArgument$230:	; Call 44 printLongDoublePlain 0
x5328:	mov word [bp + 44], printArgument$231	; 5: 199 70 44 222 20
x5333:	mov [bp + 46], bp	; 3: 137 110 46
x5336:	add bp, 44	; 3: 131 197 44
x5339:	jmp printLongDoublePlain	; 3: 233 148 10

printArgument$231:	; PostCall 44

printArgument$232:	; Goto 359
x5342:	jmp printArgument$359	; 3: 233 34 2

printArgument$233:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$234:	; IntegralToIntegral £temporary2096 c
x5345:	mov al, [bp + 30]	; 3: 138 70 30
x5348:	and ax, 255	; 3: 37 255 0
x5351:	cmp al, 0	; 2: 60 0
x5353:	jge printArgument$235	; 2: 125 4
x5355:	neg al	; 2: 246 216
x5357:	neg ax	; 2: 247 216

printArgument$235:	; Parameter 44 £temporary2096 6
x5359:	mov [bp + 50], ax	; 3: 137 70 50

printArgument$236:	; Call 44 tolower 0
x5362:	mov word [bp + 44], printArgument$237	; 5: 199 70 44 0 21
x5367:	mov [bp + 46], bp	; 3: 137 110 46
x5370:	add bp, 44	; 3: 131 197 44
x5373:	jmp tolower	; 3: 233 216 11

printArgument$237:	; PostCall 44

printArgument$238:	; GetReturnValue £temporary2097

printArgument$239:	; NotEqual 257 £temporary2097 101
x5376:	cmp bx, 101	; 3: 131 251 101
x5379:	jne printArgument$257	; 2: 117 81

printArgument$240:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$241:	; PushFloat longDoubleValue
x5381:	fld qword [bp + 34]	; 3: 221 70 34

printArgument$242:	; Parameter 44 longDoubleValue 6
x5384:	fstp qword [bp + 50]	; 3: 221 94 50

printArgument$243:	; Parameter 44 plus 14
x5387:	mov ax, [bp + 10]	; 3: 139 70 10
x5390:	mov [bp + 58], ax	; 3: 137 70 58

printArgument$244:	; Parameter 44 space 16
x5393:	mov ax, [bp + 12]	; 3: 139 70 12
x5396:	mov [bp + 60], ax	; 3: 137 70 60

printArgument$245:	; Parameter 44 grid 18
x5399:	mov ax, [bp + 14]	; 3: 139 70 14
x5402:	mov [bp + 62], ax	; 3: 137 70 62

printArgument$246:	; Parameter 44 precision 20
x5405:	mov ax, [bp + 18]	; 3: 139 70 18
x5408:	mov [bp + 64], ax	; 3: 137 70 64

printArgument$247:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$248:	; IntegralToIntegral £temporary2099 c
x5411:	mov al, [bp + 30]	; 3: 138 70 30
x5414:	and ax, 255	; 3: 37 255 0
x5417:	cmp al, 0	; 2: 60 0
x5419:	jge printArgument$249	; 2: 125 4
x5421:	neg al	; 2: 246 216
x5423:	neg ax	; 2: 247 216

printArgument$249:	; Parameter 44 £temporary2099 28
x5425:	mov [bp + 72], ax	; 3: 137 70 72

printArgument$250:	; Call 44 isupper 22
x5428:	mov word [bp + 66], printArgument$251	; 5: 199 70 66 66 21
x5433:	mov [bp + 68], bp	; 3: 137 110 68
x5436:	add bp, 66	; 3: 131 197 66
x5439:	jmp isupper	; 3: 233 136 4

printArgument$251:	; PostCall 44

printArgument$252:	; GetReturnValue £temporary2100

printArgument$253:	; Parameter 44 £temporary2100 22
x5442:	mov [bp + 66], bx	; 3: 137 94 66

printArgument$254:	; Call 44 printLongDoubleExpo 0
x5445:	mov word [bp + 44], printArgument$255	; 5: 199 70 44 83 21
x5450:	mov [bp + 46], bp	; 3: 137 110 46
x5453:	add bp, 44	; 3: 131 197 44
x5456:	jmp printLongDoubleExpo	; 3: 233 38 12

printArgument$255:	; PostCall 44

printArgument$256:	; Goto 359
x5459:	jmp printArgument$359	; 3: 233 173 1

printArgument$257:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$258:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$259:	; PushFloat longDoubleValue
x5462:	fld qword [bp + 34]	; 3: 221 70 34

printArgument$260:	; Parameter 44 longDoubleValue 6
x5465:	fstp qword [bp + 50]	; 3: 221 94 50

printArgument$261:	; Call 44 fabs 0
x5468:	mov word [bp + 44], printArgument$262	; 5: 199 70 44 106 21
x5473:	mov [bp + 46], bp	; 3: 137 110 46
x5476:	add bp, 44	; 3: 131 197 44
x5479:	jmp fabs	; 3: 233 76 11

printArgument$262:	; PostCall 44

printArgument$263:	; GetReturnValue £temporary2102

printArgument$264:	; Parameter 44 £temporary2102 6
x5482:	fstp qword [bp + 50]	; 3: 221 94 50

printArgument$265:	; Call 44 log10 0
x5485:	mov word [bp + 44], printArgument$266	; 5: 199 70 44 123 21
x5490:	mov [bp + 46], bp	; 3: 137 110 46
x5493:	add bp, 44	; 3: 131 197 44
x5496:	jmp log10	; 3: 233 101 13

printArgument$266:	; PostCall 44

printArgument$267:	; GetReturnValue £temporary2103

printArgument$268:	; FloatingToIntegral £temporary2104 £temporary2103
x5499:	fistp word [container2bytes#]	; 4: 223 30 17 23
x5503:	mov ax, [container2bytes#]	; 3: 161 17 23

printArgument$269:	; Assign expo £temporary2104
x5506:	mov [bp + 44], ax	; 3: 137 70 44

printArgument$270:	; SignedLessThan 282 expo -3
x5509:	cmp word [bp + 44], -3	; 4: 131 126 44 253
x5513:	jl printArgument$282	; 2: 124 53

printArgument$271:	; SignedGreaterThan 282 expo 2
x5515:	cmp word [bp + 44], 2	; 4: 131 126 44 2
x5519:	jg printArgument$282	; 2: 127 47

printArgument$272:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$273:	; PushFloat longDoubleValue
x5521:	fld qword [bp + 34]	; 3: 221 70 34

printArgument$274:	; Parameter 46 longDoubleValue 6
x5524:	fstp qword [bp + 52]	; 3: 221 94 52

printArgument$275:	; Parameter 46 plus 14
x5527:	mov ax, [bp + 10]	; 3: 139 70 10
x5530:	mov [bp + 60], ax	; 3: 137 70 60

printArgument$276:	; Parameter 46 space 16
x5533:	mov ax, [bp + 12]	; 3: 139 70 12
x5536:	mov [bp + 62], ax	; 3: 137 70 62

printArgument$277:	; Parameter 46 grid 18
x5539:	mov ax, [bp + 14]	; 3: 139 70 14
x5542:	mov [bp + 64], ax	; 3: 137 70 64

printArgument$278:	; Parameter 46 precision 20
x5545:	mov ax, [bp + 18]	; 3: 139 70 18
x5548:	mov [bp + 66], ax	; 3: 137 70 66

printArgument$279:	; Call 46 printLongDoublePlain 0
x5551:	mov word [bp + 46], printArgument$280	; 5: 199 70 46 189 21
x5556:	mov [bp + 48], bp	; 3: 137 110 48
x5559:	add bp, 46	; 3: 131 197 46
x5562:	jmp printLongDoublePlain	; 3: 233 181 9

printArgument$280:	; PostCall 46

printArgument$281:	; Goto 359
x5565:	jmp printArgument$359	; 3: 233 67 1

printArgument$282:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$283:	; PushFloat longDoubleValue
x5568:	fld qword [bp + 34]	; 3: 221 70 34

printArgument$284:	; Parameter 46 longDoubleValue 6
x5571:	fstp qword [bp + 52]	; 3: 221 94 52

printArgument$285:	; Parameter 46 plus 14
x5574:	mov ax, [bp + 10]	; 3: 139 70 10
x5577:	mov [bp + 60], ax	; 3: 137 70 60

printArgument$286:	; Parameter 46 space 16
x5580:	mov ax, [bp + 12]	; 3: 139 70 12
x5583:	mov [bp + 62], ax	; 3: 137 70 62

printArgument$287:	; Parameter 46 grid 18
x5586:	mov ax, [bp + 14]	; 3: 139 70 14
x5589:	mov [bp + 64], ax	; 3: 137 70 64

printArgument$288:	; Parameter 46 precision 20
x5592:	mov ax, [bp + 18]	; 3: 139 70 18
x5595:	mov [bp + 66], ax	; 3: 137 70 66

printArgument$289:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$290:	; IntegralToIntegral £temporary2109 c
x5598:	mov al, [bp + 30]	; 3: 138 70 30
x5601:	and ax, 255	; 3: 37 255 0
x5604:	cmp al, 0	; 2: 60 0
x5606:	jge printArgument$291	; 2: 125 4
x5608:	neg al	; 2: 246 216
x5610:	neg ax	; 2: 247 216

printArgument$291:	; Parameter 46 £temporary2109 28
x5612:	mov [bp + 74], ax	; 3: 137 70 74

printArgument$292:	; Call 46 isupper 22
x5615:	mov word [bp + 68], printArgument$293	; 5: 199 70 68 253 21
x5620:	mov [bp + 70], bp	; 3: 137 110 70
x5623:	add bp, 68	; 3: 131 197 68
x5626:	jmp isupper	; 3: 233 205 3

printArgument$293:	; PostCall 46

printArgument$294:	; GetReturnValue £temporary2110

printArgument$295:	; Parameter 46 £temporary2110 22
x5629:	mov [bp + 68], bx	; 3: 137 94 68

printArgument$296:	; Call 46 printLongDoubleExpo 0
x5632:	mov word [bp + 46], printArgument$297	; 5: 199 70 46 14 22
x5637:	mov [bp + 48], bp	; 3: 137 110 48
x5640:	add bp, 46	; 3: 131 197 46
x5643:	jmp printLongDoubleExpo	; 3: 233 107 11

printArgument$297:	; PostCall 46

printArgument$298:	; Goto 359
x5646:	jmp printArgument$359	; 3: 233 242 0

printArgument$299:	; BinaryAdd arg_list arg_list 2
x5649:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$300:	; BinarySubtract £temporary2113 arg_list 2
x5653:	mov si, [bp + 8]	; 3: 139 118 8
x5656:	sub si, 2	; 3: 131 238 2

printArgument$301:	; IntegralToIntegral £temporary2114 £temporary2113

printArgument$302:	; Deref £temporary2115 -> £temporary2114 £temporary2114 0

printArgument$303:	; Assign ptrValue £temporary2115 -> £temporary2114
x5659:	mov ax, [si]	; 2: 139 4
x5661:	mov [bp + 42], ax	; 3: 137 70 42

printArgument$304:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$305:	; Parameter 44 arg_list 6
x5664:	mov ax, [bp + 8]	; 3: 139 70 8
x5667:	mov [bp + 50], ax	; 3: 137 70 50

printArgument$306:	; Parameter 44 widthPtr 8
x5670:	mov ax, [bp + 16]	; 3: 139 70 16
x5673:	mov [bp + 52], ax	; 3: 137 70 52

printArgument$307:	; address £temporary2116 precision
x5676:	mov si, bp	; 2: 137 238
x5678:	add si, 18	; 3: 131 198 18

printArgument$308:	; Parameter 44 £temporary2116 10
x5681:	mov [bp + 54], si	; 3: 137 118 54

printArgument$309:	; Call 44 checkWidthAndPrecision 0
x5684:	mov word [bp + 44], printArgument$310	; 5: 199 70 44 66 22
x5689:	mov [bp + 46], bp	; 3: 137 110 46
x5692:	add bp, 44	; 3: 131 197 44
x5695:	jmp checkWidthAndPrecision	; 3: 233 240 0

printArgument$310:	; PostCall 44

printArgument$311:	; GetReturnValue £temporary2117

printArgument$312:	; Assign arg_list £temporary2117
x5698:	mov [bp + 8], bx	; 3: 137 94 8

printArgument$313:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$314:	; IntegralToIntegral £temporary2118 ptrValue
x5701:	mov ax, [bp + 42]	; 3: 139 70 42
x5704:	and eax, 65535	; 6: 102 37 255 255 0 0

printArgument$315:	; Parameter 44 £temporary2118 6
x5710:	mov [bp + 50], eax	; 4: 102 137 70 50

printArgument$316:	; Parameter 44 0 10
x5714:	mov word [bp + 54], 0	; 5: 199 70 54 0 0

printArgument$317:	; Parameter 44 0 12
x5719:	mov word [bp + 56], 0	; 5: 199 70 56 0 0

printArgument$318:	; Parameter 44 0 14
x5724:	mov word [bp + 58], 0	; 5: 199 70 58 0 0

printArgument$319:	; Parameter 44 10 16
x5729:	mov dword [bp + 60], 10	; 8: 102 199 70 60 10 0 0 0

printArgument$320:	; Parameter 44 0 20
x5737:	mov word [bp + 64], 0	; 5: 199 70 64 0 0

printArgument$321:	; Call 44 printUnsignedLong 0
x5742:	mov word [bp + 44], printArgument$322	; 5: 199 70 44 124 22
x5747:	mov [bp + 46], bp	; 3: 137 110 46
x5750:	add bp, 44	; 3: 131 197 44
x5753:	jmp printUnsignedLong	; 3: 233 75 7

printArgument$322:	; PostCall 44

printArgument$323:	; Goto 359
x5756:	jmp printArgument$359	; 3: 233 132 0

printArgument$324:	; BinaryAdd arg_list arg_list 2
x5759:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$325:	; BinarySubtract £temporary2121 arg_list 2
x5763:	mov si, [bp + 8]	; 3: 139 118 8
x5766:	sub si, 2	; 3: 131 238 2

printArgument$326:	; IntegralToIntegral £temporary2122 £temporary2121

printArgument$327:	; Deref £temporary2123 -> £temporary2122 £temporary2122 0

printArgument$328:	; Assign ptrValue £temporary2123 -> £temporary2122
x5769:	mov ax, [si]	; 2: 139 4
x5771:	mov [bp + 42], ax	; 3: 137 70 42

printArgument$329:	; BinaryAdd arg_list arg_list 2
x5774:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$330:	; BinarySubtract £temporary2125 arg_list 2
x5778:	mov si, [bp + 8]	; 3: 139 118 8
x5781:	sub si, 2	; 3: 131 238 2

printArgument$331:	; IntegralToIntegral £temporary2126 £temporary2125

printArgument$332:	; Deref £temporary2127 -> £temporary2126 £temporary2126 0

printArgument$333:	; Assign intPtr £temporary2127 -> £temporary2126
x5784:	mov ax, [si]	; 2: 139 4
x5786:	mov [bp + 32], ax	; 3: 137 70 32

printArgument$334:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$335:	; Parameter 44 arg_list 6
x5789:	mov ax, [bp + 8]	; 3: 139 70 8
x5792:	mov [bp + 50], ax	; 3: 137 70 50

printArgument$336:	; Parameter 44 widthPtr 8
x5795:	mov ax, [bp + 16]	; 3: 139 70 16
x5798:	mov [bp + 52], ax	; 3: 137 70 52

printArgument$337:	; address £temporary2128 precision
x5801:	mov si, bp	; 2: 137 238
x5803:	add si, 18	; 3: 131 198 18

printArgument$338:	; Parameter 44 £temporary2128 10
x5806:	mov [bp + 54], si	; 3: 137 118 54

printArgument$339:	; Call 44 checkWidthAndPrecision 0
x5809:	mov word [bp + 44], printArgument$340	; 5: 199 70 44 191 22
x5814:	mov [bp + 46], bp	; 3: 137 110 46
x5817:	add bp, 44	; 3: 131 197 44
x5820:	nop	; 1: 144
x5821:	jmp checkWidthAndPrecision	; 2: 235 115

printArgument$340:	; PostCall 44

printArgument$341:	; GetReturnValue £temporary2129

printArgument$342:	; Assign arg_list £temporary2129
x5823:	mov [bp + 8], bx	; 3: 137 94 8

printArgument$343:	; Deref £temporary2130 -> intPtr intPtr 0
x5826:	mov si, [bp + 32]	; 3: 139 118 32

printArgument$344:	; Assign £temporary2130 -> intPtr g_outChars
x5829:	mov ax, [g_outChars]	; 3: 161 251 16
x5832:	mov [si], ax	; 2: 137 4

printArgument$345:	; Goto 359
x5834:	jmp printArgument$359	; 2: 235 55

printArgument$346:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$347:	; Parameter 44 arg_list 6
x5836:	mov ax, [bp + 8]	; 3: 139 70 8
x5839:	mov [bp + 50], ax	; 3: 137 70 50

printArgument$348:	; Parameter 44 widthPtr 8
x5842:	mov ax, [bp + 16]	; 3: 139 70 16
x5845:	mov [bp + 52], ax	; 3: 137 70 52

printArgument$349:	; address £temporary2131 precision
x5848:	mov si, bp	; 2: 137 238
x5850:	add si, 18	; 3: 131 198 18

printArgument$350:	; Parameter 44 £temporary2131 10
x5853:	mov [bp + 54], si	; 3: 137 118 54

printArgument$351:	; Call 44 checkWidthAndPrecision 0
x5856:	mov word [bp + 44], printArgument$352	; 5: 199 70 44 238 22
x5861:	mov [bp + 46], bp	; 3: 137 110 46
x5864:	add bp, 44	; 3: 131 197 44
x5867:	nop	; 1: 144
x5868:	jmp checkWidthAndPrecision	; 2: 235 68

printArgument$352:	; PostCall 44

printArgument$353:	; GetReturnValue £temporary2132

printArgument$354:	; Assign arg_list £temporary2132
x5870:	mov [bp + 8], bx	; 3: 137 94 8

printArgument$355:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$356:	; Parameter 44 37 6
x5873:	mov byte [bp + 50], 37	; 4: 198 70 50 37

printArgument$357:	; Call 44 printChar 0
x5877:	mov word [bp + 44], printArgument$358	; 5: 199 70 44 3 23
x5882:	mov [bp + 46], bp	; 3: 137 110 46
x5885:	add bp, 44	; 3: 131 197 44
x5888:	jmp printChar	; 3: 233 15 1

printArgument$358:	; PostCall 44

printArgument$359:	; SetReturnValue arg_list
x5891:	mov bx, [bp + 8]	; 3: 139 94 8

printArgument$360:	; Return arg_list
x5894:	mov ax, [bp]	; 3: 139 70 0
x5897:	mov di, [bp + 4]	; 3: 139 126 4
x5900:	mov bp, [bp + 2]	; 3: 139 110 2
x5903:	jmp ax	; 2: 255 224

printArgument$361:	; FunctionEnd printArgument

container2bytes#:
x5905:	db 0, 0	; 2: 0 0

labs:	; SignedGreaterThanEqual 4 value 0
x5907:	cmp dword [bp + 6], 0	; 5: 102 131 126 6 0
x5912:	jge labs$4	; 2: 125 9

labs$1:	; UnarySubtract £temporary3380 value
x5914:	mov ebx, [bp + 6]	; 4: 102 139 94 6
x5918:	neg ebx	; 3: 102 247 219

labs$2:	; Assign £temporary3384 £temporary3380

labs$3:	; Goto 5
x5921:	jmp labs$5	; 2: 235 4

labs$4:	; Assign £temporary3384 value
x5923:	mov ebx, [bp + 6]	; 4: 102 139 94 6

labs$5:	; SetReturnValue £temporary3384

labs$6:	; Return £temporary3384
x5927:	mov ax, [bp]	; 3: 139 70 0
x5930:	mov di, [bp + 4]	; 3: 139 126 4
x5933:	mov bp, [bp + 2]	; 3: 139 110 2
x5936:	jmp ax	; 2: 255 224

labs$7:	; FunctionEnd labs

checkWidthAndPrecision:	; Equal 9 widthPtr 0
x5938:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x5942:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; Deref £temporary1977 -> widthPtr widthPtr 0
x5944:	mov si, [bp + 8]	; 3: 139 118 8

checkWidthAndPrecision$2:	; NotEqual 9 £temporary1977 -> widthPtr -1
x5947:	cmp word [si], -1	; 3: 131 60 255
x5950:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; Deref £temporary1980 -> widthPtr widthPtr 0
x5952:	mov si, [bp + 8]	; 3: 139 118 8

checkWidthAndPrecision$4:	; BinaryAdd arg_list arg_list 2
x5955:	add word [bp + 6], 2	; 4: 131 70 6 2

checkWidthAndPrecision$5:	; BinarySubtract £temporary1982 arg_list 2
x5959:	mov di, [bp + 6]	; 3: 139 126 6
x5962:	sub di, 2	; 3: 131 239 2

checkWidthAndPrecision$6:	; IntegralToIntegral £temporary1983 £temporary1982

checkWidthAndPrecision$7:	; Deref £temporary1984 -> £temporary1983 £temporary1983 0

checkWidthAndPrecision$8:	; Assign £temporary1980 -> widthPtr £temporary1984 -> £temporary1983
x5965:	mov ax, [di]	; 2: 139 5
x5967:	mov [si], ax	; 2: 137 4

checkWidthAndPrecision$9:	; Equal 18 precisionPtr 0
x5969:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x5973:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; Deref £temporary1986 -> precisionPtr precisionPtr 0
x5975:	mov si, [bp + 10]	; 3: 139 118 10

checkWidthAndPrecision$11:	; NotEqual 18 £temporary1986 -> precisionPtr -1
x5978:	cmp word [si], -1	; 3: 131 60 255
x5981:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; Deref £temporary1989 -> precisionPtr precisionPtr 0
x5983:	mov si, [bp + 10]	; 3: 139 118 10

checkWidthAndPrecision$13:	; BinaryAdd arg_list arg_list 2
x5986:	add word [bp + 6], 2	; 4: 131 70 6 2

checkWidthAndPrecision$14:	; BinarySubtract £temporary1991 arg_list 2
x5990:	mov di, [bp + 6]	; 3: 139 126 6
x5993:	sub di, 2	; 3: 131 239 2

checkWidthAndPrecision$15:	; IntegralToIntegral £temporary1992 £temporary1991

checkWidthAndPrecision$16:	; Deref £temporary1993 -> £temporary1992 £temporary1992 0

checkWidthAndPrecision$17:	; Assign £temporary1989 -> precisionPtr £temporary1993 -> £temporary1992
x5996:	mov ax, [di]	; 2: 139 5
x5998:	mov [si], ax	; 2: 137 4

checkWidthAndPrecision$18:	; SetReturnValue arg_list
x6000:	mov bx, [bp + 6]	; 3: 139 94 6

checkWidthAndPrecision$19:	; Return arg_list
x6003:	mov ax, [bp]	; 3: 139 70 0
x6006:	mov di, [bp + 4]	; 3: 139 126 4
x6009:	mov bp, [bp + 2]	; 3: 139 110 2
x6012:	jmp ax	; 2: 255 224

checkWidthAndPrecision$20:	; FunctionEnd checkWidthAndPrecision

printLongInt:	; SignedGreaterThanEqual 8 longValue 0
x6014:	cmp dword [bp + 6], 0	; 5: 102 131 126 6 0
x6019:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; UnarySubtract £temporary1832 longValue
x6021:	mov eax, [bp + 6]	; 4: 102 139 70 6
x6025:	neg eax	; 3: 102 247 216

printLongInt$2:	; Assign longValue £temporary1832
x6028:	mov [bp + 6], eax	; 4: 102 137 70 6

printLongInt$3:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$4:	; Parameter 14 45 6
x6032:	mov byte [bp + 20], 45	; 4: 198 70 20 45

printLongInt$5:	; Call 14 printChar 0
x6036:	mov word [bp + 14], printLongInt$6	; 5: 199 70 14 162 23
x6041:	mov [bp + 16], bp	; 3: 137 110 16
x6044:	add bp, 14	; 3: 131 197 14
x6047:	nop	; 1: 144
x6048:	jmp printChar	; 2: 235 112

printLongInt$6:	; PostCall 14

printLongInt$7:	; Goto 19
x6050:	jmp printLongInt$19	; 2: 235 50

printLongInt$8:	; Equal 14 space 0
x6052:	cmp word [bp + 12], 0	; 4: 131 126 12 0
x6056:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$10:	; Parameter 14 32 6
x6058:	mov byte [bp + 20], 32	; 4: 198 70 20 32

printLongInt$11:	; Call 14 printChar 0
x6062:	mov word [bp + 14], printLongInt$12	; 5: 199 70 14 188 23
x6067:	mov [bp + 16], bp	; 3: 137 110 16
x6070:	add bp, 14	; 3: 131 197 14
x6073:	nop	; 1: 144
x6074:	jmp printChar	; 2: 235 86

printLongInt$12:	; PostCall 14

printLongInt$13:	; Goto 19
x6076:	jmp printLongInt$19	; 2: 235 24

printLongInt$14:	; Equal 19 plus 0
x6078:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x6082:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$16:	; Parameter 14 43 6
x6084:	mov byte [bp + 20], 43	; 4: 198 70 20 43

printLongInt$17:	; Call 14 printChar 0
x6088:	mov word [bp + 14], printLongInt$18	; 5: 199 70 14 214 23
x6093:	mov [bp + 16], bp	; 3: 137 110 16
x6096:	add bp, 14	; 3: 131 197 14
x6099:	nop	; 1: 144
x6100:	jmp printChar	; 2: 235 60

printLongInt$18:	; PostCall 14

printLongInt$19:	; NotEqual 25 longValue 0
x6102:	cmp dword [bp + 6], 0	; 5: 102 131 126 6 0
x6107:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$21:	; Parameter 14 48 6
x6109:	mov byte [bp + 20], 48	; 4: 198 70 20 48

printLongInt$22:	; Call 14 printChar 0
x6113:	mov word [bp + 14], printLongInt$23	; 5: 199 70 14 239 23
x6118:	mov [bp + 16], bp	; 3: 137 110 16
x6121:	add bp, 14	; 3: 131 197 14
x6124:	nop	; 1: 144
x6125:	jmp printChar	; 2: 235 35

printLongInt$23:	; PostCall 14

printLongInt$24:	; Goto 29
x6127:	jmp printLongInt$29	; 2: 235 22

printLongInt$25:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$26:	; Parameter 14 longValue 6
x6129:	mov eax, [bp + 6]	; 4: 102 139 70 6
x6133:	mov [bp + 20], eax	; 4: 102 137 70 20

printLongInt$27:	; Call 14 printLongIntRec 0
x6137:	mov word [bp + 14], printLongInt$28	; 5: 199 70 14 7 24
x6142:	mov [bp + 16], bp	; 3: 137 110 16
x6145:	add bp, 14	; 3: 131 197 14
x6148:	nop	; 1: 144
x6149:	jmp printLongIntRec	; 2: 235 101

printLongInt$28:	; PostCall 14

printLongInt$29:	; Return 0
x6151:	mov ax, [bp]	; 3: 139 70 0
x6154:	mov di, [bp + 4]	; 3: 139 126 4
x6157:	mov bp, [bp + 2]	; 3: 139 110 2
x6160:	jmp ax	; 2: 255 224

printLongInt$30:	; FunctionEnd printLongInt

printChar:	; Case 5 g_outStatus 0
x6162:	mov ax, [g_outStatus]	; 3: 161 157 11
x6165:	cmp ax, 0	; 3: 131 248 0
x6168:	je printChar$5	; 2: 116 12

printChar$1:	; Case 16 g_outStatus 1
x6170:	cmp ax, 1	; 3: 131 248 1
x6173:	je printChar$16	; 2: 116 37

printChar$2:	; Case 24 g_outStatus 2
x6175:	cmp ax, 2	; 3: 131 248 2
x6178:	je printChar$24	; 2: 116 57

printChar$3:	; CaseEnd g_outStatus

printChar$4:	; Goto 25
x6180:	jmp printChar$25	; 2: 235 59

printChar$5:	; IntegralToIntegral £temporary1774 g_outDevice
x6182:	mov ax, [g_outDevice]	; 3: 161 159 11

printChar$6:	; Assign stream £temporary1774
x6185:	mov [bp + 11], ax	; 3: 137 70 11

printChar$7:	; AssignRegister ah 64
x6188:	mov ah, 64	; 2: 180 64

printChar$8:	; Deref £temporary1777 -> stream stream 2
x6190:	mov si, [bp + 11]	; 3: 139 118 11

printChar$9:	; AssignRegister bx £temporary1777 -> stream
x6193:	mov bx, [si + 2]	; 3: 139 92 2

printChar$10:	; AssignRegister cx 1
x6196:	mov cx, 1	; 3: 185 1 0

printChar$11:	; address £temporary1780 c
x6199:	mov dx, bp	; 2: 137 234
x6201:	add dx, 6	; 3: 131 194 6

printChar$12:	; AssignRegister dx £temporary1780

printChar$13:	; Interrupt 33
x6204:	int 33	; 2: 205 33

printChar$14:	; Increment g_outChars
x6206:	inc word [g_outChars]	; 4: 255 6 251 16

printChar$15:	; Goto 25
x6210:	jmp printChar$25	; 2: 235 29

printChar$16:	; IntegralToIntegral £temporary1782 g_outDevice
x6212:	mov ax, [g_outDevice]	; 3: 161 159 11

printChar$17:	; Assign outString £temporary1782
x6215:	mov [bp + 9], ax	; 3: 137 70 9

printChar$18:	; Assign £temporary1783 g_outChars
x6218:	mov ax, [g_outChars]	; 3: 161 251 16

printChar$19:	; Increment g_outChars
x6221:	inc word [g_outChars]	; 4: 255 6 251 16

printChar$20:	; BinaryAdd £temporary1785 outString £temporary1783
x6225:	mov si, [bp + 9]	; 3: 139 118 9
x6228:	add si, ax	; 2: 1 198

printChar$21:	; Deref £temporary1784 -> £temporary1785 £temporary1785 0

printChar$22:	; Assign £temporary1784 -> £temporary1785 c
x6230:	mov al, [bp + 6]	; 3: 138 70 6
x6233:	mov [si], al	; 2: 136 4

printChar$23:	; Goto 25
x6235:	jmp printChar$25	; 2: 235 4

printChar$24:	; Increment g_outChars
x6237:	inc word [g_outChars]	; 4: 255 6 251 16

printChar$25:	; Return 0
x6241:	mov ax, [bp]	; 3: 139 70 0
x6244:	mov di, [bp + 4]	; 3: 139 126 4
x6247:	mov bp, [bp + 2]	; 3: 139 110 2
x6250:	jmp ax	; 2: 255 224

printChar$26:	; FunctionEnd printChar

printLongIntRec:	; Equal 15 longValue 0
x6252:	cmp dword [bp + 6], 0	; 5: 102 131 126 6 0
x6257:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; SignedModulo £temporary1822 longValue 10
x6259:	mov eax, [bp + 6]	; 4: 102 139 70 6
x6263:	xor edx, edx	; 3: 102 49 210
x6266:	idiv dword [int4$10#]	; 5: 102 247 62 214 24

printLongIntRec$2:	; IntegralToIntegral £temporary1823 £temporary1822
x6271:	cmp edx, 0	; 4: 102 131 250 0
x6275:	jge printLongIntRec$3	; 2: 125 5
x6277:	neg edx	; 3: 102 247 218
x6280:	neg dx	; 2: 247 218

printLongIntRec$3:	; Assign digit £temporary1823
x6282:	mov [bp + 10], dx	; 3: 137 86 10

printLongIntRec$4:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongIntRec$5:	; SignedDivide £temporary1824 longValue 10
x6285:	mov eax, [bp + 6]	; 4: 102 139 70 6
x6289:	xor edx, edx	; 3: 102 49 210
x6292:	idiv dword [int4$10#]	; 5: 102 247 62 214 24

printLongIntRec$6:	; Parameter 12 £temporary1824 6
x6297:	mov [bp + 18], eax	; 4: 102 137 70 18

printLongIntRec$7:	; Call 12 printLongIntRec 0
x6301:	mov word [bp + 12], printLongIntRec$8	; 5: 199 70 12 171 24
x6306:	mov [bp + 14], bp	; 3: 137 110 14
x6309:	add bp, 12	; 3: 131 197 12
x6312:	nop	; 1: 144
x6313:	jmp printLongIntRec	; 2: 235 193

printLongIntRec$8:	; PostCall 12

printLongIntRec$9:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongIntRec$10:	; BinaryAdd £temporary1826 digit 48
x6315:	mov ax, [bp + 10]	; 3: 139 70 10
x6318:	add ax, 48	; 3: 131 192 48

printLongIntRec$11:	; IntegralToIntegral £temporary1827 £temporary1826
x6321:	cmp ax, 0	; 3: 131 248 0
x6324:	jge printLongIntRec$12	; 2: 125 4
x6326:	neg ax	; 2: 247 216
x6328:	neg al	; 2: 246 216

printLongIntRec$12:	; Parameter 12 £temporary1827 6
x6330:	mov [bp + 18], al	; 3: 136 70 18

printLongIntRec$13:	; Call 12 printChar 0
x6333:	mov word [bp + 12], printLongIntRec$14	; 5: 199 70 12 203 24
x6338:	mov [bp + 14], bp	; 3: 137 110 14
x6341:	add bp, 12	; 3: 131 197 12
x6344:	jmp printChar	; 3: 233 71 255

printLongIntRec$14:	; PostCall 12

printLongIntRec$15:	; Return 0
x6347:	mov ax, [bp]	; 3: 139 70 0
x6350:	mov di, [bp + 4]	; 3: 139 126 4
x6353:	mov bp, [bp + 2]	; 3: 139 110 2
x6356:	jmp ax	; 2: 255 224

printLongIntRec$16:	; FunctionEnd printLongIntRec

int4$10#:
x6358:	dd 10	; 4: 10 0 0 0

printString:	; Equal 29 s 0
x6362:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x6366:	je printString$29	; 2: 116 115

printString$1:	; NotEqual 14 precision 0
x6368:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x6372:	jne printString$14	; 2: 117 48

printString$2:	; Assign index 0
x6374:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

printString$3:	; BinaryAdd £temporary1791 s index
x6379:	mov si, [bp + 6]	; 3: 139 118 6
x6382:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; Deref £temporary1790 -> £temporary1791 £temporary1791 0

printString$5:	; Equal 53 £temporary1790 -> £temporary1791 0
x6385:	cmp byte [si], 0	; 3: 128 60 0
x6388:	je printString$53	; 4: 15 132 199 0

printString$6:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$7:	; BinaryAdd £temporary1795 s index
x6392:	mov si, [bp + 6]	; 3: 139 118 6
x6395:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; Deref £temporary1794 -> £temporary1795 £temporary1795 0

printString$9:	; Parameter 12 £temporary1794 -> £temporary1795 6
x6398:	mov al, [si]	; 2: 138 4
x6400:	mov [bp + 18], al	; 3: 136 70 18

printString$10:	; Call 12 printChar 0
x6403:	mov word [bp + 12], printString$11	; 5: 199 70 12 17 25
x6408:	mov [bp + 14], bp	; 3: 137 110 14
x6411:	add bp, 12	; 3: 131 197 12
x6414:	jmp printChar	; 3: 233 1 255

printString$11:	; PostCall 12

printString$12:	; Increment index
x6417:	inc word [bp + 10]	; 3: 255 70 10

printString$13:	; Goto 3
x6420:	jmp printString$3	; 2: 235 213

printString$14:	; Assign index 0
x6422:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

printString$15:	; Assign £temporary1797 precision
x6427:	mov ax, [bp + 8]	; 3: 139 70 8

printString$16:	; Decrement precision
x6430:	dec word [bp + 8]	; 3: 255 78 8

printString$17:	; SignedLessThanEqual 53 £temporary1797 0
x6433:	cmp ax, 0	; 3: 131 248 0
x6436:	jle printString$53	; 4: 15 142 151 0

printString$18:	; BinaryAdd £temporary1800 s index
x6440:	mov si, [bp + 6]	; 3: 139 118 6
x6443:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; Deref £temporary1799 -> £temporary1800 £temporary1800 0

printString$20:	; Equal 53 £temporary1799 -> £temporary1800 0
x6446:	cmp byte [si], 0	; 3: 128 60 0
x6449:	je printString$53	; 4: 15 132 138 0

printString$21:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$22:	; BinaryAdd £temporary1805 s index
x6453:	mov si, [bp + 6]	; 3: 139 118 6
x6456:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; Deref £temporary1804 -> £temporary1805 £temporary1805 0

printString$24:	; Parameter 12 £temporary1804 -> £temporary1805 6
x6459:	mov al, [si]	; 2: 138 4
x6461:	mov [bp + 18], al	; 3: 136 70 18

printString$25:	; Call 12 printChar 0
x6464:	mov word [bp + 12], printString$26	; 5: 199 70 12 78 25
x6469:	mov [bp + 14], bp	; 3: 137 110 14
x6472:	add bp, 12	; 3: 131 197 12
x6475:	jmp printChar	; 3: 233 196 254

printString$26:	; PostCall 12

printString$27:	; Increment index
x6478:	inc word [bp + 10]	; 3: 255 70 10

printString$28:	; Goto 15
x6481:	jmp printString$15	; 2: 235 200

printString$29:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$30:	; Parameter 10 60 6
x6483:	mov byte [bp + 16], 60	; 4: 198 70 16 60

printString$31:	; Call 10 printChar 0
x6487:	mov word [bp + 10], printString$32	; 5: 199 70 10 101 25
x6492:	mov [bp + 12], bp	; 3: 137 110 12
x6495:	add bp, 10	; 3: 131 197 10
x6498:	jmp printChar	; 3: 233 173 254

printString$32:	; PostCall 10

printString$33:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$34:	; Parameter 10 78 6
x6501:	mov byte [bp + 16], 78	; 4: 198 70 16 78

printString$35:	; Call 10 printChar 0
x6505:	mov word [bp + 10], printString$36	; 5: 199 70 10 119 25
x6510:	mov [bp + 12], bp	; 3: 137 110 12
x6513:	add bp, 10	; 3: 131 197 10
x6516:	jmp printChar	; 3: 233 155 254

printString$36:	; PostCall 10

printString$37:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$38:	; Parameter 10 85 6
x6519:	mov byte [bp + 16], 85	; 4: 198 70 16 85

printString$39:	; Call 10 printChar 0
x6523:	mov word [bp + 10], printString$40	; 5: 199 70 10 137 25
x6528:	mov [bp + 12], bp	; 3: 137 110 12
x6531:	add bp, 10	; 3: 131 197 10
x6534:	jmp printChar	; 3: 233 137 254

printString$40:	; PostCall 10

printString$41:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$42:	; Parameter 10 76 6
x6537:	mov byte [bp + 16], 76	; 4: 198 70 16 76

printString$43:	; Call 10 printChar 0
x6541:	mov word [bp + 10], printString$44	; 5: 199 70 10 155 25
x6546:	mov [bp + 12], bp	; 3: 137 110 12
x6549:	add bp, 10	; 3: 131 197 10
x6552:	jmp printChar	; 3: 233 119 254

printString$44:	; PostCall 10

printString$45:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$46:	; Parameter 10 76 6
x6555:	mov byte [bp + 16], 76	; 4: 198 70 16 76

printString$47:	; Call 10 printChar 0
x6559:	mov word [bp + 10], printString$48	; 5: 199 70 10 173 25
x6564:	mov [bp + 12], bp	; 3: 137 110 12
x6567:	add bp, 10	; 3: 131 197 10
x6570:	jmp printChar	; 3: 233 101 254

printString$48:	; PostCall 10

printString$49:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$50:	; Parameter 10 62 6
x6573:	mov byte [bp + 16], 62	; 4: 198 70 16 62

printString$51:	; Call 10 printChar 0
x6577:	mov word [bp + 10], printString$52	; 5: 199 70 10 191 25
x6582:	mov [bp + 12], bp	; 3: 137 110 12
x6585:	add bp, 10	; 3: 131 197 10
x6588:	jmp printChar	; 3: 233 83 254

printString$52:	; PostCall 10

printString$53:	; Return 0
x6591:	mov ax, [bp]	; 3: 139 70 0
x6594:	mov di, [bp + 4]	; 3: 139 126 4
x6597:	mov bp, [bp + 2]	; 3: 139 110 2
x6600:	jmp ax	; 2: 255 224

printString$54:	; FunctionEnd printString

isupper:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

isupper$1:	; Call 8 localeconv 0
x6602:	mov word [bp + 8], isupper$2	; 5: 199 70 8 216 25
x6607:	mov [bp + 10], bp	; 3: 137 110 10
x6610:	add bp, 8	; 3: 131 197 8
x6613:	nop	; 1: 144
x6614:	jmp localeconv	; 2: 235 93

isupper$2:	; PostCall 8

isupper$3:	; GetReturnValue £temporary385

isupper$4:	; Assign localeConvPtr £temporary385
x6616:	mov [bp + 8], bx	; 3: 137 94 8

isupper$5:	; Equal 19 localeConvPtr 0
x6619:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x6623:	je isupper$19	; 2: 116 53

isupper$6:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

isupper$7:	; Deref £temporary387 -> localeConvPtr localeConvPtr 14
x6625:	mov si, [bp + 8]	; 3: 139 118 8

isupper$8:	; Parameter 10 £temporary387 -> localeConvPtr 6
x6628:	mov ax, [si + 14]	; 3: 139 68 14
x6631:	mov [bp + 16], ax	; 3: 137 70 16

isupper$9:	; Parameter 10 c 8
x6634:	mov ax, [bp + 6]	; 3: 139 70 6
x6637:	mov [bp + 18], ax	; 3: 137 70 18

isupper$10:	; Call 10 strchr 0
x6640:	mov word [bp + 10], isupper$11	; 5: 199 70 10 254 25
x6645:	mov [bp + 12], bp	; 3: 137 110 12
x6648:	add bp, 10	; 3: 131 197 10
x6651:	jmp strchr	; 3: 233 121 3

isupper$11:	; PostCall 10

isupper$12:	; GetReturnValue £temporary388

isupper$13:	; Equal 16 £temporary388 0
x6654:	cmp bx, 0	; 3: 131 251 0
x6657:	je isupper$16	; 2: 116 5

isupper$14:	; Assign £temporary390 1
x6659:	mov bx, 1	; 3: 187 1 0

isupper$15:	; Goto 17
x6662:	jmp isupper$17	; 2: 235 3

isupper$16:	; Assign £temporary390 0
x6664:	mov bx, 0	; 3: 187 0 0

isupper$17:	; SetReturnValue £temporary390

isupper$18:	; Return £temporary390
x6667:	mov ax, [bp]	; 3: 139 70 0
x6670:	mov di, [bp + 4]	; 3: 139 126 4
x6673:	mov bp, [bp + 2]	; 3: 139 110 2
x6676:	jmp ax	; 2: 255 224

isupper$19:	; SignedLessThan 23 c 65
x6678:	cmp word [bp + 6], 65	; 4: 131 126 6 65
x6682:	jl isupper$23	; 2: 124 11

isupper$20:	; SignedGreaterThan 23 c 90
x6684:	cmp word [bp + 6], 90	; 4: 131 126 6 90
x6688:	jg isupper$23	; 2: 127 5

isupper$21:	; Assign £temporary394 1
x6690:	mov bx, 1	; 3: 187 1 0

isupper$22:	; Goto 24
x6693:	jmp isupper$24	; 2: 235 3

isupper$23:	; Assign £temporary394 0
x6695:	mov bx, 0	; 3: 187 0 0

isupper$24:	; SetReturnValue £temporary394

isupper$25:	; Return £temporary394
x6698:	mov ax, [bp]	; 3: 139 70 0
x6701:	mov di, [bp + 4]	; 3: 139 126 4
x6704:	mov bp, [bp + 2]	; 3: 139 110 2
x6707:	jmp ax	; 2: 255 224

isupper$26:	; FunctionEnd isupper

localeconv:	; Equal 4 g_currStructPtr 0
x6709:	cmp word [@640$g_currStructPtr], 0	; 5: 131 62 83 26 0
x6714:	je localeconv$4	; 2: 116 9

localeconv$1:	; Deref £temporary518 -> g_currStructPtr g_currStructPtr 2
x6716:	mov si, [@640$g_currStructPtr]	; 4: 139 54 83 26

localeconv$2:	; Assign £temporary522 £temporary518 -> g_currStructPtr
x6720:	mov bx, [si + 2]	; 3: 139 92 2

localeconv$3:	; Goto 5
x6723:	jmp localeconv$5	; 2: 235 3

localeconv$4:	; Assign £temporary522 0
x6725:	mov bx, 0	; 3: 187 0 0

localeconv$5:	; SetReturnValue £temporary522

localeconv$6:	; Return £temporary522
x6728:	mov ax, [bp]	; 3: 139 70 0
x6731:	mov di, [bp + 4]	; 3: 139 126 4
x6734:	mov bp, [bp + 2]	; 3: 139 110 2
x6737:	jmp ax	; 2: 255 224

localeconv$7:	; FunctionEnd localeconv

@640$g_currStructPtr:
x6739:	dw @638$sArray	; 2: 85 26

@638$sArray:
x6741:	dw string_# ; 2: 97 26
x6743:	dw @635$en_US_utf8	; 2: 98 26
x6745:	dw string_C# ; 2: 114 29
x6747:	dw @635$en_US_utf8	; 2: 98 26
x6749:	dw string_US# ; 2: 116 29
x6751:	dw @635$en_US_utf8	; 2: 98 26

string_#:
x6753:	db 0	; 1: 0

@635$en_US_utf8:
x6754:	dw 1	; 2: 1 0
x6756:	dw 1	; 2: 1 0
x6758:	dw @631$enShortDayList ; 2: 116 26
x6760:	dw @632$enLongDayList ; 2: 158 26
x6762:	dw @633$enShortMonthList ; 2: 229 26
x6764:	dw @634$enLongMonthList ; 2: 45 27
x6766:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: 151 27
x6768:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: 178 27
x6770:	dw enMessageList ; 2: 205 27

@631$enShortDayList:
x6772:	dw string_Sun# ; 2: 130 26
x6774:	dw string_Mon# ; 2: 134 26
x6776:	dw string_Tue# ; 2: 138 26
x6778:	dw string_Wed# ; 2: 142 26
x6780:	dw string_Thu# ; 2: 146 26
x6782:	dw string_Fri# ; 2: 150 26
x6784:	dw string_Sat# ; 2: 154 26

string_Sun#:
x6786:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x6790:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x6794:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x6798:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x6802:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x6806:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x6810:	db "Sat", 0	; 4: 83 97 116 0

@632$enLongDayList:
x6814:	dw string_Sunday# ; 2: 172 26
x6816:	dw string_Monday# ; 2: 179 26
x6818:	dw string_Tuesday# ; 2: 186 26
x6820:	dw string_Wednesday# ; 2: 194 26
x6822:	dw string_Thursday# ; 2: 204 26
x6824:	dw string_Friday# ; 2: 213 26
x6826:	dw string_Saturday# ; 2: 220 26

string_Sunday#:
x6828:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x6835:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x6842:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x6850:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x6860:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x6869:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x6876:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@633$enShortMonthList:
x6885:	dw string_Jan# ; 2: 253 26
x6887:	dw string_Feb# ; 2: 1 27
x6889:	dw string_Mar# ; 2: 5 27
x6891:	dw string_Apr# ; 2: 9 27
x6893:	dw string_May# ; 2: 13 27
x6895:	dw string_Jun# ; 2: 17 27
x6897:	dw string_Jul# ; 2: 21 27
x6899:	dw string_Aug# ; 2: 25 27
x6901:	dw string_Sep# ; 2: 29 27
x6903:	dw string_Oct# ; 2: 33 27
x6905:	dw string_Nov# ; 2: 37 27
x6907:	dw string_Dec# ; 2: 41 27

string_Jan#:
x6909:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x6913:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x6917:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x6921:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x6925:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x6929:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x6933:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x6937:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x6941:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x6945:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x6949:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x6953:	db "Dec", 0	; 4: 68 101 99 0

@634$enLongMonthList:
x6957:	dw string_January# ; 2: 69 27
x6959:	dw string_February# ; 2: 77 27
x6961:	dw string_March# ; 2: 86 27
x6963:	dw string_April# ; 2: 92 27
x6965:	dw string_May# ; 2: 13 27
x6967:	dw string_June# ; 2: 98 27
x6969:	dw string_July# ; 2: 103 27
x6971:	dw string_August# ; 2: 108 27
x6973:	dw string_September# ; 2: 115 27
x6975:	dw string_October# ; 2: 125 27
x6977:	dw string_November# ; 2: 133 27
x6979:	dw string_December# ; 2: 142 27

string_January#:
x6981:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x6989:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x6998:	db "March", 0	; 6: 77 97 114 99 104 0

string_April#:
x7004:	db "April", 0	; 6: 65 112 114 105 108 0

string_June#:
x7010:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x7015:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x7020:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_September#:
x7027:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_October#:
x7037:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

string_November#:
x7045:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x7054:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x7063:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x7090:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

enMessageList:
x7117:	dw string_no20error# ; 2: 245 27
x7119:	dw string_function20number20invalid# ; 2: 254 27
x7121:	dw string_file20not20found# ; 2: 22 28
x7123:	dw string_path20not20found# ; 2: 37 28
x7125:	dw string_no20handle20available# ; 2: 52 28
x7127:	dw string_access20denied# ; 2: 72 28
x7129:	dw string_out20of20domain# ; 2: 86 28
x7131:	dw string_out20of20range# ; 2: 100 28
x7133:	dw string_invalid20multibyte20sequence# ; 2: 113 28
x7135:	dw string_error20while20opening# ; 2: 140 28
x7137:	dw string_error20while20flushing# ; 2: 160 28
x7139:	dw string_error20while20closing# ; 2: 181 28
x7141:	dw string_open20mode20invalid# ; 2: 201 28
x7143:	dw string_error20while20writing# ; 2: 219 28
x7145:	dw string_error20while20reading# ; 2: 239 28
x7147:	dw string_error20while20seeking# ; 2: 3 29
x7149:	dw string_error20while20telling# ; 2: 23 29
x7151:	dw string_error20while20sizing# ; 2: 43 29
x7153:	dw string_error20while20removing20file# ; 2: 62 29
x7155:	dw string_error20while20renaming20file# ; 2: 88 29

string_no20error#:
x7157:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x7166:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x7190:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x7205:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x7220:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x7240:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x7254:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x7268:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x7281:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x7308:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x7328:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x7349:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x7369:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x7387:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x7407:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x7427:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x7447:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x7467:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x7486:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x7512:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_C#:
x7538:	db "C", 0	; 2: 67 0

string_US#:
x7540:	db "US", 0	; 3: 85 83 0

strchr:	; IntegralToIntegral £temporary3994 i
x7543:	mov ax, [bp + 8]	; 3: 139 70 8
x7546:	cmp ax, 0	; 3: 131 248 0
x7549:	jge strchr$1	; 2: 125 4
x7551:	neg ax	; 2: 247 216
x7553:	neg al	; 2: 246 216

strchr$1:	; Assign c £temporary3994
x7555:	mov [bp + 12], al	; 3: 136 70 12

strchr$2:	; Assign index 0
x7558:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

strchr$3:	; BinaryAdd £temporary3996 text index
x7563:	mov si, [bp + 6]	; 3: 139 118 6
x7566:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; Deref £temporary3995 -> £temporary3996 £temporary3996 0

strchr$5:	; Equal 16 £temporary3995 -> £temporary3996 0
x7569:	cmp byte [si], 0	; 3: 128 60 0
x7572:	je strchr$16	; 2: 116 35

strchr$6:	; BinaryAdd £temporary4000 text index
x7574:	mov si, [bp + 6]	; 3: 139 118 6
x7577:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; Deref £temporary3999 -> £temporary4000 £temporary4000 0

strchr$8:	; NotEqual 14 £temporary3999 -> £temporary4000 c
x7580:	mov al, [bp + 12]	; 3: 138 70 12
x7583:	cmp [si], al	; 2: 56 4
x7585:	jne strchr$14	; 2: 117 17

strchr$9:	; BinaryAdd £temporary4003 text index
x7587:	mov bx, [bp + 6]	; 3: 139 94 6
x7590:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; Deref £temporary4002 -> £temporary4003 £temporary4003 0

strchr$11:	; address £temporary4004 £temporary4002 -> £temporary4003

strchr$12:	; SetReturnValue £temporary4004

strchr$13:	; Return £temporary4004
x7593:	mov ax, [bp]	; 3: 139 70 0
x7596:	mov di, [bp + 4]	; 3: 139 126 4
x7599:	mov bp, [bp + 2]	; 3: 139 110 2
x7602:	jmp ax	; 2: 255 224

strchr$14:	; Increment index
x7604:	inc word [bp + 10]	; 3: 255 70 10

strchr$15:	; Goto 3
x7607:	jmp strchr$3	; 2: 235 210

strchr$16:	; SetReturnValue 0
x7609:	mov bx, 0	; 3: 187 0 0

strchr$17:	; Return 0
x7612:	mov ax, [bp]	; 3: 139 70 0
x7615:	mov di, [bp + 4]	; 3: 139 126 4
x7618:	mov bp, [bp + 2]	; 3: 139 110 2
x7621:	jmp ax	; 2: 255 224

strchr$18:	; FunctionEnd strchr

printUnsignedLong:	; Equal 5 plus 0
x7623:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x7627:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$2:	; Parameter 22 43 6
x7629:	mov byte [bp + 28], 43	; 4: 198 70 28 43

printUnsignedLong$3:	; Call 22 printChar 0
x7633:	mov word [bp + 22], printUnsignedLong$4	; 5: 199 70 22 223 29
x7638:	mov [bp + 24], bp	; 3: 137 110 24
x7641:	add bp, 22	; 3: 131 197 22
x7644:	jmp printChar	; 3: 233 51 250

printUnsignedLong$4:	; PostCall 22

printUnsignedLong$5:	; Equal 10 space 0
x7647:	cmp word [bp + 12], 0	; 4: 131 126 12 0
x7651:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$7:	; Parameter 22 32 6
x7653:	mov byte [bp + 28], 32	; 4: 198 70 28 32

printUnsignedLong$8:	; Call 22 printChar 0
x7657:	mov word [bp + 22], printUnsignedLong$9	; 5: 199 70 22 247 29
x7662:	mov [bp + 24], bp	; 3: 137 110 24
x7665:	add bp, 22	; 3: 131 197 22
x7668:	jmp printChar	; 3: 233 27 250

printUnsignedLong$9:	; PostCall 22

printUnsignedLong$10:	; Equal 29 grid 0
x7671:	cmp word [bp + 14], 0	; 4: 131 126 14 0
x7675:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; NotEqual 16 base 8
x7677:	cmp dword [bp + 16], 8	; 5: 102 131 126 16 8
x7682:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$13:	; Parameter 22 48 6
x7684:	mov byte [bp + 28], 48	; 4: 198 70 28 48

printUnsignedLong$14:	; Call 22 printChar 0
x7688:	mov word [bp + 22], printUnsignedLong$15	; 5: 199 70 22 22 30
x7693:	mov [bp + 24], bp	; 3: 137 110 24
x7696:	add bp, 22	; 3: 131 197 22
x7699:	jmp printChar	; 3: 233 252 249

printUnsignedLong$15:	; PostCall 22

printUnsignedLong$16:	; NotEqual 29 base 16
x7702:	cmp dword [bp + 16], 16	; 5: 102 131 126 16 16
x7707:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$18:	; Parameter 22 48 6
x7709:	mov byte [bp + 28], 48	; 4: 198 70 28 48

printUnsignedLong$19:	; Call 22 printChar 0
x7713:	mov word [bp + 22], printUnsignedLong$20	; 5: 199 70 22 47 30
x7718:	mov [bp + 24], bp	; 3: 137 110 24
x7721:	add bp, 22	; 3: 131 197 22
x7724:	jmp printChar	; 3: 233 227 249

printUnsignedLong$20:	; PostCall 22

printUnsignedLong$21:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$22:	; Equal 25 capital 0
x7727:	cmp word [bp + 20], 0	; 4: 131 126 20 0
x7731:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; Assign £temporary1881 88
x7733:	mov al, 88	; 2: 176 88

printUnsignedLong$24:	; Goto 26
x7735:	jmp printUnsignedLong$26	; 2: 235 2

printUnsignedLong$25:	; Assign £temporary1881 120
x7737:	mov al, 120	; 2: 176 120

printUnsignedLong$26:	; Parameter 22 £temporary1881 6
x7739:	mov [bp + 28], al	; 3: 136 70 28

printUnsignedLong$27:	; Call 22 printChar 0
x7742:	mov word [bp + 22], printUnsignedLong$28	; 5: 199 70 22 76 30
x7747:	mov [bp + 24], bp	; 3: 137 110 24
x7750:	add bp, 22	; 3: 131 197 22
x7753:	jmp printChar	; 3: 233 198 249

printUnsignedLong$28:	; PostCall 22

printUnsignedLong$29:	; NotEqual 35 unsignedValue 0
x7756:	cmp dword [bp + 6], 0	; 5: 102 131 126 6 0
x7761:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$31:	; Parameter 22 48 6
x7763:	mov byte [bp + 28], 48	; 4: 198 70 28 48

printUnsignedLong$32:	; Call 22 printChar 0
x7767:	mov word [bp + 22], printUnsignedLong$33	; 5: 199 70 22 101 30
x7772:	mov [bp + 24], bp	; 3: 137 110 24
x7775:	add bp, 22	; 3: 131 197 22
x7778:	jmp printChar	; 3: 233 173 249

printUnsignedLong$33:	; PostCall 22

printUnsignedLong$34:	; Goto 41
x7781:	jmp printUnsignedLong$41	; 2: 235 36

printUnsignedLong$35:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$36:	; Parameter 22 unsignedValue 6
x7783:	mov eax, [bp + 6]	; 4: 102 139 70 6
x7787:	mov [bp + 28], eax	; 4: 102 137 70 28

printUnsignedLong$37:	; Parameter 22 base 10
x7791:	mov eax, [bp + 16]	; 4: 102 139 70 16
x7795:	mov [bp + 32], eax	; 4: 102 137 70 32

printUnsignedLong$38:	; Parameter 22 capital 14
x7799:	mov ax, [bp + 20]	; 3: 139 70 20
x7802:	mov [bp + 36], ax	; 3: 137 70 36

printUnsignedLong$39:	; Call 22 printUnsignedLongRec 0
x7805:	mov word [bp + 22], printUnsignedLong$40	; 5: 199 70 22 139 30
x7810:	mov [bp + 24], bp	; 3: 137 110 24
x7813:	add bp, 22	; 3: 131 197 22
x7816:	nop	; 1: 144
x7817:	jmp printUnsignedLongRec	; 2: 235 11

printUnsignedLong$40:	; PostCall 22

printUnsignedLong$41:	; Return 0
x7819:	mov ax, [bp]	; 3: 139 70 0
x7822:	mov di, [bp + 4]	; 3: 139 126 4
x7825:	mov bp, [bp + 2]	; 3: 139 110 2
x7828:	jmp ax	; 2: 255 224

printUnsignedLong$42:	; FunctionEnd printUnsignedLong

printUnsignedLongRec:	; UnsignedLessThanEqual 22 unsignedValue 0
x7830:	cmp dword [bp + 6], 0	; 5: 102 131 126 6 0
x7835:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; UnsignedModulo £temporary1857 unsignedValue base
x7837:	mov eax, [bp + 6]	; 4: 102 139 70 6
x7841:	xor edx, edx	; 3: 102 49 210
x7844:	div dword [bp + 10]	; 4: 102 247 118 10

printUnsignedLongRec$2:	; IntegralToIntegral £temporary1858 £temporary1857

printUnsignedLongRec$3:	; Assign digit £temporary1858
x7848:	mov [bp + 16], dx	; 3: 137 86 16

printUnsignedLongRec$4:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLongRec$5:	; UnsignedDivide £temporary1859 unsignedValue base
x7851:	mov eax, [bp + 6]	; 4: 102 139 70 6
x7855:	xor edx, edx	; 3: 102 49 210
x7858:	div dword [bp + 10]	; 4: 102 247 118 10

printUnsignedLongRec$6:	; Parameter 18 £temporary1859 6
x7862:	mov [bp + 24], eax	; 4: 102 137 70 24

printUnsignedLongRec$7:	; Parameter 18 base 10
x7866:	mov eax, [bp + 10]	; 4: 102 139 70 10
x7870:	mov [bp + 28], eax	; 4: 102 137 70 28

printUnsignedLongRec$8:	; Parameter 18 capital 14
x7874:	mov ax, [bp + 14]	; 3: 139 70 14
x7877:	mov [bp + 32], ax	; 3: 137 70 32

printUnsignedLongRec$9:	; Call 18 printUnsignedLongRec 0
x7880:	mov word [bp + 18], printUnsignedLongRec$10	; 5: 199 70 18 214 30
x7885:	mov [bp + 20], bp	; 3: 137 110 20
x7888:	add bp, 18	; 3: 131 197 18
x7891:	nop	; 1: 144
x7892:	jmp printUnsignedLongRec	; 2: 235 192

printUnsignedLongRec$10:	; PostCall 18

printUnsignedLongRec$11:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLongRec$12:	; Parameter 18 digit 6
x7894:	mov ax, [bp + 16]	; 3: 139 70 16
x7897:	mov [bp + 24], ax	; 3: 137 70 24

printUnsignedLongRec$13:	; Parameter 18 capital 8
x7900:	mov ax, [bp + 14]	; 3: 139 70 14
x7903:	mov [bp + 26], ax	; 3: 137 70 26

printUnsignedLongRec$14:	; Call 18 digitToChar 0
x7906:	mov word [bp + 18], printUnsignedLongRec$15	; 5: 199 70 18 240 30
x7911:	mov [bp + 20], bp	; 3: 137 110 20
x7914:	add bp, 18	; 3: 131 197 18
x7917:	nop	; 1: 144
x7918:	jmp digitToChar	; 2: 235 34

printUnsignedLongRec$15:	; PostCall 18

printUnsignedLongRec$16:	; GetReturnValue £temporary1861

printUnsignedLongRec$17:	; Assign c £temporary1861
x7920:	mov [bp + 18], bl	; 3: 136 94 18

printUnsignedLongRec$18:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLongRec$19:	; Parameter 19 c 6
x7923:	mov al, [bp + 18]	; 3: 138 70 18
x7926:	mov [bp + 25], al	; 3: 136 70 25

printUnsignedLongRec$20:	; Call 19 printChar 0
x7929:	mov word [bp + 19], printUnsignedLongRec$21	; 5: 199 70 19 7 31
x7934:	mov [bp + 21], bp	; 3: 137 110 21
x7937:	add bp, 19	; 3: 131 197 19
x7940:	jmp printChar	; 3: 233 11 249

printUnsignedLongRec$21:	; PostCall 19

printUnsignedLongRec$22:	; Return 0
x7943:	mov ax, [bp]	; 3: 139 70 0
x7946:	mov di, [bp + 4]	; 3: 139 126 4
x7949:	mov bp, [bp + 2]	; 3: 139 110 2
x7952:	jmp ax	; 2: 255 224

printUnsignedLongRec$23:	; FunctionEnd printUnsignedLongRec

digitToChar:	; SignedGreaterThanEqual 5 digit 10
x7954:	cmp word [bp + 6], 10	; 4: 131 126 6 10
x7958:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; BinaryAdd £temporary1847 digit 48
x7960:	mov bx, [bp + 6]	; 3: 139 94 6
x7963:	add bx, 48	; 3: 131 195 48

digitToChar$2:	; IntegralToIntegral £temporary1848 £temporary1847
x7966:	cmp bx, 0	; 3: 131 251 0
x7969:	jge digitToChar$3	; 2: 125 4
x7971:	neg bx	; 2: 247 219
x7973:	neg bl	; 2: 246 219

digitToChar$3:	; SetReturnValue £temporary1848

digitToChar$4:	; Return £temporary1848
x7975:	mov ax, [bp]	; 3: 139 70 0
x7978:	mov di, [bp + 4]	; 3: 139 126 4
x7981:	mov bp, [bp + 2]	; 3: 139 110 2
x7984:	jmp ax	; 2: 255 224

digitToChar$5:	; Equal 11 capital 0
x7986:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x7990:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; BinarySubtract £temporary1849 digit 10
x7992:	mov bx, [bp + 6]	; 3: 139 94 6
x7995:	sub bx, 10	; 3: 131 235 10

digitToChar$7:	; BinaryAdd £temporary1850 £temporary1849 65
x7998:	add bx, 65	; 3: 131 195 65

digitToChar$8:	; IntegralToIntegral £temporary1851 £temporary1850
x8001:	cmp bx, 0	; 3: 131 251 0
x8004:	jge digitToChar$9	; 2: 125 4
x8006:	neg bx	; 2: 247 219
x8008:	neg bl	; 2: 246 219

digitToChar$9:	; SetReturnValue £temporary1851

digitToChar$10:	; Return £temporary1851
x8010:	mov ax, [bp]	; 3: 139 70 0
x8013:	mov di, [bp + 4]	; 3: 139 126 4
x8016:	mov bp, [bp + 2]	; 3: 139 110 2
x8019:	jmp ax	; 2: 255 224

digitToChar$11:	; BinarySubtract £temporary1852 digit 10
x8021:	mov bx, [bp + 6]	; 3: 139 94 6
x8024:	sub bx, 10	; 3: 131 235 10

digitToChar$12:	; BinaryAdd £temporary1853 £temporary1852 97
x8027:	add bx, 97	; 3: 131 195 97

digitToChar$13:	; IntegralToIntegral £temporary1854 £temporary1853
x8030:	cmp bx, 0	; 3: 131 251 0
x8033:	jge digitToChar$14	; 2: 125 4
x8035:	neg bx	; 2: 247 219
x8037:	neg bl	; 2: 246 219

digitToChar$14:	; SetReturnValue £temporary1854

digitToChar$15:	; Return £temporary1854
x8039:	mov ax, [bp]	; 3: 139 70 0
x8042:	mov di, [bp + 4]	; 3: 139 126 4
x8045:	mov bp, [bp + 2]	; 3: 139 110 2
x8048:	jmp ax	; 2: 255 224

digitToChar$16:	; FunctionEnd digitToChar

printLongDoublePlain:	; PushFloat longDoubleValue
x8050:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoublePlain$1:	; PushFloat 0.0
x8053:	fldz	; 2: 217 238

printLongDoublePlain$2:	; SignedGreaterThanEqual 12 longDoubleValue 0.0
x8055:	fcompp	; 2: 222 217
x8057:	fstsw ax	; 3: 155 223 224
x8060:	sahf	; 1: 158
x8061:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoublePlain$4:	; Parameter 22 45 6
x8063:	mov byte [bp + 28], 45	; 4: 198 70 28 45

printLongDoublePlain$5:	; Call 22 printChar 0
x8067:	mov word [bp + 22], printLongDoublePlain$6	; 5: 199 70 22 145 31
x8072:	mov [bp + 24], bp	; 3: 137 110 24
x8075:	add bp, 22	; 3: 131 197 22
x8078:	jmp printChar	; 3: 233 129 248

printLongDoublePlain$6:	; PostCall 22

printLongDoublePlain$7:	; PushFloat longDoubleValue
x8081:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoublePlain$8:	; UnarySubtract £temporary1917 longDoubleValue
x8084:	fchs	; 2: 217 224

printLongDoublePlain$9:	; PopFloat longDoubleValue
x8086:	fstp qword [bp + 6]	; 3: 221 94 6

printLongDoublePlain$10:	; Assign plus 0
x8089:	mov word [bp + 14], 0	; 5: 199 70 14 0 0

printLongDoublePlain$11:	; Assign space 0
x8094:	mov word [bp + 16], 0	; 5: 199 70 16 0 0

printLongDoublePlain$12:	; PushFloat longDoubleValue
x8099:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoublePlain$13:	; FloatingToIntegral £temporary1918 longDoubleValue
x8102:	fistp dword [container4bytes#]	; 4: 219 30 10 32
x8106:	mov eax, [container4bytes#]	; 4: 102 161 10 32

printLongDoublePlain$14:	; Assign longValue £temporary1918
x8110:	mov [bp + 22], eax	; 4: 102 137 70 22

printLongDoublePlain$15:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoublePlain$16:	; Parameter 26 longValue 6
x8114:	mov eax, [bp + 22]	; 4: 102 139 70 22
x8118:	mov [bp + 32], eax	; 4: 102 137 70 32

printLongDoublePlain$17:	; Parameter 26 plus 10
x8122:	mov ax, [bp + 14]	; 3: 139 70 14
x8125:	mov [bp + 36], ax	; 3: 137 70 36

printLongDoublePlain$18:	; Parameter 26 space 12
x8128:	mov ax, [bp + 16]	; 3: 139 70 16
x8131:	mov [bp + 38], ax	; 3: 137 70 38

printLongDoublePlain$19:	; Call 26 printLongInt 0
x8134:	mov word [bp + 26], printLongDoublePlain$20	; 5: 199 70 26 212 31
x8139:	mov [bp + 28], bp	; 3: 137 110 28
x8142:	add bp, 26	; 3: 131 197 26
x8145:	jmp printLongInt	; 3: 233 170 247

printLongDoublePlain$20:	; PostCall 26

printLongDoublePlain$21:	; PushFloat longDoubleValue
x8148:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoublePlain$22:	; IntegralToFloating £temporary1920 longValue
x8151:	fild dword [bp + 22]	; 3: 219 70 22

printLongDoublePlain$23:	; BinarySubtract £temporary1921 longDoubleValue £temporary1920
x8154:	fsub	; 2: 222 233

printLongDoublePlain$24:	; PopFloat longDoubleValue
x8156:	fstp qword [bp + 6]	; 3: 221 94 6

printLongDoublePlain$25:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoublePlain$26:	; PushFloat longDoubleValue
x8159:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoublePlain$27:	; Parameter 26 longDoubleValue 6
x8162:	fstp qword [bp + 32]	; 3: 221 94 32

printLongDoublePlain$28:	; Parameter 26 grid 14
x8165:	mov ax, [bp + 18]	; 3: 139 70 18
x8168:	mov [bp + 40], ax	; 3: 137 70 40

printLongDoublePlain$29:	; Parameter 26 precision 16
x8171:	mov ax, [bp + 20]	; 3: 139 70 20
x8174:	mov [bp + 42], ax	; 3: 137 70 42

printLongDoublePlain$30:	; Call 26 printLongDoubleFraction 0
x8177:	mov word [bp + 26], printLongDoublePlain$31	; 5: 199 70 26 255 31
x8182:	mov [bp + 28], bp	; 3: 137 110 28
x8185:	add bp, 26	; 3: 131 197 26
x8188:	nop	; 1: 144
x8189:	jmp printLongDoubleFraction	; 2: 235 15

printLongDoublePlain$31:	; PostCall 26

printLongDoublePlain$32:	; Return 0
x8191:	mov ax, [bp]	; 3: 139 70 0
x8194:	mov di, [bp + 4]	; 3: 139 126 4
x8197:	mov bp, [bp + 2]	; 3: 139 110 2
x8200:	jmp ax	; 2: 255 224

printLongDoublePlain$33:	; FunctionEnd printLongDoublePlain

container4bytes#:
x8202:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; PushFloat longDoubleValue
x8206:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleFraction$1:	; PushFloat longDoubleValue
x8209:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleFraction$2:	; FloatingToIntegral £temporary1896 longDoubleValue
x8212:	fistp dword [container4bytes#]	; 4: 219 30 10 32
x8216:	mov eax, [container4bytes#]	; 4: 102 161 10 32

printLongDoubleFraction$3:	; IntegralToFloating £temporary1897 £temporary1896
x8220:	mov [container4bytes#], eax	; 4: 102 163 10 32
x8224:	fild dword [container4bytes#]	; 4: 219 6 10 32

printLongDoubleFraction$4:	; BinarySubtract £temporary1898 longDoubleValue £temporary1897
x8228:	fsub	; 2: 222 233

printLongDoubleFraction$5:	; PopFloat longDoubleValue
x8230:	fstp qword [bp + 6]	; 3: 221 94 6

printLongDoubleFraction$6:	; NotEqual 8 precision 0
x8233:	cmp word [bp + 16], 0	; 4: 131 126 16 0
x8237:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; Assign precision 6
x8239:	mov word [bp + 16], 6	; 5: 199 70 16 6 0

printLongDoubleFraction$8:	; NotEqual 10 grid 0
x8244:	cmp word [bp + 14], 0	; 4: 131 126 14 0
x8248:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; SignedLessThanEqual 14 precision 0
x8250:	cmp word [bp + 16], 0	; 4: 131 126 16 0
x8254:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleFraction$11:	; Parameter 18 46 6
x8256:	mov byte [bp + 24], 46	; 4: 198 70 24 46

printLongDoubleFraction$12:	; Call 18 printChar 0
x8260:	mov word [bp + 18], printLongDoubleFraction$13	; 5: 199 70 18 82 32
x8265:	mov [bp + 20], bp	; 3: 137 110 20
x8268:	add bp, 18	; 3: 131 197 18
x8271:	jmp printChar	; 3: 233 192 247

printLongDoubleFraction$13:	; PostCall 18

printLongDoubleFraction$14:	; Assign £temporary1904 precision
x8274:	mov ax, [bp + 16]	; 3: 139 70 16

printLongDoubleFraction$15:	; Decrement precision
x8277:	dec word [bp + 16]	; 3: 255 78 16

printLongDoubleFraction$16:	; SignedLessThanEqual 35 £temporary1904 0
x8280:	cmp ax, 0	; 3: 131 248 0
x8283:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; PushFloat 10.0
x8285:	fld qword [float8$10.0#]	; 4: 221 6 174 32

printLongDoubleFraction$18:	; PushFloat longDoubleValue
x8289:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleFraction$19:	; SignedMultiply £temporary1906 10.0 longDoubleValue
x8292:	fmul	; 2: 222 201

printLongDoubleFraction$20:	; PopFloat longDoubleValue10
x8294:	fstp qword [bp + 18]	; 3: 221 94 18

printLongDoubleFraction$21:	; PushFloat longDoubleValue10
x8297:	fld qword [bp + 18]	; 3: 221 70 18

printLongDoubleFraction$22:	; FloatingToIntegral £temporary1907 longDoubleValue10
x8300:	fistp word [container2bytes#]	; 4: 223 30 17 23
x8304:	mov ax, [container2bytes#]	; 3: 161 17 23

printLongDoubleFraction$23:	; Assign digitValue £temporary1907
x8307:	mov [bp + 26], ax	; 3: 137 70 26

printLongDoubleFraction$24:	; CallHeader 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleFraction$25:	; BinaryAdd £temporary1908 digitValue 48
x8310:	mov ax, [bp + 26]	; 3: 139 70 26
x8313:	add ax, 48	; 3: 131 192 48

printLongDoubleFraction$26:	; IntegralToIntegral £temporary1909 £temporary1908
x8316:	cmp ax, 0	; 3: 131 248 0
x8319:	jge printLongDoubleFraction$27	; 2: 125 4
x8321:	neg ax	; 2: 247 216
x8323:	neg al	; 2: 246 216

printLongDoubleFraction$27:	; Parameter 28 £temporary1909 6
x8325:	mov [bp + 34], al	; 3: 136 70 34

printLongDoubleFraction$28:	; Call 28 printChar 0
x8328:	mov word [bp + 28], printLongDoubleFraction$29	; 5: 199 70 28 150 32
x8333:	mov [bp + 30], bp	; 3: 137 110 30
x8336:	add bp, 28	; 3: 131 197 28
x8339:	jmp printChar	; 3: 233 124 247

printLongDoubleFraction$29:	; PostCall 28

printLongDoubleFraction$30:	; PushFloat longDoubleValue10
x8342:	fld qword [bp + 18]	; 3: 221 70 18

printLongDoubleFraction$31:	; IntegralToFloating £temporary1911 digitValue
x8345:	fild word [bp + 26]	; 3: 223 70 26

printLongDoubleFraction$32:	; BinarySubtract £temporary1912 longDoubleValue10 £temporary1911
x8348:	fsub	; 2: 222 233

printLongDoubleFraction$33:	; PopFloat longDoubleValue
x8350:	fstp qword [bp + 6]	; 3: 221 94 6

printLongDoubleFraction$34:	; Goto 14
x8353:	jmp printLongDoubleFraction$14	; 2: 235 175

printLongDoubleFraction$35:	; Return 0
x8355:	mov ax, [bp]	; 3: 139 70 0
x8358:	mov di, [bp + 4]	; 3: 139 126 4
x8361:	mov bp, [bp + 2]	; 3: 139 110 2
x8364:	jmp ax	; 2: 255 224

printLongDoubleFraction$36:	; FunctionEnd printLongDoubleFraction

float8$10.0#:
x8366:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; PushFloat x
x8374:	fld qword [bp + 6]	; 3: 221 70 6

fabs$1:	; PushZero
x8377:	fldz	; 2: 217 238

fabs$2:	; SignedGreaterThanEqual 7 x 0
x8379:	fcompp	; 2: 222 217
x8381:	fstsw ax	; 3: 155 223 224
x8384:	sahf	; 1: 158
x8385:	jbe fabs$7	; 2: 118 7

fabs$3:	; PushFloat x
x8387:	fld qword [bp + 6]	; 3: 221 70 6

fabs$4:	; UnarySubtract £temporary831 x
x8390:	fchs	; 2: 217 224

fabs$5:	; DecreaseStack

fabs$6:	; Goto 8
x8392:	jmp fabs$8	; 2: 235 3

fabs$7:	; PushFloat x
x8394:	fld qword [bp + 6]	; 3: 221 70 6

fabs$8:	; SetReturnValue £temporary835

fabs$9:	; Return £temporary835
x8397:	mov ax, [bp]	; 3: 139 70 0
x8400:	mov di, [bp + 4]	; 3: 139 126 4
x8403:	mov bp, [bp + 2]	; 3: 139 110 2
x8406:	jmp ax	; 2: 255 224

fabs$10:	; FunctionEnd fabs

tolower:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

tolower$1:	; Parameter 8 c 6
x8408:	mov ax, [bp + 6]	; 3: 139 70 6
x8411:	mov [bp + 14], ax	; 3: 137 70 14

tolower$2:	; Call 8 isupper 0
x8414:	mov word [bp + 8], tolower$3	; 5: 199 70 8 236 32
x8419:	mov [bp + 10], bp	; 3: 137 110 10
x8422:	add bp, 8	; 3: 131 197 8
x8425:	jmp isupper	; 3: 233 222 248

tolower$3:	; PostCall 8

tolower$4:	; GetReturnValue £temporary465

tolower$5:	; Equal 31 £temporary465 0
x8428:	cmp bx, 0	; 3: 131 251 0
x8431:	je tolower$31	; 2: 116 122

tolower$6:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

tolower$7:	; Call 8 localeconv 0
x8433:	mov word [bp + 8], tolower$8	; 5: 199 70 8 255 32
x8438:	mov [bp + 10], bp	; 3: 137 110 10
x8441:	add bp, 8	; 3: 131 197 8
x8444:	jmp localeconv	; 3: 233 54 249

tolower$8:	; PostCall 8

tolower$9:	; GetReturnValue £temporary466

tolower$10:	; Assign localeConvPtr £temporary466
x8447:	mov [bp + 8], bx	; 3: 137 94 8

tolower$11:	; Equal 28 localeConvPtr 0
x8450:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x8454:	je tolower$28	; 2: 116 82

tolower$12:	; Deref £temporary468 -> localeConvPtr localeConvPtr 12
x8456:	mov si, [bp + 8]	; 3: 139 118 8

tolower$13:	; Assign lowerCase £temporary468 -> localeConvPtr
x8459:	mov ax, [si + 12]	; 3: 139 68 12
x8462:	mov [bp + 10], ax	; 3: 137 70 10

tolower$14:	; Deref £temporary469 -> localeConvPtr localeConvPtr 14
x8465:	mov si, [bp + 8]	; 3: 139 118 8

tolower$15:	; Assign upperCase £temporary469 -> localeConvPtr
x8468:	mov ax, [si + 14]	; 3: 139 68 14
x8471:	mov [bp + 12], ax	; 3: 137 70 12

tolower$16:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

tolower$17:	; Parameter 14 upperCase 6
x8474:	mov ax, [bp + 12]	; 3: 139 70 12
x8477:	mov [bp + 20], ax	; 3: 137 70 20

tolower$18:	; Parameter 14 c 8
x8480:	mov ax, [bp + 6]	; 3: 139 70 6
x8483:	mov [bp + 22], ax	; 3: 137 70 22

tolower$19:	; Call 14 strchr 0
x8486:	mov word [bp + 14], tolower$20	; 5: 199 70 14 52 33
x8491:	mov [bp + 16], bp	; 3: 137 110 16
x8494:	add bp, 14	; 3: 131 197 14
x8497:	jmp strchr	; 3: 233 67 252

tolower$20:	; PostCall 14

tolower$21:	; GetReturnValue £temporary470

tolower$22:	; BinarySubtract index £temporary470 upperCase
x8500:	sub bx, [bp + 12]	; 3: 43 94 12
x8503:	mov [bp + 14], bx	; 3: 137 94 14

tolower$23:	; BinaryAdd £temporary473 lowerCase index
x8506:	mov si, [bp + 10]	; 3: 139 118 10
x8509:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; Deref £temporary472 -> £temporary473 £temporary473 0

tolower$25:	; IntegralToIntegral £temporary474 £temporary472 -> £temporary473
x8512:	mov bl, [si]	; 2: 138 28
x8514:	and bx, 255	; 4: 129 227 255 0
x8518:	cmp bl, 0	; 3: 128 251 0
x8521:	jge tolower$26	; 2: 125 4
x8523:	neg bl	; 2: 246 219
x8525:	neg bx	; 2: 247 219

tolower$26:	; SetReturnValue £temporary474

tolower$27:	; Return £temporary474
x8527:	mov ax, [bp]	; 3: 139 70 0
x8530:	mov di, [bp + 4]	; 3: 139 126 4
x8533:	mov bp, [bp + 2]	; 3: 139 110 2
x8536:	jmp ax	; 2: 255 224

tolower$28:	; BinaryAdd £temporary475 c 32
x8538:	mov bx, [bp + 6]	; 3: 139 94 6
x8541:	add bx, 32	; 3: 131 195 32

tolower$29:	; SetReturnValue £temporary475

tolower$30:	; Return £temporary475
x8544:	mov ax, [bp]	; 3: 139 70 0
x8547:	mov di, [bp + 4]	; 3: 139 126 4
x8550:	mov bp, [bp + 2]	; 3: 139 110 2
x8553:	jmp ax	; 2: 255 224

tolower$31:	; SetReturnValue c
x8555:	mov bx, [bp + 6]	; 3: 139 94 6

tolower$32:	; Return c
x8558:	mov ax, [bp]	; 3: 139 70 0
x8561:	mov di, [bp + 4]	; 3: 139 126 4
x8564:	mov bp, [bp + 2]	; 3: 139 110 2
x8567:	jmp ax	; 2: 255 224

tolower$33:	; FunctionEnd tolower

printLongDoubleExpo:	; PushFloat value
x8569:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleExpo$1:	; PushFloat 0.0
x8572:	fldz	; 2: 217 238

printLongDoubleExpo$2:	; NotEqual 27 value 0.0
x8574:	fcompp	; 2: 222 217
x8576:	fstsw ax	; 3: 155 223 224
x8579:	sahf	; 1: 158
x8580:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$4:	; Parameter 24 48 6
x8582:	mov byte [bp + 30], 48	; 4: 198 70 30 48

printLongDoubleExpo$5:	; Call 24 printChar 0
x8586:	mov word [bp + 24], printLongDoubleExpo$6	; 5: 199 70 24 152 33
x8591:	mov [bp + 26], bp	; 3: 137 110 26
x8594:	add bp, 24	; 3: 131 197 24
x8597:	jmp printChar	; 3: 233 122 246

printLongDoubleExpo$6:	; PostCall 24

printLongDoubleExpo$7:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$8:	; PushFloat 0.0
x8600:	fldz	; 2: 217 238

printLongDoubleExpo$9:	; Parameter 24 0.0 6
x8602:	fstp qword [bp + 30]	; 3: 221 94 30

printLongDoubleExpo$10:	; Parameter 24 precision 14
x8605:	mov ax, [bp + 20]	; 3: 139 70 20
x8608:	mov [bp + 38], ax	; 3: 137 70 38

printLongDoubleExpo$11:	; Parameter 24 grid 16
x8611:	mov ax, [bp + 18]	; 3: 139 70 18
x8614:	mov [bp + 40], ax	; 3: 137 70 40

printLongDoubleExpo$12:	; Call 24 printLongDoubleFraction 0
x8617:	mov word [bp + 24], printLongDoubleExpo$13	; 5: 199 70 24 183 33
x8622:	mov [bp + 26], bp	; 3: 137 110 26
x8625:	add bp, 24	; 3: 131 197 24
x8628:	jmp printLongDoubleFraction	; 3: 233 87 254

printLongDoubleExpo$13:	; PostCall 24

printLongDoubleExpo$14:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$15:	; Equal 18 capital 0
x8631:	cmp word [bp + 22], 0	; 4: 131 126 22 0
x8635:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; Assign £temporary1937 69
x8637:	mov al, 69	; 2: 176 69

printLongDoubleExpo$17:	; Goto 19
x8639:	jmp printLongDoubleExpo$19	; 2: 235 2

printLongDoubleExpo$18:	; Assign £temporary1937 101
x8641:	mov al, 101	; 2: 176 101

printLongDoubleExpo$19:	; Parameter 24 £temporary1937 6
x8643:	mov [bp + 30], al	; 3: 136 70 30

printLongDoubleExpo$20:	; Call 24 printChar 0
x8646:	mov word [bp + 24], printLongDoubleExpo$21	; 5: 199 70 24 212 33
x8651:	mov [bp + 26], bp	; 3: 137 110 26
x8654:	add bp, 24	; 3: 131 197 24
x8657:	jmp printChar	; 3: 233 62 246

printLongDoubleExpo$21:	; PostCall 24

printLongDoubleExpo$22:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$23:	; Parameter 24 48 6
x8660:	mov byte [bp + 30], 48	; 4: 198 70 30 48

printLongDoubleExpo$24:	; Call 24 printChar 0
x8664:	mov word [bp + 24], printLongDoubleExpo$25	; 5: 199 70 24 230 33
x8669:	mov [bp + 26], bp	; 3: 137 110 26
x8672:	add bp, 24	; 3: 131 197 24
x8675:	jmp printChar	; 3: 233 44 246

printLongDoubleExpo$25:	; PostCall 24

printLongDoubleExpo$26:	; Goto 80
x8678:	jmp printLongDoubleExpo$80	; 3: 233 236 0

printLongDoubleExpo$27:	; PushFloat value
x8681:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleExpo$28:	; PushFloat 0.0
x8684:	fldz	; 2: 217 238

printLongDoubleExpo$29:	; SignedGreaterThanEqual 37 value 0.0
x8686:	fcompp	; 2: 222 217
x8688:	fstsw ax	; 3: 155 223 224
x8691:	sahf	; 1: 158
x8692:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$31:	; Parameter 24 45 6
x8694:	mov byte [bp + 30], 45	; 4: 198 70 30 45

printLongDoubleExpo$32:	; Call 24 printChar 0
x8698:	mov word [bp + 24], printLongDoubleExpo$33	; 5: 199 70 24 8 34
x8703:	mov [bp + 26], bp	; 3: 137 110 26
x8706:	add bp, 24	; 3: 131 197 24
x8709:	jmp printChar	; 3: 233 10 246

printLongDoubleExpo$33:	; PostCall 24

printLongDoubleExpo$34:	; PushFloat value
x8712:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleExpo$35:	; UnarySubtract £temporary1942 value
x8715:	fchs	; 2: 217 224

printLongDoubleExpo$36:	; PopFloat value
x8717:	fstp qword [bp + 6]	; 3: 221 94 6

printLongDoubleExpo$37:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$38:	; PushFloat value
x8720:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleExpo$39:	; Parameter 24 value 6
x8723:	fstp qword [bp + 30]	; 3: 221 94 30

printLongDoubleExpo$40:	; Call 24 log10 0
x8726:	mov word [bp + 24], printLongDoubleExpo$41	; 5: 199 70 24 36 34
x8731:	mov [bp + 26], bp	; 3: 137 110 26
x8734:	add bp, 24	; 3: 131 197 24
x8737:	jmp log10	; 3: 233 188 0

printLongDoubleExpo$41:	; PostCall 24

printLongDoubleExpo$42:	; GetReturnValue £temporary1943

printLongDoubleExpo$43:	; FloatingToIntegral £temporary1944 £temporary1943
x8740:	fistp word [container2bytes#]	; 4: 223 30 17 23
x8744:	mov ax, [container2bytes#]	; 3: 161 17 23

printLongDoubleExpo$44:	; Assign expo £temporary1944
x8747:	mov [bp + 24], ax	; 3: 137 70 24

printLongDoubleExpo$45:	; PushFloat value
x8750:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleExpo$46:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x8753:	fstp qword [bp + 26]	; 3: 221 94 26

printLongDoubleExpo$47:	; PushFloat 10.0
x8756:	fld qword [float8$10.0#]	; 4: 221 6 174 32

printLongDoubleExpo$48:	; Parameter 26 10.0 6
x8760:	fstp qword [bp + 40]	; 3: 221 94 40

printLongDoubleExpo$49:	; IntegralToFloating £temporary1945 expo
x8763:	fild word [bp + 24]	; 3: 223 70 24

printLongDoubleExpo$50:	; Parameter 26 £temporary1945 14
x8766:	fstp qword [bp + 48]	; 3: 221 94 48

printLongDoubleExpo$51:	; Call 26 pow 0
x8769:	mov word [bp + 34], printLongDoubleExpo$52	; 5: 199 70 34 79 34
x8774:	mov [bp + 36], bp	; 3: 137 110 36
x8777:	add bp, 34	; 3: 131 197 34
x8780:	jmp pow	; 3: 233 238 1

printLongDoubleExpo$52:	; PostCall 26
x8783:	fstp qword [bp + 34]	; 3: 221 94 34
x8786:	fld qword [bp + 26]	; 3: 221 70 26
x8789:	fld qword [bp + 34]	; 3: 221 70 34

printLongDoubleExpo$53:	; GetReturnValue £temporary1946

printLongDoubleExpo$54:	; SignedDivide £temporary1947 value £temporary1946
x8792:	fdiv	; 2: 222 249

printLongDoubleExpo$55:	; PopFloat value
x8794:	fstp qword [bp + 6]	; 3: 221 94 6

printLongDoubleExpo$56:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$57:	; PushFloat value
x8797:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleExpo$58:	; Parameter 26 value 6
x8800:	fstp qword [bp + 32]	; 3: 221 94 32

printLongDoubleExpo$59:	; Parameter 26 plus 14
x8803:	mov ax, [bp + 14]	; 3: 139 70 14
x8806:	mov [bp + 40], ax	; 3: 137 70 40

printLongDoubleExpo$60:	; Parameter 26 space 16
x8809:	mov ax, [bp + 16]	; 3: 139 70 16
x8812:	mov [bp + 42], ax	; 3: 137 70 42

printLongDoubleExpo$61:	; Parameter 26 grid 18
x8815:	mov ax, [bp + 18]	; 3: 139 70 18
x8818:	mov [bp + 44], ax	; 3: 137 70 44

printLongDoubleExpo$62:	; Parameter 26 precision 20
x8821:	mov ax, [bp + 20]	; 3: 139 70 20
x8824:	mov [bp + 46], ax	; 3: 137 70 46

printLongDoubleExpo$63:	; Call 26 printLongDoublePlain 0
x8827:	mov word [bp + 26], printLongDoubleExpo$64	; 5: 199 70 26 137 34
x8832:	mov [bp + 28], bp	; 3: 137 110 28
x8835:	add bp, 26	; 3: 131 197 26
x8838:	jmp printLongDoublePlain	; 3: 233 233 252

printLongDoubleExpo$64:	; PostCall 26

printLongDoubleExpo$65:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$66:	; Equal 69 capital 0
x8841:	cmp word [bp + 22], 0	; 4: 131 126 22 0
x8845:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; Assign £temporary1953 69
x8847:	mov al, 69	; 2: 176 69

printLongDoubleExpo$68:	; Goto 70
x8849:	jmp printLongDoubleExpo$70	; 2: 235 2

printLongDoubleExpo$69:	; Assign £temporary1953 101
x8851:	mov al, 101	; 2: 176 101

printLongDoubleExpo$70:	; Parameter 26 £temporary1953 6
x8853:	mov [bp + 32], al	; 3: 136 70 32

printLongDoubleExpo$71:	; Call 26 printChar 0
x8856:	mov word [bp + 26], printLongDoubleExpo$72	; 5: 199 70 26 166 34
x8861:	mov [bp + 28], bp	; 3: 137 110 28
x8864:	add bp, 26	; 3: 131 197 26
x8867:	jmp printChar	; 3: 233 108 245

printLongDoubleExpo$72:	; PostCall 26

printLongDoubleExpo$73:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$74:	; IntegralToIntegral £temporary1955 expo
x8870:	mov ax, [bp + 24]	; 3: 139 70 24
x8873:	and eax, 65535	; 6: 102 37 255 255 0 0
x8879:	cmp ax, 0	; 3: 131 248 0
x8882:	jge printLongDoubleExpo$75	; 2: 125 5
x8884:	neg ax	; 2: 247 216
x8886:	neg eax	; 3: 102 247 216

printLongDoubleExpo$75:	; Parameter 26 £temporary1955 6
x8889:	mov [bp + 32], eax	; 4: 102 137 70 32

printLongDoubleExpo$76:	; Parameter 26 1 10
x8893:	mov word [bp + 36], 1	; 5: 199 70 36 1 0

printLongDoubleExpo$77:	; Parameter 26 0 12
x8898:	mov word [bp + 38], 0	; 5: 199 70 38 0 0

printLongDoubleExpo$78:	; Call 26 printLongInt 0
x8903:	mov word [bp + 26], printLongDoubleExpo$79	; 5: 199 70 26 213 34
x8908:	mov [bp + 28], bp	; 3: 137 110 28
x8911:	add bp, 26	; 3: 131 197 26
x8914:	jmp printLongInt	; 3: 233 169 244

printLongDoubleExpo$79:	; PostCall 26

printLongDoubleExpo$80:	; Return 0
x8917:	mov ax, [bp]	; 3: 139 70 0
x8920:	mov di, [bp + 4]	; 3: 139 126 4
x8923:	mov bp, [bp + 2]	; 3: 139 110 2
x8926:	jmp ax	; 2: 255 224

printLongDoubleExpo$81:	; FunctionEnd printLongDoubleExpo

log10:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

log10$1:	; PushFloat x
x8928:	fld qword [bp + 6]	; 3: 221 70 6

log10$2:	; Parameter 14 x 6
x8931:	fstp qword [bp + 20]	; 3: 221 94 20

log10$3:	; Call 14 log 0
x8934:	mov word [bp + 14], log10$4	; 5: 199 70 14 244 34
x8939:	mov [bp + 16], bp	; 3: 137 110 16
x8942:	add bp, 14	; 3: 131 197 14
x8945:	nop	; 1: 144
x8946:	jmp log	; 2: 235 25

log10$4:	; PostCall 14

log10$5:	; GetReturnValue £temporary552

log10$6:	; PushFloat 2.30
x8948:	fld qword [float8$2.30#]	; 4: 221 6 5 35

log10$7:	; SignedDivide £temporary553 £temporary552 2.30
x8952:	fdiv	; 2: 222 249

log10$8:	; SetReturnValue £temporary553

log10$9:	; Return £temporary553
x8954:	mov ax, [bp]	; 3: 139 70 0
x8957:	mov di, [bp + 4]	; 3: 139 126 4
x8960:	mov bp, [bp + 2]	; 3: 139 110 2
x8963:	jmp ax	; 2: 255 224

log10$10:	; FunctionEnd log10

float8$2.30#:
x8965:	dq 2.30	; 8: 102 102 102 102 102 102 2 64

log:	; PushFloat x
x8973:	fld qword [bp + 6]	; 3: 221 70 6

log$1:	; PushZero
x8976:	fldz	; 2: 217 238

log$2:	; SignedLessThanEqual 76 x 0
x8978:	fcompp	; 2: 222 217
x8980:	fstsw ax	; 3: 155 223 224
x8983:	sahf	; 1: 158
x8984:	jae log$76	; 4: 15 131 238 0

log$3:	; Assign n 0
x8988:	mov word [bp + 14], 0	; 5: 199 70 14 0 0

log$4:	; PushFloat x
x8993:	fld qword [bp + 6]	; 3: 221 70 6

log$5:	; PushOne
x8996:	fld1	; 2: 217 232

log$6:	; SignedLessThanEqual 16 x 1
x8998:	fcompp	; 2: 222 217
x9000:	fstsw ax	; 3: 155 223 224
x9003:	sahf	; 1: 158
x9004:	jae log$16	; 2: 115 30

log$7:	; PushFloat x
x9006:	fld qword [bp + 6]	; 3: 221 70 6

log$8:	; PushOne
x9009:	fld1	; 2: 217 232

log$9:	; SignedLessThanEqual 28 x 1
x9011:	fcompp	; 2: 222 217
x9013:	fstsw ax	; 3: 155 223 224
x9016:	sahf	; 1: 158
x9017:	jae log$28	; 2: 115 64

log$10:	; PushFloat x
x9019:	fld qword [bp + 6]	; 3: 221 70 6

log$11:	; PushFloat 2.71
x9022:	fld qword [float8$2.71#]	; 4: 221 6 29 36

log$12:	; SignedDivide £temporary534 x 2.71
x9026:	fdiv	; 2: 222 249

log$13:	; PopFloat x
x9028:	fstp qword [bp + 6]	; 3: 221 94 6

log$14:	; Increment n
x9031:	inc word [bp + 14]	; 3: 255 70 14

log$15:	; Goto 7
x9034:	jmp log$7	; 2: 235 226

log$16:	; PushFloat x
x9036:	fld qword [bp + 6]	; 3: 221 70 6

log$17:	; PushFloat 0.3690036900369003690036900369
x9039:	fld qword [float8$0.3690036900369003690036900369#]	; 4: 221 6 37 36

log$18:	; SignedGreaterThanEqual 28 x 0.3690036900369003690036900369
x9043:	fcompp	; 2: 222 217
x9045:	fstsw ax	; 3: 155 223 224
x9048:	sahf	; 1: 158
x9049:	jbe log$28	; 2: 118 32

log$19:	; PushFloat x
x9051:	fld qword [bp + 6]	; 3: 221 70 6

log$20:	; PushFloat 0.3690036900369003690036900369
x9054:	fld qword [float8$0.3690036900369003690036900369#]	; 4: 221 6 37 36

log$21:	; SignedGreaterThanEqual 28 x 0.3690036900369003690036900369
x9058:	fcompp	; 2: 222 217
x9060:	fstsw ax	; 3: 155 223 224
x9063:	sahf	; 1: 158
x9064:	jbe log$28	; 2: 118 17

log$22:	; PushFloat x
x9066:	fld qword [bp + 6]	; 3: 221 70 6

log$23:	; PushFloat 2.71
x9069:	fld qword [float8$2.71#]	; 4: 221 6 29 36

log$24:	; SignedMultiply £temporary538 x 2.71
x9073:	fmul	; 2: 222 201

log$25:	; PopFloat x
x9075:	fstp qword [bp + 6]	; 3: 221 94 6

log$26:	; Decrement n
x9078:	dec word [bp + 14]	; 3: 255 78 14

log$27:	; Goto 19
x9081:	jmp log$19	; 2: 235 224

log$28:	; PushOne
x9083:	fld1	; 2: 217 232

log$29:	; PopFloat index
x9085:	fstp qword [bp + 16]	; 3: 221 94 16

log$30:	; PushZero
x9088:	fldz	; 2: 217 238

log$31:	; PopFloat sum
x9090:	fstp qword [bp + 32]	; 3: 221 94 32

log$32:	; PushOne
x9093:	fld1	; 2: 217 232

log$33:	; PopFloat sign
x9095:	fstp qword [bp + 40]	; 3: 221 94 40

log$34:	; PushFloat x
x9098:	fld qword [bp + 6]	; 3: 221 70 6

log$35:	; PushOne
x9101:	fld1	; 2: 217 232

log$36:	; BinarySubtract £temporary540 x 1
x9103:	fsub	; 2: 222 233

log$37:	; PopFloat x_minus_1
x9105:	fstp qword [bp + 48]	; 3: 221 94 48

log$38:	; PushFloat x_minus_1
x9108:	fld qword [bp + 48]	; 3: 221 70 48

log$39:	; PopFloat power
x9111:	fstp qword [bp + 56]	; 3: 221 94 56

log$40:	; PushFloat sign
x9114:	fld qword [bp + 40]	; 3: 221 70 40

log$41:	; PushFloat power
x9117:	fld qword [bp + 56]	; 3: 221 70 56

log$42:	; SignedMultiply £temporary541 sign power
x9120:	fmul	; 2: 222 201

log$43:	; PushFloat index
x9122:	fld qword [bp + 16]	; 3: 221 70 16

log$44:	; PushOne
x9125:	fld1	; 2: 217 232

log$45:	; BinaryAdd index index 1
x9127:	fadd	; 2: 222 193

log$46:	; TopFloat index
x9129:	fst qword [bp + 16]	; 3: 221 86 16

log$47:	; PushOne
x9132:	fld1	; 2: 217 232

log$48:	; BinarySubtract index index 1
x9134:	fsub	; 2: 222 233

log$49:	; SignedDivide £temporary543 £temporary541 £temporary542
x9136:	fdiv	; 2: 222 249

log$50:	; PopFloat term
x9138:	fstp qword [bp + 24]	; 3: 221 94 24

log$51:	; PushFloat sum
x9141:	fld qword [bp + 32]	; 3: 221 70 32

log$52:	; PushFloat term
x9144:	fld qword [bp + 24]	; 3: 221 70 24

log$53:	; BinaryAdd £temporary544 sum term
x9147:	fadd	; 2: 222 193

log$54:	; PopFloat sum
x9149:	fstp qword [bp + 32]	; 3: 221 94 32

log$55:	; PushFloat power
x9152:	fld qword [bp + 56]	; 3: 221 70 56

log$56:	; PushFloat x_minus_1
x9155:	fld qword [bp + 48]	; 3: 221 70 48

log$57:	; SignedMultiply £temporary545 power x_minus_1
x9158:	fmul	; 2: 222 201

log$58:	; PopFloat power
x9160:	fstp qword [bp + 56]	; 3: 221 94 56

log$59:	; PushFloat sign
x9163:	fld qword [bp + 40]	; 3: 221 70 40

log$60:	; PushFloat -1.0
x9166:	fld qword [float8$minus1.0#]	; 4: 221 6 45 36

log$61:	; SignedMultiply £temporary546 sign -1.0
x9170:	fmul	; 2: 222 201

log$62:	; PopFloat sign
x9172:	fstp qword [bp + 40]	; 3: 221 94 40

log$63:	; CallHeader 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

log$64:	; PushFloat term
x9175:	fld qword [bp + 24]	; 3: 221 70 24

log$65:	; Parameter 64 term 6
x9178:	fstp qword [bp + 70]	; 3: 221 94 70

log$66:	; Call 64 fabs 0
x9181:	mov word [bp + 64], log$67	; 5: 199 70 64 235 35
x9186:	mov [bp + 66], bp	; 3: 137 110 66
x9189:	add bp, 64	; 3: 131 197 64
x9192:	jmp fabs	; 3: 233 203 252

log$67:	; PostCall 64

log$68:	; GetReturnValue £temporary547

log$69:	; PushFloat 0.000000001
x9195:	fld qword [float8$0.000000001#]	; 4: 221 6 53 36

log$70:	; SignedGreaterThanEqual 40 £temporary547 0.000000001
x9199:	fcompp	; 2: 222 217
x9201:	fstsw ax	; 3: 155 223 224
x9204:	sahf	; 1: 158
x9205:	jbe log$40	; 2: 118 163

log$71:	; PushFloat sum
x9207:	fld qword [bp + 32]	; 3: 221 70 32

log$72:	; IntegralToFloating £temporary549 n
x9210:	fild word [bp + 14]	; 3: 223 70 14

log$73:	; BinaryAdd £temporary550 sum £temporary549
x9213:	fadd	; 2: 222 193

log$74:	; SetReturnValue £temporary550

log$75:	; Return £temporary550
x9215:	mov ax, [bp]	; 3: 139 70 0
x9218:	mov di, [bp + 4]	; 3: 139 126 4
x9221:	mov bp, [bp + 2]	; 3: 139 110 2
x9224:	jmp ax	; 2: 255 224

log$76:	; Assign errno 6
x9226:	mov word [errno], 6	; 6: 199 6 50 10 6 0

log$77:	; PushZero
x9232:	fldz	; 2: 217 238

log$78:	; SetReturnValue 0

log$79:	; Return 0
x9234:	mov ax, [bp]	; 3: 139 70 0
x9237:	mov di, [bp + 4]	; 3: 139 126 4
x9240:	mov bp, [bp + 2]	; 3: 139 110 2
x9243:	jmp ax	; 2: 255 224

log$80:	; FunctionEnd log

float8$2.71#:
x9245:	dq 2.71	; 8: 174 71 225 122 20 174 5 64

float8$0.3690036900369003690036900369#:
x9253:	dq 0.3690036900369003690036900369	; 8: 170 244 51 167 193 157 215 63

float8$minus1.0#:
x9261:	dq -1.0	; 8: 0 0 0 0 0 0 240 191

float8$0.000000001#:
x9269:	dq 0.000000001	; 8: 149 214 38 232 11 46 17 62

pow:	; PushFloat x
x9277:	fld qword [bp + 6]	; 3: 221 70 6

pow$1:	; PushZero
x9280:	fldz	; 2: 217 238

pow$2:	; SignedLessThanEqual 18 x 0
x9282:	fcompp	; 2: 222 217
x9284:	fstsw ax	; 3: 155 223 224
x9287:	sahf	; 1: 158
x9288:	jae pow$18	; 2: 115 65

pow$3:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

pow$4:	; PushFloat y
x9290:	fld qword [bp + 14]	; 3: 221 70 14

pow$5:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x9293:	fstp qword [bp + 22]	; 3: 221 94 22

pow$6:	; PushFloat x
x9296:	fld qword [bp + 6]	; 3: 221 70 6

pow$7:	; Parameter 22 x 6
x9299:	fstp qword [bp + 36]	; 3: 221 94 36

pow$8:	; Call 22 log 0
x9302:	mov word [bp + 30], pow$9	; 5: 199 70 30 100 36
x9307:	mov [bp + 32], bp	; 3: 137 110 32
x9310:	add bp, 30	; 3: 131 197 30
x9313:	jmp log	; 3: 233 169 254

pow$9:	; PostCall 22
x9316:	fstp qword [bp + 30]	; 3: 221 94 30
x9319:	fld qword [bp + 22]	; 3: 221 70 22
x9322:	fld qword [bp + 30]	; 3: 221 70 30

pow$10:	; GetReturnValue £temporary556

pow$11:	; SignedMultiply £temporary557 y £temporary556
x9325:	fmul	; 2: 222 201

pow$12:	; Parameter 22 £temporary557 6
x9327:	fstp qword [bp + 28]	; 3: 221 94 28

pow$13:	; Call 22 exp 0
x9330:	mov word [bp + 22], pow$14	; 5: 199 70 22 128 36
x9335:	mov [bp + 24], bp	; 3: 137 110 24
x9338:	add bp, 22	; 3: 131 197 22
x9341:	jmp exp	; 3: 233 102 1

pow$14:	; PostCall 22

pow$15:	; GetReturnValue £temporary558

pow$16:	; SetReturnValue £temporary558

pow$17:	; Return £temporary558
x9344:	mov ax, [bp]	; 3: 139 70 0
x9347:	mov di, [bp + 4]	; 3: 139 126 4
x9350:	mov bp, [bp + 2]	; 3: 139 110 2
x9353:	jmp ax	; 2: 255 224

pow$18:	; PushFloat x
x9355:	fld qword [bp + 6]	; 3: 221 70 6

pow$19:	; PushZero
x9358:	fldz	; 2: 217 238

pow$20:	; NotEqual 27 x 0
x9360:	fcompp	; 2: 222 217
x9362:	fstsw ax	; 3: 155 223 224
x9365:	sahf	; 1: 158
x9366:	jne pow$27	; 2: 117 26

pow$21:	; PushFloat y
x9368:	fld qword [bp + 14]	; 3: 221 70 14

pow$22:	; PushZero
x9371:	fldz	; 2: 217 238

pow$23:	; NotEqual 27 y 0
x9373:	fcompp	; 2: 222 217
x9375:	fstsw ax	; 3: 155 223 224
x9378:	sahf	; 1: 158
x9379:	jne pow$27	; 2: 117 13

pow$24:	; PushOne
x9381:	fld1	; 2: 217 232

pow$25:	; SetReturnValue 1

pow$26:	; Return 1
x9383:	mov ax, [bp]	; 3: 139 70 0
x9386:	mov di, [bp + 4]	; 3: 139 126 4
x9389:	mov bp, [bp + 2]	; 3: 139 110 2
x9392:	jmp ax	; 2: 255 224

pow$27:	; PushFloat x
x9394:	fld qword [bp + 6]	; 3: 221 70 6

pow$28:	; PushZero
x9397:	fldz	; 2: 217 238

pow$29:	; NotEqual 36 x 0
x9399:	fcompp	; 2: 222 217
x9401:	fstsw ax	; 3: 155 223 224
x9404:	sahf	; 1: 158
x9405:	jne pow$36	; 2: 117 26

pow$30:	; PushFloat y
x9407:	fld qword [bp + 14]	; 3: 221 70 14

pow$31:	; PushZero
x9410:	fldz	; 2: 217 238

pow$32:	; SignedLessThanEqual 36 y 0
x9412:	fcompp	; 2: 222 217
x9414:	fstsw ax	; 3: 155 223 224
x9417:	sahf	; 1: 158
x9418:	jae pow$36	; 2: 115 13

pow$33:	; PushZero
x9420:	fldz	; 2: 217 238

pow$34:	; SetReturnValue 0

pow$35:	; Return 0
x9422:	mov ax, [bp]	; 3: 139 70 0
x9425:	mov di, [bp + 4]	; 3: 139 126 4
x9428:	mov bp, [bp + 2]	; 3: 139 110 2
x9431:	jmp ax	; 2: 255 224

pow$36:	; PushFloat x
x9433:	fld qword [bp + 6]	; 3: 221 70 6

pow$37:	; PushZero
x9436:	fldz	; 2: 217 238

pow$38:	; SignedGreaterThanEqual 90 x 0
x9438:	fcompp	; 2: 222 217
x9440:	fstsw ax	; 3: 155 223 224
x9443:	sahf	; 1: 158
x9444:	jbe pow$90	; 4: 15 134 231 0

pow$39:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

pow$40:	; PushFloat y
x9448:	fld qword [bp + 14]	; 3: 221 70 14

pow$41:	; Parameter 22 y 6
x9451:	fstp qword [bp + 28]	; 3: 221 94 28

pow$42:	; Call 22 floor 0
x9454:	mov word [bp + 22], pow$43	; 5: 199 70 22 252 36
x9459:	mov [bp + 24], bp	; 3: 137 110 24
x9462:	add bp, 22	; 3: 131 197 22
x9465:	jmp floor	; 3: 233 96 1

pow$43:	; PostCall 22

pow$44:	; GetReturnValue £temporary566

pow$45:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x9468:	fstp qword [bp + 22]	; 3: 221 94 22

pow$46:	; PushFloat y
x9471:	fld qword [bp + 14]	; 3: 221 70 14

pow$47:	; Parameter 22 y 6
x9474:	fstp qword [bp + 36]	; 3: 221 94 36

pow$48:	; Call 22 ceil 0
x9477:	mov word [bp + 30], pow$49	; 5: 199 70 30 19 37
x9482:	mov [bp + 32], bp	; 3: 137 110 32
x9485:	add bp, 30	; 3: 131 197 30
x9488:	jmp ceil	; 3: 233 151 1

pow$49:	; PostCall 22
x9491:	fstp qword [bp + 30]	; 3: 221 94 30
x9494:	fld qword [bp + 22]	; 3: 221 70 22
x9497:	fld qword [bp + 30]	; 3: 221 70 30

pow$50:	; GetReturnValue £temporary567

pow$51:	; NotEqual 90 £temporary566 £temporary567
x9500:	fcompp	; 2: 222 217
x9502:	fstsw ax	; 3: 155 223 224
x9505:	sahf	; 1: 158
x9506:	jne pow$90	; 4: 15 133 169 0

pow$52:	; PushFloat y
x9510:	fld qword [bp + 14]	; 3: 221 70 14

pow$53:	; FloatingToIntegral £temporary570 y
x9513:	fistp dword [container4bytes#]	; 4: 219 30 10 32
x9517:	mov eax, [container4bytes#]	; 4: 102 161 10 32

pow$54:	; Assign long_y £temporary570
x9521:	mov [bp + 22], eax	; 4: 102 137 70 22

pow$55:	; SignedModulo £temporary571 long_y 2
x9525:	mov eax, [bp + 22]	; 4: 102 139 70 22
x9529:	xor edx, edx	; 3: 102 49 210
x9532:	idiv dword [int4$2#]	; 5: 102 247 62 226 37

pow$56:	; NotEqual 73 £temporary571 0
x9537:	cmp edx, 0	; 4: 102 131 250 0
x9541:	jne pow$73	; 2: 117 67

pow$57:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

pow$58:	; PushFloat y
x9543:	fld qword [bp + 14]	; 3: 221 70 14

pow$59:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x9546:	fstp qword [bp + 26]	; 3: 221 94 26

pow$60:	; PushFloat x
x9549:	fld qword [bp + 6]	; 3: 221 70 6

pow$61:	; UnarySubtract £temporary573 x
x9552:	fchs	; 2: 217 224

pow$62:	; Parameter 26 £temporary573 6
x9554:	fstp qword [bp + 40]	; 3: 221 94 40

pow$63:	; Call 26 log 0
x9557:	mov word [bp + 34], pow$64	; 5: 199 70 34 99 37
x9562:	mov [bp + 36], bp	; 3: 137 110 36
x9565:	add bp, 34	; 3: 131 197 34
x9568:	jmp log	; 3: 233 170 253

pow$64:	; PostCall 26
x9571:	fstp qword [bp + 34]	; 3: 221 94 34
x9574:	fld qword [bp + 26]	; 3: 221 70 26
x9577:	fld qword [bp + 34]	; 3: 221 70 34

pow$65:	; GetReturnValue £temporary574

pow$66:	; SignedMultiply £temporary575 y £temporary574
x9580:	fmul	; 2: 222 201

pow$67:	; Parameter 26 £temporary575 6
x9582:	fstp qword [bp + 32]	; 3: 221 94 32

pow$68:	; Call 26 exp 0
x9585:	mov word [bp + 26], pow$69	; 5: 199 70 26 127 37
x9590:	mov [bp + 28], bp	; 3: 137 110 28
x9593:	add bp, 26	; 3: 131 197 26
x9596:	nop	; 1: 144
x9597:	jmp exp	; 2: 235 103

pow$69:	; PostCall 26

pow$70:	; GetReturnValue £temporary576

pow$71:	; SetReturnValue £temporary576

pow$72:	; Return £temporary576
x9599:	mov ax, [bp]	; 3: 139 70 0
x9602:	mov di, [bp + 4]	; 3: 139 126 4
x9605:	mov bp, [bp + 2]	; 3: 139 110 2
x9608:	jmp ax	; 2: 255 224

pow$73:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

pow$74:	; PushFloat y
x9610:	fld qword [bp + 14]	; 3: 221 70 14

pow$75:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x9613:	fstp qword [bp + 26]	; 3: 221 94 26

pow$76:	; PushFloat x
x9616:	fld qword [bp + 6]	; 3: 221 70 6

pow$77:	; UnarySubtract £temporary577 x
x9619:	fchs	; 2: 217 224

pow$78:	; Parameter 26 £temporary577 6
x9621:	fstp qword [bp + 40]	; 3: 221 94 40

pow$79:	; Call 26 log 0
x9624:	mov word [bp + 34], pow$80	; 5: 199 70 34 166 37
x9629:	mov [bp + 36], bp	; 3: 137 110 36
x9632:	add bp, 34	; 3: 131 197 34
x9635:	jmp log	; 3: 233 103 253

pow$80:	; PostCall 26
x9638:	fstp qword [bp + 34]	; 3: 221 94 34
x9641:	fld qword [bp + 26]	; 3: 221 70 26
x9644:	fld qword [bp + 34]	; 3: 221 70 34

pow$81:	; GetReturnValue £temporary578

pow$82:	; SignedMultiply £temporary579 y £temporary578
x9647:	fmul	; 2: 222 201

pow$83:	; Parameter 26 £temporary579 6
x9649:	fstp qword [bp + 32]	; 3: 221 94 32

pow$84:	; Call 26 exp 0
x9652:	mov word [bp + 26], pow$85	; 5: 199 70 26 194 37
x9657:	mov [bp + 28], bp	; 3: 137 110 28
x9660:	add bp, 26	; 3: 131 197 26
x9663:	nop	; 1: 144
x9664:	jmp exp	; 2: 235 36

pow$85:	; PostCall 26

pow$86:	; GetReturnValue £temporary580

pow$87:	; UnarySubtract £temporary581 £temporary580
x9666:	fchs	; 2: 217 224

pow$88:	; SetReturnValue £temporary581

pow$89:	; Return £temporary581
x9668:	mov ax, [bp]	; 3: 139 70 0
x9671:	mov di, [bp + 4]	; 3: 139 126 4
x9674:	mov bp, [bp + 2]	; 3: 139 110 2
x9677:	jmp ax	; 2: 255 224

pow$90:	; Assign errno 6
x9679:	mov word [errno], 6	; 6: 199 6 50 10 6 0

pow$91:	; PushZero
x9685:	fldz	; 2: 217 238

pow$92:	; SetReturnValue 0

pow$93:	; Return 0
x9687:	mov ax, [bp]	; 3: 139 70 0
x9690:	mov di, [bp + 4]	; 3: 139 126 4
x9693:	mov bp, [bp + 2]	; 3: 139 110 2
x9696:	jmp ax	; 2: 255 224

pow$94:	; FunctionEnd pow

int4$2#:
x9698:	dd 2	; 4: 2 0 0 0

exp:	; PushOne
x9702:	fld1	; 2: 217 232

exp$1:	; PopFloat index
x9704:	fstp qword [bp + 14]	; 3: 221 94 14

exp$2:	; PushOne
x9707:	fld1	; 2: 217 232

exp$3:	; PopFloat sum
x9709:	fstp qword [bp + 30]	; 3: 221 94 30

exp$4:	; PushOne
x9712:	fld1	; 2: 217 232

exp$5:	; PopFloat faculty
x9714:	fstp qword [bp + 38]	; 3: 221 94 38

exp$6:	; PushFloat x
x9717:	fld qword [bp + 6]	; 3: 221 70 6

exp$7:	; PopFloat power
x9720:	fstp qword [bp + 46]	; 3: 221 94 46

exp$8:	; PushFloat power
x9723:	fld qword [bp + 46]	; 3: 221 70 46

exp$9:	; PushFloat faculty
x9726:	fld qword [bp + 38]	; 3: 221 70 38

exp$10:	; SignedDivide £temporary523 power faculty
x9729:	fdiv	; 2: 222 249

exp$11:	; PopFloat term
x9731:	fstp qword [bp + 22]	; 3: 221 94 22

exp$12:	; PushFloat sum
x9734:	fld qword [bp + 30]	; 3: 221 70 30

exp$13:	; PushFloat term
x9737:	fld qword [bp + 22]	; 3: 221 70 22

exp$14:	; BinaryAdd £temporary524 sum term
x9740:	fadd	; 2: 222 193

exp$15:	; PopFloat sum
x9742:	fstp qword [bp + 30]	; 3: 221 94 30

exp$16:	; PushFloat power
x9745:	fld qword [bp + 46]	; 3: 221 70 46

exp$17:	; PushFloat x
x9748:	fld qword [bp + 6]	; 3: 221 70 6

exp$18:	; SignedMultiply £temporary525 power x
x9751:	fmul	; 2: 222 201

exp$19:	; PopFloat power
x9753:	fstp qword [bp + 46]	; 3: 221 94 46

exp$20:	; PushFloat faculty
x9756:	fld qword [bp + 38]	; 3: 221 70 38

exp$21:	; PushFloat index
x9759:	fld qword [bp + 14]	; 3: 221 70 14

exp$22:	; PushOne
x9762:	fld1	; 2: 217 232

exp$23:	; BinaryAdd index index 1
x9764:	fadd	; 2: 222 193

exp$24:	; TopFloat index
x9766:	fst qword [bp + 14]	; 3: 221 86 14

exp$25:	; SignedMultiply £temporary527 faculty £temporary526
x9769:	fmul	; 2: 222 201

exp$26:	; PopFloat faculty
x9771:	fstp qword [bp + 38]	; 3: 221 94 38

exp$27:	; CallHeader 54 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

exp$28:	; PushFloat term
x9774:	fld qword [bp + 22]	; 3: 221 70 22

exp$29:	; Parameter 54 term 6
x9777:	fstp qword [bp + 60]	; 3: 221 94 60

exp$30:	; Call 54 fabs 0
x9780:	mov word [bp + 54], exp$31	; 5: 199 70 54 66 38
x9785:	mov [bp + 56], bp	; 3: 137 110 56
x9788:	add bp, 54	; 3: 131 197 54
x9791:	jmp fabs	; 3: 233 116 250

exp$31:	; PostCall 54

exp$32:	; GetReturnValue £temporary528

exp$33:	; PushFloat 0.000000001
x9794:	fld qword [float8$0.000000001#]	; 4: 221 6 53 36

exp$34:	; SignedGreaterThanEqual 8 £temporary528 0.000000001
x9798:	fcompp	; 2: 222 217
x9800:	fstsw ax	; 3: 155 223 224
x9803:	sahf	; 1: 158
x9804:	jbe exp$8	; 2: 118 173

exp$35:	; PushFloat sum
x9806:	fld qword [bp + 30]	; 3: 221 70 30

exp$36:	; SetReturnValue sum

exp$37:	; Return sum
x9809:	mov ax, [bp]	; 3: 139 70 0
x9812:	mov di, [bp + 4]	; 3: 139 126 4
x9815:	mov bp, [bp + 2]	; 3: 139 110 2
x9818:	jmp ax	; 2: 255 224

exp$38:	; FunctionEnd exp

floor:	; PushFloat x
x9820:	fld qword [bp + 6]	; 3: 221 70 6

floor$1:	; PushZero
x9823:	fldz	; 2: 217 238

floor$2:	; SignedGreaterThanEqual 13 x 0
x9825:	fcompp	; 2: 222 217
x9827:	fstsw ax	; 3: 155 223 224
x9830:	sahf	; 1: 158
x9831:	jbe floor$13	; 2: 118 35

floor$3:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

floor$4:	; PushFloat x
x9833:	fld qword [bp + 6]	; 3: 221 70 6

floor$5:	; UnarySubtract £temporary807 x
x9836:	fchs	; 2: 217 224

floor$6:	; Parameter 14 £temporary807 6
x9838:	fstp qword [bp + 20]	; 3: 221 94 20

floor$7:	; Call 14 ceil 0
x9841:	mov word [bp + 14], floor$8	; 5: 199 70 14 127 38
x9846:	mov [bp + 16], bp	; 3: 137 110 16
x9849:	add bp, 14	; 3: 131 197 14
x9852:	nop	; 1: 144
x9853:	jmp ceil	; 2: 235 43

floor$8:	; PostCall 14

floor$9:	; GetReturnValue £temporary808

floor$10:	; UnarySubtract £temporary809 £temporary808
x9855:	fchs	; 2: 217 224

floor$11:	; SetReturnValue £temporary809

floor$12:	; Return £temporary809
x9857:	mov ax, [bp]	; 3: 139 70 0
x9860:	mov di, [bp + 4]	; 3: 139 126 4
x9863:	mov bp, [bp + 2]	; 3: 139 110 2
x9866:	jmp ax	; 2: 255 224

floor$13:	; PushFloat x
x9868:	fld qword [bp + 6]	; 3: 221 70 6

floor$14:	; FloatingToIntegral £temporary810 x
x9871:	fistp dword [container4bytes#]	; 4: 219 30 10 32
x9875:	mov eax, [container4bytes#]	; 4: 102 161 10 32

floor$15:	; IntegralToFloating £temporary811 £temporary810
x9879:	mov [container4bytes#], eax	; 4: 102 163 10 32
x9883:	fild dword [container4bytes#]	; 4: 219 6 10 32

floor$16:	; SetReturnValue £temporary811

floor$17:	; Return £temporary811
x9887:	mov ax, [bp]	; 3: 139 70 0
x9890:	mov di, [bp + 4]	; 3: 139 126 4
x9893:	mov bp, [bp + 2]	; 3: 139 110 2
x9896:	jmp ax	; 2: 255 224

floor$18:	; FunctionEnd floor

ceil:	; PushFloat x
x9898:	fld qword [bp + 6]	; 3: 221 70 6

ceil$1:	; PushZero
x9901:	fldz	; 2: 217 238

ceil$2:	; SignedGreaterThanEqual 13 x 0
x9903:	fcompp	; 2: 222 217
x9905:	fstsw ax	; 3: 155 223 224
x9908:	sahf	; 1: 158
x9909:	jbe ceil$13	; 2: 118 35

ceil$3:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

ceil$4:	; PushFloat x
x9911:	fld qword [bp + 6]	; 3: 221 70 6

ceil$5:	; UnarySubtract £temporary814 x
x9914:	fchs	; 2: 217 224

ceil$6:	; Parameter 14 £temporary814 6
x9916:	fstp qword [bp + 20]	; 3: 221 94 20

ceil$7:	; Call 14 floor 0
x9919:	mov word [bp + 14], ceil$8	; 5: 199 70 14 205 38
x9924:	mov [bp + 16], bp	; 3: 137 110 16
x9927:	add bp, 14	; 3: 131 197 14
x9930:	nop	; 1: 144
x9931:	jmp floor	; 2: 235 143

ceil$8:	; PostCall 14

ceil$9:	; GetReturnValue £temporary815

ceil$10:	; UnarySubtract £temporary816 £temporary815
x9933:	fchs	; 2: 217 224

ceil$11:	; SetReturnValue £temporary816

ceil$12:	; Return £temporary816
x9935:	mov ax, [bp]	; 3: 139 70 0
x9938:	mov di, [bp + 4]	; 3: 139 126 4
x9941:	mov bp, [bp + 2]	; 3: 139 110 2
x9944:	jmp ax	; 2: 255 224

ceil$13:	; PushFloat x
x9946:	fld qword [bp + 6]	; 3: 221 70 6

ceil$14:	; PushFloat 0.999999999999
x9949:	fld qword [float8$0.999999999999#]	; 4: 221 6 254 38

ceil$15:	; BinaryAdd £temporary817 x 0.999999999999
x9953:	fadd	; 2: 222 193

ceil$16:	; FloatingToIntegral £temporary818 £temporary817
x9955:	fistp dword [container4bytes#]	; 4: 219 30 10 32
x9959:	mov eax, [container4bytes#]	; 4: 102 161 10 32

ceil$17:	; IntegralToFloating £temporary819 £temporary818
x9963:	mov [container4bytes#], eax	; 4: 102 163 10 32
x9967:	fild dword [container4bytes#]	; 4: 219 6 10 32

ceil$18:	; SetReturnValue £temporary819

ceil$19:	; Return £temporary819
x9971:	mov ax, [bp]	; 3: 139 70 0
x9974:	mov di, [bp + 4]	; 3: 139 126 4
x9977:	mov bp, [bp + 2]	; 3: 139 110 2
x9980:	jmp ax	; 2: 255 224

ceil$20:	; FunctionEnd ceil

float8$0.999999999999#:
x9982:	dq 0.999999999999	; 8: 209 220 255 255 255 255 239 63

isdigit:	; SignedLessThan 4 c 48
x9990:	cmp word [bp + 6], 48	; 4: 131 126 6 48
x9994:	jl isdigit$4	; 2: 124 11

isdigit$1:	; SignedGreaterThan 4 c 57
x9996:	cmp word [bp + 6], 57	; 4: 131 126 6 57
x10000:	jg isdigit$4	; 2: 127 5

isdigit$2:	; Assign £temporary408 1
x10002:	mov bx, 1	; 3: 187 1 0

isdigit$3:	; Goto 5
x10005:	jmp isdigit$5	; 2: 235 3

isdigit$4:	; Assign £temporary408 0
x10007:	mov bx, 0	; 3: 187 0 0

isdigit$5:	; SetReturnValue £temporary408

isdigit$6:	; Return £temporary408
x10010:	mov ax, [bp]	; 3: 139 70 0
x10013:	mov di, [bp + 4]	; 3: 139 126 4
x10016:	mov bp, [bp + 2]	; 3: 139 110 2
x10019:	jmp ax	; 2: 255 224

isdigit$7:	; FunctionEnd isdigit

fprintf:	; address £temporary2378 format
x10021:	mov si, bp	; 2: 137 238
x10023:	add si, 8	; 3: 131 198 8

fprintf$1:	; IntegralToIntegral £temporary2379 £temporary2378

fprintf$2:	; BinaryAdd arg_list £temporary2379 2
x10026:	add si, 2	; 3: 131 198 2
x10029:	mov [di + 10], si	; 3: 137 117 10

fprintf$3:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

fprintf$4:	; Parameter 12 outStream 6
x10032:	mov ax, [bp + 6]	; 3: 139 70 6
x10035:	mov [di + 18], ax	; 3: 137 69 18

fprintf$5:	; Parameter 12 format 8
x10038:	mov ax, [bp + 8]	; 3: 139 70 8
x10041:	mov [di + 20], ax	; 3: 137 69 20

fprintf$6:	; Parameter 12 arg_list 10
x10044:	mov ax, [di + 10]	; 3: 139 69 10
x10047:	mov [di + 22], ax	; 3: 137 69 22

fprintf$7:	; Call 12 vfprintf 0
x10050:	mov word [di + 12], fprintf$8	; 5: 199 69 12 85 39
x10055:	mov [di + 14], bp	; 3: 137 109 14
x10058:	mov [di + 16], di	; 3: 137 125 16
x10061:	add di, 12	; 3: 131 199 12
x10064:	mov bp, di	; 2: 137 253
x10066:	jmp vfprintf	; 3: 233 23 228

fprintf$8:	; PostCall 12

fprintf$9:	; GetReturnValue £temporary2381

fprintf$10:	; SetReturnValue £temporary2381

fprintf$11:	; Return £temporary2381
x10069:	mov ax, [bp]	; 3: 139 70 0
x10072:	mov di, [bp + 4]	; 3: 139 126 4
x10075:	mov bp, [bp + 2]	; 3: 139 110 2
x10078:	jmp ax	; 2: 255 224

fprintf$12:	; FunctionEnd fprintf

abort:	; AssignRegister ah 76
x10080:	mov ah, 76	; 2: 180 76

abort$1:	; AssignRegister al 255
x10082:	mov al, 255	; 2: 176 255

abort$2:	; Interrupt 33
x10084:	int 33	; 2: 205 33

abort$3:	; Return 0
x10086:	mov ax, [bp]	; 3: 139 70 0
x10089:	mov di, [bp + 4]	; 3: 139 126 4
x10092:	mov bp, [bp + 2]	; 3: 139 110 2
x10095:	jmp ax	; 2: 255 224

abort$4:	; FunctionEnd abort

fscanf:	; address £temporary1738 format
x10097:	mov si, bp	; 2: 137 238
x10099:	add si, 8	; 3: 131 198 8

fscanf$1:	; IntegralToIntegral £temporary1739 £temporary1738

fscanf$2:	; BinaryAdd arg_list £temporary1739 2
x10102:	add si, 2	; 3: 131 198 2
x10105:	mov [di + 10], si	; 3: 137 117 10

fscanf$3:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

fscanf$4:	; Parameter 12 inStream 6
x10108:	mov ax, [bp + 6]	; 3: 139 70 6
x10111:	mov [di + 18], ax	; 3: 137 69 18

fscanf$5:	; Parameter 12 format 8
x10114:	mov ax, [bp + 8]	; 3: 139 70 8
x10117:	mov [di + 20], ax	; 3: 137 69 20

fscanf$6:	; Parameter 12 arg_list 10
x10120:	mov ax, [di + 10]	; 3: 139 69 10
x10123:	mov [di + 22], ax	; 3: 137 69 22

fscanf$7:	; Call 12 vfscanf 0
x10126:	mov word [di + 12], fscanf$8	; 5: 199 69 12 161 39
x10131:	mov [di + 14], bp	; 3: 137 109 14
x10134:	mov [di + 16], di	; 3: 137 125 16
x10137:	add di, 12	; 3: 131 199 12
x10140:	mov bp, di	; 2: 137 253
x10142:	nop	; 1: 144
x10143:	jmp vfscanf	; 2: 235 11

fscanf$8:	; PostCall 12

fscanf$9:	; GetReturnValue £temporary1741

fscanf$10:	; SetReturnValue £temporary1741

fscanf$11:	; Return £temporary1741
x10145:	mov ax, [bp]	; 3: 139 70 0
x10148:	mov di, [bp + 4]	; 3: 139 126 4
x10151:	mov bp, [bp + 2]	; 3: 139 110 2
x10154:	jmp ax	; 2: 255 224

fscanf$12:	; FunctionEnd fscanf

vfscanf:	; Assign g_inStatus 0
x10156:	mov word [g_inStatus], 0	; 6: 199 6 221 39 0 0

vfscanf$1:	; IntegralToIntegral £temporary1746 inStream
x10162:	mov ax, [bp + 6]	; 3: 139 70 6

vfscanf$2:	; Assign g_inDevice £temporary1746
x10165:	mov [g_inDevice], ax	; 3: 163 223 39

vfscanf$3:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

vfscanf$4:	; Parameter 12 format 6
x10168:	mov ax, [bp + 8]	; 3: 139 70 8
x10171:	mov [bp + 18], ax	; 3: 137 70 18

vfscanf$5:	; Parameter 12 arg_list 8
x10174:	mov ax, [bp + 10]	; 3: 139 70 10
x10177:	mov [bp + 20], ax	; 3: 137 70 20

vfscanf$6:	; Call 12 scanFormat 0
x10180:	mov word [bp + 12], vfscanf$7	; 5: 199 70 12 210 39
x10185:	mov [bp + 14], bp	; 3: 137 110 14
x10188:	add bp, 12	; 3: 131 197 12
x10191:	nop	; 1: 144
x10192:	jmp scanFormat	; 2: 235 15

vfscanf$7:	; PostCall 12

vfscanf$8:	; GetReturnValue £temporary1747

vfscanf$9:	; SetReturnValue £temporary1747

vfscanf$10:	; Return £temporary1747
x10194:	mov ax, [bp]	; 3: 139 70 0
x10197:	mov di, [bp + 4]	; 3: 139 126 4
x10200:	mov bp, [bp + 2]	; 3: 139 110 2
x10203:	jmp ax	; 2: 255 224

vfscanf$11:	; FunctionEnd vfscanf

g_inStatus:
x10205:	db 0, 0	; 2: 0 0

g_inDevice:
x10207:	db 0, 0	; 2: 0 0

scanFormat:	; Assign percent 0
x10209:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$1:	; Assign shortInt 0
x10214:	mov word [bp + 15], 0	; 5: 199 70 15 0 0

scanFormat$2:	; Assign longIntOrDouble 0
x10219:	mov word [bp + 17], 0	; 5: 199 70 17 0 0

scanFormat$3:	; Assign longDouble 0
x10224:	mov word [bp + 19], 0	; 5: 199 70 19 0 0

scanFormat$4:	; Assign star 0
x10229:	mov word [bp + 21], 0	; 5: 199 70 21 0 0

scanFormat$5:	; Assign g_inCount 0
x10234:	mov word [g_inCount], 0	; 6: 199 6 1 45 0 0

scanFormat$6:	; Assign g_inChars 0
x10240:	mov word [g_inChars], 0	; 6: 199 6 3 45 0 0

scanFormat$7:	; Assign index 0
x10246:	mov word [bp + 31], 0	; 5: 199 70 31 0 0

scanFormat$8:	; BinaryAdd £temporary1536 format index
x10251:	mov si, [bp + 6]	; 3: 139 118 6
x10254:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$9:	; Deref £temporary1535 -> £temporary1536 £temporary1536 0

scanFormat$10:	; Equal 327 £temporary1535 -> £temporary1536 0
x10257:	cmp byte [si], 0	; 3: 128 60 0
x10260:	je scanFormat$327	; 4: 15 132 218 4

scanFormat$11:	; BinaryAdd £temporary1540 format index
x10264:	mov si, [bp + 6]	; 3: 139 118 6
x10267:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$12:	; Deref £temporary1539 -> £temporary1540 £temporary1540 0

scanFormat$13:	; Assign c £temporary1539 -> £temporary1540
x10270:	mov al, [si]	; 2: 138 4
x10272:	mov [bp + 10], al	; 3: 136 70 10

scanFormat$14:	; IntegralToIntegral £temporary1541 c
x10275:	mov al, [bp + 10]	; 3: 138 70 10
x10278:	and ax, 255	; 3: 37 255 0
x10281:	cmp al, 0	; 2: 60 0
x10283:	jge scanFormat$15	; 2: 125 4
x10285:	neg al	; 2: 246 216
x10287:	neg ax	; 2: 247 216

scanFormat$15:	; BinaryAdd d £temporary1541 1
x10289:	inc ax	; 1: 64
x10290:	mov [bp + 55], ax	; 3: 137 70 55

scanFormat$16:	; Equal 319 percent 0
x10293:	cmp word [bp + 13], 0	; 4: 131 126 13 0
x10297:	je scanFormat$319	; 4: 15 132 144 4

scanFormat$17:	; BinarySubtract £temporary1543 d 1
x10301:	mov ax, [bp + 55]	; 3: 139 70 55
x10304:	dec ax	; 1: 72

scanFormat$18:	; Case 36 £temporary1543 104
x10305:	cmp ax, 104	; 3: 131 248 104
x10308:	je scanFormat$36	; 2: 116 100

scanFormat$19:	; Case 38 £temporary1543 108
x10310:	cmp ax, 108	; 3: 131 248 108
x10313:	je scanFormat$38	; 2: 116 103

scanFormat$20:	; Case 40 £temporary1543 76
x10315:	cmp ax, 76	; 3: 131 248 76
x10318:	je scanFormat$40	; 2: 116 106

scanFormat$21:	; Case 42 £temporary1543 42
x10320:	cmp ax, 42	; 3: 131 248 42
x10323:	je scanFormat$42	; 2: 116 109

scanFormat$22:	; Case 44 £temporary1543 99
x10325:	cmp ax, 99	; 3: 131 248 99
x10328:	je scanFormat$44	; 2: 116 112

scanFormat$23:	; Case 62 £temporary1543 115
x10330:	cmp ax, 115	; 3: 131 248 115
x10333:	je scanFormat$62	; 4: 15 132 184 0

scanFormat$24:	; Case 81 £temporary1543 100
x10337:	cmp ax, 100	; 3: 131 248 100
x10340:	je scanFormat$81	; 4: 15 132 1 1

scanFormat$25:	; Case 81 £temporary1543 105
x10344:	cmp ax, 105	; 3: 131 248 105
x10347:	je scanFormat$81	; 4: 15 132 250 0

scanFormat$26:	; Case 117 £temporary1543 111
x10351:	cmp ax, 111	; 3: 131 248 111
x10354:	je scanFormat$117	; 4: 15 132 135 1

scanFormat$27:	; Case 153 £temporary1543 120
x10358:	cmp ax, 120	; 3: 131 248 120
x10361:	je scanFormat$153	; 4: 15 132 254 1

scanFormat$28:	; Case 189 £temporary1543 117
x10365:	cmp ax, 117	; 3: 131 248 117
x10368:	je scanFormat$189	; 4: 15 132 117 2

scanFormat$29:	; Case 225 £temporary1543 103
x10372:	cmp ax, 103	; 3: 131 248 103
x10375:	je scanFormat$225	; 4: 15 132 236 2

scanFormat$30:	; Case 225 £temporary1543 102
x10379:	cmp ax, 102	; 3: 131 248 102
x10382:	je scanFormat$225	; 4: 15 132 229 2

scanFormat$31:	; Case 225 £temporary1543 101
x10386:	cmp ax, 101	; 3: 131 248 101
x10389:	je scanFormat$225	; 4: 15 132 222 2

scanFormat$32:	; Case 261 £temporary1543 91
x10393:	cmp ax, 91	; 3: 131 248 91
x10396:	je scanFormat$261	; 4: 15 132 75 3

scanFormat$33:	; Case 303 £temporary1543 110
x10400:	cmp ax, 110	; 3: 131 248 110
x10403:	je scanFormat$303	; 4: 15 132 221 3

scanFormat$34:	; CaseEnd £temporary1543

scanFormat$35:	; Goto 312
x10407:	jmp scanFormat$312	; 3: 233 248 3

scanFormat$36:	; Assign shortInt 1
x10410:	mov word [bp + 15], 1	; 5: 199 70 15 1 0

scanFormat$37:	; Goto 325
x10415:	jmp scanFormat$325	; 3: 233 58 4

scanFormat$38:	; Assign longIntOrDouble 1
x10418:	mov word [bp + 17], 1	; 5: 199 70 17 1 0

scanFormat$39:	; Goto 325
x10423:	jmp scanFormat$325	; 3: 233 50 4

scanFormat$40:	; Assign longDouble 1
x10426:	mov word [bp + 19], 1	; 5: 199 70 19 1 0

scanFormat$41:	; Goto 325
x10431:	jmp scanFormat$325	; 3: 233 42 4

scanFormat$42:	; Assign star 1
x10434:	mov word [bp + 21], 1	; 5: 199 70 21 1 0

scanFormat$43:	; Goto 325
x10439:	jmp scanFormat$325	; 3: 233 34 4

scanFormat$44:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$45:	; Call 57 scanChar 0
x10442:	mov word [bp + 57], scanFormat$46	; 5: 199 70 57 216 40
x10447:	mov [bp + 59], bp	; 3: 137 110 59
x10450:	add bp, 57	; 3: 131 197 57
x10453:	jmp scanChar	; 3: 233 66 4

scanFormat$46:	; PostCall 57

scanFormat$47:	; GetReturnValue £temporary1544

scanFormat$48:	; Assign charValue £temporary1544
x10456:	mov [bp + 57], bl	; 3: 136 94 57

scanFormat$49:	; NotEqual 57 star 0
x10459:	cmp word [bp + 21], 0	; 4: 131 126 21 0
x10463:	jne scanFormat$57	; 2: 117 23

scanFormat$50:	; BinaryAdd arg_list arg_list 2
x10465:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$51:	; BinarySubtract £temporary1548 arg_list 2
x10469:	mov si, [bp + 8]	; 3: 139 118 8
x10472:	sub si, 2	; 3: 131 238 2

scanFormat$52:	; IntegralToIntegral £temporary1549 £temporary1548

scanFormat$53:	; Deref £temporary1550 -> £temporary1549 £temporary1549 0

scanFormat$54:	; Assign charPtr £temporary1550 -> £temporary1549
x10475:	mov ax, [si]	; 2: 139 4
x10477:	mov [bp + 11], ax	; 3: 137 70 11

scanFormat$55:	; Deref £temporary1551 -> charPtr charPtr 0
x10480:	mov si, [bp + 11]	; 3: 139 118 11

scanFormat$56:	; Assign £temporary1551 -> charPtr charValue
x10483:	mov al, [bp + 57]	; 3: 138 70 57
x10486:	mov [si], al	; 2: 136 4

scanFormat$57:	; Assign percent 0
x10488:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$58:	; IntegralToIntegral £temporary1552 charValue
x10493:	mov al, [bp + 57]	; 3: 138 70 57
x10496:	and ax, 255	; 3: 37 255 0
x10499:	cmp al, 0	; 2: 60 0
x10501:	jge scanFormat$59	; 2: 125 4
x10503:	neg al	; 2: 246 216
x10505:	neg ax	; 2: 247 216

scanFormat$59:	; Equal 325 £temporary1552 -1
x10507:	cmp ax, -1	; 3: 131 248 255
x10510:	je scanFormat$325	; 4: 15 132 218 3

scanFormat$60:	; Increment g_inCount
x10514:	inc word [g_inCount]	; 4: 255 6 1 45

scanFormat$61:	; Goto 325
x10518:	jmp scanFormat$325	; 3: 233 211 3

scanFormat$62:	; NotEqual 74 star 0
x10521:	cmp word [bp + 21], 0	; 4: 131 126 21 0
x10525:	jne scanFormat$74	; 2: 117 42

scanFormat$63:	; BinaryAdd arg_list arg_list 2
x10527:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$64:	; BinarySubtract £temporary1558 arg_list 2
x10531:	mov si, [bp + 8]	; 3: 139 118 8
x10534:	sub si, 2	; 3: 131 238 2

scanFormat$65:	; IntegralToIntegral £temporary1559 £temporary1558

scanFormat$66:	; Deref £temporary1560 -> £temporary1559 £temporary1559 0

scanFormat$67:	; Assign charPtr £temporary1560 -> £temporary1559
x10537:	mov ax, [si]	; 2: 139 4
x10539:	mov [bp + 11], ax	; 3: 137 70 11

scanFormat$68:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$69:	; Parameter 57 charPtr 6
x10542:	mov ax, [bp + 11]	; 3: 139 70 11
x10545:	mov [bp + 63], ax	; 3: 137 70 63

scanFormat$70:	; Parameter 57 0 8
x10548:	mov word [bp + 65], 0	; 5: 199 70 65 0 0

scanFormat$71:	; Call 57 scanString 0
x10553:	mov word [bp + 57], scanFormat$72	; 5: 199 70 57 71 41
x10558:	mov [bp + 59], bp	; 3: 137 110 59
x10561:	add bp, 57	; 3: 131 197 57
x10564:	jmp scanString	; 3: 233 66 4

scanFormat$72:	; PostCall 57

scanFormat$73:	; Goto 79
x10567:	jmp scanFormat$79	; 2: 235 24

scanFormat$74:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$75:	; Parameter 57 0 6
x10569:	mov word [bp + 63], 0	; 5: 199 70 63 0 0

scanFormat$76:	; Parameter 57 0 8
x10574:	mov word [bp + 65], 0	; 5: 199 70 65 0 0

scanFormat$77:	; Call 57 scanString 0
x10579:	mov word [bp + 57], scanFormat$78	; 5: 199 70 57 97 41
x10584:	mov [bp + 59], bp	; 3: 137 110 59
x10587:	add bp, 57	; 3: 131 197 57
x10590:	jmp scanString	; 3: 233 40 4

scanFormat$78:	; PostCall 57

scanFormat$79:	; Assign percent 0
x10593:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$80:	; Goto 325
x10598:	jmp scanFormat$325	; 3: 233 131 3

scanFormat$81:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$82:	; Parameter 57 10 6
x10601:	mov word [bp + 63], 10	; 5: 199 70 63 10 0

scanFormat$83:	; Call 57 scanLongInt 0
x10606:	mov word [bp + 57], scanFormat$84	; 5: 199 70 57 124 41
x10611:	mov [bp + 59], bp	; 3: 137 110 59
x10614:	add bp, 57	; 3: 131 197 57
x10617:	jmp scanLongInt	; 3: 233 145 6

scanFormat$84:	; PostCall 57

scanFormat$85:	; GetReturnValue £temporary1563

scanFormat$86:	; Assign longValue £temporary1563
x10620:	mov [bp + 23], ebx	; 4: 102 137 94 23

scanFormat$87:	; NotEqual 115 star 0
x10624:	cmp word [bp + 21], 0	; 4: 131 126 21 0
x10628:	jne scanFormat$115	; 2: 117 111

scanFormat$88:	; Equal 98 shortInt 0
x10630:	cmp word [bp + 15], 0	; 4: 131 126 15 0
x10634:	je scanFormat$98	; 2: 116 37

scanFormat$89:	; BinaryAdd arg_list arg_list 2
x10636:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$90:	; BinarySubtract £temporary1567 arg_list 2
x10640:	mov si, [bp + 8]	; 3: 139 118 8
x10643:	sub si, 2	; 3: 131 238 2

scanFormat$91:	; IntegralToIntegral £temporary1568 £temporary1567

scanFormat$92:	; Deref £temporary1569 -> £temporary1568 £temporary1568 0

scanFormat$93:	; Assign shortPtr £temporary1569 -> £temporary1568
x10646:	mov ax, [si]	; 2: 139 4
x10648:	mov [bp + 29], ax	; 3: 137 70 29

scanFormat$94:	; Deref £temporary1570 -> shortPtr shortPtr 0
x10651:	mov si, [bp + 29]	; 3: 139 118 29

scanFormat$95:	; IntegralToIntegral £temporary1571 longValue
x10654:	mov eax, [bp + 23]	; 4: 102 139 70 23
x10658:	cmp eax, 0	; 4: 102 131 248 0
x10662:	jge scanFormat$96	; 2: 125 5
x10664:	neg eax	; 3: 102 247 216
x10667:	neg al	; 2: 246 216

scanFormat$96:	; Assign £temporary1570 -> shortPtr £temporary1571
x10669:	mov [si], al	; 2: 136 4

scanFormat$97:	; Goto 115
x10671:	jmp scanFormat$115	; 2: 235 68

scanFormat$98:	; NotEqual 108 longIntOrDouble 0
x10673:	cmp word [bp + 17], 0	; 4: 131 126 17 0
x10677:	jne scanFormat$108	; 2: 117 37

scanFormat$99:	; BinaryAdd arg_list arg_list 2
x10679:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$100:	; BinarySubtract £temporary1575 arg_list 2
x10683:	mov si, [bp + 8]	; 3: 139 118 8
x10686:	sub si, 2	; 3: 131 238 2

scanFormat$101:	; IntegralToIntegral £temporary1576 £temporary1575

scanFormat$102:	; Deref £temporary1577 -> £temporary1576 £temporary1576 0

scanFormat$103:	; Assign intPtr £temporary1577 -> £temporary1576
x10689:	mov ax, [si]	; 2: 139 4
x10691:	mov [bp + 33], ax	; 3: 137 70 33

scanFormat$104:	; Deref £temporary1578 -> intPtr intPtr 0
x10694:	mov si, [bp + 33]	; 3: 139 118 33

scanFormat$105:	; IntegralToIntegral £temporary1579 longValue
x10697:	mov eax, [bp + 23]	; 4: 102 139 70 23
x10701:	cmp eax, 0	; 4: 102 131 248 0
x10705:	jge scanFormat$106	; 2: 125 5
x10707:	neg eax	; 3: 102 247 216
x10710:	neg ax	; 2: 247 216

scanFormat$106:	; Assign £temporary1578 -> intPtr £temporary1579
x10712:	mov [si], ax	; 2: 137 4

scanFormat$107:	; Goto 115
x10714:	jmp scanFormat$115	; 2: 235 25

scanFormat$108:	; BinaryAdd arg_list arg_list 2
x10716:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$109:	; BinarySubtract £temporary1581 arg_list 2
x10720:	mov si, [bp + 8]	; 3: 139 118 8
x10723:	sub si, 2	; 3: 131 238 2

scanFormat$110:	; IntegralToIntegral £temporary1582 £temporary1581

scanFormat$111:	; Deref £temporary1583 -> £temporary1582 £temporary1582 0

scanFormat$112:	; Assign longPtr £temporary1583 -> £temporary1582
x10726:	mov ax, [si]	; 2: 139 4
x10728:	mov [bp + 27], ax	; 3: 137 70 27

scanFormat$113:	; Deref £temporary1584 -> longPtr longPtr 0
x10731:	mov si, [bp + 27]	; 3: 139 118 27

scanFormat$114:	; Assign £temporary1584 -> longPtr longValue
x10734:	mov eax, [bp + 23]	; 4: 102 139 70 23
x10738:	mov [si], eax	; 3: 102 137 4

scanFormat$115:	; Assign percent 0
x10741:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$116:	; Goto 325
x10746:	jmp scanFormat$325	; 3: 233 239 2

scanFormat$117:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$118:	; Parameter 57 8 6
x10749:	mov word [bp + 63], 8	; 5: 199 70 63 8 0

scanFormat$119:	; Call 57 scanUnsignedLongInt 0
x10754:	mov word [bp + 57], scanFormat$120	; 5: 199 70 57 16 42
x10759:	mov [bp + 59], bp	; 3: 137 110 59
x10762:	add bp, 57	; 3: 131 197 57
x10765:	jmp scanUnsignedLongInt	; 3: 233 55 10

scanFormat$120:	; PostCall 57

scanFormat$121:	; GetReturnValue £temporary1586

scanFormat$122:	; Assign unsignedLongValue £temporary1586
x10768:	mov [bp + 37], ebx	; 4: 102 137 94 37

scanFormat$123:	; NotEqual 151 star 0
x10772:	cmp word [bp + 21], 0	; 4: 131 126 21 0
x10776:	jne scanFormat$151	; 2: 117 89

scanFormat$124:	; Equal 134 shortInt 0
x10778:	cmp word [bp + 15], 0	; 4: 131 126 15 0
x10782:	je scanFormat$134	; 2: 116 26

scanFormat$125:	; BinaryAdd arg_list arg_list 2
x10784:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$126:	; BinarySubtract £temporary1590 arg_list 2
x10788:	mov si, [bp + 8]	; 3: 139 118 8
x10791:	sub si, 2	; 3: 131 238 2

scanFormat$127:	; IntegralToIntegral £temporary1591 £temporary1590

scanFormat$128:	; Deref £temporary1592 -> £temporary1591 £temporary1591 0

scanFormat$129:	; Assign unsignedShortPtr £temporary1592 -> £temporary1591
x10794:	mov ax, [si]	; 2: 139 4
x10796:	mov [bp + 43], ax	; 3: 137 70 43

scanFormat$130:	; Deref £temporary1593 -> unsignedShortPtr unsignedShortPtr 0
x10799:	mov si, [bp + 43]	; 3: 139 118 43

scanFormat$131:	; IntegralToIntegral £temporary1594 unsignedLongValue
x10802:	mov eax, [bp + 37]	; 4: 102 139 70 37

scanFormat$132:	; Assign £temporary1593 -> unsignedShortPtr £temporary1594
x10806:	mov [si], al	; 2: 136 4

scanFormat$133:	; Goto 151
x10808:	jmp scanFormat$151	; 2: 235 57

scanFormat$134:	; NotEqual 144 longIntOrDouble 0
x10810:	cmp word [bp + 17], 0	; 4: 131 126 17 0
x10814:	jne scanFormat$144	; 2: 117 26

scanFormat$135:	; BinaryAdd arg_list arg_list 2
x10816:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$136:	; BinarySubtract £temporary1598 arg_list 2
x10820:	mov si, [bp + 8]	; 3: 139 118 8
x10823:	sub si, 2	; 3: 131 238 2

scanFormat$137:	; IntegralToIntegral £temporary1599 £temporary1598

scanFormat$138:	; Deref £temporary1600 -> £temporary1599 £temporary1599 0

scanFormat$139:	; Assign unsignedIntPtr £temporary1600 -> £temporary1599
x10826:	mov ax, [si]	; 2: 139 4
x10828:	mov [bp + 45], ax	; 3: 137 70 45

scanFormat$140:	; Deref £temporary1601 -> unsignedIntPtr unsignedIntPtr 0
x10831:	mov si, [bp + 45]	; 3: 139 118 45

scanFormat$141:	; IntegralToIntegral £temporary1602 unsignedLongValue
x10834:	mov eax, [bp + 37]	; 4: 102 139 70 37

scanFormat$142:	; Assign £temporary1601 -> unsignedIntPtr £temporary1602
x10838:	mov [si], ax	; 2: 137 4

scanFormat$143:	; Goto 151
x10840:	jmp scanFormat$151	; 2: 235 25

scanFormat$144:	; BinaryAdd arg_list arg_list 2
x10842:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$145:	; BinarySubtract £temporary1604 arg_list 2
x10846:	mov si, [bp + 8]	; 3: 139 118 8
x10849:	sub si, 2	; 3: 131 238 2

scanFormat$146:	; IntegralToIntegral £temporary1605 £temporary1604

scanFormat$147:	; Deref £temporary1606 -> £temporary1605 £temporary1605 0

scanFormat$148:	; Assign unsignedLongPtr £temporary1606 -> £temporary1605
x10852:	mov ax, [si]	; 2: 139 4
x10854:	mov [bp + 41], ax	; 3: 137 70 41

scanFormat$149:	; Deref £temporary1607 -> unsignedLongPtr unsignedLongPtr 0
x10857:	mov si, [bp + 41]	; 3: 139 118 41

scanFormat$150:	; Assign £temporary1607 -> unsignedLongPtr unsignedLongValue
x10860:	mov eax, [bp + 37]	; 4: 102 139 70 37
x10864:	mov [si], eax	; 3: 102 137 4

scanFormat$151:	; Assign percent 0
x10867:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$152:	; Goto 325
x10872:	jmp scanFormat$325	; 3: 233 113 2

scanFormat$153:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$154:	; Parameter 57 16 6
x10875:	mov word [bp + 63], 16	; 5: 199 70 63 16 0

scanFormat$155:	; Call 57 scanUnsignedLongInt 0
x10880:	mov word [bp + 57], scanFormat$156	; 5: 199 70 57 142 42
x10885:	mov [bp + 59], bp	; 3: 137 110 59
x10888:	add bp, 57	; 3: 131 197 57
x10891:	jmp scanUnsignedLongInt	; 3: 233 185 9

scanFormat$156:	; PostCall 57

scanFormat$157:	; GetReturnValue £temporary1609

scanFormat$158:	; Assign unsignedLongValue £temporary1609
x10894:	mov [bp + 37], ebx	; 4: 102 137 94 37

scanFormat$159:	; NotEqual 187 star 0
x10898:	cmp word [bp + 21], 0	; 4: 131 126 21 0
x10902:	jne scanFormat$187	; 2: 117 89

scanFormat$160:	; Equal 170 shortInt 0
x10904:	cmp word [bp + 15], 0	; 4: 131 126 15 0
x10908:	je scanFormat$170	; 2: 116 26

scanFormat$161:	; BinaryAdd arg_list arg_list 2
x10910:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$162:	; BinarySubtract £temporary1613 arg_list 2
x10914:	mov si, [bp + 8]	; 3: 139 118 8
x10917:	sub si, 2	; 3: 131 238 2

scanFormat$163:	; IntegralToIntegral £temporary1614 £temporary1613

scanFormat$164:	; Deref £temporary1615 -> £temporary1614 £temporary1614 0

scanFormat$165:	; Assign unsignedShortPtr £temporary1615 -> £temporary1614
x10920:	mov ax, [si]	; 2: 139 4
x10922:	mov [bp + 43], ax	; 3: 137 70 43

scanFormat$166:	; Deref £temporary1616 -> unsignedShortPtr unsignedShortPtr 0
x10925:	mov si, [bp + 43]	; 3: 139 118 43

scanFormat$167:	; IntegralToIntegral £temporary1617 unsignedLongValue
x10928:	mov eax, [bp + 37]	; 4: 102 139 70 37

scanFormat$168:	; Assign £temporary1616 -> unsignedShortPtr £temporary1617
x10932:	mov [si], al	; 2: 136 4

scanFormat$169:	; Goto 187
x10934:	jmp scanFormat$187	; 2: 235 57

scanFormat$170:	; NotEqual 180 longIntOrDouble 0
x10936:	cmp word [bp + 17], 0	; 4: 131 126 17 0
x10940:	jne scanFormat$180	; 2: 117 26

scanFormat$171:	; BinaryAdd arg_list arg_list 2
x10942:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$172:	; BinarySubtract £temporary1621 arg_list 2
x10946:	mov si, [bp + 8]	; 3: 139 118 8
x10949:	sub si, 2	; 3: 131 238 2

scanFormat$173:	; IntegralToIntegral £temporary1622 £temporary1621

scanFormat$174:	; Deref £temporary1623 -> £temporary1622 £temporary1622 0

scanFormat$175:	; Assign unsignedIntPtr £temporary1623 -> £temporary1622
x10952:	mov ax, [si]	; 2: 139 4
x10954:	mov [bp + 45], ax	; 3: 137 70 45

scanFormat$176:	; Deref £temporary1624 -> unsignedIntPtr unsignedIntPtr 0
x10957:	mov si, [bp + 45]	; 3: 139 118 45

scanFormat$177:	; IntegralToIntegral £temporary1625 unsignedLongValue
x10960:	mov eax, [bp + 37]	; 4: 102 139 70 37

scanFormat$178:	; Assign £temporary1624 -> unsignedIntPtr £temporary1625
x10964:	mov [si], ax	; 2: 137 4

scanFormat$179:	; Goto 187
x10966:	jmp scanFormat$187	; 2: 235 25

scanFormat$180:	; BinaryAdd arg_list arg_list 2
x10968:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$181:	; BinarySubtract £temporary1627 arg_list 2
x10972:	mov si, [bp + 8]	; 3: 139 118 8
x10975:	sub si, 2	; 3: 131 238 2

scanFormat$182:	; IntegralToIntegral £temporary1628 £temporary1627

scanFormat$183:	; Deref £temporary1629 -> £temporary1628 £temporary1628 0

scanFormat$184:	; Assign unsignedLongPtr £temporary1629 -> £temporary1628
x10978:	mov ax, [si]	; 2: 139 4
x10980:	mov [bp + 41], ax	; 3: 137 70 41

scanFormat$185:	; Deref £temporary1630 -> unsignedLongPtr unsignedLongPtr 0
x10983:	mov si, [bp + 41]	; 3: 139 118 41

scanFormat$186:	; Assign £temporary1630 -> unsignedLongPtr unsignedLongValue
x10986:	mov eax, [bp + 37]	; 4: 102 139 70 37
x10990:	mov [si], eax	; 3: 102 137 4

scanFormat$187:	; Assign percent 0
x10993:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$188:	; Goto 325
x10998:	jmp scanFormat$325	; 3: 233 243 1

scanFormat$189:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$190:	; Parameter 57 0 6
x11001:	mov word [bp + 63], 0	; 5: 199 70 63 0 0

scanFormat$191:	; Call 57 scanUnsignedLongInt 0
x11006:	mov word [bp + 57], scanFormat$192	; 5: 199 70 57 12 43
x11011:	mov [bp + 59], bp	; 3: 137 110 59
x11014:	add bp, 57	; 3: 131 197 57
x11017:	jmp scanUnsignedLongInt	; 3: 233 59 9

scanFormat$192:	; PostCall 57

scanFormat$193:	; GetReturnValue £temporary1632

scanFormat$194:	; Assign unsignedLongValue £temporary1632
x11020:	mov [bp + 37], ebx	; 4: 102 137 94 37

scanFormat$195:	; NotEqual 223 star 0
x11024:	cmp word [bp + 21], 0	; 4: 131 126 21 0
x11028:	jne scanFormat$223	; 2: 117 89

scanFormat$196:	; Equal 206 shortInt 0
x11030:	cmp word [bp + 15], 0	; 4: 131 126 15 0
x11034:	je scanFormat$206	; 2: 116 26

scanFormat$197:	; BinaryAdd arg_list arg_list 2
x11036:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$198:	; BinarySubtract £temporary1636 arg_list 2
x11040:	mov si, [bp + 8]	; 3: 139 118 8
x11043:	sub si, 2	; 3: 131 238 2

scanFormat$199:	; IntegralToIntegral £temporary1637 £temporary1636

scanFormat$200:	; Deref £temporary1638 -> £temporary1637 £temporary1637 0

scanFormat$201:	; Assign unsignedShortPtr £temporary1638 -> £temporary1637
x11046:	mov ax, [si]	; 2: 139 4
x11048:	mov [bp + 43], ax	; 3: 137 70 43

scanFormat$202:	; Deref £temporary1639 -> unsignedShortPtr unsignedShortPtr 0
x11051:	mov si, [bp + 43]	; 3: 139 118 43

scanFormat$203:	; IntegralToIntegral £temporary1640 unsignedLongValue
x11054:	mov eax, [bp + 37]	; 4: 102 139 70 37

scanFormat$204:	; Assign £temporary1639 -> unsignedShortPtr £temporary1640
x11058:	mov [si], al	; 2: 136 4

scanFormat$205:	; Goto 223
x11060:	jmp scanFormat$223	; 2: 235 57

scanFormat$206:	; NotEqual 216 longIntOrDouble 0
x11062:	cmp word [bp + 17], 0	; 4: 131 126 17 0
x11066:	jne scanFormat$216	; 2: 117 26

scanFormat$207:	; BinaryAdd arg_list arg_list 2
x11068:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$208:	; BinarySubtract £temporary1644 arg_list 2
x11072:	mov si, [bp + 8]	; 3: 139 118 8
x11075:	sub si, 2	; 3: 131 238 2

scanFormat$209:	; IntegralToIntegral £temporary1645 £temporary1644

scanFormat$210:	; Deref £temporary1646 -> £temporary1645 £temporary1645 0

scanFormat$211:	; Assign unsignedIntPtr £temporary1646 -> £temporary1645
x11078:	mov ax, [si]	; 2: 139 4
x11080:	mov [bp + 45], ax	; 3: 137 70 45

scanFormat$212:	; Deref £temporary1647 -> unsignedIntPtr unsignedIntPtr 0
x11083:	mov si, [bp + 45]	; 3: 139 118 45

scanFormat$213:	; IntegralToIntegral £temporary1648 unsignedLongValue
x11086:	mov eax, [bp + 37]	; 4: 102 139 70 37

scanFormat$214:	; Assign £temporary1647 -> unsignedIntPtr £temporary1648
x11090:	mov [si], ax	; 2: 137 4

scanFormat$215:	; Goto 223
x11092:	jmp scanFormat$223	; 2: 235 25

scanFormat$216:	; BinaryAdd arg_list arg_list 2
x11094:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$217:	; BinarySubtract £temporary1650 arg_list 2
x11098:	mov si, [bp + 8]	; 3: 139 118 8
x11101:	sub si, 2	; 3: 131 238 2

scanFormat$218:	; IntegralToIntegral £temporary1651 £temporary1650

scanFormat$219:	; Deref £temporary1652 -> £temporary1651 £temporary1651 0

scanFormat$220:	; Assign unsignedLongPtr £temporary1652 -> £temporary1651
x11104:	mov ax, [si]	; 2: 139 4
x11106:	mov [bp + 41], ax	; 3: 137 70 41

scanFormat$221:	; Deref £temporary1653 -> unsignedLongPtr unsignedLongPtr 0
x11109:	mov si, [bp + 41]	; 3: 139 118 41

scanFormat$222:	; Assign £temporary1653 -> unsignedLongPtr unsignedLongValue
x11112:	mov eax, [bp + 37]	; 4: 102 139 70 37
x11116:	mov [si], eax	; 3: 102 137 4

scanFormat$223:	; Assign percent 0
x11119:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$224:	; Goto 325
x11124:	jmp scanFormat$325	; 3: 233 117 1

scanFormat$225:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$226:	; Call 57 scanLongDouble 0
x11127:	mov word [bp + 57], scanFormat$227	; 5: 199 70 57 133 43
x11132:	mov [bp + 59], bp	; 3: 137 110 59
x11135:	add bp, 57	; 3: 131 197 57
x11138:	jmp scanLongDouble	; 3: 233 46 10

scanFormat$227:	; PostCall 57

scanFormat$228:	; GetReturnValue £temporary1655

scanFormat$229:	; PopFloat longDoubleValue
x11141:	fstp qword [bp + 47]	; 3: 221 94 47

scanFormat$230:	; NotEqual 259 star 0
x11144:	cmp word [bp + 21], 0	; 4: 131 126 21 0
x11148:	jne scanFormat$259	; 2: 117 85

scanFormat$231:	; Equal 241 longIntOrDouble 0
x11150:	cmp word [bp + 17], 0	; 4: 131 126 17 0
x11154:	je scanFormat$241	; 2: 116 25

scanFormat$232:	; BinaryAdd arg_list arg_list 2
x11156:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$233:	; BinarySubtract £temporary1659 arg_list 2
x11160:	mov si, [bp + 8]	; 3: 139 118 8
x11163:	sub si, 2	; 3: 131 238 2

scanFormat$234:	; IntegralToIntegral £temporary1660 £temporary1659

scanFormat$235:	; Deref £temporary1661 -> £temporary1660 £temporary1660 0

scanFormat$236:	; Assign doublePtr £temporary1661 -> £temporary1660
x11166:	mov ax, [si]	; 2: 139 4
x11168:	mov [bp + 57], ax	; 3: 137 70 57

scanFormat$237:	; Deref £temporary1662 -> doublePtr doublePtr 0
x11171:	mov si, [bp + 57]	; 3: 139 118 57

scanFormat$238:	; PushFloat longDoubleValue
x11174:	fld qword [bp + 47]	; 3: 221 70 47

scanFormat$239:	; PopFloat £temporary1662 -> doublePtr
x11177:	fstp qword [si]	; 2: 221 28

scanFormat$240:	; Goto 259
x11179:	jmp scanFormat$259	; 2: 235 54

scanFormat$241:	; Equal 251 longDouble 0
x11181:	cmp word [bp + 19], 0	; 4: 131 126 19 0
x11185:	je scanFormat$251	; 2: 116 25

scanFormat$242:	; BinaryAdd arg_list arg_list 2
x11187:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$243:	; BinarySubtract £temporary1665 arg_list 2
x11191:	mov si, [bp + 8]	; 3: 139 118 8
x11194:	sub si, 2	; 3: 131 238 2

scanFormat$244:	; IntegralToIntegral £temporary1666 £temporary1665

scanFormat$245:	; Deref £temporary1667 -> £temporary1666 £temporary1666 0

scanFormat$246:	; Assign longDoublePtr £temporary1667 -> £temporary1666
x11197:	mov ax, [si]	; 2: 139 4
x11199:	mov [bp + 57], ax	; 3: 137 70 57

scanFormat$247:	; Deref £temporary1668 -> longDoublePtr longDoublePtr 0
x11202:	mov si, [bp + 57]	; 3: 139 118 57

scanFormat$248:	; PushFloat longDoubleValue
x11205:	fld qword [bp + 47]	; 3: 221 70 47

scanFormat$249:	; PopFloat £temporary1668 -> longDoublePtr
x11208:	fstp qword [si]	; 2: 221 28

scanFormat$250:	; Goto 259
x11210:	jmp scanFormat$259	; 2: 235 23

scanFormat$251:	; BinaryAdd arg_list arg_list 2
x11212:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$252:	; BinarySubtract £temporary1670 arg_list 2
x11216:	mov si, [bp + 8]	; 3: 139 118 8
x11219:	sub si, 2	; 3: 131 238 2

scanFormat$253:	; IntegralToIntegral £temporary1671 £temporary1670

scanFormat$254:	; Deref £temporary1672 -> £temporary1671 £temporary1671 0

scanFormat$255:	; Assign floatPtr £temporary1672 -> £temporary1671
x11222:	mov ax, [si]	; 2: 139 4
x11224:	mov [bp + 57], ax	; 3: 137 70 57

scanFormat$256:	; Deref £temporary1673 -> floatPtr floatPtr 0
x11227:	mov si, [bp + 57]	; 3: 139 118 57

scanFormat$257:	; PushFloat longDoubleValue
x11230:	fld qword [bp + 47]	; 3: 221 70 47

scanFormat$258:	; PopFloat £temporary1673 -> floatPtr
x11233:	fstp dword [si]	; 2: 217 28

scanFormat$259:	; Assign percent 0
x11235:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$260:	; Goto 325
x11240:	jmp scanFormat$325	; 3: 233 1 1

scanFormat$261:	; Assign not 0
x11243:	mov word [bp + 57], 0	; 5: 199 70 57 0 0

scanFormat$262:	; Increment index
x11248:	inc word [bp + 31]	; 3: 255 70 31

scanFormat$263:	; BinaryAdd £temporary1679 format index
x11251:	mov si, [bp + 6]	; 3: 139 118 6
x11254:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$264:	; Deref £temporary1678 -> £temporary1679 £temporary1679 0

scanFormat$265:	; NotEqual 268 £temporary1678 -> £temporary1679 94
x11257:	cmp byte [si], 94	; 3: 128 60 94
x11260:	jne scanFormat$268	; 2: 117 8

scanFormat$266:	; Assign not 1
x11262:	mov word [bp + 57], 1	; 5: 199 70 57 1 0

scanFormat$267:	; Increment index
x11267:	inc word [bp + 31]	; 3: 255 70 31

scanFormat$268:	; Assign startIndex index
x11270:	mov ax, [bp + 31]	; 3: 139 70 31
x11273:	mov [bp + 59], ax	; 3: 137 70 59

scanFormat$269:	; BinaryAdd £temporary1683 format index
x11276:	mov si, [bp + 6]	; 3: 139 118 6
x11279:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$270:	; Deref £temporary1682 -> £temporary1683 £temporary1683 0

scanFormat$271:	; Equal 274 £temporary1682 -> £temporary1683 93
x11282:	cmp byte [si], 93	; 3: 128 60 93
x11285:	je scanFormat$274	; 2: 116 5

scanFormat$272:	; Increment index
x11287:	inc word [bp + 31]	; 3: 255 70 31

scanFormat$273:	; Goto 269
x11290:	jmp scanFormat$269	; 2: 235 240

scanFormat$274:	; BinaryAdd £temporary1687 format index
x11292:	mov si, [bp + 6]	; 3: 139 118 6
x11295:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$275:	; Deref £temporary1686 -> £temporary1687 £temporary1687 0

scanFormat$276:	; Assign £temporary1686 -> £temporary1687 0
x11298:	mov byte [si], 0	; 3: 198 4 0

scanFormat$277:	; NotEqual 293 star 0
x11301:	cmp word [bp + 21], 0	; 4: 131 126 21 0
x11305:	jne scanFormat$293	; 2: 117 53

scanFormat$278:	; BinaryAdd arg_list arg_list 2
x11307:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$279:	; BinarySubtract £temporary1691 arg_list 2
x11311:	mov si, [bp + 8]	; 3: 139 118 8
x11314:	sub si, 2	; 3: 131 238 2

scanFormat$280:	; IntegralToIntegral £temporary1692 £temporary1691

scanFormat$281:	; Deref £temporary1693 -> £temporary1692 £temporary1692 0

scanFormat$282:	; Assign string £temporary1693 -> £temporary1692
x11317:	mov ax, [si]	; 2: 139 4
x11319:	mov [bp + 61], ax	; 3: 137 70 61

scanFormat$283:	; CallHeader 63 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$284:	; Parameter 63 string 6
x11322:	mov ax, [bp + 61]	; 3: 139 70 61
x11325:	mov [bp + 69], ax	; 3: 137 70 69

scanFormat$285:	; BinaryAdd £temporary1695 format startIndex
x11328:	mov si, [bp + 6]	; 3: 139 118 6
x11331:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$286:	; Deref £temporary1694 -> £temporary1695 £temporary1695 0

scanFormat$287:	; address £temporary1696 £temporary1694 -> £temporary1695

scanFormat$288:	; Parameter 63 £temporary1696 8
x11334:	mov [bp + 71], si	; 3: 137 118 71

scanFormat$289:	; Parameter 63 not 10
x11337:	mov ax, [bp + 57]	; 3: 139 70 57
x11340:	mov [bp + 73], ax	; 3: 137 70 73

scanFormat$290:	; Call 63 scanPattern 0
x11343:	mov word [bp + 63], scanFormat$291	; 5: 199 70 63 93 44
x11348:	mov [bp + 65], bp	; 3: 137 110 65
x11351:	add bp, 63	; 3: 131 197 63
x11354:	jmp scanPattern	; 3: 233 121 11

scanFormat$291:	; PostCall 63

scanFormat$292:	; Goto 325
x11357:	jmp scanFormat$325	; 3: 233 140 0

scanFormat$293:	; CallHeader 61 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$294:	; Parameter 61 0 6
x11360:	mov word [bp + 67], 0	; 5: 199 70 67 0 0

scanFormat$295:	; BinaryAdd £temporary1699 format startIndex
x11365:	mov si, [bp + 6]	; 3: 139 118 6
x11368:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$296:	; Deref £temporary1698 -> £temporary1699 £temporary1699 0

scanFormat$297:	; address £temporary1700 £temporary1698 -> £temporary1699

scanFormat$298:	; Parameter 61 £temporary1700 8
x11371:	mov [bp + 69], si	; 3: 137 118 69

scanFormat$299:	; Parameter 61 not 10
x11374:	mov ax, [bp + 57]	; 3: 139 70 57
x11377:	mov [bp + 71], ax	; 3: 137 70 71

scanFormat$300:	; Call 61 scanPattern 0
x11380:	mov word [bp + 61], scanFormat$301	; 5: 199 70 61 130 44
x11385:	mov [bp + 63], bp	; 3: 137 110 63
x11388:	add bp, 61	; 3: 131 197 61
x11391:	jmp scanPattern	; 3: 233 84 11

scanFormat$301:	; PostCall 61

scanFormat$302:	; Goto 325
x11394:	jmp scanFormat$325	; 2: 235 104

scanFormat$303:	; BinaryAdd arg_list arg_list 2
x11396:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$304:	; BinarySubtract £temporary1703 arg_list 2
x11400:	mov si, [bp + 8]	; 3: 139 118 8
x11403:	sub si, 2	; 3: 131 238 2

scanFormat$305:	; IntegralToIntegral £temporary1704 £temporary1703

scanFormat$306:	; Deref £temporary1705 -> £temporary1704 £temporary1704 0

scanFormat$307:	; Assign charsPtr £temporary1705 -> £temporary1704
x11406:	mov ax, [si]	; 2: 139 4
x11408:	mov [bp + 35], ax	; 3: 137 70 35

scanFormat$308:	; Deref £temporary1706 -> charsPtr charsPtr 0
x11411:	mov si, [bp + 35]	; 3: 139 118 35

scanFormat$309:	; Assign £temporary1706 -> charsPtr g_inChars
x11414:	mov ax, [g_inChars]	; 3: 161 3 45
x11417:	mov [si], ax	; 2: 137 4

scanFormat$310:	; Assign percent 0
x11419:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$311:	; Goto 325
x11424:	jmp scanFormat$325	; 2: 235 74

scanFormat$312:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$313:	; Parameter 57 string_scanFormat20c203D202725c270A# 6
x11426:	mov word [bp + 63], string_scanFormat20c203D202725c270A#	; 5: 199 70 63 5 45

scanFormat$314:	; IntegralToIntegral £temporary1707 c
x11431:	mov al, [bp + 10]	; 3: 138 70 10
x11434:	and ax, 255	; 3: 37 255 0
x11437:	cmp al, 0	; 2: 60 0
x11439:	jge scanFormat$315	; 2: 125 4
x11441:	neg al	; 2: 246 216
x11443:	neg ax	; 2: 247 216

scanFormat$315:	; Parameter 57 £temporary1707 8
x11445:	mov [bp + 65], ax	; 3: 137 70 65

scanFormat$316:	; Call 57 printf 0
x11448:	mov word [bp + 57], scanFormat$317	; 5: 199 70 57 203 44
x11453:	mov [bp + 59], bp	; 3: 137 110 59
x11456:	add bp, 57	; 3: 131 197 57
x11459:	mov di, bp	; 2: 137 239
x11461:	add di, 2	; 3: 131 199 2
x11464:	jmp printf	; 3: 233 63 222

scanFormat$317:	; PostCall 57

scanFormat$318:	; Goto 325
x11467:	jmp scanFormat$325	; 2: 235 31

scanFormat$319:	; NotEqual 325 c 37
x11469:	cmp byte [bp + 10], 37	; 4: 128 126 10 37
x11473:	jne scanFormat$325	; 2: 117 25

scanFormat$320:	; Assign percent 1
x11475:	mov word [bp + 13], 1	; 5: 199 70 13 1 0

scanFormat$321:	; Assign shortInt 0
x11480:	mov word [bp + 15], 0	; 5: 199 70 15 0 0

scanFormat$322:	; Assign longIntOrDouble 0
x11485:	mov word [bp + 17], 0	; 5: 199 70 17 0 0

scanFormat$323:	; Assign longDouble 0
x11490:	mov word [bp + 19], 0	; 5: 199 70 19 0 0

scanFormat$324:	; Assign star 0
x11495:	mov word [bp + 21], 0	; 5: 199 70 21 0 0

scanFormat$325:	; Increment index
x11500:	inc word [bp + 31]	; 3: 255 70 31

scanFormat$326:	; Goto 8
x11503:	jmp scanFormat$8	; 3: 233 25 251

scanFormat$327:	; SetReturnValue g_inCount
x11506:	mov bx, [g_inCount]	; 4: 139 30 1 45

scanFormat$328:	; Return g_inCount
x11510:	mov ax, [bp]	; 3: 139 70 0
x11513:	mov di, [bp + 4]	; 3: 139 126 4
x11516:	mov bp, [bp + 2]	; 3: 139 110 2
x11519:	jmp ax	; 2: 255 224

scanFormat$329:	; FunctionEnd scanFormat

g_inCount:
x11521:	db 0, 0	; 2: 0 0

g_inChars:
x11523:	db 0, 0	; 2: 0 0

string_scanFormat20c203D202725c270A#:
x11525:	db "scanFormat c = ", 39, "%c", 39, 10, 0	; 21: 115 99 97 110 70 111 114 109 97 116 32 99 32 61 32 39 37 99 39 10 0

scanChar:	; Assign c 0
x11546:	mov byte [bp + 6], 0	; 4: 198 70 6 0

scanChar$1:	; Case 5 g_inStatus 0
x11550:	mov ax, [g_inStatus]	; 3: 161 221 39
x11553:	cmp ax, 0	; 3: 131 248 0
x11556:	je scanChar$5	; 2: 116 7

scanChar$2:	; Case 18 g_inStatus 1
x11558:	cmp ax, 1	; 3: 131 248 1
x11561:	je scanChar$18	; 2: 116 50

scanChar$3:	; CaseEnd g_inStatus

scanChar$4:	; Goto 26
x11563:	jmp scanChar$26	; 2: 235 79

scanChar$5:	; IntegralToIntegral £temporary1223 g_inDevice
x11565:	mov ax, [g_inDevice]	; 3: 161 223 39

scanChar$6:	; Assign stream £temporary1223
x11568:	mov [bp + 7], ax	; 3: 137 70 7

scanChar$7:	; Deref £temporary1224 -> stream stream 2
x11571:	mov si, [bp + 7]	; 3: 139 118 7

scanChar$8:	; Assign handle £temporary1224 -> stream
x11574:	mov ax, [si + 2]	; 3: 139 68 2
x11577:	mov [bp + 9], ax	; 3: 137 70 9

scanChar$9:	; AssignRegister ah 63
x11580:	mov ah, 63	; 2: 180 63

scanChar$10:	; AssignRegister bx handle
x11582:	mov bx, [bp + 9]	; 3: 139 94 9

scanChar$11:	; AssignRegister cx 1
x11585:	mov cx, 1	; 3: 185 1 0

scanChar$12:	; address £temporary1229 c
x11588:	mov dx, bp	; 2: 137 234
x11590:	add dx, 6	; 3: 131 194 6

scanChar$13:	; AssignRegister dx £temporary1229

scanChar$14:	; Interrupt 33
x11593:	int 33	; 2: 205 33

scanChar$15:	; Increment g_inChars
x11595:	inc word [g_inChars]	; 4: 255 6 3 45

scanChar$16:	; SetReturnValue c
x11599:	mov bl, [bp + 6]	; 3: 138 94 6

scanChar$17:	; Return c
x11602:	mov ax, [bp]	; 3: 139 70 0
x11605:	mov di, [bp + 4]	; 3: 139 126 4
x11608:	mov bp, [bp + 2]	; 3: 139 110 2
x11611:	jmp ax	; 2: 255 224

scanChar$18:	; IntegralToIntegral £temporary1231 g_inDevice
x11613:	mov ax, [g_inDevice]	; 3: 161 223 39

scanChar$19:	; Assign inString £temporary1231
x11616:	mov [bp + 11], ax	; 3: 137 70 11

scanChar$20:	; Assign £temporary1232 g_inChars
x11619:	mov ax, [g_inChars]	; 3: 161 3 45

scanChar$21:	; Increment g_inChars
x11622:	inc word [g_inChars]	; 4: 255 6 3 45

scanChar$22:	; BinaryAdd £temporary1234 inString £temporary1232
x11626:	mov si, [bp + 11]	; 3: 139 118 11
x11629:	add si, ax	; 2: 1 198

scanChar$23:	; Deref £temporary1233 -> £temporary1234 £temporary1234 0

scanChar$24:	; SetReturnValue £temporary1233 -> £temporary1234
x11631:	mov bl, [si]	; 2: 138 28

scanChar$25:	; Return £temporary1233 -> £temporary1234
x11633:	mov ax, [bp]	; 3: 139 70 0
x11636:	mov di, [bp + 4]	; 3: 139 126 4
x11639:	mov bp, [bp + 2]	; 3: 139 110 2
x11642:	jmp ax	; 2: 255 224

scanChar$26:	; SetReturnValue 0
x11644:	mov bl, 0	; 2: 179 0

scanChar$27:	; Return 0
x11646:	mov ax, [bp]	; 3: 139 70 0
x11649:	mov di, [bp + 4]	; 3: 139 126 4
x11652:	mov bp, [bp + 2]	; 3: 139 110 2
x11655:	jmp ax	; 2: 255 224

scanChar$28:	; FunctionEnd scanChar

scanString:	; Assign index 0
x11657:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

scanString$1:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$2:	; Call 12 scanChar 0
x11662:	mov word [bp + 12], scanString$3	; 5: 199 70 12 156 45
x11667:	mov [bp + 14], bp	; 3: 137 110 14
x11670:	add bp, 12	; 3: 131 197 12
x11673:	jmp scanChar	; 3: 233 126 255

scanString$3:	; PostCall 12

scanString$4:	; GetReturnValue £temporary1286

scanString$5:	; Assign input £temporary1286
x11676:	mov [bp + 12], bl	; 3: 136 94 12

scanString$6:	; Assign found 0
x11679:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanString$7:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$8:	; IntegralToIntegral £temporary1287 input
x11684:	mov al, [bp + 12]	; 3: 138 70 12
x11687:	and ax, 255	; 3: 37 255 0
x11690:	cmp al, 0	; 2: 60 0
x11692:	jge scanString$9	; 2: 125 4
x11694:	neg al	; 2: 246 216
x11696:	neg ax	; 2: 247 216

scanString$9:	; Parameter 15 £temporary1287 6
x11698:	mov [bp + 21], ax	; 3: 137 70 21

scanString$10:	; Call 15 isspace 0
x11701:	mov word [bp + 15], scanString$11	; 5: 199 70 15 195 45
x11706:	mov [bp + 17], bp	; 3: 137 110 17
x11709:	add bp, 15	; 3: 131 197 15
x11712:	jmp isspace	; 3: 233 19 2

scanString$11:	; PostCall 15

scanString$12:	; GetReturnValue £temporary1288

scanString$13:	; Equal 20 £temporary1288 0
x11715:	cmp bx, 0	; 3: 131 251 0
x11718:	je scanString$20	; 2: 116 19

scanString$14:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$15:	; Call 15 scanChar 0
x11720:	mov word [bp + 15], scanString$16	; 5: 199 70 15 214 45
x11725:	mov [bp + 17], bp	; 3: 137 110 17
x11728:	add bp, 15	; 3: 131 197 15
x11731:	jmp scanChar	; 3: 233 68 255

scanString$16:	; PostCall 15

scanString$17:	; GetReturnValue £temporary1289

scanString$18:	; Assign input £temporary1289
x11734:	mov [bp + 12], bl	; 3: 136 94 12

scanString$19:	; Goto 7
x11737:	jmp scanString$7	; 2: 235 201

scanString$20:	; Equal 82 string 0
x11739:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x11743:	je scanString$82	; 4: 15 132 11 1

scanString$21:	; NotEqual 50 precision 0
x11747:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x11751:	jne scanString$50	; 2: 117 121

scanString$22:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$23:	; IntegralToIntegral £temporary1293 input
x11753:	mov al, [bp + 12]	; 3: 138 70 12
x11756:	and ax, 255	; 3: 37 255 0
x11759:	cmp al, 0	; 2: 60 0
x11761:	jge scanString$24	; 2: 125 4
x11763:	neg al	; 2: 246 216
x11765:	neg ax	; 2: 247 216

scanString$24:	; Parameter 15 £temporary1293 6
x11767:	mov [bp + 21], ax	; 3: 137 70 21

scanString$25:	; Call 15 isspace 0
x11770:	mov word [bp + 15], scanString$26	; 5: 199 70 15 8 46
x11775:	mov [bp + 17], bp	; 3: 137 110 17
x11778:	add bp, 15	; 3: 131 197 15
x11781:	jmp isspace	; 3: 233 206 1

scanString$26:	; PostCall 15

scanString$27:	; GetReturnValue £temporary1294

scanString$28:	; NotEqual 45 £temporary1294 0
x11784:	cmp bx, 0	; 3: 131 251 0
x11787:	jne scanString$45	; 2: 117 69

scanString$29:	; IntegralToIntegral £temporary1297 input
x11789:	mov al, [bp + 12]	; 3: 138 70 12
x11792:	and ax, 255	; 3: 37 255 0
x11795:	cmp al, 0	; 2: 60 0
x11797:	jge scanString$30	; 2: 125 4
x11799:	neg al	; 2: 246 216
x11801:	neg ax	; 2: 247 216

scanString$30:	; Equal 45 £temporary1297 -1
x11803:	cmp ax, -1	; 3: 131 248 255
x11806:	je scanString$45	; 2: 116 50

scanString$31:	; Equal 45 input 10
x11808:	cmp byte [bp + 12], 10	; 4: 128 126 12 10
x11812:	je scanString$45	; 2: 116 44

scanString$32:	; Assign £temporary1302 index
x11814:	mov ax, [bp + 10]	; 3: 139 70 10

scanString$33:	; Increment index
x11817:	inc word [bp + 10]	; 3: 255 70 10

scanString$34:	; BinaryAdd £temporary1304 string £temporary1302
x11820:	mov si, [bp + 6]	; 3: 139 118 6
x11823:	add si, ax	; 2: 1 198

scanString$35:	; Deref £temporary1303 -> £temporary1304 £temporary1304 0

scanString$36:	; Assign £temporary1303 -> £temporary1304 input
x11825:	mov al, [bp + 12]	; 3: 138 70 12
x11828:	mov [si], al	; 2: 136 4

scanString$37:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$38:	; Call 15 scanChar 0
x11830:	mov word [bp + 15], scanString$39	; 5: 199 70 15 68 46
x11835:	mov [bp + 17], bp	; 3: 137 110 17
x11838:	add bp, 15	; 3: 131 197 15
x11841:	jmp scanChar	; 3: 233 214 254

scanString$39:	; PostCall 15

scanString$40:	; GetReturnValue £temporary1305

scanString$41:	; Assign input £temporary1305
x11844:	mov [bp + 12], bl	; 3: 136 94 12

scanString$42:	; Assign found 1
x11847:	mov word [bp + 13], 1	; 5: 199 70 13 1 0

scanString$43:	; Increment g_inChars
x11852:	inc word [g_inChars]	; 4: 255 6 3 45

scanString$44:	; Goto 22
x11856:	jmp scanString$22	; 2: 235 151

scanString$45:	; BinaryAdd £temporary1308 string index
x11858:	mov si, [bp + 6]	; 3: 139 118 6
x11861:	add si, [bp + 10]	; 3: 3 118 10

scanString$46:	; Deref £temporary1307 -> £temporary1308 £temporary1308 0

scanString$47:	; Assign £temporary1307 -> £temporary1308 0
x11864:	mov byte [si], 0	; 3: 198 4 0

scanString$48:	; Increment g_inChars
x11867:	inc word [g_inChars]	; 4: 255 6 3 45

scanString$49:	; Goto 126
x11871:	jmp scanString$126	; 3: 233 95 1

scanString$50:	; Assign £temporary1310 precision
x11874:	mov ax, [bp + 8]	; 3: 139 70 8

scanString$51:	; Decrement precision
x11877:	dec word [bp + 8]	; 3: 255 78 8

scanString$52:	; SignedLessThanEqual 76 £temporary1310 0
x11880:	cmp ax, 0	; 3: 131 248 0
x11883:	jle scanString$76	; 2: 126 105

scanString$53:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$54:	; IntegralToIntegral £temporary1312 input
x11885:	mov al, [bp + 12]	; 3: 138 70 12
x11888:	and ax, 255	; 3: 37 255 0
x11891:	cmp al, 0	; 2: 60 0
x11893:	jge scanString$55	; 2: 125 4
x11895:	neg al	; 2: 246 216
x11897:	neg ax	; 2: 247 216

scanString$55:	; Parameter 15 £temporary1312 6
x11899:	mov [bp + 21], ax	; 3: 137 70 21

scanString$56:	; Call 15 isspace 0
x11902:	mov word [bp + 15], scanString$57	; 5: 199 70 15 140 46
x11907:	mov [bp + 17], bp	; 3: 137 110 17
x11910:	add bp, 15	; 3: 131 197 15
x11913:	jmp isspace	; 3: 233 74 1

scanString$57:	; PostCall 15

scanString$58:	; GetReturnValue £temporary1313

scanString$59:	; NotEqual 76 £temporary1313 0
x11916:	cmp bx, 0	; 3: 131 251 0
x11919:	jne scanString$76	; 2: 117 69

scanString$60:	; IntegralToIntegral £temporary1316 input
x11921:	mov al, [bp + 12]	; 3: 138 70 12
x11924:	and ax, 255	; 3: 37 255 0
x11927:	cmp al, 0	; 2: 60 0
x11929:	jge scanString$61	; 2: 125 4
x11931:	neg al	; 2: 246 216
x11933:	neg ax	; 2: 247 216

scanString$61:	; Equal 76 £temporary1316 -1
x11935:	cmp ax, -1	; 3: 131 248 255
x11938:	je scanString$76	; 2: 116 50

scanString$62:	; Equal 76 input 10
x11940:	cmp byte [bp + 12], 10	; 4: 128 126 12 10
x11944:	je scanString$76	; 2: 116 44

scanString$63:	; Assign £temporary1322 index
x11946:	mov ax, [bp + 10]	; 3: 139 70 10

scanString$64:	; Increment index
x11949:	inc word [bp + 10]	; 3: 255 70 10

scanString$65:	; BinaryAdd £temporary1324 string £temporary1322
x11952:	mov si, [bp + 6]	; 3: 139 118 6
x11955:	add si, ax	; 2: 1 198

scanString$66:	; Deref £temporary1323 -> £temporary1324 £temporary1324 0

scanString$67:	; Assign £temporary1323 -> £temporary1324 input
x11957:	mov al, [bp + 12]	; 3: 138 70 12
x11960:	mov [si], al	; 2: 136 4

scanString$68:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$69:	; Call 15 scanChar 0
x11962:	mov word [bp + 15], scanString$70	; 5: 199 70 15 200 46
x11967:	mov [bp + 17], bp	; 3: 137 110 17
x11970:	add bp, 15	; 3: 131 197 15
x11973:	jmp scanChar	; 3: 233 82 254

scanString$70:	; PostCall 15

scanString$71:	; GetReturnValue £temporary1325

scanString$72:	; Assign input £temporary1325
x11976:	mov [bp + 12], bl	; 3: 136 94 12

scanString$73:	; Assign found 1
x11979:	mov word [bp + 13], 1	; 5: 199 70 13 1 0

scanString$74:	; Increment g_inChars
x11984:	inc word [g_inChars]	; 4: 255 6 3 45

scanString$75:	; Goto 50
x11988:	jmp scanString$50	; 2: 235 140

scanString$76:	; SignedLessThanEqual 126 precision 0
x11990:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x11994:	jle scanString$126	; 4: 15 142 227 0

scanString$77:	; BinaryAdd £temporary1329 string index
x11998:	mov si, [bp + 6]	; 3: 139 118 6
x12001:	add si, [bp + 10]	; 3: 3 118 10

scanString$78:	; Deref £temporary1328 -> £temporary1329 £temporary1329 0

scanString$79:	; Assign £temporary1328 -> £temporary1329 0
x12004:	mov byte [si], 0	; 3: 198 4 0

scanString$80:	; Increment g_inChars
x12007:	inc word [g_inChars]	; 4: 255 6 3 45

scanString$81:	; Goto 126
x12011:	jmp scanString$126	; 3: 233 211 0

scanString$82:	; NotEqual 103 precision 0
x12014:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x12018:	jne scanString$103	; 2: 117 95

scanString$83:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$84:	; IntegralToIntegral £temporary1332 input
x12020:	mov al, [bp + 12]	; 3: 138 70 12
x12023:	and ax, 255	; 3: 37 255 0
x12026:	cmp al, 0	; 2: 60 0
x12028:	jge scanString$85	; 2: 125 4
x12030:	neg al	; 2: 246 216
x12032:	neg ax	; 2: 247 216

scanString$85:	; Parameter 15 £temporary1332 6
x12034:	mov [bp + 21], ax	; 3: 137 70 21

scanString$86:	; Call 15 isspace 0
x12037:	mov word [bp + 15], scanString$87	; 5: 199 70 15 19 47
x12042:	mov [bp + 17], bp	; 3: 137 110 17
x12045:	add bp, 15	; 3: 131 197 15
x12048:	jmp isspace	; 3: 233 195 0

scanString$87:	; PostCall 15

scanString$88:	; GetReturnValue £temporary1333

scanString$89:	; NotEqual 101 £temporary1333 0
x12051:	cmp bx, 0	; 3: 131 251 0
x12054:	jne scanString$101	; 2: 117 53

scanString$90:	; IntegralToIntegral £temporary1336 input
x12056:	mov al, [bp + 12]	; 3: 138 70 12
x12059:	and ax, 255	; 3: 37 255 0
x12062:	cmp al, 0	; 2: 60 0
x12064:	jge scanString$91	; 2: 125 4
x12066:	neg al	; 2: 246 216
x12068:	neg ax	; 2: 247 216

scanString$91:	; Equal 101 £temporary1336 -1
x12070:	cmp ax, -1	; 3: 131 248 255
x12073:	je scanString$101	; 2: 116 34

scanString$92:	; Equal 101 input 10
x12075:	cmp byte [bp + 12], 10	; 4: 128 126 12 10
x12079:	je scanString$101	; 2: 116 28

scanString$93:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$94:	; Call 15 scanChar 0
x12081:	mov word [bp + 15], scanString$95	; 5: 199 70 15 63 47
x12086:	mov [bp + 17], bp	; 3: 137 110 17
x12089:	add bp, 15	; 3: 131 197 15
x12092:	jmp scanChar	; 3: 233 219 253

scanString$95:	; PostCall 15

scanString$96:	; GetReturnValue £temporary1341

scanString$97:	; Assign input £temporary1341
x12095:	mov [bp + 12], bl	; 3: 136 94 12

scanString$98:	; Assign found 1
x12098:	mov word [bp + 13], 1	; 5: 199 70 13 1 0

scanString$99:	; Increment g_inChars
x12103:	inc word [g_inChars]	; 4: 255 6 3 45

scanString$100:	; Goto 83
x12107:	jmp scanString$83	; 2: 235 167

scanString$101:	; Increment g_inChars
x12109:	inc word [g_inChars]	; 4: 255 6 3 45

scanString$102:	; Goto 126
x12113:	jmp scanString$126	; 2: 235 110

scanString$103:	; Assign £temporary1344 precision
x12115:	mov ax, [bp + 8]	; 3: 139 70 8

scanString$104:	; Decrement precision
x12118:	dec word [bp + 8]	; 3: 255 78 8

scanString$105:	; SignedLessThanEqual 124 £temporary1344 0
x12121:	cmp ax, 0	; 3: 131 248 0
x12124:	jle scanString$124	; 2: 126 89

scanString$106:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$107:	; IntegralToIntegral £temporary1346 input
x12126:	mov al, [bp + 12]	; 3: 138 70 12
x12129:	and ax, 255	; 3: 37 255 0
x12132:	cmp al, 0	; 2: 60 0
x12134:	jge scanString$108	; 2: 125 4
x12136:	neg al	; 2: 246 216
x12138:	neg ax	; 2: 247 216

scanString$108:	; Parameter 15 £temporary1346 6
x12140:	mov [bp + 21], ax	; 3: 137 70 21

scanString$109:	; Call 15 isspace 0
x12143:	mov word [bp + 15], scanString$110	; 5: 199 70 15 125 47
x12148:	mov [bp + 17], bp	; 3: 137 110 17
x12151:	add bp, 15	; 3: 131 197 15
x12154:	nop	; 1: 144
x12155:	jmp isspace	; 2: 235 89

scanString$110:	; PostCall 15

scanString$111:	; GetReturnValue £temporary1347

scanString$112:	; NotEqual 124 £temporary1347 0
x12157:	cmp bx, 0	; 3: 131 251 0
x12160:	jne scanString$124	; 2: 117 53

scanString$113:	; IntegralToIntegral £temporary1350 input
x12162:	mov al, [bp + 12]	; 3: 138 70 12
x12165:	and ax, 255	; 3: 37 255 0
x12168:	cmp al, 0	; 2: 60 0
x12170:	jge scanString$114	; 2: 125 4
x12172:	neg al	; 2: 246 216
x12174:	neg ax	; 2: 247 216

scanString$114:	; Equal 124 £temporary1350 -1
x12176:	cmp ax, -1	; 3: 131 248 255
x12179:	je scanString$124	; 2: 116 34

scanString$115:	; Equal 124 input 10
x12181:	cmp byte [bp + 12], 10	; 4: 128 126 12 10
x12185:	je scanString$124	; 2: 116 28

scanString$116:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$117:	; Call 15 scanChar 0
x12187:	mov word [bp + 15], scanString$118	; 5: 199 70 15 169 47
x12192:	mov [bp + 17], bp	; 3: 137 110 17
x12195:	add bp, 15	; 3: 131 197 15
x12198:	jmp scanChar	; 3: 233 113 253

scanString$118:	; PostCall 15

scanString$119:	; GetReturnValue £temporary1356

scanString$120:	; Assign input £temporary1356
x12201:	mov [bp + 12], bl	; 3: 136 94 12

scanString$121:	; Assign found 1
x12204:	mov word [bp + 13], 1	; 5: 199 70 13 1 0

scanString$122:	; Increment g_inChars
x12209:	inc word [g_inChars]	; 4: 255 6 3 45

scanString$123:	; Goto 103
x12213:	jmp scanString$103	; 2: 235 156

scanString$124:	; SignedLessThanEqual 126 precision 0
x12215:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x12219:	jle scanString$126	; 2: 126 4

scanString$125:	; Increment g_inChars
x12221:	inc word [g_inChars]	; 4: 255 6 3 45

scanString$126:	; Equal 128 found 0
x12225:	cmp word [bp + 13], 0	; 4: 131 126 13 0
x12229:	je scanString$128	; 2: 116 4

scanString$127:	; Increment g_inCount
x12231:	inc word [g_inCount]	; 4: 255 6 1 45

scanString$128:	; Return 0
x12235:	mov ax, [bp]	; 3: 139 70 0
x12238:	mov di, [bp + 4]	; 3: 139 126 4
x12241:	mov bp, [bp + 2]	; 3: 139 110 2
x12244:	jmp ax	; 2: 255 224

scanString$129:	; FunctionEnd scanString

isspace:	; Equal 6 c 32
x12246:	cmp word [bp + 6], 32	; 4: 131 126 6 32
x12250:	je isspace$6	; 2: 116 30

isspace$1:	; Equal 6 c 12
x12252:	cmp word [bp + 6], 12	; 4: 131 126 6 12
x12256:	je isspace$6	; 2: 116 24

isspace$2:	; Equal 6 c 10
x12258:	cmp word [bp + 6], 10	; 4: 131 126 6 10
x12262:	je isspace$6	; 2: 116 18

isspace$3:	; Equal 6 c 13
x12264:	cmp word [bp + 6], 13	; 4: 131 126 6 13
x12268:	je isspace$6	; 2: 116 12

isspace$4:	; Equal 6 c 9
x12270:	cmp word [bp + 6], 9	; 4: 131 126 6 9
x12274:	je isspace$6	; 2: 116 6

isspace$5:	; NotEqual 8 c 11
x12276:	cmp word [bp + 6], 11	; 4: 131 126 6 11
x12280:	jne isspace$8	; 2: 117 5

isspace$6:	; Assign £temporary464 1
x12282:	mov bx, 1	; 3: 187 1 0

isspace$7:	; Goto 9
x12285:	jmp isspace$9	; 2: 235 3

isspace$8:	; Assign £temporary464 0
x12287:	mov bx, 0	; 3: 187 0 0

isspace$9:	; SetReturnValue £temporary464

isspace$10:	; Return £temporary464
x12290:	mov ax, [bp]	; 3: 139 70 0
x12293:	mov di, [bp + 4]	; 3: 139 126 4
x12296:	mov bp, [bp + 2]	; 3: 139 110 2
x12299:	jmp ax	; 2: 255 224

isspace$11:	; FunctionEnd isspace

scanLongInt:	; Assign longValue 0
x12301:	mov dword [bp + 8], 0	; 8: 102 199 70 8 0 0 0 0

scanLongInt$1:	; Assign minus 0
x12309:	mov word [bp + 12], 0	; 5: 199 70 12 0 0

scanLongInt$2:	; Assign found 0
x12314:	mov word [bp + 14], 0	; 5: 199 70 14 0 0

scanLongInt$3:	; CallHeader 16 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$4:	; Call 16 scanChar 0
x12319:	mov word [bp + 16], scanLongInt$5	; 5: 199 70 16 45 48
x12324:	mov [bp + 18], bp	; 3: 137 110 18
x12327:	add bp, 16	; 3: 131 197 16
x12330:	jmp scanChar	; 3: 233 237 252

scanLongInt$5:	; PostCall 16

scanLongInt$6:	; GetReturnValue £temporary1419

scanLongInt$7:	; Assign input £temporary1419
x12333:	mov [bp + 16], bl	; 3: 136 94 16

scanLongInt$8:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$9:	; IntegralToIntegral £temporary1420 input
x12336:	mov al, [bp + 16]	; 3: 138 70 16
x12339:	and ax, 255	; 3: 37 255 0
x12342:	cmp al, 0	; 2: 60 0
x12344:	jge scanLongInt$10	; 2: 125 4
x12346:	neg al	; 2: 246 216
x12348:	neg ax	; 2: 247 216

scanLongInt$10:	; Parameter 17 £temporary1420 6
x12350:	mov [bp + 23], ax	; 3: 137 70 23

scanLongInt$11:	; Call 17 isspace 0
x12353:	mov word [bp + 17], scanLongInt$12	; 5: 199 70 17 79 48
x12358:	mov [bp + 19], bp	; 3: 137 110 19
x12361:	add bp, 17	; 3: 131 197 17
x12364:	nop	; 1: 144
x12365:	jmp isspace	; 2: 235 135

scanLongInt$12:	; PostCall 17

scanLongInt$13:	; GetReturnValue £temporary1421

scanLongInt$14:	; Equal 21 £temporary1421 0
x12367:	cmp bx, 0	; 3: 131 251 0
x12370:	je scanLongInt$21	; 2: 116 19

scanLongInt$15:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$16:	; Call 17 scanChar 0
x12372:	mov word [bp + 17], scanLongInt$17	; 5: 199 70 17 98 48
x12377:	mov [bp + 19], bp	; 3: 137 110 19
x12380:	add bp, 17	; 3: 131 197 17
x12383:	jmp scanChar	; 3: 233 184 252

scanLongInt$17:	; PostCall 17

scanLongInt$18:	; GetReturnValue £temporary1422

scanLongInt$19:	; Assign input £temporary1422
x12386:	mov [bp + 16], bl	; 3: 136 94 16

scanLongInt$20:	; Goto 8
x12389:	jmp scanLongInt$8	; 2: 235 201

scanLongInt$21:	; NotEqual 28 input 43
x12391:	cmp byte [bp + 16], 43	; 4: 128 126 16 43
x12395:	jne scanLongInt$28	; 2: 117 19

scanLongInt$22:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$23:	; Call 17 scanChar 0
x12397:	mov word [bp + 17], scanLongInt$24	; 5: 199 70 17 123 48
x12402:	mov [bp + 19], bp	; 3: 137 110 19
x12405:	add bp, 17	; 3: 131 197 17
x12408:	jmp scanChar	; 3: 233 159 252

scanLongInt$24:	; PostCall 17

scanLongInt$25:	; GetReturnValue £temporary1425

scanLongInt$26:	; Assign input £temporary1425
x12411:	mov [bp + 16], bl	; 3: 136 94 16

scanLongInt$27:	; Goto 35
x12414:	jmp scanLongInt$35	; 2: 235 28

scanLongInt$28:	; NotEqual 35 input 45
x12416:	cmp byte [bp + 16], 45	; 4: 128 126 16 45
x12420:	jne scanLongInt$35	; 2: 117 22

scanLongInt$29:	; Assign minus 1
x12422:	mov word [bp + 12], 1	; 5: 199 70 12 1 0

scanLongInt$30:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$31:	; Call 17 scanChar 0
x12427:	mov word [bp + 17], scanLongInt$32	; 5: 199 70 17 153 48
x12432:	mov [bp + 19], bp	; 3: 137 110 19
x12435:	add bp, 17	; 3: 131 197 17
x12438:	jmp scanChar	; 3: 233 129 252

scanLongInt$32:	; PostCall 17

scanLongInt$33:	; GetReturnValue £temporary1427

scanLongInt$34:	; Assign input £temporary1427
x12441:	mov [bp + 16], bl	; 3: 136 94 16

scanLongInt$35:	; NotEqual 59 base 0
x12444:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x12448:	jne scanLongInt$59	; 2: 117 95

scanLongInt$36:	; NotEqual 58 input 48
x12450:	cmp byte [bp + 16], 48	; 4: 128 126 16 48
x12454:	jne scanLongInt$58	; 2: 117 84

scanLongInt$37:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$38:	; Call 17 scanChar 0
x12456:	mov word [bp + 17], scanLongInt$39	; 5: 199 70 17 182 48
x12461:	mov [bp + 19], bp	; 3: 137 110 19
x12464:	add bp, 17	; 3: 131 197 17
x12467:	jmp scanChar	; 3: 233 100 252

scanLongInt$39:	; PostCall 17

scanLongInt$40:	; GetReturnValue £temporary1430

scanLongInt$41:	; Assign input £temporary1430
x12470:	mov [bp + 16], bl	; 3: 136 94 16

scanLongInt$42:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$43:	; IntegralToIntegral £temporary1431 input
x12473:	mov al, [bp + 16]	; 3: 138 70 16
x12476:	and ax, 255	; 3: 37 255 0
x12479:	cmp al, 0	; 2: 60 0
x12481:	jge scanLongInt$44	; 2: 125 4
x12483:	neg al	; 2: 246 216
x12485:	neg ax	; 2: 247 216

scanLongInt$44:	; Parameter 17 £temporary1431 6
x12487:	mov [bp + 23], ax	; 3: 137 70 23

scanLongInt$45:	; Call 17 tolower 0
x12490:	mov word [bp + 17], scanLongInt$46	; 5: 199 70 17 216 48
x12495:	mov [bp + 19], bp	; 3: 137 110 19
x12498:	add bp, 17	; 3: 131 197 17
x12501:	jmp tolower	; 3: 233 0 240

scanLongInt$46:	; PostCall 17

scanLongInt$47:	; GetReturnValue £temporary1432

scanLongInt$48:	; NotEqual 56 £temporary1432 120
x12504:	cmp bx, 120	; 3: 131 251 120
x12507:	jne scanLongInt$56	; 2: 117 24

scanLongInt$49:	; Assign base 16
x12509:	mov word [bp + 6], 16	; 5: 199 70 6 16 0

scanLongInt$50:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$51:	; Call 17 scanChar 0
x12514:	mov word [bp + 17], scanLongInt$52	; 5: 199 70 17 240 48
x12519:	mov [bp + 19], bp	; 3: 137 110 19
x12522:	add bp, 17	; 3: 131 197 17
x12525:	jmp scanChar	; 3: 233 42 252

scanLongInt$52:	; PostCall 17

scanLongInt$53:	; GetReturnValue £temporary1434

scanLongInt$54:	; Assign input £temporary1434
x12528:	mov [bp + 16], bl	; 3: 136 94 16

scanLongInt$55:	; Goto 59
x12531:	jmp scanLongInt$59	; 2: 235 12

scanLongInt$56:	; Assign base 8
x12533:	mov word [bp + 6], 8	; 5: 199 70 6 8 0

scanLongInt$57:	; Goto 59
x12538:	jmp scanLongInt$59	; 2: 235 5

scanLongInt$58:	; Assign base 10
x12540:	mov word [bp + 6], 10	; 5: 199 70 6 10 0

scanLongInt$59:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$60:	; Parameter 17 input 6
x12545:	mov al, [bp + 16]	; 3: 138 70 16
x12548:	mov [bp + 23], al	; 3: 136 70 23

scanLongInt$61:	; Parameter 17 base 7
x12551:	mov ax, [bp + 6]	; 3: 139 70 6
x12554:	mov [bp + 24], ax	; 3: 137 70 24

scanLongInt$62:	; Call 17 isDigitInBase 0
x12557:	mov word [bp + 17], scanLongInt$63	; 5: 199 70 17 27 49
x12562:	mov [bp + 19], bp	; 3: 137 110 19
x12565:	add bp, 17	; 3: 131 197 17
x12568:	jmp @1634$isDigitInBase	; 3: 233 167 0

scanLongInt$63:	; PostCall 17

scanLongInt$64:	; GetReturnValue £temporary1435

scanLongInt$65:	; Equal 82 £temporary1435 0
x12571:	cmp bx, 0	; 3: 131 251 0
x12574:	je scanLongInt$82	; 2: 116 100

scanLongInt$66:	; IntegralToIntegral £temporary1436 base
x12576:	mov bx, [bp + 6]	; 3: 139 94 6
x12579:	and ebx, 65535	; 7: 102 129 227 255 255 0 0
x12586:	cmp bx, 0	; 3: 131 251 0
x12589:	jge scanLongInt$67	; 2: 125 5
x12591:	neg bx	; 2: 247 219
x12593:	neg ebx	; 3: 102 247 219

scanLongInt$67:	; SignedMultiply longValue longValue £temporary1436
x12596:	mov eax, [bp + 8]	; 4: 102 139 70 8
x12600:	xor edx, edx	; 3: 102 49 210
x12603:	imul ebx	; 3: 102 247 235
x12606:	mov [bp + 8], eax	; 4: 102 137 70 8

scanLongInt$68:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$69:	; Parameter 17 input 6
x12610:	mov al, [bp + 16]	; 3: 138 70 16
x12613:	mov [bp + 23], al	; 3: 136 70 23

scanLongInt$70:	; Call 17 digitToValue 0
x12616:	mov word [bp + 17], scanLongInt$71	; 5: 199 70 17 86 49
x12621:	mov [bp + 19], bp	; 3: 137 110 19
x12624:	add bp, 17	; 3: 131 197 17
x12627:	jmp @1670$digitToValue	; 3: 233 243 1

scanLongInt$71:	; PostCall 17

scanLongInt$72:	; GetReturnValue £temporary1438

scanLongInt$73:	; IntegralToIntegral £temporary1439 £temporary1438
x12630:	and ebx, 65535	; 7: 102 129 227 255 255 0 0
x12637:	cmp bx, 0	; 3: 131 251 0
x12640:	jge scanLongInt$74	; 2: 125 5
x12642:	neg bx	; 2: 247 219
x12644:	neg ebx	; 3: 102 247 219

scanLongInt$74:	; BinaryAdd longValue longValue £temporary1439
x12647:	add [bp + 8], ebx	; 4: 102 1 94 8

scanLongInt$75:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$76:	; Call 17 scanChar 0
x12651:	mov word [bp + 17], scanLongInt$77	; 5: 199 70 17 121 49
x12656:	mov [bp + 19], bp	; 3: 137 110 19
x12659:	add bp, 17	; 3: 131 197 17
x12662:	jmp scanChar	; 3: 233 161 251

scanLongInt$77:	; PostCall 17

scanLongInt$78:	; GetReturnValue £temporary1441

scanLongInt$79:	; Assign input £temporary1441
x12665:	mov [bp + 16], bl	; 3: 136 94 16

scanLongInt$80:	; Assign found 1
x12668:	mov word [bp + 14], 1	; 5: 199 70 14 1 0

scanLongInt$81:	; Goto 59
x12673:	jmp scanLongInt$59	; 3: 233 125 255

scanLongInt$82:	; Equal 85 minus 0
x12676:	cmp word [bp + 12], 0	; 4: 131 126 12 0
x12680:	je scanLongInt$85	; 2: 116 11

scanLongInt$83:	; UnarySubtract £temporary1443 longValue
x12682:	mov eax, [bp + 8]	; 4: 102 139 70 8
x12686:	neg eax	; 3: 102 247 216

scanLongInt$84:	; Assign longValue £temporary1443
x12689:	mov [bp + 8], eax	; 4: 102 137 70 8

scanLongInt$85:	; Equal 87 found 0
x12693:	cmp word [bp + 14], 0	; 4: 131 126 14 0
x12697:	je scanLongInt$87	; 2: 116 4

scanLongInt$86:	; Increment g_inCount
x12699:	inc word [g_inCount]	; 4: 255 6 1 45

scanLongInt$87:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$88:	; Parameter 17 input 6
x12703:	mov al, [bp + 16]	; 3: 138 70 16
x12706:	mov [bp + 23], al	; 3: 136 70 23

scanLongInt$89:	; Call 17 unscanChar 0
x12709:	mov word [bp + 17], scanLongInt$90	; 5: 199 70 17 179 49
x12714:	mov [bp + 19], bp	; 3: 137 110 19
x12717:	add bp, 17	; 3: 131 197 17
x12720:	jmp unscanChar	; 3: 233 112 2

scanLongInt$90:	; PostCall 17

scanLongInt$91:	; SetReturnValue longValue
x12723:	mov ebx, [bp + 8]	; 4: 102 139 94 8

scanLongInt$92:	; Return longValue
x12727:	mov ax, [bp]	; 3: 139 70 0
x12730:	mov di, [bp + 4]	; 3: 139 126 4
x12733:	mov bp, [bp + 2]	; 3: 139 110 2
x12736:	jmp ax	; 2: 255 224

scanLongInt$93:	; FunctionEnd scanLongInt

@1634$isDigitInBase:	; CallHeader 9 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1634$isDigitInBase$1:	; IntegralToIntegral £temporary1367 c
x12738:	mov al, [bp + 6]	; 3: 138 70 6
x12741:	and ax, 255	; 3: 37 255 0
x12744:	cmp al, 0	; 2: 60 0
x12746:	jge @1634$isDigitInBase$2	; 2: 125 4
x12748:	neg al	; 2: 246 216
x12750:	neg ax	; 2: 247 216

@1634$isDigitInBase$2:	; Parameter 9 £temporary1367 6
x12752:	mov [bp + 15], ax	; 3: 137 70 15

@1634$isDigitInBase$3:	; Call 9 isdigit 0
x12755:	mov word [bp + 9], @1634$isDigitInBase$4	; 5: 199 70 9 225 49
x12760:	mov [bp + 11], bp	; 3: 137 110 11
x12763:	add bp, 9	; 3: 131 197 9
x12766:	jmp isdigit	; 3: 233 37 245

@1634$isDigitInBase$4:	; PostCall 9

@1634$isDigitInBase$5:	; GetReturnValue £temporary1368

@1634$isDigitInBase$6:	; Equal 17 £temporary1368 0
x12769:	cmp bx, 0	; 3: 131 251 0
x12772:	je @1634$isDigitInBase$17	; 2: 116 52

@1634$isDigitInBase$7:	; BinarySubtract £temporary1369 c 48
x12774:	mov al, [bp + 6]	; 3: 138 70 6
x12777:	sub al, 48	; 2: 44 48

@1634$isDigitInBase$8:	; IntegralToIntegral £temporary1370 £temporary1369
x12779:	and ax, 255	; 3: 37 255 0
x12782:	cmp al, 0	; 2: 60 0
x12784:	jge @1634$isDigitInBase$9	; 2: 125 4
x12786:	neg al	; 2: 246 216
x12788:	neg ax	; 2: 247 216

@1634$isDigitInBase$9:	; Assign value £temporary1370
x12790:	mov [bp + 9], ax	; 3: 137 70 9

@1634$isDigitInBase$10:	; SignedLessThan 14 value 0
x12793:	cmp word [bp + 9], 0	; 4: 131 126 9 0
x12797:	jl @1634$isDigitInBase$14	; 2: 124 13

@1634$isDigitInBase$11:	; SignedGreaterThanEqual 14 value base
x12799:	mov ax, [bp + 7]	; 3: 139 70 7
x12802:	cmp [bp + 9], ax	; 3: 57 70 9
x12805:	jge @1634$isDigitInBase$14	; 2: 125 5

@1634$isDigitInBase$12:	; Assign £temporary1374 1
x12807:	mov bx, 1	; 3: 187 1 0

@1634$isDigitInBase$13:	; Goto 15
x12810:	jmp @1634$isDigitInBase$15	; 2: 235 3

@1634$isDigitInBase$14:	; Assign £temporary1374 0
x12812:	mov bx, 0	; 3: 187 0 0

@1634$isDigitInBase$15:	; SetReturnValue £temporary1374

@1634$isDigitInBase$16:	; Return £temporary1374
x12815:	mov ax, [bp]	; 3: 139 70 0
x12818:	mov di, [bp + 4]	; 3: 139 126 4
x12821:	mov bp, [bp + 2]	; 3: 139 110 2
x12824:	jmp ax	; 2: 255 224

@1634$isDigitInBase$17:	; CallHeader 9 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1634$isDigitInBase$18:	; IntegralToIntegral £temporary1375 c
x12826:	mov al, [bp + 6]	; 3: 138 70 6
x12829:	and ax, 255	; 3: 37 255 0
x12832:	cmp al, 0	; 2: 60 0
x12834:	jge @1634$isDigitInBase$19	; 2: 125 4
x12836:	neg al	; 2: 246 216
x12838:	neg ax	; 2: 247 216

@1634$isDigitInBase$19:	; Parameter 9 £temporary1375 6
x12840:	mov [bp + 15], ax	; 3: 137 70 15

@1634$isDigitInBase$20:	; Call 9 islower 0
x12843:	mov word [bp + 9], @1634$isDigitInBase$21	; 5: 199 70 9 57 50
x12848:	mov [bp + 11], bp	; 3: 137 110 11
x12851:	add bp, 9	; 3: 131 197 9
x12854:	jmp islower	; 3: 233 165 0

@1634$isDigitInBase$21:	; PostCall 9

@1634$isDigitInBase$22:	; GetReturnValue £temporary1376

@1634$isDigitInBase$23:	; Equal 34 £temporary1376 0
x12857:	cmp bx, 0	; 3: 131 251 0
x12860:	je @1634$isDigitInBase$34	; 2: 116 55

@1634$isDigitInBase$24:	; BinarySubtract £temporary1377 c 97
x12862:	mov al, [bp + 6]	; 3: 138 70 6
x12865:	sub al, 97	; 2: 44 97

@1634$isDigitInBase$25:	; IntegralToIntegral £temporary1378 £temporary1377
x12867:	and ax, 255	; 3: 37 255 0
x12870:	cmp al, 0	; 2: 60 0
x12872:	jge @1634$isDigitInBase$26	; 2: 125 4
x12874:	neg al	; 2: 246 216
x12876:	neg ax	; 2: 247 216

@1634$isDigitInBase$26:	; BinaryAdd value £temporary1378 10
x12878:	add ax, 10	; 3: 131 192 10
x12881:	mov [bp + 9], ax	; 3: 137 70 9

@1634$isDigitInBase$27:	; SignedLessThan 31 value 0
x12884:	cmp word [bp + 9], 0	; 4: 131 126 9 0
x12888:	jl @1634$isDigitInBase$31	; 2: 124 13

@1634$isDigitInBase$28:	; SignedGreaterThanEqual 31 value base
x12890:	mov ax, [bp + 7]	; 3: 139 70 7
x12893:	cmp [bp + 9], ax	; 3: 57 70 9
x12896:	jge @1634$isDigitInBase$31	; 2: 125 5

@1634$isDigitInBase$29:	; Assign £temporary1383 1
x12898:	mov bx, 1	; 3: 187 1 0

@1634$isDigitInBase$30:	; Goto 32
x12901:	jmp @1634$isDigitInBase$32	; 2: 235 3

@1634$isDigitInBase$31:	; Assign £temporary1383 0
x12903:	mov bx, 0	; 3: 187 0 0

@1634$isDigitInBase$32:	; SetReturnValue £temporary1383

@1634$isDigitInBase$33:	; Return £temporary1383
x12906:	mov ax, [bp]	; 3: 139 70 0
x12909:	mov di, [bp + 4]	; 3: 139 126 4
x12912:	mov bp, [bp + 2]	; 3: 139 110 2
x12915:	jmp ax	; 2: 255 224

@1634$isDigitInBase$34:	; CallHeader 9 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1634$isDigitInBase$35:	; IntegralToIntegral £temporary1384 c
x12917:	mov al, [bp + 6]	; 3: 138 70 6
x12920:	and ax, 255	; 3: 37 255 0
x12923:	cmp al, 0	; 2: 60 0
x12925:	jge @1634$isDigitInBase$36	; 2: 125 4
x12927:	neg al	; 2: 246 216
x12929:	neg ax	; 2: 247 216

@1634$isDigitInBase$36:	; Parameter 9 £temporary1384 6
x12931:	mov [bp + 15], ax	; 3: 137 70 15

@1634$isDigitInBase$37:	; Call 9 isupper 0
x12934:	mov word [bp + 9], @1634$isDigitInBase$38	; 5: 199 70 9 148 50
x12939:	mov [bp + 11], bp	; 3: 137 110 11
x12942:	add bp, 9	; 3: 131 197 9
x12945:	jmp isupper	; 3: 233 54 231

@1634$isDigitInBase$38:	; PostCall 9

@1634$isDigitInBase$39:	; GetReturnValue £temporary1385

@1634$isDigitInBase$40:	; Equal 51 £temporary1385 0
x12948:	cmp bx, 0	; 3: 131 251 0
x12951:	je @1634$isDigitInBase$51	; 2: 116 55

@1634$isDigitInBase$41:	; BinarySubtract £temporary1386 c 65
x12953:	mov al, [bp + 6]	; 3: 138 70 6
x12956:	sub al, 65	; 2: 44 65

@1634$isDigitInBase$42:	; IntegralToIntegral £temporary1387 £temporary1386
x12958:	and ax, 255	; 3: 37 255 0
x12961:	cmp al, 0	; 2: 60 0
x12963:	jge @1634$isDigitInBase$43	; 2: 125 4
x12965:	neg al	; 2: 246 216
x12967:	neg ax	; 2: 247 216

@1634$isDigitInBase$43:	; BinaryAdd value £temporary1387 10
x12969:	add ax, 10	; 3: 131 192 10
x12972:	mov [bp + 9], ax	; 3: 137 70 9

@1634$isDigitInBase$44:	; SignedLessThan 48 value 0
x12975:	cmp word [bp + 9], 0	; 4: 131 126 9 0
x12979:	jl @1634$isDigitInBase$48	; 2: 124 13

@1634$isDigitInBase$45:	; SignedGreaterThanEqual 48 value base
x12981:	mov ax, [bp + 7]	; 3: 139 70 7
x12984:	cmp [bp + 9], ax	; 3: 57 70 9
x12987:	jge @1634$isDigitInBase$48	; 2: 125 5

@1634$isDigitInBase$46:	; Assign £temporary1392 1
x12989:	mov bx, 1	; 3: 187 1 0

@1634$isDigitInBase$47:	; Goto 49
x12992:	jmp @1634$isDigitInBase$49	; 2: 235 3

@1634$isDigitInBase$48:	; Assign £temporary1392 0
x12994:	mov bx, 0	; 3: 187 0 0

@1634$isDigitInBase$49:	; SetReturnValue £temporary1392

@1634$isDigitInBase$50:	; Return £temporary1392
x12997:	mov ax, [bp]	; 3: 139 70 0
x13000:	mov di, [bp + 4]	; 3: 139 126 4
x13003:	mov bp, [bp + 2]	; 3: 139 110 2
x13006:	jmp ax	; 2: 255 224

@1634$isDigitInBase$51:	; SetReturnValue 0
x13008:	mov bx, 0	; 3: 187 0 0

@1634$isDigitInBase$52:	; Return 0
x13011:	mov ax, [bp]	; 3: 139 70 0
x13014:	mov di, [bp + 4]	; 3: 139 126 4
x13017:	mov bp, [bp + 2]	; 3: 139 110 2
x13020:	jmp ax	; 2: 255 224

@1634$isDigitInBase$53:	; FunctionEnd isDigitInBase

islower:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

islower$1:	; Call 8 localeconv 0
x13022:	mov word [bp + 8], islower$2	; 5: 199 70 8 236 50
x13027:	mov [bp + 10], bp	; 3: 137 110 10
x13030:	add bp, 8	; 3: 131 197 8
x13033:	jmp localeconv	; 3: 233 73 231

islower$2:	; PostCall 8

islower$3:	; GetReturnValue £temporary373

islower$4:	; Assign localeConvPtr £temporary373
x13036:	mov [bp + 8], bx	; 3: 137 94 8

islower$5:	; Equal 19 localeConvPtr 0
x13039:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x13043:	je islower$19	; 2: 116 53

islower$6:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

islower$7:	; Deref £temporary375 -> localeConvPtr localeConvPtr 12
x13045:	mov si, [bp + 8]	; 3: 139 118 8

islower$8:	; Parameter 10 £temporary375 -> localeConvPtr 6
x13048:	mov ax, [si + 12]	; 3: 139 68 12
x13051:	mov [bp + 16], ax	; 3: 137 70 16

islower$9:	; Parameter 10 c 8
x13054:	mov ax, [bp + 6]	; 3: 139 70 6
x13057:	mov [bp + 18], ax	; 3: 137 70 18

islower$10:	; Call 10 strchr 0
x13060:	mov word [bp + 10], islower$11	; 5: 199 70 10 18 51
x13065:	mov [bp + 12], bp	; 3: 137 110 12
x13068:	add bp, 10	; 3: 131 197 10
x13071:	jmp strchr	; 3: 233 101 234

islower$11:	; PostCall 10

islower$12:	; GetReturnValue £temporary376

islower$13:	; Equal 16 £temporary376 0
x13074:	cmp bx, 0	; 3: 131 251 0
x13077:	je islower$16	; 2: 116 5

islower$14:	; Assign £temporary378 1
x13079:	mov bx, 1	; 3: 187 1 0

islower$15:	; Goto 17
x13082:	jmp islower$17	; 2: 235 3

islower$16:	; Assign £temporary378 0
x13084:	mov bx, 0	; 3: 187 0 0

islower$17:	; SetReturnValue £temporary378

islower$18:	; Return £temporary378
x13087:	mov ax, [bp]	; 3: 139 70 0
x13090:	mov di, [bp + 4]	; 3: 139 126 4
x13093:	mov bp, [bp + 2]	; 3: 139 110 2
x13096:	jmp ax	; 2: 255 224

islower$19:	; SignedLessThan 23 c 97
x13098:	cmp word [bp + 6], 97	; 4: 131 126 6 97
x13102:	jl islower$23	; 2: 124 11

islower$20:	; SignedGreaterThan 23 c 122
x13104:	cmp word [bp + 6], 122	; 4: 131 126 6 122
x13108:	jg islower$23	; 2: 127 5

islower$21:	; Assign £temporary382 1
x13110:	mov bx, 1	; 3: 187 1 0

islower$22:	; Goto 24
x13113:	jmp islower$24	; 2: 235 3

islower$23:	; Assign £temporary382 0
x13115:	mov bx, 0	; 3: 187 0 0

islower$24:	; SetReturnValue £temporary382

islower$25:	; Return £temporary382
x13118:	mov ax, [bp]	; 3: 139 70 0
x13121:	mov di, [bp + 4]	; 3: 139 126 4
x13124:	mov bp, [bp + 2]	; 3: 139 110 2
x13127:	jmp ax	; 2: 255 224

islower$26:	; FunctionEnd islower

@1670$digitToValue:	; CallHeader 7 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1670$digitToValue$1:	; IntegralToIntegral £temporary1399 c
x13129:	mov al, [bp + 6]	; 3: 138 70 6
x13132:	and ax, 255	; 3: 37 255 0
x13135:	cmp al, 0	; 2: 60 0
x13137:	jge @1670$digitToValue$2	; 2: 125 4
x13139:	neg al	; 2: 246 216
x13141:	neg ax	; 2: 247 216

@1670$digitToValue$2:	; Parameter 7 £temporary1399 6
x13143:	mov [bp + 13], ax	; 3: 137 70 13

@1670$digitToValue$3:	; Call 7 isdigit 0
x13146:	mov word [bp + 7], @1670$digitToValue$4	; 5: 199 70 7 104 51
x13151:	mov [bp + 9], bp	; 3: 137 110 9
x13154:	add bp, 7	; 3: 131 197 7
x13157:	jmp isdigit	; 3: 233 158 243

@1670$digitToValue$4:	; PostCall 7

@1670$digitToValue$5:	; GetReturnValue £temporary1400

@1670$digitToValue$6:	; Equal 11 £temporary1400 0
x13160:	cmp bx, 0	; 3: 131 251 0
x13163:	je @1670$digitToValue$11	; 2: 116 30

@1670$digitToValue$7:	; BinarySubtract £temporary1401 c 48
x13165:	mov bl, [bp + 6]	; 3: 138 94 6
x13168:	sub bl, 48	; 3: 128 235 48

@1670$digitToValue$8:	; IntegralToIntegral £temporary1402 £temporary1401
x13171:	and bx, 255	; 4: 129 227 255 0
x13175:	cmp bl, 0	; 3: 128 251 0
x13178:	jge @1670$digitToValue$9	; 2: 125 4
x13180:	neg bl	; 2: 246 219
x13182:	neg bx	; 2: 247 219

@1670$digitToValue$9:	; SetReturnValue £temporary1402

@1670$digitToValue$10:	; Return £temporary1402
x13184:	mov ax, [bp]	; 3: 139 70 0
x13187:	mov di, [bp + 4]	; 3: 139 126 4
x13190:	mov bp, [bp + 2]	; 3: 139 110 2
x13193:	jmp ax	; 2: 255 224

@1670$digitToValue$11:	; CallHeader 7 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1670$digitToValue$12:	; IntegralToIntegral £temporary1403 c
x13195:	mov al, [bp + 6]	; 3: 138 70 6
x13198:	and ax, 255	; 3: 37 255 0
x13201:	cmp al, 0	; 2: 60 0
x13203:	jge @1670$digitToValue$13	; 2: 125 4
x13205:	neg al	; 2: 246 216
x13207:	neg ax	; 2: 247 216

@1670$digitToValue$13:	; Parameter 7 £temporary1403 6
x13209:	mov [bp + 13], ax	; 3: 137 70 13

@1670$digitToValue$14:	; Call 7 islower 0
x13212:	mov word [bp + 7], @1670$digitToValue$15	; 5: 199 70 7 170 51
x13217:	mov [bp + 9], bp	; 3: 137 110 9
x13220:	add bp, 7	; 3: 131 197 7
x13223:	jmp islower	; 3: 233 52 255

@1670$digitToValue$15:	; PostCall 7

@1670$digitToValue$16:	; GetReturnValue £temporary1404

@1670$digitToValue$17:	; Equal 23 £temporary1404 0
x13226:	cmp bx, 0	; 3: 131 251 0
x13229:	je @1670$digitToValue$23	; 2: 116 33

@1670$digitToValue$18:	; BinarySubtract £temporary1405 c 97
x13231:	mov bl, [bp + 6]	; 3: 138 94 6
x13234:	sub bl, 97	; 3: 128 235 97

@1670$digitToValue$19:	; IntegralToIntegral £temporary1406 £temporary1405
x13237:	and bx, 255	; 4: 129 227 255 0
x13241:	cmp bl, 0	; 3: 128 251 0
x13244:	jge @1670$digitToValue$20	; 2: 125 4
x13246:	neg bl	; 2: 246 219
x13248:	neg bx	; 2: 247 219

@1670$digitToValue$20:	; BinaryAdd £temporary1407 £temporary1406 10
x13250:	add bx, 10	; 3: 131 195 10

@1670$digitToValue$21:	; SetReturnValue £temporary1407

@1670$digitToValue$22:	; Return £temporary1407
x13253:	mov ax, [bp]	; 3: 139 70 0
x13256:	mov di, [bp + 4]	; 3: 139 126 4
x13259:	mov bp, [bp + 2]	; 3: 139 110 2
x13262:	jmp ax	; 2: 255 224

@1670$digitToValue$23:	; CallHeader 7 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1670$digitToValue$24:	; IntegralToIntegral £temporary1408 c
x13264:	mov al, [bp + 6]	; 3: 138 70 6
x13267:	and ax, 255	; 3: 37 255 0
x13270:	cmp al, 0	; 2: 60 0
x13272:	jge @1670$digitToValue$25	; 2: 125 4
x13274:	neg al	; 2: 246 216
x13276:	neg ax	; 2: 247 216

@1670$digitToValue$25:	; Parameter 7 £temporary1408 6
x13278:	mov [bp + 13], ax	; 3: 137 70 13

@1670$digitToValue$26:	; Call 7 isupper 0
x13281:	mov word [bp + 7], @1670$digitToValue$27	; 5: 199 70 7 239 51
x13286:	mov [bp + 9], bp	; 3: 137 110 9
x13289:	add bp, 7	; 3: 131 197 7
x13292:	jmp isupper	; 3: 233 219 229

@1670$digitToValue$27:	; PostCall 7

@1670$digitToValue$28:	; GetReturnValue £temporary1409

@1670$digitToValue$29:	; Equal 35 £temporary1409 0
x13295:	cmp bx, 0	; 3: 131 251 0
x13298:	je @1670$digitToValue$35	; 2: 116 33

@1670$digitToValue$30:	; BinarySubtract £temporary1410 c 65
x13300:	mov bl, [bp + 6]	; 3: 138 94 6
x13303:	sub bl, 65	; 3: 128 235 65

@1670$digitToValue$31:	; IntegralToIntegral £temporary1411 £temporary1410
x13306:	and bx, 255	; 4: 129 227 255 0
x13310:	cmp bl, 0	; 3: 128 251 0
x13313:	jge @1670$digitToValue$32	; 2: 125 4
x13315:	neg bl	; 2: 246 219
x13317:	neg bx	; 2: 247 219

@1670$digitToValue$32:	; BinaryAdd £temporary1412 £temporary1411 10
x13319:	add bx, 10	; 3: 131 195 10

@1670$digitToValue$33:	; SetReturnValue £temporary1412

@1670$digitToValue$34:	; Return £temporary1412
x13322:	mov ax, [bp]	; 3: 139 70 0
x13325:	mov di, [bp + 4]	; 3: 139 126 4
x13328:	mov bp, [bp + 2]	; 3: 139 110 2
x13331:	jmp ax	; 2: 255 224

@1670$digitToValue$35:	; SetReturnValue 0
x13333:	mov bx, 0	; 3: 187 0 0

@1670$digitToValue$36:	; Return 0
x13336:	mov ax, [bp]	; 3: 139 70 0
x13339:	mov di, [bp + 4]	; 3: 139 126 4
x13342:	mov bp, [bp + 2]	; 3: 139 110 2
x13345:	jmp ax	; 2: 255 224

@1670$digitToValue$37:	; FunctionEnd digitToValue

unscanChar:	; Case 4 g_inStatus 0
x13347:	mov ax, [g_inStatus]	; 3: 161 221 39
x13350:	cmp ax, 0	; 3: 131 248 0
x13353:	je unscanChar$4	; 2: 116 7

unscanChar$1:	; Case 6 g_inStatus 1
x13355:	cmp ax, 1	; 3: 131 248 1
x13358:	je unscanChar$6	; 2: 116 8

unscanChar$2:	; CaseEnd g_inStatus

unscanChar$3:	; Goto 7
x13360:	jmp unscanChar$7	; 2: 235 10

unscanChar$4:	; Decrement g_inChars
x13362:	dec word [g_inChars]	; 4: 255 14 3 45

unscanChar$5:	; Goto 7
x13366:	jmp unscanChar$7	; 2: 235 4

unscanChar$6:	; Decrement g_inChars
x13368:	dec word [g_inChars]	; 4: 255 14 3 45

unscanChar$7:	; Return 0
x13372:	mov ax, [bp]	; 3: 139 70 0
x13375:	mov di, [bp + 4]	; 3: 139 126 4
x13378:	mov bp, [bp + 2]	; 3: 139 110 2
x13381:	jmp ax	; 2: 255 224

unscanChar$8:	; FunctionEnd unscanChar

scanUnsignedLongInt:	; Assign unsignedLongValue 0
x13383:	mov dword [bp + 8], 0	; 8: 102 199 70 8 0 0 0 0

scanUnsignedLongInt$1:	; CallHeader 16 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$2:	; Call 16 scanChar 0
x13391:	mov word [bp + 16], scanUnsignedLongInt$3	; 5: 199 70 16 93 52
x13396:	mov [bp + 18], bp	; 3: 137 110 18
x13399:	add bp, 16	; 3: 131 197 16
x13402:	jmp scanChar	; 3: 233 189 248

scanUnsignedLongInt$3:	; PostCall 16

scanUnsignedLongInt$4:	; GetReturnValue £temporary1454

scanUnsignedLongInt$5:	; Assign input £temporary1454
x13405:	mov [bp + 16], bl	; 3: 136 94 16

scanUnsignedLongInt$6:	; Assign found 1
x13408:	mov word [bp + 17], 1	; 5: 199 70 17 1 0

scanUnsignedLongInt$7:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$8:	; IntegralToIntegral £temporary1455 input
x13413:	mov al, [bp + 16]	; 3: 138 70 16
x13416:	and ax, 255	; 3: 37 255 0
x13419:	cmp al, 0	; 2: 60 0
x13421:	jge scanUnsignedLongInt$9	; 2: 125 4
x13423:	neg al	; 2: 246 216
x13425:	neg ax	; 2: 247 216

scanUnsignedLongInt$9:	; Parameter 19 £temporary1455 6
x13427:	mov [bp + 25], ax	; 3: 137 70 25

scanUnsignedLongInt$10:	; Call 19 isspace 0
x13430:	mov word [bp + 19], scanUnsignedLongInt$11	; 5: 199 70 19 132 52
x13435:	mov [bp + 21], bp	; 3: 137 110 21
x13438:	add bp, 19	; 3: 131 197 19
x13441:	jmp isspace	; 3: 233 82 251

scanUnsignedLongInt$11:	; PostCall 19

scanUnsignedLongInt$12:	; GetReturnValue £temporary1456

scanUnsignedLongInt$13:	; Equal 20 £temporary1456 0
x13444:	cmp bx, 0	; 3: 131 251 0
x13447:	je scanUnsignedLongInt$20	; 2: 116 19

scanUnsignedLongInt$14:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$15:	; Call 19 scanChar 0
x13449:	mov word [bp + 19], scanUnsignedLongInt$16	; 5: 199 70 19 151 52
x13454:	mov [bp + 21], bp	; 3: 137 110 21
x13457:	add bp, 19	; 3: 131 197 19
x13460:	jmp scanChar	; 3: 233 131 248

scanUnsignedLongInt$16:	; PostCall 19

scanUnsignedLongInt$17:	; GetReturnValue £temporary1457

scanUnsignedLongInt$18:	; Assign input £temporary1457
x13463:	mov [bp + 16], bl	; 3: 136 94 16

scanUnsignedLongInt$19:	; Goto 7
x13466:	jmp scanUnsignedLongInt$7	; 2: 235 201

scanUnsignedLongInt$20:	; NotEqual 26 input 43
x13468:	cmp byte [bp + 16], 43	; 4: 128 126 16 43
x13472:	jne scanUnsignedLongInt$26	; 2: 117 17

scanUnsignedLongInt$21:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$22:	; Call 19 scanChar 0
x13474:	mov word [bp + 19], scanUnsignedLongInt$23	; 5: 199 70 19 176 52
x13479:	mov [bp + 21], bp	; 3: 137 110 21
x13482:	add bp, 19	; 3: 131 197 19
x13485:	jmp scanChar	; 3: 233 106 248

scanUnsignedLongInt$23:	; PostCall 19

scanUnsignedLongInt$24:	; GetReturnValue £temporary1460

scanUnsignedLongInt$25:	; Assign input £temporary1460
x13488:	mov [bp + 16], bl	; 3: 136 94 16

scanUnsignedLongInt$26:	; NotEqual 50 base 0
x13491:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x13495:	jne scanUnsignedLongInt$50	; 2: 117 95

scanUnsignedLongInt$27:	; NotEqual 49 input 48
x13497:	cmp byte [bp + 16], 48	; 4: 128 126 16 48
x13501:	jne scanUnsignedLongInt$49	; 2: 117 84

scanUnsignedLongInt$28:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$29:	; Call 19 scanChar 0
x13503:	mov word [bp + 19], scanUnsignedLongInt$30	; 5: 199 70 19 205 52
x13508:	mov [bp + 21], bp	; 3: 137 110 21
x13511:	add bp, 19	; 3: 131 197 19
x13514:	jmp scanChar	; 3: 233 77 248

scanUnsignedLongInt$30:	; PostCall 19

scanUnsignedLongInt$31:	; GetReturnValue £temporary1463

scanUnsignedLongInt$32:	; Assign input £temporary1463
x13517:	mov [bp + 16], bl	; 3: 136 94 16

scanUnsignedLongInt$33:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$34:	; IntegralToIntegral £temporary1464 input
x13520:	mov al, [bp + 16]	; 3: 138 70 16
x13523:	and ax, 255	; 3: 37 255 0
x13526:	cmp al, 0	; 2: 60 0
x13528:	jge scanUnsignedLongInt$35	; 2: 125 4
x13530:	neg al	; 2: 246 216
x13532:	neg ax	; 2: 247 216

scanUnsignedLongInt$35:	; Parameter 19 £temporary1464 6
x13534:	mov [bp + 25], ax	; 3: 137 70 25

scanUnsignedLongInt$36:	; Call 19 tolower 0
x13537:	mov word [bp + 19], scanUnsignedLongInt$37	; 5: 199 70 19 239 52
x13542:	mov [bp + 21], bp	; 3: 137 110 21
x13545:	add bp, 19	; 3: 131 197 19
x13548:	jmp tolower	; 3: 233 233 235

scanUnsignedLongInt$37:	; PostCall 19

scanUnsignedLongInt$38:	; GetReturnValue £temporary1465

scanUnsignedLongInt$39:	; NotEqual 47 £temporary1465 120
x13551:	cmp bx, 120	; 3: 131 251 120
x13554:	jne scanUnsignedLongInt$47	; 2: 117 24

scanUnsignedLongInt$40:	; Assign base 16
x13556:	mov word [bp + 6], 16	; 5: 199 70 6 16 0

scanUnsignedLongInt$41:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$42:	; Call 19 scanChar 0
x13561:	mov word [bp + 19], scanUnsignedLongInt$43	; 5: 199 70 19 7 53
x13566:	mov [bp + 21], bp	; 3: 137 110 21
x13569:	add bp, 19	; 3: 131 197 19
x13572:	jmp scanChar	; 3: 233 19 248

scanUnsignedLongInt$43:	; PostCall 19

scanUnsignedLongInt$44:	; GetReturnValue £temporary1467

scanUnsignedLongInt$45:	; Assign input £temporary1467
x13575:	mov [bp + 16], bl	; 3: 136 94 16

scanUnsignedLongInt$46:	; Goto 50
x13578:	jmp scanUnsignedLongInt$50	; 2: 235 12

scanUnsignedLongInt$47:	; Assign base 8
x13580:	mov word [bp + 6], 8	; 5: 199 70 6 8 0

scanUnsignedLongInt$48:	; Goto 50
x13585:	jmp scanUnsignedLongInt$50	; 2: 235 5

scanUnsignedLongInt$49:	; Assign base 10
x13587:	mov word [bp + 6], 10	; 5: 199 70 6 10 0

scanUnsignedLongInt$50:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$51:	; Parameter 19 input 6
x13592:	mov al, [bp + 16]	; 3: 138 70 16
x13595:	mov [bp + 25], al	; 3: 136 70 25

scanUnsignedLongInt$52:	; Parameter 19 base 7
x13598:	mov ax, [bp + 6]	; 3: 139 70 6
x13601:	mov [bp + 26], ax	; 3: 137 70 26

scanUnsignedLongInt$53:	; Call 19 isDigitInBase 0
x13604:	mov word [bp + 19], scanUnsignedLongInt$54	; 5: 199 70 19 50 53
x13609:	mov [bp + 21], bp	; 3: 137 110 21
x13612:	add bp, 19	; 3: 131 197 19
x13615:	jmp @1634$isDigitInBase	; 3: 233 144 252

scanUnsignedLongInt$54:	; PostCall 19

scanUnsignedLongInt$55:	; GetReturnValue £temporary1468

scanUnsignedLongInt$56:	; Equal 73 £temporary1468 0
x13618:	cmp bx, 0	; 3: 131 251 0
x13621:	je scanUnsignedLongInt$73	; 2: 116 79

scanUnsignedLongInt$57:	; IntegralToIntegral £temporary1469 base
x13623:	mov bx, [bp + 6]	; 3: 139 94 6
x13626:	and ebx, 65535	; 7: 102 129 227 255 255 0 0

scanUnsignedLongInt$58:	; UnsignedMultiply unsignedLongValue unsignedLongValue £temporary1469
x13633:	mov eax, [bp + 8]	; 4: 102 139 70 8
x13637:	xor edx, edx	; 3: 102 49 210
x13640:	mul ebx	; 3: 102 247 227
x13643:	mov [bp + 8], eax	; 4: 102 137 70 8

scanUnsignedLongInt$59:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$60:	; Parameter 19 input 6
x13647:	mov al, [bp + 16]	; 3: 138 70 16
x13650:	mov [bp + 25], al	; 3: 136 70 25

scanUnsignedLongInt$61:	; Call 19 digitToValue 0
x13653:	mov word [bp + 19], scanUnsignedLongInt$62	; 5: 199 70 19 99 53
x13658:	mov [bp + 21], bp	; 3: 137 110 21
x13661:	add bp, 19	; 3: 131 197 19
x13664:	jmp @1670$digitToValue	; 3: 233 230 253

scanUnsignedLongInt$62:	; PostCall 19

scanUnsignedLongInt$63:	; GetReturnValue £temporary1471

scanUnsignedLongInt$64:	; IntegralToIntegral £temporary1472 £temporary1471
x13667:	and ebx, 65535	; 7: 102 129 227 255 255 0 0

scanUnsignedLongInt$65:	; BinaryAdd unsignedLongValue unsignedLongValue £temporary1472
x13674:	add [bp + 8], ebx	; 4: 102 1 94 8

scanUnsignedLongInt$66:	; Assign found 1
x13678:	mov word [bp + 17], 1	; 5: 199 70 17 1 0

scanUnsignedLongInt$67:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$68:	; Call 19 scanChar 0
x13683:	mov word [bp + 19], scanUnsignedLongInt$69	; 5: 199 70 19 129 53
x13688:	mov [bp + 21], bp	; 3: 137 110 21
x13691:	add bp, 19	; 3: 131 197 19
x13694:	jmp scanChar	; 3: 233 153 247

scanUnsignedLongInt$69:	; PostCall 19

scanUnsignedLongInt$70:	; GetReturnValue £temporary1474

scanUnsignedLongInt$71:	; Assign input £temporary1474
x13697:	mov [bp + 16], bl	; 3: 136 94 16

scanUnsignedLongInt$72:	; Goto 50
x13700:	jmp scanUnsignedLongInt$50	; 2: 235 146

scanUnsignedLongInt$73:	; Equal 75 found 0
x13702:	cmp word [bp + 17], 0	; 4: 131 126 17 0
x13706:	je scanUnsignedLongInt$75	; 2: 116 4

scanUnsignedLongInt$74:	; Increment g_inCount
x13708:	inc word [g_inCount]	; 4: 255 6 1 45

scanUnsignedLongInt$75:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$76:	; Parameter 19 input 6
x13712:	mov al, [bp + 16]	; 3: 138 70 16
x13715:	mov [bp + 25], al	; 3: 136 70 25

scanUnsignedLongInt$77:	; Call 19 unscanChar 0
x13718:	mov word [bp + 19], scanUnsignedLongInt$78	; 5: 199 70 19 164 53
x13723:	mov [bp + 21], bp	; 3: 137 110 21
x13726:	add bp, 19	; 3: 131 197 19
x13729:	jmp unscanChar	; 3: 233 127 254

scanUnsignedLongInt$78:	; PostCall 19

scanUnsignedLongInt$79:	; SetReturnValue unsignedLongValue
x13732:	mov ebx, [bp + 8]	; 4: 102 139 94 8

scanUnsignedLongInt$80:	; Return unsignedLongValue
x13736:	mov ax, [bp]	; 3: 139 70 0
x13739:	mov di, [bp + 4]	; 3: 139 126 4
x13742:	mov bp, [bp + 2]	; 3: 139 110 2
x13745:	jmp ax	; 2: 255 224

scanUnsignedLongInt$81:	; FunctionEnd scanUnsignedLongInt

scanLongDouble:	; Assign minus 0
x13747:	mov word [bp + 6], 0	; 5: 199 70 6 0 0

scanLongDouble$1:	; Assign found 0
x13752:	mov word [bp + 8], 0	; 5: 199 70 8 0 0

scanLongDouble$2:	; PushFloat 0.0
x13757:	fldz	; 2: 217 238

scanLongDouble$3:	; PopFloat value
x13759:	fstp qword [bp + 10]	; 3: 221 94 10

scanLongDouble$4:	; PushFloat 1.0
x13762:	fld1	; 2: 217 232

scanLongDouble$5:	; PopFloat factor
x13764:	fstp qword [bp + 18]	; 3: 221 94 18

scanLongDouble$6:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$7:	; Call 26 scanChar 0
x13767:	mov word [bp + 26], scanLongDouble$8	; 5: 199 70 26 213 53
x13772:	mov [bp + 28], bp	; 3: 137 110 28
x13775:	add bp, 26	; 3: 131 197 26
x13778:	jmp scanChar	; 3: 233 69 247

scanLongDouble$8:	; PostCall 26

scanLongDouble$9:	; GetReturnValue £temporary1485

scanLongDouble$10:	; Assign input £temporary1485
x13781:	mov [bp + 26], bl	; 3: 136 94 26

scanLongDouble$11:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$12:	; IntegralToIntegral £temporary1486 input
x13784:	mov al, [bp + 26]	; 3: 138 70 26
x13787:	and ax, 255	; 3: 37 255 0
x13790:	cmp al, 0	; 2: 60 0
x13792:	jge scanLongDouble$13	; 2: 125 4
x13794:	neg al	; 2: 246 216
x13796:	neg ax	; 2: 247 216

scanLongDouble$13:	; Parameter 27 £temporary1486 6
x13798:	mov [bp + 33], ax	; 3: 137 70 33

scanLongDouble$14:	; Call 27 isspace 0
x13801:	mov word [bp + 27], scanLongDouble$15	; 5: 199 70 27 247 53
x13806:	mov [bp + 29], bp	; 3: 137 110 29
x13809:	add bp, 27	; 3: 131 197 27
x13812:	jmp isspace	; 3: 233 223 249

scanLongDouble$15:	; PostCall 27

scanLongDouble$16:	; GetReturnValue £temporary1487

scanLongDouble$17:	; Equal 24 £temporary1487 0
x13815:	cmp bx, 0	; 3: 131 251 0
x13818:	je scanLongDouble$24	; 2: 116 19

scanLongDouble$18:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$19:	; Call 27 scanChar 0
x13820:	mov word [bp + 27], scanLongDouble$20	; 5: 199 70 27 10 54
x13825:	mov [bp + 29], bp	; 3: 137 110 29
x13828:	add bp, 27	; 3: 131 197 27
x13831:	jmp scanChar	; 3: 233 16 247

scanLongDouble$20:	; PostCall 27

scanLongDouble$21:	; GetReturnValue £temporary1488

scanLongDouble$22:	; Assign input £temporary1488
x13834:	mov [bp + 26], bl	; 3: 136 94 26

scanLongDouble$23:	; Goto 11
x13837:	jmp scanLongDouble$11	; 2: 235 201

scanLongDouble$24:	; NotEqual 31 input 43
x13839:	cmp byte [bp + 26], 43	; 4: 128 126 26 43
x13843:	jne scanLongDouble$31	; 2: 117 19

scanLongDouble$25:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$26:	; Call 27 scanChar 0
x13845:	mov word [bp + 27], scanLongDouble$27	; 5: 199 70 27 35 54
x13850:	mov [bp + 29], bp	; 3: 137 110 29
x13853:	add bp, 27	; 3: 131 197 27
x13856:	jmp scanChar	; 3: 233 247 246

scanLongDouble$27:	; PostCall 27

scanLongDouble$28:	; GetReturnValue £temporary1491

scanLongDouble$29:	; Assign input £temporary1491
x13859:	mov [bp + 26], bl	; 3: 136 94 26

scanLongDouble$30:	; Goto 38
x13862:	jmp scanLongDouble$38	; 2: 235 28

scanLongDouble$31:	; NotEqual 38 input 45
x13864:	cmp byte [bp + 26], 45	; 4: 128 126 26 45
x13868:	jne scanLongDouble$38	; 2: 117 22

scanLongDouble$32:	; Assign minus 1
x13870:	mov word [bp + 6], 1	; 5: 199 70 6 1 0

scanLongDouble$33:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$34:	; Call 27 scanChar 0
x13875:	mov word [bp + 27], scanLongDouble$35	; 5: 199 70 27 65 54
x13880:	mov [bp + 29], bp	; 3: 137 110 29
x13883:	add bp, 27	; 3: 131 197 27
x13886:	jmp scanChar	; 3: 233 217 246

scanLongDouble$35:	; PostCall 27

scanLongDouble$36:	; GetReturnValue £temporary1493

scanLongDouble$37:	; Assign input £temporary1493
x13889:	mov [bp + 26], bl	; 3: 136 94 26

scanLongDouble$38:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$39:	; IntegralToIntegral £temporary1494 input
x13892:	mov al, [bp + 26]	; 3: 138 70 26
x13895:	and ax, 255	; 3: 37 255 0
x13898:	cmp al, 0	; 2: 60 0
x13900:	jge scanLongDouble$40	; 2: 125 4
x13902:	neg al	; 2: 246 216
x13904:	neg ax	; 2: 247 216

scanLongDouble$40:	; Parameter 27 £temporary1494 6
x13906:	mov [bp + 33], ax	; 3: 137 70 33

scanLongDouble$41:	; Call 27 isdigit 0
x13909:	mov word [bp + 27], scanLongDouble$42	; 5: 199 70 27 99 54
x13914:	mov [bp + 29], bp	; 3: 137 110 29
x13917:	add bp, 27	; 3: 131 197 27
x13920:	jmp isdigit	; 3: 233 163 240

scanLongDouble$42:	; PostCall 27

scanLongDouble$43:	; GetReturnValue £temporary1495

scanLongDouble$44:	; Equal 60 £temporary1495 0
x13923:	cmp bx, 0	; 3: 131 251 0
x13926:	je scanLongDouble$60	; 2: 116 61

scanLongDouble$45:	; PushFloat 10.0
x13928:	fld qword [float8$10.0#]	; 4: 221 6 174 32

scanLongDouble$46:	; PushFloat value
x13932:	fld qword [bp + 10]	; 3: 221 70 10

scanLongDouble$47:	; SignedMultiply £temporary1496 10.0 value
x13935:	fmul	; 2: 222 201

scanLongDouble$48:	; BinarySubtract £temporary1497 input 48
x13937:	mov al, [bp + 26]	; 3: 138 70 26
x13940:	sub al, 48	; 2: 44 48

scanLongDouble$49:	; IntegralToIntegral £temporary1499 £temporary1497
x13942:	and ax, 255	; 3: 37 255 0
x13945:	cmp al, 0	; 2: 60 0
x13947:	jge scanLongDouble$50	; 2: 125 4
x13949:	neg al	; 2: 246 216
x13951:	neg ax	; 2: 247 216

scanLongDouble$50:	; IntegralToFloating £temporary1498 £temporary1499
x13953:	mov [container2bytes#], ax	; 3: 163 17 23
x13956:	fild word [container2bytes#]	; 4: 223 6 17 23

scanLongDouble$51:	; BinaryAdd £temporary1500 £temporary1496 £temporary1498
x13960:	fadd	; 2: 222 193

scanLongDouble$52:	; PopFloat value
x13962:	fstp qword [bp + 10]	; 3: 221 94 10

scanLongDouble$53:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$54:	; Call 27 scanChar 0
x13965:	mov word [bp + 27], scanLongDouble$55	; 5: 199 70 27 155 54
x13970:	mov [bp + 29], bp	; 3: 137 110 29
x13973:	add bp, 27	; 3: 131 197 27
x13976:	jmp scanChar	; 3: 233 127 246

scanLongDouble$55:	; PostCall 27

scanLongDouble$56:	; GetReturnValue £temporary1501

scanLongDouble$57:	; Assign input £temporary1501
x13979:	mov [bp + 26], bl	; 3: 136 94 26

scanLongDouble$58:	; Assign found 1
x13982:	mov word [bp + 8], 1	; 5: 199 70 8 1 0

scanLongDouble$59:	; Goto 38
x13987:	jmp scanLongDouble$38	; 2: 235 159

scanLongDouble$60:	; NotEqual 92 input 46
x13989:	cmp byte [bp + 26], 46	; 4: 128 126 26 46
x13993:	jne scanLongDouble$92	; 2: 117 125

scanLongDouble$61:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$62:	; Call 27 scanChar 0
x13995:	mov word [bp + 27], scanLongDouble$63	; 5: 199 70 27 185 54
x14000:	mov [bp + 29], bp	; 3: 137 110 29
x14003:	add bp, 27	; 3: 131 197 27
x14006:	jmp scanChar	; 3: 233 97 246

scanLongDouble$63:	; PostCall 27

scanLongDouble$64:	; GetReturnValue £temporary1504

scanLongDouble$65:	; Assign input £temporary1504
x14009:	mov [bp + 26], bl	; 3: 136 94 26

scanLongDouble$66:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$67:	; IntegralToIntegral £temporary1505 input
x14012:	mov al, [bp + 26]	; 3: 138 70 26
x14015:	and ax, 255	; 3: 37 255 0
x14018:	cmp al, 0	; 2: 60 0
x14020:	jge scanLongDouble$68	; 2: 125 4
x14022:	neg al	; 2: 246 216
x14024:	neg ax	; 2: 247 216

scanLongDouble$68:	; Parameter 27 £temporary1505 6
x14026:	mov [bp + 33], ax	; 3: 137 70 33

scanLongDouble$69:	; Call 27 isdigit 0
x14029:	mov word [bp + 27], scanLongDouble$70	; 5: 199 70 27 219 54
x14034:	mov [bp + 29], bp	; 3: 137 110 29
x14037:	add bp, 27	; 3: 131 197 27
x14040:	jmp isdigit	; 3: 233 43 240

scanLongDouble$70:	; PostCall 27

scanLongDouble$71:	; GetReturnValue £temporary1506

scanLongDouble$72:	; Equal 92 £temporary1506 0
x14043:	cmp bx, 0	; 3: 131 251 0
x14046:	je scanLongDouble$92	; 2: 116 72

scanLongDouble$73:	; PushFloat factor
x14048:	fld qword [bp + 18]	; 3: 221 70 18

scanLongDouble$74:	; PushFloat 10.0
x14051:	fld qword [float8$10.0#]	; 4: 221 6 174 32

scanLongDouble$75:	; SignedDivide £temporary1507 factor 10.0
x14055:	fdiv	; 2: 222 249

scanLongDouble$76:	; PopFloat factor
x14057:	fstp qword [bp + 18]	; 3: 221 94 18

scanLongDouble$77:	; PushFloat value
x14060:	fld qword [bp + 10]	; 3: 221 70 10

scanLongDouble$78:	; PushFloat factor
x14063:	fld qword [bp + 18]	; 3: 221 70 18

scanLongDouble$79:	; BinarySubtract £temporary1508 input 48
x14066:	mov al, [bp + 26]	; 3: 138 70 26
x14069:	sub al, 48	; 2: 44 48

scanLongDouble$80:	; IntegralToIntegral £temporary1510 £temporary1508
x14071:	and ax, 255	; 3: 37 255 0
x14074:	cmp al, 0	; 2: 60 0
x14076:	jge scanLongDouble$81	; 2: 125 4
x14078:	neg al	; 2: 246 216
x14080:	neg ax	; 2: 247 216

scanLongDouble$81:	; IntegralToFloating £temporary1509 £temporary1510
x14082:	mov [container2bytes#], ax	; 3: 163 17 23
x14085:	fild word [container2bytes#]	; 4: 223 6 17 23

scanLongDouble$82:	; SignedMultiply £temporary1511 factor £temporary1509
x14089:	fmul	; 2: 222 201

scanLongDouble$83:	; BinaryAdd £temporary1512 value £temporary1511
x14091:	fadd	; 2: 222 193

scanLongDouble$84:	; PopFloat value
x14093:	fstp qword [bp + 10]	; 3: 221 94 10

scanLongDouble$85:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$86:	; Call 27 scanChar 0
x14096:	mov word [bp + 27], scanLongDouble$87	; 5: 199 70 27 30 55
x14101:	mov [bp + 29], bp	; 3: 137 110 29
x14104:	add bp, 27	; 3: 131 197 27
x14107:	jmp scanChar	; 3: 233 252 245

scanLongDouble$87:	; PostCall 27

scanLongDouble$88:	; GetReturnValue £temporary1513

scanLongDouble$89:	; Assign input £temporary1513
x14110:	mov [bp + 26], bl	; 3: 136 94 26

scanLongDouble$90:	; Assign found 1
x14113:	mov word [bp + 8], 1	; 5: 199 70 8 1 0

scanLongDouble$91:	; Goto 66
x14118:	jmp scanLongDouble$66	; 2: 235 148

scanLongDouble$92:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$93:	; IntegralToIntegral £temporary1515 input
x14120:	mov al, [bp + 26]	; 3: 138 70 26
x14123:	and ax, 255	; 3: 37 255 0
x14126:	cmp al, 0	; 2: 60 0
x14128:	jge scanLongDouble$94	; 2: 125 4
x14130:	neg al	; 2: 246 216
x14132:	neg ax	; 2: 247 216

scanLongDouble$94:	; Parameter 27 £temporary1515 6
x14134:	mov [bp + 33], ax	; 3: 137 70 33

scanLongDouble$95:	; Call 27 tolower 0
x14137:	mov word [bp + 27], scanLongDouble$96	; 5: 199 70 27 71 55
x14142:	mov [bp + 29], bp	; 3: 137 110 29
x14145:	add bp, 27	; 3: 131 197 27
x14148:	jmp tolower	; 3: 233 145 233

scanLongDouble$96:	; PostCall 27

scanLongDouble$97:	; GetReturnValue £temporary1516

scanLongDouble$98:	; NotEqual 118 £temporary1516 101
x14151:	cmp bx, 101	; 3: 131 251 101
x14154:	jne scanLongDouble$118	; 2: 117 80

scanLongDouble$99:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$100:	; Parameter 27 10 6
x14156:	mov word [bp + 33], 10	; 5: 199 70 33 10 0

scanLongDouble$101:	; Call 27 scanLongInt 0
x14161:	mov word [bp + 27], scanLongDouble$102	; 5: 199 70 27 95 55
x14166:	mov [bp + 29], bp	; 3: 137 110 29
x14169:	add bp, 27	; 3: 131 197 27
x14172:	jmp scanLongInt	; 3: 233 174 248

scanLongDouble$102:	; PostCall 27

scanLongDouble$103:	; GetReturnValue £temporary1518

scanLongDouble$104:	; IntegralToFloating £temporary1519 £temporary1518
x14175:	mov [container4bytes#], ebx	; 5: 102 137 30 10 32
x14180:	fild dword [container4bytes#]	; 4: 219 6 10 32

scanLongDouble$105:	; PopFloat exponent
x14184:	fstp qword [bp + 27]	; 3: 221 94 27

scanLongDouble$106:	; PushFloat value
x14187:	fld qword [bp + 10]	; 3: 221 70 10

scanLongDouble$107:	; CallHeader 35 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x14190:	fstp qword [bp + 35]	; 3: 221 94 35

scanLongDouble$108:	; PushFloat 10.0
x14193:	fld qword [float8$10.0#]	; 4: 221 6 174 32

scanLongDouble$109:	; Parameter 35 10.0 6
x14197:	fstp qword [bp + 49]	; 3: 221 94 49

scanLongDouble$110:	; PushFloat exponent
x14200:	fld qword [bp + 27]	; 3: 221 70 27

scanLongDouble$111:	; Parameter 35 exponent 14
x14203:	fstp qword [bp + 57]	; 3: 221 94 57

scanLongDouble$112:	; Call 35 pow 0
x14206:	mov word [bp + 43], scanLongDouble$113	; 5: 199 70 43 140 55
x14211:	mov [bp + 45], bp	; 3: 137 110 45
x14214:	add bp, 43	; 3: 131 197 43
x14217:	jmp pow	; 3: 233 177 236

scanLongDouble$113:	; PostCall 35
x14220:	fstp qword [bp + 43]	; 3: 221 94 43
x14223:	fld qword [bp + 35]	; 3: 221 70 35
x14226:	fld qword [bp + 43]	; 3: 221 70 43

scanLongDouble$114:	; GetReturnValue £temporary1520

scanLongDouble$115:	; SignedMultiply £temporary1521 value £temporary1520
x14229:	fmul	; 2: 222 201

scanLongDouble$116:	; PopFloat value
x14231:	fstp qword [bp + 10]	; 3: 221 94 10

scanLongDouble$117:	; Goto 122
x14234:	jmp scanLongDouble$122	; 2: 235 20

scanLongDouble$118:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$119:	; Parameter 27 input 6
x14236:	mov al, [bp + 26]	; 3: 138 70 26
x14239:	mov [bp + 33], al	; 3: 136 70 33

scanLongDouble$120:	; Call 27 unscanChar 0
x14242:	mov word [bp + 27], scanLongDouble$121	; 5: 199 70 27 176 55
x14247:	mov [bp + 29], bp	; 3: 137 110 29
x14250:	add bp, 27	; 3: 131 197 27
x14253:	jmp unscanChar	; 3: 233 115 252

scanLongDouble$121:	; PostCall 27

scanLongDouble$122:	; Equal 126 minus 0
x14256:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x14260:	je scanLongDouble$126	; 2: 116 8

scanLongDouble$123:	; PushFloat value
x14262:	fld qword [bp + 10]	; 3: 221 70 10

scanLongDouble$124:	; UnarySubtract £temporary1523 value
x14265:	fchs	; 2: 217 224

scanLongDouble$125:	; PopFloat value
x14267:	fstp qword [bp + 10]	; 3: 221 94 10

scanLongDouble$126:	; Equal 128 found 0
x14270:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x14274:	je scanLongDouble$128	; 2: 116 4

scanLongDouble$127:	; Increment g_inCount
x14276:	inc word [g_inCount]	; 4: 255 6 1 45

scanLongDouble$128:	; PushFloat value
x14280:	fld qword [bp + 10]	; 3: 221 70 10

scanLongDouble$129:	; SetReturnValue value

scanLongDouble$130:	; Return value
x14283:	mov ax, [bp]	; 3: 139 70 0
x14286:	mov di, [bp + 4]	; 3: 139 126 4
x14289:	mov bp, [bp + 2]	; 3: 139 110 2
x14292:	jmp ax	; 2: 255 224

scanLongDouble$131:	; FunctionEnd scanLongDouble

scanPattern:	; Assign index 0
x14294:	mov word [bp + 12], 0	; 5: 199 70 12 0 0

scanPattern$1:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$2:	; Call 14 scanChar 0
x14299:	mov word [bp + 14], scanPattern$3	; 5: 199 70 14 233 55
x14304:	mov [bp + 16], bp	; 3: 137 110 16
x14307:	add bp, 14	; 3: 131 197 14
x14310:	jmp scanChar	; 3: 233 49 245

scanPattern$3:	; PostCall 14

scanPattern$4:	; GetReturnValue £temporary1238

scanPattern$5:	; Assign input £temporary1238
x14313:	mov [bp + 14], bl	; 3: 136 94 14

scanPattern$6:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$7:	; IntegralToIntegral £temporary1239 input
x14316:	mov al, [bp + 14]	; 3: 138 70 14
x14319:	and ax, 255	; 3: 37 255 0
x14322:	cmp al, 0	; 2: 60 0
x14324:	jge scanPattern$8	; 2: 125 4
x14326:	neg al	; 2: 246 216
x14328:	neg ax	; 2: 247 216

scanPattern$8:	; Parameter 15 £temporary1239 6
x14330:	mov [bp + 21], ax	; 3: 137 70 21

scanPattern$9:	; Call 15 isspace 0
x14333:	mov word [bp + 15], scanPattern$10	; 5: 199 70 15 11 56
x14338:	mov [bp + 17], bp	; 3: 137 110 17
x14341:	add bp, 15	; 3: 131 197 15
x14344:	jmp isspace	; 3: 233 203 247

scanPattern$10:	; PostCall 15

scanPattern$11:	; GetReturnValue £temporary1240

scanPattern$12:	; Equal 19 £temporary1240 0
x14347:	cmp bx, 0	; 3: 131 251 0
x14350:	je scanPattern$19	; 2: 116 19

scanPattern$13:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$14:	; Call 15 scanChar 0
x14352:	mov word [bp + 15], scanPattern$15	; 5: 199 70 15 30 56
x14357:	mov [bp + 17], bp	; 3: 137 110 17
x14360:	add bp, 15	; 3: 131 197 15
x14363:	jmp scanChar	; 3: 233 252 244

scanPattern$15:	; PostCall 15

scanPattern$16:	; GetReturnValue £temporary1241

scanPattern$17:	; Assign input £temporary1241
x14366:	mov [bp + 14], bl	; 3: 136 94 14

scanPattern$18:	; Goto 6
x14369:	jmp scanPattern$6	; 2: 235 201

scanPattern$19:	; Equal 53 string 0
x14371:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x14375:	je scanPattern$53	; 4: 15 132 143 0

scanPattern$20:	; NotEqual 29 not 0
x14379:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x14383:	jne scanPattern$29	; 2: 117 42

scanPattern$21:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$22:	; Parameter 15 pattern 6
x14385:	mov ax, [bp + 8]	; 3: 139 70 8
x14388:	mov [bp + 21], ax	; 3: 137 70 21

scanPattern$23:	; IntegralToIntegral £temporary1246 input
x14391:	mov al, [bp + 14]	; 3: 138 70 14
x14394:	and ax, 255	; 3: 37 255 0
x14397:	cmp al, 0	; 2: 60 0
x14399:	jge scanPattern$24	; 2: 125 4
x14401:	neg al	; 2: 246 216
x14403:	neg ax	; 2: 247 216

scanPattern$24:	; Parameter 15 £temporary1246 8
x14405:	mov [bp + 23], ax	; 3: 137 70 23

scanPattern$25:	; Call 15 strchr 0
x14408:	mov word [bp + 15], scanPattern$26	; 5: 199 70 15 86 56
x14413:	mov [bp + 17], bp	; 3: 137 110 17
x14416:	add bp, 15	; 3: 131 197 15
x14419:	jmp strchr	; 3: 233 33 229

scanPattern$26:	; PostCall 15

scanPattern$27:	; GetReturnValue £temporary1247

scanPattern$28:	; NotEqual 38 £temporary1247 0
x14422:	cmp bx, 0	; 3: 131 251 0
x14425:	jne scanPattern$38	; 2: 117 48

scanPattern$29:	; Equal 49 not 0
x14427:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x14431:	je scanPattern$49	; 2: 116 78

scanPattern$30:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$31:	; Parameter 15 pattern 6
x14433:	mov ax, [bp + 8]	; 3: 139 70 8
x14436:	mov [bp + 21], ax	; 3: 137 70 21

scanPattern$32:	; IntegralToIntegral £temporary1250 input
x14439:	mov al, [bp + 14]	; 3: 138 70 14
x14442:	and ax, 255	; 3: 37 255 0
x14445:	cmp al, 0	; 2: 60 0
x14447:	jge scanPattern$33	; 2: 125 4
x14449:	neg al	; 2: 246 216
x14451:	neg ax	; 2: 247 216

scanPattern$33:	; Parameter 15 £temporary1250 8
x14453:	mov [bp + 23], ax	; 3: 137 70 23

scanPattern$34:	; Call 15 strchr 0
x14456:	mov word [bp + 15], scanPattern$35	; 5: 199 70 15 134 56
x14461:	mov [bp + 17], bp	; 3: 137 110 17
x14464:	add bp, 15	; 3: 131 197 15
x14467:	jmp strchr	; 3: 233 241 228

scanPattern$35:	; PostCall 15

scanPattern$36:	; GetReturnValue £temporary1251

scanPattern$37:	; NotEqual 49 £temporary1251 0
x14470:	cmp bx, 0	; 3: 131 251 0
x14473:	jne scanPattern$49	; 2: 117 36

scanPattern$38:	; Assign £temporary1257 index
x14475:	mov ax, [bp + 12]	; 3: 139 70 12

scanPattern$39:	; Increment index
x14478:	inc word [bp + 12]	; 3: 255 70 12

scanPattern$40:	; BinaryAdd £temporary1259 string £temporary1257
x14481:	mov si, [bp + 6]	; 3: 139 118 6
x14484:	add si, ax	; 2: 1 198

scanPattern$41:	; Deref £temporary1258 -> £temporary1259 £temporary1259 0

scanPattern$42:	; Assign £temporary1258 -> £temporary1259 input
x14486:	mov al, [bp + 14]	; 3: 138 70 14
x14489:	mov [si], al	; 2: 136 4

scanPattern$43:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$44:	; Call 15 scanChar 0
x14491:	mov word [bp + 15], scanPattern$45	; 5: 199 70 15 169 56
x14496:	mov [bp + 17], bp	; 3: 137 110 17
x14499:	add bp, 15	; 3: 131 197 15
x14502:	jmp scanChar	; 3: 233 113 244

scanPattern$45:	; PostCall 15

scanPattern$46:	; GetReturnValue £temporary1260

scanPattern$47:	; Assign input £temporary1260
x14505:	mov [bp + 14], bl	; 3: 136 94 14

scanPattern$48:	; Goto 20
x14508:	jmp scanPattern$20	; 3: 233 124 255

scanPattern$49:	; BinaryAdd £temporary1262 string index
x14511:	mov si, [bp + 6]	; 3: 139 118 6
x14514:	add si, [bp + 12]	; 3: 3 118 12

scanPattern$50:	; Deref £temporary1261 -> £temporary1262 £temporary1262 0

scanPattern$51:	; Assign £temporary1261 -> £temporary1262 0
x14517:	mov byte [si], 0	; 3: 198 4 0

scanPattern$52:	; Goto 77
x14520:	jmp scanPattern$77	; 2: 235 115

scanPattern$53:	; NotEqual 62 not 0
x14522:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x14526:	jne scanPattern$62	; 2: 117 42

scanPattern$54:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$55:	; Parameter 15 pattern 6
x14528:	mov ax, [bp + 8]	; 3: 139 70 8
x14531:	mov [bp + 21], ax	; 3: 137 70 21

scanPattern$56:	; IntegralToIntegral £temporary1265 input
x14534:	mov al, [bp + 14]	; 3: 138 70 14
x14537:	and ax, 255	; 3: 37 255 0
x14540:	cmp al, 0	; 2: 60 0
x14542:	jge scanPattern$57	; 2: 125 4
x14544:	neg al	; 2: 246 216
x14546:	neg ax	; 2: 247 216

scanPattern$57:	; Parameter 15 £temporary1265 8
x14548:	mov [bp + 23], ax	; 3: 137 70 23

scanPattern$58:	; Call 15 strchr 0
x14551:	mov word [bp + 15], scanPattern$59	; 5: 199 70 15 229 56
x14556:	mov [bp + 17], bp	; 3: 137 110 17
x14559:	add bp, 15	; 3: 131 197 15
x14562:	jmp strchr	; 3: 233 146 228

scanPattern$59:	; PostCall 15

scanPattern$60:	; GetReturnValue £temporary1266

scanPattern$61:	; NotEqual 71 £temporary1266 0
x14565:	cmp bx, 0	; 3: 131 251 0
x14568:	jne scanPattern$71	; 2: 117 48

scanPattern$62:	; Equal 77 not 0
x14570:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x14574:	je scanPattern$77	; 2: 116 61

scanPattern$63:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$64:	; Parameter 15 pattern 6
x14576:	mov ax, [bp + 8]	; 3: 139 70 8
x14579:	mov [bp + 21], ax	; 3: 137 70 21

scanPattern$65:	; IntegralToIntegral £temporary1269 input
x14582:	mov al, [bp + 14]	; 3: 138 70 14
x14585:	and ax, 255	; 3: 37 255 0
x14588:	cmp al, 0	; 2: 60 0
x14590:	jge scanPattern$66	; 2: 125 4
x14592:	neg al	; 2: 246 216
x14594:	neg ax	; 2: 247 216

scanPattern$66:	; Parameter 15 £temporary1269 8
x14596:	mov [bp + 23], ax	; 3: 137 70 23

scanPattern$67:	; Call 15 strchr 0
x14599:	mov word [bp + 15], scanPattern$68	; 5: 199 70 15 21 57
x14604:	mov [bp + 17], bp	; 3: 137 110 17
x14607:	add bp, 15	; 3: 131 197 15
x14610:	jmp strchr	; 3: 233 98 228

scanPattern$68:	; PostCall 15

scanPattern$69:	; GetReturnValue £temporary1270

scanPattern$70:	; NotEqual 77 £temporary1270 0
x14613:	cmp bx, 0	; 3: 131 251 0
x14616:	jne scanPattern$77	; 2: 117 19

scanPattern$71:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$72:	; Call 15 scanChar 0
x14618:	mov word [bp + 15], scanPattern$73	; 5: 199 70 15 40 57
x14623:	mov [bp + 17], bp	; 3: 137 110 17
x14626:	add bp, 15	; 3: 131 197 15
x14629:	jmp scanChar	; 3: 233 242 243

scanPattern$73:	; PostCall 15

scanPattern$74:	; GetReturnValue £temporary1276

scanPattern$75:	; Assign input £temporary1276
x14632:	mov [bp + 14], bl	; 3: 136 94 14

scanPattern$76:	; Goto 53
x14635:	jmp scanPattern$53	; 2: 235 141

scanPattern$77:	; Return 0
x14637:	mov ax, [bp]	; 3: 139 70 0
x14640:	mov di, [bp + 4]	; 3: 139 126 4
x14643:	mov bp, [bp + 2]	; 3: 139 110 2
x14646:	jmp ax	; 2: 255 224

scanPattern$78:	; FunctionEnd scanPattern

sqrt:	; PushFloat x
x14648:	fld qword [bp + 6]	; 3: 221 70 6

sqrt$1:	; PushZero
x14651:	fldz	; 2: 217 238

sqrt$2:	; SignedLessThan 28 x 0
x14653:	fcompp	; 2: 222 217
x14655:	fstsw ax	; 3: 155 223 224
x14658:	sahf	; 1: 158
x14659:	ja sqrt$28	; 2: 119 84

sqrt$3:	; PushOne
x14661:	fld1	; 2: 217 232

sqrt$4:	; PopFloat root_i_plus_1
x14663:	fstp qword [bp + 22]	; 3: 221 94 22

sqrt$5:	; PushFloat root_i_plus_1
x14666:	fld qword [bp + 22]	; 3: 221 70 22

sqrt$6:	; PopFloat root_i
x14669:	fstp qword [bp + 14]	; 3: 221 94 14

sqrt$7:	; PushFloat root_i
x14672:	fld qword [bp + 14]	; 3: 221 70 14

sqrt$8:	; PushFloat x
x14675:	fld qword [bp + 6]	; 3: 221 70 6

sqrt$9:	; PushFloat root_i
x14678:	fld qword [bp + 14]	; 3: 221 70 14

sqrt$10:	; SignedDivide £temporary621 x root_i
x14681:	fdiv	; 2: 222 249

sqrt$11:	; BinaryAdd £temporary622 root_i £temporary621
x14683:	fadd	; 2: 222 193

sqrt$12:	; PushFloat 2
x14685:	fld qword [float8$2#]	; 4: 221 6 172 57

sqrt$13:	; SignedDivide £temporary623 £temporary622 2
x14689:	fdiv	; 2: 222 249

sqrt$14:	; PopFloat root_i_plus_1
x14691:	fstp qword [bp + 22]	; 3: 221 94 22

sqrt$15:	; CallHeader 30 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

sqrt$16:	; PushFloat root_i_plus_1
x14694:	fld qword [bp + 22]	; 3: 221 70 22

sqrt$17:	; PushFloat root_i
x14697:	fld qword [bp + 14]	; 3: 221 70 14

sqrt$18:	; BinarySubtract £temporary624 root_i_plus_1 root_i
x14700:	fsub	; 2: 222 233

sqrt$19:	; Parameter 30 £temporary624 6
x14702:	fstp qword [bp + 36]	; 3: 221 94 36

sqrt$20:	; Call 30 fabs 0
x14705:	mov word [bp + 30], sqrt$21	; 5: 199 70 30 127 57
x14710:	mov [bp + 32], bp	; 3: 137 110 32
x14713:	add bp, 30	; 3: 131 197 30
x14716:	jmp fabs	; 3: 233 55 231

sqrt$21:	; PostCall 30

sqrt$22:	; GetReturnValue £temporary625

sqrt$23:	; PushFloat 0.000000001
x14719:	fld qword [float8$0.000000001#]	; 4: 221 6 53 36

sqrt$24:	; SignedGreaterThanEqual 5 £temporary625 0.000000001
x14723:	fcompp	; 2: 222 217
x14725:	fstsw ax	; 3: 155 223 224
x14728:	sahf	; 1: 158
x14729:	jbe sqrt$5	; 2: 118 191

sqrt$25:	; PushFloat root_i_plus_1
x14731:	fld qword [bp + 22]	; 3: 221 70 22

sqrt$26:	; SetReturnValue root_i_plus_1

sqrt$27:	; Return root_i_plus_1
x14734:	mov ax, [bp]	; 3: 139 70 0
x14737:	mov di, [bp + 4]	; 3: 139 126 4
x14740:	mov bp, [bp + 2]	; 3: 139 110 2
x14743:	jmp ax	; 2: 255 224

sqrt$28:	; Assign errno 6
x14745:	mov word [errno], 6	; 6: 199 6 50 10 6 0

sqrt$29:	; PushZero
x14751:	fldz	; 2: 217 238

sqrt$30:	; SetReturnValue 0

sqrt$31:	; Return 0
x14753:	mov ax, [bp]	; 3: 139 70 0
x14756:	mov di, [bp + 4]	; 3: 139 126 4
x14759:	mov bp, [bp + 2]	; 3: 139 110 2
x14762:	jmp ax	; 2: 255 224

sqrt$32:	; FunctionEnd sqrt

float8$2#:
x14764:	dq 2.0	; 8: 0 0 0 0 0 0 0 64

fclose:	; Equal 20 stream 0
x14772:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x14776:	je fclose$20	; 2: 116 86

fclose$1:	; AssignRegister ah 62
x14778:	mov ah, 62	; 2: 180 62

fclose$2:	; Deref £temporary1003 -> stream stream 2
x14780:	mov si, [bp + 6]	; 3: 139 118 6

fclose$3:	; AssignRegister bx £temporary1003 -> stream
x14783:	mov bx, [si + 2]	; 3: 139 92 2

fclose$4:	; Interrupt 33
x14786:	int 33	; 2: 205 33

fclose$5:	; NotCarry 9
x14788:	jnc fclose$9	; 2: 115 20

fclose$6:	; Assign errno 11
x14790:	mov word [errno], 11	; 6: 199 6 50 10 11 0

fclose$7:	; SetReturnValue -1
x14796:	mov bx, -1	; 3: 187 255 255

fclose$8:	; Return -1
x14799:	mov ax, [bp]	; 3: 139 70 0
x14802:	mov di, [bp + 4]	; 3: 139 126 4
x14805:	mov bp, [bp + 2]	; 3: 139 110 2
x14808:	jmp ax	; 2: 255 224

fclose$9:	; Deref £temporary1005 -> stream stream 27
x14810:	mov si, [bp + 6]	; 3: 139 118 6

fclose$10:	; Equal 16 £temporary1005 -> stream 0
x14813:	cmp word [si + 27], 0	; 4: 131 124 27 0
x14817:	je fclose$16	; 2: 116 24

fclose$11:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

fclose$12:	; Deref £temporary1006 -> stream stream 4
x14819:	mov si, [bp + 6]	; 3: 139 118 6

fclose$13:	; Parameter 8 £temporary1006 -> stream 6
x14822:	mov [bp + 14], si	; 3: 137 118 14
x14825:	add word [bp + 14], 4	; 4: 131 70 14 4

fclose$14:	; Call 8 remove 0
x14829:	mov word [bp + 8], fclose$15	; 5: 199 70 8 251 57
x14834:	mov [bp + 10], bp	; 3: 137 110 10
x14837:	add bp, 8	; 3: 131 197 8
x14840:	nop	; 1: 144
x14841:	jmp remove	; 2: 235 120

fclose$15:	; PostCall 8

fclose$16:	; Deref £temporary1009 -> stream stream 0
x14843:	mov si, [bp + 6]	; 3: 139 118 6

fclose$17:	; Assign £temporary1009 -> stream 0
x14846:	mov word [si], 0	; 4: 199 4 0 0

fclose$18:	; SetReturnValue 0
x14850:	mov bx, 0	; 3: 187 0 0

fclose$19:	; Return 0
x14853:	mov ax, [bp]	; 3: 139 70 0
x14856:	mov di, [bp + 4]	; 3: 139 126 4
x14859:	mov bp, [bp + 2]	; 3: 139 110 2
x14862:	jmp ax	; 2: 255 224

fclose$20:	; Assign index 0
x14864:	mov word [bp + 8], 0	; 5: 199 70 8 0 0

fclose$21:	; SignedGreaterThanEqual 40 index 20
x14869:	cmp word [bp + 8], 20	; 4: 131 126 8 20
x14873:	jge fclose$40	; 2: 125 74

fclose$22:	; UnsignedMultiply £temporary1013 index 29
x14875:	mov ax, [bp + 8]	; 3: 139 70 8
x14878:	xor dx, dx	; 2: 49 210
x14880:	mul word [int2$29#]	; 4: 247 38 221 6

fclose$23:	; BinaryAdd £temporary1014 g_fileArray £temporary1013
x14884:	mov si, g_fileArray	; 3: 190 118 3
x14887:	add si, ax	; 2: 1 198

fclose$24:	; Deref £temporary1012 -> £temporary1014 £temporary1014 0

fclose$25:	; Equal 38 £temporary1012.open$0 -> £temporary1014 0
x14889:	cmp word [si], 0	; 3: 131 60 0
x14892:	je fclose$38	; 2: 116 50

fclose$26:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

fclose$27:	; UnsignedMultiply £temporary1016 index 29
x14894:	mov ax, [bp + 8]	; 3: 139 70 8
x14897:	xor dx, dx	; 2: 49 210
x14899:	mul word [int2$29#]	; 4: 247 38 221 6

fclose$28:	; BinaryAdd £temporary1017 g_fileArray £temporary1016
x14903:	mov si, g_fileArray	; 3: 190 118 3
x14906:	add si, ax	; 2: 1 198

fclose$29:	; Deref £temporary1015 -> £temporary1017 £temporary1017 0

fclose$30:	; address £temporary1018 £temporary1015 -> £temporary1017

fclose$31:	; Parameter 10 £temporary1018 6
x14908:	mov [bp + 16], si	; 3: 137 118 16

fclose$32:	; Call 10 fclose 0
x14911:	mov word [bp + 10], fclose$33	; 5: 199 70 10 77 58
x14916:	mov [bp + 12], bp	; 3: 137 110 12
x14919:	add bp, 10	; 3: 131 197 10
x14922:	jmp fclose	; 3: 233 103 255

fclose$33:	; PostCall 10

fclose$34:	; GetReturnValue £temporary1019

fclose$35:	; NotEqual 38 £temporary1019 -1
x14925:	cmp bx, -1	; 3: 131 251 255
x14928:	jne fclose$38	; 2: 117 14

fclose$36:	; SetReturnValue -1
x14930:	mov bx, -1	; 3: 187 255 255

fclose$37:	; Return -1
x14933:	mov ax, [bp]	; 3: 139 70 0
x14936:	mov di, [bp + 4]	; 3: 139 126 4
x14939:	mov bp, [bp + 2]	; 3: 139 110 2
x14942:	jmp ax	; 2: 255 224

fclose$38:	; Increment index
x14944:	inc word [bp + 8]	; 3: 255 70 8

fclose$39:	; Goto 21
x14947:	jmp fclose$21	; 2: 235 176

fclose$40:	; SetReturnValue 0
x14949:	mov bx, 0	; 3: 187 0 0

fclose$41:	; Return 0
x14952:	mov ax, [bp]	; 3: 139 70 0
x14955:	mov di, [bp + 4]	; 3: 139 126 4
x14958:	mov bp, [bp + 2]	; 3: 139 110 2
x14961:	jmp ax	; 2: 255 224

fclose$42:	; FunctionEnd fclose

remove:	; AssignRegister ah 65
x14963:	mov ah, 65	; 2: 180 65

remove$1:	; AssignRegister cl 0
x14965:	mov cl, 0	; 2: 177 0

remove$2:	; AssignRegister dx name
x14967:	mov dx, [bp + 6]	; 3: 139 86 6

remove$3:	; Interrupt 33
x14970:	int 33	; 2: 205 33

remove$4:	; NotCarry 8
x14972:	jnc remove$8	; 2: 115 20

remove$5:	; Assign errno 18
x14974:	mov word [errno], 18	; 6: 199 6 50 10 18 0

remove$6:	; SetReturnValue -1
x14980:	mov bx, -1	; 3: 187 255 255

remove$7:	; Return -1
x14983:	mov ax, [bp]	; 3: 139 70 0
x14986:	mov di, [bp + 4]	; 3: 139 126 4
x14989:	mov bp, [bp + 2]	; 3: 139 110 2
x14992:	jmp ax	; 2: 255 224

remove$8:	; SetReturnValue 0
x14994:	mov bx, 0	; 3: 187 0 0

remove$9:	; Return 0
x14997:	mov ax, [bp]	; 3: 139 70 0
x15000:	mov di, [bp + 4]	; 3: 139 126 4
x15003:	mov bp, [bp + 2]	; 3: 139 110 2
x15006:	jmp ax	; 2: 255 224

remove$10:	; FunctionEnd remove

$StackTop:
x15008:
