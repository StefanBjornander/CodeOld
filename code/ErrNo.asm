	global errno

	extern $StackTop


section .data

@1097$NO_ERROR:
	; Initializer SignedInt 0
	dd 0

section .data

@1098$NO_FUNCTION:
	; Initializer SignedInt 1
	dd 1

section .data

@1099$NO_FILE:
	; Initializer SignedInt 2
	dd 2

section .data

@1100$NO_PATH:
	; Initializer SignedInt 3
	dd 3

section .data

@1101$NO_HANDLE:
	; Initializer SignedInt 4
	dd 4

section .data

@1102$NO_ACCESS:
	; Initializer SignedInt 5
	dd 5

section .data

@1103$EDOM:
	; Initializer SignedInt 6
	dd 6

section .data

@1104$ERANGE:
	; Initializer SignedInt 7
	dd 7

section .data

@1105$EILSEQ:
	; Initializer SignedInt 8
	dd 8

section .data

@1106$FOPEN:
	; Initializer SignedInt 9
	dd 9

section .data

@1107$FFLUSH:
	; Initializer SignedInt 10
	dd 10

section .data

@1108$FCLOSE:
	; Initializer SignedInt 11
	dd 11

section .data

@1109$NO_MODE:
	; Initializer SignedInt 12
	dd 12

section .data

@1110$FWRITE:
	; Initializer SignedInt 13
	dd 13

section .data

@1111$FREAD:
	; Initializer SignedInt 14
	dd 14

section .data

@1112$FSEEK:
	; Initializer SignedInt 15
	dd 15

section .data

@1113$FTELL:
	; Initializer SignedInt 16
	dd 16

section .data

@1114$FSIZE:
	; Initializer SignedInt 17
	dd 17

section .data

@1115$FREMOVE:
	; Initializer SignedInt 18
	dd 18

section .data

@1116$FRENAME:
	; Initializer SignedInt 19
	dd 19

section .data

@1117$FTEMPNAME:
	; Initializer SignedInt 20
	dd 20

section .data

@1118$FTEMPFILE:
	; Initializer SignedInt 21
	dd 21

section .data

errno:
	; Initializer SignedInt 0
	dd 0
