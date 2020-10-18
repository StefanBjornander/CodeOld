	global enMessageList
	global setlocale
	global localeconv

	extern strcmp
	extern $StackTop

section .text


section .data

string_Sun#:
	; initializer String
	db "Sun", 0

section .data

string_Mon#:
	; initializer String
	db "Mon", 0

section .data

string_Tue#:
	; initializer String
	db "Tue", 0

section .data

string_Wed#:
	; initializer String
	db "Wed", 0

section .data

string_Thu#:
	; initializer String
	db "Thu", 0

section .data

string_Fri#:
	; initializer String
	db "Fri", 0

section .data

string_Sat#:
	; initializer String
	db "Sat", 0

section .data

@1509$enShortDayList:
	; initializer Pointer
	dq string_Sun#
	; initializer Pointer
	dq string_Mon#
	; initializer Pointer
	dq string_Tue#
	; initializer Pointer
	dq string_Wed#
	; initializer Pointer
	dq string_Thu#
	; initializer Pointer
	dq string_Fri#
	; initializer Pointer
	dq string_Sat#

section .data

string_Sunday#:
	; initializer String
	db "Sunday", 0

section .data

string_Monday#:
	; initializer String
	db "Monday", 0

section .data

string_Tuesday#:
	; initializer String
	db "Tuesday", 0

section .data

string_Wednesday#:
	; initializer String
	db "Wednesday", 0

section .data

string_Thursday#:
	; initializer String
	db "Thursday", 0

section .data

string_Friday#:
	; initializer String
	db "Friday", 0

section .data

string_Saturday#:
	; initializer String
	db "Saturday", 0

section .data

@1510$enLongDayList:
	; initializer Pointer
	dq string_Sunday#
	; initializer Pointer
	dq string_Monday#
	; initializer Pointer
	dq string_Tuesday#
	; initializer Pointer
	dq string_Wednesday#
	; initializer Pointer
	dq string_Thursday#
	; initializer Pointer
	dq string_Friday#
	; initializer Pointer
	dq string_Saturday#

section .data

string_Jan#:
	; initializer String
	db "Jan", 0

section .data

string_Feb#:
	; initializer String
	db "Feb", 0

section .data

string_Mar#:
	; initializer String
	db "Mar", 0

section .data

string_Apr#:
	; initializer String
	db "Apr", 0

section .data

string_May#:
	; initializer String
	db "May", 0

section .data

string_Jun#:
	; initializer String
	db "Jun", 0

section .data

string_Jul#:
	; initializer String
	db "Jul", 0

section .data

string_Aug#:
	; initializer String
	db "Aug", 0

section .data

string_Sep#:
	; initializer String
	db "Sep", 0

section .data

string_Oct#:
	; initializer String
	db "Oct", 0

section .data

string_Nov#:
	; initializer String
	db "Nov", 0

section .data

string_Dec#:
	; initializer String
	db "Dec", 0

section .data

@1511$enShortMonthList:
	; initializer Pointer
	dq string_Jan#
	; initializer Pointer
	dq string_Feb#
	; initializer Pointer
	dq string_Mar#
	; initializer Pointer
	dq string_Apr#
	; initializer Pointer
	dq string_May#
	; initializer Pointer
	dq string_Jun#
	; initializer Pointer
	dq string_Jul#
	; initializer Pointer
	dq string_Aug#
	; initializer Pointer
	dq string_Sep#
	; initializer Pointer
	dq string_Oct#
	; initializer Pointer
	dq string_Nov#
	; initializer Pointer
	dq string_Dec#

section .data

string_January#:
	; initializer String
	db "January", 0

section .data

string_February#:
	; initializer String
	db "February", 0

section .data

string_March#:
	; initializer String
	db "March", 0

section .data

string_April#:
	; initializer String
	db "April", 0

section .data

string_June#:
	; initializer String
	db "June", 0

section .data

string_July#:
	; initializer String
	db "July", 0

section .data

string_August#:
	; initializer String
	db "August", 0

section .data

string_September#:
	; initializer String
	db "September", 0

section .data

string_October#:
	; initializer String
	db "October", 0

section .data

string_November#:
	; initializer String
	db "November", 0

section .data

string_December#:
	; initializer String
	db "December", 0

