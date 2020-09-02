#include <stdarg.h>
#include <stdio.h>

void f(int num, ...) {
  int i;
  va_list ap;
  va_start(ap, num);

  for (i = 0; i < num; ++i) {
    printf("%d ", va_arg(ap, int));
  }

  printf("\n");
  va_end(ap);
}
/*
void main() {
  f(0);
  f(1, 1);
  f(2, 1, 2);
  f(3, 1, 2, 3);
}*/