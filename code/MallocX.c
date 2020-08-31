#include <math.h>
#include <ctype.h>
#include <ErrNo.h>
#include <stdarg.h>
#include <stddef.h>
#include <String.h>
#include <stdlib.h>
#include <stdio.h>

void* calloc(size_t number, size_t size) {
  void* pointer = malloc(number * size);

  if (pointer != NULL) {
    memset(pointer, 0, size);
  }

  return pointer;
}

#define UINT unsigned int

struct block_header {
  UINT size;
  struct block_header *prev, *next;
};

struct heap_header {
  struct block_header *first; // 65532
  UINT low_heap;              // 65534
};

#define BLOCK_HEADER_SIZE ((unsigned int) (sizeof (struct block_header)))
#define HEAP_HEADER_SIZE ((unsigned int) (sizeof (struct heap_header)))
#define HEAP_HEADER_ADDRESS 65532u
#define MALLOC_RECORD_SIZE 36u

void* init() {
  struct heap_header* heapPointer = (struct heap_header*) HEAP_HEADER_ADDRESS;
  heapPointer->first = NULL;
  heapPointer->low_heap = 0
}

// 1. The list is empty.
// 2. Before the list.
// 3. Inside the list.
// 4. After the list.

void* malloc(size_t signedMemorySize) {
  if (signedMemorySize > 0) {
    UINT memorySize = (UINT) signedMemorySize;
    UINT blockSize = BLOCK_HEADER_SIZE + memorySize;
    struct heap_header* heapPointer = (struct heap_header*) HEAP_HEADER_ADDRESS;
    struct block_header* firstPointer = heapPointer->first;

    if (firstPointer == NULL) { // 1. The list is empty.
      UINT newAddress = HEAP_HEADER_ADDRESS - blockSize;

      UINT stackPointer;
      store_register(register_bp, stackPointer);
      UINT stackTop = stackPointer + MALLOC_RECORD_SIZE;

      if (newAddress >= stackTop) {
        struct block_header* newPointer = (struct block_header*) newAddress;

        newPointer->size = memorySize;
        newPointer->prev = NULL;
        newPointer->next = NULL;

        heapPointer->first = newPointer;
        heapPointer->low_heap = newAddress;

        return (void*) (newAddress + BLOCK_HEADER_SIZE);
      }
    }
    else {
      UINT firstAddress = (UINT) firstPointer;
      UINT firstGapSize = HEAP_HEADER_ADDRESS -
                          (firstAddress + BLOCK_HEADER_SIZE + firstPointer->size);

      if (firstGapSize < blockSize) {
        firstGapSize = 0u;
      }

      UINT bestGapSize = firstGapSize;
      struct block_header *bestPointer = NULL, *testPointer = firstPointer;

      while (testPointer->next != NULL) {
        UINT testAddress = (UINT)testPointer;
        UINT testGapSize = (testAddress - ((UINT)testPointer->next)) -
          (BLOCK_HEADER_SIZE + testPointer->next->size);

        if ((testGapSize >= blockSize) &&
          ((bestGapSize == 0u) || (testGapSize < bestGapSize))) {
          bestGapSize = testGapSize;
          bestPointer = testPointer;
        }

        testPointer = testPointer->next;
      }

      if (bestGapSize != 0u) {
        if (bestPointer == NULL) { // 2. Before the list.
          UINT newAddress = HEAP_HEADER_ADDRESS - blockSize;
          struct block_header* newPointer = (struct block_header*) newAddress;

          newPointer->size = memorySize;
          newPointer->prev = bestPointer;
          newPointer->next = firstPointer;
          heapPointer->first = newPointer;
          firstPointer->prev = newPointer;

          return (void*)(newAddress + BLOCK_HEADER_SIZE);
        }
        else { // 3. Inside the list.
          UINT newAddress = ((UINT)bestPointer) - blockSize;
          struct block_header* newPointer = (struct block_header*) newAddress;
          struct block_header* nextPointer = bestPointer->next;

          newPointer->size = memorySize;
          newPointer->prev = bestPointer;
          newPointer->next = nextPointer;
          bestPointer->next = newPointer;
          nextPointer->prev = newPointer;

          return (void*)(newAddress + BLOCK_HEADER_SIZE);
        }
      }
      else { // 4. After the list.
        struct block_header* lastPointer = testPointer;
        UINT newAddress = ((UINT)lastPointer) - blockSize;
        struct block_header* newPointer = (struct block_header*) newAddress;

        UINT stackPointer;
        store_register(register_bp, stackPointer);
        UINT stackTop = stackPointer + MALLOC_RECORD_SIZE;

        if (newAddress >= stackTop) {
          newPointer->size = memorySize;
          newPointer->prev = lastPointer;
          newPointer->next = NULL;

          lastPointer->next = newPointer;
          heapPointer->low_heap = (UINT)newPointer;

          return (void*) (newAddress + BLOCK_HEADER_SIZE);
        }
      }
    }
  }

  return NULL;
}

