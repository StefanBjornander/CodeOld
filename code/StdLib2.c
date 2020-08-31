#include <math.h>
#include <ctype.h>
#include <ErrNo.h>
#include <stdarg.h>
#include <stddef.h>
#include <String.h>
#include <stdlib.h>
#include <stdio.h>

extern FILE g_fileArray[];

double atof(char* s)
{
  return strtod(s, (char**) NULL);
}

int atoi(char* s)
{
  return (int) strtol(s, (char**) NULL, 10);
}

long atol(char* s)
{
  return strtol(s, (char**) NULL, 10);
}

double strtod(char* s, char** endp)
{
  int chars;
  double value;
  sscanf(s, "%lf%n", &value, &chars);

  if (endp != NULL) {
    *endp = s + chars;
  }

  return value;
}

long strtol(char* s, char** endp, int base)
{
  int chars;
  long value;
  sscanf(s, "%li%n", &value, &chars);

  if (endp != NULL) {
    *endp = s + chars;
  }

  return value;
}

unsigned long strtoul(char* s, char** endp, int base)
{
  int chars;
  unsigned long value;
  sscanf(s, "%lu%n", &value, &chars);

  if (endp != NULL) {
    *endp = s + chars;
  }

  return value;
}

/*
long strtol(char* s, char** endp, int base)
{
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

unsigned long strtoul(char* s, char** endp, int base)
{
  unsigned long longValue;
  g_inStatus = STRING;
  g_inDevice = (void*) s;
  g_inChars = 0;
  longValue = scanUnsignedLongInt(base);
  *endp = s + g_inChars;
  return longValue;
}

long strtol(char* s, char** endp, int base)
{
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

unsigned long strtoul(char* s, char** endp, int base)
{
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

void abort(void)
{
  load_register(register_ah, (short) 0x4C);
  load_register(register_al, (short) -1);
  interrupt(0x21s);
}

char* getenv(char* name)
{
  return NULL;
}

int system(const char* command)
{
  return -1;
}

void memswp(void* value1, void* value2, int valueSize)
{
  char* charValue1 = (char*) value1;
  char* charValue2 = (char*) value2;

  int index;
  for (index = 0; index < valueSize; ++index) {
    char tempValue = charValue1[index];
    charValue1[index] = charValue2[index];
    charValue2[index] = tempValue;
  }
}

void qsort(const void* valueList, size_t listSize, size_t valueSize,
           int (*compare)(const void*, const void*))
{
  int index1;
  BOOL update;

	for (index1 = (listSize - 1); index1 > 0 ; --index1)	{
  	int index2;
    update = FALSE;

		for (index2 = 0; index2 < index1; ++index2)	{
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

void* bsearch(const void* key, const void* valueList, size_t listSize, size_t valueSize,
              int (*compare)(const void*, const void*))
{
	int firstIndex = 0, lastIndex = listSize - 1;

  if (listSize == 0) {
    return NULL;
  }

  while (TRUE) {
    char* firstValue = ((char*) valueList) + (firstIndex * valueSize);
    int firstCompare = compare(key, firstValue);

    if (firstCompare < 0) {
      return NULL;
    }
    else if (firstCompare == 0) {
      return firstValue;
    }

    { char* lastValue = ((char*) valueList) + (lastIndex * valueSize);
      int lastCompare = compare(key, lastValue);

      if (lastCompare > 0) {
        return NULL;
      }
      else if (lastCompare == 0) {
        return lastValue;
      }
    }

    { int middleIndex = (firstIndex + lastIndex) / 2; // [0-4]: 2; [0-5]: 2; [0-6]: 3;
      char* middleValue = ((char*) valueList) + (middleIndex * valueSize);
      int middleCompare = compare(key, middleValue);

      if (middleCompare < 0) {
        lastIndex = middleIndex;
      }
      else if (middleCompare > 0) {
        firstIndex = middleIndex;
      }
      else {
        return middleValue;
      }
    }
  }
}

/*
#define MIN(x, y) (((x) < (y)) ? (x) : (y))

extern FILE fileArray[];

/*double atof(const char* text)
{
  return strtod(text, (char**) NULL);
}

int atoi(const char* text)
{
  return (int) strtol(text, (char**) NULL, 10);
}

long atol(const char* text)
{
  return strtol(text, (char**) NULL, 10);
}

double strtod(const char* text, char** suffix)
{
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

long strtol(const char* text, char** suffix, int base)
{
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

unsigned long strtoul(const char* text, char** suffix, int base)
{
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

static long randValue;

#define A 1664525
#define C 1013904223
#define RAND_MAX 32767

int rand(void)
{
  randValue = ((A * randValue) + C) % RAND_MAX;
  return (int) randValue;
}

void srand(unsigned int seed)
{
  randValue = (long) seed;
}

int g_heapSize = 0;
#define STACK_TOP_ADDRESS 65532
#define HEAP_ARRAY_SIZE 256

struct _heap {
  unsigned int address, size;
}
g_heapArray[HEAP_ARRAY_SIZE];

#define HEAP_BOTTOM_ADDRESS 65534
#define HEAP_FLOOR_ADDRESS (65532 - (sizeof g_heapArray))

#define PRINT(x,y) { printf(#x " = <%" #y ">\n", (x)); }

void print_heap()
{
  int index, topStack = *((unsigned int*) STACK_TOP_ADDRESS),
             heapBottom = *((unsigned int*) HEAP_BOTTOM_ADDRESS);
  PRINT(topStack, u);
  PRINT(heapBottom, u);
  printf("Top Stack %u, Heap Bottom %u, Heap Size %i\n", topStack, heapBottom, g_heapSize);

  for (index = 0; index < g_heapSize; ++index) {
    unsigned int address = g_heapArray[index].address, size = g_heapArray[index].size;
    PRINT(index, i);
    PRINT(address, u);
    PRINT(size, u);
    printf("  Index %i, Address %u, Size %u\n", index, address, size);
  }
}

static BOOL compareHeap(void* leftOperand, void* rightOperand)
{
  int leftAddress = ((struct _heap*) leftOperand)->address,
      rightAddress = ((struct _heap*) rightOperand)->address;

  return (leftAddress > rightAddress) ? -1 : ((leftAddress < rightAddress) ? 1 : 0);
}

void* malloc(size_t size)
{
  if ((size > 0u) && (g_heapSize < HEAP_ARRAY_SIZE)) {
    int index;

    for (index = 0; index < g_heapSize; ++index) {
      unsigned int prevBottomAddress = (index == 0) ? HEAP_FLOOR_ADDRESS : g_heapArray[index - 1].address,
                   currTopAddress = g_heapArray[index].address + g_heapArray[index].size,
                   difference = prevBottomAddress - currTopAddress;

      if (difference >= size) {
        PRINT("List", s);
        g_heapArray[g_heapSize].address = currTopAddress;
        g_heapArray[g_heapSize].size = size;

        PRINT(g_heapSize, i);
        PRINT(g_heapArray[g_heapSize].address, u);
        PRINT(g_heapArray[g_heapSize].size, u);

        ++g_heapSize;
        qsort(g_heapArray, g_heapSize, sizeof (struct _heap), compareHeap);
        return (void*) currTopAddress;
      }
    }

    { unsigned int lastBottomAddress, stackTop = *((unsigned int*) STACK_TOP_ADDRESS), newBottomAddress;
    
      if (g_heapSize == 0) {
        lastBottomAddress = HEAP_FLOOR_ADDRESS;
      }
      else {
        lastBottomAddress = g_heapArray[g_heapSize - 1].address;
      }

      newBottomAddress = lastBottomAddress - size;

      if (newBottomAddress >= stackTop) {
        PRINT("Extra", s);
        *((unsigned int*) HEAP_BOTTOM_ADDRESS) = newBottomAddress;
        g_heapArray[g_heapSize].address = newBottomAddress;
        g_heapArray[g_heapSize].size = size;

        PRINT(g_heapSize, i);
        PRINT(g_heapArray[g_heapSize].address, u);
        PRINT(g_heapArray[g_heapSize].size, u);

        ++g_heapSize;
        return (void*) newBottomAddress;
      }
      else {
        PRINT("Null", s);
      }
    }
  }

  return NULL;
}

void free(void* ptr)
{
  int index;
  unsigned int minAddress = HEAP_FLOOR_ADDRESS;

  for (index = 0; index < g_heapSize; ++index) {
    if (g_heapArray[index].address == (unsigned int) ptr) {
      g_heapArray[index].address = 0;
      qsort(g_heapArray, g_heapSize--, sizeof g_heapArray[0], compareHeap);
    }
    else {
      minAddress = g_heapArray[index].address;
    }
  }

  *((unsigned int*) HEAP_BOTTOM_ADDRESS) = minAddress;
}

void* realloc(void* ptr, size_t newSize)
{
  if (newSize > 0) {
    if (ptr == NULL) {
      return malloc(newSize);
    }
    else {
      int index;

      for (index = 1; index < g_heapSize; ++index) {
        if (g_heapArray[index].address == (unsigned int) ptr) {
          unsigned int topAddress = (index == 0) ? HEAP_FLOOR_ADDRESS : g_heapArray[index - 1].address;

          if ((topAddress - g_heapArray[index].address) <= newSize) {
            g_heapArray[index].size = newSize;
          }
          else {
            free(ptr);
            return malloc(newSize);
          }

          break;
        }
      }
    }
  }

  return NULL;
}

void* calloc(size_t num, size_t size)
{
  void* ptr = malloc(num * size);

  if (ptr != NULL) {
    memset(ptr, 0, num * size);
  }

  return ptr;
}

/*FCN g_funcArray[FUNC_MAX] = {NULL};

int atexit(FCN fcn){
  int index;

  for (index = 0; index < FUNC_MAX; ++index) {
    if (g_funcArray[index] == NULL) {
      g_funcArray[index] = fcn;
      return 0;
    }
  }

  return -1;
}*/

