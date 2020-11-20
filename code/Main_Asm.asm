	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: 189 223 82
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: 199 6 254 255 254 255
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: 155 217 126 0
x269:	or word [bp], 3072	; 5: 129 78 0 0 12
x274:	fldcw [bp]	; 3: 217 110 0
x277:	mov word [$StackTop], 0	; 6: 199 6 223 82 0 0

main:	; CallHeader 6 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

main$1:	; Parameter 6 string_in_test# 6
x283:	mov word [bp + 12], string_in_test#	; 5: 199 70 12 74 1

main$2:	; Parameter 6 string_out_test# 8
x288:	mov word [bp + 14], string_out_test#	; 5: 199 70 14 82 1

main$3:	; Call 6 file_test 0
x293:	mov word [bp + 6], main$4	; 5: 199 70 6 51 1
x298:	mov [bp + 8], bp	; 3: 137 110 8
x301:	add bp, 6	; 3: 131 197 6
x304:	nop	; 1: 144
x305:	jmp file_test	; 2: 235 40

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

string_in_test#:
x330:	db "in_test", 0	; 8: 105 110 95 116 101 115 116 0

string_out_test#:
x338:	db "out_test", 0	; 9: 111 117 116 95 116 101 115 116 0

file_test:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$1:	; Parameter 10 inFilePtrName 6
x347:	mov ax, [bp + 6]	; 3: 139 70 6
x350:	mov [bp + 16], ax	; 3: 137 70 16

file_test$2:	; Parameter 10 string_r# 8
x353:	mov word [bp + 18], string_r#	; 5: 199 70 18 222 17

file_test$3:	; Call 10 fopen 0
x358:	mov word [bp + 10], file_test$4	; 5: 199 70 10 116 1
x363:	mov [bp + 12], bp	; 3: 137 110 12
x366:	add bp, 10	; 3: 131 197 10
x369:	jmp fopen	; 3: 233 94 21

file_test$4:	; PostCall 10

file_test$5:	; GetReturnValue £temporary4986

file_test$6:	; Assign inFilePtrPtr £temporary4986
x372:	mov [bp + 10], bx	; 3: 137 94 10

file_test$7:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$8:	; Parameter 12 outFilePtrName 6
x375:	mov ax, [bp + 8]	; 3: 139 70 8
x378:	mov [bp + 18], ax	; 3: 137 70 18

file_test$9:	; Parameter 12 string_w# 8
x381:	mov word [bp + 20], string_w#	; 5: 199 70 20 224 17

file_test$10:	; Call 12 fopen 0
x386:	mov word [bp + 12], file_test$11	; 5: 199 70 12 144 1
x391:	mov [bp + 14], bp	; 3: 137 110 14
x394:	add bp, 12	; 3: 131 197 12
x397:	jmp fopen	; 3: 233 66 21

file_test$11:	; PostCall 12

file_test$12:	; GetReturnValue £temporary4987

file_test$13:	; Assign outFilePtrPtr £temporary4987
x400:	mov [bp + 12], bx	; 3: 137 94 12

file_test$14:	; NotEqual 26 inFilePtrPtr 0
x403:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x407:	jne file_test$26	; 2: 117 59

file_test$15:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$16:	; Parameter 14 stderr 6
x409:	mov ax, [stderr]	; 3: 161 226 17
x412:	mov [bp + 20], ax	; 3: 137 70 20

file_test$17:	; Parameter 14 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x415:	mov word [bp + 22], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 5: 199 70 22 40 20

file_test$18:	; Parameter 14 string_inFilePtrPtr20213D20NULL# 10
x420:	mov word [bp + 24], string_inFilePtrPtr20213D20NULL#	; 5: 199 70 24 86 20

file_test$19:	; Parameter 14 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x425:	mov word [bp + 26], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 5: 199 70 26 107 20

file_test$20:	; Parameter 14 11 14
x430:	mov word [bp + 28], 11	; 5: 199 70 28 11 0

file_test$21:	; Call 14 fprintf 0
x435:	mov word [bp + 14], file_test$22	; 5: 199 70 14 198 1
x440:	mov [bp + 16], bp	; 3: 137 110 16
x443:	add bp, 14	; 3: 131 197 14
x446:	mov di, bp	; 2: 137 239
x448:	add di, 6	; 3: 131 199 6
x451:	jmp fprintf	; 3: 233 155 25

file_test$22:	; PostCall 14

file_test$23:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$24:	; Call 14 abort 0
x454:	mov word [bp + 14], file_test$25	; 5: 199 70 14 212 1
x459:	mov [bp + 16], bp	; 3: 137 110 16
x462:	add bp, 14	; 3: 131 197 14
x465:	jmp abort	; 3: 233 127 53

file_test$25:	; PostCall 14

file_test$26:	; NotEqual 38 outFilePtrPtr 0
x468:	cmp word [bp + 12], 0	; 4: 131 126 12 0
x472:	jne file_test$38	; 2: 117 59

file_test$27:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$28:	; Parameter 14 stderr 6
x474:	mov ax, [stderr]	; 3: 161 226 17
x477:	mov [bp + 20], ax	; 3: 137 70 20

file_test$29:	; Parameter 14 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x480:	mov word [bp + 22], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 5: 199 70 22 40 20

file_test$30:	; Parameter 14 string_outFilePtrPtr20213D20NULL# 10
x485:	mov word [bp + 24], string_outFilePtrPtr20213D20NULL#	; 5: 199 70 24 172 20

file_test$31:	; Parameter 14 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x490:	mov word [bp + 26], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 5: 199 70 26 107 20

file_test$32:	; Parameter 14 12 14
x495:	mov word [bp + 28], 12	; 5: 199 70 28 12 0

file_test$33:	; Call 14 fprintf 0
x500:	mov word [bp + 14], file_test$34	; 5: 199 70 14 7 2
x505:	mov [bp + 16], bp	; 3: 137 110 16
x508:	add bp, 14	; 3: 131 197 14
x511:	mov di, bp	; 2: 137 239
x513:	add di, 6	; 3: 131 199 6
x516:	jmp fprintf	; 3: 233 90 25

file_test$34:	; PostCall 14

file_test$35:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$36:	; Call 14 abort 0
x519:	mov word [bp + 14], file_test$37	; 5: 199 70 14 21 2
x524:	mov [bp + 16], bp	; 3: 137 110 16
x527:	add bp, 14	; 3: 131 197 14
x530:	jmp abort	; 3: 233 62 53

file_test$37:	; PostCall 14

file_test$38:	; Assign size 0
x533:	mov word [bp + 14], 0	; 5: 199 70 14 0 0

file_test$39:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$40:	; Parameter 18 inFilePtrPtr 6
x538:	mov ax, [bp + 10]	; 3: 139 70 10
x541:	mov [bp + 24], ax	; 3: 137 70 24

file_test$41:	; Parameter 18 string_25i# 8
x544:	mov word [bp + 26], string_25i#	; 5: 199 70 26 194 20

file_test$42:	; address £temporary4996 size
x549:	mov si, bp	; 2: 137 238
x551:	add si, 14	; 3: 131 198 14

file_test$43:	; Parameter 18 £temporary4996 10
x554:	mov [bp + 28], si	; 3: 137 118 28

file_test$44:	; Call 18 fscanf 0
x557:	mov word [bp + 18], file_test$45	; 5: 199 70 18 64 2
x562:	mov [bp + 20], bp	; 3: 137 110 20
x565:	add bp, 18	; 3: 131 197 18
x568:	mov di, bp	; 2: 137 239
x570:	add di, 2	; 3: 131 199 2
x573:	jmp fscanf	; 3: 233 36 53

file_test$45:	; PostCall 18

file_test$46:	; Assign index 0
x576:	mov word [bp + 16], 0	; 5: 199 70 16 0 0

file_test$47:	; SignedGreaterThanEqual 73 index size
x581:	mov ax, [bp + 14]	; 3: 139 70 14
x584:	cmp [bp + 16], ax	; 3: 57 70 16
x587:	jge file_test$73	; 2: 125 107

file_test$48:	; PushZero
x589:	fldz	; 2: 217 238

file_test$49:	; PopFloat inValue
x591:	fstp qword [bp + 18]	; 3: 221 94 18

file_test$50:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$51:	; PushFloat inValue
x594:	fld qword [bp + 18]	; 3: 221 70 18

file_test$52:	; Parameter 26 £temporary5000 6
x597:	fstp qword [bp + 32]	; 3: 221 94 32

file_test$53:	; Call 26 sqrt 0
x600:	mov word [bp + 26], file_test$54	; 5: 199 70 26 102 2
x605:	mov [bp + 28], bp	; 3: 137 110 28
x608:	add bp, 26	; 3: 131 197 26
x611:	jmp sqrt	; 3: 233 39 71

file_test$54:	; PostCall 26

file_test$55:	; GetReturnValue £temporary5001

file_test$56:	; PopFloat outValue
x614:	fstp qword [bp + 26]	; 3: 221 94 26

file_test$57:	; CallHeader 34 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$58:	; Parameter 34 inFilePtrPtr 6
x617:	mov ax, [bp + 10]	; 3: 139 70 10
x620:	mov [bp + 40], ax	; 3: 137 70 40

file_test$59:	; Parameter 34 string_25lf# 8
x623:	mov word [bp + 42], string_25lf#	; 5: 199 70 42 197 20

file_test$60:	; address £temporary5002 inValue
x628:	mov si, bp	; 2: 137 238
x630:	add si, 18	; 3: 131 198 18

file_test$61:	; Parameter 34 £temporary5002 10
x633:	mov [bp + 44], si	; 3: 137 118 44

file_test$62:	; Call 34 fscanf 0
x636:	mov word [bp + 34], file_test$63	; 5: 199 70 34 143 2
x641:	mov [bp + 36], bp	; 3: 137 110 36
x644:	add bp, 34	; 3: 131 197 34
x647:	mov di, bp	; 2: 137 239
x649:	add di, 2	; 3: 131 199 2
x652:	jmp fscanf	; 3: 233 213 52

file_test$63:	; PostCall 34

file_test$64:	; CallHeader 34 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$65:	; Parameter 34 outFilePtrPtr 6
x655:	mov ax, [bp + 12]	; 3: 139 70 12
x658:	mov [bp + 40], ax	; 3: 137 70 40

file_test$66:	; Parameter 34 string_25f0A# 8
x661:	mov word [bp + 42], string_25f0A#	; 5: 199 70 42 201 20

file_test$67:	; PushFloat outValue
x666:	fld qword [bp + 26]	; 3: 221 70 26

file_test$68:	; Parameter 34 outValue 10
x669:	fstp qword [bp + 44]	; 3: 221 94 44

file_test$69:	; Call 34 fprintf 0
x672:	mov word [bp + 34], file_test$70	; 5: 199 70 34 179 2
x677:	mov [bp + 36], bp	; 3: 137 110 36
x680:	add bp, 34	; 3: 131 197 34
x683:	mov di, bp	; 2: 137 239
x685:	add di, 8	; 3: 131 199 8
x688:	jmp fprintf	; 3: 233 174 24

file_test$70:	; PostCall 34

file_test$71:	; Increment index
x691:	inc word [bp + 16]	; 3: 255 70 16

file_test$72:	; Goto 47
x694:	jmp file_test$47	; 2: 235 141

file_test$73:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$74:	; Parameter 14 inFilePtrPtr 6
x696:	mov ax, [bp + 10]	; 3: 139 70 10
x699:	mov [bp + 20], ax	; 3: 137 70 20

file_test$75:	; Call 14 fclose 0
x702:	mov word [bp + 14], file_test$76	; 5: 199 70 14 204 2
x707:	mov [bp + 16], bp	; 3: 137 110 16
x710:	add bp, 14	; 3: 131 197 14
x713:	jmp fclose	; 3: 233 61 71

file_test$76:	; PostCall 14

file_test$77:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$78:	; Parameter 14 outFilePtrPtr 6
x716:	mov ax, [bp + 12]	; 3: 139 70 12
x719:	mov [bp + 20], ax	; 3: 137 70 20

file_test$79:	; Call 14 fclose 0
x722:	mov word [bp + 14], file_test$80	; 5: 199 70 14 224 2
x727:	mov [bp + 16], bp	; 3: 137 110 16
x730:	add bp, 14	; 3: 131 197 14
x733:	jmp fclose	; 3: 233 41 71

file_test$80:	; PostCall 14

file_test$81:	; Assign sourceFilePtr string_X#
x736:	mov word [bp + 10], string_X#	; 5: 199 70 10 205 20

file_test$82:	; Assign targetFilePtr string_Y#
x741:	mov word [bp + 12], string_Y#	; 5: 199 70 12 207 20

file_test$83:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$84:	; Parameter 14 sourceFilePtr 6
x746:	mov ax, [bp + 10]	; 3: 139 70 10
x749:	mov [bp + 20], ax	; 3: 137 70 20

file_test$85:	; Parameter 14 targetFilePtr 8
x752:	mov ax, [bp + 12]	; 3: 139 70 12
x755:	mov [bp + 22], ax	; 3: 137 70 22

file_test$86:	; Call 14 rename 0
x758:	mov word [bp + 14], file_test$87	; 5: 199 70 14 4 3
x763:	mov [bp + 16], bp	; 3: 137 110 16
x766:	add bp, 14	; 3: 131 197 14
x769:	jmp rename	; 3: 233 241 71

file_test$87:	; PostCall 14

file_test$88:	; GetReturnValue £temporary5007

file_test$89:	; NotEqual 97 £temporary5007 0
x772:	cmp bx, 0	; 3: 131 251 0
x775:	jne file_test$97	; 2: 117 38

file_test$90:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$91:	; Parameter 14 string_2225s2220has20been20renamed20to202225s222E0A# 6
x777:	mov word [bp + 20], string_2225s2220has20been20renamed20to202225s222E0A#	; 5: 199 70 20 209 20

file_test$92:	; Parameter 14 sourceFilePtr 8
x782:	mov ax, [bp + 10]	; 3: 139 70 10
x785:	mov [bp + 22], ax	; 3: 137 70 22

file_test$93:	; Parameter 14 targetFilePtr 10
x788:	mov ax, [bp + 12]	; 3: 139 70 12
x791:	mov [bp + 24], ax	; 3: 137 70 24

file_test$94:	; Call 14 printf 0
x794:	mov word [bp + 14], file_test$95	; 5: 199 70 14 45 3
x799:	mov [bp + 16], bp	; 3: 137 110 16
x802:	add bp, 14	; 3: 131 197 14
x805:	mov di, bp	; 2: 137 239
x807:	add di, 4	; 3: 131 199 4
x810:	jmp printf	; 3: 233 254 69

file_test$95:	; PostCall 14

file_test$96:	; Goto 108
x813:	jmp file_test$108	; 2: 235 53

file_test$97:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$98:	; Parameter 14 string_Error2025i3A2025s2E0A# 6
x815:	mov word [bp + 20], string_Error2025i3A2025s2E0A#	; 5: 199 70 20 241 20

file_test$99:	; Parameter 14 errno 8
x820:	mov ax, [errno]	; 3: 161 0 21
x823:	mov [bp + 22], ax	; 3: 137 70 22

file_test$100:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$101:	; Parameter 14 errno 16
x826:	mov ax, [errno]	; 3: 161 0 21
x829:	mov [bp + 30], ax	; 3: 137 70 30

file_test$102:	; Call 14 strerror 10
x832:	mov word [bp + 24], file_test$103	; 5: 199 70 24 78 3
x837:	mov [bp + 26], bp	; 3: 137 110 26
x840:	add bp, 24	; 3: 131 197 24
x843:	jmp strerror	; 3: 233 215 71

file_test$103:	; PostCall 14

file_test$104:	; GetReturnValue £temporary5010

file_test$105:	; Parameter 14 £temporary5010 10
x846:	mov [bp + 24], bx	; 3: 137 94 24

file_test$106:	; Call 14 printf 0
x849:	mov word [bp + 14], file_test$107	; 5: 199 70 14 100 3
x854:	mov [bp + 16], bp	; 3: 137 110 16
x857:	add bp, 14	; 3: 131 197 14
x860:	mov di, bp	; 2: 137 239
x862:	add di, 4	; 3: 131 199 4
x865:	jmp printf	; 3: 233 199 69

file_test$107:	; PostCall 14

file_test$108:	; Assign targetFilePtr string_Z#
x868:	mov word [bp + 10], string_Z#	; 5: 199 70 10 2 21

file_test$109:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$110:	; Parameter 12 targetFilePtr 6
x873:	mov ax, [bp + 10]	; 3: 139 70 10
x876:	mov [bp + 18], ax	; 3: 137 70 18

file_test$111:	; Call 12 remove 0
x879:	mov word [bp + 12], file_test$112	; 5: 199 70 12 125 3
x884:	mov [bp + 14], bp	; 3: 137 110 14
x887:	add bp, 12	; 3: 131 197 12
x890:	jmp remove	; 3: 233 75 71

file_test$112:	; PostCall 12

file_test$113:	; GetReturnValue £temporary5012

file_test$114:	; NotEqual 121 £temporary5012 0
x893:	cmp bx, 0	; 3: 131 251 0
x896:	jne file_test$121	; 2: 117 32

file_test$115:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$116:	; Parameter 12 string_2225s2220has20been20removed2E0A# 6
x898:	mov word [bp + 18], string_2225s2220has20been20removed2E0A#	; 5: 199 70 18 4 21

file_test$117:	; Parameter 12 targetFilePtr 8
x903:	mov ax, [bp + 10]	; 3: 139 70 10
x906:	mov [bp + 20], ax	; 3: 137 70 20

file_test$118:	; Call 12 printf 0
x909:	mov word [bp + 12], file_test$119	; 5: 199 70 12 160 3
x914:	mov [bp + 14], bp	; 3: 137 110 14
x917:	add bp, 12	; 3: 131 197 12
x920:	mov di, bp	; 2: 137 239
x922:	add di, 2	; 3: 131 199 2
x925:	jmp printf	; 3: 233 139 69

file_test$119:	; PostCall 12

file_test$120:	; Goto 132
x928:	jmp file_test$132	; 2: 235 53

file_test$121:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$122:	; Parameter 12 string_Error2025i3A2025s2E0A# 6
x930:	mov word [bp + 18], string_Error2025i3A2025s2E0A#	; 5: 199 70 18 241 20

file_test$123:	; Parameter 12 errno 8
x935:	mov ax, [errno]	; 3: 161 0 21
x938:	mov [bp + 20], ax	; 3: 137 70 20

file_test$124:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$125:	; Parameter 12 errno 16
x941:	mov ax, [errno]	; 3: 161 0 21
x944:	mov [bp + 28], ax	; 3: 137 70 28

file_test$126:	; Call 12 strerror 10
x947:	mov word [bp + 22], file_test$127	; 5: 199 70 22 193 3
x952:	mov [bp + 24], bp	; 3: 137 110 24
x955:	add bp, 22	; 3: 131 197 22
x958:	jmp strerror	; 3: 233 100 71

file_test$127:	; PostCall 12

file_test$128:	; GetReturnValue £temporary5015

file_test$129:	; Parameter 12 £temporary5015 10
x961:	mov [bp + 22], bx	; 3: 137 94 22

file_test$130:	; Call 12 printf 0
x964:	mov word [bp + 12], file_test$131	; 5: 199 70 12 215 3
x969:	mov [bp + 14], bp	; 3: 137 110 14
x972:	add bp, 12	; 3: 131 197 12
x975:	mov di, bp	; 2: 137 239
x977:	add di, 4	; 3: 131 199 4
x980:	jmp printf	; 3: 233 84 69

file_test$131:	; PostCall 12

file_test$132:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$133:	; Parameter 10 string_PBook2Etxt# 6
x983:	mov word [bp + 16], string_PBook2Etxt#	; 5: 199 70 16 28 21

file_test$134:	; Parameter 10 string_r# 8
x988:	mov word [bp + 18], string_r#	; 5: 199 70 18 222 17

file_test$135:	; Call 10 fopen 0
x993:	mov word [bp + 10], file_test$136	; 5: 199 70 10 239 3
x998:	mov [bp + 12], bp	; 3: 137 110 12
x1001:	add bp, 10	; 3: 131 197 10
x1004:	jmp fopen	; 3: 233 227 18

file_test$136:	; PostCall 10

file_test$137:	; GetReturnValue £temporary5017

file_test$138:	; Assign inFilePtr £temporary5017
x1007:	mov [bp + 10], bx	; 3: 137 94 10

file_test$139:	; NotEqual 151 inFilePtr 0
x1010:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x1014:	jne file_test$151	; 2: 117 59

file_test$140:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$141:	; Parameter 12 stderr 6
x1016:	mov ax, [stderr]	; 3: 161 226 17
x1019:	mov [bp + 18], ax	; 3: 137 70 18

file_test$142:	; Parameter 12 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x1022:	mov word [bp + 20], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 5: 199 70 20 40 20

file_test$143:	; Parameter 12 string_inFilePtr20213D20NULL# 10
x1027:	mov word [bp + 22], string_inFilePtr20213D20NULL#	; 5: 199 70 22 38 21

file_test$144:	; Parameter 12 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x1032:	mov word [bp + 24], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 5: 199 70 24 107 20

file_test$145:	; Parameter 12 50 14
x1037:	mov word [bp + 26], 50	; 5: 199 70 26 50 0

file_test$146:	; Call 12 fprintf 0
x1042:	mov word [bp + 12], file_test$147	; 5: 199 70 12 37 4
x1047:	mov [bp + 14], bp	; 3: 137 110 14
x1050:	add bp, 12	; 3: 131 197 12
x1053:	mov di, bp	; 2: 137 239
x1055:	add di, 6	; 3: 131 199 6
x1058:	jmp fprintf	; 3: 233 60 23

file_test$147:	; PostCall 12

file_test$148:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$149:	; Call 12 abort 0
x1061:	mov word [bp + 12], file_test$150	; 5: 199 70 12 51 4
x1066:	mov [bp + 14], bp	; 3: 137 110 14
x1069:	add bp, 12	; 3: 131 197 12
x1072:	jmp abort	; 3: 233 32 51

file_test$150:	; PostCall 12

file_test$151:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$152:	; Parameter 12 string_0A252D24s20252D24s0A# 6
x1075:	mov word [bp + 18], string_0A252D24s20252D24s0A#	; 5: 199 70 18 56 21

file_test$153:	; Parameter 12 string_Name# 8
x1080:	mov word [bp + 20], string_Name#	; 5: 199 70 20 70 21

file_test$154:	; Parameter 12 string_Phone# 10
x1085:	mov word [bp + 22], string_Phone#	; 5: 199 70 22 75 21

file_test$155:	; Call 12 printf 0
x1090:	mov word [bp + 12], file_test$156	; 5: 199 70 12 85 4
x1095:	mov [bp + 14], bp	; 3: 137 110 14
x1098:	add bp, 12	; 3: 131 197 12
x1101:	mov di, bp	; 2: 137 239
x1103:	add di, 4	; 3: 131 199 4
x1106:	jmp printf	; 3: 233 214 68

file_test$156:	; PostCall 12

file_test$157:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$158:	; Parameter 12 string_252D24s20252D24s0A# 6
x1109:	mov word [bp + 18], string_252D24s20252D24s0A#	; 5: 199 70 18 81 21

file_test$159:	; Parameter 12 string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D# 8
x1114:	mov word [bp + 20], string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#	; 5: 199 70 20 94 21

file_test$160:	; Parameter 12 string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D# 10
x1119:	mov word [bp + 22], string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#	; 5: 199 70 22 94 21

file_test$161:	; Call 12 printf 0
x1124:	mov word [bp + 12], file_test$162	; 5: 199 70 12 119 4
x1129:	mov [bp + 14], bp	; 3: 137 110 14
x1132:	add bp, 12	; 3: 131 197 12
x1135:	mov di, bp	; 2: 137 239
x1137:	add di, 4	; 3: 131 199 4
x1140:	jmp printf	; 3: 233 180 68

file_test$162:	; PostCall 12

file_test$163:	; CallHeader 16 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$164:	; Parameter 16 inFilePtr 6
x1143:	mov ax, [bp + 10]	; 3: 139 70 10
x1146:	mov [bp + 22], ax	; 3: 137 70 22

file_test$165:	; Parameter 16 string_25i# 8
x1149:	mov word [bp + 24], string_25i#	; 5: 199 70 24 194 20

file_test$166:	; address £temporary5024 size
x1154:	mov si, bp	; 2: 137 238
x1156:	add si, 14	; 3: 131 198 14

file_test$167:	; Parameter 16 £temporary5024 10
x1159:	mov [bp + 26], si	; 3: 137 118 26

file_test$168:	; Call 16 fscanf 0
x1162:	mov word [bp + 16], file_test$169	; 5: 199 70 16 157 4
x1167:	mov [bp + 18], bp	; 3: 137 110 18
x1170:	add bp, 16	; 3: 131 197 16
x1173:	mov di, bp	; 2: 137 239
x1175:	add di, 2	; 3: 131 199 2
x1178:	jmp fscanf	; 3: 233 199 50

file_test$169:	; PostCall 16

file_test$170:	; Assign count 0
x1181:	mov word [bp + 12], 0	; 5: 199 70 12 0 0

file_test$171:	; SignedGreaterThanEqual 187 count size
x1186:	mov ax, [bp + 14]	; 3: 139 70 14
x1189:	cmp [bp + 12], ax	; 3: 57 70 12
x1192:	jge file_test$187	; 2: 125 87

file_test$172:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$173:	; Parameter 56 inFilePtr 6
x1194:	mov ax, [bp + 10]	; 3: 139 70 10
x1197:	mov [bp + 62], ax	; 3: 137 70 62

file_test$174:	; Parameter 56 string_25s25s# 8
x1200:	mov word [bp + 64], string_25s25s#	; 5: 199 70 64 119 21

file_test$175:	; Parameter 56 name 10
x1205:	mov [bp + 66], bp	; 3: 137 110 66
x1208:	add word [bp + 66], 16	; 4: 131 70 66 16

file_test$176:	; Parameter 56 phone 12
x1212:	mov [bp + 68], bp	; 3: 137 110 68
x1215:	add word [bp + 68], 36	; 4: 131 70 68 36

file_test$177:	; Call 56 fscanf 0
x1219:	mov word [bp + 56], file_test$178	; 5: 199 70 56 214 4
x1224:	mov [bp + 58], bp	; 3: 137 110 58
x1227:	add bp, 56	; 3: 131 197 56
x1230:	mov di, bp	; 2: 137 239
x1232:	add di, 4	; 3: 131 199 4
x1235:	jmp fscanf	; 3: 233 142 50

file_test$178:	; PostCall 56

file_test$179:	; CallHeader 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$180:	; Parameter 56 string_252D24s20252D24s0A# 6
x1238:	mov word [bp + 62], string_252D24s20252D24s0A#	; 5: 199 70 62 81 21

file_test$181:	; Parameter 56 name 8
x1243:	mov [bp + 64], bp	; 3: 137 110 64
x1246:	add word [bp + 64], 16	; 4: 131 70 64 16

file_test$182:	; Parameter 56 phone 10
x1250:	mov [bp + 66], bp	; 3: 137 110 66
x1253:	add word [bp + 66], 36	; 4: 131 70 66 36

file_test$183:	; Call 56 printf 0
x1257:	mov word [bp + 56], file_test$184	; 5: 199 70 56 252 4
x1262:	mov [bp + 58], bp	; 3: 137 110 58
x1265:	add bp, 56	; 3: 131 197 56
x1268:	mov di, bp	; 2: 137 239
x1270:	add di, 4	; 3: 131 199 4
x1273:	jmp printf	; 3: 233 47 68

file_test$184:	; PostCall 56

file_test$185:	; Increment count
x1276:	inc word [bp + 12]	; 3: 255 70 12

file_test$186:	; Goto 171
x1279:	jmp file_test$171	; 2: 235 161

file_test$187:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$188:	; Parameter 12 string_0A# 6
x1281:	mov word [bp + 18], string_0A#	; 5: 199 70 18 124 21

file_test$189:	; Call 12 printf 0
x1286:	mov word [bp + 12], file_test$190	; 5: 199 70 12 22 5
x1291:	mov [bp + 14], bp	; 3: 137 110 14
x1294:	add bp, 12	; 3: 131 197 12
x1297:	mov di, bp	; 2: 137 239
x1299:	jmp printf	; 3: 233 21 68

file_test$190:	; PostCall 12

file_test$191:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$192:	; Parameter 12 inFilePtr 6
x1302:	mov ax, [bp + 10]	; 3: 139 70 10
x1305:	mov [bp + 18], ax	; 3: 137 70 18

file_test$193:	; Call 12 fclose 0
x1308:	mov word [bp + 12], file_test$194	; 5: 199 70 12 42 5
x1313:	mov [bp + 14], bp	; 3: 137 110 14
x1316:	add bp, 12	; 3: 131 197 12
x1319:	jmp fclose	; 3: 233 223 68

file_test$194:	; PostCall 12

file_test$195:	; Assign sourceFilePtr string_Flow12Etxt#
x1322:	mov word [bp + 10], string_Flow12Etxt#	; 5: 199 70 10 126 21

file_test$196:	; Assign targetFilePtr string_Flow22Etxt#
x1327:	mov word [bp + 12], string_Flow22Etxt#	; 5: 199 70 12 136 21

file_test$197:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$198:	; Parameter 14 sourceFilePtr 6
x1332:	mov ax, [bp + 10]	; 3: 139 70 10
x1335:	mov [bp + 20], ax	; 3: 137 70 20

file_test$199:	; Parameter 14 string_r# 8
x1338:	mov word [bp + 22], string_r#	; 5: 199 70 22 222 17

file_test$200:	; Call 14 fopen 0
x1343:	mov word [bp + 14], file_test$201	; 5: 199 70 14 77 5
x1348:	mov [bp + 16], bp	; 3: 137 110 16
x1351:	add bp, 14	; 3: 131 197 14
x1354:	jmp fopen	; 3: 233 133 17

file_test$201:	; PostCall 14

file_test$202:	; GetReturnValue £temporary5032

file_test$203:	; Assign inFilePtr £temporary5032
x1357:	mov [bp + 14], bx	; 3: 137 94 14

file_test$204:	; CallHeader 16 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$205:	; Parameter 16 targetFilePtr 6
x1360:	mov ax, [bp + 12]	; 3: 139 70 12
x1363:	mov [bp + 22], ax	; 3: 137 70 22

file_test$206:	; Parameter 16 string_w# 8
x1366:	mov word [bp + 24], string_w#	; 5: 199 70 24 224 17

file_test$207:	; Call 16 fopen 0
x1371:	mov word [bp + 16], file_test$208	; 5: 199 70 16 105 5
x1376:	mov [bp + 18], bp	; 3: 137 110 18
x1379:	add bp, 16	; 3: 131 197 16
x1382:	jmp fopen	; 3: 233 105 17

file_test$208:	; PostCall 16

file_test$209:	; GetReturnValue £temporary5033

file_test$210:	; Assign outFilePtr £temporary5033
x1385:	mov [bp + 16], bx	; 3: 137 94 16

file_test$211:	; NotEqual 223 inFilePtr 0
x1388:	cmp word [bp + 14], 0	; 4: 131 126 14 0
x1392:	jne file_test$223	; 2: 117 59

file_test$212:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$213:	; Parameter 18 stderr 6
x1394:	mov ax, [stderr]	; 3: 161 226 17
x1397:	mov [bp + 24], ax	; 3: 137 70 24

file_test$214:	; Parameter 18 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x1400:	mov word [bp + 26], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 5: 199 70 26 40 20

file_test$215:	; Parameter 18 string_inFilePtr20213D20NULL# 10
x1405:	mov word [bp + 28], string_inFilePtr20213D20NULL#	; 5: 199 70 28 38 21

file_test$216:	; Parameter 18 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x1410:	mov word [bp + 30], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 5: 199 70 30 107 20

file_test$217:	; Parameter 18 79 14
x1415:	mov word [bp + 32], 79	; 5: 199 70 32 79 0

file_test$218:	; Call 18 fprintf 0
x1420:	mov word [bp + 18], file_test$219	; 5: 199 70 18 159 5
x1425:	mov [bp + 20], bp	; 3: 137 110 20
x1428:	add bp, 18	; 3: 131 197 18
x1431:	mov di, bp	; 2: 137 239
x1433:	add di, 6	; 3: 131 199 6
x1436:	jmp fprintf	; 3: 233 194 21

file_test$219:	; PostCall 18

file_test$220:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$221:	; Call 18 abort 0
x1439:	mov word [bp + 18], file_test$222	; 5: 199 70 18 173 5
x1444:	mov [bp + 20], bp	; 3: 137 110 20
x1447:	add bp, 18	; 3: 131 197 18
x1450:	jmp abort	; 3: 233 166 49

file_test$222:	; PostCall 18

file_test$223:	; NotEqual 235 outFilePtr 0
x1453:	cmp word [bp + 16], 0	; 4: 131 126 16 0
x1457:	jne file_test$235	; 2: 117 59

file_test$224:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$225:	; Parameter 18 stderr 6
x1459:	mov ax, [stderr]	; 3: 161 226 17
x1462:	mov [bp + 24], ax	; 3: 137 70 24

file_test$226:	; Parameter 18 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x1465:	mov word [bp + 26], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 5: 199 70 26 40 20

file_test$227:	; Parameter 18 string_outFilePtr20213D20NULL# 10
x1470:	mov word [bp + 28], string_outFilePtr20213D20NULL#	; 5: 199 70 28 146 21

file_test$228:	; Parameter 18 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x1475:	mov word [bp + 30], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 5: 199 70 30 107 20

file_test$229:	; Parameter 18 80 14
x1480:	mov word [bp + 32], 80	; 5: 199 70 32 80 0

file_test$230:	; Call 18 fprintf 0
x1485:	mov word [bp + 18], file_test$231	; 5: 199 70 18 224 5
x1490:	mov [bp + 20], bp	; 3: 137 110 20
x1493:	add bp, 18	; 3: 131 197 18
x1496:	mov di, bp	; 2: 137 239
x1498:	add di, 6	; 3: 131 199 6
x1501:	jmp fprintf	; 3: 233 129 21

file_test$231:	; PostCall 18

file_test$232:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$233:	; Call 18 abort 0
x1504:	mov word [bp + 18], file_test$234	; 5: 199 70 18 238 5
x1509:	mov [bp + 20], bp	; 3: 137 110 20
x1512:	add bp, 18	; 3: 131 197 18
x1515:	jmp abort	; 3: 233 101 49

file_test$234:	; PostCall 18

file_test$235:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$236:	; Parameter 18 inFilePtr 6
x1518:	mov ax, [bp + 14]	; 3: 139 70 14
x1521:	mov [bp + 24], ax	; 3: 137 70 24

file_test$237:	; Call 18 fgetc 0
x1524:	mov word [bp + 18], file_test$238	; 5: 199 70 18 2 6
x1529:	mov [bp + 20], bp	; 3: 137 110 20
x1532:	add bp, 18	; 3: 131 197 18
x1535:	jmp fgetc	; 3: 233 118 69

file_test$238:	; PostCall 18

file_test$239:	; GetReturnValue £temporary5042

file_test$240:	; IntegralToIntegral £temporary5043 £temporary5042
x1538:	cmp bx, 0	; 3: 131 251 0
x1541:	jge file_test$241	; 2: 125 4
x1543:	neg bx	; 2: 247 219
x1545:	neg bl	; 2: 246 219

file_test$241:	; Assign c £temporary5043
x1547:	mov [bp + 18], bl	; 3: 136 94 18

file_test$242:	; IntegralToIntegral £temporary5044 c
x1550:	mov al, [bp + 18]	; 3: 138 70 18
x1553:	and ax, 255	; 3: 37 255 0
x1556:	cmp al, 0	; 2: 60 0
x1558:	jge file_test$243	; 2: 125 4
x1560:	neg al	; 2: 246 216
x1562:	neg ax	; 2: 247 216

file_test$243:	; Equal 257 £temporary5044 -1
x1564:	cmp ax, -1	; 3: 131 248 255
x1567:	je file_test$257	; 2: 116 70

file_test$244:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$245:	; IntegralToIntegral £temporary5046 c
x1569:	mov al, [bp + 18]	; 3: 138 70 18
x1572:	and ax, 255	; 3: 37 255 0
x1575:	cmp al, 0	; 2: 60 0
x1577:	jge file_test$246	; 2: 125 4
x1579:	neg al	; 2: 246 216
x1581:	neg ax	; 2: 247 216

file_test$246:	; Parameter 19 £temporary5046 6
x1583:	mov [bp + 25], ax	; 3: 137 70 25

file_test$247:	; Parameter 19 outFilePtr 8
x1586:	mov ax, [bp + 16]	; 3: 139 70 16
x1589:	mov [bp + 27], ax	; 3: 137 70 27

file_test$248:	; Call 19 putc 0
x1592:	mov word [bp + 19], file_test$249	; 5: 199 70 19 70 6
x1597:	mov [bp + 21], bp	; 3: 137 110 21
x1600:	add bp, 19	; 3: 131 197 19
x1603:	jmp putc	; 3: 233 205 69

file_test$249:	; PostCall 19

file_test$250:	; NotEqual 235 c 10
x1606:	cmp byte [bp + 18], 10	; 4: 128 126 18 10
x1610:	jne file_test$235	; 2: 117 162

file_test$251:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$252:	; Parameter 19 10 6
x1612:	mov word [bp + 25], 10	; 5: 199 70 25 10 0

file_test$253:	; Parameter 19 outFilePtr 8
x1617:	mov ax, [bp + 16]	; 3: 139 70 16
x1620:	mov [bp + 27], ax	; 3: 137 70 27

file_test$254:	; Call 19 putc 0
x1623:	mov word [bp + 19], file_test$255	; 5: 199 70 19 101 6
x1628:	mov [bp + 21], bp	; 3: 137 110 21
x1631:	add bp, 19	; 3: 131 197 19
x1634:	jmp putc	; 3: 233 174 69

file_test$255:	; PostCall 19

file_test$256:	; Goto 235
x1637:	jmp file_test$235	; 2: 235 135

file_test$257:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$258:	; Parameter 18 inFilePtr 6
x1639:	mov ax, [bp + 14]	; 3: 139 70 14
x1642:	mov [bp + 24], ax	; 3: 137 70 24

file_test$259:	; Call 18 fclose 0
x1645:	mov word [bp + 18], file_test$260	; 5: 199 70 18 123 6
x1650:	mov [bp + 20], bp	; 3: 137 110 20
x1653:	add bp, 18	; 3: 131 197 18
x1656:	jmp fclose	; 3: 233 142 67

file_test$260:	; PostCall 18

file_test$261:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$262:	; Parameter 18 outFilePtr 6
x1659:	mov ax, [bp + 16]	; 3: 139 70 16
x1662:	mov [bp + 24], ax	; 3: 137 70 24

file_test$263:	; Call 18 fclose 0
x1665:	mov word [bp + 18], file_test$264	; 5: 199 70 18 143 6
x1670:	mov [bp + 20], bp	; 3: 137 110 20
x1673:	add bp, 18	; 3: 131 197 18
x1676:	jmp fclose	; 3: 233 122 67

file_test$264:	; PostCall 18

file_test$265:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$266:	; Parameter 10 string_Test2Ebin# 6
x1679:	mov word [bp + 16], string_Test2Ebin#	; 5: 199 70 16 165 21

file_test$267:	; Parameter 10 string_w# 8
x1684:	mov word [bp + 18], string_w#	; 5: 199 70 18 224 17

file_test$268:	; Call 10 fopen 0
x1689:	mov word [bp + 10], file_test$269	; 5: 199 70 10 167 6
x1694:	mov [bp + 12], bp	; 3: 137 110 12
x1697:	add bp, 10	; 3: 131 197 10
x1700:	jmp fopen	; 3: 233 43 16

file_test$269:	; PostCall 10

file_test$270:	; GetReturnValue £temporary5053

file_test$271:	; Assign outFilePtr £temporary5053
x1703:	mov [bp + 10], bx	; 3: 137 94 10

file_test$272:	; NotEqual 284 outFilePtr 0
x1706:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x1710:	jne file_test$284	; 2: 117 59

file_test$273:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$274:	; Parameter 12 stderr 6
x1712:	mov ax, [stderr]	; 3: 161 226 17
x1715:	mov [bp + 18], ax	; 3: 137 70 18

file_test$275:	; Parameter 12 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x1718:	mov word [bp + 20], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 5: 199 70 20 40 20

file_test$276:	; Parameter 12 string_outFilePtr20213D20NULL# 10
x1723:	mov word [bp + 22], string_outFilePtr20213D20NULL#	; 5: 199 70 22 146 21

file_test$277:	; Parameter 12 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x1728:	mov word [bp + 24], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 5: 199 70 24 107 20

file_test$278:	; Parameter 12 101 14
x1733:	mov word [bp + 26], 101	; 5: 199 70 26 101 0

file_test$279:	; Call 12 fprintf 0
x1738:	mov word [bp + 12], file_test$280	; 5: 199 70 12 221 6
x1743:	mov [bp + 14], bp	; 3: 137 110 14
x1746:	add bp, 12	; 3: 131 197 12
x1749:	mov di, bp	; 2: 137 239
x1751:	add di, 6	; 3: 131 199 6
x1754:	jmp fprintf	; 3: 233 132 20

file_test$280:	; PostCall 12

file_test$281:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$282:	; Call 12 abort 0
x1757:	mov word [bp + 12], file_test$283	; 5: 199 70 12 235 6
x1762:	mov [bp + 14], bp	; 3: 137 110 14
x1765:	add bp, 12	; 3: 131 197 12
x1768:	jmp abort	; 3: 233 104 48

file_test$283:	; PostCall 12

file_test$284:	; Assign size 10
x1771:	mov word [bp + 12], 10	; 5: 199 70 12 10 0

file_test$285:	; CallHeader 16 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$286:	; address £temporary5058 size
x1776:	mov si, bp	; 2: 137 238
x1778:	add si, 12	; 3: 131 198 12

file_test$287:	; Parameter 16 £temporary5058 6
x1781:	mov [bp + 22], si	; 3: 137 118 22

file_test$288:	; Parameter 16 2 8
x1784:	mov word [bp + 24], 2	; 5: 199 70 24 2 0

file_test$289:	; Parameter 16 1 10
x1789:	mov word [bp + 26], 1	; 5: 199 70 26 1 0

file_test$290:	; Parameter 16 outFilePtr 12
x1794:	mov ax, [bp + 10]	; 3: 139 70 10
x1797:	mov [bp + 28], ax	; 3: 137 70 28

file_test$291:	; Call 16 fwrite 0
x1800:	mov word [bp + 16], file_test$292	; 5: 199 70 16 22 7
x1805:	mov [bp + 18], bp	; 3: 137 110 18
x1808:	add bp, 16	; 3: 131 197 16
x1811:	jmp fwrite	; 3: 233 52 69

file_test$292:	; PostCall 16

file_test$293:	; Assign index 0
x1814:	mov word [bp + 14], 0	; 5: 199 70 14 0 0

file_test$294:	; SignedGreaterThanEqual 308 index size
x1819:	mov ax, [bp + 12]	; 3: 139 70 12
x1822:	cmp [bp + 14], ax	; 3: 57 70 14
x1825:	jge file_test$308	; 2: 125 61

file_test$295:	; SignedMultiply £temporary5062 index index
x1827:	mov ax, [bp + 14]	; 3: 139 70 14
x1830:	xor dx, dx	; 2: 49 210
x1832:	imul word [bp + 14]	; 3: 247 110 14

file_test$296:	; IntegralToFloating £temporary5063 £temporary5062
x1835:	mov [container2bytes#], ax	; 3: 163 174 21
x1838:	fild word [container2bytes#]	; 4: 223 6 174 21

file_test$297:	; PopFloat value
x1842:	fstp qword [bp + 16]	; 3: 221 94 16

file_test$298:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$299:	; address £temporary5064 value
x1845:	mov si, bp	; 2: 137 238
x1847:	add si, 16	; 3: 131 198 16

file_test$300:	; Parameter 24 £temporary5064 6
x1850:	mov [bp + 30], si	; 3: 137 118 30

file_test$301:	; Parameter 24 8 8
x1853:	mov word [bp + 32], 8	; 5: 199 70 32 8 0

file_test$302:	; Parameter 24 1 10
x1858:	mov word [bp + 34], 1	; 5: 199 70 34 1 0

file_test$303:	; Parameter 24 outFilePtr 12
x1863:	mov ax, [bp + 10]	; 3: 139 70 10
x1866:	mov [bp + 36], ax	; 3: 137 70 36

file_test$304:	; Call 24 fwrite 0
x1869:	mov word [bp + 24], file_test$305	; 5: 199 70 24 91 7
x1874:	mov [bp + 26], bp	; 3: 137 110 26
x1877:	add bp, 24	; 3: 131 197 24
x1880:	jmp fwrite	; 3: 233 239 68

file_test$305:	; PostCall 24

file_test$306:	; Increment index
x1883:	inc word [bp + 14]	; 3: 255 70 14

file_test$307:	; Goto 294
x1886:	jmp file_test$294	; 2: 235 187

file_test$308:	; CallHeader 16 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$309:	; Parameter 16 outFilePtr 6
x1888:	mov ax, [bp + 10]	; 3: 139 70 10
x1891:	mov [bp + 22], ax	; 3: 137 70 22

file_test$310:	; Call 16 fclose 0
x1894:	mov word [bp + 16], file_test$311	; 5: 199 70 16 116 7
x1899:	mov [bp + 18], bp	; 3: 137 110 18
x1902:	add bp, 16	; 3: 131 197 16
x1905:	jmp fclose	; 3: 233 149 66

file_test$311:	; PostCall 16

file_test$312:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$313:	; Parameter 10 string_Test2Ebin# 6
x1908:	mov word [bp + 16], string_Test2Ebin#	; 5: 199 70 16 165 21

file_test$314:	; Parameter 10 string_r# 8
x1913:	mov word [bp + 18], string_r#	; 5: 199 70 18 222 17

file_test$315:	; Call 10 fopen 0
x1918:	mov word [bp + 10], file_test$316	; 5: 199 70 10 140 7
x1923:	mov [bp + 12], bp	; 3: 137 110 12
x1926:	add bp, 10	; 3: 131 197 10
x1929:	jmp fopen	; 3: 233 70 15

file_test$316:	; PostCall 10

file_test$317:	; GetReturnValue £temporary5067

file_test$318:	; Assign inFilePtr £temporary5067
x1932:	mov [bp + 10], bx	; 3: 137 94 10

file_test$319:	; NotEqual 331 inFilePtr 0
x1935:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x1939:	jne file_test$331	; 2: 117 59

file_test$320:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$321:	; Parameter 12 stderr 6
x1941:	mov ax, [stderr]	; 3: 161 226 17
x1944:	mov [bp + 18], ax	; 3: 137 70 18

file_test$322:	; Parameter 12 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x1947:	mov word [bp + 20], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 5: 199 70 20 40 20

file_test$323:	; Parameter 12 string_inFilePtr20213D20NULL# 10
x1952:	mov word [bp + 22], string_inFilePtr20213D20NULL#	; 5: 199 70 22 38 21

file_test$324:	; Parameter 12 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x1957:	mov word [bp + 24], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 5: 199 70 24 107 20

file_test$325:	; Parameter 12 116 14
x1962:	mov word [bp + 26], 116	; 5: 199 70 26 116 0

file_test$326:	; Call 12 fprintf 0
x1967:	mov word [bp + 12], file_test$327	; 5: 199 70 12 194 7
x1972:	mov [bp + 14], bp	; 3: 137 110 14
x1975:	add bp, 12	; 3: 131 197 12
x1978:	mov di, bp	; 2: 137 239
x1980:	add di, 6	; 3: 131 199 6
x1983:	jmp fprintf	; 3: 233 159 19

file_test$327:	; PostCall 12

file_test$328:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$329:	; Call 12 abort 0
x1986:	mov word [bp + 12], file_test$330	; 5: 199 70 12 208 7
x1991:	mov [bp + 14], bp	; 3: 137 110 14
x1994:	add bp, 12	; 3: 131 197 12
x1997:	jmp abort	; 3: 233 131 47

file_test$330:	; PostCall 12

file_test$331:	; CallHeader 96 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$332:	; address £temporary5072 size
x2000:	mov si, bp	; 2: 137 238
x2002:	add si, 12	; 3: 131 198 12

file_test$333:	; Parameter 96 £temporary5072 6
x2005:	mov [bp + 102], si	; 3: 137 118 102

file_test$334:	; Parameter 96 2 8
x2008:	mov word [bp + 104], 2	; 5: 199 70 104 2 0

file_test$335:	; Parameter 96 1 10
x2013:	mov word [bp + 106], 1	; 5: 199 70 106 1 0

file_test$336:	; Parameter 96 inFilePtr 12
x2018:	mov ax, [bp + 10]	; 3: 139 70 10
x2021:	mov [bp + 108], ax	; 3: 137 70 108

file_test$337:	; Call 96 fread 0
x2024:	mov word [bp + 96], file_test$338	; 5: 199 70 96 246 7
x2029:	mov [bp + 98], bp	; 3: 137 110 98
x2032:	add bp, 96	; 3: 131 197 96
x2035:	jmp fread	; 3: 233 218 67

file_test$338:	; PostCall 96

file_test$339:	; CallHeader 96 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$340:	; Parameter 96 string_size12025i0A# 6
x2038:	mov word [bp + 102], string_size12025i0A#	; 5: 199 70 102 176 21

file_test$341:	; Parameter 96 size 8
x2043:	mov ax, [bp + 12]	; 3: 139 70 12
x2046:	mov [bp + 104], ax	; 3: 137 70 104

file_test$342:	; Call 96 printf 0
x2049:	mov word [bp + 96], file_test$343	; 5: 199 70 96 20 8
x2054:	mov [bp + 98], bp	; 3: 137 110 98
x2057:	add bp, 96	; 3: 131 197 96
x2060:	mov di, bp	; 2: 137 239
x2062:	add di, 2	; 3: 131 199 2
x2065:	jmp printf	; 3: 233 23 65

file_test$343:	; PostCall 96

file_test$344:	; CallHeader 96 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$345:	; address £temporary5075 arr
x2068:	mov si, bp	; 2: 137 238
x2070:	add si, 16	; 3: 131 198 16

file_test$346:	; Parameter 96 £temporary5075 6
x2073:	mov [bp + 102], si	; 3: 137 118 102

file_test$347:	; Parameter 96 80 8
x2076:	mov word [bp + 104], 80	; 5: 199 70 104 80 0

file_test$348:	; Parameter 96 1 10
x2081:	mov word [bp + 106], 1	; 5: 199 70 106 1 0

file_test$349:	; Parameter 96 inFilePtr 12
x2086:	mov ax, [bp + 10]	; 3: 139 70 10
x2089:	mov [bp + 108], ax	; 3: 137 70 108

file_test$350:	; Call 96 fread 0
x2092:	mov word [bp + 96], file_test$351	; 5: 199 70 96 58 8
x2097:	mov [bp + 98], bp	; 3: 137 110 98
x2100:	add bp, 96	; 3: 131 197 96
x2103:	jmp fread	; 3: 233 150 67

file_test$351:	; PostCall 96

file_test$352:	; CallHeader 96 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$353:	; Parameter 96 inFilePtr 6
x2106:	mov ax, [bp + 10]	; 3: 139 70 10
x2109:	mov [bp + 102], ax	; 3: 137 70 102

file_test$354:	; Call 96 fclose 0
x2112:	mov word [bp + 96], file_test$355	; 5: 199 70 96 78 8
x2117:	mov [bp + 98], bp	; 3: 137 110 98
x2120:	add bp, 96	; 3: 131 197 96
x2123:	jmp fclose	; 3: 233 187 65

file_test$355:	; PostCall 96

file_test$356:	; Assign index 0
x2126:	mov word [bp + 14], 0	; 5: 199 70 14 0 0

file_test$357:	; SignedGreaterThanEqual 370 index 10
x2131:	cmp word [bp + 14], 10	; 4: 131 126 14 10
x2135:	jge file_test$370	; 2: 125 56

file_test$358:	; CallHeader 96 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$359:	; Parameter 96 string_index12025i3A20value2025f0A# 6
x2137:	mov word [bp + 102], string_index12025i3A20value2025f0A#	; 5: 199 70 102 186 21

file_test$360:	; Parameter 96 index 8
x2142:	mov ax, [bp + 14]	; 3: 139 70 14
x2145:	mov [bp + 104], ax	; 3: 137 70 104

file_test$361:	; UnsignedMultiply £temporary5081 index 8
x2148:	mov ax, [bp + 14]	; 3: 139 70 14
x2151:	xor dx, dx	; 2: 49 210
x2153:	mul word [int2$8#]	; 4: 247 38 207 21

file_test$362:	; BinaryAdd £temporary5082 arr £temporary5081
x2157:	mov si, bp	; 2: 137 238
x2159:	add si, 16	; 3: 131 198 16
x2162:	add si, ax	; 2: 1 198

file_test$363:	; Deref £temporary5080 -> £temporary5082 £temporary5082 0

file_test$364:	; PushFloat £temporary5080 -> £temporary5082
x2164:	fld qword [si]	; 2: 221 4

file_test$365:	; Parameter 96 £temporary5080 -> £temporary5082 10
x2166:	fstp qword [bp + 106]	; 3: 221 94 106

file_test$366:	; Call 96 printf 0
x2169:	mov word [bp + 96], file_test$367	; 5: 199 70 96 140 8
x2174:	mov [bp + 98], bp	; 3: 137 110 98
x2177:	add bp, 96	; 3: 131 197 96
x2180:	mov di, bp	; 2: 137 239
x2182:	add di, 10	; 3: 131 199 10
x2185:	jmp printf	; 3: 233 159 64

file_test$367:	; PostCall 96

file_test$368:	; Increment index
x2188:	inc word [bp + 14]	; 3: 255 70 14

file_test$369:	; Goto 357
x2191:	jmp file_test$357	; 2: 235 194

file_test$370:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$371:	; Parameter 12 string_0A# 6
x2193:	mov word [bp + 18], string_0A#	; 5: 199 70 18 124 21

file_test$372:	; Call 12 printf 0
x2198:	mov word [bp + 12], file_test$373	; 5: 199 70 12 166 8
x2203:	mov [bp + 14], bp	; 3: 137 110 14
x2206:	add bp, 12	; 3: 131 197 12
x2209:	mov di, bp	; 2: 137 239
x2211:	jmp printf	; 3: 233 133 64

file_test$373:	; PostCall 12

file_test$374:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$375:	; Parameter 10 string_Test2Ebin# 6
x2214:	mov word [bp + 16], string_Test2Ebin#	; 5: 199 70 16 165 21

file_test$376:	; Parameter 10 string_r# 8
x2219:	mov word [bp + 18], string_r#	; 5: 199 70 18 222 17

file_test$377:	; Call 10 fopen 0
x2224:	mov word [bp + 10], file_test$378	; 5: 199 70 10 190 8
x2229:	mov [bp + 12], bp	; 3: 137 110 12
x2232:	add bp, 10	; 3: 131 197 10
x2235:	jmp fopen	; 3: 233 20 14

file_test$378:	; PostCall 10

file_test$379:	; GetReturnValue £temporary5085

file_test$380:	; Assign inFilePtr £temporary5085
x2238:	mov [bp + 10], bx	; 3: 137 94 10

file_test$381:	; NotEqual 393 inFilePtr 0
x2241:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x2245:	jne file_test$393	; 2: 117 59

file_test$382:	; CallHeader 16 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$383:	; Parameter 16 stderr 6
x2247:	mov ax, [stderr]	; 3: 161 226 17
x2250:	mov [bp + 22], ax	; 3: 137 70 22

file_test$384:	; Parameter 16 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x2253:	mov word [bp + 24], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 5: 199 70 24 40 20

file_test$385:	; Parameter 16 string_inFilePtr20213D20NULL# 10
x2258:	mov word [bp + 26], string_inFilePtr20213D20NULL#	; 5: 199 70 26 38 21

file_test$386:	; Parameter 16 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x2263:	mov word [bp + 28], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 5: 199 70 28 107 20

file_test$387:	; Parameter 16 137 14
x2268:	mov word [bp + 30], 137	; 5: 199 70 30 137 0

file_test$388:	; Call 16 fprintf 0
x2273:	mov word [bp + 16], file_test$389	; 5: 199 70 16 244 8
x2278:	mov [bp + 18], bp	; 3: 137 110 18
x2281:	add bp, 16	; 3: 131 197 16
x2284:	mov di, bp	; 2: 137 239
x2286:	add di, 6	; 3: 131 199 6
x2289:	jmp fprintf	; 3: 233 109 18

file_test$389:	; PostCall 16

file_test$390:	; CallHeader 16 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$391:	; Call 16 abort 0
x2292:	mov word [bp + 16], file_test$392	; 5: 199 70 16 2 9
x2297:	mov [bp + 18], bp	; 3: 137 110 18
x2300:	add bp, 16	; 3: 131 197 16
x2303:	jmp abort	; 3: 233 81 46

file_test$392:	; PostCall 16

file_test$393:	; CallHeader 16 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$394:	; address £temporary5090 size
x2306:	mov si, bp	; 2: 137 238
x2308:	add si, 12	; 3: 131 198 12

file_test$395:	; Parameter 16 £temporary5090 6
x2311:	mov [bp + 22], si	; 3: 137 118 22

file_test$396:	; Parameter 16 2 8
x2314:	mov word [bp + 24], 2	; 5: 199 70 24 2 0

file_test$397:	; Parameter 16 1 10
x2319:	mov word [bp + 26], 1	; 5: 199 70 26 1 0

file_test$398:	; Parameter 16 inFilePtr 12
x2324:	mov ax, [bp + 10]	; 3: 139 70 10
x2327:	mov [bp + 28], ax	; 3: 137 70 28

file_test$399:	; Call 16 fread 0
x2330:	mov word [bp + 16], file_test$400	; 5: 199 70 16 40 9
x2335:	mov [bp + 18], bp	; 3: 137 110 18
x2338:	add bp, 16	; 3: 131 197 16
x2341:	jmp fread	; 3: 233 168 66

file_test$400:	; PostCall 16

file_test$401:	; CallHeader 16 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$402:	; Parameter 16 string_size22025i0A# 6
x2344:	mov word [bp + 22], string_size22025i0A#	; 5: 199 70 22 209 21

file_test$403:	; Parameter 16 size 8
x2349:	mov ax, [bp + 12]	; 3: 139 70 12
x2352:	mov [bp + 24], ax	; 3: 137 70 24

file_test$404:	; Call 16 printf 0
x2355:	mov word [bp + 16], file_test$405	; 5: 199 70 16 70 9
x2360:	mov [bp + 18], bp	; 3: 137 110 18
x2363:	add bp, 16	; 3: 131 197 16
x2366:	mov di, bp	; 2: 137 239
x2368:	add di, 2	; 3: 131 199 2
x2371:	jmp printf	; 3: 233 229 63

file_test$405:	; PostCall 16

file_test$406:	; Assign index 0
x2374:	mov word [bp + 14], 0	; 5: 199 70 14 0 0

file_test$407:	; SignedGreaterThanEqual 425 index size
x2379:	mov ax, [bp + 12]	; 3: 139 70 12
x2382:	cmp [bp + 14], ax	; 3: 57 70 14
x2385:	jge file_test$425	; 2: 125 79

file_test$408:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$409:	; address £temporary5095 value
x2387:	mov si, bp	; 2: 137 238
x2389:	add si, 16	; 3: 131 198 16

file_test$410:	; Parameter 24 £temporary5095 6
x2392:	mov [bp + 30], si	; 3: 137 118 30

file_test$411:	; Parameter 24 8 8
x2395:	mov word [bp + 32], 8	; 5: 199 70 32 8 0

file_test$412:	; Parameter 24 1 10
x2400:	mov word [bp + 34], 1	; 5: 199 70 34 1 0

file_test$413:	; Parameter 24 inFilePtr 12
x2405:	mov ax, [bp + 10]	; 3: 139 70 10
x2408:	mov [bp + 36], ax	; 3: 137 70 36

file_test$414:	; Call 24 fread 0
x2411:	mov word [bp + 24], file_test$415	; 5: 199 70 24 121 9
x2416:	mov [bp + 26], bp	; 3: 137 110 26
x2419:	add bp, 24	; 3: 131 197 24
x2422:	jmp fread	; 3: 233 87 66

file_test$415:	; PostCall 24

file_test$416:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$417:	; Parameter 24 string_index22025i3A20value2025f0A# 6
x2425:	mov word [bp + 30], string_index22025i3A20value2025f0A#	; 5: 199 70 30 219 21

file_test$418:	; Parameter 24 index 8
x2430:	mov ax, [bp + 14]	; 3: 139 70 14
x2433:	mov [bp + 32], ax	; 3: 137 70 32

file_test$419:	; PushFloat value
x2436:	fld qword [bp + 16]	; 3: 221 70 16

file_test$420:	; Parameter 24 value 10
x2439:	fstp qword [bp + 34]	; 3: 221 94 34

file_test$421:	; Call 24 printf 0
x2442:	mov word [bp + 24], file_test$422	; 5: 199 70 24 157 9
x2447:	mov [bp + 26], bp	; 3: 137 110 26
x2450:	add bp, 24	; 3: 131 197 24
x2453:	mov di, bp	; 2: 137 239
x2455:	add di, 10	; 3: 131 199 10
x2458:	jmp printf	; 3: 233 142 63

file_test$422:	; PostCall 24

file_test$423:	; Increment index
x2461:	inc word [bp + 14]	; 3: 255 70 14

file_test$424:	; Goto 407
x2464:	jmp file_test$407	; 2: 235 169

file_test$425:	; CallHeader 16 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$426:	; Parameter 16 string_0A# 6
x2466:	mov word [bp + 22], string_0A#	; 5: 199 70 22 124 21

file_test$427:	; Call 16 printf 0
x2471:	mov word [bp + 16], file_test$428	; 5: 199 70 16 183 9
x2476:	mov [bp + 18], bp	; 3: 137 110 18
x2479:	add bp, 16	; 3: 131 197 16
x2482:	mov di, bp	; 2: 137 239
x2484:	jmp printf	; 3: 233 116 63

file_test$428:	; PostCall 16

file_test$429:	; CallHeader 16 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$430:	; Parameter 16 inFilePtr 6
x2487:	mov ax, [bp + 10]	; 3: 139 70 10
x2490:	mov [bp + 22], ax	; 3: 137 70 22

file_test$431:	; Call 16 fclose 0
x2493:	mov word [bp + 16], file_test$432	; 5: 199 70 16 203 9
x2498:	mov [bp + 18], bp	; 3: 137 110 18
x2501:	add bp, 16	; 3: 131 197 16
x2504:	jmp fclose	; 3: 233 62 64

file_test$432:	; PostCall 16

file_test$433:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$434:	; Parameter 10 string_Test2Ebin# 6
x2507:	mov word [bp + 16], string_Test2Ebin#	; 5: 199 70 16 165 21

file_test$435:	; Parameter 10 string_r# 8
x2512:	mov word [bp + 18], string_r#	; 5: 199 70 18 222 17

file_test$436:	; Call 10 fopen 0
x2517:	mov word [bp + 10], file_test$437	; 5: 199 70 10 227 9
x2522:	mov [bp + 12], bp	; 3: 137 110 12
x2525:	add bp, 10	; 3: 131 197 10
x2528:	jmp fopen	; 3: 233 239 12

file_test$437:	; PostCall 10

file_test$438:	; GetReturnValue £temporary5100

file_test$439:	; Assign inFilePtr £temporary5100
x2531:	mov [bp + 10], bx	; 3: 137 94 10

file_test$440:	; NotEqual 452 inFilePtr 0
x2534:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x2538:	jne file_test$452	; 2: 117 59

file_test$441:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$442:	; Parameter 14 stderr 6
x2540:	mov ax, [stderr]	; 3: 161 226 17
x2543:	mov [bp + 20], ax	; 3: 137 70 20

file_test$443:	; Parameter 14 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x2546:	mov word [bp + 22], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 5: 199 70 22 40 20

file_test$444:	; Parameter 14 string_inFilePtr20213D20NULL# 10
x2551:	mov word [bp + 24], string_inFilePtr20213D20NULL#	; 5: 199 70 24 38 21

file_test$445:	; Parameter 14 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x2556:	mov word [bp + 26], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 5: 199 70 26 107 20

file_test$446:	; Parameter 14 154 14
x2561:	mov word [bp + 28], 154	; 5: 199 70 28 154 0

file_test$447:	; Call 14 fprintf 0
x2566:	mov word [bp + 14], file_test$448	; 5: 199 70 14 25 10
x2571:	mov [bp + 16], bp	; 3: 137 110 16
x2574:	add bp, 14	; 3: 131 197 14
x2577:	mov di, bp	; 2: 137 239
x2579:	add di, 6	; 3: 131 199 6
x2582:	jmp fprintf	; 3: 233 72 17

file_test$448:	; PostCall 14

file_test$449:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$450:	; Call 14 abort 0
x2585:	mov word [bp + 14], file_test$451	; 5: 199 70 14 39 10
x2590:	mov [bp + 16], bp	; 3: 137 110 16
x2593:	add bp, 14	; 3: 131 197 14
x2596:	jmp abort	; 3: 233 44 45

file_test$451:	; PostCall 14

file_test$452:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$453:	; address £temporary5105 size
x2599:	mov si, bp	; 2: 137 238
x2601:	add si, 12	; 3: 131 198 12

file_test$454:	; Parameter 14 £temporary5105 6
x2604:	mov [bp + 20], si	; 3: 137 118 20

file_test$455:	; Parameter 14 2 8
x2607:	mov word [bp + 22], 2	; 5: 199 70 22 2 0

file_test$456:	; Parameter 14 1 10
x2612:	mov word [bp + 24], 1	; 5: 199 70 24 1 0

file_test$457:	; Parameter 14 inFilePtr 12
x2617:	mov ax, [bp + 10]	; 3: 139 70 10
x2620:	mov [bp + 26], ax	; 3: 137 70 26

file_test$458:	; Call 14 fread 0
x2623:	mov word [bp + 14], file_test$459	; 5: 199 70 14 77 10
x2628:	mov [bp + 16], bp	; 3: 137 110 16
x2631:	add bp, 14	; 3: 131 197 14
x2634:	jmp fread	; 3: 233 131 65

file_test$459:	; PostCall 14

file_test$460:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$461:	; Parameter 14 string_size32025i20total2025i0A# 6
x2637:	mov word [bp + 20], string_size32025i20total2025i0A#	; 5: 199 70 20 240 21

file_test$462:	; Parameter 14 size 8
x2642:	mov ax, [bp + 12]	; 3: 139 70 12
x2645:	mov [bp + 22], ax	; 3: 137 70 22

file_test$463:	; SignedMultiply £temporary5107 size 8
x2648:	mov ax, [bp + 12]	; 3: 139 70 12
x2651:	xor dx, dx	; 2: 49 210
x2653:	imul word [int2$8#]	; 4: 247 46 207 21

file_test$464:	; Parameter 14 £temporary5107 10
x2657:	mov [bp + 24], ax	; 3: 137 70 24

file_test$465:	; Call 14 printf 0
x2660:	mov word [bp + 14], file_test$466	; 5: 199 70 14 119 10
x2665:	mov [bp + 16], bp	; 3: 137 110 16
x2668:	add bp, 14	; 3: 131 197 14
x2671:	mov di, bp	; 2: 137 239
x2673:	add di, 4	; 3: 131 199 4
x2676:	jmp printf	; 3: 233 180 62

file_test$466:	; PostCall 14

file_test$467:	; SignedMultiply total size 8
x2679:	mov ax, [bp + 12]	; 3: 139 70 12
x2682:	xor dx, dx	; 2: 49 210
x2684:	imul word [int2$8#]	; 4: 247 46 207 21
x2688:	mov [bp + 14], ax	; 3: 137 70 14

file_test$468:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$469:	; Parameter 18 total 6
x2691:	mov ax, [bp + 14]	; 3: 139 70 14
x2694:	mov [bp + 24], ax	; 3: 137 70 24

file_test$470:	; Call 18 malloc 0
x2697:	mov word [bp + 18], file_test$471	; 5: 199 70 18 151 10
x2702:	mov [bp + 20], bp	; 3: 137 110 20
x2705:	add bp, 18	; 3: 131 197 18
x2708:	jmp malloc	; 3: 233 246 65

file_test$471:	; PostCall 18

file_test$472:	; GetReturnValue £temporary5110

file_test$473:	; Assign p £temporary5110
x2711:	mov [bp + 18], bx	; 3: 137 94 18

file_test$474:	; UnsignedMultiply £temporary5111 size 8
x2714:	mov ax, [bp + 12]	; 3: 139 70 12
x2717:	xor dx, dx	; 2: 49 210
x2719:	mul word [int2$8#]	; 4: 247 38 207 21

file_test$475:	; BinaryAdd endPtr p £temporary5111
x2723:	mov bx, [bp + 18]	; 3: 139 94 18
x2726:	add bx, ax	; 2: 1 195
x2728:	mov [bp + 20], bx	; 3: 137 94 20

file_test$476:	; NotEqual 488 p 0
x2731:	cmp word [bp + 18], 0	; 4: 131 126 18 0
x2735:	jne file_test$488	; 2: 117 59

file_test$477:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$478:	; Parameter 22 stderr 6
x2737:	mov ax, [stderr]	; 3: 161 226 17
x2740:	mov [bp + 28], ax	; 3: 137 70 28

file_test$479:	; Parameter 22 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x2743:	mov word [bp + 30], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 5: 199 70 30 40 20

file_test$480:	; Parameter 22 string_p20213D20NULL# 10
x2748:	mov word [bp + 32], string_p20213D20NULL#	; 5: 199 70 32 3 22

file_test$481:	; Parameter 22 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x2753:	mov word [bp + 34], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 5: 199 70 34 107 20

file_test$482:	; Parameter 22 161 14
x2758:	mov word [bp + 36], 161	; 5: 199 70 36 161 0

file_test$483:	; Call 22 fprintf 0
x2763:	mov word [bp + 22], file_test$484	; 5: 199 70 22 222 10
x2768:	mov [bp + 24], bp	; 3: 137 110 24
x2771:	add bp, 22	; 3: 131 197 22
x2774:	mov di, bp	; 2: 137 239
x2776:	add di, 6	; 3: 131 199 6
x2779:	jmp fprintf	; 3: 233 131 16

file_test$484:	; PostCall 22

file_test$485:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$486:	; Call 22 abort 0
x2782:	mov word [bp + 22], file_test$487	; 5: 199 70 22 236 10
x2787:	mov [bp + 24], bp	; 3: 137 110 24
x2790:	add bp, 22	; 3: 131 197 22
x2793:	jmp abort	; 3: 233 103 44

file_test$487:	; PostCall 22

file_test$488:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$489:	; Parameter 22 string_malloc2025u2025u2025u0A# 6
x2796:	mov word [bp + 28], string_malloc2025u2025u2025u0A#	; 5: 199 70 28 13 22

file_test$490:	; Parameter 22 p 8
x2801:	mov ax, [bp + 18]	; 3: 139 70 18
x2804:	mov [bp + 30], ax	; 3: 137 70 30

file_test$491:	; Parameter 22 total 10
x2807:	mov ax, [bp + 14]	; 3: 139 70 14
x2810:	mov [bp + 32], ax	; 3: 137 70 32

file_test$492:	; Parameter 22 endPtr 12
x2813:	mov ax, [bp + 20]	; 3: 139 70 20
x2816:	mov [bp + 34], ax	; 3: 137 70 34

file_test$493:	; Call 22 printf 0
x2819:	mov word [bp + 22], file_test$494	; 5: 199 70 22 22 11
x2824:	mov [bp + 24], bp	; 3: 137 110 24
x2827:	add bp, 22	; 3: 131 197 22
x2830:	mov di, bp	; 2: 137 239
x2832:	add di, 6	; 3: 131 199 6
x2835:	jmp printf	; 3: 233 21 62

file_test$494:	; PostCall 22

file_test$495:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$496:	; Parameter 22 p 6
x2838:	mov ax, [bp + 18]	; 3: 139 70 18
x2841:	mov [bp + 28], ax	; 3: 137 70 28

file_test$497:	; Parameter 22 total 8
x2844:	mov ax, [bp + 14]	; 3: 139 70 14
x2847:	mov [bp + 30], ax	; 3: 137 70 30

file_test$498:	; Parameter 22 1 10
x2850:	mov word [bp + 32], 1	; 5: 199 70 32 1 0

file_test$499:	; Parameter 22 inFilePtr 12
x2855:	mov ax, [bp + 10]	; 3: 139 70 10
x2858:	mov [bp + 34], ax	; 3: 137 70 34

file_test$500:	; Call 22 fread 0
x2861:	mov word [bp + 22], file_test$501	; 5: 199 70 22 59 11
x2866:	mov [bp + 24], bp	; 3: 137 110 24
x2869:	add bp, 22	; 3: 131 197 22
x2872:	jmp fread	; 3: 233 149 64

file_test$501:	; PostCall 22

file_test$502:	; Assign index 0
x2875:	mov word [bp + 16], 0	; 5: 199 70 16 0 0

file_test$503:	; SignedGreaterThanEqual 516 index size
x2880:	mov ax, [bp + 12]	; 3: 139 70 12
x2883:	cmp [bp + 16], ax	; 3: 57 70 16
x2886:	jge file_test$516	; 2: 125 54

file_test$504:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$505:	; Parameter 22 string_index32025i3A20value2025f0A# 6
x2888:	mov word [bp + 28], string_index32025i3A20value2025f0A#	; 5: 199 70 28 30 22

file_test$506:	; Parameter 22 index 8
x2893:	mov ax, [bp + 16]	; 3: 139 70 16
x2896:	mov [bp + 30], ax	; 3: 137 70 30

file_test$507:	; UnsignedMultiply £temporary5122 index 8
x2899:	mov ax, [bp + 16]	; 3: 139 70 16
x2902:	xor dx, dx	; 2: 49 210
x2904:	mul word [int2$8#]	; 4: 247 38 207 21

file_test$508:	; BinaryAdd £temporary5123 p £temporary5122
x2908:	mov si, [bp + 18]	; 3: 139 118 18
x2911:	add si, ax	; 2: 1 198

file_test$509:	; Deref £temporary5121 -> £temporary5123 £temporary5123 0

file_test$510:	; PushFloat £temporary5121 -> £temporary5123
x2913:	fld qword [si]	; 2: 221 4

file_test$511:	; Parameter 22 £temporary5121 -> £temporary5123 10
x2915:	fstp qword [bp + 32]	; 3: 221 94 32

file_test$512:	; Call 22 printf 0
x2918:	mov word [bp + 22], file_test$513	; 5: 199 70 22 121 11
x2923:	mov [bp + 24], bp	; 3: 137 110 24
x2926:	add bp, 22	; 3: 131 197 22
x2929:	mov di, bp	; 2: 137 239
x2931:	add di, 10	; 3: 131 199 10
x2934:	jmp printf	; 3: 233 178 61

file_test$513:	; PostCall 22

file_test$514:	; Increment index
x2937:	inc word [bp + 16]	; 3: 255 70 16

file_test$515:	; Goto 503
x2940:	jmp file_test$503	; 2: 235 194

file_test$516:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$517:	; Parameter 22 string_0A# 6
x2942:	mov word [bp + 28], string_0A#	; 5: 199 70 28 124 21

file_test$518:	; Call 22 printf 0
x2947:	mov word [bp + 22], file_test$519	; 5: 199 70 22 147 11
x2952:	mov [bp + 24], bp	; 3: 137 110 24
x2955:	add bp, 22	; 3: 131 197 22
x2958:	mov di, bp	; 2: 137 239
x2960:	jmp printf	; 3: 233 152 61

file_test$519:	; PostCall 22

file_test$520:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$521:	; Parameter 22 p 6
x2963:	mov ax, [bp + 18]	; 3: 139 70 18
x2966:	mov [bp + 28], ax	; 3: 137 70 28

file_test$522:	; Call 22 free 0
x2969:	mov word [bp + 22], file_test$523	; 5: 199 70 22 167 11
x2974:	mov [bp + 24], bp	; 3: 137 110 24
x2977:	add bp, 22	; 3: 131 197 22
x2980:	jmp free	; 3: 233 197 66

file_test$523:	; PostCall 22

file_test$524:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$525:	; Parameter 14 inFilePtr 6
x2983:	mov ax, [bp + 10]	; 3: 139 70 10
x2986:	mov [bp + 20], ax	; 3: 137 70 20

file_test$526:	; Call 14 fclose 0
x2989:	mov word [bp + 14], file_test$527	; 5: 199 70 14 187 11
x2994:	mov [bp + 16], bp	; 3: 137 110 16
x2997:	add bp, 14	; 3: 131 197 14
x3000:	jmp fclose	; 3: 233 78 62

file_test$527:	; PostCall 14

file_test$528:	; Assign personVector[0]$name[0] 65
x3003:	mov byte [bp + 10], 65	; 4: 198 70 10 65

file_test$529:	; Assign personVector[0]$name[1] 100
x3007:	mov byte [bp + 11], 100	; 4: 198 70 11 100

file_test$530:	; Assign personVector[0]$name[2] 97
x3011:	mov byte [bp + 12], 97	; 4: 198 70 12 97

file_test$531:	; Assign personVector[0]$name[3] 109
x3015:	mov byte [bp + 13], 109	; 4: 198 70 13 109

file_test$532:	; Assign personVector[0]$name[4] 32
x3019:	mov byte [bp + 14], 32	; 4: 198 70 14 32

file_test$533:	; Assign personVector[0]$name[5] 66
x3023:	mov byte [bp + 15], 66	; 4: 198 70 15 66

file_test$534:	; Assign personVector[0]$name[6] 101
x3027:	mov byte [bp + 16], 101	; 4: 198 70 16 101

file_test$535:	; Assign personVector[0]$name[7] 114
x3031:	mov byte [bp + 17], 114	; 4: 198 70 17 114

file_test$536:	; Assign personVector[0]$name[8] 116
x3035:	mov byte [bp + 18], 116	; 4: 198 70 18 116

file_test$537:	; Assign personVector[0]$name[9] 105
x3039:	mov byte [bp + 19], 105	; 4: 198 70 19 105

file_test$538:	; Assign personVector[0]$name[10] 108
x3043:	mov byte [bp + 20], 108	; 4: 198 70 20 108

file_test$539:	; Assign personVector[0]$name[11] 115
x3047:	mov byte [bp + 21], 115	; 4: 198 70 21 115

file_test$540:	; Assign personVector[0]$name[12] 115
x3051:	mov byte [bp + 22], 115	; 4: 198 70 22 115

file_test$541:	; Assign personVector[0]$name[13] 111
x3055:	mov byte [bp + 23], 111	; 4: 198 70 23 111

file_test$542:	; Assign personVector[0]$name[14] 110
x3059:	mov byte [bp + 24], 110	; 4: 198 70 24 110

file_test$543:	; Assign personVector[0]$name[15] 0
x3063:	mov byte [bp + 25], 0	; 4: 198 70 25 0

file_test$544:	; Assign personVector[0]$phone 12345
x3067:	mov word [bp + 58], 12345	; 5: 199 70 58 57 48

file_test$545:	; Assign personVector[1]$name[0] 66
x3072:	mov byte [bp + 60], 66	; 4: 198 70 60 66

file_test$546:	; Assign personVector[1]$name[1] 101
x3076:	mov byte [bp + 61], 101	; 4: 198 70 61 101

file_test$547:	; Assign personVector[1]$name[2] 114
x3080:	mov byte [bp + 62], 114	; 4: 198 70 62 114

file_test$548:	; Assign personVector[1]$name[3] 116
x3084:	mov byte [bp + 63], 116	; 4: 198 70 63 116

file_test$549:	; Assign personVector[1]$name[4] 105
x3088:	mov byte [bp + 64], 105	; 4: 198 70 64 105

file_test$550:	; Assign personVector[1]$name[5] 108
x3092:	mov byte [bp + 65], 108	; 4: 198 70 65 108

file_test$551:	; Assign personVector[1]$name[6] 32
x3096:	mov byte [bp + 66], 32	; 4: 198 70 66 32

file_test$552:	; Assign personVector[1]$name[7] 67
x3100:	mov byte [bp + 67], 67	; 4: 198 70 67 67

file_test$553:	; Assign personVector[1]$name[8] 101
x3104:	mov byte [bp + 68], 101	; 4: 198 70 68 101

file_test$554:	; Assign personVector[1]$name[9] 97
x3108:	mov byte [bp + 69], 97	; 4: 198 70 69 97

file_test$555:	; Assign personVector[1]$name[10] 115
x3112:	mov byte [bp + 70], 115	; 4: 198 70 70 115

file_test$556:	; Assign personVector[1]$name[11] 97
x3116:	mov byte [bp + 71], 97	; 4: 198 70 71 97

file_test$557:	; Assign personVector[1]$name[12] 114
x3120:	mov byte [bp + 72], 114	; 4: 198 70 72 114

file_test$558:	; Assign personVector[1]$name[13] 115
x3124:	mov byte [bp + 73], 115	; 4: 198 70 73 115

file_test$559:	; Assign personVector[1]$name[14] 115
x3128:	mov byte [bp + 74], 115	; 4: 198 70 74 115

file_test$560:	; Assign personVector[1]$name[15] 111
x3132:	mov byte [bp + 75], 111	; 4: 198 70 75 111

file_test$561:	; Assign personVector[1]$name[16] 110
x3136:	mov byte [bp + 76], 110	; 4: 198 70 76 110

file_test$562:	; Assign personVector[1]$name[17] 0
x3140:	mov byte [bp + 77], 0	; 4: 198 70 77 0

file_test$563:	; Assign personVector[1]$phone 23456
x3144:	mov word [bp + 108], 23456	; 5: 199 70 108 160 91

file_test$564:	; Assign personVector[2]$name[0] 67
x3149:	mov byte [bp + 110], 67	; 4: 198 70 110 67

file_test$565:	; Assign personVector[2]$name[1] 101
x3153:	mov byte [bp + 111], 101	; 4: 198 70 111 101

file_test$566:	; Assign personVector[2]$name[2] 97
x3157:	mov byte [bp + 112], 97	; 4: 198 70 112 97

file_test$567:	; Assign personVector[2]$name[3] 115
x3161:	mov byte [bp + 113], 115	; 4: 198 70 113 115

file_test$568:	; Assign personVector[2]$name[4] 97
x3165:	mov byte [bp + 114], 97	; 4: 198 70 114 97

file_test$569:	; Assign personVector[2]$name[5] 114
x3169:	mov byte [bp + 115], 114	; 4: 198 70 115 114

file_test$570:	; Assign personVector[2]$name[6] 32
x3173:	mov byte [bp + 116], 32	; 4: 198 70 116 32

file_test$571:	; Assign personVector[2]$name[7] 68
x3177:	mov byte [bp + 117], 68	; 4: 198 70 117 68

file_test$572:	; Assign personVector[2]$name[8] 97
x3181:	mov byte [bp + 118], 97	; 4: 198 70 118 97

file_test$573:	; Assign personVector[2]$name[9] 118
x3185:	mov byte [bp + 119], 118	; 4: 198 70 119 118

file_test$574:	; Assign personVector[2]$name[10] 105
x3189:	mov byte [bp + 120], 105	; 4: 198 70 120 105

file_test$575:	; Assign personVector[2]$name[11] 100
x3193:	mov byte [bp + 121], 100	; 4: 198 70 121 100

file_test$576:	; Assign personVector[2]$name[12] 115
x3197:	mov byte [bp + 122], 115	; 4: 198 70 122 115

file_test$577:	; Assign personVector[2]$name[13] 115
x3201:	mov byte [bp + 123], 115	; 4: 198 70 123 115

file_test$578:	; Assign personVector[2]$name[14] 111
x3205:	mov byte [bp + 124], 111	; 4: 198 70 124 111

file_test$579:	; Assign personVector[2]$name[15] 110
x3209:	mov byte [bp + 125], 110	; 4: 198 70 125 110

file_test$580:	; Assign personVector[2]$name[16] 0
x3213:	mov byte [bp + 126], 0	; 4: 198 70 126 0

file_test$581:	; Assign personVector[2]$phone 24567
x3217:	mov word [bp + 158], 24567	; 6: 199 134 158 0 247 95

file_test$582:	; CallHeader 210 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$583:	; Parameter 210 string_Block2Ebin# 6
x3223:	mov word [bp + 216], string_Block2Ebin#	; 6: 199 134 216 0 51 22

file_test$584:	; Parameter 210 string_w# 8
x3229:	mov word [bp + 218], string_w#	; 6: 199 134 218 0 224 17

file_test$585:	; Call 210 fopen 0
x3235:	mov word [bp + 210], file_test$586	; 6: 199 134 210 0 180 12
x3241:	mov [bp + 212], bp	; 4: 137 174 212 0
x3245:	add bp, 210	; 4: 129 197 210 0
x3249:	jmp fopen	; 3: 233 30 10

file_test$586:	; PostCall 210

file_test$587:	; GetReturnValue £temporary5188

file_test$588:	; Assign outFilePtr £temporary5188
x3252:	mov [bp + 210], bx	; 4: 137 158 210 0

file_test$589:	; CallHeader 212 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$590:	; Parameter 212 string_Block2Ebin# 6
x3256:	mov word [bp + 218], string_Block2Ebin#	; 6: 199 134 218 0 51 22

file_test$591:	; Parameter 212 string_r# 8
x3262:	mov word [bp + 220], string_r#	; 6: 199 134 220 0 222 17

file_test$592:	; Call 212 fopen 0
x3268:	mov word [bp + 212], file_test$593	; 6: 199 134 212 0 213 12
x3274:	mov [bp + 214], bp	; 4: 137 174 214 0
x3278:	add bp, 212	; 4: 129 197 212 0
x3282:	jmp fopen	; 3: 233 253 9

file_test$593:	; PostCall 212

file_test$594:	; GetReturnValue £temporary5189

file_test$595:	; Assign inFilePtr £temporary5189
x3285:	mov [bp + 212], bx	; 4: 137 158 212 0

file_test$596:	; NotEqual 608 outFilePtr 0
x3289:	cmp word [bp + 210], 0	; 5: 131 190 210 0 0
x3294:	jne file_test$608	; 2: 117 70

file_test$597:	; CallHeader 214 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$598:	; Parameter 214 stderr 6
x3296:	mov ax, [stderr]	; 3: 161 226 17
x3299:	mov [bp + 220], ax	; 4: 137 134 220 0

file_test$599:	; Parameter 214 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x3303:	mov word [bp + 222], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 6: 199 134 222 0 40 20

file_test$600:	; Parameter 214 string_outFilePtr20213D20NULL# 10
x3309:	mov word [bp + 224], string_outFilePtr20213D20NULL#	; 6: 199 134 224 0 146 21

file_test$601:	; Parameter 214 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x3315:	mov word [bp + 226], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 6: 199 134 226 0 107 20

file_test$602:	; Parameter 214 188 14
x3321:	mov word [bp + 228], 188	; 6: 199 134 228 0 188 0

file_test$603:	; Call 214 fprintf 0
x3327:	mov word [bp + 214], file_test$604	; 6: 199 134 214 0 21 13
x3333:	mov [bp + 216], bp	; 4: 137 174 216 0
x3337:	add bp, 214	; 4: 129 197 214 0
x3341:	mov di, bp	; 2: 137 239
x3343:	add di, 6	; 3: 131 199 6
x3346:	jmp fprintf	; 3: 233 76 14

file_test$604:	; PostCall 214

file_test$605:	; CallHeader 214 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$606:	; Call 214 abort 0
x3349:	mov word [bp + 214], file_test$607	; 6: 199 134 214 0 38 13
x3355:	mov [bp + 216], bp	; 4: 137 174 216 0
x3359:	add bp, 214	; 4: 129 197 214 0
x3363:	jmp abort	; 3: 233 45 42

file_test$607:	; PostCall 214

file_test$608:	; NotEqual 620 inFilePtr 0
x3366:	cmp word [bp + 212], 0	; 5: 131 190 212 0 0
x3371:	jne file_test$620	; 2: 117 70

file_test$609:	; CallHeader 214 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$610:	; Parameter 214 stderr 6
x3373:	mov ax, [stderr]	; 3: 161 226 17
x3376:	mov [bp + 220], ax	; 4: 137 134 220 0

file_test$611:	; Parameter 214 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x3380:	mov word [bp + 222], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 6: 199 134 222 0 40 20

file_test$612:	; Parameter 214 string_inFilePtr20213D20NULL# 10
x3386:	mov word [bp + 224], string_inFilePtr20213D20NULL#	; 6: 199 134 224 0 38 21

file_test$613:	; Parameter 214 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x3392:	mov word [bp + 226], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 6: 199 134 226 0 107 20

file_test$614:	; Parameter 214 189 14
x3398:	mov word [bp + 228], 189	; 6: 199 134 228 0 189 0

file_test$615:	; Call 214 fprintf 0
x3404:	mov word [bp + 214], file_test$616	; 6: 199 134 214 0 98 13
x3410:	mov [bp + 216], bp	; 4: 137 174 216 0
x3414:	add bp, 214	; 4: 129 197 214 0
x3418:	mov di, bp	; 2: 137 239
x3420:	add di, 6	; 3: 131 199 6
x3423:	jmp fprintf	; 3: 233 255 13

file_test$616:	; PostCall 214

file_test$617:	; CallHeader 214 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$618:	; Call 214 abort 0
x3426:	mov word [bp + 214], file_test$619	; 6: 199 134 214 0 115 13
x3432:	mov [bp + 216], bp	; 4: 137 174 216 0
x3436:	add bp, 214	; 4: 129 197 214 0
x3440:	jmp abort	; 3: 233 224 41

file_test$619:	; PostCall 214

file_test$620:	; CallHeader 214 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$621:	; Parameter 214 personVector 6
x3443:	mov [bp + 220], bp	; 4: 137 174 220 0
x3447:	add word [bp + 220], 10	; 5: 131 134 220 0 10

file_test$622:	; Parameter 214 150 8
x3452:	mov word [bp + 222], 150	; 6: 199 134 222 0 150 0

file_test$623:	; Parameter 214 1 10
x3458:	mov word [bp + 224], 1	; 6: 199 134 224 0 1 0

file_test$624:	; Parameter 214 outFilePtr 12
x3464:	mov ax, [bp + 210]	; 4: 139 134 210 0
x3468:	mov [bp + 226], ax	; 4: 137 134 226 0

file_test$625:	; Call 214 fwrite 0
x3472:	mov word [bp + 214], file_test$626	; 6: 199 134 214 0 161 13
x3478:	mov [bp + 216], bp	; 4: 137 174 216 0
x3482:	add bp, 214	; 4: 129 197 214 0
x3486:	jmp fwrite	; 3: 233 169 62

file_test$626:	; PostCall 214

file_test$627:	; CallHeader 214 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$628:	; Parameter 214 outFilePtr 6
x3489:	mov ax, [bp + 210]	; 4: 139 134 210 0
x3493:	mov [bp + 220], ax	; 4: 137 134 220 0

file_test$629:	; Call 214 fclose 0
x3497:	mov word [bp + 214], file_test$630	; 6: 199 134 214 0 186 13
x3503:	mov [bp + 216], bp	; 4: 137 174 216 0
x3507:	add bp, 214	; 4: 129 197 214 0
x3511:	jmp fclose	; 3: 233 79 60

file_test$630:	; PostCall 214

file_test$631:	; CallHeader 214 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$632:	; Parameter 214 inFilePtr 6
x3514:	mov ax, [bp + 212]	; 4: 139 134 212 0
x3518:	mov [bp + 220], ax	; 4: 137 134 220 0

file_test$633:	; Call 214 feof 0
x3522:	mov word [bp + 214], file_test$634	; 6: 199 134 214 0 211 13
x3528:	mov [bp + 216], bp	; 4: 137 174 216 0
x3532:	add bp, 214	; 4: 129 197 214 0
x3536:	jmp feof	; 3: 233 58 65

file_test$634:	; PostCall 214

file_test$635:	; GetReturnValue £temporary5200

file_test$636:	; NotEqual 656 £temporary5200 0
x3539:	cmp bx, 0	; 3: 131 251 0
x3542:	jne file_test$656	; 2: 117 124

file_test$637:	; CallHeader 214 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$638:	; address £temporary5203 person
x3544:	mov si, bp	; 2: 137 238
x3546:	add si, 160	; 4: 129 198 160 0

file_test$639:	; Parameter 214 £temporary5203 6
x3550:	mov [bp + 220], si	; 4: 137 182 220 0

file_test$640:	; Parameter 214 50 8
x3554:	mov word [bp + 222], 50	; 6: 199 134 222 0 50 0

file_test$641:	; Parameter 214 1 10
x3560:	mov word [bp + 224], 1	; 6: 199 134 224 0 1 0

file_test$642:	; Parameter 214 inFilePtr 12
x3566:	mov ax, [bp + 212]	; 4: 139 134 212 0
x3570:	mov [bp + 226], ax	; 4: 137 134 226 0

file_test$643:	; Call 214 fread 0
x3574:	mov word [bp + 214], file_test$644	; 6: 199 134 214 0 7 14
x3580:	mov [bp + 216], bp	; 4: 137 174 216 0
x3584:	add bp, 214	; 4: 129 197 214 0
x3588:	jmp fread	; 3: 233 201 61

file_test$644:	; PostCall 214

file_test$645:	; CallHeader 214 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$646:	; Parameter 214 string_Name20203A2025s0A# 6
x3591:	mov word [bp + 220], string_Name20203A2025s0A#	; 6: 199 134 220 0 61 22

file_test$647:	; Parameter 214 person$name 8
x3597:	mov [bp + 222], bp	; 4: 137 174 222 0
x3601:	add word [bp + 222], 160	; 6: 129 134 222 0 160 0

file_test$648:	; Call 214 printf 0
x3607:	mov word [bp + 214], file_test$649	; 6: 199 134 214 0 45 14
x3613:	mov [bp + 216], bp	; 4: 137 174 216 0
x3617:	add bp, 214	; 4: 129 197 214 0
x3621:	mov di, bp	; 2: 137 239
x3623:	add di, 2	; 3: 131 199 2
x3626:	jmp printf	; 3: 233 254 58

file_test$649:	; PostCall 214

file_test$650:	; CallHeader 214 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$651:	; Parameter 214 string_Phone203A2025d0A# 6
x3629:	mov word [bp + 220], string_Phone203A2025d0A#	; 6: 199 134 220 0 73 22

file_test$652:	; Parameter 214 person$phone 8
x3635:	mov ax, [bp + 208]	; 4: 139 134 208 0
x3639:	mov [bp + 222], ax	; 4: 137 134 222 0

file_test$653:	; Call 214 printf 0
x3643:	mov word [bp + 214], file_test$654	; 6: 199 134 214 0 81 14
x3649:	mov [bp + 216], bp	; 4: 137 174 216 0
x3653:	add bp, 214	; 4: 129 197 214 0
x3657:	mov di, bp	; 2: 137 239
x3659:	add di, 2	; 3: 131 199 2
x3662:	jmp printf	; 3: 233 218 58

file_test$654:	; PostCall 214

file_test$655:	; Goto 631
x3665:	jmp file_test$631	; 3: 233 102 255

file_test$656:	; CallHeader 214 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$657:	; Parameter 214 inFilePtr 6
x3668:	mov ax, [bp + 212]	; 4: 139 134 212 0
x3672:	mov [bp + 220], ax	; 4: 137 134 220 0

file_test$658:	; Call 214 fclose 0
x3676:	mov word [bp + 214], file_test$659	; 6: 199 134 214 0 109 14
x3682:	mov [bp + 216], bp	; 4: 137 174 216 0
x3686:	add bp, 214	; 4: 129 197 214 0
x3690:	jmp fclose	; 3: 233 156 59

file_test$659:	; PostCall 214

file_test$660:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$661:	; Parameter 10 string_Test12Etxt# 6
x3693:	mov word [bp + 16], string_Test12Etxt#	; 5: 199 70 16 85 22

file_test$662:	; Parameter 10 string_r# 8
x3698:	mov word [bp + 18], string_r#	; 5: 199 70 18 222 17

file_test$663:	; Call 10 fopen 0
x3703:	mov word [bp + 10], file_test$664	; 5: 199 70 10 133 14
x3708:	mov [bp + 12], bp	; 3: 137 110 12
x3711:	add bp, 10	; 3: 131 197 10
x3714:	jmp fopen	; 3: 233 77 8

file_test$664:	; PostCall 10

file_test$665:	; GetReturnValue £temporary5210

file_test$666:	; Assign inFilePtr £temporary5210
x3717:	mov [bp + 10], bx	; 3: 137 94 10

file_test$667:	; NotEqual 679 inFilePtr 0
x3720:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x3724:	jne file_test$679	; 2: 117 59

file_test$668:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$669:	; Parameter 14 stderr 6
x3726:	mov ax, [stderr]	; 3: 161 226 17
x3729:	mov [bp + 20], ax	; 3: 137 70 20

file_test$670:	; Parameter 14 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x3732:	mov word [bp + 22], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 5: 199 70 22 40 20

file_test$671:	; Parameter 14 string_inFilePtr20213D20NULL# 10
x3737:	mov word [bp + 24], string_inFilePtr20213D20NULL#	; 5: 199 70 24 38 21

file_test$672:	; Parameter 14 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x3742:	mov word [bp + 26], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 5: 199 70 26 107 20

file_test$673:	; Parameter 14 206 14
x3747:	mov word [bp + 28], 206	; 5: 199 70 28 206 0

file_test$674:	; Call 14 fprintf 0
x3752:	mov word [bp + 14], file_test$675	; 5: 199 70 14 187 14
x3757:	mov [bp + 16], bp	; 3: 137 110 16
x3760:	add bp, 14	; 3: 131 197 14
x3763:	mov di, bp	; 2: 137 239
x3765:	add di, 6	; 3: 131 199 6
x3768:	jmp fprintf	; 3: 233 166 12

file_test$675:	; PostCall 14

file_test$676:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$677:	; Call 14 abort 0
x3771:	mov word [bp + 14], file_test$678	; 5: 199 70 14 201 14
x3776:	mov [bp + 16], bp	; 3: 137 110 16
x3779:	add bp, 14	; 3: 131 197 14
x3782:	jmp abort	; 3: 233 138 40

file_test$678:	; PostCall 14

file_test$679:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$680:	; Parameter 14 inFilePtr 6
x3785:	mov ax, [bp + 10]	; 3: 139 70 10
x3788:	mov [bp + 20], ax	; 3: 137 70 20

file_test$681:	; Parameter 14 -1 8
x3791:	mov word [bp + 22], -1	; 5: 199 70 22 255 255

file_test$682:	; Parameter 14 2 10
x3796:	mov word [bp + 24], 2	; 5: 199 70 24 2 0

file_test$683:	; Call 14 fseek 0
x3801:	mov word [bp + 14], file_test$684	; 5: 199 70 14 231 14
x3806:	mov [bp + 16], bp	; 3: 137 110 16
x3809:	add bp, 14	; 3: 131 197 14
x3812:	jmp fseek	; 3: 233 213 11

file_test$684:	; PostCall 14

file_test$685:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$686:	; Parameter 14 inFilePtr 6
x3815:	mov ax, [bp + 10]	; 3: 139 70 10
x3818:	mov [bp + 20], ax	; 3: 137 70 20

file_test$687:	; Call 14 ftell 0
x3821:	mov word [bp + 14], file_test$688	; 5: 199 70 14 251 14
x3826:	mov [bp + 16], bp	; 3: 137 110 16
x3829:	add bp, 14	; 3: 131 197 14
x3832:	jmp ftell	; 3: 233 167 64

file_test$688:	; PostCall 14

file_test$689:	; GetReturnValue £temporary5216

file_test$690:	; IntegralToIntegral £temporary5217 £temporary5216

file_test$691:	; Assign u £temporary5217
x3835:	mov [bp + 12], bx	; 3: 137 94 12

file_test$692:	; UnsignedLessThan 713 u 0
x3838:	cmp word [bp + 12], 0	; 4: 131 126 12 0
x3842:	jb file_test$713	; 2: 114 102

file_test$693:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$694:	; Parameter 14 inFilePtr 6
x3844:	mov ax, [bp + 10]	; 3: 139 70 10
x3847:	mov [bp + 20], ax	; 3: 137 70 20

file_test$695:	; Call 14 fgetc 0
x3850:	mov word [bp + 14], file_test$696	; 5: 199 70 14 24 15
x3855:	mov [bp + 16], bp	; 3: 137 110 16
x3858:	add bp, 14	; 3: 131 197 14
x3861:	jmp fgetc	; 3: 233 96 60

file_test$696:	; PostCall 14

file_test$697:	; GetReturnValue £temporary5219

file_test$698:	; IntegralToIntegral £temporary5220 £temporary5219
x3864:	cmp bx, 0	; 3: 131 251 0
x3867:	jge file_test$699	; 2: 125 4
x3869:	neg bx	; 2: 247 219
x3871:	neg bl	; 2: 246 219

file_test$699:	; Assign c £temporary5220
x3873:	mov [bp + 14], bl	; 3: 136 94 14

file_test$700:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$701:	; IntegralToIntegral £temporary5221 c
x3876:	mov al, [bp + 14]	; 3: 138 70 14
x3879:	and ax, 255	; 3: 37 255 0
x3882:	cmp al, 0	; 2: 60 0
x3884:	jge file_test$702	; 2: 125 4
x3886:	neg al	; 2: 246 216
x3888:	neg ax	; 2: 247 216

file_test$702:	; Parameter 15 £temporary5221 6
x3890:	mov [bp + 21], ax	; 3: 137 70 21

file_test$703:	; Call 15 putchar 0
x3893:	mov word [bp + 15], file_test$704	; 5: 199 70 15 67 15
x3898:	mov [bp + 17], bp	; 3: 137 110 17
x3901:	add bp, 15	; 3: 131 197 15
x3904:	jmp putchar	; 3: 233 136 64

file_test$704:	; PostCall 15

file_test$705:	; Equal 713 u 0
x3907:	cmp word [bp + 12], 0	; 4: 131 126 12 0
x3911:	je file_test$713	; 2: 116 33

file_test$706:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$707:	; Parameter 15 inFilePtr 6
x3913:	mov ax, [bp + 10]	; 3: 139 70 10
x3916:	mov [bp + 21], ax	; 3: 137 70 21

file_test$708:	; Parameter 15 -2 8
x3919:	mov word [bp + 23], -2	; 5: 199 70 23 254 255

file_test$709:	; Parameter 15 1 10
x3924:	mov word [bp + 25], 1	; 5: 199 70 25 1 0

file_test$710:	; Call 15 fseek 0
x3929:	mov word [bp + 15], file_test$711	; 5: 199 70 15 103 15
x3934:	mov [bp + 17], bp	; 3: 137 110 17
x3937:	add bp, 15	; 3: 131 197 15
x3940:	jmp fseek	; 3: 233 85 11

file_test$711:	; PostCall 15

file_test$712:	; Goto 685
x3943:	jmp file_test$685	; 3: 233 125 255

file_test$713:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$714:	; Parameter 14 string_0A0A# 6
x3946:	mov word [bp + 20], string_0A0A#	; 5: 199 70 20 95 22

file_test$715:	; Call 14 printf 0
x3951:	mov word [bp + 14], file_test$716	; 5: 199 70 14 127 15
x3956:	mov [bp + 16], bp	; 3: 137 110 16
x3959:	add bp, 14	; 3: 131 197 14
x3962:	mov di, bp	; 2: 137 239
x3964:	jmp printf	; 3: 233 172 57

file_test$716:	; PostCall 14

file_test$717:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$718:	; Parameter 14 inFilePtr 6
x3967:	mov ax, [bp + 10]	; 3: 139 70 10
x3970:	mov [bp + 20], ax	; 3: 137 70 20

file_test$719:	; Call 14 fclose 0
x3973:	mov word [bp + 14], file_test$720	; 5: 199 70 14 147 15
x3978:	mov [bp + 16], bp	; 3: 137 110 16
x3981:	add bp, 14	; 3: 131 197 14
x3984:	jmp fclose	; 3: 233 118 58

file_test$720:	; PostCall 14

file_test$721:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$722:	; Parameter 10 string_fileexists20X2025s0A# 6
x3987:	mov word [bp + 16], string_fileexists20X2025s0A#	; 5: 199 70 16 98 22

file_test$723:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$724:	; Parameter 10 string_X# 14
x3992:	mov word [bp + 24], string_X#	; 5: 199 70 24 205 20

file_test$725:	; Call 10 fileexists 8
x3997:	mov word [bp + 18], file_test$726	; 5: 199 70 18 171 15
x4002:	mov [bp + 20], bp	; 3: 137 110 20
x4005:	add bp, 18	; 3: 131 197 18
x4008:	jmp fileexists	; 3: 233 92 11

file_test$726:	; PostCall 10

file_test$727:	; GetReturnValue £temporary5227

file_test$728:	; Equal 731 £temporary5227 0
x4011:	cmp bx, 0	; 3: 131 251 0
x4014:	je file_test$731	; 2: 116 5

file_test$729:	; Assign £temporary5232 string_Yes#
x4016:	mov ax, string_Yes#	; 3: 184 115 22

file_test$730:	; Goto 732
x4019:	jmp file_test$732	; 2: 235 3

file_test$731:	; Assign £temporary5232 string_No#
x4021:	mov ax, string_No#	; 3: 184 119 22

file_test$732:	; Parameter 10 £temporary5232 8
x4024:	mov [bp + 18], ax	; 3: 137 70 18

file_test$733:	; Call 10 printf 0
x4027:	mov word [bp + 10], file_test$734	; 5: 199 70 10 206 15
x4032:	mov [bp + 12], bp	; 3: 137 110 12
x4035:	add bp, 10	; 3: 131 197 10
x4038:	mov di, bp	; 2: 137 239
x4040:	add di, 2	; 3: 131 199 2
x4043:	jmp printf	; 3: 233 93 57

file_test$734:	; PostCall 10

file_test$735:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$736:	; Parameter 10 string_fileexists20Y2025s0A0A# 6
x4046:	mov word [bp + 16], string_fileexists20Y2025s0A0A#	; 5: 199 70 16 122 22

file_test$737:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$738:	; Parameter 10 string_Y# 14
x4051:	mov word [bp + 24], string_Y#	; 5: 199 70 24 207 20

file_test$739:	; Call 10 fileexists 8
x4056:	mov word [bp + 18], file_test$740	; 5: 199 70 18 230 15
x4061:	mov [bp + 20], bp	; 3: 137 110 20
x4064:	add bp, 18	; 3: 131 197 18
x4067:	jmp fileexists	; 3: 233 33 11

file_test$740:	; PostCall 10

file_test$741:	; GetReturnValue £temporary5234

file_test$742:	; Equal 745 £temporary5234 0
x4070:	cmp bx, 0	; 3: 131 251 0
x4073:	je file_test$745	; 2: 116 5

file_test$743:	; Assign £temporary5239 string_Yes#
x4075:	mov ax, string_Yes#	; 3: 184 115 22

file_test$744:	; Goto 746
x4078:	jmp file_test$746	; 2: 235 3

file_test$745:	; Assign £temporary5239 string_No#
x4080:	mov ax, string_No#	; 3: 184 119 22

file_test$746:	; Parameter 10 £temporary5239 8
x4083:	mov [bp + 18], ax	; 3: 137 70 18

file_test$747:	; Call 10 printf 0
x4086:	mov word [bp + 10], file_test$748	; 5: 199 70 10 9 16
x4091:	mov [bp + 12], bp	; 3: 137 110 12
x4094:	add bp, 10	; 3: 131 197 10
x4097:	mov di, bp	; 2: 137 239
x4099:	add di, 2	; 3: 131 199 2
x4102:	jmp printf	; 3: 233 34 57

file_test$748:	; PostCall 10

file_test$749:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$750:	; Parameter 12 string_PBookX2Etxt# 6
x4105:	mov word [bp + 18], string_PBookX2Etxt#	; 5: 199 70 18 140 22

file_test$751:	; Parameter 12 string_r2B# 8
x4110:	mov word [bp + 20], string_r2B#	; 5: 199 70 20 151 22

file_test$752:	; Call 12 fopen 0
x4115:	mov word [bp + 12], file_test$753	; 5: 199 70 12 33 16
x4120:	mov [bp + 14], bp	; 3: 137 110 14
x4123:	add bp, 12	; 3: 131 197 12
x4126:	jmp fopen	; 3: 233 177 6

file_test$753:	; PostCall 12

file_test$754:	; GetReturnValue £temporary5241

file_test$755:	; Assign inOutFilePtr £temporary5241
x4129:	mov [bp + 12], bx	; 3: 137 94 12

file_test$756:	; NotEqual 768 inOutFilePtr 0
x4132:	cmp word [bp + 12], 0	; 4: 131 126 12 0
x4136:	jne file_test$768	; 2: 117 59

file_test$757:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$758:	; Parameter 14 stderr 6
x4138:	mov ax, [stderr]	; 3: 161 226 17
x4141:	mov [bp + 20], ax	; 3: 137 70 20

file_test$759:	; Parameter 14 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x4144:	mov word [bp + 22], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 5: 199 70 22 40 20

file_test$760:	; Parameter 14 string_inOutFilePtr20213D20NULL# 10
x4149:	mov word [bp + 24], string_inOutFilePtr20213D20NULL#	; 5: 199 70 24 154 22

file_test$761:	; Parameter 14 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x4154:	mov word [bp + 26], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 5: 199 70 26 107 20

file_test$762:	; Parameter 14 229 14
x4159:	mov word [bp + 28], 229	; 5: 199 70 28 229 0

file_test$763:	; Call 14 fprintf 0
x4164:	mov word [bp + 14], file_test$764	; 5: 199 70 14 87 16
x4169:	mov [bp + 16], bp	; 3: 137 110 16
x4172:	add bp, 14	; 3: 131 197 14
x4175:	mov di, bp	; 2: 137 239
x4177:	add di, 6	; 3: 131 199 6
x4180:	jmp fprintf	; 3: 233 10 11

file_test$764:	; PostCall 14

file_test$765:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$766:	; Call 14 abort 0
x4183:	mov word [bp + 14], file_test$767	; 5: 199 70 14 101 16
x4188:	mov [bp + 16], bp	; 3: 137 110 16
x4191:	add bp, 14	; 3: 131 197 14
x4194:	jmp abort	; 3: 233 238 38

file_test$767:	; PostCall 14

file_test$768:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$769:	; Call 14 tmpfile 0
x4197:	mov word [bp + 14], file_test$770	; 5: 199 70 14 115 16
x4202:	mov [bp + 16], bp	; 3: 137 110 16
x4205:	add bp, 14	; 3: 131 197 14
x4208:	jmp tmpfile	; 3: 233 143 63

file_test$770:	; PostCall 14

file_test$771:	; GetReturnValue £temporary5246

file_test$772:	; Assign tempFilePtr £temporary5246
x4211:	mov [bp + 10], bx	; 3: 137 94 10

file_test$773:	; NotEqual 785 tempFilePtr 0
x4214:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x4218:	jne file_test$785	; 2: 117 59

file_test$774:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$775:	; Parameter 14 stderr 6
x4220:	mov ax, [stderr]	; 3: 161 226 17
x4223:	mov [bp + 20], ax	; 3: 137 70 20

file_test$776:	; Parameter 14 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x4226:	mov word [bp + 22], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 5: 199 70 22 40 20

file_test$777:	; Parameter 14 string_tempFilePtr20213D20NULL# 10
x4231:	mov word [bp + 24], string_tempFilePtr20213D20NULL#	; 5: 199 70 24 175 22

file_test$778:	; Parameter 14 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec# 12
x4236:	mov word [bp + 26], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#	; 5: 199 70 26 107 20

file_test$779:	; Parameter 14 232 14
x4241:	mov word [bp + 28], 232	; 5: 199 70 28 232 0

file_test$780:	; Call 14 fprintf 0
x4246:	mov word [bp + 14], file_test$781	; 5: 199 70 14 169 16
x4251:	mov [bp + 16], bp	; 3: 137 110 16
x4254:	add bp, 14	; 3: 131 197 14
x4257:	mov di, bp	; 2: 137 239
x4259:	add di, 6	; 3: 131 199 6
x4262:	jmp fprintf	; 3: 233 184 10

file_test$781:	; PostCall 14

file_test$782:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$783:	; Call 14 abort 0
x4265:	mov word [bp + 14], file_test$784	; 5: 199 70 14 183 16
x4270:	mov [bp + 16], bp	; 3: 137 110 16
x4273:	add bp, 14	; 3: 131 197 14
x4276:	jmp abort	; 3: 233 156 38

file_test$784:	; PostCall 14

file_test$785:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$786:	; Parameter 14 inOutFilePtr 6
x4279:	mov ax, [bp + 12]	; 3: 139 70 12
x4282:	mov [bp + 20], ax	; 3: 137 70 20

file_test$787:	; Call 14 fgetc 0
x4285:	mov word [bp + 14], file_test$788	; 5: 199 70 14 203 16
x4290:	mov [bp + 16], bp	; 3: 137 110 16
x4293:	add bp, 14	; 3: 131 197 14
x4296:	jmp fgetc	; 3: 233 173 58

file_test$788:	; PostCall 14

file_test$789:	; GetReturnValue £temporary5251

file_test$790:	; IntegralToIntegral £temporary5252 £temporary5251
x4299:	cmp bx, 0	; 3: 131 251 0
x4302:	jge file_test$791	; 2: 125 4
x4304:	neg bx	; 2: 247 219
x4306:	neg bl	; 2: 246 219

file_test$791:	; Assign c £temporary5252
x4308:	mov [bp + 14], bl	; 3: 136 94 14

file_test$792:	; IntegralToIntegral £temporary5253 c
x4311:	mov al, [bp + 14]	; 3: 138 70 14
x4314:	and ax, 255	; 3: 37 255 0
x4317:	cmp al, 0	; 2: 60 0
x4319:	jge file_test$793	; 2: 125 4
x4321:	neg al	; 2: 246 216
x4323:	neg ax	; 2: 247 216

file_test$793:	; Equal 806 £temporary5253 -1
x4325:	cmp ax, -1	; 3: 131 248 255
x4328:	je file_test$806	; 2: 116 56

file_test$794:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$795:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$796:	; IntegralToIntegral £temporary5255 c
x4330:	mov al, [bp + 14]	; 3: 138 70 14
x4333:	and ax, 255	; 3: 37 255 0
x4336:	cmp al, 0	; 2: 60 0
x4338:	jge file_test$797	; 2: 125 4
x4340:	neg al	; 2: 246 216
x4342:	neg ax	; 2: 247 216

file_test$797:	; Parameter 15 £temporary5255 6
x4344:	mov [bp + 21], ax	; 3: 137 70 21

file_test$798:	; Call 15 toupper 0
x4347:	mov word [bp + 15], file_test$799	; 5: 199 70 15 9 17
x4352:	mov [bp + 17], bp	; 3: 137 110 17
x4355:	add bp, 15	; 3: 131 197 15
x4358:	jmp toupper	; 3: 233 12 65

file_test$799:	; PostCall 15

file_test$800:	; GetReturnValue £temporary5256

file_test$801:	; Parameter 15 £temporary5256 6
x4361:	mov [bp + 21], bx	; 3: 137 94 21

file_test$802:	; Parameter 15 tempFilePtr 8
x4364:	mov ax, [bp + 10]	; 3: 139 70 10
x4367:	mov [bp + 23], ax	; 3: 137 70 23

file_test$803:	; Call 15 putc 0
x4370:	mov word [bp + 15], file_test$804	; 5: 199 70 15 32 17
x4375:	mov [bp + 17], bp	; 3: 137 110 17
x4378:	add bp, 15	; 3: 131 197 15
x4381:	jmp putc	; 3: 233 243 58

file_test$804:	; PostCall 15

file_test$805:	; Goto 785
x4384:	jmp file_test$785	; 2: 235 149

file_test$806:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$807:	; Parameter 14 tempFilePtr 6
x4386:	mov ax, [bp + 10]	; 3: 139 70 10
x4389:	mov [bp + 20], ax	; 3: 137 70 20

file_test$808:	; Call 14 rewind 0
x4392:	mov word [bp + 14], file_test$809	; 5: 199 70 14 54 17
x4397:	mov [bp + 16], bp	; 3: 137 110 16
x4400:	add bp, 14	; 3: 131 197 14
x4403:	jmp rewind	; 3: 233 128 65

file_test$809:	; PostCall 14

file_test$810:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$811:	; Parameter 14 inOutFilePtr 6
x4406:	mov ax, [bp + 12]	; 3: 139 70 12
x4409:	mov [bp + 20], ax	; 3: 137 70 20

file_test$812:	; Parameter 14 string_0A2D2D2D2D2D2D2D2D2D2D2D2D0A# 8
x4412:	mov word [bp + 22], string_0A2D2D2D2D2D2D2D2D2D2D2D2D0A#	; 5: 199 70 22 195 22

file_test$813:	; Call 14 fprintf 0
x4417:	mov word [bp + 14], file_test$814	; 5: 199 70 14 81 17
x4422:	mov [bp + 16], bp	; 3: 137 110 16
x4425:	add bp, 14	; 3: 131 197 14
x4428:	mov di, bp	; 2: 137 239
x4430:	jmp fprintf	; 3: 233 16 10

file_test$814:	; PostCall 14

file_test$815:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$816:	; Parameter 14 tempFilePtr 6
x4433:	mov ax, [bp + 10]	; 3: 139 70 10
x4436:	mov [bp + 20], ax	; 3: 137 70 20

file_test$817:	; Call 14 fgetc 0
x4439:	mov word [bp + 14], file_test$818	; 5: 199 70 14 101 17
x4444:	mov [bp + 16], bp	; 3: 137 110 16
x4447:	add bp, 14	; 3: 131 197 14
x4450:	jmp fgetc	; 3: 233 19 58

file_test$818:	; PostCall 14

file_test$819:	; GetReturnValue £temporary5261

file_test$820:	; IntegralToIntegral £temporary5262 £temporary5261
x4453:	cmp bx, 0	; 3: 131 251 0
x4456:	jge file_test$821	; 2: 125 4
x4458:	neg bx	; 2: 247 219
x4460:	neg bl	; 2: 246 219

file_test$821:	; Assign c £temporary5262
x4462:	mov [bp + 14], bl	; 3: 136 94 14

file_test$822:	; IntegralToIntegral £temporary5263 c
x4465:	mov al, [bp + 14]	; 3: 138 70 14
x4468:	and ax, 255	; 3: 37 255 0
x4471:	cmp al, 0	; 2: 60 0
x4473:	jge file_test$823	; 2: 125 4
x4475:	neg al	; 2: 246 216
x4477:	neg ax	; 2: 247 216

file_test$823:	; Equal 831 £temporary5263 -1
x4479:	cmp ax, -1	; 3: 131 248 255
x4482:	je file_test$831	; 2: 116 39

file_test$824:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$825:	; IntegralToIntegral £temporary5265 c
x4484:	mov al, [bp + 14]	; 3: 138 70 14
x4487:	and ax, 255	; 3: 37 255 0
x4490:	cmp al, 0	; 2: 60 0
x4492:	jge file_test$826	; 2: 125 4
x4494:	neg al	; 2: 246 216
x4496:	neg ax	; 2: 247 216

file_test$826:	; Parameter 15 £temporary5265 6
x4498:	mov [bp + 21], ax	; 3: 137 70 21

file_test$827:	; Parameter 15 inOutFilePtr 8
x4501:	mov ax, [bp + 12]	; 3: 139 70 12
x4504:	mov [bp + 23], ax	; 3: 137 70 23

file_test$828:	; Call 15 putc 0
x4507:	mov word [bp + 15], file_test$829	; 5: 199 70 15 169 17
x4512:	mov [bp + 17], bp	; 3: 137 110 17
x4515:	add bp, 15	; 3: 131 197 15
x4518:	jmp putc	; 3: 233 106 58

file_test$829:	; PostCall 15

file_test$830:	; Goto 815
x4521:	jmp file_test$815	; 2: 235 166

file_test$831:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$832:	; Parameter 14 inOutFilePtr 6
x4523:	mov ax, [bp + 12]	; 3: 139 70 12
x4526:	mov [bp + 20], ax	; 3: 137 70 20

file_test$833:	; Call 14 fclose 0
x4529:	mov word [bp + 14], file_test$834	; 5: 199 70 14 191 17
x4534:	mov [bp + 16], bp	; 3: 137 110 16
x4537:	add bp, 14	; 3: 131 197 14
x4540:	jmp fclose	; 3: 233 74 56

file_test$834:	; PostCall 14

file_test$835:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

file_test$836:	; Parameter 14 tempFilePtr 6
x4543:	mov ax, [bp + 10]	; 3: 139 70 10
x4546:	mov [bp + 20], ax	; 3: 137 70 20

file_test$837:	; Call 14 fclose 0
x4549:	mov word [bp + 14], file_test$838	; 5: 199 70 14 211 17
x4554:	mov [bp + 16], bp	; 3: 137 110 16
x4557:	add bp, 14	; 3: 131 197 14
x4560:	jmp fclose	; 3: 233 54 56

file_test$838:	; PostCall 14

file_test$839:	; Return 0
x4563:	mov ax, [bp]	; 3: 139 70 0
x4566:	mov di, [bp + 4]	; 3: 139 126 4
x4569:	mov bp, [bp + 2]	; 3: 139 110 2
x4572:	jmp ax	; 2: 255 224

file_test$840:	; FunctionEnd file_test

string_r#:
x4574:	db "r", 0	; 2: 114 0

string_w#:
x4576:	db "w", 0	; 2: 119 0

stderr:
x4578:	dw g_fileArray + 58	; 2: 30 18

g_fileArray:
x4580:	dw 1	; 2: 1 0
x4582:	dw 0	; 2: 0 0
x4584:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x4609:	dw 1	; 2: 1 0
x4611:	dw 1	; 2: 1 0
x4613:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x4638:	dw 1	; 2: 1 0
x4640:	dw 2	; 2: 2 0
x4642:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x4667:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
x5160:	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0	; 46: 65 115 115 101 114 116 105 111 110 32 102 97 105 108 101 100 58 32 34 37 115 34 32 105 110 32 102 105 108 101 32 37 115 32 97 116 32 108 105 110 101 32 37 105 10 0

string_inFilePtrPtr20213D20NULL#:
x5206:	db "inFilePtrPtr != NULL", 0	; 21: 105 110 70 105 108 101 80 116 114 80 116 114 32 33 61 32 78 85 76 76 0

string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
x5227:	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0	; 65: 67 58 92 85 115 101 114 115 92 83 116 101 102 97 110 92 68 111 99 117 109 101 110 116 115 92 118 97 103 114 97 110 116 92 104 111 109 101 115 116 101 97 100 92 99 111 100 101 92 99 111 100 101 92 70 105 108 101 84 101 115 116 46 99 0

string_outFilePtrPtr20213D20NULL#:
x5292:	db "outFilePtrPtr != NULL", 0	; 22: 111 117 116 70 105 108 101 80 116 114 80 116 114 32 33 61 32 78 85 76 76 0

string_25i#:
x5314:	db "%i", 0	; 3: 37 105 0

string_25lf#:
x5317:	db "%lf", 0	; 4: 37 108 102 0

string_25f0A#:
x5321:	db "%f", 10, 0	; 4: 37 102 10 0

string_X#:
x5325:	db "X", 0	; 2: 88 0

string_Y#:
x5327:	db "Y", 0	; 2: 89 0

string_2225s2220has20been20renamed20to202225s222E0A#:
x5329:	db 34, "%s", 34, " has been renamed to ", 34, "%s", 34, ".", 10, 0	; 32: 34 37 115 34 32 104 97 115 32 98 101 101 110 32 114 101 110 97 109 101 100 32 116 111 32 34 37 115 34 46 10 0

string_Error2025i3A2025s2E0A#:
x5361:	db "Error %i: %s.", 10, 0	; 15: 69 114 114 111 114 32 37 105 58 32 37 115 46 10 0

errno:
x5376:	dw 0	; 2: 0 0

string_Z#:
x5378:	db "Z", 0	; 2: 90 0

string_2225s2220has20been20removed2E0A#:
x5380:	db 34, "%s", 34, " has been removed.", 10, 0	; 24: 34 37 115 34 32 104 97 115 32 98 101 101 110 32 114 101 109 111 118 101 100 46 10 0

string_PBook2Etxt#:
x5404:	db "PBook.txt", 0	; 10: 80 66 111 111 107 46 116 120 116 0

string_inFilePtr20213D20NULL#:
x5414:	db "inFilePtr != NULL", 0	; 18: 105 110 70 105 108 101 80 116 114 32 33 61 32 78 85 76 76 0

string_0A252D24s20252D24s0A#:
x5432:	db 10, "%-24s %-24s", 10, 0	; 14: 10 37 45 50 52 115 32 37 45 50 52 115 10 0

string_Name#:
x5446:	db "Name", 0	; 5: 78 97 109 101 0

string_Phone#:
x5451:	db "Phone", 0	; 6: 80 104 111 110 101 0

string_252D24s20252D24s0A#:
x5457:	db "%-24s %-24s", 10, 0	; 13: 37 45 50 52 115 32 37 45 50 52 115 10 0

string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#:
x5470:	db "========================", 0	; 25: 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 61 0

string_25s25s#:
x5495:	db "%s%s", 0	; 5: 37 115 37 115 0

string_0A#:
x5500:	db 10, 0	; 2: 10 0

string_Flow12Etxt#:
x5502:	db "Flow1.txt", 0	; 10: 70 108 111 119 49 46 116 120 116 0

string_Flow22Etxt#:
x5512:	db "Flow2.txt", 0	; 10: 70 108 111 119 50 46 116 120 116 0

string_outFilePtr20213D20NULL#:
x5522:	db "outFilePtr != NULL", 0	; 19: 111 117 116 70 105 108 101 80 116 114 32 33 61 32 78 85 76 76 0

string_Test2Ebin#:
x5541:	db "Test.bin", 0	; 9: 84 101 115 116 46 98 105 110 0

container2bytes#:
x5550:	db 0, 0	; 2: 0 0

string_size12025i0A#:
x5552:	db "size1 %i", 10, 0	; 10: 115 105 122 101 49 32 37 105 10 0

string_index12025i3A20value2025f0A#:
x5562:	db "index1 %i: value %f", 10, 0	; 21: 105 110 100 101 120 49 32 37 105 58 32 118 97 108 117 101 32 37 102 10 0

int2$8#:
x5583:	dw 8	; 2: 8 0

string_size22025i0A#:
x5585:	db "size2 %i", 10, 0	; 10: 115 105 122 101 50 32 37 105 10 0

string_index22025i3A20value2025f0A#:
x5595:	db "index2 %i: value %f", 10, 0	; 21: 105 110 100 101 120 50 32 37 105 58 32 118 97 108 117 101 32 37 102 10 0

string_size32025i20total2025i0A#:
x5616:	db "size3 %i total %i", 10, 0	; 19: 115 105 122 101 51 32 37 105 32 116 111 116 97 108 32 37 105 10 0

string_p20213D20NULL#:
x5635:	db "p != NULL", 0	; 10: 112 32 33 61 32 78 85 76 76 0

string_malloc2025u2025u2025u0A#:
x5645:	db "malloc %u %u %u", 10, 0	; 17: 109 97 108 108 111 99 32 37 117 32 37 117 32 37 117 10 0

string_index32025i3A20value2025f0A#:
x5662:	db "index3 %i: value %f", 10, 0	; 21: 105 110 100 101 120 51 32 37 105 58 32 118 97 108 117 101 32 37 102 10 0

string_Block2Ebin#:
x5683:	db "Block.bin", 0	; 10: 66 108 111 99 107 46 98 105 110 0

string_Name20203A2025s0A#:
x5693:	db "Name  : %s", 10, 0	; 12: 78 97 109 101 32 32 58 32 37 115 10 0

string_Phone203A2025d0A#:
x5705:	db "Phone : %d", 10, 0	; 12: 80 104 111 110 101 32 58 32 37 100 10 0

string_Test12Etxt#:
x5717:	db "Test1.txt", 0	; 10: 84 101 115 116 49 46 116 120 116 0

string_0A0A#:
x5727:	db 10, 10, 0	; 3: 10 10 0

string_fileexists20X2025s0A#:
x5730:	db "fileexists X %s", 10, 0	; 17: 102 105 108 101 101 120 105 115 116 115 32 88 32 37 115 10 0

string_Yes#:
x5747:	db "Yes", 0	; 4: 89 101 115 0

string_No#:
x5751:	db "No", 0	; 3: 78 111 0

string_fileexists20Y2025s0A0A#:
x5754:	db "fileexists Y %s", 10, 10, 0	; 18: 102 105 108 101 101 120 105 115 116 115 32 89 32 37 115 10 10 0

string_PBookX2Etxt#:
x5772:	db "PBookX.txt", 0	; 11: 80 66 111 111 107 88 46 116 120 116 0

string_r2B#:
x5783:	db "r+", 0	; 3: 114 43 0

string_inOutFilePtr20213D20NULL#:
x5786:	db "inOutFilePtr != NULL", 0	; 21: 105 110 79 117 116 70 105 108 101 80 116 114 32 33 61 32 78 85 76 76 0

string_tempFilePtr20213D20NULL#:
x5807:	db "tempFilePtr != NULL", 0	; 20: 116 101 109 112 70 105 108 101 80 116 114 32 33 61 32 78 85 76 76 0

string_0A2D2D2D2D2D2D2D2D2D2D2D2D0A#:
x5827:	db 10, "------------", 10, 0	; 15: 10 45 45 45 45 45 45 45 45 45 45 45 45 10 0

fopen:	; Assign index 0
x5842:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

fopen$1:	; SignedGreaterThanEqual 21 index 20
x5847:	cmp word [bp + 10], 20	; 4: 131 126 10 20
x5851:	jge fopen$21	; 2: 125 78

fopen$2:	; UnsignedMultiply £temporary904 index 29
x5853:	mov ax, [bp + 10]	; 3: 139 70 10
x5856:	xor dx, dx	; 2: 49 210
x5858:	mul word [int2$29#]	; 4: 247 38 57 23

fopen$3:	; BinaryAdd £temporary905 g_fileArray £temporary904
x5862:	mov si, g_fileArray	; 3: 190 228 17
x5865:	add si, ax	; 2: 1 198

fopen$4:	; Deref £temporary903 -> £temporary905 £temporary905 0

fopen$5:	; NotEqual 19 £temporary903.open$0 -> £temporary905 0
x5867:	cmp word [si], 0	; 3: 131 60 0
x5870:	jne fopen$19	; 2: 117 54

fopen$6:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

fopen$7:	; Parameter 12 name 6
x5872:	mov ax, [bp + 6]	; 3: 139 70 6
x5875:	mov [bp + 18], ax	; 3: 137 70 18

fopen$8:	; Parameter 12 mode 8
x5878:	mov ax, [bp + 8]	; 3: 139 70 8
x5881:	mov [bp + 20], ax	; 3: 137 70 20

fopen$9:	; UnsignedMultiply £temporary909 index 29
x5884:	mov ax, [bp + 10]	; 3: 139 70 10
x5887:	xor dx, dx	; 2: 49 210
x5889:	mul word [int2$29#]	; 4: 247 38 57 23

fopen$10:	; BinaryAdd £temporary910 g_fileArray £temporary909
x5893:	mov si, g_fileArray	; 3: 190 228 17
x5896:	add si, ax	; 2: 1 198

fopen$11:	; Deref £temporary908 -> £temporary910 £temporary910 0

fopen$12:	; address £temporary911 £temporary908 -> £temporary910

fopen$13:	; Parameter 12 £temporary911 10
x5898:	mov [bp + 22], si	; 3: 137 118 22

fopen$14:	; Call 12 freopen 0
x5901:	mov word [bp + 12], fopen$15	; 5: 199 70 12 27 23
x5906:	mov [bp + 14], bp	; 3: 137 110 14
x5909:	add bp, 12	; 3: 131 197 12
x5912:	nop	; 1: 144
x5913:	jmp freopen	; 2: 235 32

fopen$15:	; PostCall 12

fopen$16:	; GetReturnValue £temporary912

fopen$17:	; SetReturnValue £temporary912

fopen$18:	; Return £temporary912
x5915:	mov ax, [bp]	; 3: 139 70 0
x5918:	mov di, [bp + 4]	; 3: 139 126 4
x5921:	mov bp, [bp + 2]	; 3: 139 110 2
x5924:	jmp ax	; 2: 255 224

fopen$19:	; Increment index
x5926:	inc word [bp + 10]	; 3: 255 70 10

fopen$20:	; Goto 1
x5929:	jmp fopen$1	; 2: 235 172

fopen$21:	; SetReturnValue 0
x5931:	mov bx, 0	; 3: 187 0 0

fopen$22:	; Return 0
x5934:	mov ax, [bp]	; 3: 139 70 0
x5937:	mov di, [bp + 4]	; 3: 139 126 4
x5940:	mov bp, [bp + 2]	; 3: 139 110 2
x5943:	jmp ax	; 2: 255 224

fopen$23:	; FunctionEnd fopen

int2$29#:
x5945:	dw 29	; 2: 29 0

freopen:	; Assign handle -1
x5947:	mov word [bp + 12], -1	; 5: 199 70 12 255 255

freopen$1:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$2:	; Parameter 14 mode 6
x5952:	mov ax, [bp + 8]	; 3: 139 70 8
x5955:	mov [bp + 20], ax	; 3: 137 70 20

freopen$3:	; Parameter 14 string_r# 8
x5958:	mov word [bp + 22], string_r#	; 5: 199 70 22 222 17

freopen$4:	; Call 14 strcmp 0
x5963:	mov word [bp + 14], freopen$5	; 5: 199 70 14 89 23
x5968:	mov [bp + 16], bp	; 3: 137 110 16
x5971:	add bp, 14	; 3: 131 197 14
x5974:	jmp strcmp	; 3: 233 100 2

freopen$5:	; PostCall 14

freopen$6:	; GetReturnValue £temporary916

freopen$7:	; NotEqual 16 £temporary916 0
x5977:	cmp bx, 0	; 3: 131 251 0
x5980:	jne freopen$16	; 2: 117 30

freopen$8:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$9:	; Parameter 14 name 6
x5982:	mov ax, [bp + 6]	; 3: 139 70 6
x5985:	mov [bp + 20], ax	; 3: 137 70 20

freopen$10:	; Parameter 14 64 8
x5988:	mov byte [bp + 22], 64	; 4: 198 70 22 64

freopen$11:	; Call 14 fileopen 0
x5992:	mov word [bp + 14], freopen$12	; 5: 199 70 14 118 23
x5997:	mov [bp + 16], bp	; 3: 137 110 16
x6000:	add bp, 14	; 3: 131 197 14
x6003:	jmp @1112$fileopen	; 3: 233 232 2

freopen$12:	; PostCall 14

freopen$13:	; GetReturnValue £temporary918

freopen$14:	; Assign handle £temporary918
x6006:	mov [bp + 12], bx	; 3: 137 94 12

freopen$15:	; Goto 130
x6009:	jmp freopen$130	; 3: 233 210 1

freopen$16:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$17:	; Parameter 14 mode 6
x6012:	mov ax, [bp + 8]	; 3: 139 70 8
x6015:	mov [bp + 20], ax	; 3: 137 70 20

freopen$18:	; Parameter 14 string_w# 8
x6018:	mov word [bp + 22], string_w#	; 5: 199 70 22 224 17

freopen$19:	; Call 14 strcmp 0
x6023:	mov word [bp + 14], freopen$20	; 5: 199 70 14 149 23
x6028:	mov [bp + 16], bp	; 3: 137 110 16
x6031:	add bp, 14	; 3: 131 197 14
x6034:	jmp strcmp	; 3: 233 40 2

freopen$20:	; PostCall 14

freopen$21:	; GetReturnValue £temporary919

freopen$22:	; NotEqual 30 £temporary919 0
x6037:	cmp bx, 0	; 3: 131 251 0
x6040:	jne freopen$30	; 2: 117 26

freopen$23:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$24:	; Parameter 14 name 6
x6042:	mov ax, [bp + 6]	; 3: 139 70 6
x6045:	mov [bp + 20], ax	; 3: 137 70 20

freopen$25:	; Call 14 filecreate 0
x6048:	mov word [bp + 14], freopen$26	; 5: 199 70 14 174 23
x6053:	mov [bp + 16], bp	; 3: 137 110 16
x6056:	add bp, 14	; 3: 131 197 14
x6059:	jmp @1099$filecreate	; 3: 233 221 2

freopen$26:	; PostCall 14

freopen$27:	; GetReturnValue £temporary921

freopen$28:	; Assign handle £temporary921
x6062:	mov [bp + 12], bx	; 3: 137 94 12

freopen$29:	; Goto 130
x6065:	jmp freopen$130	; 3: 233 154 1

freopen$30:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$31:	; Parameter 14 mode 6
x6068:	mov ax, [bp + 8]	; 3: 139 70 8
x6071:	mov [bp + 20], ax	; 3: 137 70 20

freopen$32:	; Parameter 14 string_a# 8
x6074:	mov word [bp + 22], string_a#	; 5: 199 70 22 181 25

freopen$33:	; Call 14 strcmp 0
x6079:	mov word [bp + 14], freopen$34	; 5: 199 70 14 205 23
x6084:	mov [bp + 16], bp	; 3: 137 110 16
x6087:	add bp, 14	; 3: 131 197 14
x6090:	jmp strcmp	; 3: 233 240 1

freopen$34:	; PostCall 14

freopen$35:	; GetReturnValue £temporary922

freopen$36:	; NotEqual 59 £temporary922 0
x6093:	cmp bx, 0	; 3: 131 251 0
x6096:	jne freopen$59	; 2: 117 92

freopen$37:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$38:	; Parameter 14 name 6
x6098:	mov ax, [bp + 6]	; 3: 139 70 6
x6101:	mov [bp + 20], ax	; 3: 137 70 20

freopen$39:	; Parameter 14 65 8
x6104:	mov byte [bp + 22], 65	; 4: 198 70 22 65

freopen$40:	; Call 14 fileopen 0
x6108:	mov word [bp + 14], freopen$41	; 5: 199 70 14 234 23
x6113:	mov [bp + 16], bp	; 3: 137 110 16
x6116:	add bp, 14	; 3: 131 197 14
x6119:	jmp @1112$fileopen	; 3: 233 116 2

freopen$41:	; PostCall 14

freopen$42:	; GetReturnValue £temporary924

freopen$43:	; Assign handle £temporary924
x6122:	mov [bp + 12], bx	; 3: 137 94 12

freopen$44:	; Equal 52 handle -1
x6125:	cmp word [bp + 12], -1	; 4: 131 126 12 255
x6129:	je freopen$52	; 2: 116 33

freopen$45:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$46:	; Parameter 14 stream 6
x6131:	mov ax, [bp + 10]	; 3: 139 70 10
x6134:	mov [bp + 20], ax	; 3: 137 70 20

freopen$47:	; Parameter 14 0 8
x6137:	mov word [bp + 22], 0	; 5: 199 70 22 0 0

freopen$48:	; Parameter 14 2 10
x6142:	mov word [bp + 24], 2	; 5: 199 70 24 2 0

freopen$49:	; Call 14 fseek 0
x6147:	mov word [bp + 14], freopen$50	; 5: 199 70 14 17 24
x6152:	mov [bp + 16], bp	; 3: 137 110 16
x6155:	add bp, 14	; 3: 131 197 14
x6158:	jmp fseek	; 3: 233 171 2

freopen$50:	; PostCall 14

freopen$51:	; Goto 130
x6161:	jmp freopen$130	; 3: 233 58 1

freopen$52:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$53:	; Parameter 14 name 6
x6164:	mov ax, [bp + 6]	; 3: 139 70 6
x6167:	mov [bp + 20], ax	; 3: 137 70 20

freopen$54:	; Call 14 filecreate 0
x6170:	mov word [bp + 14], freopen$55	; 5: 199 70 14 40 24
x6175:	mov [bp + 16], bp	; 3: 137 110 16
x6178:	add bp, 14	; 3: 131 197 14
x6181:	jmp @1099$filecreate	; 3: 233 99 2

freopen$55:	; PostCall 14

freopen$56:	; GetReturnValue £temporary927

freopen$57:	; Assign handle £temporary927
x6184:	mov [bp + 12], bx	; 3: 137 94 12

freopen$58:	; Goto 130
x6187:	jmp freopen$130	; 3: 233 32 1

freopen$59:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$60:	; Parameter 14 mode 6
x6190:	mov ax, [bp + 8]	; 3: 139 70 8
x6193:	mov [bp + 20], ax	; 3: 137 70 20

freopen$61:	; Parameter 14 string_r2B# 8
x6196:	mov word [bp + 22], string_r2B#	; 5: 199 70 22 151 22

freopen$62:	; Call 14 strcmp 0
x6201:	mov word [bp + 14], freopen$63	; 5: 199 70 14 71 24
x6206:	mov [bp + 16], bp	; 3: 137 110 16
x6209:	add bp, 14	; 3: 131 197 14
x6212:	jmp strcmp	; 3: 233 118 1

freopen$63:	; PostCall 14

freopen$64:	; GetReturnValue £temporary928

freopen$65:	; NotEqual 74 £temporary928 0
x6215:	cmp bx, 0	; 3: 131 251 0
x6218:	jne freopen$74	; 2: 117 30

freopen$66:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$67:	; Parameter 14 name 6
x6220:	mov ax, [bp + 6]	; 3: 139 70 6
x6223:	mov [bp + 20], ax	; 3: 137 70 20

freopen$68:	; Parameter 14 66 8
x6226:	mov byte [bp + 22], 66	; 4: 198 70 22 66

freopen$69:	; Call 14 fileopen 0
x6230:	mov word [bp + 14], freopen$70	; 5: 199 70 14 100 24
x6235:	mov [bp + 16], bp	; 3: 137 110 16
x6238:	add bp, 14	; 3: 131 197 14
x6241:	jmp @1112$fileopen	; 3: 233 250 1

freopen$70:	; PostCall 14

freopen$71:	; GetReturnValue £temporary930

freopen$72:	; Assign handle £temporary930
x6244:	mov [bp + 12], bx	; 3: 137 94 12

freopen$73:	; Goto 130
x6247:	jmp freopen$130	; 3: 233 228 0

freopen$74:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$75:	; Parameter 14 mode 6
x6250:	mov ax, [bp + 8]	; 3: 139 70 8
x6253:	mov [bp + 20], ax	; 3: 137 70 20

freopen$76:	; Parameter 14 string_w2B# 8
x6256:	mov word [bp + 22], string_w2B#	; 5: 199 70 22 183 25

freopen$77:	; Call 14 strcmp 0
x6261:	mov word [bp + 14], freopen$78	; 5: 199 70 14 131 24
x6266:	mov [bp + 16], bp	; 3: 137 110 16
x6269:	add bp, 14	; 3: 131 197 14
x6272:	jmp strcmp	; 3: 233 58 1

freopen$78:	; PostCall 14

freopen$79:	; GetReturnValue £temporary931

freopen$80:	; NotEqual 102 £temporary931 0
x6275:	cmp bx, 0	; 3: 131 251 0
x6278:	jne freopen$102	; 2: 117 80

freopen$81:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$82:	; Parameter 14 name 6
x6280:	mov ax, [bp + 6]	; 3: 139 70 6
x6283:	mov [bp + 20], ax	; 3: 137 70 20

freopen$83:	; Call 14 fileexists 0
x6286:	mov word [bp + 14], freopen$84	; 5: 199 70 14 156 24
x6291:	mov [bp + 16], bp	; 3: 137 110 16
x6294:	add bp, 14	; 3: 131 197 14
x6297:	jmp fileexists	; 3: 233 107 2

freopen$84:	; PostCall 14

freopen$85:	; GetReturnValue £temporary933

freopen$86:	; Equal 95 £temporary933 0
x6300:	cmp bx, 0	; 3: 131 251 0
x6303:	je freopen$95	; 2: 116 30

freopen$87:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$88:	; Parameter 14 name 6
x6305:	mov ax, [bp + 6]	; 3: 139 70 6
x6308:	mov [bp + 20], ax	; 3: 137 70 20

freopen$89:	; Parameter 14 66 8
x6311:	mov byte [bp + 22], 66	; 4: 198 70 22 66

freopen$90:	; Call 14 fileopen 0
x6315:	mov word [bp + 14], freopen$91	; 5: 199 70 14 185 24
x6320:	mov [bp + 16], bp	; 3: 137 110 16
x6323:	add bp, 14	; 3: 131 197 14
x6326:	jmp @1112$fileopen	; 3: 233 165 1

freopen$91:	; PostCall 14

freopen$92:	; GetReturnValue £temporary934

freopen$93:	; Assign handle £temporary934
x6329:	mov [bp + 12], bx	; 3: 137 94 12

freopen$94:	; Goto 130
x6332:	jmp freopen$130	; 3: 233 143 0

freopen$95:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$96:	; Parameter 14 name 6
x6335:	mov ax, [bp + 6]	; 3: 139 70 6
x6338:	mov [bp + 20], ax	; 3: 137 70 20

freopen$97:	; Call 14 filecreate 0
x6341:	mov word [bp + 14], freopen$98	; 5: 199 70 14 211 24
x6346:	mov [bp + 16], bp	; 3: 137 110 16
x6349:	add bp, 14	; 3: 131 197 14
x6352:	jmp @1099$filecreate	; 3: 233 184 1

freopen$98:	; PostCall 14

freopen$99:	; GetReturnValue £temporary935

freopen$100:	; Assign handle £temporary935
x6355:	mov [bp + 12], bx	; 3: 137 94 12

freopen$101:	; Goto 130
x6358:	jmp freopen$130	; 2: 235 118

freopen$102:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$103:	; Parameter 14 mode 6
x6360:	mov ax, [bp + 8]	; 3: 139 70 8
x6363:	mov [bp + 20], ax	; 3: 137 70 20

freopen$104:	; Parameter 14 string_a2B# 8
x6366:	mov word [bp + 22], string_a2B#	; 5: 199 70 22 186 25

freopen$105:	; Call 14 strcmp 0
x6371:	mov word [bp + 14], freopen$106	; 5: 199 70 14 241 24
x6376:	mov [bp + 16], bp	; 3: 137 110 16
x6379:	add bp, 14	; 3: 131 197 14
x6382:	jmp strcmp	; 3: 233 204 0

freopen$106:	; PostCall 14

freopen$107:	; GetReturnValue £temporary937

freopen$108:	; NotEqual 130 £temporary937 0
x6385:	cmp bx, 0	; 3: 131 251 0
x6388:	jne freopen$130	; 2: 117 88

freopen$109:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$110:	; Parameter 14 name 6
x6390:	mov ax, [bp + 6]	; 3: 139 70 6
x6393:	mov [bp + 20], ax	; 3: 137 70 20

freopen$111:	; Parameter 14 66 8
x6396:	mov byte [bp + 22], 66	; 4: 198 70 22 66

freopen$112:	; Call 14 fileopen 0
x6400:	mov word [bp + 14], freopen$113	; 5: 199 70 14 14 25
x6405:	mov [bp + 16], bp	; 3: 137 110 16
x6408:	add bp, 14	; 3: 131 197 14
x6411:	jmp @1112$fileopen	; 3: 233 80 1

freopen$113:	; PostCall 14

freopen$114:	; GetReturnValue £temporary939

freopen$115:	; Assign handle £temporary939
x6414:	mov [bp + 12], bx	; 3: 137 94 12

freopen$116:	; Equal 124 handle -1
x6417:	cmp word [bp + 12], -1	; 4: 131 126 12 255
x6421:	je freopen$124	; 2: 116 32

freopen$117:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$118:	; Parameter 14 stream 6
x6423:	mov ax, [bp + 10]	; 3: 139 70 10
x6426:	mov [bp + 20], ax	; 3: 137 70 20

freopen$119:	; Parameter 14 0 8
x6429:	mov word [bp + 22], 0	; 5: 199 70 22 0 0

freopen$120:	; Parameter 14 2 10
x6434:	mov word [bp + 24], 2	; 5: 199 70 24 2 0

freopen$121:	; Call 14 fseek 0
x6439:	mov word [bp + 14], freopen$122	; 5: 199 70 14 53 25
x6444:	mov [bp + 16], bp	; 3: 137 110 16
x6447:	add bp, 14	; 3: 131 197 14
x6450:	jmp fseek	; 3: 233 135 1

freopen$122:	; PostCall 14

freopen$123:	; Goto 130
x6453:	jmp freopen$130	; 2: 235 23

freopen$124:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$125:	; Parameter 14 name 6
x6455:	mov ax, [bp + 6]	; 3: 139 70 6
x6458:	mov [bp + 20], ax	; 3: 137 70 20

freopen$126:	; Call 14 filecreate 0
x6461:	mov word [bp + 14], freopen$127	; 5: 199 70 14 75 25
x6466:	mov [bp + 16], bp	; 3: 137 110 16
x6469:	add bp, 14	; 3: 131 197 14
x6472:	jmp @1099$filecreate	; 3: 233 64 1

freopen$127:	; PostCall 14

freopen$128:	; GetReturnValue £temporary942

freopen$129:	; Assign handle £temporary942
x6475:	mov [bp + 12], bx	; 3: 137 94 12

freopen$130:	; Equal 147 handle -1
x6478:	cmp word [bp + 12], -1	; 4: 131 126 12 255
x6482:	je freopen$147	; 2: 116 76

freopen$131:	; Deref £temporary944 -> stream stream 0
x6484:	mov si, [bp + 10]	; 3: 139 118 10

freopen$132:	; Assign £temporary944 -> stream 1
x6487:	mov word [si], 1	; 4: 199 4 1 0

freopen$133:	; Deref £temporary945 -> stream stream 2
x6491:	mov si, [bp + 10]	; 3: 139 118 10

freopen$134:	; Assign £temporary945 -> stream handle
x6494:	mov ax, [bp + 12]	; 3: 139 70 12
x6497:	mov [si + 2], ax	; 3: 137 68 2

freopen$135:	; Deref £temporary946 -> stream stream 25
x6500:	mov si, [bp + 10]	; 3: 139 118 10

freopen$136:	; Assign £temporary946 -> stream 0
x6503:	mov word [si + 25], 0	; 5: 199 68 25 0 0

freopen$137:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

freopen$138:	; Deref £temporary947 -> stream stream 4
x6508:	mov si, [bp + 10]	; 3: 139 118 10

freopen$139:	; Parameter 14 £temporary947 -> stream 6
x6511:	mov [bp + 20], si	; 3: 137 118 20
x6514:	add word [bp + 20], 4	; 4: 131 70 20 4

freopen$140:	; Parameter 14 name 8
x6518:	mov ax, [bp + 6]	; 3: 139 70 6
x6521:	mov [bp + 22], ax	; 3: 137 70 22

freopen$141:	; Call 14 strcpy 0
x6524:	mov word [bp + 14], freopen$142	; 5: 199 70 14 138 25
x6529:	mov [bp + 16], bp	; 3: 137 110 16
x6532:	add bp, 14	; 3: 131 197 14
x6535:	jmp strcpy	; 3: 233 155 1

freopen$142:	; PostCall 14

freopen$143:	; Deref £temporary949 -> stream stream 27
x6538:	mov si, [bp + 10]	; 3: 139 118 10

freopen$144:	; Assign £temporary949 -> stream 0
x6541:	mov word [si + 27], 0	; 5: 199 68 27 0 0

freopen$145:	; SetReturnValue stream
x6546:	mov bx, [bp + 10]	; 3: 139 94 10

freopen$146:	; Return stream
x6549:	mov ax, [bp]	; 3: 139 70 0
x6552:	mov di, [bp + 4]	; 3: 139 126 4
x6555:	mov bp, [bp + 2]	; 3: 139 110 2
x6558:	jmp ax	; 2: 255 224

freopen$147:	; Deref £temporary950 -> stream stream 0
x6560:	mov si, [bp + 10]	; 3: 139 118 10

freopen$148:	; Assign £temporary950 -> stream 0
x6563:	mov word [si], 0	; 4: 199 4 0 0

freopen$149:	; SetReturnValue 0
x6567:	mov bx, 0	; 3: 187 0 0

freopen$150:	; Return 0
x6570:	mov ax, [bp]	; 3: 139 70 0
x6573:	mov di, [bp + 4]	; 3: 139 126 4
x6576:	mov bp, [bp + 2]	; 3: 139 110 2
x6579:	jmp ax	; 2: 255 224

freopen$151:	; FunctionEnd freopen

string_a#:
x6581:	db "a", 0	; 2: 97 0

string_w2B#:
x6583:	db "w+", 0	; 3: 119 43 0

string_a2B#:
x6586:	db "a+", 0	; 3: 97 43 0

strcmp:	; Assign index 0
x6589:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

strcmp$1:	; BinaryAdd £temporary3960 left index
x6594:	mov si, [bp + 6]	; 3: 139 118 6
x6597:	add si, [bp + 10]	; 3: 3 118 10

strcmp$2:	; Deref £temporary3959 -> £temporary3960 £temporary3960 0

strcmp$3:	; NotEqual 9 £temporary3959 -> £temporary3960 0
x6600:	cmp byte [si], 0	; 3: 128 60 0
x6603:	jne strcmp$9	; 2: 117 25

strcmp$4:	; BinaryAdd £temporary3963 right index
x6605:	mov si, [bp + 8]	; 3: 139 118 8
x6608:	add si, [bp + 10]	; 3: 3 118 10

strcmp$5:	; Deref £temporary3962 -> £temporary3963 £temporary3963 0

strcmp$6:	; NotEqual 9 £temporary3962 -> £temporary3963 0
x6611:	cmp byte [si], 0	; 3: 128 60 0
x6614:	jne strcmp$9	; 2: 117 14

strcmp$7:	; SetReturnValue 0
x6616:	mov bx, 0	; 3: 187 0 0

strcmp$8:	; Return 0
x6619:	mov ax, [bp]	; 3: 139 70 0
x6622:	mov di, [bp + 4]	; 3: 139 126 4
x6625:	mov bp, [bp + 2]	; 3: 139 110 2
x6628:	jmp ax	; 2: 255 224

strcmp$9:	; BinaryAdd £temporary3967 left index
x6630:	mov si, [bp + 6]	; 3: 139 118 6
x6633:	add si, [bp + 10]	; 3: 3 118 10

strcmp$10:	; Deref £temporary3966 -> £temporary3967 £temporary3967 0

strcmp$11:	; NotEqual 14 £temporary3966 -> £temporary3967 0
x6636:	cmp byte [si], 0	; 3: 128 60 0
x6639:	jne strcmp$14	; 2: 117 14

strcmp$12:	; SetReturnValue -1
x6641:	mov bx, -1	; 3: 187 255 255

strcmp$13:	; Return -1
x6644:	mov ax, [bp]	; 3: 139 70 0
x6647:	mov di, [bp + 4]	; 3: 139 126 4
x6650:	mov bp, [bp + 2]	; 3: 139 110 2
x6653:	jmp ax	; 2: 255 224

strcmp$14:	; BinaryAdd £temporary3970 right index
x6655:	mov si, [bp + 8]	; 3: 139 118 8
x6658:	add si, [bp + 10]	; 3: 3 118 10

strcmp$15:	; Deref £temporary3969 -> £temporary3970 £temporary3970 0

strcmp$16:	; NotEqual 19 £temporary3969 -> £temporary3970 0
x6661:	cmp byte [si], 0	; 3: 128 60 0
x6664:	jne strcmp$19	; 2: 117 14

strcmp$17:	; SetReturnValue 1
x6666:	mov bx, 1	; 3: 187 1 0

strcmp$18:	; Return 1
x6669:	mov ax, [bp]	; 3: 139 70 0
x6672:	mov di, [bp + 4]	; 3: 139 126 4
x6675:	mov bp, [bp + 2]	; 3: 139 110 2
x6678:	jmp ax	; 2: 255 224

strcmp$19:	; BinaryAdd £temporary3973 left index
x6680:	mov si, [bp + 6]	; 3: 139 118 6
x6683:	add si, [bp + 10]	; 3: 3 118 10

strcmp$20:	; Deref £temporary3972 -> £temporary3973 £temporary3973 0

strcmp$21:	; BinaryAdd £temporary3975 right index
x6686:	mov di, [bp + 8]	; 3: 139 126 8
x6689:	add di, [bp + 10]	; 3: 3 126 10

strcmp$22:	; Deref £temporary3974 -> £temporary3975 £temporary3975 0

strcmp$23:	; SignedGreaterThanEqual 26 £temporary3972 -> £temporary3973 £temporary3974 -> £temporary3975
x6692:	mov al, [di]	; 2: 138 5
x6694:	cmp [si], al	; 2: 56 4
x6696:	jge strcmp$26	; 2: 125 14

strcmp$24:	; SetReturnValue -1
x6698:	mov bx, -1	; 3: 187 255 255

strcmp$25:	; Return -1
x6701:	mov ax, [bp]	; 3: 139 70 0
x6704:	mov di, [bp + 4]	; 3: 139 126 4
x6707:	mov bp, [bp + 2]	; 3: 139 110 2
x6710:	jmp ax	; 2: 255 224

strcmp$26:	; BinaryAdd £temporary3978 left index
x6712:	mov si, [bp + 6]	; 3: 139 118 6
x6715:	add si, [bp + 10]	; 3: 3 118 10

strcmp$27:	; Deref £temporary3977 -> £temporary3978 £temporary3978 0

strcmp$28:	; BinaryAdd £temporary3980 right index
x6718:	mov di, [bp + 8]	; 3: 139 126 8
x6721:	add di, [bp + 10]	; 3: 3 126 10

strcmp$29:	; Deref £temporary3979 -> £temporary3980 £temporary3980 0

strcmp$30:	; SignedLessThanEqual 33 £temporary3977 -> £temporary3978 £temporary3979 -> £temporary3980
x6724:	mov al, [di]	; 2: 138 5
x6726:	cmp [si], al	; 2: 56 4
x6728:	jle strcmp$33	; 2: 126 14

strcmp$31:	; SetReturnValue 1
x6730:	mov bx, 1	; 3: 187 1 0

strcmp$32:	; Return 1
x6733:	mov ax, [bp]	; 3: 139 70 0
x6736:	mov di, [bp + 4]	; 3: 139 126 4
x6739:	mov bp, [bp + 2]	; 3: 139 110 2
x6742:	jmp ax	; 2: 255 224

strcmp$33:	; Increment index
x6744:	inc word [bp + 10]	; 3: 255 70 10

strcmp$34:	; Goto 1
x6747:	jmp strcmp$1	; 3: 233 100 255

strcmp$35:	; FunctionEnd strcmp

@1112$fileopen:	; AssignRegister ah 61
x6750:	mov ah, 61	; 2: 180 61

@1112$fileopen$1:	; AssignRegister al mode
x6752:	mov al, [bp + 8]	; 3: 138 70 8

@1112$fileopen$2:	; AssignRegister dx name
x6755:	mov dx, [bp + 6]	; 3: 139 86 6

@1112$fileopen$3:	; Interrupt 33
x6758:	int 33	; 2: 205 33

@1112$fileopen$4:	; NotCarry 8
x6760:	jnc @1112$fileopen$8	; 2: 115 20

@1112$fileopen$5:	; Assign errno 9
x6762:	mov word [errno], 9	; 6: 199 6 0 21 9 0

@1112$fileopen$6:	; SetReturnValue -1
x6768:	mov bx, -1	; 3: 187 255 255

@1112$fileopen$7:	; Return -1
x6771:	mov ax, [bp]	; 3: 139 70 0
x6774:	mov di, [bp + 4]	; 3: 139 126 4
x6777:	mov bp, [bp + 2]	; 3: 139 110 2
x6780:	jmp ax	; 2: 255 224

@1112$fileopen$8:	; InspectRegister £temporary900 ax

@1112$fileopen$9:	; SetReturnValue £temporary900
x6782:	mov bx, ax	; 2: 137 195

@1112$fileopen$10:	; Return £temporary900
x6784:	mov ax, [bp]	; 3: 139 70 0
x6787:	mov di, [bp + 4]	; 3: 139 126 4
x6790:	mov bp, [bp + 2]	; 3: 139 110 2
x6793:	jmp ax	; 2: 255 224

@1112$fileopen$11:	; FunctionEnd fileopen

@1099$filecreate:	; AssignRegister ah 60
x6795:	mov ah, 60	; 2: 180 60

@1099$filecreate$1:	; AssignRegister cx 0
x6797:	mov cx, 0	; 3: 185 0 0

@1099$filecreate$2:	; AssignRegister dx name
x6800:	mov dx, [bp + 6]	; 3: 139 86 6

@1099$filecreate$3:	; Interrupt 33
x6803:	int 33	; 2: 205 33

@1099$filecreate$4:	; InspectRegister £temporary888 ax

@1099$filecreate$5:	; Assign handle £temporary888
x6805:	mov [bp + 8], ax	; 3: 137 70 8

@1099$filecreate$6:	; NotCarry 10
x6808:	jnc @1099$filecreate$10	; 2: 115 20

@1099$filecreate$7:	; Assign errno 9
x6810:	mov word [errno], 9	; 6: 199 6 0 21 9 0

@1099$filecreate$8:	; SetReturnValue -1
x6816:	mov bx, -1	; 3: 187 255 255

@1099$filecreate$9:	; Return -1
x6819:	mov ax, [bp]	; 3: 139 70 0
x6822:	mov di, [bp + 4]	; 3: 139 126 4
x6825:	mov bp, [bp + 2]	; 3: 139 110 2
x6828:	jmp ax	; 2: 255 224

@1099$filecreate$10:	; SetReturnValue handle
x6830:	mov bx, [bp + 8]	; 3: 139 94 8

@1099$filecreate$11:	; Return handle
x6833:	mov ax, [bp]	; 3: 139 70 0
x6836:	mov di, [bp + 4]	; 3: 139 126 4
x6839:	mov bp, [bp + 2]	; 3: 139 110 2
x6842:	jmp ax	; 2: 255 224

@1099$filecreate$12:	; FunctionEnd filecreate

fseek:	; IntegralToIntegral £temporary1123 origin
x6844:	mov ax, [bp + 10]	; 3: 139 70 10
x6847:	cmp ax, 0	; 3: 131 248 0
x6850:	jge fseek$1	; 2: 125 4
x6852:	neg ax	; 2: 247 216
x6854:	neg al	; 2: 246 216

fseek$1:	; AssignRegister al £temporary1123

fseek$2:	; AssignRegister ah 66
x6856:	mov ah, 66	; 2: 180 66

fseek$3:	; Deref £temporary1126 -> stream stream 2
x6858:	mov si, [bp + 6]	; 3: 139 118 6

fseek$4:	; AssignRegister bx £temporary1126 -> stream
x6861:	mov bx, [si + 2]	; 3: 139 92 2

fseek$5:	; AssignRegister cx 0
x6864:	mov cx, 0	; 3: 185 0 0

fseek$6:	; IntegralToIntegral £temporary1129 offset
x6867:	mov dx, [bp + 8]	; 3: 139 86 8

fseek$7:	; AssignRegister dx £temporary1129

fseek$8:	; Interrupt 33
x6870:	int 33	; 2: 205 33

fseek$9:	; Carry 16
x6872:	jc fseek$16	; 2: 114 23

fseek$10:	; Deref £temporary1132 -> stream stream 23
x6874:	mov si, [bp + 6]	; 3: 139 118 6

fseek$11:	; InspectRegister £temporary1133 ax

fseek$12:	; Assign £temporary1132 -> stream £temporary1133
x6877:	mov [si + 23], ax	; 3: 137 68 23

fseek$13:	; Deref £temporary1134 -> stream stream 23
x6880:	mov si, [bp + 6]	; 3: 139 118 6

fseek$14:	; SetReturnValue £temporary1134 -> stream
x6883:	mov bx, [si + 23]	; 3: 139 92 23

fseek$15:	; Return £temporary1134 -> stream
x6886:	mov ax, [bp]	; 3: 139 70 0
x6889:	mov di, [bp + 4]	; 3: 139 126 4
x6892:	mov bp, [bp + 2]	; 3: 139 110 2
x6895:	jmp ax	; 2: 255 224

fseek$16:	; Deref £temporary1135 -> stream stream 21
x6897:	mov si, [bp + 6]	; 3: 139 118 6

fseek$17:	; Assign £temporary1135 -> stream 15
x6900:	mov word [si + 21], 15	; 5: 199 68 21 15 0

fseek$18:	; SetReturnValue -1
x6905:	mov bx, -1	; 3: 187 255 255

fseek$19:	; Return -1
x6908:	mov ax, [bp]	; 3: 139 70 0
x6911:	mov di, [bp + 4]	; 3: 139 126 4
x6914:	mov bp, [bp + 2]	; 3: 139 110 2
x6917:	jmp ax	; 2: 255 224

fseek$20:	; FunctionEnd fseek

fileexists:	; AssignRegister ah 67
x6919:	mov ah, 67	; 2: 180 67

fileexists$1:	; AssignRegister al 0
x6921:	mov al, 0	; 2: 176 0

fileexists$2:	; AssignRegister dx name
x6923:	mov dx, [bp + 6]	; 3: 139 86 6

fileexists$3:	; Interrupt 33
x6926:	int 33	; 2: 205 33

fileexists$4:	; Carry 7
x6928:	jc fileexists$7	; 2: 114 5

fileexists$5:	; Assign £temporary895 1
x6930:	mov bx, 1	; 3: 187 1 0

fileexists$6:	; Goto 8
x6933:	jmp fileexists$8	; 2: 235 3

fileexists$7:	; Assign £temporary895 0
x6935:	mov bx, 0	; 3: 187 0 0

fileexists$8:	; SetReturnValue £temporary895

fileexists$9:	; Return £temporary895
x6938:	mov ax, [bp]	; 3: 139 70 0
x6941:	mov di, [bp + 4]	; 3: 139 126 4
x6944:	mov bp, [bp + 2]	; 3: 139 110 2
x6947:	jmp ax	; 2: 255 224

fileexists$10:	; FunctionEnd fileexists

strcpy:	; Assign index 0
x6949:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

strcpy$1:	; BinaryAdd £temporary3903 source index
x6954:	mov si, [bp + 8]	; 3: 139 118 8
x6957:	add si, [bp + 10]	; 3: 3 118 10

strcpy$2:	; Deref £temporary3902 -> £temporary3903 £temporary3903 0

strcpy$3:	; Equal 11 £temporary3902 -> £temporary3903 0
x6960:	cmp byte [si], 0	; 3: 128 60 0
x6963:	je strcpy$11	; 2: 116 21

strcpy$4:	; BinaryAdd £temporary3907 target index
x6965:	mov si, [bp + 6]	; 3: 139 118 6
x6968:	add si, [bp + 10]	; 3: 3 118 10

strcpy$5:	; Deref £temporary3906 -> £temporary3907 £temporary3907 0

strcpy$6:	; BinaryAdd £temporary3909 source index
x6971:	mov di, [bp + 8]	; 3: 139 126 8
x6974:	add di, [bp + 10]	; 3: 3 126 10

strcpy$7:	; Deref £temporary3908 -> £temporary3909 £temporary3909 0

strcpy$8:	; Assign £temporary3906 -> £temporary3907 £temporary3908 -> £temporary3909
x6977:	mov al, [di]	; 2: 138 5
x6979:	mov [si], al	; 2: 136 4

strcpy$9:	; Increment index
x6981:	inc word [bp + 10]	; 3: 255 70 10

strcpy$10:	; Goto 1
x6984:	jmp strcpy$1	; 2: 235 224

strcpy$11:	; BinaryAdd £temporary3911 target index
x6986:	mov si, [bp + 6]	; 3: 139 118 6
x6989:	add si, [bp + 10]	; 3: 3 118 10

strcpy$12:	; Deref £temporary3910 -> £temporary3911 £temporary3911 0

strcpy$13:	; Assign £temporary3910 -> £temporary3911 0
x6992:	mov byte [si], 0	; 3: 198 4 0

strcpy$14:	; SetReturnValue target
x6995:	mov bx, [bp + 6]	; 3: 139 94 6

strcpy$15:	; Return target
x6998:	mov ax, [bp]	; 3: 139 70 0
x7001:	mov di, [bp + 4]	; 3: 139 126 4
x7004:	mov bp, [bp + 2]	; 3: 139 110 2
x7007:	jmp ax	; 2: 255 224

strcpy$16:	; FunctionEnd strcpy

fprintf:	; address £temporary2392 format
x7009:	mov si, bp	; 2: 137 238
x7011:	add si, 8	; 3: 131 198 8

fprintf$1:	; IntegralToIntegral £temporary2393 £temporary2392

fprintf$2:	; BinaryAdd arg_list £temporary2393 2
x7014:	add si, 2	; 3: 131 198 2
x7017:	mov [di + 10], si	; 3: 137 117 10

fprintf$3:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

fprintf$4:	; Parameter 12 outStream 6
x7020:	mov ax, [bp + 6]	; 3: 139 70 6
x7023:	mov [di + 18], ax	; 3: 137 69 18

fprintf$5:	; Parameter 12 format 8
x7026:	mov ax, [bp + 8]	; 3: 139 70 8
x7029:	mov [di + 20], ax	; 3: 137 69 20

fprintf$6:	; Parameter 12 arg_list 10
x7032:	mov ax, [di + 10]	; 3: 139 69 10
x7035:	mov [di + 22], ax	; 3: 137 69 22

fprintf$7:	; Call 12 vfprintf 0
x7038:	mov word [di + 12], fprintf$8	; 5: 199 69 12 145 27
x7043:	mov [di + 14], bp	; 3: 137 109 14
x7046:	mov [di + 16], di	; 3: 137 125 16
x7049:	add di, 12	; 3: 131 199 12
x7052:	mov bp, di	; 2: 137 253
x7054:	nop	; 1: 144
x7055:	jmp vfprintf	; 2: 235 11

fprintf$8:	; PostCall 12

fprintf$9:	; GetReturnValue £temporary2395

fprintf$10:	; SetReturnValue £temporary2395

fprintf$11:	; Return £temporary2395
x7057:	mov ax, [bp]	; 3: 139 70 0
x7060:	mov di, [bp + 4]	; 3: 139 126 4
x7063:	mov bp, [bp + 2]	; 3: 139 110 2
x7066:	jmp ax	; 2: 255 224

fprintf$12:	; FunctionEnd fprintf

vfprintf:	; Assign g_outStatus 0
x7068:	mov word [g_outStatus], 0	; 6: 199 6 205 27 0 0

vfprintf$1:	; IntegralToIntegral £temporary2400 outStream
x7074:	mov ax, [bp + 6]	; 3: 139 70 6

vfprintf$2:	; Assign g_outDevice £temporary2400
x7077:	mov [g_outDevice], ax	; 3: 163 207 27

vfprintf$3:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

vfprintf$4:	; Parameter 12 format 6
x7080:	mov ax, [bp + 8]	; 3: 139 70 8
x7083:	mov [bp + 18], ax	; 3: 137 70 18

vfprintf$5:	; Parameter 12 arg_list 8
x7086:	mov ax, [bp + 10]	; 3: 139 70 10
x7089:	mov [bp + 20], ax	; 3: 137 70 20

vfprintf$6:	; Call 12 printFormat 0
x7092:	mov word [bp + 12], vfprintf$7	; 5: 199 70 12 194 27
x7097:	mov [bp + 14], bp	; 3: 137 110 14
x7100:	add bp, 12	; 3: 131 197 12
x7103:	nop	; 1: 144
x7104:	jmp printFormat	; 2: 235 15

vfprintf$7:	; PostCall 12

vfprintf$8:	; GetReturnValue £temporary2401

vfprintf$9:	; SetReturnValue £temporary2401

vfprintf$10:	; Return £temporary2401
x7106:	mov ax, [bp]	; 3: 139 70 0
x7109:	mov di, [bp + 4]	; 3: 139 126 4
x7112:	mov bp, [bp + 2]	; 3: 139 110 2
x7115:	jmp ax	; 2: 255 224

vfprintf$11:	; FunctionEnd vfprintf

g_outStatus:
x7117:	db 0, 0	; 2: 0 0

g_outDevice:
x7119:	db 0, 0	; 2: 0 0

printFormat:	; Assign width 0
x7121:	mov word [bp + 12], 0	; 5: 199 70 12 0 0

printFormat$1:	; Assign precision 0
x7126:	mov word [bp + 14], 0	; 5: 199 70 14 0 0

printFormat$2:	; Assign percent 0
x7131:	mov word [bp + 16], 0	; 5: 199 70 16 0 0

printFormat$3:	; Assign plus 0
x7136:	mov word [bp + 18], 0	; 5: 199 70 18 0 0

printFormat$4:	; Assign minus 0
x7141:	mov word [bp + 20], 0	; 5: 199 70 20 0 0

printFormat$5:	; Assign space 0
x7146:	mov word [bp + 22], 0	; 5: 199 70 22 0 0

printFormat$6:	; Assign zero 0
x7151:	mov word [bp + 24], 0	; 5: 199 70 24 0 0

printFormat$7:	; Assign grid 0
x7156:	mov word [bp + 26], 0	; 5: 199 70 26 0 0

printFormat$8:	; Assign widthStar 0
x7161:	mov word [bp + 28], 0	; 5: 199 70 28 0 0

printFormat$9:	; Assign period 0
x7166:	mov word [bp + 30], 0	; 5: 199 70 30 0 0

printFormat$10:	; Assign precisionStar 0
x7171:	mov word [bp + 32], 0	; 5: 199 70 32 0 0

printFormat$11:	; Assign shortInt 0
x7176:	mov word [bp + 34], 0	; 5: 199 70 34 0 0

printFormat$12:	; Assign longInt 0
x7181:	mov word [bp + 36], 0	; 5: 199 70 36 0 0

printFormat$13:	; Assign longDouble 0
x7186:	mov word [bp + 38], 0	; 5: 199 70 38 0 0

printFormat$14:	; Assign g_outChars 0
x7191:	mov word [g_outChars], 0	; 6: 199 6 43 33 0 0

printFormat$15:	; Assign index 0
x7197:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

printFormat$16:	; BinaryAdd £temporary2235 format index
x7202:	mov si, [bp + 6]	; 3: 139 118 6
x7205:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; Deref £temporary2234 -> £temporary2235 £temporary2235 0

printFormat$18:	; Equal 285 £temporary2234 -> £temporary2235 0
x7208:	cmp byte [si], 0	; 3: 128 60 0
x7211:	je printFormat$285	; 4: 15 132 214 4

printFormat$19:	; BinaryAdd £temporary2239 format index
x7215:	mov si, [bp + 6]	; 3: 139 118 6
x7218:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; Deref £temporary2238 -> £temporary2239 £temporary2239 0

printFormat$21:	; Assign c £temporary2238 -> £temporary2239
x7221:	mov al, [si]	; 2: 138 4
x7223:	mov [bp + 40], al	; 3: 136 70 40

printFormat$22:	; Equal 263 percent 0
x7226:	cmp word [bp + 16], 0	; 4: 131 126 16 0
x7230:	je printFormat$263	; 4: 15 132 91 4

printFormat$23:	; Case 52 c 43
x7234:	mov al, [bp + 40]	; 3: 138 70 40
x7237:	cmp al, 43	; 2: 60 43
x7239:	je printFormat$52	; 4: 15 132 143 0

printFormat$24:	; Case 54 c 45
x7243:	cmp al, 45	; 2: 60 45
x7245:	je printFormat$54	; 4: 15 132 145 0

printFormat$25:	; Case 56 c 32
x7249:	cmp al, 32	; 2: 60 32
x7251:	je printFormat$56	; 4: 15 132 147 0

printFormat$26:	; Case 58 c 48
x7255:	cmp al, 48	; 2: 60 48
x7257:	je printFormat$58	; 4: 15 132 149 0

printFormat$27:	; Case 60 c 35
x7261:	cmp al, 35	; 2: 60 35
x7263:	je printFormat$60	; 4: 15 132 151 0

printFormat$28:	; Case 62 c 46
x7267:	cmp al, 46	; 2: 60 46
x7269:	je printFormat$62	; 4: 15 132 153 0

printFormat$29:	; Case 64 c 42
x7273:	cmp al, 42	; 2: 60 42
x7275:	je printFormat$64	; 4: 15 132 155 0

printFormat$30:	; Case 69 c 104
x7279:	cmp al, 104	; 2: 60 104
x7281:	je printFormat$69	; 4: 15 132 171 0

printFormat$31:	; Case 71 c 108
x7285:	cmp al, 108	; 2: 60 108
x7287:	je printFormat$71	; 4: 15 132 173 0

printFormat$32:	; Case 73 c 76
x7291:	cmp al, 76	; 2: 60 76
x7293:	je printFormat$73	; 4: 15 132 175 0

printFormat$33:	; Case 75 c 37
x7297:	cmp al, 37	; 2: 60 37
x7299:	je printFormat$75	; 4: 15 132 177 0

printFormat$34:	; Case 75 c 110
x7303:	cmp al, 110	; 2: 60 110
x7305:	je printFormat$75	; 4: 15 132 171 0

printFormat$35:	; Case 75 c 112
x7309:	cmp al, 112	; 2: 60 112
x7311:	je printFormat$75	; 4: 15 132 165 0

printFormat$36:	; Case 75 c 71
x7315:	cmp al, 71	; 2: 60 71
x7317:	je printFormat$75	; 4: 15 132 159 0

printFormat$37:	; Case 75 c 103
x7321:	cmp al, 103	; 2: 60 103
x7323:	je printFormat$75	; 4: 15 132 153 0

printFormat$38:	; Case 75 c 69
x7327:	cmp al, 69	; 2: 60 69
x7329:	je printFormat$75	; 4: 15 132 147 0

printFormat$39:	; Case 75 c 101
x7333:	cmp al, 101	; 2: 60 101
x7335:	je printFormat$75	; 4: 15 132 141 0

printFormat$40:	; Case 75 c 102
x7339:	cmp al, 102	; 2: 60 102
x7341:	je printFormat$75	; 4: 15 132 135 0

printFormat$41:	; Case 75 c 115
x7345:	cmp al, 115	; 2: 60 115
x7347:	je printFormat$75	; 4: 15 132 129 0

printFormat$42:	; Case 75 c 99
x7351:	cmp al, 99	; 2: 60 99
x7353:	je printFormat$75	; 2: 116 125

printFormat$43:	; Case 75 c 88
x7355:	cmp al, 88	; 2: 60 88
x7357:	je printFormat$75	; 2: 116 121

printFormat$44:	; Case 75 c 120
x7359:	cmp al, 120	; 2: 60 120
x7361:	je printFormat$75	; 2: 116 117

printFormat$45:	; Case 75 c 111
x7363:	cmp al, 111	; 2: 60 111
x7365:	je printFormat$75	; 2: 116 113

printFormat$46:	; Case 75 c 98
x7367:	cmp al, 98	; 2: 60 98
x7369:	je printFormat$75	; 2: 116 109

printFormat$47:	; Case 75 c 117
x7371:	cmp al, 117	; 2: 60 117
x7373:	je printFormat$75	; 2: 116 105

printFormat$48:	; Case 75 c 100
x7375:	cmp al, 100	; 2: 60 100
x7377:	je printFormat$75	; 2: 116 101

printFormat$49:	; Case 75 c 105
x7379:	cmp al, 105	; 2: 60 105
x7381:	je printFormat$75	; 2: 116 97

printFormat$50:	; CaseEnd c

printFormat$51:	; Goto 239
x7383:	jmp printFormat$239	; 3: 233 78 3

printFormat$52:	; Assign plus 1
x7386:	mov word [bp + 18], 1	; 5: 199 70 18 1 0

printFormat$53:	; Goto 283
x7391:	jmp printFormat$283	; 3: 233 29 4

printFormat$54:	; Assign minus 1
x7394:	mov word [bp + 20], 1	; 5: 199 70 20 1 0

printFormat$55:	; Goto 283
x7399:	jmp printFormat$283	; 3: 233 21 4

printFormat$56:	; Assign space 1
x7402:	mov word [bp + 22], 1	; 5: 199 70 22 1 0

printFormat$57:	; Goto 283
x7407:	jmp printFormat$283	; 3: 233 13 4

printFormat$58:	; Assign zero 1
x7410:	mov word [bp + 24], 1	; 5: 199 70 24 1 0

printFormat$59:	; Goto 283
x7415:	jmp printFormat$283	; 3: 233 5 4

printFormat$60:	; Assign grid 1
x7418:	mov word [bp + 26], 1	; 5: 199 70 26 1 0

printFormat$61:	; Goto 283
x7423:	jmp printFormat$283	; 3: 233 253 3

printFormat$62:	; Assign period 1
x7426:	mov word [bp + 30], 1	; 5: 199 70 30 1 0

printFormat$63:	; Goto 283
x7431:	jmp printFormat$283	; 3: 233 245 3

printFormat$64:	; NotEqual 67 period 0
x7434:	cmp word [bp + 30], 0	; 4: 131 126 30 0
x7438:	jne printFormat$67	; 2: 117 8

printFormat$65:	; Assign width -1
x7440:	mov word [bp + 12], -1	; 5: 199 70 12 255 255

printFormat$66:	; Goto 283
x7445:	jmp printFormat$283	; 3: 233 231 3

printFormat$67:	; Assign precision -1
x7448:	mov word [bp + 14], -1	; 5: 199 70 14 255 255

printFormat$68:	; Goto 283
x7453:	jmp printFormat$283	; 3: 233 223 3

printFormat$69:	; Assign shortInt 1
x7456:	mov word [bp + 34], 1	; 5: 199 70 34 1 0

printFormat$70:	; Goto 283
x7461:	jmp printFormat$283	; 3: 233 215 3

printFormat$71:	; Assign longInt 1
x7464:	mov word [bp + 36], 1	; 5: 199 70 36 1 0

printFormat$72:	; Goto 283
x7469:	jmp printFormat$283	; 3: 233 207 3

printFormat$73:	; Assign longDouble 1
x7472:	mov word [bp + 38], 1	; 5: 199 70 38 1 0

printFormat$74:	; Goto 283
x7477:	jmp printFormat$283	; 3: 233 199 3

printFormat$75:	; Equal 107 minus 0
x7480:	cmp word [bp + 20], 0	; 4: 131 126 20 0
x7484:	je printFormat$107	; 4: 15 132 140 0

printFormat$76:	; Assign startChars g_outChars
x7488:	mov ax, [g_outChars]	; 3: 161 43 33
x7491:	mov [bp + 41], ax	; 3: 137 70 41

printFormat$77:	; CallHeader 43 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$78:	; BinaryAdd £temporary2243 format index
x7494:	mov si, [bp + 6]	; 3: 139 118 6
x7497:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; Deref £temporary2242 -> £temporary2243 £temporary2243 0

printFormat$80:	; address £temporary2244 £temporary2242 -> £temporary2243

printFormat$81:	; Parameter 43 £temporary2244 6
x7500:	mov [bp + 49], si	; 3: 137 118 49

printFormat$82:	; Parameter 43 arg_list 8
x7503:	mov ax, [bp + 8]	; 3: 139 70 8
x7506:	mov [bp + 51], ax	; 3: 137 70 51

printFormat$83:	; Parameter 43 plus 10
x7509:	mov ax, [bp + 18]	; 3: 139 70 18
x7512:	mov [bp + 53], ax	; 3: 137 70 53

printFormat$84:	; Parameter 43 space 12
x7515:	mov ax, [bp + 22]	; 3: 139 70 22
x7518:	mov [bp + 55], ax	; 3: 137 70 55

printFormat$85:	; Parameter 43 grid 14
x7521:	mov ax, [bp + 26]	; 3: 139 70 26
x7524:	mov [bp + 57], ax	; 3: 137 70 57

printFormat$86:	; address £temporary2245 width
x7527:	mov si, bp	; 2: 137 238
x7529:	add si, 12	; 3: 131 198 12

printFormat$87:	; Parameter 43 £temporary2245 16
x7532:	mov [bp + 59], si	; 3: 137 118 59

printFormat$88:	; Parameter 43 precision 18
x7535:	mov ax, [bp + 14]	; 3: 139 70 14
x7538:	mov [bp + 61], ax	; 3: 137 70 61

printFormat$89:	; Parameter 43 shortInt 20
x7541:	mov ax, [bp + 34]	; 3: 139 70 34
x7544:	mov [bp + 63], ax	; 3: 137 70 63

printFormat$90:	; Parameter 43 longInt 22
x7547:	mov ax, [bp + 36]	; 3: 139 70 36
x7550:	mov [bp + 65], ax	; 3: 137 70 65

printFormat$91:	; Parameter 43 longDouble 24
x7553:	mov ax, [bp + 38]	; 3: 139 70 38
x7556:	mov [bp + 67], ax	; 3: 137 70 67

printFormat$92:	; Parameter 43 1 26
x7559:	mov word [bp + 69], 1	; 5: 199 70 69 1 0

printFormat$93:	; Parameter 43 0 28
x7564:	mov word [bp + 71], 0	; 5: 199 70 71 0 0

printFormat$94:	; Call 43 printArgument 0
x7569:	mov word [bp + 43], printFormat$95	; 5: 199 70 43 159 29
x7574:	mov [bp + 45], bp	; 3: 137 110 45
x7577:	add bp, 43	; 3: 131 197 43
x7580:	jmp printArgument	; 3: 233 144 3

printFormat$95:	; PostCall 43

printFormat$96:	; GetReturnValue £temporary2246

printFormat$97:	; Assign arg_list £temporary2246
x7583:	mov [bp + 8], bx	; 3: 137 94 8

printFormat$98:	; BinarySubtract field g_outChars startChars
x7586:	mov ax, [g_outChars]	; 3: 161 43 33
x7589:	sub ax, [bp + 41]	; 3: 43 70 41
x7592:	mov [bp + 43], ax	; 3: 137 70 43

printFormat$99:	; Assign £temporary2248 field
x7595:	mov ax, [bp + 43]	; 3: 139 70 43

printFormat$100:	; Increment field
x7598:	inc word [bp + 43]	; 3: 255 70 43

printFormat$101:	; SignedGreaterThanEqual 237 £temporary2248 width
x7601:	cmp ax, [bp + 12]	; 3: 59 70 12
x7604:	jge printFormat$237	; 4: 15 141 104 2

printFormat$102:	; CallHeader 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$103:	; Parameter 45 32 6
x7608:	mov byte [bp + 51], 32	; 4: 198 70 51 32

printFormat$104:	; Call 45 printChar 0
x7612:	mov word [bp + 45], printFormat$105	; 5: 199 70 45 202 29
x7617:	mov [bp + 47], bp	; 3: 137 110 47
x7620:	add bp, 45	; 3: 131 197 45
x7623:	jmp printChar	; 3: 233 118 10

printFormat$105:	; PostCall 45

printFormat$106:	; Goto 99
x7626:	jmp printFormat$99	; 2: 235 223

printFormat$107:	; Equal 184 zero 0
x7628:	cmp word [bp + 24], 0	; 4: 131 126 24 0
x7632:	je printFormat$184	; 4: 15 132 84 1

printFormat$108:	; Assign startChars g_outChars
x7636:	mov ax, [g_outChars]	; 3: 161 43 33
x7639:	mov [bp + 41], ax	; 3: 137 70 41

printFormat$109:	; Assign oldOutStatus g_outStatus
x7642:	mov ax, [g_outStatus]	; 3: 161 205 27
x7645:	mov [bp + 43], ax	; 3: 137 70 43

printFormat$110:	; Assign negative 0
x7648:	mov word [bp + 45], 0	; 5: 199 70 45 0 0

printFormat$111:	; Assign g_outStatus 2
x7653:	mov word [g_outStatus], 2	; 6: 199 6 205 27 2 0

printFormat$112:	; CallHeader 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$113:	; BinaryAdd £temporary2252 format index
x7659:	mov si, [bp + 6]	; 3: 139 118 6
x7662:	add si, [bp + 10]	; 3: 3 118 10

printFormat$114:	; Deref £temporary2251 -> £temporary2252 £temporary2252 0

printFormat$115:	; address £temporary2253 £temporary2251 -> £temporary2252

printFormat$116:	; Parameter 47 £temporary2253 6
x7665:	mov [bp + 53], si	; 3: 137 118 53

printFormat$117:	; Parameter 47 arg_list 8
x7668:	mov ax, [bp + 8]	; 3: 139 70 8
x7671:	mov [bp + 55], ax	; 3: 137 70 55

printFormat$118:	; Parameter 47 0 10
x7674:	mov word [bp + 57], 0	; 5: 199 70 57 0 0

printFormat$119:	; Parameter 47 0 12
x7679:	mov word [bp + 59], 0	; 5: 199 70 59 0 0

printFormat$120:	; Parameter 47 grid 14
x7684:	mov ax, [bp + 26]	; 3: 139 70 26
x7687:	mov [bp + 61], ax	; 3: 137 70 61

printFormat$121:	; address £temporary2254 width
x7690:	mov si, bp	; 2: 137 238
x7692:	add si, 12	; 3: 131 198 12

printFormat$122:	; Parameter 47 £temporary2254 16
x7695:	mov [bp + 63], si	; 3: 137 118 63

printFormat$123:	; Parameter 47 precision 18
x7698:	mov ax, [bp + 14]	; 3: 139 70 14
x7701:	mov [bp + 65], ax	; 3: 137 70 65

printFormat$124:	; Parameter 47 shortInt 20
x7704:	mov ax, [bp + 34]	; 3: 139 70 34
x7707:	mov [bp + 67], ax	; 3: 137 70 67

printFormat$125:	; Parameter 47 longInt 22
x7710:	mov ax, [bp + 36]	; 3: 139 70 36
x7713:	mov [bp + 69], ax	; 3: 137 70 69

printFormat$126:	; Parameter 47 longDouble 24
x7716:	mov ax, [bp + 38]	; 3: 139 70 38
x7719:	mov [bp + 71], ax	; 3: 137 70 71

printFormat$127:	; Parameter 47 0 26
x7722:	mov word [bp + 73], 0	; 5: 199 70 73 0 0

printFormat$128:	; address £temporary2255 negative
x7727:	mov si, bp	; 2: 137 238
x7729:	add si, 45	; 3: 131 198 45

printFormat$129:	; Parameter 47 £temporary2255 28
x7732:	mov [bp + 75], si	; 3: 137 118 75

printFormat$130:	; Call 47 printArgument 0
x7735:	mov word [bp + 47], printFormat$131	; 5: 199 70 47 69 30
x7740:	mov [bp + 49], bp	; 3: 137 110 49
x7743:	add bp, 47	; 3: 131 197 47
x7746:	jmp printArgument	; 3: 233 234 2

printFormat$131:	; PostCall 47

printFormat$132:	; Assign g_outStatus oldOutStatus
x7749:	mov ax, [bp + 43]	; 3: 139 70 43
x7752:	mov [g_outStatus], ax	; 3: 163 205 27

printFormat$133:	; BinarySubtract field g_outChars startChars
x7755:	mov ax, [g_outChars]	; 3: 161 43 33
x7758:	sub ax, [bp + 41]	; 3: 43 70 41
x7761:	mov [bp + 47], ax	; 3: 137 70 47

printFormat$134:	; Assign g_outChars startChars
x7764:	mov ax, [bp + 41]	; 3: 139 70 41
x7767:	mov [g_outChars], ax	; 3: 163 43 33

printFormat$135:	; Equal 142 negative 0
x7770:	cmp word [bp + 45], 0	; 4: 131 126 45 0
x7774:	je printFormat$142	; 2: 116 23

printFormat$136:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$137:	; Parameter 49 45 6
x7776:	mov byte [bp + 55], 45	; 4: 198 70 55 45

printFormat$138:	; Call 49 printChar 0
x7780:	mov word [bp + 49], printFormat$139	; 5: 199 70 49 114 30
x7785:	mov [bp + 51], bp	; 3: 137 110 51
x7788:	add bp, 49	; 3: 131 197 49
x7791:	jmp printChar	; 3: 233 206 9

printFormat$139:	; PostCall 49

printFormat$140:	; Increment field
x7794:	inc word [bp + 47]	; 3: 255 70 47

printFormat$141:	; Goto 155
x7797:	jmp printFormat$155	; 2: 235 56

printFormat$142:	; Equal 149 plus 0
x7799:	cmp word [bp + 18], 0	; 4: 131 126 18 0
x7803:	je printFormat$149	; 2: 116 23

printFormat$143:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$144:	; Parameter 49 43 6
x7805:	mov byte [bp + 55], 43	; 4: 198 70 55 43

printFormat$145:	; Call 49 printChar 0
x7809:	mov word [bp + 49], printFormat$146	; 5: 199 70 49 143 30
x7814:	mov [bp + 51], bp	; 3: 137 110 51
x7817:	add bp, 49	; 3: 131 197 49
x7820:	jmp printChar	; 3: 233 177 9

printFormat$146:	; PostCall 49

printFormat$147:	; Increment field
x7823:	inc word [bp + 47]	; 3: 255 70 47

printFormat$148:	; Goto 155
x7826:	jmp printFormat$155	; 2: 235 27

printFormat$149:	; Equal 155 space 0
x7828:	cmp word [bp + 22], 0	; 4: 131 126 22 0
x7832:	je printFormat$155	; 2: 116 21

printFormat$150:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$151:	; Parameter 49 32 6
x7834:	mov byte [bp + 55], 32	; 4: 198 70 55 32

printFormat$152:	; Call 49 printChar 0
x7838:	mov word [bp + 49], printFormat$153	; 5: 199 70 49 172 30
x7843:	mov [bp + 51], bp	; 3: 137 110 51
x7846:	add bp, 49	; 3: 131 197 49
x7849:	jmp printChar	; 3: 233 148 9

printFormat$153:	; PostCall 49

printFormat$154:	; Increment field
x7852:	inc word [bp + 47]	; 3: 255 70 47

printFormat$155:	; Assign £temporary2267 field
x7855:	mov ax, [bp + 47]	; 3: 139 70 47

printFormat$156:	; Increment field
x7858:	inc word [bp + 47]	; 3: 255 70 47

printFormat$157:	; SignedGreaterThanEqual 163 £temporary2267 width
x7861:	cmp ax, [bp + 12]	; 3: 59 70 12
x7864:	jge printFormat$163	; 2: 125 20

printFormat$158:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$159:	; Parameter 49 48 6
x7866:	mov byte [bp + 55], 48	; 4: 198 70 55 48

printFormat$160:	; Call 49 printChar 0
x7870:	mov word [bp + 49], printFormat$161	; 5: 199 70 49 204 30
x7875:	mov [bp + 51], bp	; 3: 137 110 51
x7878:	add bp, 49	; 3: 131 197 49
x7881:	jmp printChar	; 3: 233 116 9

printFormat$161:	; PostCall 49

printFormat$162:	; Goto 155
x7884:	jmp printFormat$155	; 2: 235 225

printFormat$163:	; CallHeader 49 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$164:	; BinaryAdd £temporary2271 format index
x7886:	mov si, [bp + 6]	; 3: 139 118 6
x7889:	add si, [bp + 10]	; 3: 3 118 10

printFormat$165:	; Deref £temporary2270 -> £temporary2271 £temporary2271 0

printFormat$166:	; address £temporary2272 £temporary2270 -> £temporary2271

printFormat$167:	; Parameter 49 £temporary2272 6
x7892:	mov [bp + 55], si	; 3: 137 118 55

printFormat$168:	; Parameter 49 arg_list 8
x7895:	mov ax, [bp + 8]	; 3: 139 70 8
x7898:	mov [bp + 57], ax	; 3: 137 70 57

printFormat$169:	; Parameter 49 0 10
x7901:	mov word [bp + 59], 0	; 5: 199 70 59 0 0

printFormat$170:	; Parameter 49 0 12
x7906:	mov word [bp + 61], 0	; 5: 199 70 61 0 0

printFormat$171:	; Parameter 49 grid 14
x7911:	mov ax, [bp + 26]	; 3: 139 70 26
x7914:	mov [bp + 63], ax	; 3: 137 70 63

printFormat$172:	; Parameter 49 0 16
x7917:	mov word [bp + 65], 0	; 5: 199 70 65 0 0

printFormat$173:	; Parameter 49 precision 18
x7922:	mov ax, [bp + 14]	; 3: 139 70 14
x7925:	mov [bp + 67], ax	; 3: 137 70 67

printFormat$174:	; Parameter 49 shortInt 20
x7928:	mov ax, [bp + 34]	; 3: 139 70 34
x7931:	mov [bp + 69], ax	; 3: 137 70 69

printFormat$175:	; Parameter 49 longInt 22
x7934:	mov ax, [bp + 36]	; 3: 139 70 36
x7937:	mov [bp + 71], ax	; 3: 137 70 71

printFormat$176:	; Parameter 49 longDouble 24
x7940:	mov ax, [bp + 38]	; 3: 139 70 38
x7943:	mov [bp + 73], ax	; 3: 137 70 73

printFormat$177:	; Parameter 49 0 26
x7946:	mov word [bp + 75], 0	; 5: 199 70 75 0 0

printFormat$178:	; Parameter 49 0 28
x7951:	mov word [bp + 77], 0	; 5: 199 70 77 0 0

printFormat$179:	; Call 49 printArgument 0
x7956:	mov word [bp + 49], printFormat$180	; 5: 199 70 49 34 31
x7961:	mov [bp + 51], bp	; 3: 137 110 51
x7964:	add bp, 49	; 3: 131 197 49
x7967:	jmp printArgument	; 3: 233 13 2

printFormat$180:	; PostCall 49

printFormat$181:	; GetReturnValue £temporary2273

printFormat$182:	; Assign arg_list £temporary2273
x7970:	mov [bp + 8], bx	; 3: 137 94 8

printFormat$183:	; Goto 237
x7973:	jmp printFormat$237	; 3: 233 248 0

printFormat$184:	; Assign startChars g_outChars
x7976:	mov ax, [g_outChars]	; 3: 161 43 33
x7979:	mov [bp + 41], ax	; 3: 137 70 41

printFormat$185:	; Assign oldOutStatus g_outStatus
x7982:	mov ax, [g_outStatus]	; 3: 161 205 27
x7985:	mov [bp + 43], ax	; 3: 137 70 43

printFormat$186:	; Assign g_outStatus 2
x7988:	mov word [g_outStatus], 2	; 6: 199 6 205 27 2 0

printFormat$187:	; CallHeader 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$188:	; BinaryAdd £temporary2275 format index
x7994:	mov si, [bp + 6]	; 3: 139 118 6
x7997:	add si, [bp + 10]	; 3: 3 118 10

printFormat$189:	; Deref £temporary2274 -> £temporary2275 £temporary2275 0

printFormat$190:	; address £temporary2276 £temporary2274 -> £temporary2275

printFormat$191:	; Parameter 45 £temporary2276 6
x8000:	mov [bp + 51], si	; 3: 137 118 51

printFormat$192:	; Parameter 45 arg_list 8
x8003:	mov ax, [bp + 8]	; 3: 139 70 8
x8006:	mov [bp + 53], ax	; 3: 137 70 53

printFormat$193:	; Parameter 45 plus 10
x8009:	mov ax, [bp + 18]	; 3: 139 70 18
x8012:	mov [bp + 55], ax	; 3: 137 70 55

printFormat$194:	; Parameter 45 space 12
x8015:	mov ax, [bp + 22]	; 3: 139 70 22
x8018:	mov [bp + 57], ax	; 3: 137 70 57

printFormat$195:	; Parameter 45 grid 14
x8021:	mov ax, [bp + 26]	; 3: 139 70 26
x8024:	mov [bp + 59], ax	; 3: 137 70 59

printFormat$196:	; address £temporary2277 width
x8027:	mov si, bp	; 2: 137 238
x8029:	add si, 12	; 3: 131 198 12

printFormat$197:	; Parameter 45 £temporary2277 16
x8032:	mov [bp + 61], si	; 3: 137 118 61

printFormat$198:	; Parameter 45 precision 18
x8035:	mov ax, [bp + 14]	; 3: 139 70 14
x8038:	mov [bp + 63], ax	; 3: 137 70 63

printFormat$199:	; Parameter 45 shortInt 20
x8041:	mov ax, [bp + 34]	; 3: 139 70 34
x8044:	mov [bp + 65], ax	; 3: 137 70 65

printFormat$200:	; Parameter 45 longInt 22
x8047:	mov ax, [bp + 36]	; 3: 139 70 36
x8050:	mov [bp + 67], ax	; 3: 137 70 67

printFormat$201:	; Parameter 45 longDouble 24
x8053:	mov ax, [bp + 38]	; 3: 139 70 38
x8056:	mov [bp + 69], ax	; 3: 137 70 69

printFormat$202:	; Parameter 45 1 26
x8059:	mov word [bp + 71], 1	; 5: 199 70 71 1 0

printFormat$203:	; Parameter 45 0 28
x8064:	mov word [bp + 73], 0	; 5: 199 70 73 0 0

printFormat$204:	; Call 45 printArgument 0
x8069:	mov word [bp + 45], printFormat$205	; 5: 199 70 45 147 31
x8074:	mov [bp + 47], bp	; 3: 137 110 47
x8077:	add bp, 45	; 3: 131 197 45
x8080:	jmp printArgument	; 3: 233 156 1

printFormat$205:	; PostCall 45

printFormat$206:	; Assign g_outStatus oldOutStatus
x8083:	mov ax, [bp + 43]	; 3: 139 70 43
x8086:	mov [g_outStatus], ax	; 3: 163 205 27

printFormat$207:	; BinarySubtract field g_outChars startChars
x8089:	mov ax, [g_outChars]	; 3: 161 43 33
x8092:	sub ax, [bp + 41]	; 3: 43 70 41
x8095:	mov [bp + 45], ax	; 3: 137 70 45

printFormat$208:	; Assign g_outChars startChars
x8098:	mov ax, [bp + 41]	; 3: 139 70 41
x8101:	mov [g_outChars], ax	; 3: 163 43 33

printFormat$209:	; Assign £temporary2280 field
x8104:	mov ax, [bp + 45]	; 3: 139 70 45

printFormat$210:	; Increment field
x8107:	inc word [bp + 45]	; 3: 255 70 45

printFormat$211:	; SignedGreaterThanEqual 217 £temporary2280 width
x8110:	cmp ax, [bp + 12]	; 3: 59 70 12
x8113:	jge printFormat$217	; 2: 125 20

printFormat$212:	; CallHeader 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$213:	; Parameter 47 32 6
x8115:	mov byte [bp + 53], 32	; 4: 198 70 53 32

printFormat$214:	; Call 47 printChar 0
x8119:	mov word [bp + 47], printFormat$215	; 5: 199 70 47 197 31
x8124:	mov [bp + 49], bp	; 3: 137 110 49
x8127:	add bp, 47	; 3: 131 197 47
x8130:	jmp printChar	; 3: 233 123 8

printFormat$215:	; PostCall 47

printFormat$216:	; Goto 209
x8133:	jmp printFormat$209	; 2: 235 225

printFormat$217:	; CallHeader 47 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$218:	; BinaryAdd £temporary2284 format index
x8135:	mov si, [bp + 6]	; 3: 139 118 6
x8138:	add si, [bp + 10]	; 3: 3 118 10

printFormat$219:	; Deref £temporary2283 -> £temporary2284 £temporary2284 0

printFormat$220:	; address £temporary2285 £temporary2283 -> £temporary2284

printFormat$221:	; Parameter 47 £temporary2285 6
x8141:	mov [bp + 53], si	; 3: 137 118 53

printFormat$222:	; Parameter 47 arg_list 8
x8144:	mov ax, [bp + 8]	; 3: 139 70 8
x8147:	mov [bp + 55], ax	; 3: 137 70 55

printFormat$223:	; Parameter 47 plus 10
x8150:	mov ax, [bp + 18]	; 3: 139 70 18
x8153:	mov [bp + 57], ax	; 3: 137 70 57

printFormat$224:	; Parameter 47 space 12
x8156:	mov ax, [bp + 22]	; 3: 139 70 22
x8159:	mov [bp + 59], ax	; 3: 137 70 59

printFormat$225:	; Parameter 47 grid 14
x8162:	mov ax, [bp + 26]	; 3: 139 70 26
x8165:	mov [bp + 61], ax	; 3: 137 70 61

printFormat$226:	; Parameter 47 0 16
x8168:	mov word [bp + 63], 0	; 5: 199 70 63 0 0

printFormat$227:	; Parameter 47 precision 18
x8173:	mov ax, [bp + 14]	; 3: 139 70 14
x8176:	mov [bp + 65], ax	; 3: 137 70 65

printFormat$228:	; Parameter 47 shortInt 20
x8179:	mov ax, [bp + 34]	; 3: 139 70 34
x8182:	mov [bp + 67], ax	; 3: 137 70 67

printFormat$229:	; Parameter 47 longInt 22
x8185:	mov ax, [bp + 36]	; 3: 139 70 36
x8188:	mov [bp + 69], ax	; 3: 137 70 69

printFormat$230:	; Parameter 47 longDouble 24
x8191:	mov ax, [bp + 38]	; 3: 139 70 38
x8194:	mov [bp + 71], ax	; 3: 137 70 71

printFormat$231:	; Parameter 47 1 26
x8197:	mov word [bp + 73], 1	; 5: 199 70 73 1 0

printFormat$232:	; Parameter 47 0 28
x8202:	mov word [bp + 75], 0	; 5: 199 70 75 0 0

printFormat$233:	; Call 47 printArgument 0
x8207:	mov word [bp + 47], printFormat$234	; 5: 199 70 47 29 32
x8212:	mov [bp + 49], bp	; 3: 137 110 49
x8215:	add bp, 47	; 3: 131 197 47
x8218:	jmp printArgument	; 3: 233 18 1

printFormat$234:	; PostCall 47

printFormat$235:	; GetReturnValue £temporary2286

printFormat$236:	; Assign arg_list £temporary2286
x8221:	mov [bp + 8], bx	; 3: 137 94 8

printFormat$237:	; Assign percent 0
x8224:	mov word [bp + 16], 0	; 5: 199 70 16 0 0

printFormat$238:	; Goto 283
x8229:	jmp printFormat$283	; 3: 233 215 0

printFormat$239:	; Assign value 0
x8232:	mov word [bp + 41], 0	; 5: 199 70 41 0 0

printFormat$240:	; CallHeader 43 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$241:	; IntegralToIntegral £temporary2289 c
x8237:	mov al, [bp + 40]	; 3: 138 70 40
x8240:	and ax, 255	; 3: 37 255 0
x8243:	cmp al, 0	; 2: 60 0
x8245:	jge printFormat$242	; 2: 125 4
x8247:	neg al	; 2: 246 216
x8249:	neg ax	; 2: 247 216

printFormat$242:	; Parameter 43 £temporary2289 6
x8251:	mov [bp + 49], ax	; 3: 137 70 49

printFormat$243:	; Call 43 isdigit 0
x8254:	mov word [bp + 43], printFormat$244	; 5: 199 70 43 76 32
x8259:	mov [bp + 45], bp	; 3: 137 110 45
x8262:	add bp, 43	; 3: 131 197 43
x8265:	jmp isdigit	; 3: 233 232 22

printFormat$244:	; PostCall 43

printFormat$245:	; GetReturnValue £temporary2290

printFormat$246:	; Equal 257 £temporary2290 0
x8268:	cmp bx, 0	; 3: 131 251 0
x8271:	je printFormat$257	; 2: 116 51

printFormat$247:	; SignedMultiply £temporary2291 value 10
x8273:	mov ax, [bp + 41]	; 3: 139 70 41
x8276:	xor dx, dx	; 2: 49 210
x8278:	imul word [int2$10#]	; 4: 247 46 45 33

printFormat$248:	; BinarySubtract £temporary2292 c 48
x8282:	mov bl, [bp + 40]	; 3: 138 94 40
x8285:	sub bl, 48	; 3: 128 235 48

printFormat$249:	; IntegralToIntegral £temporary2293 £temporary2292
x8288:	and bx, 255	; 4: 129 227 255 0
x8292:	cmp bl, 0	; 3: 128 251 0
x8295:	jge printFormat$250	; 2: 125 4
x8297:	neg bl	; 2: 246 219
x8299:	neg bx	; 2: 247 219

printFormat$250:	; BinaryAdd value £temporary2291 £temporary2293
x8301:	add ax, bx	; 2: 1 216
x8303:	mov [bp + 41], ax	; 3: 137 70 41

printFormat$251:	; Increment index
x8306:	inc word [bp + 10]	; 3: 255 70 10

printFormat$252:	; Assign £temporary2295 index
x8309:	mov ax, [bp + 10]	; 3: 139 70 10

printFormat$253:	; BinaryAdd £temporary2297 format £temporary2295
x8312:	mov si, [bp + 6]	; 3: 139 118 6
x8315:	add si, ax	; 2: 1 198

printFormat$254:	; Deref £temporary2296 -> £temporary2297 £temporary2297 0

printFormat$255:	; Assign c £temporary2296 -> £temporary2297
x8317:	mov al, [si]	; 2: 138 4
x8319:	mov [bp + 40], al	; 3: 136 70 40

printFormat$256:	; Goto 240
x8322:	jmp printFormat$240	; 2: 235 169

printFormat$257:	; Decrement index
x8324:	dec word [bp + 10]	; 3: 255 78 10

printFormat$258:	; NotEqual 261 period 0
x8327:	cmp word [bp + 30], 0	; 4: 131 126 30 0
x8331:	jne printFormat$261	; 2: 117 8

printFormat$259:	; Assign width value
x8333:	mov ax, [bp + 41]	; 3: 139 70 41
x8336:	mov [bp + 12], ax	; 3: 137 70 12

printFormat$260:	; Goto 283
x8339:	jmp printFormat$283	; 2: 235 106

printFormat$261:	; Assign precision value
x8341:	mov ax, [bp + 41]	; 3: 139 70 41
x8344:	mov [bp + 14], ax	; 3: 137 70 14

printFormat$262:	; Goto 283
x8347:	jmp printFormat$283	; 2: 235 98

printFormat$263:	; NotEqual 279 c 37
x8349:	cmp byte [bp + 40], 37	; 4: 128 126 40 37
x8353:	jne printFormat$279	; 2: 117 72

printFormat$264:	; Assign percent 1
x8355:	mov word [bp + 16], 1	; 5: 199 70 16 1 0

printFormat$265:	; Assign plus 0
x8360:	mov word [bp + 18], 0	; 5: 199 70 18 0 0

printFormat$266:	; Assign minus 0
x8365:	mov word [bp + 20], 0	; 5: 199 70 20 0 0

printFormat$267:	; Assign space 0
x8370:	mov word [bp + 22], 0	; 5: 199 70 22 0 0

printFormat$268:	; Assign zero 0
x8375:	mov word [bp + 24], 0	; 5: 199 70 24 0 0

printFormat$269:	; Assign grid 0
x8380:	mov word [bp + 26], 0	; 5: 199 70 26 0 0

printFormat$270:	; Assign widthStar 0
x8385:	mov word [bp + 28], 0	; 5: 199 70 28 0 0

printFormat$271:	; Assign period 0
x8390:	mov word [bp + 30], 0	; 5: 199 70 30 0 0

printFormat$272:	; Assign precisionStar 0
x8395:	mov word [bp + 32], 0	; 5: 199 70 32 0 0

printFormat$273:	; Assign shortInt 0
x8400:	mov word [bp + 34], 0	; 5: 199 70 34 0 0

printFormat$274:	; Assign longInt 0
x8405:	mov word [bp + 36], 0	; 5: 199 70 36 0 0

printFormat$275:	; Assign longDouble 0
x8410:	mov word [bp + 38], 0	; 5: 199 70 38 0 0

printFormat$276:	; Assign width 0
x8415:	mov word [bp + 12], 0	; 5: 199 70 12 0 0

printFormat$277:	; Assign precision 0
x8420:	mov word [bp + 14], 0	; 5: 199 70 14 0 0

printFormat$278:	; Goto 283
x8425:	jmp printFormat$283	; 2: 235 20

printFormat$279:	; CallHeader 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printFormat$280:	; Parameter 41 c 6
x8427:	mov al, [bp + 40]	; 3: 138 70 40
x8430:	mov [bp + 47], al	; 3: 136 70 47

printFormat$281:	; Call 41 printChar 0
x8433:	mov word [bp + 41], printFormat$282	; 5: 199 70 41 255 32
x8438:	mov [bp + 43], bp	; 3: 137 110 43
x8441:	add bp, 41	; 3: 131 197 41
x8444:	jmp printChar	; 3: 233 65 7

printFormat$282:	; PostCall 41

printFormat$283:	; Increment index
x8447:	inc word [bp + 10]	; 3: 255 70 10

printFormat$284:	; Goto 16
x8450:	jmp printFormat$16	; 3: 233 29 251

printFormat$285:	; NotEqual 291 g_outStatus 1
x8453:	cmp word [g_outStatus], 1	; 5: 131 62 205 27 1
x8458:	jne printFormat$291	; 2: 117 16

printFormat$286:	; IntegralToIntegral £temporary2306 g_outDevice
x8460:	mov ax, [g_outDevice]	; 3: 161 207 27

printFormat$287:	; Assign outString £temporary2306
x8463:	mov [bp + 40], ax	; 3: 137 70 40

printFormat$288:	; BinaryAdd £temporary2308 outString g_outChars
x8466:	mov si, [bp + 40]	; 3: 139 118 40
x8469:	add si, [g_outChars]	; 4: 3 54 43 33

printFormat$289:	; Deref £temporary2307 -> £temporary2308 £temporary2308 0

printFormat$290:	; Assign £temporary2307 -> £temporary2308 0
x8473:	mov byte [si], 0	; 3: 198 4 0

printFormat$291:	; SetReturnValue g_outChars
x8476:	mov bx, [g_outChars]	; 4: 139 30 43 33

printFormat$292:	; Return g_outChars
x8480:	mov ax, [bp]	; 3: 139 70 0
x8483:	mov di, [bp + 4]	; 3: 139 126 4
x8486:	mov bp, [bp + 2]	; 3: 139 110 2
x8489:	jmp ax	; 2: 255 224

printFormat$293:	; FunctionEnd printFormat

g_outChars:
x8491:	db 0, 0	; 2: 0 0

int2$10#:
x8493:	dw 10	; 2: 10 0

printArgument:	; Deref £temporary2008 -> format format 0
x8495:	mov si, [bp + 6]	; 3: 139 118 6

printArgument$1:	; Assign c £temporary2008 -> format
x8498:	mov al, [si]	; 2: 138 4
x8500:	mov [bp + 30], al	; 3: 136 70 30

printArgument$2:	; Case 21 c 100
x8503:	mov al, [bp + 30]	; 3: 138 70 30
x8506:	cmp al, 100	; 2: 60 100
x8508:	je printArgument$21	; 2: 116 97

printArgument$3:	; Case 21 c 105
x8510:	cmp al, 105	; 2: 60 105
x8512:	je printArgument$21	; 2: 116 93

printArgument$4:	; Case 73 c 99
x8514:	cmp al, 99	; 2: 60 99
x8516:	je printArgument$73	; 4: 15 132 68 1

printArgument$5:	; Case 93 c 115
x8520:	cmp al, 115	; 2: 60 115
x8522:	je printArgument$93	; 4: 15 132 146 1

printArgument$6:	; Case 113 c 88
x8526:	cmp al, 88	; 2: 60 88
x8528:	je printArgument$113	; 4: 15 132 221 1

printArgument$7:	; Case 113 c 120
x8532:	cmp al, 120	; 2: 60 120
x8534:	je printArgument$113	; 4: 15 132 215 1

printArgument$8:	; Case 113 c 98
x8538:	cmp al, 98	; 2: 60 98
x8540:	je printArgument$113	; 4: 15 132 209 1

printArgument$9:	; Case 113 c 111
x8544:	cmp al, 111	; 2: 60 111
x8546:	je printArgument$113	; 4: 15 132 203 1

printArgument$10:	; Case 113 c 117
x8550:	cmp al, 117	; 2: 60 117
x8552:	je printArgument$113	; 4: 15 132 197 1

printArgument$11:	; Case 173 c 71
x8556:	cmp al, 71	; 2: 60 71
x8558:	je printArgument$173	; 4: 15 132 186 2

printArgument$12:	; Case 173 c 103
x8562:	cmp al, 103	; 2: 60 103
x8564:	je printArgument$173	; 4: 15 132 180 2

printArgument$13:	; Case 173 c 69
x8568:	cmp al, 69	; 2: 60 69
x8570:	je printArgument$173	; 4: 15 132 174 2

printArgument$14:	; Case 173 c 101
x8574:	cmp al, 101	; 2: 60 101
x8576:	je printArgument$173	; 4: 15 132 168 2

printArgument$15:	; Case 173 c 102
x8580:	cmp al, 102	; 2: 60 102
x8582:	je printArgument$173	; 4: 15 132 162 2

printArgument$16:	; Case 299 c 112
x8586:	cmp al, 112	; 2: 60 112
x8588:	je printArgument$299	; 4: 15 132 177 4

printArgument$17:	; Case 324 c 110
x8592:	cmp al, 110	; 2: 60 110
x8594:	je printArgument$324	; 4: 15 132 25 5

printArgument$18:	; Case 346 c 37
x8598:	cmp al, 37	; 2: 60 37
x8600:	je printArgument$346	; 4: 15 132 96 5

printArgument$19:	; CaseEnd c

printArgument$20:	; Goto 359
x8604:	jmp printArgument$359	; 3: 233 148 5

printArgument$21:	; Equal 30 shortInt 0
x8607:	cmp word [bp + 20], 0	; 4: 131 126 20 0
x8611:	je printArgument$30	; 2: 116 42

printArgument$22:	; BinaryAdd arg_list arg_list 2
x8613:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$23:	; BinarySubtract £temporary2010 arg_list 2
x8617:	mov si, [bp + 8]	; 3: 139 118 8
x8620:	sub si, 2	; 3: 131 238 2

printArgument$24:	; IntegralToIntegral £temporary2011 £temporary2010

printArgument$25:	; Deref £temporary2012 -> £temporary2011 £temporary2011 0

printArgument$26:	; IntegralToIntegral £temporary2013 £temporary2012 -> £temporary2011
x8623:	mov ax, [si]	; 2: 139 4
x8625:	cmp ax, 0	; 3: 131 248 0
x8628:	jge printArgument$27	; 2: 125 4
x8630:	neg ax	; 2: 247 216
x8632:	neg al	; 2: 246 216

printArgument$27:	; IntegralToIntegral £temporary2014 £temporary2013
x8634:	and eax, 255	; 6: 102 37 255 0 0 0
x8640:	cmp al, 0	; 2: 60 0
x8642:	jge printArgument$28	; 2: 125 5
x8644:	neg al	; 2: 246 216
x8646:	neg eax	; 3: 102 247 216

printArgument$28:	; Assign longValue £temporary2014
x8649:	mov [bp + 44], eax	; 4: 102 137 70 44

printArgument$29:	; Goto 43
x8653:	jmp printArgument$43	; 2: 235 57

printArgument$30:	; Equal 37 longInt 0
x8655:	cmp word [bp + 22], 0	; 4: 131 126 22 0
x8659:	je printArgument$37	; 2: 116 19

printArgument$31:	; BinaryAdd arg_list arg_list 4
x8661:	add word [bp + 8], 4	; 4: 131 70 8 4

printArgument$32:	; BinarySubtract £temporary2016 arg_list 4
x8665:	mov si, [bp + 8]	; 3: 139 118 8
x8668:	sub si, 4	; 3: 131 238 4

printArgument$33:	; IntegralToIntegral £temporary2017 £temporary2016

printArgument$34:	; Deref £temporary2018 -> £temporary2017 £temporary2017 0

printArgument$35:	; Assign longValue £temporary2018 -> £temporary2017
x8671:	mov eax, [si]	; 3: 102 139 4
x8674:	mov [bp + 44], eax	; 4: 102 137 70 44

printArgument$36:	; Goto 43
x8678:	jmp printArgument$43	; 2: 235 32

printArgument$37:	; BinaryAdd arg_list arg_list 2
x8680:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$38:	; BinarySubtract £temporary2020 arg_list 2
x8684:	mov si, [bp + 8]	; 3: 139 118 8
x8687:	sub si, 2	; 3: 131 238 2

printArgument$39:	; IntegralToIntegral £temporary2021 £temporary2020

printArgument$40:	; Deref £temporary2022 -> £temporary2021 £temporary2021 0

printArgument$41:	; IntegralToIntegral £temporary2023 £temporary2022 -> £temporary2021
x8690:	mov ax, [si]	; 2: 139 4
x8692:	and eax, 65535	; 6: 102 37 255 255 0 0
x8698:	cmp ax, 0	; 3: 131 248 0
x8701:	jge printArgument$42	; 2: 125 5
x8703:	neg ax	; 2: 247 216
x8705:	neg eax	; 3: 102 247 216

printArgument$42:	; Assign longValue £temporary2023
x8708:	mov [bp + 44], eax	; 4: 102 137 70 44

printArgument$43:	; Equal 50 negativePtr 0
x8712:	cmp word [bp + 28], 0	; 4: 131 126 28 0
x8716:	je printArgument$50	; 2: 116 20

printArgument$44:	; Deref £temporary2027 -> negativePtr negativePtr 0
x8718:	mov si, [bp + 28]	; 3: 139 118 28

printArgument$45:	; SignedGreaterThanEqual 48 longValue 0
x8721:	cmp dword [bp + 44], 0	; 5: 102 131 126 44 0
x8726:	jge printArgument$48	; 2: 125 5

printArgument$46:	; Assign £temporary2029 1
x8728:	mov ax, 1	; 3: 184 1 0

printArgument$47:	; Goto 49
x8731:	jmp printArgument$49	; 2: 235 3

printArgument$48:	; Assign £temporary2029 0
x8733:	mov ax, 0	; 3: 184 0 0

printArgument$49:	; Assign £temporary2027 -> negativePtr £temporary2029
x8736:	mov [si], ax	; 2: 137 4

printArgument$50:	; NotEqual 57 sign 0
x8738:	cmp word [bp + 26], 0	; 4: 131 126 26 0
x8742:	jne printArgument$57	; 2: 117 26

printArgument$51:	; CallHeader 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$52:	; Parameter 48 longValue 6
x8744:	mov eax, [bp + 44]	; 4: 102 139 70 44
x8748:	mov [bp + 54], eax	; 4: 102 137 70 54

printArgument$53:	; Call 48 labs 0
x8752:	mov word [bp + 48], printArgument$54	; 5: 199 70 48 62 34
x8757:	mov [bp + 50], bp	; 3: 137 110 50
x8760:	add bp, 48	; 3: 131 197 48
x8763:	jmp labs	; 3: 233 3 5

printArgument$54:	; PostCall 48

printArgument$55:	; GetReturnValue £temporary2032

printArgument$56:	; Assign longValue £temporary2032
x8766:	mov [bp + 44], ebx	; 4: 102 137 94 44

printArgument$57:	; CallHeader 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$58:	; Parameter 48 arg_list 6
x8770:	mov ax, [bp + 8]	; 3: 139 70 8
x8773:	mov [bp + 54], ax	; 3: 137 70 54

printArgument$59:	; Parameter 48 widthPtr 8
x8776:	mov ax, [bp + 16]	; 3: 139 70 16
x8779:	mov [bp + 56], ax	; 3: 137 70 56

printArgument$60:	; address £temporary2033 precision
x8782:	mov si, bp	; 2: 137 238
x8784:	add si, 18	; 3: 131 198 18

printArgument$61:	; Parameter 48 £temporary2033 10
x8787:	mov [bp + 58], si	; 3: 137 118 58

printArgument$62:	; Call 48 checkWidthAndPrecision 0
x8790:	mov word [bp + 48], printArgument$63	; 5: 199 70 48 100 34
x8795:	mov [bp + 50], bp	; 3: 137 110 50
x8798:	add bp, 48	; 3: 131 197 48
x8801:	jmp checkWidthAndPrecision	; 3: 233 252 4

printArgument$63:	; PostCall 48

printArgument$64:	; GetReturnValue £temporary2034

printArgument$65:	; Assign arg_list £temporary2034
x8804:	mov [bp + 8], bx	; 3: 137 94 8

printArgument$66:	; CallHeader 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$67:	; Parameter 48 longValue 6
x8807:	mov eax, [bp + 44]	; 4: 102 139 70 44
x8811:	mov [bp + 54], eax	; 4: 102 137 70 54

printArgument$68:	; Parameter 48 plus 10
x8815:	mov ax, [bp + 10]	; 3: 139 70 10
x8818:	mov [bp + 58], ax	; 3: 137 70 58

printArgument$69:	; Parameter 48 space 12
x8821:	mov ax, [bp + 12]	; 3: 139 70 12
x8824:	mov [bp + 60], ax	; 3: 137 70 60

printArgument$70:	; Call 48 printLongInt 0
x8827:	mov word [bp + 48], printArgument$71	; 5: 199 70 48 137 34
x8832:	mov [bp + 50], bp	; 3: 137 110 50
x8835:	add bp, 48	; 3: 131 197 48
x8838:	jmp printLongInt	; 3: 233 35 5

printArgument$71:	; PostCall 48

printArgument$72:	; Goto 359
x8841:	jmp printArgument$359	; 3: 233 167 4

printArgument$73:	; BinaryAdd arg_list arg_list 2
x8844:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$74:	; BinarySubtract £temporary2037 arg_list 2
x8848:	mov si, [bp + 8]	; 3: 139 118 8
x8851:	sub si, 2	; 3: 131 238 2

printArgument$75:	; IntegralToIntegral £temporary2038 £temporary2037

printArgument$76:	; Deref £temporary2039 -> £temporary2038 £temporary2038 0

printArgument$77:	; IntegralToIntegral £temporary2040 £temporary2039 -> £temporary2038
x8854:	mov ax, [si]	; 2: 139 4
x8856:	cmp ax, 0	; 3: 131 248 0
x8859:	jge printArgument$78	; 2: 125 4
x8861:	neg ax	; 2: 247 216
x8863:	neg al	; 2: 246 216

printArgument$78:	; Assign charValue £temporary2040
x8865:	mov [bp + 31], al	; 3: 136 70 31

printArgument$79:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$80:	; Parameter 44 arg_list 6
x8868:	mov ax, [bp + 8]	; 3: 139 70 8
x8871:	mov [bp + 50], ax	; 3: 137 70 50

printArgument$81:	; Parameter 44 widthPtr 8
x8874:	mov ax, [bp + 16]	; 3: 139 70 16
x8877:	mov [bp + 52], ax	; 3: 137 70 52

printArgument$82:	; address £temporary2041 precision
x8880:	mov si, bp	; 2: 137 238
x8882:	add si, 18	; 3: 131 198 18

printArgument$83:	; Parameter 44 £temporary2041 10
x8885:	mov [bp + 54], si	; 3: 137 118 54

printArgument$84:	; Call 44 checkWidthAndPrecision 0
x8888:	mov word [bp + 44], printArgument$85	; 5: 199 70 44 198 34
x8893:	mov [bp + 46], bp	; 3: 137 110 46
x8896:	add bp, 44	; 3: 131 197 44
x8899:	jmp checkWidthAndPrecision	; 3: 233 154 4

printArgument$85:	; PostCall 44

printArgument$86:	; GetReturnValue £temporary2042

printArgument$87:	; Assign arg_list £temporary2042
x8902:	mov [bp + 8], bx	; 3: 137 94 8

printArgument$88:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$89:	; Parameter 44 charValue 6
x8905:	mov al, [bp + 31]	; 3: 138 70 31
x8908:	mov [bp + 50], al	; 3: 136 70 50

printArgument$90:	; Call 44 printChar 0
x8911:	mov word [bp + 44], printArgument$91	; 5: 199 70 44 221 34
x8916:	mov [bp + 46], bp	; 3: 137 110 46
x8919:	add bp, 44	; 3: 131 197 44
x8922:	jmp printChar	; 3: 233 99 5

printArgument$91:	; PostCall 44

printArgument$92:	; Goto 359
x8925:	jmp printArgument$359	; 3: 233 83 4

printArgument$93:	; BinaryAdd arg_list arg_list 2
x8928:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$94:	; BinarySubtract £temporary2045 arg_list 2
x8932:	mov si, [bp + 8]	; 3: 139 118 8
x8935:	sub si, 2	; 3: 131 238 2

printArgument$95:	; IntegralToIntegral £temporary2046 £temporary2045

printArgument$96:	; Deref £temporary2047 -> £temporary2046 £temporary2046 0

printArgument$97:	; Assign stringValue £temporary2047 -> £temporary2046
x8938:	mov ax, [si]	; 2: 139 4
x8940:	mov [bp + 44], ax	; 3: 137 70 44

printArgument$98:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$99:	; Parameter 46 arg_list 6
x8943:	mov ax, [bp + 8]	; 3: 139 70 8
x8946:	mov [bp + 52], ax	; 3: 137 70 52

printArgument$100:	; Parameter 46 widthPtr 8
x8949:	mov ax, [bp + 16]	; 3: 139 70 16
x8952:	mov [bp + 54], ax	; 3: 137 70 54

printArgument$101:	; address £temporary2048 precision
x8955:	mov si, bp	; 2: 137 238
x8957:	add si, 18	; 3: 131 198 18

printArgument$102:	; Parameter 46 £temporary2048 10
x8960:	mov [bp + 56], si	; 3: 137 118 56

printArgument$103:	; Call 46 checkWidthAndPrecision 0
x8963:	mov word [bp + 46], printArgument$104	; 5: 199 70 46 17 35
x8968:	mov [bp + 48], bp	; 3: 137 110 48
x8971:	add bp, 46	; 3: 131 197 46
x8974:	jmp checkWidthAndPrecision	; 3: 233 79 4

printArgument$104:	; PostCall 46

printArgument$105:	; GetReturnValue £temporary2049

printArgument$106:	; Assign arg_list £temporary2049
x8977:	mov [bp + 8], bx	; 3: 137 94 8

printArgument$107:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$108:	; Parameter 46 stringValue 6
x8980:	mov ax, [bp + 44]	; 3: 139 70 44
x8983:	mov [bp + 52], ax	; 3: 137 70 52

printArgument$109:	; Parameter 46 precision 8
x8986:	mov ax, [bp + 18]	; 3: 139 70 18
x8989:	mov [bp + 54], ax	; 3: 137 70 54

printArgument$110:	; Call 46 printString 0
x8992:	mov word [bp + 46], printArgument$111	; 5: 199 70 46 46 35
x8997:	mov [bp + 48], bp	; 3: 137 110 48
x9000:	add bp, 46	; 3: 131 197 46
x9003:	jmp printString	; 3: 233 218 5

printArgument$111:	; PostCall 46

printArgument$112:	; Goto 359
x9006:	jmp printArgument$359	; 3: 233 2 4

printArgument$113:	; NotEqual 116 c 117
x9009:	cmp byte [bp + 30], 117	; 4: 128 126 30 117
x9013:	jne printArgument$116	; 2: 117 8

printArgument$114:	; Assign £temporary2065 10
x9015:	mov eax, 10	; 6: 102 184 10 0 0 0

printArgument$115:	; Goto 125
x9021:	jmp printArgument$125	; 2: 235 34

printArgument$116:	; NotEqual 119 c 111
x9023:	cmp byte [bp + 30], 111	; 4: 128 126 30 111
x9027:	jne printArgument$119	; 2: 117 8

printArgument$117:	; Assign £temporary2061 8
x9029:	mov eax, 8	; 6: 102 184 8 0 0 0

printArgument$118:	; Goto 124
x9035:	jmp printArgument$124	; 2: 235 20

printArgument$119:	; NotEqual 122 c 98
x9037:	cmp byte [bp + 30], 98	; 4: 128 126 30 98
x9041:	jne printArgument$122	; 2: 117 8

printArgument$120:	; Assign £temporary2057 2
x9043:	mov eax, 2	; 6: 102 184 2 0 0 0

printArgument$121:	; Goto 123
x9049:	jmp printArgument$123	; 2: 235 6

printArgument$122:	; Assign £temporary2057 16
x9051:	mov eax, 16	; 6: 102 184 16 0 0 0

printArgument$123:	; Assign £temporary2061 £temporary2057

printArgument$124:	; Assign £temporary2065 £temporary2061

printArgument$125:	; Assign base £temporary2065
x9057:	mov [bp + 44], eax	; 4: 102 137 70 44

printArgument$126:	; Equal 135 shortInt 0
x9061:	cmp word [bp + 20], 0	; 4: 131 126 20 0
x9065:	je printArgument$135	; 2: 116 24

printArgument$127:	; BinaryAdd arg_list arg_list 2
x9067:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$128:	; BinarySubtract £temporary2067 arg_list 2
x9071:	mov si, [bp + 8]	; 3: 139 118 8
x9074:	sub si, 2	; 3: 131 238 2

printArgument$129:	; IntegralToIntegral £temporary2068 £temporary2067

printArgument$130:	; Deref £temporary2069 -> £temporary2068 £temporary2068 0

printArgument$131:	; IntegralToIntegral £temporary2070 £temporary2069 -> £temporary2068
x9077:	mov ax, [si]	; 2: 139 4

printArgument$132:	; IntegralToIntegral £temporary2071 £temporary2070
x9079:	and eax, 255	; 6: 102 37 255 0 0 0

printArgument$133:	; Assign value £temporary2071
x9085:	mov [bp + 48], eax	; 4: 102 137 70 48

printArgument$134:	; Goto 148
x9089:	jmp printArgument$148	; 2: 235 47

printArgument$135:	; Equal 142 longInt 0
x9091:	cmp word [bp + 22], 0	; 4: 131 126 22 0
x9095:	je printArgument$142	; 2: 116 19

printArgument$136:	; BinaryAdd arg_list arg_list 4
x9097:	add word [bp + 8], 4	; 4: 131 70 8 4

printArgument$137:	; BinarySubtract £temporary2073 arg_list 4
x9101:	mov si, [bp + 8]	; 3: 139 118 8
x9104:	sub si, 4	; 3: 131 238 4

printArgument$138:	; IntegralToIntegral £temporary2074 £temporary2073

printArgument$139:	; Deref £temporary2075 -> £temporary2074 £temporary2074 0

printArgument$140:	; Assign value £temporary2075 -> £temporary2074
x9107:	mov eax, [si]	; 3: 102 139 4
x9110:	mov [bp + 48], eax	; 4: 102 137 70 48

printArgument$141:	; Goto 148
x9114:	jmp printArgument$148	; 2: 235 22

printArgument$142:	; BinaryAdd arg_list arg_list 2
x9116:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$143:	; BinarySubtract £temporary2077 arg_list 2
x9120:	mov si, [bp + 8]	; 3: 139 118 8
x9123:	sub si, 2	; 3: 131 238 2

printArgument$144:	; IntegralToIntegral £temporary2078 £temporary2077

printArgument$145:	; Deref £temporary2079 -> £temporary2078 £temporary2078 0

printArgument$146:	; IntegralToIntegral £temporary2080 £temporary2079 -> £temporary2078
x9126:	mov ax, [si]	; 2: 139 4
x9128:	and eax, 65535	; 6: 102 37 255 255 0 0

printArgument$147:	; Assign value £temporary2080
x9134:	mov [bp + 48], eax	; 4: 102 137 70 48

printArgument$148:	; CallHeader 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$149:	; Parameter 52 arg_list 6
x9138:	mov ax, [bp + 8]	; 3: 139 70 8
x9141:	mov [bp + 58], ax	; 3: 137 70 58

printArgument$150:	; Parameter 52 widthPtr 8
x9144:	mov ax, [bp + 16]	; 3: 139 70 16
x9147:	mov [bp + 60], ax	; 3: 137 70 60

printArgument$151:	; address £temporary2083 precision
x9150:	mov si, bp	; 2: 137 238
x9152:	add si, 18	; 3: 131 198 18

printArgument$152:	; Parameter 52 £temporary2083 10
x9155:	mov [bp + 62], si	; 3: 137 118 62

printArgument$153:	; Call 52 checkWidthAndPrecision 0
x9158:	mov word [bp + 52], printArgument$154	; 5: 199 70 52 212 35
x9163:	mov [bp + 54], bp	; 3: 137 110 54
x9166:	add bp, 52	; 3: 131 197 52
x9169:	jmp checkWidthAndPrecision	; 3: 233 140 3

printArgument$154:	; PostCall 52

printArgument$155:	; GetReturnValue £temporary2084

printArgument$156:	; Assign arg_list £temporary2084
x9172:	mov [bp + 8], bx	; 3: 137 94 8

printArgument$157:	; CallHeader 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$158:	; Parameter 52 value 6
x9175:	mov eax, [bp + 48]	; 4: 102 139 70 48
x9179:	mov [bp + 58], eax	; 4: 102 137 70 58

printArgument$159:	; Parameter 52 plus 10
x9183:	mov ax, [bp + 10]	; 3: 139 70 10
x9186:	mov [bp + 62], ax	; 3: 137 70 62

printArgument$160:	; Parameter 52 space 12
x9189:	mov ax, [bp + 12]	; 3: 139 70 12
x9192:	mov [bp + 64], ax	; 3: 137 70 64

printArgument$161:	; Parameter 52 grid 14
x9195:	mov ax, [bp + 14]	; 3: 139 70 14
x9198:	mov [bp + 66], ax	; 3: 137 70 66

printArgument$162:	; Parameter 52 base 16
x9201:	mov eax, [bp + 44]	; 4: 102 139 70 44
x9205:	mov [bp + 68], eax	; 4: 102 137 70 68

printArgument$163:	; CallHeader 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$164:	; IntegralToIntegral £temporary2085 c
x9209:	mov al, [bp + 30]	; 3: 138 70 30
x9212:	and ax, 255	; 3: 37 255 0
x9215:	cmp al, 0	; 2: 60 0
x9217:	jge printArgument$165	; 2: 125 4
x9219:	neg al	; 2: 246 216
x9221:	neg ax	; 2: 247 216

printArgument$165:	; Parameter 52 £temporary2085 26
x9223:	mov [bp + 78], ax	; 3: 137 70 78

printArgument$166:	; Call 52 isupper 20
x9226:	mov word [bp + 72], printArgument$167	; 5: 199 70 72 24 36
x9231:	mov [bp + 74], bp	; 3: 137 110 74
x9234:	add bp, 72	; 3: 131 197 72
x9237:	jmp isupper	; 3: 233 224 5

printArgument$167:	; PostCall 52

printArgument$168:	; GetReturnValue £temporary2086

printArgument$169:	; Parameter 52 £temporary2086 20
x9240:	mov [bp + 72], bx	; 3: 137 94 72

printArgument$170:	; Call 52 printUnsignedLong 0
x9243:	mov word [bp + 52], printArgument$171	; 5: 199 70 52 41 36
x9248:	mov [bp + 54], bp	; 3: 137 110 54
x9251:	add bp, 52	; 3: 131 197 52
x9254:	jmp printUnsignedLong	; 3: 233 204 9

printArgument$171:	; PostCall 52

printArgument$172:	; Goto 359
x9257:	jmp printArgument$359	; 3: 233 7 3

printArgument$173:	; Equal 190 longDouble 0
x9260:	cmp word [bp + 24], 0	; 4: 131 126 24 0
x9264:	je printArgument$190	; 2: 116 57

printArgument$174:	; BinaryAdd arg_list arg_list 8
x9266:	add word [bp + 8], 8	; 4: 131 70 8 8

printArgument$175:	; BinarySubtract £temporary2089 arg_list 8
x9270:	mov si, [bp + 8]	; 3: 139 118 8
x9273:	sub si, 8	; 3: 131 238 8

printArgument$176:	; IntegralToIntegral £temporary2090 £temporary2089

printArgument$177:	; Deref £temporary2091 -> £temporary2090 £temporary2090 0

printArgument$178:	; PushFloat £temporary2091 -> £temporary2090
x9276:	fld qword [si]	; 2: 221 4

printArgument$179:	; PopFloat longDoubleValue
x9278:	fstp qword [bp + 34]	; 3: 221 94 34

printArgument$180:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$181:	; PushFloat longDoubleValue
x9281:	fld qword [bp + 34]	; 3: 221 70 34

printArgument$182:	; Parameter 44 longDoubleValue 6
x9284:	fstp qword [bp + 50]	; 3: 221 94 50

printArgument$183:	; Parameter 44 0 14
x9287:	mov word [bp + 58], 0	; 5: 199 70 58 0 0

printArgument$184:	; Parameter 44 0 16
x9292:	mov word [bp + 60], 0	; 5: 199 70 60 0 0

printArgument$185:	; Parameter 44 0 18
x9297:	mov word [bp + 62], 0	; 5: 199 70 62 0 0

printArgument$186:	; Parameter 44 3 20
x9302:	mov word [bp + 64], 3	; 5: 199 70 64 3 0

printArgument$187:	; Call 44 printLongDoublePlain 0
x9307:	mov word [bp + 44], printArgument$188	; 5: 199 70 44 105 36
x9312:	mov [bp + 46], bp	; 3: 137 110 46
x9315:	add bp, 44	; 3: 131 197 44
x9318:	jmp printLongDoublePlain	; 3: 233 55 11

printArgument$188:	; PostCall 44

printArgument$189:	; Goto 196
x9321:	jmp printArgument$196	; 2: 235 15

printArgument$190:	; BinaryAdd arg_list arg_list 8
x9323:	add word [bp + 8], 8	; 4: 131 70 8 8

printArgument$191:	; BinarySubtract £temporary2094 arg_list 8
x9327:	mov si, [bp + 8]	; 3: 139 118 8
x9330:	sub si, 8	; 3: 131 238 8

printArgument$192:	; IntegralToIntegral £temporary2095 £temporary2094

printArgument$193:	; Deref £temporary2096 -> £temporary2095 £temporary2095 0

printArgument$194:	; PushFloat £temporary2096 -> £temporary2095
x9333:	fld qword [si]	; 2: 221 4

printArgument$195:	; PopFloat longDoubleValue
x9335:	fstp qword [bp + 34]	; 3: 221 94 34

printArgument$196:	; Equal 205 negativePtr 0
x9338:	cmp word [bp + 28], 0	; 4: 131 126 28 0
x9342:	je printArgument$205	; 2: 116 26

printArgument$197:	; Deref £temporary2100 -> negativePtr negativePtr 0
x9344:	mov si, [bp + 28]	; 3: 139 118 28

printArgument$198:	; PushFloat longDoubleValue
x9347:	fld qword [bp + 34]	; 3: 221 70 34

printArgument$199:	; PushZero
x9350:	fldz	; 2: 217 238

printArgument$200:	; SignedGreaterThanEqual 203 longDoubleValue 0
x9352:	fcompp	; 2: 222 217
x9354:	fstsw ax	; 3: 155 223 224
x9357:	sahf	; 1: 158
x9358:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; Assign £temporary2102 1
x9360:	mov ax, 1	; 3: 184 1 0

printArgument$202:	; Goto 204
x9363:	jmp printArgument$204	; 2: 235 3

printArgument$203:	; Assign £temporary2102 0
x9365:	mov ax, 0	; 3: 184 0 0

printArgument$204:	; Assign £temporary2100 -> negativePtr £temporary2102
x9368:	mov [si], ax	; 2: 137 4

printArgument$205:	; NotEqual 213 sign 0
x9370:	cmp word [bp + 26], 0	; 4: 131 126 26 0
x9374:	jne printArgument$213	; 2: 117 23

printArgument$206:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$207:	; PushFloat longDoubleValue
x9376:	fld qword [bp + 34]	; 3: 221 70 34

printArgument$208:	; Parameter 44 longDoubleValue 6
x9379:	fstp qword [bp + 50]	; 3: 221 94 50

printArgument$209:	; Call 44 fabs 0
x9382:	mov word [bp + 44], printArgument$210	; 5: 199 70 44 180 36
x9387:	mov [bp + 46], bp	; 3: 137 110 46
x9390:	add bp, 44	; 3: 131 197 44
x9393:	jmp fabs	; 3: 233 48 12

printArgument$210:	; PostCall 44

printArgument$211:	; GetReturnValue £temporary2105

printArgument$212:	; PopFloat longDoubleValue
x9396:	fstp qword [bp + 34]	; 3: 221 94 34

printArgument$213:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$214:	; Parameter 44 arg_list 6
x9399:	mov ax, [bp + 8]	; 3: 139 70 8
x9402:	mov [bp + 50], ax	; 3: 137 70 50

printArgument$215:	; Parameter 44 widthPtr 8
x9405:	mov ax, [bp + 16]	; 3: 139 70 16
x9408:	mov [bp + 52], ax	; 3: 137 70 52

printArgument$216:	; address £temporary2106 precision
x9411:	mov si, bp	; 2: 137 238
x9413:	add si, 18	; 3: 131 198 18

printArgument$217:	; Parameter 44 £temporary2106 10
x9416:	mov [bp + 54], si	; 3: 137 118 54

printArgument$218:	; Call 44 checkWidthAndPrecision 0
x9419:	mov word [bp + 44], printArgument$219	; 5: 199 70 44 217 36
x9424:	mov [bp + 46], bp	; 3: 137 110 46
x9427:	add bp, 44	; 3: 131 197 44
x9430:	jmp checkWidthAndPrecision	; 3: 233 135 2

printArgument$219:	; PostCall 44

printArgument$220:	; GetReturnValue £temporary2107

printArgument$221:	; Assign arg_list £temporary2107
x9433:	mov [bp + 8], bx	; 3: 137 94 8

printArgument$222:	; NotEqual 233 c 102
x9436:	cmp byte [bp + 30], 102	; 4: 128 126 30 102
x9440:	jne printArgument$233	; 2: 117 47

printArgument$223:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$224:	; PushFloat longDoubleValue
x9442:	fld qword [bp + 34]	; 3: 221 70 34

printArgument$225:	; Parameter 44 longDoubleValue 6
x9445:	fstp qword [bp + 50]	; 3: 221 94 50

printArgument$226:	; Parameter 44 plus 14
x9448:	mov ax, [bp + 10]	; 3: 139 70 10
x9451:	mov [bp + 58], ax	; 3: 137 70 58

printArgument$227:	; Parameter 44 space 16
x9454:	mov ax, [bp + 12]	; 3: 139 70 12
x9457:	mov [bp + 60], ax	; 3: 137 70 60

printArgument$228:	; Parameter 44 grid 18
x9460:	mov ax, [bp + 14]	; 3: 139 70 14
x9463:	mov [bp + 62], ax	; 3: 137 70 62

printArgument$229:	; Parameter 44 precision 20
x9466:	mov ax, [bp + 18]	; 3: 139 70 18
x9469:	mov [bp + 64], ax	; 3: 137 70 64

printArgument$230:	; Call 44 printLongDoublePlain 0
x9472:	mov word [bp + 44], printArgument$231	; 5: 199 70 44 14 37
x9477:	mov [bp + 46], bp	; 3: 137 110 46
x9480:	add bp, 44	; 3: 131 197 44
x9483:	jmp printLongDoublePlain	; 3: 233 146 10

printArgument$231:	; PostCall 44

printArgument$232:	; Goto 359
x9486:	jmp printArgument$359	; 3: 233 34 2

printArgument$233:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$234:	; IntegralToIntegral £temporary2110 c
x9489:	mov al, [bp + 30]	; 3: 138 70 30
x9492:	and ax, 255	; 3: 37 255 0
x9495:	cmp al, 0	; 2: 60 0
x9497:	jge printArgument$235	; 2: 125 4
x9499:	neg al	; 2: 246 216
x9501:	neg ax	; 2: 247 216

printArgument$235:	; Parameter 44 £temporary2110 6
x9503:	mov [bp + 50], ax	; 3: 137 70 50

printArgument$236:	; Call 44 tolower 0
x9506:	mov word [bp + 44], printArgument$237	; 5: 199 70 44 48 37
x9511:	mov [bp + 46], bp	; 3: 137 110 46
x9514:	add bp, 44	; 3: 131 197 44
x9517:	jmp tolower	; 3: 233 214 11

printArgument$237:	; PostCall 44

printArgument$238:	; GetReturnValue £temporary2111

printArgument$239:	; NotEqual 257 £temporary2111 101
x9520:	cmp bx, 101	; 3: 131 251 101
x9523:	jne printArgument$257	; 2: 117 81

printArgument$240:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$241:	; PushFloat longDoubleValue
x9525:	fld qword [bp + 34]	; 3: 221 70 34

printArgument$242:	; Parameter 44 longDoubleValue 6
x9528:	fstp qword [bp + 50]	; 3: 221 94 50

printArgument$243:	; Parameter 44 plus 14
x9531:	mov ax, [bp + 10]	; 3: 139 70 10
x9534:	mov [bp + 58], ax	; 3: 137 70 58

printArgument$244:	; Parameter 44 space 16
x9537:	mov ax, [bp + 12]	; 3: 139 70 12
x9540:	mov [bp + 60], ax	; 3: 137 70 60

printArgument$245:	; Parameter 44 grid 18
x9543:	mov ax, [bp + 14]	; 3: 139 70 14
x9546:	mov [bp + 62], ax	; 3: 137 70 62

printArgument$246:	; Parameter 44 precision 20
x9549:	mov ax, [bp + 18]	; 3: 139 70 18
x9552:	mov [bp + 64], ax	; 3: 137 70 64

printArgument$247:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$248:	; IntegralToIntegral £temporary2113 c
x9555:	mov al, [bp + 30]	; 3: 138 70 30
x9558:	and ax, 255	; 3: 37 255 0
x9561:	cmp al, 0	; 2: 60 0
x9563:	jge printArgument$249	; 2: 125 4
x9565:	neg al	; 2: 246 216
x9567:	neg ax	; 2: 247 216

printArgument$249:	; Parameter 44 £temporary2113 28
x9569:	mov [bp + 72], ax	; 3: 137 70 72

printArgument$250:	; Call 44 isupper 22
x9572:	mov word [bp + 66], printArgument$251	; 5: 199 70 66 114 37
x9577:	mov [bp + 68], bp	; 3: 137 110 68
x9580:	add bp, 66	; 3: 131 197 66
x9583:	jmp isupper	; 3: 233 134 4

printArgument$251:	; PostCall 44

printArgument$252:	; GetReturnValue £temporary2114

printArgument$253:	; Parameter 44 £temporary2114 22
x9586:	mov [bp + 66], bx	; 3: 137 94 66

printArgument$254:	; Call 44 printLongDoubleExpo 0
x9589:	mov word [bp + 44], printArgument$255	; 5: 199 70 44 131 37
x9594:	mov [bp + 46], bp	; 3: 137 110 46
x9597:	add bp, 44	; 3: 131 197 44
x9600:	jmp printLongDoubleExpo	; 3: 233 36 12

printArgument$255:	; PostCall 44

printArgument$256:	; Goto 359
x9603:	jmp printArgument$359	; 3: 233 173 1

printArgument$257:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$258:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$259:	; PushFloat longDoubleValue
x9606:	fld qword [bp + 34]	; 3: 221 70 34

printArgument$260:	; Parameter 44 longDoubleValue 6
x9609:	fstp qword [bp + 50]	; 3: 221 94 50

printArgument$261:	; Call 44 fabs 0
x9612:	mov word [bp + 44], printArgument$262	; 5: 199 70 44 154 37
x9617:	mov [bp + 46], bp	; 3: 137 110 46
x9620:	add bp, 44	; 3: 131 197 44
x9623:	jmp fabs	; 3: 233 74 11

printArgument$262:	; PostCall 44

printArgument$263:	; GetReturnValue £temporary2116

printArgument$264:	; Parameter 44 £temporary2116 6
x9626:	fstp qword [bp + 50]	; 3: 221 94 50

printArgument$265:	; Call 44 log10 0
x9629:	mov word [bp + 44], printArgument$266	; 5: 199 70 44 171 37
x9634:	mov [bp + 46], bp	; 3: 137 110 46
x9637:	add bp, 44	; 3: 131 197 44
x9640:	jmp log10	; 3: 233 99 13

printArgument$266:	; PostCall 44

printArgument$267:	; GetReturnValue £temporary2117

printArgument$268:	; FloatingToIntegral £temporary2118 £temporary2117
x9643:	fistp word [container2bytes#]	; 4: 223 30 174 21
x9647:	mov ax, [container2bytes#]	; 3: 161 174 21

printArgument$269:	; Assign expo £temporary2118
x9650:	mov [bp + 44], ax	; 3: 137 70 44

printArgument$270:	; SignedLessThan 282 expo -3
x9653:	cmp word [bp + 44], -3	; 4: 131 126 44 253
x9657:	jl printArgument$282	; 2: 124 53

printArgument$271:	; SignedGreaterThan 282 expo 2
x9659:	cmp word [bp + 44], 2	; 4: 131 126 44 2
x9663:	jg printArgument$282	; 2: 127 47

printArgument$272:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$273:	; PushFloat longDoubleValue
x9665:	fld qword [bp + 34]	; 3: 221 70 34

printArgument$274:	; Parameter 46 longDoubleValue 6
x9668:	fstp qword [bp + 52]	; 3: 221 94 52

printArgument$275:	; Parameter 46 plus 14
x9671:	mov ax, [bp + 10]	; 3: 139 70 10
x9674:	mov [bp + 60], ax	; 3: 137 70 60

printArgument$276:	; Parameter 46 space 16
x9677:	mov ax, [bp + 12]	; 3: 139 70 12
x9680:	mov [bp + 62], ax	; 3: 137 70 62

printArgument$277:	; Parameter 46 grid 18
x9683:	mov ax, [bp + 14]	; 3: 139 70 14
x9686:	mov [bp + 64], ax	; 3: 137 70 64

printArgument$278:	; Parameter 46 precision 20
x9689:	mov ax, [bp + 18]	; 3: 139 70 18
x9692:	mov [bp + 66], ax	; 3: 137 70 66

printArgument$279:	; Call 46 printLongDoublePlain 0
x9695:	mov word [bp + 46], printArgument$280	; 5: 199 70 46 237 37
x9700:	mov [bp + 48], bp	; 3: 137 110 48
x9703:	add bp, 46	; 3: 131 197 46
x9706:	jmp printLongDoublePlain	; 3: 233 179 9

printArgument$280:	; PostCall 46

printArgument$281:	; Goto 359
x9709:	jmp printArgument$359	; 3: 233 67 1

printArgument$282:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$283:	; PushFloat longDoubleValue
x9712:	fld qword [bp + 34]	; 3: 221 70 34

printArgument$284:	; Parameter 46 longDoubleValue 6
x9715:	fstp qword [bp + 52]	; 3: 221 94 52

printArgument$285:	; Parameter 46 plus 14
x9718:	mov ax, [bp + 10]	; 3: 139 70 10
x9721:	mov [bp + 60], ax	; 3: 137 70 60

printArgument$286:	; Parameter 46 space 16
x9724:	mov ax, [bp + 12]	; 3: 139 70 12
x9727:	mov [bp + 62], ax	; 3: 137 70 62

printArgument$287:	; Parameter 46 grid 18
x9730:	mov ax, [bp + 14]	; 3: 139 70 14
x9733:	mov [bp + 64], ax	; 3: 137 70 64

printArgument$288:	; Parameter 46 precision 20
x9736:	mov ax, [bp + 18]	; 3: 139 70 18
x9739:	mov [bp + 66], ax	; 3: 137 70 66

printArgument$289:	; CallHeader 46 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$290:	; IntegralToIntegral £temporary2123 c
x9742:	mov al, [bp + 30]	; 3: 138 70 30
x9745:	and ax, 255	; 3: 37 255 0
x9748:	cmp al, 0	; 2: 60 0
x9750:	jge printArgument$291	; 2: 125 4
x9752:	neg al	; 2: 246 216
x9754:	neg ax	; 2: 247 216

printArgument$291:	; Parameter 46 £temporary2123 28
x9756:	mov [bp + 74], ax	; 3: 137 70 74

printArgument$292:	; Call 46 isupper 22
x9759:	mov word [bp + 68], printArgument$293	; 5: 199 70 68 45 38
x9764:	mov [bp + 70], bp	; 3: 137 110 70
x9767:	add bp, 68	; 3: 131 197 68
x9770:	jmp isupper	; 3: 233 203 3

printArgument$293:	; PostCall 46

printArgument$294:	; GetReturnValue £temporary2124

printArgument$295:	; Parameter 46 £temporary2124 22
x9773:	mov [bp + 68], bx	; 3: 137 94 68

printArgument$296:	; Call 46 printLongDoubleExpo 0
x9776:	mov word [bp + 46], printArgument$297	; 5: 199 70 46 62 38
x9781:	mov [bp + 48], bp	; 3: 137 110 48
x9784:	add bp, 46	; 3: 131 197 46
x9787:	jmp printLongDoubleExpo	; 3: 233 105 11

printArgument$297:	; PostCall 46

printArgument$298:	; Goto 359
x9790:	jmp printArgument$359	; 3: 233 242 0

printArgument$299:	; BinaryAdd arg_list arg_list 2
x9793:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$300:	; BinarySubtract £temporary2127 arg_list 2
x9797:	mov si, [bp + 8]	; 3: 139 118 8
x9800:	sub si, 2	; 3: 131 238 2

printArgument$301:	; IntegralToIntegral £temporary2128 £temporary2127

printArgument$302:	; Deref £temporary2129 -> £temporary2128 £temporary2128 0

printArgument$303:	; Assign ptrValue £temporary2129 -> £temporary2128
x9803:	mov ax, [si]	; 2: 139 4
x9805:	mov [bp + 42], ax	; 3: 137 70 42

printArgument$304:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$305:	; Parameter 44 arg_list 6
x9808:	mov ax, [bp + 8]	; 3: 139 70 8
x9811:	mov [bp + 50], ax	; 3: 137 70 50

printArgument$306:	; Parameter 44 widthPtr 8
x9814:	mov ax, [bp + 16]	; 3: 139 70 16
x9817:	mov [bp + 52], ax	; 3: 137 70 52

printArgument$307:	; address £temporary2130 precision
x9820:	mov si, bp	; 2: 137 238
x9822:	add si, 18	; 3: 131 198 18

printArgument$308:	; Parameter 44 £temporary2130 10
x9825:	mov [bp + 54], si	; 3: 137 118 54

printArgument$309:	; Call 44 checkWidthAndPrecision 0
x9828:	mov word [bp + 44], printArgument$310	; 5: 199 70 44 114 38
x9833:	mov [bp + 46], bp	; 3: 137 110 46
x9836:	add bp, 44	; 3: 131 197 44
x9839:	jmp checkWidthAndPrecision	; 3: 233 238 0

printArgument$310:	; PostCall 44

printArgument$311:	; GetReturnValue £temporary2131

printArgument$312:	; Assign arg_list £temporary2131
x9842:	mov [bp + 8], bx	; 3: 137 94 8

printArgument$313:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$314:	; IntegralToIntegral £temporary2132 ptrValue
x9845:	mov ax, [bp + 42]	; 3: 139 70 42
x9848:	and eax, 65535	; 6: 102 37 255 255 0 0

printArgument$315:	; Parameter 44 £temporary2132 6
x9854:	mov [bp + 50], eax	; 4: 102 137 70 50

printArgument$316:	; Parameter 44 0 10
x9858:	mov word [bp + 54], 0	; 5: 199 70 54 0 0

printArgument$317:	; Parameter 44 0 12
x9863:	mov word [bp + 56], 0	; 5: 199 70 56 0 0

printArgument$318:	; Parameter 44 0 14
x9868:	mov word [bp + 58], 0	; 5: 199 70 58 0 0

printArgument$319:	; Parameter 44 10 16
x9873:	mov dword [bp + 60], 10	; 8: 102 199 70 60 10 0 0 0

printArgument$320:	; Parameter 44 0 20
x9881:	mov word [bp + 64], 0	; 5: 199 70 64 0 0

printArgument$321:	; Call 44 printUnsignedLong 0
x9886:	mov word [bp + 44], printArgument$322	; 5: 199 70 44 172 38
x9891:	mov [bp + 46], bp	; 3: 137 110 46
x9894:	add bp, 44	; 3: 131 197 44
x9897:	jmp printUnsignedLong	; 3: 233 73 7

printArgument$322:	; PostCall 44

printArgument$323:	; Goto 359
x9900:	jmp printArgument$359	; 3: 233 132 0

printArgument$324:	; BinaryAdd arg_list arg_list 2
x9903:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$325:	; BinarySubtract £temporary2135 arg_list 2
x9907:	mov si, [bp + 8]	; 3: 139 118 8
x9910:	sub si, 2	; 3: 131 238 2

printArgument$326:	; IntegralToIntegral £temporary2136 £temporary2135

printArgument$327:	; Deref £temporary2137 -> £temporary2136 £temporary2136 0

printArgument$328:	; Assign ptrValue £temporary2137 -> £temporary2136
x9913:	mov ax, [si]	; 2: 139 4
x9915:	mov [bp + 42], ax	; 3: 137 70 42

printArgument$329:	; BinaryAdd arg_list arg_list 2
x9918:	add word [bp + 8], 2	; 4: 131 70 8 2

printArgument$330:	; BinarySubtract £temporary2139 arg_list 2
x9922:	mov si, [bp + 8]	; 3: 139 118 8
x9925:	sub si, 2	; 3: 131 238 2

printArgument$331:	; IntegralToIntegral £temporary2140 £temporary2139

printArgument$332:	; Deref £temporary2141 -> £temporary2140 £temporary2140 0

printArgument$333:	; Assign intPtr £temporary2141 -> £temporary2140
x9928:	mov ax, [si]	; 2: 139 4
x9930:	mov [bp + 32], ax	; 3: 137 70 32

printArgument$334:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$335:	; Parameter 44 arg_list 6
x9933:	mov ax, [bp + 8]	; 3: 139 70 8
x9936:	mov [bp + 50], ax	; 3: 137 70 50

printArgument$336:	; Parameter 44 widthPtr 8
x9939:	mov ax, [bp + 16]	; 3: 139 70 16
x9942:	mov [bp + 52], ax	; 3: 137 70 52

printArgument$337:	; address £temporary2142 precision
x9945:	mov si, bp	; 2: 137 238
x9947:	add si, 18	; 3: 131 198 18

printArgument$338:	; Parameter 44 £temporary2142 10
x9950:	mov [bp + 54], si	; 3: 137 118 54

printArgument$339:	; Call 44 checkWidthAndPrecision 0
x9953:	mov word [bp + 44], printArgument$340	; 5: 199 70 44 239 38
x9958:	mov [bp + 46], bp	; 3: 137 110 46
x9961:	add bp, 44	; 3: 131 197 44
x9964:	nop	; 1: 144
x9965:	jmp checkWidthAndPrecision	; 2: 235 113

printArgument$340:	; PostCall 44

printArgument$341:	; GetReturnValue £temporary2143

printArgument$342:	; Assign arg_list £temporary2143
x9967:	mov [bp + 8], bx	; 3: 137 94 8

printArgument$343:	; Deref £temporary2144 -> intPtr intPtr 0
x9970:	mov si, [bp + 32]	; 3: 139 118 32

printArgument$344:	; Assign £temporary2144 -> intPtr g_outChars
x9973:	mov ax, [g_outChars]	; 3: 161 43 33
x9976:	mov [si], ax	; 2: 137 4

printArgument$345:	; Goto 359
x9978:	jmp printArgument$359	; 2: 235 55

printArgument$346:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$347:	; Parameter 44 arg_list 6
x9980:	mov ax, [bp + 8]	; 3: 139 70 8
x9983:	mov [bp + 50], ax	; 3: 137 70 50

printArgument$348:	; Parameter 44 widthPtr 8
x9986:	mov ax, [bp + 16]	; 3: 139 70 16
x9989:	mov [bp + 52], ax	; 3: 137 70 52

printArgument$349:	; address £temporary2145 precision
x9992:	mov si, bp	; 2: 137 238
x9994:	add si, 18	; 3: 131 198 18

printArgument$350:	; Parameter 44 £temporary2145 10
x9997:	mov [bp + 54], si	; 3: 137 118 54

printArgument$351:	; Call 44 checkWidthAndPrecision 0
x10000:	mov word [bp + 44], printArgument$352	; 5: 199 70 44 30 39
x10005:	mov [bp + 46], bp	; 3: 137 110 46
x10008:	add bp, 44	; 3: 131 197 44
x10011:	nop	; 1: 144
x10012:	jmp checkWidthAndPrecision	; 2: 235 66

printArgument$352:	; PostCall 44

printArgument$353:	; GetReturnValue £temporary2146

printArgument$354:	; Assign arg_list £temporary2146
x10014:	mov [bp + 8], bx	; 3: 137 94 8

printArgument$355:	; CallHeader 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printArgument$356:	; Parameter 44 37 6
x10017:	mov byte [bp + 50], 37	; 4: 198 70 50 37

printArgument$357:	; Call 44 printChar 0
x10021:	mov word [bp + 44], printArgument$358	; 5: 199 70 44 51 39
x10026:	mov [bp + 46], bp	; 3: 137 110 46
x10029:	add bp, 44	; 3: 131 197 44
x10032:	jmp printChar	; 3: 233 13 1

printArgument$358:	; PostCall 44

printArgument$359:	; SetReturnValue arg_list
x10035:	mov bx, [bp + 8]	; 3: 139 94 8

printArgument$360:	; Return arg_list
x10038:	mov ax, [bp]	; 3: 139 70 0
x10041:	mov di, [bp + 4]	; 3: 139 126 4
x10044:	mov bp, [bp + 2]	; 3: 139 110 2
x10047:	jmp ax	; 2: 255 224

printArgument$361:	; FunctionEnd printArgument

labs:	; SignedGreaterThanEqual 4 value 0
x10049:	cmp dword [bp + 6], 0	; 5: 102 131 126 6 0
x10054:	jge labs$4	; 2: 125 9

labs$1:	; UnarySubtract £temporary3394 value
x10056:	mov ebx, [bp + 6]	; 4: 102 139 94 6
x10060:	neg ebx	; 3: 102 247 219

labs$2:	; Assign £temporary3398 £temporary3394

labs$3:	; Goto 5
x10063:	jmp labs$5	; 2: 235 4

labs$4:	; Assign £temporary3398 value
x10065:	mov ebx, [bp + 6]	; 4: 102 139 94 6

labs$5:	; SetReturnValue £temporary3398

labs$6:	; Return £temporary3398
x10069:	mov ax, [bp]	; 3: 139 70 0
x10072:	mov di, [bp + 4]	; 3: 139 126 4
x10075:	mov bp, [bp + 2]	; 3: 139 110 2
x10078:	jmp ax	; 2: 255 224

labs$7:	; FunctionEnd labs

checkWidthAndPrecision:	; Equal 9 widthPtr 0
x10080:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x10084:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; Deref £temporary1991 -> widthPtr widthPtr 0
x10086:	mov si, [bp + 8]	; 3: 139 118 8

checkWidthAndPrecision$2:	; NotEqual 9 £temporary1991 -> widthPtr -1
x10089:	cmp word [si], -1	; 3: 131 60 255
x10092:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; Deref £temporary1994 -> widthPtr widthPtr 0
x10094:	mov si, [bp + 8]	; 3: 139 118 8

checkWidthAndPrecision$4:	; BinaryAdd arg_list arg_list 2
x10097:	add word [bp + 6], 2	; 4: 131 70 6 2

checkWidthAndPrecision$5:	; BinarySubtract £temporary1996 arg_list 2
x10101:	mov di, [bp + 6]	; 3: 139 126 6
x10104:	sub di, 2	; 3: 131 239 2

checkWidthAndPrecision$6:	; IntegralToIntegral £temporary1997 £temporary1996

checkWidthAndPrecision$7:	; Deref £temporary1998 -> £temporary1997 £temporary1997 0

checkWidthAndPrecision$8:	; Assign £temporary1994 -> widthPtr £temporary1998 -> £temporary1997
x10107:	mov ax, [di]	; 2: 139 5
x10109:	mov [si], ax	; 2: 137 4

checkWidthAndPrecision$9:	; Equal 18 precisionPtr 0
x10111:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x10115:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; Deref £temporary2000 -> precisionPtr precisionPtr 0
x10117:	mov si, [bp + 10]	; 3: 139 118 10

checkWidthAndPrecision$11:	; NotEqual 18 £temporary2000 -> precisionPtr -1
x10120:	cmp word [si], -1	; 3: 131 60 255
x10123:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; Deref £temporary2003 -> precisionPtr precisionPtr 0
x10125:	mov si, [bp + 10]	; 3: 139 118 10

checkWidthAndPrecision$13:	; BinaryAdd arg_list arg_list 2
x10128:	add word [bp + 6], 2	; 4: 131 70 6 2

checkWidthAndPrecision$14:	; BinarySubtract £temporary2005 arg_list 2
x10132:	mov di, [bp + 6]	; 3: 139 126 6
x10135:	sub di, 2	; 3: 131 239 2

checkWidthAndPrecision$15:	; IntegralToIntegral £temporary2006 £temporary2005

checkWidthAndPrecision$16:	; Deref £temporary2007 -> £temporary2006 £temporary2006 0

checkWidthAndPrecision$17:	; Assign £temporary2003 -> precisionPtr £temporary2007 -> £temporary2006
x10138:	mov ax, [di]	; 2: 139 5
x10140:	mov [si], ax	; 2: 137 4

checkWidthAndPrecision$18:	; SetReturnValue arg_list
x10142:	mov bx, [bp + 6]	; 3: 139 94 6

checkWidthAndPrecision$19:	; Return arg_list
x10145:	mov ax, [bp]	; 3: 139 70 0
x10148:	mov di, [bp + 4]	; 3: 139 126 4
x10151:	mov bp, [bp + 2]	; 3: 139 110 2
x10154:	jmp ax	; 2: 255 224

checkWidthAndPrecision$20:	; FunctionEnd checkWidthAndPrecision

printLongInt:	; SignedGreaterThanEqual 8 longValue 0
x10156:	cmp dword [bp + 6], 0	; 5: 102 131 126 6 0
x10161:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; UnarySubtract £temporary1846 longValue
x10163:	mov eax, [bp + 6]	; 4: 102 139 70 6
x10167:	neg eax	; 3: 102 247 216

printLongInt$2:	; Assign longValue £temporary1846
x10170:	mov [bp + 6], eax	; 4: 102 137 70 6

printLongInt$3:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$4:	; Parameter 14 45 6
x10174:	mov byte [bp + 20], 45	; 4: 198 70 20 45

printLongInt$5:	; Call 14 printChar 0
x10178:	mov word [bp + 14], printLongInt$6	; 5: 199 70 14 208 39
x10183:	mov [bp + 16], bp	; 3: 137 110 16
x10186:	add bp, 14	; 3: 131 197 14
x10189:	nop	; 1: 144
x10190:	jmp printChar	; 2: 235 112

printLongInt$6:	; PostCall 14

printLongInt$7:	; Goto 19
x10192:	jmp printLongInt$19	; 2: 235 50

printLongInt$8:	; Equal 14 space 0
x10194:	cmp word [bp + 12], 0	; 4: 131 126 12 0
x10198:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$10:	; Parameter 14 32 6
x10200:	mov byte [bp + 20], 32	; 4: 198 70 20 32

printLongInt$11:	; Call 14 printChar 0
x10204:	mov word [bp + 14], printLongInt$12	; 5: 199 70 14 234 39
x10209:	mov [bp + 16], bp	; 3: 137 110 16
x10212:	add bp, 14	; 3: 131 197 14
x10215:	nop	; 1: 144
x10216:	jmp printChar	; 2: 235 86

printLongInt$12:	; PostCall 14

printLongInt$13:	; Goto 19
x10218:	jmp printLongInt$19	; 2: 235 24

printLongInt$14:	; Equal 19 plus 0
x10220:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x10224:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$16:	; Parameter 14 43 6
x10226:	mov byte [bp + 20], 43	; 4: 198 70 20 43

printLongInt$17:	; Call 14 printChar 0
x10230:	mov word [bp + 14], printLongInt$18	; 5: 199 70 14 4 40
x10235:	mov [bp + 16], bp	; 3: 137 110 16
x10238:	add bp, 14	; 3: 131 197 14
x10241:	nop	; 1: 144
x10242:	jmp printChar	; 2: 235 60

printLongInt$18:	; PostCall 14

printLongInt$19:	; NotEqual 25 longValue 0
x10244:	cmp dword [bp + 6], 0	; 5: 102 131 126 6 0
x10249:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$21:	; Parameter 14 48 6
x10251:	mov byte [bp + 20], 48	; 4: 198 70 20 48

printLongInt$22:	; Call 14 printChar 0
x10255:	mov word [bp + 14], printLongInt$23	; 5: 199 70 14 29 40
x10260:	mov [bp + 16], bp	; 3: 137 110 16
x10263:	add bp, 14	; 3: 131 197 14
x10266:	nop	; 1: 144
x10267:	jmp printChar	; 2: 235 35

printLongInt$23:	; PostCall 14

printLongInt$24:	; Goto 29
x10269:	jmp printLongInt$29	; 2: 235 22

printLongInt$25:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongInt$26:	; Parameter 14 longValue 6
x10271:	mov eax, [bp + 6]	; 4: 102 139 70 6
x10275:	mov [bp + 20], eax	; 4: 102 137 70 20

printLongInt$27:	; Call 14 printLongIntRec 0
x10279:	mov word [bp + 14], printLongInt$28	; 5: 199 70 14 53 40
x10284:	mov [bp + 16], bp	; 3: 137 110 16
x10287:	add bp, 14	; 3: 131 197 14
x10290:	nop	; 1: 144
x10291:	jmp printLongIntRec	; 2: 235 101

printLongInt$28:	; PostCall 14

printLongInt$29:	; Return 0
x10293:	mov ax, [bp]	; 3: 139 70 0
x10296:	mov di, [bp + 4]	; 3: 139 126 4
x10299:	mov bp, [bp + 2]	; 3: 139 110 2
x10302:	jmp ax	; 2: 255 224

printLongInt$30:	; FunctionEnd printLongInt

printChar:	; Case 5 g_outStatus 0
x10304:	mov ax, [g_outStatus]	; 3: 161 205 27
x10307:	cmp ax, 0	; 3: 131 248 0
x10310:	je printChar$5	; 2: 116 12

printChar$1:	; Case 16 g_outStatus 1
x10312:	cmp ax, 1	; 3: 131 248 1
x10315:	je printChar$16	; 2: 116 37

printChar$2:	; Case 24 g_outStatus 2
x10317:	cmp ax, 2	; 3: 131 248 2
x10320:	je printChar$24	; 2: 116 57

printChar$3:	; CaseEnd g_outStatus

printChar$4:	; Goto 25
x10322:	jmp printChar$25	; 2: 235 59

printChar$5:	; IntegralToIntegral £temporary1788 g_outDevice
x10324:	mov ax, [g_outDevice]	; 3: 161 207 27

printChar$6:	; Assign stream £temporary1788
x10327:	mov [bp + 11], ax	; 3: 137 70 11

printChar$7:	; AssignRegister ah 64
x10330:	mov ah, 64	; 2: 180 64

printChar$8:	; Deref £temporary1791 -> stream stream 2
x10332:	mov si, [bp + 11]	; 3: 139 118 11

printChar$9:	; AssignRegister bx £temporary1791 -> stream
x10335:	mov bx, [si + 2]	; 3: 139 92 2

printChar$10:	; AssignRegister cx 1
x10338:	mov cx, 1	; 3: 185 1 0

printChar$11:	; address £temporary1794 c
x10341:	mov dx, bp	; 2: 137 234
x10343:	add dx, 6	; 3: 131 194 6

printChar$12:	; AssignRegister dx £temporary1794

printChar$13:	; Interrupt 33
x10346:	int 33	; 2: 205 33

printChar$14:	; Increment g_outChars
x10348:	inc word [g_outChars]	; 4: 255 6 43 33

printChar$15:	; Goto 25
x10352:	jmp printChar$25	; 2: 235 29

printChar$16:	; IntegralToIntegral £temporary1796 g_outDevice
x10354:	mov ax, [g_outDevice]	; 3: 161 207 27

printChar$17:	; Assign outString £temporary1796
x10357:	mov [bp + 9], ax	; 3: 137 70 9

printChar$18:	; Assign £temporary1797 g_outChars
x10360:	mov ax, [g_outChars]	; 3: 161 43 33

printChar$19:	; Increment g_outChars
x10363:	inc word [g_outChars]	; 4: 255 6 43 33

printChar$20:	; BinaryAdd £temporary1799 outString £temporary1797
x10367:	mov si, [bp + 9]	; 3: 139 118 9
x10370:	add si, ax	; 2: 1 198

printChar$21:	; Deref £temporary1798 -> £temporary1799 £temporary1799 0

printChar$22:	; Assign £temporary1798 -> £temporary1799 c
x10372:	mov al, [bp + 6]	; 3: 138 70 6
x10375:	mov [si], al	; 2: 136 4

printChar$23:	; Goto 25
x10377:	jmp printChar$25	; 2: 235 4

printChar$24:	; Increment g_outChars
x10379:	inc word [g_outChars]	; 4: 255 6 43 33

printChar$25:	; Return 0
x10383:	mov ax, [bp]	; 3: 139 70 0
x10386:	mov di, [bp + 4]	; 3: 139 126 4
x10389:	mov bp, [bp + 2]	; 3: 139 110 2
x10392:	jmp ax	; 2: 255 224

printChar$26:	; FunctionEnd printChar

printLongIntRec:	; Equal 15 longValue 0
x10394:	cmp dword [bp + 6], 0	; 5: 102 131 126 6 0
x10399:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; SignedModulo £temporary1836 longValue 10
x10401:	mov eax, [bp + 6]	; 4: 102 139 70 6
x10405:	xor edx, edx	; 3: 102 49 210
x10408:	idiv dword [int4$10#]	; 5: 102 247 62 4 41

printLongIntRec$2:	; IntegralToIntegral £temporary1837 £temporary1836
x10413:	cmp edx, 0	; 4: 102 131 250 0
x10417:	jge printLongIntRec$3	; 2: 125 5
x10419:	neg edx	; 3: 102 247 218
x10422:	neg dx	; 2: 247 218

printLongIntRec$3:	; Assign digit £temporary1837
x10424:	mov [bp + 10], dx	; 3: 137 86 10

printLongIntRec$4:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongIntRec$5:	; SignedDivide £temporary1838 longValue 10
x10427:	mov eax, [bp + 6]	; 4: 102 139 70 6
x10431:	xor edx, edx	; 3: 102 49 210
x10434:	idiv dword [int4$10#]	; 5: 102 247 62 4 41

printLongIntRec$6:	; Parameter 12 £temporary1838 6
x10439:	mov [bp + 18], eax	; 4: 102 137 70 18

printLongIntRec$7:	; Call 12 printLongIntRec 0
x10443:	mov word [bp + 12], printLongIntRec$8	; 5: 199 70 12 217 40
x10448:	mov [bp + 14], bp	; 3: 137 110 14
x10451:	add bp, 12	; 3: 131 197 12
x10454:	nop	; 1: 144
x10455:	jmp printLongIntRec	; 2: 235 193

printLongIntRec$8:	; PostCall 12

printLongIntRec$9:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongIntRec$10:	; BinaryAdd £temporary1840 digit 48
x10457:	mov ax, [bp + 10]	; 3: 139 70 10
x10460:	add ax, 48	; 3: 131 192 48

printLongIntRec$11:	; IntegralToIntegral £temporary1841 £temporary1840
x10463:	cmp ax, 0	; 3: 131 248 0
x10466:	jge printLongIntRec$12	; 2: 125 4
x10468:	neg ax	; 2: 247 216
x10470:	neg al	; 2: 246 216

printLongIntRec$12:	; Parameter 12 £temporary1841 6
x10472:	mov [bp + 18], al	; 3: 136 70 18

printLongIntRec$13:	; Call 12 printChar 0
x10475:	mov word [bp + 12], printLongIntRec$14	; 5: 199 70 12 249 40
x10480:	mov [bp + 14], bp	; 3: 137 110 14
x10483:	add bp, 12	; 3: 131 197 12
x10486:	jmp printChar	; 3: 233 71 255

printLongIntRec$14:	; PostCall 12

printLongIntRec$15:	; Return 0
x10489:	mov ax, [bp]	; 3: 139 70 0
x10492:	mov di, [bp + 4]	; 3: 139 126 4
x10495:	mov bp, [bp + 2]	; 3: 139 110 2
x10498:	jmp ax	; 2: 255 224

printLongIntRec$16:	; FunctionEnd printLongIntRec

int4$10#:
x10500:	dd 10	; 4: 10 0 0 0

printString:	; Equal 29 s 0
x10504:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x10508:	je printString$29	; 2: 116 115

printString$1:	; NotEqual 14 precision 0
x10510:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x10514:	jne printString$14	; 2: 117 48

printString$2:	; Assign index 0
x10516:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

printString$3:	; BinaryAdd £temporary1805 s index
x10521:	mov si, [bp + 6]	; 3: 139 118 6
x10524:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; Deref £temporary1804 -> £temporary1805 £temporary1805 0

printString$5:	; Equal 53 £temporary1804 -> £temporary1805 0
x10527:	cmp byte [si], 0	; 3: 128 60 0
x10530:	je printString$53	; 4: 15 132 199 0

printString$6:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$7:	; BinaryAdd £temporary1809 s index
x10534:	mov si, [bp + 6]	; 3: 139 118 6
x10537:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; Deref £temporary1808 -> £temporary1809 £temporary1809 0

printString$9:	; Parameter 12 £temporary1808 -> £temporary1809 6
x10540:	mov al, [si]	; 2: 138 4
x10542:	mov [bp + 18], al	; 3: 136 70 18

printString$10:	; Call 12 printChar 0
x10545:	mov word [bp + 12], printString$11	; 5: 199 70 12 63 41
x10550:	mov [bp + 14], bp	; 3: 137 110 14
x10553:	add bp, 12	; 3: 131 197 12
x10556:	jmp printChar	; 3: 233 1 255

printString$11:	; PostCall 12

printString$12:	; Increment index
x10559:	inc word [bp + 10]	; 3: 255 70 10

printString$13:	; Goto 3
x10562:	jmp printString$3	; 2: 235 213

printString$14:	; Assign index 0
x10564:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

printString$15:	; Assign £temporary1811 precision
x10569:	mov ax, [bp + 8]	; 3: 139 70 8

printString$16:	; Decrement precision
x10572:	dec word [bp + 8]	; 3: 255 78 8

printString$17:	; SignedLessThanEqual 53 £temporary1811 0
x10575:	cmp ax, 0	; 3: 131 248 0
x10578:	jle printString$53	; 4: 15 142 151 0

printString$18:	; BinaryAdd £temporary1814 s index
x10582:	mov si, [bp + 6]	; 3: 139 118 6
x10585:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; Deref £temporary1813 -> £temporary1814 £temporary1814 0

printString$20:	; Equal 53 £temporary1813 -> £temporary1814 0
x10588:	cmp byte [si], 0	; 3: 128 60 0
x10591:	je printString$53	; 4: 15 132 138 0

printString$21:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$22:	; BinaryAdd £temporary1819 s index
x10595:	mov si, [bp + 6]	; 3: 139 118 6
x10598:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; Deref £temporary1818 -> £temporary1819 £temporary1819 0

printString$24:	; Parameter 12 £temporary1818 -> £temporary1819 6
x10601:	mov al, [si]	; 2: 138 4
x10603:	mov [bp + 18], al	; 3: 136 70 18

printString$25:	; Call 12 printChar 0
x10606:	mov word [bp + 12], printString$26	; 5: 199 70 12 124 41
x10611:	mov [bp + 14], bp	; 3: 137 110 14
x10614:	add bp, 12	; 3: 131 197 12
x10617:	jmp printChar	; 3: 233 196 254

printString$26:	; PostCall 12

printString$27:	; Increment index
x10620:	inc word [bp + 10]	; 3: 255 70 10

printString$28:	; Goto 15
x10623:	jmp printString$15	; 2: 235 200

printString$29:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$30:	; Parameter 10 60 6
x10625:	mov byte [bp + 16], 60	; 4: 198 70 16 60

printString$31:	; Call 10 printChar 0
x10629:	mov word [bp + 10], printString$32	; 5: 199 70 10 147 41
x10634:	mov [bp + 12], bp	; 3: 137 110 12
x10637:	add bp, 10	; 3: 131 197 10
x10640:	jmp printChar	; 3: 233 173 254

printString$32:	; PostCall 10

printString$33:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$34:	; Parameter 10 78 6
x10643:	mov byte [bp + 16], 78	; 4: 198 70 16 78

printString$35:	; Call 10 printChar 0
x10647:	mov word [bp + 10], printString$36	; 5: 199 70 10 165 41
x10652:	mov [bp + 12], bp	; 3: 137 110 12
x10655:	add bp, 10	; 3: 131 197 10
x10658:	jmp printChar	; 3: 233 155 254

printString$36:	; PostCall 10

printString$37:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$38:	; Parameter 10 85 6
x10661:	mov byte [bp + 16], 85	; 4: 198 70 16 85

printString$39:	; Call 10 printChar 0
x10665:	mov word [bp + 10], printString$40	; 5: 199 70 10 183 41
x10670:	mov [bp + 12], bp	; 3: 137 110 12
x10673:	add bp, 10	; 3: 131 197 10
x10676:	jmp printChar	; 3: 233 137 254

printString$40:	; PostCall 10

printString$41:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$42:	; Parameter 10 76 6
x10679:	mov byte [bp + 16], 76	; 4: 198 70 16 76

printString$43:	; Call 10 printChar 0
x10683:	mov word [bp + 10], printString$44	; 5: 199 70 10 201 41
x10688:	mov [bp + 12], bp	; 3: 137 110 12
x10691:	add bp, 10	; 3: 131 197 10
x10694:	jmp printChar	; 3: 233 119 254

printString$44:	; PostCall 10

printString$45:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$46:	; Parameter 10 76 6
x10697:	mov byte [bp + 16], 76	; 4: 198 70 16 76

printString$47:	; Call 10 printChar 0
x10701:	mov word [bp + 10], printString$48	; 5: 199 70 10 219 41
x10706:	mov [bp + 12], bp	; 3: 137 110 12
x10709:	add bp, 10	; 3: 131 197 10
x10712:	jmp printChar	; 3: 233 101 254

printString$48:	; PostCall 10

printString$49:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printString$50:	; Parameter 10 62 6
x10715:	mov byte [bp + 16], 62	; 4: 198 70 16 62

printString$51:	; Call 10 printChar 0
x10719:	mov word [bp + 10], printString$52	; 5: 199 70 10 237 41
x10724:	mov [bp + 12], bp	; 3: 137 110 12
x10727:	add bp, 10	; 3: 131 197 10
x10730:	jmp printChar	; 3: 233 83 254

printString$52:	; PostCall 10

printString$53:	; Return 0
x10733:	mov ax, [bp]	; 3: 139 70 0
x10736:	mov di, [bp + 4]	; 3: 139 126 4
x10739:	mov bp, [bp + 2]	; 3: 139 110 2
x10742:	jmp ax	; 2: 255 224

printString$54:	; FunctionEnd printString

isupper:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

isupper$1:	; Call 8 localeconv 0
x10744:	mov word [bp + 8], isupper$2	; 5: 199 70 8 6 42
x10749:	mov [bp + 10], bp	; 3: 137 110 10
x10752:	add bp, 8	; 3: 131 197 8
x10755:	nop	; 1: 144
x10756:	jmp localeconv	; 2: 235 93

isupper$2:	; PostCall 8

isupper$3:	; GetReturnValue £temporary385

isupper$4:	; Assign localeConvPtr £temporary385
x10758:	mov [bp + 8], bx	; 3: 137 94 8

isupper$5:	; Equal 19 localeConvPtr 0
x10761:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x10765:	je isupper$19	; 2: 116 53

isupper$6:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

isupper$7:	; Deref £temporary387 -> localeConvPtr localeConvPtr 14
x10767:	mov si, [bp + 8]	; 3: 139 118 8

isupper$8:	; Parameter 10 £temporary387 -> localeConvPtr 6
x10770:	mov ax, [si + 14]	; 3: 139 68 14
x10773:	mov [bp + 16], ax	; 3: 137 70 16

isupper$9:	; Parameter 10 c 8
x10776:	mov ax, [bp + 6]	; 3: 139 70 6
x10779:	mov [bp + 18], ax	; 3: 137 70 18

isupper$10:	; Call 10 strchr 0
x10782:	mov word [bp + 10], isupper$11	; 5: 199 70 10 44 42
x10787:	mov [bp + 12], bp	; 3: 137 110 12
x10790:	add bp, 10	; 3: 131 197 10
x10793:	jmp strchr	; 3: 233 121 3

isupper$11:	; PostCall 10

isupper$12:	; GetReturnValue £temporary388

isupper$13:	; Equal 16 £temporary388 0
x10796:	cmp bx, 0	; 3: 131 251 0
x10799:	je isupper$16	; 2: 116 5

isupper$14:	; Assign £temporary390 1
x10801:	mov bx, 1	; 3: 187 1 0

isupper$15:	; Goto 17
x10804:	jmp isupper$17	; 2: 235 3

isupper$16:	; Assign £temporary390 0
x10806:	mov bx, 0	; 3: 187 0 0

isupper$17:	; SetReturnValue £temporary390

isupper$18:	; Return £temporary390
x10809:	mov ax, [bp]	; 3: 139 70 0
x10812:	mov di, [bp + 4]	; 3: 139 126 4
x10815:	mov bp, [bp + 2]	; 3: 139 110 2
x10818:	jmp ax	; 2: 255 224

isupper$19:	; SignedLessThan 23 c 65
x10820:	cmp word [bp + 6], 65	; 4: 131 126 6 65
x10824:	jl isupper$23	; 2: 124 11

isupper$20:	; SignedGreaterThan 23 c 90
x10826:	cmp word [bp + 6], 90	; 4: 131 126 6 90
x10830:	jg isupper$23	; 2: 127 5

isupper$21:	; Assign £temporary394 1
x10832:	mov bx, 1	; 3: 187 1 0

isupper$22:	; Goto 24
x10835:	jmp isupper$24	; 2: 235 3

isupper$23:	; Assign £temporary394 0
x10837:	mov bx, 0	; 3: 187 0 0

isupper$24:	; SetReturnValue £temporary394

isupper$25:	; Return £temporary394
x10840:	mov ax, [bp]	; 3: 139 70 0
x10843:	mov di, [bp + 4]	; 3: 139 126 4
x10846:	mov bp, [bp + 2]	; 3: 139 110 2
x10849:	jmp ax	; 2: 255 224

isupper$26:	; FunctionEnd isupper

localeconv:	; Equal 4 g_currStructPtr 0
x10851:	cmp word [@640$g_currStructPtr], 0	; 5: 131 62 129 42 0
x10856:	je localeconv$4	; 2: 116 9

localeconv$1:	; Deref £temporary518 -> g_currStructPtr g_currStructPtr 2
x10858:	mov si, [@640$g_currStructPtr]	; 4: 139 54 129 42

localeconv$2:	; Assign £temporary522 £temporary518 -> g_currStructPtr
x10862:	mov bx, [si + 2]	; 3: 139 92 2

localeconv$3:	; Goto 5
x10865:	jmp localeconv$5	; 2: 235 3

localeconv$4:	; Assign £temporary522 0
x10867:	mov bx, 0	; 3: 187 0 0

localeconv$5:	; SetReturnValue £temporary522

localeconv$6:	; Return £temporary522
x10870:	mov ax, [bp]	; 3: 139 70 0
x10873:	mov di, [bp + 4]	; 3: 139 126 4
x10876:	mov bp, [bp + 2]	; 3: 139 110 2
x10879:	jmp ax	; 2: 255 224

localeconv$7:	; FunctionEnd localeconv

@640$g_currStructPtr:
x10881:	dw @638$sArray	; 2: 131 42

@638$sArray:
x10883:	dw string_# ; 2: 143 42
x10885:	dw @635$en_US_utf8	; 2: 144 42
x10887:	dw string_C# ; 2: 160 45
x10889:	dw @635$en_US_utf8	; 2: 144 42
x10891:	dw string_US# ; 2: 162 45
x10893:	dw @635$en_US_utf8	; 2: 144 42

string_#:
x10895:	db 0	; 1: 0

@635$en_US_utf8:
x10896:	dw 1	; 2: 1 0
x10898:	dw 1	; 2: 1 0
x10900:	dw @631$enShortDayList ; 2: 162 42
x10902:	dw @632$enLongDayList ; 2: 204 42
x10904:	dw @633$enShortMonthList ; 2: 19 43
x10906:	dw @634$enLongMonthList ; 2: 91 43
x10908:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: 197 43
x10910:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: 224 43
x10912:	dw enMessageList ; 2: 251 43

@631$enShortDayList:
x10914:	dw string_Sun# ; 2: 176 42
x10916:	dw string_Mon# ; 2: 180 42
x10918:	dw string_Tue# ; 2: 184 42
x10920:	dw string_Wed# ; 2: 188 42
x10922:	dw string_Thu# ; 2: 192 42
x10924:	dw string_Fri# ; 2: 196 42
x10926:	dw string_Sat# ; 2: 200 42

string_Sun#:
x10928:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x10932:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x10936:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x10940:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x10944:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x10948:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x10952:	db "Sat", 0	; 4: 83 97 116 0

@632$enLongDayList:
x10956:	dw string_Sunday# ; 2: 218 42
x10958:	dw string_Monday# ; 2: 225 42
x10960:	dw string_Tuesday# ; 2: 232 42
x10962:	dw string_Wednesday# ; 2: 240 42
x10964:	dw string_Thursday# ; 2: 250 42
x10966:	dw string_Friday# ; 2: 3 43
x10968:	dw string_Saturday# ; 2: 10 43

string_Sunday#:
x10970:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x10977:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x10984:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x10992:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x11002:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x11011:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x11018:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@633$enShortMonthList:
x11027:	dw string_Jan# ; 2: 43 43
x11029:	dw string_Feb# ; 2: 47 43
x11031:	dw string_Mar# ; 2: 51 43
x11033:	dw string_Apr# ; 2: 55 43
x11035:	dw string_May# ; 2: 59 43
x11037:	dw string_Jun# ; 2: 63 43
x11039:	dw string_Jul# ; 2: 67 43
x11041:	dw string_Aug# ; 2: 71 43
x11043:	dw string_Sep# ; 2: 75 43
x11045:	dw string_Oct# ; 2: 79 43
x11047:	dw string_Nov# ; 2: 83 43
x11049:	dw string_Dec# ; 2: 87 43

string_Jan#:
x11051:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x11055:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x11059:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x11063:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x11067:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x11071:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x11075:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x11079:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x11083:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x11087:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x11091:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x11095:	db "Dec", 0	; 4: 68 101 99 0

@634$enLongMonthList:
x11099:	dw string_January# ; 2: 115 43
x11101:	dw string_February# ; 2: 123 43
x11103:	dw string_March# ; 2: 132 43
x11105:	dw string_April# ; 2: 138 43
x11107:	dw string_May# ; 2: 59 43
x11109:	dw string_June# ; 2: 144 43
x11111:	dw string_July# ; 2: 149 43
x11113:	dw string_August# ; 2: 154 43
x11115:	dw string_September# ; 2: 161 43
x11117:	dw string_October# ; 2: 171 43
x11119:	dw string_November# ; 2: 179 43
x11121:	dw string_December# ; 2: 188 43

string_January#:
x11123:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x11131:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x11140:	db "March", 0	; 6: 77 97 114 99 104 0

string_April#:
x11146:	db "April", 0	; 6: 65 112 114 105 108 0

string_June#:
x11152:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x11157:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x11162:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_September#:
x11169:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_October#:
x11179:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

string_November#:
x11187:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x11196:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x11205:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x11232:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

enMessageList:
x11259:	dw string_no20error# ; 2: 35 44
x11261:	dw string_function20number20invalid# ; 2: 44 44
x11263:	dw string_file20not20found# ; 2: 68 44
x11265:	dw string_path20not20found# ; 2: 83 44
x11267:	dw string_no20handle20available# ; 2: 98 44
x11269:	dw string_access20denied# ; 2: 118 44
x11271:	dw string_out20of20domain# ; 2: 132 44
x11273:	dw string_out20of20range# ; 2: 146 44
x11275:	dw string_invalid20multibyte20sequence# ; 2: 159 44
x11277:	dw string_error20while20opening# ; 2: 186 44
x11279:	dw string_error20while20flushing# ; 2: 206 44
x11281:	dw string_error20while20closing# ; 2: 227 44
x11283:	dw string_open20mode20invalid# ; 2: 247 44
x11285:	dw string_error20while20writing# ; 2: 9 45
x11287:	dw string_error20while20reading# ; 2: 29 45
x11289:	dw string_error20while20seeking# ; 2: 49 45
x11291:	dw string_error20while20telling# ; 2: 69 45
x11293:	dw string_error20while20sizing# ; 2: 89 45
x11295:	dw string_error20while20removing20file# ; 2: 108 45
x11297:	dw string_error20while20renaming20file# ; 2: 134 45

string_no20error#:
x11299:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x11308:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x11332:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x11347:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x11362:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x11382:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x11396:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x11410:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x11423:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x11450:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x11470:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x11491:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x11511:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x11529:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x11549:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x11569:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x11589:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x11609:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x11628:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x11654:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_C#:
x11680:	db "C", 0	; 2: 67 0

string_US#:
x11682:	db "US", 0	; 3: 85 83 0

strchr:	; IntegralToIntegral £temporary4008 i
x11685:	mov ax, [bp + 8]	; 3: 139 70 8
x11688:	cmp ax, 0	; 3: 131 248 0
x11691:	jge strchr$1	; 2: 125 4
x11693:	neg ax	; 2: 247 216
x11695:	neg al	; 2: 246 216

strchr$1:	; Assign c £temporary4008
x11697:	mov [bp + 12], al	; 3: 136 70 12

strchr$2:	; Assign index 0
x11700:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

strchr$3:	; BinaryAdd £temporary4010 text index
x11705:	mov si, [bp + 6]	; 3: 139 118 6
x11708:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; Deref £temporary4009 -> £temporary4010 £temporary4010 0

strchr$5:	; Equal 16 £temporary4009 -> £temporary4010 0
x11711:	cmp byte [si], 0	; 3: 128 60 0
x11714:	je strchr$16	; 2: 116 35

strchr$6:	; BinaryAdd £temporary4014 text index
x11716:	mov si, [bp + 6]	; 3: 139 118 6
x11719:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; Deref £temporary4013 -> £temporary4014 £temporary4014 0

strchr$8:	; NotEqual 14 £temporary4013 -> £temporary4014 c
x11722:	mov al, [bp + 12]	; 3: 138 70 12
x11725:	cmp [si], al	; 2: 56 4
x11727:	jne strchr$14	; 2: 117 17

strchr$9:	; BinaryAdd £temporary4017 text index
x11729:	mov bx, [bp + 6]	; 3: 139 94 6
x11732:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; Deref £temporary4016 -> £temporary4017 £temporary4017 0

strchr$11:	; address £temporary4018 £temporary4016 -> £temporary4017

strchr$12:	; SetReturnValue £temporary4018

strchr$13:	; Return £temporary4018
x11735:	mov ax, [bp]	; 3: 139 70 0
x11738:	mov di, [bp + 4]	; 3: 139 126 4
x11741:	mov bp, [bp + 2]	; 3: 139 110 2
x11744:	jmp ax	; 2: 255 224

strchr$14:	; Increment index
x11746:	inc word [bp + 10]	; 3: 255 70 10

strchr$15:	; Goto 3
x11749:	jmp strchr$3	; 2: 235 210

strchr$16:	; SetReturnValue 0
x11751:	mov bx, 0	; 3: 187 0 0

strchr$17:	; Return 0
x11754:	mov ax, [bp]	; 3: 139 70 0
x11757:	mov di, [bp + 4]	; 3: 139 126 4
x11760:	mov bp, [bp + 2]	; 3: 139 110 2
x11763:	jmp ax	; 2: 255 224

strchr$18:	; FunctionEnd strchr

printUnsignedLong:	; Equal 5 plus 0
x11765:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x11769:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$2:	; Parameter 22 43 6
x11771:	mov byte [bp + 28], 43	; 4: 198 70 28 43

printUnsignedLong$3:	; Call 22 printChar 0
x11775:	mov word [bp + 22], printUnsignedLong$4	; 5: 199 70 22 13 46
x11780:	mov [bp + 24], bp	; 3: 137 110 24
x11783:	add bp, 22	; 3: 131 197 22
x11786:	jmp printChar	; 3: 233 51 250

printUnsignedLong$4:	; PostCall 22

printUnsignedLong$5:	; Equal 10 space 0
x11789:	cmp word [bp + 12], 0	; 4: 131 126 12 0
x11793:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$7:	; Parameter 22 32 6
x11795:	mov byte [bp + 28], 32	; 4: 198 70 28 32

printUnsignedLong$8:	; Call 22 printChar 0
x11799:	mov word [bp + 22], printUnsignedLong$9	; 5: 199 70 22 37 46
x11804:	mov [bp + 24], bp	; 3: 137 110 24
x11807:	add bp, 22	; 3: 131 197 22
x11810:	jmp printChar	; 3: 233 27 250

printUnsignedLong$9:	; PostCall 22

printUnsignedLong$10:	; Equal 29 grid 0
x11813:	cmp word [bp + 14], 0	; 4: 131 126 14 0
x11817:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; NotEqual 16 base 8
x11819:	cmp dword [bp + 16], 8	; 5: 102 131 126 16 8
x11824:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$13:	; Parameter 22 48 6
x11826:	mov byte [bp + 28], 48	; 4: 198 70 28 48

printUnsignedLong$14:	; Call 22 printChar 0
x11830:	mov word [bp + 22], printUnsignedLong$15	; 5: 199 70 22 68 46
x11835:	mov [bp + 24], bp	; 3: 137 110 24
x11838:	add bp, 22	; 3: 131 197 22
x11841:	jmp printChar	; 3: 233 252 249

printUnsignedLong$15:	; PostCall 22

printUnsignedLong$16:	; NotEqual 29 base 16
x11844:	cmp dword [bp + 16], 16	; 5: 102 131 126 16 16
x11849:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$18:	; Parameter 22 48 6
x11851:	mov byte [bp + 28], 48	; 4: 198 70 28 48

printUnsignedLong$19:	; Call 22 printChar 0
x11855:	mov word [bp + 22], printUnsignedLong$20	; 5: 199 70 22 93 46
x11860:	mov [bp + 24], bp	; 3: 137 110 24
x11863:	add bp, 22	; 3: 131 197 22
x11866:	jmp printChar	; 3: 233 227 249

printUnsignedLong$20:	; PostCall 22

printUnsignedLong$21:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$22:	; Equal 25 capital 0
x11869:	cmp word [bp + 20], 0	; 4: 131 126 20 0
x11873:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; Assign £temporary1895 88
x11875:	mov al, 88	; 2: 176 88

printUnsignedLong$24:	; Goto 26
x11877:	jmp printUnsignedLong$26	; 2: 235 2

printUnsignedLong$25:	; Assign £temporary1895 120
x11879:	mov al, 120	; 2: 176 120

printUnsignedLong$26:	; Parameter 22 £temporary1895 6
x11881:	mov [bp + 28], al	; 3: 136 70 28

printUnsignedLong$27:	; Call 22 printChar 0
x11884:	mov word [bp + 22], printUnsignedLong$28	; 5: 199 70 22 122 46
x11889:	mov [bp + 24], bp	; 3: 137 110 24
x11892:	add bp, 22	; 3: 131 197 22
x11895:	jmp printChar	; 3: 233 198 249

printUnsignedLong$28:	; PostCall 22

printUnsignedLong$29:	; NotEqual 35 unsignedValue 0
x11898:	cmp dword [bp + 6], 0	; 5: 102 131 126 6 0
x11903:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$31:	; Parameter 22 48 6
x11905:	mov byte [bp + 28], 48	; 4: 198 70 28 48

printUnsignedLong$32:	; Call 22 printChar 0
x11909:	mov word [bp + 22], printUnsignedLong$33	; 5: 199 70 22 147 46
x11914:	mov [bp + 24], bp	; 3: 137 110 24
x11917:	add bp, 22	; 3: 131 197 22
x11920:	jmp printChar	; 3: 233 173 249

printUnsignedLong$33:	; PostCall 22

printUnsignedLong$34:	; Goto 41
x11923:	jmp printUnsignedLong$41	; 2: 235 36

printUnsignedLong$35:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLong$36:	; Parameter 22 unsignedValue 6
x11925:	mov eax, [bp + 6]	; 4: 102 139 70 6
x11929:	mov [bp + 28], eax	; 4: 102 137 70 28

printUnsignedLong$37:	; Parameter 22 base 10
x11933:	mov eax, [bp + 16]	; 4: 102 139 70 16
x11937:	mov [bp + 32], eax	; 4: 102 137 70 32

printUnsignedLong$38:	; Parameter 22 capital 14
x11941:	mov ax, [bp + 20]	; 3: 139 70 20
x11944:	mov [bp + 36], ax	; 3: 137 70 36

printUnsignedLong$39:	; Call 22 printUnsignedLongRec 0
x11947:	mov word [bp + 22], printUnsignedLong$40	; 5: 199 70 22 185 46
x11952:	mov [bp + 24], bp	; 3: 137 110 24
x11955:	add bp, 22	; 3: 131 197 22
x11958:	nop	; 1: 144
x11959:	jmp printUnsignedLongRec	; 2: 235 11

printUnsignedLong$40:	; PostCall 22

printUnsignedLong$41:	; Return 0
x11961:	mov ax, [bp]	; 3: 139 70 0
x11964:	mov di, [bp + 4]	; 3: 139 126 4
x11967:	mov bp, [bp + 2]	; 3: 139 110 2
x11970:	jmp ax	; 2: 255 224

printUnsignedLong$42:	; FunctionEnd printUnsignedLong

printUnsignedLongRec:	; UnsignedLessThanEqual 22 unsignedValue 0
x11972:	cmp dword [bp + 6], 0	; 5: 102 131 126 6 0
x11977:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; UnsignedModulo £temporary1871 unsignedValue base
x11979:	mov eax, [bp + 6]	; 4: 102 139 70 6
x11983:	xor edx, edx	; 3: 102 49 210
x11986:	div dword [bp + 10]	; 4: 102 247 118 10

printUnsignedLongRec$2:	; IntegralToIntegral £temporary1872 £temporary1871

printUnsignedLongRec$3:	; Assign digit £temporary1872
x11990:	mov [bp + 16], dx	; 3: 137 86 16

printUnsignedLongRec$4:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLongRec$5:	; UnsignedDivide £temporary1873 unsignedValue base
x11993:	mov eax, [bp + 6]	; 4: 102 139 70 6
x11997:	xor edx, edx	; 3: 102 49 210
x12000:	div dword [bp + 10]	; 4: 102 247 118 10

printUnsignedLongRec$6:	; Parameter 18 £temporary1873 6
x12004:	mov [bp + 24], eax	; 4: 102 137 70 24

printUnsignedLongRec$7:	; Parameter 18 base 10
x12008:	mov eax, [bp + 10]	; 4: 102 139 70 10
x12012:	mov [bp + 28], eax	; 4: 102 137 70 28

printUnsignedLongRec$8:	; Parameter 18 capital 14
x12016:	mov ax, [bp + 14]	; 3: 139 70 14
x12019:	mov [bp + 32], ax	; 3: 137 70 32

printUnsignedLongRec$9:	; Call 18 printUnsignedLongRec 0
x12022:	mov word [bp + 18], printUnsignedLongRec$10	; 5: 199 70 18 4 47
x12027:	mov [bp + 20], bp	; 3: 137 110 20
x12030:	add bp, 18	; 3: 131 197 18
x12033:	nop	; 1: 144
x12034:	jmp printUnsignedLongRec	; 2: 235 192

printUnsignedLongRec$10:	; PostCall 18

printUnsignedLongRec$11:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLongRec$12:	; Parameter 18 digit 6
x12036:	mov ax, [bp + 16]	; 3: 139 70 16
x12039:	mov [bp + 24], ax	; 3: 137 70 24

printUnsignedLongRec$13:	; Parameter 18 capital 8
x12042:	mov ax, [bp + 14]	; 3: 139 70 14
x12045:	mov [bp + 26], ax	; 3: 137 70 26

printUnsignedLongRec$14:	; Call 18 digitToChar 0
x12048:	mov word [bp + 18], printUnsignedLongRec$15	; 5: 199 70 18 30 47
x12053:	mov [bp + 20], bp	; 3: 137 110 20
x12056:	add bp, 18	; 3: 131 197 18
x12059:	nop	; 1: 144
x12060:	jmp digitToChar	; 2: 235 34

printUnsignedLongRec$15:	; PostCall 18

printUnsignedLongRec$16:	; GetReturnValue £temporary1875

printUnsignedLongRec$17:	; Assign c £temporary1875
x12062:	mov [bp + 18], bl	; 3: 136 94 18

printUnsignedLongRec$18:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printUnsignedLongRec$19:	; Parameter 19 c 6
x12065:	mov al, [bp + 18]	; 3: 138 70 18
x12068:	mov [bp + 25], al	; 3: 136 70 25

printUnsignedLongRec$20:	; Call 19 printChar 0
x12071:	mov word [bp + 19], printUnsignedLongRec$21	; 5: 199 70 19 53 47
x12076:	mov [bp + 21], bp	; 3: 137 110 21
x12079:	add bp, 19	; 3: 131 197 19
x12082:	jmp printChar	; 3: 233 11 249

printUnsignedLongRec$21:	; PostCall 19

printUnsignedLongRec$22:	; Return 0
x12085:	mov ax, [bp]	; 3: 139 70 0
x12088:	mov di, [bp + 4]	; 3: 139 126 4
x12091:	mov bp, [bp + 2]	; 3: 139 110 2
x12094:	jmp ax	; 2: 255 224

printUnsignedLongRec$23:	; FunctionEnd printUnsignedLongRec

digitToChar:	; SignedGreaterThanEqual 5 digit 10
x12096:	cmp word [bp + 6], 10	; 4: 131 126 6 10
x12100:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; BinaryAdd £temporary1861 digit 48
x12102:	mov bx, [bp + 6]	; 3: 139 94 6
x12105:	add bx, 48	; 3: 131 195 48

digitToChar$2:	; IntegralToIntegral £temporary1862 £temporary1861
x12108:	cmp bx, 0	; 3: 131 251 0
x12111:	jge digitToChar$3	; 2: 125 4
x12113:	neg bx	; 2: 247 219
x12115:	neg bl	; 2: 246 219

digitToChar$3:	; SetReturnValue £temporary1862

digitToChar$4:	; Return £temporary1862
x12117:	mov ax, [bp]	; 3: 139 70 0
x12120:	mov di, [bp + 4]	; 3: 139 126 4
x12123:	mov bp, [bp + 2]	; 3: 139 110 2
x12126:	jmp ax	; 2: 255 224

digitToChar$5:	; Equal 11 capital 0
x12128:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x12132:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; BinarySubtract £temporary1863 digit 10
x12134:	mov bx, [bp + 6]	; 3: 139 94 6
x12137:	sub bx, 10	; 3: 131 235 10

digitToChar$7:	; BinaryAdd £temporary1864 £temporary1863 65
x12140:	add bx, 65	; 3: 131 195 65

digitToChar$8:	; IntegralToIntegral £temporary1865 £temporary1864
x12143:	cmp bx, 0	; 3: 131 251 0
x12146:	jge digitToChar$9	; 2: 125 4
x12148:	neg bx	; 2: 247 219
x12150:	neg bl	; 2: 246 219

digitToChar$9:	; SetReturnValue £temporary1865

digitToChar$10:	; Return £temporary1865
x12152:	mov ax, [bp]	; 3: 139 70 0
x12155:	mov di, [bp + 4]	; 3: 139 126 4
x12158:	mov bp, [bp + 2]	; 3: 139 110 2
x12161:	jmp ax	; 2: 255 224

digitToChar$11:	; BinarySubtract £temporary1866 digit 10
x12163:	mov bx, [bp + 6]	; 3: 139 94 6
x12166:	sub bx, 10	; 3: 131 235 10

digitToChar$12:	; BinaryAdd £temporary1867 £temporary1866 97
x12169:	add bx, 97	; 3: 131 195 97

digitToChar$13:	; IntegralToIntegral £temporary1868 £temporary1867
x12172:	cmp bx, 0	; 3: 131 251 0
x12175:	jge digitToChar$14	; 2: 125 4
x12177:	neg bx	; 2: 247 219
x12179:	neg bl	; 2: 246 219

digitToChar$14:	; SetReturnValue £temporary1868

digitToChar$15:	; Return £temporary1868
x12181:	mov ax, [bp]	; 3: 139 70 0
x12184:	mov di, [bp + 4]	; 3: 139 126 4
x12187:	mov bp, [bp + 2]	; 3: 139 110 2
x12190:	jmp ax	; 2: 255 224

digitToChar$16:	; FunctionEnd digitToChar

printLongDoublePlain:	; PushFloat longDoubleValue
x12192:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoublePlain$1:	; PushFloat 0.0
x12195:	fldz	; 2: 217 238

printLongDoublePlain$2:	; SignedGreaterThanEqual 12 longDoubleValue 0.0
x12197:	fcompp	; 2: 222 217
x12199:	fstsw ax	; 3: 155 223 224
x12202:	sahf	; 1: 158
x12203:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoublePlain$4:	; Parameter 22 45 6
x12205:	mov byte [bp + 28], 45	; 4: 198 70 28 45

printLongDoublePlain$5:	; Call 22 printChar 0
x12209:	mov word [bp + 22], printLongDoublePlain$6	; 5: 199 70 22 191 47
x12214:	mov [bp + 24], bp	; 3: 137 110 24
x12217:	add bp, 22	; 3: 131 197 22
x12220:	jmp printChar	; 3: 233 129 248

printLongDoublePlain$6:	; PostCall 22

printLongDoublePlain$7:	; PushFloat longDoubleValue
x12223:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoublePlain$8:	; UnarySubtract £temporary1931 longDoubleValue
x12226:	fchs	; 2: 217 224

printLongDoublePlain$9:	; PopFloat longDoubleValue
x12228:	fstp qword [bp + 6]	; 3: 221 94 6

printLongDoublePlain$10:	; Assign plus 0
x12231:	mov word [bp + 14], 0	; 5: 199 70 14 0 0

printLongDoublePlain$11:	; Assign space 0
x12236:	mov word [bp + 16], 0	; 5: 199 70 16 0 0

printLongDoublePlain$12:	; PushFloat longDoubleValue
x12241:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoublePlain$13:	; FloatingToIntegral £temporary1932 longDoubleValue
x12244:	fistp dword [container4bytes#]	; 4: 219 30 56 48
x12248:	mov eax, [container4bytes#]	; 4: 102 161 56 48

printLongDoublePlain$14:	; Assign longValue £temporary1932
x12252:	mov [bp + 22], eax	; 4: 102 137 70 22

printLongDoublePlain$15:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoublePlain$16:	; Parameter 26 longValue 6
x12256:	mov eax, [bp + 22]	; 4: 102 139 70 22
x12260:	mov [bp + 32], eax	; 4: 102 137 70 32

printLongDoublePlain$17:	; Parameter 26 plus 10
x12264:	mov ax, [bp + 14]	; 3: 139 70 14
x12267:	mov [bp + 36], ax	; 3: 137 70 36

printLongDoublePlain$18:	; Parameter 26 space 12
x12270:	mov ax, [bp + 16]	; 3: 139 70 16
x12273:	mov [bp + 38], ax	; 3: 137 70 38

printLongDoublePlain$19:	; Call 26 printLongInt 0
x12276:	mov word [bp + 26], printLongDoublePlain$20	; 5: 199 70 26 2 48
x12281:	mov [bp + 28], bp	; 3: 137 110 28
x12284:	add bp, 26	; 3: 131 197 26
x12287:	jmp printLongInt	; 3: 233 170 247

printLongDoublePlain$20:	; PostCall 26

printLongDoublePlain$21:	; PushFloat longDoubleValue
x12290:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoublePlain$22:	; IntegralToFloating £temporary1934 longValue
x12293:	fild dword [bp + 22]	; 3: 219 70 22

printLongDoublePlain$23:	; BinarySubtract £temporary1935 longDoubleValue £temporary1934
x12296:	fsub	; 2: 222 233

printLongDoublePlain$24:	; PopFloat longDoubleValue
x12298:	fstp qword [bp + 6]	; 3: 221 94 6

printLongDoublePlain$25:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoublePlain$26:	; PushFloat longDoubleValue
x12301:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoublePlain$27:	; Parameter 26 longDoubleValue 6
x12304:	fstp qword [bp + 32]	; 3: 221 94 32

printLongDoublePlain$28:	; Parameter 26 grid 14
x12307:	mov ax, [bp + 18]	; 3: 139 70 18
x12310:	mov [bp + 40], ax	; 3: 137 70 40

printLongDoublePlain$29:	; Parameter 26 precision 16
x12313:	mov ax, [bp + 20]	; 3: 139 70 20
x12316:	mov [bp + 42], ax	; 3: 137 70 42

printLongDoublePlain$30:	; Call 26 printLongDoubleFraction 0
x12319:	mov word [bp + 26], printLongDoublePlain$31	; 5: 199 70 26 45 48
x12324:	mov [bp + 28], bp	; 3: 137 110 28
x12327:	add bp, 26	; 3: 131 197 26
x12330:	nop	; 1: 144
x12331:	jmp printLongDoubleFraction	; 2: 235 15

printLongDoublePlain$31:	; PostCall 26

printLongDoublePlain$32:	; Return 0
x12333:	mov ax, [bp]	; 3: 139 70 0
x12336:	mov di, [bp + 4]	; 3: 139 126 4
x12339:	mov bp, [bp + 2]	; 3: 139 110 2
x12342:	jmp ax	; 2: 255 224

printLongDoublePlain$33:	; FunctionEnd printLongDoublePlain

container4bytes#:
x12344:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; PushFloat longDoubleValue
x12348:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleFraction$1:	; PushFloat longDoubleValue
x12351:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleFraction$2:	; FloatingToIntegral £temporary1910 longDoubleValue
x12354:	fistp dword [container4bytes#]	; 4: 219 30 56 48
x12358:	mov eax, [container4bytes#]	; 4: 102 161 56 48

printLongDoubleFraction$3:	; IntegralToFloating £temporary1911 £temporary1910
x12362:	mov [container4bytes#], eax	; 4: 102 163 56 48
x12366:	fild dword [container4bytes#]	; 4: 219 6 56 48

printLongDoubleFraction$4:	; BinarySubtract £temporary1912 longDoubleValue £temporary1911
x12370:	fsub	; 2: 222 233

printLongDoubleFraction$5:	; PopFloat longDoubleValue
x12372:	fstp qword [bp + 6]	; 3: 221 94 6

printLongDoubleFraction$6:	; NotEqual 8 precision 0
x12375:	cmp word [bp + 16], 0	; 4: 131 126 16 0
x12379:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; Assign precision 6
x12381:	mov word [bp + 16], 6	; 5: 199 70 16 6 0

printLongDoubleFraction$8:	; NotEqual 10 grid 0
x12386:	cmp word [bp + 14], 0	; 4: 131 126 14 0
x12390:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; SignedLessThanEqual 14 precision 0
x12392:	cmp word [bp + 16], 0	; 4: 131 126 16 0
x12396:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; CallHeader 18 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleFraction$11:	; Parameter 18 46 6
x12398:	mov byte [bp + 24], 46	; 4: 198 70 24 46

printLongDoubleFraction$12:	; Call 18 printChar 0
x12402:	mov word [bp + 18], printLongDoubleFraction$13	; 5: 199 70 18 128 48
x12407:	mov [bp + 20], bp	; 3: 137 110 20
x12410:	add bp, 18	; 3: 131 197 18
x12413:	jmp printChar	; 3: 233 192 247

printLongDoubleFraction$13:	; PostCall 18

printLongDoubleFraction$14:	; Assign £temporary1918 precision
x12416:	mov ax, [bp + 16]	; 3: 139 70 16

printLongDoubleFraction$15:	; Decrement precision
x12419:	dec word [bp + 16]	; 3: 255 78 16

printLongDoubleFraction$16:	; SignedLessThanEqual 35 £temporary1918 0
x12422:	cmp ax, 0	; 3: 131 248 0
x12425:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; PushFloat 10.0
x12427:	fld qword [float8$10.0#]	; 4: 221 6 220 48

printLongDoubleFraction$18:	; PushFloat longDoubleValue
x12431:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleFraction$19:	; SignedMultiply £temporary1920 10.0 longDoubleValue
x12434:	fmul	; 2: 222 201

printLongDoubleFraction$20:	; PopFloat longDoubleValue10
x12436:	fstp qword [bp + 18]	; 3: 221 94 18

printLongDoubleFraction$21:	; PushFloat longDoubleValue10
x12439:	fld qword [bp + 18]	; 3: 221 70 18

printLongDoubleFraction$22:	; FloatingToIntegral £temporary1921 longDoubleValue10
x12442:	fistp word [container2bytes#]	; 4: 223 30 174 21
x12446:	mov ax, [container2bytes#]	; 3: 161 174 21

printLongDoubleFraction$23:	; Assign digitValue £temporary1921
x12449:	mov [bp + 26], ax	; 3: 137 70 26

printLongDoubleFraction$24:	; CallHeader 28 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleFraction$25:	; BinaryAdd £temporary1922 digitValue 48
x12452:	mov ax, [bp + 26]	; 3: 139 70 26
x12455:	add ax, 48	; 3: 131 192 48

printLongDoubleFraction$26:	; IntegralToIntegral £temporary1923 £temporary1922
x12458:	cmp ax, 0	; 3: 131 248 0
x12461:	jge printLongDoubleFraction$27	; 2: 125 4
x12463:	neg ax	; 2: 247 216
x12465:	neg al	; 2: 246 216

printLongDoubleFraction$27:	; Parameter 28 £temporary1923 6
x12467:	mov [bp + 34], al	; 3: 136 70 34

printLongDoubleFraction$28:	; Call 28 printChar 0
x12470:	mov word [bp + 28], printLongDoubleFraction$29	; 5: 199 70 28 196 48
x12475:	mov [bp + 30], bp	; 3: 137 110 30
x12478:	add bp, 28	; 3: 131 197 28
x12481:	jmp printChar	; 3: 233 124 247

printLongDoubleFraction$29:	; PostCall 28

printLongDoubleFraction$30:	; PushFloat longDoubleValue10
x12484:	fld qword [bp + 18]	; 3: 221 70 18

printLongDoubleFraction$31:	; IntegralToFloating £temporary1925 digitValue
x12487:	fild word [bp + 26]	; 3: 223 70 26

printLongDoubleFraction$32:	; BinarySubtract £temporary1926 longDoubleValue10 £temporary1925
x12490:	fsub	; 2: 222 233

printLongDoubleFraction$33:	; PopFloat longDoubleValue
x12492:	fstp qword [bp + 6]	; 3: 221 94 6

printLongDoubleFraction$34:	; Goto 14
x12495:	jmp printLongDoubleFraction$14	; 2: 235 175

printLongDoubleFraction$35:	; Return 0
x12497:	mov ax, [bp]	; 3: 139 70 0
x12500:	mov di, [bp + 4]	; 3: 139 126 4
x12503:	mov bp, [bp + 2]	; 3: 139 110 2
x12506:	jmp ax	; 2: 255 224

printLongDoubleFraction$36:	; FunctionEnd printLongDoubleFraction

float8$10.0#:
x12508:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; PushFloat x
x12516:	fld qword [bp + 6]	; 3: 221 70 6

fabs$1:	; PushZero
x12519:	fldz	; 2: 217 238

fabs$2:	; SignedGreaterThanEqual 7 x 0
x12521:	fcompp	; 2: 222 217
x12523:	fstsw ax	; 3: 155 223 224
x12526:	sahf	; 1: 158
x12527:	jbe fabs$7	; 2: 118 7

fabs$3:	; PushFloat x
x12529:	fld qword [bp + 6]	; 3: 221 70 6

fabs$4:	; UnarySubtract £temporary831 x
x12532:	fchs	; 2: 217 224

fabs$5:	; DecreaseStack

fabs$6:	; Goto 8
x12534:	jmp fabs$8	; 2: 235 3

fabs$7:	; PushFloat x
x12536:	fld qword [bp + 6]	; 3: 221 70 6

fabs$8:	; SetReturnValue £temporary835

fabs$9:	; Return £temporary835
x12539:	mov ax, [bp]	; 3: 139 70 0
x12542:	mov di, [bp + 4]	; 3: 139 126 4
x12545:	mov bp, [bp + 2]	; 3: 139 110 2
x12548:	jmp ax	; 2: 255 224

fabs$10:	; FunctionEnd fabs

tolower:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

tolower$1:	; Parameter 8 c 6
x12550:	mov ax, [bp + 6]	; 3: 139 70 6
x12553:	mov [bp + 14], ax	; 3: 137 70 14

tolower$2:	; Call 8 isupper 0
x12556:	mov word [bp + 8], tolower$3	; 5: 199 70 8 26 49
x12561:	mov [bp + 10], bp	; 3: 137 110 10
x12564:	add bp, 8	; 3: 131 197 8
x12567:	jmp isupper	; 3: 233 222 248

tolower$3:	; PostCall 8

tolower$4:	; GetReturnValue £temporary465

tolower$5:	; Equal 31 £temporary465 0
x12570:	cmp bx, 0	; 3: 131 251 0
x12573:	je tolower$31	; 2: 116 122

tolower$6:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

tolower$7:	; Call 8 localeconv 0
x12575:	mov word [bp + 8], tolower$8	; 5: 199 70 8 45 49
x12580:	mov [bp + 10], bp	; 3: 137 110 10
x12583:	add bp, 8	; 3: 131 197 8
x12586:	jmp localeconv	; 3: 233 54 249

tolower$8:	; PostCall 8

tolower$9:	; GetReturnValue £temporary466

tolower$10:	; Assign localeConvPtr £temporary466
x12589:	mov [bp + 8], bx	; 3: 137 94 8

tolower$11:	; Equal 28 localeConvPtr 0
x12592:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x12596:	je tolower$28	; 2: 116 82

tolower$12:	; Deref £temporary468 -> localeConvPtr localeConvPtr 12
x12598:	mov si, [bp + 8]	; 3: 139 118 8

tolower$13:	; Assign lowerCase £temporary468 -> localeConvPtr
x12601:	mov ax, [si + 12]	; 3: 139 68 12
x12604:	mov [bp + 10], ax	; 3: 137 70 10

tolower$14:	; Deref £temporary469 -> localeConvPtr localeConvPtr 14
x12607:	mov si, [bp + 8]	; 3: 139 118 8

tolower$15:	; Assign upperCase £temporary469 -> localeConvPtr
x12610:	mov ax, [si + 14]	; 3: 139 68 14
x12613:	mov [bp + 12], ax	; 3: 137 70 12

tolower$16:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

tolower$17:	; Parameter 14 upperCase 6
x12616:	mov ax, [bp + 12]	; 3: 139 70 12
x12619:	mov [bp + 20], ax	; 3: 137 70 20

tolower$18:	; Parameter 14 c 8
x12622:	mov ax, [bp + 6]	; 3: 139 70 6
x12625:	mov [bp + 22], ax	; 3: 137 70 22

tolower$19:	; Call 14 strchr 0
x12628:	mov word [bp + 14], tolower$20	; 5: 199 70 14 98 49
x12633:	mov [bp + 16], bp	; 3: 137 110 16
x12636:	add bp, 14	; 3: 131 197 14
x12639:	jmp strchr	; 3: 233 67 252

tolower$20:	; PostCall 14

tolower$21:	; GetReturnValue £temporary470

tolower$22:	; BinarySubtract index £temporary470 upperCase
x12642:	sub bx, [bp + 12]	; 3: 43 94 12
x12645:	mov [bp + 14], bx	; 3: 137 94 14

tolower$23:	; BinaryAdd £temporary473 lowerCase index
x12648:	mov si, [bp + 10]	; 3: 139 118 10
x12651:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; Deref £temporary472 -> £temporary473 £temporary473 0

tolower$25:	; IntegralToIntegral £temporary474 £temporary472 -> £temporary473
x12654:	mov bl, [si]	; 2: 138 28
x12656:	and bx, 255	; 4: 129 227 255 0
x12660:	cmp bl, 0	; 3: 128 251 0
x12663:	jge tolower$26	; 2: 125 4
x12665:	neg bl	; 2: 246 219
x12667:	neg bx	; 2: 247 219

tolower$26:	; SetReturnValue £temporary474

tolower$27:	; Return £temporary474
x12669:	mov ax, [bp]	; 3: 139 70 0
x12672:	mov di, [bp + 4]	; 3: 139 126 4
x12675:	mov bp, [bp + 2]	; 3: 139 110 2
x12678:	jmp ax	; 2: 255 224

tolower$28:	; BinaryAdd £temporary475 c 32
x12680:	mov bx, [bp + 6]	; 3: 139 94 6
x12683:	add bx, 32	; 3: 131 195 32

tolower$29:	; SetReturnValue £temporary475

tolower$30:	; Return £temporary475
x12686:	mov ax, [bp]	; 3: 139 70 0
x12689:	mov di, [bp + 4]	; 3: 139 126 4
x12692:	mov bp, [bp + 2]	; 3: 139 110 2
x12695:	jmp ax	; 2: 255 224

tolower$31:	; SetReturnValue c
x12697:	mov bx, [bp + 6]	; 3: 139 94 6

tolower$32:	; Return c
x12700:	mov ax, [bp]	; 3: 139 70 0
x12703:	mov di, [bp + 4]	; 3: 139 126 4
x12706:	mov bp, [bp + 2]	; 3: 139 110 2
x12709:	jmp ax	; 2: 255 224

tolower$33:	; FunctionEnd tolower

printLongDoubleExpo:	; PushFloat value
x12711:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleExpo$1:	; PushFloat 0.0
x12714:	fldz	; 2: 217 238

printLongDoubleExpo$2:	; NotEqual 27 value 0.0
x12716:	fcompp	; 2: 222 217
x12718:	fstsw ax	; 3: 155 223 224
x12721:	sahf	; 1: 158
x12722:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$4:	; Parameter 24 48 6
x12724:	mov byte [bp + 30], 48	; 4: 198 70 30 48

printLongDoubleExpo$5:	; Call 24 printChar 0
x12728:	mov word [bp + 24], printLongDoubleExpo$6	; 5: 199 70 24 198 49
x12733:	mov [bp + 26], bp	; 3: 137 110 26
x12736:	add bp, 24	; 3: 131 197 24
x12739:	jmp printChar	; 3: 233 122 246

printLongDoubleExpo$6:	; PostCall 24

printLongDoubleExpo$7:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$8:	; PushFloat 0.0
x12742:	fldz	; 2: 217 238

printLongDoubleExpo$9:	; Parameter 24 0.0 6
x12744:	fstp qword [bp + 30]	; 3: 221 94 30

printLongDoubleExpo$10:	; Parameter 24 precision 14
x12747:	mov ax, [bp + 20]	; 3: 139 70 20
x12750:	mov [bp + 38], ax	; 3: 137 70 38

printLongDoubleExpo$11:	; Parameter 24 grid 16
x12753:	mov ax, [bp + 18]	; 3: 139 70 18
x12756:	mov [bp + 40], ax	; 3: 137 70 40

printLongDoubleExpo$12:	; Call 24 printLongDoubleFraction 0
x12759:	mov word [bp + 24], printLongDoubleExpo$13	; 5: 199 70 24 229 49
x12764:	mov [bp + 26], bp	; 3: 137 110 26
x12767:	add bp, 24	; 3: 131 197 24
x12770:	jmp printLongDoubleFraction	; 3: 233 87 254

printLongDoubleExpo$13:	; PostCall 24

printLongDoubleExpo$14:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$15:	; Equal 18 capital 0
x12773:	cmp word [bp + 22], 0	; 4: 131 126 22 0
x12777:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; Assign £temporary1951 69
x12779:	mov al, 69	; 2: 176 69

printLongDoubleExpo$17:	; Goto 19
x12781:	jmp printLongDoubleExpo$19	; 2: 235 2

printLongDoubleExpo$18:	; Assign £temporary1951 101
x12783:	mov al, 101	; 2: 176 101

printLongDoubleExpo$19:	; Parameter 24 £temporary1951 6
x12785:	mov [bp + 30], al	; 3: 136 70 30

printLongDoubleExpo$20:	; Call 24 printChar 0
x12788:	mov word [bp + 24], printLongDoubleExpo$21	; 5: 199 70 24 2 50
x12793:	mov [bp + 26], bp	; 3: 137 110 26
x12796:	add bp, 24	; 3: 131 197 24
x12799:	jmp printChar	; 3: 233 62 246

printLongDoubleExpo$21:	; PostCall 24

printLongDoubleExpo$22:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$23:	; Parameter 24 48 6
x12802:	mov byte [bp + 30], 48	; 4: 198 70 30 48

printLongDoubleExpo$24:	; Call 24 printChar 0
x12806:	mov word [bp + 24], printLongDoubleExpo$25	; 5: 199 70 24 20 50
x12811:	mov [bp + 26], bp	; 3: 137 110 26
x12814:	add bp, 24	; 3: 131 197 24
x12817:	jmp printChar	; 3: 233 44 246

printLongDoubleExpo$25:	; PostCall 24

printLongDoubleExpo$26:	; Goto 80
x12820:	jmp printLongDoubleExpo$80	; 3: 233 236 0

printLongDoubleExpo$27:	; PushFloat value
x12823:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleExpo$28:	; PushFloat 0.0
x12826:	fldz	; 2: 217 238

printLongDoubleExpo$29:	; SignedGreaterThanEqual 37 value 0.0
x12828:	fcompp	; 2: 222 217
x12830:	fstsw ax	; 3: 155 223 224
x12833:	sahf	; 1: 158
x12834:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$31:	; Parameter 24 45 6
x12836:	mov byte [bp + 30], 45	; 4: 198 70 30 45

printLongDoubleExpo$32:	; Call 24 printChar 0
x12840:	mov word [bp + 24], printLongDoubleExpo$33	; 5: 199 70 24 54 50
x12845:	mov [bp + 26], bp	; 3: 137 110 26
x12848:	add bp, 24	; 3: 131 197 24
x12851:	jmp printChar	; 3: 233 10 246

printLongDoubleExpo$33:	; PostCall 24

printLongDoubleExpo$34:	; PushFloat value
x12854:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleExpo$35:	; UnarySubtract £temporary1956 value
x12857:	fchs	; 2: 217 224

printLongDoubleExpo$36:	; PopFloat value
x12859:	fstp qword [bp + 6]	; 3: 221 94 6

printLongDoubleExpo$37:	; CallHeader 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$38:	; PushFloat value
x12862:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleExpo$39:	; Parameter 24 value 6
x12865:	fstp qword [bp + 30]	; 3: 221 94 30

printLongDoubleExpo$40:	; Call 24 log10 0
x12868:	mov word [bp + 24], printLongDoubleExpo$41	; 5: 199 70 24 82 50
x12873:	mov [bp + 26], bp	; 3: 137 110 26
x12876:	add bp, 24	; 3: 131 197 24
x12879:	jmp log10	; 3: 233 188 0

printLongDoubleExpo$41:	; PostCall 24

printLongDoubleExpo$42:	; GetReturnValue £temporary1957

printLongDoubleExpo$43:	; FloatingToIntegral £temporary1958 £temporary1957
x12882:	fistp word [container2bytes#]	; 4: 223 30 174 21
x12886:	mov ax, [container2bytes#]	; 3: 161 174 21

printLongDoubleExpo$44:	; Assign expo £temporary1958
x12889:	mov [bp + 24], ax	; 3: 137 70 24

printLongDoubleExpo$45:	; PushFloat value
x12892:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleExpo$46:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x12895:	fstp qword [bp + 26]	; 3: 221 94 26

printLongDoubleExpo$47:	; PushFloat 10.0
x12898:	fld qword [float8$10.0#]	; 4: 221 6 220 48

printLongDoubleExpo$48:	; Parameter 26 10.0 6
x12902:	fstp qword [bp + 40]	; 3: 221 94 40

printLongDoubleExpo$49:	; IntegralToFloating £temporary1959 expo
x12905:	fild word [bp + 24]	; 3: 223 70 24

printLongDoubleExpo$50:	; Parameter 26 £temporary1959 14
x12908:	fstp qword [bp + 48]	; 3: 221 94 48

printLongDoubleExpo$51:	; Call 26 pow 0
x12911:	mov word [bp + 34], printLongDoubleExpo$52	; 5: 199 70 34 125 50
x12916:	mov [bp + 36], bp	; 3: 137 110 36
x12919:	add bp, 34	; 3: 131 197 34
x12922:	jmp pow	; 3: 233 238 1

printLongDoubleExpo$52:	; PostCall 26
x12925:	fstp qword [bp + 34]	; 3: 221 94 34
x12928:	fld qword [bp + 26]	; 3: 221 70 26
x12931:	fld qword [bp + 34]	; 3: 221 70 34

printLongDoubleExpo$53:	; GetReturnValue £temporary1960

printLongDoubleExpo$54:	; SignedDivide £temporary1961 value £temporary1960
x12934:	fdiv	; 2: 222 249

printLongDoubleExpo$55:	; PopFloat value
x12936:	fstp qword [bp + 6]	; 3: 221 94 6

printLongDoubleExpo$56:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$57:	; PushFloat value
x12939:	fld qword [bp + 6]	; 3: 221 70 6

printLongDoubleExpo$58:	; Parameter 26 value 6
x12942:	fstp qword [bp + 32]	; 3: 221 94 32

printLongDoubleExpo$59:	; Parameter 26 plus 14
x12945:	mov ax, [bp + 14]	; 3: 139 70 14
x12948:	mov [bp + 40], ax	; 3: 137 70 40

printLongDoubleExpo$60:	; Parameter 26 space 16
x12951:	mov ax, [bp + 16]	; 3: 139 70 16
x12954:	mov [bp + 42], ax	; 3: 137 70 42

printLongDoubleExpo$61:	; Parameter 26 grid 18
x12957:	mov ax, [bp + 18]	; 3: 139 70 18
x12960:	mov [bp + 44], ax	; 3: 137 70 44

printLongDoubleExpo$62:	; Parameter 26 precision 20
x12963:	mov ax, [bp + 20]	; 3: 139 70 20
x12966:	mov [bp + 46], ax	; 3: 137 70 46

printLongDoubleExpo$63:	; Call 26 printLongDoublePlain 0
x12969:	mov word [bp + 26], printLongDoubleExpo$64	; 5: 199 70 26 183 50
x12974:	mov [bp + 28], bp	; 3: 137 110 28
x12977:	add bp, 26	; 3: 131 197 26
x12980:	jmp printLongDoublePlain	; 3: 233 233 252

printLongDoubleExpo$64:	; PostCall 26

printLongDoubleExpo$65:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$66:	; Equal 69 capital 0
x12983:	cmp word [bp + 22], 0	; 4: 131 126 22 0
x12987:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; Assign £temporary1967 69
x12989:	mov al, 69	; 2: 176 69

printLongDoubleExpo$68:	; Goto 70
x12991:	jmp printLongDoubleExpo$70	; 2: 235 2

printLongDoubleExpo$69:	; Assign £temporary1967 101
x12993:	mov al, 101	; 2: 176 101

printLongDoubleExpo$70:	; Parameter 26 £temporary1967 6
x12995:	mov [bp + 32], al	; 3: 136 70 32

printLongDoubleExpo$71:	; Call 26 printChar 0
x12998:	mov word [bp + 26], printLongDoubleExpo$72	; 5: 199 70 26 212 50
x13003:	mov [bp + 28], bp	; 3: 137 110 28
x13006:	add bp, 26	; 3: 131 197 26
x13009:	jmp printChar	; 3: 233 108 245

printLongDoubleExpo$72:	; PostCall 26

printLongDoubleExpo$73:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printLongDoubleExpo$74:	; IntegralToIntegral £temporary1969 expo
x13012:	mov ax, [bp + 24]	; 3: 139 70 24
x13015:	and eax, 65535	; 6: 102 37 255 255 0 0
x13021:	cmp ax, 0	; 3: 131 248 0
x13024:	jge printLongDoubleExpo$75	; 2: 125 5
x13026:	neg ax	; 2: 247 216
x13028:	neg eax	; 3: 102 247 216

printLongDoubleExpo$75:	; Parameter 26 £temporary1969 6
x13031:	mov [bp + 32], eax	; 4: 102 137 70 32

printLongDoubleExpo$76:	; Parameter 26 1 10
x13035:	mov word [bp + 36], 1	; 5: 199 70 36 1 0

printLongDoubleExpo$77:	; Parameter 26 0 12
x13040:	mov word [bp + 38], 0	; 5: 199 70 38 0 0

printLongDoubleExpo$78:	; Call 26 printLongInt 0
x13045:	mov word [bp + 26], printLongDoubleExpo$79	; 5: 199 70 26 3 51
x13050:	mov [bp + 28], bp	; 3: 137 110 28
x13053:	add bp, 26	; 3: 131 197 26
x13056:	jmp printLongInt	; 3: 233 169 244

printLongDoubleExpo$79:	; PostCall 26

printLongDoubleExpo$80:	; Return 0
x13059:	mov ax, [bp]	; 3: 139 70 0
x13062:	mov di, [bp + 4]	; 3: 139 126 4
x13065:	mov bp, [bp + 2]	; 3: 139 110 2
x13068:	jmp ax	; 2: 255 224

printLongDoubleExpo$81:	; FunctionEnd printLongDoubleExpo

log10:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

log10$1:	; PushFloat x
x13070:	fld qword [bp + 6]	; 3: 221 70 6

log10$2:	; Parameter 14 x 6
x13073:	fstp qword [bp + 20]	; 3: 221 94 20

log10$3:	; Call 14 log 0
x13076:	mov word [bp + 14], log10$4	; 5: 199 70 14 34 51
x13081:	mov [bp + 16], bp	; 3: 137 110 16
x13084:	add bp, 14	; 3: 131 197 14
x13087:	nop	; 1: 144
x13088:	jmp log	; 2: 235 25

log10$4:	; PostCall 14

log10$5:	; GetReturnValue £temporary552

log10$6:	; PushFloat 2.30
x13090:	fld qword [float8$2.30#]	; 4: 221 6 51 51

log10$7:	; SignedDivide £temporary553 £temporary552 2.30
x13094:	fdiv	; 2: 222 249

log10$8:	; SetReturnValue £temporary553

log10$9:	; Return £temporary553
x13096:	mov ax, [bp]	; 3: 139 70 0
x13099:	mov di, [bp + 4]	; 3: 139 126 4
x13102:	mov bp, [bp + 2]	; 3: 139 110 2
x13105:	jmp ax	; 2: 255 224

log10$10:	; FunctionEnd log10

float8$2.30#:
x13107:	dq 2.30	; 8: 102 102 102 102 102 102 2 64

log:	; PushFloat x
x13115:	fld qword [bp + 6]	; 3: 221 70 6

log$1:	; PushZero
x13118:	fldz	; 2: 217 238

log$2:	; SignedLessThanEqual 76 x 0
x13120:	fcompp	; 2: 222 217
x13122:	fstsw ax	; 3: 155 223 224
x13125:	sahf	; 1: 158
x13126:	jae log$76	; 4: 15 131 238 0

log$3:	; Assign n 0
x13130:	mov word [bp + 14], 0	; 5: 199 70 14 0 0

log$4:	; PushFloat x
x13135:	fld qword [bp + 6]	; 3: 221 70 6

log$5:	; PushOne
x13138:	fld1	; 2: 217 232

log$6:	; SignedLessThanEqual 16 x 1
x13140:	fcompp	; 2: 222 217
x13142:	fstsw ax	; 3: 155 223 224
x13145:	sahf	; 1: 158
x13146:	jae log$16	; 2: 115 30

log$7:	; PushFloat x
x13148:	fld qword [bp + 6]	; 3: 221 70 6

log$8:	; PushOne
x13151:	fld1	; 2: 217 232

log$9:	; SignedLessThanEqual 28 x 1
x13153:	fcompp	; 2: 222 217
x13155:	fstsw ax	; 3: 155 223 224
x13158:	sahf	; 1: 158
x13159:	jae log$28	; 2: 115 64

log$10:	; PushFloat x
x13161:	fld qword [bp + 6]	; 3: 221 70 6

log$11:	; PushFloat 2.71
x13164:	fld qword [float8$2.71#]	; 4: 221 6 75 52

log$12:	; SignedDivide £temporary534 x 2.71
x13168:	fdiv	; 2: 222 249

log$13:	; PopFloat x
x13170:	fstp qword [bp + 6]	; 3: 221 94 6

log$14:	; Increment n
x13173:	inc word [bp + 14]	; 3: 255 70 14

log$15:	; Goto 7
x13176:	jmp log$7	; 2: 235 226

log$16:	; PushFloat x
x13178:	fld qword [bp + 6]	; 3: 221 70 6

log$17:	; PushFloat 0.3690036900369003690036900369
x13181:	fld qword [float8$0.3690036900369003690036900369#]	; 4: 221 6 83 52

log$18:	; SignedGreaterThanEqual 28 x 0.3690036900369003690036900369
x13185:	fcompp	; 2: 222 217
x13187:	fstsw ax	; 3: 155 223 224
x13190:	sahf	; 1: 158
x13191:	jbe log$28	; 2: 118 32

log$19:	; PushFloat x
x13193:	fld qword [bp + 6]	; 3: 221 70 6

log$20:	; PushFloat 0.3690036900369003690036900369
x13196:	fld qword [float8$0.3690036900369003690036900369#]	; 4: 221 6 83 52

log$21:	; SignedGreaterThanEqual 28 x 0.3690036900369003690036900369
x13200:	fcompp	; 2: 222 217
x13202:	fstsw ax	; 3: 155 223 224
x13205:	sahf	; 1: 158
x13206:	jbe log$28	; 2: 118 17

log$22:	; PushFloat x
x13208:	fld qword [bp + 6]	; 3: 221 70 6

log$23:	; PushFloat 2.71
x13211:	fld qword [float8$2.71#]	; 4: 221 6 75 52

log$24:	; SignedMultiply £temporary538 x 2.71
x13215:	fmul	; 2: 222 201

log$25:	; PopFloat x
x13217:	fstp qword [bp + 6]	; 3: 221 94 6

log$26:	; Decrement n
x13220:	dec word [bp + 14]	; 3: 255 78 14

log$27:	; Goto 19
x13223:	jmp log$19	; 2: 235 224

log$28:	; PushOne
x13225:	fld1	; 2: 217 232

log$29:	; PopFloat index
x13227:	fstp qword [bp + 16]	; 3: 221 94 16

log$30:	; PushZero
x13230:	fldz	; 2: 217 238

log$31:	; PopFloat sum
x13232:	fstp qword [bp + 32]	; 3: 221 94 32

log$32:	; PushOne
x13235:	fld1	; 2: 217 232

log$33:	; PopFloat sign
x13237:	fstp qword [bp + 40]	; 3: 221 94 40

log$34:	; PushFloat x
x13240:	fld qword [bp + 6]	; 3: 221 70 6

log$35:	; PushOne
x13243:	fld1	; 2: 217 232

log$36:	; BinarySubtract £temporary540 x 1
x13245:	fsub	; 2: 222 233

log$37:	; PopFloat x_minus_1
x13247:	fstp qword [bp + 48]	; 3: 221 94 48

log$38:	; PushFloat x_minus_1
x13250:	fld qword [bp + 48]	; 3: 221 70 48

log$39:	; PopFloat power
x13253:	fstp qword [bp + 56]	; 3: 221 94 56

log$40:	; PushFloat sign
x13256:	fld qword [bp + 40]	; 3: 221 70 40

log$41:	; PushFloat power
x13259:	fld qword [bp + 56]	; 3: 221 70 56

log$42:	; SignedMultiply £temporary541 sign power
x13262:	fmul	; 2: 222 201

log$43:	; PushFloat index
x13264:	fld qword [bp + 16]	; 3: 221 70 16

log$44:	; PushOne
x13267:	fld1	; 2: 217 232

log$45:	; BinaryAdd index index 1
x13269:	fadd	; 2: 222 193

log$46:	; TopFloat index
x13271:	fst qword [bp + 16]	; 3: 221 86 16

log$47:	; PushOne
x13274:	fld1	; 2: 217 232

log$48:	; BinarySubtract index index 1
x13276:	fsub	; 2: 222 233

log$49:	; SignedDivide £temporary543 £temporary541 £temporary542
x13278:	fdiv	; 2: 222 249

log$50:	; PopFloat term
x13280:	fstp qword [bp + 24]	; 3: 221 94 24

log$51:	; PushFloat sum
x13283:	fld qword [bp + 32]	; 3: 221 70 32

log$52:	; PushFloat term
x13286:	fld qword [bp + 24]	; 3: 221 70 24

log$53:	; BinaryAdd £temporary544 sum term
x13289:	fadd	; 2: 222 193

log$54:	; PopFloat sum
x13291:	fstp qword [bp + 32]	; 3: 221 94 32

log$55:	; PushFloat power
x13294:	fld qword [bp + 56]	; 3: 221 70 56

log$56:	; PushFloat x_minus_1
x13297:	fld qword [bp + 48]	; 3: 221 70 48

log$57:	; SignedMultiply £temporary545 power x_minus_1
x13300:	fmul	; 2: 222 201

log$58:	; PopFloat power
x13302:	fstp qword [bp + 56]	; 3: 221 94 56

log$59:	; PushFloat sign
x13305:	fld qword [bp + 40]	; 3: 221 70 40

log$60:	; PushFloat -1.0
x13308:	fld qword [float8$minus1.0#]	; 4: 221 6 91 52

log$61:	; SignedMultiply £temporary546 sign -1.0
x13312:	fmul	; 2: 222 201

log$62:	; PopFloat sign
x13314:	fstp qword [bp + 40]	; 3: 221 94 40

log$63:	; CallHeader 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

log$64:	; PushFloat term
x13317:	fld qword [bp + 24]	; 3: 221 70 24

log$65:	; Parameter 64 term 6
x13320:	fstp qword [bp + 70]	; 3: 221 94 70

log$66:	; Call 64 fabs 0
x13323:	mov word [bp + 64], log$67	; 5: 199 70 64 25 52
x13328:	mov [bp + 66], bp	; 3: 137 110 66
x13331:	add bp, 64	; 3: 131 197 64
x13334:	jmp fabs	; 3: 233 203 252

log$67:	; PostCall 64

log$68:	; GetReturnValue £temporary547

log$69:	; PushFloat 0.000000001
x13337:	fld qword [float8$0.000000001#]	; 4: 221 6 99 52

log$70:	; SignedGreaterThanEqual 40 £temporary547 0.000000001
x13341:	fcompp	; 2: 222 217
x13343:	fstsw ax	; 3: 155 223 224
x13346:	sahf	; 1: 158
x13347:	jbe log$40	; 2: 118 163

log$71:	; PushFloat sum
x13349:	fld qword [bp + 32]	; 3: 221 70 32

log$72:	; IntegralToFloating £temporary549 n
x13352:	fild word [bp + 14]	; 3: 223 70 14

log$73:	; BinaryAdd £temporary550 sum £temporary549
x13355:	fadd	; 2: 222 193

log$74:	; SetReturnValue £temporary550

log$75:	; Return £temporary550
x13357:	mov ax, [bp]	; 3: 139 70 0
x13360:	mov di, [bp + 4]	; 3: 139 126 4
x13363:	mov bp, [bp + 2]	; 3: 139 110 2
x13366:	jmp ax	; 2: 255 224

log$76:	; Assign errno 6
x13368:	mov word [errno], 6	; 6: 199 6 0 21 6 0

log$77:	; PushZero
x13374:	fldz	; 2: 217 238

log$78:	; SetReturnValue 0

log$79:	; Return 0
x13376:	mov ax, [bp]	; 3: 139 70 0
x13379:	mov di, [bp + 4]	; 3: 139 126 4
x13382:	mov bp, [bp + 2]	; 3: 139 110 2
x13385:	jmp ax	; 2: 255 224

log$80:	; FunctionEnd log

float8$2.71#:
x13387:	dq 2.71	; 8: 174 71 225 122 20 174 5 64

float8$0.3690036900369003690036900369#:
x13395:	dq 0.3690036900369003690036900369	; 8: 170 244 51 167 193 157 215 63

float8$minus1.0#:
x13403:	dq -1.0	; 8: 0 0 0 0 0 0 240 191

float8$0.000000001#:
x13411:	dq 0.000000001	; 8: 149 214 38 232 11 46 17 62

pow:	; PushFloat x
x13419:	fld qword [bp + 6]	; 3: 221 70 6

pow$1:	; PushZero
x13422:	fldz	; 2: 217 238

pow$2:	; SignedLessThanEqual 18 x 0
x13424:	fcompp	; 2: 222 217
x13426:	fstsw ax	; 3: 155 223 224
x13429:	sahf	; 1: 158
x13430:	jae pow$18	; 2: 115 65

pow$3:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

pow$4:	; PushFloat y
x13432:	fld qword [bp + 14]	; 3: 221 70 14

pow$5:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x13435:	fstp qword [bp + 22]	; 3: 221 94 22

pow$6:	; PushFloat x
x13438:	fld qword [bp + 6]	; 3: 221 70 6

pow$7:	; Parameter 22 x 6
x13441:	fstp qword [bp + 36]	; 3: 221 94 36

pow$8:	; Call 22 log 0
x13444:	mov word [bp + 30], pow$9	; 5: 199 70 30 146 52
x13449:	mov [bp + 32], bp	; 3: 137 110 32
x13452:	add bp, 30	; 3: 131 197 30
x13455:	jmp log	; 3: 233 169 254

pow$9:	; PostCall 22
x13458:	fstp qword [bp + 30]	; 3: 221 94 30
x13461:	fld qword [bp + 22]	; 3: 221 70 22
x13464:	fld qword [bp + 30]	; 3: 221 70 30

pow$10:	; GetReturnValue £temporary556

pow$11:	; SignedMultiply £temporary557 y £temporary556
x13467:	fmul	; 2: 222 201

pow$12:	; Parameter 22 £temporary557 6
x13469:	fstp qword [bp + 28]	; 3: 221 94 28

pow$13:	; Call 22 exp 0
x13472:	mov word [bp + 22], pow$14	; 5: 199 70 22 174 52
x13477:	mov [bp + 24], bp	; 3: 137 110 24
x13480:	add bp, 22	; 3: 131 197 22
x13483:	jmp exp	; 3: 233 102 1

pow$14:	; PostCall 22

pow$15:	; GetReturnValue £temporary558

pow$16:	; SetReturnValue £temporary558

pow$17:	; Return £temporary558
x13486:	mov ax, [bp]	; 3: 139 70 0
x13489:	mov di, [bp + 4]	; 3: 139 126 4
x13492:	mov bp, [bp + 2]	; 3: 139 110 2
x13495:	jmp ax	; 2: 255 224

pow$18:	; PushFloat x
x13497:	fld qword [bp + 6]	; 3: 221 70 6

pow$19:	; PushZero
x13500:	fldz	; 2: 217 238

pow$20:	; NotEqual 27 x 0
x13502:	fcompp	; 2: 222 217
x13504:	fstsw ax	; 3: 155 223 224
x13507:	sahf	; 1: 158
x13508:	jne pow$27	; 2: 117 26

pow$21:	; PushFloat y
x13510:	fld qword [bp + 14]	; 3: 221 70 14

pow$22:	; PushZero
x13513:	fldz	; 2: 217 238

pow$23:	; NotEqual 27 y 0
x13515:	fcompp	; 2: 222 217
x13517:	fstsw ax	; 3: 155 223 224
x13520:	sahf	; 1: 158
x13521:	jne pow$27	; 2: 117 13

pow$24:	; PushOne
x13523:	fld1	; 2: 217 232

pow$25:	; SetReturnValue 1

pow$26:	; Return 1
x13525:	mov ax, [bp]	; 3: 139 70 0
x13528:	mov di, [bp + 4]	; 3: 139 126 4
x13531:	mov bp, [bp + 2]	; 3: 139 110 2
x13534:	jmp ax	; 2: 255 224

pow$27:	; PushFloat x
x13536:	fld qword [bp + 6]	; 3: 221 70 6

pow$28:	; PushZero
x13539:	fldz	; 2: 217 238

pow$29:	; NotEqual 36 x 0
x13541:	fcompp	; 2: 222 217
x13543:	fstsw ax	; 3: 155 223 224
x13546:	sahf	; 1: 158
x13547:	jne pow$36	; 2: 117 26

pow$30:	; PushFloat y
x13549:	fld qword [bp + 14]	; 3: 221 70 14

pow$31:	; PushZero
x13552:	fldz	; 2: 217 238

pow$32:	; SignedLessThanEqual 36 y 0
x13554:	fcompp	; 2: 222 217
x13556:	fstsw ax	; 3: 155 223 224
x13559:	sahf	; 1: 158
x13560:	jae pow$36	; 2: 115 13

pow$33:	; PushZero
x13562:	fldz	; 2: 217 238

pow$34:	; SetReturnValue 0

pow$35:	; Return 0
x13564:	mov ax, [bp]	; 3: 139 70 0
x13567:	mov di, [bp + 4]	; 3: 139 126 4
x13570:	mov bp, [bp + 2]	; 3: 139 110 2
x13573:	jmp ax	; 2: 255 224

pow$36:	; PushFloat x
x13575:	fld qword [bp + 6]	; 3: 221 70 6

pow$37:	; PushZero
x13578:	fldz	; 2: 217 238

pow$38:	; SignedGreaterThanEqual 90 x 0
x13580:	fcompp	; 2: 222 217
x13582:	fstsw ax	; 3: 155 223 224
x13585:	sahf	; 1: 158
x13586:	jbe pow$90	; 4: 15 134 231 0

pow$39:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

pow$40:	; PushFloat y
x13590:	fld qword [bp + 14]	; 3: 221 70 14

pow$41:	; Parameter 22 y 6
x13593:	fstp qword [bp + 28]	; 3: 221 94 28

pow$42:	; Call 22 floor 0
x13596:	mov word [bp + 22], pow$43	; 5: 199 70 22 42 53
x13601:	mov [bp + 24], bp	; 3: 137 110 24
x13604:	add bp, 22	; 3: 131 197 22
x13607:	jmp floor	; 3: 233 96 1

pow$43:	; PostCall 22

pow$44:	; GetReturnValue £temporary566

pow$45:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x13610:	fstp qword [bp + 22]	; 3: 221 94 22

pow$46:	; PushFloat y
x13613:	fld qword [bp + 14]	; 3: 221 70 14

pow$47:	; Parameter 22 y 6
x13616:	fstp qword [bp + 36]	; 3: 221 94 36

pow$48:	; Call 22 ceil 0
x13619:	mov word [bp + 30], pow$49	; 5: 199 70 30 65 53
x13624:	mov [bp + 32], bp	; 3: 137 110 32
x13627:	add bp, 30	; 3: 131 197 30
x13630:	jmp ceil	; 3: 233 151 1

pow$49:	; PostCall 22
x13633:	fstp qword [bp + 30]	; 3: 221 94 30
x13636:	fld qword [bp + 22]	; 3: 221 70 22
x13639:	fld qword [bp + 30]	; 3: 221 70 30

pow$50:	; GetReturnValue £temporary567

pow$51:	; NotEqual 90 £temporary566 £temporary567
x13642:	fcompp	; 2: 222 217
x13644:	fstsw ax	; 3: 155 223 224
x13647:	sahf	; 1: 158
x13648:	jne pow$90	; 4: 15 133 169 0

pow$52:	; PushFloat y
x13652:	fld qword [bp + 14]	; 3: 221 70 14

pow$53:	; FloatingToIntegral £temporary570 y
x13655:	fistp dword [container4bytes#]	; 4: 219 30 56 48
x13659:	mov eax, [container4bytes#]	; 4: 102 161 56 48

pow$54:	; Assign long_y £temporary570
x13663:	mov [bp + 22], eax	; 4: 102 137 70 22

pow$55:	; SignedModulo £temporary571 long_y 2
x13667:	mov eax, [bp + 22]	; 4: 102 139 70 22
x13671:	xor edx, edx	; 3: 102 49 210
x13674:	idiv dword [int4$2#]	; 5: 102 247 62 16 54

pow$56:	; NotEqual 73 £temporary571 0
x13679:	cmp edx, 0	; 4: 102 131 250 0
x13683:	jne pow$73	; 2: 117 67

pow$57:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

pow$58:	; PushFloat y
x13685:	fld qword [bp + 14]	; 3: 221 70 14

pow$59:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x13688:	fstp qword [bp + 26]	; 3: 221 94 26

pow$60:	; PushFloat x
x13691:	fld qword [bp + 6]	; 3: 221 70 6

pow$61:	; UnarySubtract £temporary573 x
x13694:	fchs	; 2: 217 224

pow$62:	; Parameter 26 £temporary573 6
x13696:	fstp qword [bp + 40]	; 3: 221 94 40

pow$63:	; Call 26 log 0
x13699:	mov word [bp + 34], pow$64	; 5: 199 70 34 145 53
x13704:	mov [bp + 36], bp	; 3: 137 110 36
x13707:	add bp, 34	; 3: 131 197 34
x13710:	jmp log	; 3: 233 170 253

pow$64:	; PostCall 26
x13713:	fstp qword [bp + 34]	; 3: 221 94 34
x13716:	fld qword [bp + 26]	; 3: 221 70 26
x13719:	fld qword [bp + 34]	; 3: 221 70 34

pow$65:	; GetReturnValue £temporary574

pow$66:	; SignedMultiply £temporary575 y £temporary574
x13722:	fmul	; 2: 222 201

pow$67:	; Parameter 26 £temporary575 6
x13724:	fstp qword [bp + 32]	; 3: 221 94 32

pow$68:	; Call 26 exp 0
x13727:	mov word [bp + 26], pow$69	; 5: 199 70 26 173 53
x13732:	mov [bp + 28], bp	; 3: 137 110 28
x13735:	add bp, 26	; 3: 131 197 26
x13738:	nop	; 1: 144
x13739:	jmp exp	; 2: 235 103

pow$69:	; PostCall 26

pow$70:	; GetReturnValue £temporary576

pow$71:	; SetReturnValue £temporary576

pow$72:	; Return £temporary576
x13741:	mov ax, [bp]	; 3: 139 70 0
x13744:	mov di, [bp + 4]	; 3: 139 126 4
x13747:	mov bp, [bp + 2]	; 3: 139 110 2
x13750:	jmp ax	; 2: 255 224

pow$73:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

pow$74:	; PushFloat y
x13752:	fld qword [bp + 14]	; 3: 221 70 14

pow$75:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x13755:	fstp qword [bp + 26]	; 3: 221 94 26

pow$76:	; PushFloat x
x13758:	fld qword [bp + 6]	; 3: 221 70 6

pow$77:	; UnarySubtract £temporary577 x
x13761:	fchs	; 2: 217 224

pow$78:	; Parameter 26 £temporary577 6
x13763:	fstp qword [bp + 40]	; 3: 221 94 40

pow$79:	; Call 26 log 0
x13766:	mov word [bp + 34], pow$80	; 5: 199 70 34 212 53
x13771:	mov [bp + 36], bp	; 3: 137 110 36
x13774:	add bp, 34	; 3: 131 197 34
x13777:	jmp log	; 3: 233 103 253

pow$80:	; PostCall 26
x13780:	fstp qword [bp + 34]	; 3: 221 94 34
x13783:	fld qword [bp + 26]	; 3: 221 70 26
x13786:	fld qword [bp + 34]	; 3: 221 70 34

pow$81:	; GetReturnValue £temporary578

pow$82:	; SignedMultiply £temporary579 y £temporary578
x13789:	fmul	; 2: 222 201

pow$83:	; Parameter 26 £temporary579 6
x13791:	fstp qword [bp + 32]	; 3: 221 94 32

pow$84:	; Call 26 exp 0
x13794:	mov word [bp + 26], pow$85	; 5: 199 70 26 240 53
x13799:	mov [bp + 28], bp	; 3: 137 110 28
x13802:	add bp, 26	; 3: 131 197 26
x13805:	nop	; 1: 144
x13806:	jmp exp	; 2: 235 36

pow$85:	; PostCall 26

pow$86:	; GetReturnValue £temporary580

pow$87:	; UnarySubtract £temporary581 £temporary580
x13808:	fchs	; 2: 217 224

pow$88:	; SetReturnValue £temporary581

pow$89:	; Return £temporary581
x13810:	mov ax, [bp]	; 3: 139 70 0
x13813:	mov di, [bp + 4]	; 3: 139 126 4
x13816:	mov bp, [bp + 2]	; 3: 139 110 2
x13819:	jmp ax	; 2: 255 224

pow$90:	; Assign errno 6
x13821:	mov word [errno], 6	; 6: 199 6 0 21 6 0

pow$91:	; PushZero
x13827:	fldz	; 2: 217 238

pow$92:	; SetReturnValue 0

pow$93:	; Return 0
x13829:	mov ax, [bp]	; 3: 139 70 0
x13832:	mov di, [bp + 4]	; 3: 139 126 4
x13835:	mov bp, [bp + 2]	; 3: 139 110 2
x13838:	jmp ax	; 2: 255 224

pow$94:	; FunctionEnd pow

int4$2#:
x13840:	dd 2	; 4: 2 0 0 0

exp:	; PushOne
x13844:	fld1	; 2: 217 232

exp$1:	; PopFloat index
x13846:	fstp qword [bp + 14]	; 3: 221 94 14

exp$2:	; PushOne
x13849:	fld1	; 2: 217 232

exp$3:	; PopFloat sum
x13851:	fstp qword [bp + 30]	; 3: 221 94 30

exp$4:	; PushOne
x13854:	fld1	; 2: 217 232

exp$5:	; PopFloat faculty
x13856:	fstp qword [bp + 38]	; 3: 221 94 38

exp$6:	; PushFloat x
x13859:	fld qword [bp + 6]	; 3: 221 70 6

exp$7:	; PopFloat power
x13862:	fstp qword [bp + 46]	; 3: 221 94 46

exp$8:	; PushFloat power
x13865:	fld qword [bp + 46]	; 3: 221 70 46

exp$9:	; PushFloat faculty
x13868:	fld qword [bp + 38]	; 3: 221 70 38

exp$10:	; SignedDivide £temporary523 power faculty
x13871:	fdiv	; 2: 222 249

exp$11:	; PopFloat term
x13873:	fstp qword [bp + 22]	; 3: 221 94 22

exp$12:	; PushFloat sum
x13876:	fld qword [bp + 30]	; 3: 221 70 30

exp$13:	; PushFloat term
x13879:	fld qword [bp + 22]	; 3: 221 70 22

exp$14:	; BinaryAdd £temporary524 sum term
x13882:	fadd	; 2: 222 193

exp$15:	; PopFloat sum
x13884:	fstp qword [bp + 30]	; 3: 221 94 30

exp$16:	; PushFloat power
x13887:	fld qword [bp + 46]	; 3: 221 70 46

exp$17:	; PushFloat x
x13890:	fld qword [bp + 6]	; 3: 221 70 6

exp$18:	; SignedMultiply £temporary525 power x
x13893:	fmul	; 2: 222 201

exp$19:	; PopFloat power
x13895:	fstp qword [bp + 46]	; 3: 221 94 46

exp$20:	; PushFloat faculty
x13898:	fld qword [bp + 38]	; 3: 221 70 38

exp$21:	; PushFloat index
x13901:	fld qword [bp + 14]	; 3: 221 70 14

exp$22:	; PushOne
x13904:	fld1	; 2: 217 232

exp$23:	; BinaryAdd index index 1
x13906:	fadd	; 2: 222 193

exp$24:	; TopFloat index
x13908:	fst qword [bp + 14]	; 3: 221 86 14

exp$25:	; SignedMultiply £temporary527 faculty £temporary526
x13911:	fmul	; 2: 222 201

exp$26:	; PopFloat faculty
x13913:	fstp qword [bp + 38]	; 3: 221 94 38

exp$27:	; CallHeader 54 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

exp$28:	; PushFloat term
x13916:	fld qword [bp + 22]	; 3: 221 70 22

exp$29:	; Parameter 54 term 6
x13919:	fstp qword [bp + 60]	; 3: 221 94 60

exp$30:	; Call 54 fabs 0
x13922:	mov word [bp + 54], exp$31	; 5: 199 70 54 112 54
x13927:	mov [bp + 56], bp	; 3: 137 110 56
x13930:	add bp, 54	; 3: 131 197 54
x13933:	jmp fabs	; 3: 233 116 250

exp$31:	; PostCall 54

exp$32:	; GetReturnValue £temporary528

exp$33:	; PushFloat 0.000000001
x13936:	fld qword [float8$0.000000001#]	; 4: 221 6 99 52

exp$34:	; SignedGreaterThanEqual 8 £temporary528 0.000000001
x13940:	fcompp	; 2: 222 217
x13942:	fstsw ax	; 3: 155 223 224
x13945:	sahf	; 1: 158
x13946:	jbe exp$8	; 2: 118 173

exp$35:	; PushFloat sum
x13948:	fld qword [bp + 30]	; 3: 221 70 30

exp$36:	; SetReturnValue sum

exp$37:	; Return sum
x13951:	mov ax, [bp]	; 3: 139 70 0
x13954:	mov di, [bp + 4]	; 3: 139 126 4
x13957:	mov bp, [bp + 2]	; 3: 139 110 2
x13960:	jmp ax	; 2: 255 224

exp$38:	; FunctionEnd exp

floor:	; PushFloat x
x13962:	fld qword [bp + 6]	; 3: 221 70 6

floor$1:	; PushZero
x13965:	fldz	; 2: 217 238

floor$2:	; SignedGreaterThanEqual 13 x 0
x13967:	fcompp	; 2: 222 217
x13969:	fstsw ax	; 3: 155 223 224
x13972:	sahf	; 1: 158
x13973:	jbe floor$13	; 2: 118 35

floor$3:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

floor$4:	; PushFloat x
x13975:	fld qword [bp + 6]	; 3: 221 70 6

floor$5:	; UnarySubtract £temporary807 x
x13978:	fchs	; 2: 217 224

floor$6:	; Parameter 14 £temporary807 6
x13980:	fstp qword [bp + 20]	; 3: 221 94 20

floor$7:	; Call 14 ceil 0
x13983:	mov word [bp + 14], floor$8	; 5: 199 70 14 173 54
x13988:	mov [bp + 16], bp	; 3: 137 110 16
x13991:	add bp, 14	; 3: 131 197 14
x13994:	nop	; 1: 144
x13995:	jmp ceil	; 2: 235 43

floor$8:	; PostCall 14

floor$9:	; GetReturnValue £temporary808

floor$10:	; UnarySubtract £temporary809 £temporary808
x13997:	fchs	; 2: 217 224

floor$11:	; SetReturnValue £temporary809

floor$12:	; Return £temporary809
x13999:	mov ax, [bp]	; 3: 139 70 0
x14002:	mov di, [bp + 4]	; 3: 139 126 4
x14005:	mov bp, [bp + 2]	; 3: 139 110 2
x14008:	jmp ax	; 2: 255 224

floor$13:	; PushFloat x
x14010:	fld qword [bp + 6]	; 3: 221 70 6

floor$14:	; FloatingToIntegral £temporary810 x
x14013:	fistp dword [container4bytes#]	; 4: 219 30 56 48
x14017:	mov eax, [container4bytes#]	; 4: 102 161 56 48

floor$15:	; IntegralToFloating £temporary811 £temporary810
x14021:	mov [container4bytes#], eax	; 4: 102 163 56 48
x14025:	fild dword [container4bytes#]	; 4: 219 6 56 48

floor$16:	; SetReturnValue £temporary811

floor$17:	; Return £temporary811
x14029:	mov ax, [bp]	; 3: 139 70 0
x14032:	mov di, [bp + 4]	; 3: 139 126 4
x14035:	mov bp, [bp + 2]	; 3: 139 110 2
x14038:	jmp ax	; 2: 255 224

floor$18:	; FunctionEnd floor

ceil:	; PushFloat x
x14040:	fld qword [bp + 6]	; 3: 221 70 6

ceil$1:	; PushZero
x14043:	fldz	; 2: 217 238

ceil$2:	; SignedGreaterThanEqual 13 x 0
x14045:	fcompp	; 2: 222 217
x14047:	fstsw ax	; 3: 155 223 224
x14050:	sahf	; 1: 158
x14051:	jbe ceil$13	; 2: 118 35

ceil$3:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

ceil$4:	; PushFloat x
x14053:	fld qword [bp + 6]	; 3: 221 70 6

ceil$5:	; UnarySubtract £temporary814 x
x14056:	fchs	; 2: 217 224

ceil$6:	; Parameter 14 £temporary814 6
x14058:	fstp qword [bp + 20]	; 3: 221 94 20

ceil$7:	; Call 14 floor 0
x14061:	mov word [bp + 14], ceil$8	; 5: 199 70 14 251 54
x14066:	mov [bp + 16], bp	; 3: 137 110 16
x14069:	add bp, 14	; 3: 131 197 14
x14072:	nop	; 1: 144
x14073:	jmp floor	; 2: 235 143

ceil$8:	; PostCall 14

ceil$9:	; GetReturnValue £temporary815

ceil$10:	; UnarySubtract £temporary816 £temporary815
x14075:	fchs	; 2: 217 224

ceil$11:	; SetReturnValue £temporary816

ceil$12:	; Return £temporary816
x14077:	mov ax, [bp]	; 3: 139 70 0
x14080:	mov di, [bp + 4]	; 3: 139 126 4
x14083:	mov bp, [bp + 2]	; 3: 139 110 2
x14086:	jmp ax	; 2: 255 224

ceil$13:	; PushFloat x
x14088:	fld qword [bp + 6]	; 3: 221 70 6

ceil$14:	; PushFloat 0.999999999999
x14091:	fld qword [float8$0.999999999999#]	; 4: 221 6 44 55

ceil$15:	; BinaryAdd £temporary817 x 0.999999999999
x14095:	fadd	; 2: 222 193

ceil$16:	; FloatingToIntegral £temporary818 £temporary817
x14097:	fistp dword [container4bytes#]	; 4: 219 30 56 48
x14101:	mov eax, [container4bytes#]	; 4: 102 161 56 48

ceil$17:	; IntegralToFloating £temporary819 £temporary818
x14105:	mov [container4bytes#], eax	; 4: 102 163 56 48
x14109:	fild dword [container4bytes#]	; 4: 219 6 56 48

ceil$18:	; SetReturnValue £temporary819

ceil$19:	; Return £temporary819
x14113:	mov ax, [bp]	; 3: 139 70 0
x14116:	mov di, [bp + 4]	; 3: 139 126 4
x14119:	mov bp, [bp + 2]	; 3: 139 110 2
x14122:	jmp ax	; 2: 255 224

ceil$20:	; FunctionEnd ceil

float8$0.999999999999#:
x14124:	dq 0.999999999999	; 8: 209 220 255 255 255 255 239 63

isdigit:	; SignedLessThan 4 c 48
x14132:	cmp word [bp + 6], 48	; 4: 131 126 6 48
x14136:	jl isdigit$4	; 2: 124 11

isdigit$1:	; SignedGreaterThan 4 c 57
x14138:	cmp word [bp + 6], 57	; 4: 131 126 6 57
x14142:	jg isdigit$4	; 2: 127 5

isdigit$2:	; Assign £temporary408 1
x14144:	mov bx, 1	; 3: 187 1 0

isdigit$3:	; Goto 5
x14147:	jmp isdigit$5	; 2: 235 3

isdigit$4:	; Assign £temporary408 0
x14149:	mov bx, 0	; 3: 187 0 0

isdigit$5:	; SetReturnValue £temporary408

isdigit$6:	; Return £temporary408
x14152:	mov ax, [bp]	; 3: 139 70 0
x14155:	mov di, [bp + 4]	; 3: 139 126 4
x14158:	mov bp, [bp + 2]	; 3: 139 110 2
x14161:	jmp ax	; 2: 255 224

isdigit$7:	; FunctionEnd isdigit

abort:	; AssignRegister ah 76
x14163:	mov ah, 76	; 2: 180 76

abort$1:	; AssignRegister al -255
x14165:	mov al, -255	; 2: 176 1

abort$2:	; Interrupt 33
x14167:	int 33	; 2: 205 33

abort$3:	; Return 0
x14169:	mov ax, [bp]	; 3: 139 70 0
x14172:	mov di, [bp + 4]	; 3: 139 126 4
x14175:	mov bp, [bp + 2]	; 3: 139 110 2
x14178:	jmp ax	; 2: 255 224

abort$4:	; FunctionEnd abort

fscanf:	; address £temporary1752 format
x14180:	mov si, bp	; 2: 137 238
x14182:	add si, 8	; 3: 131 198 8

fscanf$1:	; IntegralToIntegral £temporary1753 £temporary1752

fscanf$2:	; BinaryAdd arg_list £temporary1753 2
x14185:	add si, 2	; 3: 131 198 2
x14188:	mov [di + 10], si	; 3: 137 117 10

fscanf$3:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

fscanf$4:	; Parameter 12 inStream 6
x14191:	mov ax, [bp + 6]	; 3: 139 70 6
x14194:	mov [di + 18], ax	; 3: 137 69 18

fscanf$5:	; Parameter 12 format 8
x14197:	mov ax, [bp + 8]	; 3: 139 70 8
x14200:	mov [di + 20], ax	; 3: 137 69 20

fscanf$6:	; Parameter 12 arg_list 10
x14203:	mov ax, [di + 10]	; 3: 139 69 10
x14206:	mov [di + 22], ax	; 3: 137 69 22

fscanf$7:	; Call 12 vfscanf 0
x14209:	mov word [di + 12], fscanf$8	; 5: 199 69 12 148 55
x14214:	mov [di + 14], bp	; 3: 137 109 14
x14217:	mov [di + 16], di	; 3: 137 125 16
x14220:	add di, 12	; 3: 131 199 12
x14223:	mov bp, di	; 2: 137 253
x14225:	nop	; 1: 144
x14226:	jmp vfscanf	; 2: 235 11

fscanf$8:	; PostCall 12

fscanf$9:	; GetReturnValue £temporary1755

fscanf$10:	; SetReturnValue £temporary1755

fscanf$11:	; Return £temporary1755
x14228:	mov ax, [bp]	; 3: 139 70 0
x14231:	mov di, [bp + 4]	; 3: 139 126 4
x14234:	mov bp, [bp + 2]	; 3: 139 110 2
x14237:	jmp ax	; 2: 255 224

fscanf$12:	; FunctionEnd fscanf

vfscanf:	; Assign g_inStatus 0
x14239:	mov word [g_inStatus], 0	; 6: 199 6 208 55 0 0

vfscanf$1:	; IntegralToIntegral £temporary1760 inStream
x14245:	mov ax, [bp + 6]	; 3: 139 70 6

vfscanf$2:	; Assign g_inDevice £temporary1760
x14248:	mov [g_inDevice], ax	; 3: 163 210 55

vfscanf$3:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

vfscanf$4:	; Parameter 12 format 6
x14251:	mov ax, [bp + 8]	; 3: 139 70 8
x14254:	mov [bp + 18], ax	; 3: 137 70 18

vfscanf$5:	; Parameter 12 arg_list 8
x14257:	mov ax, [bp + 10]	; 3: 139 70 10
x14260:	mov [bp + 20], ax	; 3: 137 70 20

vfscanf$6:	; Call 12 scanFormat 0
x14263:	mov word [bp + 12], vfscanf$7	; 5: 199 70 12 197 55
x14268:	mov [bp + 14], bp	; 3: 137 110 14
x14271:	add bp, 12	; 3: 131 197 12
x14274:	nop	; 1: 144
x14275:	jmp scanFormat	; 2: 235 15

vfscanf$7:	; PostCall 12

vfscanf$8:	; GetReturnValue £temporary1761

vfscanf$9:	; SetReturnValue £temporary1761

vfscanf$10:	; Return £temporary1761
x14277:	mov ax, [bp]	; 3: 139 70 0
x14280:	mov di, [bp + 4]	; 3: 139 126 4
x14283:	mov bp, [bp + 2]	; 3: 139 110 2
x14286:	jmp ax	; 2: 255 224

vfscanf$11:	; FunctionEnd vfscanf

g_inStatus:
x14288:	db 0, 0	; 2: 0 0

g_inDevice:
x14290:	db 0, 0	; 2: 0 0

scanFormat:	; Assign percent 0
x14292:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$1:	; Assign shortInt 0
x14297:	mov word [bp + 15], 0	; 5: 199 70 15 0 0

scanFormat$2:	; Assign longIntOrDouble 0
x14302:	mov word [bp + 17], 0	; 5: 199 70 17 0 0

scanFormat$3:	; Assign longDouble 0
x14307:	mov word [bp + 19], 0	; 5: 199 70 19 0 0

scanFormat$4:	; Assign star 0
x14312:	mov word [bp + 21], 0	; 5: 199 70 21 0 0

scanFormat$5:	; Assign g_inCount 0
x14317:	mov word [g_inCount], 0	; 6: 199 6 244 60 0 0

scanFormat$6:	; Assign g_inChars 0
x14323:	mov word [g_inChars], 0	; 6: 199 6 246 60 0 0

scanFormat$7:	; Assign index 0
x14329:	mov word [bp + 31], 0	; 5: 199 70 31 0 0

scanFormat$8:	; BinaryAdd £temporary1550 format index
x14334:	mov si, [bp + 6]	; 3: 139 118 6
x14337:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$9:	; Deref £temporary1549 -> £temporary1550 £temporary1550 0

scanFormat$10:	; Equal 327 £temporary1549 -> £temporary1550 0
x14340:	cmp byte [si], 0	; 3: 128 60 0
x14343:	je scanFormat$327	; 4: 15 132 218 4

scanFormat$11:	; BinaryAdd £temporary1554 format index
x14347:	mov si, [bp + 6]	; 3: 139 118 6
x14350:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$12:	; Deref £temporary1553 -> £temporary1554 £temporary1554 0

scanFormat$13:	; Assign c £temporary1553 -> £temporary1554
x14353:	mov al, [si]	; 2: 138 4
x14355:	mov [bp + 10], al	; 3: 136 70 10

scanFormat$14:	; IntegralToIntegral £temporary1555 c
x14358:	mov al, [bp + 10]	; 3: 138 70 10
x14361:	and ax, 255	; 3: 37 255 0
x14364:	cmp al, 0	; 2: 60 0
x14366:	jge scanFormat$15	; 2: 125 4
x14368:	neg al	; 2: 246 216
x14370:	neg ax	; 2: 247 216

scanFormat$15:	; BinaryAdd d £temporary1555 1
x14372:	inc ax	; 1: 64
x14373:	mov [bp + 55], ax	; 3: 137 70 55

scanFormat$16:	; Equal 319 percent 0
x14376:	cmp word [bp + 13], 0	; 4: 131 126 13 0
x14380:	je scanFormat$319	; 4: 15 132 144 4

scanFormat$17:	; BinarySubtract £temporary1557 d 1
x14384:	mov ax, [bp + 55]	; 3: 139 70 55
x14387:	dec ax	; 1: 72

scanFormat$18:	; Case 36 £temporary1557 104
x14388:	cmp ax, 104	; 3: 131 248 104
x14391:	je scanFormat$36	; 2: 116 100

scanFormat$19:	; Case 38 £temporary1557 108
x14393:	cmp ax, 108	; 3: 131 248 108
x14396:	je scanFormat$38	; 2: 116 103

scanFormat$20:	; Case 40 £temporary1557 76
x14398:	cmp ax, 76	; 3: 131 248 76
x14401:	je scanFormat$40	; 2: 116 106

scanFormat$21:	; Case 42 £temporary1557 42
x14403:	cmp ax, 42	; 3: 131 248 42
x14406:	je scanFormat$42	; 2: 116 109

scanFormat$22:	; Case 44 £temporary1557 99
x14408:	cmp ax, 99	; 3: 131 248 99
x14411:	je scanFormat$44	; 2: 116 112

scanFormat$23:	; Case 62 £temporary1557 115
x14413:	cmp ax, 115	; 3: 131 248 115
x14416:	je scanFormat$62	; 4: 15 132 184 0

scanFormat$24:	; Case 81 £temporary1557 100
x14420:	cmp ax, 100	; 3: 131 248 100
x14423:	je scanFormat$81	; 4: 15 132 1 1

scanFormat$25:	; Case 81 £temporary1557 105
x14427:	cmp ax, 105	; 3: 131 248 105
x14430:	je scanFormat$81	; 4: 15 132 250 0

scanFormat$26:	; Case 117 £temporary1557 111
x14434:	cmp ax, 111	; 3: 131 248 111
x14437:	je scanFormat$117	; 4: 15 132 135 1

scanFormat$27:	; Case 153 £temporary1557 120
x14441:	cmp ax, 120	; 3: 131 248 120
x14444:	je scanFormat$153	; 4: 15 132 254 1

scanFormat$28:	; Case 189 £temporary1557 117
x14448:	cmp ax, 117	; 3: 131 248 117
x14451:	je scanFormat$189	; 4: 15 132 117 2

scanFormat$29:	; Case 225 £temporary1557 103
x14455:	cmp ax, 103	; 3: 131 248 103
x14458:	je scanFormat$225	; 4: 15 132 236 2

scanFormat$30:	; Case 225 £temporary1557 102
x14462:	cmp ax, 102	; 3: 131 248 102
x14465:	je scanFormat$225	; 4: 15 132 229 2

scanFormat$31:	; Case 225 £temporary1557 101
x14469:	cmp ax, 101	; 3: 131 248 101
x14472:	je scanFormat$225	; 4: 15 132 222 2

scanFormat$32:	; Case 261 £temporary1557 91
x14476:	cmp ax, 91	; 3: 131 248 91
x14479:	je scanFormat$261	; 4: 15 132 75 3

scanFormat$33:	; Case 303 £temporary1557 110
x14483:	cmp ax, 110	; 3: 131 248 110
x14486:	je scanFormat$303	; 4: 15 132 221 3

scanFormat$34:	; CaseEnd £temporary1557

scanFormat$35:	; Goto 312
x14490:	jmp scanFormat$312	; 3: 233 248 3

scanFormat$36:	; Assign shortInt 1
x14493:	mov word [bp + 15], 1	; 5: 199 70 15 1 0

scanFormat$37:	; Goto 325
x14498:	jmp scanFormat$325	; 3: 233 58 4

scanFormat$38:	; Assign longIntOrDouble 1
x14501:	mov word [bp + 17], 1	; 5: 199 70 17 1 0

scanFormat$39:	; Goto 325
x14506:	jmp scanFormat$325	; 3: 233 50 4

scanFormat$40:	; Assign longDouble 1
x14509:	mov word [bp + 19], 1	; 5: 199 70 19 1 0

scanFormat$41:	; Goto 325
x14514:	jmp scanFormat$325	; 3: 233 42 4

scanFormat$42:	; Assign star 1
x14517:	mov word [bp + 21], 1	; 5: 199 70 21 1 0

scanFormat$43:	; Goto 325
x14522:	jmp scanFormat$325	; 3: 233 34 4

scanFormat$44:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$45:	; Call 57 scanChar 0
x14525:	mov word [bp + 57], scanFormat$46	; 5: 199 70 57 203 56
x14530:	mov [bp + 59], bp	; 3: 137 110 59
x14533:	add bp, 57	; 3: 131 197 57
x14536:	jmp scanChar	; 3: 233 66 4

scanFormat$46:	; PostCall 57

scanFormat$47:	; GetReturnValue £temporary1558

scanFormat$48:	; Assign charValue £temporary1558
x14539:	mov [bp + 57], bl	; 3: 136 94 57

scanFormat$49:	; NotEqual 57 star 0
x14542:	cmp word [bp + 21], 0	; 4: 131 126 21 0
x14546:	jne scanFormat$57	; 2: 117 23

scanFormat$50:	; BinaryAdd arg_list arg_list 2
x14548:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$51:	; BinarySubtract £temporary1562 arg_list 2
x14552:	mov si, [bp + 8]	; 3: 139 118 8
x14555:	sub si, 2	; 3: 131 238 2

scanFormat$52:	; IntegralToIntegral £temporary1563 £temporary1562

scanFormat$53:	; Deref £temporary1564 -> £temporary1563 £temporary1563 0

scanFormat$54:	; Assign charPtr £temporary1564 -> £temporary1563
x14558:	mov ax, [si]	; 2: 139 4
x14560:	mov [bp + 11], ax	; 3: 137 70 11

scanFormat$55:	; Deref £temporary1565 -> charPtr charPtr 0
x14563:	mov si, [bp + 11]	; 3: 139 118 11

scanFormat$56:	; Assign £temporary1565 -> charPtr charValue
x14566:	mov al, [bp + 57]	; 3: 138 70 57
x14569:	mov [si], al	; 2: 136 4

scanFormat$57:	; Assign percent 0
x14571:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$58:	; IntegralToIntegral £temporary1566 charValue
x14576:	mov al, [bp + 57]	; 3: 138 70 57
x14579:	and ax, 255	; 3: 37 255 0
x14582:	cmp al, 0	; 2: 60 0
x14584:	jge scanFormat$59	; 2: 125 4
x14586:	neg al	; 2: 246 216
x14588:	neg ax	; 2: 247 216

scanFormat$59:	; Equal 325 £temporary1566 -1
x14590:	cmp ax, -1	; 3: 131 248 255
x14593:	je scanFormat$325	; 4: 15 132 218 3

scanFormat$60:	; Increment g_inCount
x14597:	inc word [g_inCount]	; 4: 255 6 244 60

scanFormat$61:	; Goto 325
x14601:	jmp scanFormat$325	; 3: 233 211 3

scanFormat$62:	; NotEqual 74 star 0
x14604:	cmp word [bp + 21], 0	; 4: 131 126 21 0
x14608:	jne scanFormat$74	; 2: 117 42

scanFormat$63:	; BinaryAdd arg_list arg_list 2
x14610:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$64:	; BinarySubtract £temporary1572 arg_list 2
x14614:	mov si, [bp + 8]	; 3: 139 118 8
x14617:	sub si, 2	; 3: 131 238 2

scanFormat$65:	; IntegralToIntegral £temporary1573 £temporary1572

scanFormat$66:	; Deref £temporary1574 -> £temporary1573 £temporary1573 0

scanFormat$67:	; Assign charPtr £temporary1574 -> £temporary1573
x14620:	mov ax, [si]	; 2: 139 4
x14622:	mov [bp + 11], ax	; 3: 137 70 11

scanFormat$68:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$69:	; Parameter 57 charPtr 6
x14625:	mov ax, [bp + 11]	; 3: 139 70 11
x14628:	mov [bp + 63], ax	; 3: 137 70 63

scanFormat$70:	; Parameter 57 0 8
x14631:	mov word [bp + 65], 0	; 5: 199 70 65 0 0

scanFormat$71:	; Call 57 scanString 0
x14636:	mov word [bp + 57], scanFormat$72	; 5: 199 70 57 58 57
x14641:	mov [bp + 59], bp	; 3: 137 110 59
x14644:	add bp, 57	; 3: 131 197 57
x14647:	jmp scanString	; 3: 233 66 4

scanFormat$72:	; PostCall 57

scanFormat$73:	; Goto 79
x14650:	jmp scanFormat$79	; 2: 235 24

scanFormat$74:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$75:	; Parameter 57 0 6
x14652:	mov word [bp + 63], 0	; 5: 199 70 63 0 0

scanFormat$76:	; Parameter 57 0 8
x14657:	mov word [bp + 65], 0	; 5: 199 70 65 0 0

scanFormat$77:	; Call 57 scanString 0
x14662:	mov word [bp + 57], scanFormat$78	; 5: 199 70 57 84 57
x14667:	mov [bp + 59], bp	; 3: 137 110 59
x14670:	add bp, 57	; 3: 131 197 57
x14673:	jmp scanString	; 3: 233 40 4

scanFormat$78:	; PostCall 57

scanFormat$79:	; Assign percent 0
x14676:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$80:	; Goto 325
x14681:	jmp scanFormat$325	; 3: 233 131 3

scanFormat$81:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$82:	; Parameter 57 10 6
x14684:	mov word [bp + 63], 10	; 5: 199 70 63 10 0

scanFormat$83:	; Call 57 scanLongInt 0
x14689:	mov word [bp + 57], scanFormat$84	; 5: 199 70 57 111 57
x14694:	mov [bp + 59], bp	; 3: 137 110 59
x14697:	add bp, 57	; 3: 131 197 57
x14700:	jmp scanLongInt	; 3: 233 145 6

scanFormat$84:	; PostCall 57

scanFormat$85:	; GetReturnValue £temporary1577

scanFormat$86:	; Assign longValue £temporary1577
x14703:	mov [bp + 23], ebx	; 4: 102 137 94 23

scanFormat$87:	; NotEqual 115 star 0
x14707:	cmp word [bp + 21], 0	; 4: 131 126 21 0
x14711:	jne scanFormat$115	; 2: 117 111

scanFormat$88:	; Equal 98 shortInt 0
x14713:	cmp word [bp + 15], 0	; 4: 131 126 15 0
x14717:	je scanFormat$98	; 2: 116 37

scanFormat$89:	; BinaryAdd arg_list arg_list 2
x14719:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$90:	; BinarySubtract £temporary1581 arg_list 2
x14723:	mov si, [bp + 8]	; 3: 139 118 8
x14726:	sub si, 2	; 3: 131 238 2

scanFormat$91:	; IntegralToIntegral £temporary1582 £temporary1581

scanFormat$92:	; Deref £temporary1583 -> £temporary1582 £temporary1582 0

scanFormat$93:	; Assign shortPtr £temporary1583 -> £temporary1582
x14729:	mov ax, [si]	; 2: 139 4
x14731:	mov [bp + 29], ax	; 3: 137 70 29

scanFormat$94:	; Deref £temporary1584 -> shortPtr shortPtr 0
x14734:	mov si, [bp + 29]	; 3: 139 118 29

scanFormat$95:	; IntegralToIntegral £temporary1585 longValue
x14737:	mov eax, [bp + 23]	; 4: 102 139 70 23
x14741:	cmp eax, 0	; 4: 102 131 248 0
x14745:	jge scanFormat$96	; 2: 125 5
x14747:	neg eax	; 3: 102 247 216
x14750:	neg al	; 2: 246 216

scanFormat$96:	; Assign £temporary1584 -> shortPtr £temporary1585
x14752:	mov [si], al	; 2: 136 4

scanFormat$97:	; Goto 115
x14754:	jmp scanFormat$115	; 2: 235 68

scanFormat$98:	; NotEqual 108 longIntOrDouble 0
x14756:	cmp word [bp + 17], 0	; 4: 131 126 17 0
x14760:	jne scanFormat$108	; 2: 117 37

scanFormat$99:	; BinaryAdd arg_list arg_list 2
x14762:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$100:	; BinarySubtract £temporary1589 arg_list 2
x14766:	mov si, [bp + 8]	; 3: 139 118 8
x14769:	sub si, 2	; 3: 131 238 2

scanFormat$101:	; IntegralToIntegral £temporary1590 £temporary1589

scanFormat$102:	; Deref £temporary1591 -> £temporary1590 £temporary1590 0

scanFormat$103:	; Assign intPtr £temporary1591 -> £temporary1590
x14772:	mov ax, [si]	; 2: 139 4
x14774:	mov [bp + 33], ax	; 3: 137 70 33

scanFormat$104:	; Deref £temporary1592 -> intPtr intPtr 0
x14777:	mov si, [bp + 33]	; 3: 139 118 33

scanFormat$105:	; IntegralToIntegral £temporary1593 longValue
x14780:	mov eax, [bp + 23]	; 4: 102 139 70 23
x14784:	cmp eax, 0	; 4: 102 131 248 0
x14788:	jge scanFormat$106	; 2: 125 5
x14790:	neg eax	; 3: 102 247 216
x14793:	neg ax	; 2: 247 216

scanFormat$106:	; Assign £temporary1592 -> intPtr £temporary1593
x14795:	mov [si], ax	; 2: 137 4

scanFormat$107:	; Goto 115
x14797:	jmp scanFormat$115	; 2: 235 25

scanFormat$108:	; BinaryAdd arg_list arg_list 2
x14799:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$109:	; BinarySubtract £temporary1595 arg_list 2
x14803:	mov si, [bp + 8]	; 3: 139 118 8
x14806:	sub si, 2	; 3: 131 238 2

scanFormat$110:	; IntegralToIntegral £temporary1596 £temporary1595

scanFormat$111:	; Deref £temporary1597 -> £temporary1596 £temporary1596 0

scanFormat$112:	; Assign longPtr £temporary1597 -> £temporary1596
x14809:	mov ax, [si]	; 2: 139 4
x14811:	mov [bp + 27], ax	; 3: 137 70 27

scanFormat$113:	; Deref £temporary1598 -> longPtr longPtr 0
x14814:	mov si, [bp + 27]	; 3: 139 118 27

scanFormat$114:	; Assign £temporary1598 -> longPtr longValue
x14817:	mov eax, [bp + 23]	; 4: 102 139 70 23
x14821:	mov [si], eax	; 3: 102 137 4

scanFormat$115:	; Assign percent 0
x14824:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$116:	; Goto 325
x14829:	jmp scanFormat$325	; 3: 233 239 2

scanFormat$117:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$118:	; Parameter 57 8 6
x14832:	mov word [bp + 63], 8	; 5: 199 70 63 8 0

scanFormat$119:	; Call 57 scanUnsignedLongInt 0
x14837:	mov word [bp + 57], scanFormat$120	; 5: 199 70 57 3 58
x14842:	mov [bp + 59], bp	; 3: 137 110 59
x14845:	add bp, 57	; 3: 131 197 57
x14848:	jmp scanUnsignedLongInt	; 3: 233 55 10

scanFormat$120:	; PostCall 57

scanFormat$121:	; GetReturnValue £temporary1600

scanFormat$122:	; Assign unsignedLongValue £temporary1600
x14851:	mov [bp + 37], ebx	; 4: 102 137 94 37

scanFormat$123:	; NotEqual 151 star 0
x14855:	cmp word [bp + 21], 0	; 4: 131 126 21 0
x14859:	jne scanFormat$151	; 2: 117 89

scanFormat$124:	; Equal 134 shortInt 0
x14861:	cmp word [bp + 15], 0	; 4: 131 126 15 0
x14865:	je scanFormat$134	; 2: 116 26

scanFormat$125:	; BinaryAdd arg_list arg_list 2
x14867:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$126:	; BinarySubtract £temporary1604 arg_list 2
x14871:	mov si, [bp + 8]	; 3: 139 118 8
x14874:	sub si, 2	; 3: 131 238 2

scanFormat$127:	; IntegralToIntegral £temporary1605 £temporary1604

scanFormat$128:	; Deref £temporary1606 -> £temporary1605 £temporary1605 0

scanFormat$129:	; Assign unsignedShortPtr £temporary1606 -> £temporary1605
x14877:	mov ax, [si]	; 2: 139 4
x14879:	mov [bp + 43], ax	; 3: 137 70 43

scanFormat$130:	; Deref £temporary1607 -> unsignedShortPtr unsignedShortPtr 0
x14882:	mov si, [bp + 43]	; 3: 139 118 43

scanFormat$131:	; IntegralToIntegral £temporary1608 unsignedLongValue
x14885:	mov eax, [bp + 37]	; 4: 102 139 70 37

scanFormat$132:	; Assign £temporary1607 -> unsignedShortPtr £temporary1608
x14889:	mov [si], al	; 2: 136 4

scanFormat$133:	; Goto 151
x14891:	jmp scanFormat$151	; 2: 235 57

scanFormat$134:	; NotEqual 144 longIntOrDouble 0
x14893:	cmp word [bp + 17], 0	; 4: 131 126 17 0
x14897:	jne scanFormat$144	; 2: 117 26

scanFormat$135:	; BinaryAdd arg_list arg_list 2
x14899:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$136:	; BinarySubtract £temporary1612 arg_list 2
x14903:	mov si, [bp + 8]	; 3: 139 118 8
x14906:	sub si, 2	; 3: 131 238 2

scanFormat$137:	; IntegralToIntegral £temporary1613 £temporary1612

scanFormat$138:	; Deref £temporary1614 -> £temporary1613 £temporary1613 0

scanFormat$139:	; Assign unsignedIntPtr £temporary1614 -> £temporary1613
x14909:	mov ax, [si]	; 2: 139 4
x14911:	mov [bp + 45], ax	; 3: 137 70 45

scanFormat$140:	; Deref £temporary1615 -> unsignedIntPtr unsignedIntPtr 0
x14914:	mov si, [bp + 45]	; 3: 139 118 45

scanFormat$141:	; IntegralToIntegral £temporary1616 unsignedLongValue
x14917:	mov eax, [bp + 37]	; 4: 102 139 70 37

scanFormat$142:	; Assign £temporary1615 -> unsignedIntPtr £temporary1616
x14921:	mov [si], ax	; 2: 137 4

scanFormat$143:	; Goto 151
x14923:	jmp scanFormat$151	; 2: 235 25

scanFormat$144:	; BinaryAdd arg_list arg_list 2
x14925:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$145:	; BinarySubtract £temporary1618 arg_list 2
x14929:	mov si, [bp + 8]	; 3: 139 118 8
x14932:	sub si, 2	; 3: 131 238 2

scanFormat$146:	; IntegralToIntegral £temporary1619 £temporary1618

scanFormat$147:	; Deref £temporary1620 -> £temporary1619 £temporary1619 0

scanFormat$148:	; Assign unsignedLongPtr £temporary1620 -> £temporary1619
x14935:	mov ax, [si]	; 2: 139 4
x14937:	mov [bp + 41], ax	; 3: 137 70 41

scanFormat$149:	; Deref £temporary1621 -> unsignedLongPtr unsignedLongPtr 0
x14940:	mov si, [bp + 41]	; 3: 139 118 41

scanFormat$150:	; Assign £temporary1621 -> unsignedLongPtr unsignedLongValue
x14943:	mov eax, [bp + 37]	; 4: 102 139 70 37
x14947:	mov [si], eax	; 3: 102 137 4

scanFormat$151:	; Assign percent 0
x14950:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$152:	; Goto 325
x14955:	jmp scanFormat$325	; 3: 233 113 2

scanFormat$153:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$154:	; Parameter 57 16 6
x14958:	mov word [bp + 63], 16	; 5: 199 70 63 16 0

scanFormat$155:	; Call 57 scanUnsignedLongInt 0
x14963:	mov word [bp + 57], scanFormat$156	; 5: 199 70 57 129 58
x14968:	mov [bp + 59], bp	; 3: 137 110 59
x14971:	add bp, 57	; 3: 131 197 57
x14974:	jmp scanUnsignedLongInt	; 3: 233 185 9

scanFormat$156:	; PostCall 57

scanFormat$157:	; GetReturnValue £temporary1623

scanFormat$158:	; Assign unsignedLongValue £temporary1623
x14977:	mov [bp + 37], ebx	; 4: 102 137 94 37

scanFormat$159:	; NotEqual 187 star 0
x14981:	cmp word [bp + 21], 0	; 4: 131 126 21 0
x14985:	jne scanFormat$187	; 2: 117 89

scanFormat$160:	; Equal 170 shortInt 0
x14987:	cmp word [bp + 15], 0	; 4: 131 126 15 0
x14991:	je scanFormat$170	; 2: 116 26

scanFormat$161:	; BinaryAdd arg_list arg_list 2
x14993:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$162:	; BinarySubtract £temporary1627 arg_list 2
x14997:	mov si, [bp + 8]	; 3: 139 118 8
x15000:	sub si, 2	; 3: 131 238 2

scanFormat$163:	; IntegralToIntegral £temporary1628 £temporary1627

scanFormat$164:	; Deref £temporary1629 -> £temporary1628 £temporary1628 0

scanFormat$165:	; Assign unsignedShortPtr £temporary1629 -> £temporary1628
x15003:	mov ax, [si]	; 2: 139 4
x15005:	mov [bp + 43], ax	; 3: 137 70 43

scanFormat$166:	; Deref £temporary1630 -> unsignedShortPtr unsignedShortPtr 0
x15008:	mov si, [bp + 43]	; 3: 139 118 43

scanFormat$167:	; IntegralToIntegral £temporary1631 unsignedLongValue
x15011:	mov eax, [bp + 37]	; 4: 102 139 70 37

scanFormat$168:	; Assign £temporary1630 -> unsignedShortPtr £temporary1631
x15015:	mov [si], al	; 2: 136 4

scanFormat$169:	; Goto 187
x15017:	jmp scanFormat$187	; 2: 235 57

scanFormat$170:	; NotEqual 180 longIntOrDouble 0
x15019:	cmp word [bp + 17], 0	; 4: 131 126 17 0
x15023:	jne scanFormat$180	; 2: 117 26

scanFormat$171:	; BinaryAdd arg_list arg_list 2
x15025:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$172:	; BinarySubtract £temporary1635 arg_list 2
x15029:	mov si, [bp + 8]	; 3: 139 118 8
x15032:	sub si, 2	; 3: 131 238 2

scanFormat$173:	; IntegralToIntegral £temporary1636 £temporary1635

scanFormat$174:	; Deref £temporary1637 -> £temporary1636 £temporary1636 0

scanFormat$175:	; Assign unsignedIntPtr £temporary1637 -> £temporary1636
x15035:	mov ax, [si]	; 2: 139 4
x15037:	mov [bp + 45], ax	; 3: 137 70 45

scanFormat$176:	; Deref £temporary1638 -> unsignedIntPtr unsignedIntPtr 0
x15040:	mov si, [bp + 45]	; 3: 139 118 45

scanFormat$177:	; IntegralToIntegral £temporary1639 unsignedLongValue
x15043:	mov eax, [bp + 37]	; 4: 102 139 70 37

scanFormat$178:	; Assign £temporary1638 -> unsignedIntPtr £temporary1639
x15047:	mov [si], ax	; 2: 137 4

scanFormat$179:	; Goto 187
x15049:	jmp scanFormat$187	; 2: 235 25

scanFormat$180:	; BinaryAdd arg_list arg_list 2
x15051:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$181:	; BinarySubtract £temporary1641 arg_list 2
x15055:	mov si, [bp + 8]	; 3: 139 118 8
x15058:	sub si, 2	; 3: 131 238 2

scanFormat$182:	; IntegralToIntegral £temporary1642 £temporary1641

scanFormat$183:	; Deref £temporary1643 -> £temporary1642 £temporary1642 0

scanFormat$184:	; Assign unsignedLongPtr £temporary1643 -> £temporary1642
x15061:	mov ax, [si]	; 2: 139 4
x15063:	mov [bp + 41], ax	; 3: 137 70 41

scanFormat$185:	; Deref £temporary1644 -> unsignedLongPtr unsignedLongPtr 0
x15066:	mov si, [bp + 41]	; 3: 139 118 41

scanFormat$186:	; Assign £temporary1644 -> unsignedLongPtr unsignedLongValue
x15069:	mov eax, [bp + 37]	; 4: 102 139 70 37
x15073:	mov [si], eax	; 3: 102 137 4

scanFormat$187:	; Assign percent 0
x15076:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$188:	; Goto 325
x15081:	jmp scanFormat$325	; 3: 233 243 1

scanFormat$189:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$190:	; Parameter 57 0 6
x15084:	mov word [bp + 63], 0	; 5: 199 70 63 0 0

scanFormat$191:	; Call 57 scanUnsignedLongInt 0
x15089:	mov word [bp + 57], scanFormat$192	; 5: 199 70 57 255 58
x15094:	mov [bp + 59], bp	; 3: 137 110 59
x15097:	add bp, 57	; 3: 131 197 57
x15100:	jmp scanUnsignedLongInt	; 3: 233 59 9

scanFormat$192:	; PostCall 57

scanFormat$193:	; GetReturnValue £temporary1646

scanFormat$194:	; Assign unsignedLongValue £temporary1646
x15103:	mov [bp + 37], ebx	; 4: 102 137 94 37

scanFormat$195:	; NotEqual 223 star 0
x15107:	cmp word [bp + 21], 0	; 4: 131 126 21 0
x15111:	jne scanFormat$223	; 2: 117 89

scanFormat$196:	; Equal 206 shortInt 0
x15113:	cmp word [bp + 15], 0	; 4: 131 126 15 0
x15117:	je scanFormat$206	; 2: 116 26

scanFormat$197:	; BinaryAdd arg_list arg_list 2
x15119:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$198:	; BinarySubtract £temporary1650 arg_list 2
x15123:	mov si, [bp + 8]	; 3: 139 118 8
x15126:	sub si, 2	; 3: 131 238 2

scanFormat$199:	; IntegralToIntegral £temporary1651 £temporary1650

scanFormat$200:	; Deref £temporary1652 -> £temporary1651 £temporary1651 0

scanFormat$201:	; Assign unsignedShortPtr £temporary1652 -> £temporary1651
x15129:	mov ax, [si]	; 2: 139 4
x15131:	mov [bp + 43], ax	; 3: 137 70 43

scanFormat$202:	; Deref £temporary1653 -> unsignedShortPtr unsignedShortPtr 0
x15134:	mov si, [bp + 43]	; 3: 139 118 43

scanFormat$203:	; IntegralToIntegral £temporary1654 unsignedLongValue
x15137:	mov eax, [bp + 37]	; 4: 102 139 70 37

scanFormat$204:	; Assign £temporary1653 -> unsignedShortPtr £temporary1654
x15141:	mov [si], al	; 2: 136 4

scanFormat$205:	; Goto 223
x15143:	jmp scanFormat$223	; 2: 235 57

scanFormat$206:	; NotEqual 216 longIntOrDouble 0
x15145:	cmp word [bp + 17], 0	; 4: 131 126 17 0
x15149:	jne scanFormat$216	; 2: 117 26

scanFormat$207:	; BinaryAdd arg_list arg_list 2
x15151:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$208:	; BinarySubtract £temporary1658 arg_list 2
x15155:	mov si, [bp + 8]	; 3: 139 118 8
x15158:	sub si, 2	; 3: 131 238 2

scanFormat$209:	; IntegralToIntegral £temporary1659 £temporary1658

scanFormat$210:	; Deref £temporary1660 -> £temporary1659 £temporary1659 0

scanFormat$211:	; Assign unsignedIntPtr £temporary1660 -> £temporary1659
x15161:	mov ax, [si]	; 2: 139 4
x15163:	mov [bp + 45], ax	; 3: 137 70 45

scanFormat$212:	; Deref £temporary1661 -> unsignedIntPtr unsignedIntPtr 0
x15166:	mov si, [bp + 45]	; 3: 139 118 45

scanFormat$213:	; IntegralToIntegral £temporary1662 unsignedLongValue
x15169:	mov eax, [bp + 37]	; 4: 102 139 70 37

scanFormat$214:	; Assign £temporary1661 -> unsignedIntPtr £temporary1662
x15173:	mov [si], ax	; 2: 137 4

scanFormat$215:	; Goto 223
x15175:	jmp scanFormat$223	; 2: 235 25

scanFormat$216:	; BinaryAdd arg_list arg_list 2
x15177:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$217:	; BinarySubtract £temporary1664 arg_list 2
x15181:	mov si, [bp + 8]	; 3: 139 118 8
x15184:	sub si, 2	; 3: 131 238 2

scanFormat$218:	; IntegralToIntegral £temporary1665 £temporary1664

scanFormat$219:	; Deref £temporary1666 -> £temporary1665 £temporary1665 0

scanFormat$220:	; Assign unsignedLongPtr £temporary1666 -> £temporary1665
x15187:	mov ax, [si]	; 2: 139 4
x15189:	mov [bp + 41], ax	; 3: 137 70 41

scanFormat$221:	; Deref £temporary1667 -> unsignedLongPtr unsignedLongPtr 0
x15192:	mov si, [bp + 41]	; 3: 139 118 41

scanFormat$222:	; Assign £temporary1667 -> unsignedLongPtr unsignedLongValue
x15195:	mov eax, [bp + 37]	; 4: 102 139 70 37
x15199:	mov [si], eax	; 3: 102 137 4

scanFormat$223:	; Assign percent 0
x15202:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$224:	; Goto 325
x15207:	jmp scanFormat$325	; 3: 233 117 1

scanFormat$225:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$226:	; Call 57 scanLongDouble 0
x15210:	mov word [bp + 57], scanFormat$227	; 5: 199 70 57 120 59
x15215:	mov [bp + 59], bp	; 3: 137 110 59
x15218:	add bp, 57	; 3: 131 197 57
x15221:	jmp scanLongDouble	; 3: 233 46 10

scanFormat$227:	; PostCall 57

scanFormat$228:	; GetReturnValue £temporary1669

scanFormat$229:	; PopFloat longDoubleValue
x15224:	fstp qword [bp + 47]	; 3: 221 94 47

scanFormat$230:	; NotEqual 259 star 0
x15227:	cmp word [bp + 21], 0	; 4: 131 126 21 0
x15231:	jne scanFormat$259	; 2: 117 85

scanFormat$231:	; Equal 241 longIntOrDouble 0
x15233:	cmp word [bp + 17], 0	; 4: 131 126 17 0
x15237:	je scanFormat$241	; 2: 116 25

scanFormat$232:	; BinaryAdd arg_list arg_list 2
x15239:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$233:	; BinarySubtract £temporary1673 arg_list 2
x15243:	mov si, [bp + 8]	; 3: 139 118 8
x15246:	sub si, 2	; 3: 131 238 2

scanFormat$234:	; IntegralToIntegral £temporary1674 £temporary1673

scanFormat$235:	; Deref £temporary1675 -> £temporary1674 £temporary1674 0

scanFormat$236:	; Assign doublePtr £temporary1675 -> £temporary1674
x15249:	mov ax, [si]	; 2: 139 4
x15251:	mov [bp + 57], ax	; 3: 137 70 57

scanFormat$237:	; Deref £temporary1676 -> doublePtr doublePtr 0
x15254:	mov si, [bp + 57]	; 3: 139 118 57

scanFormat$238:	; PushFloat longDoubleValue
x15257:	fld qword [bp + 47]	; 3: 221 70 47

scanFormat$239:	; PopFloat £temporary1676 -> doublePtr
x15260:	fstp qword [si]	; 2: 221 28

scanFormat$240:	; Goto 259
x15262:	jmp scanFormat$259	; 2: 235 54

scanFormat$241:	; Equal 251 longDouble 0
x15264:	cmp word [bp + 19], 0	; 4: 131 126 19 0
x15268:	je scanFormat$251	; 2: 116 25

scanFormat$242:	; BinaryAdd arg_list arg_list 2
x15270:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$243:	; BinarySubtract £temporary1679 arg_list 2
x15274:	mov si, [bp + 8]	; 3: 139 118 8
x15277:	sub si, 2	; 3: 131 238 2

scanFormat$244:	; IntegralToIntegral £temporary1680 £temporary1679

scanFormat$245:	; Deref £temporary1681 -> £temporary1680 £temporary1680 0

scanFormat$246:	; Assign longDoublePtr £temporary1681 -> £temporary1680
x15280:	mov ax, [si]	; 2: 139 4
x15282:	mov [bp + 57], ax	; 3: 137 70 57

scanFormat$247:	; Deref £temporary1682 -> longDoublePtr longDoublePtr 0
x15285:	mov si, [bp + 57]	; 3: 139 118 57

scanFormat$248:	; PushFloat longDoubleValue
x15288:	fld qword [bp + 47]	; 3: 221 70 47

scanFormat$249:	; PopFloat £temporary1682 -> longDoublePtr
x15291:	fstp qword [si]	; 2: 221 28

scanFormat$250:	; Goto 259
x15293:	jmp scanFormat$259	; 2: 235 23

scanFormat$251:	; BinaryAdd arg_list arg_list 2
x15295:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$252:	; BinarySubtract £temporary1684 arg_list 2
x15299:	mov si, [bp + 8]	; 3: 139 118 8
x15302:	sub si, 2	; 3: 131 238 2

scanFormat$253:	; IntegralToIntegral £temporary1685 £temporary1684

scanFormat$254:	; Deref £temporary1686 -> £temporary1685 £temporary1685 0

scanFormat$255:	; Assign floatPtr £temporary1686 -> £temporary1685
x15305:	mov ax, [si]	; 2: 139 4
x15307:	mov [bp + 57], ax	; 3: 137 70 57

scanFormat$256:	; Deref £temporary1687 -> floatPtr floatPtr 0
x15310:	mov si, [bp + 57]	; 3: 139 118 57

scanFormat$257:	; PushFloat longDoubleValue
x15313:	fld qword [bp + 47]	; 3: 221 70 47

scanFormat$258:	; PopFloat £temporary1687 -> floatPtr
x15316:	fstp dword [si]	; 2: 217 28

scanFormat$259:	; Assign percent 0
x15318:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$260:	; Goto 325
x15323:	jmp scanFormat$325	; 3: 233 1 1

scanFormat$261:	; Assign not 0
x15326:	mov word [bp + 57], 0	; 5: 199 70 57 0 0

scanFormat$262:	; Increment index
x15331:	inc word [bp + 31]	; 3: 255 70 31

scanFormat$263:	; BinaryAdd £temporary1693 format index
x15334:	mov si, [bp + 6]	; 3: 139 118 6
x15337:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$264:	; Deref £temporary1692 -> £temporary1693 £temporary1693 0

scanFormat$265:	; NotEqual 268 £temporary1692 -> £temporary1693 94
x15340:	cmp byte [si], 94	; 3: 128 60 94
x15343:	jne scanFormat$268	; 2: 117 8

scanFormat$266:	; Assign not 1
x15345:	mov word [bp + 57], 1	; 5: 199 70 57 1 0

scanFormat$267:	; Increment index
x15350:	inc word [bp + 31]	; 3: 255 70 31

scanFormat$268:	; Assign startIndex index
x15353:	mov ax, [bp + 31]	; 3: 139 70 31
x15356:	mov [bp + 59], ax	; 3: 137 70 59

scanFormat$269:	; BinaryAdd £temporary1697 format index
x15359:	mov si, [bp + 6]	; 3: 139 118 6
x15362:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$270:	; Deref £temporary1696 -> £temporary1697 £temporary1697 0

scanFormat$271:	; Equal 274 £temporary1696 -> £temporary1697 93
x15365:	cmp byte [si], 93	; 3: 128 60 93
x15368:	je scanFormat$274	; 2: 116 5

scanFormat$272:	; Increment index
x15370:	inc word [bp + 31]	; 3: 255 70 31

scanFormat$273:	; Goto 269
x15373:	jmp scanFormat$269	; 2: 235 240

scanFormat$274:	; BinaryAdd £temporary1701 format index
x15375:	mov si, [bp + 6]	; 3: 139 118 6
x15378:	add si, [bp + 31]	; 3: 3 118 31

scanFormat$275:	; Deref £temporary1700 -> £temporary1701 £temporary1701 0

scanFormat$276:	; Assign £temporary1700 -> £temporary1701 0
x15381:	mov byte [si], 0	; 3: 198 4 0

scanFormat$277:	; NotEqual 293 star 0
x15384:	cmp word [bp + 21], 0	; 4: 131 126 21 0
x15388:	jne scanFormat$293	; 2: 117 53

scanFormat$278:	; BinaryAdd arg_list arg_list 2
x15390:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$279:	; BinarySubtract £temporary1705 arg_list 2
x15394:	mov si, [bp + 8]	; 3: 139 118 8
x15397:	sub si, 2	; 3: 131 238 2

scanFormat$280:	; IntegralToIntegral £temporary1706 £temporary1705

scanFormat$281:	; Deref £temporary1707 -> £temporary1706 £temporary1706 0

scanFormat$282:	; Assign string £temporary1707 -> £temporary1706
x15400:	mov ax, [si]	; 2: 139 4
x15402:	mov [bp + 61], ax	; 3: 137 70 61

scanFormat$283:	; CallHeader 63 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$284:	; Parameter 63 string 6
x15405:	mov ax, [bp + 61]	; 3: 139 70 61
x15408:	mov [bp + 69], ax	; 3: 137 70 69

scanFormat$285:	; BinaryAdd £temporary1709 format startIndex
x15411:	mov si, [bp + 6]	; 3: 139 118 6
x15414:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$286:	; Deref £temporary1708 -> £temporary1709 £temporary1709 0

scanFormat$287:	; address £temporary1710 £temporary1708 -> £temporary1709

scanFormat$288:	; Parameter 63 £temporary1710 8
x15417:	mov [bp + 71], si	; 3: 137 118 71

scanFormat$289:	; Parameter 63 not 10
x15420:	mov ax, [bp + 57]	; 3: 139 70 57
x15423:	mov [bp + 73], ax	; 3: 137 70 73

scanFormat$290:	; Call 63 scanPattern 0
x15426:	mov word [bp + 63], scanFormat$291	; 5: 199 70 63 80 60
x15431:	mov [bp + 65], bp	; 3: 137 110 65
x15434:	add bp, 63	; 3: 131 197 63
x15437:	jmp scanPattern	; 3: 233 121 11

scanFormat$291:	; PostCall 63

scanFormat$292:	; Goto 325
x15440:	jmp scanFormat$325	; 3: 233 140 0

scanFormat$293:	; CallHeader 61 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$294:	; Parameter 61 0 6
x15443:	mov word [bp + 67], 0	; 5: 199 70 67 0 0

scanFormat$295:	; BinaryAdd £temporary1713 format startIndex
x15448:	mov si, [bp + 6]	; 3: 139 118 6
x15451:	add si, [bp + 59]	; 3: 3 118 59

scanFormat$296:	; Deref £temporary1712 -> £temporary1713 £temporary1713 0

scanFormat$297:	; address £temporary1714 £temporary1712 -> £temporary1713

scanFormat$298:	; Parameter 61 £temporary1714 8
x15454:	mov [bp + 69], si	; 3: 137 118 69

scanFormat$299:	; Parameter 61 not 10
x15457:	mov ax, [bp + 57]	; 3: 139 70 57
x15460:	mov [bp + 71], ax	; 3: 137 70 71

scanFormat$300:	; Call 61 scanPattern 0
x15463:	mov word [bp + 61], scanFormat$301	; 5: 199 70 61 117 60
x15468:	mov [bp + 63], bp	; 3: 137 110 63
x15471:	add bp, 61	; 3: 131 197 61
x15474:	jmp scanPattern	; 3: 233 84 11

scanFormat$301:	; PostCall 61

scanFormat$302:	; Goto 325
x15477:	jmp scanFormat$325	; 2: 235 104

scanFormat$303:	; BinaryAdd arg_list arg_list 2
x15479:	add word [bp + 8], 2	; 4: 131 70 8 2

scanFormat$304:	; BinarySubtract £temporary1717 arg_list 2
x15483:	mov si, [bp + 8]	; 3: 139 118 8
x15486:	sub si, 2	; 3: 131 238 2

scanFormat$305:	; IntegralToIntegral £temporary1718 £temporary1717

scanFormat$306:	; Deref £temporary1719 -> £temporary1718 £temporary1718 0

scanFormat$307:	; Assign charsPtr £temporary1719 -> £temporary1718
x15489:	mov ax, [si]	; 2: 139 4
x15491:	mov [bp + 35], ax	; 3: 137 70 35

scanFormat$308:	; Deref £temporary1720 -> charsPtr charsPtr 0
x15494:	mov si, [bp + 35]	; 3: 139 118 35

scanFormat$309:	; Assign £temporary1720 -> charsPtr g_inChars
x15497:	mov ax, [g_inChars]	; 3: 161 246 60
x15500:	mov [si], ax	; 2: 137 4

scanFormat$310:	; Assign percent 0
x15502:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanFormat$311:	; Goto 325
x15507:	jmp scanFormat$325	; 2: 235 74

scanFormat$312:	; CallHeader 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanFormat$313:	; Parameter 57 string_scanFormat20c203D202725c270A# 6
x15509:	mov word [bp + 63], string_scanFormat20c203D202725c270A#	; 5: 199 70 63 248 60

scanFormat$314:	; IntegralToIntegral £temporary1721 c
x15514:	mov al, [bp + 10]	; 3: 138 70 10
x15517:	and ax, 255	; 3: 37 255 0
x15520:	cmp al, 0	; 2: 60 0
x15522:	jge scanFormat$315	; 2: 125 4
x15524:	neg al	; 2: 246 216
x15526:	neg ax	; 2: 247 216

scanFormat$315:	; Parameter 57 £temporary1721 8
x15528:	mov [bp + 65], ax	; 3: 137 70 65

scanFormat$316:	; Call 57 printf 0
x15531:	mov word [bp + 57], scanFormat$317	; 5: 199 70 57 190 60
x15536:	mov [bp + 59], bp	; 3: 137 110 59
x15539:	add bp, 57	; 3: 131 197 57
x15542:	mov di, bp	; 2: 137 239
x15544:	add di, 2	; 3: 131 199 2
x15547:	jmp printf	; 3: 233 109 12

scanFormat$317:	; PostCall 57

scanFormat$318:	; Goto 325
x15550:	jmp scanFormat$325	; 2: 235 31

scanFormat$319:	; NotEqual 325 c 37
x15552:	cmp byte [bp + 10], 37	; 4: 128 126 10 37
x15556:	jne scanFormat$325	; 2: 117 25

scanFormat$320:	; Assign percent 1
x15558:	mov word [bp + 13], 1	; 5: 199 70 13 1 0

scanFormat$321:	; Assign shortInt 0
x15563:	mov word [bp + 15], 0	; 5: 199 70 15 0 0

scanFormat$322:	; Assign longIntOrDouble 0
x15568:	mov word [bp + 17], 0	; 5: 199 70 17 0 0

scanFormat$323:	; Assign longDouble 0
x15573:	mov word [bp + 19], 0	; 5: 199 70 19 0 0

scanFormat$324:	; Assign star 0
x15578:	mov word [bp + 21], 0	; 5: 199 70 21 0 0

scanFormat$325:	; Increment index
x15583:	inc word [bp + 31]	; 3: 255 70 31

scanFormat$326:	; Goto 8
x15586:	jmp scanFormat$8	; 3: 233 25 251

scanFormat$327:	; SetReturnValue g_inCount
x15589:	mov bx, [g_inCount]	; 4: 139 30 244 60

scanFormat$328:	; Return g_inCount
x15593:	mov ax, [bp]	; 3: 139 70 0
x15596:	mov di, [bp + 4]	; 3: 139 126 4
x15599:	mov bp, [bp + 2]	; 3: 139 110 2
x15602:	jmp ax	; 2: 255 224

scanFormat$329:	; FunctionEnd scanFormat

g_inCount:
x15604:	db 0, 0	; 2: 0 0

g_inChars:
x15606:	db 0, 0	; 2: 0 0

string_scanFormat20c203D202725c270A#:
x15608:	db "scanFormat c = ", 39, "%c", 39, 10, 0	; 21: 115 99 97 110 70 111 114 109 97 116 32 99 32 61 32 39 37 99 39 10 0

scanChar:	; Assign c 0
x15629:	mov byte [bp + 6], 0	; 4: 198 70 6 0

scanChar$1:	; Case 5 g_inStatus 0
x15633:	mov ax, [g_inStatus]	; 3: 161 208 55
x15636:	cmp ax, 0	; 3: 131 248 0
x15639:	je scanChar$5	; 2: 116 7

scanChar$2:	; Case 18 g_inStatus 1
x15641:	cmp ax, 1	; 3: 131 248 1
x15644:	je scanChar$18	; 2: 116 50

scanChar$3:	; CaseEnd g_inStatus

scanChar$4:	; Goto 26
x15646:	jmp scanChar$26	; 2: 235 79

scanChar$5:	; IntegralToIntegral £temporary1237 g_inDevice
x15648:	mov ax, [g_inDevice]	; 3: 161 210 55

scanChar$6:	; Assign stream £temporary1237
x15651:	mov [bp + 7], ax	; 3: 137 70 7

scanChar$7:	; Deref £temporary1238 -> stream stream 2
x15654:	mov si, [bp + 7]	; 3: 139 118 7

scanChar$8:	; Assign handle £temporary1238 -> stream
x15657:	mov ax, [si + 2]	; 3: 139 68 2
x15660:	mov [bp + 9], ax	; 3: 137 70 9

scanChar$9:	; AssignRegister ah 63
x15663:	mov ah, 63	; 2: 180 63

scanChar$10:	; AssignRegister bx handle
x15665:	mov bx, [bp + 9]	; 3: 139 94 9

scanChar$11:	; AssignRegister cx 1
x15668:	mov cx, 1	; 3: 185 1 0

scanChar$12:	; address £temporary1243 c
x15671:	mov dx, bp	; 2: 137 234
x15673:	add dx, 6	; 3: 131 194 6

scanChar$13:	; AssignRegister dx £temporary1243

scanChar$14:	; Interrupt 33
x15676:	int 33	; 2: 205 33

scanChar$15:	; Increment g_inChars
x15678:	inc word [g_inChars]	; 4: 255 6 246 60

scanChar$16:	; SetReturnValue c
x15682:	mov bl, [bp + 6]	; 3: 138 94 6

scanChar$17:	; Return c
x15685:	mov ax, [bp]	; 3: 139 70 0
x15688:	mov di, [bp + 4]	; 3: 139 126 4
x15691:	mov bp, [bp + 2]	; 3: 139 110 2
x15694:	jmp ax	; 2: 255 224

scanChar$18:	; IntegralToIntegral £temporary1245 g_inDevice
x15696:	mov ax, [g_inDevice]	; 3: 161 210 55

scanChar$19:	; Assign inString £temporary1245
x15699:	mov [bp + 11], ax	; 3: 137 70 11

scanChar$20:	; Assign £temporary1246 g_inChars
x15702:	mov ax, [g_inChars]	; 3: 161 246 60

scanChar$21:	; Increment g_inChars
x15705:	inc word [g_inChars]	; 4: 255 6 246 60

scanChar$22:	; BinaryAdd £temporary1248 inString £temporary1246
x15709:	mov si, [bp + 11]	; 3: 139 118 11
x15712:	add si, ax	; 2: 1 198

scanChar$23:	; Deref £temporary1247 -> £temporary1248 £temporary1248 0

scanChar$24:	; SetReturnValue £temporary1247 -> £temporary1248
x15714:	mov bl, [si]	; 2: 138 28

scanChar$25:	; Return £temporary1247 -> £temporary1248
x15716:	mov ax, [bp]	; 3: 139 70 0
x15719:	mov di, [bp + 4]	; 3: 139 126 4
x15722:	mov bp, [bp + 2]	; 3: 139 110 2
x15725:	jmp ax	; 2: 255 224

scanChar$26:	; SetReturnValue 0
x15727:	mov bl, 0	; 2: 179 0

scanChar$27:	; Return 0
x15729:	mov ax, [bp]	; 3: 139 70 0
x15732:	mov di, [bp + 4]	; 3: 139 126 4
x15735:	mov bp, [bp + 2]	; 3: 139 110 2
x15738:	jmp ax	; 2: 255 224

scanChar$28:	; FunctionEnd scanChar

scanString:	; Assign index 0
x15740:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

scanString$1:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$2:	; Call 12 scanChar 0
x15745:	mov word [bp + 12], scanString$3	; 5: 199 70 12 143 61
x15750:	mov [bp + 14], bp	; 3: 137 110 14
x15753:	add bp, 12	; 3: 131 197 12
x15756:	jmp scanChar	; 3: 233 126 255

scanString$3:	; PostCall 12

scanString$4:	; GetReturnValue £temporary1300

scanString$5:	; Assign input £temporary1300
x15759:	mov [bp + 12], bl	; 3: 136 94 12

scanString$6:	; Assign found 0
x15762:	mov word [bp + 13], 0	; 5: 199 70 13 0 0

scanString$7:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$8:	; IntegralToIntegral £temporary1301 input
x15767:	mov al, [bp + 12]	; 3: 138 70 12
x15770:	and ax, 255	; 3: 37 255 0
x15773:	cmp al, 0	; 2: 60 0
x15775:	jge scanString$9	; 2: 125 4
x15777:	neg al	; 2: 246 216
x15779:	neg ax	; 2: 247 216

scanString$9:	; Parameter 15 £temporary1301 6
x15781:	mov [bp + 21], ax	; 3: 137 70 21

scanString$10:	; Call 15 isspace 0
x15784:	mov word [bp + 15], scanString$11	; 5: 199 70 15 182 61
x15789:	mov [bp + 17], bp	; 3: 137 110 17
x15792:	add bp, 15	; 3: 131 197 15
x15795:	jmp isspace	; 3: 233 19 2

scanString$11:	; PostCall 15

scanString$12:	; GetReturnValue £temporary1302

scanString$13:	; Equal 20 £temporary1302 0
x15798:	cmp bx, 0	; 3: 131 251 0
x15801:	je scanString$20	; 2: 116 19

scanString$14:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$15:	; Call 15 scanChar 0
x15803:	mov word [bp + 15], scanString$16	; 5: 199 70 15 201 61
x15808:	mov [bp + 17], bp	; 3: 137 110 17
x15811:	add bp, 15	; 3: 131 197 15
x15814:	jmp scanChar	; 3: 233 68 255

scanString$16:	; PostCall 15

scanString$17:	; GetReturnValue £temporary1303

scanString$18:	; Assign input £temporary1303
x15817:	mov [bp + 12], bl	; 3: 136 94 12

scanString$19:	; Goto 7
x15820:	jmp scanString$7	; 2: 235 201

scanString$20:	; Equal 82 string 0
x15822:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x15826:	je scanString$82	; 4: 15 132 11 1

scanString$21:	; NotEqual 50 precision 0
x15830:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x15834:	jne scanString$50	; 2: 117 121

scanString$22:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$23:	; IntegralToIntegral £temporary1307 input
x15836:	mov al, [bp + 12]	; 3: 138 70 12
x15839:	and ax, 255	; 3: 37 255 0
x15842:	cmp al, 0	; 2: 60 0
x15844:	jge scanString$24	; 2: 125 4
x15846:	neg al	; 2: 246 216
x15848:	neg ax	; 2: 247 216

scanString$24:	; Parameter 15 £temporary1307 6
x15850:	mov [bp + 21], ax	; 3: 137 70 21

scanString$25:	; Call 15 isspace 0
x15853:	mov word [bp + 15], scanString$26	; 5: 199 70 15 251 61
x15858:	mov [bp + 17], bp	; 3: 137 110 17
x15861:	add bp, 15	; 3: 131 197 15
x15864:	jmp isspace	; 3: 233 206 1

scanString$26:	; PostCall 15

scanString$27:	; GetReturnValue £temporary1308

scanString$28:	; NotEqual 45 £temporary1308 0
x15867:	cmp bx, 0	; 3: 131 251 0
x15870:	jne scanString$45	; 2: 117 69

scanString$29:	; IntegralToIntegral £temporary1311 input
x15872:	mov al, [bp + 12]	; 3: 138 70 12
x15875:	and ax, 255	; 3: 37 255 0
x15878:	cmp al, 0	; 2: 60 0
x15880:	jge scanString$30	; 2: 125 4
x15882:	neg al	; 2: 246 216
x15884:	neg ax	; 2: 247 216

scanString$30:	; Equal 45 £temporary1311 -1
x15886:	cmp ax, -1	; 3: 131 248 255
x15889:	je scanString$45	; 2: 116 50

scanString$31:	; Equal 45 input 10
x15891:	cmp byte [bp + 12], 10	; 4: 128 126 12 10
x15895:	je scanString$45	; 2: 116 44

scanString$32:	; Assign £temporary1316 index
x15897:	mov ax, [bp + 10]	; 3: 139 70 10

scanString$33:	; Increment index
x15900:	inc word [bp + 10]	; 3: 255 70 10

scanString$34:	; BinaryAdd £temporary1318 string £temporary1316
x15903:	mov si, [bp + 6]	; 3: 139 118 6
x15906:	add si, ax	; 2: 1 198

scanString$35:	; Deref £temporary1317 -> £temporary1318 £temporary1318 0

scanString$36:	; Assign £temporary1317 -> £temporary1318 input
x15908:	mov al, [bp + 12]	; 3: 138 70 12
x15911:	mov [si], al	; 2: 136 4

scanString$37:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$38:	; Call 15 scanChar 0
x15913:	mov word [bp + 15], scanString$39	; 5: 199 70 15 55 62
x15918:	mov [bp + 17], bp	; 3: 137 110 17
x15921:	add bp, 15	; 3: 131 197 15
x15924:	jmp scanChar	; 3: 233 214 254

scanString$39:	; PostCall 15

scanString$40:	; GetReturnValue £temporary1319

scanString$41:	; Assign input £temporary1319
x15927:	mov [bp + 12], bl	; 3: 136 94 12

scanString$42:	; Assign found 1
x15930:	mov word [bp + 13], 1	; 5: 199 70 13 1 0

scanString$43:	; Increment g_inChars
x15935:	inc word [g_inChars]	; 4: 255 6 246 60

scanString$44:	; Goto 22
x15939:	jmp scanString$22	; 2: 235 151

scanString$45:	; BinaryAdd £temporary1322 string index
x15941:	mov si, [bp + 6]	; 3: 139 118 6
x15944:	add si, [bp + 10]	; 3: 3 118 10

scanString$46:	; Deref £temporary1321 -> £temporary1322 £temporary1322 0

scanString$47:	; Assign £temporary1321 -> £temporary1322 0
x15947:	mov byte [si], 0	; 3: 198 4 0

scanString$48:	; Increment g_inChars
x15950:	inc word [g_inChars]	; 4: 255 6 246 60

scanString$49:	; Goto 126
x15954:	jmp scanString$126	; 3: 233 95 1

scanString$50:	; Assign £temporary1324 precision
x15957:	mov ax, [bp + 8]	; 3: 139 70 8

scanString$51:	; Decrement precision
x15960:	dec word [bp + 8]	; 3: 255 78 8

scanString$52:	; SignedLessThanEqual 76 £temporary1324 0
x15963:	cmp ax, 0	; 3: 131 248 0
x15966:	jle scanString$76	; 2: 126 105

scanString$53:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$54:	; IntegralToIntegral £temporary1326 input
x15968:	mov al, [bp + 12]	; 3: 138 70 12
x15971:	and ax, 255	; 3: 37 255 0
x15974:	cmp al, 0	; 2: 60 0
x15976:	jge scanString$55	; 2: 125 4
x15978:	neg al	; 2: 246 216
x15980:	neg ax	; 2: 247 216

scanString$55:	; Parameter 15 £temporary1326 6
x15982:	mov [bp + 21], ax	; 3: 137 70 21

scanString$56:	; Call 15 isspace 0
x15985:	mov word [bp + 15], scanString$57	; 5: 199 70 15 127 62
x15990:	mov [bp + 17], bp	; 3: 137 110 17
x15993:	add bp, 15	; 3: 131 197 15
x15996:	jmp isspace	; 3: 233 74 1

scanString$57:	; PostCall 15

scanString$58:	; GetReturnValue £temporary1327

scanString$59:	; NotEqual 76 £temporary1327 0
x15999:	cmp bx, 0	; 3: 131 251 0
x16002:	jne scanString$76	; 2: 117 69

scanString$60:	; IntegralToIntegral £temporary1330 input
x16004:	mov al, [bp + 12]	; 3: 138 70 12
x16007:	and ax, 255	; 3: 37 255 0
x16010:	cmp al, 0	; 2: 60 0
x16012:	jge scanString$61	; 2: 125 4
x16014:	neg al	; 2: 246 216
x16016:	neg ax	; 2: 247 216

scanString$61:	; Equal 76 £temporary1330 -1
x16018:	cmp ax, -1	; 3: 131 248 255
x16021:	je scanString$76	; 2: 116 50

scanString$62:	; Equal 76 input 10
x16023:	cmp byte [bp + 12], 10	; 4: 128 126 12 10
x16027:	je scanString$76	; 2: 116 44

scanString$63:	; Assign £temporary1336 index
x16029:	mov ax, [bp + 10]	; 3: 139 70 10

scanString$64:	; Increment index
x16032:	inc word [bp + 10]	; 3: 255 70 10

scanString$65:	; BinaryAdd £temporary1338 string £temporary1336
x16035:	mov si, [bp + 6]	; 3: 139 118 6
x16038:	add si, ax	; 2: 1 198

scanString$66:	; Deref £temporary1337 -> £temporary1338 £temporary1338 0

scanString$67:	; Assign £temporary1337 -> £temporary1338 input
x16040:	mov al, [bp + 12]	; 3: 138 70 12
x16043:	mov [si], al	; 2: 136 4

scanString$68:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$69:	; Call 15 scanChar 0
x16045:	mov word [bp + 15], scanString$70	; 5: 199 70 15 187 62
x16050:	mov [bp + 17], bp	; 3: 137 110 17
x16053:	add bp, 15	; 3: 131 197 15
x16056:	jmp scanChar	; 3: 233 82 254

scanString$70:	; PostCall 15

scanString$71:	; GetReturnValue £temporary1339

scanString$72:	; Assign input £temporary1339
x16059:	mov [bp + 12], bl	; 3: 136 94 12

scanString$73:	; Assign found 1
x16062:	mov word [bp + 13], 1	; 5: 199 70 13 1 0

scanString$74:	; Increment g_inChars
x16067:	inc word [g_inChars]	; 4: 255 6 246 60

scanString$75:	; Goto 50
x16071:	jmp scanString$50	; 2: 235 140

scanString$76:	; SignedLessThanEqual 126 precision 0
x16073:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x16077:	jle scanString$126	; 4: 15 142 227 0

scanString$77:	; BinaryAdd £temporary1343 string index
x16081:	mov si, [bp + 6]	; 3: 139 118 6
x16084:	add si, [bp + 10]	; 3: 3 118 10

scanString$78:	; Deref £temporary1342 -> £temporary1343 £temporary1343 0

scanString$79:	; Assign £temporary1342 -> £temporary1343 0
x16087:	mov byte [si], 0	; 3: 198 4 0

scanString$80:	; Increment g_inChars
x16090:	inc word [g_inChars]	; 4: 255 6 246 60

scanString$81:	; Goto 126
x16094:	jmp scanString$126	; 3: 233 211 0

scanString$82:	; NotEqual 103 precision 0
x16097:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x16101:	jne scanString$103	; 2: 117 95

scanString$83:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$84:	; IntegralToIntegral £temporary1346 input
x16103:	mov al, [bp + 12]	; 3: 138 70 12
x16106:	and ax, 255	; 3: 37 255 0
x16109:	cmp al, 0	; 2: 60 0
x16111:	jge scanString$85	; 2: 125 4
x16113:	neg al	; 2: 246 216
x16115:	neg ax	; 2: 247 216

scanString$85:	; Parameter 15 £temporary1346 6
x16117:	mov [bp + 21], ax	; 3: 137 70 21

scanString$86:	; Call 15 isspace 0
x16120:	mov word [bp + 15], scanString$87	; 5: 199 70 15 6 63
x16125:	mov [bp + 17], bp	; 3: 137 110 17
x16128:	add bp, 15	; 3: 131 197 15
x16131:	jmp isspace	; 3: 233 195 0

scanString$87:	; PostCall 15

scanString$88:	; GetReturnValue £temporary1347

scanString$89:	; NotEqual 101 £temporary1347 0
x16134:	cmp bx, 0	; 3: 131 251 0
x16137:	jne scanString$101	; 2: 117 53

scanString$90:	; IntegralToIntegral £temporary1350 input
x16139:	mov al, [bp + 12]	; 3: 138 70 12
x16142:	and ax, 255	; 3: 37 255 0
x16145:	cmp al, 0	; 2: 60 0
x16147:	jge scanString$91	; 2: 125 4
x16149:	neg al	; 2: 246 216
x16151:	neg ax	; 2: 247 216

scanString$91:	; Equal 101 £temporary1350 -1
x16153:	cmp ax, -1	; 3: 131 248 255
x16156:	je scanString$101	; 2: 116 34

scanString$92:	; Equal 101 input 10
x16158:	cmp byte [bp + 12], 10	; 4: 128 126 12 10
x16162:	je scanString$101	; 2: 116 28

scanString$93:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$94:	; Call 15 scanChar 0
x16164:	mov word [bp + 15], scanString$95	; 5: 199 70 15 50 63
x16169:	mov [bp + 17], bp	; 3: 137 110 17
x16172:	add bp, 15	; 3: 131 197 15
x16175:	jmp scanChar	; 3: 233 219 253

scanString$95:	; PostCall 15

scanString$96:	; GetReturnValue £temporary1355

scanString$97:	; Assign input £temporary1355
x16178:	mov [bp + 12], bl	; 3: 136 94 12

scanString$98:	; Assign found 1
x16181:	mov word [bp + 13], 1	; 5: 199 70 13 1 0

scanString$99:	; Increment g_inChars
x16186:	inc word [g_inChars]	; 4: 255 6 246 60

scanString$100:	; Goto 83
x16190:	jmp scanString$83	; 2: 235 167

scanString$101:	; Increment g_inChars
x16192:	inc word [g_inChars]	; 4: 255 6 246 60

scanString$102:	; Goto 126
x16196:	jmp scanString$126	; 2: 235 110

scanString$103:	; Assign £temporary1358 precision
x16198:	mov ax, [bp + 8]	; 3: 139 70 8

scanString$104:	; Decrement precision
x16201:	dec word [bp + 8]	; 3: 255 78 8

scanString$105:	; SignedLessThanEqual 124 £temporary1358 0
x16204:	cmp ax, 0	; 3: 131 248 0
x16207:	jle scanString$124	; 2: 126 89

scanString$106:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$107:	; IntegralToIntegral £temporary1360 input
x16209:	mov al, [bp + 12]	; 3: 138 70 12
x16212:	and ax, 255	; 3: 37 255 0
x16215:	cmp al, 0	; 2: 60 0
x16217:	jge scanString$108	; 2: 125 4
x16219:	neg al	; 2: 246 216
x16221:	neg ax	; 2: 247 216

scanString$108:	; Parameter 15 £temporary1360 6
x16223:	mov [bp + 21], ax	; 3: 137 70 21

scanString$109:	; Call 15 isspace 0
x16226:	mov word [bp + 15], scanString$110	; 5: 199 70 15 112 63
x16231:	mov [bp + 17], bp	; 3: 137 110 17
x16234:	add bp, 15	; 3: 131 197 15
x16237:	nop	; 1: 144
x16238:	jmp isspace	; 2: 235 89

scanString$110:	; PostCall 15

scanString$111:	; GetReturnValue £temporary1361

scanString$112:	; NotEqual 124 £temporary1361 0
x16240:	cmp bx, 0	; 3: 131 251 0
x16243:	jne scanString$124	; 2: 117 53

scanString$113:	; IntegralToIntegral £temporary1364 input
x16245:	mov al, [bp + 12]	; 3: 138 70 12
x16248:	and ax, 255	; 3: 37 255 0
x16251:	cmp al, 0	; 2: 60 0
x16253:	jge scanString$114	; 2: 125 4
x16255:	neg al	; 2: 246 216
x16257:	neg ax	; 2: 247 216

scanString$114:	; Equal 124 £temporary1364 -1
x16259:	cmp ax, -1	; 3: 131 248 255
x16262:	je scanString$124	; 2: 116 34

scanString$115:	; Equal 124 input 10
x16264:	cmp byte [bp + 12], 10	; 4: 128 126 12 10
x16268:	je scanString$124	; 2: 116 28

scanString$116:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanString$117:	; Call 15 scanChar 0
x16270:	mov word [bp + 15], scanString$118	; 5: 199 70 15 156 63
x16275:	mov [bp + 17], bp	; 3: 137 110 17
x16278:	add bp, 15	; 3: 131 197 15
x16281:	jmp scanChar	; 3: 233 113 253

scanString$118:	; PostCall 15

scanString$119:	; GetReturnValue £temporary1370

scanString$120:	; Assign input £temporary1370
x16284:	mov [bp + 12], bl	; 3: 136 94 12

scanString$121:	; Assign found 1
x16287:	mov word [bp + 13], 1	; 5: 199 70 13 1 0

scanString$122:	; Increment g_inChars
x16292:	inc word [g_inChars]	; 4: 255 6 246 60

scanString$123:	; Goto 103
x16296:	jmp scanString$103	; 2: 235 156

scanString$124:	; SignedLessThanEqual 126 precision 0
x16298:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x16302:	jle scanString$126	; 2: 126 4

scanString$125:	; Increment g_inChars
x16304:	inc word [g_inChars]	; 4: 255 6 246 60

scanString$126:	; Equal 128 found 0
x16308:	cmp word [bp + 13], 0	; 4: 131 126 13 0
x16312:	je scanString$128	; 2: 116 4

scanString$127:	; Increment g_inCount
x16314:	inc word [g_inCount]	; 4: 255 6 244 60

scanString$128:	; Return 0
x16318:	mov ax, [bp]	; 3: 139 70 0
x16321:	mov di, [bp + 4]	; 3: 139 126 4
x16324:	mov bp, [bp + 2]	; 3: 139 110 2
x16327:	jmp ax	; 2: 255 224

scanString$129:	; FunctionEnd scanString

isspace:	; Equal 6 c 32
x16329:	cmp word [bp + 6], 32	; 4: 131 126 6 32
x16333:	je isspace$6	; 2: 116 30

isspace$1:	; Equal 6 c 12
x16335:	cmp word [bp + 6], 12	; 4: 131 126 6 12
x16339:	je isspace$6	; 2: 116 24

isspace$2:	; Equal 6 c 10
x16341:	cmp word [bp + 6], 10	; 4: 131 126 6 10
x16345:	je isspace$6	; 2: 116 18

isspace$3:	; Equal 6 c 13
x16347:	cmp word [bp + 6], 13	; 4: 131 126 6 13
x16351:	je isspace$6	; 2: 116 12

isspace$4:	; Equal 6 c 9
x16353:	cmp word [bp + 6], 9	; 4: 131 126 6 9
x16357:	je isspace$6	; 2: 116 6

isspace$5:	; NotEqual 8 c 11
x16359:	cmp word [bp + 6], 11	; 4: 131 126 6 11
x16363:	jne isspace$8	; 2: 117 5

isspace$6:	; Assign £temporary464 1
x16365:	mov bx, 1	; 3: 187 1 0

isspace$7:	; Goto 9
x16368:	jmp isspace$9	; 2: 235 3

isspace$8:	; Assign £temporary464 0
x16370:	mov bx, 0	; 3: 187 0 0

isspace$9:	; SetReturnValue £temporary464

isspace$10:	; Return £temporary464
x16373:	mov ax, [bp]	; 3: 139 70 0
x16376:	mov di, [bp + 4]	; 3: 139 126 4
x16379:	mov bp, [bp + 2]	; 3: 139 110 2
x16382:	jmp ax	; 2: 255 224

isspace$11:	; FunctionEnd isspace

scanLongInt:	; Assign longValue 0
x16384:	mov dword [bp + 8], 0	; 8: 102 199 70 8 0 0 0 0

scanLongInt$1:	; Assign minus 0
x16392:	mov word [bp + 12], 0	; 5: 199 70 12 0 0

scanLongInt$2:	; Assign found 0
x16397:	mov word [bp + 14], 0	; 5: 199 70 14 0 0

scanLongInt$3:	; CallHeader 16 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$4:	; Call 16 scanChar 0
x16402:	mov word [bp + 16], scanLongInt$5	; 5: 199 70 16 32 64
x16407:	mov [bp + 18], bp	; 3: 137 110 18
x16410:	add bp, 16	; 3: 131 197 16
x16413:	jmp scanChar	; 3: 233 237 252

scanLongInt$5:	; PostCall 16

scanLongInt$6:	; GetReturnValue £temporary1433

scanLongInt$7:	; Assign input £temporary1433
x16416:	mov [bp + 16], bl	; 3: 136 94 16

scanLongInt$8:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$9:	; IntegralToIntegral £temporary1434 input
x16419:	mov al, [bp + 16]	; 3: 138 70 16
x16422:	and ax, 255	; 3: 37 255 0
x16425:	cmp al, 0	; 2: 60 0
x16427:	jge scanLongInt$10	; 2: 125 4
x16429:	neg al	; 2: 246 216
x16431:	neg ax	; 2: 247 216

scanLongInt$10:	; Parameter 17 £temporary1434 6
x16433:	mov [bp + 23], ax	; 3: 137 70 23

scanLongInt$11:	; Call 17 isspace 0
x16436:	mov word [bp + 17], scanLongInt$12	; 5: 199 70 17 66 64
x16441:	mov [bp + 19], bp	; 3: 137 110 19
x16444:	add bp, 17	; 3: 131 197 17
x16447:	nop	; 1: 144
x16448:	jmp isspace	; 2: 235 135

scanLongInt$12:	; PostCall 17

scanLongInt$13:	; GetReturnValue £temporary1435

scanLongInt$14:	; Equal 21 £temporary1435 0
x16450:	cmp bx, 0	; 3: 131 251 0
x16453:	je scanLongInt$21	; 2: 116 19

scanLongInt$15:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$16:	; Call 17 scanChar 0
x16455:	mov word [bp + 17], scanLongInt$17	; 5: 199 70 17 85 64
x16460:	mov [bp + 19], bp	; 3: 137 110 19
x16463:	add bp, 17	; 3: 131 197 17
x16466:	jmp scanChar	; 3: 233 184 252

scanLongInt$17:	; PostCall 17

scanLongInt$18:	; GetReturnValue £temporary1436

scanLongInt$19:	; Assign input £temporary1436
x16469:	mov [bp + 16], bl	; 3: 136 94 16

scanLongInt$20:	; Goto 8
x16472:	jmp scanLongInt$8	; 2: 235 201

scanLongInt$21:	; NotEqual 28 input 43
x16474:	cmp byte [bp + 16], 43	; 4: 128 126 16 43
x16478:	jne scanLongInt$28	; 2: 117 19

scanLongInt$22:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$23:	; Call 17 scanChar 0
x16480:	mov word [bp + 17], scanLongInt$24	; 5: 199 70 17 110 64
x16485:	mov [bp + 19], bp	; 3: 137 110 19
x16488:	add bp, 17	; 3: 131 197 17
x16491:	jmp scanChar	; 3: 233 159 252

scanLongInt$24:	; PostCall 17

scanLongInt$25:	; GetReturnValue £temporary1439

scanLongInt$26:	; Assign input £temporary1439
x16494:	mov [bp + 16], bl	; 3: 136 94 16

scanLongInt$27:	; Goto 35
x16497:	jmp scanLongInt$35	; 2: 235 28

scanLongInt$28:	; NotEqual 35 input 45
x16499:	cmp byte [bp + 16], 45	; 4: 128 126 16 45
x16503:	jne scanLongInt$35	; 2: 117 22

scanLongInt$29:	; Assign minus 1
x16505:	mov word [bp + 12], 1	; 5: 199 70 12 1 0

scanLongInt$30:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$31:	; Call 17 scanChar 0
x16510:	mov word [bp + 17], scanLongInt$32	; 5: 199 70 17 140 64
x16515:	mov [bp + 19], bp	; 3: 137 110 19
x16518:	add bp, 17	; 3: 131 197 17
x16521:	jmp scanChar	; 3: 233 129 252

scanLongInt$32:	; PostCall 17

scanLongInt$33:	; GetReturnValue £temporary1441

scanLongInt$34:	; Assign input £temporary1441
x16524:	mov [bp + 16], bl	; 3: 136 94 16

scanLongInt$35:	; NotEqual 59 base 0
x16527:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x16531:	jne scanLongInt$59	; 2: 117 95

scanLongInt$36:	; NotEqual 58 input 48
x16533:	cmp byte [bp + 16], 48	; 4: 128 126 16 48
x16537:	jne scanLongInt$58	; 2: 117 84

scanLongInt$37:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$38:	; Call 17 scanChar 0
x16539:	mov word [bp + 17], scanLongInt$39	; 5: 199 70 17 169 64
x16544:	mov [bp + 19], bp	; 3: 137 110 19
x16547:	add bp, 17	; 3: 131 197 17
x16550:	jmp scanChar	; 3: 233 100 252

scanLongInt$39:	; PostCall 17

scanLongInt$40:	; GetReturnValue £temporary1444

scanLongInt$41:	; Assign input £temporary1444
x16553:	mov [bp + 16], bl	; 3: 136 94 16

scanLongInt$42:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$43:	; IntegralToIntegral £temporary1445 input
x16556:	mov al, [bp + 16]	; 3: 138 70 16
x16559:	and ax, 255	; 3: 37 255 0
x16562:	cmp al, 0	; 2: 60 0
x16564:	jge scanLongInt$44	; 2: 125 4
x16566:	neg al	; 2: 246 216
x16568:	neg ax	; 2: 247 216

scanLongInt$44:	; Parameter 17 £temporary1445 6
x16570:	mov [bp + 23], ax	; 3: 137 70 23

scanLongInt$45:	; Call 17 tolower 0
x16573:	mov word [bp + 17], scanLongInt$46	; 5: 199 70 17 203 64
x16578:	mov [bp + 19], bp	; 3: 137 110 19
x16581:	add bp, 17	; 3: 131 197 17
x16584:	jmp tolower	; 3: 233 59 240

scanLongInt$46:	; PostCall 17

scanLongInt$47:	; GetReturnValue £temporary1446

scanLongInt$48:	; NotEqual 56 £temporary1446 120
x16587:	cmp bx, 120	; 3: 131 251 120
x16590:	jne scanLongInt$56	; 2: 117 24

scanLongInt$49:	; Assign base 16
x16592:	mov word [bp + 6], 16	; 5: 199 70 6 16 0

scanLongInt$50:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$51:	; Call 17 scanChar 0
x16597:	mov word [bp + 17], scanLongInt$52	; 5: 199 70 17 227 64
x16602:	mov [bp + 19], bp	; 3: 137 110 19
x16605:	add bp, 17	; 3: 131 197 17
x16608:	jmp scanChar	; 3: 233 42 252

scanLongInt$52:	; PostCall 17

scanLongInt$53:	; GetReturnValue £temporary1448

scanLongInt$54:	; Assign input £temporary1448
x16611:	mov [bp + 16], bl	; 3: 136 94 16

scanLongInt$55:	; Goto 59
x16614:	jmp scanLongInt$59	; 2: 235 12

scanLongInt$56:	; Assign base 8
x16616:	mov word [bp + 6], 8	; 5: 199 70 6 8 0

scanLongInt$57:	; Goto 59
x16621:	jmp scanLongInt$59	; 2: 235 5

scanLongInt$58:	; Assign base 10
x16623:	mov word [bp + 6], 10	; 5: 199 70 6 10 0

scanLongInt$59:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$60:	; Parameter 17 input 6
x16628:	mov al, [bp + 16]	; 3: 138 70 16
x16631:	mov [bp + 23], al	; 3: 136 70 23

scanLongInt$61:	; Parameter 17 base 7
x16634:	mov ax, [bp + 6]	; 3: 139 70 6
x16637:	mov [bp + 24], ax	; 3: 137 70 24

scanLongInt$62:	; Call 17 isDigitInBase 0
x16640:	mov word [bp + 17], scanLongInt$63	; 5: 199 70 17 14 65
x16645:	mov [bp + 19], bp	; 3: 137 110 19
x16648:	add bp, 17	; 3: 131 197 17
x16651:	jmp @1648$isDigitInBase	; 3: 233 167 0

scanLongInt$63:	; PostCall 17

scanLongInt$64:	; GetReturnValue £temporary1449

scanLongInt$65:	; Equal 82 £temporary1449 0
x16654:	cmp bx, 0	; 3: 131 251 0
x16657:	je scanLongInt$82	; 2: 116 100

scanLongInt$66:	; IntegralToIntegral £temporary1450 base
x16659:	mov bx, [bp + 6]	; 3: 139 94 6
x16662:	and ebx, 65535	; 7: 102 129 227 255 255 0 0
x16669:	cmp bx, 0	; 3: 131 251 0
x16672:	jge scanLongInt$67	; 2: 125 5
x16674:	neg bx	; 2: 247 219
x16676:	neg ebx	; 3: 102 247 219

scanLongInt$67:	; SignedMultiply longValue longValue £temporary1450
x16679:	mov eax, [bp + 8]	; 4: 102 139 70 8
x16683:	xor edx, edx	; 3: 102 49 210
x16686:	imul ebx	; 3: 102 247 235
x16689:	mov [bp + 8], eax	; 4: 102 137 70 8

scanLongInt$68:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$69:	; Parameter 17 input 6
x16693:	mov al, [bp + 16]	; 3: 138 70 16
x16696:	mov [bp + 23], al	; 3: 136 70 23

scanLongInt$70:	; Call 17 digitToValue 0
x16699:	mov word [bp + 17], scanLongInt$71	; 5: 199 70 17 73 65
x16704:	mov [bp + 19], bp	; 3: 137 110 19
x16707:	add bp, 17	; 3: 131 197 17
x16710:	jmp @1684$digitToValue	; 3: 233 243 1

scanLongInt$71:	; PostCall 17

scanLongInt$72:	; GetReturnValue £temporary1452

scanLongInt$73:	; IntegralToIntegral £temporary1453 £temporary1452
x16713:	and ebx, 65535	; 7: 102 129 227 255 255 0 0
x16720:	cmp bx, 0	; 3: 131 251 0
x16723:	jge scanLongInt$74	; 2: 125 5
x16725:	neg bx	; 2: 247 219
x16727:	neg ebx	; 3: 102 247 219

scanLongInt$74:	; BinaryAdd longValue longValue £temporary1453
x16730:	add [bp + 8], ebx	; 4: 102 1 94 8

scanLongInt$75:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$76:	; Call 17 scanChar 0
x16734:	mov word [bp + 17], scanLongInt$77	; 5: 199 70 17 108 65
x16739:	mov [bp + 19], bp	; 3: 137 110 19
x16742:	add bp, 17	; 3: 131 197 17
x16745:	jmp scanChar	; 3: 233 161 251

scanLongInt$77:	; PostCall 17

scanLongInt$78:	; GetReturnValue £temporary1455

scanLongInt$79:	; Assign input £temporary1455
x16748:	mov [bp + 16], bl	; 3: 136 94 16

scanLongInt$80:	; Assign found 1
x16751:	mov word [bp + 14], 1	; 5: 199 70 14 1 0

scanLongInt$81:	; Goto 59
x16756:	jmp scanLongInt$59	; 3: 233 125 255

scanLongInt$82:	; Equal 85 minus 0
x16759:	cmp word [bp + 12], 0	; 4: 131 126 12 0
x16763:	je scanLongInt$85	; 2: 116 11

scanLongInt$83:	; UnarySubtract £temporary1457 longValue
x16765:	mov eax, [bp + 8]	; 4: 102 139 70 8
x16769:	neg eax	; 3: 102 247 216

scanLongInt$84:	; Assign longValue £temporary1457
x16772:	mov [bp + 8], eax	; 4: 102 137 70 8

scanLongInt$85:	; Equal 87 found 0
x16776:	cmp word [bp + 14], 0	; 4: 131 126 14 0
x16780:	je scanLongInt$87	; 2: 116 4

scanLongInt$86:	; Increment g_inCount
x16782:	inc word [g_inCount]	; 4: 255 6 244 60

scanLongInt$87:	; CallHeader 17 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongInt$88:	; Parameter 17 input 6
x16786:	mov al, [bp + 16]	; 3: 138 70 16
x16789:	mov [bp + 23], al	; 3: 136 70 23

scanLongInt$89:	; Call 17 unscanChar 0
x16792:	mov word [bp + 17], scanLongInt$90	; 5: 199 70 17 166 65
x16797:	mov [bp + 19], bp	; 3: 137 110 19
x16800:	add bp, 17	; 3: 131 197 17
x16803:	jmp unscanChar	; 3: 233 112 2

scanLongInt$90:	; PostCall 17

scanLongInt$91:	; SetReturnValue longValue
x16806:	mov ebx, [bp + 8]	; 4: 102 139 94 8

scanLongInt$92:	; Return longValue
x16810:	mov ax, [bp]	; 3: 139 70 0
x16813:	mov di, [bp + 4]	; 3: 139 126 4
x16816:	mov bp, [bp + 2]	; 3: 139 110 2
x16819:	jmp ax	; 2: 255 224

scanLongInt$93:	; FunctionEnd scanLongInt

@1648$isDigitInBase:	; CallHeader 9 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1648$isDigitInBase$1:	; IntegralToIntegral £temporary1381 c
x16821:	mov al, [bp + 6]	; 3: 138 70 6
x16824:	and ax, 255	; 3: 37 255 0
x16827:	cmp al, 0	; 2: 60 0
x16829:	jge @1648$isDigitInBase$2	; 2: 125 4
x16831:	neg al	; 2: 246 216
x16833:	neg ax	; 2: 247 216

@1648$isDigitInBase$2:	; Parameter 9 £temporary1381 6
x16835:	mov [bp + 15], ax	; 3: 137 70 15

@1648$isDigitInBase$3:	; Call 9 isdigit 0
x16838:	mov word [bp + 9], @1648$isDigitInBase$4	; 5: 199 70 9 212 65
x16843:	mov [bp + 11], bp	; 3: 137 110 11
x16846:	add bp, 9	; 3: 131 197 9
x16849:	jmp isdigit	; 3: 233 96 245

@1648$isDigitInBase$4:	; PostCall 9

@1648$isDigitInBase$5:	; GetReturnValue £temporary1382

@1648$isDigitInBase$6:	; Equal 17 £temporary1382 0
x16852:	cmp bx, 0	; 3: 131 251 0
x16855:	je @1648$isDigitInBase$17	; 2: 116 52

@1648$isDigitInBase$7:	; BinarySubtract £temporary1383 c 48
x16857:	mov al, [bp + 6]	; 3: 138 70 6
x16860:	sub al, 48	; 2: 44 48

@1648$isDigitInBase$8:	; IntegralToIntegral £temporary1384 £temporary1383
x16862:	and ax, 255	; 3: 37 255 0
x16865:	cmp al, 0	; 2: 60 0
x16867:	jge @1648$isDigitInBase$9	; 2: 125 4
x16869:	neg al	; 2: 246 216
x16871:	neg ax	; 2: 247 216

@1648$isDigitInBase$9:	; Assign value £temporary1384
x16873:	mov [bp + 9], ax	; 3: 137 70 9

@1648$isDigitInBase$10:	; SignedLessThan 14 value 0
x16876:	cmp word [bp + 9], 0	; 4: 131 126 9 0
x16880:	jl @1648$isDigitInBase$14	; 2: 124 13

@1648$isDigitInBase$11:	; SignedGreaterThanEqual 14 value base
x16882:	mov ax, [bp + 7]	; 3: 139 70 7
x16885:	cmp [bp + 9], ax	; 3: 57 70 9
x16888:	jge @1648$isDigitInBase$14	; 2: 125 5

@1648$isDigitInBase$12:	; Assign £temporary1388 1
x16890:	mov bx, 1	; 3: 187 1 0

@1648$isDigitInBase$13:	; Goto 15
x16893:	jmp @1648$isDigitInBase$15	; 2: 235 3

@1648$isDigitInBase$14:	; Assign £temporary1388 0
x16895:	mov bx, 0	; 3: 187 0 0

@1648$isDigitInBase$15:	; SetReturnValue £temporary1388

@1648$isDigitInBase$16:	; Return £temporary1388
x16898:	mov ax, [bp]	; 3: 139 70 0
x16901:	mov di, [bp + 4]	; 3: 139 126 4
x16904:	mov bp, [bp + 2]	; 3: 139 110 2
x16907:	jmp ax	; 2: 255 224

@1648$isDigitInBase$17:	; CallHeader 9 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1648$isDigitInBase$18:	; IntegralToIntegral £temporary1389 c
x16909:	mov al, [bp + 6]	; 3: 138 70 6
x16912:	and ax, 255	; 3: 37 255 0
x16915:	cmp al, 0	; 2: 60 0
x16917:	jge @1648$isDigitInBase$19	; 2: 125 4
x16919:	neg al	; 2: 246 216
x16921:	neg ax	; 2: 247 216

@1648$isDigitInBase$19:	; Parameter 9 £temporary1389 6
x16923:	mov [bp + 15], ax	; 3: 137 70 15

@1648$isDigitInBase$20:	; Call 9 islower 0
x16926:	mov word [bp + 9], @1648$isDigitInBase$21	; 5: 199 70 9 44 66
x16931:	mov [bp + 11], bp	; 3: 137 110 11
x16934:	add bp, 9	; 3: 131 197 9
x16937:	jmp islower	; 3: 233 165 0

@1648$isDigitInBase$21:	; PostCall 9

@1648$isDigitInBase$22:	; GetReturnValue £temporary1390

@1648$isDigitInBase$23:	; Equal 34 £temporary1390 0
x16940:	cmp bx, 0	; 3: 131 251 0
x16943:	je @1648$isDigitInBase$34	; 2: 116 55

@1648$isDigitInBase$24:	; BinarySubtract £temporary1391 c 97
x16945:	mov al, [bp + 6]	; 3: 138 70 6
x16948:	sub al, 97	; 2: 44 97

@1648$isDigitInBase$25:	; IntegralToIntegral £temporary1392 £temporary1391
x16950:	and ax, 255	; 3: 37 255 0
x16953:	cmp al, 0	; 2: 60 0
x16955:	jge @1648$isDigitInBase$26	; 2: 125 4
x16957:	neg al	; 2: 246 216
x16959:	neg ax	; 2: 247 216

@1648$isDigitInBase$26:	; BinaryAdd value £temporary1392 10
x16961:	add ax, 10	; 3: 131 192 10
x16964:	mov [bp + 9], ax	; 3: 137 70 9

@1648$isDigitInBase$27:	; SignedLessThan 31 value 0
x16967:	cmp word [bp + 9], 0	; 4: 131 126 9 0
x16971:	jl @1648$isDigitInBase$31	; 2: 124 13

@1648$isDigitInBase$28:	; SignedGreaterThanEqual 31 value base
x16973:	mov ax, [bp + 7]	; 3: 139 70 7
x16976:	cmp [bp + 9], ax	; 3: 57 70 9
x16979:	jge @1648$isDigitInBase$31	; 2: 125 5

@1648$isDigitInBase$29:	; Assign £temporary1397 1
x16981:	mov bx, 1	; 3: 187 1 0

@1648$isDigitInBase$30:	; Goto 32
x16984:	jmp @1648$isDigitInBase$32	; 2: 235 3

@1648$isDigitInBase$31:	; Assign £temporary1397 0
x16986:	mov bx, 0	; 3: 187 0 0

@1648$isDigitInBase$32:	; SetReturnValue £temporary1397

@1648$isDigitInBase$33:	; Return £temporary1397
x16989:	mov ax, [bp]	; 3: 139 70 0
x16992:	mov di, [bp + 4]	; 3: 139 126 4
x16995:	mov bp, [bp + 2]	; 3: 139 110 2
x16998:	jmp ax	; 2: 255 224

@1648$isDigitInBase$34:	; CallHeader 9 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1648$isDigitInBase$35:	; IntegralToIntegral £temporary1398 c
x17000:	mov al, [bp + 6]	; 3: 138 70 6
x17003:	and ax, 255	; 3: 37 255 0
x17006:	cmp al, 0	; 2: 60 0
x17008:	jge @1648$isDigitInBase$36	; 2: 125 4
x17010:	neg al	; 2: 246 216
x17012:	neg ax	; 2: 247 216

@1648$isDigitInBase$36:	; Parameter 9 £temporary1398 6
x17014:	mov [bp + 15], ax	; 3: 137 70 15

@1648$isDigitInBase$37:	; Call 9 isupper 0
x17017:	mov word [bp + 9], @1648$isDigitInBase$38	; 5: 199 70 9 135 66
x17022:	mov [bp + 11], bp	; 3: 137 110 11
x17025:	add bp, 9	; 3: 131 197 9
x17028:	jmp isupper	; 3: 233 113 231

@1648$isDigitInBase$38:	; PostCall 9

@1648$isDigitInBase$39:	; GetReturnValue £temporary1399

@1648$isDigitInBase$40:	; Equal 51 £temporary1399 0
x17031:	cmp bx, 0	; 3: 131 251 0
x17034:	je @1648$isDigitInBase$51	; 2: 116 55

@1648$isDigitInBase$41:	; BinarySubtract £temporary1400 c 65
x17036:	mov al, [bp + 6]	; 3: 138 70 6
x17039:	sub al, 65	; 2: 44 65

@1648$isDigitInBase$42:	; IntegralToIntegral £temporary1401 £temporary1400
x17041:	and ax, 255	; 3: 37 255 0
x17044:	cmp al, 0	; 2: 60 0
x17046:	jge @1648$isDigitInBase$43	; 2: 125 4
x17048:	neg al	; 2: 246 216
x17050:	neg ax	; 2: 247 216

@1648$isDigitInBase$43:	; BinaryAdd value £temporary1401 10
x17052:	add ax, 10	; 3: 131 192 10
x17055:	mov [bp + 9], ax	; 3: 137 70 9

@1648$isDigitInBase$44:	; SignedLessThan 48 value 0
x17058:	cmp word [bp + 9], 0	; 4: 131 126 9 0
x17062:	jl @1648$isDigitInBase$48	; 2: 124 13

@1648$isDigitInBase$45:	; SignedGreaterThanEqual 48 value base
x17064:	mov ax, [bp + 7]	; 3: 139 70 7
x17067:	cmp [bp + 9], ax	; 3: 57 70 9
x17070:	jge @1648$isDigitInBase$48	; 2: 125 5

@1648$isDigitInBase$46:	; Assign £temporary1406 1
x17072:	mov bx, 1	; 3: 187 1 0

@1648$isDigitInBase$47:	; Goto 49
x17075:	jmp @1648$isDigitInBase$49	; 2: 235 3

@1648$isDigitInBase$48:	; Assign £temporary1406 0
x17077:	mov bx, 0	; 3: 187 0 0

@1648$isDigitInBase$49:	; SetReturnValue £temporary1406

@1648$isDigitInBase$50:	; Return £temporary1406
x17080:	mov ax, [bp]	; 3: 139 70 0
x17083:	mov di, [bp + 4]	; 3: 139 126 4
x17086:	mov bp, [bp + 2]	; 3: 139 110 2
x17089:	jmp ax	; 2: 255 224

@1648$isDigitInBase$51:	; SetReturnValue 0
x17091:	mov bx, 0	; 3: 187 0 0

@1648$isDigitInBase$52:	; Return 0
x17094:	mov ax, [bp]	; 3: 139 70 0
x17097:	mov di, [bp + 4]	; 3: 139 126 4
x17100:	mov bp, [bp + 2]	; 3: 139 110 2
x17103:	jmp ax	; 2: 255 224

@1648$isDigitInBase$53:	; FunctionEnd isDigitInBase

islower:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

islower$1:	; Call 8 localeconv 0
x17105:	mov word [bp + 8], islower$2	; 5: 199 70 8 223 66
x17110:	mov [bp + 10], bp	; 3: 137 110 10
x17113:	add bp, 8	; 3: 131 197 8
x17116:	jmp localeconv	; 3: 233 132 231

islower$2:	; PostCall 8

islower$3:	; GetReturnValue £temporary373

islower$4:	; Assign localeConvPtr £temporary373
x17119:	mov [bp + 8], bx	; 3: 137 94 8

islower$5:	; Equal 19 localeConvPtr 0
x17122:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x17126:	je islower$19	; 2: 116 53

islower$6:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

islower$7:	; Deref £temporary375 -> localeConvPtr localeConvPtr 12
x17128:	mov si, [bp + 8]	; 3: 139 118 8

islower$8:	; Parameter 10 £temporary375 -> localeConvPtr 6
x17131:	mov ax, [si + 12]	; 3: 139 68 12
x17134:	mov [bp + 16], ax	; 3: 137 70 16

islower$9:	; Parameter 10 c 8
x17137:	mov ax, [bp + 6]	; 3: 139 70 6
x17140:	mov [bp + 18], ax	; 3: 137 70 18

islower$10:	; Call 10 strchr 0
x17143:	mov word [bp + 10], islower$11	; 5: 199 70 10 5 67
x17148:	mov [bp + 12], bp	; 3: 137 110 12
x17151:	add bp, 10	; 3: 131 197 10
x17154:	jmp strchr	; 3: 233 160 234

islower$11:	; PostCall 10

islower$12:	; GetReturnValue £temporary376

islower$13:	; Equal 16 £temporary376 0
x17157:	cmp bx, 0	; 3: 131 251 0
x17160:	je islower$16	; 2: 116 5

islower$14:	; Assign £temporary378 1
x17162:	mov bx, 1	; 3: 187 1 0

islower$15:	; Goto 17
x17165:	jmp islower$17	; 2: 235 3

islower$16:	; Assign £temporary378 0
x17167:	mov bx, 0	; 3: 187 0 0

islower$17:	; SetReturnValue £temporary378

islower$18:	; Return £temporary378
x17170:	mov ax, [bp]	; 3: 139 70 0
x17173:	mov di, [bp + 4]	; 3: 139 126 4
x17176:	mov bp, [bp + 2]	; 3: 139 110 2
x17179:	jmp ax	; 2: 255 224

islower$19:	; SignedLessThan 23 c 97
x17181:	cmp word [bp + 6], 97	; 4: 131 126 6 97
x17185:	jl islower$23	; 2: 124 11

islower$20:	; SignedGreaterThan 23 c 122
x17187:	cmp word [bp + 6], 122	; 4: 131 126 6 122
x17191:	jg islower$23	; 2: 127 5

islower$21:	; Assign £temporary382 1
x17193:	mov bx, 1	; 3: 187 1 0

islower$22:	; Goto 24
x17196:	jmp islower$24	; 2: 235 3

islower$23:	; Assign £temporary382 0
x17198:	mov bx, 0	; 3: 187 0 0

islower$24:	; SetReturnValue £temporary382

islower$25:	; Return £temporary382
x17201:	mov ax, [bp]	; 3: 139 70 0
x17204:	mov di, [bp + 4]	; 3: 139 126 4
x17207:	mov bp, [bp + 2]	; 3: 139 110 2
x17210:	jmp ax	; 2: 255 224

islower$26:	; FunctionEnd islower

@1684$digitToValue:	; CallHeader 7 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1684$digitToValue$1:	; IntegralToIntegral £temporary1413 c
x17212:	mov al, [bp + 6]	; 3: 138 70 6
x17215:	and ax, 255	; 3: 37 255 0
x17218:	cmp al, 0	; 2: 60 0
x17220:	jge @1684$digitToValue$2	; 2: 125 4
x17222:	neg al	; 2: 246 216
x17224:	neg ax	; 2: 247 216

@1684$digitToValue$2:	; Parameter 7 £temporary1413 6
x17226:	mov [bp + 13], ax	; 3: 137 70 13

@1684$digitToValue$3:	; Call 7 isdigit 0
x17229:	mov word [bp + 7], @1684$digitToValue$4	; 5: 199 70 7 91 67
x17234:	mov [bp + 9], bp	; 3: 137 110 9
x17237:	add bp, 7	; 3: 131 197 7
x17240:	jmp isdigit	; 3: 233 217 243

@1684$digitToValue$4:	; PostCall 7

@1684$digitToValue$5:	; GetReturnValue £temporary1414

@1684$digitToValue$6:	; Equal 11 £temporary1414 0
x17243:	cmp bx, 0	; 3: 131 251 0
x17246:	je @1684$digitToValue$11	; 2: 116 30

@1684$digitToValue$7:	; BinarySubtract £temporary1415 c 48
x17248:	mov bl, [bp + 6]	; 3: 138 94 6
x17251:	sub bl, 48	; 3: 128 235 48

@1684$digitToValue$8:	; IntegralToIntegral £temporary1416 £temporary1415
x17254:	and bx, 255	; 4: 129 227 255 0
x17258:	cmp bl, 0	; 3: 128 251 0
x17261:	jge @1684$digitToValue$9	; 2: 125 4
x17263:	neg bl	; 2: 246 219
x17265:	neg bx	; 2: 247 219

@1684$digitToValue$9:	; SetReturnValue £temporary1416

@1684$digitToValue$10:	; Return £temporary1416
x17267:	mov ax, [bp]	; 3: 139 70 0
x17270:	mov di, [bp + 4]	; 3: 139 126 4
x17273:	mov bp, [bp + 2]	; 3: 139 110 2
x17276:	jmp ax	; 2: 255 224

@1684$digitToValue$11:	; CallHeader 7 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1684$digitToValue$12:	; IntegralToIntegral £temporary1417 c
x17278:	mov al, [bp + 6]	; 3: 138 70 6
x17281:	and ax, 255	; 3: 37 255 0
x17284:	cmp al, 0	; 2: 60 0
x17286:	jge @1684$digitToValue$13	; 2: 125 4
x17288:	neg al	; 2: 246 216
x17290:	neg ax	; 2: 247 216

@1684$digitToValue$13:	; Parameter 7 £temporary1417 6
x17292:	mov [bp + 13], ax	; 3: 137 70 13

@1684$digitToValue$14:	; Call 7 islower 0
x17295:	mov word [bp + 7], @1684$digitToValue$15	; 5: 199 70 7 157 67
x17300:	mov [bp + 9], bp	; 3: 137 110 9
x17303:	add bp, 7	; 3: 131 197 7
x17306:	jmp islower	; 3: 233 52 255

@1684$digitToValue$15:	; PostCall 7

@1684$digitToValue$16:	; GetReturnValue £temporary1418

@1684$digitToValue$17:	; Equal 23 £temporary1418 0
x17309:	cmp bx, 0	; 3: 131 251 0
x17312:	je @1684$digitToValue$23	; 2: 116 33

@1684$digitToValue$18:	; BinarySubtract £temporary1419 c 97
x17314:	mov bl, [bp + 6]	; 3: 138 94 6
x17317:	sub bl, 97	; 3: 128 235 97

@1684$digitToValue$19:	; IntegralToIntegral £temporary1420 £temporary1419
x17320:	and bx, 255	; 4: 129 227 255 0
x17324:	cmp bl, 0	; 3: 128 251 0
x17327:	jge @1684$digitToValue$20	; 2: 125 4
x17329:	neg bl	; 2: 246 219
x17331:	neg bx	; 2: 247 219

@1684$digitToValue$20:	; BinaryAdd £temporary1421 £temporary1420 10
x17333:	add bx, 10	; 3: 131 195 10

@1684$digitToValue$21:	; SetReturnValue £temporary1421

@1684$digitToValue$22:	; Return £temporary1421
x17336:	mov ax, [bp]	; 3: 139 70 0
x17339:	mov di, [bp + 4]	; 3: 139 126 4
x17342:	mov bp, [bp + 2]	; 3: 139 110 2
x17345:	jmp ax	; 2: 255 224

@1684$digitToValue$23:	; CallHeader 7 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1684$digitToValue$24:	; IntegralToIntegral £temporary1422 c
x17347:	mov al, [bp + 6]	; 3: 138 70 6
x17350:	and ax, 255	; 3: 37 255 0
x17353:	cmp al, 0	; 2: 60 0
x17355:	jge @1684$digitToValue$25	; 2: 125 4
x17357:	neg al	; 2: 246 216
x17359:	neg ax	; 2: 247 216

@1684$digitToValue$25:	; Parameter 7 £temporary1422 6
x17361:	mov [bp + 13], ax	; 3: 137 70 13

@1684$digitToValue$26:	; Call 7 isupper 0
x17364:	mov word [bp + 7], @1684$digitToValue$27	; 5: 199 70 7 226 67
x17369:	mov [bp + 9], bp	; 3: 137 110 9
x17372:	add bp, 7	; 3: 131 197 7
x17375:	jmp isupper	; 3: 233 22 230

@1684$digitToValue$27:	; PostCall 7

@1684$digitToValue$28:	; GetReturnValue £temporary1423

@1684$digitToValue$29:	; Equal 35 £temporary1423 0
x17378:	cmp bx, 0	; 3: 131 251 0
x17381:	je @1684$digitToValue$35	; 2: 116 33

@1684$digitToValue$30:	; BinarySubtract £temporary1424 c 65
x17383:	mov bl, [bp + 6]	; 3: 138 94 6
x17386:	sub bl, 65	; 3: 128 235 65

@1684$digitToValue$31:	; IntegralToIntegral £temporary1425 £temporary1424
x17389:	and bx, 255	; 4: 129 227 255 0
x17393:	cmp bl, 0	; 3: 128 251 0
x17396:	jge @1684$digitToValue$32	; 2: 125 4
x17398:	neg bl	; 2: 246 219
x17400:	neg bx	; 2: 247 219

@1684$digitToValue$32:	; BinaryAdd £temporary1426 £temporary1425 10
x17402:	add bx, 10	; 3: 131 195 10

@1684$digitToValue$33:	; SetReturnValue £temporary1426

@1684$digitToValue$34:	; Return £temporary1426
x17405:	mov ax, [bp]	; 3: 139 70 0
x17408:	mov di, [bp + 4]	; 3: 139 126 4
x17411:	mov bp, [bp + 2]	; 3: 139 110 2
x17414:	jmp ax	; 2: 255 224

@1684$digitToValue$35:	; SetReturnValue 0
x17416:	mov bx, 0	; 3: 187 0 0

@1684$digitToValue$36:	; Return 0
x17419:	mov ax, [bp]	; 3: 139 70 0
x17422:	mov di, [bp + 4]	; 3: 139 126 4
x17425:	mov bp, [bp + 2]	; 3: 139 110 2
x17428:	jmp ax	; 2: 255 224

@1684$digitToValue$37:	; FunctionEnd digitToValue

unscanChar:	; Case 4 g_inStatus 0
x17430:	mov ax, [g_inStatus]	; 3: 161 208 55
x17433:	cmp ax, 0	; 3: 131 248 0
x17436:	je unscanChar$4	; 2: 116 7

unscanChar$1:	; Case 6 g_inStatus 1
x17438:	cmp ax, 1	; 3: 131 248 1
x17441:	je unscanChar$6	; 2: 116 8

unscanChar$2:	; CaseEnd g_inStatus

unscanChar$3:	; Goto 7
x17443:	jmp unscanChar$7	; 2: 235 10

unscanChar$4:	; Decrement g_inChars
x17445:	dec word [g_inChars]	; 4: 255 14 246 60

unscanChar$5:	; Goto 7
x17449:	jmp unscanChar$7	; 2: 235 4

unscanChar$6:	; Decrement g_inChars
x17451:	dec word [g_inChars]	; 4: 255 14 246 60

unscanChar$7:	; Return 0
x17455:	mov ax, [bp]	; 3: 139 70 0
x17458:	mov di, [bp + 4]	; 3: 139 126 4
x17461:	mov bp, [bp + 2]	; 3: 139 110 2
x17464:	jmp ax	; 2: 255 224

unscanChar$8:	; FunctionEnd unscanChar

scanUnsignedLongInt:	; Assign unsignedLongValue 0
x17466:	mov dword [bp + 8], 0	; 8: 102 199 70 8 0 0 0 0

scanUnsignedLongInt$1:	; CallHeader 16 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$2:	; Call 16 scanChar 0
x17474:	mov word [bp + 16], scanUnsignedLongInt$3	; 5: 199 70 16 80 68
x17479:	mov [bp + 18], bp	; 3: 137 110 18
x17482:	add bp, 16	; 3: 131 197 16
x17485:	jmp scanChar	; 3: 233 189 248

scanUnsignedLongInt$3:	; PostCall 16

scanUnsignedLongInt$4:	; GetReturnValue £temporary1468

scanUnsignedLongInt$5:	; Assign input £temporary1468
x17488:	mov [bp + 16], bl	; 3: 136 94 16

scanUnsignedLongInt$6:	; Assign found 1
x17491:	mov word [bp + 17], 1	; 5: 199 70 17 1 0

scanUnsignedLongInt$7:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$8:	; IntegralToIntegral £temporary1469 input
x17496:	mov al, [bp + 16]	; 3: 138 70 16
x17499:	and ax, 255	; 3: 37 255 0
x17502:	cmp al, 0	; 2: 60 0
x17504:	jge scanUnsignedLongInt$9	; 2: 125 4
x17506:	neg al	; 2: 246 216
x17508:	neg ax	; 2: 247 216

scanUnsignedLongInt$9:	; Parameter 19 £temporary1469 6
x17510:	mov [bp + 25], ax	; 3: 137 70 25

scanUnsignedLongInt$10:	; Call 19 isspace 0
x17513:	mov word [bp + 19], scanUnsignedLongInt$11	; 5: 199 70 19 119 68
x17518:	mov [bp + 21], bp	; 3: 137 110 21
x17521:	add bp, 19	; 3: 131 197 19
x17524:	jmp isspace	; 3: 233 82 251

scanUnsignedLongInt$11:	; PostCall 19

scanUnsignedLongInt$12:	; GetReturnValue £temporary1470

scanUnsignedLongInt$13:	; Equal 20 £temporary1470 0
x17527:	cmp bx, 0	; 3: 131 251 0
x17530:	je scanUnsignedLongInt$20	; 2: 116 19

scanUnsignedLongInt$14:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$15:	; Call 19 scanChar 0
x17532:	mov word [bp + 19], scanUnsignedLongInt$16	; 5: 199 70 19 138 68
x17537:	mov [bp + 21], bp	; 3: 137 110 21
x17540:	add bp, 19	; 3: 131 197 19
x17543:	jmp scanChar	; 3: 233 131 248

scanUnsignedLongInt$16:	; PostCall 19

scanUnsignedLongInt$17:	; GetReturnValue £temporary1471

scanUnsignedLongInt$18:	; Assign input £temporary1471
x17546:	mov [bp + 16], bl	; 3: 136 94 16

scanUnsignedLongInt$19:	; Goto 7
x17549:	jmp scanUnsignedLongInt$7	; 2: 235 201

scanUnsignedLongInt$20:	; NotEqual 26 input 43
x17551:	cmp byte [bp + 16], 43	; 4: 128 126 16 43
x17555:	jne scanUnsignedLongInt$26	; 2: 117 17

scanUnsignedLongInt$21:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$22:	; Call 19 scanChar 0
x17557:	mov word [bp + 19], scanUnsignedLongInt$23	; 5: 199 70 19 163 68
x17562:	mov [bp + 21], bp	; 3: 137 110 21
x17565:	add bp, 19	; 3: 131 197 19
x17568:	jmp scanChar	; 3: 233 106 248

scanUnsignedLongInt$23:	; PostCall 19

scanUnsignedLongInt$24:	; GetReturnValue £temporary1474

scanUnsignedLongInt$25:	; Assign input £temporary1474
x17571:	mov [bp + 16], bl	; 3: 136 94 16

scanUnsignedLongInt$26:	; NotEqual 50 base 0
x17574:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x17578:	jne scanUnsignedLongInt$50	; 2: 117 95

scanUnsignedLongInt$27:	; NotEqual 49 input 48
x17580:	cmp byte [bp + 16], 48	; 4: 128 126 16 48
x17584:	jne scanUnsignedLongInt$49	; 2: 117 84

scanUnsignedLongInt$28:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$29:	; Call 19 scanChar 0
x17586:	mov word [bp + 19], scanUnsignedLongInt$30	; 5: 199 70 19 192 68
x17591:	mov [bp + 21], bp	; 3: 137 110 21
x17594:	add bp, 19	; 3: 131 197 19
x17597:	jmp scanChar	; 3: 233 77 248

scanUnsignedLongInt$30:	; PostCall 19

scanUnsignedLongInt$31:	; GetReturnValue £temporary1477

scanUnsignedLongInt$32:	; Assign input £temporary1477
x17600:	mov [bp + 16], bl	; 3: 136 94 16

scanUnsignedLongInt$33:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$34:	; IntegralToIntegral £temporary1478 input
x17603:	mov al, [bp + 16]	; 3: 138 70 16
x17606:	and ax, 255	; 3: 37 255 0
x17609:	cmp al, 0	; 2: 60 0
x17611:	jge scanUnsignedLongInt$35	; 2: 125 4
x17613:	neg al	; 2: 246 216
x17615:	neg ax	; 2: 247 216

scanUnsignedLongInt$35:	; Parameter 19 £temporary1478 6
x17617:	mov [bp + 25], ax	; 3: 137 70 25

scanUnsignedLongInt$36:	; Call 19 tolower 0
x17620:	mov word [bp + 19], scanUnsignedLongInt$37	; 5: 199 70 19 226 68
x17625:	mov [bp + 21], bp	; 3: 137 110 21
x17628:	add bp, 19	; 3: 131 197 19
x17631:	jmp tolower	; 3: 233 36 236

scanUnsignedLongInt$37:	; PostCall 19

scanUnsignedLongInt$38:	; GetReturnValue £temporary1479

scanUnsignedLongInt$39:	; NotEqual 47 £temporary1479 120
x17634:	cmp bx, 120	; 3: 131 251 120
x17637:	jne scanUnsignedLongInt$47	; 2: 117 24

scanUnsignedLongInt$40:	; Assign base 16
x17639:	mov word [bp + 6], 16	; 5: 199 70 6 16 0

scanUnsignedLongInt$41:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$42:	; Call 19 scanChar 0
x17644:	mov word [bp + 19], scanUnsignedLongInt$43	; 5: 199 70 19 250 68
x17649:	mov [bp + 21], bp	; 3: 137 110 21
x17652:	add bp, 19	; 3: 131 197 19
x17655:	jmp scanChar	; 3: 233 19 248

scanUnsignedLongInt$43:	; PostCall 19

scanUnsignedLongInt$44:	; GetReturnValue £temporary1481

scanUnsignedLongInt$45:	; Assign input £temporary1481
x17658:	mov [bp + 16], bl	; 3: 136 94 16

scanUnsignedLongInt$46:	; Goto 50
x17661:	jmp scanUnsignedLongInt$50	; 2: 235 12

scanUnsignedLongInt$47:	; Assign base 8
x17663:	mov word [bp + 6], 8	; 5: 199 70 6 8 0

scanUnsignedLongInt$48:	; Goto 50
x17668:	jmp scanUnsignedLongInt$50	; 2: 235 5

scanUnsignedLongInt$49:	; Assign base 10
x17670:	mov word [bp + 6], 10	; 5: 199 70 6 10 0

scanUnsignedLongInt$50:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$51:	; Parameter 19 input 6
x17675:	mov al, [bp + 16]	; 3: 138 70 16
x17678:	mov [bp + 25], al	; 3: 136 70 25

scanUnsignedLongInt$52:	; Parameter 19 base 7
x17681:	mov ax, [bp + 6]	; 3: 139 70 6
x17684:	mov [bp + 26], ax	; 3: 137 70 26

scanUnsignedLongInt$53:	; Call 19 isDigitInBase 0
x17687:	mov word [bp + 19], scanUnsignedLongInt$54	; 5: 199 70 19 37 69
x17692:	mov [bp + 21], bp	; 3: 137 110 21
x17695:	add bp, 19	; 3: 131 197 19
x17698:	jmp @1648$isDigitInBase	; 3: 233 144 252

scanUnsignedLongInt$54:	; PostCall 19

scanUnsignedLongInt$55:	; GetReturnValue £temporary1482

scanUnsignedLongInt$56:	; Equal 73 £temporary1482 0
x17701:	cmp bx, 0	; 3: 131 251 0
x17704:	je scanUnsignedLongInt$73	; 2: 116 79

scanUnsignedLongInt$57:	; IntegralToIntegral £temporary1483 base
x17706:	mov bx, [bp + 6]	; 3: 139 94 6
x17709:	and ebx, 65535	; 7: 102 129 227 255 255 0 0

scanUnsignedLongInt$58:	; UnsignedMultiply unsignedLongValue unsignedLongValue £temporary1483
x17716:	mov eax, [bp + 8]	; 4: 102 139 70 8
x17720:	xor edx, edx	; 3: 102 49 210
x17723:	mul ebx	; 3: 102 247 227
x17726:	mov [bp + 8], eax	; 4: 102 137 70 8

scanUnsignedLongInt$59:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$60:	; Parameter 19 input 6
x17730:	mov al, [bp + 16]	; 3: 138 70 16
x17733:	mov [bp + 25], al	; 3: 136 70 25

scanUnsignedLongInt$61:	; Call 19 digitToValue 0
x17736:	mov word [bp + 19], scanUnsignedLongInt$62	; 5: 199 70 19 86 69
x17741:	mov [bp + 21], bp	; 3: 137 110 21
x17744:	add bp, 19	; 3: 131 197 19
x17747:	jmp @1684$digitToValue	; 3: 233 230 253

scanUnsignedLongInt$62:	; PostCall 19

scanUnsignedLongInt$63:	; GetReturnValue £temporary1485

scanUnsignedLongInt$64:	; IntegralToIntegral £temporary1486 £temporary1485
x17750:	and ebx, 65535	; 7: 102 129 227 255 255 0 0

scanUnsignedLongInt$65:	; BinaryAdd unsignedLongValue unsignedLongValue £temporary1486
x17757:	add [bp + 8], ebx	; 4: 102 1 94 8

scanUnsignedLongInt$66:	; Assign found 1
x17761:	mov word [bp + 17], 1	; 5: 199 70 17 1 0

scanUnsignedLongInt$67:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$68:	; Call 19 scanChar 0
x17766:	mov word [bp + 19], scanUnsignedLongInt$69	; 5: 199 70 19 116 69
x17771:	mov [bp + 21], bp	; 3: 137 110 21
x17774:	add bp, 19	; 3: 131 197 19
x17777:	jmp scanChar	; 3: 233 153 247

scanUnsignedLongInt$69:	; PostCall 19

scanUnsignedLongInt$70:	; GetReturnValue £temporary1488

scanUnsignedLongInt$71:	; Assign input £temporary1488
x17780:	mov [bp + 16], bl	; 3: 136 94 16

scanUnsignedLongInt$72:	; Goto 50
x17783:	jmp scanUnsignedLongInt$50	; 2: 235 146

scanUnsignedLongInt$73:	; Equal 75 found 0
x17785:	cmp word [bp + 17], 0	; 4: 131 126 17 0
x17789:	je scanUnsignedLongInt$75	; 2: 116 4

scanUnsignedLongInt$74:	; Increment g_inCount
x17791:	inc word [g_inCount]	; 4: 255 6 244 60

scanUnsignedLongInt$75:	; CallHeader 19 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanUnsignedLongInt$76:	; Parameter 19 input 6
x17795:	mov al, [bp + 16]	; 3: 138 70 16
x17798:	mov [bp + 25], al	; 3: 136 70 25

scanUnsignedLongInt$77:	; Call 19 unscanChar 0
x17801:	mov word [bp + 19], scanUnsignedLongInt$78	; 5: 199 70 19 151 69
x17806:	mov [bp + 21], bp	; 3: 137 110 21
x17809:	add bp, 19	; 3: 131 197 19
x17812:	jmp unscanChar	; 3: 233 127 254

scanUnsignedLongInt$78:	; PostCall 19

scanUnsignedLongInt$79:	; SetReturnValue unsignedLongValue
x17815:	mov ebx, [bp + 8]	; 4: 102 139 94 8

scanUnsignedLongInt$80:	; Return unsignedLongValue
x17819:	mov ax, [bp]	; 3: 139 70 0
x17822:	mov di, [bp + 4]	; 3: 139 126 4
x17825:	mov bp, [bp + 2]	; 3: 139 110 2
x17828:	jmp ax	; 2: 255 224

scanUnsignedLongInt$81:	; FunctionEnd scanUnsignedLongInt

scanLongDouble:	; Assign minus 0
x17830:	mov word [bp + 6], 0	; 5: 199 70 6 0 0

scanLongDouble$1:	; Assign found 0
x17835:	mov word [bp + 8], 0	; 5: 199 70 8 0 0

scanLongDouble$2:	; PushFloat 0.0
x17840:	fldz	; 2: 217 238

scanLongDouble$3:	; PopFloat value
x17842:	fstp qword [bp + 10]	; 3: 221 94 10

scanLongDouble$4:	; PushFloat 1.0
x17845:	fld1	; 2: 217 232

scanLongDouble$5:	; PopFloat factor
x17847:	fstp qword [bp + 18]	; 3: 221 94 18

scanLongDouble$6:	; CallHeader 26 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$7:	; Call 26 scanChar 0
x17850:	mov word [bp + 26], scanLongDouble$8	; 5: 199 70 26 200 69
x17855:	mov [bp + 28], bp	; 3: 137 110 28
x17858:	add bp, 26	; 3: 131 197 26
x17861:	jmp scanChar	; 3: 233 69 247

scanLongDouble$8:	; PostCall 26

scanLongDouble$9:	; GetReturnValue £temporary1499

scanLongDouble$10:	; Assign input £temporary1499
x17864:	mov [bp + 26], bl	; 3: 136 94 26

scanLongDouble$11:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$12:	; IntegralToIntegral £temporary1500 input
x17867:	mov al, [bp + 26]	; 3: 138 70 26
x17870:	and ax, 255	; 3: 37 255 0
x17873:	cmp al, 0	; 2: 60 0
x17875:	jge scanLongDouble$13	; 2: 125 4
x17877:	neg al	; 2: 246 216
x17879:	neg ax	; 2: 247 216

scanLongDouble$13:	; Parameter 27 £temporary1500 6
x17881:	mov [bp + 33], ax	; 3: 137 70 33

scanLongDouble$14:	; Call 27 isspace 0
x17884:	mov word [bp + 27], scanLongDouble$15	; 5: 199 70 27 234 69
x17889:	mov [bp + 29], bp	; 3: 137 110 29
x17892:	add bp, 27	; 3: 131 197 27
x17895:	jmp isspace	; 3: 233 223 249

scanLongDouble$15:	; PostCall 27

scanLongDouble$16:	; GetReturnValue £temporary1501

scanLongDouble$17:	; Equal 24 £temporary1501 0
x17898:	cmp bx, 0	; 3: 131 251 0
x17901:	je scanLongDouble$24	; 2: 116 19

scanLongDouble$18:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$19:	; Call 27 scanChar 0
x17903:	mov word [bp + 27], scanLongDouble$20	; 5: 199 70 27 253 69
x17908:	mov [bp + 29], bp	; 3: 137 110 29
x17911:	add bp, 27	; 3: 131 197 27
x17914:	jmp scanChar	; 3: 233 16 247

scanLongDouble$20:	; PostCall 27

scanLongDouble$21:	; GetReturnValue £temporary1502

scanLongDouble$22:	; Assign input £temporary1502
x17917:	mov [bp + 26], bl	; 3: 136 94 26

scanLongDouble$23:	; Goto 11
x17920:	jmp scanLongDouble$11	; 2: 235 201

scanLongDouble$24:	; NotEqual 31 input 43
x17922:	cmp byte [bp + 26], 43	; 4: 128 126 26 43
x17926:	jne scanLongDouble$31	; 2: 117 19

scanLongDouble$25:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$26:	; Call 27 scanChar 0
x17928:	mov word [bp + 27], scanLongDouble$27	; 5: 199 70 27 22 70
x17933:	mov [bp + 29], bp	; 3: 137 110 29
x17936:	add bp, 27	; 3: 131 197 27
x17939:	jmp scanChar	; 3: 233 247 246

scanLongDouble$27:	; PostCall 27

scanLongDouble$28:	; GetReturnValue £temporary1505

scanLongDouble$29:	; Assign input £temporary1505
x17942:	mov [bp + 26], bl	; 3: 136 94 26

scanLongDouble$30:	; Goto 38
x17945:	jmp scanLongDouble$38	; 2: 235 28

scanLongDouble$31:	; NotEqual 38 input 45
x17947:	cmp byte [bp + 26], 45	; 4: 128 126 26 45
x17951:	jne scanLongDouble$38	; 2: 117 22

scanLongDouble$32:	; Assign minus 1
x17953:	mov word [bp + 6], 1	; 5: 199 70 6 1 0

scanLongDouble$33:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$34:	; Call 27 scanChar 0
x17958:	mov word [bp + 27], scanLongDouble$35	; 5: 199 70 27 52 70
x17963:	mov [bp + 29], bp	; 3: 137 110 29
x17966:	add bp, 27	; 3: 131 197 27
x17969:	jmp scanChar	; 3: 233 217 246

scanLongDouble$35:	; PostCall 27

scanLongDouble$36:	; GetReturnValue £temporary1507

scanLongDouble$37:	; Assign input £temporary1507
x17972:	mov [bp + 26], bl	; 3: 136 94 26

scanLongDouble$38:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$39:	; IntegralToIntegral £temporary1508 input
x17975:	mov al, [bp + 26]	; 3: 138 70 26
x17978:	and ax, 255	; 3: 37 255 0
x17981:	cmp al, 0	; 2: 60 0
x17983:	jge scanLongDouble$40	; 2: 125 4
x17985:	neg al	; 2: 246 216
x17987:	neg ax	; 2: 247 216

scanLongDouble$40:	; Parameter 27 £temporary1508 6
x17989:	mov [bp + 33], ax	; 3: 137 70 33

scanLongDouble$41:	; Call 27 isdigit 0
x17992:	mov word [bp + 27], scanLongDouble$42	; 5: 199 70 27 86 70
x17997:	mov [bp + 29], bp	; 3: 137 110 29
x18000:	add bp, 27	; 3: 131 197 27
x18003:	jmp isdigit	; 3: 233 222 240

scanLongDouble$42:	; PostCall 27

scanLongDouble$43:	; GetReturnValue £temporary1509

scanLongDouble$44:	; Equal 60 £temporary1509 0
x18006:	cmp bx, 0	; 3: 131 251 0
x18009:	je scanLongDouble$60	; 2: 116 61

scanLongDouble$45:	; PushFloat 10.0
x18011:	fld qword [float8$10.0#]	; 4: 221 6 220 48

scanLongDouble$46:	; PushFloat value
x18015:	fld qword [bp + 10]	; 3: 221 70 10

scanLongDouble$47:	; SignedMultiply £temporary1510 10.0 value
x18018:	fmul	; 2: 222 201

scanLongDouble$48:	; BinarySubtract £temporary1511 input 48
x18020:	mov al, [bp + 26]	; 3: 138 70 26
x18023:	sub al, 48	; 2: 44 48

scanLongDouble$49:	; IntegralToIntegral £temporary1513 £temporary1511
x18025:	and ax, 255	; 3: 37 255 0
x18028:	cmp al, 0	; 2: 60 0
x18030:	jge scanLongDouble$50	; 2: 125 4
x18032:	neg al	; 2: 246 216
x18034:	neg ax	; 2: 247 216

scanLongDouble$50:	; IntegralToFloating £temporary1512 £temporary1513
x18036:	mov [container2bytes#], ax	; 3: 163 174 21
x18039:	fild word [container2bytes#]	; 4: 223 6 174 21

scanLongDouble$51:	; BinaryAdd £temporary1514 £temporary1510 £temporary1512
x18043:	fadd	; 2: 222 193

scanLongDouble$52:	; PopFloat value
x18045:	fstp qword [bp + 10]	; 3: 221 94 10

scanLongDouble$53:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$54:	; Call 27 scanChar 0
x18048:	mov word [bp + 27], scanLongDouble$55	; 5: 199 70 27 142 70
x18053:	mov [bp + 29], bp	; 3: 137 110 29
x18056:	add bp, 27	; 3: 131 197 27
x18059:	jmp scanChar	; 3: 233 127 246

scanLongDouble$55:	; PostCall 27

scanLongDouble$56:	; GetReturnValue £temporary1515

scanLongDouble$57:	; Assign input £temporary1515
x18062:	mov [bp + 26], bl	; 3: 136 94 26

scanLongDouble$58:	; Assign found 1
x18065:	mov word [bp + 8], 1	; 5: 199 70 8 1 0

scanLongDouble$59:	; Goto 38
x18070:	jmp scanLongDouble$38	; 2: 235 159

scanLongDouble$60:	; NotEqual 92 input 46
x18072:	cmp byte [bp + 26], 46	; 4: 128 126 26 46
x18076:	jne scanLongDouble$92	; 2: 117 125

scanLongDouble$61:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$62:	; Call 27 scanChar 0
x18078:	mov word [bp + 27], scanLongDouble$63	; 5: 199 70 27 172 70
x18083:	mov [bp + 29], bp	; 3: 137 110 29
x18086:	add bp, 27	; 3: 131 197 27
x18089:	jmp scanChar	; 3: 233 97 246

scanLongDouble$63:	; PostCall 27

scanLongDouble$64:	; GetReturnValue £temporary1518

scanLongDouble$65:	; Assign input £temporary1518
x18092:	mov [bp + 26], bl	; 3: 136 94 26

scanLongDouble$66:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$67:	; IntegralToIntegral £temporary1519 input
x18095:	mov al, [bp + 26]	; 3: 138 70 26
x18098:	and ax, 255	; 3: 37 255 0
x18101:	cmp al, 0	; 2: 60 0
x18103:	jge scanLongDouble$68	; 2: 125 4
x18105:	neg al	; 2: 246 216
x18107:	neg ax	; 2: 247 216

scanLongDouble$68:	; Parameter 27 £temporary1519 6
x18109:	mov [bp + 33], ax	; 3: 137 70 33

scanLongDouble$69:	; Call 27 isdigit 0
x18112:	mov word [bp + 27], scanLongDouble$70	; 5: 199 70 27 206 70
x18117:	mov [bp + 29], bp	; 3: 137 110 29
x18120:	add bp, 27	; 3: 131 197 27
x18123:	jmp isdigit	; 3: 233 102 240

scanLongDouble$70:	; PostCall 27

scanLongDouble$71:	; GetReturnValue £temporary1520

scanLongDouble$72:	; Equal 92 £temporary1520 0
x18126:	cmp bx, 0	; 3: 131 251 0
x18129:	je scanLongDouble$92	; 2: 116 72

scanLongDouble$73:	; PushFloat factor
x18131:	fld qword [bp + 18]	; 3: 221 70 18

scanLongDouble$74:	; PushFloat 10.0
x18134:	fld qword [float8$10.0#]	; 4: 221 6 220 48

scanLongDouble$75:	; SignedDivide £temporary1521 factor 10.0
x18138:	fdiv	; 2: 222 249

scanLongDouble$76:	; PopFloat factor
x18140:	fstp qword [bp + 18]	; 3: 221 94 18

scanLongDouble$77:	; PushFloat value
x18143:	fld qword [bp + 10]	; 3: 221 70 10

scanLongDouble$78:	; PushFloat factor
x18146:	fld qword [bp + 18]	; 3: 221 70 18

scanLongDouble$79:	; BinarySubtract £temporary1522 input 48
x18149:	mov al, [bp + 26]	; 3: 138 70 26
x18152:	sub al, 48	; 2: 44 48

scanLongDouble$80:	; IntegralToIntegral £temporary1524 £temporary1522
x18154:	and ax, 255	; 3: 37 255 0
x18157:	cmp al, 0	; 2: 60 0
x18159:	jge scanLongDouble$81	; 2: 125 4
x18161:	neg al	; 2: 246 216
x18163:	neg ax	; 2: 247 216

scanLongDouble$81:	; IntegralToFloating £temporary1523 £temporary1524
x18165:	mov [container2bytes#], ax	; 3: 163 174 21
x18168:	fild word [container2bytes#]	; 4: 223 6 174 21

scanLongDouble$82:	; SignedMultiply £temporary1525 factor £temporary1523
x18172:	fmul	; 2: 222 201

scanLongDouble$83:	; BinaryAdd £temporary1526 value £temporary1525
x18174:	fadd	; 2: 222 193

scanLongDouble$84:	; PopFloat value
x18176:	fstp qword [bp + 10]	; 3: 221 94 10

scanLongDouble$85:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$86:	; Call 27 scanChar 0
x18179:	mov word [bp + 27], scanLongDouble$87	; 5: 199 70 27 17 71
x18184:	mov [bp + 29], bp	; 3: 137 110 29
x18187:	add bp, 27	; 3: 131 197 27
x18190:	jmp scanChar	; 3: 233 252 245

scanLongDouble$87:	; PostCall 27

scanLongDouble$88:	; GetReturnValue £temporary1527

scanLongDouble$89:	; Assign input £temporary1527
x18193:	mov [bp + 26], bl	; 3: 136 94 26

scanLongDouble$90:	; Assign found 1
x18196:	mov word [bp + 8], 1	; 5: 199 70 8 1 0

scanLongDouble$91:	; Goto 66
x18201:	jmp scanLongDouble$66	; 2: 235 148

scanLongDouble$92:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$93:	; IntegralToIntegral £temporary1529 input
x18203:	mov al, [bp + 26]	; 3: 138 70 26
x18206:	and ax, 255	; 3: 37 255 0
x18209:	cmp al, 0	; 2: 60 0
x18211:	jge scanLongDouble$94	; 2: 125 4
x18213:	neg al	; 2: 246 216
x18215:	neg ax	; 2: 247 216

scanLongDouble$94:	; Parameter 27 £temporary1529 6
x18217:	mov [bp + 33], ax	; 3: 137 70 33

scanLongDouble$95:	; Call 27 tolower 0
x18220:	mov word [bp + 27], scanLongDouble$96	; 5: 199 70 27 58 71
x18225:	mov [bp + 29], bp	; 3: 137 110 29
x18228:	add bp, 27	; 3: 131 197 27
x18231:	jmp tolower	; 3: 233 204 233

scanLongDouble$96:	; PostCall 27

scanLongDouble$97:	; GetReturnValue £temporary1530

scanLongDouble$98:	; NotEqual 118 £temporary1530 101
x18234:	cmp bx, 101	; 3: 131 251 101
x18237:	jne scanLongDouble$118	; 2: 117 80

scanLongDouble$99:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$100:	; Parameter 27 10 6
x18239:	mov word [bp + 33], 10	; 5: 199 70 33 10 0

scanLongDouble$101:	; Call 27 scanLongInt 0
x18244:	mov word [bp + 27], scanLongDouble$102	; 5: 199 70 27 82 71
x18249:	mov [bp + 29], bp	; 3: 137 110 29
x18252:	add bp, 27	; 3: 131 197 27
x18255:	jmp scanLongInt	; 3: 233 174 248

scanLongDouble$102:	; PostCall 27

scanLongDouble$103:	; GetReturnValue £temporary1532

scanLongDouble$104:	; IntegralToFloating £temporary1533 £temporary1532
x18258:	mov [container4bytes#], ebx	; 5: 102 137 30 56 48
x18263:	fild dword [container4bytes#]	; 4: 219 6 56 48

scanLongDouble$105:	; PopFloat exponent
x18267:	fstp qword [bp + 27]	; 3: 221 94 27

scanLongDouble$106:	; PushFloat value
x18270:	fld qword [bp + 10]	; 3: 221 70 10

scanLongDouble$107:	; CallHeader 35 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 1
x18273:	fstp qword [bp + 35]	; 3: 221 94 35

scanLongDouble$108:	; PushFloat 10.0
x18276:	fld qword [float8$10.0#]	; 4: 221 6 220 48

scanLongDouble$109:	; Parameter 35 10.0 6
x18280:	fstp qword [bp + 49]	; 3: 221 94 49

scanLongDouble$110:	; PushFloat exponent
x18283:	fld qword [bp + 27]	; 3: 221 70 27

scanLongDouble$111:	; Parameter 35 exponent 14
x18286:	fstp qword [bp + 57]	; 3: 221 94 57

scanLongDouble$112:	; Call 35 pow 0
x18289:	mov word [bp + 43], scanLongDouble$113	; 5: 199 70 43 127 71
x18294:	mov [bp + 45], bp	; 3: 137 110 45
x18297:	add bp, 43	; 3: 131 197 43
x18300:	jmp pow	; 3: 233 236 236

scanLongDouble$113:	; PostCall 35
x18303:	fstp qword [bp + 43]	; 3: 221 94 43
x18306:	fld qword [bp + 35]	; 3: 221 70 35
x18309:	fld qword [bp + 43]	; 3: 221 70 43

scanLongDouble$114:	; GetReturnValue £temporary1534

scanLongDouble$115:	; SignedMultiply £temporary1535 value £temporary1534
x18312:	fmul	; 2: 222 201

scanLongDouble$116:	; PopFloat value
x18314:	fstp qword [bp + 10]	; 3: 221 94 10

scanLongDouble$117:	; Goto 122
x18317:	jmp scanLongDouble$122	; 2: 235 20

scanLongDouble$118:	; CallHeader 27 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanLongDouble$119:	; Parameter 27 input 6
x18319:	mov al, [bp + 26]	; 3: 138 70 26
x18322:	mov [bp + 33], al	; 3: 136 70 33

scanLongDouble$120:	; Call 27 unscanChar 0
x18325:	mov word [bp + 27], scanLongDouble$121	; 5: 199 70 27 163 71
x18330:	mov [bp + 29], bp	; 3: 137 110 29
x18333:	add bp, 27	; 3: 131 197 27
x18336:	jmp unscanChar	; 3: 233 115 252

scanLongDouble$121:	; PostCall 27

scanLongDouble$122:	; Equal 126 minus 0
x18339:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x18343:	je scanLongDouble$126	; 2: 116 8

scanLongDouble$123:	; PushFloat value
x18345:	fld qword [bp + 10]	; 3: 221 70 10

scanLongDouble$124:	; UnarySubtract £temporary1537 value
x18348:	fchs	; 2: 217 224

scanLongDouble$125:	; PopFloat value
x18350:	fstp qword [bp + 10]	; 3: 221 94 10

scanLongDouble$126:	; Equal 128 found 0
x18353:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x18357:	je scanLongDouble$128	; 2: 116 4

scanLongDouble$127:	; Increment g_inCount
x18359:	inc word [g_inCount]	; 4: 255 6 244 60

scanLongDouble$128:	; PushFloat value
x18363:	fld qword [bp + 10]	; 3: 221 70 10

scanLongDouble$129:	; SetReturnValue value

scanLongDouble$130:	; Return value
x18366:	mov ax, [bp]	; 3: 139 70 0
x18369:	mov di, [bp + 4]	; 3: 139 126 4
x18372:	mov bp, [bp + 2]	; 3: 139 110 2
x18375:	jmp ax	; 2: 255 224

scanLongDouble$131:	; FunctionEnd scanLongDouble

scanPattern:	; Assign index 0
x18377:	mov word [bp + 12], 0	; 5: 199 70 12 0 0

scanPattern$1:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$2:	; Call 14 scanChar 0
x18382:	mov word [bp + 14], scanPattern$3	; 5: 199 70 14 220 71
x18387:	mov [bp + 16], bp	; 3: 137 110 16
x18390:	add bp, 14	; 3: 131 197 14
x18393:	jmp scanChar	; 3: 233 49 245

scanPattern$3:	; PostCall 14

scanPattern$4:	; GetReturnValue £temporary1252

scanPattern$5:	; Assign input £temporary1252
x18396:	mov [bp + 14], bl	; 3: 136 94 14

scanPattern$6:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$7:	; IntegralToIntegral £temporary1253 input
x18399:	mov al, [bp + 14]	; 3: 138 70 14
x18402:	and ax, 255	; 3: 37 255 0
x18405:	cmp al, 0	; 2: 60 0
x18407:	jge scanPattern$8	; 2: 125 4
x18409:	neg al	; 2: 246 216
x18411:	neg ax	; 2: 247 216

scanPattern$8:	; Parameter 15 £temporary1253 6
x18413:	mov [bp + 21], ax	; 3: 137 70 21

scanPattern$9:	; Call 15 isspace 0
x18416:	mov word [bp + 15], scanPattern$10	; 5: 199 70 15 254 71
x18421:	mov [bp + 17], bp	; 3: 137 110 17
x18424:	add bp, 15	; 3: 131 197 15
x18427:	jmp isspace	; 3: 233 203 247

scanPattern$10:	; PostCall 15

scanPattern$11:	; GetReturnValue £temporary1254

scanPattern$12:	; Equal 19 £temporary1254 0
x18430:	cmp bx, 0	; 3: 131 251 0
x18433:	je scanPattern$19	; 2: 116 19

scanPattern$13:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$14:	; Call 15 scanChar 0
x18435:	mov word [bp + 15], scanPattern$15	; 5: 199 70 15 17 72
x18440:	mov [bp + 17], bp	; 3: 137 110 17
x18443:	add bp, 15	; 3: 131 197 15
x18446:	jmp scanChar	; 3: 233 252 244

scanPattern$15:	; PostCall 15

scanPattern$16:	; GetReturnValue £temporary1255

scanPattern$17:	; Assign input £temporary1255
x18449:	mov [bp + 14], bl	; 3: 136 94 14

scanPattern$18:	; Goto 6
x18452:	jmp scanPattern$6	; 2: 235 201

scanPattern$19:	; Equal 53 string 0
x18454:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x18458:	je scanPattern$53	; 4: 15 132 143 0

scanPattern$20:	; NotEqual 29 not 0
x18462:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x18466:	jne scanPattern$29	; 2: 117 42

scanPattern$21:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$22:	; Parameter 15 pattern 6
x18468:	mov ax, [bp + 8]	; 3: 139 70 8
x18471:	mov [bp + 21], ax	; 3: 137 70 21

scanPattern$23:	; IntegralToIntegral £temporary1260 input
x18474:	mov al, [bp + 14]	; 3: 138 70 14
x18477:	and ax, 255	; 3: 37 255 0
x18480:	cmp al, 0	; 2: 60 0
x18482:	jge scanPattern$24	; 2: 125 4
x18484:	neg al	; 2: 246 216
x18486:	neg ax	; 2: 247 216

scanPattern$24:	; Parameter 15 £temporary1260 8
x18488:	mov [bp + 23], ax	; 3: 137 70 23

scanPattern$25:	; Call 15 strchr 0
x18491:	mov word [bp + 15], scanPattern$26	; 5: 199 70 15 73 72
x18496:	mov [bp + 17], bp	; 3: 137 110 17
x18499:	add bp, 15	; 3: 131 197 15
x18502:	jmp strchr	; 3: 233 92 229

scanPattern$26:	; PostCall 15

scanPattern$27:	; GetReturnValue £temporary1261

scanPattern$28:	; NotEqual 38 £temporary1261 0
x18505:	cmp bx, 0	; 3: 131 251 0
x18508:	jne scanPattern$38	; 2: 117 48

scanPattern$29:	; Equal 49 not 0
x18510:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x18514:	je scanPattern$49	; 2: 116 78

scanPattern$30:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$31:	; Parameter 15 pattern 6
x18516:	mov ax, [bp + 8]	; 3: 139 70 8
x18519:	mov [bp + 21], ax	; 3: 137 70 21

scanPattern$32:	; IntegralToIntegral £temporary1264 input
x18522:	mov al, [bp + 14]	; 3: 138 70 14
x18525:	and ax, 255	; 3: 37 255 0
x18528:	cmp al, 0	; 2: 60 0
x18530:	jge scanPattern$33	; 2: 125 4
x18532:	neg al	; 2: 246 216
x18534:	neg ax	; 2: 247 216

scanPattern$33:	; Parameter 15 £temporary1264 8
x18536:	mov [bp + 23], ax	; 3: 137 70 23

scanPattern$34:	; Call 15 strchr 0
x18539:	mov word [bp + 15], scanPattern$35	; 5: 199 70 15 121 72
x18544:	mov [bp + 17], bp	; 3: 137 110 17
x18547:	add bp, 15	; 3: 131 197 15
x18550:	jmp strchr	; 3: 233 44 229

scanPattern$35:	; PostCall 15

scanPattern$36:	; GetReturnValue £temporary1265

scanPattern$37:	; NotEqual 49 £temporary1265 0
x18553:	cmp bx, 0	; 3: 131 251 0
x18556:	jne scanPattern$49	; 2: 117 36

scanPattern$38:	; Assign £temporary1271 index
x18558:	mov ax, [bp + 12]	; 3: 139 70 12

scanPattern$39:	; Increment index
x18561:	inc word [bp + 12]	; 3: 255 70 12

scanPattern$40:	; BinaryAdd £temporary1273 string £temporary1271
x18564:	mov si, [bp + 6]	; 3: 139 118 6
x18567:	add si, ax	; 2: 1 198

scanPattern$41:	; Deref £temporary1272 -> £temporary1273 £temporary1273 0

scanPattern$42:	; Assign £temporary1272 -> £temporary1273 input
x18569:	mov al, [bp + 14]	; 3: 138 70 14
x18572:	mov [si], al	; 2: 136 4

scanPattern$43:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$44:	; Call 15 scanChar 0
x18574:	mov word [bp + 15], scanPattern$45	; 5: 199 70 15 156 72
x18579:	mov [bp + 17], bp	; 3: 137 110 17
x18582:	add bp, 15	; 3: 131 197 15
x18585:	jmp scanChar	; 3: 233 113 244

scanPattern$45:	; PostCall 15

scanPattern$46:	; GetReturnValue £temporary1274

scanPattern$47:	; Assign input £temporary1274
x18588:	mov [bp + 14], bl	; 3: 136 94 14

scanPattern$48:	; Goto 20
x18591:	jmp scanPattern$20	; 3: 233 124 255

scanPattern$49:	; BinaryAdd £temporary1276 string index
x18594:	mov si, [bp + 6]	; 3: 139 118 6
x18597:	add si, [bp + 12]	; 3: 3 118 12

scanPattern$50:	; Deref £temporary1275 -> £temporary1276 £temporary1276 0

scanPattern$51:	; Assign £temporary1275 -> £temporary1276 0
x18600:	mov byte [si], 0	; 3: 198 4 0

scanPattern$52:	; Goto 77
x18603:	jmp scanPattern$77	; 2: 235 115

scanPattern$53:	; NotEqual 62 not 0
x18605:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x18609:	jne scanPattern$62	; 2: 117 42

scanPattern$54:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$55:	; Parameter 15 pattern 6
x18611:	mov ax, [bp + 8]	; 3: 139 70 8
x18614:	mov [bp + 21], ax	; 3: 137 70 21

scanPattern$56:	; IntegralToIntegral £temporary1279 input
x18617:	mov al, [bp + 14]	; 3: 138 70 14
x18620:	and ax, 255	; 3: 37 255 0
x18623:	cmp al, 0	; 2: 60 0
x18625:	jge scanPattern$57	; 2: 125 4
x18627:	neg al	; 2: 246 216
x18629:	neg ax	; 2: 247 216

scanPattern$57:	; Parameter 15 £temporary1279 8
x18631:	mov [bp + 23], ax	; 3: 137 70 23

scanPattern$58:	; Call 15 strchr 0
x18634:	mov word [bp + 15], scanPattern$59	; 5: 199 70 15 216 72
x18639:	mov [bp + 17], bp	; 3: 137 110 17
x18642:	add bp, 15	; 3: 131 197 15
x18645:	jmp strchr	; 3: 233 205 228

scanPattern$59:	; PostCall 15

scanPattern$60:	; GetReturnValue £temporary1280

scanPattern$61:	; NotEqual 71 £temporary1280 0
x18648:	cmp bx, 0	; 3: 131 251 0
x18651:	jne scanPattern$71	; 2: 117 48

scanPattern$62:	; Equal 77 not 0
x18653:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x18657:	je scanPattern$77	; 2: 116 61

scanPattern$63:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$64:	; Parameter 15 pattern 6
x18659:	mov ax, [bp + 8]	; 3: 139 70 8
x18662:	mov [bp + 21], ax	; 3: 137 70 21

scanPattern$65:	; IntegralToIntegral £temporary1283 input
x18665:	mov al, [bp + 14]	; 3: 138 70 14
x18668:	and ax, 255	; 3: 37 255 0
x18671:	cmp al, 0	; 2: 60 0
x18673:	jge scanPattern$66	; 2: 125 4
x18675:	neg al	; 2: 246 216
x18677:	neg ax	; 2: 247 216

scanPattern$66:	; Parameter 15 £temporary1283 8
x18679:	mov [bp + 23], ax	; 3: 137 70 23

scanPattern$67:	; Call 15 strchr 0
x18682:	mov word [bp + 15], scanPattern$68	; 5: 199 70 15 8 73
x18687:	mov [bp + 17], bp	; 3: 137 110 17
x18690:	add bp, 15	; 3: 131 197 15
x18693:	jmp strchr	; 3: 233 157 228

scanPattern$68:	; PostCall 15

scanPattern$69:	; GetReturnValue £temporary1284

scanPattern$70:	; NotEqual 77 £temporary1284 0
x18696:	cmp bx, 0	; 3: 131 251 0
x18699:	jne scanPattern$77	; 2: 117 19

scanPattern$71:	; CallHeader 15 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

scanPattern$72:	; Call 15 scanChar 0
x18701:	mov word [bp + 15], scanPattern$73	; 5: 199 70 15 27 73
x18706:	mov [bp + 17], bp	; 3: 137 110 17
x18709:	add bp, 15	; 3: 131 197 15
x18712:	jmp scanChar	; 3: 233 242 243

scanPattern$73:	; PostCall 15

scanPattern$74:	; GetReturnValue £temporary1290

scanPattern$75:	; Assign input £temporary1290
x18715:	mov [bp + 14], bl	; 3: 136 94 14

scanPattern$76:	; Goto 53
x18718:	jmp scanPattern$53	; 2: 235 141

scanPattern$77:	; Return 0
x18720:	mov ax, [bp]	; 3: 139 70 0
x18723:	mov di, [bp + 4]	; 3: 139 126 4
x18726:	mov bp, [bp + 2]	; 3: 139 110 2
x18729:	jmp ax	; 2: 255 224

scanPattern$78:	; FunctionEnd scanPattern

printf:	; address £temporary2381 format
x18731:	mov si, bp	; 2: 137 238
x18733:	add si, 6	; 3: 131 198 6

printf$1:	; IntegralToIntegral £temporary2382 £temporary2381

printf$2:	; BinaryAdd arg_list £temporary2382 2
x18736:	add si, 2	; 3: 131 198 2
x18739:	mov [di + 8], si	; 3: 137 117 8

printf$3:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

printf$4:	; Parameter 10 format 6
x18742:	mov ax, [bp + 6]	; 3: 139 70 6
x18745:	mov [di + 16], ax	; 3: 137 69 16

printf$5:	; Parameter 10 arg_list 8
x18748:	mov ax, [di + 8]	; 3: 139 69 8
x18751:	mov [di + 18], ax	; 3: 137 69 18

printf$6:	; Call 10 vprintf 0
x18754:	mov word [di + 10], printf$7	; 5: 199 69 10 85 73
x18759:	mov [di + 12], bp	; 3: 137 109 12
x18762:	mov [di + 14], di	; 3: 137 125 14
x18765:	add di, 10	; 3: 131 199 10
x18768:	mov bp, di	; 2: 137 253
x18770:	nop	; 1: 144
x18771:	jmp vprintf	; 2: 235 11

printf$7:	; PostCall 10

printf$8:	; GetReturnValue £temporary2384

printf$9:	; SetReturnValue £temporary2384

printf$10:	; Return £temporary2384
x18773:	mov ax, [bp]	; 3: 139 70 0
x18776:	mov di, [bp + 4]	; 3: 139 126 4
x18779:	mov bp, [bp + 2]	; 3: 139 110 2
x18782:	jmp ax	; 2: 255 224

printf$11:	; FunctionEnd printf

vprintf:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

vprintf$1:	; Parameter 10 stdout 6
x18784:	mov ax, [stdout]	; 3: 161 139 73
x18787:	mov [bp + 16], ax	; 3: 137 70 16

vprintf$2:	; Parameter 10 format 8
x18790:	mov ax, [bp + 6]	; 3: 139 70 6
x18793:	mov [bp + 18], ax	; 3: 137 70 18

vprintf$3:	; Parameter 10 arg_list 10
x18796:	mov ax, [bp + 8]	; 3: 139 70 8
x18799:	mov [bp + 20], ax	; 3: 137 70 20

vprintf$4:	; Call 10 vfprintf 0
x18802:	mov word [bp + 10], vprintf$5	; 5: 199 70 10 128 73
x18807:	mov [bp + 12], bp	; 3: 137 110 12
x18810:	add bp, 10	; 3: 131 197 10
x18813:	jmp vfprintf	; 3: 233 28 210

vprintf$5:	; PostCall 10

vprintf$6:	; GetReturnValue £temporary2388

vprintf$7:	; SetReturnValue £temporary2388

vprintf$8:	; Return £temporary2388
x18816:	mov ax, [bp]	; 3: 139 70 0
x18819:	mov di, [bp + 4]	; 3: 139 126 4
x18822:	mov bp, [bp + 2]	; 3: 139 110 2
x18825:	jmp ax	; 2: 255 224

vprintf$9:	; FunctionEnd vprintf

stdout:
x18827:	dw g_fileArray + 29	; 2: 1 18

sqrt:	; PushFloat x
x18829:	fld qword [bp + 6]	; 3: 221 70 6

sqrt$1:	; PushZero
x18832:	fldz	; 2: 217 238

sqrt$2:	; SignedLessThan 28 x 0
x18834:	fcompp	; 2: 222 217
x18836:	fstsw ax	; 3: 155 223 224
x18839:	sahf	; 1: 158
x18840:	ja sqrt$28	; 2: 119 84

sqrt$3:	; PushOne
x18842:	fld1	; 2: 217 232

sqrt$4:	; PopFloat root_i_plus_1
x18844:	fstp qword [bp + 22]	; 3: 221 94 22

sqrt$5:	; PushFloat root_i_plus_1
x18847:	fld qword [bp + 22]	; 3: 221 70 22

sqrt$6:	; PopFloat root_i
x18850:	fstp qword [bp + 14]	; 3: 221 94 14

sqrt$7:	; PushFloat root_i
x18853:	fld qword [bp + 14]	; 3: 221 70 14

sqrt$8:	; PushFloat x
x18856:	fld qword [bp + 6]	; 3: 221 70 6

sqrt$9:	; PushFloat root_i
x18859:	fld qword [bp + 14]	; 3: 221 70 14

sqrt$10:	; SignedDivide £temporary621 x root_i
x18862:	fdiv	; 2: 222 249

sqrt$11:	; BinaryAdd £temporary622 root_i £temporary621
x18864:	fadd	; 2: 222 193

sqrt$12:	; PushFloat 2
x18866:	fld qword [float8$2#]	; 4: 221 6 1 74

sqrt$13:	; SignedDivide £temporary623 £temporary622 2
x18870:	fdiv	; 2: 222 249

sqrt$14:	; PopFloat root_i_plus_1
x18872:	fstp qword [bp + 22]	; 3: 221 94 22

sqrt$15:	; CallHeader 30 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

sqrt$16:	; PushFloat root_i_plus_1
x18875:	fld qword [bp + 22]	; 3: 221 70 22

sqrt$17:	; PushFloat root_i
x18878:	fld qword [bp + 14]	; 3: 221 70 14

sqrt$18:	; BinarySubtract £temporary624 root_i_plus_1 root_i
x18881:	fsub	; 2: 222 233

sqrt$19:	; Parameter 30 £temporary624 6
x18883:	fstp qword [bp + 36]	; 3: 221 94 36

sqrt$20:	; Call 30 fabs 0
x18886:	mov word [bp + 30], sqrt$21	; 5: 199 70 30 212 73
x18891:	mov [bp + 32], bp	; 3: 137 110 32
x18894:	add bp, 30	; 3: 131 197 30
x18897:	jmp fabs	; 3: 233 16 231

sqrt$21:	; PostCall 30

sqrt$22:	; GetReturnValue £temporary625

sqrt$23:	; PushFloat 0.000000001
x18900:	fld qword [float8$0.000000001#]	; 4: 221 6 99 52

sqrt$24:	; SignedGreaterThanEqual 5 £temporary625 0.000000001
x18904:	fcompp	; 2: 222 217
x18906:	fstsw ax	; 3: 155 223 224
x18909:	sahf	; 1: 158
x18910:	jbe sqrt$5	; 2: 118 191

sqrt$25:	; PushFloat root_i_plus_1
x18912:	fld qword [bp + 22]	; 3: 221 70 22

sqrt$26:	; SetReturnValue root_i_plus_1

sqrt$27:	; Return root_i_plus_1
x18915:	mov ax, [bp]	; 3: 139 70 0
x18918:	mov di, [bp + 4]	; 3: 139 126 4
x18921:	mov bp, [bp + 2]	; 3: 139 110 2
x18924:	jmp ax	; 2: 255 224

sqrt$28:	; Assign errno 6
x18926:	mov word [errno], 6	; 6: 199 6 0 21 6 0

sqrt$29:	; PushZero
x18932:	fldz	; 2: 217 238

sqrt$30:	; SetReturnValue 0

sqrt$31:	; Return 0
x18934:	mov ax, [bp]	; 3: 139 70 0
x18937:	mov di, [bp + 4]	; 3: 139 126 4
x18940:	mov bp, [bp + 2]	; 3: 139 110 2
x18943:	jmp ax	; 2: 255 224

sqrt$32:	; FunctionEnd sqrt

float8$2#:
x18945:	dq 2.0	; 8: 0 0 0 0 0 0 0 64

fclose:	; Equal 20 stream 0
x18953:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x18957:	je fclose$20	; 2: 116 86

fclose$1:	; AssignRegister ah 62
x18959:	mov ah, 62	; 2: 180 62

fclose$2:	; Deref £temporary1003 -> stream stream 2
x18961:	mov si, [bp + 6]	; 3: 139 118 6

fclose$3:	; AssignRegister bx £temporary1003 -> stream
x18964:	mov bx, [si + 2]	; 3: 139 92 2

fclose$4:	; Interrupt 33
x18967:	int 33	; 2: 205 33

fclose$5:	; NotCarry 9
x18969:	jnc fclose$9	; 2: 115 20

fclose$6:	; Assign errno 11
x18971:	mov word [errno], 11	; 6: 199 6 0 21 11 0

fclose$7:	; SetReturnValue -1
x18977:	mov bx, -1	; 3: 187 255 255

fclose$8:	; Return -1
x18980:	mov ax, [bp]	; 3: 139 70 0
x18983:	mov di, [bp + 4]	; 3: 139 126 4
x18986:	mov bp, [bp + 2]	; 3: 139 110 2
x18989:	jmp ax	; 2: 255 224

fclose$9:	; Deref £temporary1005 -> stream stream 27
x18991:	mov si, [bp + 6]	; 3: 139 118 6

fclose$10:	; Equal 16 £temporary1005 -> stream 0
x18994:	cmp word [si + 27], 0	; 4: 131 124 27 0
x18998:	je fclose$16	; 2: 116 24

fclose$11:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

fclose$12:	; Deref £temporary1006 -> stream stream 4
x19000:	mov si, [bp + 6]	; 3: 139 118 6

fclose$13:	; Parameter 8 £temporary1006 -> stream 6
x19003:	mov [bp + 14], si	; 3: 137 118 14
x19006:	add word [bp + 14], 4	; 4: 131 70 14 4

fclose$14:	; Call 8 remove 0
x19010:	mov word [bp + 8], fclose$15	; 5: 199 70 8 80 74
x19015:	mov [bp + 10], bp	; 3: 137 110 10
x19018:	add bp, 8	; 3: 131 197 8
x19021:	nop	; 1: 144
x19022:	jmp remove	; 2: 235 120

fclose$15:	; PostCall 8

fclose$16:	; Deref £temporary1009 -> stream stream 0
x19024:	mov si, [bp + 6]	; 3: 139 118 6

fclose$17:	; Assign £temporary1009 -> stream 0
x19027:	mov word [si], 0	; 4: 199 4 0 0

fclose$18:	; SetReturnValue 0
x19031:	mov bx, 0	; 3: 187 0 0

fclose$19:	; Return 0
x19034:	mov ax, [bp]	; 3: 139 70 0
x19037:	mov di, [bp + 4]	; 3: 139 126 4
x19040:	mov bp, [bp + 2]	; 3: 139 110 2
x19043:	jmp ax	; 2: 255 224

fclose$20:	; Assign index 0
x19045:	mov word [bp + 8], 0	; 5: 199 70 8 0 0

fclose$21:	; SignedGreaterThanEqual 40 index 20
x19050:	cmp word [bp + 8], 20	; 4: 131 126 8 20
x19054:	jge fclose$40	; 2: 125 74

fclose$22:	; UnsignedMultiply £temporary1013 index 29
x19056:	mov ax, [bp + 8]	; 3: 139 70 8
x19059:	xor dx, dx	; 2: 49 210
x19061:	mul word [int2$29#]	; 4: 247 38 57 23

fclose$23:	; BinaryAdd £temporary1014 g_fileArray £temporary1013
x19065:	mov si, g_fileArray	; 3: 190 228 17
x19068:	add si, ax	; 2: 1 198

fclose$24:	; Deref £temporary1012 -> £temporary1014 £temporary1014 0

fclose$25:	; Equal 38 £temporary1012.open$0 -> £temporary1014 0
x19070:	cmp word [si], 0	; 3: 131 60 0
x19073:	je fclose$38	; 2: 116 50

fclose$26:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

fclose$27:	; UnsignedMultiply £temporary1016 index 29
x19075:	mov ax, [bp + 8]	; 3: 139 70 8
x19078:	xor dx, dx	; 2: 49 210
x19080:	mul word [int2$29#]	; 4: 247 38 57 23

fclose$28:	; BinaryAdd £temporary1017 g_fileArray £temporary1016
x19084:	mov si, g_fileArray	; 3: 190 228 17
x19087:	add si, ax	; 2: 1 198

fclose$29:	; Deref £temporary1015 -> £temporary1017 £temporary1017 0

fclose$30:	; address £temporary1018 £temporary1015 -> £temporary1017

fclose$31:	; Parameter 10 £temporary1018 6
x19089:	mov [bp + 16], si	; 3: 137 118 16

fclose$32:	; Call 10 fclose 0
x19092:	mov word [bp + 10], fclose$33	; 5: 199 70 10 162 74
x19097:	mov [bp + 12], bp	; 3: 137 110 12
x19100:	add bp, 10	; 3: 131 197 10
x19103:	jmp fclose	; 3: 233 103 255

fclose$33:	; PostCall 10

fclose$34:	; GetReturnValue £temporary1019

fclose$35:	; NotEqual 38 £temporary1019 -1
x19106:	cmp bx, -1	; 3: 131 251 255
x19109:	jne fclose$38	; 2: 117 14

fclose$36:	; SetReturnValue -1
x19111:	mov bx, -1	; 3: 187 255 255

fclose$37:	; Return -1
x19114:	mov ax, [bp]	; 3: 139 70 0
x19117:	mov di, [bp + 4]	; 3: 139 126 4
x19120:	mov bp, [bp + 2]	; 3: 139 110 2
x19123:	jmp ax	; 2: 255 224

fclose$38:	; Increment index
x19125:	inc word [bp + 8]	; 3: 255 70 8

fclose$39:	; Goto 21
x19128:	jmp fclose$21	; 2: 235 176

fclose$40:	; SetReturnValue 0
x19130:	mov bx, 0	; 3: 187 0 0

fclose$41:	; Return 0
x19133:	mov ax, [bp]	; 3: 139 70 0
x19136:	mov di, [bp + 4]	; 3: 139 126 4
x19139:	mov bp, [bp + 2]	; 3: 139 110 2
x19142:	jmp ax	; 2: 255 224

fclose$42:	; FunctionEnd fclose

remove:	; AssignRegister ah 65
x19144:	mov ah, 65	; 2: 180 65

remove$1:	; AssignRegister cl 0
x19146:	mov cl, 0	; 2: 177 0

remove$2:	; AssignRegister dx name
x19148:	mov dx, [bp + 6]	; 3: 139 86 6

remove$3:	; Interrupt 33
x19151:	int 33	; 2: 205 33

remove$4:	; NotCarry 8
x19153:	jnc remove$8	; 2: 115 20

remove$5:	; Assign errno 18
x19155:	mov word [errno], 18	; 6: 199 6 0 21 18 0

remove$6:	; SetReturnValue -1
x19161:	mov bx, -1	; 3: 187 255 255

remove$7:	; Return -1
x19164:	mov ax, [bp]	; 3: 139 70 0
x19167:	mov di, [bp + 4]	; 3: 139 126 4
x19170:	mov bp, [bp + 2]	; 3: 139 110 2
x19173:	jmp ax	; 2: 255 224

remove$8:	; SetReturnValue 0
x19175:	mov bx, 0	; 3: 187 0 0

remove$9:	; Return 0
x19178:	mov ax, [bp]	; 3: 139 70 0
x19181:	mov di, [bp + 4]	; 3: 139 126 4
x19184:	mov bp, [bp + 2]	; 3: 139 110 2
x19187:	jmp ax	; 2: 255 224

remove$10:	; FunctionEnd remove

rename:	; AssignRegister ah 86
x19189:	mov ah, 86	; 2: 180 86

rename$1:	; AssignRegister cl 0
x19191:	mov cl, 0	; 2: 177 0

rename$2:	; AssignRegister dx oldName
x19193:	mov dx, [bp + 6]	; 3: 139 86 6

rename$3:	; AssignRegister di newName
x19196:	mov di, [bp + 8]	; 3: 139 126 8

rename$4:	; Interrupt 33
x19199:	int 33	; 2: 205 33

rename$5:	; NotCarry 9
x19201:	jnc rename$9	; 2: 115 20

rename$6:	; Assign errno 19
x19203:	mov word [errno], 19	; 6: 199 6 0 21 19 0

rename$7:	; SetReturnValue -1
x19209:	mov bx, -1	; 3: 187 255 255

rename$8:	; Return -1
x19212:	mov ax, [bp]	; 3: 139 70 0
x19215:	mov di, [bp + 4]	; 3: 139 126 4
x19218:	mov bp, [bp + 2]	; 3: 139 110 2
x19221:	jmp ax	; 2: 255 224

rename$9:	; SetReturnValue 0
x19223:	mov bx, 0	; 3: 187 0 0

rename$10:	; Return 0
x19226:	mov ax, [bp]	; 3: 139 70 0
x19229:	mov di, [bp + 4]	; 3: 139 126 4
x19232:	mov bp, [bp + 2]	; 3: 139 110 2
x19235:	jmp ax	; 2: 255 224

rename$11:	; FunctionEnd rename

strerror:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

strerror$1:	; Call 8 localeconv 0
x19237:	mov word [bp + 8], strerror$2	; 5: 199 70 8 51 75
x19242:	mov [bp + 10], bp	; 3: 137 110 10
x19245:	add bp, 8	; 3: 131 197 8
x19248:	jmp localeconv	; 3: 233 48 223

strerror$2:	; PostCall 8

strerror$3:	; GetReturnValue £temporary4082

strerror$4:	; Assign localeConvPtr £temporary4082
x19251:	mov [bp + 8], bx	; 3: 137 94 8

strerror$5:	; Equal 9 localeConvPtr 0
x19254:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x19258:	je strerror$9	; 2: 116 8

strerror$6:	; Deref £temporary4084 -> localeConvPtr localeConvPtr 16
x19260:	mov si, [bp + 8]	; 3: 139 118 8

strerror$7:	; Assign £temporary4088 £temporary4084 -> localeConvPtr
x19263:	mov ax, [si + 16]	; 3: 139 68 16

strerror$8:	; Goto 10
x19266:	jmp strerror$10	; 2: 235 3

strerror$9:	; Assign £temporary4088 0
x19268:	mov ax, 0	; 3: 184 0 0

strerror$10:	; Assign messageList £temporary4088
x19271:	mov [bp + 10], ax	; 3: 137 70 10

strerror$11:	; Equal 14 messageList 0
x19274:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x19278:	je strerror$14	; 2: 116 5

strerror$12:	; Assign £temporary4093 messageList
x19280:	mov ax, [bp + 10]	; 3: 139 70 10

strerror$13:	; Goto 15
x19283:	jmp strerror$15	; 2: 235 3

strerror$14:	; Assign £temporary4093 enMessageList
x19285:	mov ax, enMessageList	; 3: 184 251 43

strerror$15:	; Assign messageList £temporary4093
x19288:	mov [bp + 10], ax	; 3: 137 70 10

strerror$16:	; UnsignedMultiply £temporary4095 errno 2
x19291:	mov ax, [bp + 6]	; 3: 139 70 6
x19294:	xor dx, dx	; 2: 49 210
x19296:	mul word [int2$2#]	; 4: 247 38 118 75

strerror$17:	; BinaryAdd £temporary4096 messageList £temporary4095
x19300:	mov si, [bp + 10]	; 3: 139 118 10
x19303:	add si, ax	; 2: 1 198

strerror$18:	; Deref £temporary4094 -> £temporary4096 £temporary4096 0

strerror$19:	; SetReturnValue £temporary4094 -> £temporary4096
x19305:	mov bx, [si]	; 2: 139 28

strerror$20:	; Return £temporary4094 -> £temporary4096
x19307:	mov ax, [bp]	; 3: 139 70 0
x19310:	mov di, [bp + 4]	; 3: 139 126 4
x19313:	mov bp, [bp + 2]	; 3: 139 110 2
x19316:	jmp ax	; 2: 255 224

strerror$21:	; FunctionEnd strerror

int2$2#:
x19318:	dw 2	; 2: 2 0

fgetc:	; Assign c 0
x19320:	mov byte [bp + 8], 0	; 4: 198 70 8 0

fgetc$1:	; CallHeader 9 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

fgetc$2:	; address £temporary1033 c
x19324:	mov si, bp	; 2: 137 238
x19326:	add si, 8	; 3: 131 198 8

fgetc$3:	; Parameter 9 £temporary1033 6
x19329:	mov [bp + 15], si	; 3: 137 118 15

fgetc$4:	; Parameter 9 1 8
x19332:	mov word [bp + 17], 1	; 5: 199 70 17 1 0

fgetc$5:	; Parameter 9 1 10
x19337:	mov word [bp + 19], 1	; 5: 199 70 19 1 0

fgetc$6:	; Parameter 9 stream 12
x19342:	mov ax, [bp + 6]	; 3: 139 70 6
x19345:	mov [bp + 21], ax	; 3: 137 70 21

fgetc$7:	; Call 9 fread 0
x19348:	mov word [bp + 9], fgetc$8	; 5: 199 70 9 162 75
x19353:	mov [bp + 11], bp	; 3: 137 110 11
x19356:	add bp, 9	; 3: 131 197 9
x19359:	nop	; 1: 144
x19360:	jmp fread	; 2: 235 46

fgetc$8:	; PostCall 9

fgetc$9:	; GetReturnValue £temporary1034

fgetc$10:	; SignedLessThanEqual 14 £temporary1034 0
x19362:	cmp bx, 0	; 3: 131 251 0
x19365:	jle fgetc$14	; 2: 126 27

fgetc$11:	; IntegralToIntegral £temporary1036 c
x19367:	mov bl, [bp + 8]	; 3: 138 94 8
x19370:	and bx, 255	; 4: 129 227 255 0
x19374:	cmp bl, 0	; 3: 128 251 0
x19377:	jge fgetc$12	; 2: 125 4
x19379:	neg bl	; 2: 246 219
x19381:	neg bx	; 2: 247 219

fgetc$12:	; SetReturnValue £temporary1036

fgetc$13:	; Return £temporary1036
x19383:	mov ax, [bp]	; 3: 139 70 0
x19386:	mov di, [bp + 4]	; 3: 139 126 4
x19389:	mov bp, [bp + 2]	; 3: 139 110 2
x19392:	jmp ax	; 2: 255 224

fgetc$14:	; SetReturnValue -1
x19394:	mov bx, -1	; 3: 187 255 255

fgetc$15:	; Return -1
x19397:	mov ax, [bp]	; 3: 139 70 0
x19400:	mov di, [bp + 4]	; 3: 139 126 4
x19403:	mov bp, [bp + 2]	; 3: 139 110 2
x19406:	jmp ax	; 2: 255 224

fgetc$16:	; FunctionEnd fgetc

fread:	; Deref £temporary1105 -> stream stream 2
x19408:	mov si, [bp + 12]	; 3: 139 118 12

fread$1:	; AssignRegister bx £temporary1105 -> stream
x19411:	mov bx, [si + 2]	; 3: 139 92 2

fread$2:	; SignedMultiply £temporary1107 size nobj
x19414:	mov ax, [bp + 8]	; 3: 139 70 8
x19417:	xor dx, dx	; 2: 49 210
x19419:	imul word [bp + 10]	; 3: 247 110 10

fread$3:	; AssignRegister cx £temporary1107
x19422:	mov cx, ax	; 2: 137 193

fread$4:	; AssignRegister ah 63
x19424:	mov ah, 63	; 2: 180 63

fread$5:	; AssignRegister dx ptr
x19426:	mov dx, [bp + 6]	; 3: 139 86 6

fread$6:	; Interrupt 33
x19429:	int 33	; 2: 205 33

fread$7:	; NotCarry 13
x19431:	jnc fread$13	; 2: 115 29

fread$8:	; Deref £temporary1111 -> stream stream 21
x19433:	mov si, [bp + 12]	; 3: 139 118 12

fread$9:	; Assign errno 14
x19436:	mov word [errno], 14	; 6: 199 6 0 21 14 0

fread$10:	; Assign £temporary1111 -> stream errno
x19442:	mov ax, [errno]	; 3: 161 0 21
x19445:	mov [si + 21], ax	; 3: 137 68 21

fread$11:	; SetReturnValue 0
x19448:	mov bx, 0	; 3: 187 0 0

fread$12:	; Return 0
x19451:	mov ax, [bp]	; 3: 139 70 0
x19454:	mov di, [bp + 4]	; 3: 139 126 4
x19457:	mov bp, [bp + 2]	; 3: 139 110 2
x19460:	jmp ax	; 2: 255 224

fread$13:	; InspectRegister £temporary1112 ax

fread$14:	; SetReturnValue £temporary1112
x19462:	mov bx, ax	; 2: 137 195

fread$15:	; Return £temporary1112
x19464:	mov ax, [bp]	; 3: 139 70 0
x19467:	mov di, [bp + 4]	; 3: 139 126 4
x19470:	mov bp, [bp + 2]	; 3: 139 110 2
x19473:	jmp ax	; 2: 255 224

fread$16:	; FunctionEnd fread

putc:	; Assign g_outStatus 0
x19475:	mov word [g_outStatus], 0	; 6: 199 6 205 27 0 0

putc$1:	; IntegralToIntegral £temporary1776 stream
x19481:	mov ax, [bp + 8]	; 3: 139 70 8

putc$2:	; Assign g_outDevice £temporary1776
x19484:	mov [g_outDevice], ax	; 3: 163 207 27

putc$3:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

putc$4:	; IntegralToIntegral £temporary1777 i
x19487:	mov ax, [bp + 6]	; 3: 139 70 6
x19490:	cmp ax, 0	; 3: 131 248 0
x19493:	jge putc$5	; 2: 125 4
x19495:	neg ax	; 2: 247 216
x19497:	neg al	; 2: 246 216

putc$5:	; Parameter 10 £temporary1777 6
x19499:	mov [bp + 16], al	; 3: 136 70 16

putc$6:	; Call 10 printChar 0
x19502:	mov word [bp + 10], putc$7	; 5: 199 70 10 60 76
x19507:	mov [bp + 12], bp	; 3: 137 110 12
x19510:	add bp, 10	; 3: 131 197 10
x19513:	jmp printChar	; 3: 233 4 220

putc$7:	; PostCall 10

putc$8:	; SetReturnValue 1
x19516:	mov bx, 1	; 3: 187 1 0

putc$9:	; Return 1
x19519:	mov ax, [bp]	; 3: 139 70 0
x19522:	mov di, [bp + 4]	; 3: 139 126 4
x19525:	mov bp, [bp + 2]	; 3: 139 110 2
x19528:	jmp ax	; 2: 255 224

putc$10:	; FunctionEnd putc

fwrite:	; Deref £temporary1114 -> stream stream 2
x19530:	mov si, [bp + 12]	; 3: 139 118 12

fwrite$1:	; AssignRegister bx £temporary1114 -> stream
x19533:	mov bx, [si + 2]	; 3: 139 92 2

fwrite$2:	; SignedMultiply £temporary1116 size nobj
x19536:	mov ax, [bp + 8]	; 3: 139 70 8
x19539:	xor dx, dx	; 2: 49 210
x19541:	imul word [bp + 10]	; 3: 247 110 10

fwrite$3:	; AssignRegister cx £temporary1116
x19544:	mov cx, ax	; 2: 137 193

fwrite$4:	; AssignRegister ah 64
x19546:	mov ah, 64	; 2: 180 64

fwrite$5:	; AssignRegister dx ptr
x19548:	mov dx, [bp + 6]	; 3: 139 86 6

fwrite$6:	; Interrupt 33
x19551:	int 33	; 2: 205 33

fwrite$7:	; NotCarry 13
x19553:	jnc fwrite$13	; 2: 115 29

fwrite$8:	; Deref £temporary1120 -> stream stream 21
x19555:	mov si, [bp + 12]	; 3: 139 118 12

fwrite$9:	; Assign errno 13
x19558:	mov word [errno], 13	; 6: 199 6 0 21 13 0

fwrite$10:	; Assign £temporary1120 -> stream errno
x19564:	mov ax, [errno]	; 3: 161 0 21
x19567:	mov [si + 21], ax	; 3: 137 68 21

fwrite$11:	; SetReturnValue 0
x19570:	mov bx, 0	; 3: 187 0 0

fwrite$12:	; Return 0
x19573:	mov ax, [bp]	; 3: 139 70 0
x19576:	mov di, [bp + 4]	; 3: 139 126 4
x19579:	mov bp, [bp + 2]	; 3: 139 110 2
x19582:	jmp ax	; 2: 255 224

fwrite$13:	; InspectRegister £temporary1121 ax

fwrite$14:	; SetReturnValue £temporary1121
x19584:	mov bx, ax	; 2: 137 195

fwrite$15:	; Return £temporary1121
x19586:	mov ax, [bp]	; 3: 139 70 0
x19589:	mov di, [bp + 4]	; 3: 139 126 4
x19592:	mov bp, [bp + 2]	; 3: 139 110 2
x19595:	jmp ax	; 2: 255 224

fwrite$16:	; FunctionEnd fwrite

malloc:	; IntegralToIntegral £temporary238 memorySize
x19597:	mov ax, [bp + 6]	; 3: 139 70 6

malloc$1:	; BinaryAdd newBlockSize £temporary238 4
x19600:	add ax, 4	; 3: 131 192 4
x19603:	mov [bp + 8], ax	; 3: 137 70 8

malloc$2:	; Assign minGap 0
x19606:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

malloc$3:	; Assign lastAddress 65528
x19611:	mov word [bp + 12], 65528	; 5: 199 70 12 248 255

malloc$4:	; Assign minBlockPtr 0
x19616:	mov word [bp + 14], 0	; 5: 199 70 14 0 0

malloc$5:	; Assign minPrevBlockPtr 0
x19621:	mov word [bp + 16], 0	; 5: 199 70 16 0 0

malloc$6:	; Assign prevBlockPtr 0
x19626:	mov word [bp + 18], 0	; 5: 199 70 18 0 0

malloc$7:	; Assign currBlockPtr g_firstBlockPtr
x19631:	mov ax, [g_firstBlockPtr]	; 3: 161 27 78
x19634:	mov [bp + 20], ax	; 3: 137 70 20

malloc$8:	; SignedGreaterThanEqual 20 memorySize 0
x19637:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x19641:	jge malloc$20	; 2: 125 59

malloc$9:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

malloc$10:	; Parameter 22 stderr 6
x19643:	mov ax, [stderr]	; 3: 161 226 17
x19646:	mov [bp + 28], ax	; 3: 137 70 28

malloc$11:	; Parameter 22 string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A# 8
x19649:	mov word [bp + 30], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#	; 5: 199 70 30 40 20

malloc$12:	; Parameter 22 string_memorySize203E3D200# 10
x19654:	mov word [bp + 32], string_memorySize203E3D200#	; 5: 199 70 32 29 78

malloc$13:	; Parameter 22 string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec# 12
x19659:	mov word [bp + 34], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#	; 5: 199 70 34 45 78

malloc$14:	; Parameter 22 41 14
x19664:	mov word [bp + 36], 41	; 5: 199 70 36 41 0

malloc$15:	; Call 22 fprintf 0
x19669:	mov word [bp + 22], malloc$16	; 5: 199 70 22 232 76
x19674:	mov [bp + 24], bp	; 3: 137 110 24
x19677:	add bp, 22	; 3: 131 197 22
x19680:	mov di, bp	; 2: 137 239
x19682:	add di, 6	; 3: 131 199 6
x19685:	jmp fprintf	; 3: 233 121 206

malloc$16:	; PostCall 22

malloc$17:	; CallHeader 22 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

malloc$18:	; Call 22 abort 0
x19688:	mov word [bp + 22], malloc$19	; 5: 199 70 22 246 76
x19693:	mov [bp + 24], bp	; 3: 137 110 24
x19696:	add bp, 22	; 3: 131 197 22
x19699:	jmp abort	; 3: 233 93 234

malloc$19:	; PostCall 22

malloc$20:	; NotEqual 23 memorySize 0
x19702:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x19706:	jne malloc$23	; 2: 117 14

malloc$21:	; SetReturnValue 0
x19708:	mov bx, 0	; 3: 187 0 0

malloc$22:	; Return 0
x19711:	mov ax, [bp]	; 3: 139 70 0
x19714:	mov di, [bp + 4]	; 3: 139 126 4
x19717:	mov bp, [bp + 2]	; 3: 139 110 2
x19720:	jmp ax	; 2: 255 224

malloc$23:	; Equal 41 currBlockPtr 0
x19722:	cmp word [bp + 20], 0	; 4: 131 126 20 0
x19726:	je malloc$41	; 2: 116 88

malloc$24:	; IntegralToIntegral £temporary246 currBlockPtr
x19728:	mov ax, [bp + 20]	; 3: 139 70 20

malloc$25:	; Assign currAddress £temporary246
x19731:	mov [bp + 22], ax	; 3: 137 70 22

malloc$26:	; Deref £temporary247 -> currBlockPtr currBlockPtr 0
x19734:	mov si, [bp + 20]	; 3: 139 118 20

malloc$27:	; BinaryAdd £temporary248 currAddress £temporary247 -> currBlockPtr
x19737:	mov ax, [bp + 22]	; 3: 139 70 22
x19740:	add ax, [si]	; 2: 3 4

malloc$28:	; BinaryAdd £temporary249 £temporary248 4
x19742:	add ax, 4	; 3: 131 192 4

malloc$29:	; BinarySubtract currGap lastAddress £temporary249
x19745:	mov bx, [bp + 12]	; 3: 139 94 12
x19748:	sub bx, ax	; 2: 41 195
x19750:	mov [bp + 24], bx	; 3: 137 94 24

malloc$30:	; UnsignedGreaterThan 36 newBlockSize currGap
x19753:	mov ax, [bp + 24]	; 3: 139 70 24
x19756:	cmp [bp + 8], ax	; 3: 57 70 8
x19759:	ja malloc$36	; 2: 119 32

malloc$31:	; Equal 33 minGap 0
x19761:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x19765:	je malloc$33	; 2: 116 8

malloc$32:	; UnsignedGreaterThanEqual 36 currGap minGap
x19767:	mov ax, [bp + 10]	; 3: 139 70 10
x19770:	cmp [bp + 24], ax	; 3: 57 70 24
x19773:	jae malloc$36	; 2: 115 18

malloc$33:	; Assign minGap currGap
x19775:	mov ax, [bp + 24]	; 3: 139 70 24
x19778:	mov [bp + 10], ax	; 3: 137 70 10

malloc$34:	; Assign minBlockPtr currBlockPtr
x19781:	mov ax, [bp + 20]	; 3: 139 70 20
x19784:	mov [bp + 14], ax	; 3: 137 70 14

malloc$35:	; Assign minPrevBlockPtr prevBlockPtr
x19787:	mov ax, [bp + 18]	; 3: 139 70 18
x19790:	mov [bp + 16], ax	; 3: 137 70 16

malloc$36:	; Assign lastAddress currAddress
x19793:	mov ax, [bp + 22]	; 3: 139 70 22
x19796:	mov [bp + 12], ax	; 3: 137 70 12

malloc$37:	; Assign prevBlockPtr currBlockPtr
x19799:	mov ax, [bp + 20]	; 3: 139 70 20
x19802:	mov [bp + 18], ax	; 3: 137 70 18

malloc$38:	; Deref £temporary256 -> currBlockPtr currBlockPtr 2
x19805:	mov si, [bp + 20]	; 3: 139 118 20

malloc$39:	; Assign currBlockPtr £temporary256 -> currBlockPtr
x19808:	mov ax, [si + 2]	; 3: 139 68 2
x19811:	mov [bp + 20], ax	; 3: 137 70 20

malloc$40:	; Goto 23
x19814:	jmp malloc$23	; 2: 235 162

malloc$41:	; Equal 61 minBlockPtr 0
x19816:	cmp word [bp + 14], 0	; 4: 131 126 14 0
x19820:	je malloc$61	; 2: 116 77

malloc$42:	; IntegralToIntegral £temporary258 minBlockPtr
x19822:	mov ax, [bp + 14]	; 3: 139 70 14

malloc$43:	; Deref £temporary259 -> minBlockPtr minBlockPtr 0
x19825:	mov si, [bp + 14]	; 3: 139 118 14

malloc$44:	; BinaryAdd £temporary260 £temporary258 £temporary259 -> minBlockPtr
x19828:	add ax, [si]	; 2: 3 4

malloc$45:	; BinaryAdd newAddress £temporary260 4
x19830:	add ax, 4	; 3: 131 192 4
x19833:	mov [bp + 22], ax	; 3: 137 70 22

malloc$46:	; IntegralToIntegral £temporary262 newAddress
x19836:	mov ax, [bp + 22]	; 3: 139 70 22

malloc$47:	; Assign newBlockPtr £temporary262
x19839:	mov [bp + 24], ax	; 3: 137 70 24

malloc$48:	; Deref £temporary263 -> newBlockPtr newBlockPtr 0
x19842:	mov si, [bp + 24]	; 3: 139 118 24

malloc$49:	; Assign £temporary263 -> newBlockPtr memorySize
x19845:	mov ax, [bp + 6]	; 3: 139 70 6
x19848:	mov [si], ax	; 2: 137 4

malloc$50:	; Deref £temporary264 -> newBlockPtr newBlockPtr 2
x19850:	mov si, [bp + 24]	; 3: 139 118 24

malloc$51:	; Assign £temporary264 -> newBlockPtr minBlockPtr
x19853:	mov ax, [bp + 14]	; 3: 139 70 14
x19856:	mov [si + 2], ax	; 3: 137 68 2

malloc$52:	; Equal 56 minPrevBlockPtr 0
x19859:	cmp word [bp + 16], 0	; 4: 131 126 16 0
x19863:	je malloc$56	; 2: 116 11

malloc$53:	; Deref £temporary266 -> minPrevBlockPtr minPrevBlockPtr 2
x19865:	mov si, [bp + 16]	; 3: 139 118 16

malloc$54:	; Assign £temporary266 -> minPrevBlockPtr newBlockPtr
x19868:	mov ax, [bp + 24]	; 3: 139 70 24
x19871:	mov [si + 2], ax	; 3: 137 68 2

malloc$55:	; Goto 57
x19874:	jmp malloc$57	; 2: 235 6

malloc$56:	; Assign g_firstBlockPtr newBlockPtr
x19876:	mov ax, [bp + 24]	; 3: 139 70 24
x19879:	mov [g_firstBlockPtr], ax	; 3: 163 27 78

malloc$57:	; BinaryAdd £temporary267 newAddress 4
x19882:	mov bx, [bp + 22]	; 3: 139 94 22
x19885:	add bx, 4	; 3: 131 195 4

malloc$58:	; IntegralToIntegral £temporary268 £temporary267

malloc$59:	; SetReturnValue £temporary268

malloc$60:	; Return £temporary268
x19888:	mov ax, [bp]	; 3: 139 70 0
x19891:	mov di, [bp + 4]	; 3: 139 126 4
x19894:	mov bp, [bp + 2]	; 3: 139 110 2
x19897:	jmp ax	; 2: 255 224

malloc$61:	; BinarySubtract newAddress lastAddress newBlockSize
x19899:	mov ax, [bp + 12]	; 3: 139 70 12
x19902:	sub ax, [bp + 8]	; 3: 43 70 8
x19905:	mov [bp + 22], ax	; 3: 137 70 22

malloc$62:	; InspectRegister £temporary270 bp

malloc$63:	; Assign stackTop £temporary270
x19908:	mov [bp + 24], bp	; 3: 137 110 24

malloc$64:	; UnsignedGreaterThan 80 stackTop newAddress
x19911:	mov ax, [bp + 22]	; 3: 139 70 22
x19914:	cmp [bp + 24], ax	; 3: 57 70 24
x19917:	ja malloc$80	; 2: 119 62

malloc$65:	; IntegralToIntegral £temporary272 newAddress
x19919:	mov ax, [bp + 22]	; 3: 139 70 22

malloc$66:	; Assign newBlockPtr £temporary272
x19922:	mov [bp + 26], ax	; 3: 137 70 26

malloc$67:	; Deref £temporary273 -> newBlockPtr newBlockPtr 0
x19925:	mov si, [bp + 26]	; 3: 139 118 26

malloc$68:	; Assign £temporary273 -> newBlockPtr memorySize
x19928:	mov ax, [bp + 6]	; 3: 139 70 6
x19931:	mov [si], ax	; 2: 137 4

malloc$69:	; Deref £temporary274 -> newBlockPtr newBlockPtr 2
x19933:	mov si, [bp + 26]	; 3: 139 118 26

malloc$70:	; Assign £temporary274 -> newBlockPtr 0
x19936:	mov word [si + 2], 0	; 5: 199 68 2 0 0

malloc$71:	; Equal 75 prevBlockPtr 0
x19941:	cmp word [bp + 18], 0	; 4: 131 126 18 0
x19945:	je malloc$75	; 2: 116 11

malloc$72:	; Deref £temporary276 -> prevBlockPtr prevBlockPtr 2
x19947:	mov si, [bp + 18]	; 3: 139 118 18

malloc$73:	; Assign £temporary276 -> prevBlockPtr newBlockPtr
x19950:	mov ax, [bp + 26]	; 3: 139 70 26
x19953:	mov [si + 2], ax	; 3: 137 68 2

malloc$74:	; Goto 76
x19956:	jmp malloc$76	; 2: 235 6

malloc$75:	; Assign g_firstBlockPtr newBlockPtr
x19958:	mov ax, [bp + 26]	; 3: 139 70 26
x19961:	mov [g_firstBlockPtr], ax	; 3: 163 27 78

malloc$76:	; BinaryAdd £temporary277 newAddress 4
x19964:	mov bx, [bp + 22]	; 3: 139 94 22
x19967:	add bx, 4	; 3: 131 195 4

malloc$77:	; IntegralToIntegral £temporary278 £temporary277

malloc$78:	; SetReturnValue £temporary278

malloc$79:	; Return £temporary278
x19970:	mov ax, [bp]	; 3: 139 70 0
x19973:	mov di, [bp + 4]	; 3: 139 126 4
x19976:	mov bp, [bp + 2]	; 3: 139 110 2
x19979:	jmp ax	; 2: 255 224

malloc$80:	; SetReturnValue 0
x19981:	mov bx, 0	; 3: 187 0 0

malloc$81:	; Return 0
x19984:	mov ax, [bp]	; 3: 139 70 0
x19987:	mov di, [bp + 4]	; 3: 139 126 4
x19990:	mov bp, [bp + 2]	; 3: 139 110 2
x19993:	jmp ax	; 2: 255 224

malloc$82:	; FunctionEnd malloc

g_firstBlockPtr:
x19995:	dw 0	; 2: 0 0

string_memorySize203E3D200#:
x19997:	db "memorySize >= 0", 0	; 16: 109 101 109 111 114 121 83 105 122 101 32 62 61 32 48 0

string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMalloc2Ec#:
x20013:	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c", 0	; 63: 67 58 92 85 115 101 114 115 92 83 116 101 102 97 110 92 68 111 99 117 109 101 110 116 115 92 118 97 103 114 97 110 116 92 104 111 109 101 115 116 101 97 100 92 99 111 100 101 92 99 111 100 101 92 77 97 108 108 111 99 46 99 0

free:	; IntegralToIntegral £temporary292 freeMemoryPtr
x20076:	mov ax, [bp + 6]	; 3: 139 70 6

free$1:	; BinarySubtract £temporary293 £temporary292 4
x20079:	sub ax, 4	; 3: 131 232 4

free$2:	; IntegralToIntegral £temporary294 £temporary293

free$3:	; Assign freeBlockPtr £temporary294
x20082:	mov [bp + 8], ax	; 3: 137 70 8

free$4:	; Assign prevBlockPtr 0
x20085:	mov word [bp + 10], 0	; 5: 199 70 10 0 0

free$5:	; Assign currBlockPtr g_firstBlockPtr
x20090:	mov ax, [g_firstBlockPtr]	; 3: 161 27 78
x20093:	mov [bp + 12], ax	; 3: 137 70 12

free$6:	; NotEqual 8 freeMemoryPtr 0
x20096:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x20100:	jne free$8	; 2: 117 11

free$7:	; Return
x20102:	mov ax, [bp]	; 3: 139 70 0
x20105:	mov di, [bp + 4]	; 3: 139 126 4
x20108:	mov bp, [bp + 2]	; 3: 139 110 2
x20111:	jmp ax	; 2: 255 224

free$8:	; Equal 32 currBlockPtr 0
x20113:	cmp word [bp + 12], 0	; 4: 131 126 12 0
x20117:	je free$32	; 2: 116 107

free$9:	; NotEqual 28 currBlockPtr freeBlockPtr
x20119:	mov ax, [bp + 8]	; 3: 139 70 8
x20122:	cmp [bp + 12], ax	; 3: 57 70 12
x20125:	jne free$28	; 2: 117 82

free$10:	; NotEqual 15 prevBlockPtr 0
x20127:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x20131:	jne free$15	; 2: 117 17

free$11:	; Deref £temporary299 -> currBlockPtr currBlockPtr 2
x20133:	mov si, [bp + 12]	; 3: 139 118 12

free$12:	; NotEqual 15 £temporary299 -> currBlockPtr 0
x20136:	cmp word [si + 2], 0	; 4: 131 124 2 0
x20140:	jne free$15	; 2: 117 8

free$13:	; Assign g_firstBlockPtr 0
x20142:	mov word [g_firstBlockPtr], 0	; 6: 199 6 27 78 0 0

free$14:	; Goto 27
x20148:	jmp free$27	; 2: 235 48

free$15:	; NotEqual 19 prevBlockPtr 0
x20150:	cmp word [bp + 10], 0	; 4: 131 126 10 0
x20154:	jne free$19	; 2: 117 11

free$16:	; Deref £temporary303 -> currBlockPtr currBlockPtr 2
x20156:	mov si, [bp + 12]	; 3: 139 118 12

free$17:	; Assign g_firstBlockPtr £temporary303 -> currBlockPtr
x20159:	mov ax, [si + 2]	; 3: 139 68 2
x20162:	mov [g_firstBlockPtr], ax	; 3: 163 27 78

free$18:	; Goto 27
x20165:	jmp free$27	; 2: 235 31

free$19:	; Deref £temporary304 -> currBlockPtr currBlockPtr 2
x20167:	mov si, [bp + 12]	; 3: 139 118 12

free$20:	; NotEqual 24 £temporary304 -> currBlockPtr 0
x20170:	cmp word [si + 2], 0	; 4: 131 124 2 0
x20174:	jne free$24	; 2: 117 10

free$21:	; Deref £temporary306 -> prevBlockPtr prevBlockPtr 2
x20176:	mov si, [bp + 10]	; 3: 139 118 10

free$22:	; Assign £temporary306 -> prevBlockPtr 0
x20179:	mov word [si + 2], 0	; 5: 199 68 2 0 0

free$23:	; Goto 27
x20184:	jmp free$27	; 2: 235 12

free$24:	; Deref £temporary307 -> prevBlockPtr prevBlockPtr 2
x20186:	mov si, [bp + 10]	; 3: 139 118 10

free$25:	; Deref £temporary308 -> currBlockPtr currBlockPtr 2
x20189:	mov di, [bp + 12]	; 3: 139 126 12

free$26:	; Assign £temporary307 -> prevBlockPtr £temporary308 -> currBlockPtr
x20192:	mov ax, [di + 2]	; 3: 139 69 2
x20195:	mov [si + 2], ax	; 3: 137 68 2

free$27:	; Return
x20198:	mov ax, [bp]	; 3: 139 70 0
x20201:	mov di, [bp + 4]	; 3: 139 126 4
x20204:	mov bp, [bp + 2]	; 3: 139 110 2
x20207:	jmp ax	; 2: 255 224

free$28:	; Assign prevBlockPtr currBlockPtr
x20209:	mov ax, [bp + 12]	; 3: 139 70 12
x20212:	mov [bp + 10], ax	; 3: 137 70 10

free$29:	; Deref £temporary309 -> currBlockPtr currBlockPtr 2
x20215:	mov si, [bp + 12]	; 3: 139 118 12

free$30:	; Assign currBlockPtr £temporary309 -> currBlockPtr
x20218:	mov ax, [si + 2]	; 3: 139 68 2
x20221:	mov [bp + 12], ax	; 3: 137 70 12

free$31:	; Goto 8
x20224:	jmp free$8	; 2: 235 143

free$32:	; Return 0
x20226:	mov ax, [bp]	; 3: 139 70 0
x20229:	mov di, [bp + 4]	; 3: 139 126 4
x20232:	mov bp, [bp + 2]	; 3: 139 110 2
x20235:	jmp ax	; 2: 255 224

free$33:	; FunctionEnd free

feof:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

feof$1:	; Parameter 8 stream 6
x20237:	mov ax, [bp + 6]	; 3: 139 70 6
x20240:	mov [bp + 14], ax	; 3: 137 70 14

feof$2:	; Parameter 8 0 8
x20243:	mov word [bp + 16], 0	; 5: 199 70 16 0 0

feof$3:	; Parameter 8 1 10
x20248:	mov word [bp + 18], 1	; 5: 199 70 18 1 0

feof$4:	; Call 8 fseek 0
x20253:	mov word [bp + 8], feof$5	; 5: 199 70 8 43 79
x20258:	mov [bp + 10], bp	; 3: 137 110 10
x20261:	add bp, 8	; 3: 131 197 8
x20264:	jmp fseek	; 3: 233 145 203

feof$5:	; PostCall 8

feof$6:	; GetReturnValue £temporary1156

feof$7:	; IntegralToIntegral £temporary1157 £temporary1156
x20267:	and ebx, 65535	; 7: 102 129 227 255 255 0 0

feof$8:	; Assign currPosition £temporary1157
x20274:	mov [bp + 8], ebx	; 4: 102 137 94 8

feof$9:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

feof$10:	; Parameter 12 stream 6
x20278:	mov ax, [bp + 6]	; 3: 139 70 6
x20281:	mov [bp + 18], ax	; 3: 137 70 18

feof$11:	; Parameter 12 0 8
x20284:	mov word [bp + 20], 0	; 5: 199 70 20 0 0

feof$12:	; Parameter 12 2 10
x20289:	mov word [bp + 22], 2	; 5: 199 70 22 2 0

feof$13:	; Call 12 fseek 0
x20294:	mov word [bp + 12], feof$14	; 5: 199 70 12 84 79
x20299:	mov [bp + 14], bp	; 3: 137 110 14
x20302:	add bp, 12	; 3: 131 197 12
x20305:	jmp fseek	; 3: 233 104 203

feof$14:	; PostCall 12

feof$15:	; GetReturnValue £temporary1158

feof$16:	; IntegralToIntegral £temporary1159 £temporary1158
x20308:	and ebx, 65535	; 7: 102 129 227 255 255 0 0

feof$17:	; Assign lastPosition £temporary1159
x20315:	mov [bp + 12], ebx	; 4: 102 137 94 12

feof$18:	; CallHeader 16 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

feof$19:	; Parameter 16 stream 6
x20319:	mov ax, [bp + 6]	; 3: 139 70 6
x20322:	mov [bp + 22], ax	; 3: 137 70 22

feof$20:	; IntegralToIntegral £temporary1160 currPosition
x20325:	mov eax, [bp + 8]	; 4: 102 139 70 8

feof$21:	; Parameter 16 £temporary1160 8
x20329:	mov [bp + 24], ax	; 3: 137 70 24

feof$22:	; Parameter 16 0 10
x20332:	mov word [bp + 26], 0	; 5: 199 70 26 0 0

feof$23:	; Call 16 fseek 0
x20337:	mov word [bp + 16], feof$24	; 5: 199 70 16 127 79
x20342:	mov [bp + 18], bp	; 3: 137 110 18
x20345:	add bp, 16	; 3: 131 197 16
x20348:	jmp fseek	; 3: 233 61 203

feof$24:	; PostCall 16

feof$25:	; NotEqual 28 currPosition lastPosition
x20351:	mov eax, [bp + 12]	; 4: 102 139 70 12
x20355:	cmp [bp + 8], eax	; 4: 102 57 70 8
x20359:	jne feof$28	; 2: 117 5

feof$26:	; Assign £temporary1163 1
x20361:	mov ax, 1	; 3: 184 1 0

feof$27:	; Goto 29
x20364:	jmp feof$29	; 2: 235 3

feof$28:	; Assign £temporary1163 0
x20366:	mov ax, 0	; 3: 184 0 0

feof$29:	; Assign endOfFile £temporary1163
x20369:	mov [bp + 16], ax	; 3: 137 70 16

feof$30:	; SetReturnValue endOfFile
x20372:	mov bx, [bp + 16]	; 3: 139 94 16

feof$31:	; Return endOfFile
x20375:	mov ax, [bp]	; 3: 139 70 0
x20378:	mov di, [bp + 4]	; 3: 139 126 4
x20381:	mov bp, [bp + 2]	; 3: 139 110 2
x20384:	jmp ax	; 2: 255 224

feof$32:	; FunctionEnd feof

ftell:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

ftell$1:	; Parameter 8 stream 6
x20386:	mov ax, [bp + 6]	; 3: 139 70 6
x20389:	mov [bp + 14], ax	; 3: 137 70 14

ftell$2:	; Parameter 8 0 8
x20392:	mov word [bp + 16], 0	; 5: 199 70 16 0 0

ftell$3:	; Parameter 8 1 10
x20397:	mov word [bp + 18], 1	; 5: 199 70 18 1 0

ftell$4:	; Call 8 fseek 0
x20402:	mov word [bp + 8], ftell$5	; 5: 199 70 8 192 79
x20407:	mov [bp + 10], bp	; 3: 137 110 10
x20410:	add bp, 8	; 3: 131 197 8
x20413:	jmp fseek	; 3: 233 252 202

ftell$5:	; PostCall 8

ftell$6:	; GetReturnValue £temporary1136

ftell$7:	; SetReturnValue £temporary1136

ftell$8:	; Return £temporary1136
x20416:	mov ax, [bp]	; 3: 139 70 0
x20419:	mov di, [bp + 4]	; 3: 139 126 4
x20422:	mov bp, [bp + 2]	; 3: 139 110 2
x20425:	jmp ax	; 2: 255 224

ftell$9:	; FunctionEnd ftell

putchar:	; Assign g_outStatus 0
x20427:	mov word [g_outStatus], 0	; 6: 199 6 205 27 0 0

putchar$1:	; IntegralToIntegral £temporary1784 stdout
x20433:	mov ax, [stdout]	; 3: 161 139 73

putchar$2:	; Assign g_outDevice £temporary1784
x20436:	mov [g_outDevice], ax	; 3: 163 207 27

putchar$3:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

putchar$4:	; IntegralToIntegral £temporary1785 i
x20439:	mov ax, [bp + 6]	; 3: 139 70 6
x20442:	cmp ax, 0	; 3: 131 248 0
x20445:	jge putchar$5	; 2: 125 4
x20447:	neg ax	; 2: 247 216
x20449:	neg al	; 2: 246 216

putchar$5:	; Parameter 8 £temporary1785 6
x20451:	mov [bp + 14], al	; 3: 136 70 14

putchar$6:	; Call 8 printChar 0
x20454:	mov word [bp + 8], putchar$7	; 5: 199 70 8 244 79
x20459:	mov [bp + 10], bp	; 3: 137 110 10
x20462:	add bp, 8	; 3: 131 197 8
x20465:	jmp printChar	; 3: 233 76 216

putchar$7:	; PostCall 8

putchar$8:	; SetReturnValue 1
x20468:	mov bx, 1	; 3: 187 1 0

putchar$9:	; Return 1
x20471:	mov ax, [bp]	; 3: 139 70 0
x20474:	mov di, [bp + 4]	; 3: 139 126 4
x20477:	mov bp, [bp + 2]	; 3: 139 110 2
x20480:	jmp ax	; 2: 255 224

putchar$10:	; FunctionEnd putchar

tmpfile:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

tmpfile$1:	; Parameter 12 name 6
x20482:	mov [bp + 18], bp	; 3: 137 110 18
x20485:	add word [bp + 18], 8	; 4: 131 70 18 8

tmpfile$2:	; Parameter 12 0 8
x20489:	mov word [bp + 20], 0	; 5: 199 70 20 0 0

tmpfile$3:	; Parameter 12 0 10
x20494:	mov word [bp + 22], 0	; 5: 199 70 22 0 0

tmpfile$4:	; Call 12 generateTempName 0
x20499:	mov word [bp + 12], tmpfile$5	; 5: 199 70 12 33 80
x20504:	mov [bp + 14], bp	; 3: 137 110 14
x20507:	add bp, 12	; 3: 131 197 12
x20510:	nop	; 1: 144
x20511:	jmp @1434$generateTempName	; 2: 235 76

tmpfile$5:	; PostCall 12

tmpfile$6:	; GetReturnValue £temporary1221

tmpfile$7:	; Equal 20 £temporary1221 0
x20513:	cmp bx, 0	; 3: 131 251 0
x20516:	je tmpfile$20	; 2: 116 57

tmpfile$8:	; CallHeader 12 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

tmpfile$9:	; Parameter 12 name 6
x20518:	mov [bp + 18], bp	; 3: 137 110 18
x20521:	add word [bp + 18], 8	; 4: 131 70 18 8

tmpfile$10:	; Parameter 12 string_w# 8
x20525:	mov word [bp + 20], string_w#	; 5: 199 70 20 224 17

tmpfile$11:	; Call 12 fopen 0
x20530:	mov word [bp + 12], tmpfile$12	; 5: 199 70 12 64 80
x20535:	mov [bp + 14], bp	; 3: 137 110 14
x20538:	add bp, 12	; 3: 131 197 12
x20541:	jmp fopen	; 3: 233 146 198

tmpfile$12:	; PostCall 12

tmpfile$13:	; GetReturnValue £temporary1222

tmpfile$14:	; Assign stream £temporary1222
x20544:	mov [bp + 6], bx	; 3: 137 94 6

tmpfile$15:	; Equal 20 stream 0
x20547:	cmp word [bp + 6], 0	; 4: 131 126 6 0
x20551:	je tmpfile$20	; 2: 116 22

tmpfile$16:	; Deref £temporary1226 -> stream stream 27
x20553:	mov si, [bp + 6]	; 3: 139 118 6

tmpfile$17:	; Assign £temporary1226 -> stream 1
x20556:	mov word [si + 27], 1	; 5: 199 68 27 1 0

tmpfile$18:	; SetReturnValue stream
x20561:	mov bx, [bp + 6]	; 3: 139 94 6

tmpfile$19:	; Return stream
x20564:	mov ax, [bp]	; 3: 139 70 0
x20567:	mov di, [bp + 4]	; 3: 139 126 4
x20570:	mov bp, [bp + 2]	; 3: 139 110 2
x20573:	jmp ax	; 2: 255 224

tmpfile$20:	; SetReturnValue 0
x20575:	mov bx, 0	; 3: 187 0 0

tmpfile$21:	; Return 0
x20578:	mov ax, [bp]	; 3: 139 70 0
x20581:	mov di, [bp + 4]	; 3: 139 126 4
x20584:	mov bp, [bp + 2]	; 3: 139 110 2
x20587:	jmp ax	; 2: 255 224

tmpfile$22:	; FunctionEnd tmpfile

@1434$generateTempName:	; SignedGreaterThanEqual 57 size 3
x20589:	cmp word [bp + 8], 3	; 4: 131 126 8 3
x20593:	jge @1434$generateTempName$57	; 4: 15 141 246 0

@1434$generateTempName$1:	; Assign c 97
x20597:	mov byte [bp + 12], 97	; 4: 198 70 12 97

@1434$generateTempName$2:	; SignedGreaterThan 57 c 122
x20601:	cmp byte [bp + 12], 122	; 4: 128 126 12 122
x20605:	jg @1434$generateTempName$57	; 4: 15 143 234 0

@1434$generateTempName$3:	; BinaryAdd £temporary1193 name size
x20609:	mov si, [bp + 6]	; 3: 139 118 6
x20612:	add si, [bp + 8]	; 3: 3 118 8

@1434$generateTempName$4:	; Deref £temporary1192 -> £temporary1193 £temporary1193 0

@1434$generateTempName$5:	; Assign £temporary1192 -> £temporary1193 c
x20615:	mov al, [bp + 12]	; 3: 138 70 12
x20618:	mov [si], al	; 2: 136 4

@1434$generateTempName$6:	; BinaryAdd £temporary1194 size 1
x20620:	mov ax, [bp + 8]	; 3: 139 70 8
x20623:	inc ax	; 1: 64

@1434$generateTempName$7:	; BinaryAdd £temporary1196 name £temporary1194
x20624:	mov si, [bp + 6]	; 3: 139 118 6
x20627:	add si, ax	; 2: 1 198

@1434$generateTempName$8:	; Deref £temporary1195 -> £temporary1196 £temporary1196 0

@1434$generateTempName$9:	; Assign £temporary1195 -> £temporary1196 0
x20629:	mov byte [si], 0	; 3: 198 4 0

@1434$generateTempName$10:	; CallHeader 13 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1434$generateTempName$11:	; Parameter 13 name 6
x20632:	mov ax, [bp + 6]	; 3: 139 70 6
x20635:	mov [bp + 19], ax	; 3: 137 70 19

@1434$generateTempName$12:	; Call 13 fileexists 0
x20638:	mov word [bp + 13], @1434$generateTempName$13	; 5: 199 70 13 172 80
x20643:	mov [bp + 15], bp	; 3: 137 110 15
x20646:	add bp, 13	; 3: 131 197 13
x20649:	jmp fileexists	; 3: 233 91 202

@1434$generateTempName$13:	; PostCall 13

@1434$generateTempName$14:	; GetReturnValue £temporary1197

@1434$generateTempName$15:	; NotEqual 43 £temporary1197 0
x20652:	cmp bx, 0	; 3: 131 251 0
x20655:	jne @1434$generateTempName$43	; 2: 117 124

@1434$generateTempName$16:	; Case 20 status 0
x20657:	mov ax, [bp + 10]	; 3: 139 70 10
x20660:	cmp ax, 0	; 3: 131 248 0
x20663:	je @1434$generateTempName$20	; 2: 116 7

@1434$generateTempName$17:	; Case 22 status 1
x20665:	cmp ax, 1	; 3: 131 248 1
x20668:	je @1434$generateTempName$22	; 2: 116 16

@1434$generateTempName$18:	; CaseEnd status

@1434$generateTempName$19:	; Goto 43
x20670:	jmp @1434$generateTempName$43	; 2: 235 109

@1434$generateTempName$20:	; SetReturnValue name
x20672:	mov bx, [bp + 6]	; 3: 139 94 6

@1434$generateTempName$21:	; Return name
x20675:	mov ax, [bp]	; 3: 139 70 0
x20678:	mov di, [bp + 4]	; 3: 139 126 4
x20681:	mov bp, [bp + 2]	; 3: 139 110 2
x20684:	jmp ax	; 2: 255 224

@1434$generateTempName$22:	; CallHeader 13 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1434$generateTempName$23:	; Parameter 13 name 6
x20686:	mov ax, [bp + 6]	; 3: 139 70 6
x20689:	mov [bp + 19], ax	; 3: 137 70 19

@1434$generateTempName$24:	; Call 13 existsTempName 0
x20692:	mov word [bp + 13], @1434$generateTempName$25	; 5: 199 70 13 226 80
x20697:	mov [bp + 15], bp	; 3: 137 110 15
x20700:	add bp, 13	; 3: 131 197 13
x20703:	jmp @1423$existsTempName	; 3: 233 217 0

@1434$generateTempName$25:	; PostCall 13

@1434$generateTempName$26:	; GetReturnValue £temporary1200

@1434$generateTempName$27:	; NotEqual 43 £temporary1200 0
x20706:	cmp bx, 0	; 3: 131 251 0
x20709:	jne @1434$generateTempName$43	; 2: 117 70

@1434$generateTempName$28:	; CallHeader 13 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1434$generateTempName$29:	; UnsignedMultiply £temporary1204 g_tempSize 2
x20711:	mov ax, [@1422$g_tempSize]	; 3: 161 121 81
x20714:	xor dx, dx	; 2: 49 210
x20716:	mul word [int2$2#]	; 4: 247 38 118 75

@1434$generateTempName$30:	; BinaryAdd £temporary1205 g_tempArray £temporary1204
x20720:	mov si, @1421$g_tempArray	; 3: 190 123 81
x20723:	add si, ax	; 2: 1 198

@1434$generateTempName$31:	; Deref £temporary1203 -> £temporary1205 £temporary1205 0

@1434$generateTempName$32:	; Parameter 13 £temporary1203 -> £temporary1205 6
x20725:	mov ax, [si]	; 2: 139 4
x20727:	mov [bp + 19], ax	; 3: 137 70 19

@1434$generateTempName$33:	; Parameter 13 name 8
x20730:	mov ax, [bp + 6]	; 3: 139 70 6
x20733:	mov [bp + 21], ax	; 3: 137 70 21

@1434$generateTempName$34:	; Call 13 strcpy 0
x20736:	mov word [bp + 13], @1434$generateTempName$35	; 5: 199 70 13 14 81
x20741:	mov [bp + 15], bp	; 3: 137 110 15
x20744:	add bp, 13	; 3: 131 197 13
x20747:	jmp strcpy	; 3: 233 23 202

@1434$generateTempName$35:	; PostCall 13

@1434$generateTempName$36:	; Assign £temporary1207 g_tempSize
x20750:	mov ax, [@1422$g_tempSize]	; 3: 161 121 81

@1434$generateTempName$37:	; Increment g_tempSize
x20753:	inc word [@1422$g_tempSize]	; 4: 255 6 121 81

@1434$generateTempName$38:	; UnsignedMultiply £temporary1209 £temporary1207 2
x20757:	xor dx, dx	; 2: 49 210
x20759:	mul word [int2$2#]	; 4: 247 38 118 75

@1434$generateTempName$39:	; BinaryAdd £temporary1210 g_tempArray £temporary1209
x20763:	mov si, @1421$g_tempArray	; 3: 190 123 81
x20766:	add si, ax	; 2: 1 198

@1434$generateTempName$40:	; Deref £temporary1208 -> £temporary1210 £temporary1210 0

@1434$generateTempName$41:	; SetReturnValue £temporary1208 -> £temporary1210
x20768:	mov bx, [si]	; 2: 139 28

@1434$generateTempName$42:	; Return £temporary1208 -> £temporary1210
x20770:	mov ax, [bp]	; 3: 139 70 0
x20773:	mov di, [bp + 4]	; 3: 139 126 4
x20776:	mov bp, [bp + 2]	; 3: 139 110 2
x20779:	jmp ax	; 2: 255 224

@1434$generateTempName$43:	; CallHeader 13 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1434$generateTempName$44:	; Parameter 13 name 6
x20781:	mov ax, [bp + 6]	; 3: 139 70 6
x20784:	mov [bp + 19], ax	; 3: 137 70 19

@1434$generateTempName$45:	; BinaryAdd £temporary1211 size 1
x20787:	mov ax, [bp + 8]	; 3: 139 70 8
x20790:	inc ax	; 1: 64

@1434$generateTempName$46:	; Parameter 13 £temporary1211 8
x20791:	mov [bp + 21], ax	; 3: 137 70 21

@1434$generateTempName$47:	; Parameter 13 status 10
x20794:	mov ax, [bp + 10]	; 3: 139 70 10
x20797:	mov [bp + 23], ax	; 3: 137 70 23

@1434$generateTempName$48:	; Call 13 generateTempName 0
x20800:	mov word [bp + 13], @1434$generateTempName$49	; 5: 199 70 13 78 81
x20805:	mov [bp + 15], bp	; 3: 137 110 15
x20808:	add bp, 13	; 3: 131 197 13
x20811:	jmp @1434$generateTempName	; 3: 233 31 255

@1434$generateTempName$49:	; PostCall 13

@1434$generateTempName$50:	; GetReturnValue £temporary1212

@1434$generateTempName$51:	; Assign result £temporary1212
x20814:	mov [bp + 13], bx	; 3: 137 94 13

@1434$generateTempName$52:	; Equal 55 result 0
x20817:	cmp word [bp + 13], 0	; 4: 131 126 13 0
x20821:	je @1434$generateTempName$55	; 2: 116 14

@1434$generateTempName$53:	; SetReturnValue result
x20823:	mov bx, [bp + 13]	; 3: 139 94 13

@1434$generateTempName$54:	; Return result
x20826:	mov ax, [bp]	; 3: 139 70 0
x20829:	mov di, [bp + 4]	; 3: 139 126 4
x20832:	mov bp, [bp + 2]	; 3: 139 110 2
x20835:	jmp ax	; 2: 255 224

@1434$generateTempName$55:	; Increment c
x20837:	inc byte [bp + 12]	; 3: 254 70 12

@1434$generateTempName$56:	; Goto 2
x20840:	jmp @1434$generateTempName$2	; 3: 233 14 255

@1434$generateTempName$57:	; SetReturnValue 0
x20843:	mov bx, 0	; 3: 187 0 0

@1434$generateTempName$58:	; Return 0
x20846:	mov ax, [bp]	; 3: 139 70 0
x20849:	mov di, [bp + 4]	; 3: 139 126 4
x20852:	mov bp, [bp + 2]	; 3: 139 110 2
x20855:	jmp ax	; 2: 255 224

@1434$generateTempName$59:	; FunctionEnd generateTempName

@1422$g_tempSize:
x20857:	dw 0	; 2: 0 0

@1421$g_tempArray:
x20859:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 64: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

@1423$existsTempName:	; Assign index 0
x20923:	mov word [bp + 8], 0	; 5: 199 70 8 0 0

@1423$existsTempName$1:	; SignedGreaterThanEqual 16 index g_tempSize
x20928:	mov ax, [@1422$g_tempSize]	; 3: 161 121 81
x20931:	cmp [bp + 8], ax	; 3: 57 70 8
x20934:	jge @1423$existsTempName$16	; 2: 125 63

@1423$existsTempName$2:	; CallHeader 10 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

@1423$existsTempName$3:	; Parameter 10 name 6
x20936:	mov ax, [bp + 6]	; 3: 139 70 6
x20939:	mov [bp + 16], ax	; 3: 137 70 16

@1423$existsTempName$4:	; UnsignedMultiply £temporary1183 index 2
x20942:	mov ax, [bp + 8]	; 3: 139 70 8
x20945:	xor dx, dx	; 2: 49 210
x20947:	mul word [int2$2#]	; 4: 247 38 118 75

@1423$existsTempName$5:	; BinaryAdd £temporary1184 g_tempArray £temporary1183
x20951:	mov si, @1421$g_tempArray	; 3: 190 123 81
x20954:	add si, ax	; 2: 1 198

@1423$existsTempName$6:	; Deref £temporary1182 -> £temporary1184 £temporary1184 0

@1423$existsTempName$7:	; Parameter 10 £temporary1182 -> £temporary1184 8
x20956:	mov ax, [si]	; 2: 139 4
x20958:	mov [bp + 18], ax	; 3: 137 70 18

@1423$existsTempName$8:	; Call 10 strcmp 0
x20961:	mov word [bp + 10], @1423$existsTempName$9	; 5: 199 70 10 239 81
x20966:	mov [bp + 12], bp	; 3: 137 110 12
x20969:	add bp, 10	; 3: 131 197 10
x20972:	jmp strcmp	; 3: 233 206 199

@1423$existsTempName$9:	; PostCall 10

@1423$existsTempName$10:	; GetReturnValue £temporary1185

@1423$existsTempName$11:	; NotEqual 14 £temporary1185 0
x20975:	cmp bx, 0	; 3: 131 251 0
x20978:	jne @1423$existsTempName$14	; 2: 117 14

@1423$existsTempName$12:	; SetReturnValue 1
x20980:	mov bx, 1	; 3: 187 1 0

@1423$existsTempName$13:	; Return 1
x20983:	mov ax, [bp]	; 3: 139 70 0
x20986:	mov di, [bp + 4]	; 3: 139 126 4
x20989:	mov bp, [bp + 2]	; 3: 139 110 2
x20992:	jmp ax	; 2: 255 224

@1423$existsTempName$14:	; Increment index
x20994:	inc word [bp + 8]	; 3: 255 70 8

@1423$existsTempName$15:	; Goto 1
x20997:	jmp @1423$existsTempName$1	; 2: 235 185

@1423$existsTempName$16:	; SetReturnValue 0
x20999:	mov bx, 0	; 3: 187 0 0

@1423$existsTempName$17:	; Return 0
x21002:	mov ax, [bp]	; 3: 139 70 0
x21005:	mov di, [bp + 4]	; 3: 139 126 4
x21008:	mov bp, [bp + 2]	; 3: 139 110 2
x21011:	jmp ax	; 2: 255 224

@1423$existsTempName$18:	; FunctionEnd existsTempName

toupper:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

toupper$1:	; Parameter 8 c 6
x21013:	mov ax, [bp + 6]	; 3: 139 70 6
x21016:	mov [bp + 14], ax	; 3: 137 70 14

toupper$2:	; Call 8 islower 0
x21019:	mov word [bp + 8], toupper$3	; 5: 199 70 8 41 82
x21024:	mov [bp + 10], bp	; 3: 137 110 10
x21027:	add bp, 8	; 3: 131 197 8
x21030:	jmp islower	; 3: 233 168 240

toupper$3:	; PostCall 8

toupper$4:	; GetReturnValue £temporary480

toupper$5:	; Equal 31 £temporary480 0
x21033:	cmp bx, 0	; 3: 131 251 0
x21036:	je toupper$31	; 2: 116 122

toupper$6:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

toupper$7:	; Call 8 localeconv 0
x21038:	mov word [bp + 8], toupper$8	; 5: 199 70 8 60 82
x21043:	mov [bp + 10], bp	; 3: 137 110 10
x21046:	add bp, 8	; 3: 131 197 8
x21049:	jmp localeconv	; 3: 233 39 216

toupper$8:	; PostCall 8

toupper$9:	; GetReturnValue £temporary481

toupper$10:	; Assign localeConvPtr £temporary481
x21052:	mov [bp + 8], bx	; 3: 137 94 8

toupper$11:	; Equal 28 localeConvPtr 0
x21055:	cmp word [bp + 8], 0	; 4: 131 126 8 0
x21059:	je toupper$28	; 2: 116 82

toupper$12:	; Deref £temporary483 -> localeConvPtr localeConvPtr 12
x21061:	mov si, [bp + 8]	; 3: 139 118 8

toupper$13:	; Assign lowerCase £temporary483 -> localeConvPtr
x21064:	mov ax, [si + 12]	; 3: 139 68 12
x21067:	mov [bp + 10], ax	; 3: 137 70 10

toupper$14:	; Deref £temporary484 -> localeConvPtr localeConvPtr 14
x21070:	mov si, [bp + 8]	; 3: 139 118 8

toupper$15:	; Assign upperCase £temporary484 -> localeConvPtr
x21073:	mov ax, [si + 14]	; 3: 139 68 14
x21076:	mov [bp + 12], ax	; 3: 137 70 12

toupper$16:	; CallHeader 14 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

toupper$17:	; Parameter 14 lowerCase 6
x21079:	mov ax, [bp + 10]	; 3: 139 70 10
x21082:	mov [bp + 20], ax	; 3: 137 70 20

toupper$18:	; Parameter 14 c 8
x21085:	mov ax, [bp + 6]	; 3: 139 70 6
x21088:	mov [bp + 22], ax	; 3: 137 70 22

toupper$19:	; Call 14 strchr 0
x21091:	mov word [bp + 14], toupper$20	; 5: 199 70 14 113 82
x21096:	mov [bp + 16], bp	; 3: 137 110 16
x21099:	add bp, 14	; 3: 131 197 14
x21102:	jmp strchr	; 3: 233 52 219

toupper$20:	; PostCall 14

toupper$21:	; GetReturnValue £temporary485

toupper$22:	; BinarySubtract index £temporary485 lowerCase
x21105:	sub bx, [bp + 10]	; 3: 43 94 10
x21108:	mov [bp + 14], bx	; 3: 137 94 14

toupper$23:	; BinaryAdd £temporary488 upperCase index
x21111:	mov si, [bp + 12]	; 3: 139 118 12
x21114:	add si, [bp + 14]	; 3: 3 118 14

toupper$24:	; Deref £temporary487 -> £temporary488 £temporary488 0

toupper$25:	; IntegralToIntegral £temporary489 £temporary487 -> £temporary488
x21117:	mov bl, [si]	; 2: 138 28
x21119:	and bx, 255	; 4: 129 227 255 0
x21123:	cmp bl, 0	; 3: 128 251 0
x21126:	jge toupper$26	; 2: 125 4
x21128:	neg bl	; 2: 246 219
x21130:	neg bx	; 2: 247 219

toupper$26:	; SetReturnValue £temporary489

toupper$27:	; Return £temporary489
x21132:	mov ax, [bp]	; 3: 139 70 0
x21135:	mov di, [bp + 4]	; 3: 139 126 4
x21138:	mov bp, [bp + 2]	; 3: 139 110 2
x21141:	jmp ax	; 2: 255 224

toupper$28:	; BinarySubtract £temporary490 c 32
x21143:	mov bx, [bp + 6]	; 3: 139 94 6
x21146:	sub bx, 32	; 3: 131 235 32

toupper$29:	; SetReturnValue £temporary490

toupper$30:	; Return £temporary490
x21149:	mov ax, [bp]	; 3: 139 70 0
x21152:	mov di, [bp + 4]	; 3: 139 126 4
x21155:	mov bp, [bp + 2]	; 3: 139 110 2
x21158:	jmp ax	; 2: 255 224

toupper$31:	; SetReturnValue c
x21160:	mov bx, [bp + 6]	; 3: 139 94 6

toupper$32:	; Return c
x21163:	mov ax, [bp]	; 3: 139 70 0
x21166:	mov di, [bp + 4]	; 3: 139 126 4
x21169:	mov bp, [bp + 2]	; 3: 139 110 2
x21172:	jmp ax	; 2: 255 224

toupper$33:	; FunctionEnd toupper

rewind:	; CallHeader 8 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

rewind$1:	; Parameter 8 stream 6
x21174:	mov ax, [bp + 6]	; 3: 139 70 6
x21177:	mov [bp + 14], ax	; 3: 137 70 14

rewind$2:	; Parameter 8 0 8
x21180:	mov word [bp + 16], 0	; 5: 199 70 16 0 0

rewind$3:	; Parameter 8 0 10
x21185:	mov word [bp + 18], 0	; 5: 199 70 18 0 0

rewind$4:	; Call 8 fseek 0
x21190:	mov word [bp + 8], rewind$5	; 5: 199 70 8 212 82
x21195:	mov [bp + 10], bp	; 3: 137 110 10
x21198:	add bp, 8	; 3: 131 197 8
x21201:	jmp fseek	; 3: 233 232 199

rewind$5:	; PostCall 8

rewind$6:	; Return 0
x21204:	mov ax, [bp]	; 3: 139 70 0
x21207:	mov di, [bp + 4]	; 3: 139 126 4
x21210:	mov bp, [bp + 2]	; 3: 139 110 2
x21213:	jmp ax	; 2: 255 224

rewind$7:	; FunctionEnd rewind

$StackTop:
x21215:
