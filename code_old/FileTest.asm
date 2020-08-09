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
section .text

file_test:	; call header integral zero 0 stack zero 0

file_test$1:	; parameter inFilePtrName, offset 64
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

file_test$2:	; parameter string_r#, offset 72
	mov qword [rbp + 72], string_r#

file_test$3:	; call function noellipse-noellipse fopen
	mov qword [rbp + 40], file_test$4
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

file_test$4:	; post call

file_test$5:	; £temporary3444 = return_value

file_test$6:	; inFilePtrPtr = £temporary3444
	mov [rbp + 40], rbx

file_test$7:	; if inFilePtrPtr != int8$0# goto 19
	cmp qword [rbp + 40], 0
	jne file_test$19

file_test$8:	; call header integral zero 0 stack zero 0

file_test$9:	; parameter stderr, offset 72
	mov rax, [stderr]
	mov [rbp + 72], rax

file_test$10:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 80
	mov qword [rbp + 80], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

file_test$11:	; parameter string_inFilePtrPtr20213D20NULL#, offset 88
	mov qword [rbp + 88], string_inFilePtrPtr20213D20NULL#

file_test$12:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#, offset 96
	mov qword [rbp + 96], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

file_test$13:	; parameter int4$10#, offset 104
	mov dword [rbp + 104], 10

file_test$14:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 48], file_test$15
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

file_test$15:	; post call

file_test$16:	; call header integral zero 0 stack zero 0

file_test$17:	; call function noellipse-noellipse abort
	mov qword [rbp + 48], file_test$18
	mov [rbp + 56], rbp
	add rbp, 48
	jmp abort

file_test$18:	; post call

file_test$19:	; call header integral zero 0 stack zero 0

file_test$20:	; parameter outFilePtrName, offset 72
	mov rax, [rbp + 32]
	mov [rbp + 72], rax

file_test$21:	; parameter string_w#, offset 80
	mov qword [rbp + 80], string_w#

file_test$22:	; call function noellipse-noellipse fopen
	mov qword [rbp + 48], file_test$23
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fopen

file_test$23:	; post call

file_test$24:	; £temporary3449 = return_value

file_test$25:	; outFilePtrPtr = £temporary3449
	mov [rbp + 48], rbx

file_test$26:	; if outFilePtrPtr != int8$0# goto 38
	cmp qword [rbp + 48], 0
	jne file_test$38

file_test$27:	; call header integral zero 0 stack zero 0

file_test$28:	; parameter stderr, offset 80
	mov rax, [stderr]
	mov [rbp + 80], rax

file_test$29:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 88
	mov qword [rbp + 88], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

file_test$30:	; parameter string_outFilePtrPtr20213D20NULL#, offset 96
	mov qword [rbp + 96], string_outFilePtrPtr20213D20NULL#

file_test$31:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#, offset 104
	mov qword [rbp + 104], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

file_test$32:	; parameter int4$12#, offset 112
	mov dword [rbp + 112], 12

file_test$33:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 56], file_test$34
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

file_test$34:	; post call

file_test$35:	; call header integral zero 0 stack zero 0

file_test$36:	; call function noellipse-noellipse abort
	mov qword [rbp + 56], file_test$37
	mov [rbp + 64], rbp
	add rbp, 56
	jmp abort

file_test$37:	; post call

file_test$38:	; size = int4$0#
	mov dword [rbp + 56], 0

file_test$39:	; call header integral zero 0 stack zero 0

file_test$40:	; parameter inFilePtrPtr, offset 88
	mov rax, [rbp + 40]
	mov [rbp + 88], rax

file_test$41:	; parameter string_25i#, offset 96
	mov qword [rbp + 96], string_25i#

file_test$42:	; £temporary3454 = &size
	mov rsi, rbp
	add rsi, 56

file_test$43:	; parameter £temporary3454, offset 104
	mov [rbp + 104], rsi

file_test$44:	; call function noellipse-ellipse fscanf, extra 8
	mov qword [rbp + 64], file_test$45
	mov [rbp + 72], rbp
	add rbp, 64
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

file_test$45:	; post call

file_test$46:	; index = int4$0#
	mov dword [rbp + 60], 0

file_test$47:	; if index >= size goto 73
	mov eax, [rbp + 56]
	cmp [rbp + 60], eax
	jge file_test$73

file_test$48:	; push float float8$0#
	fldz 

file_test$49:	; pop float inValue
	fstp qword [rbp + 64]

file_test$50:	; call header integral zero 0 stack zero 0

file_test$51:	; parameter inFilePtrPtr, offset 96
	mov rax, [rbp + 40]
	mov [rbp + 96], rax

file_test$52:	; parameter string_25lf#, offset 104
	mov qword [rbp + 104], string_25lf#

file_test$53:	; £temporary3458 = &inValue
	mov rsi, rbp
	add rsi, 64

file_test$54:	; parameter £temporary3458, offset 112
	mov [rbp + 112], rsi

file_test$55:	; call function noellipse-ellipse fscanf, extra 8
	mov qword [rbp + 72], file_test$56
	mov [rbp + 80], rbp
	add rbp, 72
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

file_test$56:	; post call

file_test$57:	; call header integral zero 0 stack zero 0

file_test$58:	; push float inValue
	fld qword [rbp + 64]

file_test$59:	; parameter £temporary3460, offset 96
	fstp qword [rbp + 96]

file_test$60:	; call function noellipse-noellipse sqrt
	mov qword [rbp + 72], file_test$61
	mov [rbp + 80], rbp
	add rbp, 72
	jmp sqrt

file_test$61:	; post call

file_test$62:	; £temporary3461 = return_value

file_test$63:	; pop float outValue
	fstp qword [rbp + 72]

file_test$64:	; call header integral zero 0 stack zero 0

file_test$65:	; parameter outFilePtrPtr, offset 104
	mov rax, [rbp + 48]
	mov [rbp + 104], rax

file_test$66:	; parameter string_25f0A#, offset 112
	mov qword [rbp + 112], string_25f0A#

file_test$67:	; push float outValue
	fld qword [rbp + 72]

file_test$68:	; parameter outValue, offset 120
	fstp qword [rbp + 120]

file_test$69:	; call function noellipse-ellipse fprintf, extra 8
	mov qword [rbp + 80], file_test$70
	mov [rbp + 88], rbp
	add rbp, 80
	mov rdi, rbp
	add rdi, 8
	jmp fprintf

file_test$70:	; post call

file_test$71:	; index = index + int4$1#
	inc dword [rbp + 60]

file_test$72:	; goto 47
	jmp file_test$47

file_test$73:	; call header integral zero 0 stack zero 0

file_test$74:	; parameter inFilePtrPtr, offset 88
	mov rax, [rbp + 40]
	mov [rbp + 88], rax

file_test$75:	; call function noellipse-noellipse fclose
	mov qword [rbp + 64], file_test$76
	mov [rbp + 72], rbp
	add rbp, 64
	jmp fclose

file_test$76:	; post call

file_test$77:	; call header integral zero 0 stack zero 0

file_test$78:	; parameter outFilePtrPtr, offset 88
	mov rax, [rbp + 48]
	mov [rbp + 88], rax

file_test$79:	; call function noellipse-noellipse fclose
	mov qword [rbp + 64], file_test$80
	mov [rbp + 72], rbp
	add rbp, 64
	jmp fclose

file_test$80:	; post call

file_test$81:	; sourceFilePtr = string_X#
	mov qword [rbp + 40], string_X#

file_test$82:	; targetFilePtr = string_Y#
	mov qword [rbp + 48], string_Y#

file_test$83:	; call header integral zero 0 stack zero 0

file_test$84:	; parameter sourceFilePtr, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

file_test$85:	; parameter targetFilePtr, offset 88
	mov rax, [rbp + 48]
	mov [rbp + 88], rax

file_test$86:	; call function noellipse-noellipse rename
	mov qword [rbp + 56], file_test$87
	mov [rbp + 64], rbp
	add rbp, 56
	jmp rename

file_test$87:	; post call

file_test$88:	; £temporary3465 = return_value

file_test$89:	; if £temporary3465 != int4$0# goto 97
	cmp ebx, 0
	jne file_test$97

file_test$90:	; call header integral zero 0 stack zero 0

file_test$91:	; parameter string_2225s2220has20been20renamed20to202225s222E0A#, offset 80
	mov qword [rbp + 80], string_2225s2220has20been20renamed20to202225s222E0A#

file_test$92:	; parameter sourceFilePtr, offset 88
	mov rax, [rbp + 40]
	mov [rbp + 88], rax

file_test$93:	; parameter targetFilePtr, offset 96
	mov rax, [rbp + 48]
	mov [rbp + 96], rax

file_test$94:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 56], file_test$95
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 16
	jmp printf

file_test$95:	; post call

file_test$96:	; goto 108
	jmp file_test$108

file_test$97:	; call header integral zero 0 stack zero 0

file_test$98:	; parameter string_Error2025i3A2025s2E0A#, offset 80
	mov qword [rbp + 80], string_Error2025i3A2025s2E0A#

file_test$99:	; parameter errno, offset 88
	mov eax, [errno]
	mov [rbp + 88], eax

file_test$100:	; call header integral zero 0 stack zero 0

file_test$101:	; parameter errno, offset 116
	mov eax, [errno]
	mov [rbp + 116], eax

file_test$102:	; call function noellipse-noellipse strerror
	mov qword [rbp + 92], file_test$103
	mov [rbp + 100], rbp
	add rbp, 92
	jmp strerror

file_test$103:	; post call

file_test$104:	; £temporary3468 = return_value

file_test$105:	; parameter £temporary3468, offset 92
	mov [rbp + 92], rbx

file_test$106:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 56], file_test$107
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 12
	jmp printf

file_test$107:	; post call

file_test$108:	; targetFilePtr = string_Z#
	mov qword [rbp + 40], string_Z#

file_test$109:	; call header integral zero 0 stack zero 0

file_test$110:	; parameter targetFilePtr, offset 72
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

file_test$111:	; call function noellipse-noellipse remove
	mov qword [rbp + 48], file_test$112
	mov [rbp + 56], rbp
	add rbp, 48
	jmp remove

file_test$112:	; post call

file_test$113:	; £temporary3470 = return_value

