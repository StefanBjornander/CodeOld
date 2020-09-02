#include <Time.h>
#include <stdio.h>
#include <String.h>
#include <stdlib.h>
#include <SetJmp.h>
/*
void print(int year, int mon, int day, int hour, int min, int sec, int summer)
{
  struct tm s;

  memset(&s, 0, sizeof s);
  s.tm_year = year - 1900;
  s.tm_mon = mon;
  s.tm_mday = day;
  s.tm_hour = hour;
  s.tm_min = min;
  s.tm_sec = sec;
  s.tm_isdst = summer;

  { time_t time = mktime(&s);
    struct tm *tp = localtime(&time);
    char* weekdays[] = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"}; 

    printf("%li, %s, %i-%02i-%02i, %02i:%02i:%02i, Week Day: %i, Year Day: %i, Summer Time: %s\n",
           time, weekdays[tp->tm_wday], 1900 + tp->tm_year, tp->tm_mon + 1, tp->tm_mday,
           tp->tm_hour, tp->tm_min, tp->tm_sec, tp->tm_wday, tp->tm_yday, tp->tm_isdst ? "Yes" : "No");
  }
}

struct tm s;
*/


static long filesize(const char* name)
{
  long size;
  unsigned short flagbyte();
  char DTA[128];

  load_register(register_ah, 0x1A);
  load_register(register_dx, DTA);
  interrupt(0x21s);

  load_register(register_ah, 0x4E);
  load_register(register_cx, 0x3F);
  load_register(register_dx, name);
  interrupt(0x21s);

  load_flagbyte(flagbyte());
  memcpy(&size, &DTA[26], sizeof size);
  return (carry_flag) ? -1L : size;
}

void main(int argc, char* argv[])
{
  int index, size;
  long lindex;
  for (index = 1; index < argc; ++index) {
    char* name = argv[index];
    printf("<%s> <%li>\n", name, filesize(name));
  }

/*
  { char* p = (char*) 0x2C;
    char* q = *p;
    printf("<%i>\n", (int) q);

    for (index = 0; index < 200; ++index) {
      printf("<%c>\n", q[index]);
    }
  }
  
  for (index = 0; index < 256; ++index) {
    char* p = (char*) index;
    printf("<%i> <%c>\n", index, *p);
  }

  store_register(size, register_bp);

  for (lindex = 65535; lindex >= 65400; --lindex) {
    char* p = (char*) lindex;
    printf("<%li> <%c>\n", lindex, *p);
  }

  load_register(register_ah, 0x4B); // exec
  load_register(register_al, 0x00);
  load_register(register_dx, "c.bat");
  interrupt(0x21s);
*/
  // MOV AH,4BH
  // MOV AL,00
  // MOV DX, OFFSET Path
  // INT 21H

/*
  { int handle;
    char c = 'X';

    load_register(register_ah, 0x3C); // fcreate
    load_register(register_cx, 0x00);
    load_register(register_dx, "Test.txt");
    interrupt(0x21s);
    store_register(handle, register_ax);
    printf("Write Handle: <%i>\n", handle);

    load_register(register_ah, 0x40); // fwrite
    load_register(register_bx, handle);
    load_register(register_cx, 1);
    load_register(register_dx, &c);
    interrupt(0x21s);

    load_register(register_ah, 0x3E); // fclose
    load_register(register_bx, handle);
    interrupt(0x21s);
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
  }*/
}

/*
void main(int argc, char** argv)
{
  int index;
  printf("argc: <%i>\n\n", argc);

  for (index = 0; index < argc; ++index) {
    char* p = argv[index];
    printf("<%i> <%i> <%s>\n", index, (int) p, (p != NULL) ? p : "null");
  }

  printf("\n");
  for (index = 1; argv[index] != NULL; ++index) {
    char* p = argv[index];
    printf("<%i> <%i> <%s>\n", index, (int) p, (p != NULL) ? p : "null");
  }
}

void main(int argc, char** argv)
{
  int a, i, size = (int) *((char*) 128),
      end = 129 + size;
  printf("<%i>\n", size);

  for (i = 129; i < end; ++i) {
    char c = *((char*) i);
    printf("<%i> <%c> <%i>\n", i, c, (int) c);
  }
}

/*
void main(int argc, char** argv)
{
  int a, i, size = (int) *((char*) 128),
      end = 129 + size;
  printLongInt(size, FALSE, FALSE);
  printChar('\n');

  for (i = 129; i < end; ++i) {
    char c = *((char*) i);
    printChar('<');
    printLongInt(i, FALSE, FALSE);
    printChar('>');
    printChar(' ');
    printChar('<');
    printChar(c);
    printChar('>');
    printChar(' ');
    printChar('<');
    printLongInt((int) c, FALSE, FALSE);
    printChar('>');
    printChar('\n');
  }
}
*/

