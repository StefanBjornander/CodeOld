#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>

static char* enShortDayList[] = {"Sun", "Mon", "Tue", "Wed",
                                 "Thu", "Fri", "Sat"};
static char* enLongDayList[] ={"Sunday", "Monday", "Tuesday", "Wednesday",
                               "Thursday", "Friday", "Saturday"};

static char* enShortMonthList[] = {"Jan", "Feb", "Mar", "Apr", "May", "Jun",
                                   "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
static char* enLongMonthList[] = {"January", "February", "March", "April", 
                                "May", "June", "July", "August",
                              "September", "October", "November", "December"};

extern enum {NO_ERROR, NO_FUNCTION, NO_FILE, NO_PATH, NO_HANDLE, NO_ACCESS,
             EDOM, ERANGE, EILSEQ, FOPEN, FFLUSH, FCLOSE, NO_MODE, FWRITE,
           FREAD, FSEEK, FTELL, FSIZE, FREMOVE, FRENAME, FTEMPNAME, FTEMPFILE};
char* enMessageList[] = {"no error", "function number invalid",
                         "file not found", "path not found",
                         "no handle available", "access denied",
                         "out of domain", "out of range",
                         "invalid multibyte sequence", "error while opening",
                         "error while flushing", "error while closing",
                         "open mode invalid", "error while writing",
                         "error while reading", "error while seeking",
                         "error while telling", "error while sizing",
                         "error while removing file",
                         "error while renaming file" };

static struct lconv en_US_utf8 = {-5, -4, enShortDayList, enLongDayList,
                                  enShortMonthList, enLongMonthList,
                                  "abcdefghijklmnopqrstuvwxyz",
                                  "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
                                  enMessageList};

/*static char* swShortDayList[] = {"Son", "Man", "Tis", "Ons",
                                 "Tor", "Fre", "Lor"};
static char* swLongDayList[] = {"Sondag", "Mandag", "Tisdag", "Onsdag",
                                    "Torsdag", "Fredag", "Lordag"};
static char* swShortMonthList[] = {"Jan", "Feb", "Mar", "Apr", "Maj", "Jun",
                                   "Jul", "Aug", "Sep", "Okt", "Nov", "Dec"};
static char* swLongMonthList[] = {"Januari", "Februari", "Mars", "April",
                                  "Maj", "Juni", "Juli", "Augusit",
                              "September", "Oktober", "November", "December"};
static char* swMessageList[] = {"inga fel", "felaktigt functionsnummer",
                                "hittar ej filen", "hittar ej sokvagen",
                                "inget handtag tillgangligt", "atkomst nekad",
                                "utanfor doman", "utanfor range",
                                "felaktig multibyte-sekvens",
                                "fel vid oppning", "fel vid flushing",
                                "fel vid stangning", "fel oppningslage",
                                "fel vid skrivning", "fel vid lasning",
                                "fel vid sokning", "fel vid telling",
                                "fel vid borttagning av fil",
                                "fel vid namnbyte av fil"};
static struct lconv sw_EN_utf8 = {1, 2, swShortDayList, swLongDayList,
                                  enShortMonthList, swLongMonthList,
                                  "abcdefghijklmnopqrstuvwxyz",
                                  "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
                                  swMessageList};

static struct _s {
  char* name;
  struct lconv* localePtr;
} sArray[] = {{"", &sw_EN_utf8}, {"C", &en_US_utf8}, {"US", &en_US_utf8}, {"SE", &sw_EN_utf8}};*/

static struct _s {
  char* name;
  struct lconv* localePtr;
} sArray[] = {{"", &en_US_utf8}, {"C", &en_US_utf8}, {"US", &en_US_utf8}};

static int sSize = (sizeof sArray) / (sizeof sArray[0]);
static struct _s* g_currStructPtr = &sArray[0];

#define PRINT(x,y) { printf(#x " = <%" #y ">\n", (x)); }

char* setlocale(int /*flag*/, char* newName) {
  int index;
  char *oldName = (g_currStructPtr != NULL) ? g_currStructPtr->name : NULL;
  g_currStructPtr = NULL;

  if (newName != NULL) {
    for (index = 0; index < sSize; ++index) {
      if (strcmp(newName, sArray[index].name) == 0) {
        g_currStructPtr = &sArray[index];
        break;
      }
    }
  }

  return oldName;
}

struct lconv* localeconv(void) {
  return (g_currStructPtr != NULL) ? g_currStructPtr->localePtr : NULL;
}
