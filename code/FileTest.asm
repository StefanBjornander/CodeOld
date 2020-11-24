	global file_test

	extern fopen
	extern stderr
	extern fprintf
	extern abort
	extern feof
	extern fscanf
	extern sqrt
	extern printf
	extern fclose
	extern rename
	extern errno
	extern strerror
	extern remove
	extern fwrite
	extern fread
	extern malloc
	extern free
	extern fseek
	extern ftell
	extern fgetc
	extern fileexists
	extern $StackTop


section .data

string_in2Etxt#:
	; Initializer String in.txt
	db "in.txt", 0

section .data

string_r#:
	; Initializer String r
	db "r", 0

section .data

string_outX2Etxt#:
	; Initializer String outX.txt
	db "outX.txt", 0

section .data

string_w#:
	; Initializer String w
	db "w", 0

section .data

string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

string_25lf#:
	; Initializer String %lf
	db "%lf", 0

section .data

string_X12025f0A#:
	; Initializer String X1 %f\n
	db "X1 %f", 10, 0

section .data

string_X22025f0A#:
	; Initializer String X2 %f\n
	db "X2 %f", 10, 0

section .data

string_0A#:
	; Initializer String \n
	db 10, 0

section .data

string_outY2Etxt#:
	; Initializer String outY.txt
	db "outY.txt", 0

section .data

string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

string_size2025i0A#:
	; Initializer String size %i\n
	db "size %i", 10, 0

section .data

string_Y20size2025i0A#:
	; Initializer String Y size %i\n
	db "Y size %i", 10, 0

section .data

string_Y12025f0A#:
	; Initializer String Y1 %f\n
	db "Y1 %f", 10, 0

section .data

string_Y22025f0A#:
	; Initializer String Y2 %f\n
	db "Y2 %f", 10, 0

section .data

string_X#:
	; Initializer String X
	db "X", 0

section .data

string_Y#:
	; Initializer String Y
	db "Y", 0

section .data

string_Hello20X#:
	; Initializer String Hello X
	db "Hello X", 0

section .data

string_2225s2220has20been20renamed20to202225s222E0A#:
	; Initializer String "%s" has been renamed to "%s".\n
	db 34, "%s", 34, " has been renamed to ", 34, "%s", 34, ".", 10, 0

section .data

string_Error2025i3A2025s2E0A#:
	; Initializer String Error %i: %s.\n
	db "Error %i: %s.", 10, 0

section .data

string_Z#:
	; Initializer String Z
	db "Z", 0

section .data

string_Hello20Z#:
	; Initializer String Hello Z
	db "Hello Z", 0

section .data

string_2225s2220has20been20removed2E0A#:
	; Initializer String "%s" has been removed.\n
	db 34, "%s", 34, " has been removed.", 10, 0

section .data

string_PBook2Etxt#:
	; Initializer String PBook.txt
	db "PBook.txt", 0

section .data

string_0A252D24s20252D24s0A#:
	; Initializer String \n%-24s %-24s\n
	db 10, "%-24s %-24s", 10, 0

section .data

string_Name#:
	; Initializer String Name
	db "Name", 0

section .data

string_Phone#:
	; Initializer String Phone
	db "Phone", 0

section .data

string_252D24s20252D24s0A#:
	; Initializer String %-24s %-24s\n
	db "%-24s %-24s", 10, 0

section .data

string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#:
	; Initializer String ========================
	db "========================", 0

section .data

string_25s25s#:
	; Initializer String %s%s
	db "%s%s", 0

section .data

string_TestX2Ebin#:
	; Initializer String TestX.bin
	db "TestX.bin", 0

section .data

string_size13A2025i0A#:
	; Initializer String size1: %i\n
	db "size1: %i", 10, 0

section .data

string_index13A2025i3A20value2025f0A#:
	; Initializer String index1: %i: value %f\n
	db "index1: %i: value %f", 10, 0

section .data

string_TestY2Ebin#:
	; Initializer String TestY.bin
	db "TestY.bin", 0

section .data

string_index23A2025i3A20value2025f0A#:
	; Initializer String index2: %i: value %f\n
	db "index2: %i: value %f", 10, 0

section .data

string_index33A2025i3A20value2025f0A#:
	; Initializer String index3: %i: value %f\n
	db "index3: %i: value %f", 10, 0

section .data

string_size43A2025i20total2025i0A#:
	; Initializer String size4: %i total %i\n
	db "size4: %i total %i", 10, 0

section .data

string_p20213D20NULL#:
	; Initializer String p != NULL
	db "p != NULL", 0

section .data

string_malloc43A2025u2025u2025u0A#:
	; Initializer String malloc4: %u %u %u\n
	db "malloc4: %u %u %u", 10, 0

section .data

string_index43A2025i3A20value2025f0A#:
	; Initializer String index4: %i: value %f\n
	db "index4: %i: value %f", 10, 0

section .data

string_Adam20Bertilsson#:
	; Initializer String Adam Bertilsson
	db "Adam Bertilsson", 0

section .data

string_Bertil20Ceasarsson#:
	; Initializer String Bertil Ceasarsson
	db "Bertil Ceasarsson", 0

section .data

string_Ceasar20Davidsson#:
	; Initializer String Ceasar Davidsson
	db "Ceasar Davidsson", 0

section .data

string_Block2Ebin#:
	; Initializer String Block.bin
	db "Block.bin", 0

section .data

string_Name20203A2025s0A#:
	; Initializer String Name  : %s\n
	db "Name  : %s", 10, 0

section .data

string_Phone203A2025d0A#:
	; Initializer String Phone : %d\n
	db "Phone : %d", 10, 0

section .data

string_outx2Etxt#:
	; Initializer String outx.txt
	db "outx.txt", 0

section .data

string_ftell2025i0A#:
	; Initializer String ftell %i\n
	db "ftell %i", 10, 0

section .data

string_3C25c3E2025i2025i0A#:
	; Initializer String <%c> %i %i\n
	db "<%c> %i %i", 10, 0

section .data

string_fileexists20X3A2025s0A#:
	; Initializer String fileexists X: %s\n
	db "fileexists X: %s", 10, 0

section .data

string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

string_No#:
	; Initializer String No
	db "No", 0

section .data

string_fileexists20Y3A2025s0A#:
	; Initializer String fileexists Y: %s\n
	db "fileexists Y: %s", 10, 0

section .data

string_fileexists20Main2Easm3A2025s0A#:
	; Initializer String fileexists Main.asm: %s\n
	db "fileexists Main.asm: %s", 10, 0

section .data

string_Main2Easm#:
	; Initializer String Main.asm
	db "Main.asm", 0

section .data

string_fileexists20MainX2Easm3A2025s0A#:
	; Initializer String fileexists MainX.asm: %s\n
	db "fileexists MainX.asm: %s", 10, 0

section .data

string_MainX2Easm#:
	; Initializer String MainX.asm
	db "MainX.asm", 0

section .data

string_fileexists20Main2Ec3A2025s0A#:
	; Initializer String fileexists Main.c: %s\n
	db "fileexists Main.c: %s", 10, 0

section .data

string_Main2Ec#:
	; Initializer String Main.c
	db "Main.c", 0

section .data

string_fileexists20MainX2Ec3A2025s0A#:
	; Initializer String fileexists MainX.c: %s\n
	db "fileexists MainX.c: %s", 10, 0

section .data

string_MainX2Ec#:
	; Initializer String MainX.c
	db "MainX.c", 0

section .data

string_fileexists20File2Ec3A2025s0A#:
	; Initializer String fileexists File.c: %s\n
	db "fileexists File.c: %s", 10, 0

section .data

string_File2Ec#:
	; Initializer String File.c
	db "File.c", 0

section .data

string_fileexists20File2Ex3A2025s0A#:
	; Initializer String fileexists File.x: %s\n
	db "fileexists File.x: %s", 10, 0

section .data

string_File2Ex#:
	; Initializer String File.x
	db "File.x", 0

section .data

string_fileexists20File2Eh3A2025s0A#:
	; Initializer String fileexists File.h: %s\n
	db "fileexists File.h: %s", 10, 0

section .data

string_File2Eh#:
	; Initializer String File.h
	db "File.h", 0

section .data

string_fileexists20File2Ey3A2025s0A#:
	; Initializer String fileexists File.y: %s\n
	db "fileexists File.y: %s", 10, 0

section .data

string_File2Ey#:
	; Initializer String File.y
	db "File.y", 0

section .data

string_fileexists20File2Ep3A2025s0A#:
	; Initializer String fileexists File.p: %s\n
	db "fileexists File.p: %s", 10, 0

section .data

string_File2Ep#:
	; Initializer String File.p
	db "File.p", 0

section .data

string_fileexists20File2Ez3A2025s0A#:
	; Initializer String fileexists File.z: %s\n
	db "fileexists File.z: %s", 10, 0

section .data

string_File2Ez#:
	; Initializer String File.z
	db "File.z", 0

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .data

int4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

int8$8#:
	; Initializer Pointer 8
	dq 8

