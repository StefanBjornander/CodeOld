	global enMessageList
	global setlocale
	global localeconv

	extern strcmp
	extern $StackTop


section .data

string_Sun#:
	; Initializer String Sun
	db "Sun", 0

section .data

string_Mon#:
	; Initializer String Mon
	db "Mon", 0

section .data

string_Tue#:
	; Initializer String Tue
	db "Tue", 0

section .data

string_Wed#:
	; Initializer String Wed
	db "Wed", 0

section .data

string_Thu#:
	; Initializer String Thu
	db "Thu", 0

section .data

string_Fri#:
	; Initializer String Fri
	db "Fri", 0

section .data

string_Sat#:
	; Initializer String Sat
	db "Sat", 0

section .data

@1498$enShortDayList:
	; Initializer Pointer string_Sun#
	dq string_Sun#
	; Initializer Pointer string_Mon#
	dq string_Mon#
	; Initializer Pointer string_Tue#
	dq string_Tue#
	; Initializer Pointer string_Wed#
	dq string_Wed#
	; Initializer Pointer string_Thu#
	dq string_Thu#
	; Initializer Pointer string_Fri#
	dq string_Fri#
	; Initializer Pointer string_Sat#
	dq string_Sat#

section .data

string_Sunday#:
	; Initializer String Sunday
	db "Sunday", 0

section .data

string_Monday#:
	; Initializer String Monday
	db "Monday", 0

section .data

string_Tuesday#:
	; Initializer String Tuesday
	db "Tuesday", 0

section .data

string_Wednesday#:
	; Initializer String Wednesday
	db "Wednesday", 0

section .data

string_Thursday#:
	; Initializer String Thursday
	db "Thursday", 0

section .data

string_Friday#:
	; Initializer String Friday
	db "Friday", 0

section .data

string_Saturday#:
	; Initializer String Saturday
	db "Saturday", 0

section .data

@1499$enLongDayList:
	; Initializer Pointer string_Sunday#
	dq string_Sunday#
	; Initializer Pointer string_Monday#
	dq string_Monday#
	; Initializer Pointer string_Tuesday#
	dq string_Tuesday#
	; Initializer Pointer string_Wednesday#
	dq string_Wednesday#
	; Initializer Pointer string_Thursday#
	dq string_Thursday#
	; Initializer Pointer string_Friday#
	dq string_Friday#
	; Initializer Pointer string_Saturday#
	dq string_Saturday#

section .data

string_Jan#:
	; Initializer String Jan
	db "Jan", 0

section .data

string_Feb#:
	; Initializer String Feb
	db "Feb", 0

section .data

string_Mar#:
	; Initializer String Mar
	db "Mar", 0

section .data

string_Apr#:
	; Initializer String Apr
	db "Apr", 0

section .data

string_May#:
	; Initializer String May
	db "May", 0

section .data

string_Jun#:
	; Initializer String Jun
	db "Jun", 0

section .data

string_Jul#:
	; Initializer String Jul
	db "Jul", 0

section .data

string_Aug#:
	; Initializer String Aug
	db "Aug", 0

section .data

string_Sep#:
	; Initializer String Sep
	db "Sep", 0

section .data

string_Oct#:
	; Initializer String Oct
	db "Oct", 0

section .data

string_Nov#:
	; Initializer String Nov
	db "Nov", 0

section .data

string_Dec#:
	; Initializer String Dec
	db "Dec", 0

section .data

@1500$enShortMonthList:
	; Initializer Pointer string_Jan#
	dq string_Jan#
	; Initializer Pointer string_Feb#
	dq string_Feb#
	; Initializer Pointer string_Mar#
	dq string_Mar#
	; Initializer Pointer string_Apr#
	dq string_Apr#
	; Initializer Pointer string_May#
	dq string_May#
	; Initializer Pointer string_Jun#
	dq string_Jun#
	; Initializer Pointer string_Jul#
	dq string_Jul#
	; Initializer Pointer string_Aug#
	dq string_Aug#
	; Initializer Pointer string_Sep#
	dq string_Sep#
	; Initializer Pointer string_Oct#
	dq string_Oct#
	; Initializer Pointer string_Nov#
	dq string_Nov#
	; Initializer Pointer string_Dec#
	dq string_Dec#

section .data

string_January#:
	; Initializer String January
	db "January", 0

section .data

string_February#:
	; Initializer String February
	db "February", 0

section .data

string_March#:
	; Initializer String March
	db "March", 0

section .data

string_April#:
	; Initializer String April
	db "April", 0

section .data

string_June#:
	; Initializer String June
	db "June", 0

section .data

string_July#:
	; Initializer String July
	db "July", 0

section .data

string_August#:
	; Initializer String August
	db "August", 0

section .data

string_September#:
	; Initializer String September
	db "September", 0

section .data

string_October#:
	; Initializer String October
	db "October", 0

section .data

string_November#:
	; Initializer String November
	db "November", 0

section .data

string_December#:
	; Initializer String December
	db "December", 0

section .data

