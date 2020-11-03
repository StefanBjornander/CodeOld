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
	; Initializer SignedInt -5
	dd -5
	; Initializer SignedInt -4
	dd -4
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

string_Son#:
	; Initializer String Son
	db "Son", 0

section .data

string_Man#:
	; Initializer String Man
	db "Man", 0

section .data

string_Tis#:
	; Initializer String Tis
	db "Tis", 0

section .data

string_Ons#:
	; Initializer String Ons
	db "Ons", 0

section .data

string_Tor#:
	; Initializer String Tor
	db "Tor", 0

section .data

string_Fre#:
	; Initializer String Fre
	db "Fre", 0

section .data

string_Lor#:
	; Initializer String Lor
	db "Lor", 0

section .data

@1525$swShortDayList:
	; Initializer Pointer string_Son#
	dq string_Son#
	; Initializer Pointer string_Man#
	dq string_Man#
	; Initializer Pointer string_Tis#
	dq string_Tis#
	; Initializer Pointer string_Ons#
	dq string_Ons#
	; Initializer Pointer string_Tor#
	dq string_Tor#
	; Initializer Pointer string_Fre#
	dq string_Fre#
	; Initializer Pointer string_Lor#
	dq string_Lor#

section .data

string_Sondag#:
	; Initializer String Sondag
	db "Sondag", 0

section .data

string_Mandag#:
	; Initializer String Mandag
	db "Mandag", 0

section .data

string_Tisdag#:
	; Initializer String Tisdag
	db "Tisdag", 0

section .data

string_Onsdag#:
	; Initializer String Onsdag
	db "Onsdag", 0

section .data

string_Torsdag#:
	; Initializer String Torsdag
	db "Torsdag", 0

section .data

string_Fredag#:
	; Initializer String Fredag
	db "Fredag", 0

section .data

string_Lordag#:
	; Initializer String Lordag
	db "Lordag", 0

section .data

@1526$swLongDayList:
	; Initializer Pointer string_Sondag#
	dq string_Sondag#
	; Initializer Pointer string_Mandag#
	dq string_Mandag#
	; Initializer Pointer string_Tisdag#
	dq string_Tisdag#
	; Initializer Pointer string_Onsdag#
	dq string_Onsdag#
	; Initializer Pointer string_Torsdag#
	dq string_Torsdag#
	; Initializer Pointer string_Fredag#
	dq string_Fredag#
	; Initializer Pointer string_Lordag#
	dq string_Lordag#

section .data

string_Maj#:
	; Initializer String Maj
	db "Maj", 0

section .data

string_Okt#:
	; Initializer String Okt
	db "Okt", 0

section .data

@1527$swShortMonthList:
	; Initializer Pointer string_Jan#
	dq string_Jan#
	; Initializer Pointer string_Feb#
	dq string_Feb#
	; Initializer Pointer string_Mar#
	dq string_Mar#
	; Initializer Pointer string_Apr#
	dq string_Apr#
	; Initializer Pointer string_Maj#
	dq string_Maj#
	; Initializer Pointer string_Jun#
	dq string_Jun#
	; Initializer Pointer string_Jul#
	dq string_Jul#
	; Initializer Pointer string_Aug#
	dq string_Aug#
	; Initializer Pointer string_Sep#
	dq string_Sep#
	; Initializer Pointer string_Okt#
	dq string_Okt#
	; Initializer Pointer string_Nov#
	dq string_Nov#
	; Initializer Pointer string_Dec#
	dq string_Dec#

section .data

string_Januari#:
	; Initializer String Januari
	db "Januari", 0

section .data

string_Februari#:
	; Initializer String Februari
	db "Februari", 0

section .data

string_Mars#:
	; Initializer String Mars
	db "Mars", 0

section .data

string_Juni#:
	; Initializer String Juni
	db "Juni", 0

section .data

string_Juli#:
	; Initializer String Juli
	db "Juli", 0

section .data

string_Augusit#:
	; Initializer String Augusit
	db "Augusit", 0

section .data

string_Oktober#:
	; Initializer String Oktober
	db "Oktober", 0

section .data

@1528$swLongMonthList:
	; Initializer Pointer string_Januari#
	dq string_Januari#
	; Initializer Pointer string_Februari#
	dq string_Februari#
	; Initializer Pointer string_Mars#
	dq string_Mars#
	; Initializer Pointer string_April#
	dq string_April#
	; Initializer Pointer string_Maj#
	dq string_Maj#
	; Initializer Pointer string_Juni#
	dq string_Juni#
	; Initializer Pointer string_Juli#
	dq string_Juli#
	; Initializer Pointer string_Augusit#
	dq string_Augusit#
	; Initializer Pointer string_September#
	dq string_September#
	; Initializer Pointer string_Oktober#
	dq string_Oktober#
	; Initializer Pointer string_November#
	dq string_November#
	; Initializer Pointer string_December#
	dq string_December#

