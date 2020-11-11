#include <Time.h>
#include <stdio.h>
#include <stdlib.h>
#include <String.h>
#include <Locale.h>
#include <Assert.h>

clock_t clock(void) {
  return -1;
}

time_t time(time_t* timePtr) {
  time_t time;

#ifdef __WINDOWS__
  register_ah = 0x2As;
  interrupt(0x21s);
  int year = register_cx - 1900;
  short month = register_dh - 1s, monthDay = register_dl;
  printf("%i-%i-%i\n", year, month, monthDay);

  register_ah = 0x2Cs;
  interrupt(0x21s);
  short hour = register_ch, min = register_cl, sec = register_dh;
  //printf("%i:%i:%i\n", hour, min, sec);

  const BOOL leapYear = (year % 4) == 0;
  const int daysOfMonths[] = {31, leapYear ? 29 : 28, 31, 30, 31, 30, 30, 31, 30, 31, 30, 31};
  int yearDay = monthDay - 1, mon;

  for (mon = 0; mon < month; ++mon) {
    yearDay += daysOfMonths[mon];
  }
  printf("%i %i\n", yearDay, month);

  struct tm s = {sec, min, hour, monthDay, month, year, 0, yearDay, 0};
  time = mktime(&s);
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
    //printf("leap %li, days %li\n", leapDays, totalDays);
    //printf("%ul %ul %ul\n", 86400L * totalDays, 3600L * tp->tm_hour, 60L * tp->tm_min);
    return (86400L * totalDays) + (3600L * tp->tm_hour) + (60L * tp->tm_min) + tp->tm_sec;
  }

  return 0;
}

static struct tm g_timeStruct;

struct tm* gmtime(const time_t* timePtr) {
  int year = 1970;

