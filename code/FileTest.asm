	global file_test

	extern fopen
	extern stderr
	extern fprintf
	extern abort
	extern fscanf
	extern sqrt
	extern fclose
	extern rename
	extern printf
	extern errno
	extern strerror
	extern remove
	extern fgetc
	extern putc
	extern fwrite
	extern fread
	extern malloc
	extern free
	extern feof
	extern fseek
	extern ftell
	extern putchar
	extern fileexists
	extern tmpfile
	extern toupper
	extern rewind
	extern $StackTop


section .data

string_r#:
	; Initializer String r
	db "r", 0

section .data

string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

string_inFilePtrPtr20213D20NULL#:
	; Initializer String inFilePtrPtr != NULL
	db "inFilePtrPtr != NULL", 0

section .data

string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

string_w#:
	; Initializer String w
	db "w", 0

section .data

string_outFilePtrPtr20213D20NULL#:
	; Initializer String outFilePtrPtr != NULL
	db "outFilePtrPtr != NULL", 0

section .data

string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

string_25lf#:
	; Initializer String %lf
	db "%lf", 0

section .data

string_25f0A#:
	; Initializer String %f\n
	db "%f", 10, 0

section .data

string_X#:
	; Initializer String X
	db "X", 0

section .data

string_Y#:
	; Initializer String Y
	db "Y", 0

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

string_2225s2220has20been20removed2E0A#:
	; Initializer String "%s" has been removed.\n
	db 34, "%s", 34, " has been removed.", 10, 0

section .data

string_PBook2Etxt#:
	; Initializer String PBook.txt
	db "PBook.txt", 0

section .data

string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

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

string_0A#:
	; Initializer String \n
	db 10, 0

section .data

string_Flow12Etxt#:
	; Initializer String Flow1.txt
	db "Flow1.txt", 0

section .data

string_Flow22Etxt#:
	; Initializer String Flow2.txt
	db "Flow2.txt", 0

section .data

string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

string_Test2Ebin#:
	; Initializer String Test.bin
	db "Test.bin", 0

section .data

string_size12025i0A#:
	; Initializer String size1 %i\n
	db "size1 %i", 10, 0

section .data

string_index12025i3A20value2025f0A#:
	; Initializer String index1 %i: value %f\n
	db "index1 %i: value %f", 10, 0

section .data

string_size22025i0A#:
	; Initializer String size2 %i\n
	db "size2 %i", 10, 0

section .data

string_index22025i3A20value2025f0A#:
	; Initializer String index2 %i: value %f\n
	db "index2 %i: value %f", 10, 0

section .data

string_size32025i20total2025i0A#:
	; Initializer String size3 %i total %i\n
	db "size3 %i total %i", 10, 0

section .data

string_p20213D20NULL#:
	; Initializer String p != NULL
	db "p != NULL", 0

section .data

string_malloc2025u2025u2025u0A#:
	; Initializer String malloc %u %u %u\n
	db "malloc %u %u %u", 10, 0

section .data

string_index32025i3A20value2025f0A#:
	; Initializer String index3 %i: value %f\n
	db "index3 %i: value %f", 10, 0

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

string_Test12Etxt#:
	; Initializer String Test1.txt
	db "Test1.txt", 0

section .data

string_0A0A#:
	; Initializer String \n\n
	db 10, 10, 0

section .data

string_fileexists20X2025s0A#:
	; Initializer String fileexists X %s\n
	db "fileexists X %s", 10, 0

section .data

string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

string_No#:
	; Initializer String No
	db "No", 0

section .data

string_fileexists20Y2025s0A0A#:
	; Initializer String fileexists Y %s\n\n
	db "fileexists Y %s", 10, 10, 0

section .data

string_PBookX2Etxt#:
	; Initializer String PBookX.txt
	db "PBookX.txt", 0

section .data

string_r2B#:
	; Initializer String r+
	db "r+", 0

section .data

string_inOutFilePtr20213D20NULL#:
	; Initializer String inOutFilePtr != NULL
	db "inOutFilePtr != NULL", 0

section .data

string_tempFilePtr20213D20NULL#:
	; Initializer String tempFilePtr != NULL
	db "tempFilePtr != NULL", 0

section .data

string_0A2D2D2D2D2D2D2D2D2D2D2D2D0A#:
	; Initializer String \n------------\n
	db 10, "------------", 10, 0

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .data

