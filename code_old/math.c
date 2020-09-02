#include <math.h>
#include <ErrNo.h>
#include <stdio.h>
#include <stddef.h>
#include <StdlIB.h>

double exp(double x) {
  double n = 0, faculty = 1, power = 1, term, sum = 0;

  do {
    term = power / faculty;
    sum += term;
    power *= x;
    faculty *= ++n;
  } while (fabs(term) >= EPSILON);

  return sum;
}

/*double logX(double x_plus_1) { // [1/E,1]
  double n = 1, plusMinusOne = 1, x = x_plus_1 - 1,
         term, sum = 0, power = x, index = 0;
  printf("x_plus_1 %f, x %f\n", x_plus_1, x);

  do {
    term = plusMinusOne * (power / n++);
    sum += term;
    power *= x;
    plusMinusOne *= -1.0;
    printf("term %f, sum %f, power %f, plusMinusOne %f\n", term, sum, power, plusMinusOne);
  } while ((index++) < 1000); //while (fabs(term) > EPSILON);

  return sum;
}*/

double log(double x_plus_1) {
  if (x_plus_1 > 0) {
    int expo = 0;
    //printf("1: x_plus_1 %f, expo %i\n", x_plus_1, expo);

    while (x_plus_1 < (1 / E)) {
      x_plus_1 *= E;
      --expo;
    }
    //printf("2: x_plus_1 %f, expo %i\n", x_plus_1, expo);

    while (x_plus_1 > (2 / E)) {
      x_plus_1 /= E;
      ++expo;
    }
    //printf("3: x_plus_1 %f, expo %i\n", x_plus_1, expo);

    double n = 1, plusMinusOne = 1, x = x_plus_1 - 1,
           term, sum = 0, power = x;
    //printf("x_plus_1 %f, x %f, plusMinusOne %f, power %f, n %f\n", x_plus_1, x, plusMinusOne, power, n);
    
    //int count;
    //for (count = 0; count < 1000; ++count) {
    
    do {
      term = plusMinusOne * (power / n++);
      sum += term;
      power *= x;
      plusMinusOne *= -1.0;
      //printf("term %f, sum %f, power %f, plusMinusOne %f\n", term, sum, power, plusMinusOne);
    } while (fabs(term) > EPSILON);

    return (sum + expo);
  }
  else {
    errno = EDOM;
    return 0;
  }
}

/*double log2(double x_plus_1) {
  if (x_plus_1 > 0) {
    int expo = 0;

    while (x_plus_1 > 2) {
      x_plus_1 /= E;
      ++expo;
    }

    double n = 0, plusMinusOne = 1, x = x_plus_1 - 1,
           term, sum = 0, power = x;//, indexX = 0;

    //printf("x_plus_1 %f, x %f, plusMinusOne %f, power %f, n %f\n", x_plus_1, x, plusMinusOne, power, n);

    //for (indexX = 0; indexX < 1000; ++indexX) {
    do {
      term = plusMinusOne * (power / ++n);
      printf("XXX term %f\n", term);
      sum += term;
      power *= x;
      plusMinusOne *= -1.0;
      printf("XXX term %f, sum %f, power %f, plusMinusOne %f\n", term, sum, power, plusMinusOne);
    } while (fabs(term) > EPSILON);

    return (sum + expo);
  }
  else {
    errno = EDOM;
    return 0;
  }
}*/

/*double log(double x_plus_1) {
  if (x_plus_1 <= 0) {
    errno = EDOM;
    return 0;
  }
  else if (x_plus_1 == 1) {
    return 0;
  }
  //else if (x > 1) { // 1..2
    int expo = 0;

    while (x_plus_1 > 2) {
      //printf("before x %f, expo %i, ", x, expo);
      x_plus_1 /= E;
      ++expo;
      //printf("after x %f, expo %i\n", x, expo);
    }

    double a = logX(x_plus_1);
    printf("x %f, log %f, expo %i, result %f\n", x_plus_1, a, expo, a + expo);
    return (a + expo);
    //return (logX(x) + expo);
  }
  else {
    int expo = 0;

    while (x < (2 / E)) {
      x *= E;
      ++expo;
    }

    return (logX(x / E) - (expo - 1));
  }
}*/

/*
double log(double x) {
  if (x > 0) {
    BOOL invers = FALSE;

    if (x > 1) {
      x = 1 / x;
      invers = TRUE;
    }

    { double n = 1, plusMinusOne = 1, x_minus_1 = x - 1, term, sum = 0, power = x_minus_1;
      int count = 0;

      do {
        term = plusMinusOne * (power / n++);
        sum += term;
        power *= x_minus_1;
        plusMinusOne *= -1.0;
        printf("sum %i %f\n", ++count, sum);
      } while (fabs(term) > EPSILON);

      return invers ? -sum : sum;
    }
  }
  else {
    errno = EDOM;
    return 0;
  }
}
*/

double log10(double x) {
  return 0.4342944820  *  log(x);

/*  if (x > 0) {
    return 0.4342944820  *  log(x);
//    return 0.4342944819  *  log(x);
  }
  else {
    errno = EDOM;
    return 0;
  }*/
}

