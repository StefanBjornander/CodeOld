#include <math.h>
#include <stdio.h>
#include <ctype.h>
#include <ErrNo.h>
#include <String.h>
#include <Assert.h>

void file_test() {
  { FILE* inFilePtr = fopen("in.txt", "r");
    FILE* outFilePtr = fopen("outX.txt", "w");

    assert(inFilePtr != NULL);
    assert(outFilePtr != NULL);

    while (!feof(inFilePtr)) {
      double value;
      fscanf(inFilePtr, "%lf", &value);
      printf("X %f\n", sqrt(value));
      fprintf(outFilePtr, "X %f\n", sqrt(value));
    }
    
    printf("\n");
    fclose(inFilePtr);
    fclose(outFilePtr);
  }

  { FILE* inFilePtr = fopen("in.txt", "r");
    FILE* outFilePtr = fopen("outY.txt", "w");

    assert(inFilePtr != NULL);
    assert(outFilePtr != NULL);

    { int size = 0, index;
      fscanf(inFilePtr, "%i", &size);
      printf("size %i\n", size);
      fprintf(outFilePtr, "Y size %i\n", size);

      for (index = 0; index < size; ++index) {
        double value;
        fscanf(inFilePtr, "%lf", &value);
        printf("Y %f\n", sqrt(value));
        fprintf(outFilePtr, "Y %f\n", sqrt(value));
      }

      printf("\n");
    }

    fclose(inFilePtr);
    fclose(outFilePtr);
  }

  { char* sourceFilePtr = "X";
    char* targetFilePtr = "Y";

    FILE* filePtr = fopen(sourceFilePtr, "w");
    fprintf(filePtr, "Hello X");
    fclose(filePtr);

    if (rename(sourceFilePtr, targetFilePtr) == 0) {
      printf("\"%s\" has been renamed to \"%s\".\n", sourceFilePtr, targetFilePtr); // Rename FilePtr
    }
    else {
      printf("Error %i: %s.\n", errno, strerror(errno));
    }
  }

  { char* targetFilePtr = "Z";
  
    FILE* filePtr = fopen("Z", "w");
    fprintf(filePtr, "Hello Z");
    fclose(filePtr);

    if (remove(targetFilePtr) == 0) {
      printf("\"%s\" has been removed.\n", targetFilePtr); // Remove FilePtr
    }
    else {
      printf("Error %i: %s.\n", errno, strerror(errno));
    }
  }
  
  { FILE* inFilePtr = fopen("PBook.txt", "r"); // PhoneBook
    assert(inFilePtr != NULL);

    //printf("\n");
    printf("\n%-24s %-24s\n", "Name", "Phone");
    printf("%-24s %-24s\n","========================",
                           "========================");

    { int count, size;
      fscanf(inFilePtr, "%i", &size);
      //printf("size %i\n", size);

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

  { char* sourceFilePtr = "Flow1.txt"; // Double Line
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
  }
  
  /*
  forhandling@sverigesinjenjorer.se

  1. Vad har du som röd tråd?
     Programmering!

  2. Formell kompoetens

  3. Social kompetens

  4. Varför jag för denna tjänst?
  
  Ytterligare: goda sidor. 

  Checklista
    * Kollektivavtal
  */

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

      while (TRUE) {
        double value;

        if (fread(&value, sizeof value, 1, inFilePtr) == 0) {
          break;
        }

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

/*  { FILE* inFilePtr = fopen("outx.txt", "r"); // Random Access
    unsigned int u;
    assert(inFilePtr != NULL);
    fseek(inFilePtr, -1, SEEK_END);
    printf("\n");

    printf("random1\n");
    while (ftell(inFilePtr) >= 0) {
      char c = (char) fgetc(inFilePtr);
      printf("<%c> %i\n", c, (int) c);
      //putchar(c);
      fseek(inFilePtr, -2, SEEK_CUR);
    }
    printf("random2\n");

    printf("\n\n");
    fclose(inFilePtr);
  }

  printf("fileexists X %s\n", fileexists("X") ? "Yes" : "No");
  printf("fileexists Y %s\n\n", fileexists("Y") ? "Yes" : "No");

  { FILE* tempFilePtr;
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