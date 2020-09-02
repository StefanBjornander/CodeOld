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
  int year = register_cx;
  short month = register_dh, monthDay = register_dl;

  register_ah = 0x2Cs;
  interrupt(0x21s);
  short hour = register_ch, min = register_cl, sec = register_dh;

  struct tm s = {sec, min, hour, monthDay, month, year, 0, 0, 1};
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

/*
#endif
  //clear_registers();
  year -= 1900;
  --month;
  //++monthDay;
  //clear_registers();

#ifdef __WINDOWS__
  register_ah = 0x2Cs;
  //load_register(register_ah, 0x2Cs);
  interrupt(0x21s);
  short hour = register_ch, min = register_cl, sec = register_dh;
  //store_register(register_ch, hour);
  //store_register(register_cl, min);
  //store_register(register_dh, sec);
  //clear_registers();
#else
  short hour = 0, min = 0, sec = 0;
#endif
  //printf("time <year %i> <month %i> <mday %i> <hour %i> <min %i> <sec %i>\n",
  //       year, month, monthDay, hour, min, sec);

  /*BOOL isLeapYear = ((year % 4) == 0);
  int yearDay;

  if (isLeapYear) {
    int leapMonths[] = {0, 31, 60, 91, 121, 152, 182, 213, 243, 274, 304, 335};
    yearDay = leapMonths[month] + (monthDay - 1);
  }
  else {
    int regularMonths[] = {0, 31, 59, 90, 120, 151, 181, 212, 242, 273, 303, 334};
    yearDay = regularMonths[month] + (monthDay - 1);
  }*

  //struct tm s = { 56, 34, 12, 6, 2, 117, 0, 0, 1 };
  struct tm s = {sec, min, hour, monthDay, month, year, 0, 0, 1};
  //printf("     time <year %i> <month %i> <mday %i> <hour %i> <min %i> <sec %i>\n",
  //       s.tm_year, s.tm_mon, s.tm_mday, s.tm_hour, s.tm_min, s.tm_sec);

  //printf("<&s %u>\n", &s);
  time_t time = mktime(&s);

  if (timePtr != NULL) {
    *timePtr = time;
  }

  return time;
}*/

/*time_t time(time_t* timePtr) {
#ifdef __WINDOWS__
  register_ah = 0x2As;
  //load_register(register_ah, 0x2As);
  interrupt(0x21s);
  int year = register_cx;
  short month = register_dh, monthDay = register_dl; // weekDay;
  //store_register(register_cx, year);
  //store_register(register_dh, month);
  //store_register(register_dl, monthDay);
  //store_register(register_al, weekDay);
#else
  int year = 0;
  short month = 0, monthDay = 0; // weekDay;
#endif
  //clear_registers();
  year -= 1900;
  --month;
  //++monthDay;
  //clear_registers();

#ifdef __WINDOWS__
  register_ah = 0x2Cs;
  //load_register(register_ah, 0x2Cs);
  interrupt(0x21s);
  short hour = register_ch, min = register_cl, sec = register_dh;
  //store_register(register_ch, hour);
  //store_register(register_cl, min);
  //store_register(register_dh, sec);
  //clear_registers();
#else
  short hour = 0, min = 0, sec = 0;
#endif
  //printf("time <year %i> <month %i> <mday %i> <hour %i> <min %i> <sec %i>\n",
  //       year, month, monthDay, hour, min, sec);

  /*BOOL isLeapYear = ((year % 4) == 0);
  int yearDay;

  if (isLeapYear) {
    int leapMonths[] = {0, 31, 60, 91, 121, 152, 182, 213, 243, 274, 304, 335};
    yearDay = leapMonths[month] + (monthDay - 1);
  }
  else {
    int regularMonths[] = {0, 31, 59, 90, 120, 151, 181, 212, 242, 273, 303, 334};
    yearDay = regularMonths[month] + (monthDay - 1);
  }*

  //struct tm s = { 56, 34, 12, 6, 2, 117, 0, 0, 1 };
  struct tm s = {sec, min, hour, monthDay, month, year, 0, 0, 1};
  //printf("     time <year %i> <month %i> <mday %i> <hour %i> <min %i> <sec %i>\n",
  //       s.tm_year, s.tm_mon, s.tm_mday, s.tm_hour, s.tm_min, s.tm_sec);

  //printf("<&s %u>\n", &s);
  time_t time = mktime(&s);

  if (timePtr != NULL) {
    *timePtr = time;
  }

  return time;
}*/

