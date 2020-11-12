#include <math.h>
#include <ctype.h>
#include <ErrNo.h>
#include <stdio.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdlib.h>
#include <String.h>
#include <Assert.h>

typedef struct block_header {
  UINT size;
  struct block_header* next;
} BLOCK_HEADER;

BLOCK_HEADER* g_firstBlockPtr = NULL;
#define BLOCK_HEADER_SIZE ((UINT) (sizeof (BLOCK_HEADER)))

// 1. The list is empty.
// 2. Before the list.
// 3. Inside the list.
// 4. After the list.

void* malloc(size_t memorySize) {
  UINT newBlockSize = BLOCK_HEADER_SIZE + ((UINT) memorySize),
       minGap = 0;

#ifdef __WINDOWS__
  UINT lastAddress = 65528u;
#endif

#ifdef __LINUX__
  //UINT lastAddress = (UINT)(stack_top + 65528u);
  UINT lastAddress = (UINT)(stack_top + 1048572u);
  //printf("lastAddress %u\n", lastAddress);
#endif

  BLOCK_HEADER *minBlockPtr = NULL, *minPrevBlockPtr = NULL, *prevBlockPtr = NULL,
               *currBlockPtr = g_firstBlockPtr;

  assert(memorySize >= 0);

  if (memorySize == 0) {
    return NULL;
  }

  while (currBlockPtr != NULL) {
    UINT currAddress = (UINT) currBlockPtr;
    UINT currGap = lastAddress - (currAddress + currBlockPtr->size + BLOCK_HEADER_SIZE);
    //printf("lastAddress %u, size %u, currAddress %u, currGap %u\n", lastAddress, currBlockPtr->size, currAddress, currGap);

    if ((newBlockSize <= currGap) && ((minGap == 0u) || (currGap < minGap))) {
      minGap = currGap;
      minBlockPtr = currBlockPtr;
      minPrevBlockPtr = prevBlockPtr;
    }

    lastAddress = currAddress;
    prevBlockPtr = currBlockPtr;
    currBlockPtr = currBlockPtr->next;
  }

  if (minBlockPtr != NULL) {
    UINT newAddress = ((UINT) minBlockPtr) + minBlockPtr->size + BLOCK_HEADER_SIZE;
    //printf("A newAddress: %u\n", newAddress);

    BLOCK_HEADER* newBlockPtr = (BLOCK_HEADER*) newAddress;
    newBlockPtr->size = memorySize;
    newBlockPtr->next = minBlockPtr;

    if (minPrevBlockPtr != NULL) {
      minPrevBlockPtr->next = newBlockPtr;
    }
    else {
      g_firstBlockPtr = newBlockPtr;
    }

    return (void*) (newAddress + BLOCK_HEADER_SIZE);
  }
  else {
    UINT newAddress = lastAddress - newBlockSize;

#ifdef __WINDOWS__
    UINT stackTop = register_bp;
#endif

#ifdef __LINUX__
    UINT stackTop = register_rbp;
#endif

    //printf("B newAddress: %u\n", newAddress);

    if (stackTop <= newAddress) {
      BLOCK_HEADER* newBlockPtr = (BLOCK_HEADER*) newAddress;
      newBlockPtr->size = memorySize;
      newBlockPtr->next = NULL;

      if (prevBlockPtr != NULL) {
        prevBlockPtr->next = newBlockPtr;
      }
      else {
        g_firstBlockPtr = newBlockPtr;
      }

//      UINT* lowHeapPtr = (UINT*) LOW_HEAP_ADDRESS;
//      *lowHeapPtr = newAddress;
      return (void*) (newAddress + BLOCK_HEADER_SIZE);
    }
  }

  return NULL;
}

/*
void* mallocX(size_t memorySize) {
  assert(memorySize >= 0);

  if (memorySize == 0) {
    return NULL;
  }

  UINT newBlockSize = BLOCK_HEADER_SIZE + ((UINT)memorySize),
    minGap = 0, lastAddress = LOW_HEAP_ADDRESS;
  BLOCK_HEADER *minBlockPtr = NULL, *minPrevBlockPtr, *prevBlockPtr = NULL,
    *currBlockPtr = g_firstBlockPtr;

  while (currBlockPtr != NULL) {
    UINT currGap = lastAddress - (((UINT)currBlockPtr) + currBlockPtr->size);

    if ((newBlockSize <= currGap) && ((minGap == 0u) || (currGap < minGap))) {
      minGap = currGap;
      minBlockPtr = currBlockPtr;
      minPrevBlockPtr = prevBlockPtr;
    }

    lastAddress = (UINT)currBlockPtr;
    prevBlockPtr = currBlockPtr;
    currBlockPtr = currBlockPtr->next;
  }

  UINT newAddress;

  if (minBlockPtr != NULL) {
    newAddress = ((UINT)minBlockPtr) - minBlockPtr->size;
  }
  else {
    newAddress = lastAddress - newBlockSize;
  }

  UINT stackTop;
  stackTop = register_bp;

  if (stackTop <= newAddress) {
    BLOCK_HEADER* newBlockPtr = (BLOCK_HEADER*)newAddress;
    newBlockPtr->size = newBlockSize;
    newBlockPtr->next = minBlockPtr;

    if (minPrevBlockPtr != NULL) {
      minPrevBlockPtr->next = newBlockPtr;
    }
    else {
      g_firstBlockPtr = newBlockPtr;
    }

    UINT* lowHeapPtr = (UINT*)LOW_HEAP_ADDRESS;
    *lowHeapPtr = newAddress;
    return (void*)(newAddress + BLOCK_HEADER_SIZE);
  }

  return NULL;
}
*/