section .data

string_inga20fel#:
	; Initializer String inga fel
	db "inga fel", 0

section .data

string_felaktigt20functionsnummer#:
	; Initializer String felaktigt functionsnummer
	db "felaktigt functionsnummer", 0

section .data

string_hittar20ej20filen#:
	; Initializer String hittar ej filen
	db "hittar ej filen", 0

section .data

string_hittar20ej20sokvagen#:
	; Initializer String hittar ej sokvagen
	db "hittar ej sokvagen", 0

section .data

string_inget20handtag20tillgangligt#:
	; Initializer String inget handtag tillgangligt
	db "inget handtag tillgangligt", 0

section .data

string_atkomst20nekad#:
	; Initializer String atkomst nekad
	db "atkomst nekad", 0

section .data

string_utanfor20doman#:
	; Initializer String utanfor doman
	db "utanfor doman", 0

section .data

string_utanfor20range#:
	; Initializer String utanfor range
	db "utanfor range", 0

section .data

string_felaktig20multibyte2Dsekvens#:
	; Initializer String felaktig multibyte-sekvens
	db "felaktig multibyte-sekvens", 0

section .data

string_fel20vid20oppning#:
	; Initializer String fel vid oppning
	db "fel vid oppning", 0

section .data

string_fel20vid20flushing#:
	; Initializer String fel vid flushing
	db "fel vid flushing", 0

section .data

string_fel20vid20stangning#:
	; Initializer String fel vid stangning
	db "fel vid stangning", 0

section .data

string_fel20oppningslage#:
	; Initializer String fel oppningslage
	db "fel oppningslage", 0

section .data

string_fel20vid20skrivning#:
	; Initializer String fel vid skrivning
	db "fel vid skrivning", 0

section .data

string_fel20vid20lasning#:
	; Initializer String fel vid lasning
	db "fel vid lasning", 0

section .data

string_fel20vid20sokning#:
	; Initializer String fel vid sokning
	db "fel vid sokning", 0

section .data

string_fel20vid20telling#:
	; Initializer String fel vid telling
	db "fel vid telling", 0

section .data

string_fel20vid20borttagning20av20fil#:
	; Initializer String fel vid borttagning av fil
	db "fel vid borttagning av fil", 0

section .data

string_fel20vid20namnbyte20av20fil#:
	; Initializer String fel vid namnbyte av fil
	db "fel vid namnbyte av fil", 0

section .data

@1529$swMessageList:
	; Initializer Pointer string_inga20fel#
	dq string_inga20fel#
	; Initializer Pointer string_felaktigt20functionsnummer#
	dq string_felaktigt20functionsnummer#
	; Initializer Pointer string_hittar20ej20filen#
	dq string_hittar20ej20filen#
	; Initializer Pointer string_hittar20ej20sokvagen#
	dq string_hittar20ej20sokvagen#
	; Initializer Pointer string_inget20handtag20tillgangligt#
	dq string_inget20handtag20tillgangligt#
	; Initializer Pointer string_atkomst20nekad#
	dq string_atkomst20nekad#
	; Initializer Pointer string_utanfor20doman#
	dq string_utanfor20doman#
	; Initializer Pointer string_utanfor20range#
	dq string_utanfor20range#
	; Initializer Pointer string_felaktig20multibyte2Dsekvens#
	dq string_felaktig20multibyte2Dsekvens#
	; Initializer Pointer string_fel20vid20oppning#
	dq string_fel20vid20oppning#
	; Initializer Pointer string_fel20vid20flushing#
	dq string_fel20vid20flushing#
	; Initializer Pointer string_fel20vid20stangning#
	dq string_fel20vid20stangning#
	; Initializer Pointer string_fel20oppningslage#
	dq string_fel20oppningslage#
	; Initializer Pointer string_fel20vid20skrivning#
	dq string_fel20vid20skrivning#
	; Initializer Pointer string_fel20vid20lasning#
	dq string_fel20vid20lasning#
	; Initializer Pointer string_fel20vid20sokning#
	dq string_fel20vid20sokning#
	; Initializer Pointer string_fel20vid20telling#
	dq string_fel20vid20telling#
	; Initializer Pointer string_fel20vid20borttagning20av20fil#
	dq string_fel20vid20borttagning20av20fil#
	; Initializer Pointer string_fel20vid20namnbyte20av20fil#
	dq string_fel20vid20namnbyte20av20fil#

section .data

@1530$sw_EN_utf8:
	; Initializer SignedInt 1
	dd 1
	; Initializer SignedInt 2
	dd 2
	; Initializer Pointer @1525$swShortDayList
	dq @1525$swShortDayList
	; Initializer Pointer @1526$swLongDayList
	dq @1526$swLongDayList
	; Initializer Pointer @1500$enShortMonthList
	dq @1500$enShortMonthList
	; Initializer Pointer @1528$swLongMonthList
	dq @1528$swLongMonthList
	; Initializer Pointer string_abcdefghijklmnopqrstuvwxyz#
	dq string_abcdefghijklmnopqrstuvwxyz#
	; Initializer Pointer string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#
	dq string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#
	; Initializer Pointer @1529$swMessageList
	dq @1529$swMessageList

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