time_t mktime(struct tm* tp) {
  //printf("<tp %u>\n", tp);
  //printf("   mktime <year %i> <month %i> <mday %i> <hour %i> <min %i> <sec %i> <wday %i> <yday %i> <isdst %i>\n",
  //       tp->tm_year, tp->tm_mon, tp->tm_mday, tp->tm_hour, tp->tm_min, tp->tm_sec, tp->tm_wday, tp->tm_yday, tp->tm_isdst);

  int leapDays = ((tp->tm_year - 69) / 4);
  int totalDays = 365 * (tp->tm_year - 69) + leapDays +
                  (tp->tm_mday - 1);
  BOOL leapYear = ((tp->tm_year % 4) == 0);
  //printf("<leap days %i> <total days %i> <leap year %i>\n", leapDays, totalDays, leapYear);

  if (leapYear) {
    //printf("<leap> ");
    int leapMonths[] = {0, 31, 60, 91, 121, 152,
                        182, 213, 243, 274, 304, 335};
    totalDays += leapMonths[tp->tm_mon];
  }
  else {
    //printf("<no leap> ");
    int regularMonths[] = {0, 31, 59, 90, 120, 151,
                           181, 212, 242, 273, 303, 334};
    totalDays += regularMonths[tp->tm_mon];
  }

  //printf("<total days %i> ", totalDays);
  unsigned long totalSeconds = (86400lu * totalDays) +
                  (3600lu * tp->tm_hour) + (60lu * tp->tm_min) + tp->tm_sec;
  unsigned long result = (((unsigned long)tp->tm_isdst) << 31) |
                  (0x7FFFFFFF & totalSeconds);
  //printf("<total seconds %lu> <time %lu>\n", totalSeconds, result);
  return result;
}

static struct tm g_timeStruct;
#define JAN_1_1969 3 // Wednesday January 1, 1969
//#define JAN_1_1970 4 // Thursday January 1, 1970

#define DAYS_OF_FOUR_YEARS 1461
#define DAYS_OF_ONE_YEAR 365

struct tm* localtime(const time_t* timePtr) {
  int year = 1970;
  if (timePtr != NULL) {
    time_t time = *timePtr;
    int totalDays = 0;

    while (TRUE) {
      BOOL leapYear = (((year % 4) == 0) && (((year % 100) != 0) || ((year % 1000) == 0))) ? 366 : 365;
      int daysOfYear = leapYear ? 366 : 365;
      long secondsOfYear = 86400L * daysOfYear;

      if (time < secondsOfYear) {
        g_timeStruct.tm_year = year;
        int dayOfYear = time / 86400; // 1 hour
        g_timeStruct.tm_yday = dayOfYear;
        totalDays += dayOfYear;
        int daysOfMonths[] = { 31, leapYear ? 29 : 28, 31, 30, 31, 30, 30, 31, 30, 31, 30, 31 };

        int month = 1;
        while (TRUE) {
          if (daysOfYear < daysOfMonths[month - 1]) {
            g_timeStruct.tm_mon = month;
            g_timeStruct.tm_mday = daysOfYear;
            break;
          }

          daysOfYear -= daysOfMonths[month - 1];
          ++month;
        }

        int secondsOfDay = time % 86400;
        g_timeStruct.tm_hour = secondsOfDay / 3600;
        int secondsOfHour = secondsOfDay % 3600;
        g_timeStruct.tm_min = secondsOfHour / 60;
        g_timeStruct.tm_sec = secondsOfHour % 60;
        break;
      }

      time -= secondsOfYear;
      ++year;
      totalDays += daysOfYear;
    }

    if (totalDays < 3) {
      g_timeStruct.tm_wday = totalDays + 4;
    }
    else {
      g_timeStruct.tm_wday = (totalDays - 3) % 7;
    }

    g_timeStruct.tm_isdst = 0;
    return &g_timeStruct;
  }

