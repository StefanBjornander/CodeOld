#include <stdio.h>
#include <setjmp.h>

jmp_buf buffer;

double inverse(double x);
double divide(double x, double y);

static void main() {
  char* message;
  double x;

  printf("Please input a value: ");
  scanf("%lf", &x);

  if ((message = setjmp(buffer)) == 0) {
    printf("1.0 / %f = %f\n", x, inverse(x));
  }
  else {
    printf("%s\n", message);
  }
}

double inverse(double x) {
  return divide(1, x);
}

double divide(double x, double y) {
  if (y != 0) {
    return x / y;
  }
  else {
    longjmp(buffer, "Division by Zero.");
    return 0;
  }
}

void setjmp_test(double x) {
}
