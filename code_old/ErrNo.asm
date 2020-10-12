	global errno

	extern $StackTop
section .text
section .data

@1182$NO_ERROR:
	; initializer SignedInt
	dd 0

@1183$NO_FUNCTION:
	; initializer SignedInt
	dd 1

@1184$NO_FILE:
	; initializer SignedInt
	dd 2

@1185$NO_PATH:
	; initializer SignedInt
	dd 3

@1186$NO_HANDLE:
	; initializer SignedInt
	dd 4

@1187$NO_ACCESS:
	; initializer SignedInt
	dd 5

@1188$EDOM:
	; initializer SignedInt
	dd 6

@1189$ERANGE:
	; initializer SignedInt
	dd 7

@1190$EILSEQ:
	; initializer SignedInt
	dd 8

@1191$FOPEN:
	; initializer SignedInt
	dd 9

@1192$FFLUSH:
	; initializer SignedInt
	dd 10

@1193$FCLOSE:
	; initializer SignedInt
	dd 11

@1194$NO_MODE:
	; initializer SignedInt
	dd 12

@1195$FWRITE:
	; initializer SignedInt
	dd 13

@1196$FREAD:
	; initializer SignedInt
	dd 14

@1197$FSEEK:
	; initializer SignedInt
	dd 15

@1198$FTELL:
	; initializer SignedInt
	dd 16

@1199$FSIZE:
	; initializer SignedInt
	dd 17

@1200$FREMOVE:
	; initializer SignedInt
	dd 18

@1201$FRENAME:
	; initializer SignedInt
	dd 19

@1202$FTEMPNAME:
	; initializer SignedInt
	dd 20

@1203$FTEMPFILE:
	; initializer SignedInt
	dd 21

errno:
	; initializer SignedInt
	dd 0