file_test$114:	; if £temporary3470 != int4$0# goto 121
	cmp ebx, 0
	jne file_test$121

file_test$115:	; call header integral zero 0 stack zero 0

file_test$116:	; parameter string_2225s2220has20been20removed2E0A#, offset 72
	mov qword [rbp + 72], string_2225s2220has20been20removed2E0A#

file_test$117:	; parameter targetFilePtr, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

file_test$118:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 48], file_test$119
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 8
	jmp printf

file_test$119:	; post call

file_test$120:	; goto 132
	jmp file_test$132

file_test$121:	; call header integral zero 0 stack zero 0

file_test$122:	; parameter string_Error2025i3A2025s2E0A#, offset 72
	mov qword [rbp + 72], string_Error2025i3A2025s2E0A#

file_test$123:	; parameter errno, offset 80
	mov eax, [errno]
	mov [rbp + 80], eax

file_test$124:	; call header integral zero 0 stack zero 0

file_test$125:	; parameter errno, offset 108
	mov eax, [errno]
	mov [rbp + 108], eax

file_test$126:	; call function noellipse-noellipse strerror
	mov qword [rbp + 84], file_test$127
	mov [rbp + 92], rbp
	add rbp, 84
	jmp strerror

file_test$127:	; post call

file_test$128:	; £temporary3473 = return_value

file_test$129:	; parameter £temporary3473, offset 84
	mov [rbp + 84], rbx

file_test$130:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 48], file_test$131
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 12
	jmp printf

file_test$131:	; post call

file_test$132:	; call header integral zero 0 stack zero 0

file_test$133:	; parameter string_PBook2Etxt#, offset 64
	mov qword [rbp + 64], string_PBook2Etxt#

file_test$134:	; parameter string_r#, offset 72
	mov qword [rbp + 72], string_r#

file_test$135:	; call function noellipse-noellipse fopen
	mov qword [rbp + 40], file_test$136
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

file_test$136:	; post call

file_test$137:	; £temporary3475 = return_value

file_test$138:	; inFilePtr = £temporary3475
	mov [rbp + 40], rbx

file_test$139:	; if inFilePtr != int8$0# goto 151
	cmp qword [rbp + 40], 0
	jne file_test$151

file_test$140:	; call header integral zero 0 stack zero 0

file_test$141:	; parameter stderr, offset 72
	mov rax, [stderr]
	mov [rbp + 72], rax

file_test$142:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 80
	mov qword [rbp + 80], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

file_test$143:	; parameter string_inFilePtr20213D20NULL#, offset 88
	mov qword [rbp + 88], string_inFilePtr20213D20NULL#

file_test$144:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#, offset 96
	mov qword [rbp + 96], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

file_test$145:	; parameter int4$50#, offset 104
	mov dword [rbp + 104], 50

file_test$146:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 48], file_test$147
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

file_test$147:	; post call

file_test$148:	; call header integral zero 0 stack zero 0

file_test$149:	; call function noellipse-noellipse abort
	mov qword [rbp + 48], file_test$150
	mov [rbp + 56], rbp
	add rbp, 48
	jmp abort

file_test$150:	; post call

file_test$151:	; call header integral zero 0 stack zero 0

file_test$152:	; parameter string_0A252D24s20252D24s0A#, offset 72
	mov qword [rbp + 72], string_0A252D24s20252D24s0A#

file_test$153:	; parameter string_Name#, offset 80
	mov qword [rbp + 80], string_Name#

file_test$154:	; parameter string_Phone#, offset 88
	mov qword [rbp + 88], string_Phone#

file_test$155:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 48], file_test$156
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

file_test$156:	; post call

file_test$157:	; call header integral zero 0 stack zero 0

file_test$158:	; parameter string_252D24s20252D24s0A#, offset 72
	mov qword [rbp + 72], string_252D24s20252D24s0A#

file_test$159:	; parameter string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#, offset 80
	mov qword [rbp + 80], string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#

file_test$160:	; parameter string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#, offset 88
	mov qword [rbp + 88], string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#

file_test$161:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 48], file_test$162
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 16
	jmp printf

file_test$162:	; post call

file_test$163:	; call header integral zero 0 stack zero 0

file_test$164:	; parameter inFilePtr, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

file_test$165:	; parameter string_25i#, offset 88
	mov qword [rbp + 88], string_25i#

file_test$166:	; £temporary3482 = &size
	mov rsi, rbp
	add rsi, 52

file_test$167:	; parameter £temporary3482, offset 96
	mov [rbp + 96], rsi

file_test$168:	; call function noellipse-ellipse fscanf, extra 8
	mov qword [rbp + 56], file_test$169
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

file_test$169:	; post call

file_test$170:	; count = int4$0#
	mov dword [rbp + 48], 0

file_test$171:	; if count >= size goto 187
	mov eax, [rbp + 52]
	cmp [rbp + 48], eax
	jge file_test$187

file_test$172:	; call header integral zero 0 stack zero 0

file_test$173:	; parameter inFilePtr, offset 120
	mov rax, [rbp + 40]
	mov [rbp + 120], rax

file_test$174:	; parameter string_25s25s#, offset 128
	mov qword [rbp + 128], string_25s25s#

file_test$175:	; parameter name, offset 136
	mov [rbp + 136], rbp
	add qword [rbp + 136], 56

file_test$176:	; parameter phone, offset 144
	mov [rbp + 144], rbp
	add qword [rbp + 144], 76

file_test$177:	; call function noellipse-ellipse fscanf, extra 16
	mov qword [rbp + 96], file_test$178
	mov [rbp + 104], rbp
	add rbp, 96
	mov rdi, rbp
	add rdi, 16
	jmp fscanf

file_test$178:	; post call

file_test$179:	; call header integral zero 0 stack zero 0

file_test$180:	; parameter string_252D24s20252D24s0A#, offset 120
	mov qword [rbp + 120], string_252D24s20252D24s0A#

file_test$181:	; parameter name, offset 128
	mov [rbp + 128], rbp
	add qword [rbp + 128], 56

file_test$182:	; parameter phone, offset 136
	mov [rbp + 136], rbp
	add qword [rbp + 136], 76

file_test$183:	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 96], file_test$184
	mov [rbp + 104], rbp
	add rbp, 96
	mov rdi, rbp
	add rdi, 16
	jmp printf

file_test$184:	; post call

file_test$185:	; count = count + int4$1#
	inc dword [rbp + 48]

file_test$186:	; goto 171
	jmp file_test$171

file_test$187:	; call header integral zero 0 stack zero 0

file_test$188:	; parameter string_0A#, offset 80
	mov qword [rbp + 80], string_0A#

file_test$189:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 56], file_test$190
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	jmp printf

file_test$190:	; post call

file_test$191:	; call header integral zero 0 stack zero 0

file_test$192:	; parameter inFilePtr, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

file_test$193:	; call function noellipse-noellipse fclose
	mov qword [rbp + 56], file_test$194
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fclose

file_test$194:	; post call

file_test$195:	; sourceFilePtr = string_Flow12Etxt#
	mov qword [rbp + 40], string_Flow12Etxt#

file_test$196:	; targetFilePtr = string_Flow22Etxt#
	mov qword [rbp + 48], string_Flow22Etxt#

file_test$197:	; call header integral zero 0 stack zero 0

file_test$198:	; parameter sourceFilePtr, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

file_test$199:	; parameter string_r#, offset 88
	mov qword [rbp + 88], string_r#

file_test$200:	; call function noellipse-noellipse fopen
	mov qword [rbp + 56], file_test$201
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fopen

file_test$201:	; post call

file_test$202:	; £temporary3490 = return_value

file_test$203:	; inFilePtr = £temporary3490
	mov [rbp + 56], rbx

file_test$204:	; if inFilePtr != int8$0# goto 216
	cmp qword [rbp + 56], 0
	jne file_test$216

file_test$205:	; call header integral zero 0 stack zero 0

file_test$206:	; parameter stderr, offset 88
	mov rax, [stderr]
	mov [rbp + 88], rax

file_test$207:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 96
	mov qword [rbp + 96], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

file_test$208:	; parameter string_inFilePtr20213D20NULL#, offset 104
	mov qword [rbp + 104], string_inFilePtr20213D20NULL#

file_test$209:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#, offset 112
	mov qword [rbp + 112], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

file_test$210:	; parameter int4$76#, offset 120
	mov dword [rbp + 120], 76

file_test$211:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 64], file_test$212
	mov [rbp + 72], rbp
	add rbp, 64
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

file_test$212:	; post call

file_test$213:	; call header integral zero 0 stack zero 0

file_test$214:	; call function noellipse-noellipse abort
	mov qword [rbp + 64], file_test$215
	mov [rbp + 72], rbp
	add rbp, 64
	jmp abort

file_test$215:	; post call

file_test$216:	; call header integral zero 0 stack zero 0

file_test$217:	; parameter targetFilePtr, offset 88
	mov rax, [rbp + 48]
	mov [rbp + 88], rax

file_test$218:	; parameter string_w#, offset 96
	mov qword [rbp + 96], string_w#

file_test$219:	; call function noellipse-noellipse fopen
	mov qword [rbp + 64], file_test$220
	mov [rbp + 72], rbp
	add rbp, 64
	jmp fopen

file_test$220:	; post call

file_test$221:	; £temporary3495 = return_value

file_test$222:	; outFilePtr = £temporary3495
	mov [rbp + 64], rbx

file_test$223:	; if outFilePtr != int8$0# goto 235
	cmp qword [rbp + 64], 0
	jne file_test$235

file_test$224:	; call header integral zero 0 stack zero 0

file_test$225:	; parameter stderr, offset 96
	mov rax, [stderr]
	mov [rbp + 96], rax

file_test$226:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 104
	mov qword [rbp + 104], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

file_test$227:	; parameter string_outFilePtr20213D20NULL#, offset 112
	mov qword [rbp + 112], string_outFilePtr20213D20NULL#

file_test$228:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#, offset 120
	mov qword [rbp + 120], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

file_test$229:	; parameter int4$79#, offset 128
	mov dword [rbp + 128], 79

file_test$230:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 72], file_test$231
	mov [rbp + 80], rbp
	add rbp, 72
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

file_test$231:	; post call

file_test$232:	; call header integral zero 0 stack zero 0

