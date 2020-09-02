#include <stdio.h>
#include <stdlib.h>
#include <String.h>
#include <Locale.h>

static struct lconv en_US_utf8 = {1, 1.0, {1, 2, 3}, "abcdefghijklmnopqrstuvwxyz", "ABCDEFGHIJKLMNOPQRSTUVWXYZ"};
static struct lconv sv_SE_utf8 = {2, 2.0, {2, 3, 4}, "abcdefghijklmnopqrstuvwxyzåäö", "ABCDEFGHIJKLMNOPQRSTUVWXYZÅÄÖ"};

static struct _s {
  char* name;
  struct lconv value;
} sArray[] = {{"C", en_US_utf8}, {"en_US_utf8", en_US_utf8}, {"sv_SE_utf8", sv_SE_utf8}};

static int sSize = (sizeof sArray) / (sizeof sArray[0]);

#define SET_ARRAY(sName, fName, fType) {#fName, fType, &(sName . fName), (sizeof (sName . fName)) / (sizeof (sName . fName[0])), sizeof (sName . fName[0])}
#define SET_SCALAR(sName, fName, fType) {#fName, fType, &(sName . fName), 0, sizeof (sName . fName)}

#define INT    0
#define DOUBLE 1
#define CHAR   2
#define TEXT   3

static struct _t {
  char* name;
  int type;
  void* address;
  int arraySize, valueSize;
} tArray[] = {SET_SCALAR(sStruct, i, INT), SET_SCALAR(sStruct, x, DOUBLE), SET_ARRAY(sStruct, a, INT)};

static int tSize = (sizeof tArray) / (sizeof (tArray[0]));

BOOL lookupField(char *field, int* typePtr, void** addressPtr, int* arraySizePtr, int* valueSizePtr);
void setValue(char* text, void* valuePtr, int valueSize, int valueType);
BOOL readLocaleFile(char* fileName);

extern char* setlocale(int flag, char* name)
{
  if (name == NULL) {
    return &sStruct;
  }
  else if (strcmp(name, "") == 0) {
    char* text = getenv("LOCALE_FILE");

    if (text != NULL) {
      int index;

      while (TRUE) {
        char* semi = strchr(text, ';');

        if (semi != NULL) {
          *semi = '\0';

          if (readLocaleFile(text)) {
            return &sStruct;
          }

          text = semi + 1;
        }
        else {
          return readLocaleFile(text) ? &sStruct : NULL;
        }
      }
    }

    return NULL;
  }
  else {
    int index;
  
    for (index = 0; index < sSize; ++index) {
      if (strcmp(name, sArray[index].name) == 0) {
        memcpy(&sStruct, &sArray[index].value, sizeof sStruct);
        return &sStruct;
      }
    }

    return NULL;
  }
}

extern struct lconv *localeconv(void)
{
  return &sStruct;
}

static BOOL lookupField(char *field, int* typePtr, void** addressPtr, int* arraySizePtr, int* valueSizePtr)
{
  int index;
  for (index = 0; index < tSize; ++index) {
    if (strcmp(field, tArray[index].name) == 0) {
      *typePtr = tArray[index].type;
      *addressPtr = tArray[index].address;
      *arraySizePtr = tArray[index].arraySize;
      *valueSizePtr = tArray[index].valueSize;
      return TRUE;
    }
  }

  return FALSE;
}

static void setValue(char* text, void* valuePtr, int valueSize, int valueType)
{
  switch (valueType) {
    case INT:
      sscanf(text, "%i", valuePtr);
      break;

    case DOUBLE:
      sscanf(text, "%lf", valuePtr);
      break;

    case CHAR:
      sscanf(text, "%c", valuePtr);
      break;

    case TEXT:
      sscanf(text, "%*s", valueSize, valuePtr);
      break;
  }
}

static BOOL readLocaleFile(char* fileName)
{
  char buffer[256];
  FILE* stream = fopen(fileName, "r");

  if (stream != NULL) {
    while (fgets(buffer, 256, stream) != NULL) {
      char* eq = strchr(buffer, '=');

      if (eq != NULL) {
        void* valuePtr;
        int valueType, arraySize, valueSize;

        char* name = buffer;
        char* text = eq + 1;
        *eq = '\0';

        if (lookupField(name, &valueType, &valuePtr, &arraySize, &valueSize)) {
          if (arraySize > 0) {
            int index;
            for (index = 0; index < arraySize; ++index) {
              char* comma = strchr(text, ',');

              if (comma != NULL) {
                *comma = '\0';
                setValue(text, valuePtr + (index * valueSize), valueSize, valueType);
                text = comma + 1;
              }
              else {
                setValue(text, valuePtr + (index * valueSize), valueSize, valueType);
                break;
              }
            }
          }
          else {
            setValue(text, valuePtr, valueSize, valueType);
          }
        }
      }
    }

    fclose(stream);
    return TRUE;
  }
  else {
    return FALSE;
  }
}