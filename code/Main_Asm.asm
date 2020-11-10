	org 100h
	; Initialize Stack Pointer
x256:	mov bp, $StackTop	; 3: -67 82 32
	; Initialize Heap Pointer
x259:	mov word [65534], 65534	; 6: -57 6 -2 -1 -2 -1
	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
x265:	fstcw [bp]	; 4: -101 -39 126 0
x269:	or word [bp], 3072	; 5: -127 78 0 0 12
x274:	fldcw [bp]	; 3: -39 110 0
x277:	mov word [$StackTop], 0	; 6: -57 6 82 32 0 0

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

stdlib_test$1:	; parameter string_hello3A2025u0A#, offset 6
x320:	mov word [bp + 12], string_hello3A2025u0A#	; 5: -57 70 12 -111 1

stdlib_test$2:	; £temporary5996 = int_to_int hello (Function -> Unsigned_Int)
x325:	mov ax, hello	; 3: -72 -100 1

stdlib_test$3:	; parameter £temporary5996, offset 8
x328:	mov [bp + 14], ax	; 3: -119 70 14

stdlib_test$4:	; call function noellipse-ellipse printf, extra 0
x331:	mov word [bp + 6], stdlib_test$5	; 5: -57 70 6 94 1
x336:	mov [bp + 8], bp	; 3: -119 110 8
x339:	add bp, 6	; 3: -125 -59 6
x342:	mov di, bp	; 2: -119 -17
x344:	add di, 2	; 3: -125 -57 2
x347:	nop	; 1: -112
x348:	jmp printf	; 2: -21 75

stdlib_test$5:	; post call

stdlib_test$6:	; call header integral zero 0 stack zero 0

stdlib_test$7:	; parameter hello, offset 6
x350:	mov word [bp + 12], hello	; 5: -57 70 12 -100 1

stdlib_test$8:	; call function noellipse-noellipse qtest
x355:	mov word [bp + 6], stdlib_test$9	; 5: -57 70 6 113 1
x360:	mov [bp + 8], bp	; 3: -119 110 8
x363:	add bp, 6	; 3: -125 -59 6
x366:	jmp qtest	; 3: -23 -95 30

stdlib_test$9:	; post call

stdlib_test$10:	; call header integral zero 0 stack zero 0

stdlib_test$11:	; parameter string_Y#, offset 6
x369:	mov word [bp + 12], string_Y#	; 5: -57 70 12 -89 1

stdlib_test$12:	; call function noellipse-ellipse printf, extra 0
x374:	mov word [bp + 6], stdlib_test$13	; 5: -57 70 6 -122 1
x379:	mov [bp + 8], bp	; 3: -119 110 8
x382:	add bp, 6	; 3: -125 -59 6
x385:	mov di, bp	; 2: -119 -17
x387:	nop	; 1: -112
x388:	jmp printf	; 2: -21 35

stdlib_test$13:	; post call

stdlib_test$14:	; return
x390:	mov ax, [bp]	; 3: -117 70 0
x393:	mov di, [bp + 4]	; 3: -117 126 4
x396:	mov bp, [bp + 2]	; 3: -117 110 2
x399:	jmp ax	; 2: -1 -32

stdlib_test$15:	; function end stdlib_test

string_hello3A2025u0A#:
x401:	db "hello: %u", 10, 0	; 11: 104 101 108 108 111 58 32 37 117 10 0

hello:	; empty

hello$1:	; return
x412:	mov ax, [bp]	; 3: -117 70 0
x415:	mov di, [bp + 4]	; 3: -117 126 4
x418:	mov bp, [bp + 2]	; 3: -117 110 2
x421:	jmp ax	; 2: -1 -32

hello$2:	; function end hello

string_Y#:
x423:	db "Y", 0	; 2: 89 0

printf:	; £temporary2383 = &format
x425:	mov si, bp	; 2: -119 -18
x427:	add si, 6	; 3: -125 -58 6

printf$1:	; £temporary2384 = int_to_int £temporary2383 (Pointer -> Pointer)

printf$2:	; arg_list = £temporary2384 + 2
x430:	add si, 2	; 3: -125 -58 2
x433:	mov [di + 8], si	; 3: -119 117 8

printf$3:	; call header integral zero 0 stack zero 0

printf$4:	; parameter format, offset 6
x436:	mov ax, [bp + 6]	; 3: -117 70 6
x439:	mov [di + 16], ax	; 3: -119 69 16

printf$5:	; parameter arg_list, offset 8
x442:	mov ax, [di + 8]	; 3: -117 69 8
x445:	mov [di + 18], ax	; 3: -119 69 18

printf$6:	; call function ellipse-noellipse vprintf
x448:	mov word [di + 10], printf$7	; 5: -57 69 10 -45 1
x453:	mov [di + 12], bp	; 3: -119 109 12
x456:	mov [di + 14], di	; 3: -119 125 14
x459:	add di, 10	; 3: -125 -57 10
x462:	mov bp, di	; 2: -119 -3
x464:	nop	; 1: -112
x465:	jmp vprintf	; 2: -21 11

printf$7:	; post call

printf$8:	; £temporary2386 = return_value

printf$9:	; return_value = £temporary2386

printf$10:	; return
x467:	mov ax, [bp]	; 3: -117 70 0
x470:	mov di, [bp + 4]	; 3: -117 126 4
x473:	mov bp, [bp + 2]	; 3: -117 110 2
x476:	jmp ax	; 2: -1 -32

printf$11:	; function end printf

vprintf:	; call header integral zero 0 stack zero 0

vprintf$1:	; parameter stdout, offset 6
x478:	mov ax, [stdout]	; 3: -95 9 2
x481:	mov [bp + 16], ax	; 3: -119 70 16

vprintf$2:	; parameter format, offset 8
x484:	mov ax, [bp + 6]	; 3: -117 70 6
x487:	mov [bp + 18], ax	; 3: -119 70 18

vprintf$3:	; parameter arg_list, offset 10
x490:	mov ax, [bp + 8]	; 3: -117 70 8
x493:	mov [bp + 20], ax	; 3: -119 70 20

vprintf$4:	; call function noellipse-noellipse vfprintf
x496:	mov word [bp + 10], vprintf$5	; 5: -57 70 10 -2 1
x501:	mov [bp + 12], bp	; 3: -119 110 12
x504:	add bp, 10	; 3: -125 -59 10
x507:	jmp vfprintf	; 3: -23 81 2

vprintf$5:	; post call

vprintf$6:	; £temporary2390 = return_value

vprintf$7:	; return_value = £temporary2390

vprintf$8:	; return
x510:	mov ax, [bp]	; 3: -117 70 0
x513:	mov di, [bp + 4]	; 3: -117 126 4
x516:	mov bp, [bp + 2]	; 3: -117 110 2
x519:	jmp ax	; 2: -1 -32

vprintf$9:	; function end vprintf

stdout:
x521:	dw g_fileArray + 29	; 2: 40 2

g_fileArray:
x523:	dw 1	; 2: 1 0
x525:	dw 0	; 2: 0 0
x527:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x552:	dw 1	; 2: 1 0
x554:	dw 1	; 2: 1 0
x556:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x581:	dw 1	; 2: 1 0
x583:	dw 2	; 2: 2 0
x585:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 25: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
x610:	db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0	; 493: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0

vfprintf:	; g_outStatus = 0
x1103:	mov word [g_outStatus], 0	; 6: -57 6 -128 4 0 0

vfprintf$1:	; £temporary2402 = int_to_int outStream (Pointer -> Pointer)
x1109:	mov ax, [bp + 6]	; 3: -117 70 6

vfprintf$2:	; g_outDevice = £temporary2402
x1112:	mov [g_outDevice], ax	; 3: -93 -126 4

vfprintf$3:	; call header integral zero 0 stack zero 0

vfprintf$4:	; parameter format, offset 6
x1115:	mov ax, [bp + 8]	; 3: -117 70 8
x1118:	mov [bp + 18], ax	; 3: -119 70 18

vfprintf$5:	; parameter arg_list, offset 8
x1121:	mov ax, [bp + 10]	; 3: -117 70 10
x1124:	mov [bp + 20], ax	; 3: -119 70 20

vfprintf$6:	; call function noellipse-noellipse printFormat
x1127:	mov word [bp + 12], vfprintf$7	; 5: -57 70 12 117 4
x1132:	mov [bp + 14], bp	; 3: -119 110 14
x1135:	add bp, 12	; 3: -125 -59 12
x1138:	nop	; 1: -112
x1139:	jmp printFormat	; 2: -21 15

vfprintf$7:	; post call

vfprintf$8:	; £temporary2403 = return_value

vfprintf$9:	; return_value = £temporary2403

vfprintf$10:	; return
x1141:	mov ax, [bp]	; 3: -117 70 0
x1144:	mov di, [bp + 4]	; 3: -117 126 4
x1147:	mov bp, [bp + 2]	; 3: -117 110 2
x1150:	jmp ax	; 2: -1 -32

vfprintf$11:	; function end vfprintf

g_outStatus:
x1152:	db 0, 0	; 2: 0 0

g_outDevice:
x1154:	db 0, 0	; 2: 0 0

printFormat:	; width = 0
x1156:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$1:	; precision = 0
x1161:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$2:	; percent = 0
x1166:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$3:	; plus = 0
x1171:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$4:	; minus = 0
x1176:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$5:	; space = 0
x1181:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$6:	; zero = 0
x1186:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$7:	; grid = 0
x1191:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$8:	; widthStar = 0
x1196:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$9:	; period = 0
x1201:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$10:	; precisionStar = 0
x1206:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$11:	; shortInt = 0
x1211:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$12:	; longInt = 0
x1216:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$13:	; longDouble = 0
x1221:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$14:	; g_outChars = 0
x1226:	mov word [g_outChars], 0	; 6: -57 6 -26 9 0 0

printFormat$15:	; index = 0
x1232:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printFormat$16:	; £temporary2235 = format + index
x1237:	mov si, [bp + 6]	; 3: -117 118 6
x1240:	add si, [bp + 10]	; 3: 3 118 10

printFormat$17:	; £temporary2234 -> £temporary2235 = *£temporary2235

printFormat$18:	; if £temporary2234 -> £temporary2235 == 0 goto 286
x1243:	cmp byte [si], 0	; 3: -128 60 0
x1246:	je printFormat$286	; 4: 15 -124 -34 4

printFormat$19:	; £temporary2239 = format + index
x1250:	mov si, [bp + 6]	; 3: -117 118 6
x1253:	add si, [bp + 10]	; 3: 3 118 10

printFormat$20:	; £temporary2238 -> £temporary2239 = *£temporary2239

printFormat$21:	; c = £temporary2238 -> £temporary2239
x1256:	mov al, [si]	; 2: -118 4
x1258:	mov [bp + 40], al	; 3: -120 70 40

printFormat$22:	; if percent == 0 goto 264
x1261:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x1265:	je printFormat$264	; 4: 15 -124 99 4

printFormat$23:	; case c == 43 goto 52
x1269:	mov al, [bp + 40]	; 3: -118 70 40
x1272:	cmp al, 43	; 2: 60 43
x1274:	je printFormat$52	; 4: 15 -124 -113 0

printFormat$24:	; case c == 45 goto 54
x1278:	cmp al, 45	; 2: 60 45
x1280:	je printFormat$54	; 4: 15 -124 -111 0

printFormat$25:	; case c == 32 goto 56
x1284:	cmp al, 32	; 2: 60 32
x1286:	je printFormat$56	; 4: 15 -124 -109 0

printFormat$26:	; case c == 48 goto 58
x1290:	cmp al, 48	; 2: 60 48
x1292:	je printFormat$58	; 4: 15 -124 -107 0

printFormat$27:	; case c == 35 goto 60
x1296:	cmp al, 35	; 2: 60 35
x1298:	je printFormat$60	; 4: 15 -124 -105 0

printFormat$28:	; case c == 46 goto 62
x1302:	cmp al, 46	; 2: 60 46
x1304:	je printFormat$62	; 4: 15 -124 -103 0

printFormat$29:	; case c == 42 goto 64
x1308:	cmp al, 42	; 2: 60 42
x1310:	je printFormat$64	; 4: 15 -124 -101 0

printFormat$30:	; case c == 104 goto 69
x1314:	cmp al, 104	; 2: 60 104
x1316:	je printFormat$69	; 4: 15 -124 -85 0

printFormat$31:	; case c == 108 goto 71
x1320:	cmp al, 108	; 2: 60 108
x1322:	je printFormat$71	; 4: 15 -124 -83 0

printFormat$32:	; case c == 76 goto 73
x1326:	cmp al, 76	; 2: 60 76
x1328:	je printFormat$73	; 4: 15 -124 -81 0

printFormat$33:	; case c == 37 goto 75
x1332:	cmp al, 37	; 2: 60 37
x1334:	je printFormat$75	; 4: 15 -124 -79 0

printFormat$34:	; case c == 110 goto 75
x1338:	cmp al, 110	; 2: 60 110
x1340:	je printFormat$75	; 4: 15 -124 -85 0

printFormat$35:	; case c == 112 goto 75
x1344:	cmp al, 112	; 2: 60 112
x1346:	je printFormat$75	; 4: 15 -124 -91 0

printFormat$36:	; case c == 71 goto 75
x1350:	cmp al, 71	; 2: 60 71
x1352:	je printFormat$75	; 4: 15 -124 -97 0

printFormat$37:	; case c == 103 goto 75
x1356:	cmp al, 103	; 2: 60 103
x1358:	je printFormat$75	; 4: 15 -124 -103 0

printFormat$38:	; case c == 69 goto 75
x1362:	cmp al, 69	; 2: 60 69
x1364:	je printFormat$75	; 4: 15 -124 -109 0

printFormat$39:	; case c == 101 goto 75
x1368:	cmp al, 101	; 2: 60 101
x1370:	je printFormat$75	; 4: 15 -124 -115 0

printFormat$40:	; case c == 102 goto 75
x1374:	cmp al, 102	; 2: 60 102
x1376:	je printFormat$75	; 4: 15 -124 -121 0

printFormat$41:	; case c == 115 goto 75
x1380:	cmp al, 115	; 2: 60 115
x1382:	je printFormat$75	; 4: 15 -124 -127 0

printFormat$42:	; case c == 99 goto 75
x1386:	cmp al, 99	; 2: 60 99
x1388:	je printFormat$75	; 2: 116 125

printFormat$43:	; case c == 88 goto 75
x1390:	cmp al, 88	; 2: 60 88
x1392:	je printFormat$75	; 2: 116 121

printFormat$44:	; case c == 120 goto 75
x1394:	cmp al, 120	; 2: 60 120
x1396:	je printFormat$75	; 2: 116 117

printFormat$45:	; case c == 111 goto 75
x1398:	cmp al, 111	; 2: 60 111
x1400:	je printFormat$75	; 2: 116 113

printFormat$46:	; case c == 98 goto 75
x1402:	cmp al, 98	; 2: 60 98
x1404:	je printFormat$75	; 2: 116 109

printFormat$47:	; case c == 117 goto 75
x1406:	cmp al, 117	; 2: 60 117
x1408:	je printFormat$75	; 2: 116 105

printFormat$48:	; case c == 100 goto 75
x1410:	cmp al, 100	; 2: 60 100
x1412:	je printFormat$75	; 2: 116 101

printFormat$49:	; case c == 105 goto 75
x1414:	cmp al, 105	; 2: 60 105
x1416:	je printFormat$75	; 2: 116 97

printFormat$50:	; case end c

printFormat$51:	; goto 241
x1418:	jmp printFormat$241	; 3: -23 88 3

printFormat$52:	; plus = 1
x1421:	mov word [bp + 18], 1	; 5: -57 70 18 1 0

printFormat$53:	; goto 284
x1426:	jmp printFormat$284	; 3: -23 37 4

printFormat$54:	; minus = 1
x1429:	mov word [bp + 20], 1	; 5: -57 70 20 1 0

printFormat$55:	; goto 284
x1434:	jmp printFormat$284	; 3: -23 29 4

printFormat$56:	; space = 1
x1437:	mov word [bp + 22], 1	; 5: -57 70 22 1 0

printFormat$57:	; goto 284
x1442:	jmp printFormat$284	; 3: -23 21 4

printFormat$58:	; zero = 1
x1445:	mov word [bp + 24], 1	; 5: -57 70 24 1 0

printFormat$59:	; goto 284
x1450:	jmp printFormat$284	; 3: -23 13 4

printFormat$60:	; grid = 1
x1453:	mov word [bp + 26], 1	; 5: -57 70 26 1 0

printFormat$61:	; goto 284
x1458:	jmp printFormat$284	; 3: -23 5 4

printFormat$62:	; period = 1
x1461:	mov word [bp + 30], 1	; 5: -57 70 30 1 0

printFormat$63:	; goto 284
x1466:	jmp printFormat$284	; 3: -23 -3 3

printFormat$64:	; if period != 0 goto 67
x1469:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x1473:	jne printFormat$67	; 2: 117 8

printFormat$65:	; width = -1
x1475:	mov word [bp + 12], -1	; 5: -57 70 12 -1 -1

printFormat$66:	; goto 284
x1480:	jmp printFormat$284	; 3: -23 -17 3

printFormat$67:	; precision = -1
x1483:	mov word [bp + 14], -1	; 5: -57 70 14 -1 -1

printFormat$68:	; goto 284
x1488:	jmp printFormat$284	; 3: -23 -25 3

printFormat$69:	; shortInt = 1
x1491:	mov word [bp + 34], 1	; 5: -57 70 34 1 0

printFormat$70:	; goto 284
x1496:	jmp printFormat$284	; 3: -23 -33 3

printFormat$71:	; longInt = 1
x1499:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printFormat$72:	; goto 284
x1504:	jmp printFormat$284	; 3: -23 -41 3

printFormat$73:	; longDouble = 1
x1507:	mov word [bp + 38], 1	; 5: -57 70 38 1 0

printFormat$74:	; goto 284
x1512:	jmp printFormat$284	; 3: -23 -49 3

printFormat$75:	; if minus == 0 goto 106
x1515:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x1519:	je printFormat$106	; 4: 15 -124 -122 0

printFormat$76:	; startChars = g_outChars
x1523:	mov ax, [g_outChars]	; 3: -95 -26 9
x1526:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$77:	; call header integral zero 0 stack zero 0

printFormat$78:	; £temporary2243 = format + index
x1529:	mov si, [bp + 6]	; 3: -117 118 6
x1532:	add si, [bp + 10]	; 3: 3 118 10

printFormat$79:	; £temporary2242 -> £temporary2243 = *£temporary2243

printFormat$80:	; £temporary2244 = &£temporary2242 -> £temporary2243

printFormat$81:	; parameter £temporary2244, offset 6
x1535:	mov [bp + 49], si	; 3: -119 118 49

printFormat$82:	; parameter arg_list, offset 8
x1538:	mov ax, [bp + 8]	; 3: -117 70 8
x1541:	mov [bp + 51], ax	; 3: -119 70 51

printFormat$83:	; parameter plus, offset 10
x1544:	mov ax, [bp + 18]	; 3: -117 70 18
x1547:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$84:	; parameter space, offset 12
x1550:	mov ax, [bp + 22]	; 3: -117 70 22
x1553:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$85:	; parameter grid, offset 14
x1556:	mov ax, [bp + 26]	; 3: -117 70 26
x1559:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$86:	; £temporary2245 = &width
x1562:	mov si, bp	; 2: -119 -18
x1564:	add si, 12	; 3: -125 -58 12

printFormat$87:	; parameter £temporary2245, offset 16
x1567:	mov [bp + 59], si	; 3: -119 118 59

printFormat$88:	; parameter precision, offset 18
x1570:	mov ax, [bp + 14]	; 3: -117 70 14
x1573:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$89:	; parameter shortInt, offset 20
x1576:	mov ax, [bp + 34]	; 3: -117 70 34
x1579:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$90:	; parameter longInt, offset 22
x1582:	mov ax, [bp + 36]	; 3: -117 70 36
x1585:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$91:	; parameter longDouble, offset 24
x1588:	mov ax, [bp + 38]	; 3: -117 70 38
x1591:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$92:	; parameter 1, offset 26
x1594:	mov word [bp + 69], 1	; 5: -57 70 69 1 0

printFormat$93:	; parameter 0, offset 28
x1599:	mov word [bp + 71], 0	; 5: -57 70 71 0 0

printFormat$94:	; call function noellipse-noellipse printArgument
x1604:	mov word [bp + 43], printFormat$95	; 5: -57 70 43 82 6
x1609:	mov [bp + 45], bp	; 3: -119 110 45
x1612:	add bp, 43	; 3: -125 -59 43
x1615:	jmp printArgument	; 3: -23 -104 3

printFormat$95:	; post call

printFormat$96:	; £temporary2246 = return_value

printFormat$97:	; arg_list = £temporary2246
x1618:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$98:	; £temporary2248 = g_outChars - startChars
x1621:	mov ax, [g_outChars]	; 3: -95 -26 9
x1624:	sub ax, [bp + 41]	; 3: 43 70 41

printFormat$99:	; ++field
x1627:	inc word [bp + 43]	; 3: -1 70 43

printFormat$100:	; if £temporary2248 >= width goto 239
x1630:	cmp ax, [bp + 12]	; 3: 59 70 12
x1633:	jge printFormat$239	; 4: 15 -115 120 2

printFormat$101:	; call header integral zero 0 stack zero 0

printFormat$102:	; parameter 32, offset 6
x1637:	mov byte [bp + 51], 32	; 4: -58 70 51 32

printFormat$103:	; call function noellipse-noellipse printChar
x1641:	mov word [bp + 45], printFormat$104	; 5: -57 70 45 119 6
x1646:	mov [bp + 47], bp	; 3: -119 110 47
x1649:	add bp, 45	; 3: -125 -59 45
x1652:	jmp printChar	; 3: -23 -122 10

printFormat$104:	; post call

printFormat$105:	; goto 99
x1655:	jmp printFormat$99	; 2: -21 -30

printFormat$106:	; if zero == 0 goto 186
x1657:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x1661:	je printFormat$186	; 4: 15 -124 100 1

printFormat$107:	; startChars = g_outChars
x1665:	mov ax, [g_outChars]	; 3: -95 -26 9
x1668:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$108:	; oldOutStatus = g_outStatus
x1671:	mov ax, [g_outStatus]	; 3: -95 -128 4
x1674:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$109:	; negative = 0
x1677:	mov word [bp + 45], 0	; 5: -57 70 45 0 0

printFormat$110:	; g_outStatus = 2
x1682:	mov word [g_outStatus], 2	; 6: -57 6 -128 4 2 0

printFormat$111:	; call header integral zero 0 stack zero 0

printFormat$112:	; £temporary2252 = format + index
x1688:	mov si, [bp + 6]	; 3: -117 118 6
x1691:	add si, [bp + 10]	; 3: 3 118 10

printFormat$113:	; £temporary2251 -> £temporary2252 = *£temporary2252

printFormat$114:	; £temporary2253 = &£temporary2251 -> £temporary2252

printFormat$115:	; parameter £temporary2253, offset 6
x1694:	mov [bp + 53], si	; 3: -119 118 53

printFormat$116:	; parameter arg_list, offset 8
x1697:	mov ax, [bp + 8]	; 3: -117 70 8
x1700:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$117:	; parameter 0, offset 10
x1703:	mov word [bp + 57], 0	; 5: -57 70 57 0 0

printFormat$118:	; parameter 0, offset 12
x1708:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$119:	; parameter grid, offset 14
x1713:	mov ax, [bp + 26]	; 3: -117 70 26
x1716:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$120:	; £temporary2254 = &width
x1719:	mov si, bp	; 2: -119 -18
x1721:	add si, 12	; 3: -125 -58 12

printFormat$121:	; parameter £temporary2254, offset 16
x1724:	mov [bp + 63], si	; 3: -119 118 63

printFormat$122:	; parameter precision, offset 18
x1727:	mov ax, [bp + 14]	; 3: -117 70 14
x1730:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$123:	; parameter shortInt, offset 20
x1733:	mov ax, [bp + 34]	; 3: -117 70 34
x1736:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$124:	; parameter longInt, offset 22
x1739:	mov ax, [bp + 36]	; 3: -117 70 36
x1742:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$125:	; parameter longDouble, offset 24
x1745:	mov ax, [bp + 38]	; 3: -117 70 38
x1748:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$126:	; parameter 0, offset 26
x1751:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$127:	; £temporary2255 = &negative
x1756:	mov si, bp	; 2: -119 -18
x1758:	add si, 45	; 3: -125 -58 45

printFormat$128:	; parameter £temporary2255, offset 28
x1761:	mov [bp + 75], si	; 3: -119 118 75

printFormat$129:	; call function noellipse-noellipse printArgument
x1764:	mov word [bp + 47], printFormat$130	; 5: -57 70 47 -14 6
x1769:	mov [bp + 49], bp	; 3: -119 110 49
x1772:	add bp, 47	; 3: -125 -59 47
x1775:	jmp printArgument	; 3: -23 -8 2

printFormat$130:	; post call

printFormat$131:	; g_outStatus = oldOutStatus
x1778:	mov ax, [bp + 43]	; 3: -117 70 43
x1781:	mov [g_outStatus], ax	; 3: -93 -128 4

printFormat$132:	; field = g_outChars - startChars
x1784:	mov ax, [g_outChars]	; 3: -95 -26 9
x1787:	sub ax, [bp + 41]	; 3: 43 70 41
x1790:	mov [bp + 47], ax	; 3: -119 70 47

printFormat$133:	; g_outChars = startChars
x1793:	mov ax, [bp + 41]	; 3: -117 70 41
x1796:	mov [g_outChars], ax	; 3: -93 -26 9

printFormat$134:	; if negative == 0 goto 145
x1799:	cmp word [bp + 45], 0	; 4: -125 126 45 0
x1803:	je printFormat$145	; 2: 116 41

printFormat$135:	; call header integral zero 0 stack zero 0

printFormat$136:	; parameter 88, offset 6
x1805:	mov byte [bp + 55], 88	; 4: -58 70 55 88

printFormat$137:	; call function noellipse-noellipse printChar
x1809:	mov word [bp + 49], printFormat$138	; 5: -57 70 49 31 7
x1814:	mov [bp + 51], bp	; 3: -119 110 51
x1817:	add bp, 49	; 3: -125 -59 49
x1820:	jmp printChar	; 3: -23 -34 9

printFormat$138:	; post call

printFormat$139:	; call header integral zero 0 stack zero 0

printFormat$140:	; parameter 45, offset 6
x1823:	mov byte [bp + 55], 45	; 4: -58 70 55 45

printFormat$141:	; call function noellipse-noellipse printChar
x1827:	mov word [bp + 49], printFormat$142	; 5: -57 70 49 49 7
x1832:	mov [bp + 51], bp	; 3: -119 110 51
x1835:	add bp, 49	; 3: -125 -59 49
x1838:	jmp printChar	; 3: -23 -52 9

printFormat$142:	; post call

printFormat$143:	; ++field
x1841:	inc word [bp + 47]	; 3: -1 70 47