  return NULL;
}

struct tm* localtimeX(const time_t* timePtr) {
  if (timePtr != NULL) {
    time_t time = *timePtr;
    g_timeStruct.tm_isdst = (time >> 31);
    unsigned long totalSeconds = (time & 0x7FFFFFFF);
    //printf("localtime <isdst %i> <total seconds %lu> <time %lu>\n", g_timeStruct.tm_isdst, totalSeconds, time);

    { unsigned long totalDays = totalSeconds / 86400lu;
      g_timeStruct.tm_wday = (int) ((totalDays + JAN_1_1969) % 7);
      //printf("<total days %i>\n", totalDays);

      int fourYears = totalDays / DAYS_OF_FOUR_YEARS;
      totalDays %= DAYS_OF_FOUR_YEARS;
      //printf("<four years %i> <total days %i>\n", fourYears, totalDays);

      int years = totalDays / DAYS_OF_ONE_YEAR;
      totalDays %= DAYS_OF_ONE_YEAR;
      //printf("<years %i> <total days %i>\n", years, totalDays);

      g_timeStruct.tm_year = 69 + (4 * fourYears) + years;
      g_timeStruct.tm_yday = totalDays;
      BOOL leapYear = ((g_timeStruct.tm_year % 4) == 0);
      //printf("<year %i> <year day %i> <leap year %i>\n", g_timeStruct.tm_year, g_timeStruct.tm_yday, leapYear);

      if (leapYear) {
        int leapMonths[] = {0, 31, 60, 91, 121, 152, 182, 213, 243, 274, 304, 335, 366},
            arraySize = (sizeof leapMonths) / (sizeof leapMonths[0]), index;

        for (index = 1; index < arraySize; ++index) {
          //printf("<leap month sum %i>\n", leapMonths[index]);

          if (totalDays < leapMonths[index]) {
            //printf("<leap index %i>\n", index);
            g_timeStruct.tm_mon = index - 1;
            g_timeStruct.tm_mday = (totalDays % leapMonths[index - 1]) + 1;
            break;
          }
        }
      }
      else {
        int regularMonths[] = {0, 31, 59, 90, 120, 151, 181, 212, 242, 273, 303, 334, 365},
            arraySize = (sizeof regularMonths) / (sizeof regularMonths[0]), index;

        for (index = 1; index < arraySize; ++index) {
          //printf("<regular month sum %i>\n", regularMonths[index]);

          if (totalDays < regularMonths[index]) {
            //printf("<regular index %i>\n", index);
            g_timeStruct.tm_mon = index - 1;
            g_timeStruct.tm_mday = (totalDays % regularMonths[index - 1]) + 1;
            break;
          }
        }
      }
    }

    //printf("Test1\n");
    { unsigned long daySeconds = totalSeconds % 86400lu;
      g_timeStruct.tm_hour = (int) (daySeconds / 3600);
      g_timeStruct.tm_min = (int) ((daySeconds % 3600) / 60);
      g_timeStruct.tm_sec = (int) (daySeconds % 60);
    }

    //printf("Test2\n");
    /*printf("localtime <year %i> <month %i> <mday %i> <hour %i> <min %i> <sec %i> <wday %i> <yday %i> <isdst %i>\n",
           g_timeStruct.tm_year, g_timeStruct.tm_mon, g_timeStruct.tm_mday,
           g_timeStruct.tm_hour, g_timeStruct.tm_min, g_timeStruct.tm_sec,
           g_timeStruct.tm_wday, g_timeStruct.tm_yday, g_timeStruct.tm_isdst);*/
    return &g_timeStruct;
  }

  return NULL;
}

