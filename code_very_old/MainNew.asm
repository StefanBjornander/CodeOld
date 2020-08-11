	global a
	global main2
	global main33
	global main34
	global mainc
	global maini
	global mains
	global maint
	global main3
	global mains2
	global char_main
	global assert_test
	global assert_test2

	extern file_test
	extern printf
	extern stdout
	extern g_outDevice
	extern printChar
	extern scanf
	extern limits_test
	extern time_test
	extern mktime
	extern setjmp_test
	extern character_test
	extern stderr
	extern fprintf
	extern abort
section .text
	global _start
_start:

	; Initializerialize Stack Pointer
	mov rbp, $StackTop

	; Initializerialize Heap Pointer
	mov dword [$StackTop + 65534], $StackTop
	add dword [$StackTop + 65534], 65534

	; Initializerialize FPU Control Word, truncate mode => set bit 10 and 11.
	fstcw [rbp]
	or word [rbp], 3072
	fldcw [rbp]

	; Initializerialize Command Line Arguments
	pop rbx
	mov rax, rbx
	mov rdx, rbp

$args$loop:
	cmp rbx, 0
	je $args$exit
	pop rsi
	mov [rbp], rsi
	add rbp, 8
	dec rbx
	jmp $args$loop

$args$exit:
	mov qword [rbp], 0
	add rbp, 8
	mov [rbp + 24], eax
	mov [rbp + 28], rdx

main:	; empty

main$1:	; call header integral zero 0 stack zero 0

main$2:	; parameter string_argc3A2025i0A#, offset 60
	mov qword [rbp + 60], string_argc3A2025i0A#

main$3:	; parameter argc, offset 68
	mov eax, [rbp + 24]
	mov [rbp + 68], eax

main$4:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 36], main$5
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 4
	jmp printf

main$5:	; post call

main$6:	; index = int4$0#
	mov dword [rbp + 36], 0

main$7:	; if index >= argc goto 20
	mov eax, [rbp + 24]
	cmp [rbp + 36], eax
	jge main$20

main$8:	; call header integral zero 0 stack zero 0

main$9:	; parameter string_25i3A203C25s3E0A#, offset 64
	mov qword [rbp + 64], string_25i3A203C25s3E0A#

main$10:	; parameter index, offset 72
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

main$11:	; £temporary38 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

main$12:	; £temporary39 = £temporary38 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

main$13:	; £temporary40 = argv + £temporary39
	mov rsi, [rbp + 28]
	add rsi, rax

main$14:	; £field37 -> £temporary40 = *£temporary40

main$15:	; parameter £field37 -> £temporary40, offset 76
	mov rax, [rsi]
	mov [rbp + 76], rax

main$16:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 40], main$17
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 12
	jmp printf

main$17:	; post call

main$18:	; index = index + int4$1#
	inc dword [rbp + 36]

main$19:	; goto 7
	jmp main$7

main$20:	; call header integral zero 0 stack zero 0

main$21:	; parameter string_0A#, offset 64
	mov qword [rbp + 64], string_0A#

main$22:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 40], main$23
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

main$23:	; post call

main$24:	; index = int4$0#
	mov dword [rbp + 36], 0

main$25:	; £temporary44 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

main$26:	; £temporary45 = £temporary44 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

main$27:	; £temporary46 = argv + £temporary45
	mov rsi, [rbp + 28]
	add rsi, rax

main$28:	; £field43 -> £temporary46 = *£temporary46

main$29:	; if £field43 -> £temporary46 == int8$0# goto 42
	cmp qword [rsi], 0
	je main$42

main$30:	; call header integral zero 0 stack zero 0

main$31:	; parameter string_25i3A203C25s3E0A#, offset 64
	mov qword [rbp + 64], string_25i3A203C25s3E0A#

main$32:	; parameter index, offset 72
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

main$33:	; £temporary50 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 36]
	mov rbx, 4294967295
	and rax, rbx

main$34:	; £temporary51 = £temporary50 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

main$35:	; £temporary52 = argv + £temporary51
	mov rsi, [rbp + 28]
	add rsi, rax