  if (timePtr != NULL) {
    time_t time = *timePtr;

    //printf("time: %lu\n", time);
    const long secondsOfDay = time % 86400L;
    g_timeStruct.tm_hour = secondsOfDay / 3600;
    g_timeStruct.tm_min = (secondsOfDay % 3600) / 60;
    g_timeStruct.tm_sec = (secondsOfDay % 3600) % 60;

    // January 1, 1970, was a Thursday
    long totalDays = time / 86400L;
    //printf("total days: %i\n", totalDays);
    if (totalDays < 3) {
      g_timeStruct.tm_wday = totalDays + 4;
    }
    else {
      g_timeStruct.tm_wday = (totalDays - 3) % 7;
    }

    while (TRUE) {
      const BOOL leapYear = (((year % 4) == 0) && ((year % 100) != 0)) || ((year % 400) == 0);
      const int daysOfYear = leapYear ? 366 : 365;
      //printf("year: %i, totalDays: %li, leapYear %i, daysOfYear %i\n", year, totalDays, leapYear, daysOfYear);
      //printf("total days %li, days of year %i\n", totalDays, daysOfYear);

      if (totalDays < daysOfYear) {
        g_timeStruct.tm_year = year - 1900;
        g_timeStruct.tm_yday = totalDays;

        const int daysOfMonths[] = {31, leapYear ? 29 : 28, 31, 30, 31, 30, 30, 31, 30, 31, 30, 31};
        int month = 0;

        while (totalDays >= daysOfMonths[month]) {
          //printf("month: %i, days %i, total days: %i\n", month, daysOfMonths[month], totalDays);
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

//      time_t time = mktime(&s);
//      //printf("Date: <%i> <%i> <%i>, Time: <%i> <%i> <%i>\n", s.tm_year, s.tm_mon, s.tm_mday, s.tm_hour, s.tm_min, s.tm_sec);
//      return time;

/*
  year  0-127 7
  month 0-11  4     
  day   0-31  5
  hour  0-24  5
  min   0-60  6
  sec   0-60  6
        -------
             33

  wday  0-6   3
  yday  0-364 9
        -------
             42
*/

/*time_t mktime(struct tm* tp) {  
  //printf("mktime: <%i> <%i> <%i> <%i> <%i> <%i>\n", tp->tm_year, tp->tm_mon, tp->tm_mday, tp->tm_hour, tp->tm_min, tp->tm_sec);
  long mask1 = ((long) tp->tm_year) | (((long) tp->tm_mon) << 10) | (((long) tp->tm_mday) << 14) |
               (((long) tp->tm_wday) << 19) | (((long) tp->tm_yday) << 22) | (((long)tp->tm_isdst) << 31),
       mask2 = ((long) tp->tm_hour) | (((long) tp->tm_min) << 6) | (((long) tp->tm_sec) << 12);

  time_t result;
  memcpy(&result, &mask1, sizeof mask1);
  memcpy(((char*) &result) + (sizeof mask1) &mask2, sizeof mask2);
  return result;
}*/

// 1 jan, 1969

/*
  //clear_registers();
  //printf("leapYear %i, leapDays %i\n", isLeapYear, leapDays);

  time_t days = (365lu * (tp->tm_year - 70)) + leapDays + tp->tm_mday - 1;
  //printf("days1 %ul\n", days);

  int month, months[] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };

  int month, regularYear[] = {0, 31, 59, 90, 120, 151, 181, 212, 242, 273, 303, 334};
  int month, leapYear[] = {0, 31, 60, 91, 121, 152, 182, 213, 243, 274, 304, 335};

  for (month = 0; month < tp->tm_mon; ++month) {
    days += months[month];
  }

  { time_t daySeconds = 86400lu * days,
           hourSeconds = 3600lu * ((time_t) tp->tm_hour),
           minSeconds = 60lu * ((time_t) tp->tm_min);

    time_t totalSeconds = daySeconds + hourSeconds + minSeconds + tp->tm_sec;
    //printf("Seconds %lu %lu %lu %lu\n", daySeconds, hourSeconds, minSeconds, totalSeconds);
    return totalSeconds;
  }

  //return 0;
}*/

/*
time_t time(time_t* timePtr) {
  int year;
  short month, mday;

  load_register(register_ah, 42);
  interrupt(0x21s);
  //store_register(year, register_cx);
  //store_register(month, register_dh);
  //store_register(mday, register_dl);
  --month;

  { short hour, min, sec;

    load_register(register_ah, 44);
    interrupt(0x21s);
    //store_register(hour, register_ch);
    //store_register(min, register_cl);
    //store_register(sec, register_dh);

    //printf("Make0: <%02i-%02i-%02i> <%02i:%02i:%02i>\n", year, monthy, mday, hour, min, sec);

    { struct tm s = {year, month, mday, hour, min, sec};
      //printf("Make1: <%02i-%02i-%02i> <%02i:%02i:%02i>\n", s.tm_year, s.tm_mon, s.tm_mday, s.tm_hour, s.tm_min, s.tm_sec);
      return mktime(&s);
    }
  }
}
*/

double difftime(time_t time1, time_t time2) {
  return (double) (time2 - time1);
}

/*
time_t mktime(struct tm* tp) {
  int leapYear = (tp->tm_year % 4) == 0,
      leapDays = (tp->tm_year - 69) / 4,
      days = (((365 * (tp->tm_year - 70)) + leapDays) + tp->tm_mday)a - 1;

  int month, months[12] = {31, leapYear ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
  //printf("Make2: <%02i-%02i-%02i> <%02i:%02i:%02i>\n", tp->tm_year, tp->tm_mon, tp->tm_mday, tp->tm_hour, tp->tm_min, tp->tm_sec);
  for (month = 0; month < tp->tm_mon; ++month) {
    days += months[month];
  }

  //printf("\nDays: <%i> ", days);
  //printf("\nHour: <%i>", tp->tm_hour);
  assert((tp->tm_sec >= 0) && (tp->tm_sec < 60));
  assert((tp->tm_min >= 0) && (tp->tm_min < 60));
  assert((tp->tm_hour >= 0) && (tp->tm_hour < 24));
  assert((tp->tm_mon >= 0) && (tp->tm_mon < 12));
  assert((tp->tm_mday > 0) && (tp->tm_mday <= months[tp->tm_mon]));
  assert((tp->tm_year >= 70) && (tp->tm_year < 134));

  //printf("Date: <%i> <%i> <%i> <%i>\n", tp->tm_year + 1900, tp->tm_mon, tp->tm_mday, days);
  //printf("Time: <%i> <%i> <%i> ", tp->tm_hour, tp->tm_min, tp->tm_sec);

  { time_t seconds = (86400L * days) + (3600L * tp->tm_hour) + (60L * tp->tm_min) + tp->tm_sec;
    //printf("Time: <%li>", seconds);
    return (tp->tm_isdst << 31) + seconds;
  }
}
*/

static char g_timeString[256];

static char* g_defaultShortDayList[] = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
static char* g_defaultLongDayList[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};

static char* g_defaultShortMonthList[] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
static char* g_defaultLongMonthList[] = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

void default_test() {
  //printf("<%p>", g_defaultShortDayList);
  //printf("<%s>", g_defaultShortDayList[1]);
}

char* asctime(const struct tm* tp) {
  struct lconv* localeConvPtr = NULL;//localeconv();
  char** shortDayList = (localeConvPtr != NULL) ? localeConvPtr->shortDayList : NULL;
  char** shortMonthList = (localeConvPtr != NULL) ? localeConvPtr->shortMonthList : NULL;

  shortDayList = (shortDayList != NULL) ? shortDayList : g_defaultShortDayList;
  shortMonthList = (shortMonthList != NULL) ? shortMonthList : g_defaultShortMonthList;

  //printf("shortDayList <%u> shortMonthList <%u>\n", shortDayList, shortMonthList);

  sprintf(g_timeString, "%s %s %2i %02i:%02i:%02i %04i",
          shortDayList[tp->tm_wday], shortMonthList[tp->tm_mon],
          tp->tm_mday, tp->tm_hour, tp->tm_min,
          tp->tm_sec, tp->tm_year + 1900);
  return g_timeString;
}

char* ctime(const time_t* time) {
  return asctime(localtime(time));
}

/*struct tm* localtime(const time_t* timePtr) {
  time_t t = *timePtr;
  g_timeStruct.tm_isdst = 0;
  t &= 0x7FFFFFFFl;

  { time_t today = t % 86400l;
    g_timeStruct.tm_sec = today % 60;
    g_timeStruct.tm_min = (today % 3600) / 60;
    g_timeStruct.tm_hour = today / 3600;

    { time_t days = t / 86400l;
      g_timeStruct.tm_wday = (days + JAN_1_1970) % 7;

      days -= days / 1460; // Leap days.

      g_timeStruct.tm_year = 70 + (days / 365);
      g_timeStruct.tm_yday = days % 365;

      { int leapYear = (g_timeStruct.tm_year % 4) == 0,
            month, days_rest = g_timeStruct.tm_yday;
        int months[12] = {31, leapYear ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

        for (month = 0; month < 12; ++month) {
          if (days_rest < months[month]) {
            g_timeStruct.tm_mon = month;
            g_timeStruct.tm_mday = days_rest;
            break;
          }

          days_rest -= months[month];
        }
      }
    }
  }

  return &g_timeStruct;
}*/

struct tm* localtime(const time_t* timePtr) {
  struct tm* tmPtr = gmtime(timePtr);
  struct lconv* localeConvPtr = localeconv();
  int timeZone = 0;

  if (localeConvPtr != NULL) {
    timeZone = tmPtr->tm_isdst ? localeConvPtr->summerTimeZone : localeConvPtr->winterTimeZone;
  }

  //printf("time zone: %i\n", timeZone);
  //printf("time: %li\n", *timePtr);
  time_t time = *timePtr + (3600 * timeZone);
  /*printf("time: %li\n", time);
  printf("time: %li\n", *timePtr);
  printf("time: %li %li %li\n", time, time, time);
  printf("time: %li %li\n", *timePtr, *timePtr);
  printf("time: %li %li %li\n", *timePtr, *timePtr, *timePtr);
  printf("time: %li %li %li\n", *timePtr, time, *timePtr);
  printf("time: %li %li %li\n", time, *timePtr, *timePtr);
  printf("time: %li\n", *timePtr);*/
  return gmtime(&time);
}

size_t strftime(char* s, size_t smax, const char* fmt, const struct tm* tp) {
  struct lconv* localeConvPtr = localeconv();
  char** shortDayList = (localeConvPtr != NULL) ? (localeConvPtr->shortDayList) : NULL;
  char** shortMonthList = (localeConvPtr != NULL) ? (localeConvPtr->shortMonthList) : NULL;
  char** longDayList = (localeConvPtr != NULL) ? (localeConvPtr->longDayList) : NULL;
  char** longMonthList = (localeConvPtr != NULL) ? (localeConvPtr->longMonthList) : NULL;

  strcpy(s, "");
  shortDayList = (shortDayList != NULL) ? shortDayList : g_defaultShortDayList;
  longDayList = (longDayList != NULL) ? longDayList : g_defaultLongDayList;
  shortMonthList = (shortMonthList != NULL) ? shortMonthList : g_defaultShortMonthList;
  longMonthList = (longMonthList != NULL) ? longMonthList : g_defaultLongMonthList;

  const BOOL leapDays = (tp->tm_year - 69) / 4;
  const long totalDays = 365 * (tp->tm_year - 70) + leapDays + tp->tm_yday;
  printf("leap days %i, total days %lu\n", leapDays, totalDays);

  // January 1, 1970, was a Thursday
  //const int yearDaySunday = (totalDays < 3) ? (totalDays + 4) : ((totalDays - 3) % 7);
  //const int yearDayMonday = (totalDays < 4) ? (totalDays + 3) : ((totalDays - 4) % 7);

  int yearDaySunday, yearDayMonday;

  if (totalDays < 3) {
    yearDaySunday = totalDays + 4;
  }
  else {
    yearDaySunday = (totalDays - 3) % 7;
  }

  printf("yearDaySunday %i\n", yearDaySunday);

  if (totalDays < 4) {
    yearDayMonday = totalDays + 3;
  }
  else {
    yearDayMonday = (totalDays - 4) % 7;
  }

  printf("yearDayMonday %i\n", yearDayMonday);
  //printf("strlen %i, fmt <%s>\n", strlen(fmt), fmt);

  int index;
  for (index = 0; fmt[index] != '\0'; ++index) {
    char add[20];
    //printf("index %i <%c> <%c>\n", index, fmt[index], fmt[index + 1]);

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
          sprintf(add, "%04d-%02d-%02d %02d:%02d:%02d", 1900 + tp->tm_year, tp->tm_mon + 1, tp->tm_mday, 
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
          sprintf(add, "%04d-%02d-%02d", 1900 + tp->tm_year, tp->tm_mon + 1, tp->tm_mday);
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

    //strcat(s, add);
    //printf("s <%s> add <%s>\n", s, add);
    //printf("strlen(s) %i, strlen(add) %i, smax %i\n", strlen(s), strlen(add), smax);

    if ((strlen(s) + strlen(add)) < smax) {
      strcat(s, add);
    }
    else {
      break;
    }
  }

  return strlen(s);
}