/*
void main(void)
{
/*  print(1972, 1, 28, 1, 2, 3, 1);
  print(1972, 1, 29, 1, 2, 3, 1);

  print(1972, 2, 1, 1, 2, 39, 1);
  print(1972, 2, 1, 1, 2, 40, 1);

  print(2011, 1, 28, 3, 32, 33, 1);
  print(2011, 2, 1, 4, 42, 43, 1);

  print(2012, 1, 28, 5, 52, 53, 1);
  print(2012, 1, 29, 0, 0, 0, 1);
*/
  /*
  int i;
  char* weekdays[] = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"}; 

  for (i = 0; i < 7; ++i) {
    printf("<%s> ", weekdays[i]);
  }

  printf("\n");
*/
/*
  short drive;
  char driveChar, buffer[64];

  load_register(register_ah, 27);
  interrupt(0x21s);
  store_register(drive, register_al);
  driveChar = 'A' + drive;

  load_register(register_ah, 71);
  load_register(register_al, drive);
  load_register(si, buffer);
  interrupt(0x21s);

  printf("<%c> <%s>\n", driveChar, buffer);
  */
/*  { int a, i, size = (int) *((char*) 128) - 1,
        end = 130 + size;
    printLongInt(size, FALSE, FALSE);
    printChar(' ');

    for (i = 130; i < end; ++i) {
      char c = *((char*) i);
      printChar(c);
    }
  }
  { int a, i, size = (int) *((char*) 128) - 1,
        end = 130 + size;
    printf("<%i> <", size);

    for (i = 130; i < end; ++i) {
      char c = *((char*) i);
      printf("%c", c);
    }

    printf(">");
  }
  
    for (i = 0; i < 256; ++i) {
      char c = *((char*) i);
      printf("<%i,%i,%c>\n", i, (int) c, c);
    }

    store_register(a, register_bp);

    for (i = 0; i < 256; ++i) {
      char c = *((char*) (a + i));
      printf("<%i,%i,%c>\n", (a + i), (int) c, c);
    }

  }

/*
    store_register(a, register_bp);

    for (i = 0; i < 256; ++i) {
      char c = *((char*) (a + i));
      printf("<%i,%i,%c> ", (a + i), (int) c, c);
    }

/*
  { time_t t = time(NULL);
    struct tm *pt = localtime(&t);
    char* weekdays[] = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"}; 
    printf("<%li> <%s> <%02i-%02i-%02i> <%02i:%02i:%02i>\n", t, weekdays[pt->tm_wday],
           pt->tm_year + 1900, pt->tm_mon + 1, pt->tm_mday, pt->tm_hour, pt->tm_min, pt->tm_sec);
  }

//  print(2012, 2, 1, 23, 59, 59, 1);
/*
  print(2012, 2, 1, 5, 1, 2, 1);
  print(2012, 2, 1, 6, 10, 20, 1);
  print(2012, 2, 1, 7, 11, 22, 1);
  print(2012, 2, 1, 8, 21, 32, 1);
  print(2012, 2, 1, 9, 31, 42, 1);
  print(2012, 2, 1, 10, 41, 52, 1);
  print(2012, 2, 1, 11, 51, 12, 1);
  print(2012, 2, 1, 23, 59, 59, 1);
  /*
  time_t t = time(NULL);
  struct tm *pt = localtime(&t);
  printf("<%li> <%02i-%02i-%02i> <%02i:%02i:%02i>\n", t, pt->tm_year + 1900, 
         pt->tm_mon, pt->tm_mday, pt->tm_hour, pt->tm_min, pt->tm_sec);

  s.tm_year = 1;
  s.tm_mon = 2;
  s.tm_mday = 3;

  s.tm_hour = 4;
  s.tm_min = 5;
  s.tm_sec = 6;

  s.tm_yday = 7;
  s.tm_wday = 8;
  s.tm_isdst = 9;

  printf("<%i> <%i> <%i> <%i> <%i> <%i> <%i> <%i> <%i>", s.tm_year, s.tm_mon, s.tm_mday,
         s.tm_hour, s.tm_min, s.tm_sec, s.tm_yday, s.tm_wday, s.tm_isdst);
}
*/

