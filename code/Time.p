$C:\Users\Stefan\Documents\vagrant\homestead\code\code\time.h,0$
   
   

    
     
    

struct tm {
int tm_sec ;
int tm_min ;
int tm_hour ;

int tm_mday ;
int tm_mon ;
int tm_year ;

int tm_wday ;
int tm_yday ;
int tm_isdst ;
};

extern long clock ( void ) ;
extern unsigned long time ( unsigned long * time ) ;
extern double difftime ( unsigned long time2 , unsigned long time1 ) ;
extern unsigned long mktime ( struct tm * timeStruct ) ;

extern char * asctime ( const struct tm * timeStruct ) ;
extern char * ctime ( const unsigned long * time ) ;
extern struct tm * gmtime ( const unsigned long * time ) ;
extern struct tm * localtime ( const unsigned long * time ) ;
extern struct tm * localtimeX ( const unsigned long * time ) ;

extern int strftime ( char * buffer , int size ,
const char * format , const struct tm * timeStruct ) ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Time.c,0$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,0$
   
   

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\math.h,0$
   
   


    

    


extern double exp ( double x ) ;
extern double log ( double x ) ;
extern double log10 ( double x ) ;

extern double pow ( double x , double y ) ;
extern double ldexp ( double x , int exponent ) ;
extern double frexp ( double x , int * exponent ) ;

extern double sqrt ( double x ) ;
extern double modf ( double x , double * integral ) ;
extern double fmod ( double x , double y ) ;

extern double sin ( double x ) ;
extern double cos ( double x ) ;
extern double tan ( double x ) ;

extern double sinh ( double x ) ;
extern double cosh ( double x ) ;
extern double tanh ( double x ) ;

extern double asin ( double x ) ;
extern double acos ( double x ) ;
extern double atan ( double x ) ;
extern double atan2 ( double x , double y ) ;

extern double floor ( double x ) ;
extern double ceil ( double x ) ;
extern double round ( double x ) ;
extern double fabs ( double x ) ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,3$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ctype.h,0$
   
   

extern int islower ( int c ) ;
extern int isupper ( int c ) ;
extern int isalpha ( int c ) ;
extern int isdigit ( int c ) ;
extern int isalnum ( int c ) ;
extern int isxdigit ( int c ) ;
extern int isgraph ( int c ) ;
extern int isprint ( int c ) ;
extern int ispunct ( int c ) ;
extern int iscntrl ( int c ) ;
extern int isspace ( int c ) ;
extern int tolower ( int c ) ;
extern int toupper ( int c ) ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,4$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdarg.h,0$
   
   

     
                         
                    
               
      

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,5$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stddef.h,0$
   
   

          

    
    

    
    
    

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,6$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\file.h,0$
   
   

    
    

    
    

typedef unsigned int UINT ;

typedef struct {
int open ;
UINT handle ;
char name [ 16 ] , ungetc ;
int errno ;
unsigned int position , size ;
int temporary ;
} FILE ;

extern FILE * stdin , * stdout , * stderr ;

extern enum { EEXIST , ENOENT , EACCES };
extern enum { SEEK_SET , SEEK_CUR , SEEK_END };
extern enum { READ , WRITE , READ_WRITE };

   
    
    
    
    

    

    
    
    
    
    
  

          

int fileexists ( const char * name ) ;
FILE * fopen ( const char * filename , const char * mode ) ;
FILE * freopen ( const char * filename , const char * mode , FILE * stream ) ;
int fflush ( FILE * stream ) ;
int fclose ( FILE * stream ) ;
int remove ( const char * name ) ;
int rename ( const char * oldName , const char * newName ) ;
int setvbuf ( FILE * stream , char * buffer , int mode , int size ) ;
void setbuf ( FILE * stream , char * buffer ) ;
int fgetc ( FILE * stream ) ;
char * fgets ( char * s , int n , FILE * stream ) ;
int fputc ( int i , FILE * stream ) ;
int fputs ( const char * s , FILE * stream ) ;
int getchar ( void ) ;
char * gets ( char * s ) ;
int putchar ( int c ) ;
int puts ( const char * s ) ;
int ungetc ( int c , FILE * stream ) ;
int fread ( void * ptr , int size , int nobj , FILE * stream ) ;
int fwrite ( const void * ptr , int size , int nobj , FILE * stream ) ;
int fseek ( FILE * stream , int offset , int origin ) ;
int ftell ( FILE * stream ) ;
void rewind ( FILE * stream ) ;
int fgetpos ( FILE * stream , int * ptr ) ;
int fsetpos ( FILE * stream , const int * ptr ) ;
void clearerr ( FILE * stream ) ;
int feof ( FILE * stream ) ;
int ferror ( FILE * stream ) ;
void perror ( const char * s ) ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,7$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\temp.h,0$
   
   

    
    

