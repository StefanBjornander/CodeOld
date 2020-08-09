	global enMessageList
	global setlocale
	global localeconv

	extern strcmp
section .text

setlocale:	; empty

setlocale$1:	; if g_currStructPtr == int8$0# goto 5
	cmp qword [@1527$g_currStructPtr], 0
	je setlocale$5

setlocale$2:	; £field338 -> g_currStructPtr = *g_currStructPtr
	mov rsi, [@1527$g_currStructPtr]

setlocale$3:	; £temporary339 = £field338 -> g_currStructPtr
	mov rax, [rsi]

setlocale$4:	; goto 6
	jmp setlocale$6

setlocale$5:	; £temporary339 = int8$0#
	mov rax, 0

setlocale$6:	; oldName = £temporary339
	mov [rbp + 40], rax

setlocale$7:	; g_currStructPtr = int8$0#
	mov qword [@1527$g_currStructPtr], 0

setlocale$8:	; if newName == int8$0# goto 31
	cmp qword [rbp + 28], 0
	je setlocale$31

setlocale$9:	; index = int4$0#
	mov dword [rbp + 36], 0

setlocale$10:	; if index >= sSize goto 31
	mov eax, [@1526$sSize]
	cmp [rbp + 36], eax
	jge setlocale$31

setlocale$11:	; call header integral zero 0 stack zero 0

setlocale$12:	; parameter newName, offset 72
	mov rax, [rbp + 28]
	mov [rbp + 72], rax

setlocale$13:	; £temporary344 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

setlocale$14:	; £temporary345 = £temporary344 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

setlocale$15:	; £temporary346 = sArray + £temporary345
	mov rsi, @1525$sArray
	add rsi, rax

setlocale$16:	; £field343 -> £temporary346 = *£temporary346

setlocale$17:	; parameter £field343.name$0 -> £temporary346, offset 80
	mov rax, [rsi]
	mov [rbp + 80], rax

setlocale$18:	; call function noellipse-noellipse strcmp
	mov qword [rbp + 48], setlocale$19
	mov [rbp + 56], rbp
	add rbp, 48
	jmp strcmp

setlocale$19:	; post call

setlocale$20:	; £temporary347 = return_value

setlocale$21:	; if £temporary347 != int4$0# goto 29
	cmp ebx, 0
	jne setlocale$29

setlocale$22:	; £temporary350 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

setlocale$23:	; £temporary351 = £temporary350 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

setlocale$24:	; £temporary352 = sArray + £temporary351
	mov rsi, @1525$sArray
	add rsi, rax

setlocale$25:	; £field349 -> £temporary352 = *£temporary352

setlocale$26:	; £temporary353 = &£field349 -> £temporary352

setlocale$27:	; g_currStructPtr = £temporary353
	mov [@1527$g_currStructPtr], rsi

setlocale$28:	; goto 31
	jmp setlocale$31

setlocale$29:	; index = index + int4$1#
	inc dword [rbp + 36]

setlocale$30:	; goto 10
	jmp setlocale$10

setlocale$31:	; return_value = oldName
	mov rbx, [rbp + 40]

setlocale$32:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

setlocale$33:	; function end setlocale

localeconv:	; if g_currStructPtr == int8$0# goto 4
	cmp qword [@1527$g_currStructPtr], 0
	je localeconv$4

localeconv$1:	; £field355 -> g_currStructPtr = *g_currStructPtr
	mov rsi, [@1527$g_currStructPtr]

localeconv$2:	; £temporary356 = £field355 -> g_currStructPtr
	mov rbx, [rsi + 8]

localeconv$3:	; goto 5
	jmp localeconv$5

localeconv$4:	; £temporary356 = int8$0#
	mov rbx, 0

localeconv$5:	; return_value = £temporary356

localeconv$6:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

localeconv$7:	; function end localeconv
section .data

$IntegralStorage#:
	times 8 db 0

string_Sun#:
	db "Sun", 0

string_Mon#:
	db "Mon", 0

string_Tue#:
	db "Tue", 0

string_Wed#:
	db "Wed", 0

string_Thu#:
	db "Thu", 0

string_Fri#:
	db "Fri", 0

string_Sat#:
	db "Sat", 0

@1490$enShortDayList:
	dq string_Sun#
	dq string_Mon#
	dq string_Tue#
	dq string_Wed#
	dq string_Thu#
	dq string_Fri#
	dq string_Sat#

string_Sunday#:
	db "Sunday", 0

string_Monday#:
	db "Monday", 0

string_Tuesday#:
	db "Tuesday", 0

string_Wednesday#:
	db "Wednesday", 0

string_Thursday#:
	db "Thursday", 0

string_Friday#:
	db "Friday", 0

string_Saturday#:
	db "Saturday", 0

