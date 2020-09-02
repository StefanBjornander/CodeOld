#include <Time.h>
#include <stdio.h>
#include <stdlib.h>
#include <String.h>

int struct_to_time(struct tm* tp);
void time_to_struct(time_t t, struct tm* tp);

void time_test(void) {
/*  { int i;
    srand((unsigned) time(NULL));

    for (i = 1; i < 100; ++i) {
      printf("%i ", rand());
    }
  }*/

  int t;
  struct tm s = {0};

  char* weekdays[] = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
  s.tm_year = 112;
  s.tm_mon = 10;
  s.tm_mday = 28;
  s.tm_hour = 13;
  s.tm_min = 50;
  s.tm_sec = 10;
  printf("%i %s %i-%02i-%02i %02i:%02i:%02i %i %i %i\n", s.tm_wday, weekdays[s.tm_wday], 1900 + s.tm_year,
         s.tm_mon + 1, s.tm_mday, s.tm_hour, s.tm_min, s.tm_sec, s.tm_yday, s.tm_wday, s.tm_isdst);

  t = struct_to_time(&s);
  printf("%i\n", t);

  memset(&s, 0, sizeof s);
  printf("%i %s %i-%02i-%02i %02i:%02i:%02i %i %i %i\n", s.tm_wday, weekdays[s.tm_wday], 1900 + s.tm_year,
         s.tm_mon + 1, s.tm_mday, s.tm_hour, s.tm_min, s.tm_sec, s.tm_yday, s.tm_wday, s.tm_isdst);
 
  time_to_struct(t, &s);
  printf("%i %s %i-%02i-%02i %02i:%02i:%02i %i %i %i\n", s.tm_wday, weekdays[s.tm_wday], 1900 + s.tm_year,
         s.tm_mon + 1, s.tm_mday, s.tm_hour, s.tm_min, s.tm_sec, s.tm_yday, s.tm_wday, s.tm_isdst);

  { //int i;
    //char s[100];

    time_t x = time(NULL), y = time(NULL);
    struct tm *p = localtime(&x), *q = gmtime(&x);
    
    x = mktime(p);
    p = localtime(&x);

    printf("Diff: %i\n", difftime(y, x));
    printf("%s", asctime(p));
    printf("%s", asctime(q));
    printf("%s", ctime(&x));
//    i = strftime(s, 100, "%a %A %b %B %c %d %H %I %j %m %M %p %S %U %w %W %x %X %y %Y", p);
//    printf("%i %s\n", i, s);
  }
}

int struct_to_time(struct tm* tp) {
/*  int leapYear = (tp->tm_year % 4) == 0,
      leapDays = (tp->tm_year - 69) / 4;
  int days = 365 * (tp->tm_year - 70) + leapDays + tp->tm_mday - 1;

  int month, months[12] = {31, leapYear ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
  for (month = 0; month < tp->tm_mon; ++month) {
    days += months[month];
  }

  { long seconds = (86400l * days) + (3600 * tp->tm_hour) + (60 * tp->tm_min) + tp->tm_sec;
    return (int) ((tp->tm_isdst << 31) + seconds);
  }
*/
  return 0;
}

#define JAN_1_1970 4 // Thursday January 1, 1970

void time_to_struct(time_t t, struct tm* tp)
{
  tp->tm_isdst = (t & 0x80000000l) ? 1 : 0;
  t &= 0x7FFFFFFFl;
/*
  { long int today = t % 86400l;

    tp->tm_sec = (int) (today % 60);
    tp->tm_min = (int) ((today % 3600) / 60);
    tp->tm_hour = (int) (today / 3600);

    { long int days = t / 86400l;
      tp->tm_wday = (int) ((days + JAN_1_1970) % 7);

      days -= days / 1460; // Leap days.
      tp->tm_year = (int) (70 + (days / 365));
      tp->tm_yday = (int) (days % 365);

      { int leapYear = (tp->tm_year % 4) == 0,
            month, days_rest = tp->tm_yday;
        int months[12] = {31, leapYear ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

        for (month = 0; month < 12; ++month) {
          if (days_rest < months[month]) {
            tp->tm_mon = month;
            tp->tm_mday = days_rest + 1;
            break;
          }

          days_rest -= months[month];
        }
      }
    }
  }*/
}