main$36:	; £field49 -> £temporary52 = *£temporary52

main$37:	; parameter £field49 -> £temporary52, offset 76
	mov rax, [rsi]
	mov [rbp + 76], rax

main$38:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 40], main$39
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 12
	jmp printf

main$39:	; post call

main$40:	; index = index + int4$1#
	inc dword [rbp + 36]

main$41:	; goto 25
	jmp main$25

main$42:	; call header integral zero 0 stack zero 0

main$43:	; parameter string_0A#, offset 64
	mov qword [rbp + 64], string_0A#

main$44:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 40], main$45
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

main$45:	; post call

main$46:	; call header integral zero 0 stack zero 0

main$47:	; parameter int8$0#, offset 97
	mov rax, 0
	mov [rbp + 97], rax

main$48:	; call function noellipse-noellipse mktime
	mov qword [rbp + 73], main$49
	mov [rbp + 81], rbp
	add rbp, 73
	jmp mktime

main$49:	; post call

main$50:	; call header integral zero 0 stack zero 0

main$51:	; parameter string_Hello210A#, offset 97
	mov qword [rbp + 97], string_Hello210A#

main$52:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 73], main$53
	mov [rbp + 81], rbp
	add rbp, 73
	mov rdi, rbp
	jmp printf

main$53:	; post call

main$54:	; call header integral zero 0 stack zero 0

main$55:	; parameter string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#, offset 97
	mov qword [rbp + 97], string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#

main$56:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 73], main$57
	mov [rbp + 81], rbp
	add rbp, 73
	mov rdi, rbp
	jmp printf

main$57:	; post call

main$58:	; call header integral zero 0 stack zero 0

main$59:	; parameter string_25c2025s2025i2025lf#, offset 97
	mov qword [rbp + 97], string_25c2025s2025i2025lf#

main$60:	; £temporary58 = &c
	mov rsi, rbp
	add rsi, 52

main$61:	; parameter £temporary58, offset 105
	mov [rbp + 105], rsi

main$62:	; parameter s, offset 113
	mov [rbp + 113], rbp
	add qword [rbp + 113], 53

main$63:	; £temporary59 = &i
	mov rsi, rbp
	add rsi, 40

main$64:	; parameter £temporary59, offset 121
	mov [rbp + 121], rsi

main$65:	; £temporary60 = &d
	mov rsi, rbp
	add rsi, 44

main$66:	; parameter £temporary60, offset 129
	mov [rbp + 129], rsi

main$67:	; call function noellipse-ellipse scanf, extra 32
	mov qword [rbp + 73], main$68
	mov [rbp + 81], rbp
	add rbp, 73
	mov rdi, rbp
	add rdi, 32
	jmp scanf

main$68:	; post call

main$69:	; call header integral zero 0 stack zero 0

main$70:	; parameter string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#, offset 97
	mov qword [rbp + 97], string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#

main$71:	; £temporary62 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge main$72
	neg al
	neg eax

main$72:	; parameter £temporary62, offset 105
	mov [rbp + 105], eax

main$73:	; parameter s, offset 109
	mov [rbp + 109], rbp
	add qword [rbp + 109], 53

main$74:	; parameter i, offset 117
	mov eax, [rbp + 40]
	mov [rbp + 117], eax

main$75:	; push float d
	fld qword [rbp + 44]

main$76:	; parameter d, offset 121
	fstp qword [rbp + 121]

main$77:	; call function noellipse-ellipse printf, extra 24
	mov qword [rbp + 73], main$78
	mov [rbp + 81], rbp
	add rbp, 73
	mov rdi, rbp
	add rdi, 24
	jmp printf

main$78:	; post call

main$79:	; exit int2$0#
	mov rdi, 0
	mov rax, 60
	syscall 

main$80:	; function end main

main2:	; empty

main2$1:	; a$p = int8$0#
	mov rax, 0
	mov [a], rax

main2$2:	; a$q = int8$0#
	mov rax, 0
	mov [a + 8], rax

main2$3:	; call header integral zero 0 stack zero 0

main2$4:	; parameter string_test12Etxt#, offset 48
	mov qword [rbp + 48], string_test12Etxt#