file_test$233:	; call function noellipse-noellipse abort
	mov qword [rbp + 72], file_test$234
	mov [rbp + 80], rbp
	add rbp, 72
	jmp abort

file_test$234:	; post call

file_test$235:	; call header integral zero 0 stack zero 0

file_test$236:	; parameter inFilePtr, offset 96
	mov rax, [rbp + 56]
	mov [rbp + 96], rax

file_test$237:	; call function noellipse-noellipse fgetc
	mov qword [rbp + 72], file_test$238
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fgetc

file_test$238:	; post call

file_test$239:	; £temporary3500 = return_value

file_test$240:	; £temporary3501 = int_to_int £temporary3500 (Signed_Int -> Signed_Char)
	cmp ebx, 0
	jge file_test$241
	neg ebx
	neg bl

file_test$241:	; c = £temporary3501
	mov [rbp + 72], bl

file_test$242:	; £temporary3502 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 72]
	and eax, 255
	cmp al, 0
	jge file_test$243
	neg al
	neg eax

file_test$243:	; if £temporary3502 == int4$minus1# goto 257
	cmp eax, -1
	je file_test$257

file_test$244:	; call header integral zero 0 stack zero 0

file_test$245:	; £temporary3504 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 72]
	and eax, 255
	cmp al, 0
	jge file_test$246
	neg al
	neg eax

file_test$246:	; parameter £temporary3504, offset 97
	mov [rbp + 97], eax

file_test$247:	; parameter outFilePtr, offset 101
	mov rax, [rbp + 64]
	mov [rbp + 101], rax

file_test$248:	; call function noellipse-noellipse putc
	mov qword [rbp + 73], file_test$249
	mov [rbp + 81], rbp
	add rbp, 73
	jmp putc

file_test$249:	; post call

file_test$250:	; if c != int1$10# goto 235
	cmp byte [rbp + 72], 10
	jne file_test$235

file_test$251:	; call header integral zero 0 stack zero 0

file_test$252:	; parameter int4$10#, offset 97
	mov dword [rbp + 97], 10

file_test$253:	; parameter outFilePtr, offset 101
	mov rax, [rbp + 64]
	mov [rbp + 101], rax

file_test$254:	; call function noellipse-noellipse putc
	mov qword [rbp + 73], file_test$255
	mov [rbp + 81], rbp
	add rbp, 73
	jmp putc

file_test$255:	; post call

file_test$256:	; goto 235
	jmp file_test$235

file_test$257:	; call header integral zero 0 stack zero 0

file_test$258:	; parameter inFilePtr, offset 96
	mov rax, [rbp + 56]
	mov [rbp + 96], rax

file_test$259:	; call function noellipse-noellipse fclose
	mov qword [rbp + 72], file_test$260
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fclose

file_test$260:	; post call

file_test$261:	; call header integral zero 0 stack zero 0

file_test$262:	; parameter outFilePtr, offset 96
	mov rax, [rbp + 64]
	mov [rbp + 96], rax

file_test$263:	; call function noellipse-noellipse fclose
	mov qword [rbp + 72], file_test$264
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fclose

file_test$264:	; post call

file_test$265:	; call header integral zero 0 stack zero 0

file_test$266:	; parameter string_Test2Ebin#, offset 64
	mov qword [rbp + 64], string_Test2Ebin#

file_test$267:	; parameter string_w#, offset 72
	mov qword [rbp + 72], string_w#

file_test$268:	; call function noellipse-noellipse fopen
	mov qword [rbp + 40], file_test$269
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

file_test$269:	; post call

file_test$270:	; £temporary3511 = return_value

file_test$271:	; outFilePtr = £temporary3511
	mov [rbp + 40], rbx

file_test$272:	; if outFilePtr != int8$0# goto 284
	cmp qword [rbp + 40], 0
	jne file_test$284

file_test$273:	; call header integral zero 0 stack zero 0

file_test$274:	; parameter stderr, offset 72
	mov rax, [stderr]
	mov [rbp + 72], rax

file_test$275:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 80
	mov qword [rbp + 80], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

file_test$276:	; parameter string_outFilePtr20213D20NULL#, offset 88
	mov qword [rbp + 88], string_outFilePtr20213D20NULL#

file_test$277:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#, offset 96
	mov qword [rbp + 96], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

file_test$278:	; parameter int4$100#, offset 104
	mov dword [rbp + 104], 100

file_test$279:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 48], file_test$280
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

file_test$280:	; post call

file_test$281:	; call header integral zero 0 stack zero 0

file_test$282:	; call function noellipse-noellipse abort
	mov qword [rbp + 48], file_test$283
	mov [rbp + 56], rbp
	add rbp, 48
	jmp abort

file_test$283:	; post call

file_test$284:	; size = int4$10#
	mov dword [rbp + 48], 10

file_test$285:	; call header integral zero 0 stack zero 0

file_test$286:	; £temporary3516 = &size
	mov rsi, rbp
	add rsi, 48

file_test$287:	; parameter £temporary3516, offset 76
	mov [rbp + 76], rsi

file_test$288:	; parameter int4$4#, offset 84
	mov dword [rbp + 84], 4

file_test$289:	; parameter int4$1#, offset 88
	mov dword [rbp + 88], 1

file_test$290:	; parameter outFilePtr, offset 92
	mov rax, [rbp + 40]
	mov [rbp + 92], rax

file_test$291:	; call function noellipse-noellipse fwrite
	mov qword [rbp + 52], file_test$292
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fwrite

file_test$292:	; post call

file_test$293:	; index = int4$0#
	mov dword [rbp + 52], 0

file_test$294:	; if index >= size goto 308
	mov eax, [rbp + 48]
	cmp [rbp + 52], eax
	jge file_test$308

file_test$295:	; £temporary3520 = index * index
	mov eax, [rbp + 52]
	xor edx, edx
	imul dword [rbp + 52]

file_test$296:	; £temporary3521 = int_to_float £temporary3520 (Signed_Int -> Double)
	mov [$IntegralStorage#], eax
	fild word [$IntegralStorage#]

file_test$297:	; pop float value
	fstp qword [rbp + 56]

file_test$298:	; call header integral zero 0 stack zero 0

file_test$299:	; £temporary3522 = &value
	mov rsi, rbp
	add rsi, 56

file_test$300:	; parameter £temporary3522, offset 88
	mov [rbp + 88], rsi

file_test$301:	; parameter int4$8#, offset 96
	mov dword [rbp + 96], 8

file_test$302:	; parameter int4$1#, offset 100
	mov dword [rbp + 100], 1

file_test$303:	; parameter outFilePtr, offset 104
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

file_test$304:	; call function noellipse-noellipse fwrite
	mov qword [rbp + 64], file_test$305
	mov [rbp + 72], rbp
	add rbp, 64
	jmp fwrite

file_test$305:	; post call

file_test$306:	; index = index + int4$1#
	inc dword [rbp + 52]

file_test$307:	; goto 294
	jmp file_test$294

file_test$308:	; call header integral zero 0 stack zero 0

file_test$309:	; parameter outFilePtr, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

file_test$310:	; call function noellipse-noellipse fclose
	mov qword [rbp + 56], file_test$311
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fclose

file_test$311:	; post call

file_test$312:	; call header integral zero 0 stack zero 0

file_test$313:	; parameter string_Test2Ebin#, offset 64
	mov qword [rbp + 64], string_Test2Ebin#

file_test$314:	; parameter string_r#, offset 72
	mov qword [rbp + 72], string_r#

file_test$315:	; call function noellipse-noellipse fopen
	mov qword [rbp + 40], file_test$316
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

file_test$316:	; post call

file_test$317:	; £temporary3525 = return_value

file_test$318:	; inFilePtr = £temporary3525
	mov [rbp + 40], rbx

file_test$319:	; if inFilePtr != int8$0# goto 331
	cmp qword [rbp + 40], 0
	jne file_test$331

file_test$320:	; call header integral zero 0 stack zero 0

file_test$321:	; parameter stderr, offset 72
	mov rax, [stderr]
	mov [rbp + 72], rax

file_test$322:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 80
	mov qword [rbp + 80], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

file_test$323:	; parameter string_inFilePtr20213D20NULL#, offset 88
	mov qword [rbp + 88], string_inFilePtr20213D20NULL#

file_test$324:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#, offset 96
	mov qword [rbp + 96], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

file_test$325:	; parameter int4$115#, offset 104
	mov dword [rbp + 104], 115

file_test$326:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 48], file_test$327
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

file_test$327:	; post call

file_test$328:	; call header integral zero 0 stack zero 0

file_test$329:	; call function noellipse-noellipse abort
	mov qword [rbp + 48], file_test$330
	mov [rbp + 56], rbp
	add rbp, 48
	jmp abort

file_test$330:	; post call

file_test$331:	; call header integral zero 0 stack zero 0

file_test$332:	; £temporary3530 = &size
	mov rsi, rbp
	add rsi, 48

file_test$333:	; parameter £temporary3530, offset 76
	mov [rbp + 76], rsi

file_test$334:	; parameter int4$4#, offset 84
	mov dword [rbp + 84], 4

file_test$335:	; parameter int4$1#, offset 88
	mov dword [rbp + 88], 1

file_test$336:	; parameter inFilePtr, offset 92
	mov rax, [rbp + 40]
	mov [rbp + 92], rax

file_test$337:	; call function noellipse-noellipse fread
	mov qword [rbp + 52], file_test$338
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fread

file_test$338:	; post call

file_test$339:	; call header integral zero 0 stack zero 0

file_test$340:	; parameter string_size12025i0A#, offset 76
	mov qword [rbp + 76], string_size12025i0A#

file_test$341:	; parameter size, offset 84
	mov eax, [rbp + 48]
	mov [rbp + 84], eax

file_test$342:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 52], file_test$343
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	add rdi, 4
	jmp printf

file_test$343:	; post call

file_test$344:	; call header integral zero 0 stack zero 0

file_test$345:	; £temporary3533 = &arr
	mov rsi, rbp
	add rsi, 52

file_test$346:	; parameter £temporary3533, offset 156
	mov [rbp + 156], rsi

file_test$347:	; parameter int4$80#, offset 164
	mov dword [rbp + 164], 80

file_test$348:	; parameter int4$1#, offset 168
	mov dword [rbp + 168], 1

