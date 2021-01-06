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
	extern fileexists
	extern $StackTop


section .data

@11135$string_in2Etxt#:
	; Initializer String in.txt
	db "in.txt", 0

section .data

@11136$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11138$string_outX2Etxt#:
	; Initializer String outX.txt
	db "outX.txt", 0

section .data

@11139$string_w#:
	; Initializer String w
	db "w", 0

section .data

@11144$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11145$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11146$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11151$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11152$string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@11153$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11157$string_25lf#:
	; Initializer String %lf
	db "%lf", 0

section .data

@11158$string_X12025f0A#:
	; Initializer String X1 %f\n
	db "X1 %f", 10, 0

section .data

@11159$string_X22025f0A#:
	; Initializer String X2 %f\n
	db "X2 %f", 10, 0

section .data

@11160$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@11161$string_in2Etxt#:
	; Initializer String in.txt
	db "in.txt", 0

section .data

@11162$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11164$string_outY2Etxt#:
	; Initializer String outY.txt
	db "outY.txt", 0

section .data

@11165$string_w#:
	; Initializer String w
	db "w", 0

section .data

@11170$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11171$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11172$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11177$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11178$string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@11179$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11185$string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@11186$string_size2025i0A#:
	; Initializer String size %i\n
	db "size %i", 10, 0

section .data

@11187$string_Y20size2025i0A#:
	; Initializer String Y size %i\n
	db "Y size %i", 10, 0

section .data

@11192$string_25lf#:
	; Initializer String %lf
	db "%lf", 0

section .data

@11193$string_Y12025f0A#:
	; Initializer String Y1 %f\n
	db "Y1 %f", 10, 0

section .data

@11194$string_Y22025f0A#:
	; Initializer String Y2 %f\n
	db "Y2 %f", 10, 0

section .data

@11195$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@11196$string_Y#:
	; Initializer String Y
	db "Y", 0

section .data

@11200$string_2225s2220has20been20removed0A#:
	; Initializer String "%s" has been removed\n
	db 34, "%s", 34, " has been removed", 10, 0

section .data

@11201$string_Error202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@11202$string_X#:
	; Initializer String X
	db "X", 0

section .data

@11204$string_Y#:
	; Initializer String Y
	db "Y", 0

section .data

@11206$string_w#:
	; Initializer String w
	db "w", 0

section .data

@11208$string_Hello20X#:
	; Initializer String Hello X
	db "Hello X", 0

section .data

@11211$string_2225s2220has20been20renamed20to202225s222E0A#:
	; Initializer String "%s" has been renamed to "%s".\n
	db 34, "%s", 34, " has been renamed to ", 34, "%s", 34, ".", 10, 0

section .data

@11212$string_Error202225s22202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@11213$string_X2#:
	; Initializer String X2
	db "X2", 0

section .data

@11215$string_Y2#:
	; Initializer String Y2
	db "Y2", 0

section .data

@11219$string_2225s2220has20been20renamed20to202225s222E0A#:
	; Initializer String "%s" has been renamed to "%s".\n
	db 34, "%s", 34, " has been renamed to ", 34, "%s", 34, ".", 10, 0

section .data

@11220$string_Error202225s22202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@11221$string_Z#:
	; Initializer String Z
	db "Z", 0

section .data

@11223$string_w#:
	; Initializer String w
	db "w", 0

section .data

@11225$string_Hello20Z#:
	; Initializer String Hello Z
	db "Hello Z", 0

section .data

@11228$string_2225s2220has20been20removed2E0A#:
	; Initializer String "%s" has been removed.\n
	db 34, "%s", 34, " has been removed.", 10, 0

section .data

@11229$string_Error202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@11230$string_Z2#:
	; Initializer String Z2
	db "Z2", 0

section .data

@11234$string_2225s2220has20been20removed2E0A#:
	; Initializer String "%s" has been removed.\n
	db 34, "%s", 34, " has been removed.", 10, 0

section .data

@11235$string_Error202225s222025i3A2025s2E0A#:
	; Initializer String Error "%s" %i: %s.\n
	db "Error ", 34, "%s", 34, " %i: %s.", 10, 0

section .data

@11236$string_PBook2Etxt#:
	; Initializer String PBook.txt
	db "PBook.txt", 0

section .data

@11237$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11242$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11243$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11244$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11246$string_0A252D24s20252D24s0A#:
	; Initializer String \n%-24s %-24s\n
	db 10, "%-24s %-24s", 10, 0

section .data

@11247$string_Name#:
	; Initializer String Name
	db "Name", 0

section .data

@11248$string_Phone#:
	; Initializer String Phone
	db "Phone", 0

section .data

@11249$string_252D24s20252D24s0A#:
	; Initializer String %-24s %-24s\n
	db "%-24s %-24s", 10, 0

section .data

@11250$string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#:
	; Initializer String ========================
	db "========================", 0

section .data

@11251$string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#:
	; Initializer String ========================
	db "========================", 0

section .data

@11254$string_25i#:
	; Initializer String %i
	db "%i", 0

section .data

@11255$string_size2025i0A#:
	; Initializer String size %i\n
	db "size %i", 10, 0

section .data

@11265$string_25s25s#:
	; Initializer String %s%s
	db "%s%s", 0

section .data

@11266$string_252D24s20252D24s0A#:
	; Initializer String %-24s %-24s\n
	db "%-24s %-24s", 10, 0

section .data

@11267$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@11268$string_TestX2Ebin#:
	; Initializer String TestX.bin
	db "TestX.bin", 0

section .data

@11269$string_w#:
	; Initializer String w
	db "w", 0

section .data

@11274$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11275$string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@11276$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11294$string_TestX2Ebin#:
	; Initializer String TestX.bin
	db "TestX.bin", 0

section .data

@11295$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11302$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11303$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11304$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11310$string_size13A2025i0A#:
	; Initializer String size1: %i\n
	db "size1: %i", 10, 0

section .data

@11319$string_index13A2025i3A20value2025f0A#:
	; Initializer String index1: %i: value %f\n
	db "index1: %i: value %f", 10, 0

section .data

@11320$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@11321$string_TestY2Ebin#:
	; Initializer String TestY.bin
	db "TestY.bin", 0

section .data

@11322$string_w#:
	; Initializer String w
	db "w", 0

section .data

@11327$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11328$string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@11329$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11343$string_TestY2Ebin#:
	; Initializer String TestY.bin
	db "TestY.bin", 0

section .data

@11344$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11349$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11350$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11351$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11363$string_index23A2025i3A20value2025f0A#:
	; Initializer String index2: %i: value %f\n
	db "index2: %i: value %f", 10, 0

section .data

@11365$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@11366$string_TestY2Ebin#:
	; Initializer String TestY.bin
	db "TestY.bin", 0

section .data

@11367$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11372$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11373$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11374$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11385$string_index33A2025i3A20value2025f0A#:
	; Initializer String index3: %i: value %f\n
	db "index3: %i: value %f", 10, 0

section .data

@11387$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@11388$string_TestX2Ebin#:
	; Initializer String TestX.bin
	db "TestX.bin", 0

section .data

