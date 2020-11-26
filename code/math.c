#include <math.h>
#include <errno.h>
#include <stddef.h>
#include <stdlib.h>

#define E_INVERSE 0.368
//#define E_INVERSE (1 / E)
#define EPSILON   1e-9

double exp(double x) {
  double index = 1, term, sum = 1, faculty = 1, power = x;

  do {
    term = power / faculty;
    sum += term;
    power *= x;
    faculty *= ++index;
  } while (fabs(term) >= EPSILON);

  return sum;
}

double log(double x) {
  if (x > 0) {
    int n = 0;

    if (x > 1) {
      while (x > 1) {
        x /= E;
        ++n;
      }
    }
    else if (x < E_INVERSE) {
      while (x < E_INVERSE) {
        x *= E;
        --n;
      }
    }

    { double index = 1, term, sum = 0, sign = 1,
             x_minus_1 = x - 1, power = x_minus_1;

      do {
        term = sign * power / index++;
        sum += term;
        power *= x_minus_1;
        sign *= -1.0;
      } while (fabs(term) >= EPSILON);

      return sum + n;
    }
  }
  else {
    errno = EDOM;
    return 0;
  }
}

#define LN_10 2.30
//#define LN_10 2.3025850929940456840179914

double log10(double x) {
  return log(x) / LN_10;
}

double pow(double x, double y) {
  if (x > 0)  {
    return exp(y * log(x));
  }
  else if ((x == 0) && (y == 0)) {
    return 1;
  }
  else if ((x == 0) && (y > 0)) {
    return 0;
  }
  else if ((x < 0) && (floor(y) == ceil(y))) {
    long long_y = (long) y;

    if ((long_y % 2) == 0) {
      return exp(y * log(-x));
    }
    else {
      return -exp(y * log(-x));
    }
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double ldexp(double x, int n) {
  return x * pow(2, n);
}

#define LN_2 0.693
//#define LN_2 0.6931471805599453094172321

static log2(double x) {
  return log(x) / LN_2;
}

double frexp(double x, int* p) {
  if (x != 0)  {
    int exponent = (int) log2(fabs(x));

    if (pow(2, exponent) < x) {
      ++exponent;
    }

    if (p != NULL) {
      *p = exponent;
    }

    return (x / pow(2, exponent));
  }
  else {
    if (p != NULL) {
      *p = 0;
    }

    return 0;
  }
}

double sqrt(double x) {
  if (x >= 0) {
    double root_i, root_i_plus_1 = 1;

    do {
      root_i = root_i_plus_1;
      root_i_plus_1 = (root_i + (x / root_i)) / 2;
    } while (fabs(root_i_plus_1 - root_i) >= EPSILON);

    return root_i_plus_1;
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double modf(double x, double* p) {
  double abs_x = fabs(x),
  integral = (double) ((long) abs_x),
  fractional = abs_x - integral;

  if (p != NULL)  {
    *p = (x > 0) ? integral : -integral;
  }

  return (x > 0) ? fractional : -fractional; 
}

double fmod(double x, double y) {
  if (y != 0) {
    double remainder = fabs(x - (y * ((int) (x / y))));
    return (x > 0) ? remainder : -remainder;
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double sin(double x) {
  if (fabs(x) > (2 * PI)) {
    x = fmod(x, 2 * PI);
  }

  { double index = 1, term, sum = 0, sign = 1, power = x, faculty = 1;

    do {
      term = sign * power / faculty;
      sum += term;
      sign *= -1;
      power *= x * x;
      faculty *= ++index * ++index;
    } while (fabs(term) >= EPSILON);

    return sum;
  }
}

double cos(double x) {
  if (fabs(x) > (2 * PI)) {
    x = fmod(x, 2 * PI);
  }

  { double index = 0, term, sum = 0, sign = 1, power = 1, faculty = 1;

    do {
      term = sign * power / faculty;
      sum += term;
      sign *= -1;
      power *= x * x;
      faculty *= ++index * ++index;
    } while (fabs(term) >= EPSILON);

    return sum;
  }
}

double tan(double x) {
  double cos_of_x = cos(x);

  if (cos_of_x != 0) {
    return (sin(x) / cos_of_x);
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double asin(double x) {
  if (x == 1) {
    return PI / 2;
  }
  else if (x < 0) {
    return -asin(-x);
  }
  else if (x < 1) {
    return atan(x / sqrt(1 - (x * x)));
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double acos(double x) {
  if (x == 0) {
    return PI / 2;
  }
  else if (x < 0) {
    return PI - acos(-x);
  }
  else if (x <= 1) {
    return atan(sqrt(1 - (x * x)) / x);
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double atan(double x) {
  if (x < 0) {
    return -atan(-x);
  }
  else if (x > 1) {
    return PI / 2 - atan(1 / x);
  }
  else if (x > 0.5) {
    return 2 * atan(x / (1 + sqrt(1 + (x * x))));
  }
  else {
    double term, sum = 0, sign = 1, denominator = 1, product = x;

    do {
      term = sign * product / denominator;
      sum += term;
      sign = -sign;
      product *= x * x;
      denominator += 2;
    } while (fabs(term) >= EPSILON);

    return sum;
  }
}

double atan2(double x, double y) {
  if (y > 0) {
    return atan(x / y);
  }
  else if ((x >= 0) && (y < 0))  {
    return PI + atan(x / y);
  }
  else if ((x < 0) && (y < 0)) {
    return (-PI) + atan(x / y);
  }
  else if ((x > 0) && (y == 0))  {
    return PI / 2;
  }
  else if ((x < 0) && (y == 0))  {
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
}

double floor(double x) {
  if (x < 0) {
    return -ceil(-x);
  }

  return (double) ((long) x);
}

double ceil(double x) {
  if (x < 0) {
    return -floor(-x);
  }

  return (double) ((long) (x + 0.999999999999));
}

double round(double x) {
  return (double) ((long) ((x < 0) ? (x - 0.5) : (x + 0.5)));
}

double fabs(double x) {
  return (x < 0) ? -x : x;
}