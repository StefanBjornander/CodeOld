#include <math.h>
#include <ctype.h>
#include <stdio.h>
#include <stddef.h>
#include <stdarg.h>
#include <stdlib.h>
#include <scanf.h>
#include <printf.h>

#define DEVICE 0
#define STRING 1
#define BLANK  2

//#define PRINT(x,y) { printf(#x " = <%" #y ">\n", (x)); }

int g_outStatus, g_outChars;
void* g_outDevice;

#define DEFAULT_PRECISION 6

void printChar(char c);
void printString(const char* s, int precision);
void printIntRec(int intValue);
void printInt(int intValue, BOOL plus, BOOL space);
void printDoublePlain(double doubleValue, BOOL plus, BOOL space,
                      BOOL grid, int precision);
void printLongDoublePlain(long double doubleValue, BOOL plus,
                          BOOL space, BOOL grid, int precision);
void printInt(int intValue, BOOL plus, BOOL space);
void printLongInt(long longIntValue, BOOL plus, BOOL space);
void printLongDoubleFraction(long double longDoubleValue,
                             BOOL grid, int precision);
void printLongDoublePlain(long double longDoubleValue, BOOL plus,
                          BOOL space, BOOL grid, int precision);
int printFormat(const char* format, va_list arg_list);

int putc(int i, FILE* stream) {
  g_outStatus = DEVICE;
  g_outDevice = (void*) stream;
  printChar((char) i);
  return 1;
}
  
int fputc(int i, FILE* stream) {
  g_outStatus = DEVICE;
  g_outDevice = (void*) stream;
  printChar((char) i);
  return 1;
}

int putchar(int i) {
  g_outStatus = DEVICE;
  g_outDevice = (void*) stdout;
  printChar((char) i);
  return 1;
}

void printChar(char c) {
  int handle;
  char* outString;

  switch (g_outStatus) {
    case DEVICE: {
        FILE* stream = (FILE*) g_outDevice;

#ifdef __WINDOWS__
        register_ah = 0x40s;
        register_bx = stream->handle;
        register_cx = 1;
        register_dx = &c;
        interrupt(0x21s);
#endif

#ifdef __LINUX__
        register_rax = 0x01;
        register_rdi = (unsigned long) stream->handle;
        register_rsi = (unsigned long) &c;
        register_rdx = 1;
        syscall();
#endif
        ++g_outChars;
        break;
      }

    case STRING: {
        outString = (char*) g_outDevice;
        outString[g_outChars++] = c;
      }
      break;

    case BLANK:
      g_outChars++;
      break;
  }
}

void printString(const char* s, int precision) {
  if (s != NULL) {
    int index;

    if (precision == 0) {
      for (index = 0; s[index] != '\0'; ++index) {
        printChar(s[index]);
      }
    }
    else {
      for (index = 0; (precision-- > 0) && (s[index] != '\0'); ++index) {
        printChar(s[index]);
      }
    }
  }
  else {
    printChar('<');
    printChar('N');
    printChar('U');
    printChar('L');
    printChar('L');
    printChar('>');
  }
}

void printLongIntRec(long longValue) {
  if (longValue != 0) {
    int digit = (int) (longValue % 10L);
    printLongIntRec(longValue / 10L);
    printChar((char)(digit + '0'));
  }
}

void printLongInt(long longValue, BOOL plus, BOOL space) {
  if (longValue < 0L) {
    longValue = -longValue;
    printChar('-');
  }
  else if (space) {
    printChar(' ');
  }
  else if (plus) {
    printChar('+');
  }

  if (longValue == 0L) {
    printChar('0');
  }
  else {
    printLongIntRec(longValue);
  }
}

char digitToChar(int digit, BOOL capital) {
  if (digit < 10) {
    return ((char) ('0' + digit));
  }
  else if (capital) {
    return ((char) ('A' + (digit - 10)));
  }
  else {
    return ((char) ('a' + (digit - 10)));
  }
}