FILE * tmpfile ( void ) ;
char * tmpnam ( char name [ 4 ] ) ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,8$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\scanf.h,0$
   
   

    
    

    

char scanChar ( void ) ;
void unscanChar ( char c ) ;
void scanString ( char * string , int precision ) ;
long scanLongInt ( int base ) ;
unsigned long scanUnsignedLongInt ( int base ) ;
long double scanLongDouble ( void ) ;

int scanf ( char * format , ... ) ;
int vscanf ( char * format , char * arg_list ) ;
int fscanf ( FILE * inStream , char * format , ... ) ;
int vfscanf ( FILE * inStream , char * format , char * arg_list ) ;
int sscanf ( char * inString , char * format , ... ) ;
int vsscanf ( char * inString , char * format , char * arg_list ) ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,9$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\printf.h,0$
   
   

    
    

extern int g_outStatus , g_charCount ;
extern void * g_outDevice ;

int putc ( int c , FILE * stream ) ;
int fputc ( int c , FILE * stream ) ;
int putchar ( int c ) ;

void printChar ( char c ) ;
void printChar2 ( char c ) ;
void printString ( char * s , int precision ) ;
void printString2 ( char * s ) ;
void printIntRec ( int intValue ) ;
void printInt ( int intValue , int plus , int space ) ;
void printDoublePlain ( double doubleValue , int plus , int space ,
int grid , int precision ) ;
void printLongDoublePlain ( long double doubleValue , int plus ,
int space , int grid , int precision ) ;
void printInt ( int intValue , int plus , int space ) ;
void printLongInt ( long longIntValue , int plus , int space ) ;
void printLongDoubleFraction ( long double longDoubleValue ,
int grid , int precision ) ;
void printLongDoublePlain ( long double longDoubleValue , int plus ,
int space , int grid , int precision ) ;
int printFormat ( char * format , char * arg_list ) ;

int printf2 ( char * format ) ;
int printf ( char * format , ... ) ;
int vprintf ( char * format , char * arg_list ) ;
int fprintf ( FILE * outStream , char * format , ... ) ;
int vfprintf ( FILE * outStream , char * format , char * arg_list ) ;
int sprintf ( char * outString , char * format , ... ) ;
int vsprintf ( char * outString , char * format , char * arg_list ) ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,10$
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Time.c,1$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdlib.h,0$
   
   

          

double atof ( char * s ) ;
int atoi ( char * s ) ;
long atol ( char * s ) ;

double strtod ( char * s , char ** endp ) ;
long strtol ( char * s , char ** endp , int base ) ;
unsigned long strtoul ( char * s , char ** endp , int base ) ;

int rand ( void ) ;
void srand ( unsigned int seed ) ;

char * getenv ( const char * name ) ;
int system ( const char * command ) ;

void abort ( void ) ;
void exit ( int status ) ;

typedef void ( * FUNC_PTR ) ( void ) ;
int atexit ( FUNC_PTR fcn ) ;

    
    

int abs ( int value ) ;
long labs ( long value ) ;

void * malloc ( int size ) ;
void * realloc ( void * ptr , int newSize ) ;
void * calloc ( int num , int size ) ;
void free ( void * ptr ) ;

void qsort ( void * valueList , int listSize , int valueSize ,
int ( * compare ) ( const void * , const void * ) ) ;
void * bsearch ( const void * key , const void * valueList ,
int listSize , int valueSize ,
int ( * compare ) ( const void * , const void * ) ) ;

int abs ( int value ) ;
long labs ( long value ) ;

typedef struct {
int quot , rem ;
} div_t ;

div_t div ( int num , int denum ) ;

typedef struct {
long quot , rem ;
} ldiv_t ;

ldiv_t ldiv ( long num , long denum ) ;
  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Time.c,2$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\string.h,0$
   
   

    

