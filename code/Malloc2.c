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
#define HEAP_HEADER_ADDRESS 65530u

struct block_header {
  UINT size;
  struct block_header *prev, *next;
};

struct heap_header {
  UINT lowHeap,               // HEAP_HEADER_ADDRESS
       highStack;             // HEAP_HEADER_ADDRESS + 2
  struct block_header *first; // HEAP_HEADER_ADDRESS + 4
};

#define BLOCK_HEADER_SIZE ((unsigned int) (sizeof (struct block_header)))

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

    if (firstPointer == NULL) {
      UINT newAddress = HEAP_HEADER_ADDRESS - blockSize;

      if (newAddress >= heapPointer->highStack) {
        struct block_header* newPointer = (struct block_header*) newAddress;

        newPointer->size = memorySize;
        newPointer->prev = NULL;
        newPointer->next = NULL;

        heapPointer->first = newPointer;
        heapPointer->lowHeap = newAddress;

        return (void*) (newAddress + BLOCK_HEADER_SIZE);
      }
    }
    else {
      UINT firstGapSize = HEAP_HEADER_ADDRESS - (((UINT)firstPointer) + BLOCK_HEADER_SIZE + firstPointer->size);

      if (firstGapSize < blockSize) {
        firstGapSize = 0u;
      }

      UINT bestGapSize = firstGapSize;
      struct block_header *bestPointer = NULL, *testPointer = firstPointer;

      while (testPointer->next != NULL) {
        UINT testGapSize = (((UINT) testPointer) - ((UINT)testPointer->next)) -
                           (BLOCK_HEADER_SIZE + testPointer->next->size);

        if ((testGapSize >= blockSize) && ((bestGapSize == 0u) || (testGapSize < bestGapSize))) {
          bestGapSize = testGapSize;
          bestPointer = testPointer;
        }

        testPointer = testPointer->next;
      }

      if (bestGapSize != 0u) {
        if (bestPointer == NULL) {
          UINT newAddress = HEAP_HEADER_ADDRESS - blockSize;
          struct block_header* newPointer = (struct block_header*)newAddress;

          newPointer->size = memorySize;
          newPointer->prev = bestPointer;
          newPointer->next = firstPointer;
          heapPointer->first = newPointer;
          firstPointer->prev = newPointer;

          return (void*)(newAddress + BLOCK_HEADER_SIZE);
        }
        else {
          UINT newAddress = ((UINT) bestPointer) - blockSize;
          struct block_header* newPointer = (struct block_header*)newAddress;
          struct block_header* nextPointer = bestPointer->next;

          newPointer->size = memorySize;
          newPointer->prev = bestPointer;
          newPointer->next = nextPointer;
          bestPointer->next = newPointer;
          nextPointer->prev = newPointer;

          return (void*)(newAddress + BLOCK_HEADER_SIZE);
        }
      }
      else {
        struct block_header* lastPointer = testPointer;
        UINT newAddress = ((UINT)lastPointer) - blockSize;
        struct block_header* newPointer = (struct block_header*) newAddress;

        if (newAddress >= heapPointer->highStack) {
          newPointer->size = memorySize;
          newPointer->prev = lastPointer;
          newPointer->next = NULL;

          lastPointer->next = newPointer;
          heapPointer->lowHeap = (UINT)newPointer;

          return (void*)(newAddress + BLOCK_HEADER_SIZE);
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
    printf("%i %i\n", ((UINT) currPointer) + BLOCK_HEADER_SIZE, currPointer->size);
    lastPointer = currPointer;
    currPointer = currPointer->next;
  }

  printf("\n");
  while (lastPointer != NULL) {
    printf("%i %i\n", ((UINT) lastPointer) + BLOCK_HEADER_SIZE, lastPointer->size);
    lastPointer = lastPointer->prev;
  }
}

void free(void* pointer) {
  if (pointer != NULL) {
    UINT blockAddress = ((UINT)pointer) - BLOCK_HEADER_SIZE;
    struct heap_header* heapPointer = (struct heap_header*) HEAP_HEADER_ADDRESS;
    struct block_header* testPointer = heapPointer->first;

    while (testPointer != NULL) {
      UINT testAddress = (UINT)testPointer;

      if (blockAddress == testAddress) {
        if ((testPointer->prev == NULL) && (testPointer->next == NULL)) {
          heapPointer->first = NULL;
          heapPointer->lowHeap = HEAP_HEADER_ADDRESS;
        }
        else if (testPointer->prev == NULL) {
          heapPointer->first = testPointer->next;
          testPointer->next->prev = heapPointer->first;
        }
        else if (testPointer->next == NULL) {
          testPointer->prev->next = NULL;
          heapPointer->lowHeap = (UINT)testPointer->prev;
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
    UINT newSize = (UINT) newSignedSize;
    UINT blockAddress = ((UINT)pointer) - BLOCK_HEADER_SIZE;
    struct heap_header* heapPointer = (struct heap_header*) HEAP_HEADER_ADDRESS;
    struct block_header* testPointer = heapPointer->first;

    while (testPointer != NULL) {
      UINT testAddress = (UINT)testPointer;

      if (blockAddress == testAddress) {
        if (newSize <= testPointer->size) {
          testPointer->size = newSize;
          return pointer;
        }
        else if (testPointer->prev == NULL) {
          if (((UINT)testPointer->prev) >= (UINT)(testAddress + BLOCK_HEADER_SIZE + newSize)) {
            testPointer->size = newSize;
            return pointer;
          }
        }
        else {
          if ((testAddress + BLOCK_HEADER_SIZE + newSize) <= HEAP_HEADER_ADDRESS) {
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