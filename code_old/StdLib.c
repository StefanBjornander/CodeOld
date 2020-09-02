#include <math.h>
#include <ctype.h>
#include <ErrNo.h>
#include <stdarg.h>
#include <stddef.h>
#include <String.h>
#include <stdlib.h>
#include <stdio.h>

extern FILE g_fileArray[];

int atoi(char* s) {
  return (int) strtol(s, (char**) NULL, 10);
}

long atol(char* s) {
  return strtol(s, (char**) NULL, 10);
}

long strtol(char* s, char** endp, int /* base */) {
  int chars = 0;
  long value = 0;
  sscanf(s, "%li%n", &value, &chars);

  if (endp != NULL) {
    *endp = s + chars;
  }

  return value;
}

unsigned long strtoul(char* s, char** endp, int /* base */) {
  int chars = 0;
  unsigned long value = 0;
  sscanf(s, "%lu%n", &value, &chars);

  if (endp != NULL) {
    *endp = s + chars;
  }

  return value;
}

double atof(char* s) {
  return strtod(s, (char**) NULL);
}

double strtod(char* s, char** endp) {
  int chars = '\0';
  double value = 0;
  sscanf(s, "%lf%n", &value, &chars);

  if (endp != NULL) {
    *endp = s + chars;
  }

  return value;
}

/*
long strtol(char* s, char** endp, int base) {
  long longValue;
  g_inStatus = STRING;
  g_inDevice = (void*) s;
  g_inChars = 0;
  scanLongInt(&longValue, base);

  if (endp != NULL) {
    *endp = s + g_inChars;
  }
  return longValue;
}

unsigned long strtoul(char* s, char** endp, int base) {
  unsigned long longValue;
  g_inStatus = STRING;
  g_inDevice = (void*) s;
  g_inChars = 0;
  longValue = scanUnsignedLongInt(base);
  *endp = s + g_inChars;
  return longValue;
}

long strtol(char* s, char** endp, int base) {
  int index = 0;
  BOOL minus = FALSE;
  long longValue = 0;

  while (isspace(s[index])) {
    ++index;
  }

  if (s[index] == '+') {
    ++index;
  }
  else if (s[index] == '-') {
    minus = TRUE;
    ++index;
  }

  if (base == 0) {
    if (s[index] == '0') {
      if (tolower(s[1]) == 'x') {
        base = 16;
        index += 2;
      }
      else {
        base = 8;
        ++index;
      }
    }
    else {
      base = 10;
    }
  }

  while (TRUE) {
    char c = s[index];
    int digit;

    if (isdigit(c)) {
      digit = c - '0';
    }
    else if (islower(c)) {
      digit = c - 'a' + 10;
    }
    else if (isupper(c)) {
      digit = c - 'A' + 10;
    }
    else {
      break;
    }

    if (digit < base) {
      longValue = (base * longValue) + digit;
    }
    else {
      break;
    }

    ++index;
  }

  if (minus) {
    longValue = -longValue;
  }

  if (endp != NULL) {
    *endp = &s[index];
  }

  return longValue;
}

unsigned long strtoul(char* s, char** endp, int base) {
  int index = 0;
  unsigned long longValue = 0;

  while (isspace(s[index])) {
    ++index;
  }

  if (base == 0) {
    if (s[index] == '0') {
      if (tolower(s[1]) == 'x') {
        base = 16;
        index += 2;
      }
      else {
        base = 8;
        ++index;
      }
    }
    else {
      base = 10;
    }
  }

  while (TRUE) {
    char c = s[index];
    int digit;

    if (isdigit(c)) {
      digit = c - '0';
    }
    else if (islower(c)) {
      digit = c - 'a' + 10;
    }
    else if (isupper(c)) {
      digit = c - 'A' + 10;
    }
    else {
      break;
    }

    if (digit < base) {
      longValue = (base * longValue) + digit;
    }
    else {
      break;
    }

    ++index;
  }

  if (endp != NULL) {
    *endp = &s[index];
  }

  return longValue;
}
*/

