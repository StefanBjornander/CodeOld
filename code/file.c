#include <stdio.h>
#include <errno.h>
#include <locale.h>
#include <string.h>

FILE g_fileArray[FOPEN_MAX] = {{TRUE, 0}, {TRUE, 1}, {TRUE, 2}};
FILE *stdin = &g_fileArray[0], *stdout = &g_fileArray[1],
     *stderr = &g_fileArray[2];

enum {EEXIST, ENOENT, EACCES};
enum {SEEK_SET = 0, SEEK_CUR = 1, SEEK_END = 2};

#ifdef __WINDOWS__
  enum { READ = 0x40, WRITE = 0x41, READ_WRITE = 0x42 };
#endif

#ifdef __LINUX__
  enum { READ = 0, WRITE = 1, READ_WRITE = 3 };
#endif

#define MAX(a,b) (((a) > (b)) ? (a) : (b))

#define FILE_NOT_FOUND 0x02

#define PRINT(x,y) { printf(#x " = <%" #y ">\n", (x)); }

int filecreate(const char* name) {
#ifdef __WINDOWS__
  register_ah = 0x3Cs;
  register_cx = 0x00;
  register_dx = name;
  interrupt(0x21s);

  { int handle = register_ax;

    if (carry_flag) {
      errno = FOPEN;
      return -1;
    }

    return handle;
  }
#endif

#ifdef __LINUX__
  register_rax = 85;
  register_rdi = (unsigned long)name;
  register_rsi = 0777L; // octal
  syscall();
  return register_eax;
#endif
}

#define X(x) printf("register_" #x ": %u\n", register_##x)

BOOL fileexistsX(const char* name) {
  FILE* filePtr = fopen(name, "r");
  printf("\nfileexists %s %p\n", name, filePtr);

  if (filePtr != NULL) {
    fclose(filePtr);
    return TRUE;
  }

  return FALSE;
}

BOOL fileexists(const char* name) {
#ifdef __WINDOWS__
  register_ah = 0x43s;
  register_al = 0x00s;
  register_dx = name;
  interrupt(0x21s);
  return !carry_flag;
#endif

#ifdef __LINUX__
  register_rax = 21;
  register_rdi = (unsigned long) name;
  register_rsi = 0;
  syscall();
  return (register_eax == 0);
#endif
}

static int fileopen(const char* name, unsigned short mode) {
#ifdef __WINDOWS__
  register_ah = 0x3Ds;
  register_al = mode;
  register_dx = name;
  interrupt(0x21s);

  if (carry_flag) {
    errno = FOPEN;
    return -1;
  }
  else {
    return register_ax;
  }
#endif

  //printf("fileopen1 <%s> %i\n", name, mode);
#ifdef __LINUX__
  register_rax = 2;
  register_rdi = (unsigned long) name;
  register_rsi = (unsigned long) mode;
  syscall();
  return register_eax;
#endif
  //printf("fileopen2\n");
}

FILE* fopen(const char* name, const char* mode) {
  int index;
  for (index = 0; index < FOPEN_MAX; ++index) {

    if (!g_fileArray[index].open) {
      return freopen(name, mode, &g_fileArray[index]);
    }
  }

  return NULL;
}