void* calloc(size_t number, size_t size) {
  void* pointer = malloc(number * size);

  if (pointer != NULL) {
    memset(pointer, 0, size);
  }

  return pointer;
}

void free(void* freeMemoryPtr) {
  BLOCK_HEADER *freeBlockPtr = (BLOCK_HEADER*) (((UINT) freeMemoryPtr) - BLOCK_HEADER_SIZE),
               *prevBlockPtr = NULL, *currBlockPtr = g_firstBlockPtr;

  if (freeMemoryPtr == NULL) {
    return;
  }

  while (currBlockPtr != NULL) {
    if (currBlockPtr == freeBlockPtr) {
      if ((prevBlockPtr == NULL) && // Only.
          (currBlockPtr->next == NULL)) {
        g_firstBlockPtr = NULL;
        //UINT* lowHeapPtr = (UINT*) LOW_HEAP_ADDRESS;
        //*lowHeapPtr = (UINT*) LOW_HEAP_ADDRESS;
      }
      else if (prevBlockPtr == NULL) { // First.
        g_firstBlockPtr = currBlockPtr->next;
      }
      else if (currBlockPtr->next == NULL) { // Last.
        prevBlockPtr->next = NULL;
        //UINT* lowHeapPtr = (UINT*) LOW_HEAP_ADDRESS;
        //*lowHeapPtr = (UINT*) prevBlockPtr;
      }
      else { // Not first or last.
        prevBlockPtr->next = currBlockPtr->next;
      }

      return;
    }

    prevBlockPtr = currBlockPtr;
    currBlockPtr = currBlockPtr->next;
  }
}

/*
void freeX(void* freeMemoryPtr) {
  if (freeMemoryPtr == NULL) {
    return;
  }

  BLOCK_HEADER *freeBlockPtr = (BLOCK_HEADER*)(((UINT)freeMemoryPtr) - BLOCK_HEADER_SIZE),
    *prevBlockPtr = NULL, *currBlockPtr = g_firstBlockPtr;

  while (currBlockPtr != NULL) {
    if (currBlockPtr == freeBlockPtr) {
      if (prevBlockPtr != NULL) {
        prevBlockPtr->next = currBlockPtr->next; // Not first.
      }
      else {
        g_firstBlockPtr = currBlockPtr->next; // First.
      }

      if (currBlockPtr->next == NULL) { // Last.
        UINT* lowHeapPtr = (UINT*) LOW_HEAP_ADDRESS;

        if (prevBlockPtr != NULL) {
          *lowHeapPtr = (UINT*) prevBlockPtr; // Not the only.
        }
        else {
          *lowHeapPtr = (UINT*) LOW_HEAP_ADDRESS; // The only.
        }
      }

      return;
    }

    prevBlockPtr = currBlockPtr;
    currBlockPtr = currBlockPtr->next;
  }
}
*/

void* realloc(void* oldMemoryPtr, size_t newMemorySize) {
  assert(newMemorySize >= 0);
  assert((oldMemoryPtr != NULL) || (newMemorySize > 0));
  
  if (oldMemoryPtr == NULL) {
    return malloc(newMemorySize);
  }

  if (newMemorySize == 0) {
    free(oldMemoryPtr);
    return NULL;
  }

  { UINT newBlockSize = ((UINT) newMemorySize) + BLOCK_HEADER_SIZE;
    BLOCK_HEADER* oldBlockPtr = (BLOCK_HEADER*) (((UINT) oldMemoryPtr) - BLOCK_HEADER_SIZE);

    if (newBlockSize <= oldBlockPtr->size) {
      oldBlockPtr->size = newBlockSize;
      return oldMemoryPtr;
    }


#ifdef __WINDOWS__
    { UINT lastAddress = 65528u; // LOW_HEAP_ADDRESS;
#endif

#ifdef __LINUX__
    //UINT lastAddress = (UINT)(stack_top + 65528u);
    { UINT lastAddress = (UINT)(stack_top + 1048572u);
    //printf("lastAddress %u\n", lastAddress);
#endif

      BLOCK_HEADER* currBlockPtr = g_firstBlockPtr;

      while (currBlockPtr != NULL) {
        if (currBlockPtr == oldBlockPtr) {
          UINT availableSize = lastAddress - ((UINT) currBlockPtr);

          if (availableSize >= newBlockSize) {
            oldBlockPtr->size = newBlockSize;
            return oldMemoryPtr;
          }
          else {
            break;
          }
        }

        lastAddress = (UINT) currBlockPtr;
        currBlockPtr = currBlockPtr->next;
      }
    }

    { void* newMemoryPtr = malloc(newMemorySize);

      if (newMemoryPtr != NULL) {
        memcpy(newMemoryPtr, oldMemoryPtr, newMemorySize);
        free(oldMemoryPtr);
        return newMemoryPtr;
      }
    }
  }

  return NULL;
}

void print_heap() {
  BLOCK_HEADER *currBlockPtr = g_firstBlockPtr;
  printf("Heap:\n");

  while (currBlockPtr != NULL) {
    printf("  Address %u, Size %u\n", (UINT) currBlockPtr, currBlockPtr->size);
    currBlockPtr = currBlockPtr->next;
  }
  printf("\n");

  //UINT* lowHeapPtr = (UINT*) LOW_HEAP_ADDRESS;
  //printf("Low Heap: %u\n", *lowHeapPtr);
}