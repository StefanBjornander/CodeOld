#ifndef __PRINTF_H__
#define __PRINTF_H__

#define DEVICE 0
#define STRING 1

extern int g_outStatus, g_charCount;
extern void* g_outDevice;

int putc(int c, FILE* stream);
int fputc(int c, FILE* stream);
int putchar(int c);

void printChar(char c);
void printChar2(char c);
void printString(char* s, int precision);
void printString2(char* s);
void printIntRec(int intValue);
void printInt(int intValue, BOOL plus, BOOL space);
void printDoublePlain(double doubleValue, BOOL plus, BOOL space, BOOL grid, int precision);
void printLongDoublePlain(long double doubleValue, BOOL plus, BOOL space, BOOL grid, int precision);
void printInt(int intValue, BOOL plus, BOOL space);
void printLongInt(long longIntValue, BOOL plus, BOOL space);
void printLongDoubleFraction(long double longDoubleValue, BOOL grid, int precision);
void printLongDoublePlain(long double longDoubleValue, BOOL plus, BOOL space, BOOL grid, int precision);
int printFormat(char* format, va_list arg_list);

int printf2(char* format);
int printf(char* format, ...);
int vprintf(char* format, va_list arg_list);
int fprintf(FILE* outStream, char* format, ...);
int vfprintf(FILE* outStream, char* format, va_list arg_list);
int sprintf(char* outString, char* format, ...);
int vsprintf(char* outString, char* format, va_list arg_list);

#endif