FILE* freopen(const char* name, const char* mode, FILE* stream) {
  int handle = -1;

  if (strcmp(mode, "r") == 0) {
    handle = fileopen(name, (unsigned short) READ);
  }
  else if (strcmp(mode, "w") == 0) {
    handle = filecreate(name);
    //printf("create handle %u\n", handle);
  }
  else if (strcmp(mode, "a") == 0) {
    handle = fileopen(name, (unsigned short) WRITE);

    if (handle != -1) {
      fseek(stream, 0L, (int) SEEK_END);
    }
    else {
      handle = filecreate(name);
    }
  }
  else if (strcmp(mode, "r+") == 0) {
    printf("r+1\n");
    handle = fileopen(name, (unsigned short) READ_WRITE);
    printf("r+2\n");
  }
  else if (strcmp(mode, "w+") == 0) {
    if (fileexists(name)) {
      handle = fileopen(name, (unsigned short) READ_WRITE);
    }
    else {
      handle = filecreate(name);
    }
  }
  else if (strcmp(mode, "a+") == 0) {
    handle = fileopen(name, (unsigned short) READ_WRITE);

    if (handle != -1) {
      fseek(stream, 0L, (int) SEEK_END);
    }
    else {
      handle = filecreate(name);
    }
  }

  if (handle != -1) {
    stream->open = TRUE;
    stream->handle = handle;
    stream->size = 0l; // filesize(handle);
    strcpy(stream->name, name);
    stream->temporary = FALSE;
    return stream;
  }
  else {
    stream->open = FALSE;
    return NULL;
  }
}

int fflush(FILE* stream) {
  if (stream == NULL) {
    int index;

    for (index = 0; index < FOPEN_MAX; ++index) {
      if (g_fileArray[index].open) {
        if (fflush(&g_fileArray[index]) == EOF) {
          return EOF;
        }
      }
    }
  }

  // ...

  return 0;
}

int fclose(FILE* stream) {
  if (stream != NULL) {
#ifdef __WINDOWS__
    register_ah = 0x3Es;
    register_bx = stream->handle;
    interrupt(0x21s);

    if (carry_flag) {
      errno = FCLOSE;
      return -1;
    }

    if (stream->temporary) {
      remove(stream->name);
    }

    stream->open = FALSE;
    return 0;
#endif

#ifdef __LINUX__
  register_rax = 3L;
  register_rdi = (unsigned long) stream->handle;
  syscall();
  return 0;
#endif
  }
  else {
    int index;

    for (index = 0; index < FOPEN_MAX; ++index) {
      if (g_fileArray[index].open) {
        if (fclose(&g_fileArray[index]) == -1) {
          return -1;
        }
      }
    }

    return 0;
  }
}

int remove(const char* name) {
#ifdef __WINDOWS__
  register_ah = 0x41s;
  register_cl = 0s;
  register_dx = name;
  interrupt(0x21s);

  if (!carry_flag) {
    return 0;
  }
#endif

#ifdef __LINUX__
  register_rax = 88L;
  register_rdi = (unsigned long) name;
  syscall();
  
  if (register_ebx == 0) {
    return 0;
  }
#endif

  errno = FREMOVE;
  return -1;
}

int rename(const char* oldName, const char* newName) {
#ifdef __WINDOWS__
  register_ah = 0x56s;
  register_cl = 0s;
  register_dx = oldName;
  register_di = newName;
  interrupt(0x21s);

  if (!carry_flag) {
    return 0;
  }
#endif

#ifdef __LINUX__
  register_rax = 82L;
  register_rdi = (unsigned long) oldName;
  register_rsi = (unsigned long) newName;
  syscall();

  if (register_eax == 0) {
    return 0;
  }
#endif

  errno = FRENAME;
  return -1;
}

int setvbuf(FILE* /* stream */, char* /* buffer */,
            int /* mode */, size_t /* size */) {
  return 0;
}

void setbuf(FILE* /* stream */, char* /* buffer */) {
  // Empty.
}

int fgetc(FILE* stream) {
  char c = '\0';

  if (fread(&c, sizeof (char), 1, stream) > 0) {
    return (int) c;
  }

  return -1;
}

char* fgets(char* text, int size, FILE* stream) {
  int count = 0;
  char prevChar = '\0';

  while ((count < (size - 1))) {
    char currChar = '\0';
    fscanf(stream, "%c", &currChar);

    if ((prevChar == '\r') && (currChar == '\n')) {
      text[count] = '\0';
      break;
    }

    if (currChar == -1) {
      text[count] = '\0';
      break;
    }
    
    if ((currChar != '\r') && (currChar != '\n')) {
      text[count++] = currChar;
    }

    prevChar = currChar;
  }

  return text;
}

