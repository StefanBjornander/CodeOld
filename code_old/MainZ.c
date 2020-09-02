#include <stdio.h>

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

void main9() {
  int x = 1;

  while (x < 10) {
    ++x;
  }
}

void main(int, char* argv[]) {
  //stdlib_test();

  char c, s[20];
  int i;
  double x;
  printf("Please write a character, a string, an integer, and a double: ");
  scanf("%c %s %i %lf", &c, s, &i, &x);
  printf("You wrote the character '%c', the string \"%s\", the integer %i, and the double %f.", c, s, i, x);


/*  static long ijk = 0;
  static float xyz = 0;
  static double stu = 0;
  
  printf("<%s> %li %f %f\n", argv[0], ijk, xyz, stu);

  math_test_1(-10);
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

  char c, s[20];
  int i;
  double x;
  printf("Please write a character, a string, an integer, and a double: ");
  scanf("%c %s %i %lf", &c, s, &i, &x);
  printf("You wrote the character '%c', the string \"%s\", the integer %i, and the double %f.", c, s, i, x);*/
}