file_test$349:	; parameter inFilePtr, offset 172
	mov rax, [rbp + 40]
	mov [rbp + 172], rax

file_test$350:	; call function noellipse-noellipse fread
	mov qword [rbp + 132], file_test$351
	mov [rbp + 140], rbp
	add rbp, 132
	jmp fread

file_test$351:	; post call

file_test$352:	; call header integral zero 0 stack zero 0

file_test$353:	; parameter inFilePtr, offset 156
	mov rax, [rbp + 40]
	mov [rbp + 156], rax

file_test$354:	; call function noellipse-noellipse fclose
	mov qword [rbp + 132], file_test$355
	mov [rbp + 140], rbp
	add rbp, 132
	jmp fclose

file_test$355:	; post call

file_test$356:	; index = int4$0#
	mov dword [rbp + 132], 0

file_test$357:	; if index >= int4$10# goto 371
	cmp dword [rbp + 132], 10
	jge file_test$371

file_test$358:	; call header integral zero 0 stack zero 0

file_test$359:	; parameter string_index12025i3A20value2025f0A#, offset 160
	mov qword [rbp + 160], string_index12025i3A20value2025f0A#

file_test$360:	; parameter index, offset 168
	mov eax, [rbp + 132]
	mov [rbp + 168], eax

file_test$361:	; £temporary3539 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 132]
	mov rbx, 4294967295
	and rax, rbx

file_test$362:	; £temporary3540 = £temporary3539 * Array_#
	xor rdx, rdx
	mul qword [Array_#]

file_test$363:	; £temporary3541 = arr + £temporary3540
	mov rsi, rbp
	add rsi, 52
	add rsi, rax

file_test$364:	; £field3538 -> £temporary3541 = *£temporary3541

file_test$365:	; push float £field3538 -> £temporary3541
	fld qword [rsi]

file_test$366:	; parameter £field3538 -> £temporary3541, offset 172
	fstp qword [rbp + 172]

file_test$367:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 136], file_test$368
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	add rdi, 12
	jmp printf

file_test$368:	; post call

file_test$369:	; index = index + int4$1#
	inc dword [rbp + 132]

file_test$370:	; goto 357
	jmp file_test$357

file_test$371:	; call header integral zero 0 stack zero 0

file_test$372:	; parameter string_0A#, offset 160
	mov qword [rbp + 160], string_0A#

file_test$373:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 136], file_test$374
	mov [rbp + 144], rbp
	add rbp, 136
	mov rdi, rbp
	jmp printf

file_test$374:	; post call

file_test$375:	; call header integral zero 0 stack zero 0

file_test$376:	; parameter string_Test2Ebin#, offset 64
	mov qword [rbp + 64], string_Test2Ebin#

file_test$377:	; parameter string_r#, offset 72
	mov qword [rbp + 72], string_r#

file_test$378:	; call function noellipse-noellipse fopen
	mov qword [rbp + 40], file_test$379
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

file_test$379:	; post call

file_test$380:	; £temporary3544 = return_value

file_test$381:	; inFilePtr = £temporary3544
	mov [rbp + 40], rbx

file_test$382:	; if inFilePtr != int8$0# goto 394
	cmp qword [rbp + 40], 0
	jne file_test$394

file_test$383:	; call header integral zero 0 stack zero 0

file_test$384:	; parameter stderr, offset 72
	mov rax, [stderr]
	mov [rbp + 72], rax

file_test$385:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 80
	mov qword [rbp + 80], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

file_test$386:	; parameter string_inFilePtr20213D20NULL#, offset 88
	mov qword [rbp + 88], string_inFilePtr20213D20NULL#

file_test$387:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#, offset 96
	mov qword [rbp + 96], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

file_test$388:	; parameter int4$133#, offset 104
	mov dword [rbp + 104], 133

file_test$389:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 48], file_test$390
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

file_test$390:	; post call

file_test$391:	; call header integral zero 0 stack zero 0

file_test$392:	; call function noellipse-noellipse abort
	mov qword [rbp + 48], file_test$393
	mov [rbp + 56], rbp
	add rbp, 48
	jmp abort

file_test$393:	; post call

file_test$394:	; call header integral zero 0 stack zero 0

file_test$395:	; £temporary3549 = &size
	mov rsi, rbp
	add rsi, 48

file_test$396:	; parameter £temporary3549, offset 76
	mov [rbp + 76], rsi

file_test$397:	; parameter int4$4#, offset 84
	mov dword [rbp + 84], 4

file_test$398:	; parameter int4$1#, offset 88
	mov dword [rbp + 88], 1

file_test$399:	; parameter inFilePtr, offset 92
	mov rax, [rbp + 40]
	mov [rbp + 92], rax

file_test$400:	; call function noellipse-noellipse fread
	mov qword [rbp + 52], file_test$401
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fread

file_test$401:	; post call

file_test$402:	; call header integral zero 0 stack zero 0

file_test$403:	; parameter string_size22025i0A#, offset 76
	mov qword [rbp + 76], string_size22025i0A#

file_test$404:	; parameter size, offset 84
	mov eax, [rbp + 48]
	mov [rbp + 84], eax

file_test$405:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 52], file_test$406
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	add rdi, 4
	jmp printf

file_test$406:	; post call

file_test$407:	; index = int4$0#
	mov dword [rbp + 52], 0

file_test$408:	; if index >= size goto 426
	mov eax, [rbp + 48]
	cmp [rbp + 52], eax
	jge file_test$426

file_test$409:	; call header integral zero 0 stack zero 0

file_test$410:	; £temporary3554 = &value
	mov rsi, rbp
	add rsi, 56

file_test$411:	; parameter £temporary3554, offset 88
	mov [rbp + 88], rsi

file_test$412:	; parameter int4$8#, offset 96
	mov dword [rbp + 96], 8

file_test$413:	; parameter int4$1#, offset 100
	mov dword [rbp + 100], 1

file_test$414:	; parameter inFilePtr, offset 104
	mov rax, [rbp + 40]
	mov [rbp + 104], rax

file_test$415:	; call function noellipse-noellipse fread
	mov qword [rbp + 64], file_test$416
	mov [rbp + 72], rbp
	add rbp, 64
	jmp fread

file_test$416:	; post call

file_test$417:	; call header integral zero 0 stack zero 0

file_test$418:	; parameter string_index22025i3A20value2025f0A#, offset 88
	mov qword [rbp + 88], string_index22025i3A20value2025f0A#

file_test$419:	; parameter index, offset 96
	mov eax, [rbp + 52]
	mov [rbp + 96], eax

file_test$420:	; push float value
	fld qword [rbp + 56]

file_test$421:	; parameter value, offset 100
	fstp qword [rbp + 100]

file_test$422:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 64], file_test$423
	mov [rbp + 72], rbp
	add rbp, 64
	mov rdi, rbp
	add rdi, 12
	jmp printf

file_test$423:	; post call

file_test$424:	; index = index + int4$1#
	inc dword [rbp + 52]

file_test$425:	; goto 408
	jmp file_test$408

file_test$426:	; call header integral zero 0 stack zero 0

file_test$427:	; parameter string_0A#, offset 80
	mov qword [rbp + 80], string_0A#

file_test$428:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 56], file_test$429
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	jmp printf

file_test$429:	; post call

file_test$430:	; call header integral zero 0 stack zero 0

file_test$431:	; parameter inFilePtr, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

file_test$432:	; call function noellipse-noellipse fclose
	mov qword [rbp + 56], file_test$433
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fclose

file_test$433:	; post call

file_test$434:	; call header integral zero 0 stack zero 0

file_test$435:	; parameter string_Test2Ebin#, offset 64
	mov qword [rbp + 64], string_Test2Ebin#

file_test$436:	; parameter string_r#, offset 72
	mov qword [rbp + 72], string_r#

file_test$437:	; call function noellipse-noellipse fopen
	mov qword [rbp + 40], file_test$438
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

file_test$438:	; post call

file_test$439:	; £temporary3559 = return_value

file_test$440:	; inFilePtr = £temporary3559
	mov [rbp + 40], rbx

file_test$441:	; if inFilePtr != int8$0# goto 453
	cmp qword [rbp + 40], 0
	jne file_test$453

file_test$442:	; call header integral zero 0 stack zero 0

file_test$443:	; parameter stderr, offset 72
	mov rax, [stderr]
	mov [rbp + 72], rax

file_test$444:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 80
	mov qword [rbp + 80], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

file_test$445:	; parameter string_inFilePtr20213D20NULL#, offset 88
	mov qword [rbp + 88], string_inFilePtr20213D20NULL#

file_test$446:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#, offset 96
	mov qword [rbp + 96], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

file_test$447:	; parameter int4$151#, offset 104
	mov dword [rbp + 104], 151

file_test$448:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 48], file_test$449
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

file_test$449:	; post call

file_test$450:	; call header integral zero 0 stack zero 0

file_test$451:	; call function noellipse-noellipse abort
	mov qword [rbp + 48], file_test$452
	mov [rbp + 56], rbp
	add rbp, 48
	jmp abort

file_test$452:	; post call

file_test$453:	; call header integral zero 0 stack zero 0

file_test$454:	; £temporary3564 = &size
	mov rsi, rbp
	add rsi, 48

file_test$455:	; parameter £temporary3564, offset 76
	mov [rbp + 76], rsi

file_test$456:	; parameter int4$4#, offset 84
	mov dword [rbp + 84], 4

file_test$457:	; parameter int4$1#, offset 88
	mov dword [rbp + 88], 1

file_test$458:	; parameter inFilePtr, offset 92
	mov rax, [rbp + 40]
	mov [rbp + 92], rax

file_test$459:	; call function noellipse-noellipse fread
	mov qword [rbp + 52], file_test$460
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fread

file_test$460:	; post call

file_test$461:	; call header integral zero 0 stack zero 0

file_test$462:	; parameter string_size32025i20total2025i0A#, offset 76
	mov qword [rbp + 76], string_size32025i20total2025i0A#

file_test$463:	; parameter size, offset 84
	mov eax, [rbp + 48]
	mov [rbp + 84], eax

file_test$464:	; £temporary3566 = size * int4$8#
	mov eax, [rbp + 48]
	xor edx, edx
	imul dword [int4$8#]

file_test$465:	; parameter £temporary3566, offset 88
	mov [rbp + 88], eax

file_test$466:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 52], file_test$467
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	add rdi, 8
	jmp printf