void printUnsignedLongRec(unsigned long unsignedValue,
                          unsigned long base, BOOL capital) {
  if (unsignedValue > 0ul) {
    int digit = (int) (unsignedValue % base);
    printUnsignedLongRec(unsignedValue / base, base, capital);

    { char c = digitToChar(digit, capital);
      printChar(c);
    }
  }
}

void printUnsignedLong(unsigned long unsignedValue, BOOL plus, BOOL space,
                       BOOL grid, unsigned long base, BOOL capital) {
  if (plus) {
    printChar('+');
  }
  
  if (space) {
    printChar(' ');
  }

  if (grid) {
    if (base == 8ul) {
      printChar('0');
    }

    if (base == 16ul) {
      printChar('0');
      printChar(capital ? 'X' : 'x');
    }
  }

  if (unsignedValue == 0ul) {
    printChar('0');
  }
  else {
    printUnsignedLongRec(unsignedValue, base, capital);
  }
}

void printLongDoubleFraction(long double longDoubleValue,
                             BOOL grid, int precision) {
  longDoubleValue -= (long) longDoubleValue;

  if (precision == 0) {
    precision = DEFAULT_PRECISION;
  }
  
  if (grid || (precision > 0)) {
    printChar('.');
  }

  while (precision-- > 0) {
    long double longDoubleValue10 = 10.0L * longDoubleValue;
    int digitValue = (int) longDoubleValue10;
    printChar((char) (digitValue + '0'));
    longDoubleValue = longDoubleValue10 - ((long double) digitValue);
  }
}

void printLongDoublePlain(long double longDoubleValue, BOOL plus,
                          BOOL space, BOOL grid, int precision) {
  if (longDoubleValue < 0.0L) {
    printChar('-');
    longDoubleValue = -longDoubleValue;
    plus = FALSE;
    space = FALSE;
  }

  { long longValue = (long) longDoubleValue;
    printLongInt(longValue, plus, space);
    longDoubleValue -= (long double) longValue;
    printLongDoubleFraction(longDoubleValue, grid, precision);
  }
}

void printLongDoubleExpo(long double value, BOOL plus, BOOL space,
                         BOOL grid, int precision, BOOL capital) {
  if (value == 0.0L) {
    printChar('0');
    printLongDoubleFraction(0.0L, precision, grid);
    printChar(capital ? 'E' : 'e');
    printChar('0');
  }
  else {
    if (value < 0.0L) {
      printChar('-');
      value = -value;
    }

    { int expo = (int) log10(value);
      value /= pow(10.0, expo);

      printLongDoublePlain(value, plus, space, grid, precision);
      printChar(capital ? 'E' : 'e');
      printLongInt(expo, TRUE, FALSE);
    }
  }
}

va_list checkWidthAndPrecision(va_list arg_list, int* widthPtr,
                               int* precisionPtr) {
  if ((widthPtr != NULL) && (*widthPtr == -1)) {
    *widthPtr = va_arg(arg_list, int);
  }

  if ((precisionPtr != NULL) && (*precisionPtr == -1)) {
    *precisionPtr = va_arg(arg_list, int);
  }

  return arg_list;
}