void abort(void) {
#ifdef __WINDOWS__
  register_ah = 0x4Cs;
  register_al = -1s;
  //load_register(register_ah, 0x4Cs);
  //load_register(register_al, -1s);
  interrupt(0x21s);
#endif

#ifdef __LINUX__
  register_rax = 60L;
  register_rdi = -1L;
  syscall();
#endif
}

char* getenv(const char* /* name */) {
  return NULL;
}

int system(const char* /* command */) {
  return -1;
}

void memswp(void* value1, void* value2, int valueSize) {
  char* charValue1 = (char*) value1;
  char* charValue2 = (char*) value2;

  int index;
  for (index = 0; index < valueSize; ++index) {
    char tempValue = charValue1[index];
    charValue1[index] = charValue2[index];
    charValue2[index] = tempValue;
  }
}

/*
void qsort(const void* valueList, size_t listSize, size_t valueSize,
           int (*compare)(const void*, const void*)) {
  int index1;
  BOOL update;

  for (index1 = (listSize - 1); index1 > 0 ; --index1)  {
    int index2;
    update = FALSE;

    for (index2 = 0; index2 < index1; ++index2)  {
      char* value1 = ((char*) valueList) + (index2 * valueSize);
      char* value2 = ((char*) valueList) + ((index2 + 1) * valueSize);

      if (compare(value1, value2) > 0) {
        memswp(value1, value2, valueSize);
        update = TRUE;
      }
    }

    if (!update) {
      break;
    }
  }
}
*/

void* bsearch(const void* keyPtr, const void* valueList, size_t listSize, size_t valueSize,
              int (*compare)(const void*, const void*)) {
  //int key = *((int*) keyPtr);
  int firstIndex = 0, lastIndex = listSize - 1;

  if (listSize == 0) {
    return NULL;
  }

  while (TRUE) {
    //printf("<%i> <%i>\n", firstIndex, lastIndex);

    { char* firstValuePtr = ((char*) valueList) + (firstIndex * valueSize);
      int firstCompare = compare(keyPtr, firstValuePtr);
//      int firstValue = ((int*) *firstValuePtr);
      //      printf("first key %i, value %i, compare %i\n", key, firstValue, firstCompare);

      if (firstCompare < 0) {
        //printf("1\n");
        return NULL;
      }
      else if (firstCompare == 0) {
        //printf("2\n");
        return firstValuePtr;
      }
    }

    { char* lastValuePtr = ((char*) valueList) + (lastIndex * valueSize);
      int lastCompare = compare(keyPtr, lastValuePtr);
  //    int lastValue = ((int*) *lastValuePtr);
      //      printf("last key %i, value %i, compare %i\n", key, lastValue, lastCompare);

      if (lastCompare > 0) {
        //printf("3\n");
        return NULL;
      }
      else if (lastCompare == 0) {
        //printf("4\n");
        return lastValuePtr;
      }
    }

    { int middleIndex = (firstIndex + lastIndex) / 2; // [0-4]: 2; [0-5]: 2; [0-6]: 3;
      //printf("<%i>\n", middleIndex);
      char* middleValuePtr = ((char*)valueList) + (middleIndex * valueSize);
      int middleCompare = compare(keyPtr, middleValuePtr);
//      int middleValue = *((int*) middleValuePtr);
//      printf("middle key %i, value %i, compare %i\n", key, middleValue, middleCompare);

      if (middleCompare < 0) {
        //printf("5\n");
        lastIndex = middleIndex;
      }
      else if (middleCompare > 0) {
        //printf("6\n");
        firstIndex = middleIndex;
      }
      else {
        //printf("7\n");
        return middleValuePtr;
      }
    }
  }
}

