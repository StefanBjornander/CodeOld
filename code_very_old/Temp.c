#include <stdio.h>
#include <String.h>
#include <file.h>

static char g_tempArray[TMP_MAX][L_tmpnam];
static int g_tempSize = 0;

#define PRINT(x,y) { printf(#x " = <%" #y ">\n", (x)); }

//static enum {TEMP_FILE, TEMP_NAME};

#define TEMP_FILE 0
#define TEMP_NAME 1

#define FILE_NOT_FOUND 0x02

/*static BOOL filedelete(const char* name) {
  printf("delete <%s>\n", name);
  register_ah = 0x41s;
  register_al = 0x00s;
  register_dx = name;
  interrupt(0x21s);
  return !carry_flag;
}*/

static BOOL existsTempName(char* name) {
  int index;
  for (index = 0; index < g_tempSize; ++index) {
    if (strcmp(name, g_tempArray[index]) == 0) {
      return TRUE;
    }
  }

  return FALSE;
}

static char* generateTempName(char name[L_tmpnam], int size, int status) {
  if (size < (L_tmpnam - 1)) {
    char c;

    for (c = 'a'; c <= 'z'; ++c) {
      name[size] = c;
      name[size + 1] = '\0';

      if (!fileexists(name)) {
        switch (status) {
          case TEMP_FILE:
            return name;

          case TEMP_NAME:
            if (!existsTempName(name)) {
              strcpy(g_tempArray[g_tempSize], name);
              return g_tempArray[g_tempSize++];
            }
            break;
        }
      }

      { char* result = generateTempName(name, size + 1, status);

        if (result != NULL) {
          return result;
        }
      }
    }
  }

  return NULL;
}

FILE* tmpfile(void) {
  FILE* stream;
  char name[L_tmpnam];

  if (generateTempName(name, 0, TEMP_FILE) && ((stream = fopen(name, "w")) != NULL)) {
    //printf("stream\n");
    stream->temporary = TRUE;
    return stream;
  }

  return NULL;
}

char* tmpnam(char name[L_tmpnam]) {
  if (g_tempSize < TMP_MAX) {
    return generateTempName(name, 0, TEMP_NAME);
  }

  return NULL;
}

/*
void main() {
  int index;
  for (index = 0; index < TMP_MAX; ++index) {
    char temp[L_tmpnam];
    tmpnam(temp);
  }

  for (index = 0; index < g_tempSize; ++index) {
    printf("<%i> <%s>\n", index, (g_tempArray[index] != NULL) ? g_tempArray[index] : "NULL");
  }

  while (TRUE) {
    if (tmpfile() == NULL) {
      break;
    }
  }

  for (index = 0; index < FOPEN_MAX; ++index) {
    FILE* stream = &g_fileArray[index];
    printf("<%i> <%s> <%i> <%s> <%s>\n", index, stream->open ? "open" : "closed", stream->handle, stream->name, stream->temporary ? "yes" : "no");
  }
}
*/