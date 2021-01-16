	global enMessageList
	global setlocale
	global localeconv

	extern strcmp
	extern $StackTop


section .data

@1454$string_Sun#:
	; Initializer String Sun
	db "Sun", 0

section .data

@1455$string_Mon#:
	; Initializer String Mon
	db "Mon", 0

section .data

@1456$string_Tue#:
	; Initializer String Tue
	db "Tue", 0

section .data

@1457$string_Wed#:
	; Initializer String Wed
	db "Wed", 0

section .data

@1458$string_Thu#:
	; Initializer String Thu
	db "Thu", 0

section .data

@1459$string_Fri#:
	; Initializer String Fri
	db "Fri", 0

section .data

@1460$string_Sat#:
	; Initializer String Sat
	db "Sat", 0

section .data

@1461$enShortDayList:
	; Initializer Pointer @1454$string_Sun#
	dq @1454$string_Sun#
	; Initializer Pointer @1455$string_Mon#
	dq @1455$string_Mon#
	; Initializer Pointer @1456$string_Tue#
	dq @1456$string_Tue#
	; Initializer Pointer @1457$string_Wed#
	dq @1457$string_Wed#
	; Initializer Pointer @1458$string_Thu#
	dq @1458$string_Thu#
	; Initializer Pointer @1459$string_Fri#
	dq @1459$string_Fri#
	; Initializer Pointer @1460$string_Sat#
	dq @1460$string_Sat#

section .data

@1462$string_Sunday#:
	; Initializer String Sunday
	db "Sunday", 0

section .data

@1463$string_Monday#:
	; Initializer String Monday
	db "Monday", 0

section .data

@1464$string_Tuesday#:
	; Initializer String Tuesday
	db "Tuesday", 0

section .data

@1465$string_Wednesday#:
	; Initializer String Wednesday
	db "Wednesday", 0

section .data

@1466$string_Thursday#:
	; Initializer String Thursday
	db "Thursday", 0

section .data

@1467$string_Friday#:
	; Initializer String Friday
	db "Friday", 0

section .data

@1468$string_Saturday#:
	; Initializer String Saturday
	db "Saturday", 0

section .data

@1469$enLongDayList:
	; Initializer Pointer @1462$string_Sunday#
	dq @1462$string_Sunday#
	; Initializer Pointer @1463$string_Monday#
	dq @1463$string_Monday#
	; Initializer Pointer @1464$string_Tuesday#
	dq @1464$string_Tuesday#
	; Initializer Pointer @1465$string_Wednesday#
	dq @1465$string_Wednesday#
	; Initializer Pointer @1466$string_Thursday#
	dq @1466$string_Thursday#
	; Initializer Pointer @1467$string_Friday#
	dq @1467$string_Friday#
	; Initializer Pointer @1468$string_Saturday#
	dq @1468$string_Saturday#

section .data

@1470$string_Jan#:
	; Initializer String Jan
	db "Jan", 0

section .data

@1471$string_Feb#:
	; Initializer String Feb
	db "Feb", 0

section .data

@1472$string_Mar#:
	; Initializer String Mar
	db "Mar", 0

section .data

@1473$string_Apr#:
	; Initializer String Apr
	db "Apr", 0

section .data

@1474$string_May#:
	; Initializer String May
	db "May", 0

section .data

@1475$string_Jun#:
	; Initializer String Jun
	db "Jun", 0

section .data

@1476$string_Jul#:
	; Initializer String Jul
	db "Jul", 0

section .data

@1477$string_Aug#:
	; Initializer String Aug
	db "Aug", 0

section .data

@1478$string_Sep#:
	; Initializer String Sep
	db "Sep", 0

section .data

@1479$string_Oct#:
	; Initializer String Oct
	db "Oct", 0

section .data

@1480$string_Nov#:
	; Initializer String Nov
	db "Nov", 0

section .data

@1481$string_Dec#:
	; Initializer String Dec
	db "Dec", 0

section .data