/*
#define MIN(x, y) (((x) < (y)) ? (x) : (y))

extern FILE fileArray[];

/*double atof(const char* text) {
  return strtod(text, (char**) NULL);
}

int atoi(const char* text) {
  return (int) strtol(text, (char**) NULL, 10);
}

long atol(const char* text) {
  return strtol(text, (char**) NULL, 10);
}

double strtod(const char* text, char** suffix) {
  int index;
  BOOL found = FALSE;
  double value = 0, result;
  BOOL negative = FALSE;
  int exponent = 0;
  BOOL invers = FALSE;

  for (index = 0; isspace(text[index]); ++index) {
    // Empty.
  }

  if (text[index] == '+') {
    ++index;
  }

  else if (text[index] == '-') {
    ++index;
    negative = TRUE;
  }

  while (isdigit(text[index])) {
    found = TRUE;
    value = 10 * value + (text[index++] - '0');
  }

  if (text[index] == '.') {
    double dFactor = 1;
    ++index;

    while (isdigit(text[index++])) {
      found = TRUE;
      dFactor /= 10;
      value += dFactor * (text[index] - '0');
    }
  }

  if ((text[index] == 'e') || (text[index] == 'E')) {
    ++index;

    if (text[index] == '+') {
      ++index;
    }

    else if (text[index] == '-') {
      ++index;
      invers = TRUE;
    }

    while (isdigit(text[index]))
    {
      found = TRUE;
      exponent = 10 * exponent + (text[index++] - '0');
    }
  }

  if (suffix != NULL) {
    *suffix = (char*) &text[index];
  }

  if (!found) {
    errno = EDOM;
  }

  result = value * pow(10, invers ? -exponent : exponent);
  return negative ? -result : result;
}

long strtol(const char* text, char** suffix, int base) {
  int index = 0;
  BOOL found = FALSE;
  long lResult = 0;
  BOOL negative = FALSE;

  for (index = 0; isspace(text[index]); ++index) {
    // Empty.
  }

  if (text[index] == '+') {
    ++index;
  }

  else if (text[index] == '-') {
    ++index;
    negative = TRUE;
  }

  if ((text[index] == '0') && ((text[index + 1] == 'x') || (text[index + 1] == 'X'))) {
    if ((base == 0) || (base == 16)) {
      index += 2;
      base = 16;
    }
    else if (base != 16) {
      *suffix = (char*) &text[index];
      errno = EDOM;
      return 0;
    }
  }

  else if ((base == 0) && (text[index] == '0')) {
    ++index;
    base = 8;
  }
  else if (base == 0) {
    base = 10;
  }

  while (TRUE) {
    int digit;
    char c = text[index++];

    if (isdigit(c))  {
      digit = c - '0';
    }
    else if (isxdigit(c))  {
      if (islower(c))  {
        digit = 10 + c - 'a';
      }
      else if (isupper(c)) {
        digit = 10 + c - 'A';
      }
    }
    else {
      break;
    }

    if (digit < base) {
      found = TRUE;
      lResult = base * lResult + digit;
    }
    else {
      break;
    }
  }

  if (suffix != NULL) {
    *suffix = (char*) &text[index - 1];
  }

  if (!found) {
    errno = EDOM;
  }

  return negative ? -lResult : lResult;
}

unsigned long strtoul(const char* text, char** suffix, int base) {
  int index = 0;
  BOOL found = FALSE;
  unsigned long result = 0;

  for (index = 0; isspace(text[index]); ++index) {
    // Empty.
  }

  if ((text[index] == '0') && ((text[index + 1] == 'x') || (text[index + 1] == 'X'))) {
    if ((base == 0) || (base == 16)) {
      index += 2;
      base = 16;
    }
    else if (base != 16) {
      *suffix = (char*) &text[index];
      errno = EDOM;
      return 0;
    }
  }

  else if ((base == 0) && (text[index] == '0')) {
    ++index;
    base = 8;
  }

  else if (base == 0) {
    base = 10;
  }

  while (TRUE) {
    int digit;
    char c = text[index++];

    if (isdigit(c)) {
      digit = c - '0';
    }
    else if (isxdigit(c)) {
      if (islower(c)) {
        digit = 10 + c - 'a';
      }
      else if (isupper(c)) {
        digit = 10 + c - 'A';
      }
    }
    else {
      break;
    }

    if (digit < base) {
      found = TRUE;
      result = base * result + digit;
    }
    else {
      break;
    }
  }

  if (suffix != NULL) {
    *suffix = (char*) &text[index - 1];
  }

  if (!found) {
    errno = EDOM;
  }

  return result;
}
*/

static long g_randValue;