void exit(int status)
{
  int index;
  
  for (index = 0; index < OPEN_MAX; ++index) {
    if (g_fileArray[index].open) {
//      fclose(&g_fileArray[index]);
    }
  }

  for (index = (FUNC_MAX - 1); index >= 0; --index) {
    if (g_funcArray[index] != NULL) {
      g_funcArray[index]();
    }
  }
  
  load_register(register_ah, 0x4C);
  load_register(register_al, (short) status);
  interrupt(0x21s);
}

/*
void* bsearch(const void* key, const void* base, size_t n, size_t size,
              int (*compareFunction)(const void*, const void*))
{
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

void MergeSort(const void* base, size_t n, size_t size,
     	    	   int (*compareFunction)(const void*, const void*))
{
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
		if (compareFunction(lowerBase + (lowerIndex * size), upperBase + (upperIndex * size)) <= 0)	{
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

void QuickSort(const void* base, size_t n, size_t size,
   		         int (*compareFunction)(const void*, const void*))
{
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

void swap(char* value1, char* value2, int valueSize)
{
  int index;
  for (index = 0; index < valueSize; ++index) {
    char temp = value1[index];
    value1[index] = value2[index];
    value2[index] = temp;
  }
}

void qsort(const void* valueList, size_t listSize, size_t valueSize,
           int (*compare)(const void*, const void*))
{
  BOOL update;
	char* charList = (char*) valueList;

  int index1;
	for (index1 = (listSize - 1); index1 > 0 ; --index1)	{
  	int index2;
    update = FALSE;

		for (index2 = 0; index2 < index1; ++index2)	{
			char* value1 = ((char*) valueList) + (index2 * valueSize);
			char* value2 = ((char*) valueList) + ((index2 + 1) * valueSize);

			if (compare(value1, value2) > 0) {
        swap(value1, value2, valueSize);
        update = TRUE;
			}
		}

    if (!update) {
      break;
    }
	}
}
*/

int abs(int value)
{
  return (value < 0) ? -value : value;
}

long labs(long value)
{
  return (value < 0L) ? -value : value;
}

div_t div(int num, int denum)
{
  div_t result = {0, 0};
  
  if (denum == 0) {
    errno = EDOM;
    return result;
  }

  result.quot = num / denum;
  result.rem = num % denum;
  return result;
}

ldiv_t ldiv(long num, long denum)
{
  ldiv_t result = {0, 0};
  
  if (denum == 0) {
    errno = EDOM;
    return result;
  }

  result.quot = num / denum;
  result.rem = num % denum;
  return result;
}