int log10_int(double x) {
  if (x > 0) {
    if (x == 1) {
      return 0;
    }
    else if (x > 1) {
      int count = 0;

      while (x > 1) {
        x /= 10;
        ++count;
      }

      return (count - 1);
    }
    else {
      int count = 0;

      while (x < 1) {
        x *= 10;
        ++count;
      }

      return -count;
    }
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double pow_int(double x, int y) {
  BOOL minus = FALSE;

  if (y < 0) {
    y = -y;
    minus = TRUE;
  }

  double product = 1;
  int index;
  for (index = 0; index < y; ++index) {
    product *= x;
  }

  return minus ? (1 / product) : product;
}

double pow(double x, double y) {
  if (x > 0)  {
    /*printf("<pow %f %f> ", x, y);

    double a = log(x);
    printf("<pow log x %f> ", a);

    double b = y * a;
    printf("<pow y * a %f> ", b);

    double c = exp(b);
    printf("<pow exp b %f> ", c);*/

    return exp(y * log(x));
  }
  else {
    //printf("<pow error> ");
    errno = EDOM;
    //exit(-1);
    return 0;
  }
}

double ldexp(double x, int n) {
  return x * pow(2, (double) n);
}

double frexp(double x, int* p) {
  if (p != NULL) {
    if (x == 0)  {
      *p = 0;
      return 0;
    }
    else {
      //printf("2\n");
      //double t = pow(2, *p);

      /*double a = fabs(x);
      printf("<a %f>\n", a);
      double b = log(a);
      printf("<b %f>\n", b);
      double c = log(2.0);
      printf("<c %f>\n", c);
      double d = b / c;
      printf("<d %f>\n", d);*/
      //double e = (log(fabs(x)) / log(2)) + 1;
      //printf("<e %f>\n", e);*/
      //int f = (int) (log(fabs(x)) / log(2)) + 1;
      //printf("f <%i>\n", f);
      //*p = (int) f;

      *p = (int) (log(fabs(x)) / log(2)) + 1;
      /*printf("<x %f>\n", x);
      printf("<*p %i>\n", *p);
      printf("<pow(2, *p) %f>\n", pow(2, *p));*/
      double quotient = fabs(x) / pow(2, *p);
      return (x < 0) ? -quotient : quotient;
    }
  }
  else {
    if (x == 0)  {
      //printf("3\n");
      return 0;
    }
    else {
      //printf("4\n");
      int n = (int)(log(fabs(x)) / log(2)) + 1;
      double a = fabs(x) / pow(2, n);
      return (x < 0) ? -a : a;
    }
  }
}

double sin(double x) {
  double n = 0, plusMinusOne = 1, faculty = 1, power = x, term, sum = 0;

  do {
    term = plusMinusOne * (power / faculty);
    sum += term;
    plusMinusOne *= -1;
    power *= x * x;
    faculty *= (n + 2) * (n + 3);
    n += 2;
  } while (fabs(term) >= EPSILON);

  return sum;
}

double cos(double x) {
  double n = 0, plusMinusOne = 1, faculty = 1, power = 1, term, sum = 0;

  do {
    term = plusMinusOne * (power / faculty);
    sum += term;
    plusMinusOne *= -1;
    power *= x * x;
    faculty *= (n + 1) * (n + 2);
    n += 2;
  } while (fabs(term) >= EPSILON);

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

double sinh(double x) {
  return (exp(x) - exp(-x)) / 2;
}

double cosh(double x) {
  return (exp(x) + exp(-x)) / 2;
}

double tanh(double x) {
  double coh = cosh(x);

  if (coh != 0) {
    double sh = sinh(x);
    double y = sh / coh;
    //printf("<%f> <%f> <%f>", sh, register_ch, y);
    return y;
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double sqrt(double v) {
  if (v >= 0) {
    double x_nplus1 = 1, x;
    int count = 0;

    do {
      x = x_nplus1;
      x_nplus1 = (x + (v / x)) / 2;
    } while (((++count) < 1000) && (fabs(x_nplus1 - x) >= EPSILON));

    return x_nplus1;
  }
  else {
    errno = EDOM;
    return 0;
  }
}

//asin(x) = atan2(x, sqrt((1.0 + x) * (1.0 - x)))
//acos(x) = atan2(sqrt((1.0 + x) * (1.0 - x)), x)

double asin(double x) {
  if (fabs(x) <= 1) {
    return atan2(x, sqrt((1 + x) * (1 - x)));
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double acos(double x) {
  if (fabs(x) <= 1) {
    return atan2(sqrt((1 + x) * (1 - x)), x);
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double asin2(double v) {
  //printf("\nasin %f\n", v);

  if (v == 1) {
    return PI / 2;
  }
  else if (v == -1) {
    return -PI / 2;
  }
  else if (fabs(v) < 1) {
    double x_nplus1 = 1, x;
    int count = 0;

    do {
      x = x_nplus1;
      x_nplus1 = x - tan(x) + (v / cos(x));
      //printf("<%i> <%f> <%f>\n", count, x_nplus1, x);
    } while (((++count) < 1000) && (fabs(x_nplus1 - x) >= EPSILON));

    return x_nplus1;
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double acos2(double v) {
  if (v == 1) {
    return 0;
  }
  else if (fabs(v) <= 1) {
    double x_nplus1 = 1, x_n;

    do {
      x_n = x_nplus1;
      x_nplus1 = x_n + ((cos(x_n) - v) / sin(x_n));
      //x_nplus1 = x + (123 / tan(x)) - (v / sin(x));
      printf("x_n %f, x_nplus1 %f\n", x_n, x_nplus1);
    } while (fabs(x_nplus1 - x_n) >= EPSILON);
    
    return x_nplus1;
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double square(double x) {
  return x * x;
}

double atan(double x) {
  if (x == 0) {
    return 0;
  }
  else if (x == 1) {
    return PI / 4;
  }
  else if (x == -1) {
    return -PI / 4;
  }
  else {
    double sign = 1, denominator = 1, product = x, term, sum = 0;
    int count = 0;

    do {
      term = sign * product / denominator;
      sum += term;
      sign = -sign;
      product *= x * x;
      denominator += 2;
      //printf("count %i, term %f\n", count, term);
    } while (((++count) < 1000) && (fabs(term) >= EPSILON));

    return sum;
  }
}

double atanY(double v) {
  //printf("atan %f\n", v);

  if (v == 0) {
    //printf("atan 1\n");
    return 0;
  }
  else if (v == 1) {
    //printf("atan 2\n");
    return PI / 4;
  }
  else if (v == -1) {
    //printf("atan 3\n");
    return -PI / 4;
  }
  else if (fabs(v) < 0.5) {
    //printf("atan 4\n");
    int sign = 1, denominator = 1, count = 0;
    double product = v, term, sum = 0;

    do {
      term = sign * product / denominator;
      sum += term;
      sign = -sign;
      product *= v * v;
      denominator += 2;
      //printf("count %i, term %f\n", count, term);
    } while (((++count) < 1000) && (fabs(term) >= EPSILON));

    return sum;
  }
  else if (fabs(v) < 1) {
    printf("atan 5\n");
    double x_nplus1 = 1, x;

    do {
      x = x_nplus1;
      x_nplus1 = x - ((tan(x) - v) * square(cos(2 * x) + 1)) / 2;
      printf("atan x %f x_nplus1 %f\n", x, x_nplus1);
    } while (fabs(x_nplus1 - x) >= EPSILON);

    printf("atan 7\n");
    return x_nplus1;
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double atanX(double v) {
  if (v == 0) {
    return 0;
  }
  else if (fabs(v) <= 1) {
    double x_nplus1 = 1, x;

    do {
      x = x_nplus1;
      x_nplus1 = x - ((tan(x) - v) * square(cos(2 * x) + 1)) / 2;
    } while (fabs(x_nplus1 - x) >= EPSILON);

    return x_nplus1;
  }
  else {
    errno = EDOM;
    return 0;
  }
}

double atan2(double y, double x) {
  if (x > 0) {
    return atan(y / x);
  }
  else if (x < 0) {
    if (y >= 0) {
      return atan(y / x) + PI;
    }
    else {
      return atan(y / x) - PI;
    }
  }
  else {
    if (y > 0) {
      return (PI / 2);
    }
    else if (y < 0) {
      return (-PI / 2);
    }
    else {
      errno = EDOM;
      return 0;
    }
  }
}

double atan2x(double num, double denum) {
  if (denum > 0) {
    //printf("1\n");
    double y = atan(num / denum);
    printf("2\n");
    return y;
  }
  else if ((num >= 0) && (denum < 0))  {
    printf("2\n");
    return PI + atan(num / denum);
  }
  else if ((num < 0) && (denum < 0)) {
    printf("3\n");
    return (-PI) + atan(num / denum);
  }
  else if ((num > 0) && (denum == 0))  {
    printf("4\n");
    return PI / 2;
  }
  else if ((num < 0) && (denum == 0))  {
    printf("5\n");
    return (-PI) / 2;
  }
  else {
    printf("6\n");
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

  return (double) (long) (x + 0.999999999999);
}

double round(double x) {
  return (double) (long) ((x < 0) ? (x - 0.5) : (x + 0.5));
}

double fabs(double x) {
  return (x < 0) ? -x : x;
}

double modf(double x, double* p) {
  double integral = (double) (long) fabs(x);

  if (p != NULL)  {
    *p = (x > 0) ? (fabs(x) - integral) : -(fabs(x) - integral);
  }

  return (x > 0) ? integral : -integral;
}

double fmod(double x, double y) {
  if (y != 0) {
    double quotient = x / y;
    double remainder = fabs(quotient - (double) (long)quotient);
    return (x > 0) ? remainder : -remainder;
  }
  else {
    errno = EDOM;
    return 0;
  }
}