#define A 1664525l
#define C 1013904223l
#define RAND_MAX 127 // 32767

int rand(void) {
  g_randValue = ((A * g_randValue) + C) % RAND_MAX;
//  printf("rand %li\n", g_randValue);
  return (int) g_randValue;
}

void srand(unsigned int seed) {
  g_randValue = (long) seed;
//  printf("srand %u\n", g_randValue);
}

//  private static final int STD_ERR = 2, HEAP_BOTTOM_ADDRESS = 32766, STACK_TOP_ADDRESS = 32764, HEAP_TOP_ADDRESS = 32762;

#define STACK_TOP_ADDRESS   32766 // 65534
#define HEAP_BOTTOM_ADDRESS 32764 // 65532
#define HEAP_TOP_ADDRESS    32762 // 65530
#define HEADER_SIZE (2 * sizeof (unsigned int))

#define PRINT(x,y) { printf(#x " = <%" #y ">\n", (x)); }

void print_heap2() {
  unsigned int heapBottom = *((unsigned int*) HEAP_BOTTOM_ADDRESS),
               topStack = *((unsigned int*) STACK_TOP_ADDRESS),
               heapTop = *((unsigned int*) HEAP_TOP_ADDRESS), index = 0u;
  printf("stack top %u, heap top %u, heap bottom %u\n", topStack, heapTop, heapBottom);

  while (heapTop != 0u) {
    unsigned int size = *(((unsigned int*) heapTop) + 1);
    printf("  index %u, address %u, size %u\n", index++, heapTop, size);
    heapTop = *((unsigned int*) heapTop);
  }

  printf("\n");
}

/*
void* malloc(size_t size) {
  unsigned int prevAddress = HEAP_TOP_ADDRESS,
               topStack = *((unsigned int*) STACK_TOP_ADDRESS),
               newAddress = prevAddress - (size + HEADER_SIZE);

  if (newAddress >= topStack) {
    *((unsigned int*) prevAddress) = newAddress;
    *(((unsigned int*) (newAddress)) + 1) = size;
    *((unsigned int*) newAddress) = NULL;
    *((unsigned int*) HEAP_BOTTOM_ADDRESS) = newAddress;
    return (newAddress - HEADER_SIZE);
  }

  return NULL;
}
*/

/*
void* malloc(size_t size) {
  if (size > 0) {
    unsigned int prevAddress = HEAP_TOP_ADDRESS,
      nextAddress = *((unsigned int*) HEAP_TOP_ADDRESS),
      minDifference = 0u, minPrevAddress = 0u, minNextAddress = 0u;

    while (nextAddress != 0u) {
      unsigned int nextSize = *(((unsigned int*)(nextAddress)) + 1);
      unsigned int difference = (prevAddress - nextAddress) - (nextSize + HEADER_SIZE) - (size + HEADER_SIZE);

      if ((difference >= (size + HEADER_SIZE)) && ((minDifference == 0) || (difference < minDifference))) {
        minPrevAddress = prevAddress;
        minNextAddress = nextAddress;
        minDifference = difference;
      }

      prevAddress = nextAddress;
      nextAddress = *((unsigned int*)nextAddress);
    }

    if (minDifference > 0u) {
      unsigned int newAddress = prevAddress - (size + HEADER_SIZE);
      *((unsigned int*)prevAddress) = newAddress;
      *(((unsigned int*)(newAddress)) + 1) = size;
      *((unsigned int*)newAddress) = nextAddress;
      return (void*)(newAddress + HEADER_SIZE);
    }
    else {
      unsigned int topStack = *((unsigned int*)STACK_TOP_ADDRESS),
        newAddress = prevAddress - (size + HEADER_SIZE);

      if (newAddress >= topStack) {
        *((unsigned int*)prevAddress) = newAddress;
        *(((unsigned int*)(newAddress)) + 1) = size;
        *((unsigned int*)newAddress) = NULL;
        *((unsigned int*)HEAP_BOTTOM_ADDRESS) = newAddress;
        return (void*)(newAddress + HEADER_SIZE);
      }
    }
  }

  return NULL;
}*/

