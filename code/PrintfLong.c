#include <math.h>
#include <ctype.h>
#include <stdio.h>
#include <stddef.h>
#include <stdarg.h>
#include <scanf.h>
#include <printf.h>

#define DEVICE 0
#define STRING 1
#define BLANK  2

#define PRINT(x,y) { printf(#x " = <%" #y ">\n", (x)); }

int g_outStatus, g_outChars;
void* g_outDevice;

#define DEFAULT_PRECISION 6

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

//----------------------------------------------------------------------------------------------------------------------
/*
void printChar(char c) {
  int handle;
  char* outString;

  FILE* stream = (FILE*) g_outDevice;
  handle = stream->handle;

  load_register(register_ah, 0x40);
  load_register(register_bx, handle);
  load_register(register_cx, 1);
  load_register(register_dx, &c);
  interrupt(0x21s);
  ++g_outChars;
}

void printChar(char c) {
  FILE* stream = (FILE*) g_outDevice;
  int handle = stream->handle;

  load_register(register_ah, 0x40s);
  load_register(register_bx, handle);
  load_register(register_cx, 1);
  load_register(register_dx, &c);
  interrupt(0x21s);
}
*/

void printChar(char c) {
  int handle;
  char* outString;

  switch (g_outStatus) {
    case DEVICE: {
        FILE* stream = (FILE*) g_outDevice;
        handle = stream->handle;

        load_register(register_ah, 0x40s);
        load_register(register_bx, handle);
        load_register(register_cx, 1);
        load_register(register_dx, &c);
        interrupt(0x21s);
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

void printString(char* s, int precision) {
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

//----------------------------------------------------------------------------------------------------------------------

void printIntRec(int intValue) {
  if (intValue != 0) {
    int digit = intValue % 10s;
    printIntRec(intValue / 10s);
    printChar(digit + '0');
  }
}

void printInt(int intValue, BOOL plus, BOOL space) {
  if (intValue < 0l) {
    printChar('-');
    intValue = -intValue;
  }
  else if (plus) {
    printChar('+');
  }
  else if (space) {
    printChar(' ');
  }

  if (intValue == 0l) {
    printChar('0');
  }
  else {
    printIntRec(intValue);
  }
}

void printLongIntRec(int longValue) {
  if (longValue != 0) {
    int digit = longValue % 10s;
    printLongIntRec(longValue / 10s);
    printChar(digit + '0');
  }
}

void printLongInt(long longValue, BOOL plus, BOOL space) {
  if (longValue < 0l) {
    printChar('-');
    longValue = -longValue;
  }
  else if (plus) {
    printChar('+');
  }
  else if (space) {
    printChar(' ');
  }

  if (longValue == 0l) {
    printChar('0');
  }
  else {
    printLongIntRec(longValue);
  }
}

//----------------------------------------------------------------------------------------------------------------------

char digitToChar(int digit, BOOL capital) {
  if (digit < 10) {
    return '0' + digit;
  }
  else if (capital) {
    return 'A' + (digit - 10);
  }
  else {
    return 'a' + (digit - 10);
  }
}

void printUnsignedLongIntRec(unsigned long unsignedLongValue, unsigned long base, BOOL capital) {
  int digit;

  if (unsignedLongValue > 0ul) {
    digit = unsignedLongValue % base;
    printUnsignedLongIntRec(unsignedLongValue / base, base, capital);
    printChar(digitToChar(digit, capital));
  }
}

void printUnsignedLongInt(unsigned long unsignedLongValue, BOOL plus, BOOL space,
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

  if (unsignedLongValue == 0ul) {
    printChar('0');
  }
  else {
    printUnsignedLongIntRec(unsignedLongValue, base, capital);
  }
}

//----------------------------------------------------------------------------------------------------------------------

void printLongDoubleFraction(long double longDoubleValue, BOOL grid, int precision) {
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
    printChar(digitValue + '0');
    longDoubleValue = longDoubleValue10 - ((long double) digitValue);
  }
}

void printLongDoublePlain(long double longDoubleValue, BOOL plus, BOOL space, BOOL grid, int precision) {
  if (longDoubleValue < 0.0L) {
    printChar('-');
    longDoubleValue = -longDoubleValue;
  }

  printUnsignedLongInt((long) longDoubleValue, plus, space, FALSE, 10ul, FALSE);
  printLongDoubleFraction(longDoubleValue, grid, precision);
}

//----------------------------------------------------------------------------------------------------------------------

void printLongDoubleExpo(long double longDoubleValue, BOOL plus, BOOL space, BOOL grid, int precision, BOOL capital) {
  double logValue;
//  int digitValue;

  if (longDoubleValue < 0.0L) {
    printChar('-');
    longDoubleValue = -longDoubleValue;
  }

  if (longDoubleValue == 0.0L) {
    printChar('0');
    printLongDoubleFraction(0.0L, precision, grid);

    printChar(capital ? 'E' : 'e');
    printChar('0');
  }
  else if (longDoubleValue >= 1.0L) {
    logValue = floor(1.001 * log10((double) longDoubleValue));
    longDoubleValue /= pow(10.0, logValue);

    printChar((int) (longDoubleValue + '0'));
    printLongDoubleFraction(longDoubleValue, precision, grid);

    printChar(capital ? 'E' : 'e');
    printLongInt((long) logValue, TRUE, FALSE);
  }
  else { // 0.005 => 5 * 10^-3
    logValue = floor(0.999 * log10((double) longDoubleValue));
    longDoubleValue /= pow(10.0, logValue);

    printChar((int) (longDoubleValue + '0'));
    printLongDoubleFraction(longDoubleValue, precision, grid);

    printChar(capital ? 'E' : 'e');
    printLongInt((long) logValue, TRUE, FALSE);
  }
}

//----------------------------------------------------------------------------------------------------------------------

va_list checkWidthAndPrecision(va_list arg_list, int* widthPtr, int* precisionPtr) {
  if (*widthPtr == -1) {
    *widthPtr = va_arg(arg_list, int);
  }

  if (*precisionPtr == -1) {
    *precisionPtr = va_arg(arg_list, int);
  }

  return arg_list;
}

va_list printArgument(char* format, va_list arg_list, BOOL plus, BOOL space,
                      BOOL grid, int* widthPtr, int precision, BOOL shortInt,
                      BOOL longInt, BOOL longDouble) {
  char c = format[0], charValue, *stringValue;
//  BOOL capital;
  int logValue, *intPtr;
  long longValue;
  unsigned long base, unsignedLongValue;
//  double doubleValue;
  long double longDoubleValue;
  void* ptrValue;

  switch (c) {
    case 'c':
      charValue = (char) va_arg(arg_list, int);
      arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
      printChar(charValue);
      break;

    case 's':
      stringValue = va_arg(arg_list, char*);
      arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
      printString(stringValue, precision);
      break;
  
    case 'i':
    case 'd':
      if (shortInt) {
        longValue = (long) (short) va_arg(arg_list, int);
      }
      else if (!longInt) {
        longValue = (long) va_arg(arg_list, int);
      }
      else {
        longValue = va_arg(arg_list, long);
      }

      arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
      printLongInt(longValue, plus, space);
      break;

    case 'u':
    case 'o':
    case 'b':
    case 'x':
    case 'X': {
        base = ((c == 'u') ? 10ul : ((c == 'o') ? 8ul : ((c == 'b') ? 2ul : 16ul)));

        if (shortInt) {
          unsignedLongValue = (unsigned long) (unsigned short) va_arg(arg_list, unsigned int);
        }
        else if (!longInt) {
          unsignedLongValue = (unsigned long) va_arg(arg_list, unsigned int);
        }
        else {
          unsignedLongValue = va_arg(arg_list, unsigned long);
        }

        arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
        printUnsignedLongInt(unsignedLongValue, plus, space, grid, base, isupper(c));
      }
      break;

    case 'f':
    case 'e':
    case 'E':
    case 'g':
    case 'G':
      if (longDouble) {
        longDoubleValue = va_arg(arg_list, long double);
      }
      else {
        longDoubleValue = (long double) va_arg(arg_list, double);
      }

      arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);

      if (c == 'f') {
        printLongDoublePlain(longDoubleValue, plus, space, grid, precision);
      }
      else if (tolower(c) == 'e') {
        printLongDoubleExpo(longDoubleValue, plus, space, grid, precision, isupper(c));
      }
      else {
        logValue = (int) floor(log10(fabs(longDoubleValue)));

        if ((logValue >= -4) && (logValue <= precision)) {
          printLongDoublePlain(longDoubleValue, plus, space, grid, precision);
        }
        else {
          printLongDoubleExpo(longDoubleValue, plus, space, grid, precision, isupper(c));
        }
      }
      break;

    case 'p':
      ptrValue = va_arg(arg_list, void*);
      arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
      printUnsignedLongInt((unsigned long) ptrValue, FALSE, FALSE, FALSE, 10ul, FALSE);
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

int printFormat2(char* format, va_list arg_list) {
  int index;

  for (index = 0; format[index] != '\0'; ++index) {
    printChar(format[index]);
  }

  return index;
}

int printFormat(char* format, va_list arg_list) {
/*  int intValue = va_arg(arg_list, int);
  printInt(intValue, FALSE, FALSE);
  return 0;
*/

  char c = '\0';
  int index, count = 0, width = 0, precision = 0,
      startChar, value, field, oldOutStatus, width2;
  BOOL percent = FALSE, plus, minus, space, zero, grid, widthStar,
       period, precisionStar, shortInt, longInt, longDouble;
  g_outChars = 0;

  for (index = 0; format[index] != '\0'; ++index) {
    c = format[index];

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
            startChar = g_outChars;

            if (!minus) {
              oldOutStatus = g_outStatus;
              width2 = width;

              g_outStatus = BLANK;
              printArgument(&format[index], arg_list, plus, space, grid, &width2,
                            precision, shortInt, longInt, longDouble);
              g_outStatus = oldOutStatus;

              { field = g_outChars - startChar;
                g_outChars = startChar;

                while (field++ < width2) {
                  printChar(zero ? '0' : ' ');
                }
              }
            }

            arg_list = printArgument(&format[index], arg_list, plus, space, grid, &width,
                                     precision, shortInt, longInt, longDouble);

            if (minus) {
              field = g_outChars - startChar;

              while (field++ < width) {
                printChar(' ');
              }
            }

            percent = FALSE;
          }
          break;

        default: {
            value = 0;
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

int printf2(char* format) {
  va_list arg_list;
  va_start(arg_list, format);
  return vprintf(format, arg_list);
}

int printf(char* format, ...) {
  va_list arg_list;
  va_start(arg_list, format);
  return vprintf(format, arg_list);
}

int vprintf(char* format, va_list arg_list) {
  return vfprintf(stdout, format, arg_list);
}

int fprintf(FILE* outStream, char* format, ...) {
  va_list arg_list;
  va_start(arg_list, format);
  return vfprintf(outStream, format, arg_list);
}

int vfprintf(FILE* outStream, char* format, va_list arg_list) {
  g_outStatus = DEVICE;
  g_outDevice = (void*) outStream;
  return printFormat(format, arg_list);
}

int sprintf(char* outString, char* format, ...) {
  va_list arg_list;
  va_start(arg_list, format);
  return vsprintf(outString, format, arg_list);
}

int vsprintf(char* outString, char* format, va_list arg_list) {
  g_outStatus = STRING;
  g_outDevice = (void*) outString;
  return printFormat(format, arg_list);
}