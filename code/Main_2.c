#include <stdio.h>
#include <stdlib.h>
#include <Assert.h>

void file_test(void);
//void time_test(void);
void stack_test(void);
void stdio_test(void);
void float_test(void);
void limits_test(void);
void locale_test(void); // perror, strerror, isupper, islower, toupper, tolower, strcmp, strncmp, asctime, ctime, strftime
void string_test(void);
//void stdlib_test(void);
void signal_test(void);
void setjmp_test(double x);
void character_test(char c);
void math_test(double x, double y, int i);

void main(int argc, char* argv[])
{
  int i;
  stdio_test();
  locale_test();

  { int *p, *q;
    p = &(*q);
  }

//  exit(0);
  file_test();

  for (i = 0; i < argc; ++i) {
    printf("%s ", argv[i]);
  }

  printf("\n");

  while(*argv != NULL) {
    printf("%s ", *(argv++));
  }
  printf("\n");

  i = printf("%i %f", 123, 123.456);
  printf("%i %i\n", i);

  assert(1 == 1);
//  assert(0 == 1);

  character_test('x');
  character_test('X');
  character_test('9');

  string_test();
//  stdlib_test();

  stack_test();
  signal_test();

  setjmp_test(1.0);
  setjmp_test(0.0);

  float_test();
  limits_test();
  math_test(1.0, 2.0, 3);
//  time_test();
}

/*
void main(void)
{
  { FILE* stream = fopen("Test.txt", "w");
    fprintf(stream, "Hello, World!");
    printf("Written\n");
    fclose(stream);
  }

  { char c, text[] = "\0\0\0\0\0\0\0\0\0\0";
    FILE* stream = fopen("Test.txt", "r");
    int handle = stream->handle;
    printf("Handle: <%i>\n", handle);
//    fread(text, 5, 1, stream);
//    fscanf(stream, "%s", text);
    g_inDevice = (void*) stream;
    c = scanChar();
    printf("Read: <%c>", c);
    fclose(stream);
  }

  { int handle;
    char c = '\0';

    load_register(register_ah, 0x3D); // fopen
    load_register(register_al, 0);
    load_register(register_dx, "Test.txt");
    interrupt(0x21s);
    store_register(handle, register_ax);
    printf("Read Handle: <%i>\n", handle);

    load_register(register_ah, 0x3F); // fread
    load_register(register_bx, handle);
    load_register(register_cx, 1);
    load_register(register_dx, &c);
    interrupt(0x21s);

    load_register(register_ah, 0x3E); // fclose
    load_register(register_bx, handle);
    interrupt(0x21s);

    printf("Read Char: <%c>", c);
  }
}

int comp1(const void* value1, const void* value2)
{
  int intValue1 = *((int*) value1), intValue2 = *((int*) value2);
  return (intValue1 < intValue2) ? -1 : ((intValue1 == intValue2) ? 0 : 1);
}

int comp2(const void* value1, const void* value2)
{
  int intValue1 = *((int*) value1), intValue2 = *((int*) value2);
  return (intValue1 < intValue2) ? 1 : ((intValue1 == intValue2) ? 0 : -1);
}

void sort_search_test(void)
{
  int index, key, list[] = {4,3,2,1}, size = sizeof list / sizeof list[0];

  qsort(list, size, sizeof list[0], comp2);
  for (index = 0; index < size; ++index) {
    printf("<%i> ", list[index]);
  }
  printf("\n");

  qsort(list, size, sizeof list[0], comp1);
  for (index = 0; index < size; ++index) {
    printf("<%i> ", list[index]);
  }
  printf("\n");

  for (key = 0; key < 6; ++key) {
    char* p = bsearch(&key, list, size, sizeof list[0], comp1);
    index = (p != NULL) ? ((int*) p - list) : -1;
    printf("<%i> <%i>\n", key, index);
  }
}
*/