#if 0
void* malloc2(size_t size) {
  if (size > 0) {
    /* unsigned */ int prevAddress = HEAP_TOP_ADDRESS,
      nextAddress = *((/* unsigned */ int*)HEAP_TOP_ADDRESS),
      minDifference = 0u, minPrevAddress = 0u, minNextAddress = 0u;

    while (nextAddress != 0/*u*/) {
      /* unsigned */ int nextSize = *(((/* unsigned */ int*)(nextAddress)) + 1);
      /* unsigned */ int difference = (prevAddress - nextAddress) - (nextSize + HEADER_SIZE) - (size + HEADER_SIZE);

      if ((difference >= (size + HEADER_SIZE)) && ((minDifference == 0) || (difference < minDifference))) {
        minPrevAddress = prevAddress;
        minNextAddress = nextAddress;
        minDifference = difference;
      }

      prevAddress = nextAddress;
      nextAddress = *((/* unsigned */ int*)nextAddress);
    }

    if (minDifference > 0/*u*/) {
      /* unsigned */ int newAddress = prevAddress - (size + HEADER_SIZE);
      *((/* unsigned */ int*)prevAddress) = newAddress;
      *(((/* unsigned */ int*)(newAddress)) + 1) = size;
      *((/* unsigned */ int*)newAddress) = nextAddress;
      return (void*)(newAddress + HEADER_SIZE);
    }
    else {
      /* unsigned */ int topStack = *((/* unsigned */ int*) STACK_TOP_ADDRESS),
        newAddress = prevAddress - (size + HEADER_SIZE);

      if (newAddress >= topStack) {
        *((/* unsigned */ int*)prevAddress) = newAddress;
        *(((/* unsigned */ int*)(newAddress)) + 1) = size;
        *((/* unsigned */ int*)newAddress) = NULL;
        *((/* unsigned */ int*)HEAP_BOTTOM_ADDRESS) = newAddress;
        return (void*)(newAddress + HEADER_SIZE);
      }
    }
  }

  return NULL;
}

void free2(void* ptr) {
  /* unsigned */ int address = (/* unsigned */ int) ptr;

  if (address > 0/*u*/) {
    /* unsigned */ int prevAddress = HEAP_TOP_ADDRESS,
                 nextAddress = *((/* unsigned */ int*) HEAP_TOP_ADDRESS);

    while (nextAddress != 0/*u*/) {
      if (address == (nextAddress + HEADER_SIZE)) {
        /* unsigned */ int nextNextAddress = *((/* unsigned */ int*) nextAddress);
        *((/* unsigned */ int*) prevAddress) = nextNextAddress;

        if (nextNextAddress == 0/*u*/) {
          *((/* unsigned */ int*) HEAP_BOTTOM_ADDRESS) = prevAddress;
        }
        
        break;
      }
      
      prevAddress = nextAddress;
      nextAddress = *((/* unsigned */ int*) nextAddress);
    }
  }
}

void* realloc2(void* ptr, size_t size) {
  /* unsigned */ int address = (/* unsigned */ int) ptr;

  if ((address == 0/*u*/) && (size == 0/*u*/)) {
    return NULL;
  }
  else if (address == 0/*u*/) {
    return malloc(size);
  }
  else if (size == 0/*u*/) {
    free(ptr);
    return NULL;
  }
  else {
    /* unsigned */ int prevAddress = HEAP_TOP_ADDRESS,
                 nextAddress = *((/* unsigned */ int*) HEAP_TOP_ADDRESS);

    while (nextAddress != 0/*u*/) {
      if (address == (nextAddress + HEADER_SIZE)) {
        /* unsigned */ int difference = prevAddress - nextAddress;

        if (difference >= (size + HEADER_SIZE)) {
          *(((/* unsigned */ int*) (nextAddress)) + 1) = size;
          return ptr;
        }
        else {
          free(ptr);
          return malloc(size);
        }
      }

      prevAddress = nextAddress;
      nextAddress = *((/* unsigned */ int*) nextAddress);
    }

    return malloc(size);
  }
}

void* calloc2(size_t num, size_t size) {
  void* ptr = malloc(num * size);

  if (ptr != NULL) {
    memset(ptr, 0, num * size);
  }

  return ptr;
}
#endif