/*
jmp_buf buffer;

double divide(double x, double y)
{
  if (y != 0) {
    return x / y;
  }
  else {
    longjmp(buffer, "Division by Zero.");
    return 0;
  }
}

double invers(double x)
{
  return divide(1, x);
}

void main(void)
{
  double x, y = 123.456;
  printf(": ");
  scanLongDouble(&x);
  printf("<%f> <%f>\n", x, y);

  { int result = setjmp(buffer);

    if (result == 0) {
      printf("invers(%f) = %f", x, invers(x));
    }
    else {
      printf("%s", (char*) result);
    }
  }
}

/*
void main()
{
  double x = -123.456;
  int i = (int) x, j = 123;
  printf("%f %i %i", x, i, j);
//  printLongDoublePlain(x, FALSE, FALSE, FALSE, 6);
}

/*
  time_t t = time(NULL);
  struct tm *pt = localtime(&t);
  printf("<%li> <%li> <%02i-%02i-%02i> <%02i:%02i:%02i>\n", 1000000000L, t, pt->tm_year + 1900, 
         pt->tm_mon, pt->tm_mday, pt->tm_hour, pt->tm_min, pt->tm_sec);
/*
  print(1972, 1, 28, 15, 16, 17, 1);
  print(1972, 1, 29, 15, 16, 17, 1);
  print(1972, 2, 1, 15, 16, 17, 1);

  print(2011, 1, 28, 15, 16, 17, 1);
  print(2011, 2, 1, 15, 16, 17, 1);

  print(2012, 1, 28, 15, 16, 17, 1);
  print(2012, 1, 29, 15, 16, 17, 1);
  print(2012, 2, 1, 15, 16, 17, 1);

  { int i, a;

    long a = 1000000000;
    printf("%li", a);
  
    for (i = 0; i < 256; ++i) {
      char c = *((char*) i);
      printf("<%i,%i,%c>\n", i, (int) c, c);
    }

    store_register(a, register_bp);

    for (i = 0; i < 256; ++i) {
      char c = *((char*) (a + i));
      printf("<%i,%i,%c>\n", i, (int) c, c);
    }
  }
}

/*
void printX(void)
{
  printf("A");
}

void printY(void)
{
  printf("B");
}

void apply(void f(void))
{
  f();
}

void main(void)
{
  printf("A");
  printX();
  apply(printX);
  printf("B");
  printY();
  apply(printY);
}
*/
/*
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

void main(void)
{
  int key, list[] = {1,2,3,4,5}, size = sizeof list / sizeof list[0];

  for (key = 0; key <= 6; ++key) {
    void* p = bsearch(&key, list, size, sizeof(int), comp1);
    int index = (p != NULL) ? (((int*) p) - list) : -1;
    printf("<%i> <%i>\n", key, index);
  }

  { int index;
    qsort(list, size, sizeof(int), comp2);
    for (index = 0; index < size; ++index) {
      printf("<%i> ", list[index]);
    }
    printf("\n");

    qsort(list, size, sizeof(int), comp1);
    for (index = 0; index < size; ++index) {
      printf("<%i> ", list[index]);
    }
  }
}

  /*
  char s[100] = "Hello, World", t[100];
  printf("<%i> <%s> <%s>\n", memcmp(s, t, 100 * sizeof(char)), s, t);

  memcpy(t, s, 100 * sizeof(char));
  printf("<%i> <%s> <%s>\n", memcmp(s, t, 100 * sizeof(char)), s, t);

  memset(t, 'x', 50 * sizeof(char));
  printf("<%i> <%s> <%s>\n", memcmp(s, t, 100 * sizeof(char)), s, t);

/*
  { char* p1 = memchr(s, 'W', 50 * sizeof(char));
    int index1 = (p1 != NULL) ? (p1 - s) : -1;
    
    char* p2 = memchr(s, 'X', 50 * sizeof(char));
    int index2 = (p2 != NULL) ? (p2 - s) : -1;

    printf("<%s, %i> <%s, %i>", (p1 != NULL) ? "yes" : "no", index1, (p2 != NULL) ? "yes" : "no", index2);
  }
*/
/*
  char* p1 = strchr(s, 'o');
  int index1 = (p1 != NULL) ? (p1 - s) : -1;

  char* p2 = strchr(s, 'x');
  int index2 = (p2 != NULL) ? (p2 - s) : -1;

  char* rp1 = strrchr(s, 'o');
  int rindex1 = (rp1 != NULL) ? (rp1 - s) : -1;

  char* rp2 = strrchr(s, 'x');
  int rindex2 = (rp2 != NULL) ? (rp2 - s) : -1;

  printf("<%s, %i> <%s, %i> <%s, %i> <%s, %i>", (p1 != NULL) ? "yes" : "no", index1, (p2 != NULL) ? "yes" : "no", index2,
                                                (rp1 != NULL) ? "yes" : "no", rindex1, (rp2 != NULL) ? "yes" : "no", rindex2);

  printf("Minimum signed char:        %+11i\n", SCHAR_MIN);
  printf("Maximum signed char:        %+11i\n", SCHAR_MAX);
  printf("Minimum signed short int:   %+11i\n", SHRT_MIN);
  printf("Maximum signed short int:   %+11i\n", SHRT_MAX);
  printf("Minimum signed int:         %+11i\n", INT_MIN);
  printf("Maximum signed int:         %+11i\n", INT_MAX);
  printf("Minimum signed long int:    %+11li\n", LONG_MIN);
  printf("Maximum signed long int:    %+11li\n", LONG_MAX);

  printf("Maximum unsigned char:      %+11u\n", UCHAR_MAX);
  printf("Maximum unsigned short int: %+11u\n", USHRT_MAX);
  printf("Maximum unsigned int:       %+11u\n", UINT_MAX);
  printf("Maximum unsigned long int:  %+11lu", ULONG_MAX);

  printf("Maximum unsigned long int:  %10lu\n", 1);
  printf("Maximum unsigned long int:  %10lu\n", 10);
  printf("Maximum unsigned long int:  %10lu\n", 100);
  printf("Maximum unsigned long int:  %10lu\n", 1000);
  printf("Maximum unsigned long int:  %10lu\n", 10000);
  printf("Maximum unsigned long int:  %10lu\n", 100000);
  printf("Maximum unsigned long int:  %10lu\n", 1000000);
  printf("Maximum unsigned long int:  %10lu\n", 10000000);
  printf("Maximum unsigned long int:  %10lu\n", 100000000);
  printf("Maximum unsigned long int:  %10lu\n", 1000000000);

  printf("Minimum float: %e\n", FLT_MIN);
  printf("Maximum float: %e\n", FLT_MAX);
  printf("Minimum double: %e\n", DBL_MIN);
  printf("Maximum double: %e\n", DBL_MAX);*/

