#ifndef __SCANF_H__
#define __SCANF_H__

#define DEVICE 0
#define STRING 1

#define EOF -1

extern int g_inStatus, g_inChars;
extern void* g_inDevice;

char scanChar(void);
void unscanChar(char c);
void scanString(char* string, int precision);
long scanLongInt(void);
unsigned long scanUnsignedLongInt(unsigned long base);
long double scanLongDouble(void);

int scanf(char* format, ...);
int vscanf(char* format, va_list arg_list);
int fscanf(FILE* inStream, char* format, ...);
int vfscanf(FILE* inStream, char* format, va_list arg_list);
int sscanf(char* inString, char* format, ...);
int vsscanf(char* inString, char* format, va_list arg_list);

#endif