@11389$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11395$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11396$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11397$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11403$string_size43A2025i20total2025i0A#:
	; Initializer String size4: %i total %i\n
	db "size4: %i total %i", 10, 0

section .data

@11417$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11418$string_p20213D20NULL#:
	; Initializer String p != NULL
	db "p != NULL", 0

section .data

@11419$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11421$string_malloc43A2025u2025u2025u0A#:
	; Initializer String malloc4: %u %u %u\n
	db "malloc4: %u %u %u", 10, 0

section .data

@11427$string_index43A2025i3A20value2025f0A#:
	; Initializer String index4: %i: value %f\n
	db "index4: %i: value %f", 10, 0

section .data

@11430$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@11435$string_Adam20Bertilsson#:
	; Initializer String Adam Bertilsson
	db "Adam Bertilsson", 0

section .data

@11437$string_Bertil20Ceasarsson#:
	; Initializer String Bertil Ceasarsson
	db "Bertil Ceasarsson", 0

section .data

@11439$string_Ceasar20Davidsson#:
	; Initializer String Ceasar Davidsson
	db "Ceasar Davidsson", 0

section .data

@11548$string_Block2Ebin#:
	; Initializer String Block.bin
	db "Block.bin", 0

section .data

@11549$string_w#:
	; Initializer String w
	db "w", 0

section .data

@11551$string_Block2Ebin#:
	; Initializer String Block.bin
	db "Block.bin", 0

section .data

@11552$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11557$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11558$string_outFilePtr20213D20NULL#:
	; Initializer String outFilePtr != NULL
	db "outFilePtr != NULL", 0

section .data

@11559$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11564$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11565$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11566$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11577$string_Name20203A2025s0A#:
	; Initializer String Name  : %s\n
	db "Name  : %s", 10, 0

section .data

@11578$string_Phone203A2025d0A#:
	; Initializer String Phone : %d\n
	db "Phone : %d", 10, 0

section .data

@11579$string_outx2Etxt#:
	; Initializer String outx.txt
	db "outx.txt", 0

section .data

@11580$string_r#:
	; Initializer String r
	db "r", 0

section .data

@11587$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; Initializer String Assertion failed: "%s" in file %s at line %i\n
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

section .data

@11588$string_inFilePtr20213D20NULL#:
	; Initializer String inFilePtr != NULL
	db "inFilePtr != NULL", 0

section .data

@11589$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; Initializer String C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

section .data

@11595$string_ftell2025i0A#:
	; Initializer String ftell %i\n
	db "ftell %i", 10, 0

section .data

@11600$string_3C25c3E2025i2025i0A#:
	; Initializer String <%c> %i %i\n
	db "<%c> %i %i", 10, 0

section .data

@11604$string_0A#:
	; Initializer String \n
	db 10, 0

section .data

@11605$string_fileexists2022X223A2025s0A#:
	; Initializer String fileexists "X": %s\n
	db "fileexists ", 34, "X", 34, ": %s", 10, 0

section .data

@11606$string_X#:
	; Initializer String X
	db "X", 0

section .data

@11607$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11608$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11610$string_fileexists2022Y223A2025s0A#:
	; Initializer String fileexists "Y": %s\n
	db "fileexists ", 34, "Y", 34, ": %s", 10, 0

section .data

@11611$string_Y#:
	; Initializer String Y
	db "Y", 0

section .data

@11612$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11613$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11615$string_fileexists2022Main2Easm223A2025s0A#:
	; Initializer String fileexists "Main.asm": %s\n
	db "fileexists ", 34, "Main.asm", 34, ": %s", 10, 0

section .data

@11616$string_Main2Easm#:
	; Initializer String Main.asm
	db "Main.asm", 0

section .data

@11617$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11618$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11620$string_fileexists2022MainX2Easm223A2025s0A#:
	; Initializer String fileexists "MainX.asm": %s\n
	db "fileexists ", 34, "MainX.asm", 34, ": %s", 10, 0

section .data

@11621$string_MainX2Easm#:
	; Initializer String MainX.asm
	db "MainX.asm", 0

section .data

@11622$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11623$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11625$string_fileexists2022Main2Ec223A2025s0A#:
	; Initializer String fileexists "Main.c": %s\n
	db "fileexists ", 34, "Main.c", 34, ": %s", 10, 0

section .data

@11626$string_Main2Ec#:
	; Initializer String Main.c
	db "Main.c", 0

section .data

@11627$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11628$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11630$string_fileexists2022MainX2Ec223A2025s0A#:
	; Initializer String fileexists "MainX.c": %s\n
	db "fileexists ", 34, "MainX.c", 34, ": %s", 10, 0

section .data

@11631$string_MainX2Ec#:
	; Initializer String MainX.c
	db "MainX.c", 0

section .data

@11632$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11633$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11635$string_fileexists2022File2Ec223A2025s0A#:
	; Initializer String fileexists "File.c": %s\n
	db "fileexists ", 34, "File.c", 34, ": %s", 10, 0

section .data

@11636$string_File2Ec#:
	; Initializer String File.c
	db "File.c", 0

section .data

@11637$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11638$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11640$string_fileexists2022File2Ex223A2025s0A#:
	; Initializer String fileexists "File.x": %s\n
	db "fileexists ", 34, "File.x", 34, ": %s", 10, 0

section .data

@11641$string_File2Ex#:
	; Initializer String File.x
	db "File.x", 0

section .data

@11642$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11643$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11645$string_fileexists2022File2Eh223A2025s0A#:
	; Initializer String fileexists "File.h": %s\n
	db "fileexists ", 34, "File.h", 34, ": %s", 10, 0

section .data

@11646$string_File2Eh#:
	; Initializer String File.h
	db "File.h", 0

section .data

@11647$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11648$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11650$string_fileexists2022File2Ey223A2025s0A#:
	; Initializer String fileexists "File.y": %s\n
	db "fileexists ", 34, "File.y", 34, ": %s", 10, 0

section .data

@11651$string_File2Ey#:
	; Initializer String File.y
	db "File.y", 0

section .data

@11652$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11653$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11655$string_fileexists2022File2Ep223A2025s0A#:
	; Initializer String fileexists "File.p": %s\n
	db "fileexists ", 34, "File.p", 34, ": %s", 10, 0

section .data

@11656$string_File2Ep#:
	; Initializer String File.p
	db "File.p", 0

section .data

@11657$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11658$string_No#:
	; Initializer String No
	db "No", 0

section .data

@11660$string_fileexists2022File2Ez223A2025s0A#:
	; Initializer String fileexists "File.z": %s\n
	db "fileexists ", 34, "File.z", 34, ": %s", 10, 0

section .data

@11661$string_File2Ez#:
	; Initializer String File.z
	db "File.z", 0

section .data

@11662$string_Yes#:
	; Initializer String Yes
	db "Yes", 0

section .data

@11663$string_No#:
	; Initializer String No
	db "No", 0

section .data

container4bytes#:
	; InitializerZero 4
	times 4 db 0

section .data

@11405$int4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@11407$int4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@11412$int4$8#:
	; Initializer SignedInt 8
	dd 8

section .data

@11429$int4$8#:
	; Initializer SignedInt 8
	dd 8

