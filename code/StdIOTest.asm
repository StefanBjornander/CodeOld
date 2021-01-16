	global stdio_test

	extern printf
	extern sscanf
	extern $StackTop


section .data

@12191$string_3C25i3E203C25i3E203C25li3E203C25li3E203C25u3E203C25lu3E0A0A#:
	; Initializer String <%i> <%i> <%li> <%li> <%u> <%lu>\n\n
	db "<%i> <%i> <%li> <%li> <%u> <%lu>", 10, 10, 0

section .data

@12198$string_3C256i3E203C256i3E203C256li3E203C256li3E203C256u3E203C256lu3E0A#:
	; Initializer String <%6i> <%6i> <%6li> <%6li> <%6u> <%6lu>\n
	db "<%6i> <%6i> <%6li> <%6li> <%6u> <%6lu>", 10, 0

section .data

@12205$string_3C252B6i3E203C252B6i3E203C252B6li3E203C252B6li3E203C252B6u3E203C252B6lu3E0A#:
	; Initializer String <%+6i> <%+6i> <%+6li> <%+6li> <%+6u> <%+6lu>\n
	db "<%+6i> <%+6i> <%+6li> <%+6li> <%+6u> <%+6lu>", 10, 0

section .data

@12212$string_3C252D6i3E203C252D6i3E203C252D6li3E203C252D6li3E203C252D6u3E203C252D6lu3E0A#:
	; Initializer String <%-6i> <%-6i> <%-6li> <%-6li> <%-6u> <%-6lu>\n
	db "<%-6i> <%-6i> <%-6li> <%-6li> <%-6u> <%-6lu>", 10, 0

section .data

@12219$string_3C252B2D6i3E203C252B2D6i3E203C252B2D6li3E203C252B2D6li3E203C252B2D6u3E203C252B2D6lu3E0A0A#:
	; Initializer String <%+-6i> <%+-6i> <%+-6li> <%+-6li> <%+-6u> <%+-6lu>\n\n
	db "<%+-6i> <%+-6i> <%+-6li> <%+-6li> <%+-6u> <%+-6lu>", 10, 10, 0

section .data

@12230$string_3C2506i3E203C2506i3E203C2506li3E203C2506li3E203C2506u3E203C2506lu3E0A#:
	; Initializer String <%06i> <%06i> <%06li> <%06li> <%06u> <%06lu>\n
	db "<%06i> <%06i> <%06li> <%06li> <%06u> <%06lu>", 10, 0

section .data

@12237$string_3C252B06i3E203C252B06i3E203C252B06li3E203C252B06li3E203C252B06u3E203C252B06lu3E0A#:
	; Initializer String <%+06i> <%+06i> <%+06li> <%+06li> <%+06u> <%+06lu>\n
	db "<%+06i> <%+06i> <%+06li> <%+06li> <%+06u> <%+06lu>", 10, 0

section .data

@12244$string_3C252D06i3E203C252D06i3E203C252D06li3E203C252D06li3E203C252D06u3E203C252D06lu3E0A#:
	; Initializer String <%-06i> <%-06i> <%-06li> <%-06li> <%-06u> <%-06lu>\n
	db "<%-06i> <%-06i> <%-06li> <%-06li> <%-06u> <%-06lu>", 10, 0

section .data

@12251$string_3C252B2D06i3E203C252B2D06i3E203C252B2D06li3E203C252B2D06li3E203C252B2D06u3E203C252B2D06lu3E0A0A#:
	; Initializer String <%+-06i> <%+-06i> <%+-06li> <%+-06li> <%+-06u> <%+-06lu>\n\n
	db "<%+-06i> <%+-06i> <%+-06li> <%+-06li> <%+-06u> <%+-06lu>", 10, 10, 0

section .data

@12258$string_3C25206i3E203C25206i3E203C25206li3E203C25206li3E203C25206u3E203C25206lu3E0A#:
	; Initializer String <% 6i> <% 6i> <% 6li> <% 6li> <% 6u> <% 6lu>\n
	db "<% 6i> <% 6i> <% 6li> <% 6li> <% 6u> <% 6lu>", 10, 0

section .data

@12265$string_3C252B206i3E203C252B206i3E203C252B206li3E203C252B206li3E203C252B206u3E203C252B206lu3E0A#:
	; Initializer String <%+ 6i> <%+ 6i> <%+ 6li> <%+ 6li> <%+ 6u> <%+ 6lu>\n
	db "<%+ 6i> <%+ 6i> <%+ 6li> <%+ 6li> <%+ 6u> <%+ 6lu>", 10, 0

section .data

@12272$string_3C252D206i3E203C252D206i3E203C252D206li3E203C252D206li3E203C252D206u3E203C252D206lu3E0A#:
	; Initializer String <%- 6i> <%- 6i> <%- 6li> <%- 6li> <%- 6u> <%- 6lu>\n
	db "<%- 6i> <%- 6i> <%- 6li> <%- 6li> <%- 6u> <%- 6lu>", 10, 0

section .data

@12279$string_3C252B2D206i3E203C252B2D206i3E203C252B2D206li3E203C252B2D206li3E203C252B2D206u3E203C252B2D206lu3E0A0A#:
	; Initializer String <%+- 6i> <%+- 6i> <%+- 6li> <%+- 6li> <%+- 6u> <%+- 6lu>\n\n
	db "<%+- 6i> <%+- 6i> <%+- 6li> <%+- 6li> <%+- 6u> <%+- 6lu>", 10, 10, 0

section .data

@12286$string_3C25x3E203C25X3E203C25o3E203C25lx3E203C25lX3E203C25lo3E0A#:
	; Initializer String <%x> <%X> <%o> <%lx> <%lX> <%lo>\n
	db "<%x> <%X> <%o> <%lx> <%lX> <%lo>", 10, 0

section .data

@12293$string_3C2523x3E203C2523X3E203C2523o3E203C2523lx3E203C2523lX3E203C2523lo3E0A#:
	; Initializer String <%#x> <%#X> <%#o> <%#lx> <%#lX> <%#lo>\n
	db "<%#x> <%#X> <%#o> <%#lx> <%#lX> <%#lo>", 10, 0

section .data

@12300$string_3C25253E203C25s3E203C25c3E203C25p3E0A0A#:
	; Initializer String <%%> <%s> <%c> <%p>\n\n
	db "<%%> <%s> <%c> <%p>", 10, 10, 0

section .data

@12301$string_Hello2C20World21#:
	; Initializer String Hello, World!
	db "Hello, World!", 0

section .data

