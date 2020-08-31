#include <math.h> 
#include <Time.h>
#include <stdio.h>
#include <ErrNo.h>
#define NDEBUG
#include <Assert.h>
#include <String.h>
#include <Locale.h>

void character_test(char c);
void stdio_test();
void limits_test();
void float_test();
void math_test(double x, double y, int i);
void string_test(void);
void setjmp_test(double);
void signal_test(void);
void stdlib_test(void);
void file_test(void);
void malloc_test(void);
void time_test(void);

void eof_file_test(void);
void count_file_test(void);
void phone_file_test(void);
void space_file_test(void);
void binary_file_test(void);
void random_file_test(void);
void rename_file_test(void);
void copy_file_test(void);
void temp_file_test(void);

/*
#define PRINT(x,y) { printf(#x " = <%" #y ">\n", (x)); }

void printc(char c) {
  load_register(register_ah, 0x40s);
  load_register(register_bx, 1);
  load_register(register_cx, 1);
  load_register(register_dx, &c);
  interrupt(0x21s);
}

int printf1(char* format) {
  int index;
  for (index = 0; format[index] != '\0'; ++index) {
    print(format[index]);
  }
}

int printf2(char* format, ...) {
  int index;
  for (index = 0; format[index] != '\0'; ++index) {
    printChar(format[index]);
  }
}
*/

