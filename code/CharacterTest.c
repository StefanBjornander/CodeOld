#include <stdio.h>
#include <ctype.h>

#define PRINT(f) printf(#f "('%c') = %s\n", c, (f((int) c) != 0) ? "Yes" : "No")

void character_testX(char c) {
  printf("ascii %i\n", (int) c);

  PRINT(islower);
  PRINT(isupper);
  PRINT(isalpha);
  PRINT(isdigit);
  PRINT(isalnum);
  PRINT(isxdigit);
  PRINT(isgraph);
  PRINT(isprint);
  PRINT(ispunct);
  PRINT(iscntrl);
  PRINT(isspace);

  printf("tolower('%c') = '%c'\n", c, (char) tolower(c));
  printf("toupper('%c') = '%c'\n\n", c, (char) toupper(c));
}

void character_test() {
  character_testX('a');
  character_testX('B');
  character_testX('1');
  character_testX('.');
  character_testX('\n');
  character_testX('f');
  character_testX('g');
}