	global mains
	global maini
	global mainc
	global main34
	global main33
	global main2
	global maint
	global main3
	global mains2
	global char_main
	global assert_test
	global assert_test2

	extern printf
	extern scanf
	extern stdout
	extern g_outDevice
	extern printChar
	extern file_test
	extern limits_test
	extern time_test
	extern setjmp_test
	extern character_test
	extern stderr
	extern fprintf
	extern abort

sys_write	equ	1		; the linux WRITE syscall
sys_exit	equ	60		; the linux EXIT syscall
sys_stdout	equ	1		; the file descriptor for standard output (to print/write to)
length		equ	5		; the length of the string we wish to print (fixed string length of the arguments)

section .data
	linebreak	db	0x0A	; ASCII character 10, a line break

section .text
	global _start
_start:

	; Initialize Stack Pointer
	mov ebp, $StackTop

	; Initialize Heap Pointer
	mov dword [$StackTop + 65534], $StackTop
	add dword [$StackTop + 65534], 65534

	; Initialize FPU Control Word, truncate mode => set bit 10 and 11.
	fstcw [ebp]
	or word [ebp], 3072
	fldcw [ebp]

	; Initialize Command Line Arguments
	pop rbx

loop:     cmp ebx, 0
          je exit

	mov	rax,	sys_write	; set the rax register to the syscall number we want to execute (WRITE)
	mov	rdi,	sys_stdout	; specify the file we want to write to (standard output in this case)
	pop	rsi			; pop a pointer to the string we want to print from the stack
	mov	rdx,	length		; specify the (fixed) length of the string we want to print
	syscall				; execute the system call

                    			; print a newline
	mov	rax,	sys_write	; rax is overwritten by the kernel with the syscall return code, so we set it again
	mov	rdi,	sys_stdout
	mov	rsi,	linebreak	; this time we want to print a line break
	mov	rdx,	1		; which is one byte long
	syscall
	
	dec	ebx			; count down every time we print an argument until there are none left
	jmp	loop			; jump back to the top of the loop

exit:
	mov	rax,	sys_exit	; load the EXIT syscall number into rax
	mov	rdi,	0		; the program return code
	syscall				; execute the system call

main:	; call header integral zero 0 stack zero 0

main$1:	; parameter string_argc3A2025i0A#, offset 40
	mov dword [ebp + 40], string_argc3A2025i0A#

main$2:	; parameter argc, offset 44
	mov eax, [ebp + 16]
	mov [ebp + 44], eax

main$3:	; call function noellipse-ellipse printf, extra 4
	mov qword [ebp + 24], main$4
	mov [ebp + 32], ebp
	add ebp, 24
	mov edi, ebp
	add edi, 4
	jmp printf

main$4:	; post call

main$5:	; call header integral zero 0 stack zero 0

main$6:	; parameter string_argc3A2025i0A#, offset 40
	mov dword [ebp + 40], string_argc3A2025i0A#

main$7:	; parameter argc, offset 44
	mov eax, [ebp + 16]
	mov [ebp + 44], eax

main$8:	; call function noellipse-ellipse printf, extra 4
	mov qword [ebp + 24], main$9
	mov [ebp + 32], ebp
	add ebp, 24
	mov edi, ebp
	add edi, 4
	jmp printf

main$9:	; post call

main$10:	; call header integral zero 0 stack zero 0

main$11:	; parameter string_argv3A2025i0A#, offset 40
	mov dword [ebp + 40], string_argv3A2025i0A#

main$12:	; £temporary56 = int_to_int argv (Pointer -> Signed_Int)
	mov eax, [ebp + 20]

main$13:	; parameter £temporary56, offset 44
	mov [ebp + 44], eax

main$14:	; call function noellipse-ellipse printf, extra 4
	mov qword [ebp + 24], main$15
	mov [ebp + 32], ebp
	add ebp, 24
	mov edi, ebp
	add edi, 4
	jmp printf

main$15:	; post call

main$16:	; call header integral zero 0 stack zero 0

main$17:	; parameter string_argv5B05D3A2025i0A#, offset 40
	mov dword [ebp + 40], string_argv5B05D3A2025i0A#

main$18:	; £temporary58 -> argv = *argv
	mov esi, [ebp + 20]

