#include <StdIO.h>
#include <Math.h>
#include <String.h>
#include <ErrNo.h>

void math_test_1(double x);
void math_test_2(double x, double y);
void math_test_int(double x, int i);

void malloc_test(void);                    // XXX x
void file_test(char*, char*);              // XXX
void print_test(void);                     // XXX
void limits_test(void);                    // XXX x
void float_test(void);                     // XXX x
void assert_test(void);                    // XXX line number
void string_test(void);                    // XXX x
void setjmp_test(double x);                // XXX x
void stdio_test(void);                     // XXX large integer representation
void stdlib_test(void);                    // XXX qsort search p - list
void stack_test(void);                     // XXX
void signal_test(void);                    // XXX
void time_test(void);                      // XXX
void character_test(char c);               // XXX
void locale_test(void); // perror, strerror

void main(void) {
  stdlib_test();
}

void mains(void) {
  setjmp_test(3.14);
  printf("---------------------------------------------\n");

  setjmp_test(0);
  printf("---------------------------------------------\n");

  setjmp_test(2.71);
  printf("---------------------------------------------\n");

  setjmp_test(0);
}

void char_main(void) {
  character_test('a');
  character_test('B');
  character_test('1');
  character_test('.');
  character_test('\n');
  character_test('f');
  character_test('g');
}

void main_math(void) {
  math_test_1(1.000001);
  math_test_1(1.0);
  math_test_1(0.999999);

  math_test_1(0.000001);
  math_test_1(0);
  math_test_1(-0.000001);

  math_test_1(-0.999999);
  math_test_1(-1.0);
  math_test_1(-1.000001);

  math_test_1(2 * PI);
  math_test_1(PI);
  math_test_1(PI / 2);

  math_test_1(-PI / 2);
  math_test_1(-PI);
  math_test_1(-2 * PI);
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
