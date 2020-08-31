#include <math.h>
#include <stdio.h>

void main(void)
{
  printf("<%f> <%f>\n", sqrt(-1.0), sqrt(0.0));
  printf("<%f> <%f> <%f> <%f>\n", sqrt(1.0), sqrt(2.0), sqrt(4.0), sqrt(8.0), sqrt(16.0));
  printf("<%f> <%f> <%f> <%f>", sqrt(1.0), sqrt(0.5), sqrt(0.25), sqrt(0.125), sqrt(0.0625));

  /*
  int i = 1;
  unsigned u = 2, o = 3, x = 4;
  double d = 3.14;

  printf("i: ");
  scanf("%i", &i);
  printf("\n<%i>\n", i);

  printf("u: ");
  scanf("%u", &u);
  printf("\n<%u>\n", u);

  printf("o: ");
  scanf("%o", &o);
  printf("\n<%u> <%o> <%#o>\n", o, o, o);

  printf("x: ");
  scanf("%x", &x);
  printf("\n<%u> <%x> <%X> <%#x> <%#X>\n", x, x, x, x, x);

  printf("d: ");
  scanf("%lf", &d);
  printf("\n<%f>\n", d);

/*  int i = 1;
  unsigned u = 2, o = 3, x = 4;
  double d = 3.14;

  printf("d: ");
  scanf("%lf", &d);
  printf("\n<%f>", d);

  printf("i: ");
  scanf("%i", &i);
  printf("\n<%i>\n", i);

  printf("o: ");
  scanf("%o", &o);
  printf("\n<%u> <%#o>\n", o, o);

  printf("x: ");
  scanf("%x", &x);
  printf("\n<%u> <%#x> <%#X>\n", x, x, x);

/*  int i = 1;
  unsigned u = 2, o = 3, x = 4;

  printf("i: ");
  scanf("%i", &i);
  printf("\n<%i>\n", i);

  printf("u: ");
  scanf("%u", &u);
  printf("\n<%u>\n", u);

  printf("o: ");
  scanf("%o", &o);
  printf("\n<%u> <%#o>\n", o, o);

  printf("x: ");
  scanf("%x", &x);
  printf("\n<%u> <%#x> <%#X>\n", x, x, x);

  /*
  char s[10] = "abc", t[10] = "def";
 
  printf("s: ");
  scanString(s, 0);
  printf("\n<%s>\n", s);
  
  printf("t: ");
  scanString(t, 0);
  printf("\n<%s>", t);

/*  int n;
  int *p = &n;

  printf("<%i> <%i> <%li> <%li> <%u> <%lu>\n\n", 123, -123, 123L, -123L, 123, 123L);

  printf("<%6i> <%6i> <%6li> <%6li> <%6u> <%6lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%+6i> <%+6i> <%+6li> <%+6li> <%+6u> <%+6lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%-6i> <%-6i> <%-6li> <%-6li> <%-6u> <%-6lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%+-6i> <%+-6i> <%+-6li> <%+-6li> <%+-6u> <%+-6lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%-+6i> <%-+6i> <%-+6li> <%-+6li> <%-+6u> <%-+6lu>\n\n", 123, -123, 123L, -123L, 123, 123L);

  printf("<%06i> <%06i> <%06li> <%06li> <%06u> <%06lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%+06i> <%+06i> <%+06li> <%+06li> <%+06u> <%+06lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%-06i> <%-06i> <%-06li> <%-06li> <%-06u> <%-06lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%+-06i> <%+-06i> <%+-06li> <%+-06li> <%+-06u> <%+-06lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%-+06i> <%-+06i> <%-+06li> <%-+06li> <%-+06u> <%-+06lu>\n\n", 123, -123, 123L, -123L, 123, 123L);

  printf("<% 6i> <% 6i> <% 6li> <% 6li> <% 6u> <% 6lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%+ 6i> <%+ 6i> <%+ 6li> <%+ 6li> <%+ 6u> <%+ 6lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%- 6i> <%- 6i> <%- 6li> <%- 6li> <%- 6u> <%- 6lu>\n", 123, -123, 123L, -123L, 123, 123L);
  printf("<%+- 6i> <%+- 6i> <%+- 6li> <%+- 6li> <%+- 6u> <%+- 6lu>\n\n", 123, -123, 123L, -123L, 123, 123L);

  printf("<%x> <%X> <%o> <%lx> <%lX> <%lo>\n", 123, 123, 123, 123L, 123L, 123L);
  printf("<%#x> <%#X> <%#o> <%#lx> <%#lX> <%#lo>\n", 123, 123, 123, 123L, 123L, 123L);
  printf("<%%> <%s> <%c> <%p>\n", "Hello, World!", 'X', p);
  printf("<%12.3f> <%12.3f> <%12.3f> <%12.3f> <%12.3f>", 123.456, 0.789, -123.456, -0.789, 0.0);
*/

/*
  printf("<%f> <%e> <%E> <%g> <%G>\n", 123.456, 123.456, 123.456, 123.456, 123.456);
  printf("<%lf> <%le> <%lE> <%lg> <%lG>\n", 123.456L, 123.456L, 123.456L, 123.456L, 123.456L);

  printf("<%#f> <%#e> <%#E> <%#g> <%#G>\n", 123.456, 123.456, 123.456, 123.456, 123.456);
  printf("<%#lf> <%#le> <%#lE> <%#lg> <%#lG>\n", 123.456L, 123.456L, 123.456L, 123.456L, 123.456L);

  printf("<%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>\n", 123.456, 123.456, 123.456, 123.456, 123.456);
  printf("<%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>\n", 123.456L, 123.456L, 123.456L, 123.456L, 123.456L);
*/}
