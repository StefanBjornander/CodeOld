#include <stdio.h>
#include <limits.h>

void limits_test(void) {
  printf("CHAR_BIT = %i\n", CHAR_BIT);

  printf("CHAR_MIN = %i\n\n", CHAR_MIN);
  printf("CHAR_MAX = %i\n", CHAR_MAX);
  printf("UCHAR_MAX = %u\n\n", UCHAR_MAX);

  printf("SHRT_MIN = %i\n", SHRT_MIN);
  printf("SHRT_MAX = %i\n", SHRT_MAX);
  printf("USHRT_MAX = %u\n\n", USHRT_MAX);

  printf("INT_MIN = %i\n", INT_MIN);
  printf("INT_MAX = %i\n", INT_MAX);
  printf("UINT_MAX = %u\n\n", UINT_MAX);

  printf("LONG_MIN = %li\n", LONG_MIN);
  printf("LONG_MAX = %li\n", LONG_MAX);
  printf("ULONG_MAX = %lu\n", ULONG_MAX);
  printf("ULONG_MAX = %lx\n", ULONG_MAX);
  printf("ULONG_MAX = %lX\n", ULONG_MAX);
}