@12304$string_3C25f3E203C25e3E203C25E3E203C25g3E203C25G3E0A#:
	; Initializer String <%f> <%e> <%E> <%g> <%G>\n
	db "<%f> <%e> <%E> <%g> <%G>", 10, 0

section .data

@12310$string_3C25lf3E203C25le3E203C25lE3E203C25lg3E203C25lG3E0A#:
	; Initializer String <%lf> <%le> <%lE> <%lg> <%lG>\n
	db "<%lf> <%le> <%lE> <%lg> <%lG>", 10, 0

section .data

@12316$string_3C2523f3E203C2523e3E203C2523E3E203C2523g3E203C2523G3E0A#:
	; Initializer String <%#f> <%#e> <%#E> <%#g> <%#G>\n
	db "<%#f> <%#e> <%#E> <%#g> <%#G>", 10, 0

section .data

@12322$string_3C2523lf3E203C2523le3E203C2523lE3E203C2523lg3E203C2523lG3E0A#:
	; Initializer String <%#lf> <%#le> <%#lE> <%#lg> <%#lG>\n
	db "<%#lf> <%#le> <%#lE> <%#lg> <%#lG>", 10, 0

section .data

@12328$string_3C2562E3f3E203C2562E3e3E203C2562E3E3E203C2562E3g3E203C2562E3G3E0A#:
	; Initializer String <%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>\n
	db "<%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>", 10, 0

section .data

@12334$string_3C2562E3lf3E203C2562E3le3E203C2562E3lE3E203C2562E3lg3E203C2562E3lG3E0A0A#:
	; Initializer String <%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>\n\n
	db "<%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>", 10, 10, 0

section .data

@12340$string_3C25f3E203C25e3E203C25E3E203C25g3E203C25G3E0A#:
	; Initializer String <%f> <%e> <%E> <%g> <%G>\n
	db "<%f> <%e> <%E> <%g> <%G>", 10, 0

section .data

@12346$string_3C25lf3E203C25le3E203C25lE3E203C25lg3E203C25lG3E0A#:
	; Initializer String <%lf> <%le> <%lE> <%lg> <%lG>\n
	db "<%lf> <%le> <%lE> <%lg> <%lG>", 10, 0

section .data

@12352$string_3C2523f3E203C2523e3E203C2523E3E203C2523g3E203C2523G3E0A#:
	; Initializer String <%#f> <%#e> <%#E> <%#g> <%#G>\n
	db "<%#f> <%#e> <%#E> <%#g> <%#G>", 10, 0

section .data

@12358$string_3C2523lf3E203C2523le3E203C2523lE3E203C2523lg3E203C2523lG3E0A#:
	; Initializer String <%#lf> <%#le> <%#lE> <%#lg> <%#lG>\n
	db "<%#lf> <%#le> <%#lE> <%#lg> <%#lG>", 10, 0

section .data

@12364$string_3C2562E3f3E203C2562E3e3E203C2562E3E3E203C2562E3g3E203C2562E3G3E0A#:
	; Initializer String <%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>\n
	db "<%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>", 10, 0

section .data

@12370$string_3C2562E3lf3E203C2562E3le3E203C2562E3lE3E203C2562E3lg3E203C2562E3lG3E0A0A#:
	; Initializer String <%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>\n\n
	db "<%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>", 10, 10, 0

section .data

@12385$string_Please20write20three20integers3A20#:
	; Initializer String Please write three integers: 
	db "Please write three integers: ", 0

section .data

@12386$string_1232045620789#:
	; Initializer String 123 456 789
	db "123 456 789", 0

section .data

@12387$string_25i20252Ai2025i2025n#:
	; Initializer String %i %*i %i %n
	db "%i %*i %i %n", 0

section .data

@12388$string_3C25i3E203C25i3E203C25i3E0A#:
	; Initializer String <%i> <%i> <%i>\n
	db "<%i> <%i> <%i>", 10, 0

section .data

@12392$string_Please20write20the20patterns205Babc5D3A20#:
	; Initializer String Please write the patterns [abc]: 
	db "Please write the patterns [abc]: ", 0

section .data

@12393$string_abcdef#:
	; Initializer String abcdef
	db "abcdef", 0

section .data

@12394$string_255Babc5D#:
	; Initializer String %[abc]
	db "%[abc]", 0

section .data

@12395$string_3C25s3E0A#:
	; Initializer String <%s>\n
	db "<%s>", 10, 0

section .data

@12396$string_Please20write20the20patterns205B5Eabc5D3A20#:
	; Initializer String Please write the patterns [^abc]: 
	db "Please write the patterns [^abc]: ", 0

section .data

@12397$string_defabc#:
	; Initializer String defabc
	db "defabc", 0

section .data

@12398$string_255B5Eabc5D#:
	; Initializer String %[^abc]
	db "%[^abc]", 0

section .data

@12399$string_3C25s3E0A0A#:
	; Initializer String <%s>\n\n
	db "<%s>", 10, 10, 0

section .data

@12305$float8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@12306$float8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@12307$float8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@12308$float8$123456.1#:
	; Initializer Double 123456.1
	dq 123456.1

section .data

@12309$float8$123456.1#:
	; Initializer Double 123456.1
	dq 123456.1

section .data

@12311$float8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@12312$float8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@12313$float8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@12314$float8$123456.1#:
	; Initializer LongDouble 123456.1
	dq 123456.1

section .data

@12315$float8$123456.1#:
	; Initializer LongDouble 123456.1
	dq 123456.1

section .data

@12317$float8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@12318$float8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@12319$float8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@12320$float8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@12321$float8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@12323$float8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@12324$float8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@12325$float8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@12326$float8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@12327$float8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@12329$float8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@12330$float8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@12331$float8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@12332$float8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@12333$float8$123.456#:
	; Initializer Double 123.456
	dq 123.456

section .data

@12335$float8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@12336$float8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@12337$float8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@12338$float8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@12339$float8$123.456#:
	; Initializer LongDouble 123.456
	dq 123.456

section .data

@12341$float8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@12342$float8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@12343$float8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@12344$float8$minus0.000000123456#:
	; Initializer Double -0.000000123456
	dq -0.000000123456

section .data

@12345$float8$minus0.000000123456#:
	; Initializer Double -0.000000123456
	dq -0.000000123456

section .data

@12347$float8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@12348$float8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@12349$float8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@12350$float8$minus0.000000123456#:
	; Initializer LongDouble -0.000000123456
	dq -0.000000123456

section .data

@12351$float8$minus0.000000123456#:
	; Initializer LongDouble -0.000000123456
	dq -0.000000123456

section .data

