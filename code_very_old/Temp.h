#ifndef __TEMP_H__
#define __TEMP_H__

#define L_tmpnam 4
#define TMP_MAX 16

FILE* tmpfile(void);
char* tmpnam(char name[L_tmpnam]);

#endif
