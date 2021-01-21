	global file_test
	global temp_file

	extern fopen
	extern stderr
	extern fprintf
	extern abort
	extern feof
	extern fscanf
	extern sqrt
	extern printf
	extern fclose
	extern remove
	extern errno
	extern strerror
	extern rename
	extern fwrite
	extern fread
	extern malloc
	extern free
	extern fseek
	extern ftell
	extern fgetc
	extern putchar
	extern fileexists
	extern tmpfile
	extern toupper
	extern putc
	extern rewind
	extern $StackTop


section .data

@11384$string_in2Etxt#:
	; Initializer String in.txt
	db "in.txt", 0

section .data

@11385$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11387$string_outX2Etxt#:
	; Initializer String outX.txt
	db "outX.txt", 0

section .data

@11388$string_w#:
	; Initializer String w
	db "w", 0

section .data

@11393$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11394$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11395$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11401$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11402$string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@11403$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11408$string_25lf#:
	; Initializer String %lf
	db "%lf", 0

section .data

@11409$string_X12025f0A#:
	; Initializer String X1 %f\n
	db "X1 %f", 10, 0

section .data

@11410$string_X22025f0A#:
	; Initializer String X2 %f\n
	db "X2 %f", 10, 0

section .data

@11411$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@11412$string_in2Etxt#:
	; Initializer String in.txt
	db "in.txt", 0

section .data

@11413$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11415$string_outY2Etxt#:
	; Initializer String outY.txt
	db "outY.txt", 0

section .data

@11416$string_w#:
	; Initializer String w
	db "w", 0

section .data

@11421$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11422$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11423$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11429$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11430$string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@11431$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11438$string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@11439$string_size2025i0A#:
	; Initializer String size %i\n
	db "size %i", 10, 0

section .data

@11440$string_Y20size2025i0A#:
	; Initializer String Y size %i\n
	db "Y size %i", 10, 0

section .data

@11445$string_25lf#:
	; Initializer String %lf
	db "%lf", 0

section .data

@11446$string_Y12025f0A#:
	; Initializer String Y1 %f\n
	db "Y1 %f", 10, 0

section .data

@11447$string_Y22025f0A#:
	; Initializer String Y2 %f\n
	db "Y2 %f", 10, 0

section .data

@11448$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@11449$string_Y#:
	; Initializer String Y
	db "Y", 0

section .data

@11453$string_2225s2220has20been20removed0A#:
	; Initializer String "%s" has been removed\n
	db 34, "%s", 34, " has been removed", 10, 0

section .data

@11454$string_Error202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@11455$string_X#:
	; Initializer String X
	db "X", 0

section .data

@11457$string_Y#:
	; Initializer String Y
	db "Y", 0

section .data

@11459$string_w#:
	; Initializer String w
	db "w", 0

section .data

@11461$string_Hello20X#:
	; Initializer String Hello X
	db "Hello X", 0

section .data

@11464$string_2225s2220has20been20renamed20to202225s222E0A#:
	; Initializer String "%s" has been renamed to "%s".\n
	db 34, "%s", 34, " has been renamed to ", 34, "%s", 34, ".", 10, 0

section .data

@11465$string_Error202225s22202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@11466$string_X2#:
	; Initializer String X2
	db "X2", 0

section .data

@11468$string_Y2#:
	; Initializer String Y2
	db "Y2", 0

section .data

@11472$string_2225s2220has20been20renamed20to202225s222E0A#:
	; Initializer String "%s" has been renamed to "%s".\n
	db 34, "%s", 34, " has been renamed to ", 34, "%s", 34, ".", 10, 0

section .data

@11473$string_Error202225s22202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@11474$string_Z#:
	; Initializer String Z
	db "Z", 0

section .data

@11476$string_w#:
	; Initializer String w
	db "w", 0

section .data

@11478$string_Hello20Z#:
	; Initializer String Hello Z
	db "Hello Z", 0

section .data

@11481$string_2225s2220has20been20removed2E0A#:
	; Initializer String "%s" has been removed.\n
	db 34, "%s", 34, " has been removed.", 10, 0

section .data

@11482$string_Error202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@11483$string_Z2#:
	; Initializer String Z2
	db "Z2", 0

section .data

@11487$string_2225s2220has20been20removed2E0A#:
	; Initializer String "%s" has been removed.\n
	db 34, "%s", 34, " has been removed.", 10, 0

section .data

@11488$string_Error202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@11489$string_PBook2Etxt#:
	; Initializer String PBook.txt
	db "PBook.txt", 0

section .data

@11490$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11495$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11496$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11497$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11500$string_0A252D24s20252D24s0A#:
	; Initializer String \n%-24s %-24s\n
	db 10, "%-24s %-24s", 10, 0

section .data

@11501$string_Name#:
	; Initializer String Name
	db "Name", 0

section .data

@11502$string_Phone#:
	; Initializer String Phone
	db "Phone", 0

section .data

@11503$string_252D24s20252D24s0A#:
	; Initializer String %-24s %-24s\n
	db "%-24s %-24s", 10, 0

section .data

@11504$string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#:
	; Initializer String ========================
	db "========================", 0

section .data

@11505$string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#:
	; Initializer String ========================
	db "========================", 0

section .data

@11508$string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@11509$string_size2025i0A#:
	; Initializer String size %i\n
	db "size %i", 10, 0

section .data

@11519$string_25s25s#:
	; Initializer String %s%s
	db "%s%s", 0

section .data

@11520$string_252D24s20252D24s0A#:
	; Initializer String %-24s %-24s\n
	db "%-24s %-24s", 10, 0

section .data

@11521$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@11522$string_TestX2Ebin#:
	; Initializer String TestX.bin
	db "TestX.bin", 0

section .data

@11523$string_w#:
	; Initializer String w
	db "w", 0

section .data

@11528$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11529$string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@11530$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11553$string_TestX2Ebin#:
	; Initializer String TestX.bin
	db "TestX.bin", 0

section .data

@11554$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11561$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11562$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11563$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11572$string_size13A2025i0A#:
	; Initializer String size1: %i\n
	db "size1: %i", 10, 0

section .data

@11583$string_index13A2025i3A20value2025f0A#:
	; Initializer String index1: %i: value %f\n
	db "index1: %i: value %f", 10, 0

section .data

@11584$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@11585$string_TestY2Ebin#:
	; Initializer String TestY.bin
	db "TestY.bin", 0

section .data

@11586$string_w#:
	; Initializer String w
	db "w", 0

section .data

@11591$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11592$string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@11593$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11610$string_TestY2Ebin#:
	; Initializer String TestY.bin
	db "TestY.bin", 0

section .data

@11611$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11616$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11617$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11618$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11633$string_index23A2025i3A20value2025f0A#:
	; Initializer String index2: %i: value %f\n
	db "index2: %i: value %f", 10, 0

section .data

@11635$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@11636$string_TestY2Ebin#:
	; Initializer String TestY.bin
	db "TestY.bin", 0

section .data

@11637$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11642$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11643$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11644$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11658$string_index33A2025i3A20value2025f0A#:
	; Initializer String index3: %i: value %f\n
	db "index3: %i: value %f", 10, 0

section .data

@11660$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@11661$string_TestX2Ebin#:
	; Initializer String TestX.bin
	db "TestX.bin", 0

section .data

@11662$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11668$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11669$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11670$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11679$string_size43A2025i20total2025i0A#:
	; Initializer String size4: %i total %i\n
	db "size4: %i total %i", 10, 0

section .data

@11693$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11694$string_p20213D20NULL#:
	; Initializer String p != NULL
	db "p != NULL", 0

section .data

@11695$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11698$string_malloc43A2025u2025u2025u0A#:
	; Initializer String malloc4: %u %u %u\n
	db "malloc4: %u %u %u", 10, 0

section .data

@11705$string_index43A2025i3A20value2025f0A#:
	; Initializer String index4: %i: value %f\n
	db "index4: %i: value %f", 10, 0

section .data

@11708$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@11713$string_Adam20Bertilsson#:
	; Initializer String Adam Bertilsson
	db "Adam Bertilsson", 0

section .data

@11715$string_Bertil20Ceasarsson#:
	; Initializer String Bertil Ceasarsson
	db "Bertil Ceasarsson", 0

section .data

@11717$string_Ceasar20Davidsson#:
	; Initializer String Ceasar Davidsson
	db "Ceasar Davidsson", 0

section .data

@11826$string_Block2Ebin#:
	; Initializer String Block.bin
	db "Block.bin", 0

section .data

@11827$string_w#:
	; Initializer String w
	db "w", 0

section .data

@11829$string_Block2Ebin#:
	; Initializer String Block.bin
	db "Block.bin", 0

section .data

@11830$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11835$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11836$string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@11837$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11843$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11844$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11845$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11861$string_Name20203A2025s0A#:
	; Initializer String Name  : %s\n
	db "Name  : %s", 10, 0

section .data

@11862$string_Phone203A2025d0A#:
	; Initializer String Phone : %d\n
	db "Phone : %d", 10, 0

section .data

@11863$string_outx2Etxt#:
	; Initializer String outx.txt
	db "outx.txt", 0

section .data

@11864$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11869$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11870$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11871$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11885$string_fileexists2022X223A2025s0A#:
	; Initializer String fileexists "X": %s\n
	db "fileexists ", 34, "X", 34, ": %s", 10, 0

section .data

@11886$string_X#:
	; Initializer String X
	db "X", 0

section .data

@11887$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11888$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11890$string_fileexists2022Y223A2025s0A#:
	; Initializer String fileexists "Y": %s\n
	db "fileexists ", 34, "Y", 34, ": %s", 10, 0

section .data

@11891$string_Y#:
	; Initializer String Y
	db "Y", 0

section .data

@11892$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11893$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11895$string_fileexists2022Main2Easm223A2025s0A#:
	; Initializer String fileexists "Main.asm": %s\n
	db "fileexists ", 34, "Main.asm", 34, ": %s", 10, 0

section .data

@11896$string_Main2Easm#:
	; Initializer String Main.asm
	db "Main.asm", 0

section .data

@11897$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11898$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11900$string_fileexists2022MainX2Easm223A2025s0A#:
	; Initializer String fileexists "MainX.asm": %s\n
	db "fileexists ", 34, "MainX.asm", 34, ": %s", 10, 0

section .data

@11901$string_MainX2Easm#:
	; Initializer String MainX.asm
	db "MainX.asm", 0

section .data

@11902$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11903$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11905$string_fileexists2022Main2Ec223A2025s0A#:
	; Initializer String fileexists "Main.c": %s\n
	db "fileexists ", 34, "Main.c", 34, ": %s", 10, 0

section .data

@11906$string_Main2Ec#:
	; Initializer String Main.c
	db "Main.c", 0

section .data

@11907$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11908$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11910$string_fileexists2022MainX2Ec223A2025s0A#:
	; Initializer String fileexists "MainX.c": %s\n
	db "fileexists ", 34, "MainX.c", 34, ": %s", 10, 0

section .data

@11911$string_MainX2Ec#:
	; Initializer String MainX.c
	db "MainX.c", 0

section .data

@11912$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11913$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11915$string_fileexists2022File2Ec223A2025s0A#:
	; Initializer String fileexists "File.c": %s\n
	db "fileexists ", 34, "File.c", 34, ": %s", 10, 0

section .data

@11916$string_File2Ec#:
	; Initializer String File.c
	db "File.c", 0

section .data

@11917$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11918$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11920$string_fileexists2022File2Ex223A2025s0A#:
	; Initializer String fileexists "File.x": %s\n
	db "fileexists ", 34, "File.x", 34, ": %s", 10, 0

section .data

@11921$string_File2Ex#:
	; Initializer String File.x
	db "File.x", 0

section .data

@11922$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11923$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11925$string_fileexists2022File2Eh223A2025s0A#:
	; Initializer String fileexists "File.h": %s\n
	db "fileexists ", 34, "File.h", 34, ": %s", 10, 0

section .data

@11926$string_File2Eh#:
	; Initializer String File.h
	db "File.h", 0

section .data

