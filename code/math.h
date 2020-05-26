#ifndef __MATH_H__
#define __MATH_H__

#define   PI 3.1415926535897932384//626433
#define   E  2.7182818284590452353//602874
#define EPSILON 1e-9

extern double exp(double value);
extern double log(double value);
extern double log10(double value);
extern int log10_int(double value);
extern double pow(double base, double exponent);
extern double pow_int(double base, int exponent);

extern double ldexp(double value, int exponent);
extern double frexp(double value, int* exponent);

extern double sin(double value);
extern double cos(double value);
extern double tan(double value);

extern double sinh(double value);
extern double cosh(double value);
extern double tanh(double value);

extern double sqrt(double value);

extern double asin(double value);
extern double acos(double value);
extern double atan(double value);
extern double atan2(double num, double denum);

extern double floor(double value);
extern double ceil(double value);
extern double round(double value);
extern double fabs(double value);

extern double modf(double value, double* integralPart);
extern double fmod(double num, double denum);

#endif
