#include <stdio.h>
#include <ctype.h>

#define PRINT(f) printf(#f "('%c') = %s\n", c, (f((int) c) != 0) ? "Yes" : "No")

void character_test(char c) {
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
