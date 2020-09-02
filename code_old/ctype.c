#include <ctype.h>
#include <stdio.h>
#include <Locale.h>
#include <String.h>
#include <stddef.h>

//#define PRINT(x,y) { printf(#x " = <%" #y ">\n", (x)); }

int islower(int c) {
  struct lconv* localeConvPtr = localeconv();

  /*printf("summerTimeZone <%i>\n", localeConvPtr->summerTimeZone);
  printf("winterTimeZone <%i>\n", localeConvPtr->winterTimeZone);

  int index;  
  for (index = 0; index < 7; ++index) {
    printf("shortDayList[%i] = <%s>\n", index, localeConvPtr->shortDayList[index]);
  }

  for (index = 0; index < 7; ++index) {
    printf("longDayList[%i] = <%s>\n", index, localeConvPtr->longDayList[index]);
  }

  for (index = 0; index < 7; ++index) {
    printf("shortMonthList[%i] = <%s>\n", index, localeConvPtr->shortMonthList[index]);
  }

  for (index = 0; index < 7; ++index) {
    printf("longMonthList[%i] = <%s>\n", index, localeConvPtr->longMonthList[index]);
  }

  printf("lowerCase <%s>\n", localeConvPtr->lowerCase);
  printf("upperCase <%s>\n", localeConvPtr->upperCase);

  for (index = 0; index < 19; ++index) {
    printf("messageList[%i] = <%s>\n", index, localeConvPtr->messageList[index]);
  }*/

  if (localeConvPtr != NULL) {
    //printf("lowerCase <%s>\n", localeConvPtr->lowerCase);
    //printf("<index %i>\n", strchr(localeConvPtr->lowerCase, c));
    return (strchr(localeConvPtr->lowerCase, c) != NULL);
  }
  else {
    return ((c >= 'a') && (c <= 'z'));
  }
}

int islowerX(int c) {
  return ((c >= 'a') && (c <= 'z'));
}

int isupperX(int c) {
  return ((c >= 'A') && (c <= 'Z'));
}

int isupper(int c) {
  struct lconv* localeConvPtr = localeconv();

  if (localeConvPtr != NULL) {
    return (strchr(localeConvPtr->upperCase, c) != NULL);
  }
  else {
    return ((c >= 'A') && (c <= 'Z'));
  }
}

int isalpha(int c) {
  return islower(c) || isupper(c);
}

int isdigit(int c) {
  return (c >= '0') && (c <= '9');
}

int isalnum(int c) {
  return isalpha(c) || isdigit(c);
}

int isxdigit(int c) {
  return isdigit(c) || ((c >= 'a') && (c <= 'f'))
                    || ((c >= 'A') && (c <= 'F'));
}

int isgraph(int c) {
  return (c >= 32) && (c <= 126);
}

int isprint(int c) {
  return (isgraph(c) != 0) && (c != ' ');
}

int ispunct(int c) {
  return (isgraph(c) != 0) && !isalnum(c);
}

int iscntrl(int c) {
  return !isprint(c);
}

int isspace(int c) {
  return (c == ' ') || (c == '\f') || (c == '\n') || 
         (c == '\r') || (c == '\t') || (c == '\v');
}

int tolowerX(int c) {
  return isupper(c) ? (c + 32) : c;
}

int tolower(int c) {
  if (isupper(c)) {
    struct lconv* localeConvPtr = localeconv();

    if (localeConvPtr != NULL) {
      char *lowerCase = localeConvPtr->lowerCase, *upperCase = localeConvPtr->upperCase;
      int index = (strchr(upperCase, c) - upperCase);
      return ((int) lowerCase[index]);
    }
    else {
      return (c + 32);
    }
  }
  else {
    return c;
  }
}

int toupperX(int c) {
  return islower(c) ? (c - 32) : c;
}

int toupper(int c) {
  if (islower(c)) {
    struct lconv* localeConvPtr = localeconv();

    if (localeConvPtr != NULL) {
      char *lowerCase = localeConvPtr->lowerCase,
           *upperCase = localeConvPtr->upperCase;
      int index = (strchr(lowerCase, c) - lowerCase);
      return ((int) upperCase[index]);
    }
    else {
      return (c - 32);
    }
  }
  else {
    return c;
  }
}