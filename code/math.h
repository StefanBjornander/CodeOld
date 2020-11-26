#ifndef __MATH_H__
#define __MATH_H__

#define PI 3.14
#define E  2.71

//#define PI 3.1415926535897932384626433
//#define E  2.7182818284590452353602874

extern double exp(double x);
extern double log(double x);
extern double log10(double x);

extern double pow(double x, double y);
extern double ldexp(double x, int exponent);
extern double frexp(double x, int* exponent);

extern double sqrt(double x);
extern double modf(double x, double* integral);
extern double fmod(double x, double y);

extern double sin(double x);
extern double cos(double x);
extern double tan(double x);

extern double sinh(double x);
extern double cosh(double x);
extern double tanh(double x);

extern double asin(double x);
extern double acos(double x);
extern double atan(double x);
extern double atan2(double x, double y);

extern double floor(double x);
extern double ceil(double x);
extern double round(double x);
extern double fabs(double x);

#endif
