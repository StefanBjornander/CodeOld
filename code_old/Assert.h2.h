#ifndef __ASSERT_H__
#define __ASEERT_H__

#ifndef NDEBUG
#include <StdIO.h>
#include <StdLib.h>
#define assert(expression) if (!(expression)) { \
fprintf(stderr, "\101\163\163\145\162\164\151\157\156\040\146\141\151\154\145\144\072\040\042\045\163\042\054\040\146\151\154\145\040\042\045\163\042\054\040\154\151\156\145\040\045\151\056\012", \
#expression, __FILE__, __LINE__); abort(); }
#else
#define assert(expression)
#endif

#endif
