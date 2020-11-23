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
	extern fgetc
	extern putc
	extern fwrite
	extern fread
	extern malloc
	extern free
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

string_X2025f0A#:
	; Initializer String X %f\n
	db "X %f", 10, 0

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

string_Y2025f0A#:
	; Initializer String Y %f\n
	db "Y %f", 10, 0

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

string_Flow12Etxt#:
	; Initializer String Flow1.txt
	db "Flow1.txt", 0

section .data

string_Flow22Etxt#:
	; Initializer String Flow2.txt
	db "Flow2.txt", 0

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
	; GetReturnValue £temporary3949

 file_test$6:
	; Assign inFilePtr £temporary3949
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
	; GetReturnValue £temporary3950

 file_test$13:
	; Assign outFilePtr £temporary3950
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
	; Parameter 96 signedint 12
	mov dword [rbp + 96], 12

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
	; Parameter 96 signedint 13
	mov dword [rbp + 96], 13

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
	; GetReturnValue £temporary3959

 file_test$43:
	; NotEqual 75 £temporary3959 0
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
	; Address £temporary3962 value
	mov rsi, rbp
	add rsi, 40

 file_test$48:
	; Parameter 88 pointer £temporary3962
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
	; Parameter 72 pointer "X %f\n"
	mov qword [rbp + 72], string_X2025f0A#

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
	; GetReturnValue £temporary3964

 file_test$59:
	; Parameter 80 double £temporary3964
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
	; Parameter 80 pointer "X %f\n"
	mov qword [rbp + 80], string_X2025f0A#

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
	; GetReturnValue £temporary3966

 file_test$71:
	; Parameter 88 double £temporary3966
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
	; GetReturnValue £temporary3971

 file_test$93:
	; Assign inFilePtr £temporary3971
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
	; GetReturnValue £temporary3972

 file_test$100:
	; Assign outFilePtr £temporary3972
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
	; Parameter 96 signedint 30
	mov dword [rbp + 96], 30

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
	; Parameter 96 signedint 31
	mov dword [rbp + 96], 31

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
	; Address £temporary3981 size
	mov rsi, rbp
	add rsi, 40

 file_test$130:
	; Parameter 88 pointer £temporary3981
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
	; Address £temporary3987 value
	mov rsi, rbp
	add rsi, 48

 file_test$150:
	; Parameter 96 pointer £temporary3987
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
	; Parameter 80 pointer "Y %f\n"
	mov qword [rbp + 80], string_Y2025f0A#

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
	; GetReturnValue £temporary3989

 file_test$161:
	; Parameter 88 double £temporary3989
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
	; Parameter 88 pointer "Y %f\n"
	mov qword [rbp + 88], string_Y2025f0A#

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
	; GetReturnValue £temporary3991

 file_test$173:
	; Parameter 96 double £temporary3991
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
	; GetReturnValue £temporary3996

 file_test$198:
	; Assign filePtr £temporary3996
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
	; GetReturnValue £temporary3999

 file_test$214:
	; NotEqual 222 £temporary3999 0
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
	; GetReturnValue £temporary4002

 file_test$230:
	; Parameter 84 pointer £temporary4002
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
	; GetReturnValue £temporary4004

 file_test$240:
	; Assign filePtr £temporary4004
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
	; GetReturnValue £temporary4007

 file_test$255:
	; NotEqual 262 £temporary4007 0
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
	; GetReturnValue £temporary4010

 file_test$270:
	; Parameter 76 pointer £temporary4010
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
	; GetReturnValue £temporary4012

 file_test$279:
	; Assign inFilePtr £temporary4012
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
	; Parameter 88 signedint 82
	mov dword [rbp + 88], 82

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
	; Address £temporary4019 size
	mov rsi, rbp
	add rsi, 36

 file_test$308:
	; Parameter 80 pointer £temporary4019
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
	; Assign count 0
	mov dword [rbp + 32], 0

 file_test$312:
	; SignedGreaterThanEqual 328 count size
	mov eax, [rbp + 36]
	cmp [rbp + 32], eax
	jge file_test$328

 file_test$313:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$314:
	; Parameter 104 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 104], rax

 file_test$315:
	; Parameter 112 pointer "%s%s"
	mov qword [rbp + 112], string_25s25s#

 file_test$316:
	; Parameter 120 pointer name
	mov [rbp + 120], rbp
	add qword [rbp + 120], 40

 file_test$317:
	; Parameter 128 pointer phone
	mov [rbp + 128], rbp
	add qword [rbp + 128], 60

 file_test$318:
	; Call 80 fscanf 16
	mov qword [rbp + 80], file_test$319
	mov [rbp + 88], rbp
	add rbp, 80
	mov rdi, rbp
	add rdi, 16
	jmp fscanf

 file_test$319:
	; PostCall 80

 file_test$320:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$321:
	; Parameter 104 pointer "%-24s %-24s\n"
	mov qword [rbp + 104], string_252D24s20252D24s0A#

 file_test$322:
	; Parameter 112 pointer name
	mov [rbp + 112], rbp
	add qword [rbp + 112], 40

 file_test$323:
	; Parameter 120 pointer phone
	mov [rbp + 120], rbp
	add qword [rbp + 120], 60

 file_test$324:
	; Call 80 printf 16
	mov qword [rbp + 80], file_test$325
	mov [rbp + 88], rbp
	add rbp, 80
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$325:
	; PostCall 80

 file_test$326:
	; BinaryAdd count count 1
	inc dword [rbp + 32]

 file_test$327:
	; Goto 312
	jmp file_test$312

 file_test$328:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$329:
	; Parameter 56 pointer "\n"
	mov qword [rbp + 56], string_0A#

 file_test$330:
	; Call 32 printf 0
	mov qword [rbp + 32], file_test$331
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 file_test$331:
	; PostCall 32

 file_test$332:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$333:
	; Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$334:
	; Call 32 fclose 0
	mov qword [rbp + 32], file_test$335
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$335:
	; PostCall 32

 file_test$336:
	; Assign sourceFilePtr "Flow1.txt"
	mov qword [rbp + 24], string_Flow12Etxt#

 file_test$337:
	; Assign targetFilePtr "Flow2.txt"
	mov qword [rbp + 32], string_Flow22Etxt#

 file_test$338:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$339:
	; Parameter 64 pointer sourceFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$340:
	; Parameter 72 pointer "r"
	mov qword [rbp + 72], string_r#

 file_test$341:
	; Call 40 fopen 0
	mov qword [rbp + 40], file_test$342
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

 file_test$342:
	; PostCall 40

 file_test$343:
	; GetReturnValue £temporary4027

 file_test$344:
	; Assign inFilePtr £temporary4027
	mov [rbp + 40], rbx

 file_test$345:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$346:
	; Parameter 72 pointer targetFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 file_test$347:
	; Parameter 80 pointer "w"
	mov qword [rbp + 80], string_w#

 file_test$348:
	; Call 48 fopen 0
	mov qword [rbp + 48], file_test$349
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fopen

 file_test$349:
	; PostCall 48

 file_test$350:
	; GetReturnValue £temporary4028

 file_test$351:
	; Assign outFilePtr £temporary4028
	mov [rbp + 48], rbx

 file_test$352:
	; NotEqual 364 inFilePtr 0
	cmp qword [rbp + 40], 0
	jne file_test$364

 file_test$353:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$354:
	; Parameter 80 pointer stderr
	mov rax, [stderr]
	mov [rbp + 80], rax

 file_test$355:
	; Parameter 88 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 88], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$356:
	; Parameter 96 pointer "inFilePtr != NULL"
	mov qword [rbp + 96], string_inFilePtr20213D20NULL#

 file_test$357:
	; Parameter 104 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 104], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$358:
	; Parameter 112 signedint 111
	mov dword [rbp + 112], 111

 file_test$359:
	; Call 56 fprintf 20
	mov qword [rbp + 56], file_test$360
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$360:
	; PostCall 56

 file_test$361:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$362:
	; Call 56 abort 0
	mov qword [rbp + 56], file_test$363
	mov [rbp + 64], rbp
	add rbp, 56
	jmp abort

 file_test$363:
	; PostCall 56

 file_test$364:
	; NotEqual 376 outFilePtr 0
	cmp qword [rbp + 48], 0
	jne file_test$376

 file_test$365:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$366:
	; Parameter 80 pointer stderr
	mov rax, [stderr]
	mov [rbp + 80], rax

 file_test$367:
	; Parameter 88 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 88], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$368:
	; Parameter 96 pointer "outFilePtr != NULL"
	mov qword [rbp + 96], string_outFilePtr20213D20NULL#

 file_test$369:
	; Parameter 104 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 104], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$370:
	; Parameter 112 signedint 112
	mov dword [rbp + 112], 112

 file_test$371:
	; Call 56 fprintf 20
	mov qword [rbp + 56], file_test$372
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$372:
	; PostCall 56

 file_test$373:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$374:
	; Call 56 abort 0
	mov qword [rbp + 56], file_test$375
	mov [rbp + 64], rbp
	add rbp, 56
	jmp abort

 file_test$375:
	; PostCall 56

 file_test$376:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$377:
	; Parameter 80 pointer inFilePtr
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 file_test$378:
	; Call 56 fgetc 0
	mov qword [rbp + 56], file_test$379
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fgetc

 file_test$379:
	; PostCall 56

 file_test$380:
	; GetReturnValue £temporary4037

 file_test$381:
	; IntegralToIntegral £temporary4038 £temporary4037
	cmp ebx, 0
	jge file_test$382
	neg ebx
	neg bl

 file_test$382:
	; Assign c £temporary4038
	mov [rbp + 56], bl

 file_test$383:
	; IntegralToIntegral £temporary4039 c
	mov al, [rbp + 56]
	and eax, 255
	cmp al, 0
	jge file_test$384
	neg al
	neg eax

 file_test$384:
	; Equal 398 £temporary4039 -1
	cmp eax, -1
	je file_test$398

 file_test$385:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$386:
	; IntegralToIntegral £temporary4041 c
	mov al, [rbp + 56]
	and eax, 255
	cmp al, 0
	jge file_test$387
	neg al
	neg eax

 file_test$387:
	; Parameter 81 signedint £temporary4041
	mov [rbp + 81], eax

 file_test$388:
	; Parameter 85 pointer outFilePtr
	mov rax, [rbp + 48]
	mov [rbp + 85], rax

 file_test$389:
	; Call 57 putc 0
	mov qword [rbp + 57], file_test$390
	mov [rbp + 65], rbp
	add rbp, 57
	jmp putc

 file_test$390:
	; PostCall 57

 file_test$391:
	; NotEqual 376 c 10
	cmp byte [rbp + 56], 10
	jne file_test$376

 file_test$392:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$393:
	; Parameter 81 signedint 10
	mov dword [rbp + 81], 10

 file_test$394:
	; Parameter 85 pointer outFilePtr
	mov rax, [rbp + 48]
	mov [rbp + 85], rax

 file_test$395:
	; Call 57 putc 0
	mov qword [rbp + 57], file_test$396
	mov [rbp + 65], rbp
	add rbp, 57
	jmp putc

 file_test$396:
	; PostCall 57

 file_test$397:
	; Goto 376
	jmp file_test$376

 file_test$398:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$399:
	; Parameter 80 pointer inFilePtr
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 file_test$400:
	; Call 56 fclose 0
	mov qword [rbp + 56], file_test$401
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fclose

 file_test$401:
	; PostCall 56

 file_test$402:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$403:
	; Parameter 80 pointer outFilePtr
	mov rax, [rbp + 48]
	mov [rbp + 80], rax

 file_test$404:
	; Call 56 fclose 0
	mov qword [rbp + 56], file_test$405
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fclose

 file_test$405:
	; PostCall 56

 file_test$406:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$407:
	; Parameter 48 pointer "TestX.bin"
	mov qword [rbp + 48], string_TestX2Ebin#

 file_test$408:
	; Parameter 56 pointer "w"
	mov qword [rbp + 56], string_w#

 file_test$409:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$410
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$410:
	; PostCall 24

 file_test$411:
	; GetReturnValue £temporary4048

 file_test$412:
	; Assign outFilePtr £temporary4048
	mov [rbp + 24], rbx

 file_test$413:
	; NotEqual 425 outFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$425

 file_test$414:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$415:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$416:
	; Parameter 64 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 64], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$417:
	; Parameter 72 pointer "outFilePtr != NULL"
	mov qword [rbp + 72], string_outFilePtr20213D20NULL#

 file_test$418:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$419:
	; Parameter 88 signedint 151
	mov dword [rbp + 88], 151

 file_test$420:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$421
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$421:
	; PostCall 32

 file_test$422:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$423:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$424
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$424:
	; PostCall 32

 file_test$425:
	; Assign size 10
	mov dword [rbp + 32], 10

 file_test$426:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$427:
	; Address £temporary4053 size
	mov rsi, rbp
	add rsi, 32

 file_test$428:
	; Parameter 64 pointer £temporary4053
	mov [rbp + 64], rsi

 file_test$429:
	; Parameter 72 signedint 4
	mov dword [rbp + 72], 4

 file_test$430:
	; Parameter 76 signedint 1
	mov dword [rbp + 76], 1

 file_test$431:
	; Parameter 80 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$432:
	; Call 40 fwrite 0
	mov qword [rbp + 40], file_test$433
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fwrite

 file_test$433:
	; PostCall 40

 file_test$434:
	; Assign index 0
	mov dword [rbp + 36], 0

 file_test$435:
	; SignedGreaterThanEqual 449 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$449

 file_test$436:
	; SignedMultiply £temporary4057 index index
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [rbp + 36]

 file_test$437:
	; IntegralToFloating £temporary4058 £temporary4057
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 file_test$438:
	; PopFloat value
	fstp qword [rbp + 40]

 file_test$439:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$440:
	; Address £temporary4059 value
	mov rsi, rbp
	add rsi, 40

 file_test$441:
	; Parameter 72 pointer £temporary4059
	mov [rbp + 72], rsi

 file_test$442:
	; Parameter 80 signedint 8
	mov dword [rbp + 80], 8

 file_test$443:
	; Parameter 84 signedint 1
	mov dword [rbp + 84], 1

 file_test$444:
	; Parameter 88 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 file_test$445:
	; Call 48 fwrite 0
	mov qword [rbp + 48], file_test$446
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fwrite

 file_test$446:
	; PostCall 48

 file_test$447:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 file_test$448:
	; Goto 435
	jmp file_test$435

 file_test$449:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$450:
	; Parameter 64 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$451:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$452
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$452:
	; PostCall 40

 file_test$453:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$454:
	; Parameter 48 pointer "TestX.bin"
	mov qword [rbp + 48], string_TestX2Ebin#

 file_test$455:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], string_r#

 file_test$456:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$457
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$457:
	; PostCall 24

 file_test$458:
	; GetReturnValue £temporary4062

 file_test$459:
	; Assign inFilePtr £temporary4062
	mov [rbp + 24], rbx

 file_test$460:
	; NotEqual 472 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$472

 file_test$461:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$462:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$463:
	; Parameter 72 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 72], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$464:
	; Parameter 80 pointer "inFilePtr != NULL"
	mov qword [rbp + 80], string_inFilePtr20213D20NULL#

 file_test$465:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$466:
	; Parameter 96 signedint 168
	mov dword [rbp + 96], 168

 file_test$467:
	; Call 40 fprintf 20
	mov qword [rbp + 40], file_test$468
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$468:
	; PostCall 40

 file_test$469:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$470:
	; Call 40 abort 0
	mov qword [rbp + 40], file_test$471
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$471:
	; PostCall 40

 file_test$472:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$473:
	; Address £temporary4067 size
	mov rsi, rbp
	add rsi, 32

 file_test$474:
	; Parameter 64 pointer £temporary4067
	mov [rbp + 64], rsi

 file_test$475:
	; Parameter 72 signedint 4
	mov dword [rbp + 72], 4

 file_test$476:
	; Parameter 76 signedint 1
	mov dword [rbp + 76], 1

 file_test$477:
	; Parameter 80 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$478:
	; Call 40 fread 0
	mov qword [rbp + 40], file_test$479
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fread

 file_test$479:
	; PostCall 40

 file_test$480:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$481:
	; Parameter 64 pointer "size1: %i\n"
	mov qword [rbp + 64], string_size13A2025i0A#

 file_test$482:
	; Parameter 72 signedint size
	mov eax, [rbp + 32]
	mov [rbp + 72], eax

 file_test$483:
	; Call 40 printf 4
	mov qword [rbp + 40], file_test$484
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$484:
	; PostCall 40

 file_test$485:
	; Assign index 0
	mov dword [rbp + 36], 0

 file_test$486:
	; SignedGreaterThanEqual 504 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$504

 file_test$487:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$488:
	; Address £temporary4072 value
	mov rsi, rbp
	add rsi, 40

 file_test$489:
	; Parameter 72 pointer £temporary4072
	mov [rbp + 72], rsi

 file_test$490:
	; Parameter 80 signedint 8
	mov dword [rbp + 80], 8

 file_test$491:
	; Parameter 84 signedint 1
	mov dword [rbp + 84], 1

 file_test$492:
	; Parameter 88 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 file_test$493:
	; Call 48 fread 0
	mov qword [rbp + 48], file_test$494
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fread

 file_test$494:
	; PostCall 48

 file_test$495:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$496:
	; Parameter 72 pointer "index1: %i: value %f\n"
	mov qword [rbp + 72], string_index13A2025i3A20value2025f0A#

 file_test$497:
	; Parameter 80 signedint index
	mov eax, [rbp + 36]
	mov [rbp + 80], eax

 file_test$498:
	; PushFloat value
	fld qword [rbp + 40]

 file_test$499:
	; Parameter 84 double value
	fstp qword [rbp + 84]

 file_test$500:
	; Call 48 printf 12
	mov qword [rbp + 48], file_test$501
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$501:
	; PostCall 48

 file_test$502:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 file_test$503:
	; Goto 486
	jmp file_test$486

 file_test$504:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$505:
	; Parameter 64 pointer "\n"
	mov qword [rbp + 64], string_0A#

 file_test$506:
	; Call 40 printf 0
	mov qword [rbp + 40], file_test$507
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 file_test$507:
	; PostCall 40

 file_test$508:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$509:
	; Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$510:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$511
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$511:
	; PostCall 40

 file_test$512:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$513:
	; Parameter 48 pointer "TestY.bin"
	mov qword [rbp + 48], string_TestY2Ebin#

 file_test$514:
	; Parameter 56 pointer "w"
	mov qword [rbp + 56], string_w#

 file_test$515:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$516
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$516:
	; PostCall 24

 file_test$517:
	; GetReturnValue £temporary4077

 file_test$518:
	; Assign outFilePtr £temporary4077
	mov [rbp + 24], rbx

 file_test$519:
	; NotEqual 531 outFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$531

 file_test$520:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$521:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$522:
	; Parameter 64 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 64], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$523:
	; Parameter 72 pointer "outFilePtr != NULL"
	mov qword [rbp + 72], string_outFilePtr20213D20NULL#

 file_test$524:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$525:
	; Parameter 88 signedint 183
	mov dword [rbp + 88], 183

 file_test$526:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$527
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$527:
	; PostCall 32

 file_test$528:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$529:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$530
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$530:
	; PostCall 32

 file_test$531:
	; Assign size 10
	mov dword [rbp + 32], 10

 file_test$532:
	; Assign index 0
	mov dword [rbp + 36], 0

 file_test$533:
	; SignedGreaterThanEqual 547 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$547

 file_test$534:
	; SignedMultiply £temporary4084 index index
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [rbp + 36]

 file_test$535:
	; IntegralToFloating £temporary4085 £temporary4084
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 file_test$536:
	; PopFloat value
	fstp qword [rbp + 40]

 file_test$537:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$538:
	; Address £temporary4086 value
	mov rsi, rbp
	add rsi, 40

 file_test$539:
	; Parameter 72 pointer £temporary4086
	mov [rbp + 72], rsi

 file_test$540:
	; Parameter 80 signedint 8
	mov dword [rbp + 80], 8

 file_test$541:
	; Parameter 84 signedint 1
	mov dword [rbp + 84], 1

 file_test$542:
	; Parameter 88 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 file_test$543:
	; Call 48 fwrite 0
	mov qword [rbp + 48], file_test$544
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fwrite

 file_test$544:
	; PostCall 48

 file_test$545:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 file_test$546:
	; Goto 533
	jmp file_test$533

 file_test$547:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$548:
	; Parameter 64 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$549:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$550
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$550:
	; PostCall 40

 file_test$551:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$552:
	; Parameter 48 pointer "TestY.bin"
	mov qword [rbp + 48], string_TestY2Ebin#

 file_test$553:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], string_r#

 file_test$554:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$555
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$555:
	; PostCall 24

 file_test$556:
	; GetReturnValue £temporary4089

 file_test$557:
	; Assign inFilePtr £temporary4089
	mov [rbp + 24], rbx

 file_test$558:
	; NotEqual 570 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$570

 file_test$559:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$560:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$561:
	; Parameter 64 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 64], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$562:
	; Parameter 72 pointer "inFilePtr != NULL"
	mov qword [rbp + 72], string_inFilePtr20213D20NULL#

 file_test$563:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$564:
	; Parameter 88 signedint 197
	mov dword [rbp + 88], 197

 file_test$565:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$566
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$566:
	; PostCall 32

 file_test$567:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$568:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$569
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$569:
	; PostCall 32

 file_test$570:
	; Assign index 0
	mov dword [rbp + 32], 0

 file_test$571:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$572:
	; Address £temporary4094 value
	mov rsi, rbp
	add rsi, 36

 file_test$573:
	; Parameter 68 pointer £temporary4094
	mov [rbp + 68], rsi

 file_test$574:
	; Parameter 76 signedint 8
	mov dword [rbp + 76], 8

 file_test$575:
	; Parameter 80 signedint 1
	mov dword [rbp + 80], 1

 file_test$576:
	; Parameter 84 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 file_test$577:
	; Call 44 fread 0
	mov qword [rbp + 44], file_test$578
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fread

 file_test$578:
	; PostCall 44

 file_test$579:
	; GetReturnValue £temporary4095

 file_test$580:
	; Equal 591 £temporary4095 0
	cmp ebx, 0
	je file_test$591

 file_test$581:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$582:
	; Parameter 68 pointer "index2: %i: value %f\n"
	mov qword [rbp + 68], string_index23A2025i3A20value2025f0A#

 file_test$583:
	; Assign £temporary4097 index
	mov eax, [rbp + 32]

 file_test$584:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 file_test$585:
	; Parameter 76 signedint £temporary4097
	mov [rbp + 76], eax

 file_test$586:
	; PushFloat value
	fld qword [rbp + 36]

 file_test$587:
	; Parameter 80 double value
	fstp qword [rbp + 80]

 file_test$588:
	; Call 44 printf 12
	mov qword [rbp + 44], file_test$589
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$589:
	; PostCall 44

 file_test$590:
	; Goto 571
	jmp file_test$571

 file_test$591:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$592:
	; Parameter 56 pointer "\n"
	mov qword [rbp + 56], string_0A#

 file_test$593:
	; Call 32 printf 0
	mov qword [rbp + 32], file_test$594
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 file_test$594:
	; PostCall 32

 file_test$595:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$596:
	; Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$597:
	; Call 32 fclose 0
	mov qword [rbp + 32], file_test$598
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$598:
	; PostCall 32

 file_test$599:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$600:
	; Parameter 48 pointer "TestY.bin"
	mov qword [rbp + 48], string_TestY2Ebin#

 file_test$601:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], string_r#

 file_test$602:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$603
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$603:
	; PostCall 24

 file_test$604:
	; GetReturnValue £temporary4102

 file_test$605:
	; Assign inFilePtr £temporary4102
	mov [rbp + 24], rbx

 file_test$606:
	; NotEqual 618 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$618

 file_test$607:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$608:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$609:
	; Parameter 64 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 64], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$610:
	; Parameter 72 pointer "inFilePtr != NULL"
	mov qword [rbp + 72], string_inFilePtr20213D20NULL#

 file_test$611:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$612:
	; Parameter 88 signedint 217
	mov dword [rbp + 88], 217

 file_test$613:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$614
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$614:
	; PostCall 32

 file_test$615:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$616:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$617
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$617:
	; PostCall 32

 file_test$618:
	; Assign index 0
	mov dword [rbp + 32], 0

 file_test$619:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$620:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$621:
	; Call 36 feof 0
	mov qword [rbp + 36], file_test$622
	mov [rbp + 44], rbp
	add rbp, 36
	jmp feof

 file_test$622:
	; PostCall 36

 file_test$623:
	; GetReturnValue £temporary4107

 file_test$624:
	; NotEqual 643 £temporary4107 0
	cmp ebx, 0
	jne file_test$643

 file_test$625:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$626:
	; Address £temporary4110 value
	mov rsi, rbp
	add rsi, 36

 file_test$627:
	; Parameter 68 pointer £temporary4110
	mov [rbp + 68], rsi

 file_test$628:
	; Parameter 76 signedint 8
	mov dword [rbp + 76], 8

 file_test$629:
	; Parameter 80 signedint 1
	mov dword [rbp + 80], 1

 file_test$630:
	; Parameter 84 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 file_test$631:
	; Call 44 fread 0
	mov qword [rbp + 44], file_test$632
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fread

 file_test$632:
	; PostCall 44

 file_test$633:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$634:
	; Parameter 68 pointer "index3: %i: value %f\n"
	mov qword [rbp + 68], string_index33A2025i3A20value2025f0A#

 file_test$635:
	; Assign £temporary4112 index
	mov eax, [rbp + 32]

 file_test$636:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 file_test$637:
	; Parameter 76 signedint £temporary4112
	mov [rbp + 76], eax

 file_test$638:
	; PushFloat value
	fld qword [rbp + 36]

 file_test$639:
	; Parameter 80 double value
	fstp qword [rbp + 80]

 file_test$640:
	; Call 44 printf 12
	mov qword [rbp + 44], file_test$641
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$641:
	; PostCall 44

 file_test$642:
	; Goto 619
	jmp file_test$619

 file_test$643:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$644:
	; Parameter 56 pointer "\n"
	mov qword [rbp + 56], string_0A#

 file_test$645:
	; Call 32 printf 0
	mov qword [rbp + 32], file_test$646
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 file_test$646:
	; PostCall 32

 file_test$647:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$648:
	; Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$649:
	; Call 32 fclose 0
	mov qword [rbp + 32], file_test$650
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$650:
	; PostCall 32

 file_test$651:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$652:
	; Parameter 48 pointer "TestX.bin"
	mov qword [rbp + 48], string_TestX2Ebin#

 file_test$653:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], string_r#

 file_test$654:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$655
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$655:
	; PostCall 24

 file_test$656:
	; GetReturnValue £temporary4116

 file_test$657:
	; Assign inFilePtr £temporary4116
	mov [rbp + 24], rbx

 file_test$658:
	; NotEqual 670 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$670

 file_test$659:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$660:
	; Parameter 60 pointer stderr
	mov rax, [stderr]
	mov [rbp + 60], rax

 file_test$661:
	; Parameter 68 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 68], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$662:
	; Parameter 76 pointer "inFilePtr != NULL"
	mov qword [rbp + 76], string_inFilePtr20213D20NULL#

 file_test$663:
	; Parameter 84 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 84], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$664:
	; Parameter 92 signedint 235
	mov dword [rbp + 92], 235

 file_test$665:
	; Call 36 fprintf 20
	mov qword [rbp + 36], file_test$666
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$666:
	; PostCall 36

 file_test$667:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$668:
	; Call 36 abort 0
	mov qword [rbp + 36], file_test$669
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

 file_test$669:
	; PostCall 36

 file_test$670:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$671:
	; Address £temporary4121 size
	mov rsi, rbp
	add rsi, 32

 file_test$672:
	; Parameter 60 pointer £temporary4121
	mov [rbp + 60], rsi

 file_test$673:
	; Parameter 68 signedint 4
	mov dword [rbp + 68], 4

 file_test$674:
	; Parameter 72 signedint 1
	mov dword [rbp + 72], 1

 file_test$675:
	; Parameter 76 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 file_test$676:
	; Call 36 fread 0
	mov qword [rbp + 36], file_test$677
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fread

 file_test$677:
	; PostCall 36

 file_test$678:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$679:
	; Parameter 60 pointer "size4: %i total %i\n"
	mov qword [rbp + 60], string_size43A2025i20total2025i0A#

 file_test$680:
	; Parameter 68 signedint size
	mov eax, [rbp + 32]
	mov [rbp + 68], eax

 file_test$681:
	; SignedMultiply £temporary4123 size 8
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [int4$8#]

 file_test$682:
	; Parameter 72 signedint £temporary4123
	mov [rbp + 72], eax

 file_test$683:
	; Call 36 printf 8
	mov qword [rbp + 36], file_test$684
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$684:
	; PostCall 36

 file_test$685:
	; SignedMultiply total size 8
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [int4$8#]
	mov [rbp + 36], eax

 file_test$686:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$687:
	; Parameter 68 signedint total
	mov eax, [rbp + 36]
	mov [rbp + 68], eax

 file_test$688:
	; Call 44 malloc 0
	mov qword [rbp + 44], file_test$689
	mov [rbp + 52], rbp
	add rbp, 44
	jmp malloc

 file_test$689:
	; PostCall 44

 file_test$690:
	; GetReturnValue £temporary4126

 file_test$691:
	; Assign p £temporary4126
	mov [rbp + 44], rbx

 file_test$692:
	; IntegralToIntegral £temporary4127 size
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 file_test$693:
	; UnsignedMultiply £temporary4129 £temporary4127 8
	xor rdx, rdx
	mul qword [int8$8#]

 file_test$694:
	; BinaryAdd endPtr p £temporary4129
	mov rbx, [rbp + 44]
	add rbx, rax
	mov [rbp + 52], rbx

 file_test$695:
	; NotEqual 707 p 0
	cmp qword [rbp + 44], 0
	jne file_test$707

 file_test$696:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$697:
	; Parameter 84 pointer stderr
	mov rax, [stderr]
	mov [rbp + 84], rax

 file_test$698:
	; Parameter 92 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 92], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$699:
	; Parameter 100 pointer "p != NULL"
	mov qword [rbp + 100], string_p20213D20NULL#

 file_test$700:
	; Parameter 108 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 108], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$701:
	; Parameter 116 signedint 242
	mov dword [rbp + 116], 242

 file_test$702:
	; Call 60 fprintf 20
	mov qword [rbp + 60], file_test$703
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$703:
	; PostCall 60

 file_test$704:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$705:
	; Call 60 abort 0
	mov qword [rbp + 60], file_test$706
	mov [rbp + 68], rbp
	add rbp, 60
	jmp abort

 file_test$706:
	; PostCall 60

 file_test$707:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$708:
	; Parameter 84 pointer "malloc4: %u %u %u\n"
	mov qword [rbp + 84], string_malloc43A2025u2025u2025u0A#

 file_test$709:
	; Parameter 92 pointer p
	mov rax, [rbp + 44]
	mov [rbp + 92], rax

 file_test$710:
	; Parameter 100 signedint total
	mov eax, [rbp + 36]
	mov [rbp + 100], eax

 file_test$711:
	; Parameter 104 pointer endPtr
	mov rax, [rbp + 52]
	mov [rbp + 104], rax

 file_test$712:
	; Call 60 printf 20
	mov qword [rbp + 60], file_test$713
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 20
	jmp printf

 file_test$713:
	; PostCall 60

 file_test$714:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$715:
	; Parameter 84 pointer p
	mov rax, [rbp + 44]
	mov [rbp + 84], rax

 file_test$716:
	; Parameter 92 signedint total
	mov eax, [rbp + 36]
	mov [rbp + 92], eax

 file_test$717:
	; Parameter 96 signedint 1
	mov dword [rbp + 96], 1

 file_test$718:
	; Parameter 100 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

 file_test$719:
	; Call 60 fread 0
	mov qword [rbp + 60], file_test$720
	mov [rbp + 68], rbp
	add rbp, 60
	jmp fread

 file_test$720:
	; PostCall 60

 file_test$721:
	; Assign index 0
	mov dword [rbp + 40], 0

 file_test$722:
	; SignedGreaterThanEqual 736 index size
	mov eax, [rbp + 32]
	cmp [rbp + 40], eax
	jge file_test$736

 file_test$723:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$724:
	; Parameter 84 pointer "index4: %i: value %f\n"
	mov qword [rbp + 84], string_index43A2025i3A20value2025f0A#

 file_test$725:
	; Parameter 92 signedint index
	mov eax, [rbp + 40]
	mov [rbp + 92], eax

 file_test$726:
	; IntegralToIntegral £temporary4139 index
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 file_test$727:
	; UnsignedMultiply £temporary4140 £temporary4139 8
	xor rdx, rdx
	mul qword [int8$8#]

 file_test$728:
	; BinaryAdd £temporary4141 p £temporary4140
	mov rsi, [rbp + 44]
	add rsi, rax

 file_test$729:
	; Dereference £temporary4138 -> £temporary4141 £temporary4141 0

 file_test$730:
	; PushFloat £temporary4138 -> £temporary4141
	fld qword [rsi]

 file_test$731:
	; Parameter 96 double £temporary4138 -> £temporary4141
	fstp qword [rbp + 96]

 file_test$732:
	; Call 60 printf 12
	mov qword [rbp + 60], file_test$733
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$733:
	; PostCall 60

 file_test$734:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 file_test$735:
	; Goto 722
	jmp file_test$722

 file_test$736:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$737:
	; Parameter 84 pointer "\n"
	mov qword [rbp + 84], string_0A#

 file_test$738:
	; Call 60 printf 0
	mov qword [rbp + 60], file_test$739
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	jmp printf

 file_test$739:
	; PostCall 60

 file_test$740:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$741:
	; Parameter 84 pointer p
	mov rax, [rbp + 44]
	mov [rbp + 84], rax

 file_test$742:
	; Call 60 free 0
	mov qword [rbp + 60], file_test$743
	mov [rbp + 68], rbp
	add rbp, 60
	jmp free

 file_test$743:
	; PostCall 60

 file_test$744:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$745:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$746:
	; Call 36 fclose 0
	mov qword [rbp + 36], file_test$747
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fclose

 file_test$747:
	; PostCall 36

 file_test$748:
	; Assign personVector[0].name[0] 65
	mov byte [rbp + 24], 65

 file_test$749:
	; Assign personVector[0].name[1] 100
	mov byte [rbp + 25], 100

 file_test$750:
	; Assign personVector[0].name[2] 97
	mov byte [rbp + 26], 97

 file_test$751:
	; Assign personVector[0].name[3] 109
	mov byte [rbp + 27], 109

 file_test$752:
	; Assign personVector[0].name[4] 32
	mov byte [rbp + 28], 32

 file_test$753:
	; Assign personVector[0].name[5] 66
	mov byte [rbp + 29], 66

 file_test$754:
	; Assign personVector[0].name[6] 101
	mov byte [rbp + 30], 101

 file_test$755:
	; Assign personVector[0].name[7] 114
	mov byte [rbp + 31], 114

 file_test$756:
	; Assign personVector[0].name[8] 116
	mov byte [rbp + 32], 116

 file_test$757:
	; Assign personVector[0].name[9] 105
	mov byte [rbp + 33], 105

 file_test$758:
	; Assign personVector[0].name[10] 108
	mov byte [rbp + 34], 108

 file_test$759:
	; Assign personVector[0].name[11] 115
	mov byte [rbp + 35], 115

 file_test$760:
	; Assign personVector[0].name[12] 115
	mov byte [rbp + 36], 115

 file_test$761:
	; Assign personVector[0].name[13] 111
	mov byte [rbp + 37], 111

 file_test$762:
	; Assign personVector[0].name[14] 110
	mov byte [rbp + 38], 110

 file_test$763:
	; Assign personVector[0].name[15] 0
	mov byte [rbp + 39], 0

 file_test$764:
	; Assign personVector[0].phone 12345
	mov dword [rbp + 72], 12345

 file_test$765:
	; Assign personVector[1].name[0] 66
	mov byte [rbp + 76], 66

 file_test$766:
	; Assign personVector[1].name[1] 101
	mov byte [rbp + 77], 101

 file_test$767:
	; Assign personVector[1].name[2] 114
	mov byte [rbp + 78], 114

 file_test$768:
	; Assign personVector[1].name[3] 116
	mov byte [rbp + 79], 116

 file_test$769:
	; Assign personVector[1].name[4] 105
	mov byte [rbp + 80], 105

 file_test$770:
	; Assign personVector[1].name[5] 108
	mov byte [rbp + 81], 108

 file_test$771:
	; Assign personVector[1].name[6] 32
	mov byte [rbp + 82], 32

 file_test$772:
	; Assign personVector[1].name[7] 67
	mov byte [rbp + 83], 67

 file_test$773:
	; Assign personVector[1].name[8] 101
	mov byte [rbp + 84], 101

 file_test$774:
	; Assign personVector[1].name[9] 97
	mov byte [rbp + 85], 97

 file_test$775:
	; Assign personVector[1].name[10] 115
	mov byte [rbp + 86], 115

 file_test$776:
	; Assign personVector[1].name[11] 97
	mov byte [rbp + 87], 97

 file_test$777:
	; Assign personVector[1].name[12] 114
	mov byte [rbp + 88], 114

 file_test$778:
	; Assign personVector[1].name[13] 115
	mov byte [rbp + 89], 115

 file_test$779:
	; Assign personVector[1].name[14] 115
	mov byte [rbp + 90], 115

 file_test$780:
	; Assign personVector[1].name[15] 111
	mov byte [rbp + 91], 111

 file_test$781:
	; Assign personVector[1].name[16] 110
	mov byte [rbp + 92], 110

 file_test$782:
	; Assign personVector[1].name[17] 0
	mov byte [rbp + 93], 0

 file_test$783:
	; Assign personVector[1].phone 23456
	mov dword [rbp + 124], 23456

 file_test$784:
	; Assign personVector[2].name[0] 67
	mov byte [rbp + 128], 67

 file_test$785:
	; Assign personVector[2].name[1] 101
	mov byte [rbp + 129], 101

 file_test$786:
	; Assign personVector[2].name[2] 97
	mov byte [rbp + 130], 97

 file_test$787:
	; Assign personVector[2].name[3] 115
	mov byte [rbp + 131], 115

 file_test$788:
	; Assign personVector[2].name[4] 97
	mov byte [rbp + 132], 97

 file_test$789:
	; Assign personVector[2].name[5] 114
	mov byte [rbp + 133], 114

 file_test$790:
	; Assign personVector[2].name[6] 32
	mov byte [rbp + 134], 32

 file_test$791:
	; Assign personVector[2].name[7] 68
	mov byte [rbp + 135], 68

 file_test$792:
	; Assign personVector[2].name[8] 97
	mov byte [rbp + 136], 97

 file_test$793:
	; Assign personVector[2].name[9] 118
	mov byte [rbp + 137], 118

 file_test$794:
	; Assign personVector[2].name[10] 105
	mov byte [rbp + 138], 105

 file_test$795:
	; Assign personVector[2].name[11] 100
	mov byte [rbp + 139], 100

 file_test$796:
	; Assign personVector[2].name[12] 115
	mov byte [rbp + 140], 115

 file_test$797:
	; Assign personVector[2].name[13] 115
	mov byte [rbp + 141], 115

 file_test$798:
	; Assign personVector[2].name[14] 111
	mov byte [rbp + 142], 111

 file_test$799:
	; Assign personVector[2].name[15] 110
	mov byte [rbp + 143], 110

 file_test$800:
	; Assign personVector[2].name[16] 0
	mov byte [rbp + 144], 0

 file_test$801:
	; Assign personVector[2].phone 24567
	mov dword [rbp + 176], 24567

 file_test$802:
	; PreCall 232 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$803:
	; Parameter 256 pointer "Block.bin"
	mov qword [rbp + 256], string_Block2Ebin#

 file_test$804:
	; Parameter 264 pointer "w"
	mov qword [rbp + 264], string_w#

 file_test$805:
	; Call 232 fopen 0
	mov qword [rbp + 232], file_test$806
	mov [rbp + 240], rbp
	add rbp, 232
	jmp fopen

 file_test$806:
	; PostCall 232

 file_test$807:
	; GetReturnValue £temporary4206

 file_test$808:
	; Assign outFilePtr £temporary4206
	mov [rbp + 232], rbx

 file_test$809:
	; PreCall 240 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$810:
	; Parameter 264 pointer "Block.bin"
	mov qword [rbp + 264], string_Block2Ebin#

 file_test$811:
	; Parameter 272 pointer "r"
	mov qword [rbp + 272], string_r#

 file_test$812:
	; Call 240 fopen 0
	mov qword [rbp + 240], file_test$813
	mov [rbp + 248], rbp
	add rbp, 240
	jmp fopen

 file_test$813:
	; PostCall 240

 file_test$814:
	; GetReturnValue £temporary4207

 file_test$815:
	; Assign inFilePtr £temporary4207
	mov [rbp + 240], rbx

 file_test$816:
	; NotEqual 828 outFilePtr 0
	cmp qword [rbp + 232], 0
	jne file_test$828

 file_test$817:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$818:
	; Parameter 272 pointer stderr
	mov rax, [stderr]
	mov [rbp + 272], rax

 file_test$819:
	; Parameter 280 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 280], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$820:
	; Parameter 288 pointer "outFilePtr != NULL"
	mov qword [rbp + 288], string_outFilePtr20213D20NULL#

 file_test$821:
	; Parameter 296 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 296], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$822:
	; Parameter 304 signedint 269
	mov dword [rbp + 304], 269

 file_test$823:
	; Call 248 fprintf 20
	mov qword [rbp + 248], file_test$824
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$824:
	; PostCall 248

 file_test$825:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$826:
	; Call 248 abort 0
	mov qword [rbp + 248], file_test$827
	mov [rbp + 256], rbp
	add rbp, 248
	jmp abort

 file_test$827:
	; PostCall 248

 file_test$828:
	; NotEqual 840 inFilePtr 0
	cmp qword [rbp + 240], 0
	jne file_test$840

 file_test$829:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$830:
	; Parameter 272 pointer stderr
	mov rax, [stderr]
	mov [rbp + 272], rax

 file_test$831:
	; Parameter 280 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 280], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$832:
	; Parameter 288 pointer "inFilePtr != NULL"
	mov qword [rbp + 288], string_inFilePtr20213D20NULL#

 file_test$833:
	; Parameter 296 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 296], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$834:
	; Parameter 304 signedint 270
	mov dword [rbp + 304], 270

 file_test$835:
	; Call 248 fprintf 20
	mov qword [rbp + 248], file_test$836
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$836:
	; PostCall 248

 file_test$837:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$838:
	; Call 248 abort 0
	mov qword [rbp + 248], file_test$839
	mov [rbp + 256], rbp
	add rbp, 248
	jmp abort

 file_test$839:
	; PostCall 248

 file_test$840:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$841:
	; Parameter 272 pointer personVector
	mov [rbp + 272], rbp
	add qword [rbp + 272], 24

 file_test$842:
	; Parameter 280 signedint 156
	mov dword [rbp + 280], 156

 file_test$843:
	; Parameter 284 signedint 1
	mov dword [rbp + 284], 1

 file_test$844:
	; Parameter 288 pointer outFilePtr
	mov rax, [rbp + 232]
	mov [rbp + 288], rax

 file_test$845:
	; Call 248 fwrite 0
	mov qword [rbp + 248], file_test$846
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fwrite

 file_test$846:
	; PostCall 248

 file_test$847:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$848:
	; Parameter 272 pointer outFilePtr
	mov rax, [rbp + 232]
	mov [rbp + 272], rax

 file_test$849:
	; Call 248 fclose 0
	mov qword [rbp + 248], file_test$850
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fclose

 file_test$850:
	; PostCall 248

 file_test$851:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$852:
	; Parameter 272 pointer inFilePtr
	mov rax, [rbp + 240]
	mov [rbp + 272], rax

 file_test$853:
	; Call 248 feof 0
	mov qword [rbp + 248], file_test$854
	mov [rbp + 256], rbp
	add rbp, 248
	jmp feof

 file_test$854:
	; PostCall 248

 file_test$855:
	; GetReturnValue £temporary4218

 file_test$856:
	; NotEqual 876 £temporary4218 0
	cmp ebx, 0
	jne file_test$876

 file_test$857:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$858:
	; Address £temporary4221 person
	mov rsi, rbp
	add rsi, 180

 file_test$859:
	; Parameter 272 pointer £temporary4221
	mov [rbp + 272], rsi

 file_test$860:
	; Parameter 280 signedint 52
	mov dword [rbp + 280], 52

 file_test$861:
	; Parameter 284 signedint 1
	mov dword [rbp + 284], 1

 file_test$862:
	; Parameter 288 pointer inFilePtr
	mov rax, [rbp + 240]
	mov [rbp + 288], rax

 file_test$863:
	; Call 248 fread 0
	mov qword [rbp + 248], file_test$864
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fread

 file_test$864:
	; PostCall 248

 file_test$865:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$866:
	; Parameter 272 pointer "Name  : %s\n"
	mov qword [rbp + 272], string_Name20203A2025s0A#

 file_test$867:
	; Parameter 280 pointer person.name
	mov [rbp + 280], rbp
	add qword [rbp + 280], 180

 file_test$868:
	; Call 248 printf 8
	mov qword [rbp + 248], file_test$869
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$869:
	; PostCall 248

 file_test$870:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$871:
	; Parameter 272 pointer "Phone : %d\n"
	mov qword [rbp + 272], string_Phone203A2025d0A#

 file_test$872:
	; Parameter 280 signedint person.phone
	mov eax, [rbp + 228]
	mov [rbp + 280], eax

 file_test$873:
	; Call 248 printf 4
	mov qword [rbp + 248], file_test$874
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$874:
	; PostCall 248

 file_test$875:
	; Goto 851
	jmp file_test$851

 file_test$876:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$877:
	; Parameter 272 pointer inFilePtr
	mov rax, [rbp + 240]
	mov [rbp + 272], rax

 file_test$878:
	; Call 248 fclose 0
	mov qword [rbp + 248], file_test$879
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fclose

 file_test$879:
	; PostCall 248

 file_test$880:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 file_test$881:
	; FunctionEnd file_test