main2$5:	; parameter string_test22Etxt#, offset 56
	mov qword [rbp + 56], string_test22Etxt#

main2$6:	; call function noellipse-noellipse file_test
	mov qword [rbp + 24], main2$7
	mov [rbp + 32], rbp
	add rbp, 24
	jmp file_test

main2$7:	; post call

main2$8:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

main2$9:	; function end main2

main33:	; s[0] = int1$72#
	mov byte [rbp + 24], 72

main33$1:	; s[1] = int1$101#
	mov byte [rbp + 25], 101

main33$2:	; s[2] = int1$108#
	mov byte [rbp + 26], 108

main33$3:	; s[3] = int1$108#
	mov byte [rbp + 27], 108

main33$4:	; s[4] = int1$111#
	mov byte [rbp + 28], 111

main33$5:	; s[5] = int1$48#
	mov byte [rbp + 29], 48

main33$6:	; t[0] = int1$87#
	mov byte [rbp + 44], 87

main33$7:	; t[1] = int1$111#
	mov byte [rbp + 45], 111

main33$8:	; t[2] = int1$114#
	mov byte [rbp + 46], 114

main33$9:	; t[3] = int1$108#
	mov byte [rbp + 47], 108

main33$10:	; t[4] = int1$100#
	mov byte [rbp + 48], 100

main33$11:	; t[5] = int1$48#
	mov byte [rbp + 49], 48

main33$12:	; call header integral zero 0 stack zero 0

main33$13:	; parameter string_3C25s3E203C25s3E0A#, offset 88
	mov qword [rbp + 88], string_3C25s3E203C25s3E0A#

main33$14:	; parameter s, offset 96
	mov [rbp + 96], rbp
	add qword [rbp + 96], 24

main33$15:	; parameter t, offset 104
	mov [rbp + 104], rbp
	add qword [rbp + 104], 44

main33$16:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 64], main33$17
	mov [rbp + 72], rbp
	add rbp, 64
	mov rdi, rbp
	add rdi, 16
	jmp printf

main33$17:	; post call

main33$18:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

main33$19:	; function end main33

main34:	; g_outDevice = stdout
	mov rax, [stdout]
	mov [g_outDevice], rax

main34$1:	; call header integral zero 0 stack zero 0

main34$2:	; parameter int1$88#, offset 48
	mov byte [rbp + 48], 88

main34$3:	; call function noellipse-noellipse printChar
	mov qword [rbp + 24], main34$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp printChar

main34$4:	; post call

main34$5:	; call header integral zero 0 stack zero 0

main34$6:	; parameter int1$10#, offset 48
	mov byte [rbp + 48], 10

main34$7:	; call function noellipse-noellipse printChar
	mov qword [rbp + 24], main34$8
	mov [rbp + 32], rbp
	add rbp, 24
	jmp printChar

main34$8:	; post call

main34$9:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

main34$10:	; function end main34

mainc:	; empty

mainc$1:	; call header integral zero 0 stack zero 0

mainc$2:	; parameter string_Please20write20a20character3A20#, offset 49
	mov qword [rbp + 49], string_Please20write20a20character3A20#

mainc$3:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 25], mainc$4
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	jmp printf

mainc$4:	; post call

mainc$5:	; call header integral zero 0 stack zero 0

mainc$6:	; parameter string_25c#, offset 49
	mov qword [rbp + 49], string_25c#

mainc$7:	; £temporary19 = &c
	mov rsi, rbp
	add rsi, 24

mainc$8:	; parameter £temporary19, offset 57
	mov [rbp + 57], rsi

mainc$9:	; call function noellipse-ellipse scanf, extra 8
	mov qword [rbp + 25], mainc$10
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 8
	jmp scanf

mainc$10:	; post call

mainc$11:	; call header integral zero 0 stack zero 0

mainc$12:	; parameter string_You20wrote20the20character202725c272E0A#, offset 49
	mov qword [rbp + 49], string_You20wrote20the20character202725c272E0A#

mainc$13:	; £temporary21 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 24]
	and eax, 255
	cmp al, 0
	jge mainc$14
	neg al
	neg eax

