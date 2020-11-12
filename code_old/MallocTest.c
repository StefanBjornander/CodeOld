#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>

void print_heap();

#define PRINT(x,y) { printf(#x " = <%" #y ">\n", (x)); }

void malloc_test2(void) {
  int index;
  void *p = NULL, *r = NULL, *q = malloc(96);

  for (index = 0; index < 10; ++index) {
    p = malloc(96);

    if (index == 5) {
      r = p;
    }
  }

  print_heap();
  realloc(q, 50);
  print_heap();
  realloc(r, 50);
  print_heap();
  realloc(p, 50);
  print_heap();
  realloc(q, 200);
  print_heap();
  realloc(r, 200);
  print_heap();
  realloc(p, 200);
  print_heap();
}

void malloc_test3(void) {
  void *a = calloc(96, 1),
    *b = calloc(96, 1),
    *c = calloc(96, 1),
    *d = calloc(96, 1),
    *e = calloc(96, 1);

  //  realloc(e, 20);
  //  malloc(50);
  print_heap();

  free(a);
  free(b);
  free(c);
  free(d);
  free(e);
  print_heap();
}

#define LOW_HEAP_ADDRESS 65534u

void rec() {
  unsigned int stackTop; //frameSize;
  unsigned int* lowHeapPtr = (unsigned int*) LOW_HEAP_ADDRESS;
  //stackTop = register_bp;
  stackTop = register_bp;
  printf("Stack Top: %u, Low Heap: %u\n", stackTop, *lowHeapPtr);
  rec();
}

void malloc_test4(void) {
//  malloc(1000);
  rec();
}

void malloc_test(void) {
  //void* a = malloc(96);
  void* b = malloc(96);
  void* c = malloc(96);
  void* d = malloc(96);
  //void* e = malloc(96);
  print_heap();

  realloc(c, 40);
  print_heap();

  malloc(40);
  print_heap();

  free(b);
  print_heap();

  free(d);
  print_heap();
}

void malloc_test6(void) {
  int i;
  unsigned int stackTop;
  unsigned int* lowHeapPtr = (unsigned int*)LOW_HEAP_ADDRESS;
  stackTop = register_bp;

  for (i = 0; i < 1000; ++i) {
    void* p = malloc(96);
    printf("Index: %i, Pointer: %u, Stack top: %u, Low Heap: %u\n", i, p, stackTop, *lowHeapPtr);
  }
}