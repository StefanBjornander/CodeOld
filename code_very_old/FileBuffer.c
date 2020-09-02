#include <file.h>

static FILE g_fileArray[FOPEN_MAX];

FILE* stdin = &g_fileArray[0];
FILE* stdout = &g_fileArray[1];
FILE* stderr = &g_fileArray[2];

int fgets(char* buffer, FILE* stream)
{
  return 0;
}

static char g_ungetchar = EOF;

int ungetc(int c, FILE* stream)
{
  g_ungetchar = c;
}

size_t fread(void* ptr, size_t size, size_t nobj, FILE* stream)
{
  if ((size * nobj) > 0) {
    if (g_ungetchar != EOF) {
      memcpy(ptr, &c, 1);
      g_ungetchar = EOF;
      fread(((char*) ptr) + 1, (size * nobj) - 1, 1, stream);
    }
    else {
      // ...
    }
  }

  return 0;
}

size_t fwrite(const void* ptr, size_t size, size_t nobj, FILE* stream)
{
  return 0;
}

static BOOL exists(char* name) {
  load_register(register_ah, 0x43);
  load_register(register_al, 0x00);
  load_register(register_dx, name);
  interrupt(33);

  if (getFlag(CARRY_FLAG)) {
    unsigned int error_code;
    store_register(error_code, register_ax);
    return (error_code != FILE_NOT_FOUND);
  }

  return TRUE;
}

static int open(const char* name, unsigned short mode) {
  int handle;
  load_register(register_ah, 0x3D);
  load_register(register_al, mode);
  load_register(register_dx, name);
  interrupt(33);
  store_register(handle, register_ax);
  return getFlag(CARRY_FLAG) ? -1 : handle;
}

static int create(const char* name)
{
  int handle;
  load_register(register_ah, 0x3C);
  load_register(register_cx, 0x00);
  load_register(register_dx, name);
  interrupt(33);
  store_register(handle, register_ax);
  return getFlag(CARRY_FLAG) ? -1 : handle;
}

FILE* fopen(const char* filename, const char* mode)
{
  int index;

  for (index = 0; index < OPEN_MAX; ++index) {
    if (!fileArray[index].open) {
      return freopen(filename, mode, &fileArray[index]);
    }
  }

  return NULL;
}

FILE* freopen(const char* filename, const char* mode, FILE* stream)
{
  stream->handle = -1;

  if (strcmp(mode, "r")) {
    stream->handle = open(filename, READ);
  }
  else if (strcmp(mode, "w")) {
    stream->handle = create(filename) ? open(filename, WRITE) : -1;
  }
  else if (strcmp(mode, "a")) {
    stream->handle = create(filename) ? open(filename, WRITE) : -1;

    if ((stream->handle != -1) && (fseek(stream, 0L, SEEK_END) != 0)) {
      stream->handle = -1;
    }
  }
  else if (strcmp(mode, "r+")) {
    stream->handle = open(filename, READ | WRITE);
  }
  else if (strcmp(mode, "w+")) {
    stream->handle = create(filename) ? open(filename, READ | WRITE) : -1;
  }
  else if (strcmp(mode, "a+")) {
    stream->handle = create(filename) ? open(filename, READ | WRITE) : -1;

    if ((stream->handle != -1) && (fseek(stream, 0L, SEEK_END) != 0)) {
      stream->handle = -1;
    }
  }

  if (stream->handle != -1) {
    stream->open = TRUE;
    strcpy(stream->name, filename);
    stream->temporary = FALSE;
    return stream;
  }
  else {
    stream.open = FALSE;
    return NULL;
  }
}

int fflush(FILE* stream)
{
  if (stream == NULL) {
    int index;

    for (index = 0; index < OPEN_MAX; ++index) {
      if (fileArray[index].open) {
        if (fflush(&fileArray[index]) == EOF) {
          return EOF;
        }
      }
    }

    return 0;
  }

  switch (stream->bufferMode)
  {
    case _IOFBF:
    case _IOLBF:
        if (physicalWrite(stream->buffer, stream->bufferSize, stream) != stream->bufferSize) {
          stream->errno = errno = FFLUSH;
          return -1;
        }
        stream->bufferSize = 0;
        break;

    case _IONBF:
      break;
  }

  return 0;
}

