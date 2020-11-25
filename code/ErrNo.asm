	global errno

	extern $StackTop


section .data

@1171$NO_ERROR:
	; Initializer SignedInt 0
	dd 0

section .data

@1172$NO_FUNCTION:
	; Initializer SignedInt 1
	dd 1

section .data

@1173$NO_FILE:
	; Initializer SignedInt 2
	dd 2

section .data

@1174$NO_PATH:
	; Initializer SignedInt 3
	dd 3

section .data

@1175$NO_HANDLE:
	; Initializer SignedInt 4
	dd 4

section .data

@1176$NO_ACCESS:
	; Initializer SignedInt 5
	dd 5

section .data

@1177$EDOM:
	; Initializer SignedInt 6
	dd 6

section .data

@1178$ERANGE:
	; Initializer SignedInt 7
	dd 7

section .data

@1179$EILSEQ:
	; Initializer SignedInt 8
	dd 8

section .data

@1180$FOPEN:
	; Initializer SignedInt 9
	dd 9

section .data

@1181$FFLUSH:
	; Initializer SignedInt 10
	dd 10

section .data

@1182$FCLOSE:
	; Initializer SignedInt 11
	dd 11

section .data

@1183$NO_MODE:
	; Initializer SignedInt 12
	dd 12

section .data

@1184$FWRITE:
	; Initializer SignedInt 13
	dd 13

section .data

@1185$FREAD:
	; Initializer SignedInt 14
	dd 14

section .data

@1186$FSEEK:
	; Initializer SignedInt 15
	dd 15

section .data

@1187$FTELL:
	; Initializer SignedInt 16
	dd 16

section .data

@1188$FSIZE:
	; Initializer SignedInt 17
	dd 17

section .data

@1189$FREMOVE:
	; Initializer SignedInt 18
	dd 18

section .data

@1190$FRENAME:
	; Initializer SignedInt 19
	dd 19

section .data

@1191$FTEMPNAME:
	; Initializer SignedInt 20
	dd 20

section .data

@1192$FTEMPFILE:
	; Initializer SignedInt 21
	dd 21

section .data

errno:
	; Initializer SignedInt 0
	dd 0
