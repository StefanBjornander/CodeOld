#include <StdIO.h>

void print_test(void) {
  /*printf("<%1i> <%1i> <%1i> <%1i> <%1i> <%1i>\n", 1, 2, 3, 4, 5, 6);
  printf("<%2i> <%2i> <%2i> <%2i> <%2i> <%2i>\n", 1, 2, 3, 4, 5, 6);
  printf("<%3i> <%3i> <%3i> <%3i> <%3i> <%3i>\n", 1, 2, 3, 4, 5, 6);
  printf("<%4i> <%4i> <%4i> <%4i> <%4i> <%4i>\n", 1, 2, 3, 4, 5, 6);
  printf("<%5i> <%5i> <%5i> <%5i> <%5i> <%5i>\n", 1, 2, 3, 4, 5, 6);
  printf("<%6i> <%6i> <%6i> <%6i> <%6i> <%6i>\n", 1, 2, 3, 4, 5, 6);
  printf("<%7i> <%7i> <%7i> <%7i> <%7i> <%7i>\n", 1, 2, 3, 4, 5, 6);
  printf("<%8i> <%8i> <%8i> <%8i> <%8i> <%8i>\n", 1, 2, 3, 4, 5, 6);*/

  printf("<%8i> <%+8i> <% 8i> <%-8i> <%+-8i> <%-+8i> <% -8i> <%- 8i>\n", 123, 123, 123, 123, 123, 123, 123, 123);
  printf("<%8i> <%+8i> <% 8i> <%-8i> <%+-8i> <%-+8i> <% -8i> <%- 8i>\n", -123, -123, -123, -123, -123, -123, -123, -123);
  printf("<%08i> <%+08i> <% 08i> <%0 8i>\n", 123, 123, 123, 123);
  printf("<%08i> <%+08i> <% 08i> <%0 8i>\n", -123, -123, -123, -123);

  printf("<%12.3f> <%+12.3f> <% 12.3f> <%-12.3f> <%+-12.3f> <%-+12.3f> <% -12.3f> <%- 12.3f>\n", 123.456, 123.456, 123.456, 123.456, 123.456, 123.456, 123.456, 123.456);
  printf("<%12.3f> <%+12.3f> <% 12.3f> <%-12.3f> <%+-12.3f> <%-+12.3f> <% -12.3f> <%- 12.3f>\n", -123.456, -123.456, -123.456, -123.456, -123.456, -123.456, -123.456, -123.456);
  printf("<%012.3f> <%+012.3f> <% 012.3f> <%0 12.3f>\n", 123.456, 123.456, 123.456, 123.456);
  printf("<%012.3f> <%+012.3f> <% 012.3f> <%0 12.3f>\n", -123.456, -123.456, -123.456, -123.456);


/*  printf("<%+-12.3f> <%-+12.3f> <%12.3f> <%+12.3f> <%-12.3f>\n", 123.456, 123.456, 123.456, 123.456, 123.456);
  printf("<%+-12.3f> <%-+12.3f> <%12.3f> <%+12.3f> <%-12.3f>\n", 123.456, 123.456, 123.456, 123.456, 123.456);
  printf("<%+-012.3f> <%-+012.3f> <%012.3f> <%+012.3f> <%-012.3f>\n", 123.456, 123.456, 123.456, 123.456, 123.456);
  printf("<%+-012.3f> <%-+012.3f> <%012.3f> <%+012.3f> <%-012.3f>", 123.456, 123.456, 123.456, 123.456, 123.456);*/
}