mainc$14:	; parameter £temporary21, offset 57
	mov [rbp + 57], eax

mainc$15:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 25], mainc$16
	mov [rbp + 33], rbp
	add rbp, 25
	mov rdi, rbp
	add rdi, 4
	jmp printf

mainc$16:	; post call

mainc$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

mainc$18:	; function end mainc

maini:	; empty

maini$1:	; call header integral zero 0 stack zero 0

maini$2:	; parameter string_Please20write20an20integer3A20#, offset 52
	mov qword [rbp + 52], string_Please20write20an20integer3A20#

maini$3:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 28], maini$4
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	jmp printf

maini$4:	; post call

maini$5:	; call header integral zero 0 stack zero 0

maini$6:	; parameter string_25i#, offset 52
	mov qword [rbp + 52], string_25i#

maini$7:	; £temporary25 = &i
	mov rsi, rbp
	add rsi, 24

maini$8:	; parameter £temporary25, offset 60
	mov [rbp + 60], rsi

maini$9:	; call function noellipse-ellipse scanf, extra 8
	mov qword [rbp + 28], maini$10
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 8
	jmp scanf

maini$10:	; post call

maini$11:	; call header integral zero 0 stack zero 0

maini$12:	; parameter string_You20wrote20the20integer2025i2E0A#, offset 52
	mov qword [rbp + 52], string_You20wrote20the20integer2025i2E0A#

maini$13:	; parameter i, offset 60
	mov eax, [rbp + 24]
	mov [rbp + 60], eax

maini$14:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 28], maini$15
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 4
	jmp printf

maini$15:	; post call

maini$16:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

maini$17:	; function end maini

mains:	; empty

mains$1:	; call header integral zero 0 stack zero 0

mains$2:	; parameter string_Please20write20a20string3A20#, offset 68
	mov qword [rbp + 68], string_Please20write20a20string3A20#

mains$3:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 44], mains$4
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	jmp printf

mains$4:	; post call

mains$5:	; call header integral zero 0 stack zero 0

mains$6:	; parameter string_25s#, offset 68
	mov qword [rbp + 68], string_25s#

mains$7:	; parameter s, offset 76
	mov [rbp + 76], rbp
	add qword [rbp + 76], 24

mains$8:	; call function noellipse-ellipse scanf, extra 8
	mov qword [rbp + 44], mains$9
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 8
	jmp scanf

mains$9:	; post call

mains$10:	; call header integral zero 0 stack zero 0

mains$11:	; parameter string_You20wrote20the20string202225s222E0A#, offset 68
	mov qword [rbp + 68], string_You20wrote20the20string202225s222E0A#

mains$12:	; parameter s, offset 76
	mov [rbp + 76], rbp
	add qword [rbp + 76], 24

mains$13:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 44], mains$14
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 8
	jmp printf

mains$14:	; post call

mains$15:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

mains$16:	; function end mains

maint:	; call header integral zero 0 stack zero 0

maint$1:	; call function noellipse-noellipse limits_test
	mov qword [rbp + 24], maint$2
	mov [rbp + 32], rbp
	add rbp, 24
	jmp limits_test

maint$2:	; post call

maint$3:	; call header integral zero 0 stack zero 0

maint$4:	; call function noellipse-noellipse time_test
	mov qword [rbp + 24], maint$5
	mov [rbp + 32], rbp
	add rbp, 24
	jmp time_test

maint$5:	; post call

maint$6:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

maint$7:	; function end maint

main3:	; empty

main3$1:	; call header integral zero 0 stack zero 0

main3$2:	; parameter string_3A20#, offset 56
	mov qword [rbp + 56], string_3A20#

main3$3:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 32], main3$4
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

main3$4:	; post call

main3$5:	; call header integral zero 0 stack zero 0

main3$6:	; parameter string_25lf#, offset 56
	mov qword [rbp + 56], string_25lf#

main3$7:	; £temporary69 = &x
	mov rsi, rbp
	add rsi, 24

main3$8:	; parameter £temporary69, offset 64
	mov [rbp + 64], rsi

