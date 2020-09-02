#include <math.h>
#include <ctype.h>
#include <ErrNo.h>
#include <stdio.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdlib.h>
#include <String.h>
#include <Assert.h>

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

struct block_header* firstBlockPtr = NULL;

#define BLOCK_HEADER_SIZE ((unsigned int) (sizeof (struct block_header)))
#define LOW_HEAP_ADDRESS 65534u

// 1. The list is empty.
// 2. Before the list.
// 3. Inside the list.
// 4. After the list.

void* malloc(size_t memorySize) {
  assert(memorySize >= 0);

  if (memorySize == 0) {
    return NULL;
  }

  UINT newBlockSize = BLOCK_HEADER_SIZE + ((UINT) memorySize),
       minGap = 0, lastAddress = LOW_HEAP_ADDRESS;
  struct block_header *minBlockPtr, *currBlockPtr = (struct block_header*) firstBlockPtr;

  while (currBlockPtr != NULL) {
    UINT currAddress = (UINT) currBlockPtr;
    UINT currGap = lastAddress - (currAddress + currBlockPtr->size);

    if ((newBlockSize <= currGap) && ((minGap == 0u) || (currGap < minGap))) {
      minGap = currGap;
      minBlockPtr = currBlockPtr;
    }

    lastAddress = currAddress;
    currBlockPtr = currBlockPtr->next;
  }

  if (minGap > 0u) {
    UINT newAddress = ((UINT) minBlockPtr) - minBlockPtr->size;
    struct block_header* newBlockPtr = (struct block_header*) newAddress;

    newBlockPtr->size = newBlockSize;
    newBlockPtr->prev = minBlockPtr->prev;
    newBlockPtr->next = minBlockPtr;

    if (minBlockPtr == firstBlockPtr) {
      firstBlockPtr = newBlockPtr;
    }

    minBlockPtr->prev = newBlockPtr;
    return (void*) (newAddress + BLOCK_HEADER_SIZE);
  }
  else {
    UINT newAddress = lastAddress - newBlockSize, stackTop;
    stackTop = register_bp;

    if (stackTop <= newAddress) {
      struct block_header* newBlockPtr = (struct block_header*) newAddress;
      newBlockPtr->size = newBlockSize;
      newBlockPtr->next = NULL;

      if (firstBlockPtr != NULL) {
        struct block_header* lastBlockPtr = (struct block_header*) lastAddress;
        lastBlockPtr->next = newBlockPtr;
        newBlockPtr->prev = lastBlockPtr;
      }
      else {
        firstBlockPtr = newBlockPtr;
        newBlockPtr->prev = NULL;
      }

      UINT* lowHeapPtr = (UINT*) LOW_HEAP_ADDRESS;
      *lowHeapPtr = newAddress;
      return (void*) (newAddress + BLOCK_HEADER_SIZE);
    }
  }

  return NULL;
}

void print_heap() {
  struct block_header *currBlockPtr = firstBlockPtr, *lastBlockPtr = NULL;

  while (currBlockPtr != NULL) {
    printf("%u\t%u\n", (UINT) currBlockPtr, currBlockPtr->size);
    lastBlockPtr = currBlockPtr;
    currBlockPtr = currBlockPtr->next;
  }

  printf("\n");
  while (lastBlockPtr != NULL) {
    printf("%u\t%u\n", (UINT) lastBlockPtr, lastBlockPtr->size);
    lastBlockPtr = lastBlockPtr->prev;
  }
}

void free(void* pointer) {
/*  if (pointer != NULL) {
    return;
  }
  
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
  }*/
}

void* realloc(void* pointer, size_t newSignedSize) {
/*  if ((pointer != NULL) && (newSignedSize > 0)) {
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
  }*/

  return NULL;
}