section .text

 file_test:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1:
	; Parameter 48 pointer "in.txt"
	mov qword [rbp + 48], @11135$string_in2Etxt#

 file_test$2:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], @11136$string_r#

 file_test$3:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$4
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$4:
	; PostCall 24

 file_test$5:
	; GetReturnValue £temporary3573

 file_test$6:
	; Assign inFilePtr £temporary3573
	mov [rbp + 24], rbx

 file_test$7:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$8:
	; Parameter 56 pointer "outX.txt"
	mov qword [rbp + 56], @11138$string_outX2Etxt#

 file_test$9:
	; Parameter 64 pointer "w"
	mov qword [rbp + 64], @11139$string_w#

 file_test$10:
	; Call 32 fopen 0
	mov qword [rbp + 32], file_test$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 file_test$11:
	; PostCall 32

 file_test$12:
	; GetReturnValue £temporary3574

 file_test$13:
	; Assign outFilePtr £temporary3574
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
	mov qword [rbp + 72], @11144$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$18:
	; Parameter 80 pointer "inFilePtr != NULL"
	mov qword [rbp + 80], @11145$string_inFilePtr20213D20NULL#

 file_test$19:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], @11146$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	mov qword [rbp + 72], @11151$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$30:
	; Parameter 80 pointer "outFilePtr != NULL"
	mov qword [rbp + 80], @11152$string_outFilePtr20213D20NULL#

 file_test$31:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], @11153$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	; GetReturnValue £temporary3583

 file_test$43:
	; NotEqual 75 £temporary3583 0
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
	mov qword [rbp + 80], @11157$string_25lf#

 file_test$47:
	; Address £temporary3586 value
	mov rsi, rbp
	add rsi, 40

 file_test$48:
	; Parameter 88 pointer £temporary3586
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
	mov qword [rbp + 72], @11158$string_X12025f0A#

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
	; GetReturnValue £temporary3588

 file_test$59:
	; Parameter 80 double £temporary3588
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
	mov qword [rbp + 80], @11159$string_X22025f0A#

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
	; GetReturnValue £temporary3590

 file_test$71:
	; Parameter 88 double £temporary3590
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
	mov qword [rbp + 64], @11160$string_0A#

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
	mov qword [rbp + 48], @11161$string_in2Etxt#

 file_test$89:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], @11162$string_r#

 file_test$90:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$91
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$91:
	; PostCall 24

 file_test$92:
	; GetReturnValue £temporary3595

 file_test$93:
	; Assign inFilePtr £temporary3595
	mov [rbp + 24], rbx

 file_test$94:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$95:
	; Parameter 56 pointer "outY.txt"
	mov qword [rbp + 56], @11164$string_outY2Etxt#

 file_test$96:
	; Parameter 64 pointer "w"
	mov qword [rbp + 64], @11165$string_w#

 file_test$97:
	; Call 32 fopen 0
	mov qword [rbp + 32], file_test$98
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 file_test$98:
	; PostCall 32

 file_test$99:
	; GetReturnValue £temporary3596

 file_test$100:
	; Assign outFilePtr £temporary3596
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
	mov qword [rbp + 72], @11170$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$105:
	; Parameter 80 pointer "inFilePtr != NULL"
	mov qword [rbp + 80], @11171$string_inFilePtr20213D20NULL#

 file_test$106:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], @11172$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	mov qword [rbp + 72], @11177$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$117:
	; Parameter 80 pointer "outFilePtr != NULL"
	mov qword [rbp + 80], @11178$string_outFilePtr20213D20NULL#

 file_test$118:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], @11179$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	mov qword [rbp + 80], @11185$string_25i#

 file_test$129:
	; Address £temporary3605 size
	mov rsi, rbp
	add rsi, 40

 file_test$130:
	; Parameter 88 pointer £temporary3605
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
	mov qword [rbp + 72], @11186$string_size2025i0A#

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
	mov qword [rbp + 80], @11187$string_Y20size2025i0A#

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
	mov qword [rbp + 88], @11192$string_25lf#

 file_test$149:
	; Address £temporary3611 value
	mov rsi, rbp
	add rsi, 48

 file_test$150:
	; Parameter 96 pointer £temporary3611
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
	mov qword [rbp + 80], @11193$string_Y12025f0A#

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
	; GetReturnValue £temporary3613

 file_test$161:
	; Parameter 88 double £temporary3613
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
	mov qword [rbp + 88], @11194$string_Y22025f0A#

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
	; GetReturnValue £temporary3615

 file_test$173:
	; Parameter 96 double £temporary3615
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
	mov qword [rbp + 72], @11195$string_0A#

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
	mov qword [rbp + 24], @11196$string_Y#

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
	; GetReturnValue £temporary3620

 file_test$196:
	; NotEqual 203 £temporary3620 0
	cmp ebx, 0
	jne file_test$203

 file_test$197:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$198:
	; Parameter 56 pointer ""%s" has been removed\n"
	mov qword [rbp + 56], @11200$string_2225s2220has20been20removed0A#

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
	mov qword [rbp + 56], @11201$string_Error202225s222025i3A2025s2E0A#

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
	; GetReturnValue £temporary3623

 file_test$212:
	; Parameter 76 pointer £temporary3623
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
	mov qword [rbp + 24], @11202$string_X#

 file_test$216:
	; Assign targetFile "Y"
	mov qword [rbp + 32], @11204$string_Y#

 file_test$217:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$218:
	; Parameter 64 pointer sourceFile
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$219:
	; Parameter 72 pointer "w"
	mov qword [rbp + 72], @11206$string_w#

 file_test$220:
	; Call 40 fopen 0
	mov qword [rbp + 40], file_test$221
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

 file_test$221:
	; PostCall 40

 file_test$222:
	; GetReturnValue £temporary3625

 file_test$223:
	; Assign filePtr £temporary3625
	mov [rbp + 40], rbx

 file_test$224:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$225:
	; Parameter 72 pointer filePtr
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

 file_test$226:
	; Parameter 80 pointer "Hello X"
	mov qword [rbp + 80], @11208$string_Hello20X#

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
	; GetReturnValue £temporary3628

 file_test$239:
	; NotEqual 247 £temporary3628 0
	cmp ebx, 0
	jne file_test$247

 file_test$240:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$241:
	; Parameter 72 pointer ""%s" has been renamed to "%s".\n"
	mov qword [rbp + 72], @11211$string_2225s2220has20been20renamed20to202225s222E0A#

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
	mov qword [rbp + 72], @11212$string_Error202225s22202225s222025i3A2025s2E0A#

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
	; GetReturnValue £temporary3631

 file_test$257:
	; Parameter 100 pointer £temporary3631
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
	mov qword [rbp + 24], @11213$string_X2#

 file_test$261:
	; Assign targetFile "Y2"
	mov qword [rbp + 32], @11215$string_Y2#

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
	; GetReturnValue £temporary3633

 file_test$268:
	; NotEqual 276 £temporary3633 0
	cmp ebx, 0
	jne file_test$276

 file_test$269:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$270:
	; Parameter 64 pointer ""%s" has been renamed to "%s".\n"
	mov qword [rbp + 64], @11219$string_2225s2220has20been20renamed20to202225s222E0A#

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
	mov qword [rbp + 64], @11220$string_Error202225s22202225s222025i3A2025s2E0A#

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
	; GetReturnValue £temporary3636

 file_test$286:
	; Parameter 92 pointer £temporary3636
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
	mov qword [rbp + 24], @11221$string_Z#

 file_test$290:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$291:
	; Parameter 56 pointer targetFile
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 file_test$292:
	; Parameter 64 pointer "w"
	mov qword [rbp + 64], @11223$string_w#

 file_test$293:
	; Call 32 fopen 0
	mov qword [rbp + 32], file_test$294
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fopen

 file_test$294:
	; PostCall 32

 file_test$295:
	; GetReturnValue £temporary3638

 file_test$296:
	; Assign filePtr £temporary3638
	mov [rbp + 32], rbx

 file_test$297:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$298:
	; Parameter 64 pointer filePtr
	mov rax, [rbp + 32]
	mov [rbp + 64], rax

 file_test$299:
	; Parameter 72 pointer "Hello Z"
	mov qword [rbp + 72], @11225$string_Hello20Z#

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
	; GetReturnValue £temporary3641

 file_test$311:
	; NotEqual 318 £temporary3641 0
	cmp ebx, 0
	jne file_test$318

 file_test$312:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$313:
	; Parameter 64 pointer ""%s" has been removed.\n"
	mov qword [rbp + 64], @11228$string_2225s2220has20been20removed2E0A#

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
	mov qword [rbp + 64], @11229$string_Error202225s222025i3A2025s2E0A#

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
	; GetReturnValue £temporary3644

 file_test$327:
	; Parameter 84 pointer £temporary3644
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
	mov qword [rbp + 24], @11230$string_Z2#

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
	; GetReturnValue £temporary3646

 file_test$336:
	; NotEqual 343 £temporary3646 0
	cmp ebx, 0
	jne file_test$343

 file_test$337:
	; PreCall 32 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$338:
	; Parameter 56 pointer ""%s" has been removed.\n"
	mov qword [rbp + 56], @11234$string_2225s2220has20been20removed2E0A#

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
	mov qword [rbp + 56], @11235$string_Error202225s222025i3A2025s2E0A#

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
	; GetReturnValue £temporary3649

 file_test$352:
	; Parameter 76 pointer £temporary3649
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
	mov qword [rbp + 48], @11236$string_PBook2Etxt#

 file_test$357:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], @11237$string_r#

 file_test$358:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$359
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$359:
	; PostCall 24

 file_test$360:
	; GetReturnValue £temporary3651

 file_test$361:
	; Assign inFilePtr £temporary3651
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
	mov qword [rbp + 64], @11242$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$366:
	; Parameter 72 pointer "inFilePtr != NULL"
	mov qword [rbp + 72], @11243$string_inFilePtr20213D20NULL#

 file_test$367:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], @11244$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	mov qword [rbp + 56], @11246$string_0A252D24s20252D24s0A#

 file_test$376:
	; Parameter 64 pointer "Name"
	mov qword [rbp + 64], @11247$string_Name#

 file_test$377:
	; Parameter 72 pointer "Phone"
	mov qword [rbp + 72], @11248$string_Phone#

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
	mov qword [rbp + 56], @11249$string_252D24s20252D24s0A#

 file_test$382:
	; Parameter 64 pointer "========================"
	mov qword [rbp + 64], @11250$string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#

 file_test$383:
	; Parameter 72 pointer "========================"
	mov qword [rbp + 72], @11251$string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#

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
	mov qword [rbp + 72], @11254$string_25i#

 file_test$389:
	; Address £temporary3658 size
	mov rsi, rbp
	add rsi, 36

 file_test$390:
	; Parameter 80 pointer £temporary3658
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
	mov qword [rbp + 64], @11255$string_size2025i0A#

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
	; SignedGreaterThanEqual 415 count size
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
	mov qword [rbp + 112], @11265$string_25s25s#

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
	mov qword [rbp + 104], @11266$string_252D24s20252D24s0A#

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
	mov qword [rbp + 56], @11267$string_0A#

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
	mov qword [rbp + 48], @11268$string_TestX2Ebin#

 file_test$425:
	; Parameter 56 pointer "w"
	mov qword [rbp + 56], @11269$string_w#

 file_test$426:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$427
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$427:
	; PostCall 24

 file_test$428:
	; GetReturnValue £temporary3667

 file_test$429:
	; Assign outFilePtr £temporary3667
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
	mov qword [rbp + 64], @11274$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$434:
	; Parameter 72 pointer "outFilePtr != NULL"
	mov qword [rbp + 72], @11275$string_outFilePtr20213D20NULL#

 file_test$435:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], @11276$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	; Address £temporary3672 size
	mov rsi, rbp
	add rsi, 32

 file_test$445:
	; Parameter 64 pointer £temporary3672
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
	; SignedGreaterThanEqual 466 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$466

 file_test$453:
	; SignedMultiply £temporary3676 index index
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [rbp + 36]

 file_test$454:
	; IntegralToFloating £temporary3677 £temporary3676
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 file_test$455:
	; PopFloat value
	fstp qword [rbp + 40]

 file_test$456:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$457:
	; Address £temporary3678 value
	mov rsi, rbp
	add rsi, 40

 file_test$458:
	; Parameter 72 pointer £temporary3678
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
	mov qword [rbp + 48], @11294$string_TestX2Ebin#

 file_test$472:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], @11295$string_r#

 file_test$473:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$474
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$474:
	; PostCall 24

 file_test$475:
	; GetReturnValue £temporary3681

 file_test$476:
	; Assign inFilePtr £temporary3681
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
	mov qword [rbp + 72], @11302$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$481:
	; Parameter 80 pointer "inFilePtr != NULL"
	mov qword [rbp + 80], @11303$string_inFilePtr20213D20NULL#

 file_test$482:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], @11304$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	; Address £temporary3686 size
	mov rsi, rbp
	add rsi, 32

 file_test$491:
	; Parameter 64 pointer £temporary3686
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
	mov qword [rbp + 64], @11310$string_size13A2025i0A#

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
	; SignedGreaterThanEqual 521 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$521

 file_test$504:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$505:
	; Address £temporary3691 value
	mov rsi, rbp
	add rsi, 40

 file_test$506:
	; Parameter 72 pointer £temporary3691
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
	mov qword [rbp + 72], @11319$string_index13A2025i3A20value2025f0A#

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
	mov qword [rbp + 64], @11320$string_0A#

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
	mov qword [rbp + 48], @11321$string_TestY2Ebin#

 file_test$531:
	; Parameter 56 pointer "w"
	mov qword [rbp + 56], @11322$string_w#

 file_test$532:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$533
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$533:
	; PostCall 24

 file_test$534:
	; GetReturnValue £temporary3696

 file_test$535:
	; Assign outFilePtr £temporary3696
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
	mov qword [rbp + 64], @11327$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$540:
	; Parameter 72 pointer "outFilePtr != NULL"
	mov qword [rbp + 72], @11328$string_outFilePtr20213D20NULL#

 file_test$541:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], @11329$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	; SignedGreaterThanEqual 564 index size
	mov eax, [rbp + 32]
	cmp [rbp + 36], eax
	jge file_test$564

 file_test$551:
	; SignedMultiply £temporary3703 index index
	mov eax, [rbp + 36]
	xor edx, edx
	imul dword [rbp + 36]

 file_test$552:
	; IntegralToFloating £temporary3704 £temporary3703
	mov [container4bytes#], eax
	fild dword [container4bytes#]

 file_test$553:
	; PopFloat value
	fstp qword [rbp + 40]

 file_test$554:
	; PreCall 48 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$555:
	; Address £temporary3705 value
	mov rsi, rbp
	add rsi, 40

 file_test$556:
	; Parameter 72 pointer £temporary3705
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
	mov qword [rbp + 48], @11343$string_TestY2Ebin#

 file_test$570:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], @11344$string_r#

 file_test$571:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$572
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$572:
	; PostCall 24

 file_test$573:
	; GetReturnValue £temporary3708

 file_test$574:
	; Assign inFilePtr £temporary3708
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
	mov qword [rbp + 64], @11349$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$579:
	; Parameter 72 pointer "inFilePtr != NULL"
	mov qword [rbp + 72], @11350$string_inFilePtr20213D20NULL#

 file_test$580:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], @11351$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	; Address £temporary3713 value
	mov rsi, rbp
	add rsi, 36

 file_test$590:
	; Parameter 68 pointer £temporary3713
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
	; GetReturnValue £temporary3714

 file_test$597:
	; SignedLessThanEqual 608 £temporary3714 0
	cmp ebx, 0
	jle file_test$608

 file_test$598:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$599:
	; Parameter 68 pointer "index2: %i: value %f\n"
	mov qword [rbp + 68], @11363$string_index23A2025i3A20value2025f0A#

 file_test$600:
	; Assign £temporary3716 index
	mov eax, [rbp + 32]

 file_test$601:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 file_test$602:
	; Parameter 76 signedint £temporary3716
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
	mov qword [rbp + 56], @11365$string_0A#

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
	mov qword [rbp + 48], @11366$string_TestY2Ebin#

 file_test$618:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], @11367$string_r#

 file_test$619:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$620
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$620:
	; PostCall 24

 file_test$621:
	; GetReturnValue £temporary3720

 file_test$622:
	; Assign inFilePtr £temporary3720
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
	mov qword [rbp + 64], @11372$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$627:
	; Parameter 72 pointer "inFilePtr != NULL"
	mov qword [rbp + 72], @11373$string_inFilePtr20213D20NULL#

 file_test$628:
	; Parameter 80 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 80], @11374$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	; GetReturnValue £temporary3725

 file_test$641:
	; NotEqual 660 £temporary3725 0
	cmp ebx, 0
	jne file_test$660

 file_test$642:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$643:
	; Address £temporary3728 value
	mov rsi, rbp
	add rsi, 36

 file_test$644:
	; Parameter 68 pointer £temporary3728
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
	mov qword [rbp + 68], @11385$string_index33A2025i3A20value2025f0A#

 file_test$652:
	; Assign £temporary3730 index
	mov eax, [rbp + 32]

 file_test$653:
	; BinaryAdd index index 1
	inc dword [rbp + 32]

 file_test$654:
	; Parameter 76 signedint £temporary3730
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
	mov qword [rbp + 56], @11387$string_0A#

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
	mov qword [rbp + 48], @11388$string_TestX2Ebin#

 file_test$670:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], @11389$string_r#

 file_test$671:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$672
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$672:
	; PostCall 24

 file_test$673:
	; GetReturnValue £temporary3734

 file_test$674:
	; Assign inFilePtr £temporary3734
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
	mov qword [rbp + 68], @11395$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$679:
	; Parameter 76 pointer "inFilePtr != NULL"
	mov qword [rbp + 76], @11396$string_inFilePtr20213D20NULL#

 file_test$680:
	; Parameter 84 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 84], @11397$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	; Address £temporary3739 size
	mov rsi, rbp
	add rsi, 32

 file_test$689:
	; Parameter 60 pointer £temporary3739
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
	mov qword [rbp + 60], @11403$string_size43A2025i20total2025i0A#

 file_test$697:
	; Parameter 68 signedint size
	mov eax, [rbp + 32]
	mov [rbp + 68], eax

 file_test$698:
	; SignedMultiply £temporary3741 size 8
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@11405$int4$8#]

 file_test$699:
	; Parameter 72 signedint £temporary3741
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
	; SignedMultiply total size 8
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [@11407$int4$8#]
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
	; GetReturnValue £temporary3744

 file_test$708:
	; Assign p £temporary3744
	mov [rbp + 44], rbx

 file_test$709:
	; UnsignedMultiply £temporary3745 size 8
	mov eax, [rbp + 32]
	xor edx, edx
	mul dword [@11412$int4$8#]

 file_test$710:
	; IntegralToIntegral £temporary3746 £temporary3745
	mov rbx, 4294967295
	and rax, rbx

 file_test$711:
	; BinaryAdd endPtr p £temporary3746
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
	mov qword [rbp + 92], @11417$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$716:
	; Parameter 100 pointer "p != NULL"
	mov qword [rbp + 100], @11418$string_p20213D20NULL#

 file_test$717:
	; Parameter 108 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 108], @11419$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	mov qword [rbp + 84], @11421$string_malloc43A2025u2025u2025u0A#

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
	; SignedGreaterThanEqual 753 index size
	mov eax, [rbp + 32]
	cmp [rbp + 40], eax
	jge file_test$753

 file_test$740:
	; PreCall 60 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$741:
	; Parameter 84 pointer "index4: %i: value %f\n"
	mov qword [rbp + 84], @11427$string_index43A2025i3A20value2025f0A#

 file_test$742:
	; Parameter 92 signedint index
	mov eax, [rbp + 40]
	mov [rbp + 92], eax

 file_test$743:
	; UnsignedMultiply £temporary3757 index 8
	mov eax, [rbp + 40]
	xor edx, edx
	mul dword [@11429$int4$8#]

 file_test$744:
	; IntegralToIntegral £temporary3758 £temporary3757
	mov rbx, 4294967295
	and rax, rbx

 file_test$745:
	; BinaryAdd £temporary3759 p £temporary3758
	mov rsi, [rbp + 44]
	add rsi, rax

 file_test$746:
	; Dereference £temporary3756 -> £temporary3759 £temporary3759 0

 file_test$747:
	; PushFloat £temporary3756 -> £temporary3759
	fld qword [rsi]

 file_test$748:
	; Parameter 96 double £temporary3756 -> £temporary3759
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
	mov qword [rbp + 84], @11430$string_0A#

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
	mov qword [rbp + 256], @11548$string_Block2Ebin#

 file_test$821:
	; Parameter 264 pointer "w"
	mov qword [rbp + 264], @11549$string_w#

 file_test$822:
	; Call 232 fopen 0
	mov qword [rbp + 232], file_test$823
	mov [rbp + 240], rbp
	add rbp, 232
	jmp fopen

 file_test$823:
	; PostCall 232

 file_test$824:
	; GetReturnValue £temporary3824

 file_test$825:
	; Assign outFilePtr £temporary3824
	mov [rbp + 232], rbx

 file_test$826:
	; PreCall 240 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$827:
	; Parameter 264 pointer "Block.bin"
	mov qword [rbp + 264], @11551$string_Block2Ebin#

 file_test$828:
	; Parameter 272 pointer "r"
	mov qword [rbp + 272], @11552$string_r#

 file_test$829:
	; Call 240 fopen 0
	mov qword [rbp + 240], file_test$830
	mov [rbp + 248], rbp
	add rbp, 240
	jmp fopen

 file_test$830:
	; PostCall 240

 file_test$831:
	; GetReturnValue £temporary3825

 file_test$832:
	; Assign inFilePtr £temporary3825
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
	mov qword [rbp + 280], @11557$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$837:
	; Parameter 288 pointer "outFilePtr != NULL"
	mov qword [rbp + 288], @11558$string_outFilePtr20213D20NULL#

 file_test$838:
	; Parameter 296 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 296], @11559$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	mov qword [rbp + 280], @11564$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$849:
	; Parameter 288 pointer "inFilePtr != NULL"
	mov qword [rbp + 288], @11565$string_inFilePtr20213D20NULL#

 file_test$850:
	; Parameter 296 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 296], @11566$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

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
	; GetReturnValue £temporary3836

 file_test$873:
	; NotEqual 893 £temporary3836 0
	cmp ebx, 0
	jne file_test$893

 file_test$874:
	; PreCall 248 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$875:
	; Address £temporary3839 person
	mov rsi, rbp
	add rsi, 180

 file_test$876:
	; Parameter 272 pointer £temporary3839
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
	mov qword [rbp + 272], @11577$string_Name20203A2025s0A#

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
	mov qword [rbp + 272], @11578$string_Phone203A2025d0A#

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
	mov qword [rbp + 48], @11579$string_outx2Etxt#

 file_test$899:
	; Parameter 56 pointer "r"
	mov qword [rbp + 56], @11580$string_r#

 file_test$900:
	; Call 24 fopen 0
	mov qword [rbp + 24], file_test$901
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fopen

 file_test$901:
	; PostCall 24

 file_test$902:
	; GetReturnValue £temporary3846

 file_test$903:
	; Assign inFilePtr £temporary3846
	mov [rbp + 24], rbx

 file_test$904:
	; NotEqual 916 inFilePtr 0
	cmp qword [rbp + 24], 0
	jne file_test$916

 file_test$905:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$906:
	; Parameter 64 pointer stderr
	mov rax, [stderr]
	mov [rbp + 64], rax

 file_test$907:
	; Parameter 72 pointer "Assertion failed: "%s" in file %s at line %i\n"
	mov qword [rbp + 72], @11587$string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

 file_test$908:
	; Parameter 80 pointer "inFilePtr != NULL"
	mov qword [rbp + 80], @11588$string_inFilePtr20213D20NULL#

 file_test$909:
	; Parameter 88 pointer "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c"
	mov qword [rbp + 88], @11589$string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

 file_test$910:
	; Parameter 96 signedint 302
	mov dword [rbp + 96], 302

 file_test$911:
	; Call 40 fprintf 20
	mov qword [rbp + 40], file_test$912
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

 file_test$912:
	; PostCall 40

 file_test$913:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$914:
	; Call 40 abort 0
	mov qword [rbp + 40], file_test$915
	mov [rbp + 48], rbp
	add rbp, 40
	jmp abort

 file_test$915:
	; PostCall 40

 file_test$916:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$917:
	; Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$918:
	; Parameter 72 signedint 0
	mov dword [rbp + 72], 0

 file_test$919:
	; Parameter 76 signedint 2
	mov dword [rbp + 76], 2

 file_test$920:
	; Call 40 fseek 0
	mov qword [rbp + 40], file_test$921
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fseek

 file_test$921:
	; PostCall 40

 file_test$922:
	; GetReturnValue £temporary3851

 file_test$923:
	; Assign size £temporary3851
	mov [rbp + 40], ebx

 file_test$924:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$925:
	; Parameter 68 pointer "ftell %i\n"
	mov qword [rbp + 68], @11595$string_ftell2025i0A#

 file_test$926:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$927:
	; Parameter 100 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 100], rax

 file_test$928:
	; Call 76 ftell 0
	mov qword [rbp + 76], file_test$929
	mov [rbp + 84], rbp
	add rbp, 76
	jmp ftell

 file_test$929:
	; PostCall 76

 file_test$930:
	; GetReturnValue £temporary3852

 file_test$931:
	; Parameter 76 signedint £temporary3852
	mov [rbp + 76], ebx

 file_test$932:
	; Call 44 printf 4
	mov qword [rbp + 44], file_test$933
	mov [rbp + 52], rbp
	add rbp, 44
	mov rdi, rbp
	add rdi, 4
	jmp printf

 file_test$933:
	; PostCall 44

 file_test$934:
	; Assign index 0
	mov dword [rbp + 36], 0

 file_test$935:
	; SignedGreaterThanEqual 967 index size
	mov eax, [rbp + 40]
	cmp [rbp + 36], eax
	jge file_test$967

 file_test$936:
	; PreCall 44 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$937:
	; Parameter 68 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 file_test$938:
	; Call 44 fgetc 0
	mov qword [rbp + 44], file_test$939
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fgetc

 file_test$939:
	; PostCall 44

 file_test$940:
	; GetReturnValue £temporary3856

 file_test$941:
	; IntegralToIntegral £temporary3857 £temporary3856
	cmp ebx, 0
	jge file_test$942
	neg ebx
	neg bl

 file_test$942:
	; Assign c £temporary3857
	mov [rbp + 44], bl

 file_test$943:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$944:
	; Parameter 69 pointer "<%c> %i %i\n"
	mov qword [rbp + 69], @11600$string_3C25c3E2025i2025i0A#

 file_test$945:
	; IntegralToIntegral £temporary3858 c
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge file_test$946
	neg al
	neg eax

 file_test$946:
	; Parameter 77 signedint £temporary3858
	mov [rbp + 77], eax

 file_test$947:
	; IntegralToIntegral £temporary3859 c
	mov al, [rbp + 44]
	and eax, 255
	cmp al, 0
	jge file_test$948
	neg al
	neg eax

 file_test$948:
	; Parameter 81 signedint £temporary3859
	mov [rbp + 81], eax

 file_test$949:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$950:
	; Parameter 109 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 109], rax

 file_test$951:
	; Call 85 ftell 0
	mov qword [rbp + 85], file_test$952
	mov [rbp + 93], rbp
	add rbp, 85
	jmp ftell

 file_test$952:
	; PostCall 85

 file_test$953:
	; GetReturnValue £temporary3860

 file_test$954:
	; Parameter 85 signedint £temporary3860
	mov [rbp + 85], ebx

 file_test$955:
	; Call 45 printf 12
	mov qword [rbp + 45], file_test$956
	mov [rbp + 53], rbp
	add rbp, 45
	mov rdi, rbp
	add rdi, 12
	jmp printf

 file_test$956:
	; PostCall 45

 file_test$957:
	; PreCall 45 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$958:
	; Parameter 69 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 69], rax

 file_test$959:
	; BinarySubtract £temporary3862 size index
	mov eax, [rbp + 40]
	sub eax, [rbp + 36]

 file_test$960:
	; BinarySubtract £temporary3863 £temporary3862 1
	dec eax

 file_test$961:
	; Parameter 77 signedint £temporary3863
	mov [rbp + 77], eax

 file_test$962:
	; Parameter 81 signedint 0
	mov dword [rbp + 81], 0

 file_test$963:
	; Call 45 fseek 0
	mov qword [rbp + 45], file_test$964
	mov [rbp + 53], rbp
	add rbp, 45
	jmp fseek

 file_test$964:
	; PostCall 45

 file_test$965:
	; BinaryAdd index index 1
	inc dword [rbp + 36]

 file_test$966:
	; Jump 935
	jmp file_test$935

 file_test$967:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$968:
	; Parameter 64 pointer "\n"
	mov qword [rbp + 64], @11604$string_0A#

 file_test$969:
	; Call 40 printf 0
	mov qword [rbp + 40], file_test$970
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	jmp printf

 file_test$970:
	; PostCall 40

 file_test$971:
	; PreCall 40 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$972:
	; Parameter 64 pointer inFilePtr
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 file_test$973:
	; Call 40 fclose 0
	mov qword [rbp + 40], file_test$974
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fclose

 file_test$974:
	; PostCall 40

 file_test$975:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$976:
	; Parameter 48 pointer "fileexists "X": %s\n"
	mov qword [rbp + 48], @11605$string_fileexists2022X223A2025s0A#

 file_test$977:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$978:
	; Parameter 80 pointer "X"
	mov qword [rbp + 80], @11606$string_X#

 file_test$979:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$980
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$980:
	; PostCall 56

 file_test$981:
	; GetReturnValue £temporary3867

 file_test$982:
	; Equal 985 £temporary3867 0
	cmp ebx, 0
	je file_test$985

 file_test$983:
	; Assign £temporary3869 "Yes"
	mov eax, @11607$string_Yes#

 file_test$984:
	; Jump 986
	jmp file_test$986

 file_test$985:
	; Assign £temporary3869 "No"
	mov eax, @11608$string_No#

 file_test$986:
	; Parameter 56 pointer £temporary3869
	mov [rbp + 56], eax

 file_test$987:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$988
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$988:
	; PostCall 24

 file_test$989:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$990:
	; Parameter 48 pointer "fileexists "Y": %s\n"
	mov qword [rbp + 48], @11610$string_fileexists2022Y223A2025s0A#

 file_test$991:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$992:
	; Parameter 80 pointer "Y"
	mov qword [rbp + 80], @11611$string_Y#

 file_test$993:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$994
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$994:
	; PostCall 56

 file_test$995:
	; GetReturnValue £temporary3871

 file_test$996:
	; Equal 999 £temporary3871 0
	cmp ebx, 0
	je file_test$999

 file_test$997:
	; Assign £temporary3873 "Yes"
	mov eax, @11612$string_Yes#

 file_test$998:
	; Jump 1000
	jmp file_test$1000

 file_test$999:
	; Assign £temporary3873 "No"
	mov eax, @11613$string_No#

 file_test$1000:
	; Parameter 56 pointer £temporary3873
	mov [rbp + 56], eax

 file_test$1001:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1002
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1002:
	; PostCall 24

 file_test$1003:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1004:
	; Parameter 48 pointer "fileexists "Main.asm": %s\n"
	mov qword [rbp + 48], @11615$string_fileexists2022Main2Easm223A2025s0A#

 file_test$1005:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1006:
	; Parameter 80 pointer "Main.asm"
	mov qword [rbp + 80], @11616$string_Main2Easm#

 file_test$1007:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1008
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1008:
	; PostCall 56

 file_test$1009:
	; GetReturnValue £temporary3875

 file_test$1010:
	; Equal 1013 £temporary3875 0
	cmp ebx, 0
	je file_test$1013

 file_test$1011:
	; Assign £temporary3877 "Yes"
	mov eax, @11617$string_Yes#

 file_test$1012:
	; Jump 1014
	jmp file_test$1014

 file_test$1013:
	; Assign £temporary3877 "No"
	mov eax, @11618$string_No#

 file_test$1014:
	; Parameter 56 pointer £temporary3877
	mov [rbp + 56], eax

 file_test$1015:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1016
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1016:
	; PostCall 24

 file_test$1017:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1018:
	; Parameter 48 pointer "fileexists "MainX.asm": %s\n"
	mov qword [rbp + 48], @11620$string_fileexists2022MainX2Easm223A2025s0A#

 file_test$1019:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1020:
	; Parameter 80 pointer "MainX.asm"
	mov qword [rbp + 80], @11621$string_MainX2Easm#

 file_test$1021:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1022
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1022:
	; PostCall 56

 file_test$1023:
	; GetReturnValue £temporary3879

 file_test$1024:
	; Equal 1027 £temporary3879 0
	cmp ebx, 0
	je file_test$1027

 file_test$1025:
	; Assign £temporary3881 "Yes"
	mov eax, @11622$string_Yes#

 file_test$1026:
	; Jump 1028
	jmp file_test$1028

 file_test$1027:
	; Assign £temporary3881 "No"
	mov eax, @11623$string_No#

 file_test$1028:
	; Parameter 56 pointer £temporary3881
	mov [rbp + 56], eax

 file_test$1029:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1030
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1030:
	; PostCall 24

 file_test$1031:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1032:
	; Parameter 48 pointer "fileexists "Main.c": %s\n"
	mov qword [rbp + 48], @11625$string_fileexists2022Main2Ec223A2025s0A#

 file_test$1033:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1034:
	; Parameter 80 pointer "Main.c"
	mov qword [rbp + 80], @11626$string_Main2Ec#

 file_test$1035:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1036
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1036:
	; PostCall 56

 file_test$1037:
	; GetReturnValue £temporary3883

 file_test$1038:
	; Equal 1041 £temporary3883 0
	cmp ebx, 0
	je file_test$1041

 file_test$1039:
	; Assign £temporary3885 "Yes"
	mov eax, @11627$string_Yes#

 file_test$1040:
	; Jump 1042
	jmp file_test$1042

 file_test$1041:
	; Assign £temporary3885 "No"
	mov eax, @11628$string_No#

 file_test$1042:
	; Parameter 56 pointer £temporary3885
	mov [rbp + 56], eax

 file_test$1043:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1044
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1044:
	; PostCall 24

 file_test$1045:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1046:
	; Parameter 48 pointer "fileexists "MainX.c": %s\n"
	mov qword [rbp + 48], @11630$string_fileexists2022MainX2Ec223A2025s0A#

 file_test$1047:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1048:
	; Parameter 80 pointer "MainX.c"
	mov qword [rbp + 80], @11631$string_MainX2Ec#

 file_test$1049:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1050
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1050:
	; PostCall 56

 file_test$1051:
	; GetReturnValue £temporary3887

 file_test$1052:
	; Equal 1055 £temporary3887 0
	cmp ebx, 0
	je file_test$1055

 file_test$1053:
	; Assign £temporary3889 "Yes"
	mov eax, @11632$string_Yes#

 file_test$1054:
	; Jump 1056
	jmp file_test$1056

 file_test$1055:
	; Assign £temporary3889 "No"
	mov eax, @11633$string_No#

 file_test$1056:
	; Parameter 56 pointer £temporary3889
	mov [rbp + 56], eax

 file_test$1057:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1058
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1058:
	; PostCall 24

 file_test$1059:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1060:
	; Parameter 48 pointer "fileexists "File.c": %s\n"
	mov qword [rbp + 48], @11635$string_fileexists2022File2Ec223A2025s0A#

 file_test$1061:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1062:
	; Parameter 80 pointer "File.c"
	mov qword [rbp + 80], @11636$string_File2Ec#

 file_test$1063:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1064
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1064:
	; PostCall 56

 file_test$1065:
	; GetReturnValue £temporary3891

 file_test$1066:
	; Equal 1069 £temporary3891 0
	cmp ebx, 0
	je file_test$1069

 file_test$1067:
	; Assign £temporary3893 "Yes"
	mov eax, @11637$string_Yes#

 file_test$1068:
	; Jump 1070
	jmp file_test$1070

 file_test$1069:
	; Assign £temporary3893 "No"
	mov eax, @11638$string_No#

 file_test$1070:
	; Parameter 56 pointer £temporary3893
	mov [rbp + 56], eax

 file_test$1071:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1072
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1072:
	; PostCall 24

 file_test$1073:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1074:
	; Parameter 48 pointer "fileexists "File.x": %s\n"
	mov qword [rbp + 48], @11640$string_fileexists2022File2Ex223A2025s0A#

 file_test$1075:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1076:
	; Parameter 80 pointer "File.x"
	mov qword [rbp + 80], @11641$string_File2Ex#

 file_test$1077:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1078
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1078:
	; PostCall 56

 file_test$1079:
	; GetReturnValue £temporary3895

 file_test$1080:
	; Equal 1083 £temporary3895 0
	cmp ebx, 0
	je file_test$1083

 file_test$1081:
	; Assign £temporary3897 "Yes"
	mov eax, @11642$string_Yes#

 file_test$1082:
	; Jump 1084
	jmp file_test$1084

 file_test$1083:
	; Assign £temporary3897 "No"
	mov eax, @11643$string_No#

 file_test$1084:
	; Parameter 56 pointer £temporary3897
	mov [rbp + 56], eax

 file_test$1085:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1086
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1086:
	; PostCall 24

 file_test$1087:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1088:
	; Parameter 48 pointer "fileexists "File.h": %s\n"
	mov qword [rbp + 48], @11645$string_fileexists2022File2Eh223A2025s0A#

 file_test$1089:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1090:
	; Parameter 80 pointer "File.h"
	mov qword [rbp + 80], @11646$string_File2Eh#

 file_test$1091:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1092
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1092:
	; PostCall 56

 file_test$1093:
	; GetReturnValue £temporary3899

 file_test$1094:
	; Equal 1097 £temporary3899 0
	cmp ebx, 0
	je file_test$1097

 file_test$1095:
	; Assign £temporary3901 "Yes"
	mov eax, @11647$string_Yes#

 file_test$1096:
	; Jump 1098
	jmp file_test$1098

 file_test$1097:
	; Assign £temporary3901 "No"
	mov eax, @11648$string_No#

 file_test$1098:
	; Parameter 56 pointer £temporary3901
	mov [rbp + 56], eax

 file_test$1099:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1100
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1100:
	; PostCall 24

 file_test$1101:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1102:
	; Parameter 48 pointer "fileexists "File.y": %s\n"
	mov qword [rbp + 48], @11650$string_fileexists2022File2Ey223A2025s0A#

 file_test$1103:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1104:
	; Parameter 80 pointer "File.y"
	mov qword [rbp + 80], @11651$string_File2Ey#

 file_test$1105:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1106
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1106:
	; PostCall 56

 file_test$1107:
	; GetReturnValue £temporary3903

 file_test$1108:
	; Equal 1111 £temporary3903 0
	cmp ebx, 0
	je file_test$1111

 file_test$1109:
	; Assign £temporary3905 "Yes"
	mov eax, @11652$string_Yes#

 file_test$1110:
	; Jump 1112
	jmp file_test$1112

 file_test$1111:
	; Assign £temporary3905 "No"
	mov eax, @11653$string_No#

 file_test$1112:
	; Parameter 56 pointer £temporary3905
	mov [rbp + 56], eax

 file_test$1113:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1114
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1114:
	; PostCall 24

 file_test$1115:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1116:
	; Parameter 48 pointer "fileexists "File.p": %s\n"
	mov qword [rbp + 48], @11655$string_fileexists2022File2Ep223A2025s0A#

 file_test$1117:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1118:
	; Parameter 80 pointer "File.p"
	mov qword [rbp + 80], @11656$string_File2Ep#

 file_test$1119:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1120
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1120:
	; PostCall 56

 file_test$1121:
	; GetReturnValue £temporary3907

 file_test$1122:
	; Equal 1125 £temporary3907 0
	cmp ebx, 0
	je file_test$1125

 file_test$1123:
	; Assign £temporary3909 "Yes"
	mov eax, @11657$string_Yes#

 file_test$1124:
	; Jump 1126
	jmp file_test$1126

 file_test$1125:
	; Assign £temporary3909 "No"
	mov eax, @11658$string_No#

 file_test$1126:
	; Parameter 56 pointer £temporary3909
	mov [rbp + 56], eax

 file_test$1127:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1128
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1128:
	; PostCall 24

 file_test$1129:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1130:
	; Parameter 48 pointer "fileexists "File.z": %s\n"
	mov qword [rbp + 48], @11660$string_fileexists2022File2Ez223A2025s0A#

 file_test$1131:
	; PreCall 24 System.Collections.Generic.HashSet`1[CCompiler.Symbol] 0

 file_test$1132:
	; Parameter 80 pointer "File.z"
	mov qword [rbp + 80], @11661$string_File2Ez#

 file_test$1133:
	; Call 56 fileexists 0
	mov qword [rbp + 56], file_test$1134
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fileexists

 file_test$1134:
	; PostCall 56

 file_test$1135:
	; GetReturnValue £temporary3911

 file_test$1136:
	; Equal 1139 £temporary3911 0
	cmp ebx, 0
	je file_test$1139

 file_test$1137:
	; Assign £temporary3913 "Yes"
	mov eax, @11662$string_Yes#

 file_test$1138:
	; Jump 1140
	jmp file_test$1140

 file_test$1139:
	; Assign £temporary3913 "No"
	mov eax, @11663$string_No#

 file_test$1140:
	; Parameter 56 pointer £temporary3913
	mov [rbp + 56], eax

 file_test$1141:
	; Call 24 printf 8
	mov qword [rbp + 24], file_test$1142
	mov [rbp + 32], rbp
	add rbp, 24
	mov rdi, rbp
	add rdi, 8
	jmp printf

 file_test$1142:
	; PostCall 24

 file_test$1143:
	; Return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 file_test$1144:
	; FunctionEnd file_test
