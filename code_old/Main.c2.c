abc
def

#include <stdio.h>

void printLongIntRec(long longValue);
void printLongInt(long longValue, BOOL plus, BOOL space);
void printLongDoublePlain(long double longDoubleValue, BOOL plus, BOOL space, BOOL grid, int precision);
long scanLongInt(void);

/*int testZ(int a, int b) {
  return (a > 0) && (b > 0);
}*/

long double scanLongDouble(void);
void printLongDoublePlain(long double longDoubleValue, BOOL plus, BOOL space, BOOL grid, int precision);
void printLongDoubleFraction(long double longDoubleValue, BOOL grid, int precision);
void printLongInt(long longValue, BOOL plus, BOOL space);
void printLongIntRec(long longValue);
void scanString(char* string, int precision);

double f(double x) {
  return 7.8 * x;
}

#include <math.h>
double logX(double x);

void main() {
  /*char c = 'X';
  load_register(register_ah, 0x40s);
  load_register(register_bx, 1);
  load_register(register_cx, 1);
  load_register(register_dx, &c);
  interrupt(0x21s);

  g_inStatus = DEVICE;
  g_inDevice = (void*)stdin;
  g_outStatus = DEVICE;
  g_outDevice = (void*)stdout;
  printChar('X');
  printLongDoublePlain(-123.456, FALSE, FALSE, FALSE, 3);
  printf("<%f>\n", -123.456);*/

  double x = 1.2, y = 3.4, z;
  z = x * (y * f(5.6));
  printf("<%f> <%f> <%f>\n", 123.456, z, -234.567);
  
  //logX(1.2);
  //pow(1.2, 3.4);

  /*int a, b, c;
  a = (b + 1) + f(c);
  f(a);

  g_inStatus = DEVICE;
  g_inDevice = (void*)stdin;
  g_outStatus = DEVICE;
  g_outDevice = (void*)stdout;*/

  /*char a = 'X', b = 'Y', c = 'Z';
  printf("%c %c %c", a, b, c);
  char s[] = "Hello", t[] = "World!";
  printf("%c %s %c %s", a, s, b, t);
  
  { double x, *p = &x;
    *p = -123.456;
    printf("<%f> <%f>\n", x, *p);
  }
  
  { double x, *p = &x;
    x = -456.789;
    printf("<%f> <%f>", x, *p);
  }

//  scanf("%s", s);
//  printf("<%s>\n", s);

  int i;
  double x;
  char c, s[20];
  scanf("%s%c%i%lf", s, &c, &i, &x);
  printf("<%s> <%c> <%i> <%f>", s, c, i, x);
  
  double x;
  double *p;
  *p = 1;
  x = *p;
  printf("<%f>", x, *p);

  g_inStatus = DEVICE;
  g_inDevice = (void*) stdin;
  g_outStatus = DEVICE;
  g_outDevice = (void*) stdout;
  //printLongDoubleFraction(123.456, FALSE, 3);
  printLongDoublePlain(-123.456, FALSE, FALSE, FALSE, 3);*/
  
  /*double z;
  z = 1.2 + f(3.4);
  printf("<%f>", z);*/


  /*{ double a, b, c, d, e, f, g;
    a + (b + (c + (d + (e + (f + g)))));
  }

  { double a, b, c, d, e, f, g, h;
    a + (b + (c + (d + (e + (f + (g + h))))));
  }*/

  int i;
  double d;
  char c, s[20];
//  char u[] = "Hello", v[] = "World!";
//  printf("<%s> <%s>\n", u, v);
  printf("Hello! Please write a character, a string, an integer, and a double: ");
  scanf("%c %s %i %lf", &c, s, &i, &d);
  printf("You wrote the character '%c', the string \"%s\", the integer %i, and the double %f.", c, s, i, d);

  //printf("<%c> <%s> <%i> <%f>\n", 'X', "Hello", 123, 12.34);
  //printf("<%s> <%c> <%i> <%f>", "Hello", 'X', 123, 12.34);

  //int x, y;
  //double z = (x < y);

  //printf("Hello, World!");

  /*int a, b = 2, c = 3, d = 4, e = 5;
  a = (b * c) * (d * e);
  printf("%i", a);*/

  //int a = 1, b = 2, c = testZ(a, b);

  //printf("<%f> <%f>\n", -123.456, -456.123);

/*  { char c;
    printf(": ");
    scanf("%c", &c);
    printf("<%c>\n", c);
  }

  { char s[20];
    printf(": ");
    scanf("%s", s);
    printf("<%s>\n", s);
  }

  { int i;
    printf(": ");
    scanf("%i", &i);
    printf("<%i>\n", i);
  }

  { double x;
    printf(": ");
    scanf("%lf", &x);
    printf("<%f>", x);
  }

  printf("\n");
  printLongDoublePlain(-123.456, FALSE, FALSE, FALSE, 6);
  printf("\n");
  double x = scanLongDouble();
  printLongDoublePlain(x, FALSE, FALSE, FALSE, 6);
  printLongDoubleFraction(123.456, FALSE, 6);

  g_inStatus = DEVICE;
  g_inDevice = (void*) stdin;
  g_outStatus = DEVICE;
  g_outDevice = (void*)stdout;
  double x = (double) scanLongDouble();
  printf("<%f>", x);

  int i;
  char c;
  scanf("%c%i", &c, &i);
  printf("<%c> <%i>", c, i);

  int i;
  char s[20];
  scanf("%s%i", s, &i);
  printf("<%s> <%i>", s, i);

  /*int i;
  char c, s[20];
  scanf("%c%s%i", &c, s, &i);
  printf("<%c> <%s> <%i>", c, s, i);*/
  //printf("<%c> <%s> <%i> <%f>", 'X', "Hello, World!", -1234, -123.456);

  /*g_inStatus = DEVICE;
  g_inDevice = (void*) stdin;
  g_outStatus = DEVICE;
  g_outDevice = (void*)stdout;
  //long double x = scanLongDouble();
  //printLongDoublePlain(x, FALSE, FALSE, FALSE, 3);
  //printLongIntRec(123);
  //printChar('\n');
  printLongDoublePlain(-123.456, FALSE, FALSE, FALSE, 3);
  //printLongDoubleFraction(0.456, FALSE, 6);

  /*{ double x;
    printf(": ");
    scanf("%lf", &x);
    printf("<%f>", x);
  }

  /*{ char c;
    printf(": ");
    scanf("%c", &c);
    printf("<%c>\n", c);
  }

  { char s[20];
    printf(": ");
    scanf("%s", s);
    printf("<%s>\n", s);
  }

  { int i;
    printf(": ");
    scanf("%i", &i);
    printf("<%i>", i);
  }

  g_inStatus = DEVICE;
  g_inDevice = (void*) stdin;
  g_outStatus = DEVICE;
  g_outDevice = (void*)stdout;
  long l = scanLongInt();
  printLongInt(l, FALSE, FALSE);
  //int i = (int) l;

  //printf("<%c> <%i> <%s>\n", 'X', -1234, "Hello, World!");
  //g_outStatus = DEVICE;
  //g_outDevice = (void*) stdout;
  //printLongDoublePlain(-123.456, FALSE, FALSE, FALSE, 3);
  //printf("<%f>", 123.456);
  //printLongDoublePlain(-123.456, FALSE, FALSE, FALSE, 3);
  //printf("<%c> <%i> <%s>\n", 'X', -1234, "Hello, World!");
  */
}
  
//printf("X");'
//LongInt(123, FALSE, FALSE);

/*void main(int argc, char* argv[]) {
  char c, s[20];
  int i;
  double x;
  //printf("X");
  printChar('X');

  printf("Hello, X! Please write a character, a string, an integer, and a double: ");
  scanf("%c %s %i %lf", &c, s, &i, &x);
  printf("You wrote the character '%c', the string \"%s\", the integer %i, and the double %f.", c, s, i, x);
}

void main() {
  int a, b, c, d;
  (a * b) * (c * d);
}*/