string_SE#:
	; Initializer String SE
	db "SE", 0

section .data

@1533$sArray:
	; Initializer Pointer string_#
	dq string_#
	; Initializer Pointer @1530$sw_EN_utf8
	dq @1530$sw_EN_utf8
	; Initializer Pointer string_C#
	dq string_C#
	; Initializer Pointer @1524$en_US_utf8
	dq @1524$en_US_utf8
	; Initializer Pointer string_US#
	dq string_US#
	; Initializer Pointer @1524$en_US_utf8
	dq @1524$en_US_utf8
	; Initializer Pointer string_SE#
	dq string_SE#
	; Initializer Pointer @1530$sw_EN_utf8
	dq @1530$sw_EN_utf8

section .data

@1534$sSize:
	; Initializer SignedInt 1
	dd 1

section .data

@1535$g_currStructPtr:
	; Initializer Pointer @1533$sArray
	dq @1533$sArray

section .data

Array_16#:
	; Initializer Array 16
	dq 16

section .text

 setlocale:
	; Equal 4 g_currStructPtr 0
	cmp qword [@1535$g_currStructPtr], 0
	je setlocale$4

 setlocale$1:
	; Dereference £temporary371 -> g_currStructPtr g_currStructPtr 0
	mov rsi, [@1535$g_currStructPtr]

 setlocale$2:
	; Assign £temporary372 £temporary371 -> g_currStructPtr
	mov rax, [rsi]

 setlocale$3:
	; Goto 5
	jmp setlocale$5

 setlocale$4:
	; Assign £temporary372 0
	mov rax, 0

 setlocale$5:
	; Assign oldName £temporary372
	mov [rbp + 40], rax

 setlocale$6:
	; Assign g_currStructPtr 0
	mov qword [@1535$g_currStructPtr], 0

 setlocale$7:
	; Equal 30 newName 0
	cmp qword [rbp + 28], 0
	je setlocale$30

 setlocale$8:
	; Assign index 0
	mov dword [rbp + 36], 0

 setlocale$9:
	; SignedGreaterThanEqual 30 index sSize
	mov eax, [@1534$sSize]
	cmp [rbp + 36], eax
	jge setlocale$30

 setlocale$10:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 setlocale$11:
	; Parameter pointer newName 72
	mov rax, [rbp + 28]
	mov [rbp + 72], rax

 setlocale$12:
	; IntegralToIntegral £temporary377 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 setlocale$13:
	; UnsignedMultiply £temporary378 £temporary377 16
	xor rdx, rdx
	mul qword [Array_16#]

 setlocale$14:
	; BinaryAdd £temporary379 sArray £temporary378
	mov rsi, @1533$sArray
	add rsi, rax

 setlocale$15:
	; Dereference £temporary376 -> £temporary379 £temporary379 0

 setlocale$16:
	; Parameter pointer £temporary376.name -> £temporary379 80
	mov rax, [rsi]
	mov [rbp + 80], rax

 setlocale$17:
	; Call strcmp 48 0
	mov qword [rbp + 48], setlocale$18
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strcmp

 setlocale$18:
	; PostCall 48

 setlocale$19:
	; GetReturnValue £temporary380

 setlocale$20:
	; NotEqual 28 £temporary380 0
	cmp ebx, 0
	jne setlocale$28

 setlocale$21:
	; IntegralToIntegral £temporary383 index
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 setlocale$22:
	; UnsignedMultiply £temporary384 £temporary383 16
	xor rdx, rdx
	mul qword [Array_16#]

 setlocale$23:
	; BinaryAdd £temporary385 sArray £temporary384
	mov rsi, @1533$sArray
	add rsi, rax

 setlocale$24:
	; Dereference £temporary382 -> £temporary385 £temporary385 0

 setlocale$25:
	; Address £temporary386 £temporary382 -> £temporary385

 setlocale$26:
	; Assign g_currStructPtr £temporary386
	mov [@1535$g_currStructPtr], rsi

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
	cmp qword [@1535$g_currStructPtr], 0
	je localeconv$4

 localeconv$1:
	; Dereference £temporary388 -> g_currStructPtr g_currStructPtr 0
	mov rsi, [@1535$g_currStructPtr]

 localeconv$2:
	; Assign £temporary389 £temporary388 -> g_currStructPtr
	mov rbx, [rsi + 8]

 localeconv$3:
	; Goto 5
	jmp localeconv$5

 localeconv$4:
	; Assign £temporary389 0
	mov rbx, 0

 localeconv$5:
	; Return £temporary389
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 localeconv$6:
	; FunctionEnd localeconv