int fputs(const char* s, FILE* stream) {
  int size = (strlen(s) + 1) * sizeof (char);
  return (fwrite(s, size, 1, stream) == size) ? 0 : EOF;
}

int getchar(void) {
  return fgetc(stdin);
}

char* gets(char* s) {
  if (fgets(s, -1, stdin) != NULL) {
    int size = strlen(s);

    if (size > 0) {
      s[size - 1] = '\0';
    }

    return s;
  }
  else {
    return NULL;
  }
}

int puts(const char* s) {
  if (fputs(s, stdout) != 0) {
    return fputc('\n', stdout);
  }

  return EOF;
}

int ungetc(int c, FILE* stream) {
  if (stream->ungetc != EOF) {
    stream->ungetc = (char) c;
  }

  return c;
}

size_t fread(void* ptr, size_t size, size_t nobj, FILE* stream) {
#ifdef __WINDOWS__
  register_bx = stream->handle;
  register_cx = size * nobj;
  register_ah = 0x3Fs;
  register_dx = ptr;
  interrupt(0x21s);

  if (carry_flag) {
    stream->errno = errno = FREAD;
    return 0;
  }
  else {
    return register_ax;
  }
#endif

#ifdef __LINUX__
  register_rdi = (unsigned long) stream->handle;
  register_rsi = (unsigned long) ptr;
  register_rdx = (unsigned long) (size * nobj);
  register_rax = 0;
  syscall();
  return register_eax;
#endif
}

size_t fwrite(const void* ptr, size_t size, size_t nobj, FILE* stream) {
#ifdef __WINDOWS__
  register_bx = stream->handle;
  register_cx = size * nobj;
  register_ah = 0x40s;
  register_dx = ptr;
  interrupt(0x21s);

  if (carry_flag) {
    stream->errno = errno = FWRITE;
    return 0;
  }
  else {
    return register_ax;
  }
#endif

#ifdef __LINUX__
  register_rdi = (unsigned long) stream->handle;
  register_rsi = (unsigned long) ptr;
  register_rdx = (unsigned long) (size * nobj);
  register_rax = 1;
  syscall();
  return register_eax;
#endif
}

int fseek(FILE* stream, int offset, int origin) {
#ifdef __WINDOWS__
  register_al = (short) origin;
  register_ah = 0x42s;
  register_bx = stream->handle;
  register_cx = 0;
  register_dx = (int) offset;
  interrupt(0x21s);

  if (!carry_flag) {
    stream->position = register_ax;
    return stream->position;
  }
  else {
    stream->errno = FSEEK;
    return -1;
  }
#endif

#ifdef __LINUX__
  register_rax = 8;
  register_rdi = (unsigned long) stream->handle;
  register_rsi = (unsigned long) offset;
  register_rdx = (unsigned long) origin;
  syscall();
  return register_eax;
#endif
}

int ftell(FILE* stream) {
  return fseek(stream, 0, SEEK_CUR);
}

void rewind(FILE* stream) {
  (void) fseek(stream, 0, SEEK_SET);
}

int fgetpos(FILE* stream, fpos_t* ptr) {
  *ptr = (fpos_t) ftell(stream);
  return 0;
}

int fsetpos(FILE* stream, const fpos_t* ptr) {
  return ((int) fseek(stream, *ptr, (int) SEEK_SET));
}

void clearerr(FILE* stream) {
  stream->errno = errno = 0;
}

BOOL feof(FILE* stream) {
  long unsigned currPosition = fseek(stream, 0L, (int) SEEK_CUR);
  long unsigned lastPosition = fseek(stream, 0L, (int) SEEK_END);
  fseek(stream, currPosition, (int) SEEK_SET);

  { BOOL endOfFile = (currPosition == lastPosition);
    return endOfFile;
  }
}

int ferror(FILE* stream) {
  return stream->errno;
}

void perror(const char* s) {
  printf("%s: %s.\n", s, strerror(errno));
}