section .data

@1512$enLongMonthList:
	; initializer Pointer
	dq string_January#
	; initializer Pointer
	dq string_February#
	; initializer Pointer
	dq string_March#
	; initializer Pointer
	dq string_April#
	; initializer Pointer
	dq string_May#
	; initializer Pointer
	dq string_June#
	; initializer Pointer
	dq string_July#
	; initializer Pointer
	dq string_August#
	; initializer Pointer
	dq string_September#
	; initializer Pointer
	dq string_October#
	; initializer Pointer
	dq string_November#
	; initializer Pointer
	dq string_December#

section .data

string_no20error#:
	; initializer String
	db "no error", 0

section .data

string_function20number20invalid#:
	; initializer String
	db "function number invalid", 0

section .data

string_file20not20found#:
	; initializer String
	db "file not found", 0

section .data

string_path20not20found#:
	; initializer String
	db "path not found", 0

section .data

string_no20handle20available#:
	; initializer String
	db "no handle available", 0

section .data

string_access20denied#:
	; initializer String
	db "access denied", 0

section .data

string_out20of20domain#:
	; initializer String
	db "out of domain", 0

section .data

string_out20of20range#:
	; initializer String
	db "out of range", 0

section .data

string_invalid20multibyte20sequence#:
	; initializer String
	db "invalid multibyte sequence", 0

section .data

string_error20while20opening#:
	; initializer String
	db "error while opening", 0

section .data

string_error20while20flushing#:
	; initializer String
	db "error while flushing", 0

section .data

string_error20while20closing#:
	; initializer String
	db "error while closing", 0

section .data

string_open20mode20invalid#:
	; initializer String
	db "open mode invalid", 0

section .data

string_error20while20writing#:
	; initializer String
	db "error while writing", 0

section .data

string_error20while20reading#:
	; initializer String
	db "error while reading", 0

section .data

string_error20while20seeking#:
	; initializer String
	db "error while seeking", 0

section .data

string_error20while20telling#:
	; initializer String
	db "error while telling", 0

section .data

string_error20while20sizing#:
	; initializer String
	db "error while sizing", 0

section .data

string_error20while20removing20file#:
	; initializer String
	db "error while removing file", 0

section .data

string_error20while20renaming20file#:
	; initializer String
	db "error while renaming file", 0

section .data

enMessageList:
	; initializer Pointer
	dq string_no20error#
	; initializer Pointer
	dq string_function20number20invalid#
	; initializer Pointer
	dq string_file20not20found#
	; initializer Pointer
	dq string_path20not20found#
	; initializer Pointer
	dq string_no20handle20available#
	; initializer Pointer
	dq string_access20denied#
	; initializer Pointer
	dq string_out20of20domain#
	; initializer Pointer
	dq string_out20of20range#
	; initializer Pointer
	dq string_invalid20multibyte20sequence#
	; initializer Pointer
	dq string_error20while20opening#
	; initializer Pointer
	dq string_error20while20flushing#
	; initializer Pointer
	dq string_error20while20closing#
	; initializer Pointer
	dq string_open20mode20invalid#
	; initializer Pointer
	dq string_error20while20writing#
	; initializer Pointer
	dq string_error20while20reading#
	; initializer Pointer
	dq string_error20while20seeking#
	; initializer Pointer
	dq string_error20while20telling#
	; initializer Pointer
	dq string_error20while20sizing#
	; initializer Pointer
	dq string_error20while20removing20file#
	; initializer Pointer
	dq string_error20while20renaming20file#

section .data

string_abcdefghijklmnopqrstuvwxyz#:
	; initializer String
	db "abcdefghijklmnopqrstuvwxyz", 0

section .data

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
	; initializer String
	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0

section .data

@1535$en_US_utf8:
	; initializer SignedInt
	dd -5
	; initializer SignedInt
	dd -4
	; initializer Pointer
	dq @1509$enShortDayList
	; initializer Pointer
	dq @1510$enLongDayList
	; initializer Pointer
	dq @1511$enShortMonthList
	; initializer Pointer
	dq @1512$enLongMonthList
	; initializer Pointer
	dq string_abcdefghijklmnopqrstuvwxyz#
	; initializer Pointer
	dq string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#
	; initializer Pointer
	dq enMessageList