@11927$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11928$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11930$string_fileexists2022File2Ey223A2025s0A#:
	; Initializer String fileexists "File.y": %s\n
	db "fileexists ", 34, "File.y", 34, ": %s", 10, 0

section .data

@11931$string_File2Ey#:
	; Initializer String File.y
	db "File.y", 0

section .data

@11932$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11933$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11935$string_fileexists2022File2Ep223A2025s0A#:
	; Initializer String fileexists "File.p": %s\n
	db "fileexists ", 34, "File.p", 34, ": %s", 10, 0

section .data

@11936$string_File2Ep#:
	; Initializer String File.p
	db "File.p", 0

section .data

@11937$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11938$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11940$string_fileexists2022File2Ez223A2025s0A#:
	; Initializer String fileexists "File.z": %s\n
	db "fileexists ", 34, "File.z", 34, ": %s", 10, 0

section .data

@11941$string_File2Ez#:
	; Initializer String File.z
	db "File.z", 0

section .data

@11942$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11943$string_No#:
	; Initializer String No
	db "No", 0

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .data

@11681$int4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@11683$int4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@11688$int4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@11707$int4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 file_test:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1:
	; Parameter 48 pointer "in.txt"
	mov qword [rbp + 48], @11384$string_in2Etxt#

 file_test$2:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], @11385$string_r#

 file_test$3:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$4:
	; PostCall 24

 file_test$5:
	; GetReturnValue £temporary3586

 file_test$6:
	; Assign inFilePtr £temporary3586
	mov [rbp + 24], rbx

 file_test$7:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$8:
	; Parameter 56 pointer "outX.txt"
	mov qword [rbp + 56], @11387$string_outX2Etxt#

 file_test$9:
	; Parameter 64 pointer "w"
	mov qword [rbp + 64], @11388$string_w#

 file_test$10:
	; Call 32 fopen 0
	mov qword [rbp + 32], file_test$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 file_test$11:
	; PostCall 32

 file_test$12:
	; GetReturnValue £temporary3587

 file_test$13:
	; Assign outFilePtr £temporary3587
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
	mov qword [rbp + 72], @11393$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$18:
	; Parameter 80 pointer "inFilePtr != NULL"
	mov qword [rbp + 80], @11394$string_inFilePtr20213D20NULL#

 file_test$19:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], @11395$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	mov qword [rbp + 72], @11401$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$30:
	; Parameter 80 pointer "outFilePtr != NULL"
	mov qword [rbp + 80], @11402$string_outFilePtr20213D20NULL#

 file_test$31:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], @11403$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	; GetReturnValue £temporary3596

 file_test$43:
	; NotEqual 75 £temporary3596 0
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
	mov qword [rbp + 80], @11408$string_25lf#

 file_test$47:
	; Address £temporary3599 value
	mov rsi, rbp
	add rsi, 40

 file_test$48:
	; Parameter 88 pointer £temporary3599
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
	mov qword [rbp + 72], @11409$string_X12025f0A#

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
	; GetReturnValue £temporary3601

 file_test$59:
	; Parameter 80 double £temporary3601
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
	mov qword [rbp + 80], @11410$string_X22025f0A#

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
	; GetReturnValue £temporary3603

 file_test$71:
	; Parameter 88 double £temporary3603
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
	; Jump 38
	jmp file_test$38

 file_test$75:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$76:
	; Parameter 64 pointer "\n"
	mov qword [rbp + 64], @11411$string_0A#

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
	mov qword [rbp + 48], @11412$string_in2Etxt#

 file_test$89:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], @11413$string_r#

 file_test$90:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$91
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$91:
	; PostCall 24

 file_test$92:
	; GetReturnValue £temporary3608

 file_test$93:
	; Assign inFilePtr £temporary3608
	mov [rbp + 24], rbx

 file_test$94:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$95:
	; Parameter 56 pointer "outY.txt"
	mov qword [rbp + 56], @11415$string_outY2Etxt#

 file_test$96:
	; Parameter 64 pointer "w"
	mov qword [rbp + 64], @11416$string_w#

 file_test$97:
	; Call 32 fopen 0
	mov qword [rbp + 32], file_test$98
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 file_test$98:
	; PostCall 32

 file_test$99:
	; GetReturnValue £temporary3609

 file_test$100:
	; Assign outFilePtr £temporary3609
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
	mov qword [rbp + 72], @11421$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$105:
	; Parameter 80 pointer "inFilePtr != NULL"
	mov qword [rbp + 80], @11422$string_inFilePtr20213D20NULL#

 file_test$106:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], @11423$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	mov qword [rbp + 72], @11429$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$117:
	; Parameter 80 pointer "outFilePtr != NULL"
	mov qword [rbp + 80], @11430$string_outFilePtr20213D20NULL#

 file_test$118:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], @11431$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	mov qword [rbp + 80], @11438$string_25i#

 file_test$129:
	; Address £temporary3618 size
	mov rsi, rbp
	add rsi, 40

 file_test$130:
	; Parameter 88 pointer £temporary3618
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
	mov qword [rbp + 72], @11439$string_size2025i0A#

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
	mov qword [rbp + 80], @11440$string_Y20size2025i0A#

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
	; GreaterThanEqual 178 index size
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
	mov qword [rbp + 88], @11445$string_25lf#

 file_test$149:
	; Address £temporary3624 value
	mov rsi, rbp
	add rsi, 48

 file_test$150:
	; Parameter 96 pointer £temporary3624
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
	mov qword [rbp + 80], @11446$string_Y12025f0A#

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
	; GetReturnValue £temporary3626

 file_test$161:
	; Parameter 88 double £temporary3626
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
	mov qword [rbp + 88], @11447$string_Y22025f0A#

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
	; GetReturnValue £temporary3628

 file_test$173:
	; Parameter 96 double £temporary3628
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
	; Jump 145
	jmp file_test$145

 file_test$178:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$179:
	; Parameter 72 pointer "\n"
	mov qword [rbp + 72], @11448$string_0A#

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
	; Assign sourceFile "Y"
	mov qword [rbp + 24], @11449$string_Y#

 file_test$191:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$192:
	; Parameter 56 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$193:
	; Call 32 remove 0
	mov qword [rbp + 32], file_test$194
	mov [rbp + 40], rbp
	add rbp, 32
	jmp remove

 file_test$194:
	; PostCall 32

 file_test$195:
	; GetReturnValue £temporary3633

 file_test$196:
	; NotEqual 203 £temporary3633 0
	cmp ebx, 0
	jne file_test$203

 file_test$197:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$198:
	; Parameter 56 pointer ""%s" has been removed\n"
	mov qword [rbp + 56], @11453$string_2225s2220has20been20removed0A#

 file_test$199:
	; Parameter 64 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$200:
	; Call 32 printf 8
	mov qword [rbp + 32], file_test$201
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$201:
	; PostCall 32

 file_test$202:
	; Jump 215
	jmp file_test$215

 file_test$203:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$204:
	; Parameter 56 pointer "Error "%s" %i: %s.\n"
	mov qword [rbp + 56], @11454$string_Error202225s222025i3A2025s2E0A#

 file_test$205:
	; Parameter 64 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$206:
	; Parameter 72 signedint errno
	mov eax, [errno]
	mov [rbp + 72], eax

 file_test$207:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$208:
	; Parameter 100 signedint errno
	mov eax, [errno]
	mov [rbp + 100], eax

 file_test$209:
	; Call 76 strerror 0
	mov qword [rbp + 76], file_test$210
	mov [rbp + 84], rbp
	add rbp, 76
	jmp strerror

 file_test$210:
	; PostCall 76

 file_test$211:
	; GetReturnValue £temporary3636

 file_test$212:
	; Parameter 76 pointer £temporary3636
	mov [rbp + 76], rbx

 file_test$213:
	; Call 32 printf 20
	mov qword [rbp + 32], file_test$214
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 file_test$214:
	; PostCall 32

 file_test$215:
	; Assign sourceFile "X"
	mov qword [rbp + 24], @11455$string_X#

 file_test$216:
	; Assign targetFile "Y"
	mov qword [rbp + 32], @11457$string_Y#

 file_test$217:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$218:
	; Parameter 64 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$219:
	; Parameter 72 pointer "w"
	mov qword [rbp + 72], @11459$string_w#

 file_test$220:
	; Call 40 fopen 0
	mov qword [rbp + 40], file_test$221
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

 file_test$221:
	; PostCall 40

 file_test$222:
	; GetReturnValue £temporary3638

 file_test$223:
	; Assign filePtr £temporary3638
	mov [rbp + 40], rbx

 file_test$224:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$225:
	; Parameter 72 pointer filePtr
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

 file_test$226:
	; Parameter 80 pointer "Hello X"
	mov qword [rbp + 80], @11461$string_Hello20X#

 file_test$227:
	; Call 48 fprintf 0
	mov qword [rbp + 48], file_test$228
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	jmp fprintf

 file_test$228:
	; PostCall 48

 file_test$229:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$230:
	; Parameter 72 pointer filePtr
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

 file_test$231:
	; Call 48 fclose 0
	mov qword [rbp + 48], file_test$232
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fclose

 file_test$232:
	; PostCall 48

 file_test$233:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$234:
	; Parameter 72 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$235:
	; Parameter 80 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 file_test$236:
	; Call 48 rename 0
	mov qword [rbp + 48], file_test$237
	mov [rbp + 56], rbp
	add rbp, 48
	jmp rename

 file_test$237:
	; PostCall 48

 file_test$238:
	; GetReturnValue £temporary3641

 file_test$239:
	; NotEqual 247 £temporary3641 0
	cmp ebx, 0
	jne file_test$247

 file_test$240:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$241:
	; Parameter 72 pointer ""%s" has been renamed to "%s".\n"
	mov qword [rbp + 72], @11464$string_2225s2220has20been20renamed20to202225s222E0A#

 file_test$242:
	; Parameter 80 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$243:
	; Parameter 88 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 88], rax

 file_test$244:
	; Call 48 printf 16
	mov qword [rbp + 48], file_test$245
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$245:
	; PostCall 48

 file_test$246:
	; Jump 260
	jmp file_test$260

 file_test$247:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$248:
	; Parameter 72 pointer "Error "%s" "%s" %i: %s.\n"
	mov qword [rbp + 72], @11465$string_Error202225s22202225s222025i3A2025s2E0A#

 file_test$249:
	; Parameter 80 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$250:
	; Parameter 88 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 88], rax

 file_test$251:
	; Parameter 96 signedint errno
	mov eax, [errno]
	mov [rbp + 96], eax

 file_test$252:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$253:
	; Parameter 124 signedint errno
	mov eax, [errno]
	mov [rbp + 124], eax

 file_test$254:
	; Call 100 strerror 0
	mov qword [rbp + 100], file_test$255
	mov [rbp + 108], rbp
	add rbp, 100
	jmp strerror

 file_test$255:
	; PostCall 100

 file_test$256:
	; GetReturnValue £temporary3644

 file_test$257:
	; Parameter 100 pointer £temporary3644
	mov [rbp + 100], rbx

 file_test$258:
	; Call 48 printf 28
	mov qword [rbp + 48], file_test$259
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 28
	jmp printf

 file_test$259:
	; PostCall 48

 file_test$260:
	; Assign sourceFile "X2"
	mov qword [rbp + 24], @11466$string_X2#

 file_test$261:
	; Assign targetFile "Y2"
	mov qword [rbp + 32], @11468$string_Y2#

 file_test$262:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$263:
	; Parameter 64 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$264:
	; Parameter 72 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

 file_test$265:
	; Call 40 rename 0
	mov qword [rbp + 40], file_test$266
	mov [rbp + 48], rbp
	add rbp, 40
	jmp rename

 file_test$266:
	; PostCall 40

 file_test$267:
	; GetReturnValue £temporary3646

 file_test$268:
	; NotEqual 276 £temporary3646 0
	cmp ebx, 0
	jne file_test$276

 file_test$269:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$270:
	; Parameter 64 pointer ""%s" has been renamed to "%s".\n"
	mov qword [rbp + 64], @11472$string_2225s2220has20been20renamed20to202225s222E0A#

 file_test$271:
	; Parameter 72 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$272:
	; Parameter 80 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 file_test$273:
	; Call 40 printf 16
	mov qword [rbp + 40], file_test$274
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$274:
	; PostCall 40

 file_test$275:
	; Jump 289
	jmp file_test$289

 file_test$276:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$277:
	; Parameter 64 pointer "Error "%s" "%s" %i: %s.\n"
	mov qword [rbp + 64], @11473$string_Error202225s22202225s222025i3A2025s2E0A#

 file_test$278:
	; Parameter 72 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$279:
	; Parameter 80 pointer targetFile
	mov rax, [rbp + 32]
	mov [rbp + 80], rax

 file_test$280:
	; Parameter 88 signedint errno
	mov eax, [errno]
	mov [rbp + 88], eax

 file_test$281:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$282:
	; Parameter 116 signedint errno
	mov eax, [errno]
	mov [rbp + 116], eax

 file_test$283:
	; Call 92 strerror 0
	mov qword [rbp + 92], file_test$284
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strerror

 file_test$284:
	; PostCall 92

 file_test$285:
	; GetReturnValue £temporary3649

 file_test$286:
	; Parameter 92 pointer £temporary3649
	mov [rbp + 92], rbx

 file_test$287:
	; Call 40 printf 28
	mov qword [rbp + 40], file_test$288
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 28
	jmp printf

 file_test$288:
	; PostCall 40

 file_test$289:
	; Assign targetFile "Z"
	mov qword [rbp + 24], @11474$string_Z#

 file_test$290:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$291:
	; Parameter 56 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$292:
	; Parameter 64 pointer "w"
	mov qword [rbp + 64], @11476$string_w#

 file_test$293:
	; Call 32 fopen 0
	mov qword [rbp + 32], file_test$294
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 file_test$294:
	; PostCall 32

 file_test$295:
	; GetReturnValue £temporary3651

 file_test$296:
	; Assign filePtr £temporary3651
	mov [rbp + 32], rbx

 file_test$297:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$298:
	; Parameter 64 pointer filePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 file_test$299:
	; Parameter 72 pointer "Hello Z"
	mov qword [rbp + 72], @11478$string_Hello20Z#

 file_test$300:
	; Call 40 fprintf 0
	mov qword [rbp + 40], file_test$301
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp fprintf

 file_test$301:
	; PostCall 40

 file_test$302:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$303:
	; Parameter 64 pointer filePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 file_test$304:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$305
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$305:
	; PostCall 40

 file_test$306:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$307:
	; Parameter 64 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$308:
	; Call 40 remove 0
	mov qword [rbp + 40], file_test$309
	mov [rbp + 48], rbp
	add rbp, 40
	jmp remove

 file_test$309:
	; PostCall 40

 file_test$310:
	; GetReturnValue £temporary3654

 file_test$311:
	; NotEqual 318 £temporary3654 0
	cmp ebx, 0
	jne file_test$318

 file_test$312:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$313:
	; Parameter 64 pointer ""%s" has been removed.\n"
	mov qword [rbp + 64], @11481$string_2225s2220has20been20removed2E0A#

 file_test$314:
	; Parameter 72 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$315:
	; Call 40 printf 8
	mov qword [rbp + 40], file_test$316
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$316:
	; PostCall 40

 file_test$317:
	; Jump 330
	jmp file_test$330

 file_test$318:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$319:
	; Parameter 64 pointer "Error "%s" %i: %s.\n"
	mov qword [rbp + 64], @11482$string_Error202225s222025i3A2025s2E0A#

 file_test$320:
	; Parameter 72 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 file_test$321:
	; Parameter 80 signedint errno
	mov eax, [errno]
	mov [rbp + 80], eax

 file_test$322:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$323:
	; Parameter 108 signedint errno
	mov eax, [errno]
	mov [rbp + 108], eax

 file_test$324:
	; Call 84 strerror 0
	mov qword [rbp + 84], file_test$325
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

 file_test$325:
	; PostCall 84

 file_test$326:
	; GetReturnValue £temporary3657

 file_test$327:
	; Parameter 84 pointer £temporary3657
	mov [rbp + 84], rbx

 file_test$328:
	; Call 40 printf 20
	mov qword [rbp + 40], file_test$329
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp printf

 file_test$329:
	; PostCall 40

 file_test$330:
	; Assign targetFile "Z2"
	mov qword [rbp + 24], @11483$string_Z2#

 file_test$331:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$332:
	; Parameter 56 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$333:
	; Call 32 remove 0
	mov qword [rbp + 32], file_test$334
	mov [rbp + 40], rbp
	add rbp, 32
	jmp remove

 file_test$334:
	; PostCall 32

 file_test$335:
	; GetReturnValue £temporary3659

 file_test$336:
	; NotEqual 343 £temporary3659 0
	cmp ebx, 0
	jne file_test$343

 file_test$337:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$338:
	; Parameter 56 pointer ""%s" has been removed.\n"
	mov qword [rbp + 56], @11487$string_2225s2220has20been20removed2E0A#

 file_test$339:
	; Parameter 64 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$340:
	; Call 32 printf 8
	mov qword [rbp + 32], file_test$341
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$341:
	; PostCall 32

 file_test$342:
	; Jump 355
	jmp file_test$355

 file_test$343:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$344:
	; Parameter 56 pointer "Error "%s" %i: %s.\n"
	mov qword [rbp + 56], @11488$string_Error202225s222025i3A2025s2E0A#

 file_test$345:
	; Parameter 64 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$346:
	; Parameter 72 signedint errno
	mov eax, [errno]
	mov [rbp + 72], eax

 file_test$347:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$348:
	; Parameter 100 signedint errno
	mov eax, [errno]
	mov [rbp + 100], eax

 file_test$349:
	; Call 76 strerror 0
	mov qword [rbp + 76], file_test$350
	mov [rbp + 84], rbp
	add rbp, 76
	jmp strerror

 file_test$350:
	; PostCall 76

 file_test$351:
	; GetReturnValue £temporary3662

 file_test$352:
	; Parameter 76 pointer £temporary3662
	mov [rbp + 76], rbx

 file_test$353:
	; Call 32 printf 20
	mov qword [rbp + 32], file_test$354
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp printf

 file_test$354:
	; PostCall 32

 file_test$355:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$356:
	; Parameter 48 pointer "PBook.txt"
	mov qword [rbp + 48], @11489$string_PBook2Etxt#

 file_test$357:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], @11490$string_r#

 file_test$358:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$359
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$359:
	; PostCall 24

 file_test$360:
	; GetReturnValue £temporary3664

 file_test$361:
	; Assign inFilePtr £temporary3664
	mov [rbp + 24], rbx

 file_test$362:
	; NotEqual 374 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$374

 file_test$363:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$364:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$365:
	; Parameter 64 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 64], @11495$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$366:
	; Parameter 72 pointer "inFilePtr != NULL"
	mov qword [rbp + 72], @11496$string_inFilePtr20213D20NULL#

 file_test$367:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], @11497$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$368:
	; Parameter 88 signedint 119
	mov dword [rbp + 88], 119

 file_test$369:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$370
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$370:
	; PostCall 32

 file_test$371:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$372:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$373
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$373:
	; PostCall 32

 file_test$374:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$375:
	; Parameter 56 pointer "\n%-24s %-24s\n"
	mov qword [rbp + 56], @11500$string_0A252D24s20252D24s0A#

 file_test$376:
	; Parameter 64 pointer "Name"
	mov qword [rbp + 64], @11501$string_Name#

 file_test$377:
	; Parameter 72 pointer "Phone"
	mov qword [rbp + 72], @11502$string_Phone#

 file_test$378:
	; Call 32 printf 16
	mov qword [rbp + 32], file_test$379
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$379:
	; PostCall 32

 file_test$380:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$381:
	; Parameter 56 pointer "%-24s %-24s\n"
	mov qword [rbp + 56], @11503$string_252D24s20252D24s0A#

 file_test$382:
	; Parameter 64 pointer "========================"
	mov qword [rbp + 64], @11504$string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#

 file_test$383:
	; Parameter 72 pointer "========================"
	mov qword [rbp + 72], @11505$string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#

 file_test$384:
	; Call 32 printf 16
	mov qword [rbp + 32], file_test$385
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$385:
	; PostCall 32

 file_test$386:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$387:
	; Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$388:
	; Parameter 72 pointer "%i"
	mov qword [rbp + 72], @11508$string_25i#

 file_test$389:
	; Address £temporary3671 size
	mov rsi, rbp
	add rsi, 36

 file_test$390:
	; Parameter 80 pointer £temporary3671
	mov [rbp + 80], rsi

 file_test$391:
	; Call 40 fscanf 8
	mov qword [rbp + 40], file_test$392
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 file_test$392:
	; PostCall 40

 file_test$393:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$394:
	; Parameter 64 pointer "size %i\n"
	mov qword [rbp + 64], @11509$string_size2025i0A#

 file_test$395:
	; Parameter 72 signedint size
	mov eax, [rbp + 36]
	mov [rbp + 72], eax

 file_test$396:
	; Call 40 printf 4
	mov qword [rbp + 40], file_test$397
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$397:
	; PostCall 40

 file_test$398:
	; Assign count 0
	mov dword [rbp + 32], 0

 file_test$399:
	; GreaterThanEqual 415 count size
	mov eax, [rbp + 36]
	cmp [rbp + 32], eax
	jge file_test$415

 file_test$400:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$401:
	; Parameter 104 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 104], rax

 file_test$402:
	; Parameter 112 pointer "%s%s"
	mov qword [rbp + 112], @11519$string_25s25s#

 file_test$403:
	; Parameter 120 pointer name
	mov [rbp + 120], rbp
	add qword [rbp + 120], 40

 file_test$404:
	; Parameter 128 pointer phone
	mov [rbp + 128], rbp
	add qword [rbp + 128], 60

 file_test$405:
	; Call 80 fscanf 16
	mov qword [rbp + 80], file_test$406
	mov [rbp + 88], rbp
	add rbp, 80
	mov rdi, rbp
	add rdi, 16
	jmp fscanf

 file_test$406:
	; PostCall 80

 file_test$407:
	; PreCall 80 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$408:
	; Parameter 104 pointer "%-24s %-24s\n"
	mov qword [rbp + 104], @11520$string_252D24s20252D24s0A#

 file_test$409:
	; Parameter 112 pointer name
	mov [rbp + 112], rbp
	add qword [rbp + 112], 40

 file_test$410:
	; Parameter 120 pointer phone
	mov [rbp + 120], rbp
	add qword [rbp + 120], 60

 file_test$411:
	; Call 80 printf 16
	mov qword [rbp + 80], file_test$412
	mov [rbp + 88], rbp
	add rbp, 80
	mov rdi, rbp
	add rdi, 16
	jmp printf

 file_test$412:
	; PostCall 80

 file_test$413:
	; BinaryAdd count count 1
	inc dword [rbp + 32]

 file_test$414:
	; Jump 399
	jmp file_test$399

 file_test$415:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$416:
	; Parameter 56 pointer "\n"
	mov qword [rbp + 56], @11521$string_0A#

 file_test$417:
	; Call 32 printf 0
	mov qword [rbp + 32], file_test$418
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 file_test$418:
	; PostCall 32

 file_test$419:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$420:
	; Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$421:
	; Call 32 fclose 0
	mov qword [rbp + 32], file_test$422
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$422:
	; PostCall 32

 file_test$423:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$424:
	; Parameter 48 pointer "TestX.bin"
	mov qword [rbp + 48], @11522$string_TestX2Ebin#

 file_test$425:
	; Parameter 56 pointer "w"
	mov qword [rbp + 56], @11523$string_w#

 file_test$426:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$427
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$427:
	; PostCall 24

 file_test$428:
	; GetReturnValue £temporary3680

 file_test$429:
	; Assign outFilePtr £temporary3680
	mov [rbp + 24], rbx

 file_test$430:
	; NotEqual 442 outFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$442

 file_test$431:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$432:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$433:
	; Parameter 64 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 64], @11528$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$434:
	; Parameter 72 pointer "outFilePtr != NULL"
	mov qword [rbp + 72], @11529$string_outFilePtr20213D20NULL#

 file_test$435:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], @11530$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$436:
	; Parameter 88 signedint 171
	mov dword [rbp + 88], 171

 file_test$437:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$438
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$438:
	; PostCall 32

 file_test$439:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$440:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$441
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$441:
	; PostCall 32

 file_test$442:
	; Assign size 10
	mov dword [rbp + 32], 10

 file_test$443:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$444:
	; Address £temporary3685 size
	mov rsi, rbp
	add rsi, 32

 file_test$445:
	; Parameter 64 pointer £temporary3685
	mov [rbp + 64], rsi

 file_test$446:
	; Parameter 72 signedint 4
	mov dword [rbp + 72], 4

 file_test$447:
	; Parameter 76 signedint 1
	mov dword [rbp + 76], 1

 file_test$448:
	; Parameter 80 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$449:
	; Call 40 fwrite 0
	mov qword [rbp + 40], file_test$450
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fwrite

 file_test$450:
	; PostCall 40

 file_test$451:
	; Assign index 0
	mov dword [rbp + 36], 0

 file_test$452:
	; GreaterThanEqual 466 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$466

 file_test$453:
	; Multiply £temporary3689 index index
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [rbp + 36]

 file_test$454:
	; IntegralToFloating £temporary3690 £temporary3689
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 file_test$455:
	; PopFloat value
	fstp qword [rbp + 40]

 file_test$456:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$457:
	; Address £temporary3691 value
	mov rsi, rbp
	add rsi, 40

 file_test$458:
	; Parameter 72 pointer £temporary3691
	mov [rbp + 72], rsi

 file_test$459:
	; Parameter 80 signedint 8
	mov dword [rbp + 80], 8

 file_test$460:
	; Parameter 84 signedint 1
	mov dword [rbp + 84], 1

 file_test$461:
	; Parameter 88 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 file_test$462:
	; Call 48 fwrite 0
	mov qword [rbp + 48], file_test$463
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fwrite

 file_test$463:
	; PostCall 48

 file_test$464:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 file_test$465:
	; Jump 452
	jmp file_test$452

 file_test$466:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$467:
	; Parameter 64 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$468:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$469
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$469:
	; PostCall 40

 file_test$470:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$471:
	; Parameter 48 pointer "TestX.bin"
	mov qword [rbp + 48], @11553$string_TestX2Ebin#

 file_test$472:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], @11554$string_r#

 file_test$473:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$474
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$474:
	; PostCall 24

 file_test$475:
	; GetReturnValue £temporary3694

 file_test$476:
	; Assign inFilePtr £temporary3694
	mov [rbp + 24], rbx

 file_test$477:
	; NotEqual 489 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$489

 file_test$478:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$479:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$480:
	; Parameter 72 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 72], @11561$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$481:
	; Parameter 80 pointer "inFilePtr != NULL"
	mov qword [rbp + 80], @11562$string_inFilePtr20213D20NULL#

 file_test$482:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], @11563$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$483:
	; Parameter 96 signedint 188
	mov dword [rbp + 96], 188

 file_test$484:
	; Call 40 fprintf 20
	mov qword [rbp + 40], file_test$485
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$485:
	; PostCall 40

 file_test$486:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$487:
	; Call 40 abort 0
	mov qword [rbp + 40], file_test$488
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$488:
	; PostCall 40

 file_test$489:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$490:
	; Address £temporary3699 size
	mov rsi, rbp
	add rsi, 32

 file_test$491:
	; Parameter 64 pointer £temporary3699
	mov [rbp + 64], rsi

 file_test$492:
	; Parameter 72 signedint 4
	mov dword [rbp + 72], 4

 file_test$493:
	; Parameter 76 signedint 1
	mov dword [rbp + 76], 1

 file_test$494:
	; Parameter 80 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 80], rax

 file_test$495:
	; Call 40 fread 0
	mov qword [rbp + 40], file_test$496
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fread

 file_test$496:
	; PostCall 40

 file_test$497:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$498:
	; Parameter 64 pointer "size1: %i\n"
	mov qword [rbp + 64], @11572$string_size13A2025i0A#

 file_test$499:
	; Parameter 72 signedint size
	mov eax, [rbp + 32]
	mov [rbp + 72], eax

 file_test$500:
	; Call 40 printf 4
	mov qword [rbp + 40], file_test$501
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$501:
	; PostCall 40

 file_test$502:
	; Assign index 0
	mov dword [rbp + 36], 0

 file_test$503:
	; GreaterThanEqual 521 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$521

 file_test$504:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$505:
	; Address £temporary3704 value
	mov rsi, rbp
	add rsi, 40

 file_test$506:
	; Parameter 72 pointer £temporary3704
	mov [rbp + 72], rsi

 file_test$507:
	; Parameter 80 signedint 8
	mov dword [rbp + 80], 8

 file_test$508:
	; Parameter 84 signedint 1
	mov dword [rbp + 84], 1

 file_test$509:
	; Parameter 88 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 file_test$510:
	; Call 48 fread 0
	mov qword [rbp + 48], file_test$511
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fread

 file_test$511:
	; PostCall 48

 file_test$512:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$513:
	; Parameter 72 pointer "index1: %i: value %f\n"
	mov qword [rbp + 72], @11583$string_index13A2025i3A20value2025f0A#

 file_test$514:
	; Parameter 80 signedint index
	mov eax, [rbp + 36]
	mov [rbp + 80], eax

 file_test$515:
	; PushFloat value
	fld qword [rbp + 40]

 file_test$516:
	; Parameter 84 double value
	fstp qword [rbp + 84]

 file_test$517:
	; Call 48 printf 12
	mov qword [rbp + 48], file_test$518
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$518:
	; PostCall 48

 file_test$519:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 file_test$520:
	; Jump 503
	jmp file_test$503

 file_test$521:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$522:
	; Parameter 64 pointer "\n"
	mov qword [rbp + 64], @11584$string_0A#

 file_test$523:
	; Call 40 printf 0
	mov qword [rbp + 40], file_test$524
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 file_test$524:
	; PostCall 40

 file_test$525:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$526:
	; Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$527:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$528
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$528:
	; PostCall 40

 file_test$529:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$530:
	; Parameter 48 pointer "TestY.bin"
	mov qword [rbp + 48], @11585$string_TestY2Ebin#

 file_test$531:
	; Parameter 56 pointer "w"
	mov qword [rbp + 56], @11586$string_w#

 file_test$532:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$533
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$533:
	; PostCall 24

 file_test$534:
	; GetReturnValue £temporary3709

 file_test$535:
	; Assign outFilePtr £temporary3709
	mov [rbp + 24], rbx

 file_test$536:
	; NotEqual 548 outFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$548

 file_test$537:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$538:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$539:
	; Parameter 64 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 64], @11591$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$540:
	; Parameter 72 pointer "outFilePtr != NULL"
	mov qword [rbp + 72], @11592$string_outFilePtr20213D20NULL#

 file_test$541:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], @11593$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$542:
	; Parameter 88 signedint 203
	mov dword [rbp + 88], 203

 file_test$543:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$544
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$544:
	; PostCall 32

 file_test$545:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$546:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$547
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$547:
	; PostCall 32

 file_test$548:
	; Assign size 10
	mov dword [rbp + 32], 10

 file_test$549:
	; Assign index 0
	mov dword [rbp + 36], 0

 file_test$550:
	; GreaterThanEqual 564 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$564

 file_test$551:
	; Multiply £temporary3716 index index
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [rbp + 36]

 file_test$552:
	; IntegralToFloating £temporary3717 £temporary3716
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 file_test$553:
	; PopFloat value
	fstp qword [rbp + 40]

 file_test$554:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$555:
	; Address £temporary3718 value
	mov rsi, rbp
	add rsi, 40

 file_test$556:
	; Parameter 72 pointer £temporary3718
	mov [rbp + 72], rsi

 file_test$557:
	; Parameter 80 signedint 8
	mov dword [rbp + 80], 8

 file_test$558:
	; Parameter 84 signedint 1
	mov dword [rbp + 84], 1

 file_test$559:
	; Parameter 88 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 88], rax

 file_test$560:
	; Call 48 fwrite 0
	mov qword [rbp + 48], file_test$561
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fwrite

 file_test$561:
	; PostCall 48

 file_test$562:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 file_test$563:
	; Jump 550
	jmp file_test$550

 file_test$564:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$565:
	; Parameter 64 pointer outFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$566:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$567
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$567:
	; PostCall 40

 file_test$568:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$569:
	; Parameter 48 pointer "TestY.bin"
	mov qword [rbp + 48], @11610$string_TestY2Ebin#

 file_test$570:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], @11611$string_r#

 file_test$571:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$572
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$572:
	; PostCall 24

 file_test$573:
	; GetReturnValue £temporary3721

 file_test$574:
	; Assign inFilePtr £temporary3721
	mov [rbp + 24], rbx

 file_test$575:
	; NotEqual 587 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$587

 file_test$576:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$577:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$578:
	; Parameter 64 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 64], @11616$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$579:
	; Parameter 72 pointer "inFilePtr != NULL"
	mov qword [rbp + 72], @11617$string_inFilePtr20213D20NULL#

 file_test$580:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], @11618$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$581:
	; Parameter 88 signedint 217
	mov dword [rbp + 88], 217

 file_test$582:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$583
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$583:
	; PostCall 32

 file_test$584:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$585:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$586
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$586:
	; PostCall 32

 file_test$587:
	; Assign index 0
	mov dword [rbp + 32], 0

 file_test$588:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$589:
	; Address £temporary3726 value
	mov rsi, rbp
	add rsi, 36

 file_test$590:
	; Parameter 68 pointer £temporary3726
	mov [rbp + 68], rsi

 file_test$591:
	; Parameter 76 signedint 8
	mov dword [rbp + 76], 8

 file_test$592:
	; Parameter 80 signedint 1
	mov dword [rbp + 80], 1

 file_test$593:
	; Parameter 84 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 file_test$594:
	; Call 44 fread 0
	mov qword [rbp + 44], file_test$595
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fread

 file_test$595:
	; PostCall 44

 file_test$596:
	; GetReturnValue £temporary3727

 file_test$597:
	; LessThanEqual 608 £temporary3727 0
	cmp ebx, 0
	jle file_test$608

 file_test$598:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$599:
	; Parameter 68 pointer "index2: %i: value %f\n"
	mov qword [rbp + 68], @11633$string_index23A2025i3A20value2025f0A#

 file_test$600:
	; Assign £temporary3729 index
	mov eax, [rbp + 32]

 file_test$601:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 file_test$602:
	; Parameter 76 signedint £temporary3729
	mov [rbp + 76], eax

 file_test$603:
	; PushFloat value
	fld qword [rbp + 36]

 file_test$604:
	; Parameter 80 double value
	fstp qword [rbp + 80]

 file_test$605:
	; Call 44 printf 12
	mov qword [rbp + 44], file_test$606
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$606:
	; PostCall 44

 file_test$607:
	; Jump 588
	jmp file_test$588

 file_test$608:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$609:
	; Parameter 56 pointer "\n"
	mov qword [rbp + 56], @11635$string_0A#

 file_test$610:
	; Call 32 printf 0
	mov qword [rbp + 32], file_test$611
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 file_test$611:
	; PostCall 32

 file_test$612:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$613:
	; Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$614:
	; Call 32 fclose 0
	mov qword [rbp + 32], file_test$615
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$615:
	; PostCall 32

 file_test$616:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$617:
	; Parameter 48 pointer "TestY.bin"
	mov qword [rbp + 48], @11636$string_TestY2Ebin#

 file_test$618:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], @11637$string_r#

 file_test$619:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$620
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$620:
	; PostCall 24

 file_test$621:
	; GetReturnValue £temporary3733

 file_test$622:
	; Assign inFilePtr £temporary3733
	mov [rbp + 24], rbx

 file_test$623:
	; NotEqual 635 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$635

 file_test$624:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$625:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$626:
	; Parameter 64 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 64], @11642$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$627:
	; Parameter 72 pointer "inFilePtr != NULL"
	mov qword [rbp + 72], @11643$string_inFilePtr20213D20NULL#

 file_test$628:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], @11644$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$629:
	; Parameter 88 signedint 232
	mov dword [rbp + 88], 232

 file_test$630:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$631
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$631:
	; PostCall 32

 file_test$632:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$633:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$634
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$634:
	; PostCall 32

 file_test$635:
	; Assign index 0
	mov dword [rbp + 32], 0

 file_test$636:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$637:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$638:
	; Call 36 feof 0
	mov qword [rbp + 36], file_test$639
	mov [rbp + 44], rbp
	add rbp, 36
	jmp feof

 file_test$639:
	; PostCall 36

 file_test$640:
	; GetReturnValue £temporary3738

 file_test$641:
	; NotEqual 660 £temporary3738 0
	cmp ebx, 0
	jne file_test$660

 file_test$642:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$643:
	; Address £temporary3741 value
	mov rsi, rbp
	add rsi, 36

 file_test$644:
	; Parameter 68 pointer £temporary3741
	mov [rbp + 68], rsi

 file_test$645:
	; Parameter 76 signedint 8
	mov dword [rbp + 76], 8

 file_test$646:
	; Parameter 80 signedint 1
	mov dword [rbp + 80], 1

 file_test$647:
	; Parameter 84 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 file_test$648:
	; Call 44 fread 0
	mov qword [rbp + 44], file_test$649
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fread

 file_test$649:
	; PostCall 44

 file_test$650:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$651:
	; Parameter 68 pointer "index3: %i: value %f\n"
	mov qword [rbp + 68], @11658$string_index33A2025i3A20value2025f0A#

 file_test$652:
	; Assign £temporary3743 index
	mov eax, [rbp + 32]

 file_test$653:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 file_test$654:
	; Parameter 76 signedint £temporary3743
	mov [rbp + 76], eax

 file_test$655:
	; PushFloat value
	fld qword [rbp + 36]

 file_test$656:
	; Parameter 80 double value
	fstp qword [rbp + 80]

 file_test$657:
	; Call 44 printf 12
	mov qword [rbp + 44], file_test$658
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$658:
	; PostCall 44

 file_test$659:
	; Jump 636
	jmp file_test$636

 file_test$660:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$661:
	; Parameter 56 pointer "\n"
	mov qword [rbp + 56], @11660$string_0A#

 file_test$662:
	; Call 32 printf 0
	mov qword [rbp + 32], file_test$663
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	jmp printf

 file_test$663:
	; PostCall 32

 file_test$664:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$665:
	; Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$666:
	; Call 32 fclose 0
	mov qword [rbp + 32], file_test$667
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$667:
	; PostCall 32

 file_test$668:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$669:
	; Parameter 48 pointer "TestX.bin"
	mov qword [rbp + 48], @11661$string_TestX2Ebin#

 file_test$670:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], @11662$string_r#

 file_test$671:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$672
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$672:
	; PostCall 24

 file_test$673:
	; GetReturnValue £temporary3747

 file_test$674:
	; Assign inFilePtr £temporary3747
	mov [rbp + 24], rbx

 file_test$675:
	; NotEqual 687 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$687

 file_test$676:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$677:
	; Parameter 60 pointer stderr
	mov rax, [stderr]
	mov [rbp + 60], rax

 file_test$678:
	; Parameter 68 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 68], @11668$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$679:
	; Parameter 76 pointer "inFilePtr != NULL"
	mov qword [rbp + 76], @11669$string_inFilePtr20213D20NULL#

 file_test$680:
	; Parameter 84 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 84], @11670$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$681:
	; Parameter 92 signedint 250
	mov dword [rbp + 92], 250

 file_test$682:
	; Call 36 fprintf 20
	mov qword [rbp + 36], file_test$683
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$683:
	; PostCall 36

 file_test$684:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$685:
	; Call 36 abort 0
	mov qword [rbp + 36], file_test$686
	mov [rbp + 44], rbp
	add rbp, 36
	jmp abort

 file_test$686:
	; PostCall 36

 file_test$687:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$688:
	; Address £temporary3752 size
	mov rsi, rbp
	add rsi, 32

 file_test$689:
	; Parameter 60 pointer £temporary3752
	mov [rbp + 60], rsi

 file_test$690:
	; Parameter 68 signedint 4
	mov dword [rbp + 68], 4

 file_test$691:
	; Parameter 72 signedint 1
	mov dword [rbp + 72], 1

 file_test$692:
	; Parameter 76 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 file_test$693:
	; Call 36 fread 0
	mov qword [rbp + 36], file_test$694
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fread

 file_test$694:
	; PostCall 36

 file_test$695:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$696:
	; Parameter 60 pointer "size4: %i total %i\n"
	mov qword [rbp + 60], @11679$string_size43A2025i20total2025i0A#

 file_test$697:
	; Parameter 68 signedint size
	mov eax, [rbp + 32]
	mov [rbp + 68], eax

 file_test$698:
	; Multiply £temporary3754 size 8
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@11681$int4$8#]

 file_test$699:
	; Parameter 72 signedint £temporary3754
	mov [rbp + 72], eax

 file_test$700:
	; Call 36 printf 8
	mov qword [rbp + 36], file_test$701
	mov [rbp + 44], rbp
	add rbp, 36
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$701:
	; PostCall 36

 file_test$702:
	; Multiply total size 8
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@11683$int4$8#]
	mov [rbp + 36], eax

 file_test$703:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$704:
	; Parameter 68 signedint total
	mov eax, [rbp + 36]
	mov [rbp + 68], eax

 file_test$705:
	; Call 44 malloc 0
	mov qword [rbp + 44], file_test$706
	mov [rbp + 52], rbp
	add rbp, 44
	jmp malloc

 file_test$706:
	; PostCall 44

 file_test$707:
	; GetReturnValue £temporary3757

 file_test$708:
	; Assign p £temporary3757
	mov [rbp + 44], rbx

 file_test$709:
	; Multiply £temporary3758 size 8
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@11688$int4$8#]

 file_test$710:
	; IntegralToIntegral £temporary3759 £temporary3758
	mov rbx, 4294967295
	and rax, rbx

 file_test$711:
	; BinaryAdd endPtr p £temporary3759
	mov rbx, [rbp + 44]
	add rbx, rax
	mov [rbp + 52], rbx

 file_test$712:
	; NotEqual 724 p 0
	cmp qword [rbp + 44], 0
	jne file_test$724

 file_test$713:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$714:
	; Parameter 84 pointer stderr
	mov rax, [stderr]
	mov [rbp + 84], rax

 file_test$715:
	; Parameter 92 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 92], @11693$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$716:
	; Parameter 100 pointer "p != NULL"
	mov qword [rbp + 100], @11694$string_p20213D20NULL#

 file_test$717:
	; Parameter 108 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 108], @11695$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$718:
	; Parameter 116 signedint 257
	mov dword [rbp + 116], 257

 file_test$719:
	; Call 60 fprintf 20
	mov qword [rbp + 60], file_test$720
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$720:
	; PostCall 60

 file_test$721:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$722:
	; Call 60 abort 0
	mov qword [rbp + 60], file_test$723
	mov [rbp + 68], rbp
	add rbp, 60
	jmp abort

 file_test$723:
	; PostCall 60

 file_test$724:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$725:
	; Parameter 84 pointer "malloc4: %u %u %u\n"
	mov qword [rbp + 84], @11698$string_malloc43A2025u2025u2025u0A#

 file_test$726:
	; Parameter 92 pointer p
	mov rax, [rbp + 44]
	mov [rbp + 92], rax

 file_test$727:
	; Parameter 100 signedint total
	mov eax, [rbp + 36]
	mov [rbp + 100], eax

 file_test$728:
	; Parameter 104 pointer endPtr
	mov rax, [rbp + 52]
	mov [rbp + 104], rax

 file_test$729:
	; Call 60 printf 20
	mov qword [rbp + 60], file_test$730
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 20
	jmp printf

 file_test$730:
	; PostCall 60

 file_test$731:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$732:
	; Parameter 84 pointer p
	mov rax, [rbp + 44]
	mov [rbp + 84], rax

 file_test$733:
	; Parameter 92 signedint total
	mov eax, [rbp + 36]
	mov [rbp + 92], eax

 file_test$734:
	; Parameter 96 signedint 1
	mov dword [rbp + 96], 1

 file_test$735:
	; Parameter 100 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

 file_test$736:
	; Call 60 fread 0
	mov qword [rbp + 60], file_test$737
	mov [rbp + 68], rbp
	add rbp, 60
	jmp fread

 file_test$737:
	; PostCall 60

 file_test$738:
	; Assign index 0
	mov dword [rbp + 40], 0

 file_test$739:
	; GreaterThanEqual 753 index size
	mov eax, [rbp + 32]
	cmp [rbp + 40], eax
	jge file_test$753

 file_test$740:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$741:
	; Parameter 84 pointer "index4: %i: value %f\n"
	mov qword [rbp + 84], @11705$string_index43A2025i3A20value2025f0A#

 file_test$742:
	; Parameter 92 signedint index
	mov eax, [rbp + 40]
	mov [rbp + 92], eax

 file_test$743:
	; Multiply £temporary3770 index 8
	mov eax, [rbp + 40]
	xor edx, edx
	imul dword [@11707$int4$8#]

 file_test$744:
	; IntegralToIntegral £temporary3771 £temporary3770
	mov rbx, 4294967295
	and rax, rbx

 file_test$745:
	; BinaryAdd £temporary3772 p £temporary3771
	mov rsi, [rbp + 44]
	add rsi, rax

 file_test$746:
	; Dereference £temporary3769 -> £temporary3772 £temporary3772 0

 file_test$747:
	; PushFloat £temporary3769 -> £temporary3772
	fld qword [rsi]

 file_test$748:
	; Parameter 96 double £temporary3769 -> £temporary3772
	fstp qword [rbp + 96]

 file_test$749:
	; Call 60 printf 12
	mov qword [rbp + 60], file_test$750
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$750:
	; PostCall 60

 file_test$751:
	; BinaryAdd index index 1
	inc dword [rbp + 40]

 file_test$752:
	; Jump 739
	jmp file_test$739

 file_test$753:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$754:
	; Parameter 84 pointer "\n"
	mov qword [rbp + 84], @11708$string_0A#

 file_test$755:
	; Call 60 printf 0
	mov qword [rbp + 60], file_test$756
	mov [rbp + 68], rbp
	add rbp, 60
	mov rdi, rbp
	jmp printf

 file_test$756:
	; PostCall 60

 file_test$757:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$758:
	; Parameter 84 pointer p
	mov rax, [rbp + 44]
	mov [rbp + 84], rax

 file_test$759:
	; Call 60 free 0
	mov qword [rbp + 60], file_test$760
	mov [rbp + 68], rbp
	add rbp, 60
	jmp free

 file_test$760:
	; PostCall 60

 file_test$761:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$762:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$763:
	; Call 36 fclose 0
	mov qword [rbp + 36], file_test$764
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fclose

 file_test$764:
	; PostCall 36

 file_test$765:
	; Assign personVector[0].name[0] 65
	mov byte [rbp + 24], 65

 file_test$766:
	; Assign personVector[0].name[1] 100
	mov byte [rbp + 25], 100

 file_test$767:
	; Assign personVector[0].name[2] 97
	mov byte [rbp + 26], 97

 file_test$768:
	; Assign personVector[0].name[3] 109
	mov byte [rbp + 27], 109

 file_test$769:
	; Assign personVector[0].name[4] 32
	mov byte [rbp + 28], 32

 file_test$770:
	; Assign personVector[0].name[5] 66
	mov byte [rbp + 29], 66

 file_test$771:
	; Assign personVector[0].name[6] 101
	mov byte [rbp + 30], 101

 file_test$772:
	; Assign personVector[0].name[7] 114
	mov byte [rbp + 31], 114

 file_test$773:
	; Assign personVector[0].name[8] 116
	mov byte [rbp + 32], 116

 file_test$774:
	; Assign personVector[0].name[9] 105
	mov byte [rbp + 33], 105

 file_test$775:
	; Assign personVector[0].name[10] 108
	mov byte [rbp + 34], 108

 file_test$776:
	; Assign personVector[0].name[11] 115
	mov byte [rbp + 35], 115

 file_test$777:
	; Assign personVector[0].name[12] 115
	mov byte [rbp + 36], 115

 file_test$778:
	; Assign personVector[0].name[13] 111
	mov byte [rbp + 37], 111

 file_test$779:
	; Assign personVector[0].name[14] 110
	mov byte [rbp + 38], 110

 file_test$780:
	; Assign personVector[0].name[15] 0
	mov byte [rbp + 39], 0

 file_test$781:
	; Assign personVector[0].phone 12345
	mov dword [rbp + 72], 12345

 file_test$782:
	; Assign personVector[1].name[0] 66
	mov byte [rbp + 76], 66

 file_test$783:
	; Assign personVector[1].name[1] 101
	mov byte [rbp + 77], 101

 file_test$784:
	; Assign personVector[1].name[2] 114
	mov byte [rbp + 78], 114

 file_test$785:
	; Assign personVector[1].name[3] 116
	mov byte [rbp + 79], 116

 file_test$786:
	; Assign personVector[1].name[4] 105
	mov byte [rbp + 80], 105

 file_test$787:
	; Assign personVector[1].name[5] 108
	mov byte [rbp + 81], 108

 file_test$788:
	; Assign personVector[1].name[6] 32
	mov byte [rbp + 82], 32

 file_test$789:
	; Assign personVector[1].name[7] 67
	mov byte [rbp + 83], 67

 file_test$790:
	; Assign personVector[1].name[8] 101
	mov byte [rbp + 84], 101

 file_test$791:
	; Assign personVector[1].name[9] 97
	mov byte [rbp + 85], 97

 file_test$792:
	; Assign personVector[1].name[10] 115
	mov byte [rbp + 86], 115

 file_test$793:
	; Assign personVector[1].name[11] 97
	mov byte [rbp + 87], 97

 file_test$794:
	; Assign personVector[1].name[12] 114
	mov byte [rbp + 88], 114

 file_test$795:
	; Assign personVector[1].name[13] 115
	mov byte [rbp + 89], 115

 file_test$796:
	; Assign personVector[1].name[14] 115
	mov byte [rbp + 90], 115

 file_test$797:
	; Assign personVector[1].name[15] 111
	mov byte [rbp + 91], 111

 file_test$798:
	; Assign personVector[1].name[16] 110
	mov byte [rbp + 92], 110

 file_test$799:
	; Assign personVector[1].name[17] 0
	mov byte [rbp + 93], 0

 file_test$800:
	; Assign personVector[1].phone 23456
	mov dword [rbp + 124], 23456

 file_test$801:
	; Assign personVector[2].name[0] 67
	mov byte [rbp + 128], 67

 file_test$802:
	; Assign personVector[2].name[1] 101
	mov byte [rbp + 129], 101

 file_test$803:
	; Assign personVector[2].name[2] 97
	mov byte [rbp + 130], 97

 file_test$804:
	; Assign personVector[2].name[3] 115
	mov byte [rbp + 131], 115

 file_test$805:
	; Assign personVector[2].name[4] 97
	mov byte [rbp + 132], 97

 file_test$806:
	; Assign personVector[2].name[5] 114
	mov byte [rbp + 133], 114

 file_test$807:
	; Assign personVector[2].name[6] 32
	mov byte [rbp + 134], 32

 file_test$808:
	; Assign personVector[2].name[7] 68
	mov byte [rbp + 135], 68

 file_test$809:
	; Assign personVector[2].name[8] 97
	mov byte [rbp + 136], 97

 file_test$810:
	; Assign personVector[2].name[9] 118
	mov byte [rbp + 137], 118

 file_test$811:
	; Assign personVector[2].name[10] 105
	mov byte [rbp + 138], 105

 file_test$812:
	; Assign personVector[2].name[11] 100
	mov byte [rbp + 139], 100

 file_test$813:
	; Assign personVector[2].name[12] 115
	mov byte [rbp + 140], 115

 file_test$814:
	; Assign personVector[2].name[13] 115
	mov byte [rbp + 141], 115

 file_test$815:
	; Assign personVector[2].name[14] 111
	mov byte [rbp + 142], 111

 file_test$816:
	; Assign personVector[2].name[15] 110
	mov byte [rbp + 143], 110

 file_test$817:
	; Assign personVector[2].name[16] 0
	mov byte [rbp + 144], 0

 file_test$818:
	; Assign personVector[2].phone 24567
	mov dword [rbp + 176], 24567

 file_test$819:
	; PreCall 232 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$820:
	; Parameter 256 pointer "Block.bin"
	mov qword [rbp + 256], @11826$string_Block2Ebin#

 file_test$821:
	; Parameter 264 pointer "w"
	mov qword [rbp + 264], @11827$string_w#

 file_test$822:
	; Call 232 fopen 0
	mov qword [rbp + 232], file_test$823
	mov [rbp + 240], rbp
	add rbp, 232
	jmp fopen

 file_test$823:
	; PostCall 232

 file_test$824:
	; GetReturnValue £temporary3837

 file_test$825:
	; Assign outFilePtr £temporary3837
	mov [rbp + 232], rbx

 file_test$826:
	; PreCall 240 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$827:
	; Parameter 264 pointer "Block.bin"
	mov qword [rbp + 264], @11829$string_Block2Ebin#

 file_test$828:
	; Parameter 272 pointer "r"
	mov qword [rbp + 272], @11830$string_r#

 file_test$829:
	; Call 240 fopen 0
	mov qword [rbp + 240], file_test$830
	mov [rbp + 248], rbp
	add rbp, 240
	jmp fopen

 file_test$830:
	; PostCall 240

 file_test$831:
	; GetReturnValue £temporary3838

 file_test$832:
	; Assign inFilePtr £temporary3838
	mov [rbp + 240], rbx

 file_test$833:
	; NotEqual 845 outFilePtr 0
	cmp qword [rbp + 232], 0
	jne file_test$845

 file_test$834:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$835:
	; Parameter 272 pointer stderr
	mov rax, [stderr]
	mov [rbp + 272], rax

 file_test$836:
	; Parameter 280 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 280], @11835$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$837:
	; Parameter 288 pointer "outFilePtr != NULL"
	mov qword [rbp + 288], @11836$string_outFilePtr20213D20NULL#

 file_test$838:
	; Parameter 296 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 296], @11837$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$839:
	; Parameter 304 signedint 284
	mov dword [rbp + 304], 284

 file_test$840:
	; Call 248 fprintf 20
	mov qword [rbp + 248], file_test$841
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$841:
	; PostCall 248

 file_test$842:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$843:
	; Call 248 abort 0
	mov qword [rbp + 248], file_test$844
	mov [rbp + 256], rbp
	add rbp, 248
	jmp abort

 file_test$844:
	; PostCall 248

 file_test$845:
	; NotEqual 857 inFilePtr 0
	cmp qword [rbp + 240], 0
	jne file_test$857

 file_test$846:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$847:
	; Parameter 272 pointer stderr
	mov rax, [stderr]
	mov [rbp + 272], rax

 file_test$848:
	; Parameter 280 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 280], @11843$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$849:
	; Parameter 288 pointer "inFilePtr != NULL"
	mov qword [rbp + 288], @11844$string_inFilePtr20213D20NULL#

 file_test$850:
	; Parameter 296 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 296], @11845$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$851:
	; Parameter 304 signedint 285
	mov dword [rbp + 304], 285

 file_test$852:
	; Call 248 fprintf 20
	mov qword [rbp + 248], file_test$853
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$853:
	; PostCall 248

 file_test$854:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$855:
	; Call 248 abort 0
	mov qword [rbp + 248], file_test$856
	mov [rbp + 256], rbp
	add rbp, 248
	jmp abort

 file_test$856:
	; PostCall 248

 file_test$857:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$858:
	; Parameter 272 pointer personVector
	mov [rbp + 272], rbp
	add qword [rbp + 272], 24

 file_test$859:
	; Parameter 280 signedint 156
	mov dword [rbp + 280], 156

 file_test$860:
	; Parameter 284 signedint 1
	mov dword [rbp + 284], 1

 file_test$861:
	; Parameter 288 pointer outFilePtr
	mov rax, [rbp + 232]
	mov [rbp + 288], rax

 file_test$862:
	; Call 248 fwrite 0
	mov qword [rbp + 248], file_test$863
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fwrite

 file_test$863:
	; PostCall 248

 file_test$864:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$865:
	; Parameter 272 pointer outFilePtr
	mov rax, [rbp + 232]
	mov [rbp + 272], rax

 file_test$866:
	; Call 248 fclose 0
	mov qword [rbp + 248], file_test$867
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fclose

 file_test$867:
	; PostCall 248

 file_test$868:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$869:
	; Parameter 272 pointer inFilePtr
	mov rax, [rbp + 240]
	mov [rbp + 272], rax

 file_test$870:
	; Call 248 feof 0
	mov qword [rbp + 248], file_test$871
	mov [rbp + 256], rbp
	add rbp, 248
	jmp feof

 file_test$871:
	; PostCall 248

 file_test$872:
	; GetReturnValue £temporary3849

 file_test$873:
	; NotEqual 893 £temporary3849 0
	cmp ebx, 0
	jne file_test$893

 file_test$874:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$875:
	; Address £temporary3852 person
	mov rsi, rbp
	add rsi, 180

 file_test$876:
	; Parameter 272 pointer £temporary3852
	mov [rbp + 272], rsi

 file_test$877:
	; Parameter 280 signedint 52
	mov dword [rbp + 280], 52

 file_test$878:
	; Parameter 284 signedint 1
	mov dword [rbp + 284], 1

 file_test$879:
	; Parameter 288 pointer inFilePtr
	mov rax, [rbp + 240]
	mov [rbp + 288], rax

 file_test$880:
	; Call 248 fread 0
	mov qword [rbp + 248], file_test$881
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fread

 file_test$881:
	; PostCall 248

 file_test$882:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$883:
	; Parameter 272 pointer "Name  : %s\n"
	mov qword [rbp + 272], @11861$string_Name20203A2025s0A#

 file_test$884:
	; Parameter 280 pointer person.name
	mov [rbp + 280], rbp
	add qword [rbp + 280], 180

 file_test$885:
	; Call 248 printf 8
	mov qword [rbp + 248], file_test$886
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$886:
	; PostCall 248

 file_test$887:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$888:
	; Parameter 272 pointer "Phone : %d\n"
	mov qword [rbp + 272], @11862$string_Phone203A2025d0A#

 file_test$889:
	; Parameter 280 signedint person.phone
	mov eax, [rbp + 228]
	mov [rbp + 280], eax

 file_test$890:
	; Call 248 printf 4
	mov qword [rbp + 248], file_test$891
	mov [rbp + 256], rbp
	add rbp, 248
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$891:
	; PostCall 248

 file_test$892:
	; Jump 868
	jmp file_test$868

 file_test$893:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$894:
	; Parameter 272 pointer inFilePtr
	mov rax, [rbp + 240]
	mov [rbp + 272], rax

 file_test$895:
	; Call 248 fclose 0
	mov qword [rbp + 248], file_test$896
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fclose

 file_test$896:
	; PostCall 248

 file_test$897:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$898:
	; Parameter 48 pointer "outx.txt"
	mov qword [rbp + 48], @11863$string_outx2Etxt#

 file_test$899:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], @11864$string_r#

 file_test$900:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$901
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$901:
	; PostCall 24

 file_test$902:
	; GetReturnValue £temporary3859

 file_test$903:
	; Assign inFilePtr £temporary3859
	mov [rbp + 24], rbx

 file_test$904:
	; NotEqual 916 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$916

 file_test$905:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$906:
	; Parameter 56 pointer stderr
	mov rax, [stderr]
	mov [rbp + 56], rax

 file_test$907:
	; Parameter 64 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 64], @11869$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$908:
	; Parameter 72 pointer "inFilePtr != NULL"
	mov qword [rbp + 72], @11870$string_inFilePtr20213D20NULL#

 file_test$909:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], @11871$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$910:
	; Parameter 88 signedint 301
	mov dword [rbp + 88], 301

 file_test$911:
	; Call 32 fprintf 20
	mov qword [rbp + 32], file_test$912
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$912:
	; PostCall 32

 file_test$913:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$914:
	; Call 32 abort 0
	mov qword [rbp + 32], file_test$915
	mov [rbp + 40], rbp
	add rbp, 32
	jmp abort

 file_test$915:
	; PostCall 32

 file_test$916:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$917:
	; Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$918:
	; Parameter 64 signedint 0
	mov dword [rbp + 64], 0

 file_test$919:
	; Parameter 68 signedint 2
	mov dword [rbp + 68], 2

 file_test$920:
	; Call 32 fseek 0
	mov qword [rbp + 32], file_test$921
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fseek

 file_test$921:
	; PostCall 32

 file_test$922:
	; GetReturnValue £temporary3864

 file_test$923:
	; Assign size £temporary3864
	mov [rbp + 32], ebx

 file_test$924:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$925:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$926:
	; Call 36 ftell 0
	mov qword [rbp + 36], file_test$927
	mov [rbp + 44], rbp
	add rbp, 36
	jmp ftell

 file_test$927:
	; PostCall 36

 file_test$928:
	; GetReturnValue £temporary3865

 file_test$929:
	; LessThanEqual 948 £temporary3865 1
	cmp ebx, 1
	jle file_test$948

 file_test$930:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$931:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$932:
	; BinarySubtract size size 1
	dec dword [rbp + 32]

 file_test$933:
	; Assign £temporary3867 size
	mov eax, [rbp + 32]

 file_test$934:
	; Parameter 68 signedint £temporary3867
	mov [rbp + 68], eax

 file_test$935:
	; Parameter 72 signedint 0
	mov dword [rbp + 72], 0

 file_test$936:
	; Call 36 fseek 0
	mov qword [rbp + 36], file_test$937
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fseek

 file_test$937:
	; PostCall 36

 file_test$938:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$939:
	; PreCall 36 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$940:
	; Parameter 60 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 60], rax

 file_test$941:
	; Call 36 fgetc 0
	mov qword [rbp + 36], file_test$942
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fgetc

 file_test$942:
	; PostCall 36

 file_test$943:
	; GetReturnValue £temporary3869

 file_test$944:
	; Parameter 60 signedint £temporary3869
	mov [rbp + 60], ebx

 file_test$945:
	; Call 36 putchar 0
	mov qword [rbp + 36], file_test$946
	mov [rbp + 44], rbp
	add rbp, 36
	jmp putchar

 file_test$946:
	; PostCall 36

 file_test$947:
	; Jump 924
	jmp file_test$924

 file_test$948:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$949:
	; Parameter 56 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$950:
	; Call 32 fclose 0
	mov qword [rbp + 32], file_test$951
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fclose

 file_test$951:
	; PostCall 32

 file_test$952:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$953:
	; Parameter 48 pointer "fileexists "X": %s\n"
	mov qword [rbp + 48], @11885$string_fileexists2022X223A2025s0A#

 file_test$954:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$955:
	; Parameter 80 pointer "X"
	mov qword [rbp + 80], @11886$string_X#

 file_test$956:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$957
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$957:
	; PostCall 56

 file_test$958:
	; GetReturnValue £temporary3872

 file_test$959:
	; Equal 962 £temporary3872 0
	cmp ebx, 0
	je file_test$962

 file_test$960:
	; Assign £temporary3874 "Yes"
	mov rax, @11887$string_Yes#

 file_test$961:
	; Jump 963
	jmp file_test$963

 file_test$962:
	; Assign £temporary3874 "No"
	mov rax, @11888$string_No#

 file_test$963:
	; Parameter 56 pointer £temporary3874
	mov [rbp + 56], rax

 file_test$964:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$965
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$965:
	; PostCall 24

 file_test$966:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$967:
	; Parameter 48 pointer "fileexists "Y": %s\n"
	mov qword [rbp + 48], @11890$string_fileexists2022Y223A2025s0A#

 file_test$968:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$969:
	; Parameter 80 pointer "Y"
	mov qword [rbp + 80], @11891$string_Y#

 file_test$970:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$971
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$971:
	; PostCall 56

 file_test$972:
	; GetReturnValue £temporary3876

 file_test$973:
	; Equal 976 £temporary3876 0
	cmp ebx, 0
	je file_test$976

 file_test$974:
	; Assign £temporary3878 "Yes"
	mov rax, @11892$string_Yes#

 file_test$975:
	; Jump 977
	jmp file_test$977

 file_test$976:
	; Assign £temporary3878 "No"
	mov rax, @11893$string_No#

 file_test$977:
	; Parameter 56 pointer £temporary3878
	mov [rbp + 56], rax

 file_test$978:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$979
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$979:
	; PostCall 24

 file_test$980:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$981:
	; Parameter 48 pointer "fileexists "Main.asm": %s\n"
	mov qword [rbp + 48], @11895$string_fileexists2022Main2Easm223A2025s0A#

 file_test$982:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$983:
	; Parameter 80 pointer "Main.asm"
	mov qword [rbp + 80], @11896$string_Main2Easm#

 file_test$984:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$985
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$985:
	; PostCall 56

 file_test$986:
	; GetReturnValue £temporary3880

 file_test$987:
	; Equal 990 £temporary3880 0
	cmp ebx, 0
	je file_test$990

 file_test$988:
	; Assign £temporary3882 "Yes"
	mov rax, @11897$string_Yes#

 file_test$989:
	; Jump 991
	jmp file_test$991

 file_test$990:
	; Assign £temporary3882 "No"
	mov rax, @11898$string_No#

 file_test$991:
	; Parameter 56 pointer £temporary3882
	mov [rbp + 56], rax

 file_test$992:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$993
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$993:
	; PostCall 24

 file_test$994:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$995:
	; Parameter 48 pointer "fileexists "MainX.asm": %s\n"
	mov qword [rbp + 48], @11900$string_fileexists2022MainX2Easm223A2025s0A#

 file_test$996:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$997:
	; Parameter 80 pointer "MainX.asm"
	mov qword [rbp + 80], @11901$string_MainX2Easm#

 file_test$998:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$999
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$999:
	; PostCall 56

 file_test$1000:
	; GetReturnValue £temporary3884

 file_test$1001:
	; Equal 1004 £temporary3884 0
	cmp ebx, 0
	je file_test$1004

 file_test$1002:
	; Assign £temporary3886 "Yes"
	mov rax, @11902$string_Yes#

 file_test$1003:
	; Jump 1005
	jmp file_test$1005

 file_test$1004:
	; Assign £temporary3886 "No"
	mov rax, @11903$string_No#

 file_test$1005:
	; Parameter 56 pointer £temporary3886
	mov [rbp + 56], rax

 file_test$1006:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1007
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1007:
	; PostCall 24

 file_test$1008:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1009:
	; Parameter 48 pointer "fileexists "Main.c": %s\n"
	mov qword [rbp + 48], @11905$string_fileexists2022Main2Ec223A2025s0A#

 file_test$1010:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1011:
	; Parameter 80 pointer "Main.c"
	mov qword [rbp + 80], @11906$string_Main2Ec#

 file_test$1012:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1013
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1013:
	; PostCall 56

 file_test$1014:
	; GetReturnValue £temporary3888

 file_test$1015:
	; Equal 1018 £temporary3888 0
	cmp ebx, 0
	je file_test$1018

 file_test$1016:
	; Assign £temporary3890 "Yes"
	mov rax, @11907$string_Yes#

 file_test$1017:
	; Jump 1019
	jmp file_test$1019

 file_test$1018:
	; Assign £temporary3890 "No"
	mov rax, @11908$string_No#

 file_test$1019:
	; Parameter 56 pointer £temporary3890
	mov [rbp + 56], rax

 file_test$1020:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1021
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1021:
	; PostCall 24

 file_test$1022:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1023:
	; Parameter 48 pointer "fileexists "MainX.c": %s\n"
	mov qword [rbp + 48], @11910$string_fileexists2022MainX2Ec223A2025s0A#

 file_test$1024:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1025:
	; Parameter 80 pointer "MainX.c"
	mov qword [rbp + 80], @11911$string_MainX2Ec#

 file_test$1026:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1027
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1027:
	; PostCall 56

 file_test$1028:
	; GetReturnValue £temporary3892

 file_test$1029:
	; Equal 1032 £temporary3892 0
	cmp ebx, 0
	je file_test$1032

 file_test$1030:
	; Assign £temporary3894 "Yes"
	mov rax, @11912$string_Yes#

 file_test$1031:
	; Jump 1033
	jmp file_test$1033

 file_test$1032:
	; Assign £temporary3894 "No"
	mov rax, @11913$string_No#

 file_test$1033:
	; Parameter 56 pointer £temporary3894
	mov [rbp + 56], rax

 file_test$1034:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1035
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1035:
	; PostCall 24

 file_test$1036:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1037:
	; Parameter 48 pointer "fileexists "File.c": %s\n"
	mov qword [rbp + 48], @11915$string_fileexists2022File2Ec223A2025s0A#

 file_test$1038:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1039:
	; Parameter 80 pointer "File.c"
	mov qword [rbp + 80], @11916$string_File2Ec#

 file_test$1040:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1041
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1041:
	; PostCall 56

 file_test$1042:
	; GetReturnValue £temporary3896

 file_test$1043:
	; Equal 1046 £temporary3896 0
	cmp ebx, 0
	je file_test$1046

 file_test$1044:
	; Assign £temporary3898 "Yes"
	mov rax, @11917$string_Yes#

 file_test$1045:
	; Jump 1047
	jmp file_test$1047

 file_test$1046:
	; Assign £temporary3898 "No"
	mov rax, @11918$string_No#

 file_test$1047:
	; Parameter 56 pointer £temporary3898
	mov [rbp + 56], rax

 file_test$1048:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1049
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1049:
	; PostCall 24

 file_test$1050:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1051:
	; Parameter 48 pointer "fileexists "File.x": %s\n"
	mov qword [rbp + 48], @11920$string_fileexists2022File2Ex223A2025s0A#

 file_test$1052:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1053:
	; Parameter 80 pointer "File.x"
	mov qword [rbp + 80], @11921$string_File2Ex#

 file_test$1054:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1055
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1055:
	; PostCall 56

 file_test$1056:
	; GetReturnValue £temporary3900

 file_test$1057:
	; Equal 1060 £temporary3900 0
	cmp ebx, 0
	je file_test$1060

 file_test$1058:
	; Assign £temporary3902 "Yes"
	mov rax, @11922$string_Yes#

 file_test$1059:
	; Jump 1061
	jmp file_test$1061

 file_test$1060:
	; Assign £temporary3902 "No"
	mov rax, @11923$string_No#

 file_test$1061:
	; Parameter 56 pointer £temporary3902
	mov [rbp + 56], rax

 file_test$1062:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1063
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1063:
	; PostCall 24

 file_test$1064:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1065:
	; Parameter 48 pointer "fileexists "File.h": %s\n"
	mov qword [rbp + 48], @11925$string_fileexists2022File2Eh223A2025s0A#

 file_test$1066:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1067:
	; Parameter 80 pointer "File.h"
	mov qword [rbp + 80], @11926$string_File2Eh#

 file_test$1068:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1069
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1069:
	; PostCall 56

 file_test$1070:
	; GetReturnValue £temporary3904

 file_test$1071:
	; Equal 1074 £temporary3904 0
	cmp ebx, 0
	je file_test$1074

 file_test$1072:
	; Assign £temporary3906 "Yes"
	mov rax, @11927$string_Yes#

 file_test$1073:
	; Jump 1075
	jmp file_test$1075

 file_test$1074:
	; Assign £temporary3906 "No"
	mov rax, @11928$string_No#

 file_test$1075:
	; Parameter 56 pointer £temporary3906
	mov [rbp + 56], rax

 file_test$1076:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1077
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1077:
	; PostCall 24

 file_test$1078:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1079:
	; Parameter 48 pointer "fileexists "File.y": %s\n"
	mov qword [rbp + 48], @11930$string_fileexists2022File2Ey223A2025s0A#

 file_test$1080:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1081:
	; Parameter 80 pointer "File.y"
	mov qword [rbp + 80], @11931$string_File2Ey#

 file_test$1082:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1083
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1083:
	; PostCall 56

 file_test$1084:
	; GetReturnValue £temporary3908

 file_test$1085:
	; Equal 1088 £temporary3908 0
	cmp ebx, 0
	je file_test$1088

 file_test$1086:
	; Assign £temporary3910 "Yes"
	mov rax, @11932$string_Yes#

 file_test$1087:
	; Jump 1089
	jmp file_test$1089

 file_test$1088:
	; Assign £temporary3910 "No"
	mov rax, @11933$string_No#

 file_test$1089:
	; Parameter 56 pointer £temporary3910
	mov [rbp + 56], rax

 file_test$1090:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1091
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1091:
	; PostCall 24

 file_test$1092:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1093:
	; Parameter 48 pointer "fileexists "File.p": %s\n"
	mov qword [rbp + 48], @11935$string_fileexists2022File2Ep223A2025s0A#

 file_test$1094:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1095:
	; Parameter 80 pointer "File.p"
	mov qword [rbp + 80], @11936$string_File2Ep#

 file_test$1096:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1097
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1097:
	; PostCall 56

 file_test$1098:
	; GetReturnValue £temporary3912

 file_test$1099:
	; Equal 1102 £temporary3912 0
	cmp ebx, 0
	je file_test$1102

 file_test$1100:
	; Assign £temporary3914 "Yes"
	mov rax, @11937$string_Yes#

 file_test$1101:
	; Jump 1103
	jmp file_test$1103

 file_test$1102:
	; Assign £temporary3914 "No"
	mov rax, @11938$string_No#

 file_test$1103:
	; Parameter 56 pointer £temporary3914
	mov [rbp + 56], rax

 file_test$1104:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1105
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1105:
	; PostCall 24

 file_test$1106:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1107:
	; Parameter 48 pointer "fileexists "File.z": %s\n"
	mov qword [rbp + 48], @11940$string_fileexists2022File2Ez223A2025s0A#

 file_test$1108:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1109:
	; Parameter 80 pointer "File.z"
	mov qword [rbp + 80], @11941$string_File2Ez#

 file_test$1110:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1111
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1111:
	; PostCall 56

 file_test$1112:
	; GetReturnValue £temporary3916

 file_test$1113:
	; Equal 1116 £temporary3916 0
	cmp ebx, 0
	je file_test$1116

 file_test$1114:
	; Assign £temporary3918 "Yes"
	mov rax, @11942$string_Yes#

 file_test$1115:
	; Jump 1117
	jmp file_test$1117

 file_test$1116:
	; Assign £temporary3918 "No"
	mov rax, @11943$string_No#

 file_test$1117:
	; Parameter 56 pointer £temporary3918
	mov [rbp + 56], rax

 file_test$1118:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1119
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1119:
	; PostCall 24

 file_test$1120:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 file_test$1121:
	; FunctionEnd file_test

