#include <math.h>
#include <ctype.h>
#include <errno.h>
#include <stdarg.h>
#include <stddef.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

extern FILE g_fileArray[];

int atoi(const char* s) {
  return (int) strtol(s, (char**) NULL, 10);
}

long atol(const char* s) {
  return strtol(s, (char**) NULL, 10);
}

extern int g_inStatus, g_inChars;
extern void* g_inDevice;

extern long scanLongInt(int base);
extern unsigned long scanUnsignedLongInt(int base);

long strtol(const char* s, char** endp, int base) {
  g_inStatus = STRING;
  g_inDevice = s;
  g_inChars = 0;

  { long value = scanLongInt(base);

    if (endp != NULL) {
      *endp = s + g_inChars;
    }

    return value;
  }
}

unsigned long strtoul(const char* s, char** endp, int base) {
  g_inStatus = STRING;
  g_inDevice = s;
  g_inChars = 0;
  
  { unsigned long unsignedLongValue = scanUnsignedLongInt(base);

    if (endp != NULL) {
      *endp = s + g_inChars;
    }

    return unsignedLongValue;
  }
}

double atof(const char* s) {
  return strtod(s, (char**) NULL);
}

double strtod(const char* s, char** endp) {
  int chars = '\0';
  double value = 0;
  sscanf(s, "%lf%n", &value, &chars);

  if (endp != NULL) {
    *endp = s + chars;
  }

  return value;
}

/*static BOOL isDigitInBase(char c, int base) {
  if (isdigit(c)) {
    int value = c - '0';
    return ((value >= 0) && (value < base));
  }
  else if (islower(c)) {
    int value = (c - 'a') + 10;
    return ((value >= 0) && (value < base));
  }
  else if (isupper(c)) {
    int value = (c - 'A') + 10;
    return ((value >= 0) && (value < base));
  }
  else {
    return FALSE;
  }
}

static int digitToValue(char c) {
  if (isdigit(c)) {
    return (c - '0');
  }
  else if (islower(c)) {
    return ((c - 'a') + 10);
  }
  else if (isupper(c)) {
    return ((c - 'A') + 10);
  }
  else {
    return 0;
  }
}

long strtol(char* s, char** endp, int base) {
  if (base == 0) {
    int chars = 0;
    long value = 0;
    sscanf(s, "%li%n", &value, &chars);

    if (endp != NULL) {
      *endp = s + chars;
    }

    return value;
  }
  else if ((base => 0) && (base <= 36)) {
    scanLongInt
    BOOL minus = FALSE;

    while (isspace(*s)) {
      ++s;
    }

    if (*s == '+') {
      ++s;
    }
    else if (*s == '-') {
      minus = TRUE;
      ++s;
    }

    long value = 0;
    while (TRUE) {
      char c = *s;

      if (!isbasedigit(c, base)) {
        break;
      }

      value *= base;
      value += tobasevalue(c);
      ++s;
    }

    if (endp != NULL) {
      *endp = s;
    }

    return minus ? -value : value;
  }
  else {
    return 0;
  }
}*/

