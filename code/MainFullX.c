#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <String.h>
#include <ErrNo.h>
#include <Assert.h>
#include <Limits.h>
#include <Time.h>

void math_test();             // ok
void file_test();             // ok
void signal_test(void);       // ok
void time_test(void);         // ok
void assert_test(void);       // ok
void malloc_test(void);       // ok
void print_test(void);        // ok
void limits_test(void);       // ok
void float_test(void);        // ok
void string_test(void);       // ok
void setjmp_test(void);       // ok
void stdio_test(void);        // ok
void stdlib_test(void);       // ok
void strtol_test(void);       // ok
void strtoul_test(void);      // ok
void heap_test(void);         // ok
void stack_test(void);        // ok
void character_test();        // ok
void locale_test(void);       // ok

/*void main_math(void);
void math_test_2(double x,double y);
void acos_test(double x);
void atan_test(double x);*/

struct A;
struct B;

struct A {
  struct A* p;
  struct B* q;
};

struct B {
  struct A* p;
  struct B* q;
};

struct A a;

void main2(void) {
  struct C {
    struct C* p;
    struct B* q;
  };

  //sin(3.14);

  a.p = NULL;
  a.q = NULL;

  //malloc_test();
  file_test();
  //atan_test(0.999999);
  //main_math();
  //main_math();
  //time_test();
  //signal_test();
  //printf("log(2) = %f\n", log(2));
  //math_test_2(1.0, 2.0);
  //math_test_int(1.0, 2);

  /*double a = log(0.000001);
  double b = exp(a);
  printf("a %f, b %f\n", a, b);

  printf("<%e>", 123.456);
  printf("E %E\n", 123.456);
  printf("g %g\n", 123.456);
  printf("G %G\n", 123.456);*/

  //math_test_1(1.0);
  //math_test_2(1.0, 2.0);
  //math_test_int(2.0, 3);

  //assert_test();
  //print_test();
  //limits_test();
 //float_test();
  //string_test();
  //setjmp_test(0);
  //setjmp_test(10);
  //stdio_test();
  //stdlib_test();
  //stack_test();
  //heap_test();
  //stack_test();
  //signal_test();
  //time_test();
  /*character_test('a');
  character_test('G');
  character_test('\?');
  character_test(' ');
  character_test('\n');*/
  //locale_test();
}

void scanString(char* string, int precision);

void main33() {
  char s[20] = "Hello", t[20] = "World";
  printf("<%s> <%s>\n", s, t);
  /*g_inStatus = DEVICE;
  g_inDevice = stdin;
  scanString(t, 20);
  printf("<%s> <%t>\n", s, t);
  printf("<%s>\n", s);
  printf("Hello");*/
}

void main34() {
  g_outDevice = stdout;
  printChar('X');
  printChar('\n');
}

void mainc() {
  char c;
  printf("Please write a character: ");
  scanf("%c", &c);
  printf("You wrote the character '%c'.\n", c);
}

void maini() {
  int i;
  printf("Please write an integer: ");
  scanf("%i", &i);
  printf("You wrote the integer %i.\n", i);
}

void mains() {
  char s[20];
  printf("Please write a string: ");
  scanf("%s", s);
  printf("You wrote the string \"%s\".\n", s);
}

void maint() {
  limits_test();
  time_test();
}

/*void mainY() {
  malloc_test();
  setjmp_test(10);
  setjmp_test(0);
}

void mainX() {
  static count = 1;

  if (count <= 10) {
    printf("%d ", count++);
    mainX();
  }
}*/

void mainX(int argc, char* argv[]) {
  int index;
  for (index = 129; index < 255; ++index) {
    char c = *((char*) index);
    printf("%i: %i <%c>\n", index, (int) c, c);
  }

  printf("\nargc: %i\n", argc);

  for (index = 0; index < argc; ++index) {
    printf("%i: <%s>\n", index, argv[index]);
  }

  printf("\n");

  for (index = 0; argv[index] != NULL; ++index) {
    printf("%i: <%s>\n", index, argv[index]);
  }
}

void mainm(int argc, char* argv[]) {
  //printf("%f\n", tan(PI / 2));
  //printf("%f\n", tan(-PI / 2));
  //main_math();
}

void maina() {
  assert(1 < 2);
  assert(1 > 2);
}

