#ifndef __SCANF_H__
#define __SCANF_H__

#define DEVICE 0
#define STRING 1

#define EOF -1

int scanf(const char* format, ...);
int vscanf(const char* format, va_list arg_list);
int fscanf(FILE* inStream, const char* format, ...);
int vfscanf(FILE* inStream, const char* format, va_list arg_list);
int sscanf(char* inString, const char* format, ...);
int vsscanf(char* inString, const char* format, va_list arg_list);

#endif
