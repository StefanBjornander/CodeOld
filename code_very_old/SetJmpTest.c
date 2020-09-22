#include <stdio.h>
#include <SetJmp.h>

jmp_buf buffer;

double divide(double x, double y) {
  if (y != 0) {
    return x / y;
  }
  else {
    char *p = "Division by Zero.";
    //printf("longjmp <%s> <%u>\n", p, p);
    longjmp(buffer, p);
    return 0;
  }
}

double invers(double x) {
  return divide(1.0, x);
}

void setjmp_test(double x) {
  char* p;

  if ((p = setjmp(buffer)) == 0) {
    printf("1.0 / %f = %f\n", x, invers(x));
  }
  else {
    printf("p = <%s> <%u>\n", p, p);
  }

  /*char* message;

  if ((message = ((char*) setjmp(buffer))) == NULL) {
    printf("Y: 1.0 / %f = %f\n", x, invers(x));
  }
  else {
    printf("message = <%s> <%u>\n", (char*) message, message);
  }*/
}