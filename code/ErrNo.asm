	global errno

section .text
section .data

$IntegralStorage#:
	times 8 db 0

@1041$NO_ERROR:
	dd 0

@1042$NO_FUNCTION:
	dd 1

@1043$NO_FILE:
	dd 2

@1044$NO_PATH:
	dd 3

@1045$NO_HANDLE:
	dd 4

@1046$NO_ACCESS:
	dd 5

@1047$EDOM:
	dd 6

@1048$ERANGE:
	dd 7

@1049$EILSEQ:
	dd 8

@1050$FOPEN:
	dd 9

@1051$FFLUSH:
	dd 10

@1052$FCLOSE:
	dd 11

@1053$NO_MODE:
	dd 12

@1054$FWRITE:
	dd 13

@1055$FREAD:
	dd 14

@1056$FSEEK:
	dd 15

@1057$FTELL:
	dd 16

@1058$FSIZE:
	dd 17

@1059$FREMOVE:
	dd 18

@1060$FRENAME:
	dd 19

@1061$FTEMPNAME:
	dd 20

@1062$FTEMPFILE:
	dd 21
errno:
	dd 0
