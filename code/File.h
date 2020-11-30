#ifndef __FILE_H__
#define __FILE_H__

#define FOPEN_MAX 20
#define FILENAME_MAX 16

#define fpos_t int
#define EOF -1

typedef struct {
  BOOL open;
  unsigned int handle;
  char name[FILENAME_MAX], ungetc;
  int errno;
  unsigned int position, size;
  BOOL temporary;
} FILE;

extern FILE *stdin, *stdout, *stderr;

extern enum { EEXIST, ENOENT, EACCES };
extern enum { SEEK_SET, SEEK_CUR, SEEK_END };
extern enum { READ, WRITE, READ_WRITE };

#define getc(stream) fgetc(stream)

BOOL fileexists(const char* name);
FILE* fopen(const char* filename, const char* mode);
FILE* freopen(const char* filename, const char* mode, FILE* stream);
int fflush(FILE* stream);
int fclose(FILE* stream);
int remove(const char* name);
int rename(const char* oldName, const char* newName);
int setvbuf(FILE* stream, char* buffer, int mode, size_t size);
void setbuf(FILE* stream, char* buffer);
int fgetc(FILE* stream);
char* fgets(char* s, int n, FILE* stream);
int fputc(int i, FILE* stream);
int fputs(const char* s, FILE* stream);
int getchar(void);
char* gets(char* s);
int putchar(int c);
int puts(const char* s);
int ungetc(int c, FILE* stream);
size_t fread(void* ptr, size_t size, size_t nobj, FILE* stream);
size_t fwrite(const void* ptr, size_t size, size_t nobj, FILE* stream);
int fseek(FILE* stream, int offset, int origin);
int ftell(FILE* stream);
void rewind(FILE* stream);
int fgetpos(FILE* stream, fpos_t* ptr);
int fsetpos(FILE* stream, const fpos_t* ptr);
void clearerr(FILE* stream);
BOOL feof(FILE* stream);
int ferror(FILE* stream);
void perror(const char* s);

#endif