FUNC_PTR g_funcArray[FUNC_MAX] = { NULL };

int atexit(FUNC_PTR fcn) {
  int index;

  printf("\n");
  for (index = 0; index < FUNC_MAX; ++index) {
    if (g_funcArray[index] == NULL) {
      g_funcArray[index] = fcn;
      printf("Added function index %i: %i\n", index, g_funcArray[index]);
      return 0;
    }
  }

  return -1;
}

void exit(int status) {
  int index;
  
  /*for (index = 0; index < OPEN_MAX; ++index) {
    if (g_fileArray[index].open) {
      return;
//      fclose(&g_fileArray[index]);
    }
  }*/

  printf("\n");
  for (index = (FUNC_MAX - 1); index >= 0; --index) {
    if (g_funcArray[index] != NULL) {
      printf("Called function index %i: %i\n", index, g_funcArray[index]);
      g_funcArray[index]();
    }
  }

#ifdef __WINDOWS__
  register_al = (short) status;
  register_ah = 0x4Cs;
  //load_register(register_al, (short)status);
  //load_register(register_ah, 0x4Cs);
  interrupt(0x21s);
#endif

#ifdef __LINUX__
  register_rax = 60L;
  register_rdi = (unsigned long) status;
  syscall();
#endif
}

/*
void* bsearch(const void* key, const void* base, size_t n, size_t size,
              int (*compareFunction)(const void*, const void*)) {
  char* charBase = (void*) base;
  int middleIndex, compare;
  char* middleValue;

  if (n == 0) {
    return NULL;
  }

  middleIndex = (n - 1) / 2;
  middleValue = charBase + (middleIndex * size);
  compare = compareFunction(key, middleValue);

  if (compare == 0) {
    return middleValue;
  }
  else if (compare < 0) {
    return bsearch(key, base, middleIndex, size, compareFunction);
  }
  else{
    return bsearch(key, charBase + ((middleIndex + 1) * size),
                   n - (middleIndex + 1), size, compareFunction);
  }
}

void merge_sort(const void* base, size_t n, size_t size,
                int (*compareFunction)(const void*, const void*)) {
  char* charBase = (char*) base;
  int lowerSize = n / 2, upperSize = n - lowerSize;
  int baseIndex = 0, lowerIndex = 0, upperIndex = 0;

  char* lowerBase = malloc(lowerSize * size);
  char* upperBase = malloc(upperSize * size);

  if (n <= 1) {
    return;
  }

  memcpy(lowerBase, charBase, lowerSize * size);
  memcpy(upperBase, charBase + (lowerSize * size), upperSize * size);

  MergeSort(lowerBase, lowerSize, size, compareFunction);
  MergeSort(upperBase, upperSize, size, compareFunction);

  while ((lowerIndex < lowerSize) && (upperIndex < upperSize)) {
    if (compareFunction(lowerBase + (lowerIndex * size), upperBase + (upperIndex * size)) <= 0)  {
      memcpy(charBase + ((baseIndex++) * size), lowerBase + ((lowerIndex++) * size), size);
    }
    else {
      memcpy(charBase + ((baseIndex++) * size), upperBase + ((upperIndex++) * size), size);
    }
  }

  while (lowerIndex < lowerSize) {
    memcpy(charBase + ((baseIndex++) * size), lowerBase + ((lowerIndex++) * size), size);
  }

  while (upperIndex < upperSize) {
    memcpy(charBase + ((baseIndex++) * size), upperBase + ((upperIndex++) * size), size);
  }

  free(lowerBase);
  free(upperBase);
}

void quick_sort(const void* base, size_t n, size_t size,
                int (*compareFunction)(const void*, const void*)) {
  char* charBase = (char*) base;
  int index, lowerSize = 0, upperSize = 0;

  char* pivotBase = malloc(size);
  char* lowerBase = malloc(n * size);
  char* upperBase = malloc(n * size);

  if (n <= 1) {
    return;
  }

  memcpy(pivotBase, charBase, size);

  for (index = 1; index < n; ++index) {
    if (compareFunction(charBase + (index * size), pivotBase) <= 0) {
      memcpy(lowerBase + ((lowerSize++) * size), charBase + (index * size), size);
    }
    else {
      memcpy(upperBase + ((upperSize++) * size), charBase + (index * size), size);
    }
  }

  // ----------------------------------------------------------------------
  QuickSort(lowerBase, lowerSize, size, compareFunction);
  QuickSort(upperBase, upperSize, size, compareFunction);

  memcpy(charBase, lowerBase, lowerSize * size);
  memcpy(charBase + (lowerSize * size), pivotBase, size);
  memcpy(charBase + ((lowerSize + 1) * size), upperBase, upperSize * size); // lowerBase, upperBase, pivotBase; lowerSize, upperSize, size, register_dx

  free(pivotBase);
  free(lowerBase);
  free(upperBase);
  // ----------------------------------------------------------------------
}
*/