@1491$enLongDayList:
	dq string_Sunday#
	dq string_Monday#
	dq string_Tuesday#
	dq string_Wednesday#
	dq string_Thursday#
	dq string_Friday#
	dq string_Saturday#

string_Jan#:
	db "Jan", 0

string_Feb#:
	db "Feb", 0

string_Mar#:
	db "Mar", 0

string_Apr#:
	db "Apr", 0

string_May#:
	db "May", 0

string_Jun#:
	db "Jun", 0

string_Jul#:
	db "Jul", 0

string_Aug#:
	db "Aug", 0

string_Sep#:
	db "Sep", 0

string_Oct#:
	db "Oct", 0

string_Nov#:
	db "Nov", 0

string_Dec#:
	db "Dec", 0

@1492$enShortMonthList:
	dq string_Jan#
	dq string_Feb#
	dq string_Mar#
	dq string_Apr#
	dq string_May#
	dq string_Jun#
	dq string_Jul#
	dq string_Aug#
	dq string_Sep#
	dq string_Oct#
	dq string_Nov#
	dq string_Dec#

string_January#:
	db "January", 0

string_February#:
	db "February", 0

string_March#:
	db "March", 0

string_April#:
	db "April", 0

string_June#:
	db "June", 0

string_July#:
	db "July", 0

string_August#:
	db "August", 0

string_September#:
	db "September", 0

string_October#:
	db "October", 0

string_November#:
	db "November", 0

string_December#:
	db "December", 0

@1493$enLongMonthList:
	dq string_January#
	dq string_February#
	dq string_March#
	dq string_April#
	dq string_May#
	dq string_June#
	dq string_July#
	dq string_August#
	dq string_September#
	dq string_October#
	dq string_November#
	dq string_December#

string_no20error#:
	db "no error", 0

string_function20number20invalid#:
	db "function number invalid", 0

string_file20not20found#:
	db "file not found", 0

string_path20not20found#:
	db "path not found", 0

string_no20handle20available#:
	db "no handle available", 0

string_access20denied#:
	db "access denied", 0

string_out20of20domain#:
	db "out of domain", 0

string_out20of20range#:
	db "out of range", 0

string_invalid20multibyte20sequence#:
	db "invalid multibyte sequence", 0

string_error20while20opening#:
	db "error while opening", 0

string_error20while20flushing#:
	db "error while flushing", 0

string_error20while20closing#:
	db "error while closing", 0

string_open20mode20invalid#:
	db "open mode invalid", 0

string_error20while20writing#:
	db "error while writing", 0

string_error20while20reading#:
	db "error while reading", 0

string_error20while20seeking#:
	db "error while seeking", 0

string_error20while20telling#:
	db "error while telling", 0

string_error20while20sizing#:
	db "error while sizing", 0

string_error20while20removing20file#:
	db "error while removing file", 0

string_error20while20renaming20file#:
	db "error while renaming file", 0

enMessageList:
	dq string_no20error#
	dq string_function20number20invalid#
	dq string_file20not20found#
	dq string_path20not20found#
	dq string_no20handle20available#
	dq string_access20denied#
	dq string_out20of20domain#
	dq string_out20of20range#
	dq string_invalid20multibyte20sequence#
	dq string_error20while20opening#
	dq string_error20while20flushing#
	dq string_error20while20closing#
	dq string_open20mode20invalid#
	dq string_error20while20writing#
	dq string_error20while20reading#
	dq string_error20while20seeking#
	dq string_error20while20telling#
	dq string_error20while20sizing#
	dq string_error20while20removing20file#
	dq string_error20while20renaming20file#

string_abcdefghijklmnopqrstuvwxyz#:
	db "abcdefghijklmnopqrstuvwxyz", 0

string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#:
	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0

@1516$en_US_utf8:
	dd -5
	dd -4
	dq @1490$enShortDayList
	dq @1491$enLongDayList
	dq @1492$enShortMonthList
	dq @1493$enLongMonthList
	dq string_abcdefghijklmnopqrstuvwxyz#
	dq string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#
	dq enMessageList

string_Son#:
	db "Son", 0

string_Man#:
	db "Man", 0

string_Tis#:
	db "Tis", 0

string_Ons#:
	db "Ons", 0

string_Tor#:
	db "Tor", 0

string_Fre#:
	db "Fre", 0

string_Lor#:
	db "Lor", 0

@1517$swShortDayList:
	dq string_Son#
	dq string_Man#
	dq string_Tis#
	dq string_Ons#
	dq string_Tor#
	dq string_Fre#
	dq string_Lor#

string_Sondag#:
	db "Sondag", 0

string_Mandag#:
	db "Mandag", 0

string_Tisdag#:
	db "Tisdag", 0

