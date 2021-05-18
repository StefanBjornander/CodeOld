#ifndef __TIME_H__
#define __TIME_H__

#define size_t int
#define time_t unsigned long
#define clock_t long

struct tm {
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;
};

extern clock_t clock(void);
extern time_t time(time_t* time);
extern double difftime(time_t time2, time_t time1);
extern time_t mktime(struct tm* timeStruct);

extern char* asctime(const struct tm* timeStruct);
extern char* ctime(const time_t* time);
extern struct tm* gmtime(const time_t* time);
extern struct tm* localtime(const time_t* time);

extern size_t strftime(char* buffer, size_t size, const char* format,
                       const struct tm* timeStruct);

#endif