file_test$467:	; post call

file_test$468:	; total = size * int4$8#
	mov eax, [rbp + 48]
	xor edx, edx
	imul dword [int4$8#]
	mov [rbp + 52], eax

file_test$469:	; call header integral zero 0 stack zero 0

file_test$470:	; parameter total, offset 80
	mov eax, [rbp + 52]
	mov [rbp + 80], eax

file_test$471:	; call function noellipse-noellipse malloc
	mov qword [rbp + 56], file_test$472
	mov [rbp + 64], rbp
	add rbp, 56
	jmp malloc

file_test$472:	; post call

file_test$473:	; £temporary3569 = return_value

file_test$474:	; p = £temporary3569
	mov [rbp + 56], rbx

file_test$475:	; if p != int8$0# goto 487
	cmp qword [rbp + 56], 0
	jne file_test$487

file_test$476:	; call header integral zero 0 stack zero 0

file_test$477:	; parameter stderr, offset 88
	mov rax, [stderr]
	mov [rbp + 88], rax

file_test$478:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 96
	mov qword [rbp + 96], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

file_test$479:	; parameter string_p20213D20NULL#, offset 104
	mov qword [rbp + 104], string_p20213D20NULL#

file_test$480:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#, offset 112
	mov qword [rbp + 112], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

file_test$481:	; parameter int4$159#, offset 120
	mov dword [rbp + 120], 159

file_test$482:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 64], file_test$483
	mov [rbp + 72], rbp
	add rbp, 64
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

file_test$483:	; post call

file_test$484:	; call header integral zero 0 stack zero 0

file_test$485:	; call function noellipse-noellipse abort
	mov qword [rbp + 64], file_test$486
	mov [rbp + 72], rbp
	add rbp, 64
	jmp abort

file_test$486:	; post call

file_test$487:	; £temporary3574 = int_to_int size (Signed_Int -> Pointer)
	mov eax, [rbp + 48]
	mov rbx, 4294967295
	and rax, rbx

file_test$488:	; £temporary3576 = £temporary3574 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

file_test$489:	; endPtr = p + £temporary3576
	mov rbx, [rbp + 56]
	add rbx, rax
	mov [rbp + 64], rbx

file_test$490:	; call header integral zero 0 stack zero 0

file_test$491:	; parameter string_malloc2025u2025u2025u0A#, offset 96
	mov qword [rbp + 96], string_malloc2025u2025u2025u0A#

file_test$492:	; parameter p, offset 104
	mov rax, [rbp + 56]
	mov [rbp + 104], rax

file_test$493:	; parameter total, offset 112
	mov eax, [rbp + 52]
	mov [rbp + 112], eax

file_test$494:	; parameter endPtr, offset 116
	mov rax, [rbp + 64]
	mov [rbp + 116], rax

file_test$495:	; call function noellipse-ellipse printf, extra 20
	mov qword [rbp + 72], file_test$496
	mov [rbp + 80], rbp
	add rbp, 72
	mov rdi, rbp
	add rdi, 20
	jmp printf

file_test$496:	; post call

file_test$497:	; call header integral zero 0 stack zero 0

file_test$498:	; parameter p, offset 96
	mov rax, [rbp + 56]
	mov [rbp + 96], rax

file_test$499:	; parameter total, offset 104
	mov eax, [rbp + 52]
	mov [rbp + 104], eax

file_test$500:	; parameter int4$1#, offset 108
	mov dword [rbp + 108], 1

file_test$501:	; parameter inFilePtr, offset 112
	mov rax, [rbp + 40]
	mov [rbp + 112], rax

file_test$502:	; call function noellipse-noellipse fread
	mov qword [rbp + 72], file_test$503
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fread

file_test$503:	; post call

file_test$504:	; index = int4$0#
	mov dword [rbp + 72], 0

file_test$505:	; if index >= size goto 519
	mov eax, [rbp + 48]
	cmp [rbp + 72], eax
	jge file_test$519

file_test$506:	; call header integral zero 0 stack zero 0

file_test$507:	; parameter string_index32025i3A20value2025f0A#, offset 100
	mov qword [rbp + 100], string_index32025i3A20value2025f0A#

file_test$508:	; parameter index, offset 108
	mov eax, [rbp + 72]
	mov [rbp + 108], eax

file_test$509:	; £temporary3582 = int_to_int index (Signed_Int -> Pointer)
	mov eax, [rbp + 72]
	mov rbx, 4294967295
	and rax, rbx

file_test$510:	; £temporary3583 = £temporary3582 * int8$8#
	xor rdx, rdx
	mul qword [int8$8#]

file_test$511:	; £temporary3584 = p + £temporary3583
	mov rsi, [rbp + 56]
	add rsi, rax

file_test$512:	; £field3581 -> £temporary3584 = *£temporary3584

file_test$513:	; push float £field3581 -> £temporary3584
	fld qword [rsi]

file_test$514:	; parameter £field3581 -> £temporary3584, offset 112
	fstp qword [rbp + 112]

file_test$515:	; call function noellipse-ellipse printf, extra 12
	mov qword [rbp + 76], file_test$516
	mov [rbp + 84], rbp
	add rbp, 76
	mov rdi, rbp
	add rdi, 12
	jmp printf

file_test$516:	; post call

file_test$517:	; index = index + int4$1#
	inc dword [rbp + 72]

file_test$518:	; goto 505
	jmp file_test$505

file_test$519:	; call header integral zero 0 stack zero 0

file_test$520:	; parameter string_0A#, offset 100
	mov qword [rbp + 100], string_0A#

file_test$521:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 76], file_test$522
	mov [rbp + 84], rbp
	add rbp, 76
	mov rdi, rbp
	jmp printf

file_test$522:	; post call

file_test$523:	; call header integral zero 0 stack zero 0

file_test$524:	; parameter p, offset 100
	mov rax, [rbp + 56]
	mov [rbp + 100], rax

file_test$525:	; call function noellipse-noellipse free
	mov qword [rbp + 76], file_test$526
	mov [rbp + 84], rbp
	add rbp, 76
	jmp free

file_test$526:	; post call

file_test$527:	; call header integral zero 0 stack zero 0

file_test$528:	; parameter inFilePtr, offset 100
	mov rax, [rbp + 40]
	mov [rbp + 100], rax

file_test$529:	; call function noellipse-noellipse fclose
	mov qword [rbp + 76], file_test$530
	mov [rbp + 84], rbp
	add rbp, 76
	jmp fclose

file_test$530:	; post call

file_test$531:	; personVector[0].name[0] = int1$65#
	mov byte [rbp + 40], 65

file_test$532:	; personVector[0].name[1] = int1$100#
	mov byte [rbp + 41], 100

file_test$533:	; personVector[0].name[2] = int1$97#
	mov byte [rbp + 42], 97

file_test$534:	; personVector[0].name[3] = int1$109#
	mov byte [rbp + 43], 109

file_test$535:	; personVector[0].name[4] = int1$32#
	mov byte [rbp + 44], 32

file_test$536:	; personVector[0].name[5] = int1$66#
	mov byte [rbp + 45], 66

file_test$537:	; personVector[0].name[6] = int1$101#
	mov byte [rbp + 46], 101

file_test$538:	; personVector[0].name[7] = int1$114#
	mov byte [rbp + 47], 114

file_test$539:	; personVector[0].name[8] = int1$116#
	mov byte [rbp + 48], 116

file_test$540:	; personVector[0].name[9] = int1$105#
	mov byte [rbp + 49], 105

file_test$541:	; personVector[0].name[10] = int1$108#
	mov byte [rbp + 50], 108

file_test$542:	; personVector[0].name[11] = int1$115#
	mov byte [rbp + 51], 115

file_test$543:	; personVector[0].name[12] = int1$115#
	mov byte [rbp + 52], 115

file_test$544:	; personVector[0].name[13] = int1$111#
	mov byte [rbp + 53], 111

file_test$545:	; personVector[0].name[14] = int1$110#
	mov byte [rbp + 54], 110

file_test$546:	; personVector[0].name[15] = int1$48#
	mov byte [rbp + 55], 48

file_test$547:	; personVector[0].phone = int4$12345#
	mov dword [rbp + 88], 12345

file_test$548:	; personVector[1].name[0] = int1$66#
	mov byte [rbp + 92], 66

file_test$549:	; personVector[1].name[1] = int1$101#
	mov byte [rbp + 93], 101

file_test$550:	; personVector[1].name[2] = int1$114#
	mov byte [rbp + 94], 114

file_test$551:	; personVector[1].name[3] = int1$116#
	mov byte [rbp + 95], 116

file_test$552:	; personVector[1].name[4] = int1$105#
	mov byte [rbp + 96], 105

file_test$553:	; personVector[1].name[5] = int1$108#
	mov byte [rbp + 97], 108

file_test$554:	; personVector[1].name[6] = int1$32#
	mov byte [rbp + 98], 32

file_test$555:	; personVector[1].name[7] = int1$67#
	mov byte [rbp + 99], 67

file_test$556:	; personVector[1].name[8] = int1$101#
	mov byte [rbp + 100], 101

file_test$557:	; personVector[1].name[9] = int1$97#
	mov byte [rbp + 101], 97

file_test$558:	; personVector[1].name[10] = int1$115#
	mov byte [rbp + 102], 115

file_test$559:	; personVector[1].name[11] = int1$97#
	mov byte [rbp + 103], 97

file_test$560:	; personVector[1].name[12] = int1$114#
	mov byte [rbp + 104], 114

file_test$561:	; personVector[1].name[13] = int1$115#
	mov byte [rbp + 105], 115

file_test$562:	; personVector[1].name[14] = int1$115#
	mov byte [rbp + 106], 115

file_test$563:	; personVector[1].name[15] = int1$111#
	mov byte [rbp + 107], 111

file_test$564:	; personVector[1].name[16] = int1$110#
	mov byte [rbp + 108], 110

file_test$565:	; personVector[1].name[17] = int1$48#
	mov byte [rbp + 109], 48

file_test$566:	; personVector[1].phone = int4$23456#
	mov dword [rbp + 140], 23456

