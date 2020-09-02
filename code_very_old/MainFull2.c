#include <stdio.h>

void main() {
  char c;
  printf("Please write a character: ");
  scanf("%c", &c);
  printf("\nYou wrote the character '%c'.\n", c);

  char s[20];
  printf("Please write a string: ");
  scanf("%s", s);
  printf("You wrote the string \"%s\".\n", s);

  long int li;
  printf("Please write a long integer: ");
  scanf("%li", &li);
  printf("You wrote the integer %li.\n", li);

  double d;
  printf("Please write a double: ");
  scanf("%lf", &d);
  printf("You wrote the double %f.", d);

/*
  long int a = 1;

  if (a == 0) {
    printf("a zero\n");
  }
  if (a != 0) {
    printf("a not zero\n");
  }
  if (a > 0) {
    printf("a greater than zero\n");
  }
  if (a >= 0) {
    printf("a greater than or equal to zero\n");
  }
  if (a < 0) {
    printf("a less than zero\n");
  }
  if (a <= 0) {
    printf("a less than or equal to zero\n");
  }

  printf("a = %li\n", a);

  long int b = 0;

  if (b == 0) {
    printf("b zero\n");
  }
  if (b != 0) {
    printf("b not zero\n");
  }
  if (b > 0) {
    printf("b greater than zero\n");
  }
  if (b >= 0) {
    printf("b greater than or equal to zero\n");
  }
  if (b < 0) {
    printf("b less than zero\n");
  }
  if (b <= 0) {
    printf("b less than or equal to zero\n");
  }

  printf("b = %li\n", b);

  long int c = -1;

  if (c == 0) {
    printf("c zero\n");
  }
  if (c != 0) {
    printf("c not zero\n");
  }
  if (c > 0) {
    printf("c greater than zero\n");
  }
  if (c >= 0) {
    printf("c greater than or equal to zero\n");
  }
  if (c < 0) {
    printf("c less than zero\n");
  }
  if (c <= 0) {
    printf("c less than or equal to zero\n");
  }

  printf("c = %li\n", c);

  int d = -1;

  if (d == 0) {
    printf("d zero\n");
  }
  if (d != 0) {
    printf("d not zero\n");
  }
  if (d > 0) {
    printf("d greater than zero\n");
  }
  if (d >= 0) {
    printf("d greater than or equal to zero\n");
  }
  if (d < 0) {
    printf("d less than zero\n");
  }
  if (d <= 0) {
    printf("d less than or equal to zero\n");
  }

  printLongInt((long) d, FALSE, FALSE);
  printf("\n");
  printf("c = %i\n", d);

/*
  long int i;
  printf("Please write a long integer: ");
  scanf("%li", &i);
  printf("You wrote the integer %li.\n", i);

  int a = 123;
  printf("You wrote the integer %i.\n", a);

  int b = 0;
  printf("You wrote the integer %i.\n", b);

  int c = -123;
  printf("You wrote the integer %i.\n", c);

  if (d == 0) {
    printf("zero\n");
  }
  if (d != 0) {
    printf("not zero\n");
  }
  if (d > 0) {
    printf("greater than zero\n");
  }
  if (d >= 0) {
    printf("greater than or equal to zero\n");
  }
  if (d < 0) {
    printf("less than zero\n");
  }
  if (d <= 0) {
    printf("less than or equal to zero\n");
  }

  if (d == 1) {
    printf("one\n");
  }
  if (d != 1) {
    printf("not one\n");
  }
  if (d > 1) {
    printf("greater than one\n");
  }
  if (d >= 1) {
    printf("greater than or equal to one\n");
  }
  if (d < 1) {
    printf("less than one\n");
  }
  if (d <= 1) {
    printf("less than or equal to one\n");
  }

  if (d == -1) {
    printf("minus one\n");
  }
  if (d != -1) {
    printf("not minus one\n");
  }
  if (d > -1) {
    printf("greater than minus one\n");
  }
  if (d >= -1) {
    printf("greater than or equal to minus one\n");
  }
  if (d < -1) {
    printf("less than minus one\n");
  }
  if (d <= -1) {
    printf("less than or equal to minus one\n");
  }*/
}