@1482$enShortMonthList:
	; Initializer Pointer @1470$string_Jan#
	dq @1470$string_Jan#
	; Initializer Pointer @1471$string_Feb#
	dq @1471$string_Feb#
	; Initializer Pointer @1472$string_Mar#
	dq @1472$string_Mar#
	; Initializer Pointer @1473$string_Apr#
	dq @1473$string_Apr#
	; Initializer Pointer @1474$string_May#
	dq @1474$string_May#
	; Initializer Pointer @1475$string_Jun#
	dq @1475$string_Jun#
	; Initializer Pointer @1476$string_Jul#
	dq @1476$string_Jul#
	; Initializer Pointer @1477$string_Aug#
	dq @1477$string_Aug#
	; Initializer Pointer @1478$string_Sep#
	dq @1478$string_Sep#
	; Initializer Pointer @1479$string_Oct#
	dq @1479$string_Oct#
	; Initializer Pointer @1480$string_Nov#
	dq @1480$string_Nov#
	; Initializer Pointer @1481$string_Dec#
	dq @1481$string_Dec#

section .data

@1483$string_January#:
	; Initializer String January
	db "January", 0

section .data

@1484$string_February#:
	; Initializer String February
	db "February", 0

section .data

@1485$string_March#:
	; Initializer String March
	db "March", 0

section .data

@1486$string_April#:
	; Initializer String April
	db "April", 0

section .data

@1487$string_May#:
	; Initializer String May
	db "May", 0

section .data

@1488$string_June#:
	; Initializer String June
	db "June", 0

section .data

@1489$string_July#:
	; Initializer String July
	db "July", 0

section .data

@1490$string_August#:
	; Initializer String August
	db "August", 0

section .data

@1491$string_September#:
	; Initializer String September
	db "September", 0

section .data

@1492$string_October#:
	; Initializer String October
	db "October", 0

section .data

@1493$string_November#:
	; Initializer String November
	db "November", 0

section .data

@1494$string_December#:
	; Initializer String December
	db "December", 0

section .data

@1495$enLongMonthList:
	; Initializer Pointer @1483$string_January#
	dq @1483$string_January#
	; Initializer Pointer @1484$string_February#
	dq @1484$string_February#
	; Initializer Pointer @1485$string_March#
	dq @1485$string_March#
	; Initializer Pointer @1486$string_April#
	dq @1486$string_April#
	; Initializer Pointer @1487$string_May#
	dq @1487$string_May#
	; Initializer Pointer @1488$string_June#
	dq @1488$string_June#
	; Initializer Pointer @1489$string_July#
	dq @1489$string_July#
	; Initializer Pointer @1490$string_August#
	dq @1490$string_August#
	; Initializer Pointer @1491$string_September#
	dq @1491$string_September#
	; Initializer Pointer @1492$string_October#
	dq @1492$string_October#
	; Initializer Pointer @1493$string_November#
	dq @1493$string_November#
	; Initializer Pointer @1494$string_December#
	dq @1494$string_December#

section .data

@1518$string_no20error#:
	; Initializer String no error
	db "no error", 0

section .data

@1519$string_function20number20invalid#:
	; Initializer String function number invalid
	db "function number invalid", 0

section .data

@1520$string_file20not20found#:
	; Initializer String file not found
	db "file not found", 0

section .data

@1521$string_path20not20found#:
	; Initializer String path not found
	db "path not found", 0

section .data

@1522$string_no20handle20available#:
	; Initializer String no handle available
	db "no handle available", 0

section .data

@1523$string_access20denied#:
	; Initializer String access denied
	db "access denied", 0

section .data

@1524$string_out20of20domain#:
	; Initializer String out of domain
	db "out of domain", 0

section .data

@1525$string_out20of20range#:
	; Initializer String out of range
	db "out of range", 0

section .data

@1526$string_invalid20multibyte20sequence#:
	; Initializer String invalid multibyte sequence
	db "invalid multibyte sequence", 0

section .data

@1527$string_error20while20opening#:
	; Initializer String error while opening
	db "error while opening", 0

section .data

@1528$string_error20while20flushing#:
	; Initializer String error while flushing
	db "error while flushing", 0

section .data

@1529$string_error20while20closing#:
	; Initializer String error while closing
	db "error while closing", 0

section .data

@1530$string_open20mode20invalid#:
	; Initializer String open mode invalid
	db "open mode invalid", 0

section .data

@1531$string_error20while20writing#:
	; Initializer String error while writing
	db "error while writing", 0

section .data

@1532$string_error20while20reading#:
	; Initializer String error while reading
	db "error while reading", 0

section .data

