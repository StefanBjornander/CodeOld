#ifndef __ASSERT_H__
#define __ASEERT_H__

#ifndef NDEBUG
  #include <StdIO.h>
  #include <StdLib.h>
  #define assert(expression) if (!(expression)) { \
    fprintf(stderr, "Assertion failed: \"%s\" in file %s at line %i\n", \
    #expression, __FILE__, __LINE__); abort(); }
#else
  #define assert(expression)
#endif

#endif