int fclose(FILE* stream)
{
  if (stream == NULL) {
    int index;

    for (index = 0; index < OPEN_MAX; ++index) {
      if (fileArray[index].active) {
        if (fclose(&fileArray[index]) == EOF) {
          return EOF;
        }
      }
    }

    return 0;
  }

  load_register(register_ah, 0x3E);
  load_register(register_bx, stream->handle);
  interrupt(33);

  if (!getFlag(CARRY_FLAG)) {
    free(stream->buffer);
    stream->active = FALSE;

    if (stream->temporary) {
      remove(stream->name);
    }

    return 0;
  }
  else {
    stream->errno = errno = FCLOSE;
    return EOF;
  }
}

int remove(const char* name)
{
  load_register(register_ah, 0x41);
  load_register(register_dx, name);
  interrupt(33);

  if (getFlag(CARRY_FLAG)) {
    errno = FREMOVE;
    return EOF;
  }

  return 0;
}

int rename(const char* oldName, const char* newName) {
  load_register(register_ah, 0x56);
  load_register(register_dx, oldName);
  load_register(register_di, newName);
  interrupt(33);
/*
  if (getFlag(CARRY_FLAG)) {
    errno = errno = FRENAME;
    return EOF;
  }
*/
  return 0;
}

/*
static BOOL occupy(char* name)
{
  int index;
  for (index = 0; index < TEMP_MAX; ++index) {
    if (strcmp(tempNameArray[index], name) == 0) {
      return FALSE;
    }
    else if (strlen(tempNameArray[index]) == 0) {
      strcpy(tempNameArray[index], name);
      return TRUE;
    }
  }

  return FALSE;
}
*/

int setvbuf(FILE* stream, char* buffer, int mode, size_t size)
{
  if (buffer != NULL) {
    buffer = malloc(size);

    if (buffer == NULL) {
      return -1;
    }
  }

  stream->buffer = buffer;
  stream->bufferMode = mode;
  stream->bufferMaxSize = size;
  return 0;
}

void setbuf(FILE* stream, char* buffer)
{
  if (buffer == NULL) {
    free(stream->buffer);
    stream->buffer = NULL;
    stream->bufferMode = _IONBF;
  }
  else {
    setvbuf(stream, buffer, _IOFBF, BUFSIZ);
  }
}

static int physicalRead(char* buffer, int size, FILE* stream)
{
  load_register(register_ah, 0x3F);
  load_register(register_bx, stream->handle);
  load_register(register_cx, size);
  load_register(DS, 0x00);
  load_register(register_dx, buffer);
  interrupt(33);

  if (getFlag(CARRY_FLAG)) {
    stream->errno = errno = FREAD;
  }

  return store_register(register_ax);
}

static int bufferedRead(char* buffer, int size, FILE* stream)
{
  if (size > 0) {
    int putBackSize = 0, bufferedSize = 0;

    if (stream->putBack != EOF) {
      memcpy(buffer, &stream->putBack, sizeof (char));
      buffer += sizeof (char);
      putBackSize = sizeof (char);
      size -= sizeof (char);
    }

    if (size > 0) {
      if (stream->bufferSize >= size) {
        memcpy(buffer, stream->buffer, size);
        memmove(stream->buffer, stream->buffer + size, stream->bufferSize - size);
        stream->bufferSize -= size;
        return putBackSize + size;
      }
      else {
        memcpy(buffer, stream->buffer, stream->bufferSize);
        bufferedSize = stream->bufferSize;
        buffer += stream->bufferSize;
        size -= stream->bufferSize;
        stream->bufferSize = 0;

        if (size > 0) {
          return putBackSize + bufferedSize +  physicalRead(buffer, size, stream);
        }
        else {
          return putBackSize + bufferedSize;
        }
      }
    }
    else {
      return putBackSize;
    }
  }
  else {
    return 0;
  }
}

static int physicalWrite(const char* buffer, int size, FILE* stream)
{
  load_register(register_ah, 0x40);
  load_register(register_bx, stream->handle);
  load_register(register_cx, size);
  load_register(DS, 0x00);
  load_register(register_dx, buffer);
  interrupt(33);

  if (getFlag(CARRY_FLAG)) {
    stream->errno = errno = FWRITE;
  }

  return store_register(register_ax);
}

