#include <Time.h>
#include <stdio.h>
#include <stdlib.h>

/*int compare(const void* valuePtr1, const void* valuePtr2) {
  int intValue1 = *((int*)valuePtr1), intValue2 = *((int*)valuePtr2);
  int result = (intValue1 < intValue2) ? -1 : ((intValue1 == intValue2) ? 0 : 1);
  printf("value1 %i, value2 %i, result %i\n", intValue1, intValue2, result);
  return result;
}*/

int compare(const void* valuePtr1, const void* valuePtr2) {
  int intValue1 = *((int*) valuePtr1), intValue2 = *((int*) valuePtr2);
  return (intValue1 < intValue2) ? -1 : ((intValue1 == intValue2) ? 0 : 1);
}

int reverse_compare(const void* valuePtr1, const void* valuePtr2) {
  int intValue1 = *((int*) valuePtr1), intValue2 = *((int*) valuePtr2);
  return (intValue1 < intValue2) ? 1 : ((intValue1 == intValue2) ? 0 : -1);
}

div_t print_div(div_t d) {
  printf("div_t quot %i rem %i\n", d.quot, d.rem);
  ++d.quot;
  d.rem++;
  return d;
}

ldiv_t print_ldiv(ldiv_t ld) {
  printf("ldiv_t quot %li rem %li\n", ld.quot, ld.rem);
  --ld.quot;
  ld.rem--;
  return ld;
}

void exit_handle1x(void) {
  printf("exit1\n");
}

void exit_handle2x(void) {
  printf("exit2\n");
}

void exit_handle3x(void) {
  printf("exit3\n");
}

void hello(void) {
  printf("HelloFFF");
}

void qtest(void f(void)) {
  printf("f: %u\n", (unsigned) f);
  f();
}

void stdlib_testZ(void) {
  printf("hello: %u\n", (unsigned) hello);
  qtest(hello);
  printf("Y");
}

void stdlib_test(void) {
  { char *p;
    printf("atof(\"123.456\") = %f\n", atof("123.456"));
    printf("strtod(\"123.456789abc\", &p) = (%f, %s)\n", strtod("123.456789abc", &p), p);
  }

  printf("\ngetenv(\"path\") = %s\n", getenv("path"));
  printf("system(\"dir\")\n");
  system("dir");

  printf("\nabs(-3) = %i, abs(3) = %i\n", abs(-3), abs(3));
  printf("labs(-3l) = %li, labs(3l) = %li\n\n", labs(-3l), labs(3l));

  { div_t i = div(10, 3);
    printf("div_t(10, 3) = (%i, %i)\n", i.quot, i.rem);

    { div_t j = print_div(i);
      printf("div_t(10, 3) = (%i, %i)\n\n", j.quot, j.rem);
    }
  }

  { ldiv_t li = ldiv(10, 3);
    printf("ldiv_t(10, 3) = (%li, %li)\n", li.quot, li.rem);

    { ldiv_t lj = print_ldiv(li);
      printf("ldiv_t(10, 3) = (%li, %li)\n\n", lj.quot, lj.rem);
    }
  }

  { int list[] = {3, 4, 2, 1,};
    int size = sizeof list / sizeof list[0];

    { int index;
      printf("\nA List 1: ");
      for (index = 0; index < size; ++index) {
        printf("%i ", *(list + index));
      }
    }

    { int index;
      printf("\nB List 2: ");
      qsort(list, size, sizeof list[0], compare);
      for (index = 0; index < size; ++index) {
        printf("%i ", *(list + index));
      }
    }

    { int index;
      printf("\nC List 3: ");
      qsort(list, size, sizeof list[0], reverse_compare);
      for (index = 0; index < size; ++index) {
        printf("%i ", *(list + index));
      }
    }

    { int index;
      printf("\nB List 4: ");
      qsort(list, size, sizeof list[0], compare);
      for (index = 0; index < size; ++index) {
        printf("%i ", *(list + index));
      }
    }

    { int key;
      printf("\n\nSearch:\n");
      for (key = 0; key < 6; ++key) {
        int* p = (int*) bsearch(&key, list, size, sizeof list[0], compare);
        int index = (p != NULL) ? (p - list) : -1;
        printf("  (%i, %i)\n", key, index);
      }
    }

    printf("\n");
  }

  /*{ time_t t = time(NULL);
    printf("seed %lu\n", t);
    srand((unsigned int) t);

    int i;
    printf("rand ");
    for (i = 1; i < 100; ++i) {
      printf("%u ", rand());
    }

    printf("\n");
  }

  { atexit(exit_handle1);
    atexit(exit_handle2);
    atexit(exit_handle3);
    exit(0);
  }*/
}