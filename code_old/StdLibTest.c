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
  int intValue1 = *((int*)valuePtr1), intValue2 = *((int*)valuePtr2);
  return (intValue1 < intValue2) ? -1 : ((intValue1 == intValue2) ? 0 : 1);
}

int reverse_compare(const void* valuePtr1, const void* valuePtr2) {
  int intValue1 = *((int*) valuePtr1), intValue2 = *((int*) valuePtr2);
  return (intValue1 < intValue2) ? 1 : ((intValue1 == intValue2) ? 0 : -1);
}

void print_div(div_t d) {
  printf("div_t quot %i rem %i\n", d.quot, d.rem);
}

void print_ldiv(ldiv_t ld) {
  printf("ldiv_t quot %li rem %li\n", ld.quot, ld.rem);
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

void stdlib_test(void) {
  { char s[100], t[100], w[100];
    char *p = s, *q = t, *r = w;

    double x = strtod("123.456abc", &p), y = atof("123.456");
    long l = strtol("123abc", &q, 8);
    unsigned long ul = strtoul("123abc", &r, 8);

    printf("atof(\"123.456\") = %f\n", y);
    printf("atoi(\"123\") = %i\n", atoi("123"));
    printf("atol(\"123\") = %li\n\n", atol("123"));

    printf("strtod(\"123.456abc\", &endp) = (%f, %s)\n", x, p);
    printf("strtol(\"123abc\", &endp) = (%li, %s)\n", l, q);
    printf("strtoul(\"123abc\", &endp) = (%lu, %s)\n", ul, r);
  }

  printf("\ngetenv(\"path\") = %s\n", getenv("path"));
  printf("system(\"dir\")\n");
  system("dir");

  printf("abs(-3) = %i, abs(3) = %i, labs(-3l) = %li, labs(3l) = %li\n",
         abs(-3), abs(3), labs(-3l), labs(3l));

  { div_t i = div(10, 3);
    printf("div_t(10, 3) = (%i, %i),\n", i.quot, i.rem);
    print_div(i);
  }

  { ldiv_t li = ldiv(10, 3);
    printf("ldiv_t(10, 3) = (%li, %li)\n", li.quot, li.rem);
    print_ldiv(li);
  }

  { int list[] = {3, 4, 2, 1,};
    int size = sizeof list / sizeof list[0];

    { int index;
      printf("\nA List 1: ");
      for (index = 0; index < size; ++index) {
        //printf("%i ", *(list + index));
        printf("%i ", *(index + list));
      }
    }

    { int index;
      printf("\nB List 2: ");
      qsort(list, size, sizeof list[0], reverse_compare);
      for (index = 0; index < size; ++index) {
        printf("%i ", *(list + index));
      }
    }

    { int index;
      printf("\nC List 3: ");
      qsort(list, size, sizeof list[0], compare);
      for (index = 0; index < size; ++index) {
        printf("%i ", *(list + index));
      }
    }

    int key;
    printf("\n\nSearch:\n");
    for (key = 0; key < 6; ++key) {
      int* p = (int*) bsearch(&key, list, size, sizeof list[0], compare);
      int index = (p != NULL) ? (p - list) : -1;
      printf("  (%i, %i)\n", key, index);
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