void main(void) {
  math_test();
  file_test();
  //signal_test();
  time_test();  
  assert_test();
  malloc_test();
  print_test(); 
  limits_test();
  float_test(); 
  setjmp_test();
  stdio_test();
  string_test();
  stdio_test();
  stdlib_test();
  strtol_test();
  strtoul_test();
  //heap_test();  
  //stack_test(); 
  character_test();
  locale_test();
}

void mainX5() {
  //printf("<%i> <%2i> <%02i> <%i> <%2i> <%02i> <%i> <%2i> <%02i>\n", 1, 2, 3, 11, 12, 13, 111, 112, 123);
  //printf("%i %2i %02i", 1, 2, 3);
  /*  strtol_test();
  printf("\n");
  strtoul_test();*/
  //stdlib_test();
  //string_test();
  //time_test();
  file_test();
  //print_test();
  //malloc_test();
  //setjmp_test();
  /*time_t now = time(NULL);
  struct tm s = *gmtime(&now);
  char* weekdays[] = { "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat" };
  printf("now: %lu\n", now);
  printf("gm time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i\n",
         weekdays[s.tm_wday], 1900 + s.tm_year, s.tm_mon + 1, s.tm_mday,
         s.tm_hour, s.tm_min, s.tm_sec, s.tm_yday, s.tm_wday, s.tm_isdst);*/
}

void mainX4(int argc, char* argv[]) {
  /*unsigned int *p = stack_top + 1048572;
  unsigned u = *p;
  printf("<%p> <%u> <%u>\n", p, (unsigned int) p, u);*/

/*{ char a[] = "abc";
    char b = a[2];
    int e = 3;
    int f = a[e];
  }

  { int a[] = {1,2,3};
    int b = a[2];
    int e = 3;
    int f = a[e];
  }*/

  extern enum { ZERO, ONE };
  static enum { ZERO = 0, ONE = 1 };

  extern enum{ TWO, THREE };
  static enum{ TWO = 2, THREE = 3 };

  printf("argc: %i\n", argc);

  { int index;
    for (index = 0; index < argc; ++index) {
      printf("%i: <%s>\n", index, argv[index]);
    }
    printf("\n");

    for (index = 0; argv[index] != NULL; ++index) {
      printf("%i: <%s>\n", index, argv[index]);
    }
    printf("\n");
  }

  { int i;
    double d;
    char c, s[20];
    mktime(NULL);
    printf("Hello!\n");
    printf("Please write a character, a string, an integer, and a double: ");
    scanf("%c %s %i %lf", &c, s, &i, &d);
    printf("You wrote the character '%c', the string \"%s\", the integer %i, and the double %f.\n", c, s, i, d);
  }
}

void main3() {
  double x;
  printf(": ");
  scanf("%lf", &x);
  printf("<%f>", x);
}

/*void mains2(void) {
  setjmp_test(3.14);
  printf("---------------------------------------------\n");

  setjmp_test(0);
  printf("---------------------------------------------\n");

  setjmp_test(2.71);
  printf("---------------------------------------------\n");

  setjmp_test(0);
}*/

void char_main(void) {
  character_test('a');
  character_test('B');
  character_test('1');
  character_test('.');
  character_test('\n');
  character_test('f');
  character_test('g');
}

#if 0
void mainX() {
  static int a[] = { 1, 2 }, b[] = { 3, 4 };
  static int d[][2] = { 1, 2, 3, 4 };
  static int c[][2] = { 5, 6, 11, a, 12, 7, 8, b, 9, 10, 13 };
  //  static int a[][2][2] = { 1, 2, 3, 4, 5, 6, 7, 8 };
}

void main() {
  int i;
  double d;
  char c, s[20];
  printf("Hello!\n");
  printf("Please write a character, a string, an integer, and a double: ");
  scanf("%c %s %i %lf", &c, s, &i, &d);
  printf("You wrote the character '%c', the string \"%s\", the integer %i, and the double %f.", c, s, i, d);
}

void main(void) {
  { double x = sin(1.000000001);
    printf("<%f>\n", x);
  }
  
  { double x = sin(1.0);
    printf("<%f>\n", x);
  }
  
  { double x = sin(1.0);
    printf("<%f>\n", x);
  }
  
  { double x = sin(1.0);
    printf("<%f>\n", x);
  }
  
  { double x = sin(0.999999999);
    printf("<%f>\n", x);
  }
  
  { double x = sin(0);
    printf("<%f>\n", x);
  }
  
  { double x = sin(-0.000000001);
    printf("<%f>\n", x);
  }

  { double x = sin(-0.999999999);
    printf("<%f>\n", x);
  }

  { double x = sin(-1);
    printf("<%f>\n", x);
  }

  { double x = sin(-1.000000001);
    printf("<%f>\n", x);
  }
}

