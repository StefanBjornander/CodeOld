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
  double c  = cos(x);
  if (x != 0) {
    return sin(x) / c;
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

double atan(double x) {
  if (fabs(x) < 1.0) {
    int n;
    BOOL minus = FALSE, invers = FALSE;

    int plusMinusOne = 1;  // (-1)^0
    double doublePower = 1; // ^x^0

    double term = EPSILON;
    double sum = 0;

    if (x < 0) {
      minus = TRUE;
      x = -x;
    }

    if (x > 1) {
      invers = TRUE;
      x = 1 / x;
    }

    for (n = 0; fabs(term) >= EPSILON; ++n) {
      term = (double)(((plusMinusOne * doublePower) * x) / ((2 * n) + 1));
      sum += term;
      plusMinusOne *= -1;
      doublePower *= x * x;
    }

    return (minus ? -1 : 1) * (invers ? ((PI / 2) - sum) : sum);
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
  if (x <= 0) {
    errno = EDOM;
    return 0;
  }

  if (fabs(x - 1) < EPSILON) {
    return 0;
  }

  { BOOL invers = FALSE;

    if (x > 1) {
      x = 1 / x;   // 0 < x < 1
      invers = TRUE; // ln (1/x) = -ln x
    }

    { double n = 1, plusMinusOne = 1, y = x - 1,
             sum = 0, term = 1;
      double power = y;
   
      while (fabs(term) > EPSILON) {
        term = (plusMinusOne / n) * power;
        sum += term;

        n += 1;
        power *= y;
        plusMinusOne *= -1;

      }

      return sum;
      return invers ? -sum : sum;
    }
  }
}

double log10(double x) {
  if (x > 0) {
    return log(x) / LOG_10;
  }
  else {
    return 0;
  }
}

double pow(double base, double exponent) {
  if (base > 0)  {
    return exp(exponent * log(base));
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double ldexp(double x, int n) {
  return x * pow(2, (double)n);
}

double frexp(double x, int* exponentPtr) {
  double result;

  if (x == 0)  {
    *exponentPtr = 0;
    return 0;
  }

  *exponentPtr = (int)(log(fabs(x)) / log(2));
  result = fabs(x) / pow(2, *exponentPtr);

  ++*exponentPtr;
  result /= 2;
  return (x < 0) ? -result : result;
}

double sqrt(double x) {
  double currRoot = 1, prevRoot = 0;

  if (x < 0) {
    errno = EDOM;
    return 0;
  }
  else if (fabs(x) <= EPSILON) {
    return 0;
  }
  else {
    while (fabs(currRoot - prevRoot) >= EPSILON) {

      prevRoot = currRoot;
      currRoot = (currRoot + (x / currRoot)) / 2;
    }

    return currRoot;
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

double fmod(double num, double denum) {
  if (denum != 0)  {
    int quotient = (int) fabs(num / denum);
    double remainder = fabs(num) - (quotient * fabs(denum));
    return (num < 0) ? -remainder : remainder;
  }
  else {
    errno = EDOM;
    return 0;
  }
}