va_list printArgument(const char* format, va_list arg_list, BOOL plus,
                      BOOL space, BOOL grid, int* widthPtr, int precision,
                      BOOL shortInt, BOOL longInt, BOOL longDouble, BOOL sign,
                      BOOL* negativePtr) {
  char c = format[0], charValue;
  int *intPtr;
  long double longDoubleValue;
  void* ptrValue;

  switch (c) {
    case 'i':
    case 'd': {
        long longValue;

        if (shortInt) {
          longValue = (long) (short) va_arg(arg_list, int);
        }
        else if (longInt) {
          longValue = va_arg(arg_list, long);
        }
        else {
          longValue = (long) va_arg(arg_list, int);
        }

        if (negativePtr != NULL) {
          *negativePtr = (longValue < 0);
        }

        if (!sign) {
          longValue = labs(longValue);
        }

        arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
        printLongInt(longValue, plus, space);
      }
      break;

    case 'c':
      charValue = (char) va_arg(arg_list, int);
      arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
      printChar(charValue);
      break;

    case 's': {
        char* stringValue = va_arg(arg_list, char*);
        arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
        printString(stringValue, precision);
      }
      break;

    case 'u':
    case 'o':
    case 'b':
    case 'x':
    case 'X': {
        unsigned long base = ((c == 'u') ? 10ul : ((c == 'o') ? 8ul :
                                                  ((c == 'b') ? 2ul : 16ul)));
        unsigned long value;

        if (shortInt) {
          value = (unsigned long) (unsigned short)
                  va_arg(arg_list, unsigned int);
        }
        else if (longInt) {
          value = va_arg(arg_list, unsigned long);
        }
        else {
          value = (unsigned long) va_arg(arg_list, unsigned int);
        }

        arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
        printUnsignedLong(value, plus, space, grid, base, isupper(c));
      }
      break;

    case 'f':
    case 'e':
    case 'E':
    case 'g':
    case 'G':
      if (longDouble) {
        longDoubleValue = va_arg(arg_list, long double);
        printLongDoublePlain(longDoubleValue, FALSE, FALSE, FALSE, 3);
      }
      else {
        longDoubleValue = (long double) va_arg(arg_list, double);
      }

      if (negativePtr != NULL) {
        *negativePtr = (longDoubleValue < 0);
      }

      if (!sign) {
        longDoubleValue = fabs(longDoubleValue);
      }

      arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);

      if (c == 'f') {
        printLongDoublePlain(longDoubleValue, plus, space, grid, precision);
      }
      else if (tolower(c) == 'e') {
        printLongDoubleExpo(longDoubleValue, plus, space,
                            grid, precision, isupper(c));
      }
      else {
        int expo = (int) log10(fabs(longDoubleValue));

        if ((expo >= -3) && (expo <= 2)) {
          printLongDoublePlain(longDoubleValue, plus, space, grid, precision);
        }
        else {
          printLongDoubleExpo(longDoubleValue, plus, space,
                              grid, precision, isupper(c));
        }
      }
      break;

    case 'p':
      ptrValue = va_arg(arg_list, void*);
      arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
      printUnsignedLong((void*)ptrValue, FALSE, FALSE, FALSE, 10u, FALSE);
      break;

    case 'n':
      ptrValue = va_arg(arg_list, void*);
      intPtr = va_arg(arg_list, int*);
      arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
      *intPtr = g_outChars;
      break;

    case '%':
      arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
      printChar('%');
      break;
  }

  return arg_list;
}