void swap(char* leftValuePtr, char* rightValuePtr, int valueSize) {
  int index;
  for (index = 0; index < valueSize; ++index) {
    char tempValue = leftValuePtr[index];
    leftValuePtr[index] = rightValuePtr[index];
    rightValuePtr[index] = tempValue;
  }
}

void qsort(const void* valueList, size_t listSize, size_t valueSize,
           int (*compare)(const void*, const void*)) {
  BOOL update;
  char* charList = (char*) valueList;

  int index1;
  for (index1 = (listSize - 1); index1 > 0; --index1)  {
    //printf("index1: %i\n", index1);
    update = FALSE;

    int index2;
    for (index2 = 0; index2 < index1; ++index2)  {
      //printf("  index2: %i\n", index2);
      char* valuePtr1 = charList + (index2 * valueSize);
      char* valuePtr2 = charList + ((index2 + 1) * valueSize);
      
      if (compare(valuePtr1, valuePtr2) > 0) {
        swap(valuePtr1, valuePtr2, valueSize);
        update = TRUE;
      }
    }

    if (!update) {
      //break;
    }
  }
}

/*void qsort(const void* valueList, size_t listSize, size_t valueSize,
  int(*compare)(const void*, const void*)) {
  BOOL update;
  char* charList = (char*)valueList;

  int index1;
  for (index1 = (listSize - 1); index1 > 0; --index1)  {
    //printf("<index1 %i>\n", index1);
    int index2;
    update = FALSE;

    for (index2 = 0; index2 < index1; ++index2)  {
      //printf("\n");
      char* valuePtr1 = charList + (index2 * valueSize);
      char* valuePtr2 = charList + ((index2 + 1) * valueSize);
      //printf("<index %i %i>\n", index1, index2);

      int index3;
      for (index3 = 0; index3 < listSize; ++index3)  {
        char* valuePtr = charList + (index3 * valueSize);
        //printf("<%i> ", *((int*) valuePtr));
      }

      //printf("\n<swap 1: %i %i>\n", *((int*) valuePtr1), *((int*) valuePtr2));

      //if (compare(valuePtr1, valuePtr2) > 0) {
      //printf("<test2>\n");
      //printf("<swap 2: %i %i>\n", *((int*) valuePtr1), *((int*) valuePtr2));
      swap(valuePtr1, valuePtr2, valueSize);
      //printf("<swap 3: %i %i>\n", *((int*) valuePtr1), *((int*) valuePtr2));
      //printf("<test3>\n");
      update = TRUE;
      //printf("<test4>\n");
      //}

      //printf("<test5>\n");
    }

    if (!update) {
      break;
    }
  }
}*/

int abs(int value) {
  return (value < 0) ? -value : value;
}

long labs(long value) {
  return (value < 0l) ? -value : value;
  /*if (value < 0l) {
    return -value;
  }
  else {
    return value;
  }*/
}

div_t div(int num, int denum) {
  //printf("1 div %i %i\n", num, denum);
  div_t result = {0, 0};
  //printf("2 div %i %i\n", result.quot, result.rem);

  if (denum == 0) {
    errno = EDOM;
    return result;
  }

  result.quot = num / denum;
  result.rem = num % denum;
  //printf("3 div %i %i\n", result.quot, result.rem);
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