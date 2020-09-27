	global g_fileArray
	global stdin
	global stdout
	global stderr
	global fileexists
	global fopen
	global freopen
	global fflush
	global fclose
	global remove
	global rename
	global setvbuf
	global setbuf
	global fgetc
	global fgets
	global fputs
	global getchar
	global gets
	global puts
	global ungetc
	global fread
	global fwrite
	global fseek
	global ftell
	global rewind
	global fgetpos
	global fsetpos
	global clearerr
	global feof
	global ferror
	global perror

	extern strcmp
	extern strcpy
	extern fscanf
	extern strlen
	extern fputc
	extern errno
	extern strerror
	extern printf
	extern $StackTop
section .text

 @2622$filecreate:
	; rax = int8$85#
	mov rax, 85

 @2622$filecreate$1:
	; £temporary827 = int_to_int name (Pointer -> Unsigned_Long_Int)
	mov rdi, [rbp + 24]

 @2622$filecreate$2:
	; rdi = £temporary827

 @2622$filecreate$3:
	; rsi = int8$511#
	mov rsi, 511

 @2622$filecreate$4:
	; syscall
	syscall

 @2622$filecreate$5:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2622$filecreate$6:
	; function end filecreate

 fileexists:
	; return int4$1#
	mov ebx, 1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fileexists$1:
	; function end fileexists

 @2626$fileopen:
	; rax = int8$2#
	mov rax, 2

 @2626$fileopen$1:
	; £temporary831 = int_to_int name (Pointer -> Unsigned_Long_Int)
	mov rdi, [rbp + 24]

 @2626$fileopen$2:
	; rdi = £temporary831

 @2626$fileopen$3:
	; £temporary833 = int_to_int mode (Unsigned_Short_Int -> Unsigned_Long_Int)
	mov si, [rbp + 32]
	mov rbx, 65535
	and rsi, rbx

 @2626$fileopen$4:
	; rsi = £temporary833

 @2626$fileopen$5:
	; syscall
	syscall

 @2626$fileopen$6:
	; £temporary834 = rax

 @2626$fileopen$7:
	; £temporary835 = int_to_int £temporary834 (Unsigned_Long_Int -> Signed_Int)

 @2626$fileopen$8:
	; return £temporary835
	mov ebx, eax
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 @2626$fileopen$9:
	; function end fileopen

 fopen:
	; empty

 fopen$1:
	; index = int4$0#
	mov dword [rbp + 40], 0

 fopen$2:
	; if index >= int4$20# goto 23
	cmp dword [rbp + 40], 20
	jge fopen$23

 fopen$3:
	; £temporary839 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 fopen$4:
	; £temporary840 = £temporary839 * Array_41#
	xor rdx, rdx
	mul qword [Array_41#]

 fopen$5:
	; £temporary841 = g_fileArray + £temporary840
	mov rsi, g_fileArray
	add rsi, rax

 fopen$6:
	; £field838 -> £temporary841 = *£temporary841

 fopen$7:
	; if £field838.open -> £temporary841 != int4$0# goto 21
	cmp dword [rsi], 0
	jne fopen$21

 fopen$8:
	; call header integral zero 0 stack zero 0

 fopen$9:
	; parameter name, offset 68
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 fopen$10:
	; parameter mode, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 fopen$11:
	; £temporary845 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 40]
	mov rbx, 4294967295
	and rax, rbx

 fopen$12:
	; £temporary846 = £temporary845 * Array_41#
	xor rdx, rdx
	mul qword [Array_41#]

 fopen$13:
	; £temporary847 = g_fileArray + £temporary846
	mov rsi, g_fileArray
	add rsi, rax

 fopen$14:
	; £field844 -> £temporary847 = *£temporary847

 fopen$15:
	; £temporary848 = &£field844 -> £temporary847

 fopen$16:
	; parameter £temporary848, offset 84
	mov [rbp + 84], rsi

 fopen$17:
	; call function noellipse-noellipse freopen
	mov qword [rbp + 44], fopen$18
	mov [rbp + 52], rbp
	add rbp, 44
	jmp freopen

 fopen$18:
	; post call

 fopen$19:
	; £temporary849 = return_value

 fopen$20:
	; return £temporary849
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fopen$21:
	; index = index + int4$1#
	inc dword [rbp + 40]

 fopen$22:
	; goto 2
	jmp fopen$2

 fopen$23:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fopen$24:
	; function end fopen

 freopen:
	; handle = int4$minus1#
	mov dword [rbp + 48], -1

 freopen$1:
	; call header integral zero 0 stack zero 0

 freopen$2:
	; parameter mode, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$3:
	; parameter string_r#, offset 84
	mov qword [rbp + 84], string_r#

 freopen$4:
	; call function noellipse-noellipse strcmp
	mov qword [rbp + 52], freopen$5
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$5:
	; post call

 freopen$6:
	; £temporary850 = return_value

 freopen$7:
	; if £temporary850 != int4$0# goto 16
	cmp ebx, 0
	jne freopen$16

 freopen$8:
	; call header integral zero 0 stack zero 0

 freopen$9:
	; parameter name, offset 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$10:
	; parameter int2$64#, offset 84
	mov word [rbp + 84], 64

 freopen$11:
	; call function noellipse-noellipse fileopen
	mov qword [rbp + 52], freopen$12
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2626$fileopen

 freopen$12:
	; post call

 freopen$13:
	; £temporary852 = return_value

 freopen$14:
	; handle = £temporary852
	mov [rbp + 48], ebx

 freopen$15:
	; goto 130
	jmp freopen$130

 freopen$16:
	; call header integral zero 0 stack zero 0

 freopen$17:
	; parameter mode, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$18:
	; parameter string_w#, offset 84
	mov qword [rbp + 84], string_w#

 freopen$19:
	; call function noellipse-noellipse strcmp
	mov qword [rbp + 52], freopen$20
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$20:
	; post call

 freopen$21:
	; £temporary853 = return_value

 freopen$22:
	; if £temporary853 != int4$0# goto 30
	cmp ebx, 0
	jne freopen$30

 freopen$23:
	; call header integral zero 0 stack zero 0

 freopen$24:
	; parameter name, offset 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$25:
	; call function noellipse-noellipse filecreate
	mov qword [rbp + 52], freopen$26
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2622$filecreate

 freopen$26:
	; post call

 freopen$27:
	; £temporary855 = return_value

 freopen$28:
	; handle = £temporary855
	mov [rbp + 48], ebx

 freopen$29:
	; goto 130
	jmp freopen$130

 freopen$30:
	; call header integral zero 0 stack zero 0

 freopen$31:
	; parameter mode, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$32:
	; parameter string_a#, offset 84
	mov qword [rbp + 84], string_a#

 freopen$33:
	; call function noellipse-noellipse strcmp
	mov qword [rbp + 52], freopen$34
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$34:
	; post call

 freopen$35:
	; £temporary856 = return_value

 freopen$36:
	; if £temporary856 != int4$0# goto 59
	cmp ebx, 0
	jne freopen$59

 freopen$37:
	; call header integral zero 0 stack zero 0

 freopen$38:
	; parameter name, offset 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$39:
	; parameter int2$65#, offset 84
	mov word [rbp + 84], 65

 freopen$40:
	; call function noellipse-noellipse fileopen
	mov qword [rbp + 52], freopen$41
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2626$fileopen

 freopen$41:
	; post call

 freopen$42:
	; £temporary858 = return_value

 freopen$43:
	; handle = £temporary858
	mov [rbp + 48], ebx

 freopen$44:
	; if handle == int4$minus1# goto 52
	cmp dword [rbp + 48], -1
	je freopen$52

 freopen$45:
	; call header integral zero 0 stack zero 0

 freopen$46:
	; parameter stream, offset 76
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 freopen$47:
	; parameter int4$0#, offset 84
	mov dword [rbp + 84], 0

 freopen$48:
	; parameter int4$2#, offset 88
	mov dword [rbp + 88], 2

 freopen$49:
	; call function noellipse-noellipse fseek
	mov qword [rbp + 52], freopen$50
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fseek

 freopen$50:
	; post call

 freopen$51:
	; goto 130
	jmp freopen$130

 freopen$52:
	; call header integral zero 0 stack zero 0

 freopen$53:
	; parameter name, offset 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$54:
	; call function noellipse-noellipse filecreate
	mov qword [rbp + 52], freopen$55
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2622$filecreate

 freopen$55:
	; post call

 freopen$56:
	; £temporary861 = return_value

 freopen$57:
	; handle = £temporary861
	mov [rbp + 48], ebx

 freopen$58:
	; goto 130
	jmp freopen$130

 freopen$59:
	; call header integral zero 0 stack zero 0

 freopen$60:
	; parameter mode, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$61:
	; parameter string_r2B#, offset 84
	mov qword [rbp + 84], string_r2B#

 freopen$62:
	; call function noellipse-noellipse strcmp
	mov qword [rbp + 52], freopen$63
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$63:
	; post call

 freopen$64:
	; £temporary862 = return_value

 freopen$65:
	; if £temporary862 != int4$0# goto 74
	cmp ebx, 0
	jne freopen$74

 freopen$66:
	; call header integral zero 0 stack zero 0

 freopen$67:
	; parameter name, offset 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$68:
	; parameter int2$66#, offset 84
	mov word [rbp + 84], 66

 freopen$69:
	; call function noellipse-noellipse fileopen
	mov qword [rbp + 52], freopen$70
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2626$fileopen

 freopen$70:
	; post call

 freopen$71:
	; £temporary864 = return_value

 freopen$72:
	; handle = £temporary864
	mov [rbp + 48], ebx

 freopen$73:
	; goto 130
	jmp freopen$130

 freopen$74:
	; call header integral zero 0 stack zero 0

 freopen$75:
	; parameter mode, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$76:
	; parameter string_w2B#, offset 84
	mov qword [rbp + 84], string_w2B#

 freopen$77:
	; call function noellipse-noellipse strcmp
	mov qword [rbp + 52], freopen$78
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$78:
	; post call

 freopen$79:
	; £temporary865 = return_value

 freopen$80:
	; if £temporary865 != int4$0# goto 102
	cmp ebx, 0
	jne freopen$102

 freopen$81:
	; call header integral zero 0 stack zero 0

 freopen$82:
	; parameter name, offset 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$83:
	; call function noellipse-noellipse fileexists
	mov qword [rbp + 52], freopen$84
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fileexists

 freopen$84:
	; post call

 freopen$85:
	; £temporary867 = return_value

 freopen$86:
	; if £temporary867 == int4$0# goto 95
	cmp ebx, 0
	je freopen$95

 freopen$87:
	; call header integral zero 0 stack zero 0

 freopen$88:
	; parameter name, offset 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$89:
	; parameter int2$66#, offset 84
	mov word [rbp + 84], 66

 freopen$90:
	; call function noellipse-noellipse fileopen
	mov qword [rbp + 52], freopen$91
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2626$fileopen

 freopen$91:
	; post call

 freopen$92:
	; £temporary868 = return_value

 freopen$93:
	; handle = £temporary868
	mov [rbp + 48], ebx

 freopen$94:
	; goto 130
	jmp freopen$130

 freopen$95:
	; call header integral zero 0 stack zero 0

 freopen$96:
	; parameter name, offset 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$97:
	; call function noellipse-noellipse filecreate
	mov qword [rbp + 52], freopen$98
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2622$filecreate

 freopen$98:
	; post call

 freopen$99:
	; £temporary869 = return_value

 freopen$100:
	; handle = £temporary869
	mov [rbp + 48], ebx

 freopen$101:
	; goto 130
	jmp freopen$130

 freopen$102:
	; call header integral zero 0 stack zero 0

 freopen$103:
	; parameter mode, offset 76
	mov rax, [rbp + 32]
	mov [rbp + 76], rax

 freopen$104:
	; parameter string_a2B#, offset 84
	mov qword [rbp + 84], string_a2B#

 freopen$105:
	; call function noellipse-noellipse strcmp
	mov qword [rbp + 52], freopen$106
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcmp

 freopen$106:
	; post call

 freopen$107:
	; £temporary871 = return_value

 freopen$108:
	; if £temporary871 != int4$0# goto 130
	cmp ebx, 0
	jne freopen$130

 freopen$109:
	; call header integral zero 0 stack zero 0

 freopen$110:
	; parameter name, offset 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$111:
	; parameter int2$66#, offset 84
	mov word [rbp + 84], 66

 freopen$112:
	; call function noellipse-noellipse fileopen
	mov qword [rbp + 52], freopen$113
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2626$fileopen

 freopen$113:
	; post call

 freopen$114:
	; £temporary873 = return_value

 freopen$115:
	; handle = £temporary873
	mov [rbp + 48], ebx

 freopen$116:
	; if handle == int4$minus1# goto 124
	cmp dword [rbp + 48], -1
	je freopen$124

 freopen$117:
	; call header integral zero 0 stack zero 0

 freopen$118:
	; parameter stream, offset 76
	mov rax, [rbp + 40]
	mov [rbp + 76], rax

 freopen$119:
	; parameter int4$0#, offset 84
	mov dword [rbp + 84], 0

 freopen$120:
	; parameter int4$2#, offset 88
	mov dword [rbp + 88], 2

 freopen$121:
	; call function noellipse-noellipse fseek
	mov qword [rbp + 52], freopen$122
	mov [rbp + 60], rbp
	add rbp, 52
	jmp fseek

 freopen$122:
	; post call

 freopen$123:
	; goto 130
	jmp freopen$130

 freopen$124:
	; call header integral zero 0 stack zero 0

 freopen$125:
	; parameter name, offset 76
	mov rax, [rbp + 24]
	mov [rbp + 76], rax

 freopen$126:
	; call function noellipse-noellipse filecreate
	mov qword [rbp + 52], freopen$127
	mov [rbp + 60], rbp
	add rbp, 52
	jmp @2622$filecreate

 freopen$127:
	; post call

 freopen$128:
	; £temporary876 = return_value

 freopen$129:
	; handle = £temporary876
	mov [rbp + 48], ebx

 freopen$130:
	; if handle == int4$minus1# goto 146
	cmp dword [rbp + 48], -1
	je freopen$146

 freopen$131:
	; £field878 -> stream = *stream
	mov rsi, [rbp + 40]

 freopen$132:
	; £field878 -> stream = int4$1#
	mov dword [rsi], 1

 freopen$133:
	; £field879 -> stream = *stream
	mov rsi, [rbp + 40]

 freopen$134:
	; £field879 -> stream = handle
	mov eax, [rbp + 48]
	mov [rsi + 4], eax

 freopen$135:
	; £field880 -> stream = *stream
	mov rsi, [rbp + 40]

 freopen$136:
	; £field880 -> stream = int4$0#
	mov dword [rsi + 33], 0

 freopen$137:
	; call header integral zero 0 stack zero 0

 freopen$138:
	; £field881 -> stream = *stream
	mov rsi, [rbp + 40]

 freopen$139:
	; parameter £field881 -> stream, offset 76
	mov [rbp + 76], rsi
	add qword [rbp + 76], 8

 freopen$140:
	; parameter name, offset 84
	mov rax, [rbp + 24]
	mov [rbp + 84], rax

 freopen$141:
	; call function noellipse-noellipse strcpy
	mov qword [rbp + 52], freopen$142
	mov [rbp + 60], rbp
	add rbp, 52
	jmp strcpy

 freopen$142:
	; post call

 freopen$143:
	; £field883 -> stream = *stream
	mov rsi, [rbp + 40]

 freopen$144:
	; £field883 -> stream = int4$0#
	mov dword [rsi + 37], 0

 freopen$145:
	; return stream
	mov rbx, [rbp + 40]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 freopen$146:
	; £field884 -> stream = *stream
	mov rsi, [rbp + 40]

 freopen$147:
	; £field884 -> stream = int4$0#
	mov dword [rsi], 0

 freopen$148:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 freopen$149:
	; function end freopen

 fflush:
	; if stream != int8$0# goto 22
	cmp qword [rbp + 24], 0
	jne fflush$22

 fflush$1:
	; index = int4$0#
	mov dword [rbp + 32], 0

 fflush$2:
	; if index >= int4$20# goto 22
	cmp dword [rbp + 32], 20
	jge fflush$22

 fflush$3:
	; £temporary889 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 fflush$4:
	; £temporary890 = £temporary889 * Array_41#
	xor rdx, rdx
	mul qword [Array_41#]

 fflush$5:
	; £temporary891 = g_fileArray + £temporary890
	mov rsi, g_fileArray
	add rsi, rax

 fflush$6:
	; £field888 -> £temporary891 = *£temporary891

 fflush$7:
	; if £field888.open -> £temporary891 == int4$0# goto 20
	cmp dword [rsi], 0
	je fflush$20

 fflush$8:
	; call header integral zero 0 stack zero 0

 fflush$9:
	; £temporary893 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 fflush$10:
	; £temporary894 = £temporary893 * Array_41#
	xor rdx, rdx
	mul qword [Array_41#]

 fflush$11:
	; £temporary895 = g_fileArray + £temporary894
	mov rsi, g_fileArray
	add rsi, rax

 fflush$12:
	; £field892 -> £temporary895 = *£temporary895

 fflush$13:
	; £temporary896 = &£field892 -> £temporary895

 fflush$14:
	; parameter £temporary896, offset 60
	mov [rbp + 60], rsi

 fflush$15:
	; call function noellipse-noellipse fflush
	mov qword [rbp + 36], fflush$16
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fflush

 fflush$16:
	; post call

 fflush$17:
	; £temporary897 = return_value

 fflush$18:
	; if £temporary897 != int4$minus1# goto 20
	cmp ebx, -1
	jne fflush$20

 fflush$19:
	; return int4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fflush$20:
	; index = index + int4$1#
	inc dword [rbp + 32]

 fflush$21:
	; goto 2
	jmp fflush$2

 fflush$22:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fflush$23:
	; function end fflush

 fclose:
	; if stream == int8$0# goto 7
	cmp qword [rbp + 24], 0
	je fclose$7

 fclose$1:
	; rax = int8$3#
	mov rax, 3

 fclose$2:
	; £field903 -> stream = *stream
	mov rsi, [rbp + 24]

 fclose$3:
	; £temporary904 = int_to_int £field903 -> stream (Unsigned_Int -> Unsigned_Long_Int)
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fclose$4:
	; rdi = £temporary904

 fclose$5:
	; syscall
	syscall

 fclose$6:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$7:
	; index = int4$0#
	mov dword [rbp + 32], 0

 fclose$8:
	; if index >= int4$20# goto 28
	cmp dword [rbp + 32], 20
	jge fclose$28

 fclose$9:
	; £temporary908 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 fclose$10:
	; £temporary909 = £temporary908 * Array_41#
	xor rdx, rdx
	mul qword [Array_41#]

 fclose$11:
	; £temporary910 = g_fileArray + £temporary909
	mov rsi, g_fileArray
	add rsi, rax

 fclose$12:
	; £field907 -> £temporary910 = *£temporary910

 fclose$13:
	; if £field907.open -> £temporary910 == int4$0# goto 26
	cmp dword [rsi], 0
	je fclose$26

 fclose$14:
	; call header integral zero 0 stack zero 0

 fclose$15:
	; £temporary912 = int_to_int index (Signed_Int -> Array)
	mov eax, [rbp + 32]
	mov rbx, 4294967295
	and rax, rbx

 fclose$16:
	; £temporary913 = £temporary912 * Array_41#
	xor rdx, rdx
	mul qword [Array_41#]

 fclose$17:
	; £temporary914 = g_fileArray + £temporary913
	mov rsi, g_fileArray
	add rsi, rax

 fclose$18:
	; £field911 -> £temporary914 = *£temporary914

 fclose$19:
	; £temporary915 = &£field911 -> £temporary914

 fclose$20:
	; parameter £temporary915, offset 60
	mov [rbp + 60], rsi

 fclose$21:
	; call function noellipse-noellipse fclose
	mov qword [rbp + 36], fclose$22
	mov [rbp + 44], rbp
	add rbp, 36
	jmp fclose

 fclose$22:
	; post call

 fclose$23:
	; £temporary916 = return_value

 fclose$24:
	; if £temporary916 != int4$minus1# goto 26
	cmp ebx, -1
	jne fclose$26

 fclose$25:
	; return int4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$26:
	; index = index + int4$1#
	inc dword [rbp + 32]

 fclose$27:
	; goto 8
	jmp fclose$8

 fclose$28:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fclose$29:
	; function end fclose

 remove:
	; rax = int8$88#
	mov rax, 88

 remove$1:
	; £temporary921 = int_to_int name (Pointer -> Unsigned_Long_Int)
	mov rdi, [rbp + 24]

 remove$2:
	; rdi = £temporary921

 remove$3:
	; syscall
	syscall

 remove$4:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 remove$5:
	; function end remove

 rename:
	; rax = int8$82#
	mov rax, 82

 rename$1:
	; £temporary924 = int_to_int oldName (Pointer -> Unsigned_Long_Int)
	mov rdi, [rbp + 24]

 rename$2:
	; rdi = £temporary924

 rename$3:
	; £temporary926 = int_to_int newName (Pointer -> Unsigned_Long_Int)
	mov rsi, [rbp + 32]

 rename$4:
	; rsi = £temporary926

 rename$5:
	; syscall
	syscall

 rename$6:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rename$7:
	; function end rename

 setvbuf:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setvbuf$1:
	; function end setvbuf

 setbuf:
	; empty

 setbuf$1:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 setbuf$2:
	; function end setbuf

 fgetc:
	; c = int1$0#
	mov byte [rbp + 32], 0

 fgetc$1:
	; call header integral zero 0 stack zero 0

 fgetc$2:
	; £temporary927 = &c
	mov rsi, rbp
	add rsi, 32

 fgetc$3:
	; parameter £temporary927, offset 57
	mov [rbp + 57], rsi

 fgetc$4:
	; parameter int4$1#, offset 65
	mov dword [rbp + 65], 1

 fgetc$5:
	; parameter int4$1#, offset 69
	mov dword [rbp + 69], 1

 fgetc$6:
	; parameter stream, offset 73
	mov rax, [rbp + 24]
	mov [rbp + 73], rax

 fgetc$7:
	; call function noellipse-noellipse fread
	mov qword [rbp + 33], fgetc$8
	mov [rbp + 41], rbp
	add rbp, 33
	jmp fread

 fgetc$8:
	; post call

 fgetc$9:
	; £temporary928 = return_value

 fgetc$10:
	; if £temporary928 <= int4$0# goto 13
	cmp ebx, 0
	jle fgetc$13

 fgetc$11:
	; £temporary930 = int_to_int c (Signed_Char -> Signed_Int)
	mov bl, [rbp + 32]
	and ebx, 255
	cmp bl, 0
	jge fgetc$12
	neg bl
	neg ebx

 fgetc$12:
	; return £temporary930
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetc$13:
	; return int4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetc$14:
	; function end fgetc

 fgets:
	; count = int4$0#
	mov dword [rbp + 44], 0

 fgets$1:
	; prevChar = int1$0#
	mov byte [rbp + 48], 0

 fgets$2:
	; £temporary932 = size - int4$1#
	mov eax, [rbp + 32]
	dec eax

 fgets$3:
	; if count >= £temporary932 goto 36
	cmp [rbp + 44], eax
	jge fgets$36

 fgets$4:
	; currChar = int1$0#
	mov byte [rbp + 49], 0

 fgets$5:
	; call header integral zero 0 stack zero 0

 fgets$6:
	; parameter stream, offset 74
	mov rax, [rbp + 36]
	mov [rbp + 74], rax

 fgets$7:
	; parameter string_25c#, offset 82
	mov qword [rbp + 82], string_25c#

 fgets$8:
	; £temporary934 = &currChar
	mov rsi, rbp
	add rsi, 49

 fgets$9:
	; parameter £temporary934, offset 90
	mov [rbp + 90], rsi

 fgets$10:
	; call function noellipse-ellipse fscanf, extra 8
	mov qword [rbp + 50], fgets$11
	mov [rbp + 58], rbp
	add rbp, 50
	mov rdi, rbp
	add rdi, 8
	jmp fscanf

 fgets$11:
	; post call

 fgets$12:
	; if prevChar != int1$13# goto 19
	cmp byte [rbp + 48], 13
	jne fgets$19

 fgets$13:
	; if currChar != int1$10# goto 19
	cmp byte [rbp + 49], 10
	jne fgets$19

 fgets$14:
	; £temporary940 = int_to_int count (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 fgets$15:
	; £temporary942 = text + £temporary940
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$16:
	; £field939 -> £temporary942 = *£temporary942

 fgets$17:
	; £field939 -> £temporary942 = int1$0#
	mov byte [rsi], 0

 fgets$18:
	; goto 36
	jmp fgets$36

 fgets$19:
	; £temporary943 = int_to_int currChar (Signed_Char -> Signed_Int)
	mov al, [rbp + 49]
	and eax, 255
	cmp al, 0
	jge fgets$20
	neg al
	neg eax

 fgets$20:
	; if £temporary943 != int4$minus1# goto 26
	cmp eax, -1
	jne fgets$26

 fgets$21:
	; £temporary946 = int_to_int count (Signed_Int -> Pointer)
	mov eax, [rbp + 44]
	mov rbx, 4294967295
	and rax, rbx

 fgets$22:
	; £temporary948 = text + £temporary946
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$23:
	; £field945 -> £temporary948 = *£temporary948

 fgets$24:
	; £field945 -> £temporary948 = int1$0#
	mov byte [rsi], 0

 fgets$25:
	; goto 36
	jmp fgets$36

 fgets$26:
	; if currChar == int1$13# goto 34
	cmp byte [rbp + 49], 13
	je fgets$34

 fgets$27:
	; if currChar == int1$10# goto 34
	cmp byte [rbp + 49], 10
	je fgets$34

 fgets$28:
	; £temporary952 = count
	mov eax, [rbp + 44]

 fgets$29:
	; count = count + int4$1#
	inc dword [rbp + 44]

 fgets$30:
	; £temporary954 = int_to_int £temporary952 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 fgets$31:
	; £temporary956 = text + £temporary954
	mov rsi, [rbp + 24]
	add rsi, rax

 fgets$32:
	; £field953 -> £temporary956 = *£temporary956

 fgets$33:
	; £field953 -> £temporary956 = currChar
	mov al, [rbp + 49]
	mov [rsi], al

 fgets$34:
	; prevChar = currChar
	mov al, [rbp + 49]
	mov [rbp + 48], al

 fgets$35:
	; goto 2
	jmp fgets$2

 fgets$36:
	; return text
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgets$37:
	; function end fgets

 fputs:
	; call header integral zero 0 stack zero 0

 fputs$1:
	; parameter s, offset 64
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 fputs$2:
	; call function noellipse-noellipse strlen
	mov qword [rbp + 40], fputs$3
	mov [rbp + 48], rbp
	add rbp, 40
	jmp strlen

 fputs$3:
	; post call

 fputs$4:
	; £temporary958 = return_value

 fputs$5:
	; size = £temporary958 + int4$1#
	inc ebx
	mov [rbp + 40], ebx

 fputs$6:
	; call header integral zero 0 stack zero 0

 fputs$7:
	; parameter s, offset 68
	mov rax, [rbp + 24]
	mov [rbp + 68], rax

 fputs$8:
	; parameter size, offset 76
	mov eax, [rbp + 40]
	mov [rbp + 76], eax

 fputs$9:
	; parameter int4$1#, offset 80
	mov dword [rbp + 80], 1

 fputs$10:
	; parameter stream, offset 84
	mov rax, [rbp + 32]
	mov [rbp + 84], rax

 fputs$11:
	; call function noellipse-noellipse fwrite
	mov qword [rbp + 44], fputs$12
	mov [rbp + 52], rbp
	add rbp, 44
	jmp fwrite

 fputs$12:
	; post call

 fputs$13:
	; £temporary961 = return_value

 fputs$14:
	; if £temporary961 != size goto 17
	cmp ebx, [rbp + 40]
	jne fputs$17

 fputs$15:
	; £temporary963 = int4$0#
	mov ebx, 0

 fputs$16:
	; goto 18
	jmp fputs$18

 fputs$17:
	; £temporary963 = int4$minus1#
	mov ebx, -1

 fputs$18:
	; return £temporary963
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fputs$19:
	; function end fputs

 getchar:
	; call header integral zero 0 stack zero 0

 getchar$1:
	; parameter stdin, offset 48
	mov rax, [stdin]
	mov [rbp + 48], rax

 getchar$2:
	; call function noellipse-noellipse fgetc
	mov qword [rbp + 24], getchar$3
	mov [rbp + 32], rbp
	add rbp, 24
	jmp fgetc

 getchar$3:
	; post call

 getchar$4:
	; £temporary964 = return_value

 getchar$5:
	; return £temporary964
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 getchar$6:
	; function end getchar

 gets:
	; call header integral zero 0 stack zero 0

 gets$1:
	; parameter s, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 gets$2:
	; parameter int4$minus1#, offset 64
	mov dword [rbp + 64], -1

 gets$3:
	; parameter stdin, offset 68
	mov rax, [stdin]
	mov [rbp + 68], rax

 gets$4:
	; call function noellipse-noellipse fgets
	mov qword [rbp + 32], gets$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fgets

 gets$5:
	; post call

 gets$6:
	; £temporary965 = return_value

 gets$7:
	; if £temporary965 == int8$0# goto 21
	cmp rbx, 0
	je gets$21

 gets$8:
	; call header integral zero 0 stack zero 0

 gets$9:
	; parameter s, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 gets$10:
	; call function noellipse-noellipse strlen
	mov qword [rbp + 32], gets$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp strlen

 gets$11:
	; post call

 gets$12:
	; £temporary967 = return_value

 gets$13:
	; size = £temporary967
	mov [rbp + 32], ebx

 gets$14:
	; if size <= int4$0# goto 20
	cmp dword [rbp + 32], 0
	jle gets$20

 gets$15:
	; £temporary969 = size - int4$1#
	mov eax, [rbp + 32]
	dec eax

 gets$16:
	; £temporary971 = int_to_int £temporary969 (Signed_Int -> Pointer)
	mov rbx, 4294967295
	and rax, rbx

 gets$17:
	; £temporary973 = s + £temporary971
	mov rsi, [rbp + 24]
	add rsi, rax

 gets$18:
	; £field970 -> £temporary973 = *£temporary973

 gets$19:
	; £field970 -> £temporary973 = int1$0#
	mov byte [rsi], 0

 gets$20:
	; return s
	mov rbx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gets$21:
	; return int8$0#
	mov rbx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 gets$22:
	; function end gets

 puts:
	; call header integral zero 0 stack zero 0

 puts$1:
	; parameter s, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 puts$2:
	; parameter stdout, offset 64
	mov rax, [stdout]
	mov [rbp + 64], rax

 puts$3:
	; call function noellipse-noellipse fputs
	mov qword [rbp + 32], puts$4
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fputs

 puts$4:
	; post call

 puts$5:
	; £temporary974 = return_value

 puts$6:
	; if £temporary974 == int4$0# goto 14
	cmp ebx, 0
	je puts$14

 puts$7:
	; call header integral zero 0 stack zero 0

 puts$8:
	; parameter int4$10#, offset 56
	mov dword [rbp + 56], 10

 puts$9:
	; parameter stdout, offset 60
	mov rax, [stdout]
	mov [rbp + 60], rax

 puts$10:
	; call function noellipse-noellipse fputc
	mov qword [rbp + 32], puts$11
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fputc

 puts$11:
	; post call

 puts$12:
	; £temporary976 = return_value

 puts$13:
	; return £temporary976
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 puts$14:
	; return int4$minus1#
	mov ebx, -1
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 puts$15:
	; function end puts

 ungetc:
	; £field977 -> stream = *stream
	mov rsi, [rbp + 28]

 ungetc$1:
	; £temporary978 = int_to_int £field977 -> stream (Signed_Char -> Signed_Int)
	mov al, [rsi + 24]
	and eax, 255
	cmp al, 0
	jge ungetc$2
	neg al
	neg eax

 ungetc$2:
	; if £temporary978 == int4$minus1# goto 6
	cmp eax, -1
	je ungetc$6

 ungetc$3:
	; £field980 -> stream = *stream
	mov rsi, [rbp + 28]

 ungetc$4:
	; £temporary981 = int_to_int c (Signed_Int -> Signed_Char)
	mov eax, [rbp + 24]
	cmp eax, 0
	jge ungetc$5
	neg eax
	neg al

 ungetc$5:
	; £field980 -> stream = £temporary981
	mov [rsi + 24], al

 ungetc$6:
	; return c
	mov ebx, [rbp + 24]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ungetc$7:
	; function end ungetc

 fread:
	; rax = int8$0#
	mov rax, 0

 fread$1:
	; £field984 -> stream = *stream
	mov rsi, [rbp + 40]

 fread$2:
	; £temporary985 = int_to_int £field984 -> stream (Unsigned_Int -> Unsigned_Long_Int)
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fread$3:
	; rdi = £temporary985

 fread$4:
	; £temporary987 = int_to_int ptr (Pointer -> Unsigned_Long_Int)
	mov rsi, [rbp + 24]

 fread$5:
	; rsi = £temporary987

 fread$6:
	; £temporary989 = size * nobj
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [rbp + 36]

 fread$7:
	; £temporary990 = int_to_int £temporary989 (Signed_Int -> Unsigned_Long_Int)
	mov rbx, 4294967295
	and rax, rbx

 fread$8:
	; rdx = £temporary990
	mov rdx, rax

 fread$9:
	; syscall
	syscall

 fread$10:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fread$11:
	; function end fread

 fwrite:
	; rax = int8$0#
	mov rax, 0

 fwrite$1:
	; £field993 -> stream = *stream
	mov rsi, [rbp + 40]

 fwrite$2:
	; £temporary994 = int_to_int £field993 -> stream (Unsigned_Int -> Unsigned_Long_Int)
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fwrite$3:
	; rdi = £temporary994

 fwrite$4:
	; £temporary996 = int_to_int ptr (Pointer -> Unsigned_Long_Int)
	mov rsi, [rbp + 24]

 fwrite$5:
	; rsi = £temporary996

 fwrite$6:
	; £temporary998 = size * nobj
	mov eax, [rbp + 32]
	xor edx, edx
	imul dword [rbp + 36]

 fwrite$7:
	; £temporary999 = int_to_int £temporary998 (Signed_Int -> Unsigned_Long_Int)
	mov rbx, 4294967295
	and rax, rbx

 fwrite$8:
	; rdx = £temporary999
	mov rdx, rax

 fwrite$9:
	; syscall
	syscall

 fwrite$10:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fwrite$11:
	; function end fwrite

 fseek:
	; rax = int8$8#
	mov rax, 8

 fseek$1:
	; £field1002 -> stream = *stream
	mov rsi, [rbp + 24]

 fseek$2:
	; £temporary1003 = int_to_int £field1002 -> stream (Unsigned_Int -> Unsigned_Long_Int)
	mov edi, [rsi + 4]
	mov rbx, 4294967295
	and rdi, rbx

 fseek$3:
	; rdi = £temporary1003

 fseek$4:
	; £temporary1005 = int_to_int offset (Signed_Int -> Unsigned_Long_Int)
	mov esi, [rbp + 32]
	mov rbx, 4294967295
	and rsi, rbx

 fseek$5:
	; rsi = £temporary1005

 fseek$6:
	; £temporary1007 = int_to_int origin (Signed_Int -> Unsigned_Long_Int)
	mov edx, [rbp + 36]
	mov rbx, 4294967295
	and rdx, rbx

 fseek$7:
	; rdx = £temporary1007

 fseek$8:
	; syscall
	syscall

 fseek$9:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fseek$10:
	; function end fseek

 ftell:
	; call header integral zero 0 stack zero 0

 ftell$1:
	; parameter stream, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 ftell$2:
	; parameter int4$0#, offset 64
	mov dword [rbp + 64], 0

 ftell$3:
	; parameter int4$1#, offset 68
	mov dword [rbp + 68], 1

 ftell$4:
	; call function noellipse-noellipse fseek
	mov qword [rbp + 32], ftell$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fseek

 ftell$5:
	; post call

 ftell$6:
	; £temporary1008 = return_value

 ftell$7:
	; return £temporary1008
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ftell$8:
	; function end ftell

 rewind:
	; empty

 rewind$1:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 rewind$2:
	; function end rewind

 fgetpos:
	; £field1011 -> ptr = *ptr
	mov rsi, [rbp + 32]

 fgetpos$1:
	; call header integral no zero 1 stack zero 0
	mov [rbp + 40], rsi

 fgetpos$2:
	; parameter stream, offset 64
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 fgetpos$3:
	; call function noellipse-noellipse ftell
	mov qword [rbp + 48], fgetpos$4
	mov [rbp + 56], rbp
	add rbp, 48
	jmp ftell

 fgetpos$4:
	; post call
	mov rsi, [rbp + 40]

 fgetpos$5:
	; £temporary1012 = return_value

 fgetpos$6:
	; £temporary1013 = int_to_int £temporary1012 (Signed_Int -> Signed_Int)

 fgetpos$7:
	; £field1011 -> ptr = £temporary1013
	mov [rsi], ebx

 fgetpos$8:
	; return int4$0#
	mov ebx, 0
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fgetpos$9:
	; function end fgetpos

 fsetpos:
	; call header integral zero 0 stack zero 0

 fsetpos$1:
	; parameter stream, offset 64
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 fsetpos$2:
	; £field1014 -> ptr = *ptr
	mov rsi, [rbp + 32]

 fsetpos$3:
	; parameter £field1014 -> ptr, offset 72
	mov eax, [rsi]
	mov [rbp + 72], eax

 fsetpos$4:
	; parameter int4$0#, offset 76
	mov dword [rbp + 76], 0

 fsetpos$5:
	; call function noellipse-noellipse fseek
	mov qword [rbp + 40], fsetpos$6
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fseek

 fsetpos$6:
	; post call

 fsetpos$7:
	; £temporary1015 = return_value

 fsetpos$8:
	; £temporary1016 = int_to_int £temporary1015 (Signed_Int -> Signed_Int)

 fsetpos$9:
	; return £temporary1016
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 fsetpos$10:
	; function end fsetpos

 clearerr:
	; £field1017 -> stream = *stream
	mov rsi, [rbp + 24]

 clearerr$1:
	; errno = int4$0#
	mov dword [errno], 0

 clearerr$2:
	; £field1017 -> stream = errno
	mov eax, [errno]
	mov [rsi + 25], eax

 clearerr$3:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 clearerr$4:
	; function end clearerr

 feof:
	; call header integral zero 0 stack zero 0

 feof$1:
	; parameter stream, offset 56
	mov rax, [rbp + 24]
	mov [rbp + 56], rax

 feof$2:
	; parameter int4$0#, offset 64
	mov dword [rbp + 64], 0

 feof$3:
	; parameter int4$1#, offset 68
	mov dword [rbp + 68], 1

 feof$4:
	; call function noellipse-noellipse fseek
	mov qword [rbp + 32], feof$5
	mov [rbp + 40], rbp
	add rbp, 32
	jmp fseek

 feof$5:
	; post call

 feof$6:
	; £temporary1018 = return_value

 feof$7:
	; £temporary1019 = int_to_int £temporary1018 (Signed_Int -> Unsigned_Long_Int)
	mov rax, 4294967295
	and rbx, rax

 feof$8:
	; currPosition = £temporary1019
	mov [rbp + 32], rbx

 feof$9:
	; call header integral zero 0 stack zero 0

 feof$10:
	; parameter stream, offset 64
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 feof$11:
	; parameter int4$0#, offset 72
	mov dword [rbp + 72], 0

 feof$12:
	; parameter int4$2#, offset 76
	mov dword [rbp + 76], 2

 feof$13:
	; call function noellipse-noellipse fseek
	mov qword [rbp + 40], feof$14
	mov [rbp + 48], rbp
	add rbp, 40
	jmp fseek

 feof$14:
	; post call

 feof$15:
	; £temporary1020 = return_value

 feof$16:
	; £temporary1021 = int_to_int £temporary1020 (Signed_Int -> Unsigned_Long_Int)
	mov rax, 4294967295
	and rbx, rax

 feof$17:
	; lastPosition = £temporary1021
	mov [rbp + 40], rbx

 feof$18:
	; call header integral zero 0 stack zero 0

 feof$19:
	; parameter stream, offset 72
	mov rax, [rbp + 24]
	mov [rbp + 72], rax

 feof$20:
	; £temporary1022 = int_to_int currPosition (Unsigned_Long_Int -> Signed_Int)
	mov rax, [rbp + 32]

 feof$21:
	; parameter £temporary1022, offset 80
	mov [rbp + 80], eax

 feof$22:
	; parameter int4$0#, offset 84
	mov dword [rbp + 84], 0

 feof$23:
	; call function noellipse-noellipse fseek
	mov qword [rbp + 48], feof$24
	mov [rbp + 56], rbp
	add rbp, 48
	jmp fseek

 feof$24:
	; post call

 feof$25:
	; if currPosition != lastPosition goto 28
	mov rax, [rbp + 40]
	cmp [rbp + 32], rax
	jne feof$28

 feof$26:
	; £temporary1025 = int4$1#
	mov eax, 1

 feof$27:
	; goto 29
	jmp feof$29

 feof$28:
	; £temporary1025 = int4$0#
	mov eax, 0

 feof$29:
	; endOfFile = £temporary1025
	mov [rbp + 48], eax

 feof$30:
	; return endOfFile
	mov ebx, [rbp + 48]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 feof$31:
	; function end feof

 ferror:
	; £field1026 -> stream = *stream
	mov rsi, [rbp + 24]

 ferror$1:
	; return £field1026 -> stream
	mov ebx, [rsi + 25]
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 ferror$2:
	; function end ferror

 perror:
	; call header integral zero 0 stack zero 0

 perror$1:
	; parameter string_25s3A2025s2E0A#, offset 56
	mov qword [rbp + 56], string_25s3A2025s2E0A#

 perror$2:
	; parameter s, offset 64
	mov rax, [rbp + 24]
	mov [rbp + 64], rax

 perror$3:
	; call header integral zero 0 stack zero 0

 perror$4:
	; parameter errno, offset 96
	mov eax, [errno]
	mov [rbp + 96], eax

 perror$5:
	; call function noellipse-noellipse strerror
	mov qword [rbp + 72], perror$6
	mov [rbp + 80], rbp
	add rbp, 72
	jmp strerror

 perror$6:
	; post call

 perror$7:
	; £temporary1027 = return_value

 perror$8:
	; parameter £temporary1027, offset 72
	mov [rbp + 72], rbx

 perror$9:
	; call function noellipse-ellipse printf, extra 16
	mov qword [rbp + 32], perror$10
	mov [rbp + 40], rbp
	add rbp, 32
	mov rdi, rbp
	add rdi, 16
	jmp printf

 perror$10:
	; post call

 perror$11:
	; return
	mov rax, [rbp]
	mov rdi, [rbp + 16]
	mov rbp, [rbp + 8]
	jmp rax

 perror$12:
	; function end perror
section .data

g_fileArray:
	; initializer Signed_Int
	dd 1
	; initializer Unsigned_Int
	dd 0
	; initializer zero 33
	times 33 db 0
	; initializer Signed_Int
	dd 1
	; initializer Unsigned_Int
	dd 1
	; initializer zero 33
	times 33 db 0
	; initializer Signed_Int
	dd 1
	; initializer Unsigned_Int
	dd 2
	; initializer zero 33
	times 33 db 0
	; initializer zero 697
	times 697 db 0

stdin:
	; initializer Pointer
	dq g_fileArray

stdout:
	; initializer Pointer
	dq g_fileArray + 41

stderr:
	; initializer Pointer
	dq g_fileArray + 82

@2612$EEXIST:
	; initializer Signed_Int
	dd 0

@2613$ENOENT:
	; initializer Signed_Int
	dd 1

@2614$EACCES:
	; initializer Signed_Int
	dd 2

@2615$SEEK_SET:
	; initializer Signed_Int
	dd 0

@2616$SEEK_CUR:
	; initializer Signed_Int
	dd 1

@2617$SEEK_END:
	; initializer Signed_Int
	dd 2

@2618$READ:
	; initializer Signed_Int
	dd 64

@2619$WRITE:
	; initializer Signed_Int
	dd 65

@2620$READ_WRITE:
	; initializer Signed_Int
	dd 66

Array_41#:
	; initializer Array
	dq 41

string_r#:
	; initializer String
	db "r", 0

string_w#:
	; initializer String
	db "w", 0

string_a#:
	; initializer String
	db "a", 0

string_r2B#:
	; initializer String
	db "r+", 0

string_w2B#:
	; initializer String
	db "w+", 0

string_a2B#:
	; initializer String
	db "a+", 0

string_25c#:
	; initializer String
	db "%c", 0

string_25s3A2025s2E0A#:
	; initializer String
	db "%s: %s.", 10, 0
