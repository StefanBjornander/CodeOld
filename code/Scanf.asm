	global g_inStatus
	global g_inChars
	global g_inDevice
	global g_inCount
	global scanChar
	global unscanChar
	global scanPattern
	global scanString
	global digitToValue
	global scanLongInt
	global scanUnsignedLongInt
	global scanLongDouble
	global scanFormat
	global scanf
	global vscanf
	global fscanf
	global vfscanf
	global sscanf
	global vsscanf

	extern isspace
	extern strchr
	extern isdigit
	extern islower
	extern tolower
	extern isxdigit
	extern pow
	extern printf
	extern stdin
section .text

scanChar:	; c = int1$0#
	mov byte [rbp + 24], 0

scanChar$1:	; case g_inStatus == int4$0# goto 5
	mov eax, [g_inStatus]
	cmp eax, 0
	je scanChar$5

scanChar$2:	; case g_inStatus == int4$1# goto 21
	cmp eax, 1
	je scanChar$21

scanChar$3:	; case end g_inStatus

scanChar$4:	; goto 30
	jmp scanChar$30

scanChar$5:	; £temporary1271 = int_to_int g_inDevice (Pointer -> Pointer)
	mov rax, [g_inDevice]

scanChar$6:	; stream = £temporary1271
	mov [rbp + 25], rax

scanChar$7:	; £temporary1272 -> stream = *stream, offset 4
	mov rsi, [rbp + 25]

scanChar$8:	; handle = £temporary1272 -> stream
	mov eax, [rsi + 4]
	mov [rbp + 33], eax

scanChar$9:	; rax = int8$0#
	mov rax, 0

scanChar$10:	; £temporary1275 -> stream = *stream, offset 4
	mov rsi, [rbp + 25]

scanChar$11:	; £temporary1276 = int_to_int £temporary1275 -> stream (Unsigned_Int -> Unsigned_Long_Int)
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

scanChar$12:	; rdi = £temporary1276

scanChar$13:	; £temporary1278 = &c
	mov rsi, rbp
	add rsi, 24

scanChar$14:	; £temporary1279 = int_to_int £temporary1278 (Pointer -> Unsigned_Long_Int)

scanChar$15:	; rsi = £temporary1279

scanChar$16:	; rdx = int8$1#
	mov rdx, 1

scanChar$17:	; syscall
	syscall 

scanChar$18:	; ++g_inChars
	inc dword [g_inChars]

scanChar$19:	; return_value = c
	mov bl, [rbp + 24]

scanChar$20:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

scanChar$21:	; £temporary1282 = int_to_int g_inDevice (Pointer -> Pointer)
	mov rax, [g_inDevice]

scanChar$22:	; inString = £temporary1282
	mov [rbp + 37], rax

scanChar$23:	; £temporary1283 = g_inChars
	mov eax, [g_inChars]

scanChar$24:	; ++g_inChars
	inc dword [g_inChars]

scanChar$25:	; £temporary1284 = int_to_int £temporary1283 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

scanChar$26:	; £temporary1287 = inString + £temporary1284
	mov rsi, [rbp + 37]
	add rsi, rax

scanChar$27:	; £temporary1285 -> £temporary1287 = *£temporary1287

scanChar$28:	; return_value = £temporary1285 -> £temporary1287
	mov bl, [rsi]

scanChar$29:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

scanChar$30:	; return_value = int1$0#
	mov bl, 0

scanChar$31:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

scanChar$32:	; function end scanChar

unscanChar:	; case g_inStatus == int4$0# goto 4
	mov eax, [g_inStatus]
	cmp eax, 0
	je unscanChar$4

unscanChar$1:	; case g_inStatus == int4$1# goto 6
	cmp eax, 1
	je unscanChar$6

unscanChar$2:	; case end g_inStatus

unscanChar$3:	; goto 7
	jmp unscanChar$7

unscanChar$4:	; --g_inChars
	dec dword [g_inChars]

unscanChar$5:	; goto 7
	jmp unscanChar$7

unscanChar$6:	; --g_inChars
	dec dword [g_inChars]

unscanChar$7:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

unscanChar$8:	; function end unscanChar

scanPattern:	; index = int4$0#
	mov dword [rbp + 44], 0

scanPattern$1:	; call header integral zero 0 stack zero 0

scanPattern$2:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 48], scanPattern$3
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanChar

scanPattern$3:	; post call

scanPattern$4:	; £temporary1291 = return_value

scanPattern$5:	; input = £temporary1291
	mov [rbp + 48], bl

scanPattern$6:	; call header integral zero 0 stack zero 0

scanPattern$7:	; £temporary1292 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$8
	neg al
	neg eax

scanPattern$8:	; parameter £temporary1292, offset 73
	mov [rbp + 73], eax

scanPattern$9:	; call function noellipse-noellipse isspace
	mov qword [rbp + 49], scanPattern$10
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isspace

scanPattern$10:	; post call

scanPattern$11:	; £temporary1293 = return_value

scanPattern$12:	; if £temporary1293 == int4$0# goto 19
	cmp ebx, 0
	je scanPattern$19

scanPattern$13:	; call header integral zero 0 stack zero 0

scanPattern$14:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanPattern$15
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

scanPattern$15:	; post call

scanPattern$16:	; £temporary1294 = return_value

scanPattern$17:	; input = £temporary1294
	mov [rbp + 48], bl

scanPattern$18:	; goto 6
	jmp scanPattern$6

scanPattern$19:	; if string == int8$0# goto 55
	cmp qword [rbp + 24], 0
	je scanPattern$55

scanPattern$20:	; if not != int4$0# goto 29
	cmp dword [rbp + 40], 0
	jne scanPattern$29

scanPattern$21:	; call header integral zero 0 stack zero 0

scanPattern$22:	; parameter pattern, offset 73
	mov rax, [rbp + 32]
	mov [rbp + 73], rax

scanPattern$23:	; £temporary1299 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$24
	neg al
	neg eax

scanPattern$24:	; parameter £temporary1299, offset 81
	mov [rbp + 81], eax

scanPattern$25:	; call function noellipse-noellipse strchr
	mov qword [rbp + 49], scanPattern$26
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strchr

scanPattern$26:	; post call

scanPattern$27:	; £temporary1300 = return_value

scanPattern$28:	; if £temporary1300 != int4$0# goto 38
	cmp rbx, 0
	jne scanPattern$38

scanPattern$29:	; if not == int4$0# goto 50
	cmp dword [rbp + 40], 0
	je scanPattern$50

scanPattern$30:	; call header integral zero 0 stack zero 0

scanPattern$31:	; parameter pattern, offset 73
	mov rax, [rbp + 32]
	mov [rbp + 73], rax

scanPattern$32:	; £temporary1303 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$33
	neg al
	neg eax

scanPattern$33:	; parameter £temporary1303, offset 81
	mov [rbp + 81], eax

scanPattern$34:	; call function noellipse-noellipse strchr
	mov qword [rbp + 49], scanPattern$35
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strchr

scanPattern$35:	; post call

scanPattern$36:	; £temporary1304 = return_value

scanPattern$37:	; if £temporary1304 != int4$0# goto 50
	cmp rbx, 0
	jne scanPattern$50

scanPattern$38:	; £temporary1310 = index
	mov eax, [rbp + 44]

scanPattern$39:	; ++index
	inc dword [rbp + 44]

scanPattern$40:	; £temporary1311 = int_to_int £temporary1310 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

scanPattern$41:	; £temporary1314 = string + £temporary1311
	mov rsi, [rbp + 24]
	add rsi, rax

scanPattern$42:	; £temporary1312 -> £temporary1314 = *£temporary1314

scanPattern$43:	; £temporary1312 -> £temporary1314 = input
	mov al, [rbp + 48]
	mov [rsi], al

scanPattern$44:	; call header integral zero 0 stack zero 0

scanPattern$45:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanPattern$46
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

scanPattern$46:	; post call

scanPattern$47:	; £temporary1315 = return_value

scanPattern$48:	; input = £temporary1315
	mov [rbp + 48], bl

scanPattern$49:	; goto 20
	jmp scanPattern$20

scanPattern$50:	; £temporary1316 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

scanPattern$51:	; £temporary1319 = string + £temporary1316
	mov rsi, [rbp + 24]
	add rsi, rax

scanPattern$52:	; £temporary1317 -> £temporary1319 = *£temporary1319

scanPattern$53:	; £temporary1317 -> £temporary1319 = int1$0#
	mov byte [rsi], 0

scanPattern$54:	; goto 79
	jmp scanPattern$79

scanPattern$55:	; if not != int4$0# goto 64
	cmp dword [rbp + 40], 0
	jne scanPattern$64

scanPattern$56:	; call header integral zero 0 stack zero 0

scanPattern$57:	; parameter pattern, offset 73
	mov rax, [rbp + 32]
	mov [rbp + 73], rax

scanPattern$58:	; £temporary1322 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$59
	neg al
	neg eax

scanPattern$59:	; parameter £temporary1322, offset 81
	mov [rbp + 81], eax

scanPattern$60:	; call function noellipse-noellipse strchr
	mov qword [rbp + 49], scanPattern$61
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strchr

scanPattern$61:	; post call

scanPattern$62:	; £temporary1323 = return_value

scanPattern$63:	; if £temporary1323 != int4$0# goto 73
	cmp rbx, 0
	jne scanPattern$73

scanPattern$64:	; if not == int4$0# goto 79
	cmp dword [rbp + 40], 0
	je scanPattern$79

scanPattern$65:	; call header integral zero 0 stack zero 0

scanPattern$66:	; parameter pattern, offset 73
	mov rax, [rbp + 32]
	mov [rbp + 73], rax

scanPattern$67:	; £temporary1326 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanPattern$68
	neg al
	neg eax

scanPattern$68:	; parameter £temporary1326, offset 81
	mov [rbp + 81], eax

scanPattern$69:	; call function noellipse-noellipse strchr
	mov qword [rbp + 49], scanPattern$70
	mov [rbp + 57], rbp
	add rbp, 49
	jmp strchr

scanPattern$70:	; post call

scanPattern$71:	; £temporary1327 = return_value

scanPattern$72:	; if £temporary1327 != int4$0# goto 79
	cmp rbx, 0
	jne scanPattern$79

scanPattern$73:	; call header integral zero 0 stack zero 0

scanPattern$74:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanPattern$75
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

scanPattern$75:	; post call

scanPattern$76:	; £temporary1333 = return_value

scanPattern$77:	; input = £temporary1333
	mov [rbp + 48], bl

scanPattern$78:	; goto 55
	jmp scanPattern$55

scanPattern$79:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

scanPattern$80:	; function end scanPattern

scanString:	; index = int4$0#
	mov dword [rbp + 36], 0

scanString$1:	; call header integral zero 0 stack zero 0

scanString$2:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 40], scanString$3
	mov [rbp + 48], rbp
	add rbp, 40
	jmp scanChar

scanString$3:	; post call

scanString$4:	; £temporary1343 = return_value

scanString$5:	; input = £temporary1343
	mov [rbp + 40], bl

scanString$6:	; found = int4$0#
	mov dword [rbp + 41], 0

scanString$7:	; call header integral zero 0 stack zero 0

scanString$8:	; £temporary1344 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$9
	neg al
	neg eax