section .data

string_Son#:
	; initializer String
	db "Son", 0

section .data

string_Man#:
	; initializer String
	db "Man", 0

section .data

string_Tis#:
	; initializer String
	db "Tis", 0

section .data

string_Ons#:
	; initializer String
	db "Ons", 0

section .data

string_Tor#:
	; initializer String
	db "Tor", 0

section .data

string_Fre#:
	; initializer String
	db "Fre", 0

section .data

string_Lor#:
	; initializer String
	db "Lor", 0

section .data

@1536$swShortDayList:
	; initializer Pointer
	dq string_Son#
	; initializer Pointer
	dq string_Man#
	; initializer Pointer
	dq string_Tis#
	; initializer Pointer
	dq string_Ons#
	; initializer Pointer
	dq string_Tor#
	; initializer Pointer
	dq string_Fre#
	; initializer Pointer
	dq string_Lor#

section .data

string_Sondag#:
	; initializer String
	db "Sondag", 0

section .data

string_Mandag#:
	; initializer String
	db "Mandag", 0

section .data

string_Tisdag#:
	; initializer String
	db "Tisdag", 0

section .data

string_Onsdag#:
	; initializer String
	db "Onsdag", 0

section .data

string_Torsdag#:
	; initializer String
	db "Torsdag", 0

section .data

string_Fredag#:
	; initializer String
	db "Fredag", 0

section .data

string_Lordag#:
	; initializer String
	db "Lordag", 0

section .data

@1537$swLongDayList:
	; initializer Pointer
	dq string_Sondag#
	; initializer Pointer
	dq string_Mandag#
	; initializer Pointer
	dq string_Tisdag#
	; initializer Pointer
	dq string_Onsdag#
	; initializer Pointer
	dq string_Torsdag#
	; initializer Pointer
	dq string_Fredag#
	; initializer Pointer
	dq string_Lordag#

section .data

string_Maj#:
	; initializer String
	db "Maj", 0

section .data

string_Okt#:
	; initializer String
	db "Okt", 0

section .data

@1538$swShortMonthList:
	; initializer Pointer
	dq string_Jan#
	; initializer Pointer
	dq string_Feb#
	; initializer Pointer
	dq string_Mar#
	; initializer Pointer
	dq string_Apr#
	; initializer Pointer
	dq string_Maj#
	; initializer Pointer
	dq string_Jun#
	; initializer Pointer
	dq string_Jul#
	; initializer Pointer
	dq string_Aug#
	; initializer Pointer
	dq string_Sep#
	; initializer Pointer
	dq string_Okt#
	; initializer Pointer
	dq string_Nov#
	; initializer Pointer
	dq string_Dec#

section .data

string_Januari#:
	; initializer String
	db "Januari", 0

section .data

string_Februari#:
	; initializer String
	db "Februari", 0

section .data

string_Mars#:
	; initializer String
	db "Mars", 0

section .data

string_Juni#:
	; initializer String
	db "Juni", 0

section .data

string_Juli#:
	; initializer String
	db "Juli", 0

section .data

string_Augusit#:
	; initializer String
	db "Augusit", 0

section .data

string_Oktober#:
	; initializer String
	db "Oktober", 0

section .data

@1539$swLongMonthList:
	; initializer Pointer
	dq string_Januari#
	; initializer Pointer
	dq string_Februari#
	; initializer Pointer
	dq string_Mars#
	; initializer Pointer
	dq string_April#
	; initializer Pointer
	dq string_Maj#
	; initializer Pointer
	dq string_Juni#
	; initializer Pointer
	dq string_Juli#
	; initializer Pointer
	dq string_Augusit#
	; initializer Pointer
	dq string_September#
	; initializer Pointer
	dq string_Oktober#
	; initializer Pointer
	dq string_November#
	; initializer Pointer
	dq string_December#

section .data

string_inga20fel#:
	; initializer String
	db "inga fel", 0

section .data

string_felaktigt20functionsnummer#:
	; initializer String
	db "felaktigt functionsnummer", 0

section .data

string_hittar20ej20filen#:
	; initializer String
	db "hittar ej filen", 0

section .data

string_hittar20ej20sokvagen#:
	; initializer String
	db "hittar ej sokvagen", 0