void print_heap() {
  struct heap_header* heapPointer = (struct heap_header*) HEAP_HEADER_ADDRESS;
  struct block_header* currPointer = heapPointer->first, *lastPointer = NULL;

  while (currPointer != NULL) {
    printf("%p %i\n", ((UINT) currPointer) + BLOCK_HEADER_SIZE, currPointer->size);
    lastPointer = currPointer;
    currPointer = currPointer->next;
  }
 
  printf("\n");

/*
  printf("\n");
  while (lastPointer != NULL) {
    printf("%p %i\n", ((UINT) lastPointer) + BLOCK_HEADER_SIZE, lastPointer->size);
    lastPointer = lastPointer->prev;
  }*/
}

void free(void* pointer) {
  if (pointer != NULL) {
    UINT blockAddress = ((UINT)pointer) - BLOCK_HEADER_SIZE;
    struct heap_header* heapPointer =
      (struct heap_header*) HEAP_HEADER_ADDRESS;
    struct block_header* testPointer = heapPointer->first;

    while (testPointer != NULL) {
      UINT testAddress = (UINT)testPointer;

      if (blockAddress == testAddress) {
        if ((testPointer->prev == NULL) && (testPointer->next == NULL)) {
          heapPointer->first = NULL;
          heapPointer->low_heap = HEAP_HEADER_ADDRESS;
        }
        else if (testPointer->prev == NULL) {
          heapPointer->first = testPointer->next;
          testPointer->next->prev = heapPointer->first;
        }
        else if (testPointer->next == NULL) {
          testPointer->prev->next = NULL;
          heapPointer->low_heap = (UINT)testPointer->prev;
        }
        else {
          testPointer->prev->next = testPointer->next;
          testPointer->next->prev = testPointer->prev;
        }

        return;
      }

      testPointer = testPointer->next;
    }
  }
}

void* realloc(void* pointer, size_t newSignedSize) {
  if ((pointer != NULL) && (newSignedSize > 0)) {
    UINT newSize = (UINT)newSignedSize;
    UINT blockAddress = ((UINT)pointer) - BLOCK_HEADER_SIZE;
    struct heap_header* heapPointer =
      (struct heap_header*) HEAP_HEADER_ADDRESS;
    struct block_header* testPointer = heapPointer->first;

    while (testPointer != NULL) {
      UINT testAddress = (UINT)testPointer;

      if (blockAddress == testAddress) {
        if (newSize <= testPointer->size) {
          testPointer->size = newSize;
          return pointer;
        }
        else if (testPointer->prev == NULL) {
          if (((UINT)testPointer->prev) >=
            (UINT)(testAddress + BLOCK_HEADER_SIZE + newSize)) {
            testPointer->size = newSize;
            return pointer;
          }
        }
        else {
          if ((testAddress + BLOCK_HEADER_SIZE + newSize) <=
            HEAP_HEADER_ADDRESS) {
            testPointer->size = newSize;
            return pointer;
          }
        }

        break;
      }

      testPointer = testPointer->next;
    }

    if (testPointer != NULL) {
      void* newPointer = malloc(newSize);

      if (newPointer != NULL) {
        memcpy(newPointer, pointer, newSize);
        free(pointer);
        return newPointer;
      }
    }
  }

  return NULL;
}