Array_8#:
	; Initializer Array 8
	dq 8

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
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1:
	; Parameter pointer inFilePtrName 64
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$2:
	; Parameter pointer "r" 72
	mov qword [rbp + 72], string_r#

 file_test$3:
	; Call fopen 40 0
	mov qword [rbp + 40], file_test$4
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

 file_test$4:
	; PostCall 40

 file_test$5:
	; GetReturnValue £temporary3302

 file_test$6:
	; Assign inFilePtrPtr £temporary3302
	mov [rbp + 40], rbx

 file_test$7:
	; NotEqual 19 inFilePtrPtr 0
	cmp qword [rbp + 40], 0
	jne file_test$19

 file_test$8:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$9:
	; Parameter pointer stderr 72
	mov rax, [stderr]
	mov [rbp + 72], rax

 file_test$10:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 80
	mov qword [rbp + 80], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$11:
	; Parameter pointer "inFilePtrPtr != NULL" 88
	mov qword [rbp + 88], string_inFilePtrPtr20213D20NULL#

 file_test$12:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c" 96
	mov qword [rbp + 96], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$13:
	; Parameter signedint 11 104
	mov dword [rbp + 104], 11

 file_test$14:
	; Call fprintf 48 20
	mov qword [rbp + 48], file_test$15
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$15:
	; PostCall 48

 file_test$16:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$17:
	; Call abort 48 0
	mov qword [rbp + 48], file_test$18
	mov [rbp + 56], rbp
	add rbp, 48
	jmp abort

 file_test$18:
	; PostCall 48

 file_test$19:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$20:
	; Parameter pointer outFilePtrName 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 file_test$21:
	; Parameter pointer "w" 80
	mov qword [rbp + 80], string_w#

 file_test$22:
	; Call fopen 48 0
	mov qword [rbp + 48], file_test$23
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fopen

 file_test$23:
	; PostCall 48

 file_test$24:
	; GetReturnValue £temporary3307

 file_test$25:
	; Assign outFilePtrPtr £temporary3307
	mov [rbp + 48], rbx

 file_test$26:
	; NotEqual 38 outFilePtrPtr 0
	cmp qword [rbp + 48], 0
	jne file_test$38

 file_test$27:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$28:
	; Parameter pointer stderr 80
	mov rax, [stderr]
	mov [rbp + 80], rax

 file_test$29:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 88
	mov qword [rbp + 88], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$30:
	; Parameter pointer "outFilePtrPtr != NULL" 96
	mov qword [rbp + 96], string_outFilePtrPtr20213D20NULL#

 file_test$31:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c" 104
	mov qword [rbp + 104], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$32:
	; Parameter signedint 13 112
	mov dword [rbp + 112], 13

 file_test$33:
	; Call fprintf 56 20
	mov qword [rbp + 56], file_test$34
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$34:
	; PostCall 56

 file_test$35:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$36:
	; Call abort 56 0
	mov qword [rbp + 56], file_test$37
	mov [rbp + 64], rbp
	add rbp, 56
	jmp abort

 file_test$37:
	; PostCall 56

 file_test$38:
	; Assign size 0
	mov dword [rbp + 56], 0

 file_test$39:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$40:
	; Parameter pointer inFilePtrPtr 88
	mov rax, [rbp + 40]
	mov [rbp + 88], rax

 file_test$41:
	; Parameter pointer "%i" 96
	mov qword [rbp + 96], string_25i#

 file_test$42:
	; Address £temporary3312 size
	mov rsi, rbp
	add rsi, 56

 file_test$43:
	; Parameter pointer £temporary3312 104
	mov [rbp + 104], rsi

 file_test$44:
	; Call fscanf 64 8
	mov qword [rbp + 64], file_test$45
	mov [rbp + 72], rbp
	add rbp, 64
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 file_test$45:
	; PostCall 64

 file_test$46:
	; Assign index 0
	mov dword [rbp + 60], 0

 file_test$47:
	; SignedGreaterThanEqual 73 index size
	mov eax, [rbp + 56]
	cmp [rbp + 60], eax
	jge file_test$73

 file_test$48:
	; PushFloat 0
	fldz

 file_test$49:
	; PopFloat inValue
	fstp qword [rbp + 64]

 file_test$50:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$51:
	; Parameter pointer inFilePtrPtr 96
	mov rax, [rbp + 40]
	mov [rbp + 96], rax

 file_test$52:
	; Parameter pointer "%lf" 104
	mov qword [rbp + 104], string_25lf#

 file_test$53:
	; Address £temporary3316 inValue
	mov rsi, rbp
	add rsi, 64

 file_test$54:
	; Parameter pointer £temporary3316 112
	mov [rbp + 112], rsi

 file_test$55:
	; Call fscanf 72 8
	mov qword [rbp + 72], file_test$56
	mov [rbp + 80], rbp
	add rbp, 72
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 file_test$56:
	; PostCall 72

 file_test$57:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$58:
	; PushFloat inValue
	fld qword [rbp + 64]

 file_test$59:
	; Parameter double £temporary3318 96
	fstp qword [rbp + 96]

 file_test$60:
	; Call sqrt 72 0
	mov qword [rbp + 72], file_test$61
	mov [rbp + 80], rbp
	add rbp, 72
	jmp sqrt

 file_test$61:
	; PostCall 72

 file_test$62:
	; GetReturnValue £temporary3319

 file_test$63:
	; PopFloat outValue
	fstp qword [rbp + 72]

 file_test$64:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$65:
	; Parameter pointer outFilePtrPtr 104
	mov rax, [rbp + 48]
	mov [rbp + 104], rax

 file_test$66:
	; Parameter pointer "%f\n" 112
	mov qword [rbp + 112], string_25f0A#

 file_test$67:
	; PushFloat outValue
	fld qword [rbp + 72]

 file_test$68:
	; Parameter double outValue 120
	fstp qword [rbp + 120]

 file_test$69:
	; Call fprintf 80 8
	mov qword [rbp + 80], file_test$70
	mov [rbp + 88], rbp
	add rbp, 80
	mov rdi, rbp
	add rdi, 8
	jmp fprintf

 file_test$70:
	; PostCall 80

 file_test$71:
	; BinaryAdd index index 1
	inc dword [rbp + 60]

 file_test$72:
	; Goto 47
	jmp file_test$47

 file_test$73:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$74:
	; Parameter pointer inFilePtrPtr 88
	mov rax, [rbp + 40]
	mov [rbp + 88], rax

 file_test$75:
	; Call fclose 64 0
	mov qword [rbp + 64], file_test$76
	mov [rbp + 72], rbp
	add rbp, 64
	jmp fclose

 file_test$76:
	; PostCall 64

 file_test$77:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$78:
	; Parameter pointer outFilePtrPtr 88
	mov rax, [rbp + 48]
	mov [rbp + 88], rax

 file_test$79:
	; Call fclose 64 0
	mov qword [rbp + 64], file_test$80
	mov [rbp + 72], rbp
	add rbp, 64
	jmp fclose

 file_test$80:
	; PostCall 64

 file_test$81:
	; Assign sourceFilePtr "X"
	mov qword [rbp + 40], string_X#

 file_test$82:
	; Assign targetFilePtr "Y"
	mov qword [rbp + 48], string_Y#

 file_test$83:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$84:
	; Parameter pointer sourceFilePtr 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 file_test$85:
	; Parameter pointer targetFilePtr 88
	mov rax, [rbp + 48]
	mov [rbp + 88], rax

 file_test$86:
	; Call rename 56 0
	mov qword [rbp + 56], file_test$87
	mov [rbp + 64], rbp
	add rbp, 56
	jmp rename

 file_test$87:
	; PostCall 56

 file_test$88:
	; GetReturnValue £temporary3323

 file_test$89:
	; NotEqual 97 £temporary3323 0
	cmp ebx, 0
	jne file_test$97

 file_test$90:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$91:
	; Parameter pointer ""%s" has been renamed to "%s".\n" 80
	mov qword [rbp + 80], string_2225s2220has20been20renamed20to202225s222E0A#

 file_test$92:
	; Parameter pointer sourceFilePtr 88
	mov rax, [rbp + 40]
	mov [rbp + 88], rax

 file_test$93:
	; Parameter pointer targetFilePtr 96
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

 file_test$94:
	; Call printf 56 16
	mov qword [rbp + 56], file_test$95
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$95:
	; PostCall 56

 file_test$96:
	; Goto 108
	jmp file_test$108

 file_test$97:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$98:
	; Parameter pointer "Error %i: %s.\n" 80
	mov qword [rbp + 80], string_Error2025i3A2025s2E0A#

 file_test$99:
	; Parameter signedint errno 88
	mov eax, [errno]
	mov [rbp + 88], eax

 file_test$100:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$101:
	; Parameter signedint errno 116
	mov eax, [errno]
	mov [rbp + 116], eax

 file_test$102:
	; Call strerror 92 0
	mov qword [rbp + 92], file_test$103
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strerror

 file_test$103:
	; PostCall 92

 file_test$104:
	; GetReturnValue £temporary3326

 file_test$105:
	; Parameter pointer £temporary3326 92
	mov [rbp + 92], rbx

 file_test$106:
	; Call printf 56 12
	mov qword [rbp + 56], file_test$107
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$107:
	; PostCall 56

 file_test$108:
	; Assign targetFilePtr "Z"
	mov qword [rbp + 40], string_Z#

 file_test$109:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$110:
	; Parameter pointer targetFilePtr 72
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

 file_test$111:
	; Call remove 48 0
	mov qword [rbp + 48], file_test$112
	mov [rbp + 56], rbp
	add rbp, 48
	jmp remove

 file_test$112:
	; PostCall 48

 file_test$113:
	; GetReturnValue £temporary3328

 file_test$114:
	; NotEqual 121 £temporary3328 0
	cmp ebx, 0
	jne file_test$121

 file_test$115:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$116:
	; Parameter pointer ""%s" has been removed.\n" 72
	mov qword [rbp + 72], string_2225s2220has20been20removed2E0A#

 file_test$117:
	; Parameter pointer targetFilePtr 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 file_test$118:
	; Call printf 48 8
	mov qword [rbp + 48], file_test$119
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$119:
	; PostCall 48

 file_test$120:
	; Goto 132
	jmp file_test$132

 file_test$121:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$122:
	; Parameter pointer "Error %i: %s.\n" 72
	mov qword [rbp + 72], string_Error2025i3A2025s2E0A#

 file_test$123:
	; Parameter signedint errno 80
	mov eax, [errno]
	mov [rbp + 80], eax

 file_test$124:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$125:
	; Parameter signedint errno 108
	mov eax, [errno]
	mov [rbp + 108], eax

 file_test$126:
	; Call strerror 84 0
	mov qword [rbp + 84], file_test$127
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 file_test$127:
	; PostCall 84

 file_test$128:
	; GetReturnValue £temporary3331

 file_test$129:
	; Parameter pointer £temporary3331 84
	mov [rbp + 84], rbx

 file_test$130:
	; Call printf 48 12
	mov qword [rbp + 48], file_test$131
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$131:
	; PostCall 48

 file_test$132:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$133:
	; Parameter pointer "PBook.txt" 64
	mov qword [rbp + 64], string_PBook2Etxt#

 file_test$134:
	; Parameter pointer "r" 72
	mov qword [rbp + 72], string_r#

 file_test$135:
	; Call fopen 40 0
	mov qword [rbp + 40], file_test$136
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

 file_test$136:
	; PostCall 40

 file_test$137:
	; GetReturnValue £temporary3333

 file_test$138:
	; Assign inFilePtr £temporary3333
	mov [rbp + 40], rbx

 file_test$139:
	; NotEqual 151 inFilePtr 0
	cmp qword [rbp + 40], 0
	jne file_test$151

 file_test$140:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$141:
	; Parameter pointer stderr 72
	mov rax, [stderr]
	mov [rbp + 72], rax

 file_test$142:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 80
	mov qword [rbp + 80], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$143:
	; Parameter pointer "inFilePtr != NULL" 88
	mov qword [rbp + 88], string_inFilePtr20213D20NULL#

 file_test$144:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c" 96
	mov qword [rbp + 96], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$145:
	; Parameter signedint 51 104
	mov dword [rbp + 104], 51

 file_test$146:
	; Call fprintf 48 20
	mov qword [rbp + 48], file_test$147
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$147:
	; PostCall 48

 file_test$148:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$149:
	; Call abort 48 0
	mov qword [rbp + 48], file_test$150
	mov [rbp + 56], rbp
	add rbp, 48
	jmp abort

 file_test$150:
	; PostCall 48

 file_test$151:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$152:
	; Parameter pointer "\n%-24s %-24s\n" 72
	mov qword [rbp + 72], string_0A252D24s20252D24s0A#

 file_test$153:
	; Parameter pointer "Name" 80
	mov qword [rbp + 80], string_Name#

 file_test$154:
	; Parameter pointer "Phone" 88
	mov qword [rbp + 88], string_Phone#

 file_test$155:
	; Call printf 48 16
	mov qword [rbp + 48], file_test$156
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$156:
	; PostCall 48

 file_test$157:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$158:
	; Parameter pointer "%-24s %-24s\n" 72
	mov qword [rbp + 72], string_252D24s20252D24s0A#

 file_test$159:
	; Parameter pointer "========================" 80
	mov qword [rbp + 80], string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#

 file_test$160:
	; Parameter pointer "========================" 88
	mov qword [rbp + 88], string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#

 file_test$161:
	; Call printf 48 16
	mov qword [rbp + 48], file_test$162
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$162:
	; PostCall 48

 file_test$163:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$164:
	; Parameter pointer inFilePtr 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 file_test$165:
	; Parameter pointer "%i" 88
	mov qword [rbp + 88], string_25i#

 file_test$166:
	; Address £temporary3340 size
	mov rsi, rbp
	add rsi, 52

 file_test$167:
	; Parameter pointer £temporary3340 96
	mov [rbp + 96], rsi

 file_test$168:
	; Call fscanf 56 8
	mov qword [rbp + 56], file_test$169
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 file_test$169:
	; PostCall 56

 file_test$170:
	; Assign count 0
	mov dword [rbp + 48], 0

 file_test$171:
	; SignedGreaterThanEqual 187 count size
	mov eax, [rbp + 52]
	cmp [rbp + 48], eax
	jge file_test$187

 file_test$172:
	; PreCall 96 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$173:
	; Parameter pointer inFilePtr 120
	mov rax, [rbp + 40]
	mov [rbp + 120], rax

 file_test$174:
	; Parameter pointer "%s%s" 128
	mov qword [rbp + 128], string_25s25s#

 file_test$175:
	; Parameter pointer name 136
	mov [rbp + 136], rbp
	add qword [rbp + 136], 56

 file_test$176:
	; Parameter pointer phone 144
	mov [rbp + 144], rbp
	add qword [rbp + 144], 76

 file_test$177:
	; Call fscanf 96 16
	mov qword [rbp + 96], file_test$178
	mov [rbp + 104], rbp
	add rbp, 96
	mov rdi, rbp
	add rdi, 16
	jmp fscanf

 file_test$178:
	; PostCall 96

 file_test$179:
	; PreCall 96 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$180:
	; Parameter pointer "%-24s %-24s\n" 120
	mov qword [rbp + 120], string_252D24s20252D24s0A#

 file_test$181:
	; Parameter pointer name 128
	mov [rbp + 128], rbp
	add qword [rbp + 128], 56

 file_test$182:
	; Parameter pointer phone 136
	mov [rbp + 136], rbp
	add qword [rbp + 136], 76

 file_test$183:
	; Call printf 96 16
	mov qword [rbp + 96], file_test$184
	mov [rbp + 104], rbp
	add rbp, 96
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$184:
	; PostCall 96

 file_test$185:
	; BinaryAdd count count 1
	inc dword [rbp + 48]

 file_test$186:
	; Goto 171
	jmp file_test$171

 file_test$187:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$188:
	; Parameter pointer "\n" 80
	mov qword [rbp + 80], string_0A#

 file_test$189:
	; Call printf 56 0
	mov qword [rbp + 56], file_test$190
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	jmp printf

 file_test$190:
	; PostCall 56

 file_test$191:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$192:
	; Parameter pointer inFilePtr 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 file_test$193:
	; Call fclose 56 0
	mov qword [rbp + 56], file_test$194
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fclose

 file_test$194:
	; PostCall 56

 file_test$195:
	; Assign sourceFilePtr "Flow1.txt"
	mov qword [rbp + 40], string_Flow12Etxt#

 file_test$196:
	; Assign targetFilePtr "Flow2.txt"
	mov qword [rbp + 48], string_Flow22Etxt#

 file_test$197:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$198:
	; Parameter pointer sourceFilePtr 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 file_test$199:
	; Parameter pointer "r" 88
	mov qword [rbp + 88], string_r#

 file_test$200:
	; Call fopen 56 0
	mov qword [rbp + 56], file_test$201
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fopen

 file_test$201:
	; PostCall 56

 file_test$202:
	; GetReturnValue £temporary3348

 file_test$203:
	; Assign inFilePtr £temporary3348
	mov [rbp + 56], rbx

 file_test$204:
	; NotEqual 216 inFilePtr 0
	cmp qword [rbp + 56], 0
	jne file_test$216

 file_test$205:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$206:
	; Parameter pointer stderr 88
	mov rax, [stderr]
	mov [rbp + 88], rax

 file_test$207:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 96
	mov qword [rbp + 96], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$208:
	; Parameter pointer "inFilePtr != NULL" 104
	mov qword [rbp + 104], string_inFilePtr20213D20NULL#

 file_test$209:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c" 112
	mov qword [rbp + 112], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$210:
	; Parameter signedint 77 120
	mov dword [rbp + 120], 77

 file_test$211:
	; Call fprintf 64 20
	mov qword [rbp + 64], file_test$212
	mov [rbp + 72], rbp
	add rbp, 64
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$212:
	; PostCall 64

 file_test$213:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$214:
	; Call abort 64 0
	mov qword [rbp + 64], file_test$215
	mov [rbp + 72], rbp
	add rbp, 64
	jmp abort

 file_test$215:
	; PostCall 64

 file_test$216:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$217:
	; Parameter pointer targetFilePtr 88
	mov rax, [rbp + 48]
	mov [rbp + 88], rax

 file_test$218:
	; Parameter pointer "w" 96
	mov qword [rbp + 96], string_w#

 file_test$219:
	; Call fopen 64 0
	mov qword [rbp + 64], file_test$220
	mov [rbp + 72], rbp
	add rbp, 64
	jmp fopen

 file_test$220:
	; PostCall 64

 file_test$221:
	; GetReturnValue £temporary3353

 file_test$222:
	; Assign outFilePtr £temporary3353
	mov [rbp + 64], rbx

 file_test$223:
	; NotEqual 235 outFilePtr 0
	cmp qword [rbp + 64], 0
	jne file_test$235

 file_test$224:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$225:
	; Parameter pointer stderr 96
	mov rax, [stderr]
	mov [rbp + 96], rax

 file_test$226:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 104
	mov qword [rbp + 104], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$227:
	; Parameter pointer "outFilePtr != NULL" 112
	mov qword [rbp + 112], string_outFilePtr20213D20NULL#

 file_test$228:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c" 120
	mov qword [rbp + 120], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$229:
	; Parameter signedint 80 128
	mov dword [rbp + 128], 80

 file_test$230:
	; Call fprintf 72 20
	mov qword [rbp + 72], file_test$231
	mov [rbp + 80], rbp
	add rbp, 72
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$231:
	; PostCall 72

 file_test$232:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$233:
	; Call abort 72 0
	mov qword [rbp + 72], file_test$234
	mov [rbp + 80], rbp
	add rbp, 72
	jmp abort

 file_test$234:
	; PostCall 72

 file_test$235:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$236:
	; Parameter pointer inFilePtr 96
	mov rax, [rbp + 56]
	mov [rbp + 96], rax

 file_test$237:
	; Call fgetc 72 0
	mov qword [rbp + 72], file_test$238
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fgetc

 file_test$238:
	; PostCall 72

 file_test$239:
	; GetReturnValue £temporary3358

 file_test$240:
	; IntegralToIntegral £temporary3359 £temporary3358
	cmp ebx, 0
	jge file_test$241
	neg ebx
	neg bl

 file_test$241:
	; Assign c £temporary3359
	mov [rbp + 72], bl

 file_test$242:
	; IntegralToIntegral £temporary3360 c
	mov al, [rbp + 72]
	and eax, 255
	cmp al, 0
	jge file_test$243
	neg al
	neg eax

 file_test$243:
	; Equal 257 £temporary3360 -1
	cmp eax, -1
	je file_test$257

 file_test$244:
	; PreCall 73 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$245:
	; IntegralToIntegral £temporary3362 c
	mov al, [rbp + 72]
	and eax, 255
	cmp al, 0
	jge file_test$246
	neg al
	neg eax

 file_test$246:
	; Parameter signedint £temporary3362 97
	mov [rbp + 97], eax

 file_test$247:
	; Parameter pointer outFilePtr 101
	mov rax, [rbp + 64]
	mov [rbp + 101], rax

 file_test$248:
	; Call putc 73 0
	mov qword [rbp + 73], file_test$249
	mov [rbp + 81], rbp
	add rbp, 73
	jmp putc

 file_test$249:
	; PostCall 73

 file_test$250:
	; NotEqual 235 c 10
	cmp byte [rbp + 72], 10
	jne file_test$235

 file_test$251:
	; PreCall 73 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$252:
	; Parameter signedint 10 97
	mov dword [rbp + 97], 10

 file_test$253:
	; Parameter pointer outFilePtr 101
	mov rax, [rbp + 64]
	mov [rbp + 101], rax

 file_test$254:
	; Call putc 73 0
	mov qword [rbp + 73], file_test$255
	mov [rbp + 81], rbp
	add rbp, 73
	jmp putc

 file_test$255:
	; PostCall 73

 file_test$256:
	; Goto 235
	jmp file_test$235

 file_test$257:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$258:
	; Parameter pointer inFilePtr 96
	mov rax, [rbp + 56]
	mov [rbp + 96], rax

 file_test$259:
	; Call fclose 72 0
	mov qword [rbp + 72], file_test$260
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fclose

 file_test$260:
	; PostCall 72

 file_test$261:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$262:
	; Parameter pointer outFilePtr 96
	mov rax, [rbp + 64]
	mov [rbp + 96], rax

 file_test$263:
	; Call fclose 72 0
	mov qword [rbp + 72], file_test$264
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fclose

 file_test$264:
	; PostCall 72

 file_test$265:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$266:
	; Parameter pointer "Test.bin" 64
	mov qword [rbp + 64], string_Test2Ebin#

 file_test$267:
	; Parameter pointer "w" 72
	mov qword [rbp + 72], string_w#

 file_test$268:
	; Call fopen 40 0
	mov qword [rbp + 40], file_test$269
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

 file_test$269:
	; PostCall 40

 file_test$270:
	; GetReturnValue £temporary3369

 file_test$271:
	; Assign outFilePtr £temporary3369
	mov [rbp + 40], rbx

 file_test$272:
	; NotEqual 284 outFilePtr 0
	cmp qword [rbp + 40], 0
	jne file_test$284

 file_test$273:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$274:
	; Parameter pointer stderr 72
	mov rax, [stderr]
	mov [rbp + 72], rax

 file_test$275:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 80
	mov qword [rbp + 80], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$276:
	; Parameter pointer "outFilePtr != NULL" 88
	mov qword [rbp + 88], string_outFilePtr20213D20NULL#

 file_test$277:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c" 96
	mov qword [rbp + 96], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$278:
	; Parameter signedint 101 104
	mov dword [rbp + 104], 101

 file_test$279:
	; Call fprintf 48 20
	mov qword [rbp + 48], file_test$280
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$280:
	; PostCall 48

 file_test$281:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$282:
	; Call abort 48 0
	mov qword [rbp + 48], file_test$283
	mov [rbp + 56], rbp
	add rbp, 48
	jmp abort

 file_test$283:
	; PostCall 48

 file_test$284:
	; Assign size 10
	mov dword [rbp + 48], 10

 file_test$285:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$286:
	; Address £temporary3374 size
	mov rsi, rbp
	add rsi, 48

 file_test$287:
	; Parameter pointer £temporary3374 76
	mov [rbp + 76], rsi

 file_test$288:
	; Parameter signedint 4 84
	mov dword [rbp + 84], 4

 file_test$289:
	; Parameter signedint 1 88
	mov dword [rbp + 88], 1

 file_test$290:
	; Parameter pointer outFilePtr 92
	mov rax, [rbp + 40]
	mov [rbp + 92], rax

 file_test$291:
	; Call fwrite 52 0
	mov qword [rbp + 52], file_test$292
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fwrite

 file_test$292:
	; PostCall 52

 file_test$293:
	; Assign index 0
	mov dword [rbp + 52], 0

 file_test$294:
	; SignedGreaterThanEqual 308 index size
	mov eax, [rbp + 48]
	cmp [rbp + 52], eax
	jge file_test$308

 file_test$295:
	; SignedMultiply £temporary3378 index index
	mov eax, [rbp + 52]
	xor edx, edx
	imul dword [rbp + 52]

 file_test$296:
	; IntegralToFloating £temporary3379 £temporary3378
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 file_test$297:
	; PopFloat value
	fstp qword [rbp + 56]

 file_test$298:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$299:
	; Address £temporary3380 value
	mov rsi, rbp
	add rsi, 56

 file_test$300:
	; Parameter pointer £temporary3380 88
	mov [rbp + 88], rsi

 file_test$301:
	; Parameter signedint 8 96
	mov dword [rbp + 96], 8

 file_test$302:
	; Parameter signedint 1 100
	mov dword [rbp + 100], 1

 file_test$303:
	; Parameter pointer outFilePtr 104
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 file_test$304:
	; Call fwrite 64 0
	mov qword [rbp + 64], file_test$305
	mov [rbp + 72], rbp
	add rbp, 64
	jmp fwrite

 file_test$305:
	; PostCall 64

 file_test$306:
	; BinaryAdd index index 1
	inc dword [rbp + 52]

 file_test$307:
	; Goto 294
	jmp file_test$294

 file_test$308:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$309:
	; Parameter pointer outFilePtr 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 file_test$310:
	; Call fclose 56 0
	mov qword [rbp + 56], file_test$311
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fclose

 file_test$311:
	; PostCall 56

 file_test$312:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$313:
	; Parameter pointer "Test.bin" 64
	mov qword [rbp + 64], string_Test2Ebin#

 file_test$314:
	; Parameter pointer "r" 72
	mov qword [rbp + 72], string_r#

 file_test$315:
	; Call fopen 40 0
	mov qword [rbp + 40], file_test$316
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

 file_test$316:
	; PostCall 40

 file_test$317:
	; GetReturnValue £temporary3383

 file_test$318:
	; Assign inFilePtr £temporary3383
	mov [rbp + 40], rbx

 file_test$319:
	; NotEqual 331 inFilePtr 0
	cmp qword [rbp + 40], 0
	jne file_test$331

 file_test$320:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$321:
	; Parameter pointer stderr 72
	mov rax, [stderr]
	mov [rbp + 72], rax

 file_test$322:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 80
	mov qword [rbp + 80], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$323:
	; Parameter pointer "inFilePtr != NULL" 88
	mov qword [rbp + 88], string_inFilePtr20213D20NULL#

 file_test$324:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c" 96
	mov qword [rbp + 96], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$325:
	; Parameter signedint 116 104
	mov dword [rbp + 104], 116

 file_test$326:
	; Call fprintf 48 20
	mov qword [rbp + 48], file_test$327
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$327:
	; PostCall 48

 file_test$328:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$329:
	; Call abort 48 0
	mov qword [rbp + 48], file_test$330
	mov [rbp + 56], rbp
	add rbp, 48
	jmp abort

 file_test$330:
	; PostCall 48

 file_test$331:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$332:
	; Address £temporary3388 size
	mov rsi, rbp
	add rsi, 48

 file_test$333:
	; Parameter pointer £temporary3388 76
	mov [rbp + 76], rsi

 file_test$334:
	; Parameter signedint 4 84
	mov dword [rbp + 84], 4

 file_test$335:
	; Parameter signedint 1 88
	mov dword [rbp + 88], 1

 file_test$336:
	; Parameter pointer inFilePtr 92
	mov rax, [rbp + 40]
	mov [rbp + 92], rax

 file_test$337:
	; Call fread 52 0
	mov qword [rbp + 52], file_test$338
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fread

 file_test$338:
	; PostCall 52

 file_test$339:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$340:
	; Parameter pointer "size1 %i\n" 76
	mov qword [rbp + 76], string_size12025i0A#

 file_test$341:
	; Parameter signedint size 84
	mov eax, [rbp + 48]
	mov [rbp + 84], eax

 file_test$342:
	; Call printf 52 4
	mov qword [rbp + 52], file_test$343
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$343:
	; PostCall 52

 file_test$344:
	; PreCall 132 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$345:
	; Address £temporary3391 arr
	mov rsi, rbp
	add rsi, 52

 file_test$346:
	; Parameter pointer £temporary3391 156
	mov [rbp + 156], rsi

 file_test$347:
	; Parameter signedint 80 164
	mov dword [rbp + 164], 80

 file_test$348:
	; Parameter signedint 1 168
	mov dword [rbp + 168], 1

 file_test$349:
	; Parameter pointer inFilePtr 172
	mov rax, [rbp + 40]
	mov [rbp + 172], rax

 file_test$350:
	; Call fread 132 0
	mov qword [rbp + 132], file_test$351
	mov [rbp + 140], rbp
	add rbp, 132
	jmp fread

 file_test$351:
	; PostCall 132

 file_test$352:
	; PreCall 132 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$353:
	; Parameter pointer inFilePtr 156
	mov rax, [rbp + 40]
	mov [rbp + 156], rax

 file_test$354:
	; Call fclose 132 0
	mov qword [rbp + 132], file_test$355
	mov [rbp + 140], rbp
	add rbp, 132
	jmp fclose

 file_test$355:
	; PostCall 132

 file_test$356:
	; Assign index 0
	mov dword [rbp + 132], 0

 file_test$357:
	; SignedGreaterThanEqual 371 index 10
	cmp dword [rbp + 132], 10
	jge file_test$371

 file_test$358:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$359:
	; Parameter pointer "index1 %i: value %f\n" 160
	mov qword [rbp + 160], string_index12025i3A20value2025f0A#

 file_test$360:
	; Parameter signedint index 168
	mov eax, [rbp + 132]
	mov [rbp + 168], eax

 file_test$361:
	; IntegralToIntegral £temporary3397 index
	mov eax, [rbp + 132]
	mov rbx, 4294967295
	and rax, rbx

 file_test$362:
	; UnsignedMultiply £temporary3398 £temporary3397 8
	xor rdx, rdx
	mul qword [Array_8#]

 file_test$363:
	; BinaryAdd £temporary3399 arr £temporary3398
	mov rsi, rbp
	add rsi, 52
	add rsi, rax

 file_test$364:
	; Dereference £temporary3396 -> £temporary3399 £temporary3399 0

 file_test$365:
	; PushFloat £temporary3396 -> £temporary3399
	fld qword [rsi]

 file_test$366:
	; Parameter double £temporary3396 -> £temporary3399 172
	fstp qword [rbp + 172]

 file_test$367:
	; Call printf 136 12
	mov qword [rbp + 136], file_test$368
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$368:
	; PostCall 136

 file_test$369:
	; BinaryAdd index index 1
	inc dword [rbp + 132]

 file_test$370:
	; Goto 357
	jmp file_test$357

 file_test$371:
	; PreCall 136 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$372:
	; Parameter pointer "\n" 160
	mov qword [rbp + 160], string_0A#

 file_test$373:
	; Call printf 136 0
	mov qword [rbp + 136], file_test$374
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	jmp printf

 file_test$374:
	; PostCall 136

 file_test$375:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$376:
	; Parameter pointer "Test.bin" 64
	mov qword [rbp + 64], string_Test2Ebin#

 file_test$377:
	; Parameter pointer "r" 72
	mov qword [rbp + 72], string_r#

 file_test$378:
	; Call fopen 40 0
	mov qword [rbp + 40], file_test$379
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

 file_test$379:
	; PostCall 40

 file_test$380:
	; GetReturnValue £temporary3402

 file_test$381:
	; Assign inFilePtr £temporary3402
	mov [rbp + 40], rbx

 file_test$382:
	; NotEqual 394 inFilePtr 0
	cmp qword [rbp + 40], 0
	jne file_test$394

 file_test$383:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$384:
	; Parameter pointer stderr 72
	mov rax, [stderr]
	mov [rbp + 72], rax

 file_test$385:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 80
	mov qword [rbp + 80], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$386:
	; Parameter pointer "inFilePtr != NULL" 88
	mov qword [rbp + 88], string_inFilePtr20213D20NULL#

 file_test$387:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c" 96
	mov qword [rbp + 96], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$388:
	; Parameter signedint 134 104
	mov dword [rbp + 104], 134

 file_test$389:
	; Call fprintf 48 20
	mov qword [rbp + 48], file_test$390
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$390:
	; PostCall 48

 file_test$391:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$392:
	; Call abort 48 0
	mov qword [rbp + 48], file_test$393
	mov [rbp + 56], rbp
	add rbp, 48
	jmp abort

 file_test$393:
	; PostCall 48

 file_test$394:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$395:
	; Address £temporary3407 size
	mov rsi, rbp
	add rsi, 48

 file_test$396:
	; Parameter pointer £temporary3407 76
	mov [rbp + 76], rsi

 file_test$397:
	; Parameter signedint 4 84
	mov dword [rbp + 84], 4

 file_test$398:
	; Parameter signedint 1 88
	mov dword [rbp + 88], 1

 file_test$399:
	; Parameter pointer inFilePtr 92
	mov rax, [rbp + 40]
	mov [rbp + 92], rax

 file_test$400:
	; Call fread 52 0
	mov qword [rbp + 52], file_test$401
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fread

 file_test$401:
	; PostCall 52

 file_test$402:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$403:
	; Parameter pointer "size2 %i\n" 76
	mov qword [rbp + 76], string_size22025i0A#

 file_test$404:
	; Parameter signedint size 84
	mov eax, [rbp + 48]
	mov [rbp + 84], eax

 file_test$405:
	; Call printf 52 4
	mov qword [rbp + 52], file_test$406
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$406:
	; PostCall 52

 file_test$407:
	; Assign index 0
	mov dword [rbp + 52], 0

 file_test$408:
	; SignedGreaterThanEqual 426 index size
	mov eax, [rbp + 48]
	cmp [rbp + 52], eax
	jge file_test$426

 file_test$409:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$410:
	; Address £temporary3412 value
	mov rsi, rbp
	add rsi, 56

 file_test$411:
	; Parameter pointer £temporary3412 88
	mov [rbp + 88], rsi

 file_test$412:
	; Parameter signedint 8 96
	mov dword [rbp + 96], 8

 file_test$413:
	; Parameter signedint 1 100
	mov dword [rbp + 100], 1

 file_test$414:
	; Parameter pointer inFilePtr 104
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

 file_test$415:
	; Call fread 64 0
	mov qword [rbp + 64], file_test$416
	mov [rbp + 72], rbp
	add rbp, 64
	jmp fread

 file_test$416:
	; PostCall 64

 file_test$417:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$418:
	; Parameter pointer "index2 %i: value %f\n" 88
	mov qword [rbp + 88], string_index22025i3A20value2025f0A#

 file_test$419:
	; Parameter signedint index 96
	mov eax, [rbp + 52]
	mov [rbp + 96], eax

 file_test$420:
	; PushFloat value
	fld qword [rbp + 56]

 file_test$421:
	; Parameter double value 100
	fstp qword [rbp + 100]

 file_test$422:
	; Call printf 64 12
	mov qword [rbp + 64], file_test$423
	mov [rbp + 72], rbp
	add rbp, 64
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$423:
	; PostCall 64

 file_test$424:
	; BinaryAdd index index 1
	inc dword [rbp + 52]

 file_test$425:
	; Goto 408
	jmp file_test$408

 file_test$426:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$427:
	; Parameter pointer "\n" 80
	mov qword [rbp + 80], string_0A#

 file_test$428:
	; Call printf 56 0
	mov qword [rbp + 56], file_test$429
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	jmp printf

 file_test$429:
	; PostCall 56

 file_test$430:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$431:
	; Parameter pointer inFilePtr 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 file_test$432:
	; Call fclose 56 0
	mov qword [rbp + 56], file_test$433
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fclose

 file_test$433:
	; PostCall 56

 file_test$434:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$435:
	; Parameter pointer "Test.bin" 64
	mov qword [rbp + 64], string_Test2Ebin#

 file_test$436:
	; Parameter pointer "r" 72
	mov qword [rbp + 72], string_r#

 file_test$437:
	; Call fopen 40 0
	mov qword [rbp + 40], file_test$438
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

 file_test$438:
	; PostCall 40

 file_test$439:
	; GetReturnValue £temporary3417

 file_test$440:
	; Assign inFilePtr £temporary3417
	mov [rbp + 40], rbx

 file_test$441:
	; NotEqual 453 inFilePtr 0
	cmp qword [rbp + 40], 0
	jne file_test$453

 file_test$442:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$443:
	; Parameter pointer stderr 72
	mov rax, [stderr]
	mov [rbp + 72], rax

 file_test$444:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 80
	mov qword [rbp + 80], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$445:
	; Parameter pointer "inFilePtr != NULL" 88
	mov qword [rbp + 88], string_inFilePtr20213D20NULL#

 file_test$446:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c" 96
	mov qword [rbp + 96], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$447:
	; Parameter signedint 152 104
	mov dword [rbp + 104], 152

 file_test$448:
	; Call fprintf 48 20
	mov qword [rbp + 48], file_test$449
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$449:
	; PostCall 48

 file_test$450:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$451:
	; Call abort 48 0
	mov qword [rbp + 48], file_test$452
	mov [rbp + 56], rbp
	add rbp, 48
	jmp abort

 file_test$452:
	; PostCall 48

 file_test$453:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$454:
	; Address £temporary3422 size
	mov rsi, rbp
	add rsi, 48

 file_test$455:
	; Parameter pointer £temporary3422 76
	mov [rbp + 76], rsi

 file_test$456:
	; Parameter signedint 4 84
	mov dword [rbp + 84], 4

 file_test$457:
	; Parameter signedint 1 88
	mov dword [rbp + 88], 1

 file_test$458:
	; Parameter pointer inFilePtr 92
	mov rax, [rbp + 40]
	mov [rbp + 92], rax

 file_test$459:
	; Call fread 52 0
	mov qword [rbp + 52], file_test$460
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fread

 file_test$460:
	; PostCall 52

 file_test$461:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$462:
	; Parameter pointer "size3 %i total %i\n" 76
	mov qword [rbp + 76], string_size32025i20total2025i0A#

 file_test$463:
	; Parameter signedint size 84
	mov eax, [rbp + 48]
	mov [rbp + 84], eax

 file_test$464:
	; SignedMultiply £temporary3424 size 8
	mov eax, [rbp + 48]
	xor edx, edx
	imul dword [int4$8#]

 file_test$465:
	; Parameter signedint £temporary3424 88
	mov [rbp + 88], eax

 file_test$466:
	; Call printf 52 8
	mov qword [rbp + 52], file_test$467
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$467:
	; PostCall 52

 file_test$468:
	; SignedMultiply total size 8
	mov eax, [rbp + 48]
	xor edx, edx
	imul dword [int4$8#]
	mov [rbp + 52], eax

 file_test$469:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$470:
	; Parameter signedint total 80
	mov eax, [rbp + 52]
	mov [rbp + 80], eax

 file_test$471:
	; Call malloc 56 0
	mov qword [rbp + 56], file_test$472
	mov [rbp + 64], rbp
	add rbp, 56
	jmp malloc

 file_test$472:
	; PostCall 56

 file_test$473:
	; GetReturnValue £temporary3427

 file_test$474:
	; Assign p £temporary3427
	mov [rbp + 56], rbx

 file_test$475:
	; NotEqual 487 p 0
	cmp qword [rbp + 56], 0
	jne file_test$487

 file_test$476:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$477:
	; Parameter pointer stderr 88
	mov rax, [stderr]
	mov [rbp + 88], rax

 file_test$478:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 96
	mov qword [rbp + 96], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$479:
	; Parameter pointer "p != NULL" 104
	mov qword [rbp + 104], string_p20213D20NULL#

 file_test$480:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c" 112
	mov qword [rbp + 112], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$481:
	; Parameter signedint 160 120
	mov dword [rbp + 120], 160

 file_test$482:
	; Call fprintf 64 20
	mov qword [rbp + 64], file_test$483
	mov [rbp + 72], rbp
	add rbp, 64
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$483:
	; PostCall 64

 file_test$484:
	; PreCall 64 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$485:
	; Call abort 64 0
	mov qword [rbp + 64], file_test$486
	mov [rbp + 72], rbp
	add rbp, 64
	jmp abort

 file_test$486:
	; PostCall 64

 file_test$487:
	; IntegralToIntegral £temporary3432 size
	mov eax, [rbp + 48]
	mov rbx, 4294967295
	and rax, rbx

 file_test$488:
	; UnsignedMultiply £temporary3434 £temporary3432 8
	xor rdx, rdx
	mul qword [int8$8#]

 file_test$489:
	; BinaryAdd endPtr p £temporary3434
	mov rbx, [rbp + 56]
	add rbx, rax
	mov [rbp + 64], rbx

 file_test$490:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$491:
	; Parameter pointer "malloc %u %u %u\n" 96
	mov qword [rbp + 96], string_malloc2025u2025u2025u0A#

 file_test$492:
	; Parameter pointer p 104
	mov rax, [rbp + 56]
	mov [rbp + 104], rax

 file_test$493:
	; Parameter signedint total 112
	mov eax, [rbp + 52]
	mov [rbp + 112], eax

 file_test$494:
	; Parameter pointer endPtr 116
	mov rax, [rbp + 64]
	mov [rbp + 116], rax

 file_test$495:
	; Call printf 72 20
	mov qword [rbp + 72], file_test$496
	mov [rbp + 80], rbp
	add rbp, 72
	mov rdi, rbp
	add rdi, 20
	jmp printf

 file_test$496:
	; PostCall 72

 file_test$497:
	; PreCall 72 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$498:
	; Parameter pointer p 96
	mov rax, [rbp + 56]
	mov [rbp + 96], rax

 file_test$499:
	; Parameter signedint total 104
	mov eax, [rbp + 52]
	mov [rbp + 104], eax

 file_test$500:
	; Parameter signedint 1 108
	mov dword [rbp + 108], 1

 file_test$501:
	; Parameter pointer inFilePtr 112
	mov rax, [rbp + 40]
	mov [rbp + 112], rax

 file_test$502:
	; Call fread 72 0
	mov qword [rbp + 72], file_test$503
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fread

 file_test$503:
	; PostCall 72

 file_test$504:
	; Assign index 0
	mov dword [rbp + 72], 0

 file_test$505:
	; SignedGreaterThanEqual 519 index size
	mov eax, [rbp + 48]
	cmp [rbp + 72], eax
	jge file_test$519

 file_test$506:
	; PreCall 76 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$507:
	; Parameter pointer "index3 %i: value %f\n" 100
	mov qword [rbp + 100], string_index32025i3A20value2025f0A#

 file_test$508:
	; Parameter signedint index 108
	mov eax, [rbp + 72]
	mov [rbp + 108], eax

 file_test$509:
	; IntegralToIntegral £temporary3440 index
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx

 file_test$510:
	; UnsignedMultiply £temporary3441 £temporary3440 8
	xor rdx, rdx
	mul qword [int8$8#]

 file_test$511:
	; BinaryAdd £temporary3442 p £temporary3441
	mov rsi, [rbp + 56]
	add rsi, rax

 file_test$512:
	; Dereference £temporary3439 -> £temporary3442 £temporary3442 0

 file_test$513:
	; PushFloat £temporary3439 -> £temporary3442
	fld qword [rsi]

 file_test$514:
	; Parameter double £temporary3439 -> £temporary3442 112
	fstp qword [rbp + 112]

 file_test$515:
	; Call printf 76 12
	mov qword [rbp + 76], file_test$516
	mov [rbp + 84], rbp
	add rbp, 76
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$516:
	; PostCall 76

 file_test$517:
	; BinaryAdd index index 1
	inc dword [rbp + 72]

 file_test$518:
	; Goto 505
	jmp file_test$505

 file_test$519:
	; PreCall 76 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$520:
	; Parameter pointer "\n" 100
	mov qword [rbp + 100], string_0A#

 file_test$521:
	; Call printf 76 0
	mov qword [rbp + 76], file_test$522
	mov [rbp + 84], rbp
	add rbp, 76
	mov rdi, rbp
	jmp printf

 file_test$522:
	; PostCall 76

 file_test$523:
	; PreCall 76 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$524:
	; Parameter pointer p 100
	mov rax, [rbp + 56]
	mov [rbp + 100], rax

 file_test$525:
	; Call free 76 0
	mov qword [rbp + 76], file_test$526
	mov [rbp + 84], rbp
	add rbp, 76
	jmp free

 file_test$526:
	; PostCall 76

 file_test$527:
	; PreCall 76 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$528:
	; Parameter pointer inFilePtr 100
	mov rax, [rbp + 40]
	mov [rbp + 100], rax

 file_test$529:
	; Call fclose 76 0
	mov qword [rbp + 76], file_test$530
	mov [rbp + 84], rbp
	add rbp, 76
	jmp fclose

 file_test$530:
	; PostCall 76

 file_test$531:
	; Assign personVector[0].name[0] 65
	mov byte [rbp + 40], 65

 file_test$532:
	; Assign personVector[0].name[1] 100
	mov byte [rbp + 41], 100

 file_test$533:
	; Assign personVector[0].name[2] 97
	mov byte [rbp + 42], 97

 file_test$534:
	; Assign personVector[0].name[3] 109
	mov byte [rbp + 43], 109

 file_test$535:
	; Assign personVector[0].name[4] 32
	mov byte [rbp + 44], 32

 file_test$536:
	; Assign personVector[0].name[5] 66
	mov byte [rbp + 45], 66

 file_test$537:
	; Assign personVector[0].name[6] 101
	mov byte [rbp + 46], 101

 file_test$538:
	; Assign personVector[0].name[7] 114
	mov byte [rbp + 47], 114

 file_test$539:
	; Assign personVector[0].name[8] 116
	mov byte [rbp + 48], 116

 file_test$540:
	; Assign personVector[0].name[9] 105
	mov byte [rbp + 49], 105

 file_test$541:
	; Assign personVector[0].name[10] 108
	mov byte [rbp + 50], 108

 file_test$542:
	; Assign personVector[0].name[11] 115
	mov byte [rbp + 51], 115

 file_test$543:
	; Assign personVector[0].name[12] 115
	mov byte [rbp + 52], 115

 file_test$544:
	; Assign personVector[0].name[13] 111
	mov byte [rbp + 53], 111

 file_test$545:
	; Assign personVector[0].name[14] 110
	mov byte [rbp + 54], 110

 file_test$546:
	; Assign personVector[0].name[15] 48
	mov byte [rbp + 55], 48

 file_test$547:
	; Assign personVector[0].phone 12345
	mov dword [rbp + 88], 12345

 file_test$548:
	; Assign personVector[1].name[0] 66
	mov byte [rbp + 92], 66

 file_test$549:
	; Assign personVector[1].name[1] 101
	mov byte [rbp + 93], 101

 file_test$550:
	; Assign personVector[1].name[2] 114
	mov byte [rbp + 94], 114

 file_test$551:
	; Assign personVector[1].name[3] 116
	mov byte [rbp + 95], 116

 file_test$552:
	; Assign personVector[1].name[4] 105
	mov byte [rbp + 96], 105

 file_test$553:
	; Assign personVector[1].name[5] 108
	mov byte [rbp + 97], 108

 file_test$554:
	; Assign personVector[1].name[6] 32
	mov byte [rbp + 98], 32

 file_test$555:
	; Assign personVector[1].name[7] 67
	mov byte [rbp + 99], 67

 file_test$556:
	; Assign personVector[1].name[8] 101
	mov byte [rbp + 100], 101

 file_test$557:
	; Assign personVector[1].name[9] 97
	mov byte [rbp + 101], 97

 file_test$558:
	; Assign personVector[1].name[10] 115
	mov byte [rbp + 102], 115

 file_test$559:
	; Assign personVector[1].name[11] 97
	mov byte [rbp + 103], 97

 file_test$560:
	; Assign personVector[1].name[12] 114
	mov byte [rbp + 104], 114

 file_test$561:
	; Assign personVector[1].name[13] 115
	mov byte [rbp + 105], 115

 file_test$562:
	; Assign personVector[1].name[14] 115
	mov byte [rbp + 106], 115

 file_test$563:
	; Assign personVector[1].name[15] 111
	mov byte [rbp + 107], 111

 file_test$564:
	; Assign personVector[1].name[16] 110
	mov byte [rbp + 108], 110

 file_test$565:
	; Assign personVector[1].name[17] 48
	mov byte [rbp + 109], 48

 file_test$566:
	; Assign personVector[1].phone 23456
	mov dword [rbp + 140], 23456

 file_test$567:
	; Assign personVector[2].name[0] 67
	mov byte [rbp + 144], 67

 file_test$568:
	; Assign personVector[2].name[1] 101
	mov byte [rbp + 145], 101

 file_test$569:
	; Assign personVector[2].name[2] 97
	mov byte [rbp + 146], 97

 file_test$570:
	; Assign personVector[2].name[3] 115
	mov byte [rbp + 147], 115

 file_test$571:
	; Assign personVector[2].name[4] 97
	mov byte [rbp + 148], 97

 file_test$572:
	; Assign personVector[2].name[5] 114
	mov byte [rbp + 149], 114

 file_test$573:
	; Assign personVector[2].name[6] 32
	mov byte [rbp + 150], 32

 file_test$574:
	; Assign personVector[2].name[7] 68
	mov byte [rbp + 151], 68

 file_test$575:
	; Assign personVector[2].name[8] 97
	mov byte [rbp + 152], 97

 file_test$576:
	; Assign personVector[2].name[9] 118
	mov byte [rbp + 153], 118

 file_test$577:
	; Assign personVector[2].name[10] 105
	mov byte [rbp + 154], 105

 file_test$578:
	; Assign personVector[2].name[11] 100
	mov byte [rbp + 155], 100

 file_test$579:
	; Assign personVector[2].name[12] 115
	mov byte [rbp + 156], 115

 file_test$580:
	; Assign personVector[2].name[13] 115
	mov byte [rbp + 157], 115

 file_test$581:
	; Assign personVector[2].name[14] 111
	mov byte [rbp + 158], 111

 file_test$582:
	; Assign personVector[2].name[15] 110
	mov byte [rbp + 159], 110

 file_test$583:
	; Assign personVector[2].name[16] 48
	mov byte [rbp + 160], 48

 file_test$584:
	; Assign personVector[2].phone 24567
	mov dword [rbp + 192], 24567

 file_test$585:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$586:
	; Parameter pointer "Block.bin" 272
	mov qword [rbp + 272], string_Block2Ebin#

 file_test$587:
	; Parameter pointer "w" 280
	mov qword [rbp + 280], string_w#

 file_test$588:
	; Call fopen 248 0
	mov qword [rbp + 248], file_test$589
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fopen

 file_test$589:
	; PostCall 248

 file_test$590:
	; GetReturnValue £temporary3507

 file_test$591:
	; Assign outFilePtr £temporary3507
	mov [rbp + 248], rbx

 file_test$592:
	; NotEqual 604 outFilePtr 0
	cmp qword [rbp + 248], 0
	jne file_test$604

 file_test$593:
	; PreCall 256 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$594:
	; Parameter pointer stderr 280
	mov rax, [stderr]
	mov [rbp + 280], rax

 file_test$595:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 288
	mov qword [rbp + 288], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$596:
	; Parameter pointer "outFilePtr != NULL" 296
	mov qword [rbp + 296], string_outFilePtr20213D20NULL#

 file_test$597:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c" 304
	mov qword [rbp + 304], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$598:
	; Parameter signedint 186 312
	mov dword [rbp + 312], 186

 file_test$599:
	; Call fprintf 256 20
	mov qword [rbp + 256], file_test$600
	mov [rbp + 264], rbp
	add rbp, 256
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$600:
	; PostCall 256

 file_test$601:
	; PreCall 256 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$602:
	; Call abort 256 0
	mov qword [rbp + 256], file_test$603
	mov [rbp + 264], rbp
	add rbp, 256
	jmp abort

 file_test$603:
	; PostCall 256

 file_test$604:
	; PreCall 256 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$605:
	; Parameter pointer personVector 280
	mov [rbp + 280], rbp
	add qword [rbp + 280], 40

 file_test$606:
	; Parameter signedint 156 288
	mov dword [rbp + 288], 156

 file_test$607:
	; Parameter signedint 1 292
	mov dword [rbp + 292], 1

 file_test$608:
	; Parameter pointer outFilePtr 296
	mov rax, [rbp + 248]
	mov [rbp + 296], rax

 file_test$609:
	; Call fwrite 256 0
	mov qword [rbp + 256], file_test$610
	mov [rbp + 264], rbp
	add rbp, 256
	jmp fwrite

 file_test$610:
	; PostCall 256

 file_test$611:
	; PreCall 256 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$612:
	; Parameter pointer outFilePtr 280
	mov rax, [rbp + 248]
	mov [rbp + 280], rax

 file_test$613:
	; Call fclose 256 0
	mov qword [rbp + 256], file_test$614
	mov [rbp + 264], rbp
	add rbp, 256
	jmp fclose

 file_test$614:
	; PostCall 256

 file_test$615:
	; PreCall 256 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$616:
	; Parameter pointer "Block.bin" 280
	mov qword [rbp + 280], string_Block2Ebin#

 file_test$617:
	; Parameter pointer "r" 288
	mov qword [rbp + 288], string_r#

 file_test$618:
	; Call fopen 256 0
	mov qword [rbp + 256], file_test$619
	mov [rbp + 264], rbp
	add rbp, 256
	jmp fopen

 file_test$619:
	; PostCall 256

 file_test$620:
	; GetReturnValue £temporary3514

 file_test$621:
	; Assign inFilePtr £temporary3514
	mov [rbp + 256], rbx

 file_test$622:
	; NotEqual 634 inFilePtr 0
	cmp qword [rbp + 256], 0
	jne file_test$634

 file_test$623:
	; PreCall 264 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$624:
	; Parameter pointer stderr 288
	mov rax, [stderr]
	mov [rbp + 288], rax

 file_test$625:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 296
	mov qword [rbp + 296], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$626:
	; Parameter pointer "inFilePtr != NULL" 304
	mov qword [rbp + 304], string_inFilePtr20213D20NULL#

 file_test$627:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c" 312
	mov qword [rbp + 312], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$628:
	; Parameter signedint 192 320
	mov dword [rbp + 320], 192

 file_test$629:
	; Call fprintf 264 20
	mov qword [rbp + 264], file_test$630
	mov [rbp + 272], rbp
	add rbp, 264
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$630:
	; PostCall 264

 file_test$631:
	; PreCall 264 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$632:
	; Call abort 264 0
	mov qword [rbp + 264], file_test$633
	mov [rbp + 272], rbp
	add rbp, 264
	jmp abort

 file_test$633:
	; PostCall 264

 file_test$634:
	; PreCall 264 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$635:
	; Parameter pointer inFilePtr 288
	mov rax, [rbp + 256]
	mov [rbp + 288], rax

 file_test$636:
	; Call feof 264 0
	mov qword [rbp + 264], file_test$637
	mov [rbp + 272], rbp
	add rbp, 264
	jmp feof

 file_test$637:
	; PostCall 264

 file_test$638:
	; GetReturnValue £temporary3519

 file_test$639:
	; NotEqual 659 £temporary3519 0
	cmp ebx, 0
	jne file_test$659

 file_test$640:
	; PreCall 264 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$641:
	; Address £temporary3522 person
	mov rsi, rbp
	add rsi, 196

 file_test$642:
	; Parameter pointer £temporary3522 288
	mov [rbp + 288], rsi

 file_test$643:
	; Parameter signedint 52 296
	mov dword [rbp + 296], 52

 file_test$644:
	; Parameter signedint 1 300
	mov dword [rbp + 300], 1

 file_test$645:
	; Parameter pointer inFilePtr 304
	mov rax, [rbp + 256]
	mov [rbp + 304], rax

 file_test$646:
	; Call fread 264 0
	mov qword [rbp + 264], file_test$647
	mov [rbp + 272], rbp
	add rbp, 264
	jmp fread

 file_test$647:
	; PostCall 264

 file_test$648:
	; PreCall 264 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$649:
	; Parameter pointer "Name  : %s\n" 288
	mov qword [rbp + 288], string_Name20203A2025s0A#

 file_test$650:
	; Parameter pointer person.name 296
	mov [rbp + 296], rbp
	add qword [rbp + 296], 196

 file_test$651:
	; Call printf 264 8
	mov qword [rbp + 264], file_test$652
	mov [rbp + 272], rbp
	add rbp, 264
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$652:
	; PostCall 264

 file_test$653:
	; PreCall 264 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$654:
	; Parameter pointer "Phone : %d\n" 288
	mov qword [rbp + 288], string_Phone203A2025d0A#

 file_test$655:
	; Parameter signedint person.phone 296
	mov eax, [rbp + 244]
	mov [rbp + 296], eax

 file_test$656:
	; Call printf 264 4
	mov qword [rbp + 264], file_test$657
	mov [rbp + 272], rbp
	add rbp, 264
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$657:
	; PostCall 264

 file_test$658:
	; Goto 634
	jmp file_test$634

 file_test$659:
	; PreCall 264 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$660:
	; Parameter pointer inFilePtr 288
	mov rax, [rbp + 256]
	mov [rbp + 288], rax

 file_test$661:
	; Call fclose 264 0
	mov qword [rbp + 264], file_test$662
	mov [rbp + 272], rbp
	add rbp, 264
	jmp fclose

 file_test$662:
	; PostCall 264

 file_test$663:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$664:
	; Parameter pointer "Test1.txt" 64
	mov qword [rbp + 64], string_Test12Etxt#

 file_test$665:
	; Parameter pointer "r" 72
	mov qword [rbp + 72], string_r#

 file_test$666:
	; Call fopen 40 0
	mov qword [rbp + 40], file_test$667
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

 file_test$667:
	; PostCall 40

 file_test$668:
	; GetReturnValue £temporary3529

 file_test$669:
	; Assign inFilePtr £temporary3529
	mov [rbp + 40], rbx

 file_test$670:
	; NotEqual 682 inFilePtr 0
	cmp qword [rbp + 40], 0
	jne file_test$682

 file_test$671:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$672:
	; Parameter pointer stderr 72
	mov rax, [stderr]
	mov [rbp + 72], rax

 file_test$673:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 80
	mov qword [rbp + 80], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$674:
	; Parameter pointer "inFilePtr != NULL" 88
	mov qword [rbp + 88], string_inFilePtr20213D20NULL#

 file_test$675:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c" 96
	mov qword [rbp + 96], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$676:
	; Parameter signedint 205 104
	mov dword [rbp + 104], 205

 file_test$677:
	; Call fprintf 48 20
	mov qword [rbp + 48], file_test$678
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$678:
	; PostCall 48

 file_test$679:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$680:
	; Call abort 48 0
	mov qword [rbp + 48], file_test$681
	mov [rbp + 56], rbp
	add rbp, 48
	jmp abort

 file_test$681:
	; PostCall 48

 file_test$682:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$683:
	; Parameter pointer inFilePtr 72
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

 file_test$684:
	; Parameter signedint -1 80
	mov dword [rbp + 80], -1

 file_test$685:
	; Parameter signedint 2 84
	mov dword [rbp + 84], 2

 file_test$686:
	; Call fseek 48 0
	mov qword [rbp + 48], file_test$687
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fseek

 file_test$687:
	; PostCall 48

 file_test$688:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$689:
	; Parameter pointer inFilePtr 76
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 file_test$690:
	; Call ftell 52 0
	mov qword [rbp + 52], file_test$691
	mov [rbp + 60], rbp
	add rbp, 52
	jmp ftell

 file_test$691:
	; PostCall 52

 file_test$692:
	; GetReturnValue £temporary3535

 file_test$693:
	; IntegralToIntegral £temporary3536 £temporary3535

 file_test$694:
	; Assign u £temporary3536
	mov [rbp + 48], ebx

 file_test$695:
	; UnsignedLessThan 716 u 0
	cmp dword [rbp + 48], 0
	jb file_test$716

 file_test$696:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$697:
	; Parameter pointer inFilePtr 76
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 file_test$698:
	; Call fgetc 52 0
	mov qword [rbp + 52], file_test$699
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fgetc

 file_test$699:
	; PostCall 52

 file_test$700:
	; GetReturnValue £temporary3538

 file_test$701:
	; IntegralToIntegral £temporary3539 £temporary3538
	cmp ebx, 0
	jge file_test$702
	neg ebx
	neg bl

 file_test$702:
	; Assign c £temporary3539
	mov [rbp + 52], bl

 file_test$703:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$704:
	; IntegralToIntegral £temporary3540 c
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge file_test$705
	neg al
	neg eax

 file_test$705:
	; Parameter signedint £temporary3540 77
	mov [rbp + 77], eax

 file_test$706:
	; Call putchar 53 0
	mov qword [rbp + 53], file_test$707
	mov [rbp + 61], rbp
	add rbp, 53
	jmp putchar

 file_test$707:
	; PostCall 53

 file_test$708:
	; Equal 716 u 0
	cmp dword [rbp + 48], 0
	je file_test$716

 file_test$709:
	; PreCall 53 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$710:
	; Parameter pointer inFilePtr 77
	mov rax, [rbp + 40]
	mov [rbp + 77], rax

 file_test$711:
	; Parameter signedint -2 85
	mov dword [rbp + 85], -2

 file_test$712:
	; Parameter signedint 1 89
	mov dword [rbp + 89], 1

 file_test$713:
	; Call fseek 53 0
	mov qword [rbp + 53], file_test$714
	mov [rbp + 61], rbp
	add rbp, 53
	jmp fseek

 file_test$714:
	; PostCall 53

 file_test$715:
	; Goto 688
	jmp file_test$688

 file_test$716:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$717:
	; Parameter pointer "\n\n" 76
	mov qword [rbp + 76], string_0A0A#

 file_test$718:
	; Call printf 52 0
	mov qword [rbp + 52], file_test$719
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	jmp printf

 file_test$719:
	; PostCall 52

 file_test$720:
	; PreCall 52 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$721:
	; Parameter pointer inFilePtr 76
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 file_test$722:
	; Call fclose 52 0
	mov qword [rbp + 52], file_test$723
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fclose

 file_test$723:
	; PostCall 52

 file_test$724:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$725:
	; Parameter pointer "fileexists X %s\n" 64
	mov qword [rbp + 64], string_fileexists20X2025s0A#

 file_test$726:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$727:
	; Parameter pointer "X" 96
	mov qword [rbp + 96], string_X#

 file_test$728:
	; Call fileexists 72 0
	mov qword [rbp + 72], file_test$729
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fileexists

 file_test$729:
	; PostCall 72

 file_test$730:
	; GetReturnValue £temporary3546

 file_test$731:
	; Equal 734 £temporary3546 0
	cmp ebx, 0
	je file_test$734

 file_test$732:
	; Assign £temporary3548 "Yes"
	mov rax, string_Yes#

 file_test$733:
	; Goto 735
	jmp file_test$735

 file_test$734:
	; Assign £temporary3548 "No"
	mov rax, string_No#

 file_test$735:
	; Parameter pointer £temporary3548 72
	mov [rbp + 72], rax

 file_test$736:
	; Call printf 40 8
	mov qword [rbp + 40], file_test$737
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$737:
	; PostCall 40

 file_test$738:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$739:
	; Parameter pointer "fileexists Y %s\n\n" 64
	mov qword [rbp + 64], string_fileexists20Y2025s0A0A#

 file_test$740:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$741:
	; Parameter pointer "Y" 96
	mov qword [rbp + 96], string_Y#

 file_test$742:
	; Call fileexists 72 0
	mov qword [rbp + 72], file_test$743
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fileexists

 file_test$743:
	; PostCall 72

 file_test$744:
	; GetReturnValue £temporary3550

 file_test$745:
	; Equal 748 £temporary3550 0
	cmp ebx, 0
	je file_test$748

 file_test$746:
	; Assign £temporary3552 "Yes"
	mov rax, string_Yes#

 file_test$747:
	; Goto 749
	jmp file_test$749

 file_test$748:
	; Assign £temporary3552 "No"
	mov rax, string_No#

 file_test$749:
	; Parameter pointer £temporary3552 72
	mov [rbp + 72], rax

 file_test$750:
	; Call printf 40 8
	mov qword [rbp + 40], file_test$751
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$751:
	; PostCall 40

 file_test$752:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$753:
	; Parameter pointer "PBookX.txt" 72
	mov qword [rbp + 72], string_PBookX2Etxt#

 file_test$754:
	; Parameter pointer "r+" 80
	mov qword [rbp + 80], string_r2B#

 file_test$755:
	; Call fopen 48 0
	mov qword [rbp + 48], file_test$756
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fopen

 file_test$756:
	; PostCall 48

 file_test$757:
	; GetReturnValue £temporary3554

 file_test$758:
	; Assign inOutFilePtr £temporary3554
	mov [rbp + 48], rbx

 file_test$759:
	; NotEqual 771 inOutFilePtr 0
	cmp qword [rbp + 48], 0
	jne file_test$771

 file_test$760:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$761:
	; Parameter pointer stderr 80
	mov rax, [stderr]
	mov [rbp + 80], rax

 file_test$762:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 88
	mov qword [rbp + 88], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$763:
	; Parameter pointer "inOutFilePtr != NULL" 96
	mov qword [rbp + 96], string_inOutFilePtr20213D20NULL#

 file_test$764:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c" 104
	mov qword [rbp + 104], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$765:
	; Parameter signedint 229 112
	mov dword [rbp + 112], 229

 file_test$766:
	; Call fprintf 56 20
	mov qword [rbp + 56], file_test$767
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$767:
	; PostCall 56

 file_test$768:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$769:
	; Call abort 56 0
	mov qword [rbp + 56], file_test$770
	mov [rbp + 64], rbp
	add rbp, 56
	jmp abort

 file_test$770:
	; PostCall 56

 file_test$771:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$772:
	; Call tmpfile 56 0
	mov qword [rbp + 56], file_test$773
	mov [rbp + 64], rbp
	add rbp, 56
	jmp tmpfile

 file_test$773:
	; PostCall 56

 file_test$774:
	; GetReturnValue £temporary3559

 file_test$775:
	; Assign tempFilePtr £temporary3559
	mov [rbp + 40], rbx

 file_test$776:
	; NotEqual 788 tempFilePtr 0
	cmp qword [rbp + 40], 0
	jne file_test$788

 file_test$777:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$778:
	; Parameter pointer stderr 80
	mov rax, [stderr]
	mov [rbp + 80], rax

 file_test$779:
	; Parameter pointer "Assertion failed: "%s" in file %s at line %i\n" 88
	mov qword [rbp + 88], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$780:
	; Parameter pointer "tempFilePtr != NULL" 96
	mov qword [rbp + 96], string_tempFilePtr20213D20NULL#

 file_test$781:
	; Parameter pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c" 104
	mov qword [rbp + 104], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$782:
	; Parameter signedint 232 112
	mov dword [rbp + 112], 232

 file_test$783:
	; Call fprintf 56 20
	mov qword [rbp + 56], file_test$784
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$784:
	; PostCall 56

 file_test$785:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$786:
	; Call abort 56 0
	mov qword [rbp + 56], file_test$787
	mov [rbp + 64], rbp
	add rbp, 56
	jmp abort

 file_test$787:
	; PostCall 56

 file_test$788:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$789:
	; Parameter pointer inOutFilePtr 80
	mov rax, [rbp + 48]
	mov [rbp + 80], rax

 file_test$790:
	; Call fgetc 56 0
	mov qword [rbp + 56], file_test$791
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fgetc

 file_test$791:
	; PostCall 56

 file_test$792:
	; GetReturnValue £temporary3564

 file_test$793:
	; IntegralToIntegral £temporary3565 £temporary3564
	cmp ebx, 0
	jge file_test$794
	neg ebx
	neg bl

 file_test$794:
	; Assign c £temporary3565
	mov [rbp + 56], bl

 file_test$795:
	; IntegralToIntegral £temporary3566 c
	mov al, [rbp + 56]
	and eax, 255
	cmp al, 0
	jge file_test$796
	neg al
	neg eax

 file_test$796:
	; Equal 809 £temporary3566 -1
	cmp eax, -1
	je file_test$809

 file_test$797:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$798:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$799:
	; IntegralToIntegral £temporary3568 c
	mov al, [rbp + 56]
	and eax, 255
	cmp al, 0
	jge file_test$800
	neg al
	neg eax

 file_test$800:
	; Parameter signedint £temporary3568 81
	mov [rbp + 81], eax

 file_test$801:
	; Call toupper 57 0
	mov qword [rbp + 57], file_test$802
	mov [rbp + 65], rbp
	add rbp, 57
	jmp toupper

 file_test$802:
	; PostCall 57

 file_test$803:
	; GetReturnValue £temporary3569

 file_test$804:
	; Parameter signedint £temporary3569 81
	mov [rbp + 81], ebx

 file_test$805:
	; Parameter pointer tempFilePtr 85
	mov rax, [rbp + 40]
	mov [rbp + 85], rax

 file_test$806:
	; Call putc 57 0
	mov qword [rbp + 57], file_test$807
	mov [rbp + 65], rbp
	add rbp, 57
	jmp putc

 file_test$807:
	; PostCall 57

 file_test$808:
	; Goto 788
	jmp file_test$788

 file_test$809:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$810:
	; Parameter pointer tempFilePtr 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 file_test$811:
	; Call rewind 56 0
	mov qword [rbp + 56], file_test$812
	mov [rbp + 64], rbp
	add rbp, 56
	jmp rewind

 file_test$812:
	; PostCall 56

 file_test$813:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$814:
	; Parameter pointer inOutFilePtr 80
	mov rax, [rbp + 48]
	mov [rbp + 80], rax

 file_test$815:
	; Parameter pointer "\n------------\n" 88
	mov qword [rbp + 88], string_0A2D2D2D2D2D2D2D2D2D2D2D2D0A#

 file_test$816:
	; Call fprintf 56 0
	mov qword [rbp + 56], file_test$817
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	jmp fprintf

 file_test$817:
	; PostCall 56

 file_test$818:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$819:
	; Parameter pointer tempFilePtr 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 file_test$820:
	; Call fgetc 56 0
	mov qword [rbp + 56], file_test$821
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fgetc

 file_test$821:
	; PostCall 56

 file_test$822:
	; GetReturnValue £temporary3574

 file_test$823:
	; IntegralToIntegral £temporary3575 £temporary3574
	cmp ebx, 0
	jge file_test$824
	neg ebx
	neg bl

 file_test$824:
	; Assign c £temporary3575
	mov [rbp + 56], bl

 file_test$825:
	; IntegralToIntegral £temporary3576 c
	mov al, [rbp + 56]
	and eax, 255
	cmp al, 0
	jge file_test$826
	neg al
	neg eax

 file_test$826:
	; Equal 834 £temporary3576 -1
	cmp eax, -1
	je file_test$834

 file_test$827:
	; PreCall 57 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$828:
	; IntegralToIntegral £temporary3578 c
	mov al, [rbp + 56]
	and eax, 255
	cmp al, 0
	jge file_test$829
	neg al
	neg eax

 file_test$829:
	; Parameter signedint £temporary3578 81
	mov [rbp + 81], eax

 file_test$830:
	; Parameter pointer inOutFilePtr 85
	mov rax, [rbp + 48]
	mov [rbp + 85], rax

 file_test$831:
	; Call putc 57 0
	mov qword [rbp + 57], file_test$832
	mov [rbp + 65], rbp
	add rbp, 57
	jmp putc

 file_test$832:
	; PostCall 57

 file_test$833:
	; Goto 818
	jmp file_test$818

 file_test$834:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$835:
	; Parameter pointer inOutFilePtr 80
	mov rax, [rbp + 48]
	mov [rbp + 80], rax

 file_test$836:
	; Call fclose 56 0
	mov qword [rbp + 56], file_test$837
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fclose

 file_test$837:
	; PostCall 56

 file_test$838:
	; PreCall 56 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$839:
	; Parameter pointer tempFilePtr 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

 file_test$840:
	; Call fclose 56 0
	mov qword [rbp + 56], file_test$841
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fclose

 file_test$841:
	; PostCall 56

 file_test$842:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 file_test$843:
	; FunctionEnd file_test
