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


void mainX() {
  static count = 1;

  if (count <= 10) {
    printf("%d ", count++);
    mainX();
  }
}

void random_access(void);
void temp_file(void);

BOOL generateName(int index, char* text, int max);

void mainXXX(void) {
  temp_file();
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

/*  { int i;
    double d;
    char c, s[20];
    mktime(NULL);
    printf("Hello!\n");
    printf("Please write a character, a string, an integer, and a double: ");
    scanf("%c %s %i %lf", &c, s, &i, &d);
    printf("You wrote the character '%c', the string \"%s\", the integer %i, and the double %f.\n", c, s, i, d);
  }*/
}