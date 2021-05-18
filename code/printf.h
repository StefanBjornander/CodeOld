#ifndef __PRINTF_H__
#define __PRINTF_H__

#define DEVICE 0
#define STRING 1

extern int g_outStatus, g_charCount;
extern void* g_outDevice;

int putc(int c, FILE* stream);
int fputc(int c, FILE* stream);
int putchar(int c);

int printf(const char* format, ...);
int vprintf(const char* format, va_list arg_list);
int fprintf(FILE* outStream, const char* format, ...);
int vfprintf(FILE* outStream, const char* format, va_list arg_list);
int sprintf(char* outString, const char* format, ...);
int vsprintf(char* outString, const char* format, va_list arg_list);

#endif
