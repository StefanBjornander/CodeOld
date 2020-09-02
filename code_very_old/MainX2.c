#include <stdio.h>

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

void character_test(char c);
void limits_test(void);
void float_test(void);
void file_test(void);
void assert_test(void);
void string_test(void);
void math_test(double x, double y, int i);
void setjmp_test(double x);
void stdio_test(void);
void stdlib_test(void);
void time_test(void);
void stack_test(void);
void malloc_test(void);
void time_test(void);

void mainX(int argc, char* argv[]) {
  int a = 1, b = a + 1;
  printf("a = %i, b = %i\n", a, b);
}

void main(int argc, char* argv[]) {
//  double x, a, b, c, d, e, f, g, h;
//  x = a + (b + (c + (d + (e + f))));
//  double x, y;
//  double a[] = { x + 1, y + 2 };
//  printf("", x + 1, y + 2);

  malloc_test();
  file_test();
  time_test();

  { char c, s[20];
    long int li;
    double d;

    printf("\nX Please write a character, a string, a long integer, and a double: ");
    scanf("%c %s %li %lf", &c, s, &li, &d);
    printf("You wrote the character '%c', the string \"%s\", the integer %li, and the double %f.", c, s, li, d);
  }

//  time_test();
  //file_test();
  //malloc_test();

    /*  math_test(0.5, 2.0, 3);
  math_test(1.0, 2.0, 3);
  math_test(1.5, 2.0, 3);

  setjmp_test(1.0);
  setjmp_test(1.0);
  setjmp_test(1.0);
  setjmp_test(0.0);
  setjmp_test(0.0);
  setjmp_test(0.0);
  setjmp_test(1.0);
  setjmp_test(1.0);
  setjmp_test(1.0);
  setjmp_test(0.0);
  setjmp_test(0.0);
  setjmp_test(0.0);*/

  //printf("Hello, World!\n");
  //printf("<%i> <%i>\n", 123, -123);

/*
  { char c;
    printf("Please write a character: ");
    scanf("%c", &c);
    printf("\n<%c>\n", c);

    char s[20];
    printf("Please write a string: ");
    scanf("%s", s);
    printf("\n<%s>\n", s);

    long int li;
    printf("Please a long integer: ");
    scanf("%li", &li);
    printf("\n<%li>\n", li);

    double d;
    printf("Please write a double: ");
    scanf("%lf", &d);
    printf("\n<%f>\n", d);
  }

  { char c, s[20];
    long int li;
    double d;

    printf("Please write a character, a string, a long integer, and a double: ");
    scanf("%c %s %li %lf", &c, s, &li, &d);
    printf("You wrote the character '%c', the string \"%s\", the integer %li, and the double %f.", c, s, li, d);
  }

  printf("You wrote the character '%c', the string \"%s\", the integer %li, and the double %f.\n\n", c, s, li, d);

  printf("Please write a character, a string, a long integer, and a double: ");
  scanf("%c %s %li %lf", &c, s, &li, &d);
  printf("You wrote the character '%c', the string \"%s\", the integer %li, and the double %f.", c, s, li, d);
*/

//  stdio_test();

  /*  { char *p;
    for (p = (char*) 0; *p != '\r'; ++p) {
      printf("%i: %i <%c>\n", p, *p, *p);
    }
    printf("\n");
  }*/

/*
  { int index;
    printf("argc = %i.\n", argc);

    for (index = 0; index <= argc; ++index) {
      printf("argv[%i] = \"%s\".\n", index, argv[index]);
    }
  }

  { char c, s[20];
    long int li;
    double d;

    printf("\nPlease write a character, a string, a long integer, and a double: ");
    scanf("%c %s %li %lf", &c, s, &li, &d);
    printf("You wrote the character '%c', the string \"%s\", the integer %li, and the double %f.", c, s, li, d);
  }

/*
  int index;
  for (index = 129; index < 255; ++index) {
    char *p = (char*) index;
    printf("%i: %i\n", index, *p);
  }
*/

//  string_test();
//  assert_test();
//  file_test();
//  math_test(1.0, 2.0, 3);
//  setjmp_test(1.0);
//  setjmp_test(0.0);
//  stdio_test();
//  stdlib_test();

/*  string_test();
  assert_test();

  limits_test();
  float_test();

  char c;
  printf("Please write a character: ");
  scanf("%c", &c);
  character_test(c);

  character_test('a');
  character_test('X');
  character_test('1');
  character_test(' ');

  char c, s[20];
  long int li;
  double d;

  printf("Please write a character, a string, a long integer, and a double: ");
  scanf("%c %s %li %lf", &c, s, &li, &d);
  printf("You wrote the character '%c', the string \"%s\", the integer %li, and the double %f.", c, s, li, d);

  char c, s[20];
  long int li;
  double d;

  printf("Please write a character, a string, a long integer, and a double: ");
  scanf("%c %s %li %lf", &c, s, &li, &d);
  printf("You wrote the character '%c', the string \"%s\", the integer %li, and the double %f.", c, s, li, d);

  char c = 'x';
  do {
    printf("Please write a character (q = quit): ");
    scanf("%c", &c);
    character_test(c);
  } while (c != 'q');*/
}

/*
void main() {
}
*/
/*
  { struct s {int a, b;};
    struct s t = {123, 246};
    struct s *p = &t;
    printf("%i ", p->a);
    printf("%i\n", p->b);
  }

  { struct s {int a, b;};
    struct s t1 = {123, 246};
    struct s t2 = t1;
    struct s *p1 = &t1, *p2 = &t2;
    printf("%i ", t1.a);
    printf("%i ", t1.b);
    printf("%i ", t2.a);
    printf("%i\n", t2.b);
    printf("%i ", p1->a);
    printf("%i ", p1->b);
    printf("%i ", p2->a);
    printf("%i\n", p2->b);
  }

  { struct s {int a, b;};
    struct s t1, t2;
    t1.a = 123;
    t1.b = 246;
    t2 = t1;
    struct s *p1, *p2;
    p1 = &t1;
    p2 = &t2;
    printf("%i ", t1.a);
    printf("%i ", t1.b);
    printf("%i ", t2.a);
    printf("%i\n", t2.b);
    printf("%i ", p1->a);
    printf("%i ", p1->b);
    printf("%i ", p2->a);
    printf("%i\n", p2->b);
  }

  /*
  { struct s {int i, j;};
    struct s s1 = { 123, 246 };
    struct s s2 = s1;
    s2 = s1;
    printf("X %i ", s1.i);
    printf("%i ", s1.j);

    struct s *p1 = &s1;
    printf("%i ", p1->i);
    printf("%i\n", p1->j);
  }

  { struct s {int i, j;};
    struct s s1, s2;
    s1.i = 123;
    s1.j = 246;
    s2 = s1;
    printf("%i ", s1.i);
    printf("%i ", s1.j);
    printf("%i ", s2.i);
    printf("%i", s2.j);
  }*/
  /*
  char c; // Hello
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
}*/