string_Onsdag#:
	db "Onsdag", 0

string_Torsdag#:
	db "Torsdag", 0

string_Fredag#:
	db "Fredag", 0

string_Lordag#:
	db "Lordag", 0

@1518$swLongDayList:
	dq string_Sondag#
	dq string_Mandag#
	dq string_Tisdag#
	dq string_Onsdag#
	dq string_Torsdag#
	dq string_Fredag#
	dq string_Lordag#

string_Maj#:
	db "Maj", 0

string_Okt#:
	db "Okt", 0

@1519$swShortMonthList:
	dq string_Jan#
	dq string_Feb#
	dq string_Mar#
	dq string_Apr#
	dq string_Maj#
	dq string_Jun#
	dq string_Jul#
	dq string_Aug#
	dq string_Sep#
	dq string_Okt#
	dq string_Nov#
	dq string_Dec#

string_Januari#:
	db "Januari", 0

string_Februari#:
	db "Februari", 0

string_Mars#:
	db "Mars", 0

string_Juni#:
	db "Juni", 0

string_Juli#:
	db "Juli", 0

string_Augusit#:
	db "Augusit", 0

string_Oktober#:
	db "Oktober", 0

@1520$swLongMonthList:
	dq string_Januari#
	dq string_Februari#
	dq string_Mars#
	dq string_April#
	dq string_Maj#
	dq string_Juni#
	dq string_Juli#
	dq string_Augusit#
	dq string_September#
	dq string_Oktober#
	dq string_November#
	dq string_December#

string_inga20fel#:
	db "inga fel", 0

string_felaktigt20functionsnummer#:
	db "felaktigt functionsnummer", 0

string_hittar20ej20filen#:
	db "hittar ej filen", 0

string_hittar20ej20sokvagen#:
	db "hittar ej sokvagen", 0

string_inget20handtag20tillgangligt#:
	db "inget handtag tillgangligt", 0

string_atkomst20nekad#:
	db "atkomst nekad", 0

string_utanfor20doman#:
	db "utanfor doman", 0

string_utanfor20range#:
	db "utanfor range", 0

string_felaktig20multibyte2Dsekvens#:
	db "felaktig multibyte-sekvens", 0

string_fel20vid20oppning#:
	db "fel vid oppning", 0

string_fel20vid20flushing#:
	db "fel vid flushing", 0

string_fel20vid20stangning#:
	db "fel vid stangning", 0

string_fel20oppningslage#:
	db "fel oppningslage", 0

string_fel20vid20skrivning#:
	db "fel vid skrivning", 0

string_fel20vid20lasning#:
	db "fel vid lasning", 0

string_fel20vid20sokning#:
	db "fel vid sokning", 0

string_fel20vid20telling#:
	db "fel vid telling", 0

string_fel20vid20borttagning20av20fil#:
	db "fel vid borttagning av fil", 0

string_fel20vid20namnbyte20av20fil#:
	db "fel vid namnbyte av fil", 0

@1521$swMessageList:
	dq string_inga20fel#
	dq string_felaktigt20functionsnummer#
	dq string_hittar20ej20filen#
	dq string_hittar20ej20sokvagen#
	dq string_inget20handtag20tillgangligt#
	dq string_atkomst20nekad#
	dq string_utanfor20doman#
	dq string_utanfor20range#
	dq string_felaktig20multibyte2Dsekvens#
	dq string_fel20vid20oppning#
	dq string_fel20vid20flushing#
	dq string_fel20vid20stangning#
	dq string_fel20oppningslage#
	dq string_fel20vid20skrivning#
	dq string_fel20vid20lasning#
	dq string_fel20vid20sokning#
	dq string_fel20vid20telling#
	dq string_fel20vid20borttagning20av20fil#
	dq string_fel20vid20namnbyte20av20fil#

@1522$sw_EN_utf8:
	dd 1
	dd 2
	dq @1517$swShortDayList
	dq @1518$swLongDayList
	dq @1492$enShortMonthList
	dq @1520$swLongMonthList
	dq string_abcdefghijklmnopqrstuvwxyz#
	dq string_ABCDEFGHIJKLMNOPQRSTUVWXYZ#
	dq @1521$swMessageList

string_#:
	db 0

string_C#:
	db "C", 0

string_US#:
	db "US", 0

string_SE#:
	db "SE", 0

@1525$sArray:
	dq string_#
	dq @1522$sw_EN_utf8
	dq string_C#
	dq @1516$en_US_utf8
	dq string_US#
	dq @1516$en_US_utf8
	dq string_SE#
	dq @1522$sw_EN_utf8

@1526$sSize:
	dd 1

@1527$g_currStructPtr:
	dq @1525$sArray

Array_#:
	; initializer Array
	dq 16