void main() {
  int i;
  double d;
  char c, s[20];
  printf("Hello!\n");
  printf("Please write a character, a string, an integer, and a double: ");
  scanf("%c %s %i %lf", &c, s, &i, &d);
  printf("You wrote the character '%c', the string \"%s\", the integer %i, and the double %f.", c, s, i, d);
}

#define hello1
#define hello2
#define hello3

#if (1 + 2) < (3 * 4)

int i1_1;

#if 1 < 2
  int i1_2;
#elif 1 < 2
  int i1_3;
#else
  int i1_4;
#endif

int i1_4;

#elif defined hello2
int i2;
#elif defined hello3
int i3;
#else
int i4;
#endif

void mainB() {
  int x = 0;
  while (x < 10) {
    x = 10;
  }
}

void mainC() {
  int a = 1, b = 2, c = 3, d = 4, x, y;

  x = a * b + c * d;
  //c = 2;
  y = a * b + c * d;

  printf("%i", x);
  //printf("%i %i", x, y);
}

/*
void main() {
  char c = 'x';
  printf("A You wrote the character '%c'.\n", c);

  char s[20] = "abc";
  printf("You wrote the string \"%s\".\n", s);

  long int li = -123;
  printf("You wrote the integer %li.\n", li);

  double d = -123.4567;
  printf("You wrote the double %f.", d);
}
*/

#define XMIN(x,y) \
(((x) < (y)) \
? (x) : (y))
#define MIN(x,y) (((x) < (y)) ? (x) : (y))

void malloc_test(void);                    // XXX
void file_test(char*, char*);              // XXX
void print_test(void);                     // XXX
void limits_test(void);                    // XXX
void float_test(void);                     // XXX
void assert_test(void);                    // XXX
void string_test(void);                    // XXX
void setjmp_test(double x);                // XXX
void stdio_test(void);                     // XXX
void stdlib_test(void);                    // XXX
void stack_test(void);                     // XXX
void signal_test(void);                    // XXX
void time_test(void);                      // XXX
void character_test(char c);               // XXX
void locale_test(void); // perror, strerror
                        // asctime, ctime, strftime
                        // isupper, islower, toupper, tolower

void math_test_1(double x);
void math_test_2(double x, double y);
void math_test_int(double x, int i);

//void default_test();

void main(void) {
  printf(strerror());
}

void main_x(void) {
  math_test_1(1.000000001);
  math_test_1(1);
  math_test_1(0.999999999);
  math_test_1(0.000000001);
  math_test_1(0);
  math_test_1(-0.000000001);
  math_test_1(-0.999999999);
  math_test_1(-1);
  math_test_1(-1.000000001);

  /*math_test_1(-10);
  math_test_1(-PI);
  math_test_1(-E);
  math_test_1(-PI / 2);
  math_test_1(-1);
  math_test_1(0);
  math_test_1(1);
  math_test_1(PI/2);
  math_test_1(E);
  math_test_1(PI);
  math_test_1(10);

  math_test_2(2, 3);
  math_test_int(2, 3);

  //string_test();
  //default_test();
  //time_test();

  /*signal_test();
  stdlib_test();

  char c, s[20];
  int i;
  double x;
  printf("Please write a character, a string, an integer, and a double: ");
  scanf("%c %s %i %lf", &c, s, &i, &x);
  printf("You wrote the character '%c', the string \"%s\", the integer %i, and the double %f.", c, s, i, x);

  /*math_test_1(1);
  math_test_1(1.57);
  math_test_1(1.57);
  math_test_1(2.72);
  math_test_1(10);
  math_test_2(10, 3);
  math_test_2(2, 3);
  math_test_int(2.1, 3);*/

  //limits_test();
  //float_test();
  //file_test("c:\\input.txt", "c:\\output.txt");
  //assert_test();

  //print_test();
  //printf("\n");
  //stdio_test();

  /*setjmp_test(1);
  setjmp_test(0);
  setjmp_test(2);
  setjmp_test(0);
  setjmp_test(3);*/

  //time_test();
  //printf("\n\n\n");
  //string_test();

  /*character_test('A');
  character_test('b');
  character_test('X');
  character_test('y');
  character_test('6');
  character_test('.');
  character_test(' ');
  character_test('\n');*/
}

