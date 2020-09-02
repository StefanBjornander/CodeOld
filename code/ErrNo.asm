	global errno

section .text
section .data

@1165$NO_ERROR:
	; initializer Signed_Int
	dd 0

@1166$NO_FUNCTION:
	; initializer Signed_Int
	dd 1

@1167$NO_FILE:
	; initializer Signed_Int
	dd 2

@1168$NO_PATH:
	; initializer Signed_Int
	dd 3

@1169$NO_HANDLE:
	; initializer Signed_Int
	dd 4

@1170$NO_ACCESS:
	; initializer Signed_Int
	dd 5

@1171$EDOM:
	; initializer Signed_Int
	dd 6

@1172$ERANGE:
	; initializer Signed_Int
	dd 7

@1173$EILSEQ:
	; initializer Signed_Int
	dd 8

@1174$FOPEN:
	; initializer Signed_Int
	dd 9

@1175$FFLUSH:
	; initializer Signed_Int
	dd 10

@1176$FCLOSE:
	; initializer Signed_Int
	dd 11

@1177$NO_MODE:
	; initializer Signed_Int
	dd 12

@1178$FWRITE:
	; initializer Signed_Int
	dd 13

@1179$FREAD:
	; initializer Signed_Int
	dd 14

@1180$FSEEK:
	; initializer Signed_Int
	dd 15

@1181$FTELL:
	; initializer Signed_Int
	dd 16

@1182$FSIZE:
	; initializer Signed_Int
	dd 17

@1183$FREMOVE:
	; initializer Signed_Int
	dd 18

@1184$FRENAME:
	; initializer Signed_Int
	dd 19

@1185$FTEMPNAME:
	; initializer Signed_Int
	dd 20

@1186$FTEMPFILE:
	; initializer Signed_Int
	dd 21

errno:
	; initializer Signed_Int
	dd 0