@1533$string_error20while20seeking#:
	; Initializer String error while seeking
	db "error while seeking", 0

section .data

@1534$string_error20while20telling#:
	; Initializer String error while telling
	db "error while telling", 0

section .data

@1535$string_error20while20sizing#:
	; Initializer String error while sizing
	db "error while sizing", 0

section .data

@1536$string_error20while20removing20file#:
	; Initializer String error while removing file
	db "error while removing file", 0

section .data

@1537$string_error20while20renaming20file#:
	; Initializer String error while renaming file
	db "error while renaming file", 0

section .data

enMessageList:
	; Initializer Pointer @1518$string_no20error#
	dq @1518$string_no20error#
	; Initializer Pointer @1519$string_function20number20invalid#
	dq @1519$string_function20number20invalid#
	; Initializer Pointer @1520$string_file20not20found#
	dq @1520$string_file20not20found#
	; Initializer Pointer @1521$string_path20not20found#
	dq @1521$string_path20not20found#
	; Initializer Pointer @1522$string_no20handle20available#
	dq @1522$string_no20handle20available#
	; Initializer Pointer @1523$string_access20denied#
	dq @1523$string_access20denied#
	; Initializer Pointer @1524$string_out20of20domain#
	dq @1524$string_out20of20domain#
	; Initializer Pointer @1525$string_out20of20range#
	dq @1525$string_out20of20range#
	; Initializer Pointer @1526$string_invalid20multibyte20sequence#
	dq @1526$string_invalid20multibyte20sequence#
	; Initializer Pointer @1527$string_error20while20opening#
	dq @1527$string_error20while20opening#
	; Initializer Pointer @1528$string_error20while20flushing#
	dq @1528$string_error20while20flushing#
	; Initializer Pointer @1529$string_error20while20closing#
	dq @1529$string_error20while20closing#
	; Initializer Pointer @1530$string_open20mode20invalid#
	dq @1530$string_open20mode20invalid#
	; Initializer Pointer @1531$string_error20while20writing#
	dq @1531$string_error20while20writing#
	; Initializer Pointer @1532$string_error20while20reading#
	dq @1532$string_error20while20reading#
	; Initializer Pointer @1533$string_error20while20seeking#
	dq @1533$string_error20while20seeking#
	; Initializer Pointer @1534$string_error20while20telling#
	dq @1534$string_error20while20telling#
	; Initializer Pointer @1535$string_error20while20sizing#
	dq @1535$string_error20while20sizing#
	; Initializer Pointer @1536$string_error20while20removing20file#
	dq @1536$string_error20while20removing20file#
	; Initializer Pointer @1537$string_error20while20renaming20file#
	dq @1537$string_error20while20renaming20file#

section .data

@1540$string_abcdefghijklmnopqrstuvwxyz#:
	; Initializer String abcdefghijklmnopqrstuvwxyz
	db "abcdefghijklmnopqrstuvwxyz", 0

section .data

@1541$string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
	; Initializer String ABCDEFGHIJKLMNOPQRSTUVWXYZ
	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0

section .data

@1544$en_US_utf8:
	; Initializer SignedInt 1
	dd 1
	; Initializer SignedInt 1
	dd 1
	; Initializer Pointer @1461$enShortDayList
	dq @1461$enShortDayList
	; Initializer Pointer @1469$enLongDayList
	dq @1469$enLongDayList
	; Initializer Pointer @1482$enShortMonthList
	dq @1482$enShortMonthList
	; Initializer Pointer @1495$enLongMonthList
	dq @1495$enLongMonthList
	; Initializer Pointer @1540$string_abcdefghijklmnopqrstuvwxyz#
	dq @1540$string_abcdefghijklmnopqrstuvwxyz#
	; Initializer Pointer @1541$string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#
	dq @1541$string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#
	; Initializer Pointer enMessageList
	dq enMessageList

section .data

@1547$string_#:
	; Initializer String 
	db 0

section .data

@1549$string_C#:
	; Initializer String C
	db "C", 0

section .data

@1551$string_US#:
	; Initializer String US
	db "US", 0

section .data