file_test$567:	; personVector[2].name[0] = int1$67#
	mov byte [rbp + 144], 67

file_test$568:	; personVector[2].name[1] = int1$101#
	mov byte [rbp + 145], 101

file_test$569:	; personVector[2].name[2] = int1$97#
	mov byte [rbp + 146], 97

file_test$570:	; personVector[2].name[3] = int1$115#
	mov byte [rbp + 147], 115

file_test$571:	; personVector[2].name[4] = int1$97#
	mov byte [rbp + 148], 97

file_test$572:	; personVector[2].name[5] = int1$114#
	mov byte [rbp + 149], 114

file_test$573:	; personVector[2].name[6] = int1$32#
	mov byte [rbp + 150], 32

file_test$574:	; personVector[2].name[7] = int1$68#
	mov byte [rbp + 151], 68

file_test$575:	; personVector[2].name[8] = int1$97#
	mov byte [rbp + 152], 97

file_test$576:	; personVector[2].name[9] = int1$118#
	mov byte [rbp + 153], 118

file_test$577:	; personVector[2].name[10] = int1$105#
	mov byte [rbp + 154], 105

file_test$578:	; personVector[2].name[11] = int1$100#
	mov byte [rbp + 155], 100

file_test$579:	; personVector[2].name[12] = int1$115#
	mov byte [rbp + 156], 115

file_test$580:	; personVector[2].name[13] = int1$115#
	mov byte [rbp + 157], 115

file_test$581:	; personVector[2].name[14] = int1$111#
	mov byte [rbp + 158], 111

file_test$582:	; personVector[2].name[15] = int1$110#
	mov byte [rbp + 159], 110

file_test$583:	; personVector[2].name[16] = int1$48#
	mov byte [rbp + 160], 48

file_test$584:	; personVector[2].phone = int4$24567#
	mov dword [rbp + 192], 24567

file_test$585:	; call header integral zero 0 stack zero 0

file_test$586:	; parameter string_Block2Ebin#, offset 272
	mov qword [rbp + 272], string_Block2Ebin#

file_test$587:	; parameter string_w#, offset 280
	mov qword [rbp + 280], string_w#

file_test$588:	; call function noellipse-noellipse fopen
	mov qword [rbp + 248], file_test$589
	mov [rbp + 256], rbp
	add rbp, 248
	jmp fopen

file_test$589:	; post call

file_test$590:	; £temporary3649 = return_value

file_test$591:	; outFilePtr = £temporary3649
	mov [rbp + 248], rbx

file_test$592:	; if outFilePtr != int8$0# goto 604
	cmp qword [rbp + 248], 0
	jne file_test$604

file_test$593:	; call header integral zero 0 stack zero 0

file_test$594:	; parameter stderr, offset 280
	mov rax, [stderr]
	mov [rbp + 280], rax

file_test$595:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 288
	mov qword [rbp + 288], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

file_test$596:	; parameter string_outFilePtr20213D20NULL#, offset 296
	mov qword [rbp + 296], string_outFilePtr20213D20NULL#

file_test$597:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#, offset 304
	mov qword [rbp + 304], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

file_test$598:	; parameter int4$185#, offset 312
	mov dword [rbp + 312], 185

file_test$599:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 256], file_test$600
	mov [rbp + 264], rbp
	add rbp, 256
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

file_test$600:	; post call

file_test$601:	; call header integral zero 0 stack zero 0

file_test$602:	; call function noellipse-noellipse abort
	mov qword [rbp + 256], file_test$603
	mov [rbp + 264], rbp
	add rbp, 256
	jmp abort

file_test$603:	; post call

file_test$604:	; call header integral zero 0 stack zero 0

file_test$605:	; parameter personVector, offset 280
	mov [rbp + 280], rbp
	add qword [rbp + 280], 40

file_test$606:	; parameter int4$156#, offset 288
	mov dword [rbp + 288], 156

file_test$607:	; parameter int4$1#, offset 292
	mov dword [rbp + 292], 1

file_test$608:	; parameter outFilePtr, offset 296
	mov rax, [rbp + 248]
	mov [rbp + 296], rax

file_test$609:	; call function noellipse-noellipse fwrite
	mov qword [rbp + 256], file_test$610
	mov [rbp + 264], rbp
	add rbp, 256
	jmp fwrite

file_test$610:	; post call

file_test$611:	; call header integral zero 0 stack zero 0

file_test$612:	; parameter outFilePtr, offset 280
	mov rax, [rbp + 248]
	mov [rbp + 280], rax

file_test$613:	; call function noellipse-noellipse fclose
	mov qword [rbp + 256], file_test$614
	mov [rbp + 264], rbp
	add rbp, 256
	jmp fclose

file_test$614:	; post call

file_test$615:	; call header integral zero 0 stack zero 0

file_test$616:	; parameter string_Block2Ebin#, offset 280
	mov qword [rbp + 280], string_Block2Ebin#

file_test$617:	; parameter string_r#, offset 288
	mov qword [rbp + 288], string_r#

file_test$618:	; call function noellipse-noellipse fopen
	mov qword [rbp + 256], file_test$619
	mov [rbp + 264], rbp
	add rbp, 256
	jmp fopen

file_test$619:	; post call

file_test$620:	; £temporary3656 = return_value

file_test$621:	; inFilePtr = £temporary3656
	mov [rbp + 256], rbx

file_test$622:	; if inFilePtr != int8$0# goto 634
	cmp qword [rbp + 256], 0
	jne file_test$634

file_test$623:	; call header integral zero 0 stack zero 0

file_test$624:	; parameter stderr, offset 288
	mov rax, [stderr]
	mov [rbp + 288], rax

file_test$625:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 296
	mov qword [rbp + 296], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

file_test$626:	; parameter string_inFilePtr20213D20NULL#, offset 304
	mov qword [rbp + 304], string_inFilePtr20213D20NULL#

file_test$627:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#, offset 312
	mov qword [rbp + 312], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

file_test$628:	; parameter int4$191#, offset 320
	mov dword [rbp + 320], 191

file_test$629:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 264], file_test$630
	mov [rbp + 272], rbp
	add rbp, 264
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

file_test$630:	; post call

file_test$631:	; call header integral zero 0 stack zero 0

file_test$632:	; call function noellipse-noellipse abort
	mov qword [rbp + 264], file_test$633
	mov [rbp + 272], rbp
	add rbp, 264
	jmp abort

file_test$633:	; post call

file_test$634:	; call header integral zero 0 stack zero 0

file_test$635:	; parameter inFilePtr, offset 288
	mov rax, [rbp + 256]
	mov [rbp + 288], rax

file_test$636:	; call function noellipse-noellipse feof
	mov qword [rbp + 264], file_test$637
	mov [rbp + 272], rbp
	add rbp, 264
	jmp feof

file_test$637:	; post call

file_test$638:	; £temporary3661 = return_value

file_test$639:	; if £temporary3661 != int4$0# goto 659
	cmp ebx, 0
	jne file_test$659

file_test$640:	; call header integral zero 0 stack zero 0

file_test$641:	; £temporary3664 = &person
	mov rsi, rbp
	add rsi, 196

file_test$642:	; parameter £temporary3664, offset 288
	mov [rbp + 288], rsi

file_test$643:	; parameter int4$52#, offset 296
	mov dword [rbp + 296], 52

file_test$644:	; parameter int4$1#, offset 300
	mov dword [rbp + 300], 1

file_test$645:	; parameter inFilePtr, offset 304
	mov rax, [rbp + 256]
	mov [rbp + 304], rax

file_test$646:	; call function noellipse-noellipse fread
	mov qword [rbp + 264], file_test$647
	mov [rbp + 272], rbp
	add rbp, 264
	jmp fread

file_test$647:	; post call

file_test$648:	; call header integral zero 0 stack zero 0

file_test$649:	; parameter string_Name20203A2025s0A#, offset 288
	mov qword [rbp + 288], string_Name20203A2025s0A#

file_test$650:	; parameter person$name, offset 296
	mov [rbp + 296], rbp
	add qword [rbp + 296], 196

file_test$651:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 264], file_test$652
	mov [rbp + 272], rbp
	add rbp, 264
	mov rdi, rbp
	add rdi, 8
	jmp printf

file_test$652:	; post call

file_test$653:	; call header integral zero 0 stack zero 0

file_test$654:	; parameter string_Phone203A2025d0A#, offset 288
	mov qword [rbp + 288], string_Phone203A2025d0A#

file_test$655:	; parameter person$phone, offset 296
	mov eax, [rbp + 244]
	mov [rbp + 296], eax

file_test$656:	; call function noellipse-ellipse printf, extra 4
	mov qword [rbp + 264], file_test$657
	mov [rbp + 272], rbp
	add rbp, 264
	mov rdi, rbp
	add rdi, 4
	jmp printf

file_test$657:	; post call

file_test$658:	; goto 634
	jmp file_test$634

file_test$659:	; call header integral zero 0 stack zero 0

file_test$660:	; parameter inFilePtr, offset 288
	mov rax, [rbp + 256]
	mov [rbp + 288], rax

file_test$661:	; call function noellipse-noellipse fclose
	mov qword [rbp + 264], file_test$662
	mov [rbp + 272], rbp
	add rbp, 264
	jmp fclose

file_test$662:	; post call

file_test$663:	; call header integral zero 0 stack zero 0

file_test$664:	; parameter string_Test12Etxt#, offset 64
	mov qword [rbp + 64], string_Test12Etxt#

file_test$665:	; parameter string_r#, offset 72
	mov qword [rbp + 72], string_r#

file_test$666:	; call function noellipse-noellipse fopen
	mov qword [rbp + 40], file_test$667
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fopen

file_test$667:	; post call

file_test$668:	; £temporary3671 = return_value

file_test$669:	; inFilePtr = £temporary3671
	mov [rbp + 40], rbx

file_test$670:	; if inFilePtr != int8$0# goto 682
	cmp qword [rbp + 40], 0
	jne file_test$682

file_test$671:	; call header integral zero 0 stack zero 0

file_test$672:	; parameter stderr, offset 72
	mov rax, [stderr]
	mov [rbp + 72], rax

file_test$673:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 80
	mov qword [rbp + 80], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

file_test$674:	; parameter string_inFilePtr20213D20NULL#, offset 88
	mov qword [rbp + 88], string_inFilePtr20213D20NULL#