main3$9:	; call function noellipse-ellipse scanf, extra 8
	mov qword [rbp + 32], main3$10
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp scanf

main3$10:	; post call

main3$11:	; call header integral zero 0 stack zero 0

main3$12:	; parameter string_3C25f3E#, offset 56
	mov qword [rbp + 56], string_3C25f3E#

main3$13:	; push float x
	fld qword [rbp + 24]

main3$14:	; parameter x, offset 64
	fstp qword [rbp + 64]

main3$15:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 32], main3$16
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

main3$16:	; post call

main3$17:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

main3$18:	; function end main3

mains2:	; call header integral zero 0 stack zero 0

mains2$1:	; push float float8$3.14#
	fld qword [float8$3.14#]

mains2$2:	; parameter float8$3.14#, offset 48
	fstp qword [rbp + 48]

mains2$3:	; call function noellipse-noellipse setjmp_test
	mov qword [rbp + 24], mains2$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp setjmp_test

mains2$4:	; post call

mains2$5:	; call header integral zero 0 stack zero 0

mains2$6:	; parameter string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#, offset 48
	mov qword [rbp + 48], string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#

mains2$7:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 24], mains2$8
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

mains2$8:	; post call

mains2$9:	; call header integral zero 0 stack zero 0

mains2$10:	; push float float8$0#
	fldz 

mains2$11:	; parameter float8$0#, offset 48
	fstp qword [rbp + 48]

mains2$12:	; call function noellipse-noellipse setjmp_test
	mov qword [rbp + 24], mains2$13
	mov [rbp + 32], rbp
	add rbp, 24
	jmp setjmp_test

mains2$13:	; post call

mains2$14:	; call header integral zero 0 stack zero 0

mains2$15:	; parameter string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#, offset 48
	mov qword [rbp + 48], string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#

mains2$16:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 24], mains2$17
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

mains2$17:	; post call

mains2$18:	; call header integral zero 0 stack zero 0

mains2$19:	; push float float8$2.71#
	fld qword [float8$2.71#]

mains2$20:	; parameter float8$2.71#, offset 48
	fstp qword [rbp + 48]

mains2$21:	; call function noellipse-noellipse setjmp_test
	mov qword [rbp + 24], mains2$22
	mov [rbp + 32], rbp
	add rbp, 24
	jmp setjmp_test

mains2$22:	; post call

mains2$23:	; call header integral zero 0 stack zero 0

mains2$24:	; parameter string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#, offset 48
	mov qword [rbp + 48], string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#

mains2$25:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 24], mains2$26
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

mains2$26:	; post call

mains2$27:	; call header integral zero 0 stack zero 0

mains2$28:	; push float float8$0#
	fldz 

mains2$29:	; parameter float8$0#, offset 48
	fstp qword [rbp + 48]

mains2$30:	; call function noellipse-noellipse setjmp_test
	mov qword [rbp + 24], mains2$31
	mov [rbp + 32], rbp
	add rbp, 24
	jmp setjmp_test

mains2$31:	; post call

mains2$32:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

mains2$33:	; function end mains2

char_main:	; call header integral zero 0 stack zero 0

char_main$1:	; parameter int1$97#, offset 48
	mov byte [rbp + 48], 97

char_main$2:	; call function noellipse-noellipse character_test
	mov qword [rbp + 24], char_main$3
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

char_main$3:	; post call

char_main$4:	; call header integral zero 0 stack zero 0

char_main$5:	; parameter int1$66#, offset 48
	mov byte [rbp + 48], 66

char_main$6:	; call function noellipse-noellipse character_test
	mov qword [rbp + 24], char_main$7
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

char_main$7:	; post call

char_main$8:	; call header integral zero 0 stack zero 0

char_main$9:	; parameter int1$49#, offset 48
	mov byte [rbp + 48], 49

char_main$10:	; call function noellipse-noellipse character_test
	mov qword [rbp + 24], char_main$11
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

char_main$11:	; post call

char_main$12:	; call header integral zero 0 stack zero 0

char_main$13:	; parameter int1$46#, offset 48
	mov byte [rbp + 48], 46

