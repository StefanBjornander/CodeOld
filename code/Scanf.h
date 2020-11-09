#ifndef __SCANF_H__
#define __SCANF_H__

#define DEVICE 0
#define STRING 1

#define EOF -1

char scanChar(void);
void unscanChar(char c);
void scanString(char* string, int precision);
long scanLongInt(int base);
unsigned long scanUnsignedLongInt(int base);
long double scanLongDouble(void);

int scanf(char* format, ...);
int vscanf(char* format, va_list arg_list);
int fscanf(FILE* inStream, char* format, ...);
int vfscanf(FILE* inStream, char* format, va_list arg_list);
int sscanf(char* inString, char* format, ...);
int vsscanf(char* inString, char* format, va_list arg_list);

#endif