@1501$enLongMonthList:
	; Initializer Pointer string_January#
	dq string_January#
	; Initializer Pointer string_February#
	dq string_February#
	; Initializer Pointer string_March#
	dq string_March#
	; Initializer Pointer string_April#
	dq string_April#
	; Initializer Pointer string_May#
	dq string_May#
	; Initializer Pointer string_June#
	dq string_June#
	; Initializer Pointer string_July#
	dq string_July#
	; Initializer Pointer string_August#
	dq string_August#
	; Initializer Pointer string_September#
	dq string_September#
	; Initializer Pointer string_October#
	dq string_October#
	; Initializer Pointer string_November#
	dq string_November#
	; Initializer Pointer string_December#
	dq string_December#

section .data

string_no20error#:
	; Initializer String no error
	db "no error", 0

section .data

string_function20number20invalid#:
	; Initializer String function number invalid
	db "function number invalid", 0

section .data

string_file20not20found#:
	; Initializer String file not found
	db "file not found", 0

section .data

string_path20not20found#:
	; Initializer String path not found
	db "path not found", 0

section .data

string_no20handle20available#:
	; Initializer String no handle available
	db "no handle available", 0

section .data

string_access20denied#:
	; Initializer String access denied
	db "access denied", 0

section .data

string_out20of20domain#:
	; Initializer String out of domain
	db "out of domain", 0

section .data

string_out20of20range#:
	; Initializer String out of range
	db "out of range", 0

section .data

string_invalid20multibyte20sequence#:
	; Initializer String invalid multibyte sequence
	db "invalid multibyte sequence", 0

section .data

string_error20while20opening#:
	; Initializer String error while opening
	db "error while opening", 0

section .data

string_error20while20flushing#:
	; Initializer String error while flushing
	db "error while flushing", 0

section .data

string_error20while20closing#:
	; Initializer String error while closing
	db "error while closing", 0

section .data

string_open20mode20invalid#:
	; Initializer String open mode invalid
	db "open mode invalid", 0

section .data

string_error20while20writing#:
	; Initializer String error while writing
	db "error while writing", 0

section .data

string_error20while20reading#:
	; Initializer String error while reading
	db "error while reading", 0

section .data

string_error20while20seeking#:
	; Initializer String error while seeking
	db "error while seeking", 0

section .data

string_error20while20telling#:
	; Initializer String error while telling
	db "error while telling", 0

section .data

string_error20while20sizing#:
	; Initializer String error while sizing
	db "error while sizing", 0

section .data

string_error20while20removing20file#:
	; Initializer String error while removing file
	db "error while removing file", 0

section .data

string_error20while20renaming20file#:
	; Initializer String error while renaming file
	db "error while renaming file", 0

section .data

enMessageList:
	; Initializer Pointer string_no20error#
	dq string_no20error#
	; Initializer Pointer string_function20number20invalid#
	dq string_function20number20invalid#
	; Initializer Pointer string_file20not20found#
	dq string_file20not20found#
	; Initializer Pointer string_path20not20found#
	dq string_path20not20found#
	; Initializer Pointer string_no20handle20available#
	dq string_no20handle20available#
	; Initializer Pointer string_access20denied#
	dq string_access20denied#
	; Initializer Pointer string_out20of20domain#
	dq string_out20of20domain#
	; Initializer Pointer string_out20of20range#
	dq string_out20of20range#
	; Initializer Pointer string_invalid20multibyte20sequence#
	dq string_invalid20multibyte20sequence#
	; Initializer Pointer string_error20while20opening#
	dq string_error20while20opening#
	; Initializer Pointer string_error20while20flushing#
	dq string_error20while20flushing#
	; Initializer Pointer string_error20while20closing#
	dq string_error20while20closing#
	; Initializer Pointer string_open20mode20invalid#
	dq string_open20mode20invalid#
	; Initializer Pointer string_error20while20writing#
	dq string_error20while20writing#
	; Initializer Pointer string_error20while20reading#
	dq string_error20while20reading#
	; Initializer Pointer string_error20while20seeking#
	dq string_error20while20seeking#
	; Initializer Pointer string_error20while20telling#
	dq string_error20while20telling#
	; Initializer Pointer string_error20while20sizing#
	dq string_error20while20sizing#
	; Initializer Pointer string_error20while20removing20file#
	dq string_error20while20removing20file#
	; Initializer Pointer string_error20while20renaming20file#
	dq string_error20while20renaming20file#

section .data

string_abcdefghijklmnopqrstuvwxyz#:
	; Initializer String abcdefghijklmnopqrstuvwxyz
	db "abcdefghijklmnopqrstuvwxyz", 0

section .data

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
	; Initializer String ABCDEFGHIJKLMNOPQRSTUVWXYZ
	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0

section .data

