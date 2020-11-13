#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>
#include <assert.h>

clock_t clock(void) {
  return -1;
}

time_t time(time_t* timePtr) {
  time_t time;

#ifdef __WINDOWS__
  int year;
  short month, monthDay;
  short hour, min, sec;

  register_ah = 0x2As;
  interrupt(0x21s);
  year = register_cx - 1900;
  month = register_dh - 1s;
  monthDay = register_dl;

  register_ah = 0x2Cs;
  interrupt(0x21s);
  hour = register_ch;
  min = register_cl;
  sec = register_dh;

  { const BOOL leapYear = (year % 4) == 0;
    const int daysOfMonths[] = {31, leapYear ? 29 : 28, 31, 30,
                                31, 30, 30, 31, 30, 31, 30, 31};
    int yearDay = monthDay - 1, mon;

    for (mon = 0; mon < month; ++mon) {
      yearDay += daysOfMonths[mon];
    }

    { struct tm s = {sec, min, hour, monthDay, month, year, 0, yearDay, 0};
      time = mktime(&s);
    }
  }
#endif

#ifdef __LINUX__
  register_rax = 201L;
  register_rdi = (unsigned long) &time;
  syscall();
#endif

  if (timePtr != NULL) {
    *timePtr = time;
  }

  return time;
}

time_t mktime(struct tm* tp) {
  if (tp != NULL) {
    const long leapDays = (tp->tm_year - 69) / 4;
    const long totalDays = 365 * (tp->tm_year - 70) + leapDays + tp->tm_yday;
    return (86400L * totalDays) + (3600L * tp->tm_hour) +
           (60L * tp->tm_min) + tp->tm_sec;
  }

  return 0;
}

static struct tm g_timeStruct;

struct tm* gmtime(const time_t* timePtr) {
  int year = 1970;

  if (timePtr != NULL) {
    time_t time = *timePtr;
    const long secondsOfDay = time % 86400L;
    long totalDays = time / 86400L;

    g_timeStruct.tm_hour = secondsOfDay / 3600;
    g_timeStruct.tm_min = (secondsOfDay % 3600) / 60;
    g_timeStruct.tm_sec = (secondsOfDay % 3600) % 60;

    // January 1, 1970, was a Thursday
    if (totalDays < 3) {
      g_timeStruct.tm_wday = totalDays + 4;
    }
    else {
      g_timeStruct.tm_wday = (totalDays - 3) % 7;
    }

    while (TRUE) {
      const BOOL leapYear = (((year % 4) == 0) &&
                            ((year % 100) != 0)) || ((year % 400) == 0);
      const int daysOfYear = leapYear ? 366 : 365;

      if (totalDays < daysOfYear) {
        const int daysOfMonths[] = {31, leapYear ? 29 : 28, 31, 30,
                                    31, 30, 30, 31, 30, 31, 30, 31};
        int month = 0;
        g_timeStruct.tm_year = year - 1900;
        g_timeStruct.tm_yday = totalDays;

        while (totalDays >= daysOfMonths[month]) {
          totalDays -= daysOfMonths[month];
          ++month;
        }

        g_timeStruct.tm_mon = month;
        g_timeStruct.tm_mday = totalDays + 1;
        g_timeStruct.tm_isdst = -1;
        return &g_timeStruct;
      }

      ++year;
      totalDays -= daysOfYear;
    }
  }

  return NULL;
}

double difftime(time_t time1, time_t time2) {
  return (double) (time2 - time1);
}

static char g_timeString[256];

static char* g_defaultShortDayList[] = {"Sun", "Mon", "Tue", "Wed",
                                        "Thu", "Fri", "Sat"};
static char* g_defaultLongDayList[] = {"Sunday", "Monday", "Tuesday", 
                               "Wednesday", "Thursday", "Friday", "Saturday"};

