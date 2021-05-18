#include <Time.h>
#include <stdio.h>
#include <stdlib.h>
#include <String.h>

int struct_to_time(struct tm* tp);
void time_to_struct(time_t t, struct tm* tp);

void time_test(void) {
  char* weekdays[] = { "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat" };
  
  { time_t now1 = time(NULL);
    struct tm s = *gmtime(&now1), t = *localtime(&now1);
    time_t now2 = mktime(&s);

    printf("now 1: %lu\n", now1);
    printf("now 2: %lu\n", now2);

    printf("   gm time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i\n", weekdays[s.tm_wday], 1900 + s.tm_year,
           s.tm_mon + 1, s.tm_mday, s.tm_hour, s.tm_min, s.tm_sec, s.tm_yday, s.tm_wday, s.tm_isdst);
    printf("local time: %s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i\n", weekdays[t.tm_wday], 1900 + t.tm_year,
           t.tm_mon + 1, t.tm_mday, t.tm_hour, t.tm_min, t.tm_sec, t.tm_yday, t.tm_wday, t.tm_isdst);

    { char buffer1[100], buffer2[100];
      char buffer[400];
      int i;

      strcpy(buffer1, asctime(&s));
      strcpy(buffer2, ctime(&now1));
      printf("asctime <%s>, ctime <%s>\n", buffer1, buffer2);

      i = strftime(buffer, 400, "short day %a, long day %A, short month %b, long month %B, date-time %c, mday %d, hour %H, gm hour %I, yday %j, month %m, min %M, am/pm %p, sec %S, week number sun %U, week day %w, week number mon %W, date %x, time %X, short year %y, long year %Y, summer/winter %Z", &t);
      printf("strftime %i %i <%s>\n", i, strlen(buffer), buffer);
    }

    /*time_t max = 0xFFFFFFFF;
    struct tm *q = localtime(&max);
    struct tm t = *q;
    printf("%s %02i-%02i-%02i %02i:%02i:%02i, year day %i, week day %i, daylight saving time %i\n", weekdays[t.tm_wday], 1900 + t.tm_year,
                    t.tm_mon + 1, t.tm_mday, t.tm_hour, t.tm_min, t.tm_sec, t.tm_yday, t.tm_wday, t.tm_isdst);
    printf("asctime <%s>\nctime <%s>\n", asctime(&s), ctime(&now));

    i = strftime(buffer, 400, "short day %a, long day %A, short month %b, long month %B, date-time %c, mday %d, hour %H, gm hour %I, yday %j, month %m, min %M, am/pm %p, sec %S, wday sun %U, wday %w, wday mon %W, date %x, time %X, short year %y, long year %Y", &t);
    printf("strftime <%i> <%s>\n", i, buffer);
    printf("<difftime %lu>\n", difftime(max, now));*/
  }

  /*time_t now = time(NULL);
  //printf("<time %lu>\n", now);

  struct tm *p = localtime(&now);
  printf("pointer <year %i> <month %i> <mday %i> <hour %i> <min %i> <sec %i> <wday %i> <yday %i> <isdst %i>\n",
                  1900 + p->tm_year, p->tm_mon + 1, p->tm_mday, p->tm_hour, p->tm_min, p->tm_sec, p->tm_wday, p->tm_yday, p->tm_isdst);

  struct tm t = *p;
  printf("struct  <year %i> <month %i> <mday %i> <hour %i> <min %i> <sec %i> <wday %i> <yday %i> <isdst %i>\n",
         1900 + t.tm_year, t.tm_mon + 1, t.tm_mday, t.tm_hour, t.tm_min, t.tm_sec, t.tm_wday, t.tm_yday, t.tm_isdst);

  time_t max = 0xFFFFFFFF;
  struct tm *q = localtime(&max);
  printf("max <year %i> <month %i> <mday %i> <hour %i> <min %i> <sec %i> <wday %i> <yday %i> <isdst %i>\n",
         1900 + q->tm_year, q->tm_mon + 1, q->tm_mday, q->tm_hour, q->tm_min, q->tm_sec, q->tm_wday, q->tm_yday, q->tm_isdst);


/*  struct tm s = { 0, 0, 0, 0, 0, 0, 0, 0, 0 };
  printf("A %s %02i-%02i-%02i %02i:%02i:%02i %i %i %i\n", weekdays[s.tm_wday], 1900 + s.tm_year,
         s.tm_mon + 1, s.tm_mday, s.tm_hour, s.tm_min, s.tm_sec, s.tm_yday, s.tm_wday, s.tm_isdst);

  printf("A %s %02i-%02i-%02i %02i:%02i:%02i %i %i %i\n", weekdays[s.tm_wday], 1900 + s.tm_year,
                  s.tm_mon + 1, s.tm_mday, s.tm_hour, s.tm_min, s.tm_sec, s.tm_yday, s.tm_wday, s.tm_isdst);

  printf("A %s %i-%0i-%0i %0i:%0i:%0i %i %i %i\n", weekdays[s.tm_wday], 1900 + s.tm_year,
                  s.tm_mon + 1, s.tm_mday, s.tm_hour, s.tm_min, s.tm_sec, s.tm_yday, s.tm_wday, s.tm_isdst);

  printf("A %s %i-%2i-%2i %2i:%2i:%2i %i %i %i\n", weekdays[s.tm_wday], 1900 + s.tm_year,
                  s.tm_mon + 1, s.tm_mday, s.tm_hour, s.tm_min, s.tm_sec, s.tm_yday, s.tm_wday, s.tm_isdst);

  s.tm_year = 115;
  s.tm_mon = 0;
  s.tm_mday = 2;
  s.tm_hour = 3;
  s.tm_min = 4;
  s.tm_sec = 5;
  s.tm_wday = 6;
  s.tm_yday = 200;
  s.tm_isdst = 1;

  printf("B %s %02i-%02i-%02i %02i:%02i:%02i %i %i %i\n", weekdays[s.tm_wday], 1900 + s.tm_year,
         s.tm_mon + 1, s.tm_mday, s.tm_hour, s.tm_min, s.tm_sec, s.tm_yday, s.tm_wday, s.tm_isdst);

  memset(&s, 0, sizeof s);
  printf("C %s %02i-%02i-%02i %02i:%02i:%02i %i %i %i\n", weekdays[s.tm_wday], 1900 + s.tm_year,
         s.tm_mon + 1, s.tm_mday, s.tm_hour, s.tm_min, s.tm_sec, s.tm_yday, s.tm_wday, s.tm_isdst);

  { time_t now;
    time(&now);

    struct tm *p = gmtime(&now);
    printf("F gm %s %02i-%02i-%02i %02i:%02i:%02i %i %i %i\n", weekdays[p->tm_wday], 1900 + p->tm_year,
           p->tm_mon + 1, p->tm_mday, p->tm_hour, p->tm_min, p->tm_sec, p->tm_yday, p->tm_wday, p->tm_isdst);

    struct tm t = *p;
    printf("G gm %s %02i-%02i-%02i %02i:%02i:%02i %i %i %i\n", weekdays[t.tm_wday], 1900 + t.tm_year,
           t.tm_mon + 1, t.tm_mday, t.tm_hour, t.tm_min, t.tm_sec, t.tm_yday, t.tm_wday, t.tm_isdst);
  }

  { time_t now = time(NULL);
    printf("ctime p <%s>\n", ctime(&now));

    struct tm *p = localtime(&now);
    printf("asctime p <%s>\n", asctime(p));

    struct tm *q = gmtime(&now);
    printf("gm asctime q <%s>\n", asctime(q));

    char buffer[400];
    int i = strftime(buffer, 400, "short day %a, long day %A, short month %b, long month %B, date-time %c, mday %d, hour %H, gm hour %I, yday %j, month %m, min %M, am/pm %p, sec %S, wday sun %U, wday %w, wday mon %W, date %x, time %X, short year %y, long year %Y", p);
    printf("\n%i <%s>\n", i, buffer);
  }*/
}