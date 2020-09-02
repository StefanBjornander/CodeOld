#include <stdio.h>

extern void printLongDoublePlain(long double longDoubleValue, BOOL plus, BOOL space, BOOL grid, int precision);
extern void printLongDoubleFraction(long double longDoubleValue, BOOL grid, int precision);
extern void printLongInt(long longValue, BOOL plus, BOOL space);
extern void printChar(char c);
extern long double scanLongDouble(void);

int f(a, b, c)
int a, b, c; {
  struct { int i; } s, t;
  s = t;
}

void mainx() {
  g_outStatus = DEVICE;
  g_inDevice = stdin;
  long double x = scanLongDouble();
  g_outStatus = DEVICE;
  g_outDevice = stdout;
  printLongDoublePlain(x, 0, 0, 0, 6);

/*  long double longDoubleValue = 4567.123456789;
  printLongDoublePlain(longDoubleValue, 0, 0, 0, 6);
  printChar('\n');
  long int longValue = (long int) longDoubleValue;
  printLongInt(longValue, 0, 0);
  longDoubleValue -= (long double) longValue;
  printLongDoubleFraction(longDoubleValue, 0, 6);*/
}

void main() {
  int i;
  double d = 1.2, e = 1.2;
  char c, s[20];
  printf("Hello!\n");
  printf("Please write a character, a string, an integer, and a double: ");
  scanf("%c %s %i %lf", &c, s, &i, &d);
  printf("You wrote the character '%c', the string \"%s\", the integer %i, and the double %f.", c, s, i, d);
}
