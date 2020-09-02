	global errno

section .text
section .data

@1168$NO_ERROR:
	; initializer Signed_Int
	dd 0

@1169$NO_FUNCTION:
	; initializer Signed_Int
	dd 1

@1170$NO_FILE:
	; initializer Signed_Int
	dd 2

@1171$NO_PATH:
	; initializer Signed_Int
	dd 3

@1172$NO_HANDLE:
	; initializer Signed_Int
	dd 4

@1173$NO_ACCESS:
	; initializer Signed_Int
	dd 5

@1174$EDOM:
	; initializer Signed_Int
	dd 6

@1175$ERANGE:
	; initializer Signed_Int
	dd 7

@1176$EILSEQ:
	; initializer Signed_Int
	dd 8

@1177$FOPEN:
	; initializer Signed_Int
	dd 9

@1178$FFLUSH:
	; initializer Signed_Int
	dd 10

@1179$FCLOSE:
	; initializer Signed_Int
	dd 11

@1180$NO_MODE:
	; initializer Signed_Int
	dd 12

@1181$FWRITE:
	; initializer Signed_Int
	dd 13

@1182$FREAD:
	; initializer Signed_Int
	dd 14

@1183$FSEEK:
	; initializer Signed_Int
	dd 15

@1184$FTELL:
	; initializer Signed_Int
	dd 16

@1185$FSIZE:
	; initializer Signed_Int
	dd 17

@1186$FREMOVE:
	; initializer Signed_Int
	dd 18

@1187$FRENAME:
	; initializer Signed_Int
	dd 19

@1188$FTEMPNAME:
	; initializer Signed_Int
	dd 20

@1189$FTEMPFILE:
	; initializer Signed_Int
	dd 21

errno:
	; initializer Signed_Int
	dd 0
