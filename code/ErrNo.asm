	global errno

section .text
section .data

$IntegralStorage#:
	times 8 db 0

@1165$NO_ERROR:
	dd 0

@1166$NO_FUNCTION:
	dd 1

@1167$NO_FILE:
	dd 2

@1168$NO_PATH:
	dd 3

@1169$NO_HANDLE:
	dd 4

@1170$NO_ACCESS:
	dd 5

@1171$EDOM:
	dd 6

@1172$ERANGE:
	dd 7

@1173$EILSEQ:
	dd 8

@1174$FOPEN:
	dd 9

@1175$FFLUSH:
	dd 10

@1176$FCLOSE:
	dd 11

@1177$NO_MODE:
	dd 12

@1178$FWRITE:
	dd 13

@1179$FREAD:
	dd 14

@1180$FSEEK:
	dd 15

@1181$FTELL:
	dd 16

@1182$FSIZE:
	dd 17

@1183$FREMOVE:
	dd 18

@1184$FRENAME:
	dd 19

@1185$FTEMPNAME:
	dd 20

@1186$FTEMPFILE:
	dd 21

errno:
	dd 0