/*
  printf("<%d> <%d> <%d>\n", stdin->fileHandle, stdout->fileHandle, stderr->fileHandle);
  printf("<%d> <%d> <%d>\n", g_fileArray[0].fileHandle, g_fileArray[1].fileHandle, g_fileArray[2].fileHandle);

  stdin->fileHandle = 4;
  stdout->fileHandle = 5;
  stderr->fileHandle = 6;

  printf("<%d> <%d> <%d>\n", stdin->fileHandle, stdout->fileHandle, stderr->fileHandle);
  printf("<%d> <%d> <%d>\n", g_fileArray[0].fileHandle, g_fileArray[1].fileHandle, g_fileArray[2].fileHandle);

  g_fileArray[0].fileHandle = 7;
  g_fileArray[1].fileHandle = 8;
  g_fileArray[2].fileHandle = 9;

  printf("<%d> <%d> <%d>\n", stdin->fileHandle, stdout->fileHandle, stderr->fileHandle);
  printf("<%d> <%d> <%d>", g_fileArray[0].fileHandle, g_fileArray[1].fileHandle, g_fileArray[2].fileHandle);

//  double x = log(100.0);
//  int i = islower('a');
//  printf("<%i> <%i>", 1, i);

//  printf("%s", 1 ? "true" : "false");

/*
  printf("isupper(%c): %s\n", c, isupper(c) ? "true" : "false");

  printf("isalnum(%c): %s\n", c, isalnum(c) ? "true" : "false");
  printf("isdigit(%c): %s\n", c, isdigit(c) ? "true" : "false");
  printf("isxdigit(%c): %s\n", c, isxdigit(c) ? "true" : "false");

  printf("isgraph(%c): %s\n", c, isgraph(c) ? "true" : "false");
  printf("isprint(%c): %s\n", c, isprint(c) ? "true" : "false");
  printf("isspace(%c): %s\n", c, isspace(c) ? "true" : "false");
  printf("ispunct(%c): %s\n", c, ispunct(c) ? "true" : "false");
  printf("iscntrl(%c): %s\n", c, iscntrl(c) ? "true" : "false");

  printf("tolower(%c): %c\n", c, tolower(c));
  printf("toupper(%c): %c\n", c, toupper(c));

  printf("<%d> ", stdin->fileHandle);
  printf("<%d> ", stdout->fileHandle);
  printf("<%d>\n", stderr->fileHandle);

  printf("<%d> ", g_fileArray[0].fileHandle);
  printf("<%d> ", g_fileArray[1].fileHandle);
  printf("<%d>\n\n", g_fileArray[2].fileHandle);

  stdin->fileHandle = 4;
  stdout->fileHandle = 5;
  stderr->fileHandle = 6;

  printf("<%d> ", stdin->fileHandle);
  printf("<%d> ", stdout->fileHandle);
  printf("<%d>\n", stderr->fileHandle);

  printf("<%d> ", g_fileArray[0].fileHandle);
  printf("<%d> ", g_fileArray[1].fileHandle);
  printf("<%d>\n\n", g_fileArray[2].fileHandle);

  g_fileArray[0].fileHandle = 7;
  g_fileArray[1].fileHandle = 8;
  g_fileArray[2].fileHandle = 9;

  printf("<%d> ", stdin->fileHandle);
  printf("<%d> ", stdout->fileHandle);
  printf("<%d>\n", stderr->fileHandle);

  printf("<%d> ", g_fileArray[0].fileHandle);
  printf("<%d> ", g_fileArray[1].fileHandle);
  printf("<%d>\n", g_fileArray[2].fileHandle);

  printf("<%d> <%d> <%d>\n", stdin->fileHandle, stdout->fileHandle, stderr->fileHandle);
  printf("<%d> <%d> <%d>\n", g_fileArray[0].fileHandle, g_fileArray[1].fileHandle, g_fileArray[2].fileHandle);

  stdin->fileHandle = 4;
  stdout->fileHandle = 5;
  stderr->fileHandle = 6;

  printf("<%d> <%d> <%d>\n", stdin->fileHandle, stdout->fileHandle, stderr->fileHandle);
  printf("<%d> <%d> <%d>\n", g_fileArray[0].fileHandle, g_fileArray[1].fileHandle, g_fileArray[2].fileHandle);

  g_fileArray[0].fileHandle = 7;
  g_fileArray[1].fileHandle = 8;
  g_fileArray[2].fileHandle = 9;

  printf("<%d> <%d> <%d>\n", stdin->fileHandle, stdout->fileHandle, stderr->fileHandle);
  printf("<%d> <%d> <%d>", g_fileArray[0].fileHandle, g_fileArray[1].fileHandle, g_fileArray[2].fileHandle);

//  printf("<%d> <%d> <%d> <%d> <%d> <%d> <%d>\n", 1, stdin->fileHandle, 2, stdout->fileHandle, 3, stderr->fileHandle, test);
//  printf("<%c> <%s> <%i> <%*.*f>\n", 'x', "Hello, World!", -123, -45.67, 7, 3);

/*
  char t[] = "Hello, World! A";
  printf("<%s> <%s>", s, t);

  typedef const int CONST_INT;
  const CONST_INT i = -123;
  double x = -56.78;//, y = log10(10.0);
  char c = 'X', *s = "Hello, World!", t[20] = "Hello, World!";
  const int ONE = 1, TWO = 2, THREE = 3;
  printf("<%d> <%d> <%d>\n", ONE, TWO, THREE);

  printf("<%c> <%s> <%i> <%*.*f>\n", c, s, i, x, 7, 3);
//  printf("<%o> <%x> <%X> <%#o> <%#x> <%#X>\n", 64, 255, 255, 64, 255, 255);

/*
  enum Test {TWO = 12, ONE = 13, THREE = 8, A, B=2, C};
  printf("<%d> <%d> <%d> <%d> <%d> <%d>\n", ONE, TWO, THREE, A, B, C);

  printf("Character: ");
  scanf("%c", &c);

  printf("\nString: ");
  scanf("%s", t);

  printf("Integer: ");
  scanf("%i", &i);

  printf("Double: ");
  scanf("%lf", &x);

  printf("<%c> <%s> <%i> <%f>\n", c, t, i, x);

  scanf("%lf", &x);
  printf("%f", x);

  printf("<%10.3e>\n<%-10.3e>\n<%+10.3e>\n<%-+10.3e>\n<% 10.3e>\n<%- 10.3e>\n", 45.67, 45.67, 45.67, 45.67, 45.67, 45.67);
  printf("<%010.3e>\n<%-010.3e>\n<%+010.3e>\n<%-+010.3e>\n", 45.67, 45.67, 45.67, 45.67);
  printf("<%10.3E>\n<%-10.3E>\n<%+10.3E>\n<%-+10.3E>\n<% 10.3E>\n<%- 10.3E>\n", 45.67, 45.67, 45.67, 45.67, 45.67, 45.67);
  printf("<%010.3E>\n<%-010.3E>\n<%+010.3E>\n<%-+010.3E>\n", 45.67, 45.67, 45.67, 45.67);

  */
