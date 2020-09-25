	global errno

	extern $StackTop
section .text
section .data

@1182$NO_ERROR:
	; initializer Signed_Int
	dd 0

@1183$NO_FUNCTION:
	; initializer Signed_Int
	dd 1

@1184$NO_FILE:
	; initializer Signed_Int
	dd 2

@1185$NO_PATH:
	; initializer Signed_Int
	dd 3

@1186$NO_HANDLE:
	; initializer Signed_Int
	dd 4

@1187$NO_ACCESS:
	; initializer Signed_Int
	dd 5

@1188$EDOM:
	; initializer Signed_Int
	dd 6

@1189$ERANGE:
	; initializer Signed_Int
	dd 7

@1190$EILSEQ:
	; initializer Signed_Int
	dd 8

@1191$FOPEN:
	; initializer Signed_Int
	dd 9

@1192$FFLUSH:
	; initializer Signed_Int
	dd 10

@1193$FCLOSE:
	; initializer Signed_Int
	dd 11

@1194$NO_MODE:
	; initializer Signed_Int
	dd 12

@1195$FWRITE:
	; initializer Signed_Int
	dd 13

@1196$FREAD:
	; initializer Signed_Int
	dd 14

@1197$FSEEK:
	; initializer Signed_Int
	dd 15

@1198$FTELL:
	; initializer Signed_Int
	dd 16

@1199$FSIZE:
	; initializer Signed_Int
	dd 17

@1200$FREMOVE:
	; initializer Signed_Int
	dd 18

@1201$FRENAME:
	; initializer Signed_Int
	dd 19

@1202$FTEMPNAME:
	; initializer Signed_Int
	dd 20

@1203$FTEMPFILE:
	; initializer Signed_Int
	dd 21

errno:
	; initializer Signed_Int
	dd 0
