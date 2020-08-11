#ifndef __ERRNO_H__
#define __ERRNO_H__

/*
#define FREMOVE 2
#define FREAD   2
#define FWRITE  3
#define FRENAME 5
#define FCLOSE  6

#define FOPEN   3 // 2
#define NO_ERROR    10
#define NO_FUNCTION 11
#define NO_FILE     12
#define NO_PATH     13
#define NO_HANDLE   14
#define NO_ACCESS   15
#define EDOM        16
#define ERANGE      17
#define EILSEQ      18

#define FFLUSH     20
#define NO_MODE    22

#define FSEEK      25
#define FTELL      26
#define FSIZE      27
#define FTEMPNAME  20
#define FTEMPFILE  22
*/

extern enum {NO_ERROR, NO_FUNCTION, NO_FILE, NO_PATH, NO_HANDLE, NO_ACCESS, EDOM,
             ERANGE, EILSEQ, FOPEN, FFLUSH, FCLOSE, NO_MODE, FWRITE, FREAD, FSEEK,
             FTELL, FSIZE, FREMOVE, FRENAME, FTEMPNAME, FTEMPFILE};

/*
#define NO_ERROR    0
#define NO_FUNCTION 1
#define NO_FILE     2
#define NO_PATH     3
#define NO_HANDLE   4
#define NO_ACCESS   5
#define EDOM        6
#define ERANGE      7
#define EILSEQ      8
#define FOPEN       9
#define FFLUSH     10
#define FCLOSE     11
#define NO_MODE    12
#define FWRITE     13
#define FREAD      14
#define FSEEK      15
#define FTELL      16
#define FSIZE      17
#define FREMOVE    18
#define FRENAME    19
#define FTEMPNAME  20
#define FTEMPFILE  21
*/

extern int errno;

#endif