void main(int argc, char* argv[]) {
/*  g_outStatus = DEVICE;
  g_outDevice = stdout;
  printChar('X');
  printChar('Y');*/

  printf("Hello C World!", 123);

/*
  g_outStatus = DEVICE;
  g_outDevice = stdout;
  printf2(p);

  int index;
  g_outStatus = DEVICE;
  g_outDevice = stdout;
  for (index = 0; p[index] != '\0'; ++index) {
    printChar(p[index]);
  }

  printChar('\n');
*/

/*
//  int a, b;
//  a = (b < 0) ? -b : +b;


//  printf("Hello, World %s!", "X");
  int a = 2, b = 8, c = 2;
  int x = a + b / c;
  int y = a + (b / c);
  int z = (a + b) / c;
  printf("x: %i, y: %i, z: %i\n", x, y, z);
  temp_file_test();

/*  eof_file_test();
  count_file_test();
  phone_file_test();
  space_file_test();
  rename_file_test();
  copy_file_test();
  random_file_test();
  binary_file_test();
*/

//  malloc_test();
//  time_test();

//  PRINT(islower('a') ? "Yes" : "No", s);
//  PRINT(islower('b') ? "Yes" : "No", s);

//{ printf ( "islower('a')?\"Yes\":\"No\" = %s\n", ( islower ( 'a' ) ? "Yes": "No") ) ; } ;
//{ printf ( "islower('b')?\"Yes\":\"No\" = %s\n", ( islower ( 'b' ) ? "Yes": "No") ) ; } ;

//  stdlib_test();
//  time_test();
//  malloc_test();
//  signal_test();
//  setjmp_test(10.0);
//  setjmp_test(0.0);

//  stdlib_test();
//  signal_test();
//  string_test();

//  math_test(-2.0, 3.0, 4);

/*  character_test('0');
  character_test('e');
  character_test('E');
  character_test('x');
  character_test('X');
  character_test('\n');*/
//  stdio_test();
//  float_test();
/*  math_test(0.5, 3.0, 4);
  math_test(2.0, 3.0, 4);
  math_test(-0.5, 3.0, 4);
  math_test(-2.0, 3.0, 4);

  assert(1 == 2);
  printf("<%f> <%f>\n", sqrt(-1.0), sqrt(0.0));
  printf("<%f> <%f> <%f> <%f>\n", sqrt(1.0), sqrt(2.0), sqrt(4.0), sqrt(8.0), sqrt(16.0));
  printf("<%f> <%f> <%f> <%f>", sqrt(1.0), sqrt(0.5), sqrt(0.25), sqrt(0.125), sqrt(0.0625));

  int i = 1;
  unsigned u = 2, o = 3, x = 4;

  printf("i: ");
  scanf("%i", &i);
  printf("\n<%i>\n", i);

  printf("u: ");
  scanf("%u", &u);
  printf("\n<%u>\n", u);

  printf("o: ");
  scanf("%o", &o);
  printf("\n<%u> <%o> <%#o>\n", o, o, o);

  setjmp_test(10.0);
  string_test();
  setjmp_test(0.0);

  printf("x: ");
  scanf("%x", &x);
  printf("\n<%u> <%x> <%X> <%#x> <%#X>\n", x, x, x, x, x);

  double d = 3.14;
  printf("d: ");
  scanf("%lf", &d);
  printf("\n<%f>\n", d);

  char s[10] = "abc", t[10] = "def";
 
  printf("s: ");
  scanString(s, 0);
  printf("\n<%s>\n", s);
  
  printf("t: ");
  scanString(t, 0);
  printf("\n<%s>", t);

/*  int n;
  int *p = &n;

  printf("<%i> <%i> <%li> <%li> <%u> <%lu>\n\n", 123, -123, 123L, -123L, 123, 123L);

  printf("<%6i> <%6i> <%6li> <%6li> <%6u> <%6lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%+6i> <%+6i> <%+6li> <%+6li> <%+6u> <%+6lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%-6i> <%-6i> <%-6li> <%-6li> <%-6u> <%-6lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%+-6i> <%+-6i> <%+-6li> <%+-6li> <%+-6u> <%+-6lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%-+6i> <%-+6i> <%-+6li> <%-+6li> <%-+6u> <%-+6lu>\n\n", 123, -123, 123L, -123L, 123, 123L);

  printf("<%06i> <%06i> <%06li> <%06li> <%06u> <%06lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%+06i> <%+06i> <%+06li> <%+06li> <%+06u> <%+06lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%-06i> <%-06i> <%-06li> <%-06li> <%-06u> <%-06lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%+-06i> <%+-06i> <%+-06li> <%+-06li> <%+-06u> <%+-06lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%-+06i> <%-+06i> <%-+06li> <%-+06li> <%-+06u> <%-+06lu>\n\n", 123, -123, 123L, -123L, 123, 123L);

  printf("<% 6i> <% 6i> <% 6li> <% 6li> <% 6u> <% 6lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%+ 6i> <%+ 6i> <%+ 6li> <%+ 6li> <%+ 6u> <%+ 6lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%- 6i> <%- 6i> <%- 6li> <%- 6li> <%- 6u> <%- 6lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%+- 6i> <%+- 6i> <%+- 6li> <%+- 6li> <%+- 6u> <%+- 6lu>\n\n", 123, -123, 123L, -123L, 123, 123L);

  printf("<%x> <%X> <%o> <%lx> <%lX> <%lo>\n", 123, 123, 123, 123L, 123L, 123L);
  printf("<%#x> <%#X> <%#o> <%#lx> <%#lX> <%#lo>\n", 123, 123, 123, 123L, 123L, 123L);
  printf("<%%> <%s> <%c> <%p>\n", "Hello, World!", 'X', p);
  printf("<%12.3f> <%12.3f> <%12.3f> <%12.3f> <%12.3f>", 123.456, 0.789, -123.456, -0.789, 0.0);
*/

/*
  printf("<%f> <%e> <%E> <%g> <%G>\n", 123.456, 123.456, 123.456, 123.456, 123.456);
  printf("<%lf> <%le> <%lE> <%lg> <%lG>\n", 123.456L, 123.456L, 123.456L, 123.456L, 123.456L);

  printf("<%#f> <%#e> <%#E> <%#g> <%#G>\n", 123.456, 123.456, 123.456, 123.456, 123.456);
  printf("<%#lf> <%#le> <%#lE> <%#lg> <%#lG>\n", 123.456L, 123.456L, 123.456L, 123.456L, 123.456L);

  printf("<%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>\n", 123.456, 123.456, 123.456, 123.456, 123.456);
  printf("<%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>\n", 123.456L, 123.456L, 123.456L, 123.456L, 123.456L);
*/}
