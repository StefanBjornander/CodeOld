#include <stdio.h>
#include <Assert.h>

void assert_test2(int n);

void assert_testX(void) {
  int n = 0;
  printf("Please write a number (not 6 or 7): ");
  scanf("%i", &n);
  assert(n != 6);
  assert_test2(n);
}

void assert_test2X(int n) {
  assert(n != 7);
}