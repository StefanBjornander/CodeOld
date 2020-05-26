int f(int);
int*f(int);
int(*f)(int);
int*(*f)(int);

int *const *volatile &p;
int* a[10][20][30];

int * const * volatile * const volatile * volatile const * a[](int a, double b)[](float c, char d);

int *const b;
int *volatile c;
int *const volatile d;
int *const volatile e;
int &f;

class X {
  public:
    int i;
    int i = 1;

  private:
    int i : 3;
    int i = 2 : 4;

  public:
    int* f(int x) {
      class Y {
        public : int x;
      };

      printf("Hello, World Z!");
    }

  protected:
    int i : 3 = 5;
    int : 6;
};

int* f(int x) {
  y, b ? x + y : t * n;
  x += x *= x <<= x && x || x | x & x ^ x == x < x << x + x * -!~sizeof x->y;

  int x;
  class Z {
    public: int x;
  };
  printf("Hello, World Z!");

  ;
  x * y;
  a: ;

  while (x > 0) {
    x * y;
    printf("%i", y);
  }

  do {
    x * y;
    continue;
    printf("%i", y);
  } while (x > 0);

  return 1;

  if (x < 0) {
    x * y;
    printf("%i", y);
  }

  return;

  if (x < 0) {
    x * y;
    printf("%i", y);
  }
  else {
    x * y;
    printf("%i", y);
  }

  switch (x) {
  case 1:
    y = 1;
    z = 2;
    break;

  case 2:
    y = 3;
    z = 4;
    break;

  case 3:
    y = 5;
    z = 6;
    break;

  default:
    y = 7;
    z = 8;
    break;
  }

  a: a * b;
     goto b;

  for (index = 0; index < 10; ++index) {
    printf("%i ", index);
  }

  for (int index = 0; index < 10; ++index) {
    printf("%i ", index);
  }
}