@1524$en_US_utf8:
	; Initializer SignedInt 1
	dd 1
	; Initializer SignedInt 1
	dd 1
	; Initializer Pointer @1498$enShortDayList
	dq @1498$enShortDayList
	; Initializer Pointer @1499$enLongDayList
	dq @1499$enLongDayList
	; Initializer Pointer @1500$enShortMonthList
	dq @1500$enShortMonthList
	; Initializer Pointer @1501$enLongMonthList
	dq @1501$enLongMonthList
	; Initializer Pointer string_abcdefghijklmnopqrstuvwxyz#
	dq string_abcdefghijklmnopqrstuvwxyz#
	; Initializer Pointer string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#
	dq string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#
	; Initializer Pointer enMessageList
	dq enMessageList

section .data

string_#:
	; Initializer String 
	db 0

section .data

string_C#:
	; Initializer String C
	db "C", 0

section .data

string_US#:
	; Initializer String US
	db "US", 0

section .data

@1527$sArray:
	; Initializer Pointer string_#
	dq string_#
	; Initializer Pointer @1524$en_US_utf8
	dq @1524$en_US_utf8
	; Initializer Pointer string_C#
	dq string_C#
	; Initializer Pointer @1524$en_US_utf8
	dq @1524$en_US_utf8
	; Initializer Pointer string_US#
	dq string_US#
	; Initializer Pointer @1524$en_US_utf8
	dq @1524$en_US_utf8

section .data

@1528$sSize:
	; Initializer SignedInt 1
	dd 1

section .data

@1529$g_currStructPtr:
	; Initializer Pointer @1527$sArray
	dq @1527$sArray

section .data

Array_16#:
	; Initializer Array 16
	dq 16

section .text

 setlocale:
	; Equal 4 g_currStructPtr 0
	cmp qword [@1529$g_currStructPtr], 0
	je setlocale$4

 setlocale$1:
	; Dereference £temporary372 -> g_currStructPtr g_currStructPtr 0
	mov rsi, [@1529$g_currStructPtr]

 setlocale$2:
	; Assign £temporary373 £temporary372 -> g_currStructPtr
	mov rax, [rsi]

 setlocale$3:
	; Goto 5
	jmp setlocale$5

 setlocale$4:
	; Assign £temporary373 0
	mov rax, 0

 setlocale$5:
	; Assign oldName £temporary373
	mov [rbp + 40], rax

 setlocale$6:
	; Assign g_currStructPtr 0
	mov qword [@1529$g_currStructPtr], 0

 setlocale$7:
	; Equal 30 newName 0
	cmp qword [rbp + 28], 0
	je setlocale$30

 setlocale$8:
	; Assign index 0
	mov dword [rbp + 36], 0

 setlocale$9:
	; SignedGreaterThanEqual 30 index sSize
	mov eax, [@1528$sSize]
	cmp [rbp + 36], eax
	jge setlocale$30

 setlocale$10:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setlocale$11:
	; Parameter 72 pointer newName
	mov rax, [rbp + 28]
	mov [rbp + 72], rax

 setlocale$12:
	; IntegralToIntegral £temporary378 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 setlocale$13:
	; UnsignedMultiply £temporary379 £temporary378 16
	xor rdx, rdx
	mul qword [Array_16#]

 setlocale$14:
	; BinaryAdd £temporary380 sArray £temporary379
	mov rsi, @1527$sArray
	add rsi, rax

 setlocale$15:
	; Dereference £temporary377 -> £temporary380 £temporary380 0

 setlocale$16:
	; Parameter 80 pointer £temporary377.name -> £temporary380
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
	; GetReturnValue £temporary381

 setlocale$20:
	; NotEqual 28 £temporary381 0
	cmp ebx, 0
	jne setlocale$28

 setlocale$21:
	; IntegralToIntegral £temporary384 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 setlocale$22:
	; UnsignedMultiply £temporary385 £temporary384 16
	xor rdx, rdx
	mul qword [Array_16#]

 setlocale$23:
	; BinaryAdd £temporary386 sArray £temporary385
	mov rsi, @1527$sArray
	add rsi, rax

 setlocale$24:
	; Dereference £temporary383 -> £temporary386 £temporary386 0

 setlocale$25:
	; Address £temporary387 £temporary383 -> £temporary386

 setlocale$26:
	; Assign g_currStructPtr £temporary387
	mov [@1529$g_currStructPtr], rsi

 setlocale$27:
	; Goto 30
	jmp setlocale$30

 setlocale$28:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 setlocale$29:
	; Goto 9
	jmp setlocale$9

 setlocale$30:
	; Return oldName
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setlocale$31:
	; FunctionEnd setlocale

section .text

 localeconv:
	; Equal 4 g_currStructPtr 0
	cmp qword [@1529$g_currStructPtr], 0
	je localeconv$4

 localeconv$1:
	; Dereference £temporary389 -> g_currStructPtr g_currStructPtr 0
	mov rsi, [@1529$g_currStructPtr]

 localeconv$2:
	; Assign £temporary390 £temporary389 -> g_currStructPtr
	mov rbx, [rsi + 8]

 localeconv$3:
	; Goto 5
	jmp localeconv$5

 localeconv$4:
	; Assign £temporary390 0
	mov rbx, 0

 localeconv$5:
	; Return £temporary390
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 localeconv$6:
	; FunctionEnd localeconv