/*  printf("<%e>\n<%e>\n<%e>\n<%e>\n", 0.000123456, 0.123456, 123.456, 123456.0);

  printf("\n%f\n", pow(10.0, -6.0));
  printf("%f\n", pow(10.0, -5.0));
  printf("%f\n", pow(10.0, -4.0));
  printf("%f\n", pow(10.0, -3.0));
  printf("%f\n", pow(10.0, -2.0));
  printf("%f\n", pow(10.0, -1.0));
  printf("%f\n", pow(10.0, -0.0));
  printf("%f\n", pow(10.0, 1.0));
  printf("%f\n", pow(10.0, 2.0));
  printf("%f\n", pow(10.0, 3.0));
  printf("%f\n", pow(10.0, 4.0));
  printf("%f\n", pow(10.0, 5.0));
  printf("%f\n", pow(10.0, 6.0));

  printf("%f\n", log(0.001));
  printf("%f\n", log(0.01));
  printf("%f\n", log(0.1));
  printf("%f\n", log(0.5));
  printf("%f\n", log(1.0));
  printf("%f\n", log(2.0));
  printf("%f\n", log(10.0));
  printf("%f\n", log(100.0));
  printf("%f\n", log(1000.0));

  printf("\n%+-10f %+f\n", log(0.001),  log10(0.001));
  printf("%+-10f %+f\n", log(0.01),   log10(0.01));
  printf("%+-10f %+f\n", log(0.1),    log10(0.1));
  printf("%+-10f %+f\n", log(1.0),    log10(1.0));
  printf("%+-10f %+f\n", log(10.0),   log10(10.0));
  printf("%+-10f %+f\n", log(100.0),  log10(100.0));
  printf("%+-10f %+f\n", log(1000.0), log10(1000.0));*/