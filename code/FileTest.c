#include <math.h>
#include <stdio.h>
#include <ctype.h>
#include <ErrNo.h>
#include <String.h>
#include <Assert.h>

extern int filecreate(const char* name);

void file_test() {
  { FILE* inFilePtr = fopen("in.txt", "r");
    FILE* outFilePtr = fopen("outX.txt", "w");

    assert(inFilePtr != NULL);
    assert(outFilePtr != NULL);

    //printf("in %lu, out %lu\n", inFilePtr, outFilePtr);

    while (!feof(inFilePtr)) {
      double value;
      fscanf(inFilePtr, "%lf", &value);
      printf("X1 %f\n", sqrt(value));
      fprintf(outFilePtr, "X2 %f\n", sqrt(value));
    }
    
    printf("\n");
    fclose(inFilePtr);
    fclose(outFilePtr);
  }

  { FILE* inFilePtr = fopen("in.txt", "r");
    FILE* outFilePtr = fopen("outY.txt", "w");

    assert(inFilePtr != NULL);
    assert(outFilePtr != NULL);

    //printf("in %lu, out %lu\n", inFilePtr, outFilePtr);

    { int size = 0, index;
      fscanf(inFilePtr, "%i", &size);
      printf("size %i\n", size);
      fprintf(outFilePtr, "Y size %i\n", size);

      for (index = 0; index < size; ++index) {
        double value;
        fscanf(inFilePtr, "%lf", &value);
        printf("Y1 %f\n", sqrt(value));
        fprintf(outFilePtr, "Y2 %f\n", sqrt(value));
      }

      printf("\n");
    }

    fclose(inFilePtr);
    fclose(outFilePtr);
  }

  { char* sourceFile = "Y";
    
    if (remove(sourceFile) == 0) {
      printf("\"%s\" has been removed\n", sourceFile);
    }
    else {
      printf("Error \"%s\" %i: %s.\n", sourceFile, errno, strerror(errno));
    }
  }

  { char* sourceFile = "X";
    char* targetFile = "Y";

    FILE* filePtr = fopen(sourceFile, "w");
    fprintf(filePtr, "Hello X");
    fclose(filePtr);

    if (rename(sourceFile, targetFile) == 0) {
      printf("\"%s\" has been renamed to \"%s\".\n", sourceFile, targetFile); // Rename FilePtr
    }
    else {
      printf("Error \"%s\" \"%s\" %i: %s.\n", sourceFile, targetFile, errno, strerror(errno));
    }
  }

  { char* sourceFile = "X2";
    char* targetFile = "Y2";

    if (rename(sourceFile, targetFile) == 0) {
      printf("\"%s\" has been renamed to \"%s\".\n", sourceFile, targetFile); // Rename FilePtr
    }
    else {
      printf("Error \"%s\" \"%s\" %i: %s.\n", sourceFile, targetFile, errno, strerror(errno));
    }
  }

  { char* targetFile = "Z";
  
    FILE* filePtr = fopen(targetFile, "w");
    fprintf(filePtr, "Hello Z");
    fclose(filePtr);

    if (remove(targetFile) == 0) {
      printf("\"%s\" has been removed.\n", targetFile); // Remove FilePtr
    }
    else {
      printf("Error \"%s\" %i: %s.\n", targetFile, errno, strerror(errno));
    }
  }
  
  { char* targetFile = "Z2";
  
    if (remove(targetFile) == 0) {
      printf("\"%s\" has been removed.\n", targetFile); // Remove FilePtr
    }
    else {
      printf("Error \"%s\" %i: %s.\n", targetFile, errno, strerror(errno));
    }
  }
  
  { FILE* inFilePtr = fopen("PBook.txt", "r"); // PhoneBook
    assert(inFilePtr != NULL);
    //printf("pbook handle %i\n", inFilePtr->handle);

    //printf("\n");
    printf("\n%-24s %-24s\n", "Name", "Phone");
    printf("%-24s %-24s\n","========================",
                           "========================");

    { int count, size;
      fscanf(inFilePtr, "%i", &size);
      printf("size %i\n", size);

      for (count = 0; count < size; ++count) {
        char name[20], phone[20];
        //printf("handle %i\n", inFilePtr->handle);
        fscanf(inFilePtr, "%s%s", name, phone);
        printf("%-24s %-24s\n", name, phone);
      }
    }

    printf("\n");
    fclose(inFilePtr);
  }

  /*{ char* sourceFilePtr = "Flow1.txt"; // Double Line
    char* targetFilePtr = "Flow2.txt";

    FILE* inFilePtr = fopen(sourceFilePtr, "r");
    FILE* outFilePtr = fopen(targetFilePtr, "w");

    assert(inFilePtr != NULL);
    assert(outFilePtr != NULL);

    while (TRUE) {
      char c = (char) getc(inFilePtr);

      if (c == EOF) {
          break;
      }

      putc(c, outFilePtr);

      if (c == '\n') {
          putc('\n', outFilePtr);
      }
    }

    fclose(inFilePtr);
    fclose(outFilePtr);
  }*/

  { FILE* outFilePtr = fopen("TestX.bin", "w");
    assert(outFilePtr != NULL);

    { int size = 10, index;
      fwrite(&size, sizeof size, 1, outFilePtr); 
   
      for (index = 0; index < size; ++index) {
        double value = (double) (index * index);
        fwrite(&value, sizeof value, 1, outFilePtr);
      }

      fclose(outFilePtr);
    }
  }

  { FILE* inFilePtr = fopen("TestX.bin", "r");
    int size, index;

    assert(inFilePtr != NULL);
    fread(&size, sizeof size, 1, inFilePtr);
    printf("size1: %i\n", size);
   
    for (index = 0; index < size; ++index) {
      double value;
      fread(&value, sizeof value, 1, inFilePtr);
      printf("index1: %i: value %f\n", index, value);
    }

    printf("\n");
    fclose(inFilePtr);
  }

  { FILE* outFilePtr = fopen("TestY.bin", "w");
    assert(outFilePtr != NULL);

    { int size = 10, index;

      for (index = 0; index < size; ++index) {
        double value = (double) (index * index);
        fwrite(&value, sizeof value, 1, outFilePtr);
      }

      fclose(outFilePtr);
    }
  }

  { FILE* inFilePtr = fopen("TestY.bin", "r");
    assert(inFilePtr != NULL);
   
    { int index = 0;
      double value;

      while (fread(&value, sizeof value, 1, inFilePtr) > 0) {
        printf("index2: %i: value %f\n", index++, value);
      }
    }
   
    printf("\n");
    fclose(inFilePtr);
  }

  { FILE* inFilePtr = fopen("TestY.bin", "r");
    assert(inFilePtr != NULL);
   
    { int index = 0;

      while (!feof(inFilePtr)) {
        double value;
        fread(&value, sizeof value, 1, inFilePtr);
        printf("index3: %i: value %f\n", index++, value);
      }
    }
   
    printf("\n");
    fclose(inFilePtr);
  }

  { FILE* inFilePtr = fopen("TestX.bin", "r");
    int size;

    assert(inFilePtr != NULL);    
    fread(&size, sizeof size, 1, inFilePtr);
    printf("size4: %i total %i\n", size, size * sizeof(double));

    { int total = size * sizeof(double), index;
      double *p = malloc(total);
      double* endPtr = p + size;
      assert(p != NULL);
      printf("malloc4: %u %u %u\n", p, total, endPtr);
      fread(p, total, 1, inFilePtr);

      for (index = 0; index < size; ++index) {
        printf("index4: %i: value %f\n", index, p[index]);
      }

      printf("\n");
      free(p);
    }
    fclose(inFilePtr);
  }

  { struct _Person {
      char name[48];
      int phone;
    };

    struct _Person personVector[]={{"Adam Bertilsson", 12345},   // Binary
                                   {"Bertil Ceasarsson", 23456},
                                   {"Ceasar Davidsson", 24567}};
    struct _Person person;

    FILE* outFilePtr = fopen("Block.bin", "w");
    FILE* inFilePtr = fopen("Block.bin", "r");

    assert(outFilePtr != NULL);
    assert(inFilePtr != NULL);

    fwrite(personVector, sizeof personVector, 1, outFilePtr);
    fclose(outFilePtr);

    while (!feof(inFilePtr)) {
      fread(&person, sizeof(struct _Person), 1, inFilePtr);

      printf("Name  : %s\n", person.name);
      printf("Phone : %d\n", person.phone);
    }

    fclose(inFilePtr);
  }
 
  { FILE* inFilePtr = fopen("outx.txt", "r");
    assert(inFilePtr != NULL);

    { int size = fseek(inFilePtr, 0, SEEK_END);
      while (ftell(inFilePtr) > 1) {
        fseek(inFilePtr, --size, SEEK_SET);
        putchar(fgetc(inFilePtr));
      }
    }

    fclose(inFilePtr);
  }

#define X(x) printf("fileexists \"" x "\": %s\n", fileexists(x) ? "Yes" : "No")
  X("X");
  X("Y");
  X("Main.asm");
  X("MainX.asm");
  X("Main.c");
  X("MainX.c");
  X("File.c");
  X("File.x");
  X("File.h");
  X("File.y");
  X("File.p");
  X("File.z");

/*  { FILE* tempFilePtr;
    FILE* inOutFilePtr = fopen("PBookX.txt", "r+"); // Temp FilePtr
    assert(inOutFilePtr != NULL);

    tempFilePtr = tmpfile();
    assert(tempFilePtr != NULL);

    while (TRUE) {
      char c = (char) getc(inOutFilePtr);
      printf("c1 <%c> %i\n", c, (int) c);

      if (c == EOF) {
          break;
      }

      putc(toupper(c), tempFilePtr);
    }

    rewind(tempFilePtr);
    fprintf(inOutFilePtr, "\n------------\n");

    while (TRUE) {
      char c = (char) getc(tempFilePtr);
      printf("c2 <%c> %i\n", c, (int)c);

      if (c == EOF) {
        break;
      }

      putc(c, inOutFilePtr);
    }

    fclose(inOutFilePtr);
    fclose(tempFilePtr);
  }*/
}

void temp_file(void) {
  printf("Hello\n");

  { FILE* tempFilePtr;
    FILE* inOutFilePtr = fopen("PBookX.txt", "r+"); // Temp FilePtr
    assert(inOutFilePtr != NULL);
    printf("Temp\n");
    tempFilePtr = tmpfile();
    assert(tempFilePtr != NULL);

    while (TRUE) {
      char c = (char) getc(inOutFilePtr);

      if (c == EOF) {
        break;
      }

      putc(toupper(c), tempFilePtr);
    }

    rewind(tempFilePtr);
    fprintf(inOutFilePtr, "\n------------\n");

    while (TRUE) {
      char c = (char) getc(tempFilePtr);

      if (c == EOF) {
        break;
      }

      putc(c, inOutFilePtr);
    }

    fclose(inOutFilePtr);
    fclose(tempFilePtr);
  }
}