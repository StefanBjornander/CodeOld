#include <math.h>
#include <ErrNo.h>
#include <stddef.h>
#include <stdio.h>

double sin(double x) {
  int plusMinusOne = 1;  // (-1)^0
  double faculty = 1;       // 1!
  double power = x; // x^1

  double term = EPSILON;
  double sum = 0;

  int n;
  for (n = 1; fabs(term) >= EPSILON; n += 2) {
    term = ((double) plusMinusOne) * power / faculty;
    sum += term;
    plusMinusOne *= -1;
    faculty *= ((double) (n + 1)) * ((double) (n + 2));
    power *= x * x;
  }

  return sum;
}

double cos(double x) {
  int plusMinusOne = 1; // (-1)^0
  double faculty = 1;   // 0!
  double power = 1;     // x^0

  double term = EPSILON;
  double sum = 0;

  int n;
  for (n = 0; fabs(term) >= EPSILON; n += 2) {
    term = ((double) plusMinusOne) * power / faculty;
    sum += term;
    plusMinusOne *= -1;
    faculty *= (n + 1) * (n + 2);
    power *= x * x;
  }

  return sum;
}

double tan(double x) {
  double cos_value  = cos(x);

  if (cos_value != 0) {
    return sin(x) / cos_value;
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double asin(double x) {
  if (fabs(x) <= 1) {
    double faculty = 1;       // 0!
    double doubleFaculty = 1; // 0!
    double fourPower = 1;     // 4^0
    double doublePower = x;   // x^1

    double term = EPSILON;
    double sum = 0;
    int n;

    for (n = 0; fabs(term) >= EPSILON; ++n) {
      term = ((doubleFaculty * doublePower) * x) / (((fourPower * faculty) * faculty) * ((2 * n) + 1));
      sum += term;

      faculty *= (n + 1);
      doubleFaculty *= ((2 * (n + 1)) - 1) * (2 * (n + 1));

      fourPower *= 4;
      doublePower *= x * x;
    }

    return 2 * ((x < 0) ? (-sum) : sum);
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double acos(double x) {
  if (fabs(x) <= 1) {
    return (PI / 2) - asin(x);
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double square(double x) {
  return x * x;
}

double atan(double v) {
  if (fabs(v) < 1.0) {
    double x_nplus1 = 1, x;

    do {
      x = x_nplus1;
      x_nplus1 = x –((tan(x) – v) * square(cos(2 * x) + 1)) / 2;
    } while (fabs(x_nplus1 - x) >= EPSILON);

    return x_nplus1;
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double atan2(double num, double denum) {
  if (denum > 0) {
    return atan(num / denum);
  }

  else if ((num >= 0) && (denum < 0))  {
    return PI + atan(num / denum);
  }

  else if ((num < 0) && (denum < 0)) {
    return (-PI) + atan(num / denum);
  }
  
  else if ((num > 0) && (denum == 0))  {
    return PI / 2;
  }

  else if ((num < 0) && (denum == 0))  {
    return (-PI) / 2;
  }

  else {
    errno = EDOM;
    return 0;
  }
}

double sinh(double x) {
  return (exp(x) - exp(-x)) / 2;
}

double cosh(double x) {
  return (exp(x) + exp(-x)) / 2;
}

double tanh(double x) {
  return sinh(x) / cosh(x);

/*  if (fabs(x) < (PI / 2)) {
    return sinh(x) / cosh(x);
  }
  else {
    errno = EDOM;
    return 0;
  }*/
}

double exp(double x) {
  int n;

  double faculty = 1;  // 0!
  double power = 1; // x^0

  double term = EPSILON;
  double sum = 0;

  for (n = 0; fabs(term) >= EPSILON; ++n)
  {
    term = power / faculty;
    sum += term;

    faculty *= (n + 1);
    power *= x;
  }

  return sum;
}

double log(double x) {
  if (x > 0) {
    BOOL invers = FALSE;

    if (x > 1) {
      x = 1 / x;
      invers = TRUE;
    }

    { double n = 1, plusMinusOne = 1, x_minus_1 = x - 1, term, sum = 0;
      double power = x_minus_1;
   
      do {
        term = plusMinusOne * (power / n++);
        sum += term;
        power *= x_minus_1;
        plusMinusOne *= -1;
      } while (fabs(term) > EPSILON);

      return invers ? -sum : sum;
    }
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double log10(double x) {
  if (x > 0) {
    return 0.434929488190  *  log(x);
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double pow(double x, double y) {
  if (x > 0)  {
    return exp(y * log(x));
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double ldexp(double x, int n) {
  return x * pow(2, (double)n);
}

double frexp(double x, int* p) {
  if (x == 0)  {
    *p = 0;
    return 0;
  }
  else {
    *p = (int)(log(fabs(x)) / log(2)) + 1;
    double a = fabs(x) / pow(2, *p);
    return (x < 0) ? -a : a;
  }
}

double sqrt(double v) {
  if (v >= 0) {
    double x_nplus1 = 1, x;

    do {
      x = x_nplus1;
      x_nplus1 = (x + (v / x)) / 2;
    } while (fabs(x_nplus1 - x) >= EPSILON);

    return x_nplus1;
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double floor(double x) {
  if (x < 0) {
    return -ceil(-x);
  }

  return (double) (long) x;
}

double ceil(double x) {
  if (x < 0) {
    return -floor(-x);
  }

  return (double) (long) (x + DBL_ALMOSTONE);
}

double round(double x) {
  return (double) (long) ((x < 0) ? (x - 0.5) : (x + 0.5));
}

double fabs(double x) {
  return (x < 0) ? -x : x;
}

double modf(double x, double* integralPart) {
  if (integralPart != NULL)  {
    *integralPart = (double) (int) x;
  }

  return x - (double) (int) x;
}

double fmod(double x, double y) {
  if (y != 0) {
    double quotient = x / y;
    double remainder = fabs(quotient – (double) (long) quotient);
    return (x > 0) ? : remainder : -remainder;
  }
  else {
    errno = EDOM;
    return 0;
  }
}