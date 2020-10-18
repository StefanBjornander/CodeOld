	global errno

	extern $StackTop

section .text


section .data

@1184$NO_ERROR:
	; initializer SignedInt
	dd 0

section .data

@1185$NO_FUNCTION:
	; initializer SignedInt
	dd 1

section .data

@1186$NO_FILE:
	; initializer SignedInt
	dd 2

section .data

@1187$NO_PATH:
	; initializer SignedInt
	dd 3

section .data

@1188$NO_HANDLE:
	; initializer SignedInt
	dd 4

section .data

@1189$NO_ACCESS:
	; initializer SignedInt
	dd 5

section .data

@1190$EDOM:
	; initializer SignedInt
	dd 6

section .data

@1191$ERANGE:
	; initializer SignedInt
	dd 7

section .data

@1192$EILSEQ:
	; initializer SignedInt
	dd 8

section .data

@1193$FOPEN:
	; initializer SignedInt
	dd 9

section .data

@1194$FFLUSH:
	; initializer SignedInt
	dd 10

section .data

@1195$FCLOSE:
	; initializer SignedInt
	dd 11

section .data

@1196$NO_MODE:
	; initializer SignedInt
	dd 12

section .data

@1197$FWRITE:
	; initializer SignedInt
	dd 13

section .data

@1198$FREAD:
	; initializer SignedInt
	dd 14

section .data

@1199$FSEEK:
	; initializer SignedInt
	dd 15

section .data

@1200$FTELL:
	; initializer SignedInt
	dd 16

section .data

@1201$FSIZE:
	; initializer SignedInt
	dd 17

section .data

@1202$FREMOVE:
	; initializer SignedInt
	dd 18

section .data

@1203$FRENAME:
	; initializer SignedInt
	dd 19

section .data

@1204$FTEMPNAME:
	; initializer SignedInt
	dd 20

section .data

@1205$FTEMPFILE:
	; initializer SignedInt
	dd 21

section .data

errno:
	; initializer SignedInt
	dd 0
