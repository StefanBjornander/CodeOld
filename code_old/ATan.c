#include <Math.h>
#include <ErrNo.h>
#include <StdIO.h>
#include <StdDef.h>
#include <StdlIB.h>

double square(double x) {
  return x * x;
}

double atan(double v) {
  int sign = 1, denominator = 1;
  double product = v, term, sum = 0;

  do {
    term = sign * product / denominator;
    sum += term;
    sign = -sign;
    product *= v * v;
    denominator += 2;
  } while (fabs(term) >= EPSILON);

  return sum;
}
