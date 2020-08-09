#ifndef __STRING_H__
#define __STRING_H__

#define size_t int

extern char* strcpy(char* target, const char* source);
extern char* strncpy(char* target, const char* source, size_t size);
extern char* strcat(char* target, const char* source);
extern char* strncat(char* target, const char* source, size_t size);
extern int strcmp(const char* left, const char* right);
extern int strncmp(const char* left, const char* right, size_t size);
extern char* strchr(const char* text, int i);
extern char* strrchr(const char* text, int i);
extern size_t strspn(const char* mainString, const char* charSet);
extern size_t strcspn(const char* mainString, const char* charSet);
extern char* strpbrk(const char* mainString, const char* charSet);
extern char* strstr(const char* mainString, const char* subString);
extern size_t strlen(const char* string);
extern char* strerror(int error);
extern char* strtok(char* string, const char* charSet);
extern void* memcpy(void* target, const void* source, size_t size);
extern void* memmove(void* target, const void* source, size_t size);
extern int memcmp(const void* left, const void* right, size_t size);
extern void* memchr(const void* block, int i, size_t size);
extern void* memset(void* block, int i, size_t size);

#endif
