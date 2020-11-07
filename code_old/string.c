#include <errno.h>
#include <stdio.h>
#include <stddef.h>
#include <string.h>
#include <locale.h>

char* strcpy(char* target, const char* source) {
  size_t index;

  for (index = 0; source[index] != '\0'; ++index) {
    target[index] = source[index];
  }

  target[index] = '\0';
  return target;
}

char* strncpy(char* target, const char* source, size_t size) {
  size_t index;

  for (index = 0; (index < size) && (source[index] != '\0'); ++index) {
    target[index] = source[index];
  }

  for (; index < size; ++index) {
    target[index] = '\0';
  }

  return target;
}

char* strcat(char* target, const char* source) {
  size_t index;
  size_t targetLength = strlen(target);

  for (index = 0; source[index] != '\0'; ++index) {
    target[targetLength + index] = source[index];
  }

  target[targetLength + index] = '\0';
  return target;
}

char* strncat(char* target, const char* source, size_t size) {
  size_t index;
  size_t targetLength = strlen(target);

  for (index = 0; (index < (size - 1)) && (source[index] != '\0'); ++index) {
    target[targetLength + index] = source[index];
  }

  target[targetLength + size - 1] = '\0';
  return target;
}

int strcmp(const char* left, const char* right) {
  size_t index;

  for (index = 0; TRUE; ++index) {
    if ((left[index] == '\0') && (right[index] == '\0')) {
      return 0;
    }
    else if (left[index] == '\0') {
      return -1;
    }
    else if (right[index] == '\0') {
      return 1;
    }
    else if (left[index] < right[index]) {
      return -1;
    }
    else if (left[index] > right[index]) {
      return 1;
    }
  }
}

int strncmp(const char* left, const char* right, size_t size) {
  size_t index;

  for (index = 0; index < size; ++index) {
    if ((left[index] == '\0') && (right[index] == '\0')) {
      return 0;
    }
    else if (left[index] == '\0') {
      return -1;
    }
    else if (right[index] == '\0') {
      return 1;
    }
    else if (left[index] < right[index]) {
      return -1;
    }
    else if (left[index] > right[index]) {
      return 1;
    }
  }

  return 0;
}

char* strchr(const char* text, int i) {
  size_t index;
  char c = (char) i;

  for (index = 0; text[index] != '\0'; ++index) {
    if (text[index] == c) {
      return &text[index];
    }
  }

  return NULL;
}

char* strrchr(const char* text, int i) {
  size_t index;
  char* result = NULL;
  char c = (char) i;

  for (index = 0; text[index] != '\0'; ++index)  {
    if (text[index] == c) {
      result = &text[index];
    }
  }

  return result;
}

size_t strspn(const char* mainString, const char* charSet) {
  size_t index;

  for (index = 0; mainString[index] != '\0'; ++index) {
    if (strchr(charSet, mainString[index]) == NULL) {
      return index;
    }
  }

  return -1;
}

size_t strcspn(const char* mainString, const char* charSet) {
  size_t index;

  for (index = 0; mainString[index] != '\0'; ++index) {
    if (strchr(charSet, mainString[index]) != NULL) {
      return index;
    }
  }

  return -1;
}

char* strpbrk(const char* mainString, const char* charSet) {
  size_t index;

  for (index = 0; mainString[index] != '\0'; ++index) {
    if (strchr(charSet, mainString[index]) != NULL) {
      return &mainString[index];
    }
  }

  return NULL;
}

char* strstr(const char* mainString, const char* subString) {
  size_t index;

  for (index = 0; mainString[index] != '\0'; ++index) {
    if (strcmp(mainString + index, subString) == 0) {
      return &mainString[index];
    }
  }

  return NULL;
}

size_t strlen(const char* string) {
  int index;

  for (index = 0; string[index] != '\0'; ++index) {
    // Empty.
  }

  return index;
}

extern char* enMessageList[];

char* strerror(int errno) {
  struct lconv* localeConvPtr = localeconv();
  char** messageList = (localeConvPtr != NULL) ? localeConvPtr->messageList : NULL;
  messageList = (messageList != NULL) ? messageList : enMessageList;
  return messageList[errno];
}

char* token = NULL;

char* strtok(char* string, const char* charSet) {
  int index;
  char* tokenStart;

  if (string != NULL) {
    if (string[0] == '\0') {
      return NULL;
    }

    for (index = 0; string[index] != '\0'; ++index) {
      if (strchr(charSet, string[index]) != NULL) {
        string[index] = '\0';
        token = &string[index + 1];
        return string;
      }
    }

    token = &string[index];
    return string;
  }
  else if (token == NULL) {
    return NULL;
  }
  else {
    if (token[0] == '\0') {
      return NULL;
    }

    for (index = 0; token[index] != '\0'; ++index) {
      if (strchr(charSet, token[index]) != NULL) {
        char* tokenStart2 = token;
        token[index] = '\0';
        token = &token[index + 1];
        return tokenStart2;
      }
    }

    tokenStart = token;
    token = &token[index];
    return tokenStart;
  }
}

void* memcpy(void* target, const void* source, size_t size) {
  char* charTarget = (char*) target;
  const char* charSource = (const char*) source;

  size_t index;
  for (index = 0; index < size; ++index) {
    charTarget[index] = charSource[index];
  }

  return (void*) target;
}

void* memmove(void* target, const void* source, size_t size) {
  char* charTarget = (char*) target;
  const char* charSource = (const char*) source;

  size_t index;
  if (source < target) {
    for (index = (size - 1); index >= 0; --index) {
      charTarget[index] = charSource[index];
    }
  }
  else {
    for (index = 0; index < size; ++index) {
      charTarget[index] = charSource[index];
    }
  }

  return (void*) target;
}

int memcmp(const void* left, const void* right, size_t size) {
  const char* charLeft = (const char*) left;
  const char* charRight = (const char*) right;

  size_t index;
  for (index = 0; index < size; ++index) {
    if (charLeft[index] < charRight[index]) {
      return -1;
    }
    else if (charLeft[index] > charRight[index]) {
      return 1;
    }    
  }

  return 0;
}

void* memchr(const void* block, int i, size_t size) {
  size_t index;
  char* charBlock = (char*) block;
  char c = (char) i;

  for (index = 0; index < size; ++index) {
    if (charBlock[index] == c) {
      return (void*) &charBlock[index];
    }
  }

  return NULL;
}

void* memset(void* block, int i, size_t size) {
  char* charBlock = (char*) block;
  char c = (char) i;

  size_t index;
  for (index = 0; index < size; ++index) {
    charBlock[index] = c;
  }

  return block;
}
