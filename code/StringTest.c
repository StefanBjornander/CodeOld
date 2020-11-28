#include <ErrNo.h>
#include <stdio.h>
#include <String.h>

#define SIZE 20

void string_test(void) {
  int i;
  char *s = "Hello, World!", t[100], u[100], *p;
  printf("strlen(\"%s\") = %i\n", s, strlen(s));

  strcpy(t, s);
  strncpy(u, s, 5);
  u[5] = '\0';
  printf("t = \"%s\", u = \"%s\"\n", t, u);

  strcat(t, "abc");
  i = strlen(u);
  strncat(u, "abc", 2);
  u[i + 2] = '\0';
  printf("t = \"%s\", u = \"%s\"\n", t, u);

  printf("strcmp(s, u) = %i\n", strcmp(s, u));
  printf("strncmp(s, u, 2) = %i\n", strncmp(s, u, 2));

  p = strchr(s, 'l');
  printf("strchr(s, 'l') = %i\n", (p != NULL) ? (p - s) : -1);

  p = strrchr(s, 'l');
  printf("strrchr(s, 'l') = %i\n", (p != NULL) ? (p - s) : -1);

  p = strchr(s, 'x');
  printf("strchr(s, 'x') = %i\n", (p != NULL) ? (p - s) : -1);

  p = strrchr(s, 'x');
  printf("strrchr(s, 'x') = %i\n", (p != NULL) ? (p - s) : -1);

  memcpy(s, "Hello, World!", SIZE * sizeof (char));
  memmove(t, "Hello, World!", SIZE * sizeof (char));
  memset(u, 'X', SIZE * sizeof(char));
  u[SIZE - 1] = '\0';
  printf("s = \"%s\", t = \"%s\", u = \"%s\"\n", s, t, u);

  p = memchr(s, 'l', SIZE * sizeof(char));
  printf("memchr(s, 'l', SIZE * sizeof(char)) = %i\n", (p != NULL) ? (p - s) : -1);

  p = memchr(s, 'x', SIZE * sizeof(char));
  printf("memchr(s, 'x', SIZE * sizeof(char)) = %i\n", (p != NULL) ? (p - s) : -1);

  printf("s: \"%s\", t: \"%s\"\n", s, t);
  printf("strcmp(s, t) = %i\n", strcmp(s, t));
  printf("memcmp(s, t, SIZE * sizeof(char)) = %i\n", memcmp(s, t, SIZE * sizeof(char)));

  printf("strspn(s, \"Hello, C\") = %i\n", strspn(s, "Hello, C"));
  printf("strcspn(s, \"Hello, C\") = %i\n", strcspn(s, "Hello, C"));

  printf("strerror(errno) = \"%s\"\n", strerror(errno));

  p = strtok(s, ",");
  while (p != NULL) {
    printf("strtok(s, \",\") = \"%s\"\n", p);
    p = strtok(NULL, ",");
  }
}