@12353$float8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@12354$float8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@12355$float8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@12356$float8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@12357$float8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@12359$float8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@12360$float8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@12361$float8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@12362$float8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@12363$float8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@12365$float8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@12366$float8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@12367$float8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@12368$float8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@12369$float8$minus123.456#:
	; Initializer Double -123.456
	dq -123.456

section .data

@12371$float8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@12372$float8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@12373$float8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@12374$float8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .data

@12375$float8$minus123.456#:
	; Initializer LongDouble -123.456
	dq -123.456

section .text

 stdio_test:
	; Assign n 0
	mov dword [rbp + 24], 0

 stdio_test$1:
	; Address £temporary3967 n
	mov rsi, rbp
	add rsi, 24

 stdio_test$2:
	; Assign p £temporary3967
	mov [rbp + 28], rsi

 stdio_test$3:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$4:
	; Parameter 60 pointer "<%i> <%i> <%li> <%li> <%u> <%lu>\n\n"
	mov qword [rbp + 60], @12191$string_3C25i3E203C25i3E203C25li3E203C25li3E203C25u3E203C25lu3E0A0A#

 stdio_test$5:
	; Parameter 68 signedint 123
	mov dword [rbp + 68], 123

 stdio_test$6:
	; Parameter 72 signedint -123
	mov dword [rbp + 72], -123

 stdio_test$7:
	; Parameter 76 signed long int 123
	mov qword [rbp + 76], 123

 stdio_test$8:
	; Parameter 84 signed long int -123
	mov qword [rbp + 84], -123

 stdio_test$9:
	; Parameter 92 signedint 123
	mov dword [rbp + 92], 123

 stdio_test$10:
	; Parameter 96 signed long int 123
	mov qword [rbp + 96], 123

 stdio_test$11:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$12
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$12:
	; PostCall 36

 stdio_test$13:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$14:
	; Parameter 60 pointer "<%6i> <%6i> <%6li> <%6li> <%6u> <%6lu>\n"
	mov qword [rbp + 60], @12198$string_3C256i3E203C256i3E203C256li3E203C256li3E203C256u3E203C256lu3E0A#

 stdio_test$15:
	; Parameter 68 signedint 123
	mov dword [rbp + 68], 123

 stdio_test$16:
	; Parameter 72 signedint -123
	mov dword [rbp + 72], -123

 stdio_test$17:
	; Parameter 76 signed long int 123
	mov qword [rbp + 76], 123

 stdio_test$18:
	; Parameter 84 signed long int -123
	mov qword [rbp + 84], -123

 stdio_test$19:
	; Parameter 92 signedint 123
	mov dword [rbp + 92], 123

 stdio_test$20:
	; Parameter 96 signed long int 123
	mov qword [rbp + 96], 123

 stdio_test$21:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$22
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$22:
	; PostCall 36

 stdio_test$23:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$24:
	; Parameter 60 pointer "<%+6i> <%+6i> <%+6li> <%+6li> <%+6u> <%+6lu>\n"
	mov qword [rbp + 60], @12205$string_3C252B6i3E203C252B6i3E203C252B6li3E203C252B6li3E203C252B6u3E203C252B6lu3E0A#

 stdio_test$25:
	; Parameter 68 signedint 123
	mov dword [rbp + 68], 123

 stdio_test$26:
	; Parameter 72 signedint -123
	mov dword [rbp + 72], -123

 stdio_test$27:
	; Parameter 76 signed long int 123
	mov qword [rbp + 76], 123

 stdio_test$28:
	; Parameter 84 signed long int -123
	mov qword [rbp + 84], -123

 stdio_test$29:
	; Parameter 92 signedint 123
	mov dword [rbp + 92], 123

 stdio_test$30:
	; Parameter 96 signed long int 123
	mov qword [rbp + 96], 123

 stdio_test$31:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$32
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$32:
	; PostCall 36

 stdio_test$33:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$34:
	; Parameter 60 pointer "<%-6i> <%-6i> <%-6li> <%-6li> <%-6u> <%-6lu>\n"
	mov qword [rbp + 60], @12212$string_3C252D6i3E203C252D6i3E203C252D6li3E203C252D6li3E203C252D6u3E203C252D6lu3E0A#

 stdio_test$35:
	; Parameter 68 signedint 123
	mov dword [rbp + 68], 123

 stdio_test$36:
	; Parameter 72 signedint -123
	mov dword [rbp + 72], -123

 stdio_test$37:
	; Parameter 76 signed long int 123
	mov qword [rbp + 76], 123

 stdio_test$38:
	; Parameter 84 signed long int -123
	mov qword [rbp + 84], -123

 stdio_test$39:
	; Parameter 92 signedint 123
	mov dword [rbp + 92], 123

 stdio_test$40:
	; Parameter 96 signed long int 123
	mov qword [rbp + 96], 123

 stdio_test$41:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$42
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$42:
	; PostCall 36

 stdio_test$43:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$44:
	; Parameter 60 pointer "<%+-6i> <%+-6i> <%+-6li> <%+-6li> <%+-6u> <%+-6lu>\n\n"
	mov qword [rbp + 60], @12219$string_3C252B2D6i3E203C252B2D6i3E203C252B2D6li3E203C252B2D6li3E203C252B2D6u3E203C252B2D6lu3E0A0A#

 stdio_test$45:
	; Parameter 68 signedint 123
	mov dword [rbp + 68], 123

 stdio_test$46:
	; Parameter 72 signedint -123
	mov dword [rbp + 72], -123

 stdio_test$47:
	; Parameter 76 signed long int 123
	mov qword [rbp + 76], 123

 stdio_test$48:
	; Parameter 84 signed long int -123
	mov qword [rbp + 84], -123

 stdio_test$49:
	; Parameter 92 signedint 123
	mov dword [rbp + 92], 123

 stdio_test$50:
	; Parameter 96 signed long int 123
	mov qword [rbp + 96], 123

 stdio_test$51:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$52
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$52:
	; PostCall 36

 stdio_test$53:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$54:
	; Parameter 60 pointer "<%06i> <%06i> <%06li> <%06li> <%06u> <%06lu>\n"
	mov qword [rbp + 60], @12230$string_3C2506i3E203C2506i3E203C2506li3E203C2506li3E203C2506u3E203C2506lu3E0A#

 stdio_test$55:
	; Parameter 68 signedint 123
	mov dword [rbp + 68], 123

 stdio_test$56:
	; Parameter 72 signedint -123
	mov dword [rbp + 72], -123

 stdio_test$57:
	; Parameter 76 signed long int 123
	mov qword [rbp + 76], 123

 stdio_test$58:
	; Parameter 84 signed long int -123
	mov qword [rbp + 84], -123

 stdio_test$59:
	; Parameter 92 signedint 123
	mov dword [rbp + 92], 123

 stdio_test$60:
	; Parameter 96 signed long int 123
	mov qword [rbp + 96], 123

 stdio_test$61:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$62
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$62:
	; PostCall 36

 stdio_test$63:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$64:
	; Parameter 60 pointer "<%+06i> <%+06i> <%+06li> <%+06li> <%+06u> <%+06lu>\n"
	mov qword [rbp + 60], @12237$string_3C252B06i3E203C252B06i3E203C252B06li3E203C252B06li3E203C252B06u3E203C252B06lu3E0A#

 stdio_test$65:
	; Parameter 68 signedint 123
	mov dword [rbp + 68], 123

 stdio_test$66:
	; Parameter 72 signedint -123
	mov dword [rbp + 72], -123

 stdio_test$67:
	; Parameter 76 signed long int 123
	mov qword [rbp + 76], 123

 stdio_test$68:
	; Parameter 84 signed long int -123
	mov qword [rbp + 84], -123

 stdio_test$69:
	; Parameter 92 signedint 123
	mov dword [rbp + 92], 123

 stdio_test$70:
	; Parameter 96 signed long int 123
	mov qword [rbp + 96], 123

 stdio_test$71:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$72
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$72:
	; PostCall 36

 stdio_test$73:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$74:
	; Parameter 60 pointer "<%-06i> <%-06i> <%-06li> <%-06li> <%-06u> <%-06lu>\n"
	mov qword [rbp + 60], @12244$string_3C252D06i3E203C252D06i3E203C252D06li3E203C252D06li3E203C252D06u3E203C252D06lu3E0A#

 stdio_test$75:
	; Parameter 68 signedint 123
	mov dword [rbp + 68], 123

 stdio_test$76:
	; Parameter 72 signedint -123
	mov dword [rbp + 72], -123

 stdio_test$77:
	; Parameter 76 signed long int 123
	mov qword [rbp + 76], 123

 stdio_test$78:
	; Parameter 84 signed long int -123
	mov qword [rbp + 84], -123

 stdio_test$79:
	; Parameter 92 signedint 123
	mov dword [rbp + 92], 123

 stdio_test$80:
	; Parameter 96 signed long int 123
	mov qword [rbp + 96], 123

 stdio_test$81:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$82
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$82:
	; PostCall 36

 stdio_test$83:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$84:
	; Parameter 60 pointer "<%+-06i> <%+-06i> <%+-06li> <%+-06li> <%+-06u> <%+-06lu>\n\n"
	mov qword [rbp + 60], @12251$string_3C252B2D06i3E203C252B2D06i3E203C252B2D06li3E203C252B2D06li3E203C252B2D06u3E203C252B2D06lu3E0A0A#

 stdio_test$85:
	; Parameter 68 signedint 123
	mov dword [rbp + 68], 123

 stdio_test$86:
	; Parameter 72 signedint -123
	mov dword [rbp + 72], -123

 stdio_test$87:
	; Parameter 76 signed long int 123
	mov qword [rbp + 76], 123

 stdio_test$88:
	; Parameter 84 signed long int -123
	mov qword [rbp + 84], -123

 stdio_test$89:
	; Parameter 92 signedint 123
	mov dword [rbp + 92], 123

 stdio_test$90:
	; Parameter 96 signed long int 123
	mov qword [rbp + 96], 123

 stdio_test$91:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$92
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$92:
	; PostCall 36

 stdio_test$93:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$94:
	; Parameter 60 pointer "<% 6i> <% 6i> <% 6li> <% 6li> <% 6u> <% 6lu>\n"
	mov qword [rbp + 60], @12258$string_3C25206i3E203C25206i3E203C25206li3E203C25206li3E203C25206u3E203C25206lu3E0A#

 stdio_test$95:
	; Parameter 68 signedint 123
	mov dword [rbp + 68], 123

 stdio_test$96:
	; Parameter 72 signedint -123
	mov dword [rbp + 72], -123

 stdio_test$97:
	; Parameter 76 signed long int 123
	mov qword [rbp + 76], 123

 stdio_test$98:
	; Parameter 84 signed long int -123
	mov qword [rbp + 84], -123

 stdio_test$99:
	; Parameter 92 signedint 123
	mov dword [rbp + 92], 123

 stdio_test$100:
	; Parameter 96 signed long int 123
	mov qword [rbp + 96], 123

 stdio_test$101:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$102
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$102:
	; PostCall 36

 stdio_test$103:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$104:
	; Parameter 60 pointer "<%+ 6i> <%+ 6i> <%+ 6li> <%+ 6li> <%+ 6u> <%+ 6lu>\n"
	mov qword [rbp + 60], @12265$string_3C252B206i3E203C252B206i3E203C252B206li3E203C252B206li3E203C252B206u3E203C252B206lu3E0A#

 stdio_test$105:
	; Parameter 68 signedint 123
	mov dword [rbp + 68], 123

 stdio_test$106:
	; Parameter 72 signedint -123
	mov dword [rbp + 72], -123

 stdio_test$107:
	; Parameter 76 signed long int 123
	mov qword [rbp + 76], 123

 stdio_test$108:
	; Parameter 84 signed long int -123
	mov qword [rbp + 84], -123

 stdio_test$109:
	; Parameter 92 signedint 123
	mov dword [rbp + 92], 123

 stdio_test$110:
	; Parameter 96 signed long int 123
	mov qword [rbp + 96], 123

 stdio_test$111:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$112
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$112:
	; PostCall 36

 stdio_test$113:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$114:
	; Parameter 60 pointer "<%- 6i> <%- 6i> <%- 6li> <%- 6li> <%- 6u> <%- 6lu>\n"
	mov qword [rbp + 60], @12272$string_3C252D206i3E203C252D206i3E203C252D206li3E203C252D206li3E203C252D206u3E203C252D206lu3E0A#

 stdio_test$115:
	; Parameter 68 signedint 123
	mov dword [rbp + 68], 123

 stdio_test$116:
	; Parameter 72 signedint -123
	mov dword [rbp + 72], -123

 stdio_test$117:
	; Parameter 76 signed long int 123
	mov qword [rbp + 76], 123

 stdio_test$118:
	; Parameter 84 signed long int -123
	mov qword [rbp + 84], -123

 stdio_test$119:
	; Parameter 92 signedint 123
	mov dword [rbp + 92], 123

 stdio_test$120:
	; Parameter 96 signed long int 123
	mov qword [rbp + 96], 123

 stdio_test$121:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$122
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$122:
	; PostCall 36

 stdio_test$123:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$124:
	; Parameter 60 pointer "<%+- 6i> <%+- 6i> <%+- 6li> <%+- 6li> <%+- 6u> <%+- 6lu>\n\n"
	mov qword [rbp + 60], @12279$string_3C252B2D206i3E203C252B2D206i3E203C252B2D206li3E203C252B2D206li3E203C252B2D206u3E203C252B2D206lu3E0A0A#

 stdio_test$125:
	; Parameter 68 signedint 123
	mov dword [rbp + 68], 123

 stdio_test$126:
	; Parameter 72 signedint -123
	mov dword [rbp + 72], -123

 stdio_test$127:
	; Parameter 76 signed long int 123
	mov qword [rbp + 76], 123

 stdio_test$128:
	; Parameter 84 signed long int -123
	mov qword [rbp + 84], -123

 stdio_test$129:
	; Parameter 92 signedint 123
	mov dword [rbp + 92], 123

 stdio_test$130:
	; Parameter 96 signed long int 123
	mov qword [rbp + 96], 123

 stdio_test$131:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$132
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$132:
	; PostCall 36

 stdio_test$133:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$134:
	; Parameter 60 pointer "<%x> <%X> <%o> <%lx> <%lX> <%lo>\n"
	mov qword [rbp + 60], @12286$string_3C25x3E203C25X3E203C25o3E203C25lx3E203C25lX3E203C25lo3E0A#

 stdio_test$135:
	; Parameter 68 signedint 123
	mov dword [rbp + 68], 123

 stdio_test$136:
	; Parameter 72 signedint 123
	mov dword [rbp + 72], 123

 stdio_test$137:
	; Parameter 76 signedint 123
	mov dword [rbp + 76], 123

 stdio_test$138:
	; Parameter 80 signed long int 123
	mov qword [rbp + 80], 123

 stdio_test$139:
	; Parameter 88 signed long int 123
	mov qword [rbp + 88], 123

 stdio_test$140:
	; Parameter 96 signed long int 123
	mov qword [rbp + 96], 123

 stdio_test$141:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$142
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$142:
	; PostCall 36

 stdio_test$143:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$144:
	; Parameter 60 pointer "<%#x> <%#X> <%#o> <%#lx> <%#lX> <%#lo>\n"
	mov qword [rbp + 60], @12293$string_3C2523x3E203C2523X3E203C2523o3E203C2523lx3E203C2523lX3E203C2523lo3E0A#

 stdio_test$145:
	; Parameter 68 signedint 123
	mov dword [rbp + 68], 123

 stdio_test$146:
	; Parameter 72 signedint 123
	mov dword [rbp + 72], 123

 stdio_test$147:
	; Parameter 76 signedint 123
	mov dword [rbp + 76], 123

 stdio_test$148:
	; Parameter 80 signed long int 123
	mov qword [rbp + 80], 123

 stdio_test$149:
	; Parameter 88 signed long int 123
	mov qword [rbp + 88], 123

 stdio_test$150:
	; Parameter 96 signed long int 123
	mov qword [rbp + 96], 123

 stdio_test$151:
	; Call 36 printf 36
	mov qword [rbp + 36], stdio_test$152
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 36
	jmp printf

 stdio_test$152:
	; PostCall 36

 stdio_test$153:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$154:
	; Parameter 60 pointer "<%%> <%s> <%c> <%p>\n\n"
	mov qword [rbp + 60], @12300$string_3C25253E203C25s3E203C25c3E203C25p3E0A0A#

 stdio_test$155:
	; Parameter 68 pointer "Hello, World!"
	mov qword [rbp + 68], @12301$string_Hello2C20World21#

 stdio_test$156:
	; Parameter 76 signedint 88
	mov dword [rbp + 76], 88

 stdio_test$157:
	; Parameter 80 pointer p
	mov rax, [rbp + 28]
	mov [rbp + 80], rax

 stdio_test$158:
	; Call 36 printf 20
	mov qword [rbp + 36], stdio_test$159
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp printf

 stdio_test$159:
	; PostCall 36

 stdio_test$160:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$161:
	; Parameter 60 pointer "<%f> <%e> <%E> <%g> <%G>\n"
	mov qword [rbp + 60], @12304$string_3C25f3E203C25e3E203C25E3E203C25g3E203C25G3E0A#

 stdio_test$162:
	; PushFloat 123.456
	fld qword [@12305$float8$123.456#]

 stdio_test$163:
	; Parameter 68 double 123.456
	fstp qword [rbp + 68]

 stdio_test$164:
	; PushFloat 123.456
	fld qword [@12306$float8$123.456#]

 stdio_test$165:
	; Parameter 76 double 123.456
	fstp qword [rbp + 76]

 stdio_test$166:
	; PushFloat 123.456
	fld qword [@12307$float8$123.456#]

 stdio_test$167:
	; Parameter 84 double 123.456
	fstp qword [rbp + 84]

 stdio_test$168:
	; PushFloat 123456.1
	fld qword [@12308$float8$123456.1#]

 stdio_test$169:
	; Parameter 92 double 123456.1
	fstp qword [rbp + 92]

 stdio_test$170:
	; PushFloat 123456.1
	fld qword [@12309$float8$123456.1#]

 stdio_test$171:
	; Parameter 100 double 123456.1
	fstp qword [rbp + 100]

 stdio_test$172:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$173
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$173:
	; PostCall 36

 stdio_test$174:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$175:
	; Parameter 60 pointer "<%lf> <%le> <%lE> <%lg> <%lG>\n"
	mov qword [rbp + 60], @12310$string_3C25lf3E203C25le3E203C25lE3E203C25lg3E203C25lG3E0A#

 stdio_test$176:
	; PushFloat 123.456
	fld qword [@12311$float8$123.456#]

 stdio_test$177:
	; Parameter 68 longdouble 123.456
	fstp qword [rbp + 68]

 stdio_test$178:
	; PushFloat 123.456
	fld qword [@12312$float8$123.456#]

 stdio_test$179:
	; Parameter 76 longdouble 123.456
	fstp qword [rbp + 76]

 stdio_test$180:
	; PushFloat 123.456
	fld qword [@12313$float8$123.456#]

 stdio_test$181:
	; Parameter 84 longdouble 123.456
	fstp qword [rbp + 84]

 stdio_test$182:
	; PushFloat 123456.1
	fld qword [@12314$float8$123456.1#]

 stdio_test$183:
	; Parameter 92 longdouble 123456.1
	fstp qword [rbp + 92]

 stdio_test$184:
	; PushFloat 123456.1
	fld qword [@12315$float8$123456.1#]

 stdio_test$185:
	; Parameter 100 longdouble 123456.1
	fstp qword [rbp + 100]

 stdio_test$186:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$187
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$187:
	; PostCall 36

 stdio_test$188:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$189:
	; Parameter 60 pointer "<%#f> <%#e> <%#E> <%#g> <%#G>\n"
	mov qword [rbp + 60], @12316$string_3C2523f3E203C2523e3E203C2523E3E203C2523g3E203C2523G3E0A#

 stdio_test$190:
	; PushFloat 123.456
	fld qword [@12317$float8$123.456#]

 stdio_test$191:
	; Parameter 68 double 123.456
	fstp qword [rbp + 68]

 stdio_test$192:
	; PushFloat 123.456
	fld qword [@12318$float8$123.456#]

 stdio_test$193:
	; Parameter 76 double 123.456
	fstp qword [rbp + 76]

 stdio_test$194:
	; PushFloat 123.456
	fld qword [@12319$float8$123.456#]

 stdio_test$195:
	; Parameter 84 double 123.456
	fstp qword [rbp + 84]

 stdio_test$196:
	; PushFloat 123.456
	fld qword [@12320$float8$123.456#]

 stdio_test$197:
	; Parameter 92 double 123.456
	fstp qword [rbp + 92]

 stdio_test$198:
	; PushFloat 123.456
	fld qword [@12321$float8$123.456#]

 stdio_test$199:
	; Parameter 100 double 123.456
	fstp qword [rbp + 100]

 stdio_test$200:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$201
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$201:
	; PostCall 36

 stdio_test$202:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$203:
	; Parameter 60 pointer "<%#lf> <%#le> <%#lE> <%#lg> <%#lG>\n"
	mov qword [rbp + 60], @12322$string_3C2523lf3E203C2523le3E203C2523lE3E203C2523lg3E203C2523lG3E0A#

 stdio_test$204:
	; PushFloat 123.456
	fld qword [@12323$float8$123.456#]

 stdio_test$205:
	; Parameter 68 longdouble 123.456
	fstp qword [rbp + 68]

 stdio_test$206:
	; PushFloat 123.456
	fld qword [@12324$float8$123.456#]

 stdio_test$207:
	; Parameter 76 longdouble 123.456
	fstp qword [rbp + 76]

 stdio_test$208:
	; PushFloat 123.456
	fld qword [@12325$float8$123.456#]

 stdio_test$209:
	; Parameter 84 longdouble 123.456
	fstp qword [rbp + 84]

 stdio_test$210:
	; PushFloat 123.456
	fld qword [@12326$float8$123.456#]

 stdio_test$211:
	; Parameter 92 longdouble 123.456
	fstp qword [rbp + 92]

 stdio_test$212:
	; PushFloat 123.456
	fld qword [@12327$float8$123.456#]

 stdio_test$213:
	; Parameter 100 longdouble 123.456
	fstp qword [rbp + 100]

 stdio_test$214:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$215
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$215:
	; PostCall 36

 stdio_test$216:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$217:
	; Parameter 60 pointer "<%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>\n"
	mov qword [rbp + 60], @12328$string_3C2562E3f3E203C2562E3e3E203C2562E3E3E203C2562E3g3E203C2562E3G3E0A#

 stdio_test$218:
	; PushFloat 123.456
	fld qword [@12329$float8$123.456#]

 stdio_test$219:
	; Parameter 68 double 123.456
	fstp qword [rbp + 68]

 stdio_test$220:
	; PushFloat 123.456
	fld qword [@12330$float8$123.456#]

 stdio_test$221:
	; Parameter 76 double 123.456
	fstp qword [rbp + 76]

 stdio_test$222:
	; PushFloat 123.456
	fld qword [@12331$float8$123.456#]

 stdio_test$223:
	; Parameter 84 double 123.456
	fstp qword [rbp + 84]

 stdio_test$224:
	; PushFloat 123.456
	fld qword [@12332$float8$123.456#]

 stdio_test$225:
	; Parameter 92 double 123.456
	fstp qword [rbp + 92]

 stdio_test$226:
	; PushFloat 123.456
	fld qword [@12333$float8$123.456#]

 stdio_test$227:
	; Parameter 100 double 123.456
	fstp qword [rbp + 100]

 stdio_test$228:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$229
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$229:
	; PostCall 36

 stdio_test$230:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$231:
	; Parameter 60 pointer "<%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>\n\n"
	mov qword [rbp + 60], @12334$string_3C2562E3lf3E203C2562E3le3E203C2562E3lE3E203C2562E3lg3E203C2562E3lG3E0A0A#

 stdio_test$232:
	; PushFloat 123.456
	fld qword [@12335$float8$123.456#]

 stdio_test$233:
	; Parameter 68 longdouble 123.456
	fstp qword [rbp + 68]

 stdio_test$234:
	; PushFloat 123.456
	fld qword [@12336$float8$123.456#]

 stdio_test$235:
	; Parameter 76 longdouble 123.456
	fstp qword [rbp + 76]

 stdio_test$236:
	; PushFloat 123.456
	fld qword [@12337$float8$123.456#]

 stdio_test$237:
	; Parameter 84 longdouble 123.456
	fstp qword [rbp + 84]

 stdio_test$238:
	; PushFloat 123.456
	fld qword [@12338$float8$123.456#]

 stdio_test$239:
	; Parameter 92 longdouble 123.456
	fstp qword [rbp + 92]

 stdio_test$240:
	; PushFloat 123.456
	fld qword [@12339$float8$123.456#]

 stdio_test$241:
	; Parameter 100 longdouble 123.456
	fstp qword [rbp + 100]

 stdio_test$242:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$243
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$243:
	; PostCall 36

 stdio_test$244:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$245:
	; Parameter 60 pointer "<%f> <%e> <%E> <%g> <%G>\n"
	mov qword [rbp + 60], @12340$string_3C25f3E203C25e3E203C25E3E203C25g3E203C25G3E0A#

 stdio_test$246:
	; PushFloat -123.456
	fld qword [@12341$float8$minus123.456#]

 stdio_test$247:
	; Parameter 68 double -123.456
	fstp qword [rbp + 68]

 stdio_test$248:
	; PushFloat -123.456
	fld qword [@12342$float8$minus123.456#]

 stdio_test$249:
	; Parameter 76 double -123.456
	fstp qword [rbp + 76]

 stdio_test$250:
	; PushFloat -123.456
	fld qword [@12343$float8$minus123.456#]

 stdio_test$251:
	; Parameter 84 double -123.456
	fstp qword [rbp + 84]

 stdio_test$252:
	; PushFloat -0.000000123456
	fld qword [@12344$float8$minus0.000000123456#]

 stdio_test$253:
	; Parameter 92 double -0.000000123456
	fstp qword [rbp + 92]

 stdio_test$254:
	; PushFloat -0.000000123456
	fld qword [@12345$float8$minus0.000000123456#]

 stdio_test$255:
	; Parameter 100 double -0.000000123456
	fstp qword [rbp + 100]

 stdio_test$256:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$257
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$257:
	; PostCall 36

 stdio_test$258:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$259:
	; Parameter 60 pointer "<%lf> <%le> <%lE> <%lg> <%lG>\n"
	mov qword [rbp + 60], @12346$string_3C25lf3E203C25le3E203C25lE3E203C25lg3E203C25lG3E0A#

 stdio_test$260:
	; PushFloat -123.456
	fld qword [@12347$float8$minus123.456#]

 stdio_test$261:
	; Parameter 68 longdouble -123.456
	fstp qword [rbp + 68]

 stdio_test$262:
	; PushFloat -123.456
	fld qword [@12348$float8$minus123.456#]

 stdio_test$263:
	; Parameter 76 longdouble -123.456
	fstp qword [rbp + 76]

 stdio_test$264:
	; PushFloat -123.456
	fld qword [@12349$float8$minus123.456#]

 stdio_test$265:
	; Parameter 84 longdouble -123.456
	fstp qword [rbp + 84]

 stdio_test$266:
	; PushFloat -0.000000123456
	fld qword [@12350$float8$minus0.000000123456#]

 stdio_test$267:
	; Parameter 92 longdouble -0.000000123456
	fstp qword [rbp + 92]

 stdio_test$268:
	; PushFloat -0.000000123456
	fld qword [@12351$float8$minus0.000000123456#]

 stdio_test$269:
	; Parameter 100 longdouble -0.000000123456
	fstp qword [rbp + 100]

 stdio_test$270:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$271
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$271:
	; PostCall 36

 stdio_test$272:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$273:
	; Parameter 60 pointer "<%#f> <%#e> <%#E> <%#g> <%#G>\n"
	mov qword [rbp + 60], @12352$string_3C2523f3E203C2523e3E203C2523E3E203C2523g3E203C2523G3E0A#

 stdio_test$274:
	; PushFloat -123.456
	fld qword [@12353$float8$minus123.456#]

 stdio_test$275:
	; Parameter 68 double -123.456
	fstp qword [rbp + 68]

 stdio_test$276:
	; PushFloat -123.456
	fld qword [@12354$float8$minus123.456#]

 stdio_test$277:
	; Parameter 76 double -123.456
	fstp qword [rbp + 76]

 stdio_test$278:
	; PushFloat -123.456
	fld qword [@12355$float8$minus123.456#]

 stdio_test$279:
	; Parameter 84 double -123.456
	fstp qword [rbp + 84]

 stdio_test$280:
	; PushFloat -123.456
	fld qword [@12356$float8$minus123.456#]

 stdio_test$281:
	; Parameter 92 double -123.456
	fstp qword [rbp + 92]

 stdio_test$282:
	; PushFloat -123.456
	fld qword [@12357$float8$minus123.456#]

 stdio_test$283:
	; Parameter 100 double -123.456
	fstp qword [rbp + 100]

 stdio_test$284:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$285
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$285:
	; PostCall 36

 stdio_test$286:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$287:
	; Parameter 60 pointer "<%#lf> <%#le> <%#lE> <%#lg> <%#lG>\n"
	mov qword [rbp + 60], @12358$string_3C2523lf3E203C2523le3E203C2523lE3E203C2523lg3E203C2523lG3E0A#

 stdio_test$288:
	; PushFloat -123.456
	fld qword [@12359$float8$minus123.456#]

 stdio_test$289:
	; Parameter 68 longdouble -123.456
	fstp qword [rbp + 68]

 stdio_test$290:
	; PushFloat -123.456
	fld qword [@12360$float8$minus123.456#]

 stdio_test$291:
	; Parameter 76 longdouble -123.456
	fstp qword [rbp + 76]

 stdio_test$292:
	; PushFloat -123.456
	fld qword [@12361$float8$minus123.456#]

 stdio_test$293:
	; Parameter 84 longdouble -123.456
	fstp qword [rbp + 84]

 stdio_test$294:
	; PushFloat -123.456
	fld qword [@12362$float8$minus123.456#]

 stdio_test$295:
	; Parameter 92 longdouble -123.456
	fstp qword [rbp + 92]

 stdio_test$296:
	; PushFloat -123.456
	fld qword [@12363$float8$minus123.456#]

 stdio_test$297:
	; Parameter 100 longdouble -123.456
	fstp qword [rbp + 100]

 stdio_test$298:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$299
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$299:
	; PostCall 36

 stdio_test$300:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$301:
	; Parameter 60 pointer "<%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>\n"
	mov qword [rbp + 60], @12364$string_3C2562E3f3E203C2562E3e3E203C2562E3E3E203C2562E3g3E203C2562E3G3E0A#

 stdio_test$302:
	; PushFloat -123.456
	fld qword [@12365$float8$minus123.456#]

 stdio_test$303:
	; Parameter 68 double -123.456
	fstp qword [rbp + 68]

 stdio_test$304:
	; PushFloat -123.456
	fld qword [@12366$float8$minus123.456#]

 stdio_test$305:
	; Parameter 76 double -123.456
	fstp qword [rbp + 76]

 stdio_test$306:
	; PushFloat -123.456
	fld qword [@12367$float8$minus123.456#]

 stdio_test$307:
	; Parameter 84 double -123.456
	fstp qword [rbp + 84]

 stdio_test$308:
	; PushFloat -123.456
	fld qword [@12368$float8$minus123.456#]

 stdio_test$309:
	; Parameter 92 double -123.456
	fstp qword [rbp + 92]

 stdio_test$310:
	; PushFloat -123.456
	fld qword [@12369$float8$minus123.456#]

 stdio_test$311:
	; Parameter 100 double -123.456
	fstp qword [rbp + 100]

 stdio_test$312:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$313
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$313:
	; PostCall 36

 stdio_test$314:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$315:
	; Parameter 60 pointer "<%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>\n\n"
	mov qword [rbp + 60], @12370$string_3C2562E3lf3E203C2562E3le3E203C2562E3lE3E203C2562E3lg3E203C2562E3lG3E0A0A#

 stdio_test$316:
	; PushFloat -123.456
	fld qword [@12371$float8$minus123.456#]

 stdio_test$317:
	; Parameter 68 longdouble -123.456
	fstp qword [rbp + 68]

 stdio_test$318:
	; PushFloat -123.456
	fld qword [@12372$float8$minus123.456#]

 stdio_test$319:
	; Parameter 76 longdouble -123.456
	fstp qword [rbp + 76]

 stdio_test$320:
	; PushFloat -123.456
	fld qword [@12373$float8$minus123.456#]

 stdio_test$321:
	; Parameter 84 longdouble -123.456
	fstp qword [rbp + 84]

 stdio_test$322:
	; PushFloat -123.456
	fld qword [@12374$float8$minus123.456#]

 stdio_test$323:
	; Parameter 92 longdouble -123.456
	fstp qword [rbp + 92]

 stdio_test$324:
	; PushFloat -123.456
	fld qword [@12375$float8$minus123.456#]

 stdio_test$325:
	; Parameter 100 longdouble -123.456
	fstp qword [rbp + 100]

 stdio_test$326:
	; Call 36 printf 40
	mov qword [rbp + 36], stdio_test$327
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 40
	jmp printf

 stdio_test$327:
	; PostCall 36

 stdio_test$328:
	; Assign a 0
	mov dword [rbp + 24], 0

 stdio_test$329:
	; Assign b 0
	mov dword [rbp + 28], 0

 stdio_test$330:
	; Assign n 0
	mov dword [rbp + 32], 0

 stdio_test$331:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$332:
	; Parameter 60 pointer "Please write three integers: "
	mov qword [rbp + 60], @12385$string_Please20write20three20integers3A20#

 stdio_test$333:
	; Call 36 printf 0
	mov qword [rbp + 36], stdio_test$334
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	jmp printf

 stdio_test$334:
	; PostCall 36

 stdio_test$335:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$336:
	; Parameter 60 pointer "123 456 789"
	mov qword [rbp + 60], @12386$string_1232045620789#

 stdio_test$337:
	; Parameter 68 pointer "%i %*i %i %n"
	mov qword [rbp + 68], @12387$string_25i20252Ai2025i2025n#

 stdio_test$338:
	; Address £temporary3997 a
	mov rsi, rbp
	add rsi, 24

 stdio_test$339:
	; Parameter 76 pointer £temporary3997
	mov [rbp + 76], rsi

 stdio_test$340:
	; Address £temporary3998 b
	mov rsi, rbp
	add rsi, 28

 stdio_test$341:
	; Parameter 84 pointer £temporary3998
	mov [rbp + 84], rsi

 stdio_test$342:
	; Address £temporary3999 n
	mov rsi, rbp
	add rsi, 32

 stdio_test$343:
	; Parameter 92 pointer £temporary3999
	mov [rbp + 92], rsi

 stdio_test$344:
	; Call 36 sscanf 24
	mov qword [rbp + 36], stdio_test$345
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 24
	jmp sscanf

 stdio_test$345:
	; PostCall 36

 stdio_test$346:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$347:
	; Parameter 60 pointer "<%i> <%i> <%i>\n"
	mov qword [rbp + 60], @12388$string_3C25i3E203C25i3E203C25i3E0A#

 stdio_test$348:
	; Parameter 68 signedint a
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

 stdio_test$349:
	; Parameter 72 signedint b
	mov eax, [rbp + 28]
	mov [rbp + 72], eax

 stdio_test$350:
	; Parameter 76 signedint n
	mov eax, [rbp + 32]
	mov [rbp + 76], eax

 stdio_test$351:
	; Call 36 printf 12
	mov qword [rbp + 36], stdio_test$352
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 12
	jmp printf

 stdio_test$352:
	; PostCall 36

 stdio_test$353:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$354:
	; Parameter 148 pointer "Please write the patterns [abc]: "
	mov qword [rbp + 148], @12392$string_Please20write20the20patterns205Babc5D3A20#

 stdio_test$355:
	; Call 124 printf 0
	mov qword [rbp + 124], stdio_test$356
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	jmp printf

 stdio_test$356:
	; PostCall 124

 stdio_test$357:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$358:
	; Parameter 148 pointer "abcdef"
	mov qword [rbp + 148], @12393$string_abcdef#

 stdio_test$359:
	; Parameter 156 pointer "%[abc]"
	mov qword [rbp + 156], @12394$string_255Babc5D#

 stdio_test$360:
	; Parameter 164 pointer s
	mov [rbp + 164], rbp
	add qword [rbp + 164], 24

 stdio_test$361:
	; Call 124 sscanf 8
	mov qword [rbp + 124], stdio_test$362
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 8
	jmp sscanf

 stdio_test$362:
	; PostCall 124

 stdio_test$363:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$364:
	; Parameter 148 pointer "<%s>\n"
	mov qword [rbp + 148], @12395$string_3C25s3E0A#

 stdio_test$365:
	; Parameter 156 pointer s
	mov [rbp + 156], rbp
	add qword [rbp + 156], 24

 stdio_test$366:
	; Call 124 printf 8
	mov qword [rbp + 124], stdio_test$367
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdio_test$367:
	; PostCall 124

 stdio_test$368:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$369:
	; Parameter 148 pointer "Please write the patterns [^abc]: "
	mov qword [rbp + 148], @12396$string_Please20write20the20patterns205B5Eabc5D3A20#

 stdio_test$370:
	; Call 124 printf 0
	mov qword [rbp + 124], stdio_test$371
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	jmp printf

 stdio_test$371:
	; PostCall 124

 stdio_test$372:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$373:
	; Parameter 148 pointer "defabc"
	mov qword [rbp + 148], @12397$string_defabc#

 stdio_test$374:
	; Parameter 156 pointer "%[^abc]"
	mov qword [rbp + 156], @12398$string_255B5Eabc5D#

 stdio_test$375:
	; Parameter 164 pointer s
	mov [rbp + 164], rbp
	add qword [rbp + 164], 24

 stdio_test$376:
	; Call 124 sscanf 8
	mov qword [rbp + 124], stdio_test$377
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 8
	jmp sscanf

 stdio_test$377:
	; PostCall 124

 stdio_test$378:
	; PreCall 124 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 stdio_test$379:
	; Parameter 148 pointer "<%s>\n\n"
	mov qword [rbp + 148], @12399$string_3C25s3E0A0A#

 stdio_test$380:
	; Parameter 156 pointer s
	mov [rbp + 156], rbp
	add qword [rbp + 156], 24

 stdio_test$381:
	; Call 124 printf 8
	mov qword [rbp + 124], stdio_test$382
	mov [rbp + 132], rbp
	add rbp, 124
	mov rdi, rbp
	add rdi, 8
	jmp printf

 stdio_test$382:
	; PostCall 124

 stdio_test$383:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 stdio_test$384:
	; FunctionEnd stdio_test
