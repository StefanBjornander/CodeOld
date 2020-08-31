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

int g_outStatus, g_outChars;
void* g_outDevice;

#define DEFAULT_PRECISION 6

int putc(int i, FILE* stream)
{
  g_outStatus = DEVICE;
  g_outDevice = (void*) stream;
  printChar((char) i);
  return 1;
}
  
int fputc(int i, FILE* stream)
{
  g_outStatus = DEVICE;
  g_outDevice = (void*) stream;
  printChar((char) i);
  return 1;
}

int putchar(int i)
{
  g_outStatus = DEVICE;
  g_outDevice = (void*) stdout;
  printChar((char) i);
  return 1;
}

/*
void printChar(char c)
{
  load_register(register_ah, 0x40);
  load_register(register_bx, 1);
  load_register(register_cx, 1);
  load_register(register_dx, &c);
  interrupt(0x21s);
}
*/

void printChar(char c)
{
  switch (g_outStatus) {
    case DEVICE: {
        FILE* stream = (FILE*) g_outDevice;
        int handle = stream->handle;

        load_register(register_ah, 0x40);
        load_register(register_bx, handle);
        load_register(register_cx, 1);
        load_register(register_dx, &c);
        interrupt(0x21s);
        ++g_outChars;
        break;
      }

    case STRING: {
        char* outString = (char*) g_outDevice;
        outString[g_outChars++] = c;
      }
      break;

    case BLANK:
      g_outChars++;
      break;
  }
}