int printFormat(const char* format, va_list arg_list) {
  int index, width = 0, precision = 0;
  BOOL percent = FALSE, plus = FALSE, minus = FALSE, space = FALSE,
       zero = FALSE, grid = FALSE, widthStar = FALSE,
       period = FALSE, precisionStar = FALSE,
       shortInt = FALSE, longInt = FALSE, longDouble = FALSE;
  g_outChars = 0;

  for (index = 0; format[index] != '\0'; ++index) {
    char c = format[index];

    if (percent) {
      switch (c) {
        case '+':
          plus = TRUE;
          break;

        case '-':
          minus = TRUE;
          break;

        case ' ':
          space = TRUE;
          break;

        case '0':
          zero = TRUE;
          break;

        case '#':
          grid = TRUE;
          break;

        case '.':
          period = TRUE;
          break;

        case '*':
          if (!period) {
            width = -1;
          }
          else {
            precision = -1;
          }
          break;

        case 'h':
          shortInt = TRUE;
          break;

        case 'l':
          longInt = TRUE;
          break;

        case 'L':
          longDouble = TRUE;
          break;

        case 'i':
        case 'd':
        case 'u':
        case 'b':
        case 'o':
        case 'x':
        case 'X':
        case 'c':
        case 's':
        case 'f':
        case 'e':
        case 'E':
        case 'g':
        case 'G':
        case 'p':
        case 'n':
        case '%': {
            if (minus) {
              int startChars = g_outChars;
              arg_list = printArgument(&format[index], arg_list, plus, space,
                                       grid, &width, precision, shortInt,
                                       longInt, longDouble, TRUE, NULL);

              { int field = g_outChars - startChars;

                while (field++ < width) {
                  printChar(' ');
                }
              }
            }
            else if (zero) {
              int startChars = g_outChars, oldOutStatus = g_outStatus;
              BOOL negative = FALSE;
            
              g_outStatus = BLANK;
              printArgument(&format[index], arg_list, FALSE, FALSE, grid,
                            &width, precision, shortInt, longInt,
                            longDouble, FALSE, &negative);
              g_outStatus = oldOutStatus;

              { int field = g_outChars - startChars;
                g_outChars = startChars;

                if (negative) {               
                  printChar('-');
                  ++field;
                }
                else if (plus) {
                  printChar('+');
                  ++field;
                }
                else if (space) {
                  printChar(' ');
                  ++field;
                }

                while (field++ < width) {
                  printChar('0');
                }

                arg_list = printArgument(&format[index], arg_list, FALSE, FALSE,
                                         grid, NULL, precision, shortInt,
                                         longInt, longDouble, FALSE, NULL);
              }
            }
            else {
              int startChars = g_outChars, oldOutStatus = g_outStatus;

              g_outStatus = BLANK;
              printArgument(&format[index], arg_list, plus, space, grid,
                            &width, precision, shortInt, longInt,
                            longDouble, TRUE, NULL);              
              g_outStatus = oldOutStatus;

              { int field = g_outChars - startChars;
                g_outChars = startChars;

                while (field++ < width) {
                  printChar(' ');
                }

                arg_list = printArgument(&format[index], arg_list, plus, space,
                                         grid, NULL, precision, shortInt,
                                         longInt, longDouble, TRUE, NULL);
              }
            }

            percent = FALSE;
          }
          break;

        default: {
            int value = 0;
            while (isdigit(c)) {
              value = (10 * value) + (c - '0');
              c = format[++index];
            }
            --index;
            
            if (!period) {
              width = value;
            }
            else {
              precision = value;
           }
          }
          break;
      }
    }
    else {
      if (c == '%') {
        percent = TRUE;
        plus = FALSE;
        minus = FALSE;
        space = FALSE;
        zero = FALSE;
        grid = FALSE;
        widthStar = FALSE;
        period = FALSE;
        precisionStar = FALSE;
        shortInt = FALSE;
        longInt = FALSE;
        longDouble = FALSE;
        width = 0;
        precision = 0;
      }
      else {
        printChar(c);
      }
    }
  }

  if (g_outStatus == STRING) {
    char* outString = (char*) g_outDevice;
    outString[g_outChars] = '\0';
  }

  return g_outChars;
}

int printf(const char* format, ...) {
  va_list arg_list;
  va_start(arg_list, format);
  return vprintf(format, arg_list);
}

int vprintf(const char* format, va_list arg_list) {
  return vfprintf(stdout, format, arg_list);
}

int fprintf(FILE* outStream, const char* format, ...) {
  va_list arg_list;
  va_start(arg_list, format);
  return vfprintf(outStream, format, arg_list);
}

int vfprintf(FILE* outStream, const char* format, va_list arg_list) {
  g_outStatus = DEVICE;
  g_outDevice = (void*) outStream;
  return printFormat(format, arg_list);
}

int sprintf(char* outString, const char* format, ...) {
  va_list arg_list;
  va_start(arg_list, format);
  return vsprintf(outString, format, arg_list);
}

int vsprintf(char* outString, const char* format, va_list arg_list) {
  g_outStatus = STRING;
  g_outDevice = (void*) outString;
  return printFormat(format, arg_list);
}