extern char * strcpy ( char * target , const char * source ) ;
extern char * strncpy ( char * target , const char * source , int size ) ;
extern char * strcat ( char * target , const char * source ) ;
extern char * strncat ( char * target , const char * source , int size ) ;
extern int strcmp ( const char * left , const char * right ) ;
extern int strncmp ( const char * left , const char * right , int size ) ;
extern char * strchr ( const char * text , int i ) ;
extern char * strrchr ( const char * text , int i ) ;
extern int strspn ( const char * mainString , const char * charSet ) ;
extern int strcspn ( const char * mainString , const char * charSet ) ;
extern char * strpbrk ( const char * mainString , const char * charSet ) ;
extern char * strstr ( const char * mainString , const char * subString ) ;
extern int strlen ( const char * string ) ;
extern char * strerror ( int error ) ;
extern char * strtok ( char * string , const char * charSet ) ;
extern void * memcpy ( void * target , const void * source , int size ) ;
extern void * memmove ( void * target , const void * source , int size ) ;
extern int memcmp ( const void * left , const void * right , int size ) ;
extern void * memchr ( const void * block , int i , int size ) ;
extern void * memset ( void * block , int i , int size ) ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Time.c,3$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\locale.h,0$
   
   

    
    
    
    
    
    

struct lconv {
int summerTimeZone , winterTimeZone ;
char ** shortDayList ;
char ** longDayList ;
char ** shortMonthList ;
char ** longMonthList ;
char * lowerCase ;
char * upperCase ;
char ** messageList ;
};

extern char * enMessageList [];
extern char * setlocale ( int flag , char * name ) ;
extern struct lconv * localeconv ( void ) ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Time.c,4$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\assert.h,0$
   
   

   
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,0$
   
   

       
       
       
       
       
       
       
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\assert.h,4$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdlib.h,0$
   
   

          

       
       
       

           
              
               

     
       

         
        

     
      

         
      

    
    

      
      

       
           
          
       

            
               
             
     
               

      
      

  
    
  

         

  
    
  

         
  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\assert.h,5$
       
              
     
            
  
      
  

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Time.c,5$
       

long clock ( void ) {
return -1 ;
}

struct timeval {
int tv_sec ;
int tv_usec ;
};

struct timezone {
int tz_minuteswest ;
int tz_dsttime ;
};

unsigned long time ( unsigned long * timePtr ) {
unsigned long time ;

   
   
    
      
        

   
    
     
     
   

   
    
   
   
   

      
     


            
                 
               
        

             
     


                       
       


  

   
 register_rax = 201L ;
register_rdi = ( unsigned long ) & time ;
syscall ( ) ;


{ struct timeval tv ;
struct timezone tz ;

register_rax = 96L ;
register_rdi = & tv ;
register_rsi = & tz ;
syscall ( ) ;
printf ( "timezone %i %i %i %i\n" , tv . tv_sec , tv . tv_usec , tz . tz_minuteswest , tz . tz_dsttime ) ;
}

  

if ( timePtr != ( ( void * ) 0 ) ) {
* timePtr = time ;
}

return time ;
}

unsigned long mktime ( struct tm * tp ) {
if ( tp != ( ( void * ) 0 ) ) {
const long leapDays = ( tp -> tm_year - 69 ) / 4 ;
const long totalDays = 365 * ( tp -> tm_year - 70 ) + leapDays + tp -> tm_yday ;
return ( 86400L * totalDays ) + ( 3600L * tp -> tm_hour ) +
( 60L * tp -> tm_min ) + tp -> tm_sec ;
}

return 0 ;
}

static struct tm g_timeStruct ;






























static int isLeapYear ( int year ) {
return ( ( ( year % 4 ) == 0 ) &&
( ( year % 100 ) != 0 ) ) || ( ( year % 400 ) == 0 ) ;
}

