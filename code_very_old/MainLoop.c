#include <stdio.h>

void main() {
  printf("Hello, World!\n");
  printf("char: '%c'\n", 'X');
  printf("string: \"%s\"\n", "Hello, World!");
  printf("int: %i\n", 123);
  printf("double: %f", 123.456);

/*
  printLongDoubleFraction(0.456, FALSE, 3);
  printf("\n");
  printLongDoublePlain(123.456, FALSE, FALSE, FALSE, 3);
  printf("\n");

  int precision = 6;
  double longDoubleValue = 0.456;

  while (precision-- > 0) {
    long double longDoubleValue10 = 10.0L * longDoubleValue;
    int digitValue = (int) longDoubleValue10;

    char character = digitValue + '0';
    printChar(character);

    double digitDouble = (long double) digitValue;
    longDoubleValue = longDoubleValue10 - digitDouble;
  }*/
}