/*void main() {
  int i;
  double d;
  char c, s[20];
  printf("Hello!\n");
  printf("Please write a character, a string, an integer, and a double: ");
  scanf("%c %s %i %lf", &c, s, &i, &d);
  printf("You wrote the character '%c', the string \"%s\", the integer %i, and the double %f.", c, s, i, d);
}

void mainX(int argc, char* argv[]) {
  int a = 1, b = a + 1;
  printf("a = %i, b = %i\n", a, b);
}*/

void mainX() {
  char c, s[20];
  int i;
  double x;
  printf(": ");
  scanf("%c%s%i%f", &c, s, &i, &x);
  printChar(c);
  printf("<%c> <%s> <%i> <%f>", c, s, i, x);

/*  double x = 1e-10;
  int index;
  for (index = 0; index < 12; ++index) {
    printf("<%f> <%f> <%f>\n", x, log(x), log10(x));
    x *= 10;
  }

//  printf("<log %f> <log10 %f>", log(123.456), log10(123.456));

/*  int i;

  switch (i) {
    case 1:
      i = 1;
      break;
    
    default:
      i = 6;
      break;

    case 2:
      i = 2;
      break;
    
    case 3:
      i = 3;
      break;
  }

  i = 9;*/

/*  double x = 1.23456;
  int index;
  for (index = 0; index < 10; ++index) {
    int i = log10_int(x);
    double y = x / pow_int(10, i);
    printf("<%f> <%i> <%f>\n", x, i, y);
    x *= 10;
  }
  
  x = 1.23456;
  for (index = 0; index < 10; ++index) {
    int i = log10_int(x);
    double y = x / pow_int(10, i);
    printf("<%f> <%i> <%f>\n", x, i, y);
    x /= 10;
  }*/
  
/*  printf("<%f>\n<%f>\n<%f>\n<%f>\n<%f>\n<%f>\n<%f>\n", 0.123456, 1.23456, 12.3456, 123.456, 1234.56, 12345.6, 123456.0);
  printf("<%f>\n<%f>\n<%f>\n<%f>\n<%f>\n<%f>\n<%f>\n\n", 0.123456, 0.0123456, 0.00123456, 0.000123456, 0.0000123456, 0.00000123456, 0.00000012345);

  printf("<%e>\n<%e>\n<%e>\n<%e>\n<%e>\n<%e>\n<%e>\n", 0.123456, 1.23456, 12.3456, 123.456, 1234.56, 12345.6, 123456.0);
  printf("<%e>\n<%e>\n<%e>\n<%e>\n<%e>\n<%e>\n<%e>\n\n", 0.123456, 0.0123456, 0.00123456, 0.000123456, 0.0000123456, 0.00000123456, 0.00000012345);

  printf("<%E>\n<%E>\n<%E>\n<%E>\n<%E>\n<%E>\n<%E>\n", 0.123456, 1.23456, 12.3456, 123.456, 1234.56, 12345.6, 123456.0);
  printf("<%E>\n<%E>\n<%E>\n<%E>\n<%E>\n<%E>\n<%E>\n\n", 0.123456, 0.0123456, 0.00123456, 0.000123456, 0.0000123456, 0.00000123456, 0.00000012345);

  printf("<%g>\n<%g>\n<%g>\n<%g>\n<%g>\n<%g>\n<%g>\n", 0.123456, 1.23456, 12.3456, 123.456, 1234.56, 12345.6, 123456.0);
  printf("<%g>\n<%g>\n<%g>\n<%g>\n<%g>\n<%g>\n<%g>\n\n", 0.123456, 0.0123456, 0.00123456, 0.000123456, 0.0000123456, 0.00000123456, 0.00000012345);

  printf("<%G>\n<%G>\n<%G>\n<%G>\n<%G>\n<%G>\n<%G>\n", 0.123456, 1.23456, 12.3456, 123.456, 1234.56, 12345.6, 123456.0);
  printf("<%G>\n<%G>\n<%G>\n<%G>\n<%G>\n<%G>\n<%G>\n\n", 0.123456, 0.0123456, 0.00123456, 0.000123456, 0.0000123456, 0.00000123456, 0.00000012345);*/

  /*printf("<%f> <%f> <%f> <%f> <%f> <%f> <%f>\n", 0.123456, 1.23456, 12.3456, 123.456, 1234.56, 12345.6, 123456.0);
  printf("<%g> <%g> <%g> <%g> <%g> <%g> <%g>\n", 0.123456, 1.23456, 12.3456, 123.456, 1234.56, 12345.6, 123456.0);
  printf("<%G> <%G> <%G> <%G> <%G> <%G> <%G>\n", 0.123456, 1.23456, 12.3456, 123.456, 1234.56, 12345.6, 123456.0);
  printf("<%e> <%e> <%e> <%e> <%e> <%e> <%e>\n", 0.123456, 1.23456, 12.3456, 123.456, 1234.56, 12345.6, 123456.0);
  printf("<%E> <%E> <%E> <%E> <%E> <%E> <%E>\n", 0.123456, 1.23456, 12.3456, 123.456, 1234.56, 12345.6, 123456.0);*/
  // printf("<%f> <%f>", log(123.456), log10(123.456));
  //  printf("<%f>", log(123.456));

/*  printf("A ");
  printf("<%f> ", log(123.456));
  printf("B ");
  printf("<%f> ", log(123.456));
  printf("C ");
  //  printf("<%f> <%f>", log(123.456), log10(123.456));

  double x = log(123.456), y = log10(123.456);
  printf("<%f> <%f>", x, y);

  double x = log(123.456), y = 0.434929488190 * x;
  long z = (long) y;
  printf("<x%f> <y%f> <%zi>\n", x, y, z);

  printf("<%e> <%e> <%e> <%e>\n", 123.123, 123.789, -123.123, -123.789);
  printf("<%f> <%f> <%f> <%f>\n", 123.123, 123.789, -123.123, -123.789);

  long r = (long) 123.789;
  long double x = 123.789;
  long s = (long) x;
  long double y = (long double) s;
  long t = (long) y;
  printf("<r%li> <s%li> <t%li>", r, s, t);

  int a = (int) 1.9999, b = (int) 2.9999;
  long c = (long) 1.9999, d = (long) 2.9999;
  printf("<%i> <%i> <%li> <%li>", a, b, c, d);

  printf("A <%c> B <%c> C", 'X', 'Y');
  printf("A <%s> B <%s> C", "Hello", "World");
  printf("A <%s> B <%c> C <%i> D <%f> E", "Hello", 'X', 123, 1.23);*/
}

