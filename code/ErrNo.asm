	global errno

	extern $StackTop


section .data

@1148$NO_ERROR:
	; Initializer SignedInt 0
	dd 0

section .data

@1149$NO_FUNCTION:
	; Initializer SignedInt 1
	dd 1

section .data

@1150$NO_FILE:
	; Initializer SignedInt 2
	dd 2

section .data

@1151$NO_PATH:
	; Initializer SignedInt 3
	dd 3

section .data

@1152$NO_HANDLE:
	; Initializer SignedInt 4
	dd 4

section .data

@1153$NO_ACCESS:
	; Initializer SignedInt 5
	dd 5

section .data

@1154$EDOM:
	; Initializer SignedInt 6
	dd 6

section .data

@1155$ERANGE:
	; Initializer SignedInt 7
	dd 7

section .data

@1156$EILSEQ:
	; Initializer SignedInt 8
	dd 8

section .data

@1157$FOPEN:
	; Initializer SignedInt 9
	dd 9

section .data

@1158$FFLUSH:
	; Initializer SignedInt 10
	dd 10

section .data

@1159$FCLOSE:
	; Initializer SignedInt 11
	dd 11

section .data

@1160$NO_MODE:
	; Initializer SignedInt 12
	dd 12

section .data

@1161$FWRITE:
	; Initializer SignedInt 13
	dd 13

section .data

@1162$FREAD:
	; Initializer SignedInt 14
	dd 14

section .data

@1163$FSEEK:
	; Initializer SignedInt 15
	dd 15

section .data

@1164$FTELL:
	; Initializer SignedInt 16
	dd 16

section .data

@1165$FSIZE:
	; Initializer SignedInt 17
	dd 17

section .data

@1166$FREMOVE:
	; Initializer SignedInt 18
	dd 18

section .data

@1167$FRENAME:
	; Initializer SignedInt 19
	dd 19

section .data

@1168$FTEMPNAME:
	; Initializer SignedInt 20
	dd 20

section .data

@1169$FTEMPFILE:
	; Initializer SignedInt 21
	dd 21

section .data

errno:
	; Initializer SignedInt 0
	dd 0