static int bufferedWrite(const char* buffer, int size, FILE* stream)
{
  int origionalSize = size;
  BOOL lastNewLine = FALSE;
  stream->putBack = EOF;

  if (size > 0) {
    switch (stream->bufferMode) {
      case _IONBF:
        return physicalWrite(buffer, size, stream);

      case _IOLBF:
        while (size > 0) {
          if (stream->bufferSize == stream->bufferMaxSize) {
            fflush(stream);
          }
          else if (lastNewLine) {
            fflush(stream);
            lastNewLine = FALSE;
          }
          else {
            if (*buffer == '\n') {
              lastNewLine = TRUE;
            }

            *stream->buffer++ = *buffer++;
            --size;
          }
        }

        return origionalSize;

      case _IOFBF:
        if (size <= (stream->bufferMaxSize - stream->bufferSize)) {
          memcpy(stream->buffer + stream->bufferSize, buffer, size);
          stream->bufferSize += size;
          return size;
        }
        else {
          memcpy(stream->buffer + stream->bufferSize, buffer, stream->bufferMaxSize - stream->bufferSize);
          size -= stream->bufferMaxSize - stream->bufferSize;
          buffer += stream->bufferMaxSize - stream->bufferSize;

          while (size > 0) {
            fflush(stream);
            
            if (size < stream->bufferMaxSize) {
              memcpy(stream->buffer, buffer, size);
              return origionalSize;
            }
            else {
              memcpy(stream->buffer, buffer, stream->bufferMaxSize);
              size -= stream->bufferMaxSize;
              buffer += stream->bufferMaxSize;
            }
          }
        }
        break;
    }
  }

  return 0;
}

int fgetc(FILE* stream)
{
  char c;
  bufferedRead(&c, sizeof (char), stream);
  return (int) c;
}

char* fgets(char* s, int n, FILE* stream)
{
  int count = 0;
  while (TRUE) {
    if ((n != -1) && (count == (n - 1))) {
      s[n - 1] = '\0';
      return s;
    }
    else {
      char c;
      if (bufferedRead(&c, sizeof (char), stream) == sizeof (char)) {
        s[count++] = c;

        if (c == '\n') {
          s[count] = '\0';
          return s;
        }
      }
      else {
        s[count] = '\0';
        return s;
      }
    }
  }
}

int fputc(int i, FILE* stream)
{
  char c = (char) i;
  return bufferedWrite(&c, sizeof (char), stream);
}

int fputs(const char* s, FILE* stream)
{
  int inSize = strlen(s) * sizeof (char);
  int outSize = bufferedWrite(s, inSize, stream);
  return (inSize == outSize) ? outSize : EOF;
}

int getchar(void)
{
  return fgetc(stdin);
}

char* gets(char* s)
{
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

int putchar(int c)
{
  return fputc(c, stdout);
}

int puts(const char* s)
{
  return fputs(s, stdout);
}

int ungetc(int c, FILE* stream)
{
  if (stream->putBack != EOF) {
    stream->putBack = c;
    return c;
  }
  else {  
    return EOF;
  }
}

size_t fread(void* s, size_t size, size_t number, FILE* stream)
{
  return bufferedRead(s, size * number, stream);
}

size_t fwrite(const void* s, size_t size, size_t number, FILE* stream)
{
  return bufferedWrite(s, size * number, stream);
}

static int FileSize(const char* fileName)
{
  return 0;
}

int fseek(FILE* stream, long offset, int origin)
{
  load_register(register_ah, 0x42);
  load_register(register_al, origin);
  load_register(register_bx, stream->handle);
  load_register(register_dx, 0);
  load_register(register_dx, offset);
  interrupt(33);

  if (getFlag(CARRY_FLAG)) {
    stream->errno = errno = FSEEK; 
  }

  return store_register(register_ax) + store_register(register_dx);
}

long ftell(FILE* stream)
{
  stream->errno = errno = FTELL;
  return 0;
}

long fsize(FILE* stream)
{
  stream->errno = errno = FSIZE;
  return 0;
}

void rewind(FILE* stream)
{
  (void) fseek(stream, 0L, SEEK_SET);
}

int fgetpos(FILE* stream, fpos_t* pos)
{
  *pos = ftell(stream);
  return 0;
}

int fsetpos(FILE* stream, const fpos_t* pos)
{
  return fseek(stream, *pos, SEEK_SET);
}

void clearerr(FILE* stream)
{
  stream->errno = errno = 0;
}

BOOL feof(FILE* stream)
{
  return (ftell(stream) == fsize(stream));
}

BOOL ferror(FILE* stream)
{
  return stream->errno;
}

void perror(const char* s)
{
  fprintf(stderr, "%s: %s\n", s, strerror(errno));
}