char_main$14:	; call function noellipse-noellipse character_test
	mov qword [rbp + 24], char_main$15
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

char_main$15:	; post call

char_main$16:	; call header integral zero 0 stack zero 0

char_main$17:	; parameter int1$10#, offset 48
	mov byte [rbp + 48], 10

char_main$18:	; call function noellipse-noellipse character_test
	mov qword [rbp + 24], char_main$19
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

char_main$19:	; post call

char_main$20:	; call header integral zero 0 stack zero 0

char_main$21:	; parameter int1$102#, offset 48
	mov byte [rbp + 48], 102

char_main$22:	; call function noellipse-noellipse character_test
	mov qword [rbp + 24], char_main$23
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

char_main$23:	; post call

char_main$24:	; call header integral zero 0 stack zero 0

char_main$25:	; parameter int1$103#, offset 48
	mov byte [rbp + 48], 103

char_main$26:	; call function noellipse-noellipse character_test
	mov qword [rbp + 24], char_main$27
	mov [rbp + 32], rbp
	add rbp, 24
	jmp character_test

char_main$27:	; post call

char_main$28:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

char_main$29:	; function end char_main

assert_test:	; n = int4$0#
	mov dword [rbp + 24], 0

assert_test$1:	; call header integral zero 0 stack zero 0

assert_test$2:	; parameter string_Please20write20a20number2028not20620or207293A20#, offset 52
	mov qword [rbp + 52], string_Please20write20a20number2028not20620or207293A20#

assert_test$3:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 28], assert_test$4
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	jmp printf

assert_test$4:	; post call

assert_test$5:	; call header integral zero 0 stack zero 0

assert_test$6:	; parameter string_25i#, offset 52
	mov qword [rbp + 52], string_25i#

assert_test$7:	; £temporary93 = &n
	mov rsi, rbp
	add rsi, 24

assert_test$8:	; parameter £temporary93, offset 60
	mov [rbp + 60], rsi

assert_test$9:	; call function noellipse-ellipse scanf, extra 8
	mov qword [rbp + 28], assert_test$10
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 8
	jmp scanf

assert_test$10:	; post call

assert_test$11:	; if n != int4$6# goto 23
	cmp dword [rbp + 24], 6
	jne assert_test$23

assert_test$12:	; call header integral zero 0 stack zero 0

assert_test$13:	; parameter stderr, offset 52
	mov rax, [stderr]
	mov [rbp + 52], rax

assert_test$14:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 60
	mov qword [rbp + 60], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

assert_test$15:	; parameter string_n20213D206#, offset 68
	mov qword [rbp + 68], string_n20213D206#

assert_test$16:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMain2Ec#, offset 76
	mov qword [rbp + 76], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMain2Ec#

assert_test$17:	; parameter int4$802#, offset 84
	mov dword [rbp + 84], 802

assert_test$18:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 28], assert_test$19
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

assert_test$19:	; post call

assert_test$20:	; call header integral zero 0 stack zero 0

assert_test$21:	; call function noellipse-noellipse abort
	mov qword [rbp + 28], assert_test$22
	mov [rbp + 36], rbp
	add rbp, 28
	jmp abort

assert_test$22:	; post call

assert_test$23:	; call header integral zero 0 stack zero 0

assert_test$24:	; parameter n, offset 52
	mov eax, [rbp + 24]
	mov [rbp + 52], eax

assert_test$25:	; call function noellipse-noellipse assert_test2
	mov qword [rbp + 28], assert_test$26
	mov [rbp + 36], rbp
	add rbp, 28
	jmp assert_test2

assert_test$26:	; post call

assert_test$27:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

assert_test$28:	; function end assert_test

assert_test2:	; if n != int4$7# goto 12
	cmp dword [rbp + 24], 7
	jne assert_test2$12

assert_test2$1:	; call header integral zero 0 stack zero 0

assert_test2$2:	; parameter stderr, offset 52
	mov rax, [stderr]
	mov [rbp + 52], rax

assert_test2$3:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 60
	mov qword [rbp + 60], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

assert_test2$4:	; parameter string_n20213D207#, offset 68
	mov qword [rbp + 68], string_n20213D207#

