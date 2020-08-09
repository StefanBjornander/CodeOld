#include <Math.h>
#include <CType.h>
#include <StdIO.h>
#include <StdDef.h>
#include <StdArg.h>
#include <String.h>
#include <Scanf.h>
#include <Printf.h>

int g_inStatus, g_inChars;
void* g_inDevice;

char scanChar(void)
{
  switch (g_inStatus) {
    case DEVICE: {
      char c;
      FILE* stream = (FILE*) g_inDevice;
      int handle = stream->handle;
  
      load_register(register_ah, 0x3F);
      load_register(register_bx, handle);
      load_register(register_cx, 1);
      load_register(register_dx, &c);
      interrupt(0x21s);

//      printChar(c);
      ++g_inChars;
      return c;

/*
      { int size;
        short flagbyte();
        load_flagbyte(flagbyte());
        store_register(size, register_ax);
        return ((carry_flag) || (size == 0)) ? EOF : handle;
      }


/*      load_register(register_ah, 0x01s);
      interrupt(0x21s);
      store_register(c, register_al);

      if ((c == '\r') && (g_inDevice == stdin)) {
        printChar('\n');
      }
      */


//      return getc(stdin);
    }

    case STRING: {
        char* inString = (char*) g_inDevice;
        return inString[g_inChars++];
      }
  }

  return ' ';
}
/*
void unscanChar(char input)
{
  switch (g_inStatus) {
    case DEVICE: {
      char c;
      load_register(register_ah, 0x01s);
      interrupt(0x21s);
      store_register(c, register_al);
      --g_inChars;

//      ungetc(input, stdin);
    }

    case STRING:
      --g_inChars;
  }
}
*/
void scanString(char* string, int precision)
{
  int index = 0;
  char input = scanChar();

  while (isspace(input)) {
    input = scanChar();
  }

  while (((precision == -1) || (--precision > 0)) && !isspace(input)) {
    if (string != NULL) {
      string[index++] = input;
    }

    input = scanChar();
  }

  if (string != NULL) {
    string[index] = '\0';
  }
}

BOOL exists(char c, char* s)
{
  int index;

  for (index = 0; !((index > 0) && s[index] == ']'); ++index) {
    if (s[index] == c) {
      return TRUE;
    }
  }

  return FALSE;
}

/*
char* strchr(char* text, char c)
{
  int index;

  for (index = 0; text[index] != '\0'; ++index) {
    if (text[index] == c) {
      return &text[index];
    }
  }

  return NULL;
}
*/

void matchString(char* string, int precision, char* mask, BOOL normal)
{
  int index = 0;
  char input = scanChar();

  while (isspace(input)) {
    input = scanChar();
  }

  while ((precision == -1) || (precision-- > 0) && !isspace(input)) {
    char s[] = {input, '\0'};
    BOOL exists = (strchr(mask, input) != NULL);

    if ((normal && exists) || (!normal && !exists)) {
      if (string != NULL) {
        string[index++] = input;
      }
    }
    else {
      break;
    }

    input = scanChar();
  }

//  unscanChar(input);

  if (string != NULL) {
    string[index] = '\0';
  }
}

long digitToValue(char input)
{
  if (isdigit(input)) {
    return (input - '0');
  }
  else {
    return (islower(input) ? (input - 'a' + 10) : (input - 'A' + 10));
  }
}

long scanLongInt(long base)
{
  long longValue = 0;
  BOOL minus = FALSE;
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

  if (input == '0') {
    input = scanChar();

    if (tolower(input) == 'x') {
      base = (base == 0) ? 16 : base;
      input = scanChar();
    }
    else {
      base = (base == 0) ? 8 : base; 
    }
  }

  if (base == 0) {
    base = 10;
  }

  while (isalnum(input)) {
    long digit = digitToValue(input);

    if (digit < base) {
      longValue *= base;
      longValue += digit;
      input = scanChar();
    }
    else {
      break;
    }
  }

  if (minus) {
    longValue = -longValue;
  }

  return longValue;
}

unsigned long scanUnsignedLongInt(unsigned long base)
{
  unsigned long longValue = 0;
  char input = scanChar();

  while (isspace(input)) {
    input = scanChar();
  }

  while (isalnum(input)) {
    int digit = isdigit(input) ? (input - '0') : (islower(input) ? (input - 'a' + 10) : (input - 'A' + 10));

    if (digit < base) {
      longValue = (longValue * base) + digitToValue(input);
      input = scanChar();
    }
    else {
      break;
    }
  }

  return longValue;
}

long double stringToDecimal(char* inputPtr)
{
  char input = scanChar();

  if (isdigit(input)) {
    double x = ((long double) (input - '0') + stringToDecimal(inputPtr));
    return x / 10.0;
  }
  else {
    *inputPtr = input;
    return 0;
  }
}

long double scanLongDouble(doublePtr)
{
  BOOL minus = FALSE;
  long double doubleValue = 0;
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
    doubleValue *= 10;
    doubleValue += input - '0';
    input = scanChar();
  }

  if (input == '.') {
    doubleValue += stringToDecimal(&input);
  }
/*
  if (tolower(input) == 'e') {
    long expValue = 0;
    BOOL expMinus = FALSE;
    input = scanChar();

    if (input == '+') {
      input = scanChar();
    }
    else if (input == '-') {
      expMinus = TRUE;
      input = scanChar();
    }

    while (isdigit(input)) {
      expValue = (10 * expValue) + (input - '0');
      input = scanChar();
    }

    printChar('A');
    if (expMinus) {
      expValue = -expValue;
    }

    printChar('B');
//    doubleValue *= pow(10.0, (double) expValue);
    printChar('C');
  }
*/

  if (minus) {
    doubleValue = -doubleValue;
  }

  return = doubleValue;
}