struct tm * gmtime ( const unsigned long * timePtr ) {
if ( timePtr != ( ( void * ) 0 ) ) {
unsigned long time = * timePtr ;
const long secondsOfDay = time % 86400L ,
secondsOfHour = secondsOfDay % 3600 ;
g_timeStruct . tm_hour = secondsOfDay / 3600 ;
g_timeStruct . tm_min = secondsOfHour / 60 ;
g_timeStruct . tm_sec = secondsOfHour % 60 ;


{ long totalDays = time / 86400L ;

if ( totalDays < 3 ) {
g_timeStruct . tm_wday = totalDays + 4 ;
}
else {
g_timeStruct . tm_wday = ( totalDays - 3 ) % 7 ;
}

{ int year = 1970 + ( totalDays / 365 ) ;
const int leapDays = ( year - 1969 ) / 4 ;
totalDays %= 365 ;
totalDays -= leapDays ;

if ( totalDays < 0 ) {
-- year ;

if ( isLeapYear ( year ) ) {
totalDays += 366 ;
}
else {
totalDays += 365 ;
}
}

g_timeStruct . tm_year = year - 1900 ;
g_timeStruct . tm_yday = totalDays ;

{ const int daysOfMonths [] = { 31 , isLeapYear ( year ) ? 29 : 28 , 31 ,
30 , 31 , 30 , 31 , 31 , 30 , 31 , 30 , 31 };
int month = 0 ;
while ( totalDays >= daysOfMonths [ month ] ) {
totalDays -= daysOfMonths [ month ++];
}

g_timeStruct . tm_mon = month ;
g_timeStruct . tm_mday = totalDays + 1 ;
g_timeStruct . tm_isdst = -1 ;
return & g_timeStruct ;
}
}
}
}

return ( ( void * ) 0 ) ;
}


































































double difftime ( unsigned long time1 , unsigned long time2 ) {
return ( double ) ( time2 - time1 ) ;
}

static char g_timeString [ 256 ];

static char * g_defaultShortDayList [] = { "Sun" , "Mon" , "Tue" , "Wed" ,
"Thu" , "Fri" , "Sat" };
static char * g_defaultLongDayList [] = { "Sunday" , "Monday" , "Tuesday" ,
"Wednesday" , "Thursday" , "Friday" , "Saturday" };

static char * g_defaultShortMonthList [] =
{ "Jan" , "Feb" , "Mar" , "Apr" , "May" , "Jun" ,
"Jul" , "Aug" , "Sep" , "Oct" , "Nov" , "Dec" };
static char * g_defaultLongMonthList [] =
{ "January" , "February" , "March" , "April" , "May" , "June" ,
"July" , "August" , "September" , "October" , "November" , "December" };

char * asctime ( const struct tm * tp ) {
struct lconv * localeConvPtr = ( ( void * ) 0 ) ;
char ** shortDayList = ( localeConvPtr != ( ( void * ) 0 ) ) ? localeConvPtr -> shortDayList
: ( ( void * ) 0 ) ;
char ** shortMonthList = ( localeConvPtr != ( ( void * ) 0 ) )
? localeConvPtr -> shortMonthList : ( ( void * ) 0 ) ;

shortDayList = ( shortDayList != ( ( void * ) 0 ) ) ? shortDayList
: g_defaultShortDayList ;
shortMonthList = ( shortMonthList != ( ( void * ) 0 ) ) ? shortMonthList
: g_defaultShortMonthList ;
sprintf ( g_timeString , "%s %s %i %02i:%02i:%02i %i" ,
shortDayList [ tp -> tm_wday ] , shortMonthList [ tp -> tm_mon ] ,
tp -> tm_mday , tp -> tm_hour , tp -> tm_min ,
tp -> tm_sec , tp -> tm_year + 1900 ) ;
return g_timeString ;
}

char * ctime ( const unsigned long * time ) {
return asctime ( localtime ( time ) ) ;
}

struct tm * localtime ( const unsigned long * timePtr ) {
struct tm * tmPtr = gmtime ( timePtr ) ;
struct lconv * localeConvPtr = localeconv ( ) ;
int timeZone = 0 ;

if ( localeConvPtr != ( ( void * ) 0 ) ) {
timeZone = ( tmPtr -> tm_isdst == 1 ) ? localeConvPtr -> summerTimeZone
: localeConvPtr -> winterTimeZone ;
}

{ unsigned long t = * timePtr + ( 3600l * timeZone ) ;
return gmtime ( & t ) ;
}
}