printFormat$144:	; goto 158
x1844:	jmp printFormat$158	; 2: -21 57

printFormat$145:	; if plus == 0 goto 152
x1846:	cmp word [bp + 18], 0	; 4: -125 126 18 0
x1850:	je printFormat$152	; 2: 116 23

printFormat$146:	; call header integral zero 0 stack zero 0

printFormat$147:	; parameter 43, offset 6
x1852:	mov byte [bp + 55], 43	; 4: -58 70 55 43

printFormat$148:	; call function noellipse-noellipse printChar
x1856:	mov word [bp + 49], printFormat$149	; 5: -57 70 49 78 7
x1861:	mov [bp + 51], bp	; 3: -119 110 51
x1864:	add bp, 49	; 3: -125 -59 49
x1867:	jmp printChar	; 3: -23 -81 9

printFormat$149:	; post call

printFormat$150:	; ++field
x1870:	inc word [bp + 47]	; 3: -1 70 47

printFormat$151:	; goto 158
x1873:	jmp printFormat$158	; 2: -21 28

printFormat$152:	; if space == 0 goto 158
x1875:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x1879:	je printFormat$158	; 2: 116 22

printFormat$153:	; call header integral zero 0 stack zero 0

printFormat$154:	; parameter 32, offset 6
x1881:	mov byte [bp + 55], 32	; 4: -58 70 55 32

printFormat$155:	; call function noellipse-noellipse printChar
x1885:	mov word [bp + 49], printFormat$156	; 5: -57 70 49 107 7
x1890:	mov [bp + 51], bp	; 3: -119 110 51
x1893:	add bp, 49	; 3: -125 -59 49
x1896:	jmp printChar	; 3: -23 -110 9

printFormat$156:	; post call

printFormat$157:	; £temporary2268 = field + 1
x1899:	mov ax, [bp + 47]	; 3: -117 70 47
x1902:	inc ax	; 1: 64

printFormat$158:	; ++field
x1903:	inc word [bp + 47]	; 3: -1 70 47

printFormat$159:	; if £temporary2268 >= width goto 165
x1906:	cmp ax, [bp + 12]	; 3: 59 70 12
x1909:	jge printFormat$165	; 2: 125 20

printFormat$160:	; call header integral zero 0 stack zero 0

printFormat$161:	; parameter 48, offset 6
x1911:	mov byte [bp + 55], 48	; 4: -58 70 55 48

printFormat$162:	; call function noellipse-noellipse printChar
x1915:	mov word [bp + 49], printFormat$163	; 5: -57 70 49 -119 7
x1920:	mov [bp + 51], bp	; 3: -119 110 51
x1923:	add bp, 49	; 3: -125 -59 49
x1926:	jmp printChar	; 3: -23 116 9

printFormat$163:	; post call

printFormat$164:	; goto 158
x1929:	jmp printFormat$158	; 2: -21 -28

printFormat$165:	; call header integral zero 0 stack zero 0

printFormat$166:	; £temporary2272 = format + index
x1931:	mov si, [bp + 6]	; 3: -117 118 6
x1934:	add si, [bp + 10]	; 3: 3 118 10

printFormat$167:	; £temporary2271 -> £temporary2272 = *£temporary2272

printFormat$168:	; £temporary2273 = &£temporary2271 -> £temporary2272

printFormat$169:	; parameter £temporary2273, offset 6
x1937:	mov [bp + 55], si	; 3: -119 118 55

printFormat$170:	; parameter arg_list, offset 8
x1940:	mov ax, [bp + 8]	; 3: -117 70 8
x1943:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$171:	; parameter 0, offset 10
x1946:	mov word [bp + 59], 0	; 5: -57 70 59 0 0

printFormat$172:	; parameter 0, offset 12
x1951:	mov word [bp + 61], 0	; 5: -57 70 61 0 0

printFormat$173:	; parameter grid, offset 14
x1956:	mov ax, [bp + 26]	; 3: -117 70 26
x1959:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$174:	; parameter 0, offset 16
x1962:	mov word [bp + 65], 0	; 5: -57 70 65 0 0

printFormat$175:	; parameter precision, offset 18
x1967:	mov ax, [bp + 14]	; 3: -117 70 14
x1970:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$176:	; parameter shortInt, offset 20
x1973:	mov ax, [bp + 34]	; 3: -117 70 34
x1976:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$177:	; parameter longInt, offset 22
x1979:	mov ax, [bp + 36]	; 3: -117 70 36
x1982:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$178:	; parameter longDouble, offset 24
x1985:	mov ax, [bp + 38]	; 3: -117 70 38
x1988:	mov [bp + 73], ax	; 3: -119 70 73

printFormat$179:	; parameter 0, offset 26
x1991:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$180:	; parameter 0, offset 28
x1996:	mov word [bp + 77], 0	; 5: -57 70 77 0 0

printFormat$181:	; call function noellipse-noellipse printArgument
x2001:	mov word [bp + 49], printFormat$182	; 5: -57 70 49 -33 7
x2006:	mov [bp + 51], bp	; 3: -119 110 51
x2009:	add bp, 49	; 3: -125 -59 49
x2012:	jmp printArgument	; 3: -23 11 2

printFormat$182:	; post call

printFormat$183:	; £temporary2274 = return_value

printFormat$184:	; arg_list = £temporary2274
x2015:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$185:	; goto 239
x2018:	jmp printFormat$239	; 3: -23 -8 0

printFormat$186:	; startChars = g_outChars
x2021:	mov ax, [g_outChars]	; 3: -95 -26 9
x2024:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$187:	; oldOutStatus = g_outStatus
x2027:	mov ax, [g_outStatus]	; 3: -95 -128 4
x2030:	mov [bp + 43], ax	; 3: -119 70 43

printFormat$188:	; g_outStatus = 2
x2033:	mov word [g_outStatus], 2	; 6: -57 6 -128 4 2 0

printFormat$189:	; call header integral zero 0 stack zero 0

printFormat$190:	; £temporary2276 = format + index
x2039:	mov si, [bp + 6]	; 3: -117 118 6
x2042:	add si, [bp + 10]	; 3: 3 118 10

printFormat$191:	; £temporary2275 -> £temporary2276 = *£temporary2276

printFormat$192:	; £temporary2277 = &£temporary2275 -> £temporary2276

printFormat$193:	; parameter £temporary2277, offset 6
x2045:	mov [bp + 51], si	; 3: -119 118 51

printFormat$194:	; parameter arg_list, offset 8
x2048:	mov ax, [bp + 8]	; 3: -117 70 8
x2051:	mov [bp + 53], ax	; 3: -119 70 53

printFormat$195:	; parameter plus, offset 10
x2054:	mov ax, [bp + 18]	; 3: -117 70 18
x2057:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$196:	; parameter space, offset 12
x2060:	mov ax, [bp + 22]	; 3: -117 70 22
x2063:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$197:	; parameter grid, offset 14
x2066:	mov ax, [bp + 26]	; 3: -117 70 26
x2069:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$198:	; £temporary2278 = &width
x2072:	mov si, bp	; 2: -119 -18
x2074:	add si, 12	; 3: -125 -58 12

printFormat$199:	; parameter £temporary2278, offset 16
x2077:	mov [bp + 61], si	; 3: -119 118 61

printFormat$200:	; parameter precision, offset 18
x2080:	mov ax, [bp + 14]	; 3: -117 70 14
x2083:	mov [bp + 63], ax	; 3: -119 70 63

printFormat$201:	; parameter shortInt, offset 20
x2086:	mov ax, [bp + 34]	; 3: -117 70 34
x2089:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$202:	; parameter longInt, offset 22
x2092:	mov ax, [bp + 36]	; 3: -117 70 36
x2095:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$203:	; parameter longDouble, offset 24
x2098:	mov ax, [bp + 38]	; 3: -117 70 38
x2101:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$204:	; parameter 1, offset 26
x2104:	mov word [bp + 71], 1	; 5: -57 70 71 1 0

printFormat$205:	; parameter 0, offset 28
x2109:	mov word [bp + 73], 0	; 5: -57 70 73 0 0

printFormat$206:	; call function noellipse-noellipse printArgument
x2114:	mov word [bp + 45], printFormat$207	; 5: -57 70 45 80 8
x2119:	mov [bp + 47], bp	; 3: -119 110 47
x2122:	add bp, 45	; 3: -125 -59 45
x2125:	jmp printArgument	; 3: -23 -102 1

printFormat$207:	; post call

printFormat$208:	; g_outStatus = oldOutStatus
x2128:	mov ax, [bp + 43]	; 3: -117 70 43
x2131:	mov [g_outStatus], ax	; 3: -93 -128 4

printFormat$209:	; field = g_outChars - startChars
x2134:	mov ax, [g_outChars]	; 3: -95 -26 9
x2137:	sub ax, [bp + 41]	; 3: 43 70 41
x2140:	mov [bp + 45], ax	; 3: -119 70 45

printFormat$210:	; g_outChars = startChars
x2143:	mov ax, [bp + 41]	; 3: -117 70 41
x2146:	mov [g_outChars], ax	; 3: -93 -26 9

printFormat$211:	; £temporary2281 = field
x2149:	mov ax, [bp + 45]	; 3: -117 70 45

printFormat$212:	; ++field
x2152:	inc word [bp + 45]	; 3: -1 70 45

printFormat$213:	; if £temporary2281 >= width goto 219
x2155:	cmp ax, [bp + 12]	; 3: 59 70 12
x2158:	jge printFormat$219	; 2: 125 20

printFormat$214:	; call header integral zero 0 stack zero 0

printFormat$215:	; parameter 32, offset 6
x2160:	mov byte [bp + 53], 32	; 4: -58 70 53 32

printFormat$216:	; call function noellipse-noellipse printChar
x2164:	mov word [bp + 47], printFormat$217	; 5: -57 70 47 -126 8
x2169:	mov [bp + 49], bp	; 3: -119 110 49
x2172:	add bp, 47	; 3: -125 -59 47
x2175:	jmp printChar	; 3: -23 123 8

printFormat$217:	; post call

printFormat$218:	; goto 211
x2178:	jmp printFormat$211	; 2: -21 -31

printFormat$219:	; call header integral zero 0 stack zero 0

printFormat$220:	; £temporary2285 = format + index
x2180:	mov si, [bp + 6]	; 3: -117 118 6
x2183:	add si, [bp + 10]	; 3: 3 118 10

printFormat$221:	; £temporary2284 -> £temporary2285 = *£temporary2285

printFormat$222:	; £temporary2286 = &£temporary2284 -> £temporary2285

printFormat$223:	; parameter £temporary2286, offset 6
x2186:	mov [bp + 53], si	; 3: -119 118 53

printFormat$224:	; parameter arg_list, offset 8
x2189:	mov ax, [bp + 8]	; 3: -117 70 8
x2192:	mov [bp + 55], ax	; 3: -119 70 55

printFormat$225:	; parameter plus, offset 10
x2195:	mov ax, [bp + 18]	; 3: -117 70 18
x2198:	mov [bp + 57], ax	; 3: -119 70 57

printFormat$226:	; parameter space, offset 12
x2201:	mov ax, [bp + 22]	; 3: -117 70 22
x2204:	mov [bp + 59], ax	; 3: -119 70 59

printFormat$227:	; parameter grid, offset 14
x2207:	mov ax, [bp + 26]	; 3: -117 70 26
x2210:	mov [bp + 61], ax	; 3: -119 70 61

printFormat$228:	; parameter 0, offset 16
x2213:	mov word [bp + 63], 0	; 5: -57 70 63 0 0

printFormat$229:	; parameter precision, offset 18
x2218:	mov ax, [bp + 14]	; 3: -117 70 14
x2221:	mov [bp + 65], ax	; 3: -119 70 65

printFormat$230:	; parameter shortInt, offset 20
x2224:	mov ax, [bp + 34]	; 3: -117 70 34
x2227:	mov [bp + 67], ax	; 3: -119 70 67

printFormat$231:	; parameter longInt, offset 22
x2230:	mov ax, [bp + 36]	; 3: -117 70 36
x2233:	mov [bp + 69], ax	; 3: -119 70 69

printFormat$232:	; parameter longDouble, offset 24
x2236:	mov ax, [bp + 38]	; 3: -117 70 38
x2239:	mov [bp + 71], ax	; 3: -119 70 71

printFormat$233:	; parameter 1, offset 26
x2242:	mov word [bp + 73], 1	; 5: -57 70 73 1 0

printFormat$234:	; parameter 0, offset 28
x2247:	mov word [bp + 75], 0	; 5: -57 70 75 0 0

printFormat$235:	; call function noellipse-noellipse printArgument
x2252:	mov word [bp + 47], printFormat$236	; 5: -57 70 47 -38 8
x2257:	mov [bp + 49], bp	; 3: -119 110 49
x2260:	add bp, 47	; 3: -125 -59 47
x2263:	jmp printArgument	; 3: -23 16 1

printFormat$236:	; post call

printFormat$237:	; £temporary2287 = return_value

printFormat$238:	; arg_list = £temporary2287
x2266:	mov [bp + 8], bx	; 3: -119 94 8

printFormat$239:	; percent = 0
x2269:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printFormat$240:	; goto 284
x2274:	jmp printFormat$284	; 3: -23 -43 0

printFormat$241:	; value = 0
x2277:	mov word [bp + 41], 0	; 5: -57 70 41 0 0

printFormat$242:	; call header integral zero 0 stack zero 0

printFormat$243:	; £temporary2290 = int_to_int c (Signed_Char -> Signed_Int)
x2282:	mov al, [bp + 40]	; 3: -118 70 40
x2285:	and ax, 255	; 3: 37 -1 0
x2288:	cmp al, 0	; 2: 60 0
x2290:	jge printFormat$244	; 2: 125 4
x2292:	neg al	; 2: -10 -40
x2294:	neg ax	; 2: -9 -40

printFormat$244:	; parameter £temporary2290, offset 6
x2296:	mov [bp + 49], ax	; 3: -119 70 49

printFormat$245:	; call function noellipse-noellipse isdigit
x2299:	mov word [bp + 43], printFormat$246	; 5: -57 70 43 9 9
x2304:	mov [bp + 45], bp	; 3: -119 110 45
x2307:	add bp, 43	; 3: -125 -59 43
x2310:	jmp isdigit	; 3: -23 -22 22

printFormat$246:	; post call

printFormat$247:	; £temporary2291 = return_value

printFormat$248:	; if £temporary2291 == 0 goto 258
x2313:	cmp bx, 0	; 3: -125 -5 0
x2316:	je printFormat$258	; 2: 116 49