scanString$9:	; parameter £temporary1344, offset 69
	mov [rbp + 69], eax

scanString$10:	; call function noellipse-noellipse isspace
	mov qword [rbp + 45], scanString$11
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

scanString$11:	; post call

scanString$12:	; £temporary1345 = return_value

scanString$13:	; if £temporary1345 == int4$0# goto 20
	cmp ebx, 0
	je scanString$20

scanString$14:	; call header integral zero 0 stack zero 0

scanString$15:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 45], scanString$16
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

scanString$16:	; post call

scanString$17:	; £temporary1346 = return_value

scanString$18:	; input = £temporary1346
	mov [rbp + 40], bl

scanString$19:	; goto 7
	jmp scanString$7

scanString$20:	; if string == int8$0# goto 86
	cmp qword [rbp + 24], 0
	je scanString$86

scanString$21:	; if precision != int4$0# goto 52
	cmp dword [rbp + 32], 0
	jne scanString$52

scanString$22:	; call header integral zero 0 stack zero 0

scanString$23:	; £temporary1350 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$24
	neg al
	neg eax

scanString$24:	; parameter £temporary1350, offset 69
	mov [rbp + 69], eax

scanString$25:	; call function noellipse-noellipse isspace
	mov qword [rbp + 45], scanString$26
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

scanString$26:	; post call

scanString$27:	; £temporary1351 = return_value

scanString$28:	; if £temporary1351 != int4$0# goto 46
	cmp ebx, 0
	jne scanString$46

scanString$29:	; £temporary1354 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$30
	neg al
	neg eax

scanString$30:	; if £temporary1354 == int4$minus1# goto 46
	cmp eax, -1
	je scanString$46

scanString$31:	; if input == int1$10# goto 46
	cmp byte [rbp + 40], 10
	je scanString$46

scanString$32:	; £temporary1359 = index
	mov eax, [rbp + 36]

scanString$33:	; ++index
	inc dword [rbp + 36]

scanString$34:	; £temporary1360 = int_to_int £temporary1359 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

scanString$35:	; £temporary1363 = string + £temporary1360
	mov rsi, [rbp + 24]
	add rsi, rax

scanString$36:	; £temporary1361 -> £temporary1363 = *£temporary1363

scanString$37:	; £temporary1361 -> £temporary1363 = input
	mov al, [rbp + 40]
	mov [rsi], al

scanString$38:	; call header integral zero 0 stack zero 0

scanString$39:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 45], scanString$40
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

scanString$40:	; post call

scanString$41:	; £temporary1364 = return_value

scanString$42:	; input = £temporary1364
	mov [rbp + 40], bl

scanString$43:	; found = int4$1#
	mov dword [rbp + 41], 1

scanString$44:	; ++g_inChars
	inc dword [g_inChars]

scanString$45:	; goto 22
	jmp scanString$22

scanString$46:	; £temporary1366 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

scanString$47:	; £temporary1369 = string + £temporary1366
	mov rsi, [rbp + 24]
	add rsi, rax

scanString$48:	; £temporary1367 -> £temporary1369 = *£temporary1369

scanString$49:	; £temporary1367 -> £temporary1369 = int1$0#
	mov byte [rsi], 0

scanString$50:	; ++g_inChars
	inc dword [g_inChars]

scanString$51:	; goto 130
	jmp scanString$130

scanString$52:	; £temporary1371 = precision
	mov eax, [rbp + 32]

scanString$53:	; --precision
	dec dword [rbp + 32]

scanString$54:	; if £temporary1371 <= int4$0# goto 79
	cmp eax, 0
	jle scanString$79

scanString$55:	; call header integral zero 0 stack zero 0

scanString$56:	; £temporary1373 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$57
	neg al
	neg eax

scanString$57:	; parameter £temporary1373, offset 69
	mov [rbp + 69], eax

scanString$58:	; call function noellipse-noellipse isspace
	mov qword [rbp + 45], scanString$59
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

scanString$59:	; post call

scanString$60:	; £temporary1374 = return_value

scanString$61:	; if £temporary1374 != int4$0# goto 79
	cmp ebx, 0
	jne scanString$79

scanString$62:	; £temporary1377 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$63
	neg al
	neg eax

scanString$63:	; if £temporary1377 == int4$minus1# goto 79
	cmp eax, -1
	je scanString$79

scanString$64:	; if input == int1$10# goto 79
	cmp byte [rbp + 40], 10
	je scanString$79

scanString$65:	; £temporary1383 = index
	mov eax, [rbp + 36]

scanString$66:	; ++index
	inc dword [rbp + 36]

scanString$67:	; £temporary1384 = int_to_int £temporary1383 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

scanString$68:	; £temporary1387 = string + £temporary1384
	mov rsi, [rbp + 24]
	add rsi, rax

scanString$69:	; £temporary1385 -> £temporary1387 = *£temporary1387

scanString$70:	; £temporary1385 -> £temporary1387 = input
	mov al, [rbp + 40]
	mov [rsi], al

scanString$71:	; call header integral zero 0 stack zero 0

scanString$72:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 45], scanString$73
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

scanString$73:	; post call

scanString$74:	; £temporary1388 = return_value

scanString$75:	; input = £temporary1388
	mov [rbp + 40], bl

scanString$76:	; found = int4$1#
	mov dword [rbp + 41], 1

scanString$77:	; ++g_inChars
	inc dword [g_inChars]

scanString$78:	; goto 52
	jmp scanString$52

scanString$79:	; if precision <= int4$0# goto 130
	cmp dword [rbp + 32], 0
	jle scanString$130

scanString$80:	; £temporary1391 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

scanString$81:	; £temporary1394 = string + £temporary1391
	mov rsi, [rbp + 24]
	add rsi, rax

scanString$82:	; £temporary1392 -> £temporary1394 = *£temporary1394

scanString$83:	; £temporary1392 -> £temporary1394 = int1$0#
	mov byte [rsi], 0

scanString$84:	; ++g_inChars
	inc dword [g_inChars]

scanString$85:	; goto 130
	jmp scanString$130

scanString$86:	; if precision != int4$0# goto 107
	cmp dword [rbp + 32], 0
	jne scanString$107

scanString$87:	; call header integral zero 0 stack zero 0

scanString$88:	; £temporary1397 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$89
	neg al
	neg eax

scanString$89:	; parameter £temporary1397, offset 69
	mov [rbp + 69], eax

scanString$90:	; call function noellipse-noellipse isspace
	mov qword [rbp + 45], scanString$91
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

scanString$91:	; post call

scanString$92:	; £temporary1398 = return_value

scanString$93:	; if £temporary1398 != int4$0# goto 105
	cmp ebx, 0
	jne scanString$105

scanString$94:	; £temporary1401 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$95
	neg al
	neg eax

scanString$95:	; if £temporary1401 == int4$minus1# goto 105
	cmp eax, -1
	je scanString$105

scanString$96:	; if input == int1$10# goto 105
	cmp byte [rbp + 40], 10
	je scanString$105

scanString$97:	; call header integral zero 0 stack zero 0

scanString$98:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 45], scanString$99
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

scanString$99:	; post call

scanString$100:	; £temporary1406 = return_value

scanString$101:	; input = £temporary1406
	mov [rbp + 40], bl

scanString$102:	; found = int4$1#
	mov dword [rbp + 41], 1

scanString$103:	; ++g_inChars
	inc dword [g_inChars]

scanString$104:	; goto 87
	jmp scanString$87

scanString$105:	; ++g_inChars
	inc dword [g_inChars]

scanString$106:	; goto 130
	jmp scanString$130

scanString$107:	; £temporary1409 = precision
	mov eax, [rbp + 32]

scanString$108:	; --precision
	dec dword [rbp + 32]

scanString$109:	; if £temporary1409 <= int4$0# goto 128
	cmp eax, 0
	jle scanString$128

scanString$110:	; call header integral zero 0 stack zero 0

scanString$111:	; £temporary1411 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$112
	neg al
	neg eax

scanString$112:	; parameter £temporary1411, offset 69
	mov [rbp + 69], eax

scanString$113:	; call function noellipse-noellipse isspace
	mov qword [rbp + 45], scanString$114
	mov [rbp + 53], rbp
	add rbp, 45
	jmp isspace

scanString$114:	; post call

scanString$115:	; £temporary1412 = return_value

scanString$116:	; if £temporary1412 != int4$0# goto 128
	cmp ebx, 0
	jne scanString$128

scanString$117:	; £temporary1415 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanString$118
	neg al
	neg eax

scanString$118:	; if £temporary1415 == int4$minus1# goto 128
	cmp eax, -1
	je scanString$128

scanString$119:	; if input == int1$10# goto 128
	cmp byte [rbp + 40], 10
	je scanString$128

scanString$120:	; call header integral zero 0 stack zero 0

scanString$121:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 45], scanString$122
	mov [rbp + 53], rbp
	add rbp, 45
	jmp scanChar

scanString$122:	; post call

scanString$123:	; £temporary1421 = return_value

scanString$124:	; input = £temporary1421
	mov [rbp + 40], bl

scanString$125:	; found = int4$1#
	mov dword [rbp + 41], 1

scanString$126:	; ++g_inChars
	inc dword [g_inChars]

scanString$127:	; goto 107
	jmp scanString$107

scanString$128:	; if precision <= int4$0# goto 130
	cmp dword [rbp + 32], 0
	jle scanString$130

scanString$129:	; ++g_inChars
	inc dword [g_inChars]

scanString$130:	; if found == int4$0# goto 132
	cmp dword [rbp + 41], 0
	je scanString$132

scanString$131:	; ++g_inCount
	inc dword [g_inCount]

scanString$132:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

scanString$133:	; function end scanString

digitToValue:	; call header integral zero 0 stack zero 0

digitToValue$1:	; £temporary1432 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge digitToValue$2
	neg al
	neg eax

digitToValue$2:	; parameter £temporary1432, offset 49
	mov [rbp + 49], eax

digitToValue$3:	; call function noellipse-noellipse isdigit
	mov qword [rbp + 25], digitToValue$4
	mov [rbp + 33], rbp
	add rbp, 25
	jmp isdigit

digitToValue$4:	; post call

digitToValue$5:	; £temporary1433 = return_value

digitToValue$6:	; if £temporary1433 == int4$0# goto 11
	cmp ebx, 0
	je digitToValue$11

digitToValue$7:	; £temporary1434 = input - int1$48#
	mov bl, [rbp + 24]
	sub bl, 48

digitToValue$8:	; £temporary1435 = int_to_int £temporary1434 (Signed_Char -> Unsigned_Long_Int)
	mov rax, 255
	and rbx, rax

digitToValue$9:	; return_value = £temporary1435

digitToValue$10:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

digitToValue$11:	; call header integral zero 0 stack zero 0

digitToValue$12:	; £temporary1436 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge digitToValue$13
	neg al
	neg eax

digitToValue$13:	; parameter £temporary1436, offset 49
	mov [rbp + 49], eax

digitToValue$14:	; call function noellipse-noellipse islower
	mov qword [rbp + 25], digitToValue$15
	mov [rbp + 33], rbp
	add rbp, 25
	jmp islower

digitToValue$15:	; post call

digitToValue$16:	; £temporary1437 = return_value

digitToValue$17:	; if £temporary1437 == int4$0# goto 23
	cmp ebx, 0
	je digitToValue$23

digitToValue$18:	; £temporary1438 = input - int1$97#
	mov bl, [rbp + 24]
	sub bl, 97

digitToValue$19:	; £temporary1439 = int_to_int £temporary1438 (Signed_Char -> Unsigned_Long_Int)
	mov rax, 255
	and rbx, rax

digitToValue$20:	; £temporary1440 = £temporary1439 + int8$10#
	add rbx, 10

digitToValue$21:	; return_value = £temporary1440

digitToValue$22:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

digitToValue$23:	; £temporary1441 = input - int1$65#
	mov bl, [rbp + 24]
	sub bl, 65

digitToValue$24:	; £temporary1442 = int_to_int £temporary1441 (Signed_Char -> Unsigned_Long_Int)
	mov rax, 255
	and rbx, rax

digitToValue$25:	; £temporary1443 = £temporary1442 + int8$10#
	add rbx, 10

digitToValue$26:	; return_value = £temporary1443

digitToValue$27:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

digitToValue$28:	; function end digitToValue

scanLongInt:	; longValue = int8$0#
	mov qword [rbp + 24], 0

scanLongInt$1:	; minus = int4$0#
	mov dword [rbp + 32], 0

scanLongInt$2:	; found = int4$0#
	mov dword [rbp + 36], 0

scanLongInt$3:	; call header integral zero 0 stack zero 0

scanLongInt$4:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 40], scanLongInt$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp scanChar

scanLongInt$5:	; post call

scanLongInt$6:	; £temporary1448 = return_value

scanLongInt$7:	; input = £temporary1448
	mov [rbp + 40], bl

scanLongInt$8:	; call header integral zero 0 stack zero 0

scanLongInt$9:	; £temporary1449 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanLongInt$10
	neg al
	neg eax

scanLongInt$10:	; parameter £temporary1449, offset 65
	mov [rbp + 65], eax

scanLongInt$11:	; call function noellipse-noellipse isspace
	mov qword [rbp + 41], scanLongInt$12
	mov [rbp + 49], rbp
	add rbp, 41
	jmp isspace

scanLongInt$12:	; post call

scanLongInt$13:	; £temporary1450 = return_value

scanLongInt$14:	; if £temporary1450 == int4$0# goto 21
	cmp ebx, 0
	je scanLongInt$21

scanLongInt$15:	; call header integral zero 0 stack zero 0

scanLongInt$16:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 41], scanLongInt$17
	mov [rbp + 49], rbp
	add rbp, 41
	jmp scanChar

scanLongInt$17:	; post call

scanLongInt$18:	; £temporary1451 = return_value

scanLongInt$19:	; input = £temporary1451
	mov [rbp + 40], bl

scanLongInt$20:	; goto 8
	jmp scanLongInt$8

scanLongInt$21:	; if input != int1$43# goto 28
	cmp byte [rbp + 40], 43
	jne scanLongInt$28

scanLongInt$22:	; call header integral zero 0 stack zero 0

scanLongInt$23:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 41], scanLongInt$24
	mov [rbp + 49], rbp
	add rbp, 41
	jmp scanChar

scanLongInt$24:	; post call

scanLongInt$25:	; £temporary1454 = return_value

scanLongInt$26:	; input = £temporary1454
	mov [rbp + 40], bl

scanLongInt$27:	; goto 35
	jmp scanLongInt$35

scanLongInt$28:	; if input != int1$45# goto 35
	cmp byte [rbp + 40], 45
	jne scanLongInt$35

scanLongInt$29:	; minus = int4$1#
	mov dword [rbp + 32], 1

scanLongInt$30:	; call header integral zero 0 stack zero 0

scanLongInt$31:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 41], scanLongInt$32
	mov [rbp + 49], rbp
	add rbp, 41
	jmp scanChar

scanLongInt$32:	; post call

scanLongInt$33:	; £temporary1456 = return_value

scanLongInt$34:	; input = £temporary1456
	mov [rbp + 40], bl

scanLongInt$35:	; call header integral zero 0 stack zero 0

scanLongInt$36:	; £temporary1457 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanLongInt$37
	neg al
	neg eax

scanLongInt$37:	; parameter £temporary1457, offset 65
	mov [rbp + 65], eax

scanLongInt$38:	; call function noellipse-noellipse isdigit
	mov qword [rbp + 41], scanLongInt$39
	mov [rbp + 49], rbp
	add rbp, 41
	jmp isdigit

scanLongInt$39:	; post call

scanLongInt$40:	; £temporary1458 = return_value

scanLongInt$41:	; if £temporary1458 == int4$0# goto 54
	cmp ebx, 0
	je scanLongInt$54

scanLongInt$42:	; £temporary1459 = longValue * int8$10#
	mov rax, [rbp + 24]
	xor rdx, rdx
	imul qword [int8$10#]

scanLongInt$43:	; £temporary1460 = input - int1$48#
	mov bl, [rbp + 40]
	sub bl, 48

scanLongInt$44:	; £temporary1461 = int_to_int £temporary1460 (Signed_Char -> Signed_Long_Int)
	mov rcx, 255
	and rbx, rcx
	cmp bl, 0
	jge scanLongInt$45
	neg bl
	neg rbx

scanLongInt$45:	; £temporary1462 = £temporary1459 + £temporary1461
	add rax, rbx

scanLongInt$46:	; longValue = £temporary1462
	mov [rbp + 24], rax

scanLongInt$47:	; call header integral zero 0 stack zero 0

scanLongInt$48:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 41], scanLongInt$49
	mov [rbp + 49], rbp
	add rbp, 41
	jmp scanChar

scanLongInt$49:	; post call

scanLongInt$50:	; £temporary1463 = return_value

scanLongInt$51:	; input = £temporary1463
	mov [rbp + 40], bl

scanLongInt$52:	; found = int4$1#
	mov dword [rbp + 36], 1

scanLongInt$53:	; goto 35
	jmp scanLongInt$35

scanLongInt$54:	; if minus == int4$0# goto 57
	cmp dword [rbp + 32], 0
	je scanLongInt$57

scanLongInt$55:	; £temporary1465 = -longValue
	mov rax, [rbp + 24]
	neg rax

scanLongInt$56:	; longValue = £temporary1465
	mov [rbp + 24], rax

scanLongInt$57:	; if found == int4$0# goto 59
	cmp dword [rbp + 36], 0
	je scanLongInt$59

scanLongInt$58:	; ++g_inCount
	inc dword [g_inCount]

scanLongInt$59:	; call header integral zero 0 stack zero 0

scanLongInt$60:	; parameter input, offset 65
	mov al, [rbp + 40]
	mov [rbp + 65], al

scanLongInt$61:	; call function noellipse-noellipse unscanChar
	mov qword [rbp + 41], scanLongInt$62
	mov [rbp + 49], rbp
	add rbp, 41
	jmp unscanChar

scanLongInt$62:	; post call

scanLongInt$63:	; return_value = longValue
	mov rbx, [rbp + 24]

scanLongInt$64:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

scanLongInt$65:	; function end scanLongInt

scanUnsignedLongInt:	; unsignedLongValue = int8$0#
	mov qword [rbp + 32], 0

scanUnsignedLongInt$1:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$2:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 48], scanUnsignedLongInt$3
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanChar

scanUnsignedLongInt$3:	; post call

scanUnsignedLongInt$4:	; £temporary1473 = return_value

scanUnsignedLongInt$5:	; input = £temporary1473
	mov [rbp + 48], bl

scanUnsignedLongInt$6:	; found = int4$1#
	mov dword [rbp + 49], 1

scanUnsignedLongInt$7:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$8:	; £temporary1474 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$9
	neg al
	neg eax

scanUnsignedLongInt$9:	; parameter £temporary1474, offset 77
	mov [rbp + 77], eax

scanUnsignedLongInt$10:	; call function noellipse-noellipse isspace
	mov qword [rbp + 53], scanUnsignedLongInt$11
	mov [rbp + 61], rbp
	add rbp, 53
	jmp isspace

scanUnsignedLongInt$11:	; post call

scanUnsignedLongInt$12:	; £temporary1475 = return_value

scanUnsignedLongInt$13:	; if £temporary1475 == int4$0# goto 20
	cmp ebx, 0
	je scanUnsignedLongInt$20

scanUnsignedLongInt$14:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$15:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 53], scanUnsignedLongInt$16
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

scanUnsignedLongInt$16:	; post call

scanUnsignedLongInt$17:	; £temporary1476 = return_value

scanUnsignedLongInt$18:	; input = £temporary1476
	mov [rbp + 48], bl

scanUnsignedLongInt$19:	; goto 7
	jmp scanUnsignedLongInt$7

scanUnsignedLongInt$20:	; if input != int1$48# goto 49
	cmp byte [rbp + 48], 48
	jne scanUnsignedLongInt$49

scanUnsignedLongInt$21:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$22:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 53], scanUnsignedLongInt$23
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

scanUnsignedLongInt$23:	; post call

scanUnsignedLongInt$24:	; £temporary1479 = return_value

scanUnsignedLongInt$25:	; input = £temporary1479
	mov [rbp + 48], bl

scanUnsignedLongInt$26:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$27:	; £temporary1480 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$28
	neg al
	neg eax

scanUnsignedLongInt$28:	; parameter £temporary1480, offset 77
	mov [rbp + 77], eax

scanUnsignedLongInt$29:	; call function noellipse-noellipse tolower
	mov qword [rbp + 53], scanUnsignedLongInt$30
	mov [rbp + 61], rbp
	add rbp, 53
	jmp tolower

scanUnsignedLongInt$30:	; post call

scanUnsignedLongInt$31:	; £temporary1481 = return_value

scanUnsignedLongInt$32:	; if £temporary1481 != int4$120# goto 44
	cmp ebx, 120
	jne scanUnsignedLongInt$44

scanUnsignedLongInt$33:	; if base != int8$0# goto 36
	cmp qword [rbp + 24], 0
	jne scanUnsignedLongInt$36

scanUnsignedLongInt$34:	; £temporary1484 = int8$16#
	mov rax, 16

scanUnsignedLongInt$35:	; goto 37
	jmp scanUnsignedLongInt$37

scanUnsignedLongInt$36:	; £temporary1484 = base
	mov rax, [rbp + 24]

scanUnsignedLongInt$37:	; base = £temporary1484
	mov [rbp + 24], rax

scanUnsignedLongInt$38:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$39:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 53], scanUnsignedLongInt$40
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

scanUnsignedLongInt$40:	; post call

scanUnsignedLongInt$41:	; £temporary1485 = return_value

scanUnsignedLongInt$42:	; input = £temporary1485
	mov [rbp + 48], bl

scanUnsignedLongInt$43:	; goto 49
	jmp scanUnsignedLongInt$49

scanUnsignedLongInt$44:	; if base != int8$0# goto 47
	cmp qword [rbp + 24], 0
	jne scanUnsignedLongInt$47

scanUnsignedLongInt$45:	; £temporary1487 = int8$8#
	mov rax, 8

scanUnsignedLongInt$46:	; goto 48
	jmp scanUnsignedLongInt$48

scanUnsignedLongInt$47:	; £temporary1487 = base
	mov rax, [rbp + 24]

scanUnsignedLongInt$48:	; base = £temporary1487
	mov [rbp + 24], rax

scanUnsignedLongInt$49:	; if base != int8$0# goto 51
	cmp qword [rbp + 24], 0
	jne scanUnsignedLongInt$51

scanUnsignedLongInt$50:	; base = int8$10#
	mov qword [rbp + 24], 10

scanUnsignedLongInt$51:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$52:	; £temporary1489 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanUnsignedLongInt$53
	neg al
	neg eax

scanUnsignedLongInt$53:	; parameter £temporary1489, offset 77
	mov [rbp + 77], eax

scanUnsignedLongInt$54:	; call function noellipse-noellipse isxdigit
	mov qword [rbp + 53], scanUnsignedLongInt$55
	mov [rbp + 61], rbp
	add rbp, 53
	jmp isxdigit

scanUnsignedLongInt$55:	; post call

scanUnsignedLongInt$56:	; £temporary1490 = return_value

scanUnsignedLongInt$57:	; if £temporary1490 == int4$0# goto 75
	cmp ebx, 0
	je scanUnsignedLongInt$75

scanUnsignedLongInt$58:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$59:	; parameter input, offset 77
	mov al, [rbp + 48]
	mov [rbp + 77], al

scanUnsignedLongInt$60:	; call function noellipse-noellipse digitToValue
	mov qword [rbp + 53], scanUnsignedLongInt$61
	mov [rbp + 61], rbp
	add rbp, 53
	jmp digitToValue

scanUnsignedLongInt$61:	; post call

scanUnsignedLongInt$62:	; £temporary1491 = return_value

scanUnsignedLongInt$63:	; digit = £temporary1491
	mov [rbp + 40], rbx

scanUnsignedLongInt$64:	; if digit >= base goto 75
	mov rax, [rbp + 40]
	cmp rax, [rbp + 24]
	jae scanUnsignedLongInt$75

scanUnsignedLongInt$65:	; £temporary1493 = unsignedLongValue * base
	mov rax, [rbp + 32]
	xor rdx, rdx
	mul qword [rbp + 24]

scanUnsignedLongInt$66:	; £temporary1494 = £temporary1493 + digit
	add rax, [rbp + 40]

scanUnsignedLongInt$67:	; unsignedLongValue = £temporary1494
	mov [rbp + 32], rax

scanUnsignedLongInt$68:	; found = int4$1#
	mov dword [rbp + 49], 1

scanUnsignedLongInt$69:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$70:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 53], scanUnsignedLongInt$71
	mov [rbp + 61], rbp
	add rbp, 53
	jmp scanChar

scanUnsignedLongInt$71:	; post call

scanUnsignedLongInt$72:	; £temporary1495 = return_value

scanUnsignedLongInt$73:	; input = £temporary1495
	mov [rbp + 48], bl

scanUnsignedLongInt$74:	; goto 51
	jmp scanUnsignedLongInt$51

scanUnsignedLongInt$75:	; if found == int4$0# goto 77
	cmp dword [rbp + 49], 0
	je scanUnsignedLongInt$77

scanUnsignedLongInt$76:	; ++g_inCount
	inc dword [g_inCount]

scanUnsignedLongInt$77:	; call header integral zero 0 stack zero 0

scanUnsignedLongInt$78:	; parameter input, offset 77
	mov al, [rbp + 48]
	mov [rbp + 77], al

scanUnsignedLongInt$79:	; call function noellipse-noellipse unscanChar
	mov qword [rbp + 53], scanUnsignedLongInt$80
	mov [rbp + 61], rbp
	add rbp, 53
	jmp unscanChar

scanUnsignedLongInt$80:	; post call

scanUnsignedLongInt$81:	; return_value = unsignedLongValue
	mov rbx, [rbp + 32]

scanUnsignedLongInt$82:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

scanUnsignedLongInt$83:	; function end scanUnsignedLongInt

scanLongDouble:	; minus = int4$0#
	mov dword [rbp + 24], 0

scanLongDouble$1:	; found = int4$0#
	mov dword [rbp + 28], 0

scanLongDouble$2:	; push float float8$0.0#
	fldz 

scanLongDouble$3:	; pop float value
	fstp qword [rbp + 32]

scanLongDouble$4:	; push float float8$1.0#
	fld1 

scanLongDouble$5:	; pop float factor
	fstp qword [rbp + 40]

scanLongDouble$6:	; call header integral zero 0 stack zero 0

scanLongDouble$7:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 48], scanLongDouble$8
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanChar

scanLongDouble$8:	; post call

scanLongDouble$9:	; £temporary1505 = return_value

scanLongDouble$10:	; input = £temporary1505
	mov [rbp + 48], bl

scanLongDouble$11:	; call header integral zero 0 stack zero 0

scanLongDouble$12:	; £temporary1506 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$13
	neg al
	neg eax

scanLongDouble$13:	; parameter £temporary1506, offset 73
	mov [rbp + 73], eax

scanLongDouble$14:	; call function noellipse-noellipse isspace
	mov qword [rbp + 49], scanLongDouble$15
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isspace

scanLongDouble$15:	; post call

scanLongDouble$16:	; £temporary1507 = return_value

scanLongDouble$17:	; if £temporary1507 == int4$0# goto 24
	cmp ebx, 0
	je scanLongDouble$24

scanLongDouble$18:	; call header integral zero 0 stack zero 0

scanLongDouble$19:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanLongDouble$20
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

scanLongDouble$20:	; post call

scanLongDouble$21:	; £temporary1508 = return_value

scanLongDouble$22:	; input = £temporary1508
	mov [rbp + 48], bl

scanLongDouble$23:	; goto 11
	jmp scanLongDouble$11

scanLongDouble$24:	; if input != int1$43# goto 31
	cmp byte [rbp + 48], 43
	jne scanLongDouble$31

scanLongDouble$25:	; call header integral zero 0 stack zero 0

scanLongDouble$26:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanLongDouble$27
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

scanLongDouble$27:	; post call

scanLongDouble$28:	; £temporary1511 = return_value

scanLongDouble$29:	; input = £temporary1511
	mov [rbp + 48], bl

scanLongDouble$30:	; goto 38
	jmp scanLongDouble$38

scanLongDouble$31:	; if input != int1$45# goto 38
	cmp byte [rbp + 48], 45
	jne scanLongDouble$38

scanLongDouble$32:	; minus = int4$1#
	mov dword [rbp + 24], 1

scanLongDouble$33:	; call header integral zero 0 stack zero 0

scanLongDouble$34:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanLongDouble$35
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

scanLongDouble$35:	; post call

scanLongDouble$36:	; £temporary1513 = return_value

scanLongDouble$37:	; input = £temporary1513
	mov [rbp + 48], bl

scanLongDouble$38:	; call header integral zero 0 stack zero 0

scanLongDouble$39:	; £temporary1514 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$40
	neg al
	neg eax

scanLongDouble$40:	; parameter £temporary1514, offset 73
	mov [rbp + 73], eax

scanLongDouble$41:	; call function noellipse-noellipse isdigit
	mov qword [rbp + 49], scanLongDouble$42
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isdigit

scanLongDouble$42:	; post call

scanLongDouble$43:	; £temporary1515 = return_value

scanLongDouble$44:	; if £temporary1515 == int4$0# goto 60
	cmp ebx, 0
	je scanLongDouble$60

scanLongDouble$45:	; push float float8$10.0#
	fld qword [float8$10.0#]

scanLongDouble$46:	; push float value
	fld qword [rbp + 32]

scanLongDouble$47:	; £temporary1516 = float8$10.0# * value
	fmul 

scanLongDouble$48:	; £temporary1517 = input - int1$48#
	mov al, [rbp + 48]
	sub al, 48

scanLongDouble$49:	; £temporary1519 = int_to_int £temporary1517 (Signed_Char -> Signed_Int)
	and eax, 255
	cmp al, 0
	jge scanLongDouble$50
	neg al
	neg eax

scanLongDouble$50:	; £temporary1518 = int_to_float £temporary1519 (Signed_Int -> Long_Double)
	mov [$IntegralStorage#], eax
	fild word [$IntegralStorage#]

scanLongDouble$51:	; £temporary1520 = £temporary1516 + £temporary1518
	fadd 

scanLongDouble$52:	; pop float value
	fstp qword [rbp + 32]

scanLongDouble$53:	; call header integral zero 0 stack zero 0

scanLongDouble$54:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanLongDouble$55
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

scanLongDouble$55:	; post call

scanLongDouble$56:	; £temporary1521 = return_value

scanLongDouble$57:	; input = £temporary1521
	mov [rbp + 48], bl

scanLongDouble$58:	; found = int4$1#
	mov dword [rbp + 28], 1

scanLongDouble$59:	; goto 38
	jmp scanLongDouble$38

scanLongDouble$60:	; if input != int1$46# goto 92
	cmp byte [rbp + 48], 46
	jne scanLongDouble$92

scanLongDouble$61:	; call header integral zero 0 stack zero 0

scanLongDouble$62:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanLongDouble$63
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

scanLongDouble$63:	; post call

scanLongDouble$64:	; £temporary1524 = return_value

scanLongDouble$65:	; input = £temporary1524
	mov [rbp + 48], bl

scanLongDouble$66:	; call header integral zero 0 stack zero 0

scanLongDouble$67:	; £temporary1525 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$68
	neg al
	neg eax

scanLongDouble$68:	; parameter £temporary1525, offset 73
	mov [rbp + 73], eax

scanLongDouble$69:	; call function noellipse-noellipse isdigit
	mov qword [rbp + 49], scanLongDouble$70
	mov [rbp + 57], rbp
	add rbp, 49
	jmp isdigit

scanLongDouble$70:	; post call

scanLongDouble$71:	; £temporary1526 = return_value

scanLongDouble$72:	; if £temporary1526 == int4$0# goto 92
	cmp ebx, 0
	je scanLongDouble$92

scanLongDouble$73:	; push float factor
	fld qword [rbp + 40]

scanLongDouble$74:	; push float float8$10.0#
	fld qword [float8$10.0#]

scanLongDouble$75:	; £temporary1527 = factor / float8$10.0#
	fdiv 

scanLongDouble$76:	; pop float factor
	fstp qword [rbp + 40]

scanLongDouble$77:	; push float value
	fld qword [rbp + 32]

scanLongDouble$78:	; push float factor
	fld qword [rbp + 40]

scanLongDouble$79:	; £temporary1528 = input - int1$48#
	mov al, [rbp + 48]
	sub al, 48

scanLongDouble$80:	; £temporary1530 = int_to_int £temporary1528 (Signed_Char -> Signed_Int)
	and eax, 255
	cmp al, 0
	jge scanLongDouble$81
	neg al
	neg eax

scanLongDouble$81:	; £temporary1529 = int_to_float £temporary1530 (Signed_Int -> Long_Double)
	mov [$IntegralStorage#], eax
	fild word [$IntegralStorage#]

scanLongDouble$82:	; £temporary1531 = factor * £temporary1529
	fmul 

scanLongDouble$83:	; £temporary1532 = value + £temporary1531
	fadd 

scanLongDouble$84:	; pop float value
	fstp qword [rbp + 32]

scanLongDouble$85:	; call header integral zero 0 stack zero 0

scanLongDouble$86:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 49], scanLongDouble$87
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanChar

scanLongDouble$87:	; post call

scanLongDouble$88:	; £temporary1533 = return_value

scanLongDouble$89:	; input = £temporary1533
	mov [rbp + 48], bl

scanLongDouble$90:	; found = int4$1#
	mov dword [rbp + 28], 1

scanLongDouble$91:	; goto 66
	jmp scanLongDouble$66

scanLongDouble$92:	; call header integral zero 0 stack zero 0

scanLongDouble$93:	; parameter input, offset 73
	mov al, [rbp + 48]
	mov [rbp + 73], al

scanLongDouble$94:	; call function noellipse-noellipse unscanChar
	mov qword [rbp + 49], scanLongDouble$95
	mov [rbp + 57], rbp
	add rbp, 49
	jmp unscanChar

scanLongDouble$95:	; post call

scanLongDouble$96:	; call header integral zero 0 stack zero 0

scanLongDouble$97:	; £temporary1536 = int_to_int input (Signed_Char -> Signed_Int)
	mov al, [rbp + 48]
	and eax, 255
	cmp al, 0
	jge scanLongDouble$98
	neg al
	neg eax

scanLongDouble$98:	; parameter £temporary1536, offset 73
	mov [rbp + 73], eax

scanLongDouble$99:	; call function noellipse-noellipse tolower
	mov qword [rbp + 49], scanLongDouble$100
	mov [rbp + 57], rbp
	add rbp, 49
	jmp tolower

scanLongDouble$100:	; post call

scanLongDouble$101:	; £temporary1537 = return_value

scanLongDouble$102:	; if £temporary1537 != int4$101# goto 121
	cmp ebx, 101
	jne scanLongDouble$121

scanLongDouble$103:	; call header integral zero 0 stack zero 0

scanLongDouble$104:	; call function noellipse-noellipse scanLongInt
	mov qword [rbp + 49], scanLongDouble$105
	mov [rbp + 57], rbp
	add rbp, 49
	jmp scanLongInt

scanLongDouble$105:	; post call

scanLongDouble$106:	; £temporary1539 = return_value

scanLongDouble$107:	; £temporary1540 = int_to_float £temporary1539 (Signed_Long_Int -> Double)
	mov [$IntegralStorage#], rbx
	fild dword [$IntegralStorage#]

scanLongDouble$108:	; pop float exponent
	fstp qword [rbp + 49]

scanLongDouble$109:	; push float value
	fld qword [rbp + 32]

scanLongDouble$110:	; call header integral zero 0 stack no zero 1
	fstp qword [rbp + 57]

scanLongDouble$111:	; push float float8$10.0#
	fld qword [float8$10.0#]

scanLongDouble$112:	; parameter float8$10.0#, offset 81
	fstp qword [rbp + 89]

scanLongDouble$113:	; push float exponent
	fld qword [rbp + 49]

scanLongDouble$114:	; parameter exponent, offset 89
	fstp qword [rbp + 97]

scanLongDouble$115:	; call function noellipse-noellipse pow
	mov qword [rbp + 65], scanLongDouble$116
	mov [rbp + 73], rbp
	add rbp, 65
	jmp pow

scanLongDouble$116:	; post call
	fstp qword [rbp + 65]
	fld qword [rbp + 57]
	fld qword [rbp + 65]

scanLongDouble$117:	; £temporary1541 = return_value

scanLongDouble$118:	; £temporary1542 = value * £temporary1541
	fmul 

scanLongDouble$119:	; pop float value
	fstp qword [rbp + 32]

scanLongDouble$120:	; goto 125
	jmp scanLongDouble$125

scanLongDouble$121:	; call header integral zero 0 stack zero 0

scanLongDouble$122:	; parameter input, offset 73
	mov al, [rbp + 48]
	mov [rbp + 73], al

scanLongDouble$123:	; call function noellipse-noellipse unscanChar
	mov qword [rbp + 49], scanLongDouble$124
	mov [rbp + 57], rbp
	add rbp, 49
	jmp unscanChar

scanLongDouble$124:	; post call

scanLongDouble$125:	; if minus == int4$0# goto 129
	cmp dword [rbp + 24], 0
	je scanLongDouble$129

scanLongDouble$126:	; push float value
	fld qword [rbp + 32]

scanLongDouble$127:	; £temporary1544 = -value
	fchs 

scanLongDouble$128:	; pop float value
	fstp qword [rbp + 32]

scanLongDouble$129:	; if found == int4$0# goto 131
	cmp dword [rbp + 28], 0
	je scanLongDouble$131

scanLongDouble$130:	; ++g_inCount
	inc dword [g_inCount]

scanLongDouble$131:	; push float value
	fld qword [rbp + 32]

scanLongDouble$132:	; return_value = value

scanLongDouble$133:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

scanLongDouble$134:	; function end scanLongDouble

scanFormat:	; empty

scanFormat$1:	; percent = int4$0#
	mov dword [rbp + 49], 0

scanFormat$2:	; shortInt = int4$0#
	mov dword [rbp + 53], 0

scanFormat$3:	; longIntOrDouble = int4$0#
	mov dword [rbp + 57], 0

scanFormat$4:	; longDouble = int4$0#
	mov dword [rbp + 61], 0

scanFormat$5:	; star = int4$0#
	mov dword [rbp + 65], 0

scanFormat$6:	; g_inCount = int4$0#
	mov dword [g_inCount], 0

scanFormat$7:	; g_inChars = int4$0#
	mov dword [g_inChars], 0

scanFormat$8:	; index = int4$0#
	mov dword [rbp + 93], 0

scanFormat$9:	; £temporary1556 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

scanFormat$10:	; £temporary1559 = format + £temporary1556
	mov rsi, [rbp + 24]
	add rsi, rax

scanFormat$11:	; £temporary1557 -> £temporary1559 = *£temporary1559

scanFormat$12:	; if £temporary1557 -> £temporary1559 == int1$0# goto 354
	cmp byte [rsi], 0
	je scanFormat$354

scanFormat$13:	; £temporary1562 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

scanFormat$14:	; £temporary1565 = format + £temporary1562
	mov rsi, [rbp + 24]
	add rsi, rax

scanFormat$15:	; £temporary1563 -> £temporary1565 = *£temporary1565

scanFormat$16:	; c = £temporary1563 -> £temporary1565
	mov al, [rsi]
	mov [rbp + 40], al

scanFormat$17:	; £temporary1566 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$18
	neg al
	neg eax

scanFormat$18:	; £temporary1567 = £temporary1566 + int4$1#
	inc eax

scanFormat$19:	; d = £temporary1567
	mov [rbp + 153], eax

scanFormat$20:	; if percent == int4$0# goto 346
	cmp dword [rbp + 49], 0
	je scanFormat$346

scanFormat$21:	; £temporary1568 = d - int4$1#
	mov eax, [rbp + 153]
	dec eax

scanFormat$22:	; case £temporary1568 == int4$104# goto 40
	cmp eax, 104
	je scanFormat$40

scanFormat$23:	; case £temporary1568 == int4$108# goto 42
	cmp eax, 108
	je scanFormat$42

scanFormat$24:	; case £temporary1568 == int4$76# goto 44
	cmp eax, 76
	je scanFormat$44

scanFormat$25:	; case £temporary1568 == int4$42# goto 46
	cmp eax, 42
	je scanFormat$46

scanFormat$26:	; case £temporary1568 == int4$99# goto 48
	cmp eax, 99
	je scanFormat$48

scanFormat$27:	; case £temporary1568 == int4$115# goto 67
	cmp eax, 115
	je scanFormat$67

scanFormat$28:	; case £temporary1568 == int4$100# goto 87
	cmp eax, 100
	je scanFormat$87

scanFormat$29:	; case £temporary1568 == int4$105# goto 87
	cmp eax, 105
	je scanFormat$87

scanFormat$30:	; case £temporary1568 == int4$111# goto 125
	cmp eax, 111
	je scanFormat$125

scanFormat$31:	; case £temporary1568 == int4$120# goto 164
	cmp eax, 120
	je scanFormat$164

scanFormat$32:	; case £temporary1568 == int4$117# goto 203
	cmp eax, 117
	je scanFormat$203

scanFormat$33:	; case £temporary1568 == int4$103# goto 242
	cmp eax, 103
	je scanFormat$242

scanFormat$34:	; case £temporary1568 == int4$102# goto 242
	cmp eax, 102
	je scanFormat$242

scanFormat$35:	; case £temporary1568 == int4$101# goto 242
	cmp eax, 101
	je scanFormat$242

scanFormat$36:	; case £temporary1568 == int4$91# goto 281
	cmp eax, 91
	je scanFormat$281

scanFormat$37:	; case £temporary1568 == int4$110# goto 329
	cmp eax, 110
	je scanFormat$329

scanFormat$38:	; case end £temporary1568

scanFormat$39:	; goto 339
	jmp scanFormat$339

scanFormat$40:	; shortInt = int4$1#
	mov dword [rbp + 53], 1

scanFormat$41:	; goto 352
	jmp scanFormat$352

scanFormat$42:	; longIntOrDouble = int4$1#
	mov dword [rbp + 57], 1

scanFormat$43:	; goto 352
	jmp scanFormat$352

scanFormat$44:	; longDouble = int4$1#
	mov dword [rbp + 61], 1

scanFormat$45:	; goto 352
	jmp scanFormat$352

scanFormat$46:	; star = int4$1#
	mov dword [rbp + 65], 1

scanFormat$47:	; goto 352
	jmp scanFormat$352

scanFormat$48:	; call header integral zero 0 stack zero 0

scanFormat$49:	; call function noellipse-noellipse scanChar
	mov qword [rbp + 157], scanFormat$50
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanChar

scanFormat$50:	; post call

scanFormat$51:	; £temporary1569 = return_value

scanFormat$52:	; charValue = £temporary1569
	mov [rbp + 157], bl

scanFormat$53:	; if star != int4$0# goto 62
	cmp dword [rbp + 65], 0
	jne scanFormat$62

scanFormat$54:	; £temporary1572 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$55:	; arg_list = £temporary1572
	mov [rbp + 32], rax

scanFormat$56:	; £temporary1574 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$57:	; £temporary1576 = int_to_int £temporary1574 (Pointer -> Pointer)

scanFormat$58:	; £temporary1577 -> £temporary1576 = *£temporary1576

scanFormat$59:	; charPtr = £temporary1577 -> £temporary1576
	mov rax, [rsi]
	mov [rbp + 41], rax

scanFormat$60:	; £temporary1578 -> charPtr = *charPtr
	mov rsi, [rbp + 41]

scanFormat$61:	; £temporary1578 -> charPtr = charValue
	mov al, [rbp + 157]
	mov [rsi], al

scanFormat$62:	; percent = int4$0#
	mov dword [rbp + 49], 0

scanFormat$63:	; £temporary1579 = int_to_int charValue (Signed_Char -> Signed_Int)
	mov al, [rbp + 157]
	and eax, 255
	cmp al, 0
	jge scanFormat$64
	neg al
	neg eax

scanFormat$64:	; if £temporary1579 == int4$minus1# goto 352
	cmp eax, -1
	je scanFormat$352

scanFormat$65:	; ++g_inCount
	inc dword [g_inCount]

scanFormat$66:	; goto 352
	jmp scanFormat$352

scanFormat$67:	; if star != int4$0# goto 80
	cmp dword [rbp + 65], 0
	jne scanFormat$80

scanFormat$68:	; £temporary1584 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$69:	; arg_list = £temporary1584
	mov [rbp + 32], rax

scanFormat$70:	; £temporary1586 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$71:	; £temporary1588 = int_to_int £temporary1586 (Pointer -> Pointer)

scanFormat$72:	; £temporary1589 -> £temporary1588 = *£temporary1588

scanFormat$73:	; charPtr = £temporary1589 -> £temporary1588
	mov rax, [rsi]
	mov [rbp + 41], rax

scanFormat$74:	; call header integral zero 0 stack zero 0

scanFormat$75:	; parameter charPtr, offset 181
	mov rax, [rbp + 41]
	mov [rbp + 181], rax

scanFormat$76:	; parameter int4$0#, offset 189
	mov dword [rbp + 189], 0

scanFormat$77:	; call function noellipse-noellipse scanString
	mov qword [rbp + 157], scanFormat$78
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanString

scanFormat$78:	; post call

scanFormat$79:	; goto 85
	jmp scanFormat$85

scanFormat$80:	; call header integral zero 0 stack zero 0

scanFormat$81:	; parameter int8$0#, offset 181
	mov rax, 0
	mov [rbp + 181], rax

scanFormat$82:	; parameter int4$0#, offset 189
	mov dword [rbp + 189], 0

scanFormat$83:	; call function noellipse-noellipse scanString
	mov qword [rbp + 157], scanFormat$84
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanString

scanFormat$84:	; post call

scanFormat$85:	; percent = int4$0#
	mov dword [rbp + 49], 0

scanFormat$86:	; goto 352
	jmp scanFormat$352

scanFormat$87:	; call header integral zero 0 stack zero 0

scanFormat$88:	; call function noellipse-noellipse scanLongInt
	mov qword [rbp + 157], scanFormat$89
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongInt

scanFormat$89:	; post call

scanFormat$90:	; £temporary1592 = return_value

scanFormat$91:	; longValue = £temporary1592
	mov [rbp + 69], rbx

scanFormat$92:	; if star != int4$0# goto 123
	cmp dword [rbp + 65], 0
	jne scanFormat$123

scanFormat$93:	; if shortInt == int4$0# goto 104
	cmp dword [rbp + 53], 0
	je scanFormat$104

scanFormat$94:	; £temporary1595 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$95:	; arg_list = £temporary1595
	mov [rbp + 32], rax

scanFormat$96:	; £temporary1597 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$97:	; £temporary1599 = int_to_int £temporary1597 (Pointer -> Pointer)

scanFormat$98:	; £temporary1600 -> £temporary1599 = *£temporary1599

scanFormat$99:	; shortPtr = £temporary1600 -> £temporary1599
	mov rax, [rsi]
	mov [rbp + 85], rax

scanFormat$100:	; £temporary1601 -> shortPtr = *shortPtr
	mov rsi, [rbp + 85]

scanFormat$101:	; £temporary1602 = int_to_int longValue (Signed_Long_Int -> Signed_Short_Int)
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$102
	neg rax
	neg ax

scanFormat$102:	; £temporary1601 -> shortPtr = £temporary1602
	mov [rsi], ax

scanFormat$103:	; goto 123
	jmp scanFormat$123

scanFormat$104:	; if longIntOrDouble != int4$0# goto 115
	cmp dword [rbp + 57], 0
	jne scanFormat$115

scanFormat$105:	; £temporary1605 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$106:	; arg_list = £temporary1605
	mov [rbp + 32], rax

scanFormat$107:	; £temporary1607 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$108:	; £temporary1609 = int_to_int £temporary1607 (Pointer -> Pointer)

scanFormat$109:	; £temporary1610 -> £temporary1609 = *£temporary1609

scanFormat$110:	; intPtr = £temporary1610 -> £temporary1609
	mov rax, [rsi]
	mov [rbp + 97], rax

scanFormat$111:	; £temporary1611 -> intPtr = *intPtr
	mov rsi, [rbp + 97]

scanFormat$112:	; £temporary1612 = int_to_int longValue (Signed_Long_Int -> Signed_Int)
	mov rax, [rbp + 69]
	cmp rax, 0
	jge scanFormat$113
	neg rax
	neg eax

scanFormat$113:	; £temporary1611 -> intPtr = £temporary1612
	mov [rsi], eax

scanFormat$114:	; goto 123
	jmp scanFormat$123

scanFormat$115:	; £temporary1613 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$116:	; arg_list = £temporary1613
	mov [rbp + 32], rax

scanFormat$117:	; £temporary1615 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$118:	; £temporary1617 = int_to_int £temporary1615 (Pointer -> Pointer)

scanFormat$119:	; £temporary1618 -> £temporary1617 = *£temporary1617

scanFormat$120:	; longPtr = £temporary1618 -> £temporary1617
	mov rax, [rsi]
	mov [rbp + 77], rax

scanFormat$121:	; £temporary1619 -> longPtr = *longPtr
	mov rsi, [rbp + 77]

scanFormat$122:	; £temporary1619 -> longPtr = longValue
	mov rax, [rbp + 69]
	mov [rsi], rax

scanFormat$123:	; percent = int4$0#
	mov dword [rbp + 49], 0

scanFormat$124:	; goto 352
	jmp scanFormat$352

scanFormat$125:	; call header integral zero 0 stack zero 0

scanFormat$126:	; parameter int8$8#, offset 181
	mov rax, 8
	mov [rbp + 181], rax

scanFormat$127:	; call function noellipse-noellipse scanUnsignedLongInt
	mov qword [rbp + 157], scanFormat$128
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

scanFormat$128:	; post call

scanFormat$129:	; £temporary1621 = return_value

scanFormat$130:	; unsignedLongValue = £temporary1621
	mov [rbp + 113], rbx

scanFormat$131:	; if star != int4$0# goto 162
	cmp dword [rbp + 65], 0
	jne scanFormat$162

scanFormat$132:	; if shortInt == int4$0# goto 143
	cmp dword [rbp + 53], 0
	je scanFormat$143

scanFormat$133:	; £temporary1624 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$134:	; arg_list = £temporary1624
	mov [rbp + 32], rax

scanFormat$135:	; £temporary1626 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$136:	; £temporary1628 = int_to_int £temporary1626 (Pointer -> Pointer)

scanFormat$137:	; £temporary1629 -> £temporary1628 = *£temporary1628

scanFormat$138:	; unsignedShortPtr = £temporary1629 -> £temporary1628
	mov rax, [rsi]
	mov [rbp + 129], rax

scanFormat$139:	; £temporary1630 -> unsignedShortPtr = *unsignedShortPtr
	mov rsi, [rbp + 129]

scanFormat$140:	; £temporary1631 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
	mov rax, [rbp + 113]

scanFormat$141:	; £temporary1630 -> unsignedShortPtr = £temporary1631
	mov [rsi], ax

scanFormat$142:	; goto 162
	jmp scanFormat$162

scanFormat$143:	; if longIntOrDouble != int4$0# goto 154
	cmp dword [rbp + 57], 0
	jne scanFormat$154

scanFormat$144:	; £temporary1634 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$145:	; arg_list = £temporary1634
	mov [rbp + 32], rax

scanFormat$146:	; £temporary1636 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$147:	; £temporary1638 = int_to_int £temporary1636 (Pointer -> Pointer)

scanFormat$148:	; £temporary1639 -> £temporary1638 = *£temporary1638

scanFormat$149:	; unsignedIntPtr = £temporary1639 -> £temporary1638
	mov rax, [rsi]
	mov [rbp + 137], rax

scanFormat$150:	; £temporary1640 -> unsignedIntPtr = *unsignedIntPtr
	mov rsi, [rbp + 137]

scanFormat$151:	; £temporary1641 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
	mov rax, [rbp + 113]

scanFormat$152:	; £temporary1640 -> unsignedIntPtr = £temporary1641
	mov [rsi], eax

scanFormat$153:	; goto 162
	jmp scanFormat$162

scanFormat$154:	; £temporary1642 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$155:	; arg_list = £temporary1642
	mov [rbp + 32], rax

scanFormat$156:	; £temporary1644 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$157:	; £temporary1646 = int_to_int £temporary1644 (Pointer -> Pointer)

scanFormat$158:	; £temporary1647 -> £temporary1646 = *£temporary1646

scanFormat$159:	; unsignedLongPtr = £temporary1647 -> £temporary1646
	mov rax, [rsi]
	mov [rbp + 121], rax

scanFormat$160:	; £temporary1648 -> unsignedLongPtr = *unsignedLongPtr
	mov rsi, [rbp + 121]

scanFormat$161:	; £temporary1648 -> unsignedLongPtr = unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

scanFormat$162:	; percent = int4$0#
	mov dword [rbp + 49], 0

scanFormat$163:	; goto 352
	jmp scanFormat$352

scanFormat$164:	; call header integral zero 0 stack zero 0

scanFormat$165:	; parameter int8$16#, offset 181
	mov rax, 16
	mov [rbp + 181], rax

scanFormat$166:	; call function noellipse-noellipse scanUnsignedLongInt
	mov qword [rbp + 157], scanFormat$167
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

scanFormat$167:	; post call

scanFormat$168:	; £temporary1650 = return_value

scanFormat$169:	; unsignedLongValue = £temporary1650
	mov [rbp + 113], rbx

scanFormat$170:	; if star != int4$0# goto 201
	cmp dword [rbp + 65], 0
	jne scanFormat$201

scanFormat$171:	; if shortInt == int4$0# goto 182
	cmp dword [rbp + 53], 0
	je scanFormat$182

scanFormat$172:	; £temporary1653 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$173:	; arg_list = £temporary1653
	mov [rbp + 32], rax

scanFormat$174:	; £temporary1655 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$175:	; £temporary1657 = int_to_int £temporary1655 (Pointer -> Pointer)

scanFormat$176:	; £temporary1658 -> £temporary1657 = *£temporary1657

scanFormat$177:	; unsignedShortPtr = £temporary1658 -> £temporary1657
	mov rax, [rsi]
	mov [rbp + 129], rax

scanFormat$178:	; £temporary1659 -> unsignedShortPtr = *unsignedShortPtr
	mov rsi, [rbp + 129]

scanFormat$179:	; £temporary1660 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
	mov rax, [rbp + 113]

scanFormat$180:	; £temporary1659 -> unsignedShortPtr = £temporary1660
	mov [rsi], ax

scanFormat$181:	; goto 201
	jmp scanFormat$201

scanFormat$182:	; if longIntOrDouble != int4$0# goto 193
	cmp dword [rbp + 57], 0
	jne scanFormat$193

scanFormat$183:	; £temporary1663 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$184:	; arg_list = £temporary1663
	mov [rbp + 32], rax

scanFormat$185:	; £temporary1665 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$186:	; £temporary1667 = int_to_int £temporary1665 (Pointer -> Pointer)

scanFormat$187:	; £temporary1668 -> £temporary1667 = *£temporary1667

scanFormat$188:	; unsignedIntPtr = £temporary1668 -> £temporary1667
	mov rax, [rsi]
	mov [rbp + 137], rax

scanFormat$189:	; £temporary1669 -> unsignedIntPtr = *unsignedIntPtr
	mov rsi, [rbp + 137]

scanFormat$190:	; £temporary1670 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
	mov rax, [rbp + 113]

scanFormat$191:	; £temporary1669 -> unsignedIntPtr = £temporary1670
	mov [rsi], eax

scanFormat$192:	; goto 201
	jmp scanFormat$201

scanFormat$193:	; £temporary1671 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$194:	; arg_list = £temporary1671
	mov [rbp + 32], rax

scanFormat$195:	; £temporary1673 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$196:	; £temporary1675 = int_to_int £temporary1673 (Pointer -> Pointer)

scanFormat$197:	; £temporary1676 -> £temporary1675 = *£temporary1675

scanFormat$198:	; unsignedLongPtr = £temporary1676 -> £temporary1675
	mov rax, [rsi]
	mov [rbp + 121], rax

scanFormat$199:	; £temporary1677 -> unsignedLongPtr = *unsignedLongPtr
	mov rsi, [rbp + 121]

scanFormat$200:	; £temporary1677 -> unsignedLongPtr = unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

scanFormat$201:	; percent = int4$0#
	mov dword [rbp + 49], 0

scanFormat$202:	; goto 352
	jmp scanFormat$352

scanFormat$203:	; call header integral zero 0 stack zero 0

scanFormat$204:	; parameter int8$0#, offset 181
	mov rax, 0
	mov [rbp + 181], rax

scanFormat$205:	; call function noellipse-noellipse scanUnsignedLongInt
	mov qword [rbp + 157], scanFormat$206
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanUnsignedLongInt

scanFormat$206:	; post call

scanFormat$207:	; £temporary1679 = return_value

scanFormat$208:	; unsignedLongValue = £temporary1679
	mov [rbp + 113], rbx

scanFormat$209:	; if star != int4$0# goto 240
	cmp dword [rbp + 65], 0
	jne scanFormat$240

scanFormat$210:	; if shortInt == int4$0# goto 221
	cmp dword [rbp + 53], 0
	je scanFormat$221

scanFormat$211:	; £temporary1682 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$212:	; arg_list = £temporary1682
	mov [rbp + 32], rax

scanFormat$213:	; £temporary1684 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$214:	; £temporary1686 = int_to_int £temporary1684 (Pointer -> Pointer)

scanFormat$215:	; £temporary1687 -> £temporary1686 = *£temporary1686

scanFormat$216:	; unsignedShortPtr = £temporary1687 -> £temporary1686
	mov rax, [rsi]
	mov [rbp + 129], rax

scanFormat$217:	; £temporary1688 -> unsignedShortPtr = *unsignedShortPtr
	mov rsi, [rbp + 129]

scanFormat$218:	; £temporary1689 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Short_Int)
	mov rax, [rbp + 113]

scanFormat$219:	; £temporary1688 -> unsignedShortPtr = £temporary1689
	mov [rsi], ax

scanFormat$220:	; goto 240
	jmp scanFormat$240

scanFormat$221:	; if longIntOrDouble != int4$0# goto 232
	cmp dword [rbp + 57], 0
	jne scanFormat$232

scanFormat$222:	; £temporary1692 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$223:	; arg_list = £temporary1692
	mov [rbp + 32], rax

scanFormat$224:	; £temporary1694 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$225:	; £temporary1696 = int_to_int £temporary1694 (Pointer -> Pointer)

scanFormat$226:	; £temporary1697 -> £temporary1696 = *£temporary1696

scanFormat$227:	; unsignedIntPtr = £temporary1697 -> £temporary1696
	mov rax, [rsi]
	mov [rbp + 137], rax

scanFormat$228:	; £temporary1698 -> unsignedIntPtr = *unsignedIntPtr
	mov rsi, [rbp + 137]

scanFormat$229:	; £temporary1699 = int_to_int unsignedLongValue (Unsigned_Long_Int -> Signed_Int)
	mov rax, [rbp + 113]

scanFormat$230:	; £temporary1698 -> unsignedIntPtr = £temporary1699
	mov [rsi], eax

scanFormat$231:	; goto 240
	jmp scanFormat$240

scanFormat$232:	; £temporary1700 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$233:	; arg_list = £temporary1700
	mov [rbp + 32], rax

scanFormat$234:	; £temporary1702 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$235:	; £temporary1704 = int_to_int £temporary1702 (Pointer -> Pointer)

scanFormat$236:	; £temporary1705 -> £temporary1704 = *£temporary1704

scanFormat$237:	; unsignedLongPtr = £temporary1705 -> £temporary1704
	mov rax, [rsi]
	mov [rbp + 121], rax

scanFormat$238:	; £temporary1706 -> unsignedLongPtr = *unsignedLongPtr
	mov rsi, [rbp + 121]

scanFormat$239:	; £temporary1706 -> unsignedLongPtr = unsignedLongValue
	mov rax, [rbp + 113]
	mov [rsi], rax

scanFormat$240:	; percent = int4$0#
	mov dword [rbp + 49], 0

scanFormat$241:	; goto 352
	jmp scanFormat$352

scanFormat$242:	; call header integral zero 0 stack zero 0

scanFormat$243:	; call function noellipse-noellipse scanLongDouble
	mov qword [rbp + 157], scanFormat$244
	mov [rbp + 165], rbp
	add rbp, 157
	jmp scanLongDouble

scanFormat$244:	; post call

scanFormat$245:	; £temporary1708 = return_value

scanFormat$246:	; pop float longDoubleValue
	fstp qword [rbp + 145]

scanFormat$247:	; if star != int4$0# goto 279
	cmp dword [rbp + 65], 0
	jne scanFormat$279

scanFormat$248:	; if longIntOrDouble == int4$0# goto 259
	cmp dword [rbp + 57], 0
	je scanFormat$259

scanFormat$249:	; £temporary1711 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$250:	; arg_list = £temporary1711
	mov [rbp + 32], rax

scanFormat$251:	; £temporary1713 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$252:	; £temporary1715 = int_to_int £temporary1713 (Pointer -> Pointer)

scanFormat$253:	; £temporary1716 -> £temporary1715 = *£temporary1715

scanFormat$254:	; doublePtr = £temporary1716 -> £temporary1715
	mov rax, [rsi]
	mov [rbp + 157], rax

scanFormat$255:	; £temporary1717 -> doublePtr = *doublePtr
	mov rsi, [rbp + 157]

scanFormat$256:	; push float longDoubleValue
	fld qword [rbp + 145]

scanFormat$257:	; pop float £temporary1717 -> doublePtr
	fstp qword [rsi]

scanFormat$258:	; goto 279
	jmp scanFormat$279

scanFormat$259:	; if longDouble == int4$0# goto 270
	cmp dword [rbp + 61], 0
	je scanFormat$270

scanFormat$260:	; £temporary1719 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$261:	; arg_list = £temporary1719
	mov [rbp + 32], rax

scanFormat$262:	; £temporary1721 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$263:	; £temporary1723 = int_to_int £temporary1721 (Pointer -> Pointer)

scanFormat$264:	; £temporary1724 -> £temporary1723 = *£temporary1723

scanFormat$265:	; longDoublePtr = £temporary1724 -> £temporary1723
	mov rax, [rsi]
	mov [rbp + 157], rax

scanFormat$266:	; £temporary1725 -> longDoublePtr = *longDoublePtr
	mov rsi, [rbp + 157]

scanFormat$267:	; push float longDoubleValue
	fld qword [rbp + 145]

scanFormat$268:	; pop float £temporary1725 -> longDoublePtr
	fstp qword [rsi]

scanFormat$269:	; goto 279
	jmp scanFormat$279

scanFormat$270:	; £temporary1726 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$271:	; arg_list = £temporary1726
	mov [rbp + 32], rax

scanFormat$272:	; £temporary1728 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$273:	; £temporary1730 = int_to_int £temporary1728 (Pointer -> Pointer)

scanFormat$274:	; £temporary1731 -> £temporary1730 = *£temporary1730

scanFormat$275:	; floatPtr = £temporary1731 -> £temporary1730
	mov rax, [rsi]
	mov [rbp + 157], rax

scanFormat$276:	; £temporary1732 -> floatPtr = *floatPtr
	mov rsi, [rbp + 157]

scanFormat$277:	; push float longDoubleValue
	fld qword [rbp + 145]

scanFormat$278:	; pop float £temporary1732 -> floatPtr
	fstp dword [rsi]

scanFormat$279:	; percent = int4$0#
	mov dword [rbp + 49], 0

scanFormat$280:	; goto 352
	jmp scanFormat$352

scanFormat$281:	; not = int4$0#
	mov dword [rbp + 157], 0

scanFormat$282:	; ++index
	inc dword [rbp + 93]

scanFormat$283:	; £temporary1737 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

scanFormat$284:	; £temporary1740 = format + £temporary1737
	mov rsi, [rbp + 24]
	add rsi, rax

scanFormat$285:	; £temporary1738 -> £temporary1740 = *£temporary1740

scanFormat$286:	; if £temporary1738 -> £temporary1740 != int1$94# goto 289
	cmp byte [rsi], 94
	jne scanFormat$289

scanFormat$287:	; not = int4$1#
	mov dword [rbp + 157], 1

scanFormat$288:	; ++index
	inc dword [rbp + 93]

scanFormat$289:	; startIndex = index
	mov eax, [rbp + 93]
	mov [rbp + 161], eax

scanFormat$290:	; £temporary1743 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

scanFormat$291:	; £temporary1746 = format + £temporary1743
	mov rsi, [rbp + 24]
	add rsi, rax

scanFormat$292:	; £temporary1744 -> £temporary1746 = *£temporary1746

scanFormat$293:	; if £temporary1744 -> £temporary1746 == int1$93# goto 296
	cmp byte [rsi], 93
	je scanFormat$296

scanFormat$294:	; ++index
	inc dword [rbp + 93]

scanFormat$295:	; goto 290
	jmp scanFormat$290

scanFormat$296:	; £temporary1749 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 93]
	mov rbx, 4294967295
	and rax, rbx

scanFormat$297:	; £temporary1752 = format + £temporary1749
	mov rsi, [rbp + 24]
	add rsi, rax

scanFormat$298:	; £temporary1750 -> £temporary1752 = *£temporary1752

scanFormat$299:	; £temporary1750 -> £temporary1752 = int1$0#
	mov byte [rsi], 0

scanFormat$300:	; if star != int4$0# goto 318
	cmp dword [rbp + 65], 0
	jne scanFormat$318

scanFormat$301:	; £temporary1755 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$302:	; arg_list = £temporary1755
	mov [rbp + 32], rax

scanFormat$303:	; £temporary1757 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$304:	; £temporary1759 = int_to_int £temporary1757 (Pointer -> Pointer)

scanFormat$305:	; £temporary1760 -> £temporary1759 = *£temporary1759

scanFormat$306:	; string = £temporary1760 -> £temporary1759
	mov rax, [rsi]
	mov [rbp + 165], rax

scanFormat$307:	; call header integral zero 0 stack zero 0

scanFormat$308:	; parameter string, offset 197
	mov rax, [rbp + 165]
	mov [rbp + 197], rax

scanFormat$309:	; £temporary1761 = int_to_int startIndex (Signed_Int -> Pointer)
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

scanFormat$310:	; £temporary1764 = format + £temporary1761
	mov rsi, [rbp + 24]
	add rsi, rax

scanFormat$311:	; £temporary1762 -> £temporary1764 = *£temporary1764

scanFormat$312:	; £temporary1765 = &£temporary1762 -> £temporary1764

scanFormat$313:	; parameter £temporary1765, offset 205
	mov [rbp + 205], rsi

scanFormat$314:	; parameter not, offset 213
	mov eax, [rbp + 157]
	mov [rbp + 213], eax

scanFormat$315:	; call function noellipse-noellipse scanPattern
	mov qword [rbp + 173], scanFormat$316
	mov [rbp + 181], rbp
	add rbp, 173
	jmp scanPattern

scanFormat$316:	; post call

scanFormat$317:	; goto 352
	jmp scanFormat$352

scanFormat$318:	; call header integral zero 0 stack zero 0

scanFormat$319:	; parameter int8$0#, offset 189
	mov rax, 0
	mov [rbp + 189], rax

scanFormat$320:	; £temporary1767 = int_to_int startIndex (Signed_Int -> Pointer)
	mov eax, [rbp + 161]
	mov rbx, 4294967295
	and rax, rbx

scanFormat$321:	; £temporary1770 = format + £temporary1767
	mov rsi, [rbp + 24]
	add rsi, rax

scanFormat$322:	; £temporary1768 -> £temporary1770 = *£temporary1770

scanFormat$323:	; £temporary1771 = &£temporary1768 -> £temporary1770

scanFormat$324:	; parameter £temporary1771, offset 197
	mov [rbp + 197], rsi

scanFormat$325:	; parameter not, offset 205
	mov eax, [rbp + 157]
	mov [rbp + 205], eax

scanFormat$326:	; call function noellipse-noellipse scanPattern
	mov qword [rbp + 165], scanFormat$327
	mov [rbp + 173], rbp
	add rbp, 165
	jmp scanPattern

scanFormat$327:	; post call

scanFormat$328:	; goto 352
	jmp scanFormat$352

scanFormat$329:	; £temporary1773 = arg_list + int8$8#
	mov rax, [rbp + 32]
	add rax, 8

scanFormat$330:	; arg_list = £temporary1773
	mov [rbp + 32], rax

scanFormat$331:	; £temporary1775 = arg_list - int8$8#
	mov rsi, [rbp + 32]
	sub rsi, 8

scanFormat$332:	; £temporary1777 = int_to_int £temporary1775 (Pointer -> Pointer)

scanFormat$333:	; £temporary1778 -> £temporary1777 = *£temporary1777

scanFormat$334:	; charsPtr = £temporary1778 -> £temporary1777
	mov rax, [rsi]
	mov [rbp + 105], rax

scanFormat$335:	; £temporary1779 -> charsPtr = *charsPtr
	mov rsi, [rbp + 105]

scanFormat$336:	; £temporary1779 -> charsPtr = g_inChars
	mov eax, [g_inChars]
	mov [rsi], eax

scanFormat$337:	; percent = int4$0#
	mov dword [rbp + 49], 0

scanFormat$338:	; goto 352
	jmp scanFormat$352

scanFormat$339:	; call header integral zero 0 stack zero 0

scanFormat$340:	; parameter string_scanFormat20c203D202725c270A#, offset 181
	mov qword [rbp + 181], string_scanFormat20c203D202725c270A#

scanFormat$341:	; £temporary1780 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge scanFormat$342
	neg al
	neg eax

scanFormat$342:	; parameter £temporary1780, offset 189
	mov [rbp + 189], eax

scanFormat$343:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 157], scanFormat$344
	mov [rbp + 165], rbp
	add rbp, 157
	mov rdi, rbp
	add rdi, 4
	jmp printf

scanFormat$344:	; post call

scanFormat$345:	; goto 352
	jmp scanFormat$352

scanFormat$346:	; if c != int1$37# goto 352
	cmp byte [rbp + 40], 37
	jne scanFormat$352

scanFormat$347:	; percent = int4$1#
	mov dword [rbp + 49], 1

scanFormat$348:	; shortInt = int4$0#
	mov dword [rbp + 53], 0

scanFormat$349:	; longIntOrDouble = int4$0#
	mov dword [rbp + 57], 0

scanFormat$350:	; longDouble = int4$0#
	mov dword [rbp + 61], 0

scanFormat$351:	; star = int4$0#
	mov dword [rbp + 65], 0

scanFormat$352:	; ++index
	inc dword [rbp + 93]

scanFormat$353:	; goto 9
	jmp scanFormat$9

scanFormat$354:	; return_value = g_inCount
	mov ebx, [g_inCount]

scanFormat$355:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

scanFormat$356:	; function end scanFormat

scanf:	; empty

scanf$1:	; £temporary1799 = &format
	mov rsi, rbp
	add rsi, 24

scanf$2:	; £temporary1800 = int_to_int £temporary1799 (Pointer -> Pointer)

scanf$3:	; £temporary1801 = £temporary1800 + int8$8#
	add rsi, 8

scanf$4:	; arg_list = £temporary1801
	mov [rdi + 32], rsi

scanf$5:	; call header integral zero 0 stack zero 0

scanf$6:	; parameter format, offset 64
	mov rax, [rbp + 24]
	mov [rdi + 64], rax

scanf$7:	; parameter arg_list, offset 72
	mov rax, [rdi + 32]
	mov [rdi + 72], rax

scanf$8:	; call function ellipse-noellipse vscanf
	mov qword [rdi + 40], scanf$9
	mov [rdi + 48], rbp
	mov [rdi + 56], rdi
	mov rbp, rdi
	add rbp, 40
	jmp vscanf

scanf$9:	; post call

scanf$10:	; £temporary1803 = return_value

scanf$11:	; return_value = £temporary1803

scanf$12:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

scanf$13:	; function end scanf

vscanf:	; call header integral zero 0 stack zero 0

vscanf$1:	; parameter stdin, offset 64
	mov rax, [stdin]
	mov [rbp + 64], rax

vscanf$2:	; parameter format, offset 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

vscanf$3:	; parameter arg_list, offset 80
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

vscanf$4:	; call function noellipse-noellipse vfscanf
	mov qword [rbp + 40], vscanf$5
	mov [rbp + 48], rbp
	add rbp, 40
	jmp vfscanf

vscanf$5:	; post call

vscanf$6:	; £temporary1807 = return_value

vscanf$7:	; return_value = £temporary1807

vscanf$8:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

vscanf$9:	; function end vscanf

fscanf:	; empty

fscanf$1:	; £temporary1811 = &format
	mov rsi, rbp
	add rsi, 32

fscanf$2:	; £temporary1812 = int_to_int £temporary1811 (Pointer -> Pointer)

fscanf$3:	; £temporary1813 = £temporary1812 + int8$8#
	add rsi, 8

fscanf$4:	; arg_list = £temporary1813
	mov [rdi + 40], rsi

fscanf$5:	; call header integral zero 0 stack zero 0

fscanf$6:	; parameter inStream, offset 72
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

fscanf$7:	; parameter format, offset 80
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

fscanf$8:	; parameter arg_list, offset 88
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

fscanf$9:	; call function ellipse-noellipse vfscanf
	mov qword [rdi + 48], fscanf$10
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	mov rbp, rdi
	add rbp, 48
	jmp vfscanf

fscanf$10:	; post call

fscanf$11:	; £temporary1815 = return_value

fscanf$12:	; return_value = £temporary1815

fscanf$13:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

fscanf$14:	; function end fscanf

vfscanf:	; g_inStatus = int4$0#
	mov dword [g_inStatus], 0

vfscanf$1:	; £temporary1820 = int_to_int inStream (Pointer -> Pointer)
	mov rax, [rbp + 24]

vfscanf$2:	; g_inDevice = £temporary1820
	mov [g_inDevice], rax

vfscanf$3:	; call header integral zero 0 stack zero 0

vfscanf$4:	; parameter format, offset 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

vfscanf$5:	; parameter arg_list, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

vfscanf$6:	; call function noellipse-noellipse scanFormat
	mov qword [rbp + 48], vfscanf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanFormat

vfscanf$7:	; post call

vfscanf$8:	; £temporary1821 = return_value

vfscanf$9:	; return_value = £temporary1821

vfscanf$10:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

vfscanf$11:	; function end vfscanf

sscanf:	; empty

sscanf$1:	; £temporary1824 = &format
	mov rsi, rbp
	add rsi, 32

sscanf$2:	; £temporary1825 = int_to_int £temporary1824 (Pointer -> Pointer)

sscanf$3:	; £temporary1826 = £temporary1825 + int8$8#
	add rsi, 8

sscanf$4:	; arg_list = £temporary1826
	mov [rdi + 40], rsi

sscanf$5:	; call header integral zero 0 stack zero 0

sscanf$6:	; parameter inString, offset 72
	mov rax, [rbp + 24]
	mov [rdi + 72], rax

sscanf$7:	; parameter format, offset 80
	mov rax, [rbp + 32]
	mov [rdi + 80], rax

sscanf$8:	; parameter arg_list, offset 88
	mov rax, [rdi + 40]
	mov [rdi + 88], rax

sscanf$9:	; call function ellipse-noellipse vsscanf
	mov qword [rdi + 48], sscanf$10
	mov [rdi + 56], rbp
	mov [rdi + 64], rdi
	mov rbp, rdi
	add rbp, 48
	jmp vsscanf

sscanf$10:	; post call

sscanf$11:	; £temporary1828 = return_value

sscanf$12:	; return_value = £temporary1828

sscanf$13:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

sscanf$14:	; function end sscanf

vsscanf:	; g_inStatus = int4$1#
	mov dword [g_inStatus], 1

vsscanf$1:	; £temporary1833 = int_to_int inString (Pointer -> Pointer)
	mov rax, [rbp + 24]

vsscanf$2:	; g_inDevice = £temporary1833
	mov [g_inDevice], rax

vsscanf$3:	; call header integral zero 0 stack zero 0

vsscanf$4:	; parameter format, offset 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

vsscanf$5:	; parameter arg_list, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

vsscanf$6:	; call function noellipse-noellipse scanFormat
	mov qword [rbp + 48], vsscanf$7
	mov [rbp + 56], rbp
	add rbp, 48
	jmp scanFormat

vsscanf$7:	; post call

vsscanf$8:	; £temporary1834 = return_value

vsscanf$9:	; return_value = £temporary1834

vsscanf$10:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

vsscanf$11:	; function end vsscanf
section .data

$IntegralStorage#:
	times 8 db 0

g_inStatus:
	times 4 db 0

g_inChars:
	times 4 db 0

g_inDevice:
	times 8 db 0

g_inCount:
	times 4 db 0

int8$10#:
	; init Signed_Long_Int
	dq 10

float8$10.0#:
	; init Long_Double
	dq 10.0

string_scanFormat20c203D202725c270A#:
	; init String
	db "scanFormat c = ", 39, "%c", 39, 10, 0