void strtol_test(void) {
  { int base = 0;
    char text[] = "   +123abc", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 0;
    char text[] = "   +0123abc", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 0;
    char text[] = "   +0x123ABC", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 0;
    char text[] = "   +0X123abc", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 0;
    char text[] = "   -123abc", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 0;
    char text[] = "   -0123abc", *pointer;
    long value = strtol(text, &pointer, base);
    printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 0;
    char text[] = "   -0x123ABC", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 0;
    char text[] = "   -0X123abc", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 9;
    char text[] = "   +123abc", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 10;
    char text[] = "   +123abc", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 11;
    char text[] = "   +123abc", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 12;
    char text[] = "   +123ABC", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }
  
  { int base = 13;
    char text[] = "   +123abc", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 9;
    char text[] = "   -123abc", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 10;
    char text[] = "   -123abc", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 11;
    char text[] = "   -123abc", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 12;
    char text[] = "   -123ABC", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 13;
    char text[] = "   -123abc", *pointer;
    long value = strtol(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }
}

/*unsigned long strtoul(char* s, char** endp, int base) {
  if (base == 0) {
    int chars = 0;
    unsigned long value = 0;
    sscanf(s, "%lu%n", &value, &chars);

    if (endp != NULL) {
      *endp = s + chars;
    }

    return value;
  }
  else if ((base > 0) && (base <= 36)) {
    while (isspace(*s)) {
      ++s;
    }

    if (*s == '+') {
      ++s;
    }

    unsigned long value = 0;
    while (TRUE) {
      char c = *s;

      if (!isbasedigit(c, base)) {
        break;
      }

      value *= base;
      value += tobasevalue(c);
    }

    if (endp != NULL) {
      *endp = s;
    }

    return value;
  }
  else {
    return 0;
  }
}*/

void strtoul_test(void) {
  { int base = 0;
    char text[] = "   +123abc", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 0;
    char text[] = "   +0123abc", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 0;
    char text[] = "   +0x123ABC", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 0;
    char text[] = "   +0X123abc", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 0;
    char text[] = "   -123abc", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 0;
    char text[] = "   -0123abc", *pointer;
    long value = strtoul(text, &pointer, base);
    printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 0;
    char text[] = "   -0x123ABC", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 0;
    char text[] = "   -0X123abc", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 9;
    char text[] = "   +123abc", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 10;
    char text[] = "   +123abc", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 11;
    char text[] = "   +123abc", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 12;
    char text[] = "   +123ABC", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }
  
  { int base = 13;
    char text[] = "   +123abc", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 9;
    char text[] = "   -123abc", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 10;
    char text[] = "   -123abc", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 11;
    char text[] = "   -123abc", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 12;
    char text[] = "   -123ABC", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }

  { int base = 13;
    char text[] = "   -123abc", *pointer;
    long value = strtoul(text, &pointer, base);
        printf("<%s> <%li> <%s> <%i>\n", text, value, pointer, base);
  }
}

void abort(void) {
#ifdef __WINDOWS__
  register_ah = 0x4Cs;
  register_al = (unsigned char) -1;
  interrupt(0x21s);
#endif

#ifdef __LINUX__
  register_rax = 60L;
  register_rdi = (unsigned long) -1;
  syscall();
#endif
}

char* getenv(const char* /* name */) {
  return NULL;
}

int system(const char* /* command */) {
  return -1;
}

void* bsearch(const void* keyPtr, const void* valueList,
              size_t listSize, size_t valueSize,
              int (*compare)(const void*, const void*)) {
  int firstIndex = 0, lastIndex = listSize - 1;

  if (listSize == 0) {
    return NULL;
  }

  while (TRUE) {
    { char* firstValuePtr = ((char*) valueList) + (firstIndex * valueSize);
      int firstCompare = compare(keyPtr, firstValuePtr);

      if (firstCompare < 0) {
        return NULL;
      }
      else if (firstCompare == 0) {
        return firstValuePtr;
      }
    }

    { char* lastValuePtr = ((char*) valueList) + (lastIndex * valueSize);
      int lastCompare = compare(keyPtr, lastValuePtr);

      if (lastCompare > 0) {
        return NULL;
      }
      else if (lastCompare == 0) {
        return lastValuePtr;
      }
    }

    { int middleIndex = (firstIndex + lastIndex) / 2;
      char* middleValuePtr = ((char*) valueList) + (middleIndex * valueSize);
      int middleCompare = compare(keyPtr, middleValuePtr);

      if (middleCompare < 0) {
        lastIndex = middleIndex;
      }
      else if (middleCompare > 0) {
        firstIndex = middleIndex;
      }
      else {
        return middleValuePtr;
      }
    }
  }
}

static long g_randValue;

#define A 1664525l
#define C 1013904223l
#define RAND_MAX 127

int rand(void) {
  g_randValue = ((A * g_randValue) + C) % RAND_MAX;
  return (int) g_randValue;
}

void srand(unsigned int seed) {
  g_randValue = (long) seed;
}

#define STACK_TOP_ADDRESS   32766
#define HEAP_BOTTOM_ADDRESS 32764
#define HEAP_TOP_ADDRESS    32762
#define HEADER_SIZE (2 * sizeof (unsigned int))

FUNC_PTR g_funcArray[FUNC_MAX] = { NULL };

int atexit(FUNC_PTR fcn) {
  int index;

  for (index = 0; index < FUNC_MAX; ++index) {
    if (g_funcArray[index] == NULL) {
      g_funcArray[index] = fcn;
      return 0;
    }
  }

  return -1;
}

void exit(int status) {
  int index;

  for (index = (FUNC_MAX - 1); index >= 0; --index) {
    if (g_funcArray[index] != NULL) {
      g_funcArray[index]();
    }
  }

#ifdef __WINDOWS__
  register_al = (short) status;
  register_ah = 0x4Cs;
  interrupt(0x21s);
#endif

#ifdef __LINUX__
  register_rax = 60L;
  register_rdi = (unsigned long) status;
  syscall();
#endif
}

static void memswap(char* value1, char* value2, int valueSize) {
  int index;
  for (index = 0; index < valueSize; ++index) {
    char tempValue = value1[index];
    value1[index] = value2[index];
    value2[index] = tempValue;
  }
}

void qsort(void* valueList, size_t listSize, size_t valueSize,
           int (*compare) (const void*, const void*)) {
  char* charList = (char*) valueList;
  int size;
  for (size = (listSize - 1); size > 0; --size)  {
    int index;
    BOOL update = FALSE;
    for (index = 0; index < size; ++index)  {
      char* valuePtr1 = charList + (index * valueSize);
      char* valuePtr2 = charList + ((index + 1) * valueSize);

      if (compare(valuePtr1, valuePtr2) > 0) {
        memswap(valuePtr1, valuePtr2, valueSize);
        update = TRUE;
      }
    }

    if (!update) {
      break;
    }
  }
}

/*void qsortX(const void* valueList, size_t listSize, size_t valueSize,
           int (*compare)(const void*, const void*)) {
  BOOL update;
  char* charList = (char*) valueList;

  int index1;
  for (index1 = (listSize - 1); index1 > 0; --index1)  {
    update = FALSE;
    printf("index 1: %i\n", index1);

    int index2;
    for (index2 = 0; index2 < index1; ++index2)  {
      printf("  index2: %i\n", index2);

      char* valuePtr1 = charList + (index2 * valueSize);
      printf("A");
      char* valuePtr2 = charList + ((index2 + 1) * valueSize);

      printf("B");
      if (compare(valuePtr1, valuePtr2) > 0) {
        printf("C");
        memswap(valuePtr1, valuePtr2, valueSize);
        printf("D");
        update = TRUE;
        printf("E");
      }

      printf("X");
    }

    printf("Y");
    if (!update) {
      break;
    }
  }

  printf("Z");
}

static void swap(char* leftValuePtr, char* rightValuePtr, int valueSize) {
  int index;
  for (index = 0; index < valueSize; ++index) {
    char tempValue = leftValuePtr[index];
    leftValuePtr[index] = rightValuePtr[index];
    rightValuePtr[index] = tempValue;
  }
}*/

int abs(int value) {
  return (value < 0) ? -value : value;
}

long labs(long value) {
  return (value < 0l) ? -value : value;
}

div_t div(int num, int denum) {
  div_t result = {0, 0};

  if (denum == 0) {
    errno = EDOM;
    return result;
  }

  result.quot = num / denum;
  result.rem = num % denum;
  return result;
}

ldiv_t ldiv(long num, long denum) {
  ldiv_t result = {0, 0};
  
  if (denum == 0) {
    errno = EDOM;
    return result;
  }

  result.quot = num / denum;
  result.rem = num % denum;
  return result;
}