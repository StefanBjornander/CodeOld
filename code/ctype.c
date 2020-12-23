#include <ctype.h>
#include <stdio.h>
#include <locale.h>
#include <string.h>
#include <stddef.h>

int islower(int c) {
  struct lconv* localeConvPtr = localeconv();

  if (localeConvPtr != NULL) {
    return (strchr(localeConvPtr->lowerCase, c) != NULL);
  }
  else {
    return ((c >= 'a') && (c <= 'z'));
  }
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
  return isgraph(c) && (c != ' ');
}

int ispunct(int c) {
  return isgraph(c) && !isalnum(c);
}

int iscntrl(int c) {
  return !isprint(c);
}

int isspace(int c) {
  return (c == ' ') || (c == '\f') || (c == '\n') || 
         (c == '\r') || (c == '\t') || (c == '\v');
}

int tolower(int c) {
  if (isupper(c)) {
    struct lconv* localeConvPtr = localeconv();

    if (localeConvPtr != NULL) {
      char *lowerCase = localeConvPtr->lowerCase,
           *upperCase = localeConvPtr->upperCase;
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