file_test$675:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#, offset 96
	mov qword [rbp + 96], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

file_test$676:	; parameter int4$204#, offset 104
	mov dword [rbp + 104], 204

file_test$677:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 48], file_test$678
	mov [rbp + 56], rbp
	add rbp, 48
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

file_test$678:	; post call

file_test$679:	; call header integral zero 0 stack zero 0

file_test$680:	; call function noellipse-noellipse abort
	mov qword [rbp + 48], file_test$681
	mov [rbp + 56], rbp
	add rbp, 48
	jmp abort

file_test$681:	; post call

file_test$682:	; call header integral zero 0 stack zero 0

file_test$683:	; parameter inFilePtr, offset 72
	mov rax, [rbp + 40]
	mov [rbp + 72], rax

file_test$684:	; parameter int4$minus1#, offset 80
	mov dword [rbp + 80], -1

file_test$685:	; parameter int4$2#, offset 84
	mov dword [rbp + 84], 2

file_test$686:	; call function noellipse-noellipse fseek
	mov qword [rbp + 48], file_test$687
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fseek

file_test$687:	; post call

file_test$688:	; call header integral zero 0 stack zero 0

file_test$689:	; parameter inFilePtr, offset 76
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

file_test$690:	; call function noellipse-noellipse ftell
	mov qword [rbp + 52], file_test$691
	mov [rbp + 60], rbp
	add rbp, 52
	jmp ftell

file_test$691:	; post call

file_test$692:	; £temporary3677 = return_value

file_test$693:	; £temporary3678 = int_to_int £temporary3677 (Signed_Int -> Unsigned_Int)

file_test$694:	; u = £temporary3678
	mov [rbp + 48], ebx

file_test$695:	; if u < int4$0# goto 716
	cmp dword [rbp + 48], 0
	jb file_test$716

file_test$696:	; call header integral zero 0 stack zero 0

file_test$697:	; parameter inFilePtr, offset 76
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

file_test$698:	; call function noellipse-noellipse fgetc
	mov qword [rbp + 52], file_test$699
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fgetc

file_test$699:	; post call

file_test$700:	; £temporary3680 = return_value

file_test$701:	; £temporary3681 = int_to_int £temporary3680 (Signed_Int -> Signed_Char)
	cmp ebx, 0
	jge file_test$702
	neg ebx
	neg bl

file_test$702:	; c = £temporary3681
	mov [rbp + 52], bl

file_test$703:	; call header integral zero 0 stack zero 0

file_test$704:	; £temporary3682 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 52]
	and eax, 255
	cmp al, 0
	jge file_test$705
	neg al
	neg eax

file_test$705:	; parameter £temporary3682, offset 77
	mov [rbp + 77], eax

file_test$706:	; call function noellipse-noellipse putchar
	mov qword [rbp + 53], file_test$707
	mov [rbp + 61], rbp
	add rbp, 53
	jmp putchar

file_test$707:	; post call

file_test$708:	; if u == int4$0# goto 716
	cmp dword [rbp + 48], 0
	je file_test$716

file_test$709:	; call header integral zero 0 stack zero 0

file_test$710:	; parameter inFilePtr, offset 77
	mov rax, [rbp + 40]
	mov [rbp + 77], rax

file_test$711:	; parameter int4$minus2#, offset 85
	mov dword [rbp + 85], -2

file_test$712:	; parameter int4$1#, offset 89
	mov dword [rbp + 89], 1

file_test$713:	; call function noellipse-noellipse fseek
	mov qword [rbp + 53], file_test$714
	mov [rbp + 61], rbp
	add rbp, 53
	jmp fseek

file_test$714:	; post call

file_test$715:	; goto 688
	jmp file_test$688

file_test$716:	; call header integral zero 0 stack zero 0

file_test$717:	; parameter string_0A0A#, offset 76
	mov qword [rbp + 76], string_0A0A#

file_test$718:	; call function noellipse-ellipse printf, extra 0
	mov qword [rbp + 52], file_test$719
	mov [rbp + 60], rbp
	add rbp, 52
	mov rdi, rbp
	jmp printf

file_test$719:	; post call

file_test$720:	; call header integral zero 0 stack zero 0

file_test$721:	; parameter inFilePtr, offset 76
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

file_test$722:	; call function noellipse-noellipse fclose
	mov qword [rbp + 52], file_test$723
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fclose

file_test$723:	; post call

file_test$724:	; call header integral zero 0 stack zero 0

file_test$725:	; parameter string_fileexists20X2025s0A#, offset 64
	mov qword [rbp + 64], string_fileexists20X2025s0A#

file_test$726:	; call header integral zero 0 stack zero 0

file_test$727:	; parameter string_X#, offset 96
	mov qword [rbp + 96], string_X#

file_test$728:	; call function noellipse-noellipse fileexists
	mov qword [rbp + 72], file_test$729
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fileexists

file_test$729:	; post call

file_test$730:	; £temporary3688 = return_value

file_test$731:	; if £temporary3688 == int4$0# goto 734
	cmp ebx, 0
	je file_test$734

file_test$732:	; £temporary3690 = string_Yes#
	mov rax, string_Yes#

file_test$733:	; goto 735
	jmp file_test$735

file_test$734:	; £temporary3690 = string_No#
	mov rax, string_No#

file_test$735:	; parameter £temporary3690, offset 72
	mov [rbp + 72], rax

file_test$736:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 40], file_test$737
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

file_test$737:	; post call

file_test$738:	; call header integral zero 0 stack zero 0

file_test$739:	; parameter string_fileexists20Y2025s0A0A#, offset 64
	mov qword [rbp + 64], string_fileexists20Y2025s0A0A#

file_test$740:	; call header integral zero 0 stack zero 0

file_test$741:	; parameter string_Y#, offset 96
	mov qword [rbp + 96], string_Y#

file_test$742:	; call function noellipse-noellipse fileexists
	mov qword [rbp + 72], file_test$743
	mov [rbp + 80], rbp
	add rbp, 72
	jmp fileexists

file_test$743:	; post call

file_test$744:	; £temporary3692 = return_value

file_test$745:	; if £temporary3692 == int4$0# goto 748
	cmp ebx, 0
	je file_test$748

file_test$746:	; £temporary3694 = string_Yes#
	mov rax, string_Yes#

file_test$747:	; goto 749
	jmp file_test$749

file_test$748:	; £temporary3694 = string_No#
	mov rax, string_No#

file_test$749:	; parameter £temporary3694, offset 72
	mov [rbp + 72], rax

file_test$750:	; call function noellipse-ellipse printf, extra 8
	mov qword [rbp + 40], file_test$751
	mov [rbp + 48], rbp
	add rbp, 40
	mov rdi, rbp
	add rdi, 8
	jmp printf

file_test$751:	; post call

file_test$752:	; call header integral zero 0 stack zero 0

file_test$753:	; parameter string_PBookX2Etxt#, offset 72
	mov qword [rbp + 72], string_PBookX2Etxt#

file_test$754:	; parameter string_r2B#, offset 80
	mov qword [rbp + 80], string_r2B#

file_test$755:	; call function noellipse-noellipse fopen
	mov qword [rbp + 48], file_test$756
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fopen

file_test$756:	; post call

file_test$757:	; £temporary3696 = return_value

file_test$758:	; inOutFilePtr = £temporary3696
	mov [rbp + 48], rbx

file_test$759:	; if inOutFilePtr != int8$0# goto 771
	cmp qword [rbp + 48], 0
	jne file_test$771

file_test$760:	; call header integral zero 0 stack zero 0

file_test$761:	; parameter stderr, offset 80
	mov rax, [stderr]
	mov [rbp + 80], rax

file_test$762:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 88
	mov qword [rbp + 88], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

file_test$763:	; parameter string_inOutFilePtr20213D20NULL#, offset 96
	mov qword [rbp + 96], string_inOutFilePtr20213D20NULL#

file_test$764:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#, offset 104
	mov qword [rbp + 104], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

file_test$765:	; parameter int4$228#, offset 112
	mov dword [rbp + 112], 228

file_test$766:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 56], file_test$767
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

file_test$767:	; post call

file_test$768:	; call header integral zero 0 stack zero 0

file_test$769:	; call function noellipse-noellipse abort
	mov qword [rbp + 56], file_test$770
	mov [rbp + 64], rbp
	add rbp, 56
	jmp abort

file_test$770:	; post call

file_test$771:	; call header integral zero 0 stack zero 0

file_test$772:	; call function noellipse-noellipse tmpfile
	mov qword [rbp + 56], file_test$773
	mov [rbp + 64], rbp
	add rbp, 56
	jmp tmpfile

file_test$773:	; post call

file_test$774:	; £temporary3701 = return_value

file_test$775:	; tempFilePtr = £temporary3701
	mov [rbp + 40], rbx

file_test$776:	; if tempFilePtr != int8$0# goto 788
	cmp qword [rbp + 40], 0
	jne file_test$788

file_test$777:	; call header integral zero 0 stack zero 0

file_test$778:	; parameter stderr, offset 80
	mov rax, [stderr]
	mov [rbp + 80], rax

file_test$779:	; parameter string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#, offset 88
	mov qword [rbp + 88], string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#

file_test$780:	; parameter string_tempFilePtr20213D20NULL#, offset 96
	mov qword [rbp + 96], string_tempFilePtr20213D20NULL#

file_test$781:	; parameter string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#, offset 104
	mov qword [rbp + 104], string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#

file_test$782:	; parameter int4$231#, offset 112
	mov dword [rbp + 112], 231

file_test$783:	; call function noellipse-ellipse fprintf, extra 20
	mov qword [rbp + 56], file_test$784
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	add rdi, 20
	jmp fprintf

file_test$784:	; post call

file_test$785:	; call header integral zero 0 stack zero 0

file_test$786:	; call function noellipse-noellipse abort
	mov qword [rbp + 56], file_test$787
	mov [rbp + 64], rbp
	add rbp, 56
	jmp abort

file_test$787:	; post call

file_test$788:	; call header integral zero 0 stack zero 0

file_test$789:	; parameter inOutFilePtr, offset 80
	mov rax, [rbp + 48]
	mov [rbp + 80], rax

