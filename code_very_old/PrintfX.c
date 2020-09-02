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

#define PRINT(x,y) { printf(#x " = <%" #y ">\n", (x)); }

int g_outStatus, g_outChars;
void* g_outDevice;

#define DEFAULT_PRECISION 3

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
/*  load_register(register_ah, 0x40s);
  load_register(register_bx, 1);
  load_register(register_cx, 1);
  load_register(register_dx, &c);
  interrupt(0x21s);*/

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

/*
void printIntRec(int intValue) {
  if (intValue != 0) {
    //printChar('A');
    int digit = intValue % 10s;
    //printChar('B');
    printIntRec(intValue / 10s);
    //printChar('C');
    printChar(digit + '0');
    //printChar('D');
  }
}

void printInt(int intValue, BOOL plus, BOOL space) {
  //printChar('U');

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
    //printChar('S');
    printIntRec(intValue);
    //printChar('T');
  }

  //printChar('V');
}
*/

void printLongIntRec(long longValue) {
  if (longValue != 0) {
    int digit = (int) (longValue % 10L);
    printLongIntRec(longValue / 10L);
    printChar((char) (digit + '0'));
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

//----------------------------------------------------------------------------------------------------------------------

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

void printUnsignedLongRec(unsigned long unsignedValue, unsigned long base, BOOL capital) {
  if (unsignedValue > 0ul) {
    int digit = (int) (unsignedValue % base);
    printUnsignedLongRec(unsignedValue / base, base, capital);
    char c = digitToChar(digit, capital);
    printChar(c);
  }
}

void printUnsignedLong(unsigned long unsignedValue, BOOL plus, BOOL space,
                       BOOL grid, unsigned long base, BOOL capital) {
  //printChar('1');
  if (plus) {
    printChar('+');
  }
  
  //printChar('2');
  if (space) {
    printChar(' ');
  }

  //printChar('3');
  if (grid) {
    if (base == 8ul) {
      printChar('0');
    }

    if (base == 16ul) {
      printChar('0');
      printChar(capital ? 'X' : 'x');
    }
  }

  //printChar('4');
  if (unsignedValue == 0ul) {
    printChar('0');
  }
  else {
    //printChar('5');
    printUnsignedLongRec(unsignedValue, base, capital);
    //printChar('6');
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
    char c = (char) (digitValue + '0');
    printChar(c);
    longDoubleValue = longDoubleValue10 - ((long double) digitValue);
  }
}

void printLongDoublePlain(long double longDoubleValue, BOOL plus, BOOL space, BOOL grid, int precision) {
  if (longDoubleValue < 0.0L) {
    printChar('-');
    longDoubleValue = -longDoubleValue;
  }
   
  long longValue = (long) longDoubleValue;
  printLongInt(longValue, plus, space);
  longDoubleValue -= (long double) longValue;
  printLongDoubleFraction(longDoubleValue, grid, precision);
}

//----------------------------------------------------------------------------------------------------------------------

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

    int expo = log10_int(value);
    value /= pow_int(10, expo);
    printLongDoublePlain(value, plus, space, grid, precision);
    printChar(capital ? 'E' : 'e');
    printLongInt(expo, TRUE, FALSE);
  }
}

void printLongDoubleExpoX(long double longDoubleValue, BOOL plus, BOOL space,
                          BOOL grid, int precision, BOOL capital) {
  double logValue;

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
    double x = 1.001 * log10((double) longDoubleValue);
    logValue = (double)((int)x);
    longDoubleValue /= pow(10.0, logValue);

    printChar((char) (longDoubleValue + '0'));
    printLongDoubleFraction(longDoubleValue, precision, grid);

    printChar(capital ? 'E' : 'e');
    printLongInt((long) logValue, TRUE, FALSE);
  }
  else { // 0.005 => 5 * 10^-3
    logValue = floor(0.999 * log10((double)longDoubleValue));
    longDoubleValue /= pow(10.0, logValue);

    printChar((char) (longDoubleValue + '0'));
    printLongDoubleFraction(longDoubleValue, precision, grid);

    printChar(capital ? 'E' : 'e');
    printLongInt((long) logValue, TRUE, FALSE);
  }
}

//----------------------------------------------------------------------------------------------------------------------

va_list checkWidthAndPrecision(va_list arg_list, int* widthPtr, int* precisionPtr) {
  //printChar('X');

  if ((widthPtr != NULL) && (*widthPtr == -1)) {
    *widthPtr = va_arg(arg_list, int);
    //printChar('Y');
  }

  //printChar('Z');

  if ((precisionPtr != NULL) && (*precisionPtr == -1)) {
    *precisionPtr = va_arg(arg_list, int);
  }

  return arg_list;
}

