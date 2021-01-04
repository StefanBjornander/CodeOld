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

void mainX5(void) {
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
