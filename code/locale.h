#ifndef __LOCALE_H__
#define __LOCALE_H__

#define LC_COLLATE  0x01
#define LC_CTYPE    0x02
#define LC_MONETARY 0x04
#define LC_NUMERIC  0x08
#define LC_TIME     0x10
#define LC_ALL      0x1F

struct lconv {
  int summerTimeZone, winterTimeZone;
  char **shortDayList;
  char **longDayList;
  char **shortMonthList;
  char **longMonthList;
  char *lowerCase;
  char *upperCase;
  char **messageList;
};

//extern char* enMessageList[];
extern char* setlocale(int flag, char* name);
extern struct lconv *localeconv(void);

#endif