struct tm* localtimeY(const time_t* timePtr) {
  if (timePtr != NULL) {
    time_t time = *timePtr;
    g_timeStruct.tm_isdst = (time >> 31);
    unsigned long totalSeconds = (time & 0x7FFFFFFF);
    //printf("<isdst %i> <total seconds %lu> <time %lu>\n", g_timeStruct.tm_isdst, totalSeconds, time);

    { unsigned long totalDays = totalSeconds / 86400lu;
      g_timeStruct.tm_wday = (int) ((totalDays + JAN_1_1969) % 7);
      //printf("<total days %i>\n", totalDays);

      int year;
      BOOL leapYear;
      for (year = 69;; ++year) {
        leapYear = ((year % 4) == 0);
        int yearDays = leapYear ? 366 : 365;
        //printf("<year %i> <total days %lu> <year days %i>\n", year, totalDays, yearDays);

        if (totalDays >= yearDays) {
          totalDays -= yearDays;
        }
        else {
          break;
        }
      }

      g_timeStruct.tm_year = year;
      g_timeStruct.tm_yday = totalDays;
      int month, months[12] = { 31, leapYear ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
      
      for (month = 0; month < 12; ++month) {
        //printf("<month %i> <total days %i>\n", month, totalDays);

        if (totalDays >= months[month]) {
          totalDays -= months[month];          
        }
        else {
          break;
        }
      }

      g_timeStruct.tm_mon = month;
      g_timeStruct.tm_mday = totalDays + 1;
    }

    { unsigned long daySeconds = totalSeconds % 86400lu;
      //printf("<day seconds %lu> <min %lu %lu>\n", daySeconds, dayMinutes, dayMinutes / 60lu);
      g_timeStruct.tm_hour = (int) (daySeconds / 3600lu);
      g_timeStruct.tm_min = (int) ((daySeconds % 3600lu) / 60lu);
      g_timeStruct.tm_sec = (int) (daySeconds % 60);
    }

    //printf("localtime <year %i> <month %i> <mday %i> <hour %i> <min %i> <sec %i> <wday %i> <yday %i> <isdst %i>\n",
    //       g_timeStruct.tm_year, g_timeStruct.tm_mon, g_timeStruct.tm_mday, g_timeStruct.tm_hour, g_timeStruct.tm_min, g_timeStruct.tm_sec, g_timeStruct.tm_wday, g_timeStruct.tm_yday, g_timeStruct.tm_isdst);
    return &g_timeStruct;
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
  long totalSeconds1 = (time1 &0x7FFFFFFF),
       totalSeconds2 = (time2 &0x7FFFFFFF);
  return (double) (totalSeconds2 - totalSeconds1);
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

struct tm* gmtime(const time_t* timePtr) {
  time_t t = *timePtr;
  int timeZone = 0;
  struct tm* tmPtr = localtime(timePtr);
  struct lconv* localeConvPtr = localeconv();

  if (localeConvPtr != NULL) {
    timeZone = tmPtr->tm_isdst ? localeConvPtr->summerTimeZone : localeConvPtr->winterTimeZone;
  }

  t -= 3600l * timeZone;
  return localtime(&t);
}

/*
      //printf("tm_wday: %i\n", g_timeStruct.tm_wday);
      
      unsigned long leapDays = days / 1460lu;
      //printf("leapDays: %lu\n", leapDays);
      clear_registers();

      g_timeStruct.tm_year = (int) (70lu + ((days - leapDays) / 365lu));
      //printf("tm_year: %i\n", g_timeStruct.tm_year);

      g_timeStruct.tm_yday = (int) ((days - leapDays) % 365lu);
      //printf("tm_yday: %i\n", g_timeStruct.tm_yday);

      { int leapYear = ((g_timeStruct.tm_year % 4) == 0) && ((g_timeStruct.tm_year % 100) != 0);
        int month, days_rest = g_timeStruct.tm_yday,
            months[12] = {31, leapYear ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

        for (month = 0; month < 12; ++month) {
          if (days_rest < months[month]) {
            g_timeStruct.tm_mon = month;
            //printf("tm_mon: %i\n", g_timeStruct.tm_mon);

            g_timeStruct.tm_mday = days_rest + 1;
            break;
          }

          days_rest -= months[month];
        }
      }
    }

    { unsigned long seconds = time % 86400lu;
      //printf("seconds: %lu\n", seconds);

      g_timeStruct.tm_sec = (int) (seconds % 60lu);
      //printf("tm_sec: %i\n", g_timeStruct.tm_sec);

      g_timeStruct.tm_min = (int) ((seconds % 3600lu) / 60lu);
      //printf("tm_min: %i\n", g_timeStruct.tm_min);

      g_timeStruct.tm_hour = (int) (seconds / 3600lu);
      //printf("tm_hour: %i\n", g_timeStruct.tm_hour);
    }

    //printf("D <year %i> <month %i> <mday %i> <hour %i> <min %i> <sec %i>\n  <yday %i> <wday %i> <isdst %i>\n",
           1900 + g_timeStruct.tm_year, g_timeStruct.tm_mon + 1, g_timeStruct.tm_mday,
           g_timeStruct.tm_hour, g_timeStruct.tm_min, g_timeStruct.tm_sec,
           g_timeStruct.tm_yday, g_timeStruct.tm_wday, g_timeStruct.tm_isdst);
    //printf("<&g_timeStruct %p %i>\n", &g_timeStruct, (int) &g_timeStruct);
    return &g_timeStruct;
  }

  return NULL;
}

/*
struct tm* localtime(const time_t* timePtr) {
  if (timePtr != NULL) {
    time_t time = *timePtr;
    //printf("localtime: %lu\n", time);

    { unsigned long days = time / 86400lu;
      //printf("days: %lu\n", days);
      g_timeStruct.tm_wday = (int) ((days + JAN_1_1970) % 7lu);
      //printf("tm_wday: %i\n", g_timeStruct.tm_wday);
      
      unsigned long leapDays = days / 1460lu;
      //printf("leapDays: %lu\n", leapDays);
      clear_registers();

      g_timeStruct.tm_year = (int) (70lu + ((days - leapDays) / 365lu));
      //printf("tm_year: %i\n", g_timeStruct.tm_year);

      g_timeStruct.tm_yday = (int) ((days - leapDays) % 365lu);
      //printf("tm_yday: %i\n", g_timeStruct.tm_yday);

      { int leapYear = ((g_timeStruct.tm_year % 4) == 0) && ((g_timeStruct.tm_year % 100) != 0);
        int month, days_rest = g_timeStruct.tm_yday,
            months[12] = {31, leapYear ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

        for (month = 0; month < 12; ++month) {
          if (days_rest < months[month]) {
            g_timeStruct.tm_mon = month;
            //printf("tm_mon: %i\n", g_timeStruct.tm_mon);

            g_timeStruct.tm_mday = days_rest + 1;
            break;
          }

          days_rest -= months[month];
        }
      }
    }

    { unsigned long seconds = time % 86400lu;
      //printf("seconds: %lu\n", seconds);

      g_timeStruct.tm_sec = (int) (seconds % 60lu);
      //printf("tm_sec: %i\n", g_timeStruct.tm_sec);

      g_timeStruct.tm_min = (int) ((seconds % 3600lu) / 60lu);
      //printf("tm_min: %i\n", g_timeStruct.tm_min);

      g_timeStruct.tm_hour = (int) (seconds / 3600lu);
      //printf("tm_hour: %i\n", g_timeStruct.tm_hour);
    }

    //printf("D <year %i> <month %i> <mday %i> <hour %i> <min %i> <sec %i>\n  <yday %i> <wday %i> <isdst %i>\n",
           1900 + g_timeStruct.tm_year, g_timeStruct.tm_mon + 1, g_timeStruct.tm_mday,
           g_timeStruct.tm_hour, g_timeStruct.tm_min, g_timeStruct.tm_sec,
           g_timeStruct.tm_yday, g_timeStruct.tm_wday, g_timeStruct.tm_isdst);
    //printf("<&g_timeStruct %p %i>\n", &g_timeStruct, (int) &g_timeStruct);
    return &g_timeStruct;
  }

  return NULL;
}
*/
/*
struct tm* localtime(const time_t* timePtr) {
  if (timePtr != NULL) {
    time_t time = *timePtr;
    //printf("time: %lu\n", time);

    { unsigned long days = time / 86400lu;
      //printf("days: %lu\n", days);
      g_timeStruct.tm_wday = (int) ((days + JAN_1_1970) % 7lu);
      //printf("tm_wday: %i\n", g_timeStruct.tm_wday);
      
      unsigned long leapDays = days / 1460lu;
      //printf("leapDays: %lu\n", leapDays);
      clear_registers();

      g_timeStruct.tm_year = (int) (70lu + ((days - leapDays) / 365lu));
      //printf("tm_year: %i\n", g_timeStruct.tm_year);

      g_timeStruct.tm_yday = (int) ((days - leapDays) % 365lu);
      //printf("tm_yday: %i\n", g_timeStruct.tm_yday);

      { int leapYear = ((g_timeStruct.tm_year % 4) == 0) && ((g_timeStruct.tm_year % 100) != 0);
        int month, days_rest = g_timeStruct.tm_yday,
            months[12] = {31, leapYear ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

        for (month = 0; month < 12; ++month) {
          if (days_rest < months[month]) {
            g_timeStruct.tm_mon = month;
            //printf("tm_mon: %i\n", g_timeStruct.tm_mon);

            g_timeStruct.tm_mday = days_rest + 1;
            break;
          }

          days_rest -= months[month];
        }
      }
    }

    { unsigned long seconds = time % 86400lu;
      //printf("seconds: %lu\n", seconds);

      g_timeStruct.tm_sec = (int) (seconds % 60lu);
      //printf("tm_sec: %i\n", g_timeStruct.tm_sec);

      g_timeStruct.tm_min = (int) ((seconds % 3600lu) / 60lu);
      //printf("tm_min: %i\n", g_timeStruct.tm_min);

      g_timeStruct.tm_hour = (int) (seconds / 3600lu);
      //printf("tm_hour: %i\n", g_timeStruct.tm_hour);
    }

    //printf("D <year %i> <month %i> <mday %i> <hour %i> <min %i> <sec %i>\n  <yday %i> <wday %i> <isdst %i>\n",
           1900 + g_timeStruct.tm_year, g_timeStruct.tm_mon + 1, g_timeStruct.tm_mday,
           g_timeStruct.tm_hour, g_timeStruct.tm_min, g_timeStruct.tm_sec,
           g_timeStruct.tm_yday, g_timeStruct.tm_wday, g_timeStruct.tm_isdst);
    //printf("<&g_timeStruct %p %i>\n", &g_timeStruct, (int) &g_timeStruct);
    return &g_timeStruct;
  }

  return NULL;
}

int weekDayJanuary1(int year) {
  struct tm january1 = {year, 0, 1};
  time_t jan1 = mktime(&january1);
  struct tm* j1 = localtime(&jan1);
  return j1->tm_wday;
}

int WeekNumberSunday(const struct tm* tp) {
  int yearDays = tp->tm_yday,
      firstWeekDay = weekDayJanuary1(tp->tm_year);

  if (firstWeekDay != 0) { // Not Sunday
    yearDays -= (7 - firstWeekDay);
  }

  return (yearDays + (7 - tp->tm_wday)) / 7;
}

int WeekNumberMonday(const struct tm* tp) {
  int yearDays = tp->tm_yday,
      firstWeekDay = weekDayJanuary1(tp->tm_year);

  switch (firstWeekDay)
  {
    case 0:
      yearDays -= 6;

    case 1:
      break;

    default:
      yearDays -= (7 - firstWeekDay);
  }

  switch (tp->tm_wday)
  {
    case 0:
      return yearDays / 7;

    default:
      return (yearDays + (7 - tp->tm_wday)) / 7;
  }
}
*/

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
          sprintf(add, "%02d", (tp->tm_hour % 12) + 1);
          break;

        case 'j':
          sprintf(add, "%03d", tp->tm_yday);
          break;

        case 'm':
          sprintf(add, "%02d", tp->tm_mon);
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
          sprintf(add, "%02d", 0); // WeekNumberSunday(tp)
          break;

        case 'w':
          sprintf(add, "%02d", tp->tm_wday);
          break;

        case 'W':
          sprintf(add, "%02d", 0); // WeekNumberMonday(tp)
          break;

        case 'x':
          sprintf(add, "%04d-%02d-%02d", 1900 + tp->tm_year, tp->tm_mon, tp->tm_mday);
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