int scanFormat(char* format, va_list arg_list)
{
	int index, count = 0, precision;
  BOOL percent =
    FALSE, star, shortInt, longIntOrDouble, longDouble;
  g_inChars = 0;

  for (index = 0; format[index] != '\0'; ++index) {
    char c = format[index];

    if (percent) {
      switch (c) {
        case '*':
          star = TRUE;
          break;

        case 'h':
          shortInt = TRUE;
          break;

        case 'l':
          longIntOrDouble = TRUE;
          break;

        case 'L':
          longDouble = TRUE;
          break;

        case 'i':
        case 'd':
        case 'o':
        case 'x':
        case 'p': {
            long longValue, base = ((c == 'i') ? 0 : ((c == 'o') ? 8 : ((c == 'x') ? 16 : 10)));
            scanLongInt(&longValue, base);

            if (!star) {
              if (shortInt) {
                short* shortPtr = va_arg(arg_list, short*);
                *shortPtr = (short) longValue;
              }
              else if (!longIntOrDouble) {
                int* intPtr = va_arg(arg_list, int*);
                *intPtr = (int) longValue;
              }
              else {
                long* longPtr = va_arg(arg_list, long*);
                *longPtr = longValue;
              }
              ++count;
            }
            percent = FALSE;
          }
          break;

        case 'u': {
            unsigned long longValue;
            scanUnsignedLongInt(&longValue, 10);

            if (!star) {
              if (shortInt) {
                unsigned short* shortPtr = va_arg(arg_list, unsigned short*);
                *shortPtr = (unsigned short) longValue;
              }
              else if (!longIntOrDouble) {
                unsigned int* intPtr = va_arg(arg_list, unsigned int*);
                *intPtr = (unsigned int) longValue;
              }
              else {
                unsigned long* longPtr = va_arg(arg_list, unsigned long*);
                *longPtr = longValue;
              }

              ++count;
            }
          }

          percent = FALSE;
          break;

        case 'c': {
            char charValue = scanChar();

            if (!star) {
              char* charPtr = va_arg(arg_list, char*);
              *charPtr = charValue;
              ++count;
            }
          }

          percent = FALSE;
          break;

        case 's':
          if (!star) {
            char* charPtr = va_arg(arg_list, char*);
            scanString(charPtr, precision);
            ++count;
          }
          else {
            scanString(NULL, precision);
          }

          percent = FALSE;
          break;

        case 'e':
        case 'f':
        case 'g': {
            long double longDoubleValue;
            scanLongDouble(&longDoubleValue);

/*            printLongDoublePlain(longDoubleValue, FALSE,
              FALSE,
              FALSE, 6);*/

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

              ++count;
            }
          }

          percent = FALSE;
          break;

        case 'n': {
            int* intPtr = va_arg(arg_list, int*);
            *intPtr = g_inChars;
          }
          percent = FALSE;
          break;

        case '[': {
            BOOL normal = 
              TRUE;

            if (format[++index] == '^') {
              normal = FALSE;
              ++index;
            }

            if (!star) {
              char* charPtr = va_arg(arg_list, char*);
              matchString(charPtr, precision, &format[index], normal);
              ++count;
            }
            else {
              matchString(NULL, precision, &format[index], normal);
            }

            ++index;
            while (format[index] != ']') {
              ++index;
            }
          }

          percent = FALSE;
          break;

        case '%': {
            char input = scanChar();

            while (isspace(input)) {
              input = scanChar();
            }

            if (input != '%') {
              return -1;
            }
          }
          break;

        default:
          if (isdigit(c)) {
/*            char* endPtr;
            long longValue = strtoul(&format[index], &endPtr, 10);
            index += endPtr - &format[index] - 1;
            precision = (int) longValue;*/

            precision = 0;
            while (isdigit(c)) {
              precision = (10 * precision) + (c - '0');
              c = format[++index];
            }
            --index;
          }
          break;
      }
    }
    else {
      if (c == '%') {
        percent = TRUE;
        star = FALSE;
        precision = -1;
        shortInt = FALSE;
        longIntOrDouble = FALSE;
        longDouble = FALSE;
      }
      else if ((c != ' ') && (c != '\t')) {
        char input = scanChar();

        while (isspace(input)) {
          input = scanChar();
        }

        if (c != scanChar()) {
          return -1;
        }
      }
    }
  }

  return count;
}

int scanf(char* format, ...)
{
  va_list arg_list;
  va_start(arg_list, format);
  return vscanf(format, arg_list);
}

int vscanf(char* format, va_list arg_list)
{
  return vfscanf(stdin, format, arg_list);
}

int fscanf(FILE* inStream, char* format, ...)
{
  va_list arg_list;
  va_start(arg_list, format);
  return vfscanf(inStream, format, arg_list);
}

int vfscanf(FILE* inStream, char* format, va_list arg_list)
{
  g_inStatus = DEVICE;
  g_inDevice = (void*) inStream;
  return scanFormat(format, arg_list);
}

int sscanf(char* inString, char* format, ...)
{
  va_list arg_list;
  va_start(arg_list, format);
  return vsscanf(inString, format, arg_list);
}

int vsscanf(char* inString, char* format, va_list arg_list)
{
  g_inStatus = STRING;
  g_inDevice = (void*) inString;
  return scanFormat(format, arg_list);
}