section .data

@12279$string_Hello0A#:
	; Initializer String Hello\n
	db "Hello", 10, 0

section .data

@12281$string_PBookX2Etxt#:
	; Initializer String PBookX.txt
	db "PBookX.txt", 0

section .data

@12282$string_r2B#:
	; Initializer String r+
	db "r+", 0

section .data

@12287$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@12288$string_inOutFilePtr20213D20NULL#:
	; Initializer String inOutFilePtr != NULL
	db "inOutFilePtr != NULL", 0

section .data

@12289$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@12292$string_Temp0A#:
	; Initializer String Temp\n
	db "Temp", 10, 0

section .data

@12296$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@12297$string_tempFilePtr20213D20NULL#:
	; Initializer String tempFilePtr != NULL
	db "tempFilePtr != NULL", 0

section .data

@12298$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@12305$string_0A2D2D2D2D2D2D2D2D2D2D2D2D0A#:
	; Initializer String \n------------\n
	db 10, "------------", 10, 0

section .text

 temp_file:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$1:
	; Parameter 48 pointer "Hello\n"
	mov qword [rbp + 48], @12279$string_Hello0A#

 temp_file$2:
	; Call 24 printf 0
	mov qword [rbp + 24], temp_file$3
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	jmp printf

 temp_file$3:
	; PostCall 24

 temp_file$4:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$5:
	; Parameter 56 pointer "PBookX.txt"
	mov qword [rbp + 56], @12281$string_PBookX2Etxt#

 temp_file$6:
	; Parameter 64 pointer "r+"
	mov qword [rbp + 64], @12282$string_r2B#

 temp_file$7:
	; Call 32 fopen 0
	mov qword [rbp + 32], temp_file$8
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 temp_file$8:
	; PostCall 32

 temp_file$9:
	; GetReturnValue £temporary3946

 temp_file$10:
	; Assign inOutFilePtr £temporary3946
	mov [rbp + 32], rbx

 temp_file$11:
	; NotEqual 23 inOutFilePtr 0
	cmp qword [rbp + 32], 0
	jne temp_file$23

 temp_file$12:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$13:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 temp_file$14:
	; Parameter 72 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 72], @12287$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 temp_file$15:
	; Parameter 80 pointer "inOutFilePtr != NULL"
	mov qword [rbp + 80], @12288$string_inOutFilePtr20213D20NULL#

 temp_file$16:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], @12289$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 temp_file$17:
	; Parameter 96 signedint 369
	mov dword [rbp + 96], 369

 temp_file$18:
	; Call 40 fprintf 20
	mov qword [rbp + 40], temp_file$19
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 temp_file$19:
	; PostCall 40

 temp_file$20:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$21:
	; Call 40 abort 0
	mov qword [rbp + 40], temp_file$22
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 temp_file$22:
	; PostCall 40

 temp_file$23:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$24:
	; Parameter 64 pointer "Temp\n"
	mov qword [rbp + 64], @12292$string_Temp0A#

 temp_file$25:
	; Call 40 printf 0
	mov qword [rbp + 40], temp_file$26
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 temp_file$26:
	; PostCall 40

 temp_file$27:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$28:
	; Call 40 tmpfile 0
	mov qword [rbp + 40], temp_file$29
	mov [rbp + 48], rbp
	add rbp, 40
	jmp tmpfile

 temp_file$29:
	; PostCall 40

 temp_file$30:
	; GetReturnValue £temporary3952

 temp_file$31:
	; Assign tempFilePtr £temporary3952
	mov [rbp + 24], rbx

 temp_file$32:
	; NotEqual 44 tempFilePtr 0
	cmp qword [rbp + 24], 0
	jne temp_file$44

 temp_file$33:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$34:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 temp_file$35:
	; Parameter 72 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 72], @12296$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 temp_file$36:
	; Parameter 80 pointer "tempFilePtr != NULL"
	mov qword [rbp + 80], @12297$string_tempFilePtr20213D20NULL#

 temp_file$37:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], @12298$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 temp_file$38:
	; Parameter 96 signedint 372
	mov dword [rbp + 96], 372

 temp_file$39:
	; Call 40 fprintf 20
	mov qword [rbp + 40], temp_file$40
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 temp_file$40:
	; PostCall 40

 temp_file$41:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$42:
	; Call 40 abort 0
	mov qword [rbp + 40], temp_file$43
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 temp_file$43:
	; PostCall 40

 temp_file$44:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$45:
	; Parameter 64 pointer inOutFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 temp_file$46:
	; Call 40 fgetc 0
	mov qword [rbp + 40], temp_file$47
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fgetc

 temp_file$47:
	; PostCall 40

 temp_file$48:
	; GetReturnValue £temporary3957

 temp_file$49:
	; IntegralToIntegral £temporary3958 £temporary3957
	cmp ebx, 0
	jge temp_file$50
	neg ebx
	neg bl

 temp_file$50:
	; Assign c £temporary3958
	mov [rbp + 40], bl

 temp_file$51:
	; IntegralToIntegral £temporary3959 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge temp_file$52
	neg al
	neg eax

 temp_file$52:
	; Equal 65 £temporary3959 -1
	cmp eax, -1
	je temp_file$65

 temp_file$53:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$54:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$55:
	; IntegralToIntegral £temporary3961 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge temp_file$56
	neg al
	neg eax

 temp_file$56:
	; Parameter 65 signedint £temporary3961
	mov [rbp + 65], eax

 temp_file$57:
	; Call 41 toupper 0
	mov qword [rbp + 41], temp_file$58
	mov [rbp + 49], rbp
	add rbp, 41
	jmp toupper

 temp_file$58:
	; PostCall 41

 temp_file$59:
	; GetReturnValue £temporary3962

 temp_file$60:
	; Parameter 65 signedint £temporary3962
	mov [rbp + 65], ebx

 temp_file$61:
	; Parameter 69 pointer tempFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 69], rax

 temp_file$62:
	; Call 41 putc 0
	mov qword [rbp + 41], temp_file$63
	mov [rbp + 49], rbp
	add rbp, 41
	jmp putc

 temp_file$63:
	; PostCall 41

 temp_file$64:
	; Jump 44
	jmp temp_file$44

 temp_file$65:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$66:
	; Parameter 64 pointer tempFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 temp_file$67:
	; Call 40 rewind 0
	mov qword [rbp + 40], temp_file$68
	mov [rbp + 48], rbp
	add rbp, 40
	jmp rewind

 temp_file$68:
	; PostCall 40

 temp_file$69:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$70:
	; Parameter 64 pointer inOutFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 temp_file$71:
	; Parameter 72 pointer "\n------------\n"
	mov qword [rbp + 72], @12305$string_0A2D2D2D2D2D2D2D2D2D2D2D2D0A#

 temp_file$72:
	; Call 40 fprintf 0
	mov qword [rbp + 40], temp_file$73
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp fprintf

 temp_file$73:
	; PostCall 40

 temp_file$74:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$75:
	; Parameter 64 pointer tempFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 temp_file$76:
	; Call 40 fgetc 0
	mov qword [rbp + 40], temp_file$77
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fgetc

 temp_file$77:
	; PostCall 40

 temp_file$78:
	; GetReturnValue £temporary3967

 temp_file$79:
	; IntegralToIntegral £temporary3968 £temporary3967
	cmp ebx, 0
	jge temp_file$80
	neg ebx
	neg bl

 temp_file$80:
	; Assign c £temporary3968
	mov [rbp + 40], bl

 temp_file$81:
	; IntegralToIntegral £temporary3969 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge temp_file$82
	neg al
	neg eax

 temp_file$82:
	; Equal 90 £temporary3969 -1
	cmp eax, -1
	je temp_file$90

 temp_file$83:
	; PreCall 41 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$84:
	; IntegralToIntegral £temporary3971 c
	mov al, [rbp + 40]
	and eax, 255
	cmp al, 0
	jge temp_file$85
	neg al
	neg eax

 temp_file$85:
	; Parameter 65 signedint £temporary3971
	mov [rbp + 65], eax

 temp_file$86:
	; Parameter 69 pointer inOutFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 69], rax

 temp_file$87:
	; Call 41 putc 0
	mov qword [rbp + 41], temp_file$88
	mov [rbp + 49], rbp
	add rbp, 41
	jmp putc

 temp_file$88:
	; PostCall 41

 temp_file$89:
	; Jump 74
	jmp temp_file$74

 temp_file$90:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$91:
	; Parameter 64 pointer inOutFilePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 temp_file$92:
	; Call 40 fclose 0
	mov qword [rbp + 40], temp_file$93
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 temp_file$93:
	; PostCall 40

 temp_file$94:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 temp_file$95:
	; Parameter 64 pointer tempFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 temp_file$96:
	; Call 40 fclose 0
	mov qword [rbp + 40], temp_file$97
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 temp_file$97:
	; PostCall 40

 temp_file$98:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 temp_file$99:
	; FunctionEnd temp_file
