#ifndef __ASSERT_H__
#define __ASSERT_H__

#ifndef NDEBUG
  #include <stdio.h>
  #include <stdlib.h>
  #define assert(expression) if (!(expression)) { \
    fprintf(stderr, "Assertion failed: \"%s\" in file %s at line %i\n", \
    #expression, __FILE__, __LINE__); abort(); }
#else
  #define assert(expression)
#endif

#endif