int strftime ( char * s , int smax , const char * fmt , const struct tm * tp ) {
struct lconv * localeConvPtr = localeconv ( ) ;
char ** shortDayList = ( localeConvPtr != ( ( void * ) 0 ) )
? ( localeConvPtr -> shortDayList ) : ( ( void * ) 0 ) ;
char ** shortMonthList = ( localeConvPtr != ( ( void * ) 0 ) )
? ( localeConvPtr -> shortMonthList ) : ( ( void * ) 0 ) ;
char ** longDayList = ( localeConvPtr != ( ( void * ) 0 ) )
? ( localeConvPtr -> longDayList ) : ( ( void * ) 0 ) ;
char ** longMonthList = ( localeConvPtr != ( ( void * ) 0 ) )
? ( localeConvPtr -> longMonthList ) : ( ( void * ) 0 ) ;

const int leapDays = ( tp -> tm_year - 69 ) / 4 ;
const long totalDays = 365 * ( tp -> tm_year - 70 ) + leapDays + tp -> tm_yday ;
int yearDaySunday , yearDayMonday ;

strcpy ( s , "" ) ;
shortDayList = ( shortDayList != ( ( void * ) 0 ) )
? shortDayList : g_defaultShortDayList ;
longDayList = ( longDayList != ( ( void * ) 0 ) ) ? longDayList : g_defaultLongDayList ;
shortMonthList = ( shortMonthList != ( ( void * ) 0 ) )
? shortMonthList : g_defaultShortMonthList ;
longMonthList = ( longMonthList != ( ( void * ) 0 ) )
? longMonthList : g_defaultLongMonthList ;


if ( totalDays < 3 ) {
yearDaySunday = totalDays + 4 ;
}
else {
yearDaySunday = ( totalDays - 3 ) % 7 ;
}

if ( totalDays < 4 ) {
yearDayMonday = totalDays + 3 ;
}
else {
yearDayMonday = ( totalDays - 4 ) % 7 ;
}

{ int index ;
for ( index = 0 ; fmt [ index ] != '\0' ; ++ index ) {
char add [ 20 ];

if ( fmt [ index ] == '%' ) {
switch ( fmt [++ index ] ) {
case 'a' :
strcpy ( add , shortDayList [ tp -> tm_wday ] ) ;
break ;

case 'A' :
strcpy ( add , longDayList [ tp -> tm_wday ] ) ;
break ;

case 'b' :
strcpy ( add , shortMonthList [ tp -> tm_mon ] ) ;
break ;

case 'B' :
strcpy ( add , longMonthList [ tp -> tm_mon ] ) ;
break ;

case 'c' :
sprintf ( add , "%02i-%02i-%02i %02i:%02i:%02i" ,
1900 + tp -> tm_year , tp -> tm_mon + 1 , tp -> tm_mday ,
tp -> tm_hour , tp -> tm_min , tp -> tm_sec ) ;
break ;

case 'd' :
sprintf ( add , "%i" , tp -> tm_mday ) ;
break ;

case 'H' :
sprintf ( add , "%i" , tp -> tm_hour ) ;
break ;

case 'I' :
sprintf ( add , "%i" , tp -> tm_hour % 12 ) ;
break ;

case 'j' :
sprintf ( add , "%i" , tp -> tm_yday ) ;
break ;

case 'm' :
sprintf ( add , "%i" , tp -> tm_mon + 1 ) ;
break ;

case 'M' :
sprintf ( add , "%i" , tp -> tm_min ) ;
break ;

case 'p' :
sprintf ( add , "%s" , ( tp -> tm_hour < 12 ) ? "AM" : "PM" ) ;
break ;

case 'S' :
sprintf ( add , "%i" , tp -> tm_sec ) ;
break ;

case 'U' :
sprintf ( add , "%i" , yearDaySunday ) ;
break ;

case 'w' :
sprintf ( add , "%i" , tp -> tm_wday ) ;
break ;

case 'W' :
sprintf ( add , "%i" , yearDayMonday ) ;
break ;

case 'x' :
sprintf ( add , "%02i:%02i:%02i" , tp -> tm_hour ,
tp -> tm_min , tp -> tm_sec ) ;
break ;

case 'X' :
sprintf ( add , "%02i:%02i:%02i" , tp -> tm_hour , tp -> tm_min , tp -> tm_sec ) ;
break ;

case 'y' :
sprintf ( add , "%i" , tp -> tm_year % 100 ) ;
break ;

case 'Y' :
sprintf ( add , "%i" , 1900 + tp -> tm_year ) ;
break ;

case 'Z' :
strcpy ( add , "" ) ;
break ;

case '%' :
strcpy ( add , "%" ) ;

default :
strcpy ( add , "" ) ;
break ;
}
}
else {
add [ 0 ] = fmt [ index ];
add [ 1 ] = '\0' ;
}

{ int x = strlen ( s ) , y = strlen ( add ) ;
if ( ( x + y ) < smax ) {
strcat ( s , add ) ;

}
else {
break ;
}
}
}
}

return strlen ( s ) ;
}