main$19:	; £temporary59 = int_to_int £temporary58 -> argv (Pointer -> Signed_Int)
	mov eax, [esi]

main$20:	; parameter £temporary59, offset 44
	mov [ebp + 44], eax

main$21:	; call function noellipse-ellipse printf, extra 4
	mov qword [ebp + 24], main$22
	mov [ebp + 32], ebp
	add ebp, 24
	mov edi, ebp
	add edi, 4
	jmp printf

main$22:	; post call

main$23:	; index = int4$0#
	mov dword [ebp + 24], 0

main$24:	; if index >= argc goto 36
	mov eax, [ebp + 24]
	cmp eax, [ebp + 16]
	jge main$36

main$25:	; call header integral zero 0 stack zero 0

main$26:	; parameter string_25i3A203C25s3E0A#, offset 44
	mov dword [ebp + 44], string_25i3A203C25s3E0A#

main$27:	; parameter index, offset 48
	mov eax, [ebp + 24]
	mov [ebp + 48], eax

main$28:	; £temporary64 = index * int4$4#
	mov eax, [ebp + 24]
	xor edx, edx
	mul dword [int4$4#]

main$29:	; £temporary65 = argv + £temporary64
	mov esi, [ebp + 20]
	add esi, eax

main$30:	; £temporary63 -> £temporary65 = *£temporary65

main$31:	; parameter £temporary63 -> £temporary65, offset 52
	mov eax, [esi]
	mov [ebp + 52], eax

main$32:	; call function noellipse-ellipse printf, extra 8
	mov qword [ebp + 28], main$33
	mov [ebp + 36], ebp
	add ebp, 28
	mov edi, ebp
	add edi, 8
	jmp printf

main$33:	; post call

main$34:	; ++index
	inc dword [ebp + 24]

main$35:	; goto 24
	jmp main$24

main$36:	; call header integral zero 0 stack zero 0

main$37:	; parameter string_0A#, offset 44
	mov dword [ebp + 44], string_0A#

main$38:	; call function noellipse-ellipse printf, extra 0
	mov qword [ebp + 28], main$39
	mov [ebp + 36], ebp
	add ebp, 28
	mov edi, ebp
	jmp printf

main$39:	; post call

main$40:	; index = int4$0#
	mov dword [ebp + 24], 0

main$41:	; £temporary69 = index * int4$4#
	mov eax, [ebp + 24]
	xor edx, edx
	mul dword [int4$4#]

main$42:	; £temporary70 = argv + £temporary69
	mov esi, [ebp + 20]
	add esi, eax

main$43:	; £temporary68 -> £temporary70 = *£temporary70

main$44:	; if £temporary68 -> £temporary70 == int4$0# goto 56
	cmp dword [esi], 0
	je main$56

main$45:	; call header integral zero 0 stack zero 0

main$46:	; parameter string_25i3A203C25s3E0A#, offset 44
	mov dword [ebp + 44], string_25i3A203C25s3E0A#

main$47:	; parameter index, offset 48
	mov eax, [ebp + 24]
	mov [ebp + 48], eax

main$48:	; £temporary74 = index * int4$4#
	mov eax, [ebp + 24]
	xor edx, edx
	mul dword [int4$4#]

main$49:	; £temporary75 = argv + £temporary74
	mov esi, [ebp + 20]
	add esi, eax

main$50:	; £temporary73 -> £temporary75 = *£temporary75

main$51:	; parameter £temporary73 -> £temporary75, offset 52
	mov eax, [esi]
	mov [ebp + 52], eax

main$52:	; call function noellipse-ellipse printf, extra 8
	mov qword [ebp + 28], main$53
	mov [ebp + 36], ebp
	add ebp, 28
	mov edi, ebp
	add edi, 8
	jmp printf

main$53:	; post call

main$54:	; ++index
	inc dword [ebp + 24]

main$55:	; goto 41
	jmp main$41

main$56:	; exit int2$0#
	mov rdi, 0
	mov rax, 60
	syscall 

main$57:	; function end main

mains:	; empty

mains$1:	; call header integral zero 0 stack zero 0

mains$2:	; parameter string_Please20write20a20string3A20#, offset 52
	mov dword [ebp + 52], string_Please20write20a20string3A20#

mains$3:	; call function noellipse-ellipse printf, extra 0
	mov qword [ebp + 36], mains$4
	mov [ebp + 44], ebp
	add ebp, 36
	mov edi, ebp
	jmp printf

mains$4:	; post call

mains$5:	; call header integral zero 0 stack zero 0

mains$6:	; parameter string_25s#, offset 52
	mov dword [ebp + 52], string_25s#

mains$7:	; parameter s, offset 56
	mov [ebp + 56], ebp
	add dword [ebp + 56], 16

mains$8:	; call function noellipse-ellipse scanf, extra 4
	mov qword [ebp + 36], mains$9
	mov [ebp + 44], ebp
	add ebp, 36
	mov edi, ebp
	add edi, 4
	jmp scanf

mains$9:	; post call

mains$10:	; call header integral zero 0 stack zero 0

mains$11:	; parameter string_You20wrote20the20string202225s222E0A#, offset 52
	mov dword [ebp + 52], string_You20wrote20the20string202225s222E0A#

mains$12:	; parameter s, offset 56
	mov [ebp + 56], ebp
	add dword [ebp + 56], 16

mains$13:	; call function noellipse-ellipse printf, extra 4
	mov qword [ebp + 36], mains$14
	mov [ebp + 44], ebp
	add ebp, 36
	mov edi, ebp
	add edi, 4
	jmp printf

mains$14:	; post call

mains$15:	; return
	mov rax, [ebp]
	mov edi, [ebp + 12]
	mov ebp, [ebp + 8]
	jmp rax

mains$16:	; function end mains

maini:	; empty

maini$1:	; call header integral zero 0 stack zero 0

maini$2:	; parameter string_Please20write20an20integer3A20#, offset 36
	mov dword [ebp + 36], string_Please20write20an20integer3A20#

maini$3:	; call function noellipse-ellipse printf, extra 0
	mov qword [ebp + 20], maini$4
	mov [ebp + 28], ebp
	add ebp, 20
	mov edi, ebp
	jmp printf

maini$4:	; post call

maini$5:	; call header integral zero 0 stack zero 0

maini$6:	; parameter string_25i#, offset 36
	mov dword [ebp + 36], string_25i#

maini$7:	; £temporary35 = &i
	mov esi, ebp
	add esi, 16

maini$8:	; parameter £temporary35, offset 40
	mov [ebp + 40], esi

maini$9:	; call function noellipse-ellipse scanf, extra 4
	mov qword [ebp + 20], maini$10
	mov [ebp + 28], ebp
	add ebp, 20
	mov edi, ebp
	add edi, 4
	jmp scanf

maini$10:	; post call

maini$11:	; call header integral zero 0 stack zero 0

maini$12:	; parameter string_You20wrote20the20integer2025i2E0A#, offset 36
	mov dword [ebp + 36], string_You20wrote20the20integer2025i2E0A#

maini$13:	; parameter i, offset 40
	mov eax, [ebp + 16]
	mov [ebp + 40], eax

maini$14:	; call function noellipse-ellipse printf, extra 4
	mov qword [ebp + 20], maini$15
	mov [ebp + 28], ebp
	add ebp, 20
	mov edi, ebp
	add edi, 4
	jmp printf

maini$15:	; post call

maini$16:	; return
	mov rax, [ebp]
	mov edi, [ebp + 12]
	mov ebp, [ebp + 8]
	jmp rax

maini$17:	; function end maini

mainc:	; empty

mainc$1:	; call header integral zero 0 stack zero 0

mainc$2:	; parameter string_Please20write20a20character3A20#, offset 33
	mov dword [ebp + 33], string_Please20write20a20character3A20#

mainc$3:	; call function noellipse-ellipse printf, extra 0
	mov qword [ebp + 17], mainc$4
	mov [ebp + 25], ebp
	add ebp, 17
	mov edi, ebp
	jmp printf

mainc$4:	; post call

mainc$5:	; call header integral zero 0 stack zero 0

mainc$6:	; parameter string_25c#, offset 33
	mov dword [ebp + 33], string_25c#

mainc$7:	; £temporary24 = &c
	mov esi, ebp
	add esi, 16

mainc$8:	; parameter £temporary24, offset 37
	mov [ebp + 37], esi

mainc$9:	; call function noellipse-ellipse scanf, extra 4
	mov qword [ebp + 17], mainc$10
	mov [ebp + 25], ebp
	add ebp, 17
	mov edi, ebp
	add edi, 4
	jmp scanf

mainc$10:	; post call

mainc$11:	; call header integral zero 0 stack zero 0

mainc$12:	; parameter string_You20wrote20the20character202725c272E0A#, offset 33
	mov dword [ebp + 33], string_You20wrote20the20character202725c272E0A#

mainc$13:	; £temporary26 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [ebp + 16]
	and eax, 255
	cmp al, 0
	jge mainc$14
	neg al
	neg eax

mainc$14:	; parameter £temporary26, offset 37
	mov [ebp + 37], eax

mainc$15:	; call function noellipse-ellipse printf, extra 4
	mov qword [ebp + 17], mainc$16
	mov [ebp + 25], ebp
	add ebp, 17
	mov edi, ebp
	add edi, 4
	jmp printf

mainc$16:	; post call

mainc$17:	; return
	mov rax, [ebp]
	mov edi, [ebp + 12]
	mov ebp, [ebp + 8]
	jmp rax

mainc$18:	; function end mainc

main34:	; g_outDevice = stdout
	mov eax, [stdout]
	mov [g_outDevice], eax

main34$1:	; call header integral zero 0 stack zero 0

main34$2:	; parameter int1$88#, offset 32
	mov byte [ebp + 32], 88

main34$3:	; call function noellipse-noellipse printChar
	mov qword [ebp + 16], main34$4
	mov [ebp + 24], ebp
	add ebp, 16
	jmp printChar

main34$4:	; post call

main34$5:	; call header integral zero 0 stack zero 0

main34$6:	; parameter int1$10#, offset 32
	mov byte [ebp + 32], 10

main34$7:	; call function noellipse-noellipse printChar
	mov qword [ebp + 16], main34$8
	mov [ebp + 24], ebp
	add ebp, 16
	jmp printChar

main34$8:	; post call

main34$9:	; return
	mov rax, [ebp]
	mov edi, [ebp + 12]
	mov ebp, [ebp + 8]
	jmp rax

main34$10:	; function end main34

main33:	; s[0] = int1$72#
	mov byte [ebp + 16], 72

main33$1:	; s[1] = int1$101#
	mov byte [ebp + 17], 101

main33$2:	; s[2] = int1$108#
	mov byte [ebp + 18], 108

main33$3:	; s[3] = int1$108#
	mov byte [ebp + 19], 108

main33$4:	; s[4] = int1$111#
	mov byte [ebp + 20], 111

main33$5:	; s[5] = int1$0#
	mov byte [ebp + 21], 0

main33$6:	; t[0] = int1$87#
	mov byte [ebp + 36], 87

main33$7:	; t[1] = int1$111#
	mov byte [ebp + 37], 111

main33$8:	; t[2] = int1$114#
	mov byte [ebp + 38], 114

main33$9:	; t[3] = int1$108#
	mov byte [ebp + 39], 108

main33$10:	; t[4] = int1$100#
	mov byte [ebp + 40], 100

main33$11:	; t[5] = int1$0#
	mov byte [ebp + 41], 0

main33$12:	; call header integral zero 0 stack zero 0

main33$13:	; parameter string_3C25s3E203C25s3E0A#, offset 72
	mov dword [ebp + 72], string_3C25s3E203C25s3E0A#

main33$14:	; parameter s, offset 76
	mov [ebp + 76], ebp
	add dword [ebp + 76], 16

main33$15:	; parameter t, offset 80
	mov [ebp + 80], ebp
	add dword [ebp + 80], 36

main33$16:	; call function noellipse-ellipse printf, extra 8
	mov qword [ebp + 56], main33$17
	mov [ebp + 64], ebp
	add ebp, 56
	mov edi, ebp
	add edi, 8
	jmp printf

main33$17:	; post call

main33$18:	; return
	mov rax, [ebp]
	mov edi, [ebp + 12]
	mov ebp, [ebp + 8]
	jmp rax

main33$19:	; function end main33

main2:	; call header integral zero 0 stack zero 0

main2$1:	; parameter string_test12Etxt#, offset 32
	mov dword [ebp + 32], string_test12Etxt#

main2$2:	; parameter string_test22Etxt#, offset 36
	mov dword [ebp + 36], string_test22Etxt#

main2$3:	; call function noellipse-noellipse file_test
	mov qword [ebp + 16], main2$4
	mov [ebp + 24], ebp
	add ebp, 16
	jmp file_test

main2$4:	; post call

main2$5:	; return
	mov rax, [ebp]
	mov edi, [ebp + 12]
	mov ebp, [ebp + 8]
	jmp rax

main2$6:	; function end main2

maint:	; call header integral zero 0 stack zero 0

maint$1:	; call function noellipse-noellipse limits_test
	mov qword [ebp + 16], maint$2
	mov [ebp + 24], ebp
	add ebp, 16
	jmp limits_test

maint$2:	; post call

maint$3:	; call header integral zero 0 stack zero 0

maint$4:	; call function noellipse-noellipse time_test
	mov qword [ebp + 16], maint$5
	mov [ebp + 24], ebp
	add ebp, 16
	jmp time_test

maint$5:	; post call

maint$6:	; return
	mov rax, [ebp]
	mov edi, [ebp + 12]
	mov ebp, [ebp + 8]
	jmp rax

maint$7:	; function end maint

main3:	; empty

main3$1:	; call header integral zero 0 stack zero 0

main3$2:	; parameter string_3A20#, offset 40
	mov dword [ebp + 40], string_3A20#

main3$3:	; call function noellipse-ellipse printf, extra 0
	mov qword [ebp + 24], main3$4
	mov [ebp + 32], ebp
	add ebp, 24
	mov edi, ebp
	jmp printf

main3$4:	; post call

main3$5:	; call header integral zero 0 stack zero 0

main3$6:	; parameter string_25lf#, offset 40
	mov dword [ebp + 40], string_25lf#

main3$7:	; £temporary93 = &x
	mov esi, ebp
	add esi, 16

main3$8:	; parameter £temporary93, offset 44
	mov [ebp + 44], esi

main3$9:	; call function noellipse-ellipse scanf, extra 4
	mov qword [ebp + 24], main3$10
	mov [ebp + 32], ebp
	add ebp, 24
	mov edi, ebp
	add edi, 4
	jmp scanf

main3$10:	; post call

main3$11:	; call header integral zero 0 stack zero 0

main3$12:	; parameter string_3C25f3E#, offset 40
	mov dword [ebp + 40], string_3C25f3E#

main3$13:	; push float x
	fld qword [ebp + 16]

main3$14:	; parameter x, offset 44
	fstp qword [ebp + 44]

main3$15:	; call function noellipse-ellipse printf, extra 8
	mov qword [ebp + 24], main3$16
	mov [ebp + 32], ebp
	add ebp, 24
	mov edi, ebp
	add edi, 8
	jmp printf

main3$16:	; post call

main3$17:	; return
	mov rax, [ebp]
	mov edi, [ebp + 12]
	mov ebp, [ebp + 8]
	jmp rax

main3$18:	; function end main3

mains2:	; call header integral zero 0 stack zero 0

mains2$1:	; push float float8$3.14#
	fld qword [float8$3.14#]

mains2$2:	; parameter float8$3.14#, offset 32
	fstp qword [ebp + 32]

mains2$3:	; call function noellipse-noellipse setjmp_test
	mov qword [ebp + 16], mains2$4
	mov [ebp + 24], ebp
	add ebp, 16
	jmp setjmp_test

mains2$4:	; post call

mains2$5:	; call header integral zero 0 stack zero 0

mains2$6:	; parameter string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#, offset 32
	mov dword [ebp + 32], string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#

mains2$7:	; call function noellipse-ellipse printf, extra 0
	mov qword [ebp + 16], mains2$8
	mov [ebp + 24], ebp
	add ebp, 16
	mov edi, ebp
	jmp printf

mains2$8:	; post call

mains2$9:	; call header integral zero 0 stack zero 0

mains2$10:	; push float float8$0#
	fldz 

mains2$11:	; parameter float8$0#, offset 32
	fstp qword [ebp + 32]

mains2$12:	; call function noellipse-noellipse setjmp_test
	mov qword [ebp + 16], mains2$13
	mov [ebp + 24], ebp
	add ebp, 16
	jmp setjmp_test

mains2$13:	; post call

mains2$14:	; call header integral zero 0 stack zero 0

mains2$15:	; parameter string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#, offset 32
	mov dword [ebp + 32], string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#

mains2$16:	; call function noellipse-ellipse printf, extra 0
	mov qword [ebp + 16], mains2$17
	mov [ebp + 24], ebp
	add ebp, 16
	mov edi, ebp
	jmp printf

mains2$17:	; post call

mains2$18:	; call header integral zero 0 stack zero 0

mains2$19:	; push float float8$2.71#
	fld qword [float8$2.71#]

mains2$20:	; parameter float8$2.71#, offset 32
	fstp qword [ebp + 32]

mains2$21:	; call function noellipse-noellipse setjmp_test
	mov qword [ebp + 16], mains2$22
	mov [ebp + 24], ebp
	add ebp, 16
	jmp setjmp_test

mains2$22:	; post call

mains2$23:	; call header integral zero 0 stack zero 0

mains2$24:	; parameter string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#, offset 32
	mov dword [ebp + 32], string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#

mains2$25:	; call function noellipse-ellipse printf, extra 0
	mov qword [ebp + 16], mains2$26
	mov [ebp + 24], ebp
	add ebp, 16
	mov edi, ebp
	jmp printf

mains2$26:	; post call

mains2$27:	; call header integral zero 0 stack zero 0

mains2$28:	; push float float8$0#
	fldz 

mains2$29:	; parameter float8$0#, offset 32
	fstp qword [ebp + 32]

mains2$30:	; call function noellipse-noellipse setjmp_test
	mov qword [ebp + 16], mains2$31
	mov [ebp + 24], ebp
	add ebp, 16
	jmp setjmp_test

mains2$31:	; post call

mains2$32:	; return
	mov rax, [ebp]
	mov edi, [ebp + 12]
	mov ebp, [ebp + 8]
	jmp rax

mains2$33:	; function end mains2

char_main:	; call header integral zero 0 stack zero 0

char_main$1:	; parameter int1$97#, offset 32
	mov byte [ebp + 32], 97

char_main$2:	; call function noellipse-noellipse character_test
	mov qword [ebp + 16], char_main$3
	mov [ebp + 24], ebp
	add ebp, 16
	jmp character_test

char_main$3:	; post call

char_main$4:	; call header integral zero 0 stack zero 0

char_main$5:	; parameter int1$66#, offset 32
	mov byte [ebp + 32], 66

char_main$6:	; call function noellipse-noellipse character_test
	mov qword [ebp + 16], char_main$7
	mov [ebp + 24], ebp
	add ebp, 16
	jmp character_test

char_main$7:	; post call

char_main$8:	; call header integral zero 0 stack zero 0

char_main$9:	; parameter int1$49#, offset 32
	mov byte [ebp + 32], 49

char_main$10:	; call function noellipse-noellipse character_test
	mov qword [ebp + 16], char_main$11
	mov [ebp + 24], ebp
	add ebp, 16
	jmp character_test

char_main$11:	; post call

char_main$12:	; call header integral zero 0 stack zero 0

char_main$13:	; parameter int1$46#, offset 32
	mov byte [ebp + 32], 46

char_main$14:	; call function noellipse-noellipse character_test
	mov qword [ebp + 16], char_main$15
	mov [ebp + 24], ebp
	add ebp, 16
	jmp character_test

char_main$15:	; post call

char_main$16:	; call header integral zero 0 stack zero 0

char_main$17:	; parameter int1$10#, offset 32
	mov byte [ebp + 32], 10

char_main$18:	; call function noellipse-noellipse character_test
	mov qword [ebp + 16], char_main$19
	mov [ebp + 24], ebp
	add ebp, 16
	jmp character_test

char_main$19:	; post call

char_main$20:	; call header integral zero 0 stack zero 0

char_main$21:	; parameter int1$102#, offset 32
	mov byte [ebp + 32], 102

char_main$22:	; call function noellipse-noellipse character_test
	mov qword [ebp + 16], char_main$23
	mov [ebp + 24], ebp
	add ebp, 16
	jmp character_test

char_main$23:	; post call

char_main$24:	; call header integral zero 0 stack zero 0

char_main$25:	; parameter int1$103#, offset 32
	mov byte [ebp + 32], 103

char_main$26:	; call function noellipse-noellipse character_test
	mov qword [ebp + 16], char_main$27
	mov [ebp + 24], ebp
	add ebp, 16
	jmp character_test

char_main$27:	; post call

char_main$28:	; return
	mov rax, [ebp]
	mov edi, [ebp + 12]
	mov ebp, [ebp + 8]
	jmp rax

char_main$29:	; function end char_main

assert_test:	; n = int4$0#
	mov dword [ebp + 16], 0

assert_test$1:	; call header integral zero 0 stack zero 0

assert_test$2:	; parameter string_Please20write20a20number2028not20620or207293A20#, offset 36
	mov dword [ebp + 36], string_Please20write20a20number2028not20620or207293A20#

assert_test$3:	; call function noellipse-ellipse printf, extra 0
	mov qword [ebp + 20], assert_test$4
	mov [ebp + 28], ebp
	add ebp, 20
	mov edi, ebp
	jmp printf

assert_test$4:	; post call

assert_test$5:	; call header integral zero 0 stack zero 0

assert_test$6:	; parameter string_25i#, offset 36
	mov dword [ebp + 36], string_25i#

assert_test$7:	; £temporary131 = &n
	mov esi, ebp
	add esi, 16

assert_test$8:	; parameter £temporary131, offset 40
	mov [ebp + 40], esi

assert_test$9:	; call function noellipse-ellipse scanf, extra 4
	mov qword [ebp + 20], assert_test$10
	mov [ebp + 28], ebp
	add ebp, 20
	mov edi, ebp
	add edi, 4
	jmp scanf

assert_test$10:	; post call

assert_test$11:	; if n != int4$6# goto 23
	cmp dword [ebp + 16], 6
	jne assert_test$23

assert_test$12:	; call header integral zero 0 stack zero 0

assert_test$13:	; parameter stderr, offset 36
	mov eax, [stderr]
	mov [ebp + 36], eax

assert_test$14:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 40
	mov dword [ebp + 40], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

assert_test$15:	; parameter string_n20213D206#, offset 44
	mov dword [ebp + 44], string_n20213D206#

assert_test$16:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5CMain2Ec#, offset 48
	mov dword [ebp + 48], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5CMain2Ec#

assert_test$17:	; parameter int4$775#, offset 52
	mov dword [ebp + 52], 775

assert_test$18:	; call function noellipse-ellipse fprintf, extra 12
	mov qword [ebp + 20], assert_test$19
	mov [ebp + 28], ebp
	add ebp, 20
	mov edi, ebp
	add edi, 12
	jmp fprintf

assert_test$19:	; post call

assert_test$20:	; call header integral zero 0 stack zero 0

assert_test$21:	; call function noellipse-noellipse abort
	mov qword [ebp + 20], assert_test$22
	mov [ebp + 28], ebp
	add ebp, 20
	jmp abort

assert_test$22:	; post call

assert_test$23:	; call header integral zero 0 stack zero 0

assert_test$24:	; parameter n, offset 36
	mov eax, [ebp + 16]
	mov [ebp + 36], eax

assert_test$25:	; call function noellipse-noellipse assert_test2
	mov qword [ebp + 20], assert_test$26
	mov [ebp + 28], ebp
	add ebp, 20
	jmp assert_test2

assert_test$26:	; post call

assert_test$27:	; return
	mov rax, [ebp]
	mov edi, [ebp + 12]
	mov ebp, [ebp + 8]
	jmp rax

assert_test$28:	; function end assert_test

assert_test2:	; if n != int4$7# goto 12
	cmp dword [ebp + 16], 7
	jne assert_test2$12

assert_test2$1:	; call header integral zero 0 stack zero 0

assert_test2$2:	; parameter stderr, offset 36
	mov eax, [stderr]
	mov [ebp + 36], eax

assert_test2$3:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 40
	mov dword [ebp + 40], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

assert_test2$4:	; parameter string_n20213D207#, offset 44
	mov dword [ebp + 44], string_n20213D207#

assert_test2$5:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5CMain2Ec#, offset 48
	mov dword [ebp + 48], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5CMain2Ec#

assert_test2$6:	; parameter int4$780#, offset 52
	mov dword [ebp + 52], 780

assert_test2$7:	; call function noellipse-ellipse fprintf, extra 12
	mov qword [ebp + 20], assert_test2$8
	mov [ebp + 28], ebp
	add ebp, 20
	mov edi, ebp
	add edi, 12
	jmp fprintf

assert_test2$8:	; post call

assert_test2$9:	; call header integral zero 0 stack zero 0

assert_test2$10:	; call function noellipse-noellipse abort
	mov qword [ebp + 20], assert_test2$11
	mov [ebp + 28], ebp
	add ebp, 20
	jmp abort

assert_test2$11:	; post call

assert_test2$12:	; return
	mov rax, [ebp]
	mov edi, [ebp + 12]
	mov ebp, [ebp + 8]
	jmp rax

assert_test2$13:	; function end assert_test2
section .data
$StackTop:	times 65536 db 0

$IntegralStorage#:
	times 8 db 0

int4$16#:
	dd 16

int8$16#:
	dq 16

int8$4#:
	dq 4

int4$4#:
	dd 4

string_You20wrote20the20string202225s222E0A#:
	; init String
	db "You wrote the string ", 34, "%s", 34, ".", 10, 0

string_25s#:
	; init String
	db "%s", 0

string_Please20write20a20string3A20#:
	; init String
	db "Please write a string: ", 0

string_You20wrote20the20integer2025i2E0A#:
	; init String
	db "You wrote the integer %i.", 10, 0

string_25i#:
	; init String
	db "%i", 0

string_Please20write20an20integer3A20#:
	; init String
	db "Please write an integer: ", 0

string_You20wrote20the20character202725c272E0A#:
	; init String
	db "You wrote the character ", 39, "%c", 39, ".", 10, 0

string_25c#:
	; init String
	db "%c", 0

string_Please20write20a20character3A20#:
	; init String
	db "Please write a character: ", 0

string_3C25s3E203C25s3E0A#:
	; init String
	db "<%s> <%s>", 10, 0

string_World#:
	; init String
	db "World", 0

string_Hello#:
	; init String
	db "Hello", 0

int8$20#:
	; init Signed_Long_Int
	dq 20

int4$20#:
	; init Signed_Int
	dd 20

string_test22Etxt#:
	; init String
	db "test2.txt", 0

string_test12Etxt#:
	; init String
	db "test1.txt", 0

string_argc3A2025i0A#:
	; init String
	db "argc: %i", 10, 0

string_argv3A2025i0A#:
	; init String
	db "argv: %i", 10, 0

string_argv5B05D3A2025i0A#:
	; init String
	db "argv[0]: %i", 10, 0

int4$0#:
	; init Signed_Int
	dd 0

string_25i3A203C25s3E0A#:
	; init String
	db "%i: <%s>", 10, 0

string_0A#:
	; init String
	db 10, 0

string_3A20#:
	; init String
	db ": ", 0

string_25lf#:
	; init String
	db "%lf", 0

string_3C25f3E#:
	; init String
	db "<%f>", 0

float8$3.14#:
	; init Double
	dq 3.14

string_2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A#:
	; init String
	db "---------------------------------------------", 10, 0

float8$0#:
	; init Double
	dq 0.0

float8$2.71#:
	; init Double
	dq 2.71

string_Please20write20a20number2028not20620or207293A20#:
	; init String
	db "Please write a number (not 6 or 7): ", 0

int4$6#:
	; init Signed_Int
	dd 6

string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; init String
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

string_n20213D206#:
	; init String
	db "n != 6", 0

string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5CMain2Ec#:
	; init String
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\Main.c", 0

int4$775#:
	; init Signed_Int
	dd 775

int4$7#:
	; init Signed_Int
	dd 7

string_n20213D207#:
	; init String
	db "n != 7", 0

int4$780#:
	; init Signed_Int
	dd 780
