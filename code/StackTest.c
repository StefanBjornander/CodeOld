#include <stdio.h>
#include <stdlib.h>

void stack_test() {
  static i = 0;
  printf("%i ", i++);
  stack_test();
}

void heap_test(void) {
//  test();

  { int count = 0;
    char* pointer;

    while ((pointer = malloc(1024)) != NULL) {
      printf("1024 bytes-block number: %i\n", count++, pointer);
    }

    //printf("malloc: %i\n", i++);
  }
}