void mainZ() {
  /*double x;
  int i, j;

  x = (double) (i + j);

  /*int i;
  double x;

  x = (int) i;
  i = (double)x;

  /*int a, b, c, d;
  int x = a * b + c * d;

  double x = sqrt(4);
  printf("%f", x);

  int a = 1, b = 2, c = a * b;
  printf("%f %f", exp(2), exp(sqrt(4)));
  c = a * b;
  
  printf("Hello");
  printf("%i", 123);
  
  double x;
  sin(1);
  x = sin(1);
  tanh(1);
  x = sinh(1);
  sinh(1);
  x = tanh(1);

  unsigned long a, b, c, d, e, f;
  a = b % c;
  d = a * f;

/*
  unsigned long time;
  unsigned long seconds = time % 86400lu;
  unsigned long tm_sec = seconds % 60lu);
  //int tm_min = (int) ((seconds % 3600lu) / 60lu);
  //int tm_hour = (int) (seconds / 3600lu);
*/

  malloc_test();
  //file_test();
  //time_test();

  /*char c, s[20];
  int i;
  double x;
  printf("Please write a character, a string, an integer, and a double: ");
  scanf("%c %s %i %lf", &c, s, &i, &x);
  printf("You wrote the character '%c', the string \"%s\", the integer %i, and the double %f.", c, s, i, x);

/*
  char s[] = "Hello, World!";
  printf("<%s> <%i> <%i>", s, 123, 456);

  char c, s[20];
  int i;
  double x;

  printf("Please write a character, an integer, and a double: ");
  scanf("%c %i %lf", &c, &i, &x);
  scanf("%s", s);
  printf("<%s>\n", s);
  printf("You wrote the character '%c', the integer %i, and the double %f.", c, i, x);

  printf(": ");
  char c;
  scanf("%c", &c);
  //printf("<%c>\n", c);

  char s[20];
  printf(": ");
  scanf("%s", s);
  printf("<%s>\n", s);
  
  int i;
  printf(": ");
  scanf("%i", &i);
  //printf("<%i>\n", i);

  double x;
  printf(": ");
  scanf("%lf", &x);
  printf("<%c> <%i> <%f>\n", c, i, x);

/*
  printf("<%c>\n", 'X');
  char c = 'X', s[20] = "Hello";
  int i = -1234;
  double x = -12.34;
  printf("s <%s>\n", s);
  printf("i <%i>\n", i);
  printf("x <%f>\n", x);

  char c = 'X', s[20] = "Hello";
  long int li = -1234;
  double d = -12.34;
  printf("You wrote the character '%c', the string \"%s\", the integer %li, and the double %f.", c, s, 1234, -12.34);
  printf("You wrote the character '%c', the string \"%s\", the integer %li, and the double %f.", c, s, 1234, -12.34);

  char c, s[20];
  long int li;
  double d;

  printf("Please write a character, a string, a long integer, and a double: ");
  scanf("%c", &c);
  scanf("%s", s);
  scanf("%li", &li);
  scanf("%lf", &d);
  //scanf("%c %s %li %lf", &c, s, &li, &d);
  printf("You wrote the character '%c', the string \"%s\", the integer %li, and the double %f.", c, s, li, d);

  double x;
  printf(": ");
  scanf("%lf", &x);
  printf("<%f>\n", x);

  int index;
  for (index = 0; index < 10; ++index) {
    printf("<exp %f> <pow %f>\n", exp(index), pow(10, index));
  }

  char c, s[20];
  long int li;
  double d;
  printf("Please write a character, a string, a long integer, and a double: ");
  scanf("%c %s %li %lf", &c, s, &li, &d);
  printf("You wrote the character '%c', the string \"%s\", the integer %li, and the double %f.", c, s, li, d);
*/
}