va_list printArgument(char* format, va_list arg_list, BOOL plus, BOOL space,
                      BOOL grid, int* widthPtr, int precision, BOOL shortInt,
                      BOOL longInt, BOOL longDouble, BOOL sign, BOOL* negativePtr) {
  char c = format[0], charValue;
  int logValue, *intPtr;
  long double longDoubleValue;
  void* ptrValue;

  switch (c) {
    case 'i':
    case 'd': {
        long longValue;

        if (shortInt) {
          longValue = (long) (short)va_arg(arg_list, int);
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
        //printChar('X');
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
        unsigned long base = ((c == 'u') ? 10ul : ((c == 'o') ? 8ul : ((c == 'b') ? 2ul : 16ul)));
        unsigned long value;

        if (shortInt) {
          value = (unsigned long) (unsigned short) va_arg(arg_list, unsigned int);
        }
        else if (longInt) {
          value = va_arg(arg_list, unsigned long);
        }
        else {
          value = (unsigned long) va_arg(arg_list, unsigned int);
        }

        if (negativePtr != NULL) {
          *negativePtr = (value < 0);
        }

        if (!sign) {
          value = labs(value);
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
      }
      else {
        longDoubleValue = (long double) va_arg(arg_list, double);
      }

      if (negativePtr != NULL) {
        *negativePtr = (longDoubleValue < 0);
      }

      if (!sign) {
        longDoubleValue = labs(longDoubleValue);
      }

      arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);

      if (c == 'f') {
        printLongDoublePlain(longDoubleValue, plus, space, grid, precision);
      }
      else if (tolower(c) == 'e') {
        printLongDoubleExpo(longDoubleValue, plus, space, grid, precision, isupper(c));
      }
      else {
        int expo = log10_int(fabs(longDoubleValue));

        if ((expo >= -3) && (expo <= 2)) {
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
      printUnsignedLong((unsigned long) ptrValue, FALSE, FALSE, FALSE, 10u, FALSE);
      break;

    case 'n':
      ptrValue = va_arg(arg_list, void*);
      intPtr = va_arg(arg_list, int*);
      arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
      *intPtr = g_outChars;
      break;

    case '%':
      //printf("<X>");
      arg_list = checkWidthAndPrecision(arg_list, widthPtr, &precision);
      printChar('%');
      break;
  }

  return arg_list;
}

/*int printFormat2(char* format, va_list arg_list) {
  int index;

  for (index = 0; format[index] != '\0'; ++index) {
    printChar(format[index]);
  }

  return index;
}*/

int printFormat(char* format, va_list arg_list) {
  int index, count = 0, width = 0, precision = 0;
  BOOL percent = FALSE, plus, minus, space, zero, grid, widthStar,
       period, precisionStar, shortInt, longInt, longDouble;
  g_outChars = 0;

  for (index = 0; format[index] != '\0'; ++index) {
    char c = format[index];

    if (percent) {
      /*printChar('<');
      printChar(c);
      printChar('>');*/

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
              arg_list = printArgument(&format[index], arg_list, plus, space, grid, &width,
                                       precision, shortInt, longInt, longDouble, TRUE, NULL);

              int field = g_outChars - startChars; // fill after

              while (field++ < width) {
                printChar(' ');
              }
            }
            else {
              int startChars = g_outChars, oldOutStatus = g_outStatus;
              BOOL negative = FALSE;
            
              g_outStatus = BLANK;
              printArgument(&format[index], arg_list, plus, space, grid, &width,
                            precision, shortInt, longInt, longDouble, FALSE, &negative);
              
              g_outStatus = oldOutStatus;
              int field = g_outChars - startChars;
              g_outChars = startChars;

              if (zero) {
                if (negative) {
                  printChar('-');
                  ++field;
                }
                else if (plus) {
                  printChar('+');
                  ++field;
                }

                while (field++ < width) {
                  printChar('0');
                }
              }
              else {
                if (negative || plus) {
                  ++field;
                }

                while (field++ < width) {
                  printChar(' ');
                }

                if (negative) {
                  printChar('-');
                }
                else if (plus) {
                  printChar('+');
                }
              }

              arg_list = printArgument(&format[index], arg_list, plus, space, grid, NULL,
                                       precision, shortInt, longInt, longDouble, FALSE, NULL);
            }

            percent = FALSE;
          }
          break;

        default: {
            int value = 0;
            while (isdigit(c)) {
              /*printChar('\'');
              printChar(c);
              printChar('\'');*/

              value = (10 * value) + (c - '0');
              c = format[++index];
            }
            --index;
            
            if (!period) {
              width = value;

              /*printChar('<');
              printLongInt(width, FALSE, FALSE);
              printChar('>');*/
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

/*int printf2(char* format) {
  va_list arg_list;
  va_start(arg_list, format);
  return vprintf(format, arg_list);
}*/

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