file_test$790:	; call function noellipse-noellipse fgetc
	mov qword [rbp + 56], file_test$791
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fgetc

file_test$791:	; post call

file_test$792:	; £temporary3706 = return_value

file_test$793:	; £temporary3707 = int_to_int £temporary3706 (Signed_Int -> Signed_Char)
	cmp ebx, 0
	jge file_test$794
	neg ebx
	neg bl

file_test$794:	; c = £temporary3707
	mov [rbp + 56], bl

file_test$795:	; £temporary3708 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 56]
	and eax, 255
	cmp al, 0
	jge file_test$796
	neg al
	neg eax

file_test$796:	; if £temporary3708 == int4$minus1# goto 809
	cmp eax, -1
	je file_test$809

file_test$797:	; call header integral zero 0 stack zero 0

file_test$798:	; call header integral zero 0 stack zero 0

file_test$799:	; £temporary3710 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 56]
	and eax, 255
	cmp al, 0
	jge file_test$800
	neg al
	neg eax

file_test$800:	; parameter £temporary3710, offset 81
	mov [rbp + 81], eax

file_test$801:	; call function noellipse-noellipse toupper
	mov qword [rbp + 57], file_test$802
	mov [rbp + 65], rbp
	add rbp, 57
	jmp toupper

file_test$802:	; post call

file_test$803:	; £temporary3711 = return_value

file_test$804:	; parameter £temporary3711, offset 81
	mov [rbp + 81], ebx

file_test$805:	; parameter tempFilePtr, offset 85
	mov rax, [rbp + 40]
	mov [rbp + 85], rax

file_test$806:	; call function noellipse-noellipse putc
	mov qword [rbp + 57], file_test$807
	mov [rbp + 65], rbp
	add rbp, 57
	jmp putc

file_test$807:	; post call

file_test$808:	; goto 788
	jmp file_test$788

file_test$809:	; call header integral zero 0 stack zero 0

file_test$810:	; parameter tempFilePtr, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

file_test$811:	; call function noellipse-noellipse rewind
	mov qword [rbp + 56], file_test$812
	mov [rbp + 64], rbp
	add rbp, 56
	jmp rewind

file_test$812:	; post call

file_test$813:	; call header integral zero 0 stack zero 0

file_test$814:	; parameter inOutFilePtr, offset 80
	mov rax, [rbp + 48]
	mov [rbp + 80], rax

file_test$815:	; parameter string_0A2D2D2D2D2D2D2D2D2D2D2D2D0A#, offset 88
	mov qword [rbp + 88], string_0A2D2D2D2D2D2D2D2D2D2D2D2D0A#

file_test$816:	; call function noellipse-ellipse fprintf, extra 0
	mov qword [rbp + 56], file_test$817
	mov [rbp + 64], rbp
	add rbp, 56
	mov rdi, rbp
	jmp fprintf

file_test$817:	; post call

file_test$818:	; call header integral zero 0 stack zero 0

file_test$819:	; parameter tempFilePtr, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

file_test$820:	; call function noellipse-noellipse fgetc
	mov qword [rbp + 56], file_test$821
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fgetc

file_test$821:	; post call

file_test$822:	; £temporary3716 = return_value

file_test$823:	; £temporary3717 = int_to_int £temporary3716 (Signed_Int -> Signed_Char)
	cmp ebx, 0
	jge file_test$824
	neg ebx
	neg bl

file_test$824:	; c = £temporary3717
	mov [rbp + 56], bl

file_test$825:	; £temporary3718 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 56]
	and eax, 255
	cmp al, 0
	jge file_test$826
	neg al
	neg eax

file_test$826:	; if £temporary3718 == int4$minus1# goto 834
	cmp eax, -1
	je file_test$834

file_test$827:	; call header integral zero 0 stack zero 0

file_test$828:	; £temporary3720 = int_to_int c (Signed_Char -> Signed_Int)
	mov al, [rbp + 56]
	and eax, 255
	cmp al, 0
	jge file_test$829
	neg al
	neg eax

file_test$829:	; parameter £temporary3720, offset 81
	mov [rbp + 81], eax

file_test$830:	; parameter inOutFilePtr, offset 85
	mov rax, [rbp + 48]
	mov [rbp + 85], rax

file_test$831:	; call function noellipse-noellipse putc
	mov qword [rbp + 57], file_test$832
	mov [rbp + 65], rbp
	add rbp, 57
	jmp putc

file_test$832:	; post call

file_test$833:	; goto 818
	jmp file_test$818

file_test$834:	; call header integral zero 0 stack zero 0

file_test$835:	; parameter inOutFilePtr, offset 80
	mov rax, [rbp + 48]
	mov [rbp + 80], rax

file_test$836:	; call function noellipse-noellipse fclose
	mov qword [rbp + 56], file_test$837
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fclose

file_test$837:	; post call

file_test$838:	; call header integral zero 0 stack zero 0

file_test$839:	; parameter tempFilePtr, offset 80
	mov rax, [rbp + 40]
	mov [rbp + 80], rax

file_test$840:	; call function noellipse-noellipse fclose
	mov qword [rbp + 56], file_test$841
	mov [rbp + 64], rbp
	add rbp, 56
	jmp fclose

file_test$841:	; post call

file_test$842:	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

file_test$843:	; function end file_test
section .data

$IntegralStorage#:
	times 8 db 0

string_r#:
	; initializer String
	db "r", 0

string_Assertion20failed3A202225s2220in20file2025s20at20line2025i0A#:
	; initializer String
	db "Assertion failed: ", 34, "%s", 34, " in file %s at line %i", 10, 0

string_inFilePtrPtr20213D20NULL#:
	; initializer String
	db "inFilePtrPtr != NULL", 0

string_C3A5CUsers5CStefan5CDocuments5Cvagrant5Chomestead5Ccode5Ccode5CFileTest2Ec#:
	; initializer String
	db "C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c", 0

string_w#:
	; initializer String
	db "w", 0

string_outFilePtrPtr20213D20NULL#:
	; initializer String
	db "outFilePtrPtr != NULL", 0

string_25i#:
	; initializer String
	db "%i", 0

string_25lf#:
	; initializer String
	db "%lf", 0

string_25f0A#:
	; initializer String
	db "%f", 10, 0

string_X#:
	; initializer String
	db "X", 0

string_Y#:
	; initializer String
	db "Y", 0

string_2225s2220has20been20renamed20to202225s222E0A#:
	; initializer String
	db 34, "%s", 34, " has been renamed to ", 34, "%s", 34, ".", 10, 0

string_Error2025i3A2025s2E0A#:
	; initializer String
	db "Error %i: %s.", 10, 0

string_Z#:
	; initializer String
	db "Z", 0

string_2225s2220has20been20removed2E0A#:
	; initializer String
	db 34, "%s", 34, " has been removed.", 10, 0

string_PBook2Etxt#:
	; initializer String
	db "PBook.txt", 0

string_inFilePtr20213D20NULL#:
	; initializer String
	db "inFilePtr != NULL", 0

string_0A252D24s20252D24s0A#:
	; initializer String
	db 10, "%-24s %-24s", 10, 0

string_Name#:
	; initializer String
	db "Name", 0

string_Phone#:
	; initializer String
	db "Phone", 0

string_252D24s20252D24s0A#:
	; initializer String
	db "%-24s %-24s", 10, 0

string_3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D#:
	; initializer String
	db "========================", 0

string_25s25s#:
	; initializer String
	db "%s%s", 0

string_0A#:
	; initializer String
	db 10, 0

string_Flow12Etxt#:
	; initializer String
	db "Flow1.txt", 0

string_Flow22Etxt#:
	; initializer String
	db "Flow2.txt", 0

string_outFilePtr20213D20NULL#:
	; initializer String
	db "outFilePtr != NULL", 0

string_Test2Ebin#:
	; initializer String
	db "Test.bin", 0

string_size12025i0A#:
	; initializer String
	db "size1 %i", 10, 0

string_index12025i3A20value2025f0A#:
	; initializer String
	db "index1 %i: value %f", 10, 0

string_size22025i0A#:
	; initializer String
	db "size2 %i", 10, 0

string_index22025i3A20value2025f0A#:
	; initializer String
	db "index2 %i: value %f", 10, 0

string_size32025i20total2025i0A#:
	; initializer String
	db "size3 %i total %i", 10, 0

string_p20213D20NULL#:
	; initializer String
	db "p != NULL", 0

string_malloc2025u2025u2025u0A#:
	; initializer String
	db "malloc %u %u %u", 10, 0

string_index32025i3A20value2025f0A#:
	; initializer String
	db "index3 %i: value %f", 10, 0

string_Adam20Bertilsson#:
	; initializer String
	db "Adam Bertilsson", 0

string_Bertil20Ceasarsson#:
	; initializer String
	db "Bertil Ceasarsson", 0

string_Ceasar20Davidsson#:
	; initializer String
	db "Ceasar Davidsson", 0

string_Block2Ebin#:
	; initializer String
	db "Block.bin", 0

string_Name20203A2025s0A#:
	; initializer String
	db "Name  : %s", 10, 0

string_Phone203A2025d0A#:
	; initializer String
	db "Phone : %d", 10, 0

string_Test12Etxt#:
	; initializer String
	db "Test1.txt", 0

string_0A0A#:
	; initializer String
	db 10, 10, 0

string_fileexists20X2025s0A#:
	; initializer String
	db "fileexists X %s", 10, 0

string_Yes#:
	; initializer String
	db "Yes", 0

string_No#:
	; initializer String
	db "No", 0

string_fileexists20Y2025s0A0A#:
	; initializer String
	db "fileexists Y %s", 10, 10, 0

string_PBookX2Etxt#:
	; initializer String
	db "PBookX.txt", 0

string_r2B#:
	; initializer String
	db "r+", 0

string_inOutFilePtr20213D20NULL#:
	; initializer String
	db "inOutFilePtr != NULL", 0

string_tempFilePtr20213D20NULL#:
	; initializer String
	db "tempFilePtr != NULL", 0

string_0A2D2D2D2D2D2D2D2D2D2D2D2D0A#:
	; initializer String
	db 10, "------------", 10, 0

Array_#:
	; initializer Array
	dq 8

int4$8#:
	; initializer Signed_Int
	dd 8

int8$8#:
	; initializer Pointer
	dq 8