section .text

 file_test:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1:
	; Parameter 48 pointer "in.txt"
	mov qword [rbp + 48], string_in2Etxt#

 file_test$2:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], string_r#

 file_test$3:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$4:
	; PostCall 24

 file_test$5:
	; GetReturnValue £temporary3962

 file_test$6:
	; Assign inFilePtr £temporary3962
	mov [rbp + 24], rbx

 file_test$7:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$8:
	; Parameter 56 pointer "outX.txt"
	mov qword [rbp + 56], string_outX2Etxt#

 file_test$9:
	; Parameter 64 pointer "w"
	mov qword [rbp + 64], string_w#

 file_test$10:
	; Call 32 fopen 0
	mov qword [rbp + 32], file_test$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 file_test$11:
	; PostCall 32

 file_test$12:
	; GetReturnValue £temporary3963

 file_test$13:
	; Assign outFilePtr £temporary3963
	mov [rbp + 32], rbx

 file_test$14:
	; NotEqual 26 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$26

 file_test$15:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$16:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$17:
	; Parameter 72 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 72], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$18:
	; Parameter 80 pointer "inFilePtr != NULL"
	mov qword [rbp + 80], string_inFilePtr20213D20NULL#

 file_test$19:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$20:
	; Parameter 96 signedint 14
	mov dword [rbp + 96], 14

 file_test$21:
	; Call 40 fprintf 20
	mov qword [rbp + 40], file_test$22
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$22:
	; PostCall 40

 file_test$23:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$24:
	; Call 40 abort 0
	mov qword [rbp + 40], file_test$25
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$25:
	; PostCall 40

 file_test$26:
	; NotEqual 38 outFilePtr 0
	cmp qword [rbp + 32], 0
	jne file_test$38

 file_test$27:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$28:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$29:
	; Parameter 72 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 72], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$30:
	; Parameter 80 pointer "outFilePtr != NULL"
	mov qword [rbp + 80], string_outFilePtr20213D20NULL#

 file_test$31:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$32:
	; Parameter 96 signedint 15
	mov dword [rbp + 96], 15

 file_test$33:
	; Call 40 fprintf 20
	mov qword [rbp + 40], file_test$34
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$34:
	; PostCall 40

 file_test$35:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$36:
	; Call 40 abort 0
	mov qword [rbp + 40], file_test$37
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$37:
	; PostCall 40

 file_test$38:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$39:
	; Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$40:
	; Call 40 feof 0
	mov qword [rbp + 40], file_test$41
	mov [rbp + 48], rbp
	add rbp, 40
	jmp feof

 file_test$41:
	; PostCall 40

 file_test$42:
	; GetReturnValue £temporary3972

 file_test$43:
	; NotEqual 75 £temporary3972 0
	cmp ebx, 0
	jne file_test$75

 file_test$44:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$45:
	; Parameter 72 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$46:
	; Parameter 80 pointer "%lf"
	mov qword [rbp + 80], string_25lf#

 file_test$47:
	; Address £temporary3975 value
	mov rsi, rbp
	add rsi, 40

 file_test$48:
	; Parameter 88 pointer £temporary3975
	mov [rbp + 88], rsi

 file_test$49:
	; Call 48 fscanf 8
	mov qword [rbp + 48], file_test$50
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 file_test$50:
	; PostCall 48

 file_test$51:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$52:
	; Parameter 72 pointer "X1 %f\n"
	mov qword [rbp + 72], string_X12025f0A#

 file_test$53:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$54:
	; PushFloat value
	fld qword [rbp + 40]

 file_test$55:
	; Parameter 104 double value
	fstp qword [rbp + 104]

 file_test$56:
	; Call 80 sqrt 0
	mov qword [rbp + 80], file_test$57
	mov [rbp + 88], rbp
	add rbp, 80
	jmp sqrt

 file_test$57:
	; PostCall 80

 file_test$58:
	; GetReturnValue £temporary3977

 file_test$59:
	; Parameter 80 double £temporary3977
	fstp qword [rbp + 80]

 file_test$60:
	; Call 48 printf 8
	mov qword [rbp + 48], file_test$61
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$61:
	; PostCall 48

 file_test$62:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$63:
	; Parameter 72 pointer outFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 file_test$64:
	; Parameter 80 pointer "X2 %f\n"
	mov qword [rbp + 80], string_X22025f0A#

 file_test$65:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$66:
	; PushFloat value
	fld qword [rbp + 40]

 file_test$67:
	; Parameter 112 double value
	fstp qword [rbp + 112]

 file_test$68:
	; Call 88 sqrt 0
	mov qword [rbp + 88], file_test$69
	mov [rbp + 96], rbp
	add rbp, 88
	jmp sqrt

 file_test$69:
	; PostCall 88

 file_test$70:
	; GetReturnValue £temporary3979

 file_test$71:
	; Parameter 88 double £temporary3979
	fstp qword [rbp + 88]

 file_test$72:
	; Call 48 fprintf 8
	mov qword [rbp + 48], file_test$73
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 8
	jmp fprintf

 file_test$73:
	; PostCall 48

 file_test$74:
	; Goto 38
	jmp file_test$38

 file_test$75:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$76:
	; Parameter 64 pointer "\n"
	mov qword [rbp + 64], string_0A#

 file_test$77:
	; Call 40 printf 0
	mov qword [rbp + 40], file_test$78
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 file_test$78:
	; PostCall 40

 file_test$79:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$80:
	; Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$81:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$82
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$82:
	; PostCall 40

 file_test$83:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$84:
	; Parameter 64 pointer outFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 file_test$85:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$86
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$86:
	; PostCall 40

 file_test$87:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$88:
	; Parameter 48 pointer "in.txt"
	mov qword [rbp + 48], string_in2Etxt#

 file_test$89:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], string_r#

 file_test$90:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$91
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$91:
	; PostCall 24

 file_test$92:
	; GetReturnValue £temporary3984

 file_test$93:
	; Assign inFilePtr £temporary3984
	mov [rbp + 24], rbx

 file_test$94:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$95:
	; Parameter 56 pointer "outY.txt"
	mov qword [rbp + 56], string_outY2Etxt#

 file_test$96:
	; Parameter 64 pointer "w"
	mov qword [rbp + 64], string_w#

 file_test$97:
	; Call 32 fopen 0
	mov qword [rbp + 32], file_test$98
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 file_test$98:
	; PostCall 32

 file_test$99:
	; GetReturnValue £temporary3985

 file_test$100:
	; Assign outFilePtr £temporary3985
	mov [rbp + 32], rbx

 file_test$101:
	; NotEqual 113 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$113

 file_test$102:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$103:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$104:
	; Parameter 72 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 72], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$105:
	; Parameter 80 pointer "inFilePtr != NULL"
	mov qword [rbp + 80], string_inFilePtr20213D20NULL#

 file_test$106:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$107:
	; Parameter 96 signedint 34
	mov dword [rbp + 96], 34

 file_test$108:
	; Call 40 fprintf 20
	mov qword [rbp + 40], file_test$109
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$109:
	; PostCall 40

 file_test$110:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$111:
	; Call 40 abort 0
	mov qword [rbp + 40], file_test$112
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$112:
	; PostCall 40

 file_test$113:
	; NotEqual 125 outFilePtr 0
	cmp qword [rbp + 32], 0
	jne file_test$125

 file_test$114:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$115:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$116:
	; Parameter 72 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 72], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$117:
	; Parameter 80 pointer "outFilePtr != NULL"
	mov qword [rbp + 80], string_outFilePtr20213D20NULL#

 file_test$118:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$119:
	; Parameter 96 signedint 35
	mov dword [rbp + 96], 35

 file_test$120:
	; Call 40 fprintf 20
	mov qword [rbp + 40], file_test$121
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$121:
	; PostCall 40

 file_test$122:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$123:
	; Call 40 abort 0
	mov qword [rbp + 40], file_test$124
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$124:
	; PostCall 40

 file_test$125:
	; Assign size 0
	mov dword [rbp + 40], 0

 file_test$126:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$127:
	; Parameter 72 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$128:
	; Parameter 80 pointer "%i"
	mov qword [rbp + 80], string_25i#

 file_test$129:
	; Address £temporary3994 size
	mov rsi, rbp
	add rsi, 40

 file_test$130:
	; Parameter 88 pointer £temporary3994
	mov [rbp + 88], rsi

 file_test$131:
	; Call 48 fscanf 8
	mov qword [rbp + 48], file_test$132
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 file_test$132:
	; PostCall 48

 file_test$133:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$134:
	; Parameter 72 pointer "size %i\n"
	mov qword [rbp + 72], string_size2025i0A#

 file_test$135:
	; Parameter 80 signedint size
	mov eax, [rbp + 40]
	mov [rbp + 80], eax

 file_test$136:
	; Call 48 printf 4
	mov qword [rbp + 48], file_test$137
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$137:
	; PostCall 48

 file_test$138:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$139:
	; Parameter 72 pointer outFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 file_test$140:
	; Parameter 80 pointer "Y size %i\n"
	mov qword [rbp + 80], string_Y20size2025i0A#

 file_test$141:
	; Parameter 88 signedint size
	mov eax, [rbp + 40]
	mov [rbp + 88], eax

 file_test$142:
	; Call 48 fprintf 4
	mov qword [rbp + 48], file_test$143
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 4
	jmp fprintf

 file_test$143:
	; PostCall 48

 file_test$144:
	; Assign index 0
	mov dword [rbp + 44], 0

 file_test$145:
	; SignedGreaterThanEqual 178 index size
	mov eax, [rbp + 40]
	cmp [rbp + 44], eax
	jge file_test$178

 file_test$146:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$147:
	; Parameter 80 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$148:
	; Parameter 88 pointer "%lf"
	mov qword [rbp + 88], string_25lf#

 file_test$149:
	; Address £temporary4000 value
	mov rsi, rbp
	add rsi, 48

 file_test$150:
	; Parameter 96 pointer £temporary4000
	mov [rbp + 96], rsi

 file_test$151:
	; Call 56 fscanf 8
	mov qword [rbp + 56], file_test$152
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 file_test$152:
	; PostCall 56

 file_test$153:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$154:
	; Parameter 80 pointer "Y1 %f\n"
	mov qword [rbp + 80], string_Y12025f0A#

 file_test$155:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$156:
	; PushFloat value
	fld qword [rbp + 48]

 file_test$157:
	; Parameter 112 double value
	fstp qword [rbp + 112]

 file_test$158:
	; Call 88 sqrt 0
	mov qword [rbp + 88], file_test$159
	mov [rbp + 96], rbp
	add rbp, 88
	jmp sqrt

 file_test$159:
	; PostCall 88

 file_test$160:
	; GetReturnValue £temporary4002

 file_test$161:
	; Parameter 88 double £temporary4002
	fstp qword [rbp + 88]

 file_test$162:
	; Call 56 printf 8
	mov qword [rbp + 56], file_test$163
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$163:
	; PostCall 56

 file_test$164:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$165:
	; Parameter 80 pointer outFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 file_test$166:
	; Parameter 88 pointer "Y2 %f\n"
	mov qword [rbp + 88], string_Y22025f0A#

 file_test$167:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$168:
	; PushFloat value
	fld qword [rbp + 48]

 file_test$169:
	; Parameter 120 double value
	fstp qword [rbp + 120]

 file_test$170:
	; Call 96 sqrt 0
	mov qword [rbp + 96], file_test$171
	mov [rbp + 104], rbp
	add rbp, 96
	jmp sqrt

 file_test$171:
	; PostCall 96

 file_test$172:
	; GetReturnValue £temporary4004

 file_test$173:
	; Parameter 96 double £temporary4004
	fstp qword [rbp + 96]

 file_test$174:
	; Call 56 fprintf 8
	mov qword [rbp + 56], file_test$175
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 8
	jmp fprintf

 file_test$175:
	; PostCall 56

 file_test$176:
	; BinaryAdd index index 1
	inc dword [rbp + 44]

 file_test$177:
	; Goto 145
	jmp file_test$145

 file_test$178:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$179:
	; Parameter 72 pointer "\n"
	mov qword [rbp + 72], string_0A#

 file_test$180:
	; Call 48 printf 0
	mov qword [rbp + 48], file_test$181
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp printf

 file_test$181:
	; PostCall 48

 file_test$182:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$183:
	; Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$184:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$185
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$185:
	; PostCall 40

 file_test$186:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$187:
	; Parameter 64 pointer outFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 file_test$188:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$189
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$189:
	; PostCall 40

 file_test$190:
	; Assign sourceFilePtr "X"
	mov qword [rbp + 24], string_X#

 file_test$191:
	; Assign targetFilePtr "Y"
	mov qword [rbp + 32], string_Y#

 file_test$192:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$193:
	; Parameter 64 pointer sourceFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$194:
	; Parameter 72 pointer "w"
	mov qword [rbp + 72], string_w#

 file_test$195:
	; Call 40 fopen 0
	mov qword [rbp + 40], file_test$196
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

 file_test$196:
	; PostCall 40

 file_test$197:
	; GetReturnValue £temporary4009

 file_test$198:
	; Assign filePtr £temporary4009
	mov [rbp + 40], rbx

 file_test$199:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$200:
	; Parameter 72 pointer filePtr
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

 file_test$201:
	; Parameter 80 pointer "Hello X"
	mov qword [rbp + 80], string_Hello20X#

 file_test$202:
	; Call 48 fprintf 0
	mov qword [rbp + 48], file_test$203
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp fprintf

 file_test$203:
	; PostCall 48

 file_test$204:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$205:
	; Parameter 72 pointer filePtr
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

 file_test$206:
	; Call 48 fclose 0
	mov qword [rbp + 48], file_test$207
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fclose

 file_test$207:
	; PostCall 48

 file_test$208:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$209:
	; Parameter 72 pointer sourceFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$210:
	; Parameter 80 pointer targetFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 file_test$211:
	; Call 48 rename 0
	mov qword [rbp + 48], file_test$212
	mov [rbp + 56], rbp
	add rbp, 48
	jmp rename

 file_test$212:
	; PostCall 48

 file_test$213:
	; GetReturnValue £temporary4012

 file_test$214:
	; NotEqual 222 £temporary4012 0
	cmp ebx, 0
	jne file_test$222

 file_test$215:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$216:
	; Parameter 72 pointer ""%s" has been renamed to "%s".\n"
	mov qword [rbp + 72], string_2225s2220has20been20renamed20to202225s222E0A#

 file_test$217:
	; Parameter 80 pointer sourceFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$218:
	; Parameter 88 pointer targetFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 88], rax

 file_test$219:
	; Call 48 printf 16
	mov qword [rbp + 48], file_test$220
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$220:
	; PostCall 48

 file_test$221:
	; Goto 233
	jmp file_test$233

 file_test$222:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$223:
	; Parameter 72 pointer "Error %i: %s.\n"
	mov qword [rbp + 72], string_Error2025i3A2025s2E0A#

 file_test$224:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 file_test$225:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$226:
	; Parameter 108 signedint errno
	mov eax, [errno]
	mov [rbp + 108], eax

 file_test$227:
	; Call 84 strerror 0
	mov qword [rbp + 84], file_test$228
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 file_test$228:
	; PostCall 84

 file_test$229:
	; GetReturnValue £temporary4015

 file_test$230:
	; Parameter 84 pointer £temporary4015
	mov [rbp + 84], rbx

 file_test$231:
	; Call 48 printf 12
	mov qword [rbp + 48], file_test$232
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$232:
	; PostCall 48

 file_test$233:
	; Assign targetFilePtr "Z"
	mov qword [rbp + 24], string_Z#

 file_test$234:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$235:
	; Parameter 56 pointer "Z"
	mov qword [rbp + 56], string_Z#

 file_test$236:
	; Parameter 64 pointer "w"
	mov qword [rbp + 64], string_w#

 file_test$237:
	; Call 32 fopen 0
	mov qword [rbp + 32], file_test$238
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 file_test$238:
	; PostCall 32

 file_test$239:
	; GetReturnValue £temporary4017

 file_test$240:
	; Assign filePtr £temporary4017
	mov [rbp + 32], rbx

 file_test$241:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$242:
	; Parameter 64 pointer filePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 file_test$243:
	; Parameter 72 pointer "Hello Z"
	mov qword [rbp + 72], string_Hello20Z#

 file_test$244:
	; Call 40 fprintf 0
	mov qword [rbp + 40], file_test$245
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp fprintf

 file_test$245:
	; PostCall 40

 file_test$246:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$247:
	; Parameter 64 pointer filePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 file_test$248:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$249
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$249:
	; PostCall 40

 file_test$250:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$251:
	; Parameter 64 pointer targetFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$252:
	; Call 40 remove 0
	mov qword [rbp + 40], file_test$253
	mov [rbp + 48], rbp
	add rbp, 40
	jmp remove

 file_test$253:
	; PostCall 40

 file_test$254:
	; GetReturnValue £temporary4020

 file_test$255:
	; NotEqual 262 £temporary4020 0
	cmp ebx, 0
	jne file_test$262

 file_test$256:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$257:
	; Parameter 64 pointer ""%s" has been removed.\n"
	mov qword [rbp + 64], string_2225s2220has20been20removed2E0A#

 file_test$258:
	; Parameter 72 pointer targetFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$259:
	; Call 40 printf 8
	mov qword [rbp + 40], file_test$260
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$260:
	; PostCall 40

 file_test$261:
	; Goto 273
	jmp file_test$273

 file_test$262:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$263:
	; Parameter 64 pointer "Error %i: %s.\n"
	mov qword [rbp + 64], string_Error2025i3A2025s2E0A#

 file_test$264:
	; Parameter 72 signedint errno
	mov eax, [errno]
	mov [rbp + 72], eax

 file_test$265:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$266:
	; Parameter 100 signedint errno
	mov eax, [errno]
	mov [rbp + 100], eax

 file_test$267:
	; Call 76 strerror 0
	mov qword [rbp + 76], file_test$268
	mov [rbp + 84], rbp
	add rbp, 76
	jmp strerror

 file_test$268:
	; PostCall 76

 file_test$269:
	; GetReturnValue £temporary4023

 file_test$270:
	; Parameter 76 pointer £temporary4023
	mov [rbp + 76], rbx

 file_test$271:
	; Call 40 printf 12
	mov qword [rbp + 40], file_test$272
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$272:
	; PostCall 40

 file_test$273:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$274:
	; Parameter 48 pointer "PBook.txt"
	mov qword [rbp + 48], string_PBook2Etxt#

 file_test$275:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], string_r#

 file_test$276:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$277
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$277:
	; PostCall 24

 file_test$278:
	; GetReturnValue £temporary4025

 file_test$279:
	; Assign inFilePtr £temporary4025
	mov [rbp + 24], rbx

 file_test$280:
	; NotEqual 292 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$292

 file_test$281:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$282:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$283:
	; Parameter 64 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 64], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$284:
	; Parameter 72 pointer "inFilePtr != NULL"
	mov qword [rbp + 72], string_inFilePtr20213D20NULL#

 file_test$285:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$286:
	; Parameter 88 signedint 88
	mov dword [rbp + 88], 88

 file_test$287:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$288
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$288:
	; PostCall 32

 file_test$289:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$290:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$291
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$291:
	; PostCall 32

 file_test$292:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$293:
	; Parameter 56 pointer "\n%-24s %-24s\n"
	mov qword [rbp + 56], string_0A252D24s20252D24s0A#

 file_test$294:
	; Parameter 64 pointer "Name"
	mov qword [rbp + 64], string_Name#

 file_test$295:
	; Parameter 72 pointer "Phone"
	mov qword [rbp + 72], string_Phone#

 file_test$296:
	; Call 32 printf 16
	mov qword [rbp + 32], file_test$297
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$297:
	; PostCall 32

 file_test$298:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$299:
	; Parameter 56 pointer "%-24s %-24s\n"
	mov qword [rbp + 56], string_252D24s20252D24s0A#

 file_test$300:
	; Parameter 64 pointer "========================"
	mov qword [rbp + 64], string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#

 file_test$301:
	; Parameter 72 pointer "========================"
	mov qword [rbp + 72], string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#

 file_test$302:
	; Call 32 printf 16
	mov qword [rbp + 32], file_test$303
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$303:
	; PostCall 32

 file_test$304:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$305:
	; Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$306:
	; Parameter 72 pointer "%i"
	mov qword [rbp + 72], string_25i#

 file_test$307:
	; Address £temporary4032 size
	mov rsi, rbp
	add rsi, 36

 file_test$308:
	; Parameter 80 pointer £temporary4032
	mov [rbp + 80], rsi

 file_test$309:
	; Call 40 fscanf 8
	mov qword [rbp + 40], file_test$310
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 file_test$310:
	; PostCall 40

 file_test$311:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$312:
	; Parameter 64 pointer "size %i\n"
	mov qword [rbp + 64], string_size2025i0A#

 file_test$313:
	; Parameter 72 signedint size
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

 file_test$314:
	; Call 40 printf 4
	mov qword [rbp + 40], file_test$315
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$315:
	; PostCall 40

 file_test$316:
	; Assign count 0
	mov dword [rbp + 32], 0

 file_test$317:
	; SignedGreaterThanEqual 333 count size
	mov eax, [rbp + 36]
	cmp [rbp + 32], eax
	jge file_test$333

 file_test$318:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$319:
	; Parameter 104 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 104], rax

 file_test$320:
	; Parameter 112 pointer "%s%s"
	mov qword [rbp + 112], string_25s25s#

 file_test$321:
	; Parameter 120 pointer name
	mov [rbp + 120], rbp
	add qword [rbp + 120], 40

 file_test$322:
	; Parameter 128 pointer phone
	mov [rbp + 128], rbp
	add qword [rbp + 128], 60

 file_test$323:
	; Call 80 fscanf 16
	mov qword [rbp + 80], file_test$324
	mov [rbp + 88], rbp
	add rbp, 80
	mov rdi, rbp
	add rdi, 16
	jmp fscanf

 file_test$324:
	; PostCall 80

 file_test$325:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$326:
	; Parameter 104 pointer "%-24s %-24s\n"
	mov qword [rbp + 104], string_252D24s20252D24s0A#

 file_test$327:
	; Parameter 112 pointer name
	mov [rbp + 112], rbp
	add qword [rbp + 112], 40

 file_test$328:
	; Parameter 120 pointer phone
	mov [rbp + 120], rbp
	add qword [rbp + 120], 60

 file_test$329:
	; Call 80 printf 16
	mov qword [rbp + 80], file_test$330
	mov [rbp + 88], rbp
	add rbp, 80
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$330:
	; PostCall 80

 file_test$331:
	; BinaryAdd count count 1
	inc dword [rbp + 32]

 file_test$332:
	; Goto 317
	jmp file_test$317

 file_test$333:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$334:
	; Parameter 56 pointer "\n"
	mov qword [rbp + 56], string_0A#

 file_test$335:
	; Call 32 printf 0
	mov qword [rbp + 32], file_test$336
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 file_test$336:
	; PostCall 32

 file_test$337:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$338:
	; Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$339:
	; Call 32 fclose 0
	mov qword [rbp + 32], file_test$340
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$340:
	; PostCall 32

 file_test$341:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$342:
	; Parameter 48 pointer "TestX.bin"
	mov qword [rbp + 48], string_TestX2Ebin#

 file_test$343:
	; Parameter 56 pointer "w"
	mov qword [rbp + 56], string_w#

 file_test$344:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$345
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$345:
	; PostCall 24

 file_test$346:
	; GetReturnValue £temporary4041

 file_test$347:
	; Assign outFilePtr £temporary4041
	mov [rbp + 24], rbx

 file_test$348:
	; NotEqual 360 outFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$360

 file_test$349:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$350:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$351:
	; Parameter 64 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 64], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$352:
	; Parameter 72 pointer "outFilePtr != NULL"
	mov qword [rbp + 72], string_outFilePtr20213D20NULL#

 file_test$353:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$354:
	; Parameter 88 signedint 140
	mov dword [rbp + 88], 140

 file_test$355:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$356
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$356:
	; PostCall 32

 file_test$357:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$358:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$359
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$359:
	; PostCall 32

 file_test$360:
	; Assign size 10
	mov dword [rbp + 32], 10

 file_test$361:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$362:
	; Address £temporary4046 size
	mov rsi, rbp
	add rsi, 32

 file_test$363:
	; Parameter 64 pointer £temporary4046
	mov [rbp + 64], rsi

 file_test$364:
	; Parameter 72 signedint 4
	mov dword [rbp + 72], 4

 file_test$365:
	; Parameter 76 signedint 1
	mov dword [rbp + 76], 1

 file_test$366:
	; Parameter 80 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$367:
	; Call 40 fwrite 0
	mov qword [rbp + 40], file_test$368
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fwrite

 file_test$368:
	; PostCall 40

 file_test$369:
	; Assign index 0
	mov dword [rbp + 36], 0

 file_test$370:
	; SignedGreaterThanEqual 384 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$384

 file_test$371:
	; SignedMultiply £temporary4050 index index
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [rbp + 36]

 file_test$372:
	; IntegralToFloating £temporary4051 £temporary4050
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 file_test$373:
	; PopFloat value
	fstp qword [rbp + 40]

 file_test$374:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$375:
	; Address £temporary4052 value
	mov rsi, rbp
	add rsi, 40

 file_test$376:
	; Parameter 72 pointer £temporary4052
	mov [rbp + 72], rsi

 file_test$377:
	; Parameter 80 signedint 8
	mov dword [rbp + 80], 8

 file_test$378:
	; Parameter 84 signedint 1
	mov dword [rbp + 84], 1

 file_test$379:
	; Parameter 88 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 file_test$380:
	; Call 48 fwrite 0
	mov qword [rbp + 48], file_test$381
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fwrite

 file_test$381:
	; PostCall 48

 file_test$382:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 file_test$383:
	; Goto 370
	jmp file_test$370

 file_test$384:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$385:
	; Parameter 64 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$386:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$387
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$387:
	; PostCall 40

 file_test$388:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$389:
	; Parameter 48 pointer "TestX.bin"
	mov qword [rbp + 48], string_TestX2Ebin#

 file_test$390:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], string_r#

 file_test$391:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$392
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$392:
	; PostCall 24

 file_test$393:
	; GetReturnValue £temporary4055

 file_test$394:
	; Assign inFilePtr £temporary4055
	mov [rbp + 24], rbx

 file_test$395:
	; NotEqual 407 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$407

 file_test$396:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$397:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$398:
	; Parameter 72 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 72], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$399:
	; Parameter 80 pointer "inFilePtr != NULL"
	mov qword [rbp + 80], string_inFilePtr20213D20NULL#

 file_test$400:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$401:
	; Parameter 96 signedint 157
	mov dword [rbp + 96], 157

 file_test$402:
	; Call 40 fprintf 20
	mov qword [rbp + 40], file_test$403
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$403:
	; PostCall 40

 file_test$404:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$405:
	; Call 40 abort 0
	mov qword [rbp + 40], file_test$406
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$406:
	; PostCall 40

 file_test$407:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$408:
	; Address £temporary4060 size
	mov rsi, rbp
	add rsi, 32

 file_test$409:
	; Parameter 64 pointer £temporary4060
	mov [rbp + 64], rsi

 file_test$410:
	; Parameter 72 signedint 4
	mov dword [rbp + 72], 4

 file_test$411:
	; Parameter 76 signedint 1
	mov dword [rbp + 76], 1

 file_test$412:
	; Parameter 80 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$413:
	; Call 40 fread 0
	mov qword [rbp + 40], file_test$414
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fread

 file_test$414:
	; PostCall 40

 file_test$415:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$416:
	; Parameter 64 pointer "size1: %i\n"
	mov qword [rbp + 64], string_size13A2025i0A#

 file_test$417:
	; Parameter 72 signedint size
	mov eax, [rbp + 32]
	mov [rbp + 72], eax

 file_test$418:
	; Call 40 printf 4
	mov qword [rbp + 40], file_test$419
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$419:
	; PostCall 40

 file_test$420:
	; Assign index 0
	mov dword [rbp + 36], 0

 file_test$421:
	; SignedGreaterThanEqual 439 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$439

 file_test$422:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$423:
	; Address £temporary4065 value
	mov rsi, rbp
	add rsi, 40

 file_test$424:
	; Parameter 72 pointer £temporary4065
	mov [rbp + 72], rsi

 file_test$425:
	; Parameter 80 signedint 8
	mov dword [rbp + 80], 8

 file_test$426:
	; Parameter 84 signedint 1
	mov dword [rbp + 84], 1

 file_test$427:
	; Parameter 88 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 file_test$428:
	; Call 48 fread 0
	mov qword [rbp + 48], file_test$429
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fread

 file_test$429:
	; PostCall 48

 file_test$430:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$431:
	; Parameter 72 pointer "index1: %i: value %f\n"
	mov qword [rbp + 72], string_index13A2025i3A20value2025f0A#

 file_test$432:
	; Parameter 80 signedint index
	mov eax, [rbp + 36]
	mov [rbp + 80], eax

 file_test$433:
	; PushFloat value
	fld qword [rbp + 40]

 file_test$434:
	; Parameter 84 double value
	fstp qword [rbp + 84]

 file_test$435:
	; Call 48 printf 12
	mov qword [rbp + 48], file_test$436
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$436:
	; PostCall 48

 file_test$437:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 file_test$438:
	; Goto 421
	jmp file_test$421

 file_test$439:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$440:
	; Parameter 64 pointer "\n"
	mov qword [rbp + 64], string_0A#

 file_test$441:
	; Call 40 printf 0
	mov qword [rbp + 40], file_test$442
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 file_test$442:
	; PostCall 40

 file_test$443:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$444:
	; Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$445:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$446
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$446:
	; PostCall 40

 file_test$447:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$448:
	; Parameter 48 pointer "TestY.bin"
	mov qword [rbp + 48], string_TestY2Ebin#

 file_test$449:
	; Parameter 56 pointer "w"
	mov qword [rbp + 56], string_w#

 file_test$450:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$451
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$451:
	; PostCall 24

 file_test$452:
	; GetReturnValue £temporary4070

 file_test$453:
	; Assign outFilePtr £temporary4070
	mov [rbp + 24], rbx

 file_test$454:
	; NotEqual 466 outFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$466

 file_test$455:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$456:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$457:
	; Parameter 64 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 64], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$458:
	; Parameter 72 pointer "outFilePtr != NULL"
	mov qword [rbp + 72], string_outFilePtr20213D20NULL#

 file_test$459:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$460:
	; Parameter 88 signedint 172
	mov dword [rbp + 88], 172

 file_test$461:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$462
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$462:
	; PostCall 32

 file_test$463:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$464:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$465
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$465:
	; PostCall 32

 file_test$466:
	; Assign size 10
	mov dword [rbp + 32], 10

 file_test$467:
	; Assign index 0
	mov dword [rbp + 36], 0

 file_test$468:
	; SignedGreaterThanEqual 482 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$482

 file_test$469:
	; SignedMultiply £temporary4077 index index
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [rbp + 36]

 file_test$470:
	; IntegralToFloating £temporary4078 £temporary4077
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 file_test$471:
	; PopFloat value
	fstp qword [rbp + 40]

 file_test$472:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$473:
	; Address £temporary4079 value
	mov rsi, rbp
	add rsi, 40

 file_test$474:
	; Parameter 72 pointer £temporary4079
	mov [rbp + 72], rsi

 file_test$475:
	; Parameter 80 signedint 8
	mov dword [rbp + 80], 8

 file_test$476:
	; Parameter 84 signedint 1
	mov dword [rbp + 84], 1

 file_test$477:
	; Parameter 88 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 file_test$478:
	; Call 48 fwrite 0
	mov qword [rbp + 48], file_test$479
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fwrite

 file_test$479:
	; PostCall 48

 file_test$480:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 file_test$481:
	; Goto 468
	jmp file_test$468

 file_test$482:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$483:
	; Parameter 64 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$484:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$485
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$485:
	; PostCall 40

 file_test$486:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$487:
	; Parameter 48 pointer "TestY.bin"
	mov qword [rbp + 48], string_TestY2Ebin#

 file_test$488:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], string_r#

 file_test$489:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$490
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$490:
	; PostCall 24

 file_test$491:
	; GetReturnValue £temporary4082

 file_test$492:
	; Assign inFilePtr £temporary4082
	mov [rbp + 24], rbx

 file_test$493:
	; NotEqual 505 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$505

 file_test$494:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$495:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$496:
	; Parameter 64 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 64], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$497:
	; Parameter 72 pointer "inFilePtr != NULL"
	mov qword [rbp + 72], string_inFilePtr20213D20NULL#

 file_test$498:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$499:
	; Parameter 88 signedint 186
	mov dword [rbp + 88], 186

 file_test$500:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$501
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$501:
	; PostCall 32

 file_test$502:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$503:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$504
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$504:
	; PostCall 32

 file_test$505:
	; Assign index 0
	mov dword [rbp + 32], 0

 file_test$506:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$507:
	; Address £temporary4087 value
	mov rsi, rbp
	add rsi, 36

 file_test$508:
	; Parameter 68 pointer £temporary4087
	mov [rbp + 68], rsi

 file_test$509:
	; Parameter 76 signedint 8
	mov dword [rbp + 76], 8

 file_test$510:
	; Parameter 80 signedint 1
	mov dword [rbp + 80], 1

 file_test$511:
	; Parameter 84 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 file_test$512:
	; Call 44 fread 0
	mov qword [rbp + 44], file_test$513
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fread

 file_test$513:
	; PostCall 44

 file_test$514:
	; GetReturnValue £temporary4088

 file_test$515:
	; SignedLessThanEqual 526 £temporary4088 0
	cmp ebx, 0
	jle file_test$526

 file_test$516:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$517:
	; Parameter 68 pointer "index2: %i: value %f\n"
	mov qword [rbp + 68], string_index23A2025i3A20value2025f0A#

 file_test$518:
	; Assign £temporary4090 index
	mov eax, [rbp + 32]

 file_test$519:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 file_test$520:
	; Parameter 76 signedint £temporary4090
	mov [rbp + 76], eax

 file_test$521:
	; PushFloat value
	fld qword [rbp + 36]

 file_test$522:
	; Parameter 80 double value
	fstp qword [rbp + 80]

 file_test$523:
	; Call 44 printf 12
	mov qword [rbp + 44], file_test$524
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$524:
	; PostCall 44

 file_test$525:
	; Goto 506
	jmp file_test$506

 file_test$526:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$527:
	; Parameter 56 pointer "\n"
	mov qword [rbp + 56], string_0A#

 file_test$528:
	; Call 32 printf 0
	mov qword [rbp + 32], file_test$529
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 file_test$529:
	; PostCall 32

 file_test$530:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$531:
	; Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$532:
	; Call 32 fclose 0
	mov qword [rbp + 32], file_test$533
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$533:
	; PostCall 32

 file_test$534:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$535:
	; Parameter 48 pointer "TestY.bin"
	mov qword [rbp + 48], string_TestY2Ebin#

 file_test$536:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], string_r#

 file_test$537:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$538
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$538:
	; PostCall 24

 file_test$539:
	; GetReturnValue £temporary4094

 file_test$540:
	; Assign inFilePtr £temporary4094
	mov [rbp + 24], rbx

 file_test$541:
	; NotEqual 553 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$553

 file_test$542:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$543:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$544:
	; Parameter 64 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 64], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$545:
	; Parameter 72 pointer "inFilePtr != NULL"
	mov qword [rbp + 72], string_inFilePtr20213D20NULL#

 file_test$546:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$547:
	; Parameter 88 signedint 201
	mov dword [rbp + 88], 201

 file_test$548:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$549
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$549:
	; PostCall 32

 file_test$550:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$551:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$552
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$552:
	; PostCall 32

 file_test$553:
	; Assign index 0
	mov dword [rbp + 32], 0

 file_test$554:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$555:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$556:
	; Call 36 feof 0
	mov qword [rbp + 36], file_test$557
	mov [rbp + 44], rbp
	add rbp, 36
	jmp feof

 file_test$557:
	; PostCall 36

 file_test$558:
	; GetReturnValue £temporary4099

 file_test$559:
	; NotEqual 578 £temporary4099 0
	cmp ebx, 0
	jne file_test$578

 file_test$560:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$561:
	; Address £temporary4102 value
	mov rsi, rbp
	add rsi, 36

 file_test$562:
	; Parameter 68 pointer £temporary4102
	mov [rbp + 68], rsi

 file_test$563:
	; Parameter 76 signedint 8
	mov dword [rbp + 76], 8

 file_test$564:
	; Parameter 80 signedint 1
	mov dword [rbp + 80], 1

 file_test$565:
	; Parameter 84 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 file_test$566:
	; Call 44 fread 0
	mov qword [rbp + 44], file_test$567
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fread

 file_test$567:
	; PostCall 44

 file_test$568:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$569:
	; Parameter 68 pointer "index3: %i: value %f\n"
	mov qword [rbp + 68], string_index33A2025i3A20value2025f0A#

 file_test$570:
	; Assign £temporary4104 index
	mov eax, [rbp + 32]

 file_test$571:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 file_test$572:
	; Parameter 76 signedint £temporary4104
	mov [rbp + 76], eax

 file_test$573:
	; PushFloat value
	fld qword [rbp + 36]

 file_test$574:
	; Parameter 80 double value
	fstp qword [rbp + 80]

 file_test$575:
	; Call 44 printf 12
	mov qword [rbp + 44], file_test$576
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$576:
	; PostCall 44

 file_test$577:
	; Goto 554
	jmp file_test$554

 file_test$578:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$579:
	; Parameter 56 pointer "\n"
	mov qword [rbp + 56], string_0A#

 file_test$580:
	; Call 32 printf 0
	mov qword [rbp + 32], file_test$581
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 file_test$581:
	; PostCall 32

 file_test$582:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$583:
	; Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$584:
	; Call 32 fclose 0
	mov qword [rbp + 32], file_test$585
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$585:
	; PostCall 32

 file_test$586:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$587:
	; Parameter 48 pointer "TestX.bin"
	mov qword [rbp + 48], string_TestX2Ebin#

 file_test$588:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], string_r#

 file_test$589:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$590
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$590:
	; PostCall 24

 file_test$591:
	; GetReturnValue £temporary4108

 file_test$592:
	; Assign inFilePtr £temporary4108
	mov [rbp + 24], rbx

 file_test$593:
	; NotEqual 605 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$605

 file_test$594:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$595:
	; Parameter 60 pointer stderr
	mov rax, [stderr]
	mov [rbp + 60], rax

 file_test$596:
	; Parameter 68 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 68], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$597:
	; Parameter 76 pointer "inFilePtr != NULL"
	mov qword [rbp + 76], string_inFilePtr20213D20NULL#

 file_test$598:
	; Parameter 84 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 84], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$599:
	; Parameter 92 signedint 219
	mov dword [rbp + 92], 219

 file_test$600:
	; Call 36 fprintf 20
	mov qword [rbp + 36], file_test$601
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$601:
	; PostCall 36

 file_test$602:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$603:
	; Call 36 abort 0
	mov qword [rbp + 36], file_test$604
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

 file_test$604:
	; PostCall 36

 file_test$605:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$606:
	; Address £temporary4113 size
	mov rsi, rbp
	add rsi, 32

 file_test$607:
	; Parameter 60 pointer £temporary4113
	mov [rbp + 60], rsi

 file_test$608:
	; Parameter 68 signedint 4
	mov dword [rbp + 68], 4

 file_test$609:
	; Parameter 72 signedint 1
	mov dword [rbp + 72], 1

 file_test$610:
	; Parameter 76 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 file_test$611:
	; Call 36 fread 0
	mov qword [rbp + 36], file_test$612
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fread

 file_test$612:
	; PostCall 36

 file_test$613:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$614:
	; Parameter 60 pointer "size4: %i total %i\n"
	mov qword [rbp + 60], string_size43A2025i20total2025i0A#

 file_test$615:
	; Parameter 68 signedint size
	mov eax, [rbp + 32]
	mov [rbp + 68], eax

 file_test$616:
	; SignedMultiply £temporary4115 size 8
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [int4$8#]

 file_test$617:
	; Parameter 72 signedint £temporary4115
	mov [rbp + 72], eax

 file_test$618:
	; Call 36 printf 8
	mov qword [rbp + 36], file_test$619
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$619:
	; PostCall 36

 file_test$620:
	; SignedMultiply total size 8
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [int4$8#]
	mov [rbp + 36], eax

 file_test$621:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$622:
	; Parameter 68 signedint total
	mov eax, [rbp + 36]
	mov [rbp + 68], eax

 file_test$623:
	; Call 44 malloc 0
	mov qword [rbp + 44], file_test$624
	mov [rbp + 52], rbp
	add rbp, 44
	jmp malloc

 file_test$624:
	; PostCall 44

 file_test$625:
	; GetReturnValue £temporary4118

 file_test$626:
	; Assign p £temporary4118
	mov [rbp + 44], rbx

 file_test$627:
	; IntegralToIntegral £temporary4119 size
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 file_test$628:
	; UnsignedMultiply £temporary4121 £temporary4119 8
	xor rdx, rdx
	mul qword [int8$8#]

 file_test$629:
	; BinaryAdd endPtr p £temporary4121
	mov rbx, [rbp + 44]
	add rbx, rax
	mov [rbp + 52], rbx

 file_test$630:
	; NotEqual 642 p 0
	cmp qword [rbp + 44], 0
	jne file_test$642

 file_test$631:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$632:
	; Parameter 84 pointer stderr
	mov rax, [stderr]
	mov [rbp + 84], rax

 file_test$633:
	; Parameter 92 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 92], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$634:
	; Parameter 100 pointer "p != NULL"
	mov qword [rbp + 100], string_p20213D20NULL#

 file_test$635:
	; Parameter 108 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 108], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$636:
	; Parameter 116 signedint 226
	mov dword [rbp + 116], 226

 file_test$637:
	; Call 60 fprintf 20
	mov qword [rbp + 60], file_test$638
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$638:
	; PostCall 60

 file_test$639:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$640:
	; Call 60 abort 0
	mov qword [rbp + 60], file_test$641
	mov [rbp + 68], rbp
	add rbp, 60
	jmp abort

 file_test$641:
	; PostCall 60

 file_test$642:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$643:
	; Parameter 84 pointer "malloc4: %u %u %u\n"
	mov qword [rbp + 84], string_malloc43A2025u2025u2025u0A#

 file_test$644:
	; Parameter 92 pointer p
	mov rax, [rbp + 44]
	mov [rbp + 92], rax

 file_test$645:
	; Parameter 100 signedint total
	mov eax, [rbp + 36]
	mov [rbp + 100], eax

 file_test$646:
	; Parameter 104 pointer endPtr
	mov rax, [rbp + 52]
	mov [rbp + 104], rax

 file_test$647:
	; Call 60 printf 20
	mov qword [rbp + 60], file_test$648
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 20
	jmp printf

 file_test$648:
	; PostCall 60

 file_test$649:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$650:
	; Parameter 84 pointer p
	mov rax, [rbp + 44]
	mov [rbp + 84], rax

 file_test$651:
	; Parameter 92 signedint total
	mov eax, [rbp + 36]
	mov [rbp + 92], eax

 file_test$652:
	; Parameter 96 signedint 1
	mov dword [rbp + 96], 1

 file_test$653:
	; Parameter 100 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

 file_test$654:
	; Call 60 fread 0
	mov qword [rbp + 60], file_test$655
	mov [rbp + 68], rbp
	add rbp, 60
	jmp fread

 file_test$655:
	; PostCall 60

 file_test$656:
	; Assign index 0
	mov dword [rbp + 40], 0

 file_test$657:
	; SignedGreaterThanEqual 671 index size
	mov eax, [rbp + 32]
	cmp [rbp + 40], eax
	jge file_test$671

 file_test$658:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$659:
	; Parameter 84 pointer "index4: %i: value %f\n"
	mov qword [rbp + 84], string_index43A2025i3A20value2025f0A#

 file_test$660:
	; Parameter 92 signedint index
	mov eax, [rbp + 40]
	mov [rbp + 92], eax

 file_test$661:
	; IntegralToIntegral £temporary4131 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 file_test$662:
	; UnsignedMultiply £temporary4132 £temporary4131 8
	xor rdx, rdx
	mul qword [int8$8#]

 file_test$663:
	; BinaryAdd £temporary4133 p £temporary4132
	mov rsi, [rbp + 44]
	add rsi, rax

 file_test$664:
	; Dereference £temporary4130 -> £temporary4133 £temporary4133 0

 file_test$665:
	; PushFloat £temporary4130 -> £temporary4133
	fld qword [rsi]

 file_test$666:
	; Parameter 96 double £temporary4130 -> £temporary4133
	fstp qword [rbp + 96]

 file_test$667:
	; Call 60 printf 12
	mov qword [rbp + 60], file_test$668
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$668:
	; PostCall 60

 file_test$669:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 file_test$670:
	; Goto 657
	jmp file_test$657

 file_test$671:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$672:
	; Parameter 84 pointer "\n"
	mov qword [rbp + 84], string_0A#

 file_test$673:
	; Call 60 printf 0
	mov qword [rbp + 60], file_test$674
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	jmp printf

 file_test$674:
	; PostCall 60

 file_test$675:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$676:
	; Parameter 84 pointer p
	mov rax, [rbp + 44]
	mov [rbp + 84], rax

 file_test$677:
	; Call 60 free 0
	mov qword [rbp + 60], file_test$678
	mov [rbp + 68], rbp
	add rbp, 60
	jmp free

 file_test$678:
	; PostCall 60

 file_test$679:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$680:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$681:
	; Call 36 fclose 0
	mov qword [rbp + 36], file_test$682
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fclose

 file_test$682:
	; PostCall 36

 file_test$683:
	; Assign personVector[0].name[0] 65
	mov byte [rbp + 24], 65

 file_test$684:
	; Assign personVector[0].name[1] 100
	mov byte [rbp + 25], 100

 file_test$685:
	; Assign personVector[0].name[2] 97
	mov byte [rbp + 26], 97

 file_test$686:
	; Assign personVector[0].name[3] 109
	mov byte [rbp + 27], 109

 file_test$687:
	; Assign personVector[0].name[4] 32
	mov byte [rbp + 28], 32

 file_test$688:
	; Assign personVector[0].name[5] 66
	mov byte [rbp + 29], 66

 file_test$689:
	; Assign personVector[0].name[6] 101
	mov byte [rbp + 30], 101

 file_test$690:
	; Assign personVector[0].name[7] 114
	mov byte [rbp + 31], 114

 file_test$691:
	; Assign personVector[0].name[8] 116
	mov byte [rbp + 32], 116

 file_test$692:
	; Assign personVector[0].name[9] 105
	mov byte [rbp + 33], 105

 file_test$693:
	; Assign personVector[0].name[10] 108
	mov byte [rbp + 34], 108

 file_test$694:
	; Assign personVector[0].name[11] 115
	mov byte [rbp + 35], 115

 file_test$695:
	; Assign personVector[0].name[12] 115
	mov byte [rbp + 36], 115

 file_test$696:
	; Assign personVector[0].name[13] 111
	mov byte [rbp + 37], 111

 file_test$697:
	; Assign personVector[0].name[14] 110
	mov byte [rbp + 38], 110

 file_test$698:
	; Assign personVector[0].name[15] 0
	mov byte [rbp + 39], 0

 file_test$699:
	; Assign personVector[0].phone 12345
	mov dword [rbp + 72], 12345

 file_test$700:
	; Assign personVector[1].name[0] 66
	mov byte [rbp + 76], 66

 file_test$701:
	; Assign personVector[1].name[1] 101
	mov byte [rbp + 77], 101

 file_test$702:
	; Assign personVector[1].name[2] 114
	mov byte [rbp + 78], 114

 file_test$703:
	; Assign personVector[1].name[3] 116
	mov byte [rbp + 79], 116

 file_test$704:
	; Assign personVector[1].name[4] 105
	mov byte [rbp + 80], 105

 file_test$705:
	; Assign personVector[1].name[5] 108
	mov byte [rbp + 81], 108

 file_test$706:
	; Assign personVector[1].name[6] 32
	mov byte [rbp + 82], 32

 file_test$707:
	; Assign personVector[1].name[7] 67
	mov byte [rbp + 83], 67

 file_test$708:
	; Assign personVector[1].name[8] 101
	mov byte [rbp + 84], 101

 file_test$709:
	; Assign personVector[1].name[9] 97
	mov byte [rbp + 85], 97

 file_test$710:
	; Assign personVector[1].name[10] 115
	mov byte [rbp + 86], 115

 file_test$711:
	; Assign personVector[1].name[11] 97
	mov byte [rbp + 87], 97

 file_test$712:
	; Assign personVector[1].name[12] 114
	mov byte [rbp + 88], 114

 file_test$713:
	; Assign personVector[1].name[13] 115
	mov byte [rbp + 89], 115

 file_test$714:
	; Assign personVector[1].name[14] 115
	mov byte [rbp + 90], 115

 file_test$715:
	; Assign personVector[1].name[15] 111
	mov byte [rbp + 91], 111

 file_test$716:
	; Assign personVector[1].name[16] 110
	mov byte [rbp + 92], 110

 file_test$717:
	; Assign personVector[1].name[17] 0
	mov byte [rbp + 93], 0

 file_test$718:
	; Assign personVector[1].phone 23456
	mov dword [rbp + 124], 23456

 file_test$719:
	; Assign personVector[2].name[0] 67
	mov byte [rbp + 128], 67

 file_test$720:
	; Assign personVector[2].name[1] 101
	mov byte [rbp + 129], 101

 file_test$721:
	; Assign personVector[2].name[2] 97
	mov byte [rbp + 130], 97

 file_test$722:
	; Assign personVector[2].name[3] 115
	mov byte [rbp + 131], 115

 file_test$723:
	; Assign personVector[2].name[4] 97
	mov byte [rbp + 132], 97

 file_test$724:
	; Assign personVector[2].name[5] 114
	mov byte [rbp + 133], 114

 file_test$725:
	; Assign personVector[2].name[6] 32
	mov byte [rbp + 134], 32

 file_test$726:
	; Assign personVector[2].name[7] 68
	mov byte [rbp + 135], 68

 file_test$727:
	; Assign personVector[2].name[8] 97
	mov byte [rbp + 136], 97

 file_test$728:
	; Assign personVector[2].name[9] 118
	mov byte [rbp + 137], 118

 file_test$729:
	; Assign personVector[2].name[10] 105
	mov byte [rbp + 138], 105

 file_test$730:
	; Assign personVector[2].name[11] 100
	mov byte [rbp + 139], 100

 file_test$731:
	; Assign personVector[2].name[12] 115
	mov byte [rbp + 140], 115

 file_test$732:
	; Assign personVector[2].name[13] 115
	mov byte [rbp + 141], 115

 file_test$733:
	; Assign personVector[2].name[14] 111
	mov byte [rbp + 142], 111

 file_test$734:
	; Assign personVector[2].name[15] 110
	mov byte [rbp + 143], 110

 file_test$735:
	; Assign personVector[2].name[16] 0
	mov byte [rbp + 144], 0

 file_test$736:
	; Assign personVector[2].phone 24567
	mov dword [rbp + 176], 24567

 file_test$737:
	; PreCall 232 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$738:
	; Parameter 256 pointer "Block.bin"
	mov qword [rbp + 256], string_Block2Ebin#

 file_test$739:
	; Parameter 264 pointer "w"
	mov qword [rbp + 264], string_w#

 file_test$740:
	; Call 232 fopen 0
	mov qword [rbp + 232], file_test$741
	mov [rbp + 240], rbp
	add rbp, 232
	jmp fopen

 file_test$741:
	; PostCall 232

 file_test$742:
	; GetReturnValue £temporary4198

 file_test$743:
	; Assign outFilePtr £temporary4198
	mov [rbp + 232], rbx

 file_test$744:
	; PreCall 240 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$745:
	; Parameter 264 pointer "Block.bin"
	mov qword [rbp + 264], string_Block2Ebin#

 file_test$746:
	; Parameter 272 pointer "r"
	mov qword [rbp + 272], string_r#

 file_test$747:
	; Call 240 fopen 0
	mov qword [rbp + 240], file_test$748
	mov [rbp + 248], rbp
	add rbp, 240
	jmp fopen

 file_test$748:
	; PostCall 240

 file_test$749:
	; GetReturnValue £temporary4199

 file_test$750:
	; Assign inFilePtr £temporary4199
	mov [rbp + 240], rbx

 file_test$751:
	; NotEqual 763 outFilePtr 0
	cmp qword [rbp + 232], 0
	jne file_test$763

 file_test$752:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$753:
	; Parameter 272 pointer stderr
	mov rax, [stderr]
	mov [rbp + 272], rax

 file_test$754:
	; Parameter 280 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 280], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$755:
	; Parameter 288 pointer "outFilePtr != NULL"
	mov qword [rbp + 288], string_outFilePtr20213D20NULL#

 file_test$756:
	; Parameter 296 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 296], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$757:
	; Parameter 304 signedint 253
	mov dword [rbp + 304], 253

 file_test$758:
	; Call 248 fprintf 20
	mov qword [rbp + 248], file_test$759
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$759:
	; PostCall 248

 file_test$760:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$761:
	; Call 248 abort 0
	mov qword [rbp + 248], file_test$762
	mov [rbp + 256], rbp
	add rbp, 248
	jmp abort

 file_test$762:
	; PostCall 248

 file_test$763:
	; NotEqual 775 inFilePtr 0
	cmp qword [rbp + 240], 0
	jne file_test$775

 file_test$764:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$765:
	; Parameter 272 pointer stderr
	mov rax, [stderr]
	mov [rbp + 272], rax

 file_test$766:
	; Parameter 280 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 280], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$767:
	; Parameter 288 pointer "inFilePtr != NULL"
	mov qword [rbp + 288], string_inFilePtr20213D20NULL#

 file_test$768:
	; Parameter 296 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 296], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$769:
	; Parameter 304 signedint 254
	mov dword [rbp + 304], 254

 file_test$770:
	; Call 248 fprintf 20
	mov qword [rbp + 248], file_test$771
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$771:
	; PostCall 248

 file_test$772:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$773:
	; Call 248 abort 0
	mov qword [rbp + 248], file_test$774
	mov [rbp + 256], rbp
	add rbp, 248
	jmp abort

 file_test$774:
	; PostCall 248

 file_test$775:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$776:
	; Parameter 272 pointer personVector
	mov [rbp + 272], rbp
	add qword [rbp + 272], 24

 file_test$777:
	; Parameter 280 signedint 156
	mov dword [rbp + 280], 156

 file_test$778:
	; Parameter 284 signedint 1
	mov dword [rbp + 284], 1

 file_test$779:
	; Parameter 288 pointer outFilePtr
	mov rax, [rbp + 232]
	mov [rbp + 288], rax

 file_test$780:
	; Call 248 fwrite 0
	mov qword [rbp + 248], file_test$781
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fwrite

 file_test$781:
	; PostCall 248

 file_test$782:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$783:
	; Parameter 272 pointer outFilePtr
	mov rax, [rbp + 232]
	mov [rbp + 272], rax

 file_test$784:
	; Call 248 fclose 0
	mov qword [rbp + 248], file_test$785
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fclose

 file_test$785:
	; PostCall 248

 file_test$786:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$787:
	; Parameter 272 pointer inFilePtr
	mov rax, [rbp + 240]
	mov [rbp + 272], rax

 file_test$788:
	; Call 248 feof 0
	mov qword [rbp + 248], file_test$789
	mov [rbp + 256], rbp
	add rbp, 248
	jmp feof

 file_test$789:
	; PostCall 248

 file_test$790:
	; GetReturnValue £temporary4210

 file_test$791:
	; NotEqual 811 £temporary4210 0
	cmp ebx, 0
	jne file_test$811

 file_test$792:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$793:
	; Address £temporary4213 person
	mov rsi, rbp
	add rsi, 180

 file_test$794:
	; Parameter 272 pointer £temporary4213
	mov [rbp + 272], rsi

 file_test$795:
	; Parameter 280 signedint 52
	mov dword [rbp + 280], 52

 file_test$796:
	; Parameter 284 signedint 1
	mov dword [rbp + 284], 1

 file_test$797:
	; Parameter 288 pointer inFilePtr
	mov rax, [rbp + 240]
	mov [rbp + 288], rax

 file_test$798:
	; Call 248 fread 0
	mov qword [rbp + 248], file_test$799
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fread

 file_test$799:
	; PostCall 248

 file_test$800:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$801:
	; Parameter 272 pointer "Name  : %s\n"
	mov qword [rbp + 272], string_Name20203A2025s0A#

 file_test$802:
	; Parameter 280 pointer person.name
	mov [rbp + 280], rbp
	add qword [rbp + 280], 180

 file_test$803:
	; Call 248 printf 8
	mov qword [rbp + 248], file_test$804
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$804:
	; PostCall 248

 file_test$805:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$806:
	; Parameter 272 pointer "Phone : %d\n"
	mov qword [rbp + 272], string_Phone203A2025d0A#

 file_test$807:
	; Parameter 280 signedint person.phone
	mov eax, [rbp + 228]
	mov [rbp + 280], eax

 file_test$808:
	; Call 248 printf 4
	mov qword [rbp + 248], file_test$809
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$809:
	; PostCall 248

 file_test$810:
	; Goto 786
	jmp file_test$786

 file_test$811:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$812:
	; Parameter 272 pointer inFilePtr
	mov rax, [rbp + 240]
	mov [rbp + 272], rax

 file_test$813:
	; Call 248 fclose 0
	mov qword [rbp + 248], file_test$814
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fclose

 file_test$814:
	; PostCall 248

 file_test$815:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$816:
	; Parameter 48 pointer "outx.txt"
	mov qword [rbp + 48], string_outx2Etxt#

 file_test$817:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], string_r#

 file_test$818:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$819
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$819:
	; PostCall 24

 file_test$820:
	; GetReturnValue £temporary4220

 file_test$821:
	; Assign inFilePtr £temporary4220
	mov [rbp + 24], rbx

 file_test$822:
	; NotEqual 834 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$834

 file_test$823:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$824:
	; Parameter 60 pointer stderr
	mov rax, [stderr]
	mov [rbp + 60], rax

 file_test$825:
	; Parameter 68 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 68], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$826:
	; Parameter 76 pointer "inFilePtr != NULL"
	mov qword [rbp + 76], string_inFilePtr20213D20NULL#

 file_test$827:
	; Parameter 84 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 84], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$828:
	; Parameter 92 signedint 271
	mov dword [rbp + 92], 271

 file_test$829:
	; Call 36 fprintf 20
	mov qword [rbp + 36], file_test$830
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$830:
	; PostCall 36

 file_test$831:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$832:
	; Call 36 abort 0
	mov qword [rbp + 36], file_test$833
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

 file_test$833:
	; PostCall 36

 file_test$834:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$835:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$836:
	; Parameter 68 signedint -2
	mov dword [rbp + 68], -2

 file_test$837:
	; Parameter 72 signedint 2
	mov dword [rbp + 72], 2

 file_test$838:
	; Call 36 fseek 0
	mov qword [rbp + 36], file_test$839
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fseek

 file_test$839:
	; PostCall 36

 file_test$840:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$841:
	; Parameter 60 pointer "ftell %i\n"
	mov qword [rbp + 60], string_ftell2025i0A#

 file_test$842:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$843:
	; Parameter 92 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 92], rax

 file_test$844:
	; Call 68 ftell 0
	mov qword [rbp + 68], file_test$845
	mov [rbp + 76], rbp
	add rbp, 68
	jmp ftell

 file_test$845:
	; PostCall 68

 file_test$846:
	; GetReturnValue £temporary4226

 file_test$847:
	; Parameter 68 signedint £temporary4226
	mov [rbp + 68], ebx

 file_test$848:
	; Call 36 printf 4
	mov qword [rbp + 36], file_test$849
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$849:
	; PostCall 36

 file_test$850:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$851:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$852:
	; Call 36 ftell 0
	mov qword [rbp + 36], file_test$853
	mov [rbp + 44], rbp
	add rbp, 36
	jmp ftell

 file_test$853:
	; PostCall 36

 file_test$854:
	; GetReturnValue £temporary4228

 file_test$855:
	; SignedLessThan 884 £temporary4228 0
	cmp ebx, 0
	jl file_test$884

 file_test$856:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$857:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$858:
	; Call 36 fgetc 0
	mov qword [rbp + 36], file_test$859
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fgetc

 file_test$859:
	; PostCall 36

 file_test$860:
	; GetReturnValue £temporary4230

 file_test$861:
	; IntegralToIntegral £temporary4231 £temporary4230
	cmp ebx, 0
	jge file_test$862
	neg ebx
	neg bl

 file_test$862:
	; Assign c £temporary4231
	mov [rbp + 36], bl

 file_test$863:
	; PreCall 37 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$864:
	; Parameter 61 pointer "<%c> %i %i\n"
	mov qword [rbp + 61], string_3C25c3E2025i2025i0A#

 file_test$865:
	; IntegralToIntegral £temporary4232 c
	mov al, [rbp + 36]
	and eax, 255
	cmp al, 0
	jge file_test$866
	neg al
	neg eax

 file_test$866:
	; Parameter 69 signedint £temporary4232
	mov [rbp + 69], eax

 file_test$867:
	; IntegralToIntegral £temporary4233 c
	mov al, [rbp + 36]
	and eax, 255
	cmp al, 0
	jge file_test$868
	neg al
	neg eax

 file_test$868:
	; Parameter 73 signedint £temporary4233
	mov [rbp + 73], eax

 file_test$869:
	; PreCall 37 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$870:
	; Parameter 101 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 101], rax

 file_test$871:
	; Call 77 ftell 0
	mov qword [rbp + 77], file_test$872
	mov [rbp + 85], rbp
	add rbp, 77
	jmp ftell

 file_test$872:
	; PostCall 77

 file_test$873:
	; GetReturnValue £temporary4234

 file_test$874:
	; Parameter 77 signedint £temporary4234
	mov [rbp + 77], ebx

 file_test$875:
	; Call 37 printf 12
	mov qword [rbp + 37], file_test$876
	mov [rbp + 45], rbp
	add rbp, 37
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$876:
	; PostCall 37

 file_test$877:
	; PreCall 37 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$878:
	; Parameter 61 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 61], rax

 file_test$879:
	; Parameter 69 signedint -2
	mov dword [rbp + 69], -2

 file_test$880:
	; Parameter 73 signedint 1
	mov dword [rbp + 73], 1

 file_test$881:
	; Call 37 fseek 0
	mov qword [rbp + 37], file_test$882
	mov [rbp + 45], rbp
	add rbp, 37
	jmp fseek

 file_test$882:
	; PostCall 37

 file_test$883:
	; Goto 850
	jmp file_test$850

 file_test$884:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$885:
	; Parameter 60 pointer "\n"
	mov qword [rbp + 60], string_0A#

 file_test$886:
	; Call 36 printf 0
	mov qword [rbp + 36], file_test$887
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	jmp printf

 file_test$887:
	; PostCall 36

 file_test$888:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$889:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$890:
	; Call 36 fclose 0
	mov qword [rbp + 36], file_test$891
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fclose

 file_test$891:
	; PostCall 36

 file_test$892:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$893:
	; Parameter 48 pointer "fileexists X: %s\n"
	mov qword [rbp + 48], string_fileexists20X3A2025s0A#

 file_test$894:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$895:
	; Parameter 80 pointer "X"
	mov qword [rbp + 80], string_X#

 file_test$896:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$897
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$897:
	; PostCall 56

 file_test$898:
	; GetReturnValue £temporary4239

 file_test$899:
	; Equal 902 £temporary4239 0
	cmp ebx, 0
	je file_test$902

 file_test$900:
	; Assign £temporary4241 "Yes"
	mov eax, string_Yes#

 file_test$901:
	; Goto 903
	jmp file_test$903

 file_test$902:
	; Assign £temporary4241 "No"
	mov eax, string_No#

 file_test$903:
	; Parameter 56 pointer £temporary4241
	mov [rbp + 56], eax

 file_test$904:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$905
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$905:
	; PostCall 24

 file_test$906:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$907:
	; Parameter 48 pointer "fileexists Y: %s\n"
	mov qword [rbp + 48], string_fileexists20Y3A2025s0A#

 file_test$908:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$909:
	; Parameter 80 pointer "Y"
	mov qword [rbp + 80], string_Y#

 file_test$910:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$911
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$911:
	; PostCall 56

 file_test$912:
	; GetReturnValue £temporary4243

 file_test$913:
	; Equal 916 £temporary4243 0
	cmp ebx, 0
	je file_test$916

 file_test$914:
	; Assign £temporary4245 "Yes"
	mov eax, string_Yes#

 file_test$915:
	; Goto 917
	jmp file_test$917

 file_test$916:
	; Assign £temporary4245 "No"
	mov eax, string_No#

 file_test$917:
	; Parameter 56 pointer £temporary4245
	mov [rbp + 56], eax

 file_test$918:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$919
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$919:
	; PostCall 24

 file_test$920:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$921:
	; Parameter 48 pointer "fileexists Main.asm: %s\n"
	mov qword [rbp + 48], string_fileexists20Main2Easm3A2025s0A#

 file_test$922:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$923:
	; Parameter 80 pointer "Main.asm"
	mov qword [rbp + 80], string_Main2Easm#

 file_test$924:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$925
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$925:
	; PostCall 56

 file_test$926:
	; GetReturnValue £temporary4247

 file_test$927:
	; Equal 930 £temporary4247 0
	cmp ebx, 0
	je file_test$930

 file_test$928:
	; Assign £temporary4249 "Yes"
	mov eax, string_Yes#

 file_test$929:
	; Goto 931
	jmp file_test$931

 file_test$930:
	; Assign £temporary4249 "No"
	mov eax, string_No#

 file_test$931:
	; Parameter 56 pointer £temporary4249
	mov [rbp + 56], eax

 file_test$932:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$933
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$933:
	; PostCall 24

 file_test$934:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$935:
	; Parameter 48 pointer "fileexists MainX.asm: %s\n"
	mov qword [rbp + 48], string_fileexists20MainX2Easm3A2025s0A#

 file_test$936:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$937:
	; Parameter 80 pointer "MainX.asm"
	mov qword [rbp + 80], string_MainX2Easm#

 file_test$938:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$939
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$939:
	; PostCall 56

 file_test$940:
	; GetReturnValue £temporary4251

 file_test$941:
	; Equal 944 £temporary4251 0
	cmp ebx, 0
	je file_test$944

 file_test$942:
	; Assign £temporary4253 "Yes"
	mov eax, string_Yes#

 file_test$943:
	; Goto 945
	jmp file_test$945

 file_test$944:
	; Assign £temporary4253 "No"
	mov eax, string_No#

 file_test$945:
	; Parameter 56 pointer £temporary4253
	mov [rbp + 56], eax

 file_test$946:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$947
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$947:
	; PostCall 24

 file_test$948:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$949:
	; Parameter 48 pointer "fileexists Main.c: %s\n"
	mov qword [rbp + 48], string_fileexists20Main2Ec3A2025s0A#

 file_test$950:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$951:
	; Parameter 80 pointer "Main.c"
	mov qword [rbp + 80], string_Main2Ec#

 file_test$952:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$953
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$953:
	; PostCall 56

 file_test$954:
	; GetReturnValue £temporary4255

 file_test$955:
	; Equal 958 £temporary4255 0
	cmp ebx, 0
	je file_test$958

 file_test$956:
	; Assign £temporary4257 "Yes"
	mov eax, string_Yes#

 file_test$957:
	; Goto 959
	jmp file_test$959

 file_test$958:
	; Assign £temporary4257 "No"
	mov eax, string_No#

 file_test$959:
	; Parameter 56 pointer £temporary4257
	mov [rbp + 56], eax

 file_test$960:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$961
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$961:
	; PostCall 24

 file_test$962:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$963:
	; Parameter 48 pointer "fileexists MainX.c: %s\n"
	mov qword [rbp + 48], string_fileexists20MainX2Ec3A2025s0A#

 file_test$964:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$965:
	; Parameter 80 pointer "MainX.c"
	mov qword [rbp + 80], string_MainX2Ec#

 file_test$966:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$967
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$967:
	; PostCall 56

 file_test$968:
	; GetReturnValue £temporary4259

 file_test$969:
	; Equal 972 £temporary4259 0
	cmp ebx, 0
	je file_test$972

 file_test$970:
	; Assign £temporary4261 "Yes"
	mov eax, string_Yes#

 file_test$971:
	; Goto 973
	jmp file_test$973

 file_test$972:
	; Assign £temporary4261 "No"
	mov eax, string_No#

 file_test$973:
	; Parameter 56 pointer £temporary4261
	mov [rbp + 56], eax

 file_test$974:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$975
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$975:
	; PostCall 24

 file_test$976:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$977:
	; Parameter 48 pointer "fileexists File.c: %s\n"
	mov qword [rbp + 48], string_fileexists20File2Ec3A2025s0A#

 file_test$978:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$979:
	; Parameter 80 pointer "File.c"
	mov qword [rbp + 80], string_File2Ec#

 file_test$980:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$981
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$981:
	; PostCall 56

 file_test$982:
	; GetReturnValue £temporary4263

 file_test$983:
	; Equal 986 £temporary4263 0
	cmp ebx, 0
	je file_test$986

 file_test$984:
	; Assign £temporary4265 "Yes"
	mov eax, string_Yes#

 file_test$985:
	; Goto 987
	jmp file_test$987

 file_test$986:
	; Assign £temporary4265 "No"
	mov eax, string_No#

 file_test$987:
	; Parameter 56 pointer £temporary4265
	mov [rbp + 56], eax

 file_test$988:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$989
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$989:
	; PostCall 24

 file_test$990:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$991:
	; Parameter 48 pointer "fileexists File.x: %s\n"
	mov qword [rbp + 48], string_fileexists20File2Ex3A2025s0A#

 file_test$992:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$993:
	; Parameter 80 pointer "File.x"
	mov qword [rbp + 80], string_File2Ex#

 file_test$994:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$995
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$995:
	; PostCall 56

 file_test$996:
	; GetReturnValue £temporary4267

 file_test$997:
	; Equal 1000 £temporary4267 0
	cmp ebx, 0
	je file_test$1000

 file_test$998:
	; Assign £temporary4269 "Yes"
	mov eax, string_Yes#

 file_test$999:
	; Goto 1001
	jmp file_test$1001

 file_test$1000:
	; Assign £temporary4269 "No"
	mov eax, string_No#

 file_test$1001:
	; Parameter 56 pointer £temporary4269
	mov [rbp + 56], eax

 file_test$1002:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1003
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1003:
	; PostCall 24

 file_test$1004:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1005:
	; Parameter 48 pointer "fileexists File.h: %s\n"
	mov qword [rbp + 48], string_fileexists20File2Eh3A2025s0A#

 file_test$1006:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1007:
	; Parameter 80 pointer "File.h"
	mov qword [rbp + 80], string_File2Eh#

 file_test$1008:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1009
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1009:
	; PostCall 56

 file_test$1010:
	; GetReturnValue £temporary4271

 file_test$1011:
	; Equal 1014 £temporary4271 0
	cmp ebx, 0
	je file_test$1014

 file_test$1012:
	; Assign £temporary4273 "Yes"
	mov eax, string_Yes#

 file_test$1013:
	; Goto 1015
	jmp file_test$1015

 file_test$1014:
	; Assign £temporary4273 "No"
	mov eax, string_No#

 file_test$1015:
	; Parameter 56 pointer £temporary4273
	mov [rbp + 56], eax

 file_test$1016:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1017
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1017:
	; PostCall 24

 file_test$1018:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1019:
	; Parameter 48 pointer "fileexists File.y: %s\n"
	mov qword [rbp + 48], string_fileexists20File2Ey3A2025s0A#

 file_test$1020:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1021:
	; Parameter 80 pointer "File.y"
	mov qword [rbp + 80], string_File2Ey#

 file_test$1022:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1023
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1023:
	; PostCall 56

 file_test$1024:
	; GetReturnValue £temporary4275

 file_test$1025:
	; Equal 1028 £temporary4275 0
	cmp ebx, 0
	je file_test$1028

 file_test$1026:
	; Assign £temporary4277 "Yes"
	mov eax, string_Yes#

 file_test$1027:
	; Goto 1029
	jmp file_test$1029

 file_test$1028:
	; Assign £temporary4277 "No"
	mov eax, string_No#

 file_test$1029:
	; Parameter 56 pointer £temporary4277
	mov [rbp + 56], eax

 file_test$1030:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1031
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1031:
	; PostCall 24

 file_test$1032:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1033:
	; Parameter 48 pointer "fileexists File.p: %s\n"
	mov qword [rbp + 48], string_fileexists20File2Ep3A2025s0A#

 file_test$1034:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1035:
	; Parameter 80 pointer "File.p"
	mov qword [rbp + 80], string_File2Ep#

 file_test$1036:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1037
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1037:
	; PostCall 56

 file_test$1038:
	; GetReturnValue £temporary4279

 file_test$1039:
	; Equal 1042 £temporary4279 0
	cmp ebx, 0
	je file_test$1042

 file_test$1040:
	; Assign £temporary4281 "Yes"
	mov eax, string_Yes#

 file_test$1041:
	; Goto 1043
	jmp file_test$1043

 file_test$1042:
	; Assign £temporary4281 "No"
	mov eax, string_No#

 file_test$1043:
	; Parameter 56 pointer £temporary4281
	mov [rbp + 56], eax

 file_test$1044:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1045
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1045:
	; PostCall 24

 file_test$1046:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1047:
	; Parameter 48 pointer "fileexists File.z: %s\n"
	mov qword [rbp + 48], string_fileexists20File2Ez3A2025s0A#

 file_test$1048:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1049:
	; Parameter 80 pointer "File.z"
	mov qword [rbp + 80], string_File2Ez#

 file_test$1050:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1051
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1051:
	; PostCall 56

 file_test$1052:
	; GetReturnValue £temporary4283

 file_test$1053:
	; Equal 1056 £temporary4283 0
	cmp ebx, 0
	je file_test$1056

 file_test$1054:
	; Assign £temporary4285 "Yes"
	mov eax, string_Yes#

 file_test$1055:
	; Goto 1057
	jmp file_test$1057

 file_test$1056:
	; Assign £temporary4285 "No"
	mov eax, string_No#

 file_test$1057:
	; Parameter 56 pointer £temporary4285
	mov [rbp + 56], eax

 file_test$1058:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1059
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1059:
	; PostCall 24

 file_test$1060:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 file_test$1061:
	; FunctionEnd file_test