static char* g_defaultShortMonthList[] =
  {"Jan", "Feb", "Mar", "Apr", "May", "Jun",
   "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
static char* g_defaultLongMonthList[] =
  {"January", "February", "March", "April", "May", "June",
   "July", "August", "September", "October", "November", "December"};

char* asctime(const struct tm* tp) {
  struct lconv* localeConvPtr = NULL;
  char** shortDayList = (localeConvPtr != NULL) ? localeConvPtr->shortDayList
                                                : NULL;
  char** shortMonthList = (localeConvPtr != NULL)
                          ? localeConvPtr->shortMonthList : NULL;

  shortDayList = (shortDayList != NULL) ? shortDayList
                                        : g_defaultShortDayList;
  shortMonthList = (shortMonthList != NULL) ? shortMonthList
                                            : g_defaultShortMonthList;

  sprintf(g_timeString, "%s %s %2i %02i:%02i:%02i %04i",
          shortDayList[tp->tm_wday], shortMonthList[tp->tm_mon],
          tp->tm_mday, tp->tm_hour, tp->tm_min,
          tp->tm_sec, tp->tm_year + 1900);
  return g_timeString;
}

char* ctime(const time_t* time) {
  return asctime(localtime(time));
}

struct tm* localtime(const time_t* timePtr) {
  struct tm* tmPtr = gmtime(timePtr);
  struct lconv* localeConvPtr = localeconv();
  int timeZone = 0;

  if (localeConvPtr != NULL) {
    timeZone = tmPtr->tm_isdst ? localeConvPtr->summerTimeZone
                               : localeConvPtr->winterTimeZone;
  }

  { time_t time = *timePtr + (3600 * timeZone);
    return gmtime(&time);
  }
}

size_t strftime(char* s, size_t smax, const char* fmt, const struct tm* tp) {
  struct lconv* localeConvPtr = localeconv();
  char** shortDayList = (localeConvPtr != NULL)
                        ? (localeConvPtr->shortDayList) : NULL;
  char** shortMonthList = (localeConvPtr != NULL)
                          ? (localeConvPtr->shortMonthList) : NULL;
  char** longDayList = (localeConvPtr != NULL)
                       ? (localeConvPtr->longDayList) : NULL;
  char** longMonthList = (localeConvPtr != NULL)
                         ? (localeConvPtr->longMonthList) : NULL;

  const BOOL leapDays = (tp->tm_year - 69) / 4;
  const long totalDays = 365 * (tp->tm_year - 70) + leapDays + tp->tm_yday;
  int yearDaySunday, yearDayMonday;

  strcpy(s, "");
  shortDayList = (shortDayList != NULL)
                 ? shortDayList : g_defaultShortDayList;
  longDayList = (longDayList != NULL) ? longDayList : g_defaultLongDayList;
  shortMonthList = (shortMonthList != NULL)
                   ? shortMonthList : g_defaultShortMonthList;
  longMonthList = (longMonthList != NULL) 
                  ? longMonthList : g_defaultLongMonthList;

  // January 1, 1970, was a Thursday
  if (totalDays < 3) {
    yearDaySunday = totalDays + 4;
  }
  else {
    yearDaySunday = (totalDays - 3) % 7;
  }

  if (totalDays < 4) {
    yearDayMonday = totalDays + 3;
  }
  else {
    yearDayMonday = (totalDays - 4) % 7;
  }

  { int index;
    for (index = 0; fmt[index] != '\0'; ++index) {
      char add[20];

      if (fmt[index] == '%') {
        switch (fmt[++index]) {
          case 'a':
            strcpy(add, shortDayList[tp->tm_wday]);
            break;

          case 'A':
            strcpy(add, longDayList[tp->tm_wday]);
            break;

          case 'b':
            strcpy(add, shortMonthList[tp->tm_mon]);
            break;

          case 'B':
            strcpy(add, longMonthList[tp->tm_mon]);
            break;

          case 'c':
            sprintf(add, "%04d-%02d-%02d %02d:%02d:%02d",
                    1900 + tp->tm_year, tp->tm_mon + 1, tp->tm_mday,
                    tp->tm_hour, tp->tm_min, tp->tm_sec); 
            break;

          case 'd':
            sprintf(add, "%02d", tp->tm_mday);
            break;

          case 'H':
            sprintf(add, "%02d", tp->tm_hour);
            break;

          case 'I':
            sprintf(add, "%02d", tp->tm_hour % 12);
            break;

          case 'j':
            sprintf(add, "%03d", tp->tm_yday);
            break;

          case 'm':
            sprintf(add, "%02d", tp->tm_mon + 1);
            break;

          case 'M':
            sprintf(add, "%02d", tp->tm_min);
            break;

          case 'p':
            sprintf(add, "%s", (tp->tm_hour < 12) ? "AM" : "PM");
            break;

          case 'S':
            sprintf(add, "%02d", tp->tm_sec);
            break;

          case 'U':
            sprintf(add, "%02d", yearDaySunday);
            break;

          case 'w':
            sprintf(add, "%02d", tp->tm_wday);
            break;

          case 'W':
            sprintf(add, "%02d", yearDayMonday);
            break;

          case 'x':
            sprintf(add, "%04d-%02d-%02d", 1900 + tp->tm_year,
                    tp->tm_mon + 1, tp->tm_mday);
            break;

          case 'X':
            sprintf(add, "%02d:%02d:%02d", tp->tm_hour, tp->tm_min, tp->tm_sec); 
            break;

          case 'y':
            sprintf(add, "%02d", tp->tm_year % 100);
            break;

          case 'Y':
            sprintf(add, "%04d", 1900 + tp->tm_year);
            break;

          case 'Z':
            strcpy(add, "");
            break;

          case '%':
            strcpy(add, "%");
        }
      }
      else {
        add[0] = fmt[index];
        add[1] = '\0';
      }

      if ((strlen(s) + strlen(add)) < smax) {
        strcat(s, add);
      }
      else {
        break;
      }
    }
  }

  return strlen(s);
}