@1553$g_sArray:
	; Initializer Pointer @1547$string_#
	dq @1547$string_#
	; Initializer Pointer @1544$en_US_utf8
	dq @1544$en_US_utf8
	; Initializer Pointer @1549$string_C#
	dq @1549$string_C#
	; Initializer Pointer @1544$en_US_utf8
	dq @1544$en_US_utf8
	; Initializer Pointer @1551$string_US#
	dq @1551$string_US#
	; Initializer Pointer @1544$en_US_utf8
	dq @1544$en_US_utf8

section .data

@1560$g_sSize:
	; Initializer SignedInt 1
	dd 1

section .data

@1564$g_currStructPtr:
	; Initializer Pointer @1553$g_sArray
	dq @1553$g_sArray

section .data

@1585$int4$16#:
	; Initializer SignedInt 16
	dd 16

section .data

@1590$int4$16#:
	; Initializer SignedInt 16
	dd 16

section .text

 setlocale:
	; Equal 4 g_currStructPtr 0
	cmp qword [@1564$g_currStructPtr], 0
	je setlocale$4

 setlocale$1:
	; Dereference £temporary240 -> g_currStructPtr g_currStructPtr 0
	mov rsi, [@1564$g_currStructPtr]

 setlocale$2:
	; Assign £temporary241 £temporary240 -> g_currStructPtr
	mov rax, [rsi]

 setlocale$3:
	; Jump 5
	jmp setlocale$5

 setlocale$4:
	; Assign £temporary241 0
	mov rax, 0

 setlocale$5:
	; Assign oldName £temporary241
	mov [rbp + 40], rax

 setlocale$6:
	; Assign g_currStructPtr 0
	mov qword [@1564$g_currStructPtr], 0

 setlocale$7:
	; Equal 30 newName 0
	cmp qword [rbp + 28], 0
	je setlocale$30

 setlocale$8:
	; Assign index 0
	mov dword [rbp + 36], 0

 setlocale$9:
	; GreaterThanEqual 30 index g_sSize
	mov eax, [@1560$g_sSize]
	cmp [rbp + 36], eax
	jge setlocale$30

 setlocale$10:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setlocale$11:
	; Parameter 72 pointer newName
	mov rax, [rbp + 28]
	mov [rbp + 72], rax

 setlocale$12:
	; Multiply £temporary246 index 16
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [@1585$int4$16#]

 setlocale$13:
	; IntegralToIntegral £temporary247 £temporary246
	mov rbx, 4294967295
	and rax, rbx

 setlocale$14:
	; BinaryAdd £temporary248 g_sArray £temporary247
	mov rsi, @1553$g_sArray
	add rsi, rax

 setlocale$15:
	; Dereference £temporary245 -> £temporary248 £temporary248 0

 setlocale$16:
	; Parameter 80 pointer £temporary245.name -> £temporary248
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
	; GetReturnValue £temporary249

 setlocale$20:
	; NotEqual 28 £temporary249 0
	cmp ebx, 0
	jne setlocale$28

 setlocale$21:
	; Multiply £temporary252 index 16
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [@1590$int4$16#]

 setlocale$22:
	; IntegralToIntegral £temporary253 £temporary252
	mov rbx, 4294967295
	and rax, rbx

 setlocale$23:
	; BinaryAdd £temporary254 g_sArray £temporary253
	mov rsi, @1553$g_sArray
	add rsi, rax

 setlocale$24:
	; Dereference £temporary251 -> £temporary254 £temporary254 0

 setlocale$25:
	; Address £temporary255 £temporary251 -> £temporary254

 setlocale$26:
	; Assign g_currStructPtr £temporary255
	mov [@1564$g_currStructPtr], rsi

 setlocale$27:
	; Jump 30
	jmp setlocale$30

 setlocale$28:
	; BinaryAdd index index 1
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
	; Equal 4 g_currStructPtr 0
	cmp qword [@1564$g_currStructPtr], 0
	je localeconv$4

 localeconv$1:
	; Dereference £temporary257 -> g_currStructPtr g_currStructPtr 0
	mov rsi, [@1564$g_currStructPtr]

 localeconv$2:
	; Assign £temporary258 £temporary257 -> g_currStructPtr
	mov rbx, [rsi + 8]

 localeconv$3:
	; Jump 5
	jmp localeconv$5

 localeconv$4:
	; Assign £temporary258 0
	mov rbx, 0

 localeconv$5:
	; SetReturnValue

 localeconv$6:
	; Return £temporary258
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 localeconv$7:
	; FunctionEnd localeconv