section .data

string_inget20handtag20tillgangligt#:
	; initializer String
	db "inget handtag tillgangligt", 0

section .data

string_atkomst20nekad#:
	; initializer String
	db "atkomst nekad", 0

section .data

string_utanfor20doman#:
	; initializer String
	db "utanfor doman", 0

section .data

string_utanfor20range#:
	; initializer String
	db "utanfor range", 0

section .data

string_felaktig20multibyte2Dsekvens#:
	; initializer String
	db "felaktig multibyte-sekvens", 0

section .data

string_fel20vid20oppning#:
	; initializer String
	db "fel vid oppning", 0

section .data

string_fel20vid20flushing#:
	; initializer String
	db "fel vid flushing", 0

section .data

string_fel20vid20stangning#:
	; initializer String
	db "fel vid stangning", 0

section .data

string_fel20oppningslage#:
	; initializer String
	db "fel oppningslage", 0

section .data

string_fel20vid20skrivning#:
	; initializer String
	db "fel vid skrivning", 0

section .data

string_fel20vid20lasning#:
	; initializer String
	db "fel vid lasning", 0

section .data

string_fel20vid20sokning#:
	; initializer String
	db "fel vid sokning", 0

section .data

string_fel20vid20telling#:
	; initializer String
	db "fel vid telling", 0

section .data

string_fel20vid20borttagning20av20fil#:
	; initializer String
	db "fel vid borttagning av fil", 0

section .data

string_fel20vid20namnbyte20av20fil#:
	; initializer String
	db "fel vid namnbyte av fil", 0

section .data

@1540$swMessageList:
	; initializer Pointer
	dq string_inga20fel#
	; initializer Pointer
	dq string_felaktigt20functionsnummer#
	; initializer Pointer
	dq string_hittar20ej20filen#
	; initializer Pointer
	dq string_hittar20ej20sokvagen#
	; initializer Pointer
	dq string_inget20handtag20tillgangligt#
	; initializer Pointer
	dq string_atkomst20nekad#
	; initializer Pointer
	dq string_utanfor20doman#
	; initializer Pointer
	dq string_utanfor20range#
	; initializer Pointer
	dq string_felaktig20multibyte2Dsekvens#
	; initializer Pointer
	dq string_fel20vid20oppning#
	; initializer Pointer
	dq string_fel20vid20flushing#
	; initializer Pointer
	dq string_fel20vid20stangning#
	; initializer Pointer
	dq string_fel20oppningslage#
	; initializer Pointer
	dq string_fel20vid20skrivning#
	; initializer Pointer
	dq string_fel20vid20lasning#
	; initializer Pointer
	dq string_fel20vid20sokning#
	; initializer Pointer
	dq string_fel20vid20telling#
	; initializer Pointer
	dq string_fel20vid20borttagning20av20fil#
	; initializer Pointer
	dq string_fel20vid20namnbyte20av20fil#

section .data

@1541$sw_EN_utf8:
	; initializer SignedInt
	dd 1
	; initializer SignedInt
	dd 2
	; initializer Pointer
	dq @1536$swShortDayList
	; initializer Pointer
	dq @1537$swLongDayList
	; initializer Pointer
	dq @1511$enShortMonthList
	; initializer Pointer
	dq @1539$swLongMonthList
	; initializer Pointer
	dq string_abcdefghijklmnopqrstuvwxyz#
	; initializer Pointer
	dq string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#
	; initializer Pointer
	dq @1540$swMessageList

section .data

string_#:
	; initializer String
	db 0

section .data

string_C#:
	; initializer String
	db "C", 0

section .data

string_US#:
	; initializer String
	db "US", 0

section .data

string_SE#:
	; initializer String
	db "SE", 0

section .data

@1544$sArray:
	; initializer Pointer
	dq string_#
	; initializer Pointer
	dq @1541$sw_EN_utf8
	; initializer Pointer
	dq string_C#
	; initializer Pointer
	dq @1535$en_US_utf8
	; initializer Pointer
	dq string_US#
	; initializer Pointer
	dq @1535$en_US_utf8
	; initializer Pointer
	dq string_SE#
	; initializer Pointer
	dq @1541$sw_EN_utf8

section .data