assert_test2$5:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMain2Ec#, offset 76
	mov qword [rbp + 76], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMain2Ec#

assert_test2$6:	; parameter int4$807#, offset 84
	mov dword [rbp + 84], 807

assert_test2$7:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 28], assert_test2$8
	mov [rbp + 36], rbp
	add rbp, 28
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

assert_test2$8:	; post call

assert_test2$9:	; call header integral zero 0 stack zero 0

assert_test2$10:	; call function noellipse-noellipse abort
	mov qword [rbp + 28], assert_test2$11
	mov [rbp + 36], rbp
	add rbp, 28
	jmp abort

assert_test2$11:	; post call

assert_test2$12:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

assert_test2$13:	; function end assert_test2
section .data
$StackTop:	times 65536 db 0

$IntegralStorage#:
	times 8 db 0

a:
	times 16 db 0

string_test12Etxt#:
	; initializer String
	db "test1.txt", 0

string_test22Etxt#:
	; initializer String
	db "test2.txt", 0

string_Hello#:
	; initializer String
	db "Hello", 0

string_World#:
	; initializer String
	db "World", 0

string_3C25s3E203C25s3E0A#:
	; initializer String
	db "<%s> <%s>", 10, 0

string_Please20write20a20character3A20#:
	; initializer String
	db "Please write a character: ", 0

string_25c#:
	; initializer String
	db "%c", 0

string_You20wrote20the20character202725c272E0A#:
	; initializer String
	db "You wrote the character ", 39, "%c", 39, ".", 10, 0

string_Please20write20an20integer3A20#:
	; initializer String
	db "Please write an integer: ", 0

string_25i#:
	; initializer String
	db "%i", 0

string_You20wrote20the20integer2025i2E0A#:
	; initializer String
	db "You wrote the integer %i.", 10, 0

string_Please20write20a20string3A20#:
	; initializer String
	db "Please write a string: ", 0

string_25s#:
	; initializer String
	db "%s", 0

string_You20wrote20the20string202225s222E0A#:
	; initializer String
	db "You wrote the string ", 34, "%s", 34, ".", 10, 0

@400$ZERO:
	; initializer Signed_Int
	dd 0

@401$ONE:
	; initializer Signed_Int
	dd 1

@404$TWO:
	; initializer Signed_Int
	dd 2

@405$THREE:
	; initializer Signed_Int
	dd 3

string_argc3A2025i0A#:
	; initializer String
	db "argc: %i", 10, 0

string_25i3A203C25s3E0A#:
	; initializer String
	db "%i: <%s>", 10, 0

string_0A#:
	; initializer String
	db 10, 0

string_Hello210A#:
	; initializer String
	db "Hello!", 10, 0

string_Please20write20a20character2C20a20string2C20an20integer2C20and20a20double3A20#:
	; initializer String
	db "Please write a character, a string, an integer, and a double: ", 0

string_25c2025s2025i2025lf#:
	; initializer String
	db "%c %s %i %lf", 0

string_You20wrote20the20character202725c272C20the20string202225s222C20the20integer2025i2C20and20the20double2025f2E0A#:
	; initializer String
	db "You wrote the character ", 39, "%c", 39, ", the string ", 34, "%s", 34, ", the integer %i, and the double %f.", 10, 0

int8$8#:
	; initializer Pointer
	dq 8

string_3A20#:
	; initializer String
	db ": ", 0

string_25lf#:
	; initializer String
	db "%lf", 0

string_3C25f3E#:
	; initializer String
	db "<%f>", 0

string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#:
	; initializer String
	db "---------------------------------------------", 10, 0

float8$3.14#:
	; initializer Double
	dq 3.14

float8$2.71#:
	; initializer Double
	dq 2.71

string_Please20write20a20number2028not20620or207293A20#:
	; initializer String
	db "Please write a number (not 6 or 7): ", 0

string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; initializer String
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

string_n20213D206#:
	; initializer String
	db "n != 6", 0

string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CMain2Ec#:
	; initializer String
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c", 0

string_n20213D207#:
	; initializer String
	db "n != 7", 0