printFormat$249:	; £temporary2292 = value * 10
x2318:	mov ax, [bp + 41]	; 3: -117 70 41
x2321:	xor dx, dx	; 2: 49 -46
x2323:	imul word [int2$10#]	; 4: -9 46 -24 9

printFormat$250:	; £temporary2293 = c - 48
x2327:	mov bl, [bp + 40]	; 3: -118 94 40
x2330:	sub bl, 48	; 3: -128 -21 48

printFormat$251:	; £temporary2294 = int_to_int £temporary2293 (Signed_Char -> Signed_Int)
x2333:	and bx, 255	; 4: -127 -29 -1 0
x2337:	cmp bl, 0	; 3: -128 -5 0
x2340:	jge printFormat$252	; 2: 125 4
x2342:	neg bl	; 2: -10 -37
x2344:	neg bx	; 2: -9 -37

printFormat$252:	; value = £temporary2292 + £temporary2294
x2346:	add ax, bx	; 2: 1 -40
x2348:	mov [bp + 41], ax	; 3: -119 70 41

printFormat$253:	; £temporary2296 = index + 1
x2351:	mov ax, [bp + 10]	; 3: -117 70 10
x2354:	inc ax	; 1: 64

printFormat$254:	; £temporary2298 = format + £temporary2296
x2355:	mov si, [bp + 6]	; 3: -117 118 6
x2358:	add si, ax	; 2: 1 -58

printFormat$255:	; £temporary2297 -> £temporary2298 = *£temporary2298

printFormat$256:	; c = £temporary2297 -> £temporary2298
x2360:	mov al, [si]	; 2: -118 4
x2362:	mov [bp + 40], al	; 3: -120 70 40

printFormat$257:	; goto 242
x2365:	jmp printFormat$242	; 2: -21 -85

printFormat$258:	; --index
x2367:	dec word [bp + 10]	; 3: -1 78 10

printFormat$259:	; if period != 0 goto 262
x2370:	cmp word [bp + 30], 0	; 4: -125 126 30 0
x2374:	jne printFormat$262	; 2: 117 8

printFormat$260:	; width = value
x2376:	mov ax, [bp + 41]	; 3: -117 70 41
x2379:	mov [bp + 12], ax	; 3: -119 70 12

printFormat$261:	; goto 284
x2382:	jmp printFormat$284	; 2: -21 106

printFormat$262:	; precision = value
x2384:	mov ax, [bp + 41]	; 3: -117 70 41
x2387:	mov [bp + 14], ax	; 3: -119 70 14

printFormat$263:	; goto 284
x2390:	jmp printFormat$284	; 2: -21 98

printFormat$264:	; if c != 37 goto 280
x2392:	cmp byte [bp + 40], 37	; 4: -128 126 40 37
x2396:	jne printFormat$280	; 2: 117 72

printFormat$265:	; percent = 1
x2398:	mov word [bp + 16], 1	; 5: -57 70 16 1 0

printFormat$266:	; plus = 0
x2403:	mov word [bp + 18], 0	; 5: -57 70 18 0 0

printFormat$267:	; minus = 0
x2408:	mov word [bp + 20], 0	; 5: -57 70 20 0 0

printFormat$268:	; space = 0
x2413:	mov word [bp + 22], 0	; 5: -57 70 22 0 0

printFormat$269:	; zero = 0
x2418:	mov word [bp + 24], 0	; 5: -57 70 24 0 0

printFormat$270:	; grid = 0
x2423:	mov word [bp + 26], 0	; 5: -57 70 26 0 0

printFormat$271:	; widthStar = 0
x2428:	mov word [bp + 28], 0	; 5: -57 70 28 0 0

printFormat$272:	; period = 0
x2433:	mov word [bp + 30], 0	; 5: -57 70 30 0 0

printFormat$273:	; precisionStar = 0
x2438:	mov word [bp + 32], 0	; 5: -57 70 32 0 0

printFormat$274:	; shortInt = 0
x2443:	mov word [bp + 34], 0	; 5: -57 70 34 0 0

printFormat$275:	; longInt = 0
x2448:	mov word [bp + 36], 0	; 5: -57 70 36 0 0

printFormat$276:	; longDouble = 0
x2453:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printFormat$277:	; width = 0
x2458:	mov word [bp + 12], 0	; 5: -57 70 12 0 0

printFormat$278:	; precision = 0
x2463:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printFormat$279:	; goto 284
x2468:	jmp printFormat$284	; 2: -21 20

printFormat$280:	; call header integral zero 0 stack zero 0

printFormat$281:	; parameter c, offset 6
x2470:	mov al, [bp + 40]	; 3: -118 70 40
x2473:	mov [bp + 47], al	; 3: -120 70 47

printFormat$282:	; call function noellipse-noellipse printChar
x2476:	mov word [bp + 41], printFormat$283	; 5: -57 70 41 -70 9
x2481:	mov [bp + 43], bp	; 3: -119 110 43
x2484:	add bp, 41	; 3: -125 -59 41
x2487:	jmp printChar	; 3: -23 67 7

printFormat$283:	; post call

printFormat$284:	; ++index
x2490:	inc word [bp + 10]	; 3: -1 70 10

printFormat$285:	; goto 16
x2493:	jmp printFormat$16	; 3: -23 21 -5

printFormat$286:	; if g_outStatus != 1 goto 292
x2496:	cmp word [g_outStatus], 1	; 5: -125 62 -128 4 1
x2501:	jne printFormat$292	; 2: 117 16

printFormat$287:	; £temporary2307 = int_to_int g_outDevice (Pointer -> Pointer)
x2503:	mov ax, [g_outDevice]	; 3: -95 -126 4

printFormat$288:	; outString = £temporary2307
x2506:	mov [bp + 40], ax	; 3: -119 70 40

printFormat$289:	; £temporary2309 = outString + g_outChars
x2509:	mov si, [bp + 40]	; 3: -117 118 40
x2512:	add si, [g_outChars]	; 4: 3 54 -26 9

printFormat$290:	; £temporary2308 -> £temporary2309 = *£temporary2309

printFormat$291:	; £temporary2308 -> £temporary2309 = 0
x2516:	mov byte [si], 0	; 3: -58 4 0

printFormat$292:	; return_value = g_outChars
x2519:	mov bx, [g_outChars]	; 4: -117 30 -26 9

printFormat$293:	; return
x2523:	mov ax, [bp]	; 3: -117 70 0
x2526:	mov di, [bp + 4]	; 3: -117 126 4
x2529:	mov bp, [bp + 2]	; 3: -117 110 2
x2532:	jmp ax	; 2: -1 -32

printFormat$294:	; function end printFormat

g_outChars:
x2534:	db 0, 0	; 2: 0 0

int2$10#:
x2536:	dw 10	; 2: 10 0

printArgument:	; £temporary2008 -> format = *format
x2538:	mov si, [bp + 6]	; 3: -117 118 6

printArgument$1:	; c = £temporary2008 -> format
x2541:	mov al, [si]	; 2: -118 4
x2543:	mov [bp + 30], al	; 3: -120 70 30

printArgument$2:	; case c == 100 goto 21
x2546:	mov al, [bp + 30]	; 3: -118 70 30
x2549:	cmp al, 100	; 2: 60 100
x2551:	je printArgument$21	; 2: 116 97

printArgument$3:	; case c == 105 goto 21
x2553:	cmp al, 105	; 2: 60 105
x2555:	je printArgument$21	; 2: 116 93

printArgument$4:	; case c == 99 goto 73
x2557:	cmp al, 99	; 2: 60 99
x2559:	je printArgument$73	; 4: 15 -124 68 1

printArgument$5:	; case c == 115 goto 93
x2563:	cmp al, 115	; 2: 60 115
x2565:	je printArgument$93	; 4: 15 -124 -110 1

printArgument$6:	; case c == 88 goto 113
x2569:	cmp al, 88	; 2: 60 88
x2571:	je printArgument$113	; 4: 15 -124 -35 1

printArgument$7:	; case c == 120 goto 113
x2575:	cmp al, 120	; 2: 60 120
x2577:	je printArgument$113	; 4: 15 -124 -41 1

printArgument$8:	; case c == 98 goto 113
x2581:	cmp al, 98	; 2: 60 98
x2583:	je printArgument$113	; 4: 15 -124 -47 1

printArgument$9:	; case c == 111 goto 113
x2587:	cmp al, 111	; 2: 60 111
x2589:	je printArgument$113	; 4: 15 -124 -53 1

printArgument$10:	; case c == 117 goto 113
x2593:	cmp al, 117	; 2: 60 117
x2595:	je printArgument$113	; 4: 15 -124 -59 1

printArgument$11:	; case c == 71 goto 173
x2599:	cmp al, 71	; 2: 60 71
x2601:	je printArgument$173	; 4: 15 -124 -70 2

printArgument$12:	; case c == 103 goto 173
x2605:	cmp al, 103	; 2: 60 103
x2607:	je printArgument$173	; 4: 15 -124 -76 2

printArgument$13:	; case c == 69 goto 173
x2611:	cmp al, 69	; 2: 60 69
x2613:	je printArgument$173	; 4: 15 -124 -82 2

printArgument$14:	; case c == 101 goto 173
x2617:	cmp al, 101	; 2: 60 101
x2619:	je printArgument$173	; 4: 15 -124 -88 2

printArgument$15:	; case c == 102 goto 173
x2623:	cmp al, 102	; 2: 60 102
x2625:	je printArgument$173	; 4: 15 -124 -94 2

printArgument$16:	; case c == 112 goto 299
x2629:	cmp al, 112	; 2: 60 112
x2631:	je printArgument$299	; 4: 15 -124 -79 4

printArgument$17:	; case c == 110 goto 324
x2635:	cmp al, 110	; 2: 60 110
x2637:	je printArgument$324	; 4: 15 -124 25 5

printArgument$18:	; case c == 37 goto 346
x2641:	cmp al, 37	; 2: 60 37
x2643:	je printArgument$346	; 4: 15 -124 96 5

printArgument$19:	; case end c

printArgument$20:	; goto 359
x2647:	jmp printArgument$359	; 3: -23 -108 5

printArgument$21:	; if shortInt == 0 goto 30
x2650:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x2654:	je printArgument$30	; 2: 116 42

printArgument$22:	; arg_list = arg_list + 2
x2656:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$23:	; £temporary2010 = arg_list - 2
x2660:	mov si, [bp + 8]	; 3: -117 118 8
x2663:	sub si, 2	; 3: -125 -18 2

printArgument$24:	; £temporary2011 = int_to_int £temporary2010 (Signed_Int -> Pointer)

printArgument$25:	; £temporary2012 -> £temporary2011 = *£temporary2011

printArgument$26:	; £temporary2013 = int_to_int £temporary2012 -> £temporary2011 (Signed_Int -> Signed_Short_Int)
x2666:	mov ax, [si]	; 2: -117 4
x2668:	cmp ax, 0	; 3: -125 -8 0
x2671:	jge printArgument$27	; 2: 125 4
x2673:	neg ax	; 2: -9 -40
x2675:	neg al	; 2: -10 -40

printArgument$27:	; £temporary2014 = int_to_int £temporary2013 (Signed_Short_Int -> Signed_Long_Int)
x2677:	and eax, 255	; 6: 102 37 -1 0 0 0
x2683:	cmp al, 0	; 2: 60 0
x2685:	jge printArgument$28	; 2: 125 5
x2687:	neg al	; 2: -10 -40
x2689:	neg eax	; 3: 102 -9 -40

printArgument$28:	; longValue = £temporary2014
x2692:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$29:	; goto 43
x2696:	jmp printArgument$43	; 2: -21 57

printArgument$30:	; if longInt == 0 goto 37
x2698:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x2702:	je printArgument$37	; 2: 116 19

printArgument$31:	; arg_list = arg_list + 4
x2704:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$32:	; £temporary2016 = arg_list - 4
x2708:	mov si, [bp + 8]	; 3: -117 118 8
x2711:	sub si, 4	; 3: -125 -18 4

printArgument$33:	; £temporary2017 = int_to_int £temporary2016 (Signed_Int -> Pointer)

printArgument$34:	; £temporary2018 -> £temporary2017 = *£temporary2017

printArgument$35:	; longValue = £temporary2018 -> £temporary2017
x2714:	mov eax, [si]	; 3: 102 -117 4
x2717:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$36:	; goto 43
x2721:	jmp printArgument$43	; 2: -21 32

printArgument$37:	; arg_list = arg_list + 2
x2723:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$38:	; £temporary2020 = arg_list - 2
x2727:	mov si, [bp + 8]	; 3: -117 118 8
x2730:	sub si, 2	; 3: -125 -18 2

printArgument$39:	; £temporary2021 = int_to_int £temporary2020 (Signed_Int -> Pointer)

printArgument$40:	; £temporary2022 -> £temporary2021 = *£temporary2021

printArgument$41:	; £temporary2023 = int_to_int £temporary2022 -> £temporary2021 (Signed_Int -> Signed_Long_Int)
x2733:	mov ax, [si]	; 2: -117 4
x2735:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x2741:	cmp ax, 0	; 3: -125 -8 0
x2744:	jge printArgument$42	; 2: 125 5
x2746:	neg ax	; 2: -9 -40
x2748:	neg eax	; 3: 102 -9 -40

printArgument$42:	; longValue = £temporary2023
x2751:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$43:	; if negativePtr == 0 goto 50
x2755:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x2759:	je printArgument$50	; 2: 116 20

printArgument$44:	; £temporary2027 -> negativePtr = *negativePtr
x2761:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$45:	; if longValue >= 0 goto 48
x2764:	cmp dword [bp + 44], 0	; 5: 102 -125 126 44 0
x2769:	jge printArgument$48	; 2: 125 5

printArgument$46:	; £temporary2029 = 1
x2771:	mov ax, 1	; 3: -72 1 0

printArgument$47:	; goto 49
x2774:	jmp printArgument$49	; 2: -21 3

printArgument$48:	; £temporary2029 = 0
x2776:	mov ax, 0	; 3: -72 0 0

printArgument$49:	; £temporary2027 -> negativePtr = £temporary2029
x2779:	mov [si], ax	; 2: -119 4

printArgument$50:	; if sign != 0 goto 57
x2781:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x2785:	jne printArgument$57	; 2: 117 26

printArgument$51:	; call header integral zero 0 stack zero 0

printArgument$52:	; parameter longValue, offset 6
x2787:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x2791:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$53:	; call function noellipse-noellipse labs
x2795:	mov word [bp + 48], printArgument$54	; 5: -57 70 48 -7 10
x2800:	mov [bp + 50], bp	; 3: -119 110 50
x2803:	add bp, 48	; 3: -125 -59 48
x2806:	jmp labs	; 3: -23 5 5

printArgument$54:	; post call

printArgument$55:	; £temporary2032 = return_value

printArgument$56:	; longValue = £temporary2032
x2809:	mov [bp + 44], ebx	; 4: 102 -119 94 44

printArgument$57:	; call header integral zero 0 stack zero 0

printArgument$58:	; parameter arg_list, offset 6
x2813:	mov ax, [bp + 8]	; 3: -117 70 8
x2816:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$59:	; parameter widthPtr, offset 8
x2819:	mov ax, [bp + 16]	; 3: -117 70 16
x2822:	mov [bp + 56], ax	; 3: -119 70 56

printArgument$60:	; £temporary2033 = &precision
x2825:	mov si, bp	; 2: -119 -18
x2827:	add si, 18	; 3: -125 -58 18

printArgument$61:	; parameter £temporary2033, offset 10
x2830:	mov [bp + 58], si	; 3: -119 118 58

printArgument$62:	; call function noellipse-noellipse checkWidthAndPrecision
x2833:	mov word [bp + 48], printArgument$63	; 5: -57 70 48 31 11
x2838:	mov [bp + 50], bp	; 3: -119 110 50
x2841:	add bp, 48	; 3: -125 -59 48
x2844:	jmp checkWidthAndPrecision	; 3: -23 -2 4

printArgument$63:	; post call

printArgument$64:	; £temporary2034 = return_value

printArgument$65:	; arg_list = £temporary2034
x2847:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$66:	; call header integral zero 0 stack zero 0

printArgument$67:	; parameter longValue, offset 6
x2850:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x2854:	mov [bp + 54], eax	; 4: 102 -119 70 54

printArgument$68:	; parameter plus, offset 10
x2858:	mov ax, [bp + 10]	; 3: -117 70 10
x2861:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$69:	; parameter space, offset 12
x2864:	mov ax, [bp + 12]	; 3: -117 70 12
x2867:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$70:	; call function noellipse-noellipse printLongInt
x2870:	mov word [bp + 48], printArgument$71	; 5: -57 70 48 68 11
x2875:	mov [bp + 50], bp	; 3: -119 110 50
x2878:	add bp, 48	; 3: -125 -59 48
x2881:	jmp printLongInt	; 3: -23 37 5

printArgument$71:	; post call

printArgument$72:	; goto 359
x2884:	jmp printArgument$359	; 3: -23 -89 4

printArgument$73:	; arg_list = arg_list + 2
x2887:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$74:	; £temporary2037 = arg_list - 2
x2891:	mov si, [bp + 8]	; 3: -117 118 8
x2894:	sub si, 2	; 3: -125 -18 2

printArgument$75:	; £temporary2038 = int_to_int £temporary2037 (Signed_Int -> Pointer)

printArgument$76:	; £temporary2039 -> £temporary2038 = *£temporary2038

printArgument$77:	; £temporary2040 = int_to_int £temporary2039 -> £temporary2038 (Signed_Int -> Signed_Char)
x2897:	mov ax, [si]	; 2: -117 4
x2899:	cmp ax, 0	; 3: -125 -8 0
x2902:	jge printArgument$78	; 2: 125 4
x2904:	neg ax	; 2: -9 -40
x2906:	neg al	; 2: -10 -40

printArgument$78:	; charValue = £temporary2040
x2908:	mov [bp + 31], al	; 3: -120 70 31

printArgument$79:	; call header integral zero 0 stack zero 0

printArgument$80:	; parameter arg_list, offset 6
x2911:	mov ax, [bp + 8]	; 3: -117 70 8
x2914:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$81:	; parameter widthPtr, offset 8
x2917:	mov ax, [bp + 16]	; 3: -117 70 16
x2920:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$82:	; £temporary2041 = &precision
x2923:	mov si, bp	; 2: -119 -18
x2925:	add si, 18	; 3: -125 -58 18

printArgument$83:	; parameter £temporary2041, offset 10
x2928:	mov [bp + 54], si	; 3: -119 118 54

printArgument$84:	; call function noellipse-noellipse checkWidthAndPrecision
x2931:	mov word [bp + 44], printArgument$85	; 5: -57 70 44 -127 11
x2936:	mov [bp + 46], bp	; 3: -119 110 46
x2939:	add bp, 44	; 3: -125 -59 44
x2942:	jmp checkWidthAndPrecision	; 3: -23 -100 4

printArgument$85:	; post call

printArgument$86:	; £temporary2042 = return_value

printArgument$87:	; arg_list = £temporary2042
x2945:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$88:	; call header integral zero 0 stack zero 0

printArgument$89:	; parameter charValue, offset 6
x2948:	mov al, [bp + 31]	; 3: -118 70 31
x2951:	mov [bp + 50], al	; 3: -120 70 50

printArgument$90:	; call function noellipse-noellipse printChar
x2954:	mov word [bp + 44], printArgument$91	; 5: -57 70 44 -104 11
x2959:	mov [bp + 46], bp	; 3: -119 110 46
x2962:	add bp, 44	; 3: -125 -59 44
x2965:	jmp printChar	; 3: -23 101 5

printArgument$91:	; post call

printArgument$92:	; goto 359
x2968:	jmp printArgument$359	; 3: -23 83 4

printArgument$93:	; arg_list = arg_list + 2
x2971:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$94:	; £temporary2045 = arg_list - 2
x2975:	mov si, [bp + 8]	; 3: -117 118 8
x2978:	sub si, 2	; 3: -125 -18 2

printArgument$95:	; £temporary2046 = int_to_int £temporary2045 (Signed_Int -> Pointer)

printArgument$96:	; £temporary2047 -> £temporary2046 = *£temporary2046

printArgument$97:	; stringValue = £temporary2047 -> £temporary2046
x2981:	mov ax, [si]	; 2: -117 4
x2983:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$98:	; call header integral zero 0 stack zero 0

printArgument$99:	; parameter arg_list, offset 6
x2986:	mov ax, [bp + 8]	; 3: -117 70 8
x2989:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$100:	; parameter widthPtr, offset 8
x2992:	mov ax, [bp + 16]	; 3: -117 70 16
x2995:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$101:	; £temporary2048 = &precision
x2998:	mov si, bp	; 2: -119 -18
x3000:	add si, 18	; 3: -125 -58 18

printArgument$102:	; parameter £temporary2048, offset 10
x3003:	mov [bp + 56], si	; 3: -119 118 56

printArgument$103:	; call function noellipse-noellipse checkWidthAndPrecision
x3006:	mov word [bp + 46], printArgument$104	; 5: -57 70 46 -52 11
x3011:	mov [bp + 48], bp	; 3: -119 110 48
x3014:	add bp, 46	; 3: -125 -59 46
x3017:	jmp checkWidthAndPrecision	; 3: -23 81 4

printArgument$104:	; post call

printArgument$105:	; £temporary2049 = return_value

printArgument$106:	; arg_list = £temporary2049
x3020:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$107:	; call header integral zero 0 stack zero 0

printArgument$108:	; parameter stringValue, offset 6
x3023:	mov ax, [bp + 44]	; 3: -117 70 44
x3026:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$109:	; parameter precision, offset 8
x3029:	mov ax, [bp + 18]	; 3: -117 70 18
x3032:	mov [bp + 54], ax	; 3: -119 70 54

printArgument$110:	; call function noellipse-noellipse printString
x3035:	mov word [bp + 46], printArgument$111	; 5: -57 70 46 -23 11
x3040:	mov [bp + 48], bp	; 3: -119 110 48
x3043:	add bp, 46	; 3: -125 -59 46
x3046:	jmp printString	; 3: -23 -36 5

printArgument$111:	; post call

printArgument$112:	; goto 359
x3049:	jmp printArgument$359	; 3: -23 2 4

printArgument$113:	; if c != 117 goto 116
x3052:	cmp byte [bp + 30], 117	; 4: -128 126 30 117
x3056:	jne printArgument$116	; 2: 117 8

printArgument$114:	; £temporary2065 = 10
x3058:	mov eax, 10	; 6: 102 -72 10 0 0 0

printArgument$115:	; goto 125
x3064:	jmp printArgument$125	; 2: -21 34

printArgument$116:	; if c != 111 goto 119
x3066:	cmp byte [bp + 30], 111	; 4: -128 126 30 111
x3070:	jne printArgument$119	; 2: 117 8

printArgument$117:	; £temporary2061 = 8
x3072:	mov eax, 8	; 6: 102 -72 8 0 0 0

printArgument$118:	; goto 124
x3078:	jmp printArgument$124	; 2: -21 20

printArgument$119:	; if c != 98 goto 122
x3080:	cmp byte [bp + 30], 98	; 4: -128 126 30 98
x3084:	jne printArgument$122	; 2: 117 8

printArgument$120:	; £temporary2057 = 2
x3086:	mov eax, 2	; 6: 102 -72 2 0 0 0

printArgument$121:	; goto 123
x3092:	jmp printArgument$123	; 2: -21 6

printArgument$122:	; £temporary2057 = 16
x3094:	mov eax, 16	; 6: 102 -72 16 0 0 0

printArgument$123:	; £temporary2061 = £temporary2057

printArgument$124:	; £temporary2065 = £temporary2061

printArgument$125:	; base = £temporary2065
x3100:	mov [bp + 44], eax	; 4: 102 -119 70 44

printArgument$126:	; if shortInt == 0 goto 135
x3104:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x3108:	je printArgument$135	; 2: 116 24

printArgument$127:	; arg_list = arg_list + 2
x3110:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$128:	; £temporary2067 = arg_list - 2
x3114:	mov si, [bp + 8]	; 3: -117 118 8
x3117:	sub si, 2	; 3: -125 -18 2

printArgument$129:	; £temporary2068 = int_to_int £temporary2067 (Signed_Int -> Pointer)

printArgument$130:	; £temporary2069 -> £temporary2068 = *£temporary2068

printArgument$131:	; £temporary2070 = int_to_int £temporary2069 -> £temporary2068 (Unsigned_Int -> Unsigned_Short_Int)
x3120:	mov ax, [si]	; 2: -117 4

printArgument$132:	; £temporary2071 = int_to_int £temporary2070 (Unsigned_Short_Int -> Unsigned_Long_Int)
x3122:	and eax, 255	; 6: 102 37 -1 0 0 0

printArgument$133:	; value = £temporary2071
x3128:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$134:	; goto 148
x3132:	jmp printArgument$148	; 2: -21 47

printArgument$135:	; if longInt == 0 goto 142
x3134:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x3138:	je printArgument$142	; 2: 116 19

printArgument$136:	; arg_list = arg_list + 4
x3140:	add word [bp + 8], 4	; 4: -125 70 8 4

printArgument$137:	; £temporary2073 = arg_list - 4
x3144:	mov si, [bp + 8]	; 3: -117 118 8
x3147:	sub si, 4	; 3: -125 -18 4

printArgument$138:	; £temporary2074 = int_to_int £temporary2073 (Signed_Int -> Pointer)

printArgument$139:	; £temporary2075 -> £temporary2074 = *£temporary2074

printArgument$140:	; value = £temporary2075 -> £temporary2074
x3150:	mov eax, [si]	; 3: 102 -117 4
x3153:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$141:	; goto 148
x3157:	jmp printArgument$148	; 2: -21 22

printArgument$142:	; arg_list = arg_list + 2
x3159:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$143:	; £temporary2077 = arg_list - 2
x3163:	mov si, [bp + 8]	; 3: -117 118 8
x3166:	sub si, 2	; 3: -125 -18 2

printArgument$144:	; £temporary2078 = int_to_int £temporary2077 (Signed_Int -> Pointer)

printArgument$145:	; £temporary2079 -> £temporary2078 = *£temporary2078

printArgument$146:	; £temporary2080 = int_to_int £temporary2079 -> £temporary2078 (Unsigned_Int -> Unsigned_Long_Int)
x3169:	mov ax, [si]	; 2: -117 4
x3171:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$147:	; value = £temporary2080
x3177:	mov [bp + 48], eax	; 4: 102 -119 70 48

printArgument$148:	; call header integral zero 0 stack zero 0

printArgument$149:	; parameter arg_list, offset 6
x3181:	mov ax, [bp + 8]	; 3: -117 70 8
x3184:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$150:	; parameter widthPtr, offset 8
x3187:	mov ax, [bp + 16]	; 3: -117 70 16
x3190:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$151:	; £temporary2083 = &precision
x3193:	mov si, bp	; 2: -119 -18
x3195:	add si, 18	; 3: -125 -58 18

printArgument$152:	; parameter £temporary2083, offset 10
x3198:	mov [bp + 62], si	; 3: -119 118 62

printArgument$153:	; call function noellipse-noellipse checkWidthAndPrecision
x3201:	mov word [bp + 52], printArgument$154	; 5: -57 70 52 -113 12
x3206:	mov [bp + 54], bp	; 3: -119 110 54
x3209:	add bp, 52	; 3: -125 -59 52
x3212:	jmp checkWidthAndPrecision	; 3: -23 -114 3

printArgument$154:	; post call

printArgument$155:	; £temporary2084 = return_value

printArgument$156:	; arg_list = £temporary2084
x3215:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$157:	; call header integral zero 0 stack zero 0

printArgument$158:	; parameter value, offset 6
x3218:	mov eax, [bp + 48]	; 4: 102 -117 70 48
x3222:	mov [bp + 58], eax	; 4: 102 -119 70 58

printArgument$159:	; parameter plus, offset 10
x3226:	mov ax, [bp + 10]	; 3: -117 70 10
x3229:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$160:	; parameter space, offset 12
x3232:	mov ax, [bp + 12]	; 3: -117 70 12
x3235:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$161:	; parameter grid, offset 14
x3238:	mov ax, [bp + 14]	; 3: -117 70 14
x3241:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$162:	; parameter base, offset 16
x3244:	mov eax, [bp + 44]	; 4: 102 -117 70 44
x3248:	mov [bp + 68], eax	; 4: 102 -119 70 68

printArgument$163:	; call header integral zero 0 stack zero 0

printArgument$164:	; £temporary2085 = int_to_int c (Signed_Char -> Signed_Int)
x3252:	mov al, [bp + 30]	; 3: -118 70 30
x3255:	and ax, 255	; 3: 37 -1 0
x3258:	cmp al, 0	; 2: 60 0
x3260:	jge printArgument$165	; 2: 125 4
x3262:	neg al	; 2: -10 -40
x3264:	neg ax	; 2: -9 -40

printArgument$165:	; parameter £temporary2085, offset 26
x3266:	mov [bp + 78], ax	; 3: -119 70 78

printArgument$166:	; call function noellipse-noellipse isupper
x3269:	mov word [bp + 72], printArgument$167	; 5: -57 70 72 -45 12
x3274:	mov [bp + 74], bp	; 3: -119 110 74
x3277:	add bp, 72	; 3: -125 -59 72
x3280:	jmp isupper	; 3: -23 -30 5

printArgument$167:	; post call

printArgument$168:	; £temporary2086 = return_value

printArgument$169:	; parameter £temporary2086, offset 20
x3283:	mov [bp + 72], bx	; 3: -119 94 72

printArgument$170:	; call function noellipse-noellipse printUnsignedLong
x3286:	mov word [bp + 52], printArgument$171	; 5: -57 70 52 -28 12
x3291:	mov [bp + 54], bp	; 3: -119 110 54
x3294:	add bp, 52	; 3: -125 -59 52
x3297:	jmp printUnsignedLong	; 3: -23 -50 9

printArgument$171:	; post call

printArgument$172:	; goto 359
x3300:	jmp printArgument$359	; 3: -23 7 3

printArgument$173:	; if longDouble == 0 goto 190
x3303:	cmp word [bp + 24], 0	; 4: -125 126 24 0
x3307:	je printArgument$190	; 2: 116 57

printArgument$174:	; arg_list = arg_list + 8
x3309:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$175:	; £temporary2089 = arg_list - 8
x3313:	mov si, [bp + 8]	; 3: -117 118 8
x3316:	sub si, 8	; 3: -125 -18 8

printArgument$176:	; £temporary2090 = int_to_int £temporary2089 (Signed_Int -> Pointer)

printArgument$177:	; £temporary2091 -> £temporary2090 = *£temporary2090

printArgument$178:	; push float £temporary2091 -> £temporary2090
x3319:	fld qword [si]	; 2: -35 4

printArgument$179:	; pop float longDoubleValue
x3321:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$180:	; call header integral zero 0 stack zero 0

printArgument$181:	; push float longDoubleValue
x3324:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$182:	; parameter longDoubleValue, offset 6
x3327:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$183:	; parameter 0, offset 14
x3330:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$184:	; parameter 0, offset 16
x3335:	mov word [bp + 60], 0	; 5: -57 70 60 0 0

printArgument$185:	; parameter 0, offset 18
x3340:	mov word [bp + 62], 0	; 5: -57 70 62 0 0

printArgument$186:	; parameter 3, offset 20
x3345:	mov word [bp + 64], 3	; 5: -57 70 64 3 0

printArgument$187:	; call function noellipse-noellipse printLongDoublePlain
x3350:	mov word [bp + 44], printArgument$188	; 5: -57 70 44 36 13
x3355:	mov [bp + 46], bp	; 3: -119 110 46
x3358:	add bp, 44	; 3: -125 -59 44
x3361:	jmp printLongDoublePlain	; 3: -23 57 11

printArgument$188:	; post call

printArgument$189:	; goto 196
x3364:	jmp printArgument$196	; 2: -21 15

printArgument$190:	; arg_list = arg_list + 8
x3366:	add word [bp + 8], 8	; 4: -125 70 8 8

printArgument$191:	; £temporary2094 = arg_list - 8
x3370:	mov si, [bp + 8]	; 3: -117 118 8
x3373:	sub si, 8	; 3: -125 -18 8

printArgument$192:	; £temporary2095 = int_to_int £temporary2094 (Signed_Int -> Pointer)

printArgument$193:	; £temporary2096 -> £temporary2095 = *£temporary2095

printArgument$194:	; push float £temporary2096 -> £temporary2095
x3376:	fld qword [si]	; 2: -35 4

printArgument$195:	; pop float longDoubleValue
x3378:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$196:	; if negativePtr == 0 goto 205
x3381:	cmp word [bp + 28], 0	; 4: -125 126 28 0
x3385:	je printArgument$205	; 2: 116 26

printArgument$197:	; £temporary2100 -> negativePtr = *negativePtr
x3387:	mov si, [bp + 28]	; 3: -117 118 28

printArgument$198:	; push float longDoubleValue
x3390:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$199:	; push 0
x3393:	fldz	; 2: -39 -18

printArgument$200:	; if longDoubleValue >= 0 goto 203
x3395:	fcompp	; 2: -34 -39
x3397:	fstsw ax	; 3: -101 -33 -32
x3400:	sahf	; 1: -98
x3401:	jbe printArgument$203	; 2: 118 5

printArgument$201:	; £temporary2102 = 1
x3403:	mov ax, 1	; 3: -72 1 0

printArgument$202:	; goto 204
x3406:	jmp printArgument$204	; 2: -21 3

printArgument$203:	; £temporary2102 = 0
x3408:	mov ax, 0	; 3: -72 0 0

printArgument$204:	; £temporary2100 -> negativePtr = £temporary2102
x3411:	mov [si], ax	; 2: -119 4

printArgument$205:	; if sign != 0 goto 213
x3413:	cmp word [bp + 26], 0	; 4: -125 126 26 0
x3417:	jne printArgument$213	; 2: 117 23

printArgument$206:	; call header integral zero 0 stack zero 0

printArgument$207:	; push float longDoubleValue
x3419:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$208:	; parameter longDoubleValue, offset 6
x3422:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$209:	; call function noellipse-noellipse fabs
x3425:	mov word [bp + 44], printArgument$210	; 5: -57 70 44 111 13
x3430:	mov [bp + 46], bp	; 3: -119 110 46
x3433:	add bp, 44	; 3: -125 -59 44
x3436:	jmp fabs	; 3: -23 50 12

printArgument$210:	; post call

printArgument$211:	; £temporary2105 = return_value

printArgument$212:	; pop float longDoubleValue
x3439:	fstp qword [bp + 34]	; 3: -35 94 34

printArgument$213:	; call header integral zero 0 stack zero 0

printArgument$214:	; parameter arg_list, offset 6
x3442:	mov ax, [bp + 8]	; 3: -117 70 8
x3445:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$215:	; parameter widthPtr, offset 8
x3448:	mov ax, [bp + 16]	; 3: -117 70 16
x3451:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$216:	; £temporary2106 = &precision
x3454:	mov si, bp	; 2: -119 -18
x3456:	add si, 18	; 3: -125 -58 18

printArgument$217:	; parameter £temporary2106, offset 10
x3459:	mov [bp + 54], si	; 3: -119 118 54

printArgument$218:	; call function noellipse-noellipse checkWidthAndPrecision
x3462:	mov word [bp + 44], printArgument$219	; 5: -57 70 44 -108 13
x3467:	mov [bp + 46], bp	; 3: -119 110 46
x3470:	add bp, 44	; 3: -125 -59 44
x3473:	jmp checkWidthAndPrecision	; 3: -23 -119 2

printArgument$219:	; post call

printArgument$220:	; £temporary2107 = return_value

printArgument$221:	; arg_list = £temporary2107
x3476:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$222:	; if c != 102 goto 233
x3479:	cmp byte [bp + 30], 102	; 4: -128 126 30 102
x3483:	jne printArgument$233	; 2: 117 47

printArgument$223:	; call header integral zero 0 stack zero 0

printArgument$224:	; push float longDoubleValue
x3485:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$225:	; parameter longDoubleValue, offset 6
x3488:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$226:	; parameter plus, offset 14
x3491:	mov ax, [bp + 10]	; 3: -117 70 10
x3494:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$227:	; parameter space, offset 16
x3497:	mov ax, [bp + 12]	; 3: -117 70 12
x3500:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$228:	; parameter grid, offset 18
x3503:	mov ax, [bp + 14]	; 3: -117 70 14
x3506:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$229:	; parameter precision, offset 20
x3509:	mov ax, [bp + 18]	; 3: -117 70 18
x3512:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$230:	; call function noellipse-noellipse printLongDoublePlain
x3515:	mov word [bp + 44], printArgument$231	; 5: -57 70 44 -55 13
x3520:	mov [bp + 46], bp	; 3: -119 110 46
x3523:	add bp, 44	; 3: -125 -59 44
x3526:	jmp printLongDoublePlain	; 3: -23 -108 10

printArgument$231:	; post call

printArgument$232:	; goto 359
x3529:	jmp printArgument$359	; 3: -23 34 2

printArgument$233:	; call header integral zero 0 stack zero 0

printArgument$234:	; £temporary2110 = int_to_int c (Signed_Char -> Signed_Int)
x3532:	mov al, [bp + 30]	; 3: -118 70 30
x3535:	and ax, 255	; 3: 37 -1 0
x3538:	cmp al, 0	; 2: 60 0
x3540:	jge printArgument$235	; 2: 125 4
x3542:	neg al	; 2: -10 -40
x3544:	neg ax	; 2: -9 -40

printArgument$235:	; parameter £temporary2110, offset 6
x3546:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$236:	; call function noellipse-noellipse tolower
x3549:	mov word [bp + 44], printArgument$237	; 5: -57 70 44 -21 13
x3554:	mov [bp + 46], bp	; 3: -119 110 46
x3557:	add bp, 44	; 3: -125 -59 44
x3560:	jmp tolower	; 3: -23 -40 11

printArgument$237:	; post call

printArgument$238:	; £temporary2111 = return_value

printArgument$239:	; if £temporary2111 != 101 goto 257
x3563:	cmp bx, 101	; 3: -125 -5 101
x3566:	jne printArgument$257	; 2: 117 81

printArgument$240:	; call header integral zero 0 stack zero 0

printArgument$241:	; push float longDoubleValue
x3568:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$242:	; parameter longDoubleValue, offset 6
x3571:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$243:	; parameter plus, offset 14
x3574:	mov ax, [bp + 10]	; 3: -117 70 10
x3577:	mov [bp + 58], ax	; 3: -119 70 58

printArgument$244:	; parameter space, offset 16
x3580:	mov ax, [bp + 12]	; 3: -117 70 12
x3583:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$245:	; parameter grid, offset 18
x3586:	mov ax, [bp + 14]	; 3: -117 70 14
x3589:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$246:	; parameter precision, offset 20
x3592:	mov ax, [bp + 18]	; 3: -117 70 18
x3595:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$247:	; call header integral zero 0 stack zero 0

printArgument$248:	; £temporary2113 = int_to_int c (Signed_Char -> Signed_Int)
x3598:	mov al, [bp + 30]	; 3: -118 70 30
x3601:	and ax, 255	; 3: 37 -1 0
x3604:	cmp al, 0	; 2: 60 0
x3606:	jge printArgument$249	; 2: 125 4
x3608:	neg al	; 2: -10 -40
x3610:	neg ax	; 2: -9 -40

printArgument$249:	; parameter £temporary2113, offset 28
x3612:	mov [bp + 72], ax	; 3: -119 70 72

printArgument$250:	; call function noellipse-noellipse isupper
x3615:	mov word [bp + 66], printArgument$251	; 5: -57 70 66 45 14
x3620:	mov [bp + 68], bp	; 3: -119 110 68
x3623:	add bp, 66	; 3: -125 -59 66
x3626:	jmp isupper	; 3: -23 -120 4

printArgument$251:	; post call

printArgument$252:	; £temporary2114 = return_value

printArgument$253:	; parameter £temporary2114, offset 22
x3629:	mov [bp + 66], bx	; 3: -119 94 66

printArgument$254:	; call function noellipse-noellipse printLongDoubleExpo
x3632:	mov word [bp + 44], printArgument$255	; 5: -57 70 44 62 14
x3637:	mov [bp + 46], bp	; 3: -119 110 46
x3640:	add bp, 44	; 3: -125 -59 44
x3643:	jmp printLongDoubleExpo	; 3: -23 38 12

printArgument$255:	; post call

printArgument$256:	; goto 359
x3646:	jmp printArgument$359	; 3: -23 -83 1

printArgument$257:	; call header integral zero 0 stack zero 0

printArgument$258:	; call header integral zero 0 stack zero 0

printArgument$259:	; push float longDoubleValue
x3649:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$260:	; parameter longDoubleValue, offset 6
x3652:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$261:	; call function noellipse-noellipse fabs
x3655:	mov word [bp + 44], printArgument$262	; 5: -57 70 44 85 14
x3660:	mov [bp + 46], bp	; 3: -119 110 46
x3663:	add bp, 44	; 3: -125 -59 44
x3666:	jmp fabs	; 3: -23 76 11

printArgument$262:	; post call

printArgument$263:	; £temporary2116 = return_value

printArgument$264:	; parameter £temporary2116, offset 6
x3669:	fstp qword [bp + 50]	; 3: -35 94 50

printArgument$265:	; call function noellipse-noellipse log10
x3672:	mov word [bp + 44], printArgument$266	; 5: -57 70 44 102 14
x3677:	mov [bp + 46], bp	; 3: -119 110 46
x3680:	add bp, 44	; 3: -125 -59 44
x3683:	jmp log10	; 3: -23 101 13

printArgument$266:	; post call

printArgument$267:	; £temporary2117 = return_value

printArgument$268:	; £temporary2118 = float_to_int £temporary2117 (Double -> Signed_Int)
x3686:	fistp word [container2bytes#]	; 4: -33 30 -4 15
x3690:	mov ax, [container2bytes#]	; 3: -95 -4 15

printArgument$269:	; expo = £temporary2118
x3693:	mov [bp + 44], ax	; 3: -119 70 44

printArgument$270:	; if expo < -3 goto 282
x3696:	cmp word [bp + 44], -3	; 4: -125 126 44 -3
x3700:	jl printArgument$282	; 2: 124 53

printArgument$271:	; if expo > 2 goto 282
x3702:	cmp word [bp + 44], 2	; 4: -125 126 44 2
x3706:	jg printArgument$282	; 2: 127 47

printArgument$272:	; call header integral zero 0 stack zero 0

printArgument$273:	; push float longDoubleValue
x3708:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$274:	; parameter longDoubleValue, offset 6
x3711:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$275:	; parameter plus, offset 14
x3714:	mov ax, [bp + 10]	; 3: -117 70 10
x3717:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$276:	; parameter space, offset 16
x3720:	mov ax, [bp + 12]	; 3: -117 70 12
x3723:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$277:	; parameter grid, offset 18
x3726:	mov ax, [bp + 14]	; 3: -117 70 14
x3729:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$278:	; parameter precision, offset 20
x3732:	mov ax, [bp + 18]	; 3: -117 70 18
x3735:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$279:	; call function noellipse-noellipse printLongDoublePlain
x3738:	mov word [bp + 46], printArgument$280	; 5: -57 70 46 -88 14
x3743:	mov [bp + 48], bp	; 3: -119 110 48
x3746:	add bp, 46	; 3: -125 -59 46
x3749:	jmp printLongDoublePlain	; 3: -23 -75 9

printArgument$280:	; post call

printArgument$281:	; goto 359
x3752:	jmp printArgument$359	; 3: -23 67 1

printArgument$282:	; call header integral zero 0 stack zero 0

printArgument$283:	; push float longDoubleValue
x3755:	fld qword [bp + 34]	; 3: -35 70 34

printArgument$284:	; parameter longDoubleValue, offset 6
x3758:	fstp qword [bp + 52]	; 3: -35 94 52

printArgument$285:	; parameter plus, offset 14
x3761:	mov ax, [bp + 10]	; 3: -117 70 10
x3764:	mov [bp + 60], ax	; 3: -119 70 60

printArgument$286:	; parameter space, offset 16
x3767:	mov ax, [bp + 12]	; 3: -117 70 12
x3770:	mov [bp + 62], ax	; 3: -119 70 62

printArgument$287:	; parameter grid, offset 18
x3773:	mov ax, [bp + 14]	; 3: -117 70 14
x3776:	mov [bp + 64], ax	; 3: -119 70 64

printArgument$288:	; parameter precision, offset 20
x3779:	mov ax, [bp + 18]	; 3: -117 70 18
x3782:	mov [bp + 66], ax	; 3: -119 70 66

printArgument$289:	; call header integral zero 0 stack zero 0

printArgument$290:	; £temporary2123 = int_to_int c (Signed_Char -> Signed_Int)
x3785:	mov al, [bp + 30]	; 3: -118 70 30
x3788:	and ax, 255	; 3: 37 -1 0
x3791:	cmp al, 0	; 2: 60 0
x3793:	jge printArgument$291	; 2: 125 4
x3795:	neg al	; 2: -10 -40
x3797:	neg ax	; 2: -9 -40

printArgument$291:	; parameter £temporary2123, offset 28
x3799:	mov [bp + 74], ax	; 3: -119 70 74

printArgument$292:	; call function noellipse-noellipse isupper
x3802:	mov word [bp + 68], printArgument$293	; 5: -57 70 68 -24 14
x3807:	mov [bp + 70], bp	; 3: -119 110 70
x3810:	add bp, 68	; 3: -125 -59 68
x3813:	jmp isupper	; 3: -23 -51 3

printArgument$293:	; post call

printArgument$294:	; £temporary2124 = return_value

printArgument$295:	; parameter £temporary2124, offset 22
x3816:	mov [bp + 68], bx	; 3: -119 94 68

printArgument$296:	; call function noellipse-noellipse printLongDoubleExpo
x3819:	mov word [bp + 46], printArgument$297	; 5: -57 70 46 -7 14
x3824:	mov [bp + 48], bp	; 3: -119 110 48
x3827:	add bp, 46	; 3: -125 -59 46
x3830:	jmp printLongDoubleExpo	; 3: -23 107 11

printArgument$297:	; post call

printArgument$298:	; goto 359
x3833:	jmp printArgument$359	; 3: -23 -14 0

printArgument$299:	; arg_list = arg_list + 2
x3836:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$300:	; £temporary2127 = arg_list - 2
x3840:	mov si, [bp + 8]	; 3: -117 118 8
x3843:	sub si, 2	; 3: -125 -18 2

printArgument$301:	; £temporary2128 = int_to_int £temporary2127 (Signed_Int -> Pointer)

printArgument$302:	; £temporary2129 -> £temporary2128 = *£temporary2128

printArgument$303:	; ptrValue = £temporary2129 -> £temporary2128
x3846:	mov ax, [si]	; 2: -117 4
x3848:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$304:	; call header integral zero 0 stack zero 0

printArgument$305:	; parameter arg_list, offset 6
x3851:	mov ax, [bp + 8]	; 3: -117 70 8
x3854:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$306:	; parameter widthPtr, offset 8
x3857:	mov ax, [bp + 16]	; 3: -117 70 16
x3860:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$307:	; £temporary2130 = &precision
x3863:	mov si, bp	; 2: -119 -18
x3865:	add si, 18	; 3: -125 -58 18

printArgument$308:	; parameter £temporary2130, offset 10
x3868:	mov [bp + 54], si	; 3: -119 118 54

printArgument$309:	; call function noellipse-noellipse checkWidthAndPrecision
x3871:	mov word [bp + 44], printArgument$310	; 5: -57 70 44 45 15
x3876:	mov [bp + 46], bp	; 3: -119 110 46
x3879:	add bp, 44	; 3: -125 -59 44
x3882:	jmp checkWidthAndPrecision	; 3: -23 -16 0

printArgument$310:	; post call

printArgument$311:	; £temporary2131 = return_value

printArgument$312:	; arg_list = £temporary2131
x3885:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$313:	; call header integral zero 0 stack zero 0

printArgument$314:	; £temporary2132 = int_to_int ptrValue (Pointer -> Unsigned_Long_Int)
x3888:	mov ax, [bp + 42]	; 3: -117 70 42
x3891:	and eax, 65535	; 6: 102 37 -1 -1 0 0

printArgument$315:	; parameter £temporary2132, offset 6
x3897:	mov [bp + 50], eax	; 4: 102 -119 70 50

printArgument$316:	; parameter 0, offset 10
x3901:	mov word [bp + 54], 0	; 5: -57 70 54 0 0

printArgument$317:	; parameter 0, offset 12
x3906:	mov word [bp + 56], 0	; 5: -57 70 56 0 0

printArgument$318:	; parameter 0, offset 14
x3911:	mov word [bp + 58], 0	; 5: -57 70 58 0 0

printArgument$319:	; parameter 10, offset 16
x3916:	mov dword [bp + 60], 10	; 8: 102 -57 70 60 10 0 0 0

printArgument$320:	; parameter 0, offset 20
x3924:	mov word [bp + 64], 0	; 5: -57 70 64 0 0

printArgument$321:	; call function noellipse-noellipse printUnsignedLong
x3929:	mov word [bp + 44], printArgument$322	; 5: -57 70 44 103 15
x3934:	mov [bp + 46], bp	; 3: -119 110 46
x3937:	add bp, 44	; 3: -125 -59 44
x3940:	jmp printUnsignedLong	; 3: -23 75 7

printArgument$322:	; post call

printArgument$323:	; goto 359
x3943:	jmp printArgument$359	; 3: -23 -124 0

printArgument$324:	; arg_list = arg_list + 2
x3946:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$325:	; £temporary2135 = arg_list - 2
x3950:	mov si, [bp + 8]	; 3: -117 118 8
x3953:	sub si, 2	; 3: -125 -18 2

printArgument$326:	; £temporary2136 = int_to_int £temporary2135 (Signed_Int -> Pointer)

printArgument$327:	; £temporary2137 -> £temporary2136 = *£temporary2136

printArgument$328:	; ptrValue = £temporary2137 -> £temporary2136
x3956:	mov ax, [si]	; 2: -117 4
x3958:	mov [bp + 42], ax	; 3: -119 70 42

printArgument$329:	; arg_list = arg_list + 2
x3961:	add word [bp + 8], 2	; 4: -125 70 8 2

printArgument$330:	; £temporary2139 = arg_list - 2
x3965:	mov si, [bp + 8]	; 3: -117 118 8
x3968:	sub si, 2	; 3: -125 -18 2

printArgument$331:	; £temporary2140 = int_to_int £temporary2139 (Signed_Int -> Pointer)

printArgument$332:	; £temporary2141 -> £temporary2140 = *£temporary2140

printArgument$333:	; intPtr = £temporary2141 -> £temporary2140
x3971:	mov ax, [si]	; 2: -117 4
x3973:	mov [bp + 32], ax	; 3: -119 70 32

printArgument$334:	; call header integral zero 0 stack zero 0

printArgument$335:	; parameter arg_list, offset 6
x3976:	mov ax, [bp + 8]	; 3: -117 70 8
x3979:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$336:	; parameter widthPtr, offset 8
x3982:	mov ax, [bp + 16]	; 3: -117 70 16
x3985:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$337:	; £temporary2142 = &precision
x3988:	mov si, bp	; 2: -119 -18
x3990:	add si, 18	; 3: -125 -58 18

printArgument$338:	; parameter £temporary2142, offset 10
x3993:	mov [bp + 54], si	; 3: -119 118 54

printArgument$339:	; call function noellipse-noellipse checkWidthAndPrecision
x3996:	mov word [bp + 44], printArgument$340	; 5: -57 70 44 -86 15
x4001:	mov [bp + 46], bp	; 3: -119 110 46
x4004:	add bp, 44	; 3: -125 -59 44
x4007:	nop	; 1: -112
x4008:	jmp checkWidthAndPrecision	; 2: -21 115

printArgument$340:	; post call

printArgument$341:	; £temporary2143 = return_value

printArgument$342:	; arg_list = £temporary2143
x4010:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$343:	; £temporary2144 -> intPtr = *intPtr
x4013:	mov si, [bp + 32]	; 3: -117 118 32

printArgument$344:	; £temporary2144 -> intPtr = g_outChars
x4016:	mov ax, [g_outChars]	; 3: -95 -26 9
x4019:	mov [si], ax	; 2: -119 4

printArgument$345:	; goto 359
x4021:	jmp printArgument$359	; 2: -21 55

printArgument$346:	; call header integral zero 0 stack zero 0

printArgument$347:	; parameter arg_list, offset 6
x4023:	mov ax, [bp + 8]	; 3: -117 70 8
x4026:	mov [bp + 50], ax	; 3: -119 70 50

printArgument$348:	; parameter widthPtr, offset 8
x4029:	mov ax, [bp + 16]	; 3: -117 70 16
x4032:	mov [bp + 52], ax	; 3: -119 70 52

printArgument$349:	; £temporary2145 = &precision
x4035:	mov si, bp	; 2: -119 -18
x4037:	add si, 18	; 3: -125 -58 18

printArgument$350:	; parameter £temporary2145, offset 10
x4040:	mov [bp + 54], si	; 3: -119 118 54

printArgument$351:	; call function noellipse-noellipse checkWidthAndPrecision
x4043:	mov word [bp + 44], printArgument$352	; 5: -57 70 44 -39 15
x4048:	mov [bp + 46], bp	; 3: -119 110 46
x4051:	add bp, 44	; 3: -125 -59 44
x4054:	nop	; 1: -112
x4055:	jmp checkWidthAndPrecision	; 2: -21 68

printArgument$352:	; post call

printArgument$353:	; £temporary2146 = return_value

printArgument$354:	; arg_list = £temporary2146
x4057:	mov [bp + 8], bx	; 3: -119 94 8

printArgument$355:	; call header integral zero 0 stack zero 0

printArgument$356:	; parameter 37, offset 6
x4060:	mov byte [bp + 50], 37	; 4: -58 70 50 37

printArgument$357:	; call function noellipse-noellipse printChar
x4064:	mov word [bp + 44], printArgument$358	; 5: -57 70 44 -18 15
x4069:	mov [bp + 46], bp	; 3: -119 110 46
x4072:	add bp, 44	; 3: -125 -59 44
x4075:	jmp printChar	; 3: -23 15 1

printArgument$358:	; post call

printArgument$359:	; return_value = arg_list
x4078:	mov bx, [bp + 8]	; 3: -117 94 8

printArgument$360:	; return
x4081:	mov ax, [bp]	; 3: -117 70 0
x4084:	mov di, [bp + 4]	; 3: -117 126 4
x4087:	mov bp, [bp + 2]	; 3: -117 110 2
x4090:	jmp ax	; 2: -1 -32

printArgument$361:	; function end printArgument

container2bytes#:
x4092:	db 0, 0	; 2: 0 0

labs:	; if value >= 0 goto 4
x4094:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4099:	jge labs$4	; 2: 125 9

labs$1:	; £temporary3450 = -value
x4101:	mov ebx, [bp + 6]	; 4: 102 -117 94 6
x4105:	neg ebx	; 3: 102 -9 -37

labs$2:	; £temporary3454 = £temporary3450

labs$3:	; goto 5
x4108:	jmp labs$5	; 2: -21 4

labs$4:	; £temporary3454 = value
x4110:	mov ebx, [bp + 6]	; 4: 102 -117 94 6

labs$5:	; return_value = £temporary3454

labs$6:	; return
x4114:	mov ax, [bp]	; 3: -117 70 0
x4117:	mov di, [bp + 4]	; 3: -117 126 4
x4120:	mov bp, [bp + 2]	; 3: -117 110 2
x4123:	jmp ax	; 2: -1 -32

labs$7:	; function end labs

checkWidthAndPrecision:	; if widthPtr == 0 goto 9
x4125:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4129:	je checkWidthAndPrecision$9	; 2: 116 25

checkWidthAndPrecision$1:	; £temporary1991 -> widthPtr = *widthPtr
x4131:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$2:	; if £temporary1991 -> widthPtr != -1 goto 9
x4134:	cmp word [si], -1	; 3: -125 60 -1
x4137:	jne checkWidthAndPrecision$9	; 2: 117 17

checkWidthAndPrecision$3:	; £temporary1994 -> widthPtr = *widthPtr
x4139:	mov si, [bp + 8]	; 3: -117 118 8

checkWidthAndPrecision$4:	; arg_list = arg_list + 2
x4142:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$5:	; £temporary1996 = arg_list - 2
x4146:	mov di, [bp + 6]	; 3: -117 126 6
x4149:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$6:	; £temporary1997 = int_to_int £temporary1996 (Signed_Int -> Pointer)

checkWidthAndPrecision$7:	; £temporary1998 -> £temporary1997 = *£temporary1997

checkWidthAndPrecision$8:	; £temporary1994 -> widthPtr = £temporary1998 -> £temporary1997
x4152:	mov ax, [di]	; 2: -117 5
x4154:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$9:	; if precisionPtr == 0 goto 18
x4156:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4160:	je checkWidthAndPrecision$18	; 2: 116 25

checkWidthAndPrecision$10:	; £temporary2000 -> precisionPtr = *precisionPtr
x4162:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$11:	; if £temporary2000 -> precisionPtr != -1 goto 18
x4165:	cmp word [si], -1	; 3: -125 60 -1
x4168:	jne checkWidthAndPrecision$18	; 2: 117 17

checkWidthAndPrecision$12:	; £temporary2003 -> precisionPtr = *precisionPtr
x4170:	mov si, [bp + 10]	; 3: -117 118 10

checkWidthAndPrecision$13:	; arg_list = arg_list + 2
x4173:	add word [bp + 6], 2	; 4: -125 70 6 2

checkWidthAndPrecision$14:	; £temporary2005 = arg_list - 2
x4177:	mov di, [bp + 6]	; 3: -117 126 6
x4180:	sub di, 2	; 3: -125 -17 2

checkWidthAndPrecision$15:	; £temporary2006 = int_to_int £temporary2005 (Signed_Int -> Pointer)

checkWidthAndPrecision$16:	; £temporary2007 -> £temporary2006 = *£temporary2006

checkWidthAndPrecision$17:	; £temporary2003 -> precisionPtr = £temporary2007 -> £temporary2006
x4183:	mov ax, [di]	; 2: -117 5
x4185:	mov [si], ax	; 2: -119 4

checkWidthAndPrecision$18:	; return_value = arg_list
x4187:	mov bx, [bp + 6]	; 3: -117 94 6

checkWidthAndPrecision$19:	; return
x4190:	mov ax, [bp]	; 3: -117 70 0
x4193:	mov di, [bp + 4]	; 3: -117 126 4
x4196:	mov bp, [bp + 2]	; 3: -117 110 2
x4199:	jmp ax	; 2: -1 -32

checkWidthAndPrecision$20:	; function end checkWidthAndPrecision

printLongInt:	; if longValue >= 0 goto 8
x4201:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4206:	jge printLongInt$8	; 2: 125 31

printLongInt$1:	; £temporary1846 = -longValue
x4208:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4212:	neg eax	; 3: 102 -9 -40

printLongInt$2:	; longValue = £temporary1846
x4215:	mov [bp + 6], eax	; 4: 102 -119 70 6

printLongInt$3:	; call header integral zero 0 stack zero 0

printLongInt$4:	; parameter 45, offset 6
x4219:	mov byte [bp + 20], 45	; 4: -58 70 20 45

printLongInt$5:	; call function noellipse-noellipse printChar
x4223:	mov word [bp + 14], printLongInt$6	; 5: -57 70 14 -115 16
x4228:	mov [bp + 16], bp	; 3: -119 110 16
x4231:	add bp, 14	; 3: -125 -59 14
x4234:	nop	; 1: -112
x4235:	jmp printChar	; 2: -21 112

printLongInt$6:	; post call

printLongInt$7:	; goto 19
x4237:	jmp printLongInt$19	; 2: -21 50

printLongInt$8:	; if space == 0 goto 14
x4239:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x4243:	je printLongInt$14	; 2: 116 20

printLongInt$9:	; call header integral zero 0 stack zero 0

printLongInt$10:	; parameter 32, offset 6
x4245:	mov byte [bp + 20], 32	; 4: -58 70 20 32

printLongInt$11:	; call function noellipse-noellipse printChar
x4249:	mov word [bp + 14], printLongInt$12	; 5: -57 70 14 -89 16
x4254:	mov [bp + 16], bp	; 3: -119 110 16
x4257:	add bp, 14	; 3: -125 -59 14
x4260:	nop	; 1: -112
x4261:	jmp printChar	; 2: -21 86

printLongInt$12:	; post call

printLongInt$13:	; goto 19
x4263:	jmp printLongInt$19	; 2: -21 24

printLongInt$14:	; if plus == 0 goto 19
x4265:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x4269:	je printLongInt$19	; 2: 116 18

printLongInt$15:	; call header integral zero 0 stack zero 0

printLongInt$16:	; parameter 43, offset 6
x4271:	mov byte [bp + 20], 43	; 4: -58 70 20 43

printLongInt$17:	; call function noellipse-noellipse printChar
x4275:	mov word [bp + 14], printLongInt$18	; 5: -57 70 14 -63 16
x4280:	mov [bp + 16], bp	; 3: -119 110 16
x4283:	add bp, 14	; 3: -125 -59 14
x4286:	nop	; 1: -112
x4287:	jmp printChar	; 2: -21 60

printLongInt$18:	; post call

printLongInt$19:	; if longValue != 0 goto 25
x4289:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4294:	jne printLongInt$25	; 2: 117 20

printLongInt$20:	; call header integral zero 0 stack zero 0

printLongInt$21:	; parameter 48, offset 6
x4296:	mov byte [bp + 20], 48	; 4: -58 70 20 48

printLongInt$22:	; call function noellipse-noellipse printChar
x4300:	mov word [bp + 14], printLongInt$23	; 5: -57 70 14 -38 16
x4305:	mov [bp + 16], bp	; 3: -119 110 16
x4308:	add bp, 14	; 3: -125 -59 14
x4311:	nop	; 1: -112
x4312:	jmp printChar	; 2: -21 35

printLongInt$23:	; post call

printLongInt$24:	; goto 29
x4314:	jmp printLongInt$29	; 2: -21 22

printLongInt$25:	; call header integral zero 0 stack zero 0

printLongInt$26:	; parameter longValue, offset 6
x4316:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4320:	mov [bp + 20], eax	; 4: 102 -119 70 20

printLongInt$27:	; call function noellipse-noellipse printLongIntRec
x4324:	mov word [bp + 14], printLongInt$28	; 5: -57 70 14 -14 16
x4329:	mov [bp + 16], bp	; 3: -119 110 16
x4332:	add bp, 14	; 3: -125 -59 14
x4335:	nop	; 1: -112
x4336:	jmp printLongIntRec	; 2: -21 101

printLongInt$28:	; post call

printLongInt$29:	; return
x4338:	mov ax, [bp]	; 3: -117 70 0
x4341:	mov di, [bp + 4]	; 3: -117 126 4
x4344:	mov bp, [bp + 2]	; 3: -117 110 2
x4347:	jmp ax	; 2: -1 -32

printLongInt$30:	; function end printLongInt

printChar:	; case g_outStatus == 0 goto 5
x4349:	mov ax, [g_outStatus]	; 3: -95 -128 4
x4352:	cmp ax, 0	; 3: -125 -8 0
x4355:	je printChar$5	; 2: 116 12

printChar$1:	; case g_outStatus == 1 goto 16
x4357:	cmp ax, 1	; 3: -125 -8 1
x4360:	je printChar$16	; 2: 116 37

printChar$2:	; case g_outStatus == 2 goto 24
x4362:	cmp ax, 2	; 3: -125 -8 2
x4365:	je printChar$24	; 2: 116 57

printChar$3:	; case end g_outStatus

printChar$4:	; goto 25
x4367:	jmp printChar$25	; 2: -21 59

printChar$5:	; £temporary1788 = int_to_int g_outDevice (Pointer -> Pointer)
x4369:	mov ax, [g_outDevice]	; 3: -95 -126 4

printChar$6:	; stream = £temporary1788
x4372:	mov [bp + 11], ax	; 3: -119 70 11

printChar$7:	; ah = 64
x4375:	mov ah, 64	; 2: -76 64

printChar$8:	; £temporary1791 -> stream = *stream, offset 2
x4377:	mov si, [bp + 11]	; 3: -117 118 11

printChar$9:	; bx = £temporary1791 -> stream
x4380:	mov bx, [si + 2]	; 3: -117 92 2

printChar$10:	; cx = 1
x4383:	mov cx, 1	; 3: -71 1 0

printChar$11:	; £temporary1794 = &c
x4386:	mov dx, bp	; 2: -119 -22
x4388:	add dx, 6	; 3: -125 -62 6

printChar$12:	; dx = £temporary1794

printChar$13:	; interrupt 33
x4391:	int 33	; 2: -51 33

printChar$14:	; ++g_outChars
x4393:	inc word [g_outChars]	; 4: -1 6 -26 9

printChar$15:	; goto 25
x4397:	jmp printChar$25	; 2: -21 29

printChar$16:	; £temporary1796 = int_to_int g_outDevice (Pointer -> Pointer)
x4399:	mov ax, [g_outDevice]	; 3: -95 -126 4

printChar$17:	; outString = £temporary1796
x4402:	mov [bp + 9], ax	; 3: -119 70 9

printChar$18:	; £temporary1797 = g_outChars
x4405:	mov ax, [g_outChars]	; 3: -95 -26 9

printChar$19:	; ++g_outChars
x4408:	inc word [g_outChars]	; 4: -1 6 -26 9

printChar$20:	; £temporary1799 = outString + £temporary1797
x4412:	mov si, [bp + 9]	; 3: -117 118 9
x4415:	add si, ax	; 2: 1 -58

printChar$21:	; £temporary1798 -> £temporary1799 = *£temporary1799

printChar$22:	; £temporary1798 -> £temporary1799 = c
x4417:	mov al, [bp + 6]	; 3: -118 70 6
x4420:	mov [si], al	; 2: -120 4

printChar$23:	; goto 25
x4422:	jmp printChar$25	; 2: -21 4

printChar$24:	; ++g_outChars
x4424:	inc word [g_outChars]	; 4: -1 6 -26 9

printChar$25:	; return
x4428:	mov ax, [bp]	; 3: -117 70 0
x4431:	mov di, [bp + 4]	; 3: -117 126 4
x4434:	mov bp, [bp + 2]	; 3: -117 110 2
x4437:	jmp ax	; 2: -1 -32

printChar$26:	; function end printChar

printLongIntRec:	; if longValue == 0 goto 15
x4439:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x4444:	je printLongIntRec$15	; 2: 116 88

printLongIntRec$1:	; £temporary1836 = longValue % 10
x4446:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4450:	xor edx, edx	; 3: 102 49 -46
x4453:	idiv dword [int4$10#]	; 5: 102 -9 62 -63 17

printLongIntRec$2:	; £temporary1837 = int_to_int £temporary1836 (Signed_Long_Int -> Signed_Int)
x4458:	cmp edx, 0	; 4: 102 -125 -6 0
x4462:	jge printLongIntRec$3	; 2: 125 5
x4464:	neg edx	; 3: 102 -9 -38
x4467:	neg dx	; 2: -9 -38

printLongIntRec$3:	; digit = £temporary1837
x4469:	mov [bp + 10], dx	; 3: -119 86 10

printLongIntRec$4:	; call header integral zero 0 stack zero 0

printLongIntRec$5:	; £temporary1838 = longValue / 10
x4472:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x4476:	xor edx, edx	; 3: 102 49 -46
x4479:	idiv dword [int4$10#]	; 5: 102 -9 62 -63 17

printLongIntRec$6:	; parameter £temporary1838, offset 6
x4484:	mov [bp + 18], eax	; 4: 102 -119 70 18

printLongIntRec$7:	; call function noellipse-noellipse printLongIntRec
x4488:	mov word [bp + 12], printLongIntRec$8	; 5: -57 70 12 -106 17
x4493:	mov [bp + 14], bp	; 3: -119 110 14
x4496:	add bp, 12	; 3: -125 -59 12
x4499:	nop	; 1: -112
x4500:	jmp printLongIntRec	; 2: -21 -63

printLongIntRec$8:	; post call

printLongIntRec$9:	; call header integral zero 0 stack zero 0

printLongIntRec$10:	; £temporary1840 = digit + 48
x4502:	mov ax, [bp + 10]	; 3: -117 70 10
x4505:	add ax, 48	; 3: -125 -64 48

printLongIntRec$11:	; £temporary1841 = int_to_int £temporary1840 (Signed_Int -> Signed_Char)
x4508:	cmp ax, 0	; 3: -125 -8 0
x4511:	jge printLongIntRec$12	; 2: 125 4
x4513:	neg ax	; 2: -9 -40
x4515:	neg al	; 2: -10 -40

printLongIntRec$12:	; parameter £temporary1841, offset 6
x4517:	mov [bp + 18], al	; 3: -120 70 18

printLongIntRec$13:	; call function noellipse-noellipse printChar
x4520:	mov word [bp + 12], printLongIntRec$14	; 5: -57 70 12 -74 17
x4525:	mov [bp + 14], bp	; 3: -119 110 14
x4528:	add bp, 12	; 3: -125 -59 12
x4531:	jmp printChar	; 3: -23 71 -1

printLongIntRec$14:	; post call

printLongIntRec$15:	; return
x4534:	mov ax, [bp]	; 3: -117 70 0
x4537:	mov di, [bp + 4]	; 3: -117 126 4
x4540:	mov bp, [bp + 2]	; 3: -117 110 2
x4543:	jmp ax	; 2: -1 -32

printLongIntRec$16:	; function end printLongIntRec

int4$10#:
x4545:	dd 10	; 4: 10 0 0 0

printString:	; if s == 0 goto 29
x4549:	cmp word [bp + 6], 0	; 4: -125 126 6 0
x4553:	je printString$29	; 2: 116 115

printString$1:	; if precision != 0 goto 14
x4555:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4559:	jne printString$14	; 2: 117 48

printString$2:	; index = 0
x4561:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$3:	; £temporary1805 = s + index
x4566:	mov si, [bp + 6]	; 3: -117 118 6
x4569:	add si, [bp + 10]	; 3: 3 118 10

printString$4:	; £temporary1804 -> £temporary1805 = *£temporary1805

printString$5:	; if £temporary1804 -> £temporary1805 == 0 goto 53
x4572:	cmp byte [si], 0	; 3: -128 60 0
x4575:	je printString$53	; 4: 15 -124 -57 0

printString$6:	; call header integral zero 0 stack zero 0

printString$7:	; £temporary1809 = s + index
x4579:	mov si, [bp + 6]	; 3: -117 118 6
x4582:	add si, [bp + 10]	; 3: 3 118 10

printString$8:	; £temporary1808 -> £temporary1809 = *£temporary1809

printString$9:	; parameter £temporary1808 -> £temporary1809, offset 6
x4585:	mov al, [si]	; 2: -118 4
x4587:	mov [bp + 18], al	; 3: -120 70 18

printString$10:	; call function noellipse-noellipse printChar
x4590:	mov word [bp + 12], printString$11	; 5: -57 70 12 -4 17
x4595:	mov [bp + 14], bp	; 3: -119 110 14
x4598:	add bp, 12	; 3: -125 -59 12
x4601:	jmp printChar	; 3: -23 1 -1

printString$11:	; post call

printString$12:	; ++index
x4604:	inc word [bp + 10]	; 3: -1 70 10

printString$13:	; goto 3
x4607:	jmp printString$3	; 2: -21 -43

printString$14:	; index = 0
x4609:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

printString$15:	; £temporary1811 = precision
x4614:	mov ax, [bp + 8]	; 3: -117 70 8

printString$16:	; --precision
x4617:	dec word [bp + 8]	; 3: -1 78 8

printString$17:	; if £temporary1811 <= 0 goto 53
x4620:	cmp ax, 0	; 3: -125 -8 0
x4623:	jle printString$53	; 4: 15 -114 -105 0

printString$18:	; £temporary1814 = s + index
x4627:	mov si, [bp + 6]	; 3: -117 118 6
x4630:	add si, [bp + 10]	; 3: 3 118 10

printString$19:	; £temporary1813 -> £temporary1814 = *£temporary1814

printString$20:	; if £temporary1813 -> £temporary1814 == 0 goto 53
x4633:	cmp byte [si], 0	; 3: -128 60 0
x4636:	je printString$53	; 4: 15 -124 -118 0

printString$21:	; call header integral zero 0 stack zero 0

printString$22:	; £temporary1819 = s + index
x4640:	mov si, [bp + 6]	; 3: -117 118 6
x4643:	add si, [bp + 10]	; 3: 3 118 10

printString$23:	; £temporary1818 -> £temporary1819 = *£temporary1819

printString$24:	; parameter £temporary1818 -> £temporary1819, offset 6
x4646:	mov al, [si]	; 2: -118 4
x4648:	mov [bp + 18], al	; 3: -120 70 18

printString$25:	; call function noellipse-noellipse printChar
x4651:	mov word [bp + 12], printString$26	; 5: -57 70 12 57 18
x4656:	mov [bp + 14], bp	; 3: -119 110 14
x4659:	add bp, 12	; 3: -125 -59 12
x4662:	jmp printChar	; 3: -23 -60 -2

printString$26:	; post call

printString$27:	; ++index
x4665:	inc word [bp + 10]	; 3: -1 70 10

printString$28:	; goto 15
x4668:	jmp printString$15	; 2: -21 -56

printString$29:	; call header integral zero 0 stack zero 0

printString$30:	; parameter 60, offset 6
x4670:	mov byte [bp + 16], 60	; 4: -58 70 16 60

printString$31:	; call function noellipse-noellipse printChar
x4674:	mov word [bp + 10], printString$32	; 5: -57 70 10 80 18
x4679:	mov [bp + 12], bp	; 3: -119 110 12
x4682:	add bp, 10	; 3: -125 -59 10
x4685:	jmp printChar	; 3: -23 -83 -2

printString$32:	; post call

printString$33:	; call header integral zero 0 stack zero 0

printString$34:	; parameter 78, offset 6
x4688:	mov byte [bp + 16], 78	; 4: -58 70 16 78

printString$35:	; call function noellipse-noellipse printChar
x4692:	mov word [bp + 10], printString$36	; 5: -57 70 10 98 18
x4697:	mov [bp + 12], bp	; 3: -119 110 12
x4700:	add bp, 10	; 3: -125 -59 10
x4703:	jmp printChar	; 3: -23 -101 -2

printString$36:	; post call

printString$37:	; call header integral zero 0 stack zero 0

printString$38:	; parameter 85, offset 6
x4706:	mov byte [bp + 16], 85	; 4: -58 70 16 85

printString$39:	; call function noellipse-noellipse printChar
x4710:	mov word [bp + 10], printString$40	; 5: -57 70 10 116 18
x4715:	mov [bp + 12], bp	; 3: -119 110 12
x4718:	add bp, 10	; 3: -125 -59 10
x4721:	jmp printChar	; 3: -23 -119 -2

printString$40:	; post call

printString$41:	; call header integral zero 0 stack zero 0

printString$42:	; parameter 76, offset 6
x4724:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$43:	; call function noellipse-noellipse printChar
x4728:	mov word [bp + 10], printString$44	; 5: -57 70 10 -122 18
x4733:	mov [bp + 12], bp	; 3: -119 110 12
x4736:	add bp, 10	; 3: -125 -59 10
x4739:	jmp printChar	; 3: -23 119 -2

printString$44:	; post call

printString$45:	; call header integral zero 0 stack zero 0

printString$46:	; parameter 76, offset 6
x4742:	mov byte [bp + 16], 76	; 4: -58 70 16 76

printString$47:	; call function noellipse-noellipse printChar
x4746:	mov word [bp + 10], printString$48	; 5: -57 70 10 -104 18
x4751:	mov [bp + 12], bp	; 3: -119 110 12
x4754:	add bp, 10	; 3: -125 -59 10
x4757:	jmp printChar	; 3: -23 101 -2

printString$48:	; post call

printString$49:	; call header integral zero 0 stack zero 0

printString$50:	; parameter 62, offset 6
x4760:	mov byte [bp + 16], 62	; 4: -58 70 16 62

printString$51:	; call function noellipse-noellipse printChar
x4764:	mov word [bp + 10], printString$52	; 5: -57 70 10 -86 18
x4769:	mov [bp + 12], bp	; 3: -119 110 12
x4772:	add bp, 10	; 3: -125 -59 10
x4775:	jmp printChar	; 3: -23 83 -2

printString$52:	; post call

printString$53:	; return
x4778:	mov ax, [bp]	; 3: -117 70 0
x4781:	mov di, [bp + 4]	; 3: -117 126 4
x4784:	mov bp, [bp + 2]	; 3: -117 110 2
x4787:	jmp ax	; 2: -1 -32

printString$54:	; function end printString

isupper:	; call header integral zero 0 stack zero 0

isupper$1:	; call function noellipse-noellipse localeconv
x4789:	mov word [bp + 8], isupper$2	; 5: -57 70 8 -61 18
x4794:	mov [bp + 10], bp	; 3: -119 110 10
x4797:	add bp, 8	; 3: -125 -59 8
x4800:	nop	; 1: -112
x4801:	jmp localeconv	; 2: -21 93

isupper$2:	; post call

isupper$3:	; £temporary383 = return_value

isupper$4:	; localeConvPtr = £temporary383
x4803:	mov [bp + 8], bx	; 3: -119 94 8

isupper$5:	; if localeConvPtr == 0 goto 19
x4806:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x4810:	je isupper$19	; 2: 116 53

isupper$6:	; call header integral zero 0 stack zero 0

isupper$7:	; £temporary385 -> localeConvPtr = *localeConvPtr, offset 14
x4812:	mov si, [bp + 8]	; 3: -117 118 8

isupper$8:	; parameter £temporary385 -> localeConvPtr, offset 6
x4815:	mov ax, [si + 14]	; 3: -117 68 14
x4818:	mov [bp + 16], ax	; 3: -119 70 16

isupper$9:	; parameter c, offset 8
x4821:	mov ax, [bp + 6]	; 3: -117 70 6
x4824:	mov [bp + 18], ax	; 3: -119 70 18

isupper$10:	; call function noellipse-noellipse strchr
x4827:	mov word [bp + 10], isupper$11	; 5: -57 70 10 -23 18
x4832:	mov [bp + 12], bp	; 3: -119 110 12
x4835:	add bp, 10	; 3: -125 -59 10
x4838:	jmp strchr	; 3: -23 121 3

isupper$11:	; post call

isupper$12:	; £temporary386 = return_value

isupper$13:	; if £temporary386 == 0 goto 16
x4841:	cmp bx, 0	; 3: -125 -5 0
x4844:	je isupper$16	; 2: 116 5

isupper$14:	; £temporary388 = 1
x4846:	mov bx, 1	; 3: -69 1 0

isupper$15:	; goto 17
x4849:	jmp isupper$17	; 2: -21 3

isupper$16:	; £temporary388 = 0
x4851:	mov bx, 0	; 3: -69 0 0

isupper$17:	; return_value = £temporary388

isupper$18:	; return
x4854:	mov ax, [bp]	; 3: -117 70 0
x4857:	mov di, [bp + 4]	; 3: -117 126 4
x4860:	mov bp, [bp + 2]	; 3: -117 110 2
x4863:	jmp ax	; 2: -1 -32

isupper$19:	; if c < 65 goto 23
x4865:	cmp word [bp + 6], 65	; 4: -125 126 6 65
x4869:	jl isupper$23	; 2: 124 11

isupper$20:	; if c > 90 goto 23
x4871:	cmp word [bp + 6], 90	; 4: -125 126 6 90
x4875:	jg isupper$23	; 2: 127 5

isupper$21:	; £temporary392 = 1
x4877:	mov bx, 1	; 3: -69 1 0

isupper$22:	; goto 24
x4880:	jmp isupper$24	; 2: -21 3

isupper$23:	; £temporary392 = 0
x4882:	mov bx, 0	; 3: -69 0 0

isupper$24:	; return_value = £temporary392

isupper$25:	; return
x4885:	mov ax, [bp]	; 3: -117 70 0
x4888:	mov di, [bp + 4]	; 3: -117 126 4
x4891:	mov bp, [bp + 2]	; 3: -117 110 2
x4894:	jmp ax	; 2: -1 -32

isupper$26:	; function end isupper

localeconv:	; if g_currStructPtr == 0 goto 4
x4896:	cmp word [@16$g_currStructPtr], 0	; 5: -125 62 62 19 0
x4901:	je localeconv$4	; 2: 116 9

localeconv$1:	; £temporary516 -> g_currStructPtr = *g_currStructPtr, offset 2
x4903:	mov si, [@16$g_currStructPtr]	; 4: -117 54 62 19

localeconv$2:	; £temporary520 = £temporary516 -> g_currStructPtr
x4907:	mov bx, [si + 2]	; 3: -117 92 2

localeconv$3:	; goto 5
x4910:	jmp localeconv$5	; 2: -21 3

localeconv$4:	; £temporary520 = 0
x4912:	mov bx, 0	; 3: -69 0 0

localeconv$5:	; return_value = £temporary520

localeconv$6:	; return
x4915:	mov ax, [bp]	; 3: -117 70 0
x4918:	mov di, [bp + 4]	; 3: -117 126 4
x4921:	mov bp, [bp + 2]	; 3: -117 110 2
x4924:	jmp ax	; 2: -1 -32

localeconv$7:	; function end localeconv

@16$g_currStructPtr:
x4926:	dw @14$sArray	; 2: 64 19

@14$sArray:
x4928:	dw string_# ; 2: 76 19
x4930:	dw @13$en_US_utf8	; 2: 77 19
x4932:	dw string_C# ; 2: 93 22
x4934:	dw @13$en_US_utf8	; 2: 77 19
x4936:	dw string_US# ; 2: 95 22
x4938:	dw @13$en_US_utf8	; 2: 77 19

string_#:
x4940:	db 0	; 1: 0

@13$en_US_utf8:
x4941:	dw -5	; 2: -5 -1
x4943:	dw -4	; 2: -4 -1
x4945:	dw @9$enShortDayList ; 2: 95 19
x4947:	dw @10$enLongDayList ; 2: -119 19
x4949:	dw @11$enShortMonthList ; 2: -48 19
x4951:	dw @12$enLongMonthList ; 2: 24 20
x4953:	dw string_abcdefghijklmnopqrstuvwxyz# ; 2: -126 20
x4955:	dw string_ABCDEFGHIJKLMNOPQRSTUVWXYZ# ; 2: -99 20
x4957:	dw enMessageList ; 2: -72 20

@9$enShortDayList:
x4959:	dw string_Sun# ; 2: 109 19
x4961:	dw string_Mon# ; 2: 113 19
x4963:	dw string_Tue# ; 2: 117 19
x4965:	dw string_Wed# ; 2: 121 19
x4967:	dw string_Thu# ; 2: 125 19
x4969:	dw string_Fri# ; 2: -127 19
x4971:	dw string_Sat# ; 2: -123 19

string_Sun#:
x4973:	db "Sun", 0	; 4: 83 117 110 0

string_Mon#:
x4977:	db "Mon", 0	; 4: 77 111 110 0

string_Tue#:
x4981:	db "Tue", 0	; 4: 84 117 101 0

string_Wed#:
x4985:	db "Wed", 0	; 4: 87 101 100 0

string_Thu#:
x4989:	db "Thu", 0	; 4: 84 104 117 0

string_Fri#:
x4993:	db "Fri", 0	; 4: 70 114 105 0

string_Sat#:
x4997:	db "Sat", 0	; 4: 83 97 116 0

@10$enLongDayList:
x5001:	dw string_Sunday# ; 2: -105 19
x5003:	dw string_Monday# ; 2: -98 19
x5005:	dw string_Tuesday# ; 2: -91 19
x5007:	dw string_Wednesday# ; 2: -83 19
x5009:	dw string_Thursday# ; 2: -73 19
x5011:	dw string_Friday# ; 2: -64 19
x5013:	dw string_Saturday# ; 2: -57 19

string_Sunday#:
x5015:	db "Sunday", 0	; 7: 83 117 110 100 97 121 0

string_Monday#:
x5022:	db "Monday", 0	; 7: 77 111 110 100 97 121 0

string_Tuesday#:
x5029:	db "Tuesday", 0	; 8: 84 117 101 115 100 97 121 0

string_Wednesday#:
x5037:	db "Wednesday", 0	; 10: 87 101 100 110 101 115 100 97 121 0

string_Thursday#:
x5047:	db "Thursday", 0	; 9: 84 104 117 114 115 100 97 121 0

string_Friday#:
x5056:	db "Friday", 0	; 7: 70 114 105 100 97 121 0

string_Saturday#:
x5063:	db "Saturday", 0	; 9: 83 97 116 117 114 100 97 121 0

@11$enShortMonthList:
x5072:	dw string_Jan# ; 2: -24 19
x5074:	dw string_Feb# ; 2: -20 19
x5076:	dw string_Mar# ; 2: -16 19
x5078:	dw string_Apr# ; 2: -12 19
x5080:	dw string_May# ; 2: -8 19
x5082:	dw string_Jun# ; 2: -4 19
x5084:	dw string_Jul# ; 2: 0 20
x5086:	dw string_Aug# ; 2: 4 20
x5088:	dw string_Sep# ; 2: 8 20
x5090:	dw string_Oct# ; 2: 12 20
x5092:	dw string_Nov# ; 2: 16 20
x5094:	dw string_Dec# ; 2: 20 20

string_Jan#:
x5096:	db "Jan", 0	; 4: 74 97 110 0

string_Feb#:
x5100:	db "Feb", 0	; 4: 70 101 98 0

string_Mar#:
x5104:	db "Mar", 0	; 4: 77 97 114 0

string_Apr#:
x5108:	db "Apr", 0	; 4: 65 112 114 0

string_May#:
x5112:	db "May", 0	; 4: 77 97 121 0

string_Jun#:
x5116:	db "Jun", 0	; 4: 74 117 110 0

string_Jul#:
x5120:	db "Jul", 0	; 4: 74 117 108 0

string_Aug#:
x5124:	db "Aug", 0	; 4: 65 117 103 0

string_Sep#:
x5128:	db "Sep", 0	; 4: 83 101 112 0

string_Oct#:
x5132:	db "Oct", 0	; 4: 79 99 116 0

string_Nov#:
x5136:	db "Nov", 0	; 4: 78 111 118 0

string_Dec#:
x5140:	db "Dec", 0	; 4: 68 101 99 0

@12$enLongMonthList:
x5144:	dw string_January# ; 2: 48 20
x5146:	dw string_February# ; 2: 56 20
x5148:	dw string_March# ; 2: 65 20
x5150:	dw string_April# ; 2: 71 20
x5152:	dw string_May# ; 2: -8 19
x5154:	dw string_June# ; 2: 77 20
x5156:	dw string_July# ; 2: 82 20
x5158:	dw string_August# ; 2: 87 20
x5160:	dw string_September# ; 2: 94 20
x5162:	dw string_October# ; 2: 104 20
x5164:	dw string_November# ; 2: 112 20
x5166:	dw string_December# ; 2: 121 20

string_January#:
x5168:	db "January", 0	; 8: 74 97 110 117 97 114 121 0

string_February#:
x5176:	db "February", 0	; 9: 70 101 98 114 117 97 114 121 0

string_March#:
x5185:	db "March", 0	; 6: 77 97 114 99 104 0

string_April#:
x5191:	db "April", 0	; 6: 65 112 114 105 108 0

string_June#:
x5197:	db "June", 0	; 5: 74 117 110 101 0

string_July#:
x5202:	db "July", 0	; 5: 74 117 108 121 0

string_August#:
x5207:	db "August", 0	; 7: 65 117 103 117 115 116 0

string_September#:
x5214:	db "September", 0	; 10: 83 101 112 116 101 109 98 101 114 0

string_October#:
x5224:	db "October", 0	; 8: 79 99 116 111 98 101 114 0

string_November#:
x5232:	db "November", 0	; 9: 78 111 118 101 109 98 101 114 0

string_December#:
x5241:	db "December", 0	; 9: 68 101 99 101 109 98 101 114 0

string_abcdefghijklmnopqrstuvwxyz#:
x5250:	db "abcdefghijklmnopqrstuvwxyz", 0	; 27: 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
x5277:	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0	; 27: 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 0

enMessageList:
x5304:	dw string_no20error# ; 2: -32 20
x5306:	dw string_function20number20invalid# ; 2: -23 20
x5308:	dw string_file20not20found# ; 2: 1 21
x5310:	dw string_path20not20found# ; 2: 16 21
x5312:	dw string_no20handle20available# ; 2: 31 21
x5314:	dw string_access20denied# ; 2: 51 21
x5316:	dw string_out20of20domain# ; 2: 65 21
x5318:	dw string_out20of20range# ; 2: 79 21
x5320:	dw string_invalid20multibyte20sequence# ; 2: 92 21
x5322:	dw string_error20while20opening# ; 2: 119 21
x5324:	dw string_error20while20flushing# ; 2: -117 21
x5326:	dw string_error20while20closing# ; 2: -96 21
x5328:	dw string_open20mode20invalid# ; 2: -76 21
x5330:	dw string_error20while20writing# ; 2: -58 21
x5332:	dw string_error20while20reading# ; 2: -38 21
x5334:	dw string_error20while20seeking# ; 2: -18 21
x5336:	dw string_error20while20telling# ; 2: 2 22
x5338:	dw string_error20while20sizing# ; 2: 22 22
x5340:	dw string_error20while20removing20file# ; 2: 41 22
x5342:	dw string_error20while20renaming20file# ; 2: 67 22

string_no20error#:
x5344:	db "no error", 0	; 9: 110 111 32 101 114 114 111 114 0

string_function20number20invalid#:
x5353:	db "function number invalid", 0	; 24: 102 117 110 99 116 105 111 110 32 110 117 109 98 101 114 32 105 110 118 97 108 105 100 0

string_file20not20found#:
x5377:	db "file not found", 0	; 15: 102 105 108 101 32 110 111 116 32 102 111 117 110 100 0

string_path20not20found#:
x5392:	db "path not found", 0	; 15: 112 97 116 104 32 110 111 116 32 102 111 117 110 100 0

string_no20handle20available#:
x5407:	db "no handle available", 0	; 20: 110 111 32 104 97 110 100 108 101 32 97 118 97 105 108 97 98 108 101 0

string_access20denied#:
x5427:	db "access denied", 0	; 14: 97 99 99 101 115 115 32 100 101 110 105 101 100 0

string_out20of20domain#:
x5441:	db "out of domain", 0	; 14: 111 117 116 32 111 102 32 100 111 109 97 105 110 0

string_out20of20range#:
x5455:	db "out of range", 0	; 13: 111 117 116 32 111 102 32 114 97 110 103 101 0

string_invalid20multibyte20sequence#:
x5468:	db "invalid multibyte sequence", 0	; 27: 105 110 118 97 108 105 100 32 109 117 108 116 105 98 121 116 101 32 115 101 113 117 101 110 99 101 0

string_error20while20opening#:
x5495:	db "error while opening", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 111 112 101 110 105 110 103 0

string_error20while20flushing#:
x5515:	db "error while flushing", 0	; 21: 101 114 114 111 114 32 119 104 105 108 101 32 102 108 117 115 104 105 110 103 0

string_error20while20closing#:
x5536:	db "error while closing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 99 108 111 115 105 110 103 0

string_open20mode20invalid#:
x5556:	db "open mode invalid", 0	; 18: 111 112 101 110 32 109 111 100 101 32 105 110 118 97 108 105 100 0

string_error20while20writing#:
x5574:	db "error while writing", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 119 114 105 116 105 110 103 0

string_error20while20reading#:
x5594:	db "error while reading", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 97 100 105 110 103 0

string_error20while20seeking#:
x5614:	db "error while seeking", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 115 101 101 107 105 110 103 0

string_error20while20telling#:
x5634:	db "error while telling", 0	; 20: 101 114 114 111 114 32 119 104 105 108 101 32 116 101 108 108 105 110 103 0

string_error20while20sizing#:
x5654:	db "error while sizing", 0	; 19: 101 114 114 111 114 32 119 104 105 108 101 32 115 105 122 105 110 103 0

string_error20while20removing20file#:
x5673:	db "error while removing file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 109 111 118 105 110 103 32 102 105 108 101 0

string_error20while20renaming20file#:
x5699:	db "error while renaming file", 0	; 26: 101 114 114 111 114 32 119 104 105 108 101 32 114 101 110 97 109 105 110 103 32 102 105 108 101 0

string_C#:
x5725:	db "C", 0	; 2: 67 0

string_US#:
x5727:	db "US", 0	; 3: 85 83 0

strchr:	; £temporary4053 = int_to_int i (Signed_Int -> Signed_Char)
x5730:	mov ax, [bp + 8]	; 3: -117 70 8
x5733:	cmp ax, 0	; 3: -125 -8 0
x5736:	jge strchr$1	; 2: 125 4
x5738:	neg ax	; 2: -9 -40
x5740:	neg al	; 2: -10 -40

strchr$1:	; c = £temporary4053
x5742:	mov [bp + 12], al	; 3: -120 70 12

strchr$2:	; index = 0
x5745:	mov word [bp + 10], 0	; 5: -57 70 10 0 0

strchr$3:	; £temporary4055 = text + index
x5750:	mov si, [bp + 6]	; 3: -117 118 6
x5753:	add si, [bp + 10]	; 3: 3 118 10

strchr$4:	; £temporary4054 -> £temporary4055 = *£temporary4055

strchr$5:	; if £temporary4054 -> £temporary4055 == 0 goto 16
x5756:	cmp byte [si], 0	; 3: -128 60 0
x5759:	je strchr$16	; 2: 116 35

strchr$6:	; £temporary4059 = text + index
x5761:	mov si, [bp + 6]	; 3: -117 118 6
x5764:	add si, [bp + 10]	; 3: 3 118 10

strchr$7:	; £temporary4058 -> £temporary4059 = *£temporary4059

strchr$8:	; if £temporary4058 -> £temporary4059 != c goto 14
x5767:	mov al, [bp + 12]	; 3: -118 70 12
x5770:	cmp [si], al	; 2: 56 4
x5772:	jne strchr$14	; 2: 117 17

strchr$9:	; £temporary4062 = text + index
x5774:	mov bx, [bp + 6]	; 3: -117 94 6
x5777:	add bx, [bp + 10]	; 3: 3 94 10

strchr$10:	; £temporary4061 -> £temporary4062 = *£temporary4062

strchr$11:	; £temporary4063 = &£temporary4061 -> £temporary4062

strchr$12:	; return_value = £temporary4063

strchr$13:	; return
x5780:	mov ax, [bp]	; 3: -117 70 0
x5783:	mov di, [bp + 4]	; 3: -117 126 4
x5786:	mov bp, [bp + 2]	; 3: -117 110 2
x5789:	jmp ax	; 2: -1 -32

strchr$14:	; ++index
x5791:	inc word [bp + 10]	; 3: -1 70 10

strchr$15:	; goto 3
x5794:	jmp strchr$3	; 2: -21 -46

strchr$16:	; return_value = 0
x5796:	mov bx, 0	; 3: -69 0 0

strchr$17:	; return
x5799:	mov ax, [bp]	; 3: -117 70 0
x5802:	mov di, [bp + 4]	; 3: -117 126 4
x5805:	mov bp, [bp + 2]	; 3: -117 110 2
x5808:	jmp ax	; 2: -1 -32

strchr$18:	; function end strchr

printUnsignedLong:	; if plus == 0 goto 5
x5810:	cmp word [bp + 10], 0	; 4: -125 126 10 0
x5814:	je printUnsignedLong$5	; 2: 116 18

printUnsignedLong$1:	; call header integral zero 0 stack zero 0

printUnsignedLong$2:	; parameter 43, offset 6
x5816:	mov byte [bp + 28], 43	; 4: -58 70 28 43

printUnsignedLong$3:	; call function noellipse-noellipse printChar
x5820:	mov word [bp + 22], printUnsignedLong$4	; 5: -57 70 22 -54 22
x5825:	mov [bp + 24], bp	; 3: -119 110 24
x5828:	add bp, 22	; 3: -125 -59 22
x5831:	jmp printChar	; 3: -23 51 -6

printUnsignedLong$4:	; post call

printUnsignedLong$5:	; if space == 0 goto 10
x5834:	cmp word [bp + 12], 0	; 4: -125 126 12 0
x5838:	je printUnsignedLong$10	; 2: 116 18

printUnsignedLong$6:	; call header integral zero 0 stack zero 0

printUnsignedLong$7:	; parameter 32, offset 6
x5840:	mov byte [bp + 28], 32	; 4: -58 70 28 32

printUnsignedLong$8:	; call function noellipse-noellipse printChar
x5844:	mov word [bp + 22], printUnsignedLong$9	; 5: -57 70 22 -30 22
x5849:	mov [bp + 24], bp	; 3: -119 110 24
x5852:	add bp, 22	; 3: -125 -59 22
x5855:	jmp printChar	; 3: -23 27 -6

printUnsignedLong$9:	; post call

printUnsignedLong$10:	; if grid == 0 goto 29
x5858:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x5862:	je printUnsignedLong$29	; 2: 116 79

printUnsignedLong$11:	; if base != 8 goto 16
x5864:	cmp dword [bp + 16], 8	; 5: 102 -125 126 16 8
x5869:	jne printUnsignedLong$16	; 2: 117 18

printUnsignedLong$12:	; call header integral zero 0 stack zero 0

printUnsignedLong$13:	; parameter 48, offset 6
x5871:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$14:	; call function noellipse-noellipse printChar
x5875:	mov word [bp + 22], printUnsignedLong$15	; 5: -57 70 22 1 23
x5880:	mov [bp + 24], bp	; 3: -119 110 24
x5883:	add bp, 22	; 3: -125 -59 22
x5886:	jmp printChar	; 3: -23 -4 -7

printUnsignedLong$15:	; post call

printUnsignedLong$16:	; if base != 16 goto 29
x5889:	cmp dword [bp + 16], 16	; 5: 102 -125 126 16 16
x5894:	jne printUnsignedLong$29	; 2: 117 47

printUnsignedLong$17:	; call header integral zero 0 stack zero 0

printUnsignedLong$18:	; parameter 48, offset 6
x5896:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$19:	; call function noellipse-noellipse printChar
x5900:	mov word [bp + 22], printUnsignedLong$20	; 5: -57 70 22 26 23
x5905:	mov [bp + 24], bp	; 3: -119 110 24
x5908:	add bp, 22	; 3: -125 -59 22
x5911:	jmp printChar	; 3: -23 -29 -7

printUnsignedLong$20:	; post call

printUnsignedLong$21:	; call header integral zero 0 stack zero 0

printUnsignedLong$22:	; if capital == 0 goto 25
x5914:	cmp word [bp + 20], 0	; 4: -125 126 20 0
x5918:	je printUnsignedLong$25	; 2: 116 4

printUnsignedLong$23:	; £temporary1895 = 88
x5920:	mov al, 88	; 2: -80 88

printUnsignedLong$24:	; goto 26
x5922:	jmp printUnsignedLong$26	; 2: -21 2

printUnsignedLong$25:	; £temporary1895 = 120
x5924:	mov al, 120	; 2: -80 120

printUnsignedLong$26:	; parameter £temporary1895, offset 6
x5926:	mov [bp + 28], al	; 3: -120 70 28

printUnsignedLong$27:	; call function noellipse-noellipse printChar
x5929:	mov word [bp + 22], printUnsignedLong$28	; 5: -57 70 22 55 23
x5934:	mov [bp + 24], bp	; 3: -119 110 24
x5937:	add bp, 22	; 3: -125 -59 22
x5940:	jmp printChar	; 3: -23 -58 -7

printUnsignedLong$28:	; post call

printUnsignedLong$29:	; if unsignedValue != 0 goto 35
x5943:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x5948:	jne printUnsignedLong$35	; 2: 117 20

printUnsignedLong$30:	; call header integral zero 0 stack zero 0

printUnsignedLong$31:	; parameter 48, offset 6
x5950:	mov byte [bp + 28], 48	; 4: -58 70 28 48

printUnsignedLong$32:	; call function noellipse-noellipse printChar
x5954:	mov word [bp + 22], printUnsignedLong$33	; 5: -57 70 22 80 23
x5959:	mov [bp + 24], bp	; 3: -119 110 24
x5962:	add bp, 22	; 3: -125 -59 22
x5965:	jmp printChar	; 3: -23 -83 -7

printUnsignedLong$33:	; post call

printUnsignedLong$34:	; goto 41
x5968:	jmp printUnsignedLong$41	; 2: -21 36

printUnsignedLong$35:	; call header integral zero 0 stack zero 0

printUnsignedLong$36:	; parameter unsignedValue, offset 6
x5970:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x5974:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLong$37:	; parameter base, offset 10
x5978:	mov eax, [bp + 16]	; 4: 102 -117 70 16
x5982:	mov [bp + 32], eax	; 4: 102 -119 70 32

printUnsignedLong$38:	; parameter capital, offset 14
x5986:	mov ax, [bp + 20]	; 3: -117 70 20
x5989:	mov [bp + 36], ax	; 3: -119 70 36

printUnsignedLong$39:	; call function noellipse-noellipse printUnsignedLongRec
x5992:	mov word [bp + 22], printUnsignedLong$40	; 5: -57 70 22 118 23
x5997:	mov [bp + 24], bp	; 3: -119 110 24
x6000:	add bp, 22	; 3: -125 -59 22
x6003:	nop	; 1: -112
x6004:	jmp printUnsignedLongRec	; 2: -21 11

printUnsignedLong$40:	; post call

printUnsignedLong$41:	; return
x6006:	mov ax, [bp]	; 3: -117 70 0
x6009:	mov di, [bp + 4]	; 3: -117 126 4
x6012:	mov bp, [bp + 2]	; 3: -117 110 2
x6015:	jmp ax	; 2: -1 -32

printUnsignedLong$42:	; function end printUnsignedLong

printUnsignedLongRec:	; if unsignedValue <= 0 goto 22
x6017:	cmp dword [bp + 6], 0	; 5: 102 -125 126 6 0
x6022:	jbe printUnsignedLongRec$22	; 2: 118 106

printUnsignedLongRec$1:	; £temporary1871 = unsignedValue % base
x6024:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6028:	xor edx, edx	; 3: 102 49 -46
x6031:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$2:	; £temporary1872 = int_to_int £temporary1871 (Unsigned_Long_Int -> Signed_Int)

printUnsignedLongRec$3:	; digit = £temporary1872
x6035:	mov [bp + 16], dx	; 3: -119 86 16

printUnsignedLongRec$4:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$5:	; £temporary1873 = unsignedValue / base
x6038:	mov eax, [bp + 6]	; 4: 102 -117 70 6
x6042:	xor edx, edx	; 3: 102 49 -46
x6045:	div dword [bp + 10]	; 4: 102 -9 118 10

printUnsignedLongRec$6:	; parameter £temporary1873, offset 6
x6049:	mov [bp + 24], eax	; 4: 102 -119 70 24

printUnsignedLongRec$7:	; parameter base, offset 10
x6053:	mov eax, [bp + 10]	; 4: 102 -117 70 10
x6057:	mov [bp + 28], eax	; 4: 102 -119 70 28

printUnsignedLongRec$8:	; parameter capital, offset 14
x6061:	mov ax, [bp + 14]	; 3: -117 70 14
x6064:	mov [bp + 32], ax	; 3: -119 70 32

printUnsignedLongRec$9:	; call function noellipse-noellipse printUnsignedLongRec
x6067:	mov word [bp + 18], printUnsignedLongRec$10	; 5: -57 70 18 -63 23
x6072:	mov [bp + 20], bp	; 3: -119 110 20
x6075:	add bp, 18	; 3: -125 -59 18
x6078:	nop	; 1: -112
x6079:	jmp printUnsignedLongRec	; 2: -21 -64

printUnsignedLongRec$10:	; post call

printUnsignedLongRec$11:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$12:	; parameter digit, offset 6
x6081:	mov ax, [bp + 16]	; 3: -117 70 16
x6084:	mov [bp + 24], ax	; 3: -119 70 24

printUnsignedLongRec$13:	; parameter capital, offset 8
x6087:	mov ax, [bp + 14]	; 3: -117 70 14
x6090:	mov [bp + 26], ax	; 3: -119 70 26

printUnsignedLongRec$14:	; call function noellipse-noellipse digitToChar
x6093:	mov word [bp + 18], printUnsignedLongRec$15	; 5: -57 70 18 -37 23
x6098:	mov [bp + 20], bp	; 3: -119 110 20
x6101:	add bp, 18	; 3: -125 -59 18
x6104:	nop	; 1: -112
x6105:	jmp digitToChar	; 2: -21 34

printUnsignedLongRec$15:	; post call

printUnsignedLongRec$16:	; £temporary1875 = return_value

printUnsignedLongRec$17:	; c = £temporary1875
x6107:	mov [bp + 18], bl	; 3: -120 94 18

printUnsignedLongRec$18:	; call header integral zero 0 stack zero 0

printUnsignedLongRec$19:	; parameter c, offset 6
x6110:	mov al, [bp + 18]	; 3: -118 70 18
x6113:	mov [bp + 25], al	; 3: -120 70 25

printUnsignedLongRec$20:	; call function noellipse-noellipse printChar
x6116:	mov word [bp + 19], printUnsignedLongRec$21	; 5: -57 70 19 -14 23
x6121:	mov [bp + 21], bp	; 3: -119 110 21
x6124:	add bp, 19	; 3: -125 -59 19
x6127:	jmp printChar	; 3: -23 11 -7

printUnsignedLongRec$21:	; post call

printUnsignedLongRec$22:	; return
x6130:	mov ax, [bp]	; 3: -117 70 0
x6133:	mov di, [bp + 4]	; 3: -117 126 4
x6136:	mov bp, [bp + 2]	; 3: -117 110 2
x6139:	jmp ax	; 2: -1 -32

printUnsignedLongRec$23:	; function end printUnsignedLongRec

digitToChar:	; if digit >= 10 goto 5
x6141:	cmp word [bp + 6], 10	; 4: -125 126 6 10
x6145:	jge digitToChar$5	; 2: 125 26

digitToChar$1:	; £temporary1861 = digit + 48
x6147:	mov bx, [bp + 6]	; 3: -117 94 6
x6150:	add bx, 48	; 3: -125 -61 48

digitToChar$2:	; £temporary1862 = int_to_int £temporary1861 (Signed_Int -> Signed_Char)
x6153:	cmp bx, 0	; 3: -125 -5 0
x6156:	jge digitToChar$3	; 2: 125 4
x6158:	neg bx	; 2: -9 -37
x6160:	neg bl	; 2: -10 -37

digitToChar$3:	; return_value = £temporary1862

digitToChar$4:	; return
x6162:	mov ax, [bp]	; 3: -117 70 0
x6165:	mov di, [bp + 4]	; 3: -117 126 4
x6168:	mov bp, [bp + 2]	; 3: -117 110 2
x6171:	jmp ax	; 2: -1 -32

digitToChar$5:	; if capital == 0 goto 11
x6173:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6177:	je digitToChar$11	; 2: 116 29

digitToChar$6:	; £temporary1863 = digit - 10
x6179:	mov bx, [bp + 6]	; 3: -117 94 6
x6182:	sub bx, 10	; 3: -125 -21 10

digitToChar$7:	; £temporary1864 = £temporary1863 + 65
x6185:	add bx, 65	; 3: -125 -61 65

digitToChar$8:	; £temporary1865 = int_to_int £temporary1864 (Signed_Int -> Signed_Char)
x6188:	cmp bx, 0	; 3: -125 -5 0
x6191:	jge digitToChar$9	; 2: 125 4
x6193:	neg bx	; 2: -9 -37
x6195:	neg bl	; 2: -10 -37

digitToChar$9:	; return_value = £temporary1865

digitToChar$10:	; return
x6197:	mov ax, [bp]	; 3: -117 70 0
x6200:	mov di, [bp + 4]	; 3: -117 126 4
x6203:	mov bp, [bp + 2]	; 3: -117 110 2
x6206:	jmp ax	; 2: -1 -32

digitToChar$11:	; £temporary1866 = digit - 10
x6208:	mov bx, [bp + 6]	; 3: -117 94 6
x6211:	sub bx, 10	; 3: -125 -21 10

digitToChar$12:	; £temporary1867 = £temporary1866 + 97
x6214:	add bx, 97	; 3: -125 -61 97

digitToChar$13:	; £temporary1868 = int_to_int £temporary1867 (Signed_Int -> Signed_Char)
x6217:	cmp bx, 0	; 3: -125 -5 0
x6220:	jge digitToChar$14	; 2: 125 4
x6222:	neg bx	; 2: -9 -37
x6224:	neg bl	; 2: -10 -37

digitToChar$14:	; return_value = £temporary1868

digitToChar$15:	; return
x6226:	mov ax, [bp]	; 3: -117 70 0
x6229:	mov di, [bp + 4]	; 3: -117 126 4
x6232:	mov bp, [bp + 2]	; 3: -117 110 2
x6235:	jmp ax	; 2: -1 -32

digitToChar$16:	; function end digitToChar

printLongDoublePlain:	; push float longDoubleValue
x6237:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$1:	; push float 0.0
x6240:	fldz	; 2: -39 -18

printLongDoublePlain$2:	; if longDoubleValue >= 0.0 goto 12
x6242:	fcompp	; 2: -34 -39
x6244:	fstsw ax	; 3: -101 -33 -32
x6247:	sahf	; 1: -98
x6248:	jbe printLongDoublePlain$12	; 2: 118 36

printLongDoublePlain$3:	; call header integral zero 0 stack zero 0

printLongDoublePlain$4:	; parameter 45, offset 6
x6250:	mov byte [bp + 28], 45	; 4: -58 70 28 45

printLongDoublePlain$5:	; call function noellipse-noellipse printChar
x6254:	mov word [bp + 22], printLongDoublePlain$6	; 5: -57 70 22 124 24
x6259:	mov [bp + 24], bp	; 3: -119 110 24
x6262:	add bp, 22	; 3: -125 -59 22
x6265:	jmp printChar	; 3: -23 -127 -8

printLongDoublePlain$6:	; post call

printLongDoublePlain$7:	; push float longDoubleValue
x6268:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$8:	; £temporary1931 = -longDoubleValue
x6271:	fchs	; 2: -39 -32

printLongDoublePlain$9:	; pop float longDoubleValue
x6273:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$10:	; plus = 0
x6276:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

printLongDoublePlain$11:	; space = 0
x6281:	mov word [bp + 16], 0	; 5: -57 70 16 0 0

printLongDoublePlain$12:	; push float longDoubleValue
x6286:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$13:	; £temporary1932 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x6289:	fistp dword [container4bytes#]	; 4: -37 30 -11 24
x6293:	mov eax, [container4bytes#]	; 4: 102 -95 -11 24

printLongDoublePlain$14:	; longValue = £temporary1932
x6297:	mov [bp + 22], eax	; 4: 102 -119 70 22

printLongDoublePlain$15:	; call header integral zero 0 stack zero 0

printLongDoublePlain$16:	; parameter longValue, offset 6
x6301:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x6305:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoublePlain$17:	; parameter plus, offset 10
x6309:	mov ax, [bp + 14]	; 3: -117 70 14
x6312:	mov [bp + 36], ax	; 3: -119 70 36

printLongDoublePlain$18:	; parameter space, offset 12
x6315:	mov ax, [bp + 16]	; 3: -117 70 16
x6318:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoublePlain$19:	; call function noellipse-noellipse printLongInt
x6321:	mov word [bp + 26], printLongDoublePlain$20	; 5: -57 70 26 -65 24
x6326:	mov [bp + 28], bp	; 3: -119 110 28
x6329:	add bp, 26	; 3: -125 -59 26
x6332:	jmp printLongInt	; 3: -23 -86 -9

printLongDoublePlain$20:	; post call

printLongDoublePlain$21:	; push float longDoubleValue
x6335:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$22:	; £temporary1934 = int_to_float longValue (Signed_Long_Int -> Long_Double)
x6338:	fild dword [bp + 22]	; 3: -37 70 22

printLongDoublePlain$23:	; £temporary1935 = longDoubleValue - £temporary1934
x6341:	fsub	; 2: -34 -23

printLongDoublePlain$24:	; pop float longDoubleValue
x6343:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoublePlain$25:	; call header integral zero 0 stack zero 0

printLongDoublePlain$26:	; push float longDoubleValue
x6346:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoublePlain$27:	; parameter longDoubleValue, offset 6
x6349:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoublePlain$28:	; parameter grid, offset 14
x6352:	mov ax, [bp + 18]	; 3: -117 70 18
x6355:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoublePlain$29:	; parameter precision, offset 16
x6358:	mov ax, [bp + 20]	; 3: -117 70 20
x6361:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoublePlain$30:	; call function noellipse-noellipse printLongDoubleFraction
x6364:	mov word [bp + 26], printLongDoublePlain$31	; 5: -57 70 26 -22 24
x6369:	mov [bp + 28], bp	; 3: -119 110 28
x6372:	add bp, 26	; 3: -125 -59 26
x6375:	nop	; 1: -112
x6376:	jmp printLongDoubleFraction	; 2: -21 15

printLongDoublePlain$31:	; post call

printLongDoublePlain$32:	; return
x6378:	mov ax, [bp]	; 3: -117 70 0
x6381:	mov di, [bp + 4]	; 3: -117 126 4
x6384:	mov bp, [bp + 2]	; 3: -117 110 2
x6387:	jmp ax	; 2: -1 -32

printLongDoublePlain$33:	; function end printLongDoublePlain

container4bytes#:
x6389:	db 0, 0, 0, 0	; 4: 0 0 0 0

printLongDoubleFraction:	; push float longDoubleValue
x6393:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$1:	; push float longDoubleValue
x6396:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$2:	; £temporary1910 = float_to_int longDoubleValue (Long_Double -> Signed_Long_Int)
x6399:	fistp dword [container4bytes#]	; 4: -37 30 -11 24
x6403:	mov eax, [container4bytes#]	; 4: 102 -95 -11 24

printLongDoubleFraction$3:	; £temporary1911 = int_to_float £temporary1910 (Signed_Long_Int -> Long_Double)
x6407:	mov [container4bytes#], eax	; 4: 102 -93 -11 24
x6411:	fild dword [container4bytes#]	; 4: -37 6 -11 24

printLongDoubleFraction$4:	; £temporary1912 = longDoubleValue - £temporary1911
x6415:	fsub	; 2: -34 -23

printLongDoubleFraction$5:	; pop float longDoubleValue
x6417:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$6:	; if precision != 0 goto 8
x6420:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x6424:	jne printLongDoubleFraction$8	; 2: 117 5

printLongDoubleFraction$7:	; precision = 6
x6426:	mov word [bp + 16], 6	; 5: -57 70 16 6 0

printLongDoubleFraction$8:	; if grid != 0 goto 10
x6431:	cmp word [bp + 14], 0	; 4: -125 126 14 0
x6435:	jne printLongDoubleFraction$10	; 2: 117 6

printLongDoubleFraction$9:	; if precision <= 0 goto 14
x6437:	cmp word [bp + 16], 0	; 4: -125 126 16 0
x6441:	jle printLongDoubleFraction$14	; 2: 126 18

printLongDoubleFraction$10:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$11:	; parameter 46, offset 6
x6443:	mov byte [bp + 24], 46	; 4: -58 70 24 46

printLongDoubleFraction$12:	; call function noellipse-noellipse printChar
x6447:	mov word [bp + 18], printLongDoubleFraction$13	; 5: -57 70 18 61 25
x6452:	mov [bp + 20], bp	; 3: -119 110 20
x6455:	add bp, 18	; 3: -125 -59 18
x6458:	jmp printChar	; 3: -23 -64 -9

printLongDoubleFraction$13:	; post call

printLongDoubleFraction$14:	; £temporary1918 = precision
x6461:	mov ax, [bp + 16]	; 3: -117 70 16

printLongDoubleFraction$15:	; --precision
x6464:	dec word [bp + 16]	; 3: -1 78 16

printLongDoubleFraction$16:	; if £temporary1918 <= 0 goto 35
x6467:	cmp ax, 0	; 3: -125 -8 0
x6470:	jle printLongDoubleFraction$35	; 2: 126 70

printLongDoubleFraction$17:	; push float 10.0
x6472:	fld qword [float8$10.0#]	; 4: -35 6 -103 25

printLongDoubleFraction$18:	; push float longDoubleValue
x6476:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleFraction$19:	; £temporary1920 = 10.0 * longDoubleValue
x6479:	fmul	; 2: -34 -55

printLongDoubleFraction$20:	; pop float longDoubleValue10
x6481:	fstp qword [bp + 18]	; 3: -35 94 18

printLongDoubleFraction$21:	; push float longDoubleValue10
x6484:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$22:	; £temporary1921 = float_to_int longDoubleValue10 (Long_Double -> Signed_Int)
x6487:	fistp word [container2bytes#]	; 4: -33 30 -4 15
x6491:	mov ax, [container2bytes#]	; 3: -95 -4 15

printLongDoubleFraction$23:	; digitValue = £temporary1921
x6494:	mov [bp + 26], ax	; 3: -119 70 26

printLongDoubleFraction$24:	; call header integral zero 0 stack zero 0

printLongDoubleFraction$25:	; £temporary1922 = digitValue + 48
x6497:	mov ax, [bp + 26]	; 3: -117 70 26
x6500:	add ax, 48	; 3: -125 -64 48

printLongDoubleFraction$26:	; £temporary1923 = int_to_int £temporary1922 (Signed_Int -> Signed_Char)
x6503:	cmp ax, 0	; 3: -125 -8 0
x6506:	jge printLongDoubleFraction$27	; 2: 125 4
x6508:	neg ax	; 2: -9 -40
x6510:	neg al	; 2: -10 -40

printLongDoubleFraction$27:	; parameter £temporary1923, offset 6
x6512:	mov [bp + 34], al	; 3: -120 70 34

printLongDoubleFraction$28:	; call function noellipse-noellipse printChar
x6515:	mov word [bp + 28], printLongDoubleFraction$29	; 5: -57 70 28 -127 25
x6520:	mov [bp + 30], bp	; 3: -119 110 30
x6523:	add bp, 28	; 3: -125 -59 28
x6526:	jmp printChar	; 3: -23 124 -9

printLongDoubleFraction$29:	; post call

printLongDoubleFraction$30:	; push float longDoubleValue10
x6529:	fld qword [bp + 18]	; 3: -35 70 18

printLongDoubleFraction$31:	; £temporary1925 = int_to_float digitValue (Signed_Int -> Long_Double)
x6532:	fild word [bp + 26]	; 3: -33 70 26

printLongDoubleFraction$32:	; £temporary1926 = longDoubleValue10 - £temporary1925
x6535:	fsub	; 2: -34 -23

printLongDoubleFraction$33:	; pop float longDoubleValue
x6537:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleFraction$34:	; goto 14
x6540:	jmp printLongDoubleFraction$14	; 2: -21 -81

printLongDoubleFraction$35:	; return
x6542:	mov ax, [bp]	; 3: -117 70 0
x6545:	mov di, [bp + 4]	; 3: -117 126 4
x6548:	mov bp, [bp + 2]	; 3: -117 110 2
x6551:	jmp ax	; 2: -1 -32

printLongDoubleFraction$36:	; function end printLongDoubleFraction

float8$10.0#:
x6553:	dq 10.0	; 8: 0 0 0 0 0 0 36 64

fabs:	; push float x
x6561:	fld qword [bp + 6]	; 3: -35 70 6

fabs$1:	; push 0
x6564:	fldz	; 2: -39 -18

fabs$2:	; if x >= 0 goto 7
x6566:	fcompp	; 2: -34 -39
x6568:	fstsw ax	; 3: -101 -33 -32
x6571:	sahf	; 1: -98
x6572:	jbe fabs$7	; 2: 118 7

fabs$3:	; push float x
x6574:	fld qword [bp + 6]	; 3: -35 70 6

fabs$4:	; £temporary829 = -x
x6577:	fchs	; 2: -39 -32

fabs$5:	; decrease stack

fabs$6:	; goto 8
x6579:	jmp fabs$8	; 2: -21 3

fabs$7:	; push float x
x6581:	fld qword [bp + 6]	; 3: -35 70 6

fabs$8:	; return_value = £temporary833

fabs$9:	; return
x6584:	mov ax, [bp]	; 3: -117 70 0
x6587:	mov di, [bp + 4]	; 3: -117 126 4
x6590:	mov bp, [bp + 2]	; 3: -117 110 2
x6593:	jmp ax	; 2: -1 -32

fabs$10:	; function end fabs

tolower:	; call header integral zero 0 stack zero 0

tolower$1:	; parameter c, offset 6
x6595:	mov ax, [bp + 6]	; 3: -117 70 6
x6598:	mov [bp + 14], ax	; 3: -119 70 14

tolower$2:	; call function noellipse-noellipse isupper
x6601:	mov word [bp + 8], tolower$3	; 5: -57 70 8 -41 25
x6606:	mov [bp + 10], bp	; 3: -119 110 10
x6609:	add bp, 8	; 3: -125 -59 8
x6612:	jmp isupper	; 3: -23 -34 -8

tolower$3:	; post call

tolower$4:	; £temporary463 = return_value

tolower$5:	; if £temporary463 == 0 goto 31
x6615:	cmp bx, 0	; 3: -125 -5 0
x6618:	je tolower$31	; 2: 116 122

tolower$6:	; call header integral zero 0 stack zero 0

tolower$7:	; call function noellipse-noellipse localeconv
x6620:	mov word [bp + 8], tolower$8	; 5: -57 70 8 -22 25
x6625:	mov [bp + 10], bp	; 3: -119 110 10
x6628:	add bp, 8	; 3: -125 -59 8
x6631:	jmp localeconv	; 3: -23 54 -7

tolower$8:	; post call

tolower$9:	; £temporary464 = return_value

tolower$10:	; localeConvPtr = £temporary464
x6634:	mov [bp + 8], bx	; 3: -119 94 8

tolower$11:	; if localeConvPtr == 0 goto 28
x6637:	cmp word [bp + 8], 0	; 4: -125 126 8 0
x6641:	je tolower$28	; 2: 116 82

tolower$12:	; £temporary466 -> localeConvPtr = *localeConvPtr, offset 12
x6643:	mov si, [bp + 8]	; 3: -117 118 8

tolower$13:	; lowerCase = £temporary466 -> localeConvPtr
x6646:	mov ax, [si + 12]	; 3: -117 68 12
x6649:	mov [bp + 10], ax	; 3: -119 70 10

tolower$14:	; £temporary467 -> localeConvPtr = *localeConvPtr, offset 14
x6652:	mov si, [bp + 8]	; 3: -117 118 8

tolower$15:	; upperCase = £temporary467 -> localeConvPtr
x6655:	mov ax, [si + 14]	; 3: -117 68 14
x6658:	mov [bp + 12], ax	; 3: -119 70 12

tolower$16:	; call header integral zero 0 stack zero 0

tolower$17:	; parameter upperCase, offset 6
x6661:	mov ax, [bp + 12]	; 3: -117 70 12
x6664:	mov [bp + 20], ax	; 3: -119 70 20

tolower$18:	; parameter c, offset 8
x6667:	mov ax, [bp + 6]	; 3: -117 70 6
x6670:	mov [bp + 22], ax	; 3: -119 70 22

tolower$19:	; call function noellipse-noellipse strchr
x6673:	mov word [bp + 14], tolower$20	; 5: -57 70 14 31 26
x6678:	mov [bp + 16], bp	; 3: -119 110 16
x6681:	add bp, 14	; 3: -125 -59 14
x6684:	jmp strchr	; 3: -23 67 -4

tolower$20:	; post call

tolower$21:	; £temporary468 = return_value

tolower$22:	; index = £temporary468 - upperCase
x6687:	sub bx, [bp + 12]	; 3: 43 94 12
x6690:	mov [bp + 14], bx	; 3: -119 94 14

tolower$23:	; £temporary471 = lowerCase + index
x6693:	mov si, [bp + 10]	; 3: -117 118 10
x6696:	add si, [bp + 14]	; 3: 3 118 14

tolower$24:	; £temporary470 -> £temporary471 = *£temporary471

tolower$25:	; £temporary472 = int_to_int £temporary470 -> £temporary471 (Signed_Char -> Signed_Int)
x6699:	mov bl, [si]	; 2: -118 28
x6701:	and bx, 255	; 4: -127 -29 -1 0
x6705:	cmp bl, 0	; 3: -128 -5 0
x6708:	jge tolower$26	; 2: 125 4
x6710:	neg bl	; 2: -10 -37
x6712:	neg bx	; 2: -9 -37

tolower$26:	; return_value = £temporary472

tolower$27:	; return
x6714:	mov ax, [bp]	; 3: -117 70 0
x6717:	mov di, [bp + 4]	; 3: -117 126 4
x6720:	mov bp, [bp + 2]	; 3: -117 110 2
x6723:	jmp ax	; 2: -1 -32

tolower$28:	; £temporary473 = c + 32
x6725:	mov bx, [bp + 6]	; 3: -117 94 6
x6728:	add bx, 32	; 3: -125 -61 32

tolower$29:	; return_value = £temporary473

tolower$30:	; return
x6731:	mov ax, [bp]	; 3: -117 70 0
x6734:	mov di, [bp + 4]	; 3: -117 126 4
x6737:	mov bp, [bp + 2]	; 3: -117 110 2
x6740:	jmp ax	; 2: -1 -32

tolower$31:	; return_value = c
x6742:	mov bx, [bp + 6]	; 3: -117 94 6

tolower$32:	; return
x6745:	mov ax, [bp]	; 3: -117 70 0
x6748:	mov di, [bp + 4]	; 3: -117 126 4
x6751:	mov bp, [bp + 2]	; 3: -117 110 2
x6754:	jmp ax	; 2: -1 -32

tolower$33:	; function end tolower

printLongDoubleExpo:	; push float value
x6756:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$1:	; push float 0.0
x6759:	fldz	; 2: -39 -18

printLongDoubleExpo$2:	; if value != 0.0 goto 27
x6761:	fcompp	; 2: -34 -39
x6763:	fstsw ax	; 3: -101 -33 -32
x6766:	sahf	; 1: -98
x6767:	jne printLongDoubleExpo$27	; 2: 117 99

printLongDoubleExpo$3:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$4:	; parameter 48, offset 6
x6769:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$5:	; call function noellipse-noellipse printChar
x6773:	mov word [bp + 24], printLongDoubleExpo$6	; 5: -57 70 24 -125 26
x6778:	mov [bp + 26], bp	; 3: -119 110 26
x6781:	add bp, 24	; 3: -125 -59 24
x6784:	jmp printChar	; 3: -23 122 -10

printLongDoubleExpo$6:	; post call

printLongDoubleExpo$7:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$8:	; push float 0.0
x6787:	fldz	; 2: -39 -18

printLongDoubleExpo$9:	; parameter 0.0, offset 6
x6789:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$10:	; parameter precision, offset 14
x6792:	mov ax, [bp + 20]	; 3: -117 70 20
x6795:	mov [bp + 38], ax	; 3: -119 70 38

printLongDoubleExpo$11:	; parameter grid, offset 16
x6798:	mov ax, [bp + 18]	; 3: -117 70 18
x6801:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$12:	; call function noellipse-noellipse printLongDoubleFraction
x6804:	mov word [bp + 24], printLongDoubleExpo$13	; 5: -57 70 24 -94 26
x6809:	mov [bp + 26], bp	; 3: -119 110 26
x6812:	add bp, 24	; 3: -125 -59 24
x6815:	jmp printLongDoubleFraction	; 3: -23 87 -2

printLongDoubleExpo$13:	; post call

printLongDoubleExpo$14:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$15:	; if capital == 0 goto 18
x6818:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x6822:	je printLongDoubleExpo$18	; 2: 116 4

printLongDoubleExpo$16:	; £temporary1951 = 69
x6824:	mov al, 69	; 2: -80 69

printLongDoubleExpo$17:	; goto 19
x6826:	jmp printLongDoubleExpo$19	; 2: -21 2

printLongDoubleExpo$18:	; £temporary1951 = 101
x6828:	mov al, 101	; 2: -80 101

printLongDoubleExpo$19:	; parameter £temporary1951, offset 6
x6830:	mov [bp + 30], al	; 3: -120 70 30

printLongDoubleExpo$20:	; call function noellipse-noellipse printChar
x6833:	mov word [bp + 24], printLongDoubleExpo$21	; 5: -57 70 24 -65 26
x6838:	mov [bp + 26], bp	; 3: -119 110 26
x6841:	add bp, 24	; 3: -125 -59 24
x6844:	jmp printChar	; 3: -23 62 -10

printLongDoubleExpo$21:	; post call

printLongDoubleExpo$22:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$23:	; parameter 48, offset 6
x6847:	mov byte [bp + 30], 48	; 4: -58 70 30 48

printLongDoubleExpo$24:	; call function noellipse-noellipse printChar
x6851:	mov word [bp + 24], printLongDoubleExpo$25	; 5: -57 70 24 -47 26
x6856:	mov [bp + 26], bp	; 3: -119 110 26
x6859:	add bp, 24	; 3: -125 -59 24
x6862:	jmp printChar	; 3: -23 44 -10

printLongDoubleExpo$25:	; post call

printLongDoubleExpo$26:	; goto 80
x6865:	jmp printLongDoubleExpo$80	; 3: -23 -20 0

printLongDoubleExpo$27:	; push float value
x6868:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$28:	; push float 0.0
x6871:	fldz	; 2: -39 -18

printLongDoubleExpo$29:	; if value >= 0.0 goto 37
x6873:	fcompp	; 2: -34 -39
x6875:	fstsw ax	; 3: -101 -33 -32
x6878:	sahf	; 1: -98
x6879:	jbe printLongDoubleExpo$37	; 2: 118 26

printLongDoubleExpo$30:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$31:	; parameter 45, offset 6
x6881:	mov byte [bp + 30], 45	; 4: -58 70 30 45

printLongDoubleExpo$32:	; call function noellipse-noellipse printChar
x6885:	mov word [bp + 24], printLongDoubleExpo$33	; 5: -57 70 24 -13 26
x6890:	mov [bp + 26], bp	; 3: -119 110 26
x6893:	add bp, 24	; 3: -125 -59 24
x6896:	jmp printChar	; 3: -23 10 -10

printLongDoubleExpo$33:	; post call

printLongDoubleExpo$34:	; push float value
x6899:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$35:	; £temporary1956 = -value
x6902:	fchs	; 2: -39 -32

printLongDoubleExpo$36:	; pop float value
x6904:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$37:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$38:	; push float value
x6907:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$39:	; parameter value, offset 6
x6910:	fstp qword [bp + 30]	; 3: -35 94 30

printLongDoubleExpo$40:	; call function noellipse-noellipse log10
x6913:	mov word [bp + 24], printLongDoubleExpo$41	; 5: -57 70 24 15 27
x6918:	mov [bp + 26], bp	; 3: -119 110 26
x6921:	add bp, 24	; 3: -125 -59 24
x6924:	jmp log10	; 3: -23 -68 0

printLongDoubleExpo$41:	; post call

printLongDoubleExpo$42:	; £temporary1957 = return_value

printLongDoubleExpo$43:	; £temporary1958 = float_to_int £temporary1957 (Double -> Signed_Int)
x6927:	fistp word [container2bytes#]	; 4: -33 30 -4 15
x6931:	mov ax, [container2bytes#]	; 3: -95 -4 15

printLongDoubleExpo$44:	; expo = £temporary1958
x6934:	mov [bp + 24], ax	; 3: -119 70 24

printLongDoubleExpo$45:	; push float value
x6937:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$46:	; call header integral zero 0 stack no zero 1
x6940:	fstp qword [bp + 26]	; 3: -35 94 26

printLongDoubleExpo$47:	; push float 10.0
x6943:	fld qword [float8$10.0#]	; 4: -35 6 -103 25

printLongDoubleExpo$48:	; parameter 10.0, offset 6
x6947:	fstp qword [bp + 40]	; 3: -35 94 40

printLongDoubleExpo$49:	; £temporary1959 = int_to_float expo (Signed_Int -> Double)
x6950:	fild word [bp + 24]	; 3: -33 70 24

printLongDoubleExpo$50:	; parameter £temporary1959, offset 14
x6953:	fstp qword [bp + 48]	; 3: -35 94 48

printLongDoubleExpo$51:	; call function noellipse-noellipse pow
x6956:	mov word [bp + 34], printLongDoubleExpo$52	; 5: -57 70 34 58 27
x6961:	mov [bp + 36], bp	; 3: -119 110 36
x6964:	add bp, 34	; 3: -125 -59 34
x6967:	jmp pow	; 3: -23 -16 1

printLongDoubleExpo$52:	; post call
x6970:	fstp qword [bp + 34]	; 3: -35 94 34
x6973:	fld qword [bp + 26]	; 3: -35 70 26
x6976:	fld qword [bp + 34]	; 3: -35 70 34

printLongDoubleExpo$53:	; £temporary1960 = return_value

printLongDoubleExpo$54:	; £temporary1961 = value / £temporary1960
x6979:	fdiv	; 2: -34 -7

printLongDoubleExpo$55:	; pop float value
x6981:	fstp qword [bp + 6]	; 3: -35 94 6

printLongDoubleExpo$56:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$57:	; push float value
x6984:	fld qword [bp + 6]	; 3: -35 70 6

printLongDoubleExpo$58:	; parameter value, offset 6
x6987:	fstp qword [bp + 32]	; 3: -35 94 32

printLongDoubleExpo$59:	; parameter plus, offset 14
x6990:	mov ax, [bp + 14]	; 3: -117 70 14
x6993:	mov [bp + 40], ax	; 3: -119 70 40

printLongDoubleExpo$60:	; parameter space, offset 16
x6996:	mov ax, [bp + 16]	; 3: -117 70 16
x6999:	mov [bp + 42], ax	; 3: -119 70 42

printLongDoubleExpo$61:	; parameter grid, offset 18
x7002:	mov ax, [bp + 18]	; 3: -117 70 18
x7005:	mov [bp + 44], ax	; 3: -119 70 44

printLongDoubleExpo$62:	; parameter precision, offset 20
x7008:	mov ax, [bp + 20]	; 3: -117 70 20
x7011:	mov [bp + 46], ax	; 3: -119 70 46

printLongDoubleExpo$63:	; call function noellipse-noellipse printLongDoublePlain
x7014:	mov word [bp + 26], printLongDoubleExpo$64	; 5: -57 70 26 116 27
x7019:	mov [bp + 28], bp	; 3: -119 110 28
x7022:	add bp, 26	; 3: -125 -59 26
x7025:	jmp printLongDoublePlain	; 3: -23 -23 -4

printLongDoubleExpo$64:	; post call

printLongDoubleExpo$65:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$66:	; if capital == 0 goto 69
x7028:	cmp word [bp + 22], 0	; 4: -125 126 22 0
x7032:	je printLongDoubleExpo$69	; 2: 116 4

printLongDoubleExpo$67:	; £temporary1967 = 69
x7034:	mov al, 69	; 2: -80 69

printLongDoubleExpo$68:	; goto 70
x7036:	jmp printLongDoubleExpo$70	; 2: -21 2

printLongDoubleExpo$69:	; £temporary1967 = 101
x7038:	mov al, 101	; 2: -80 101

printLongDoubleExpo$70:	; parameter £temporary1967, offset 6
x7040:	mov [bp + 32], al	; 3: -120 70 32

printLongDoubleExpo$71:	; call function noellipse-noellipse printChar
x7043:	mov word [bp + 26], printLongDoubleExpo$72	; 5: -57 70 26 -111 27
x7048:	mov [bp + 28], bp	; 3: -119 110 28
x7051:	add bp, 26	; 3: -125 -59 26
x7054:	jmp printChar	; 3: -23 108 -11

printLongDoubleExpo$72:	; post call

printLongDoubleExpo$73:	; call header integral zero 0 stack zero 0

printLongDoubleExpo$74:	; £temporary1969 = int_to_int expo (Signed_Int -> Signed_Long_Int)
x7057:	mov ax, [bp + 24]	; 3: -117 70 24
x7060:	and eax, 65535	; 6: 102 37 -1 -1 0 0
x7066:	cmp ax, 0	; 3: -125 -8 0
x7069:	jge printLongDoubleExpo$75	; 2: 125 5
x7071:	neg ax	; 2: -9 -40
x7073:	neg eax	; 3: 102 -9 -40

printLongDoubleExpo$75:	; parameter £temporary1969, offset 6
x7076:	mov [bp + 32], eax	; 4: 102 -119 70 32

printLongDoubleExpo$76:	; parameter 1, offset 10
x7080:	mov word [bp + 36], 1	; 5: -57 70 36 1 0

printLongDoubleExpo$77:	; parameter 0, offset 12
x7085:	mov word [bp + 38], 0	; 5: -57 70 38 0 0

printLongDoubleExpo$78:	; call function noellipse-noellipse printLongInt
x7090:	mov word [bp + 26], printLongDoubleExpo$79	; 5: -57 70 26 -64 27
x7095:	mov [bp + 28], bp	; 3: -119 110 28
x7098:	add bp, 26	; 3: -125 -59 26
x7101:	jmp printLongInt	; 3: -23 -87 -12

printLongDoubleExpo$79:	; post call

printLongDoubleExpo$80:	; return
x7104:	mov ax, [bp]	; 3: -117 70 0
x7107:	mov di, [bp + 4]	; 3: -117 126 4
x7110:	mov bp, [bp + 2]	; 3: -117 110 2
x7113:	jmp ax	; 2: -1 -32

printLongDoubleExpo$81:	; function end printLongDoubleExpo

log10:	; call header integral zero 0 stack zero 0

log10$1:	; push float x
x7115:	fld qword [bp + 6]	; 3: -35 70 6

log10$2:	; parameter x, offset 6
x7118:	fstp qword [bp + 20]	; 3: -35 94 20

log10$3:	; call function noellipse-noellipse log
x7121:	mov word [bp + 14], log10$4	; 5: -57 70 14 -33 27
x7126:	mov [bp + 16], bp	; 3: -119 110 16
x7129:	add bp, 14	; 3: -125 -59 14
x7132:	nop	; 1: -112
x7133:	jmp log	; 2: -21 25

log10$4:	; post call

log10$5:	; £temporary550 = return_value

log10$6:	; push float 2.30
x7135:	fld qword [float8$2.30#]	; 4: -35 6 -16 27

log10$7:	; £temporary551 = £temporary550 / 2.30
x7139:	fdiv	; 2: -34 -7

log10$8:	; return_value = £temporary551

log10$9:	; return
x7141:	mov ax, [bp]	; 3: -117 70 0
x7144:	mov di, [bp + 4]	; 3: -117 126 4
x7147:	mov bp, [bp + 2]	; 3: -117 110 2
x7150:	jmp ax	; 2: -1 -32

log10$10:	; function end log10

float8$2.30#:
x7152:	dq 2.30	; 8: 102 102 102 102 102 102 2 64

log:	; push float x
x7160:	fld qword [bp + 6]	; 3: -35 70 6

log$1:	; push 0
x7163:	fldz	; 2: -39 -18

log$2:	; if x <= 0 goto 76
x7165:	fcompp	; 2: -34 -39
x7167:	fstsw ax	; 3: -101 -33 -32
x7170:	sahf	; 1: -98
x7171:	jae log$76	; 4: 15 -125 -18 0

log$3:	; n = 0
x7175:	mov word [bp + 14], 0	; 5: -57 70 14 0 0

log$4:	; push float x
x7180:	fld qword [bp + 6]	; 3: -35 70 6

log$5:	; push 1
x7183:	fld1	; 2: -39 -24

log$6:	; if x <= 1 goto 16
x7185:	fcompp	; 2: -34 -39
x7187:	fstsw ax	; 3: -101 -33 -32
x7190:	sahf	; 1: -98
x7191:	jae log$16	; 2: 115 30

log$7:	; push float x
x7193:	fld qword [bp + 6]	; 3: -35 70 6

log$8:	; push 1
x7196:	fld1	; 2: -39 -24

log$9:	; if x <= 1 goto 28
x7198:	fcompp	; 2: -34 -39
x7200:	fstsw ax	; 3: -101 -33 -32
x7203:	sahf	; 1: -98
x7204:	jae log$28	; 2: 115 64

log$10:	; push float x
x7206:	fld qword [bp + 6]	; 3: -35 70 6

log$11:	; push float 2.71
x7209:	fld qword [float8$2.71#]	; 4: -35 6 8 29

log$12:	; £temporary532 = x / 2.71
x7213:	fdiv	; 2: -34 -7

log$13:	; pop float x
x7215:	fstp qword [bp + 6]	; 3: -35 94 6

log$14:	; ++n
x7218:	inc word [bp + 14]	; 3: -1 70 14

log$15:	; goto 7
x7221:	jmp log$7	; 2: -21 -30

log$16:	; push float x
x7223:	fld qword [bp + 6]	; 3: -35 70 6

log$17:	; push float 0.3690036900369003690036900369
x7226:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 16 29

log$18:	; if x >= 0.3690036900369003690036900369 goto 28
x7230:	fcompp	; 2: -34 -39
x7232:	fstsw ax	; 3: -101 -33 -32
x7235:	sahf	; 1: -98
x7236:	jbe log$28	; 2: 118 32

log$19:	; push float x
x7238:	fld qword [bp + 6]	; 3: -35 70 6

log$20:	; push float 0.3690036900369003690036900369
x7241:	fld qword [float8$0.3690036900369003690036900369#]	; 4: -35 6 16 29

log$21:	; if x >= 0.3690036900369003690036900369 goto 28
x7245:	fcompp	; 2: -34 -39
x7247:	fstsw ax	; 3: -101 -33 -32
x7250:	sahf	; 1: -98
x7251:	jbe log$28	; 2: 118 17

log$22:	; push float x
x7253:	fld qword [bp + 6]	; 3: -35 70 6

log$23:	; push float 2.71
x7256:	fld qword [float8$2.71#]	; 4: -35 6 8 29

log$24:	; £temporary536 = x * 2.71
x7260:	fmul	; 2: -34 -55

log$25:	; pop float x
x7262:	fstp qword [bp + 6]	; 3: -35 94 6

log$26:	; --n
x7265:	dec word [bp + 14]	; 3: -1 78 14

log$27:	; goto 19
x7268:	jmp log$19	; 2: -21 -32

log$28:	; push 1
x7270:	fld1	; 2: -39 -24

log$29:	; pop float index
x7272:	fstp qword [bp + 16]	; 3: -35 94 16

log$30:	; push 0
x7275:	fldz	; 2: -39 -18

log$31:	; pop float sum
x7277:	fstp qword [bp + 32]	; 3: -35 94 32

log$32:	; push 1
x7280:	fld1	; 2: -39 -24

log$33:	; pop float sign
x7282:	fstp qword [bp + 40]	; 3: -35 94 40

log$34:	; push float x
x7285:	fld qword [bp + 6]	; 3: -35 70 6

log$35:	; push 1
x7288:	fld1	; 2: -39 -24

log$36:	; £temporary538 = x - 1
x7290:	fsub	; 2: -34 -23

log$37:	; pop float x_minus_1
x7292:	fstp qword [bp + 48]	; 3: -35 94 48

log$38:	; push float x_minus_1
x7295:	fld qword [bp + 48]	; 3: -35 70 48

log$39:	; pop float power
x7298:	fstp qword [bp + 56]	; 3: -35 94 56

log$40:	; push float sign
x7301:	fld qword [bp + 40]	; 3: -35 70 40

log$41:	; push float power
x7304:	fld qword [bp + 56]	; 3: -35 70 56

log$42:	; £temporary539 = sign * power
x7307:	fmul	; 2: -34 -55

log$43:	; push float index
x7309:	fld qword [bp + 16]	; 3: -35 70 16

log$44:	; push 1
x7312:	fld1	; 2: -39 -24

log$45:	; index = index + 1
x7314:	fadd	; 2: -34 -63

log$46:	; top float index
x7316:	fst qword [bp + 16]	; 3: -35 86 16

log$47:	; push 1
x7319:	fld1	; 2: -39 -24

log$48:	; index = index - 1
x7321:	fsub	; 2: -34 -23

log$49:	; £temporary541 = £temporary539 / £temporary540
x7323:	fdiv	; 2: -34 -7

log$50:	; pop float term
x7325:	fstp qword [bp + 24]	; 3: -35 94 24

log$51:	; push float sum
x7328:	fld qword [bp + 32]	; 3: -35 70 32

log$52:	; push float term
x7331:	fld qword [bp + 24]	; 3: -35 70 24

log$53:	; £temporary542 = sum + term
x7334:	fadd	; 2: -34 -63

log$54:	; pop float sum
x7336:	fstp qword [bp + 32]	; 3: -35 94 32

log$55:	; push float power
x7339:	fld qword [bp + 56]	; 3: -35 70 56

log$56:	; push float x_minus_1
x7342:	fld qword [bp + 48]	; 3: -35 70 48

log$57:	; £temporary543 = power * x_minus_1
x7345:	fmul	; 2: -34 -55

log$58:	; pop float power
x7347:	fstp qword [bp + 56]	; 3: -35 94 56

log$59:	; push float sign
x7350:	fld qword [bp + 40]	; 3: -35 70 40

log$60:	; push float -1.0
x7353:	fld qword [float8$minus1.0#]	; 4: -35 6 24 29

log$61:	; £temporary544 = sign * -1.0
x7357:	fmul	; 2: -34 -55

log$62:	; pop float sign
x7359:	fstp qword [bp + 40]	; 3: -35 94 40

log$63:	; call header integral zero 0 stack zero 0

log$64:	; push float term
x7362:	fld qword [bp + 24]	; 3: -35 70 24

log$65:	; parameter term, offset 6
x7365:	fstp qword [bp + 70]	; 3: -35 94 70

log$66:	; call function noellipse-noellipse fabs
x7368:	mov word [bp + 64], log$67	; 5: -57 70 64 -42 28
x7373:	mov [bp + 66], bp	; 3: -119 110 66
x7376:	add bp, 64	; 3: -125 -59 64
x7379:	jmp fabs	; 3: -23 -53 -4

log$67:	; post call

log$68:	; £temporary545 = return_value

log$69:	; push float 0.000000001
x7382:	fld qword [float8$0.000000001#]	; 4: -35 6 32 29

log$70:	; if £temporary545 >= 0.000000001 goto 40
x7386:	fcompp	; 2: -34 -39
x7388:	fstsw ax	; 3: -101 -33 -32
x7391:	sahf	; 1: -98
x7392:	jbe log$40	; 2: 118 -93

log$71:	; push float sum
x7394:	fld qword [bp + 32]	; 3: -35 70 32

log$72:	; £temporary547 = int_to_float n (Signed_Int -> Double)
x7397:	fild word [bp + 14]	; 3: -33 70 14

log$73:	; £temporary548 = sum + £temporary547
x7400:	fadd	; 2: -34 -63

log$74:	; return_value = £temporary548

log$75:	; return
x7402:	mov ax, [bp]	; 3: -117 70 0
x7405:	mov di, [bp + 4]	; 3: -117 126 4
x7408:	mov bp, [bp + 2]	; 3: -117 110 2
x7411:	jmp ax	; 2: -1 -32

log$76:	; errno = 6
x7413:	mov word [errno], 6	; 6: -57 6 40 29 6 0

log$77:	; push 0
x7419:	fldz	; 2: -39 -18

log$78:	; return_value = 0

log$79:	; return
x7421:	mov ax, [bp]	; 3: -117 70 0
x7424:	mov di, [bp + 4]	; 3: -117 126 4
x7427:	mov bp, [bp + 2]	; 3: -117 110 2
x7430:	jmp ax	; 2: -1 -32

log$80:	; function end log

float8$2.71#:
x7432:	dq 2.71	; 8: -82 71 -31 122 20 -82 5 64

float8$0.3690036900369003690036900369#:
x7440:	dq 0.3690036900369003690036900369	; 8: -86 -12 51 -89 -63 -99 -41 63

float8$minus1.0#:
x7448:	dq -1.0	; 8: 0 0 0 0 0 0 -16 -65

float8$0.000000001#:
x7456:	dq 0.000000001	; 8: -107 -42 38 -24 11 46 17 62

errno:
x7464:	dw 0	; 2: 0 0

pow:	; push float x
x7466:	fld qword [bp + 6]	; 3: -35 70 6

pow$1:	; push 0
x7469:	fldz	; 2: -39 -18

pow$2:	; if x <= 0 goto 18
x7471:	fcompp	; 2: -34 -39
x7473:	fstsw ax	; 3: -101 -33 -32
x7476:	sahf	; 1: -98
x7477:	jae pow$18	; 2: 115 65

pow$3:	; call header integral zero 0 stack zero 0

pow$4:	; push float y
x7479:	fld qword [bp + 14]	; 3: -35 70 14

pow$5:	; call header integral zero 0 stack no zero 1
x7482:	fstp qword [bp + 22]	; 3: -35 94 22

pow$6:	; push float x
x7485:	fld qword [bp + 6]	; 3: -35 70 6

pow$7:	; parameter x, offset 6
x7488:	fstp qword [bp + 36]	; 3: -35 94 36

pow$8:	; call function noellipse-noellipse log
x7491:	mov word [bp + 30], pow$9	; 5: -57 70 30 81 29
x7496:	mov [bp + 32], bp	; 3: -119 110 32
x7499:	add bp, 30	; 3: -125 -59 30
x7502:	jmp log	; 3: -23 -89 -2

pow$9:	; post call
x7505:	fstp qword [bp + 30]	; 3: -35 94 30
x7508:	fld qword [bp + 22]	; 3: -35 70 22
x7511:	fld qword [bp + 30]	; 3: -35 70 30

pow$10:	; £temporary554 = return_value

pow$11:	; £temporary555 = y * £temporary554
x7514:	fmul	; 2: -34 -55

pow$12:	; parameter £temporary555, offset 6
x7516:	fstp qword [bp + 28]	; 3: -35 94 28

pow$13:	; call function noellipse-noellipse exp
x7519:	mov word [bp + 22], pow$14	; 5: -57 70 22 109 29
x7524:	mov [bp + 24], bp	; 3: -119 110 24
x7527:	add bp, 22	; 3: -125 -59 22
x7530:	jmp exp	; 3: -23 102 1

pow$14:	; post call

pow$15:	; £temporary556 = return_value

pow$16:	; return_value = £temporary556

pow$17:	; return
x7533:	mov ax, [bp]	; 3: -117 70 0
x7536:	mov di, [bp + 4]	; 3: -117 126 4
x7539:	mov bp, [bp + 2]	; 3: -117 110 2
x7542:	jmp ax	; 2: -1 -32

pow$18:	; push float x
x7544:	fld qword [bp + 6]	; 3: -35 70 6

pow$19:	; push 0
x7547:	fldz	; 2: -39 -18

pow$20:	; if x != 0 goto 27
x7549:	fcompp	; 2: -34 -39
x7551:	fstsw ax	; 3: -101 -33 -32
x7554:	sahf	; 1: -98
x7555:	jne pow$27	; 2: 117 26

pow$21:	; push float y
x7557:	fld qword [bp + 14]	; 3: -35 70 14

pow$22:	; push 0
x7560:	fldz	; 2: -39 -18

pow$23:	; if y != 0 goto 27
x7562:	fcompp	; 2: -34 -39
x7564:	fstsw ax	; 3: -101 -33 -32
x7567:	sahf	; 1: -98
x7568:	jne pow$27	; 2: 117 13

pow$24:	; push 1
x7570:	fld1	; 2: -39 -24

pow$25:	; return_value = 1

pow$26:	; return
x7572:	mov ax, [bp]	; 3: -117 70 0
x7575:	mov di, [bp + 4]	; 3: -117 126 4
x7578:	mov bp, [bp + 2]	; 3: -117 110 2
x7581:	jmp ax	; 2: -1 -32

pow$27:	; push float x
x7583:	fld qword [bp + 6]	; 3: -35 70 6

pow$28:	; push 0
x7586:	fldz	; 2: -39 -18

pow$29:	; if x != 0 goto 36
x7588:	fcompp	; 2: -34 -39
x7590:	fstsw ax	; 3: -101 -33 -32
x7593:	sahf	; 1: -98
x7594:	jne pow$36	; 2: 117 26

pow$30:	; push float y
x7596:	fld qword [bp + 14]	; 3: -35 70 14

pow$31:	; push 0
x7599:	fldz	; 2: -39 -18

pow$32:	; if y <= 0 goto 36
x7601:	fcompp	; 2: -34 -39
x7603:	fstsw ax	; 3: -101 -33 -32
x7606:	sahf	; 1: -98
x7607:	jae pow$36	; 2: 115 13

pow$33:	; push 0
x7609:	fldz	; 2: -39 -18

pow$34:	; return_value = 0

pow$35:	; return
x7611:	mov ax, [bp]	; 3: -117 70 0
x7614:	mov di, [bp + 4]	; 3: -117 126 4
x7617:	mov bp, [bp + 2]	; 3: -117 110 2
x7620:	jmp ax	; 2: -1 -32

pow$36:	; push float x
x7622:	fld qword [bp + 6]	; 3: -35 70 6

pow$37:	; push 0
x7625:	fldz	; 2: -39 -18

pow$38:	; if x >= 0 goto 90
x7627:	fcompp	; 2: -34 -39
x7629:	fstsw ax	; 3: -101 -33 -32
x7632:	sahf	; 1: -98
x7633:	jbe pow$90	; 4: 15 -122 -25 0

pow$39:	; call header integral zero 0 stack zero 0

pow$40:	; push float y
x7637:	fld qword [bp + 14]	; 3: -35 70 14

pow$41:	; parameter y, offset 6
x7640:	fstp qword [bp + 28]	; 3: -35 94 28

pow$42:	; call function noellipse-noellipse floor
x7643:	mov word [bp + 22], pow$43	; 5: -57 70 22 -23 29
x7648:	mov [bp + 24], bp	; 3: -119 110 24
x7651:	add bp, 22	; 3: -125 -59 22
x7654:	jmp floor	; 3: -23 96 1

pow$43:	; post call

pow$44:	; £temporary564 = return_value

pow$45:	; call header integral zero 0 stack no zero 1
x7657:	fstp qword [bp + 22]	; 3: -35 94 22

pow$46:	; push float y
x7660:	fld qword [bp + 14]	; 3: -35 70 14

pow$47:	; parameter y, offset 6
x7663:	fstp qword [bp + 36]	; 3: -35 94 36

pow$48:	; call function noellipse-noellipse ceil
x7666:	mov word [bp + 30], pow$49	; 5: -57 70 30 0 30
x7671:	mov [bp + 32], bp	; 3: -119 110 32
x7674:	add bp, 30	; 3: -125 -59 30
x7677:	jmp ceil	; 3: -23 -105 1

pow$49:	; post call
x7680:	fstp qword [bp + 30]	; 3: -35 94 30
x7683:	fld qword [bp + 22]	; 3: -35 70 22
x7686:	fld qword [bp + 30]	; 3: -35 70 30

pow$50:	; £temporary565 = return_value

pow$51:	; if £temporary564 != £temporary565 goto 90
x7689:	fcompp	; 2: -34 -39
x7691:	fstsw ax	; 3: -101 -33 -32
x7694:	sahf	; 1: -98
x7695:	jne pow$90	; 4: 15 -123 -87 0

pow$52:	; push float y
x7699:	fld qword [bp + 14]	; 3: -35 70 14

pow$53:	; £temporary568 = float_to_int y (Double -> Signed_Long_Int)
x7702:	fistp dword [container4bytes#]	; 4: -37 30 -11 24
x7706:	mov eax, [container4bytes#]	; 4: 102 -95 -11 24

pow$54:	; long_y = £temporary568
x7710:	mov [bp + 22], eax	; 4: 102 -119 70 22

pow$55:	; £temporary569 = long_y % 2
x7714:	mov eax, [bp + 22]	; 4: 102 -117 70 22
x7718:	xor edx, edx	; 3: 102 49 -46
x7721:	idiv dword [int4$2#]	; 5: 102 -9 62 -49 30

pow$56:	; if £temporary569 != 0 goto 73
x7726:	cmp edx, 0	; 4: 102 -125 -6 0
x7730:	jne pow$73	; 2: 117 67

pow$57:	; call header integral zero 0 stack zero 0

pow$58:	; push float y
x7732:	fld qword [bp + 14]	; 3: -35 70 14

pow$59:	; call header integral zero 0 stack no zero 1
x7735:	fstp qword [bp + 26]	; 3: -35 94 26

pow$60:	; push float x
x7738:	fld qword [bp + 6]	; 3: -35 70 6

pow$61:	; £temporary571 = -x
x7741:	fchs	; 2: -39 -32

pow$62:	; parameter £temporary571, offset 6
x7743:	fstp qword [bp + 40]	; 3: -35 94 40

pow$63:	; call function noellipse-noellipse log
x7746:	mov word [bp + 34], pow$64	; 5: -57 70 34 80 30
x7751:	mov [bp + 36], bp	; 3: -119 110 36
x7754:	add bp, 34	; 3: -125 -59 34
x7757:	jmp log	; 3: -23 -88 -3

pow$64:	; post call
x7760:	fstp qword [bp + 34]	; 3: -35 94 34
x7763:	fld qword [bp + 26]	; 3: -35 70 26
x7766:	fld qword [bp + 34]	; 3: -35 70 34

pow$65:	; £temporary572 = return_value

pow$66:	; £temporary573 = y * £temporary572
x7769:	fmul	; 2: -34 -55

pow$67:	; parameter £temporary573, offset 6
x7771:	fstp qword [bp + 32]	; 3: -35 94 32

pow$68:	; call function noellipse-noellipse exp
x7774:	mov word [bp + 26], pow$69	; 5: -57 70 26 108 30
x7779:	mov [bp + 28], bp	; 3: -119 110 28
x7782:	add bp, 26	; 3: -125 -59 26
x7785:	nop	; 1: -112
x7786:	jmp exp	; 2: -21 103

pow$69:	; post call

pow$70:	; £temporary574 = return_value

pow$71:	; return_value = £temporary574

pow$72:	; return
x7788:	mov ax, [bp]	; 3: -117 70 0
x7791:	mov di, [bp + 4]	; 3: -117 126 4
x7794:	mov bp, [bp + 2]	; 3: -117 110 2
x7797:	jmp ax	; 2: -1 -32

pow$73:	; call header integral zero 0 stack zero 0

pow$74:	; push float y
x7799:	fld qword [bp + 14]	; 3: -35 70 14

pow$75:	; call header integral zero 0 stack no zero 1
x7802:	fstp qword [bp + 26]	; 3: -35 94 26

pow$76:	; push float x
x7805:	fld qword [bp + 6]	; 3: -35 70 6

pow$77:	; £temporary575 = -x
x7808:	fchs	; 2: -39 -32

pow$78:	; parameter £temporary575, offset 6
x7810:	fstp qword [bp + 40]	; 3: -35 94 40

pow$79:	; call function noellipse-noellipse log
x7813:	mov word [bp + 34], pow$80	; 5: -57 70 34 -109 30
x7818:	mov [bp + 36], bp	; 3: -119 110 36
x7821:	add bp, 34	; 3: -125 -59 34
x7824:	jmp log	; 3: -23 101 -3

pow$80:	; post call
x7827:	fstp qword [bp + 34]	; 3: -35 94 34
x7830:	fld qword [bp + 26]	; 3: -35 70 26
x7833:	fld qword [bp + 34]	; 3: -35 70 34

pow$81:	; £temporary576 = return_value

pow$82:	; £temporary577 = y * £temporary576
x7836:	fmul	; 2: -34 -55

pow$83:	; parameter £temporary577, offset 6
x7838:	fstp qword [bp + 32]	; 3: -35 94 32

pow$84:	; call function noellipse-noellipse exp
x7841:	mov word [bp + 26], pow$85	; 5: -57 70 26 -81 30
x7846:	mov [bp + 28], bp	; 3: -119 110 28
x7849:	add bp, 26	; 3: -125 -59 26
x7852:	nop	; 1: -112
x7853:	jmp exp	; 2: -21 36

pow$85:	; post call

pow$86:	; £temporary578 = return_value

pow$87:	; £temporary579 = -£temporary578
x7855:	fchs	; 2: -39 -32

pow$88:	; return_value = £temporary579

pow$89:	; return
x7857:	mov ax, [bp]	; 3: -117 70 0
x7860:	mov di, [bp + 4]	; 3: -117 126 4
x7863:	mov bp, [bp + 2]	; 3: -117 110 2
x7866:	jmp ax	; 2: -1 -32

pow$90:	; errno = 6
x7868:	mov word [errno], 6	; 6: -57 6 40 29 6 0

pow$91:	; push 0
x7874:	fldz	; 2: -39 -18

pow$92:	; return_value = 0

pow$93:	; return
x7876:	mov ax, [bp]	; 3: -117 70 0
x7879:	mov di, [bp + 4]	; 3: -117 126 4
x7882:	mov bp, [bp + 2]	; 3: -117 110 2
x7885:	jmp ax	; 2: -1 -32

pow$94:	; function end pow

int4$2#:
x7887:	dd 2	; 4: 2 0 0 0

exp:	; push 1
x7891:	fld1	; 2: -39 -24

exp$1:	; pop float index
x7893:	fstp qword [bp + 14]	; 3: -35 94 14

exp$2:	; push 1
x7896:	fld1	; 2: -39 -24

exp$3:	; pop float sum
x7898:	fstp qword [bp + 30]	; 3: -35 94 30

exp$4:	; push 1
x7901:	fld1	; 2: -39 -24

exp$5:	; pop float faculty
x7903:	fstp qword [bp + 38]	; 3: -35 94 38

exp$6:	; push float x
x7906:	fld qword [bp + 6]	; 3: -35 70 6

exp$7:	; pop float power
x7909:	fstp qword [bp + 46]	; 3: -35 94 46

exp$8:	; push float power
x7912:	fld qword [bp + 46]	; 3: -35 70 46

exp$9:	; push float faculty
x7915:	fld qword [bp + 38]	; 3: -35 70 38

exp$10:	; £temporary521 = power / faculty
x7918:	fdiv	; 2: -34 -7

exp$11:	; pop float term
x7920:	fstp qword [bp + 22]	; 3: -35 94 22

exp$12:	; push float sum
x7923:	fld qword [bp + 30]	; 3: -35 70 30

exp$13:	; push float term
x7926:	fld qword [bp + 22]	; 3: -35 70 22

exp$14:	; £temporary522 = sum + term
x7929:	fadd	; 2: -34 -63

exp$15:	; pop float sum
x7931:	fstp qword [bp + 30]	; 3: -35 94 30

exp$16:	; push float power
x7934:	fld qword [bp + 46]	; 3: -35 70 46

exp$17:	; push float x
x7937:	fld qword [bp + 6]	; 3: -35 70 6

exp$18:	; £temporary523 = power * x
x7940:	fmul	; 2: -34 -55

exp$19:	; pop float power
x7942:	fstp qword [bp + 46]	; 3: -35 94 46

exp$20:	; push float faculty
x7945:	fld qword [bp + 38]	; 3: -35 70 38

exp$21:	; push float index
x7948:	fld qword [bp + 14]	; 3: -35 70 14

exp$22:	; push 1
x7951:	fld1	; 2: -39 -24

exp$23:	; index = index + 1
x7953:	fadd	; 2: -34 -63

exp$24:	; top float index
x7955:	fst qword [bp + 14]	; 3: -35 86 14

exp$25:	; £temporary525 = faculty * £temporary524
x7958:	fmul	; 2: -34 -55

exp$26:	; pop float faculty
x7960:	fstp qword [bp + 38]	; 3: -35 94 38

exp$27:	; call header integral zero 0 stack zero 0

exp$28:	; push float term
x7963:	fld qword [bp + 22]	; 3: -35 70 22

exp$29:	; parameter term, offset 6
x7966:	fstp qword [bp + 60]	; 3: -35 94 60

exp$30:	; call function noellipse-noellipse fabs
x7969:	mov word [bp + 54], exp$31	; 5: -57 70 54 47 31
x7974:	mov [bp + 56], bp	; 3: -119 110 56
x7977:	add bp, 54	; 3: -125 -59 54
x7980:	jmp fabs	; 3: -23 114 -6

exp$31:	; post call

exp$32:	; £temporary526 = return_value

exp$33:	; push float 0.000000001
x7983:	fld qword [float8$0.000000001#]	; 4: -35 6 32 29

exp$34:	; if £temporary526 >= 0.000000001 goto 8
x7987:	fcompp	; 2: -34 -39
x7989:	fstsw ax	; 3: -101 -33 -32
x7992:	sahf	; 1: -98
x7993:	jbe exp$8	; 2: 118 -83

exp$35:	; push float sum
x7995:	fld qword [bp + 30]	; 3: -35 70 30

exp$36:	; return_value = sum

exp$37:	; return
x7998:	mov ax, [bp]	; 3: -117 70 0
x8001:	mov di, [bp + 4]	; 3: -117 126 4
x8004:	mov bp, [bp + 2]	; 3: -117 110 2
x8007:	jmp ax	; 2: -1 -32

exp$38:	; function end exp

floor:	; push float x
x8009:	fld qword [bp + 6]	; 3: -35 70 6

floor$1:	; push 0
x8012:	fldz	; 2: -39 -18

floor$2:	; if x >= 0 goto 13
x8014:	fcompp	; 2: -34 -39
x8016:	fstsw ax	; 3: -101 -33 -32
x8019:	sahf	; 1: -98
x8020:	jbe floor$13	; 2: 118 35

floor$3:	; call header integral zero 0 stack zero 0

floor$4:	; push float x
x8022:	fld qword [bp + 6]	; 3: -35 70 6

floor$5:	; £temporary805 = -x
x8025:	fchs	; 2: -39 -32

floor$6:	; parameter £temporary805, offset 6
x8027:	fstp qword [bp + 20]	; 3: -35 94 20

floor$7:	; call function noellipse-noellipse ceil
x8030:	mov word [bp + 14], floor$8	; 5: -57 70 14 108 31
x8035:	mov [bp + 16], bp	; 3: -119 110 16
x8038:	add bp, 14	; 3: -125 -59 14
x8041:	nop	; 1: -112
x8042:	jmp ceil	; 2: -21 43

floor$8:	; post call

floor$9:	; £temporary806 = return_value

floor$10:	; £temporary807 = -£temporary806
x8044:	fchs	; 2: -39 -32

floor$11:	; return_value = £temporary807

floor$12:	; return
x8046:	mov ax, [bp]	; 3: -117 70 0
x8049:	mov di, [bp + 4]	; 3: -117 126 4
x8052:	mov bp, [bp + 2]	; 3: -117 110 2
x8055:	jmp ax	; 2: -1 -32

floor$13:	; push float x
x8057:	fld qword [bp + 6]	; 3: -35 70 6

floor$14:	; £temporary808 = float_to_int x (Double -> Signed_Long_Int)
x8060:	fistp dword [container4bytes#]	; 4: -37 30 -11 24
x8064:	mov eax, [container4bytes#]	; 4: 102 -95 -11 24

floor$15:	; £temporary809 = int_to_float £temporary808 (Signed_Long_Int -> Double)
x8068:	mov [container4bytes#], eax	; 4: 102 -93 -11 24
x8072:	fild dword [container4bytes#]	; 4: -37 6 -11 24

floor$16:	; return_value = £temporary809

floor$17:	; return
x8076:	mov ax, [bp]	; 3: -117 70 0
x8079:	mov di, [bp + 4]	; 3: -117 126 4
x8082:	mov bp, [bp + 2]	; 3: -117 110 2
x8085:	jmp ax	; 2: -1 -32

floor$18:	; function end floor

ceil:	; push float x
x8087:	fld qword [bp + 6]	; 3: -35 70 6

ceil$1:	; push 0
x8090:	fldz	; 2: -39 -18

ceil$2:	; if x >= 0 goto 13
x8092:	fcompp	; 2: -34 -39
x8094:	fstsw ax	; 3: -101 -33 -32
x8097:	sahf	; 1: -98
x8098:	jbe ceil$13	; 2: 118 35

ceil$3:	; call header integral zero 0 stack zero 0

ceil$4:	; push float x
x8100:	fld qword [bp + 6]	; 3: -35 70 6

ceil$5:	; £temporary812 = -x
x8103:	fchs	; 2: -39 -32

ceil$6:	; parameter £temporary812, offset 6
x8105:	fstp qword [bp + 20]	; 3: -35 94 20

ceil$7:	; call function noellipse-noellipse floor
x8108:	mov word [bp + 14], ceil$8	; 5: -57 70 14 -70 31
x8113:	mov [bp + 16], bp	; 3: -119 110 16
x8116:	add bp, 14	; 3: -125 -59 14
x8119:	nop	; 1: -112
x8120:	jmp floor	; 2: -21 -113

ceil$8:	; post call

ceil$9:	; £temporary813 = return_value

ceil$10:	; £temporary814 = -£temporary813
x8122:	fchs	; 2: -39 -32

ceil$11:	; return_value = £temporary814

ceil$12:	; return
x8124:	mov ax, [bp]	; 3: -117 70 0
x8127:	mov di, [bp + 4]	; 3: -117 126 4
x8130:	mov bp, [bp + 2]	; 3: -117 110 2
x8133:	jmp ax	; 2: -1 -32

ceil$13:	; push float x
x8135:	fld qword [bp + 6]	; 3: -35 70 6

ceil$14:	; push float 0.999999999999
x8138:	fld qword [float8$0.999999999999#]	; 4: -35 6 -21 31

ceil$15:	; £temporary815 = x + 0.999999999999
x8142:	fadd	; 2: -34 -63

ceil$16:	; £temporary816 = float_to_int £temporary815 (Double -> Signed_Long_Int)
x8144:	fistp dword [container4bytes#]	; 4: -37 30 -11 24
x8148:	mov eax, [container4bytes#]	; 4: 102 -95 -11 24

ceil$17:	; £temporary817 = int_to_float £temporary816 (Signed_Long_Int -> Double)
x8152:	mov [container4bytes#], eax	; 4: 102 -93 -11 24
x8156:	fild dword [container4bytes#]	; 4: -37 6 -11 24

ceil$18:	; return_value = £temporary817

ceil$19:	; return
x8160:	mov ax, [bp]	; 3: -117 70 0
x8163:	mov di, [bp + 4]	; 3: -117 126 4
x8166:	mov bp, [bp + 2]	; 3: -117 110 2
x8169:	jmp ax	; 2: -1 -32

ceil$20:	; function end ceil

float8$0.999999999999#:
x8171:	dq 0.999999999999	; 8: -47 -36 -1 -1 -1 -1 -17 63

isdigit:	; if c < 48 goto 4
x8179:	cmp word [bp + 6], 48	; 4: -125 126 6 48
x8183:	jl isdigit$4	; 2: 124 11

isdigit$1:	; if c > 57 goto 4
x8185:	cmp word [bp + 6], 57	; 4: -125 126 6 57
x8189:	jg isdigit$4	; 2: 127 5

isdigit$2:	; £temporary406 = 1
x8191:	mov bx, 1	; 3: -69 1 0

isdigit$3:	; goto 5
x8194:	jmp isdigit$5	; 2: -21 3

isdigit$4:	; £temporary406 = 0
x8196:	mov bx, 0	; 3: -69 0 0

isdigit$5:	; return_value = £temporary406

isdigit$6:	; return
x8199:	mov ax, [bp]	; 3: -117 70 0
x8202:	mov di, [bp + 4]	; 3: -117 126 4
x8205:	mov bp, [bp + 2]	; 3: -117 110 2
x8208:	jmp ax	; 2: -1 -32

isdigit$7:	; function end isdigit

qtest:	; call header integral zero 0 stack zero 0

qtest$1:	; parameter string_f3A2025u0A#, offset 6
x8210:	mov word [bp + 14], string_f3A2025u0A#	; 5: -57 70 14 75 32

qtest$2:	; £temporary5991 = int_to_int f (Pointer -> Unsigned_Int)
x8215:	mov ax, [bp + 6]	; 3: -117 70 6

qtest$3:	; parameter £temporary5991, offset 8
x8218:	mov [bp + 16], ax	; 3: -119 70 16

qtest$4:	; call function noellipse-ellipse printf, extra 0
x8221:	mov word [bp + 8], qtest$5	; 5: -57 70 8 48 32
x8226:	mov [bp + 10], bp	; 3: -119 110 10
x8229:	add bp, 8	; 3: -125 -59 8
x8232:	mov di, bp	; 2: -119 -17
x8234:	add di, 2	; 3: -125 -57 2
x8237:	jmp printf	; 3: -23 121 -31

qtest$5:	; post call

qtest$6:	; call header integral zero 0 stack zero 0

qtest$7:	; call function noellipse-noellipse f
x8240:	mov word [bp + 8], qtest$8	; 5: -57 70 8 64 32
x8245:	mov [bp + 10], bp	; 3: -119 110 10
x8248:	mov ax, [bp + 6]	; 3: -117 70 6
x8251:	add bp, 8	; 3: -125 -59 8
x8254:	jmp ax	; 2: -1 -32

qtest$8:	; post call

qtest$9:	; return
x8256:	mov ax, [bp]	; 3: -117 70 0
x8259:	mov di, [bp + 4]	; 3: -117 126 4
x8262:	mov bp, [bp + 2]	; 3: -117 110 2
x8265:	jmp ax	; 2: -1 -32

qtest$10:	; function end qtest

string_f3A2025u0A#:
x8267:	db "f: %u", 10, 0	; 7: 102 58 32 37 117 10 0

$StackTop:
x8274:
