	global enMessageList
	global setlocale
	global localeconv

	extern strcmp
	extern $StackTop


section .data

@1464string_Sun#:
	; Initializer String Sun
	db "Sun", 0

section .data

@1465string_Mon#:
	; Initializer String Mon
	db "Mon", 0

section .data

@1466string_Tue#:
	; Initializer String Tue
	db "Tue", 0

section .data

@1467string_Wed#:
	; Initializer String Wed
	db "Wed", 0

section .data

@1468string_Thu#:
	; Initializer String Thu
	db "Thu", 0

section .data

@1469string_Fri#:
	; Initializer String Fri
	db "Fri", 0

section .data

@1470string_Sat#:
	; Initializer String Sat
	db "Sat", 0

section .data

@1471$enShortDayList:
	; Initializer Pointer @1464string_Sun#
	dq @1464string_Sun#
	; Initializer Pointer @1465string_Mon#
	dq @1465string_Mon#
	; Initializer Pointer @1466string_Tue#
	dq @1466string_Tue#
	; Initializer Pointer @1467string_Wed#
	dq @1467string_Wed#
	; Initializer Pointer @1468string_Thu#
	dq @1468string_Thu#
	; Initializer Pointer @1469string_Fri#
	dq @1469string_Fri#
	; Initializer Pointer @1470string_Sat#
	dq @1470string_Sat#

section .data

@1472string_Sunday#:
	; Initializer String Sunday
	db "Sunday", 0

section .data

@1473string_Monday#:
	; Initializer String Monday
	db "Monday", 0

section .data

@1474string_Tuesday#:
	; Initializer String Tuesday
	db "Tuesday", 0

section .data

@1475string_Wednesday#:
	; Initializer String Wednesday
	db "Wednesday", 0

section .data

@1476string_Thursday#:
	; Initializer String Thursday
	db "Thursday", 0

section .data

@1477string_Friday#:
	; Initializer String Friday
	db "Friday", 0

section .data

@1478string_Saturday#:
	; Initializer String Saturday
	db "Saturday", 0

section .data

@1479$enLongDayList:
	; Initializer Pointer @1472string_Sunday#
	dq @1472string_Sunday#
	; Initializer Pointer @1473string_Monday#
	dq @1473string_Monday#
	; Initializer Pointer @1474string_Tuesday#
	dq @1474string_Tuesday#
	; Initializer Pointer @1475string_Wednesday#
	dq @1475string_Wednesday#
	; Initializer Pointer @1476string_Thursday#
	dq @1476string_Thursday#
	; Initializer Pointer @1477string_Friday#
	dq @1477string_Friday#
	; Initializer Pointer @1478string_Saturday#
	dq @1478string_Saturday#

section .data

@1480string_Jan#:
	; Initializer String Jan
	db "Jan", 0

section .data

@1481string_Feb#:
	; Initializer String Feb
	db "Feb", 0

section .data

@1482string_Mar#:
	; Initializer String Mar
	db "Mar", 0

section .data

@1483string_Apr#:
	; Initializer String Apr
	db "Apr", 0

section .data

@1484string_May#:
	; Initializer String May
	db "May", 0

section .data

@1485string_Jun#:
	; Initializer String Jun
	db "Jun", 0

section .data

@1486string_Jul#:
	; Initializer String Jul
	db "Jul", 0

section .data

@1487string_Aug#:
	; Initializer String Aug
	db "Aug", 0

section .data

@1488string_Sep#:
	; Initializer String Sep
	db "Sep", 0

section .data

@1489string_Oct#:
	; Initializer String Oct
	db "Oct", 0

section .data

@1490string_Nov#:
	; Initializer String Nov
	db "Nov", 0

section .data

@1491string_Dec#:
	; Initializer String Dec
	db "Dec", 0

section .data

@1492$enShortMonthList:
	; Initializer Pointer @1480string_Jan#
	dq @1480string_Jan#
	; Initializer Pointer @1481string_Feb#
	dq @1481string_Feb#
	; Initializer Pointer @1482string_Mar#
	dq @1482string_Mar#
	; Initializer Pointer @1483string_Apr#
	dq @1483string_Apr#
	; Initializer Pointer @1484string_May#
	dq @1484string_May#
	; Initializer Pointer @1485string_Jun#
	dq @1485string_Jun#
	; Initializer Pointer @1486string_Jul#
	dq @1486string_Jul#
	; Initializer Pointer @1487string_Aug#
	dq @1487string_Aug#
	; Initializer Pointer @1488string_Sep#
	dq @1488string_Sep#
	; Initializer Pointer @1489string_Oct#
	dq @1489string_Oct#
	; Initializer Pointer @1490string_Nov#
	dq @1490string_Nov#
	; Initializer Pointer @1491string_Dec#
	dq @1491string_Dec#

section .data

@1493string_January#:
	; Initializer String January
	db "January", 0

section .data

@1494string_February#:
	; Initializer String February
	db "February", 0

section .data

@1495string_March#:
	; Initializer String March
	db "March", 0

section .data

@1496string_April#:
	; Initializer String April
	db "April", 0

section .data

@1497string_May#:
	; Initializer String May
	db "May", 0

section .data

@1498string_June#:
	; Initializer String June
	db "June", 0

section .data

@1499string_July#:
	; Initializer String July
	db "July", 0

section .data

@1500string_August#:
	; Initializer String August
	db "August", 0

section .data

@1501string_September#:
	; Initializer String September
	db "September", 0

section .data

@1502string_October#:
	; Initializer String October
	db "October", 0

section .data

@1503string_November#:
	; Initializer String November
	db "November", 0

section .data

@1504string_December#:
	; Initializer String December
	db "December", 0

section .data

@1505$enLongMonthList:
	; Initializer Pointer @1493string_January#
	dq @1493string_January#
	; Initializer Pointer @1494string_February#
	dq @1494string_February#
	; Initializer Pointer @1495string_March#
	dq @1495string_March#
	; Initializer Pointer @1496string_April#
	dq @1496string_April#
	; Initializer Pointer @1497string_May#
	dq @1497string_May#
	; Initializer Pointer @1498string_June#
	dq @1498string_June#
	; Initializer Pointer @1499string_July#
	dq @1499string_July#
	; Initializer Pointer @1500string_August#
	dq @1500string_August#
	; Initializer Pointer @1501string_September#
	dq @1501string_September#
	; Initializer Pointer @1502string_October#
	dq @1502string_October#
	; Initializer Pointer @1503string_November#
	dq @1503string_November#
	; Initializer Pointer @1504string_December#
	dq @1504string_December#

section .data

@1528string_no20error#:
	; Initializer String no error
	db "no error", 0

section .data

@1529string_function20number20invalid#:
	; Initializer String function number invalid
	db "function number invalid", 0

section .data

@1530string_file20not20found#:
	; Initializer String file not found
	db "file not found", 0

section .data

@1531string_path20not20found#:
	; Initializer String path not found
	db "path not found", 0

section .data

@1532string_no20handle20available#:
	; Initializer String no handle available
	db "no handle available", 0

section .data

@1533string_access20denied#:
	; Initializer String access denied
	db "access denied", 0

section .data

@1534string_out20of20domain#:
	; Initializer String out of domain
	db "out of domain", 0

section .data

@1535string_out20of20range#:
	; Initializer String out of range
	db "out of range", 0

section .data

@1536string_invalid20multibyte20sequence#:
	; Initializer String invalid multibyte sequence
	db "invalid multibyte sequence", 0

section .data

@1537string_error20while20opening#:
	; Initializer String error while opening
	db "error while opening", 0

section .data

@1538string_error20while20flushing#:
	; Initializer String error while flushing
	db "error while flushing", 0

section .data

@1539string_error20while20closing#:
	; Initializer String error while closing
	db "error while closing", 0

section .data

@1540string_open20mode20invalid#:
	; Initializer String open mode invalid
	db "open mode invalid", 0

section .data

@1541string_error20while20writing#:
	; Initializer String error while writing
	db "error while writing", 0

section .data

@1542string_error20while20reading#:
	; Initializer String error while reading
	db "error while reading", 0

section .data

@1543string_error20while20seeking#:
	; Initializer String error while seeking
	db "error while seeking", 0

section .data

@1544string_error20while20telling#:
	; Initializer String error while telling
	db "error while telling", 0

section .data

@1545string_error20while20sizing#:
	; Initializer String error while sizing
	db "error while sizing", 0

section .data

@1546string_error20while20removing20file#:
	; Initializer String error while removing file
	db "error while removing file", 0

section .data

@1547string_error20while20renaming20file#:
	; Initializer String error while renaming file
	db "error while renaming file", 0

section .data

enMessageList:
	; Initializer Pointer @1528string_no20error#
	dq @1528string_no20error#
	; Initializer Pointer @1529string_function20number20invalid#
	dq @1529string_function20number20invalid#
	; Initializer Pointer @1530string_file20not20found#
	dq @1530string_file20not20found#
	; Initializer Pointer @1531string_path20not20found#
	dq @1531string_path20not20found#
	; Initializer Pointer @1532string_no20handle20available#
	dq @1532string_no20handle20available#
	; Initializer Pointer @1533string_access20denied#
	dq @1533string_access20denied#
	; Initializer Pointer @1534string_out20of20domain#
	dq @1534string_out20of20domain#
	; Initializer Pointer @1535string_out20of20range#
	dq @1535string_out20of20range#
	; Initializer Pointer @1536string_invalid20multibyte20sequence#
	dq @1536string_invalid20multibyte20sequence#
	; Initializer Pointer @1537string_error20while20opening#
	dq @1537string_error20while20opening#
	; Initializer Pointer @1538string_error20while20flushing#
	dq @1538string_error20while20flushing#
	; Initializer Pointer @1539string_error20while20closing#
	dq @1539string_error20while20closing#
	; Initializer Pointer @1540string_open20mode20invalid#
	dq @1540string_open20mode20invalid#
	; Initializer Pointer @1541string_error20while20writing#
	dq @1541string_error20while20writing#
	; Initializer Pointer @1542string_error20while20reading#
	dq @1542string_error20while20reading#
	; Initializer Pointer @1543string_error20while20seeking#
	dq @1543string_error20while20seeking#
	; Initializer Pointer @1544string_error20while20telling#
	dq @1544string_error20while20telling#
	; Initializer Pointer @1545string_error20while20sizing#
	dq @1545string_error20while20sizing#
	; Initializer Pointer @1546string_error20while20removing20file#
	dq @1546string_error20while20removing20file#
	; Initializer Pointer @1547string_error20while20renaming20file#
	dq @1547string_error20while20renaming20file#

section .data

@1550string_abcdefghijklmnopqrstuvwxyz#:
	; Initializer String abcdefghijklmnopqrstuvwxyz
	db "abcdefghijklmnopqrstuvwxyz", 0

section .data

@1551string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
	; Initializer String ABCDEFGHIJKLMNOPQRSTUVWXYZ
	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0

section .data

@1554$en_US_utf8:
	; Initializer SignedInt 1
	dd 1
	; Initializer SignedInt 1
	dd 1
	; Initializer Pointer @1471$enShortDayList
	dq @1471$enShortDayList
	; Initializer Pointer @1479$enLongDayList
	dq @1479$enLongDayList
	; Initializer Pointer @1492$enShortMonthList
	dq @1492$enShortMonthList
	; Initializer Pointer @1505$enLongMonthList
	dq @1505$enLongMonthList
	; Initializer Pointer @1550string_abcdefghijklmnopqrstuvwxyz#
	dq @1550string_abcdefghijklmnopqrstuvwxyz#
	; Initializer Pointer @1551string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#
	dq @1551string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#
	; Initializer Pointer enMessageList
	dq enMessageList

section .data

@1557string_#:
	; Initializer String 
	db 0

section .data

@1559string_C#:
	; Initializer String C
	db "C", 0

section .data

@1561string_US#:
	; Initializer String US
	db "US", 0

section .data

@1563$g_sArray:
	; Initializer Pointer @1557string_#
	dq @1557string_#
	; Initializer Pointer @1554$en_US_utf8
	dq @1554$en_US_utf8
	; Initializer Pointer @1559string_C#
	dq @1559string_C#
	; Initializer Pointer @1554$en_US_utf8
	dq @1554$en_US_utf8
	; Initializer Pointer @1561string_US#
	dq @1561string_US#
	; Initializer Pointer @1554$en_US_utf8
	dq @1554$en_US_utf8

section .data

@1570$g_sSize:
	; Initializer SignedInt 1
	dd 1

section .data

@1574$g_currStructPtr:
	; Initializer Pointer @1563$g_sArray
	dq @1563$g_sArray

