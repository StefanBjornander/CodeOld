#ifndef __STDLIB_H__
#define __STDLIB_H__

#define NULL ((void*) 0)

double atof(char* s);
int atoi(char* s);
long atol(char* s);

double strtod(char* s, char** endp);
long strtol(char* s, char** endp, int base);
unsigned long strtoul(char* s, char** endp, int base);

int rand(void);
void srand(unsigned int seed);

char* getenv(const char* name);
int system(const char* command);

void abort(void);
void exit(int status);

typedef void (*FUNC_PTR)(void);
int atexit(FUNC_PTR fcn);

#define FUNC_MAX 256
#define OPEN_MAX 16

int abs(int value);
long labs(long value);

void* malloc(size_t size);
void* realloc(void* ptr, size_t newSize);
void* calloc(size_t num, size_t size);
void free(void* ptr);

void qsort(const void* valueList, size_t listSize, size_t valueSize,
           int (*compare)(const void*, const void*), ...);

void* bsearch(const void* key, const void* valueList, size_t listSize, size_t valueSize,
int (*compare)(const void*, const void*));

int abs(int value);
long labs(long value);

typedef struct {
int quot, rem;
} div_t;

div_t div(int num, int denum);

typedef struct {
long quot, rem;
} ldiv_t;

ldiv_t ldiv(long num, long denum);
#endif