@1545$sSize:
	; initializer SignedInt
	dd 1

section .data

@1546$g_currStructPtr:
	; initializer Pointer
	dq @1544$sArray

section .data

Array_16#:
	; initializer Array
	dq 16

section .text

 setlocale:
	; empty

 setlocale$1:
	; if g_currStructPtr == int8$0# goto 5
	cmp qword [@1546$g_currStructPtr], 0
	je setlocale$5

 setlocale$2:
	; £temporary378 -> g_currStructPtr = *g_currStructPtr
	mov rsi, [@1546$g_currStructPtr]

 setlocale$3:
	; £temporary379 = £temporary378 -> g_currStructPtr
	mov rax, [rsi]

 setlocale$4:
	; goto 6
	jmp setlocale$6

 setlocale$5:
	; £temporary379 = int8$0#
	mov rax, 0

 setlocale$6:
	; oldName = £temporary379
	mov [rbp + 40], rax

 setlocale$7:
	; g_currStructPtr = int8$0#
	mov qword [@1546$g_currStructPtr], 0

 setlocale$8:
	; if newName == int8$0# goto 31
	cmp qword [rbp + 28], 0
	je setlocale$31

 setlocale$9:
	; index = int4$0#
	mov dword [rbp + 36], 0

 setlocale$10:
	; if index >= sSize goto 31
	mov eax, [@1545$sSize]
	cmp [rbp + 36], eax
	jge setlocale$31

 setlocale$11:
	; call header integral zero 0 stack zero 0

 setlocale$12:
	; parameter newName, offset 72
	mov rax, [rbp + 28]
	mov [rbp + 72], rax

 setlocale$13:
	; £temporary384 = int_to_int index (SignedInt -> Array)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 setlocale$14:
	; £temporary385 = £temporary384 * Array_16#
	xor rdx, rdx
	mul qword [Array_16#]

 setlocale$15:
	; £temporary386 = sArray + £temporary385
	mov rsi, @1544$sArray
	add rsi, rax

 setlocale$16:
	; £temporary383 -> £temporary386 = *£temporary386

 setlocale$17:
	; parameter £temporary383.name -> £temporary386, offset 80
	mov rax, [rsi]
	mov [rbp + 80], rax

 setlocale$18:
	; call function noellipse-noellipse strcmp
	mov qword [rbp + 48], setlocale$19
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strcmp

 setlocale$19:
	; post call

 setlocale$20:
	; £temporary387 = return_value

 setlocale$21:
	; if £temporary387 != int4$0# goto 29
	cmp ebx, 0
	jne setlocale$29

 setlocale$22:
	; £temporary390 = int_to_int index (SignedInt -> Array)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

 setlocale$23:
	; £temporary391 = £temporary390 * Array_16#
	xor rdx, rdx
	mul qword [Array_16#]

 setlocale$24:
	; £temporary392 = sArray + £temporary391
	mov rsi, @1544$sArray
	add rsi, rax

 setlocale$25:
	; £temporary389 -> £temporary392 = *£temporary392

 setlocale$26:
	; £temporary393 = &£temporary389 -> £temporary392

 setlocale$27:
	; g_currStructPtr = £temporary393
	mov [@1546$g_currStructPtr], rsi

 setlocale$28:
	; goto 31
	jmp setlocale$31

 setlocale$29:
	; index = index + int4$1#
	inc dword [rbp + 36]

 setlocale$30:
	; goto 10
	jmp setlocale$10

 setlocale$31:
	; return oldName
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setlocale$32:
	; function end setlocale

section .text

 localeconv:
	; if g_currStructPtr == int8$0# goto 4
	cmp qword [@1546$g_currStructPtr], 0
	je localeconv$4

 localeconv$1:
	; £temporary395 -> g_currStructPtr = *g_currStructPtr
	mov rsi, [@1546$g_currStructPtr]

 localeconv$2:
	; £temporary396 = £temporary395 -> g_currStructPtr
	mov rbx, [rsi + 8]

 localeconv$3:
	; goto 5
	jmp localeconv$5

 localeconv$4:
	; £temporary396 = int8$0#
	mov rbx, 0

 localeconv$5:
	; return £temporary396
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 localeconv$6:
	; function end localeconv
