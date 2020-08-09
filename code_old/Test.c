typedef struct {
  bool open;
  unsigned int handle;
  int errno;
  unsigned long position, size;
  char name[100], ungetc;
  bool temporary;
} FILE;

extern FILE* stdin;
extern FILE* stdout;
extern FILE* stderr;
