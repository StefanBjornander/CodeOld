	global NO_ERROR
	global NO_FUNCTION
	global NO_FILE
	global NO_PATH
	global NO_HANDLE
	global NO_ACCESS
	global EDOM
	global ERANGE
	global EILSEQ
	global FOPEN
	global FFLUSH
	global FCLOSE
	global NO_MODE
	global FWRITE
	global FREAD
	global FSEEK
	global FTELL
	global FSIZE
	global FREMOVE
	global FRENAME
	global FTEMPNAME
	global FTEMPFILE
	global errno

section .text
section .data

$IntegralStorage#:
	times 8 db 0

NO_ERROR:
	dd 0

NO_FUNCTION:
	dd 1

NO_FILE:
	dd 2

NO_PATH:
	dd 3

NO_HANDLE:
	dd 4

NO_ACCESS:
	dd 5

EDOM:
	dd 6

ERANGE:
	dd 7

EILSEQ:
	dd 8

FOPEN:
	dd 9

FFLUSH:
	dd 10

FCLOSE:
	dd 11

NO_MODE:
	dd 12

FWRITE:
	dd 13

FREAD:
	dd 14

FSEEK:
	dd 15

FTELL:
	dd 16

FSIZE:
	dd 17

FREMOVE:
	dd 18

FRENAME:
	dd 19

FTEMPNAME:
	dd 20

FTEMPFILE:
	dd 21
errno:
	dd 0
