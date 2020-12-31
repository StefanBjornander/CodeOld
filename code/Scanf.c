#include <math.h>
#include <ctype.h>
#include <stdio.h>
#include <stddef.h>
#include <stdarg.h>
#include <String.h>
#include <scanf.h>
#include <printf.h>

//#define PRINT(x,y) { printf(#x " = <%" #y ">\n", (x)); }

int g_inStatus, g_inChars;
void* g_inDevice;
int g_inCount;

char scanChar(void);
void unscanChar(char c);
void scanString(char* string, int precision);
long scanLongInt(int base);
unsigned long scanUnsignedLongInt(int base);
long double scanLongDouble(void);

char scanChar(void) {
  char c = '\0';
  FILE* stream;
  int handle;
  char* inString;

  switch (g_inStatus) {
    case DEVICE:
      stream = (FILE*) g_inDevice;
      
      handle = stream->handle;
#ifdef __WINDOWS__
      register_ah = 0x3Fs;
      register_bx = handle;
      register_cx = 1;
      register_dx = &c;
      interrupt(0x21s);
#endif

#ifdef __LINUX__
      register_rax = 0x00L;
      register_rdi = (unsigned long) stream->handle;
      register_rsi = (unsigned long) &c;
      register_rdx = 1L;
      syscall();
#endif

      ++g_inChars;
      return c;

    case STRING:
      inString = (char*) g_inDevice;
      return inString[g_inChars++];

    default:
      return '\0';
  }
}

void unscanChar(char /* c */) {
  switch (g_inStatus) {
    case DEVICE:
      --g_inChars;
      break;

    case STRING:
      --g_inChars;
      break;
  }
}

static char* strnchr(const char* text, int size, int i) {
  size_t index;
  char c = (char) i;

  for (index = 0; index < size; ++index) {
    if (text[index] == c) {
      return &text[index];
    }
  }

  return NULL;
}

void scanPattern(char* string, char* pattern, int size, BOOL not) {
  int index = 0;
  char input = scanChar();

  while (isspace(input)) {
    input = scanChar();
  }

  if (string != NULL) {
    while ((!not && strnchr(pattern, size, input)) ||
           (not && !strnchr(pattern, size, input))) {
      string[index++] = input;
      input = scanChar();
    }

    string[index] = '\0';
  }
  else {
    while ((!not && strnchr(pattern, size, input)) ||
           (not && !strnchr(pattern, size, input))) {
      input = scanChar();
    }
  }
}

void scanString(char* string, int precision) {
  int index = 0;
  char input = scanChar();
  BOOL found = FALSE;

  while (isspace(input)) {
    input = scanChar();
  }

  if (string != NULL) {
    if (precision == 0) {
      while (!isspace(input) && (input != EOF) && (input != '\n')) {
        string[index++] = input;
        input = scanChar();
        found = TRUE;
        ++g_inChars;
      }

      string[index] = '\0';
      ++g_inChars;
    }
    else {
      while ((precision-- > 0) && (!isspace(input) &&
             (input != EOF) && (input != '\n'))) {
        string[index++] = input;
        input = scanChar();
        found = TRUE;
        ++g_inChars;
      }

      if (precision > 0) {
        string[index] = '\0';
        ++g_inChars;
      }
    }
  }
  else {
    if (precision == 0) {
      while (!isspace(input) && (input != EOF) &&
             (input != '\n')) {
        input = scanChar();
        found = TRUE;
        ++g_inChars;
      }

      ++g_inChars;
    }
    else {
      while ((precision-- > 0) && (!isspace(input) &&
             (input != EOF) && (input != '\n'))) {
        input = scanChar();
        found = TRUE;
        ++g_inChars;
      }

      if (precision > 0) {
        ++g_inChars;
      }
    }
  }

  if (found) {
    ++g_inCount;
  }
}