section .data

@1595SignedInt$16#:
	; Initializer SignedInt 16
	dd 16

section .data

@1600SignedInt$16#:
	; Initializer SignedInt 16
	dd 16

section .text

 setlocale:
	; Equal 4 g_currStructPtr Pointer$0#
	cmp qword [@1574$g_currStructPtr], 0
	je setlocale$4

 setlocale$1:
	; Dereference £temporary241 g_currStructPtr 0
	mov rsi, [@1574$g_currStructPtr]

 setlocale$2:
	; Assign £temporary242 £temporary241
	mov rax, [rsi]

 setlocale$3:
	; Jump 5
	jmp setlocale$5

 setlocale$4:
	; Assign £temporary242 Pointer$0#
	mov rax, 0

 setlocale$5:
	; Assign oldName £temporary242
	mov [rbp + 40], rax

 setlocale$6:
	; Assign g_currStructPtr Pointer$0#
	mov qword [@1574$g_currStructPtr], 0

 setlocale$7:
	; Equal 30 newName Pointer$0#
	cmp qword [rbp + 28], 0
	je setlocale$30

 setlocale$8:
	; Assign index SignedInt$0#
	mov dword [rbp + 36], 0

 setlocale$9:
	; GreaterThanEqual 30 index g_sSize
	mov eax, [@1570$g_sSize]
	cmp [rbp + 36], eax
	jge setlocale$30

 setlocale$10:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setlocale$11:
	; Parameter 72 pointer newName
	mov rax, [rbp + 28]
	mov [rbp + 72], rax

 setlocale$12:
	; Multiply £temporary247 index SignedInt$16#
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [@1595SignedInt$16#]

 setlocale$13:
	; IntegralToIntegral £temporary248 £temporary247
	mov rbx, 4294967295
	and rax, rbx

 setlocale$14:
	; Add £temporary249 g_sArray £temporary248
	mov rsi, @1563$g_sArray
	add rsi, rax

 setlocale$15:
	; Dereference £temporary246 £temporary249 0

 setlocale$16:
	; Parameter 80 pointer £temporary246.name
	mov rax, [rsi]
	mov [rbp + 80], rax

 setlocale$17:
	; Call 48 strcmp 0
	mov qword [rbp + 48], setlocale$18
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strcmp

 setlocale$18:
	; PostCall 48

 setlocale$19:
	; GetReturnValue £temporary250

 setlocale$20:
	; NotEqual 28 £temporary250 SignedInt$0#
	cmp ebx, 0
	jne setlocale$28

 setlocale$21:
	; Multiply £temporary253 index SignedInt$16#
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [@1600SignedInt$16#]

 setlocale$22:
	; IntegralToIntegral £temporary254 £temporary253
	mov rbx, 4294967295
	and rax, rbx

 setlocale$23:
	; Add £temporary255 g_sArray £temporary254
	mov rsi, @1563$g_sArray
	add rsi, rax

 setlocale$24:
	; Dereference £temporary252 £temporary255 0

 setlocale$25:
	; Address £temporary256 £temporary252

 setlocale$26:
	; Assign g_currStructPtr £temporary256
	mov [@1574$g_currStructPtr], rsi

 setlocale$27:
	; Jump 30
	jmp setlocale$30

 setlocale$28:
	; Add index index SignedInt$1#
	inc dword [rbp + 36]

 setlocale$29:
	; Jump 9
	jmp setlocale$9

 setlocale$30:
	; SetReturnValue

 setlocale$31:
	; Return oldName
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setlocale$32:
	; FunctionEnd setlocale

section .text

 localeconv:
	; Equal 4 g_currStructPtr Pointer$0#
	cmp qword [@1574$g_currStructPtr], 0
	je localeconv$4

 localeconv$1:
	; Dereference £temporary258 g_currStructPtr 0
	mov rsi, [@1574$g_currStructPtr]

 localeconv$2:
	; Assign £temporary259 £temporary258
	mov rbx, [rsi + 8]

 localeconv$3:
	; Jump 5
	jmp localeconv$5

 localeconv$4:
	; Assign £temporary259 Pointer$0#
	mov rbx, 0

 localeconv$5:
	; SetReturnValue

 localeconv$6:
	; Return £temporary259
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 localeconv$7:
	; FunctionEnd localeconv