void printString(char* s, int precision)
{
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

void printLongIntRec(long longValue)
{
  int digit;
  if (longValue > 0l) {
    digit = longValue % 10;
    printLongIntRec(longValue / 10);
    printChar(digit + '0');
  }
}

void printLongInt(long longValue, BOOL plus, BOOL space)
{
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

char digitToChar(int digit, BOOL capital)
{
  if (digit < 10) {
    return digit + '0';
  }
  else {
    return capital ? ('A' - 10 + digit) : ('a' - 10 + digit);
  }
}

void printUnsignedLongIntRec(unsigned long longValue, int base, BOOL capital)
{
  if (longValue > 0) {
    int digit = longValue % base;
    printUnsignedLongIntRec(longValue / base, base, capital);
    printChar(digitToChar(digit, capital));
  }
}

void printUnsignedLongInt(unsigned long longValue, BOOL plus, BOOL space, int base, BOOL capital)
{
  if (plus) {
    printChar('+');
  }
  else if (space) {
    printChar(' ');
  }

  if (longValue == 0) {
    printChar('0');
  }
  else {
    printUnsignedLongIntRec(longValue, base, capital);
  }
}

/*
BOOL printLongDoubleRec(long double doubleValue)
{
  if (doubleValue > 0) {
    double doubleValue10 = floor(doubleValue / 10.0);
    int digit = (int) (doubleValue - (10.0 * doubleValue10));

    printChar('<');
    printLongInt(digit, FALSE, FALSE);
    printChar('>');

    printLongDoubleRec(doubleValue10);
    printChar(digit + '0');
  }

  return FALSE;
}
*/

BOOL printLongDoubleRec(long double doubleValue, BOOL plus, BOOL minus, BOOL space)
{
  if (doubleValue >= 1) {
    long double doubleValue10 = doubleValue / 10;
    long longValue10 = (long) doubleValue10;
    long double doubleDigit = doubleValue - (10 * ((long) (doubleValue10)));
    int intDigit = (int) doubleDigit;

    if ((doubleDigit >= 0) && (doubleDigit < 10)) {

      if (!printLongDoubleRec(doubleValue10, plus, minus, space)) {
        return FALSE;
      }

      printChar(intDigit + '0');
      return TRUE;
    }
    else {
      return FALSE;
    }
  }
  else if (plus) {
    printChar('+');
  }
  else if (minus) {
    printChar('-');
  }
  else if (space) {
    printChar(' ');
  }

  return TRUE;
} 

void printLongDoublePlain(long double doubleValue, BOOL plus, BOOL space, BOOL grid, int precision)
{
  BOOL minus = FALSE, ok = TRUE;
  precision = (precision == 0) ? DEFAULT_PRECISION : precision;

  if (doubleValue < 0) {
    minus = TRUE;
    doubleValue = -doubleValue;
  }

  if (doubleValue < 1) {
    printChar('0');
  }
  else {
    ok = printLongDoubleRec(doubleValue, plus, minus, space);
  }

  if (ok) {
    doubleValue -= (long) doubleValue;

    if (grid || (precision > 0)) {
      printChar('.');
    }

    while (precision-- > 0) {
      int digitValue = (int) (10 * doubleValue);
      printChar(digitValue + '0');
      doubleValue = (10 * doubleValue) - digitValue;
    }
  }
  else {
    printString("overflow", 0);
  }
}

void printDoubleRec(double doubleValue)
{
  if (doubleValue > 0.0) {
    double doubleValue10 = (double) (long) (doubleValue / 10.0);
    int digit = (int) (doubleValue - (10.0 * doubleValue10));
    printDoubleRec(doubleValue10);
    printChar(digit + '0');
  }
}

void printDoublePlain(double doubleValue, BOOL plus, BOOL space, BOOL grid, int precision)
{
  if (precision == 0) {
    precision = DEFAULT_PRECISION;
  }

  if (doubleValue < 0) {
    printChar('-');
    doubleValue = -doubleValue;
  }
  else if (plus) {
    printChar('+');
  }
  else if (space) {
    printChar(' ');
  }

  if (doubleValue < 1.0) {
    printChar('0');
  }
  else {
    printDoubleRec((double) (long) (doubleValue));
  }

  doubleValue -= (double) (long) (doubleValue);

  if (grid || (precision > 0)) {
    printChar('.');
  }

  while (precision-- > 0) {
    int digitValue = (int) (10.0 * doubleValue);
    printChar(digitValue + '0');
    doubleValue = (10.0 * doubleValue) - digitValue;
  }
}

void printLongDoubleExpo(long double doubleValue, BOOL plus, BOOL space, BOOL grid, int precision, BOOL capital)
{
  precision = (precision == 0) ? DEFAULT_PRECISION : precision;

  if (doubleValue < 0) {
    printChar('-');
    doubleValue = -doubleValue;
  }
  else if (plus) {
    printChar('+');
  }
  else if (space) {
    printChar(' ');
  }

  if (doubleValue == 0) {
    printChar('0');

    if (grid || (precision > 0)) {
      printChar('.');
    }

    while (precision-- > 0) {
      printChar('0');
    }
  }
  else {
    double logValue = floor(log10(doubleValue));
    doubleValue /= pow(10.0, logValue);
    printChar((int) doubleValue + '0');
    doubleValue -= floor(doubleValue);

    if (grid || (precision > 0)) {
      printChar('.');
    }

    while (precision-- > 0) {
      int digitValue = (int) (10.0 * doubleValue);
      printChar(digitValue + '0');
      doubleValue = (10.0 * doubleValue) - digitValue;
    }

    printChar(capital ? 'E' : 'e');
    printLongInt((long) logValue, TRUE,
                 FALSE);
  }
}

void printDoubleExpo(double doubleValue, BOOL plus, BOOL space, BOOL grid, int precision, BOOL capital)
{
  precision = (precision == 0) ? DEFAULT_PRECISION : precision;

  if (doubleValue < 0) {
    printChar('-');
    doubleValue = -doubleValue;
  }
  else if (plus) {
    printChar('+');
  }
  else if (space) {
    printChar(' ');
  }

  if (doubleValue == 0) {
    printChar('0');

    if (grid || (precision > 0)) {
      printChar('.');
    }

    while (precision-- > 0) {
      printChar('0');
    }
  }
  else {
    double logValue = floor(log10(doubleValue));
    doubleValue /= pow(10.0, logValue);
    printChar((int) doubleValue + '0');
    doubleValue -= floor(doubleValue);

    if (grid || (precision > 0)) {
      printChar('.');
    }

    while (precision-- > 0) {
      int digitValue = (int) (10.0 * doubleValue);
      printChar(digitValue + '0');
      doubleValue = (10.0 * doubleValue) - digitValue;
    }

    printChar(capital ? 'E' : 'e');
    printLongInt((long) logValue, TRUE, FALSE);
  }
}

va_list checkWidthAndPrecision(va_list arg_list, int* widthPtr, int* precisionPtr)
{
  if (*widthPtr == -1) {
    *widthPtr = va_arg(arg_list, int);
  }

  if (*precisionPtr == -1) {
    *precisionPtr = va_arg(arg_list, int);
  }

  return arg_list;
}

/*
va_list printArgument(char* format, va_list arg_list, BOOL plus, BOOL space,
                      BOOL grid, int* widthPtr, int precision, BOOL shortInt,
                      BOOL longInt, BOOL longDouble)
{
  char c = format[0], charValue, *stringValue;

  switch (c) {
    case 'c': {
        charValue = (char) va_arg(arg_list, int);
//        arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
        printChar(charValue);
      }
      break;

    case 's': {
        stringValue = va_arg(arg_list, char*);
        //arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
        printString(stringValue, precision);
      }
      break;
  }

  return arg_list;
}
*/

va_list printArgument(char* format, va_list arg_list, BOOL plus, BOOL space,
                      BOOL grid, int* widthPtr, int precision, BOOL shortInt,
                      BOOL longInt, BOOL longDouble)
{
  char c = format[0], charValue, *stringValue;
  BOOL capital;
  int base, *intPtr;
  long longValue;
  unsigned long unsignedLongValue;
  double doubleValue;
  void* ptrValue;

  switch (c) {
    case 'c': {
        charValue = (char) va_arg(arg_list, int);
        arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
        printChar(charValue);
      }
      break;

    case 's': {
        stringValue = va_arg(arg_list, char*);
        arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
        printString(stringValue, precision);
      }
      break;
  
    case 'i':
    case 'd': {
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
      }
      break;

/*
    case 'u':
    case 'o':
    case 'x':
    case 'X': {
        base = (c == 'u') ? 10 : ((c == 'o') ? 8 : 16);
        capital = isupper(c);

        if (grid) {
          if (c == 'o') {
            printChar('0');
          }
          else if (tolower(c) == 'x') {
            printString(capital ? "0X" : "0x", 0);
          }
        }

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
        printUnsignedLongInt(unsignedLongValue, plus, space, base, capital);
      }
      break;

    case 'f': {
        doubleValue = va_arg(arg_list, double);
        arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
        printDoublePlain(doubleValue, plus, space, grid, precision);
      }
      break;

    case 'e':
    case 'E':
    case 'g':
    case 'G': {
        capital = isupper(c);
        doubleValue = va_arg(arg_list, double);
        arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
        printDoubleExpo(doubleValue, plus, space, grid, precision, capital);
      }
      break;
*/

/*
    case 'f':
    case 'e':
    case 'E':
    case 'g':
    case 'G': {
        long double longDoubleValue;

        if (!longDouble) {
          longDoubleValue = (long double) va_arg(arg_list, double);
        }
        else {
          longDoubleValue = va_arg(arg_list, long double);
        }

        arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);

        if (c == 'f') {
          printLongDoublePlain(longDoubleValue, plus, space, grid, precision);
        }
        else if (tolower(c) == 'e') {
          printLongDoubleExpo(longDoubleValue, plus, space, grid, precision, isupper(c));
        }
        else {
          int logValue = (int) floor(log10(fabs(longDoubleValue)));

          if ((logValue >= -4) && (logValue <= precision)) {
            printLongDoublePlain(longDoubleValue, plus, space, grid, precision);
          }
          else {
            printLongDoubleExpo(longDoubleValue, plus, space, grid, precision, isupper(c));
          }
        }
      }
      break;
*/

    case 'p': {
        ptrValue = va_arg(arg_list, void*);
        arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
        printUnsignedLongInt((long) ptrValue, FALSE, FALSE, 10, FALSE);
      }
      break;

    case 'n': {
        ptrValue = va_arg(arg_list, void*);
        intPtr = va_arg(arg_list, int*);
        arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
        *intPtr = g_outChars;
      }
      break;

    case '%':
      arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
      printChar('%');
      break;
  }

  return arg_list;
}

int printFormat(char* format, va_list arg_list)
{
	int index, count = 0, width, precision, startChar;
  BOOL percent = FALSE, plus, minus, space, zero, grid, widthStar,
       period, precisionStar, shortInt, longInt, longDouble;
  char c;
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

/*
            if (!minus) {
              int oldOutStatus = g_outStatus, width2 = width;

              g_outStatus = BLANK;
              printArgument(&format[index], arg_list, plus, space, grid, &width2, precision, shortInt, longInt, longDouble);
              g_outStatus = oldOutStatus;

              { int field = g_outChars - startChar;
                g_outChars = startChar;

                while (field++ < width2) {
                  printChar(zero ? '0' : ' ');
                }
              }
            }
*/
            arg_list = printArgument(&format[index], arg_list, plus, space, grid, &width, precision, shortInt, longInt, longDouble);

/*
            if (minus) {
              int field = g_outChars - startChar;

              while (field++ < width) {
                printChar(' ');
              }
            }
            */

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

int printf(char* format, ...)
{
  va_list arg_list;
  va_start(arg_list, format);
  return vprintf(format, arg_list);
}

int vprintf(char* format, va_list arg_list)
{
  return vfprintf(stdout, format, arg_list);
}

int fprintf(FILE* outStream, char* format, ...)
{
  va_list arg_list;
  va_start(arg_list, format);
  return vfprintf(outStream, format, arg_list);
}

int vfprintf(FILE* outStream, char* format, va_list arg_list)
{
  g_outStatus = DEVICE;
  g_outDevice = (void*) outStream;
  return printFormat(format, arg_list);
}

int sprintf(char* outString, char* format, ...)
{
  va_list arg_list;
  va_start(arg_list, format);
  return vsprintf(outString, outString, arg_list);
}

int vsprintf(char* outString, char* format, va_list arg_list)
{
  g_outStatus = STRING;
  g_outDevice = (void*) outString;
  return printFormat(format, arg_list);
}