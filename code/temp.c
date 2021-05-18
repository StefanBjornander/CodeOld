#include <stdio.h>
#include <string.h>
#include <file.h>

static char g_tempArray[TMP_MAX][L_tmpnam];
static int g_tempSize = 0;

#define PRINT(x,y) { printf(#x " = <%" #y ">\n", (x)); }

#define TEMP_FILE 0
#define TEMP_NAME 1

#define FILE_NOT_FOUND 0x02

/*static BOOL existsTempName(char* name) {
  int index;
  for (index = 0; index < g_tempSize; ++index) {
    if (strcmp(name, g_tempArray[index]) == 0) {
      return TRUE;
    }
  }

  return FALSE;
}*/

BOOL generateName(int index, char* name, int max) {
  if ((index + 1) < max) {
    char c;
    name[index + 1] = '\0';

    for (c = 'a'; c <= 'z'; ++c) {
      name[index] = c;

      if (!fileexists(name) || generateName(index + 1, name, max)) {
        return TRUE;
      }
    }
  }
  else if (index < max) {
    name[index] = '\0';
  }

  return FALSE;
}

char* tmpnam(char name[L_tmpnam]) {
  if (generateName(0, name, L_tmpnam)) {
    return name;
  }

  return NULL;
}

FILE* tmpfile(void) {
  FILE* stream;
  char name[L_tmpnam];

  if (generateName(0, name, L_tmpnam) &&
      ((stream = fopen(name, "w")) != NULL)) {
    stream->temporary = TRUE;
    return stream;
  }

  return NULL;
}

/*static char* generateTempNameX(char name[L_tmpnam], int size, int status) {
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
  printf("Test\n");

  if (generateTempName(name, 0, TEMP_FILE) &&
      ((stream = fopen(name, "w")) != NULL)) {
    printf("temp name: <%s>\n", name);
    stream->temporary = TRUE;
    return stream;
  }

  return NULL;
}

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