void mainA(int /*argc*/, char* /*argv*/[]) {
  /*short hour, min, sec;
  load_register(register_ah, 0x2Cs);
  interrupt(0x21s);
  store_register(register_ch, hour);
  store_register(register_cl, min);
  store_register(register_dh, sec);
  clear_registers();
  printf("main <hour %i> <min %i> <sec %i>\n", hour, min, sec);

  print_test();
  time_test();*/

  file_test("c:\\input.txt", "c:\\output.txt");
}

void mainT(int argc, char* argv[]) {
  /*int address;
  for (address = 128; address < 256; ++address) {
    char *p = (char*) address;
    char c = *p;
    int i = (int) c;
    printf("%i: %i '%c'\n", address, i, c);
  }*/

  printf("\nargc: %i\n\n", argc);

  int index;
  for (index = 0; index < argc; ++index) {
    printf("%i: <%s>\n", index, argv[index]);
  }

  printf("\n");
  for (index = 0; argv[index] != NULL; ++index) {
    printf("%i: <%s>\n", index, argv[index]);
  }
}

//  double x, a, b, c, d, e, f, g, h;
//  x = a + (b + (c + (d + (e + f))));
//  double x, y;
//  double a[] = { x + 1, y + 2 };
//  printf("", x + 1, y + 2);

  /*malloc_test();
  file_test();
  time_test();*/

/*  printf("argc: %i\n", argc);

  int index;
  for (index = 0; index < argc; ++index) {
    printf("<%s> ", argv[index]);
  }
  printf("\n");

  for (index = 0; argv[index] != NULL; ++index) {
    printf("<%s> ", argv[index]);
  }
  printf("\n");*/

/*  { char c, s[20];
    int i;
    double x;

    printf("Please write a character, a string, an integer, and a double: ");
    scanf("%c %s %li %lf", &c, s, &i, &x);
    printf("You wrote the character '%c', the string \"%s\", the integer %li, and the double %f.", c, s, i, x);
  }*/
#endif

/*void assert_test(void) {
  int n = 0;
  printf("Please write a number (not 6 or 7): ");
  scanf("%i", &n);
  assert(n != 6);
  //assert_test2(n);
}*/

void assert_test2(int n) {
  assert(n != 7);
}

//int arr[3], brr[3];

  /*int* p;

  if (arr < p) {
    ++p;
  }

  if (arr < brr) {
    ++p;
  }

  if (arr < 1000) {
    ++p;
  }*/