static BOOL isDigitInBase(char c, int base) {
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

long scanLongInt(int base) {
  long longValue = 0l;
  BOOL minus = FALSE, found = FALSE;
  char input = scanChar();

  while (isspace(input)) {
    input = scanChar();
  }

  if (input == '+') {
    input = scanChar();
  }
  else if (input == '-') {
    minus = TRUE;
    input = scanChar();
  }

  if (base == 0) {
    if (input == '0') {
      input = scanChar();

      if (tolower(input) == 'x') {
        base = 16;
        input = scanChar();
      }
      else {
        base = 8;
      }
    }
    else {
      base = 10;
    }
  }

  while (isDigitInBase(input, base)) {
    longValue *= base;
    longValue += digitToValue(input);
    input = scanChar();
    found = TRUE;
  }

  if (minus) {
    longValue = -longValue;
  }

  if (found) {
    ++g_inCount;
  }

  unscanChar(input);
  return longValue;
}

unsigned long scanUnsignedLongInt(int base) {
  unsigned long unsignedLongValue = 0, digit;
  char input = scanChar();
  BOOL found = TRUE;

  while (isspace(input)) {
    input = scanChar();
  }

  if (input == '+') {
    input = scanChar();
  }

  if (base == 0) {
    if (input == '0') {
      input = scanChar();

      if (tolower(input) == 'x') {
        base = 16;
        input = scanChar();
      }
      else {
        base = 8;
      }
    }
    else {
      base = 10;
    }
  }

  while (isDigitInBase(input, base)) {
    unsignedLongValue *= base;
    unsignedLongValue += digitToValue(input);
    found = TRUE;
    input = scanChar();
  }

  if (found) {
    ++g_inCount;
  }

  unscanChar(input);
  return unsignedLongValue;
}

long double scanLongDouble(void) {
  BOOL minus = FALSE, found = FALSE;
  long double value = 0.0L, factor = 1.0L;
  char input = scanChar();

  while (isspace(input)) {
    input = scanChar();
  }

  if (input == '+') {
    input = scanChar();
  }
  else if (input == '-') {
    minus = TRUE;
    input = scanChar();
  }

  while (isdigit(input)) {
    value = (10.0L * value) + ((long double) (input - '0'));
    input = scanChar();
    found = TRUE;
  }

  if (input == '.') {
    input = scanChar();

    while (isdigit(input)) {
      factor /= 10.0L;
      value += factor * ((long double) (input - '0'));
      input = scanChar();
      found = TRUE;
    }
  }

  if (tolower(input) == 'e') {
    double exponent = (double) scanLongInt(10);
    value *= pow(10.0, exponent);
  }
  else {
    unscanChar(input);
  }

  if (minus) {
    value = -value;
  }

  if (found) {
    ++g_inCount;
  }

  return value;
}

int scanFormat(char* format, va_list arg_list) {
  char c, *charPtr;
  BOOL percent = FALSE, shortInt = FALSE, longIntOrDouble = FALSE,
       longDouble = FALSE, star = FALSE;

  long longValue, *longPtr;
  short* shortPtr;
  int index, *intPtr, *charsPtr;

  unsigned long unsignedLongValue, *unsignedLongPtr;
  unsigned short* unsignedShortPtr;
  unsigned int* unsignedIntPtr;
  long double longDoubleValue;

  g_inCount = 0;
  g_inChars = 0;

  for (index = 0; format[index] != '\0'; ++index) {
    c = format[index];

    { int d = c + 1;
      if (percent) {
        switch (d - 1) {
          case 'h':
            shortInt = TRUE;
            break;

          case 'l':
            longIntOrDouble = TRUE;
            break;

          case 'L':
            longDouble = TRUE;
            break;

          case '*':
            star = TRUE;
            break;

          case 'c': {
              char charValue = scanChar();

              if (!star) {
                charPtr = va_arg(arg_list, char*);
                *charPtr = charValue;
              }

              percent = FALSE;

              if (charValue != EOF) {
                ++g_inCount;
              }
            }
            break;

          case 's':
            if (!star) {
              charPtr = va_arg(arg_list, char*);
              scanString(charPtr, 0);
            }
            else {
              scanString(NULL, 0);
            }

            percent = FALSE;
            break;

          case 'i':
          case 'd':
            longValue = scanLongInt(10);

            if (!star) {
              if (shortInt) {
                shortPtr = va_arg(arg_list, short*);
                *shortPtr = (short) longValue;
              }
              else if (!longIntOrDouble) {
                intPtr = va_arg(arg_list, int*);
                *intPtr = (int) longValue;
              }
              else {
                longPtr = va_arg(arg_list, long*);
                *longPtr = longValue;
              }
            }

            percent = FALSE;
            break;

          case 'o':
            unsignedLongValue = scanUnsignedLongInt(8);

            if (!star) {
              if (shortInt) {
                unsignedShortPtr = va_arg(arg_list, unsigned short*);
                *unsignedShortPtr = (short) unsignedLongValue;
              }
              else if (!longIntOrDouble) {
                unsignedIntPtr = va_arg(arg_list, unsigned int*);
                *unsignedIntPtr = (int) unsignedLongValue;
              }
              else {
                unsignedLongPtr = va_arg(arg_list, unsigned long*);
                *unsignedLongPtr = unsignedLongValue;
              }
            }

            percent = FALSE;
            break;

          case 'x':
            unsignedLongValue = scanUnsignedLongInt(16);

            if (!star) {
              if (shortInt) {
                unsignedShortPtr = va_arg(arg_list, unsigned short*);
                *unsignedShortPtr = (short) unsignedLongValue;
              }
              else if (!longIntOrDouble) {
                unsignedIntPtr = va_arg(arg_list, unsigned int*);
                *unsignedIntPtr = (int) unsignedLongValue;
              }
              else {
                unsignedLongPtr = va_arg(arg_list, unsigned long*);
                *unsignedLongPtr = unsignedLongValue;
              }
            }

            percent = FALSE;
            break;

          case 'u':
            unsignedLongValue = scanUnsignedLongInt(0);

            if (!star) {
              if (shortInt) {
                unsignedShortPtr = va_arg(arg_list, unsigned short*);
                *unsignedShortPtr = (short) unsignedLongValue;
              }
              else if (!longIntOrDouble) {
                unsignedIntPtr = va_arg(arg_list, unsigned int*);
                *unsignedIntPtr = (int) unsignedLongValue;
              }
              else {
                unsignedLongPtr = va_arg(arg_list, unsigned long*);
                *unsignedLongPtr = unsignedLongValue;
              }
            }

            percent = FALSE;
            break;

          case 'e':
          case 'f':
          case 'g':
            longDoubleValue = scanLongDouble();

            if (!star) {
              if (longIntOrDouble) {
                double* doublePtr = va_arg(arg_list, double*);
                *doublePtr = (double) longDoubleValue;
              }
              else if (longDouble) {
                long double* longDoublePtr = va_arg(arg_list, long double*);
                *longDoublePtr = longDoubleValue;
              }
              else {
                float* floatPtr = va_arg(arg_list, float*);
                *floatPtr = (float) longDoubleValue;
              }
            }

            percent = FALSE;
            break;

          case '[': {
              BOOL not = FALSE;
              ++index;

              if (format[index] == '^') {
                not = TRUE;
                ++index;
              }

              { int startIndex = index;
                
                while (format[index] != ']') {
                  ++index;
                }

                { int size = index - startIndex;
                  char c = format[index];
                  format[index] = '\0';

                  if (!star) {
                    char* string = va_arg(arg_list, char*);
                    scanPattern(string, &format[startIndex], size, not);
                  }
                  else {
                    scanPattern(NULL, &format[startIndex], size, not);
                  }
                   
                  format[index] = c;
                }
              }
            }
            break;

          case 'n':
            charsPtr = va_arg(arg_list, int*);
            *charsPtr = g_inChars;
            percent = FALSE;
            break;

          default:
            //printf("scanFormat c = '%c'\n", c);
            break;
        }
      }
      else {
        if (c == '%') {
          percent = TRUE;
          shortInt = FALSE;
          longIntOrDouble = FALSE;
          longDouble = FALSE;
          star = FALSE;
        }
      }
    }
  }

  return g_inCount;
}

int scanf(const char* format, ...) {
  va_list arg_list;
  va_start(arg_list, format);
  return vscanf(format, arg_list);
}

int vscanf(const char* format, va_list arg_list) {
  return vfscanf(stdin, format, arg_list);
}

int fscanf(FILE* inStream, const char* format, ...) {
  va_list arg_list;
  va_start(arg_list, format);
  return vfscanf(inStream, format, arg_list);
}

int vfscanf(FILE* inStream, const char* format, va_list arg_list) {
  g_inStatus = DEVICE;
  g_inDevice = (void*) inStream;
  return scanFormat(format, arg_list);
}

int sscanf(char* inString, const char* format, ...) {
  va_list arg_list;
  va_start(arg_list, format);
  return vsscanf(inString, format, arg_list);
}

int vsscanf(char* inString, const char* format, va_list arg_list) {
  g_inStatus = STRING;
  g_inDevice = (void*) inString;
  return scanFormat(format, arg_list);
}