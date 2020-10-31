$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Time.h,1$







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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\TimeTest.c,1$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,1$



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\math.h,1$












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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,4$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ctype.h,1$



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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,5$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdarg.h,1$











$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,6$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stddef.h,1$














$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,7$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\file.h,1$










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




$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,8$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\temp.h,1$






FILE * tmpfile ( void ) ;
char * tmpnam ( char name [ 4 ] ) ;



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,9$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\scanf.h,1$








extern int g_inStatus , g_inChars ;
extern void * g_inDevice ;

char scanChar ( void ) ;
void unscanChar ( char c ) ;
void scanString ( char * string , int precision ) ;
long scanLongInt ( void ) ;
unsigned long scanUnsignedLongInt ( unsigned long base ) ;
long double scanLongDouble ( void ) ;

int scanf ( char * format , ... ) ;
int vscanf ( char * format , char * arg_list ) ;
int fscanf ( FILE * inStream , char * format , ... ) ;
int vfscanf ( FILE * inStream , char * format , char * arg_list ) ;
int sscanf ( char * inString , char * format , ... ) ;
int vsscanf ( char * inString , char * format , char * arg_list ) ;



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,10$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\printf.h,1$






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
void printDoublePlain ( double doubleValue , int plus , int space , int grid , int precision ) ;
void printLongDoublePlain ( long double doubleValue , int plus , int space , int grid , int precision ) ;
void printInt ( int intValue , int plus , int space ) ;
void printLongInt ( long longIntValue , int plus , int space ) ;
void printLongDoubleFraction ( long double longDoubleValue , int grid , int precision ) ;
void printLongDoublePlain ( long double longDoubleValue , int plus , int space , int grid , int precision ) ;
int printFormat ( char * format , char * arg_list ) ;

int printf2 ( char * format ) ;
int printf ( char * format , ... ) ;
int vprintf ( char * format , char * arg_list ) ;
int fprintf ( FILE * outStream , char * format , ... ) ;
int vfprintf ( FILE * outStream , char * format , char * arg_list ) ;
int sprintf ( char * outString , char * format , ... ) ;
int vsprintf ( char * outString , char * format , char * arg_list ) ;



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,11$



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\TimeTest.c,2$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdlib.h,1$





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

void qsort ( const void * valueList , int listSize , int valueSize ,
int ( * compare ) ( const void * , const void * ) , ... ) ;

void * bsearch ( const void * key , const void * valueList , int listSize , int valueSize ,
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


$C:\Users\Stefan\Documents\vagrant\homestead\code\code\TimeTest.c,3$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\String.h,1$





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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\TimeTest.c,4$

int struct_to_time ( struct tm * tp ) ;
void time_to_struct ( unsigned long t , struct tm * tp ) ;

void time_test ( void ) {
char * weekdays [] = { "\123\165\156" , "\115\157\156" , "\124\165\145" , "\127\145\144" , "\124\150\165" , "\106\162\151" , "\123\141\164" };

{ unsigned long now = time ( ( ( void * ) 0 ) ) ;
struct tm * p = gmtime ( & now ) ;
unsigned long now2 = mktime ( p ) ;
printf ( "\156\157\167\040\061\072\040\045\154\165\012" , now ) ;
printf ( "\156\157\167\040\062\072\040\045\154\165\012" , now2 ) ;

struct tm s = * p ;

printf ( "\040\040\040\147\155\040\164\151\155\145\072\040\045\163\040\045\060\062\151\055\045\060\062\151\055\045\060\062\151\040\045\060\062\151\072\045\060\062\151\072\045\060\062\151\054\040\171\145\141\162\040\144\141\171\040\045\151\054\040\167\145\145\153\040\144\141\171\040\045\151\054\040\144\141\171\154\151\147\150\164\040\163\141\166\151\156\147\040\164\151\155\145\040\045\151\012" , weekdays [ s . tm_wday ] , 1900 + s . tm_year ,
s . tm_mon + 1 , s . tm_mday , s . tm_hour , s . tm_min , s . tm_sec , s . tm_yday , s . tm_wday , s . tm_isdst ) ;

s = * localtime ( & now ) ;

printf ( "\154\157\143\141\154\040\164\151\155\145\072\040\045\163\040\045\060\062\151\055\045\060\062\151\055\045\060\062\151\040\045\060\062\151\072\045\060\062\151\072\045\060\062\151\054\040\171\145\141\162\040\144\141\171\040\045\151\054\040\167\145\145\153\040\144\141\171\040\045\151\054\040\144\141\171\154\151\147\150\164\040\163\141\166\151\156\147\040\164\151\155\145\040\045\151\012" , weekdays [ s . tm_wday ] , 1900 + s . tm_year ,
s . tm_mon + 1 , s . tm_mday , s . tm_hour , s . tm_min , s . tm_sec , s . tm_yday , s . tm_wday , s . tm_isdst ) ;

char buffer1 [ 100 ] , buffer2 [ 100 ];
strcpy ( buffer1 , asctime ( & s ) ) ;
strcpy ( buffer2 , ctime ( & now ) ) ;
printf ( "\141\163\143\164\151\155\145\040\074\045\163\076\054\040\143\164\151\155\145\040\074\045\163\076\012" , buffer1 , buffer2 ) ;

char buffer [ 300 ];
int i = strftime ( buffer , 300 , "\163\150\157\162\164\040\144\141\171\040\045\141\054\040\154\157\156\147\040\144\141\171\040\045\101\054\040\163\150\157\162\164\040\155\157\156\164\150\040\045\142\054\040\154\157\156\147\040\155\157\156\164\150\040\045\102\054\040\144\141\164\145\055\164\151\155\145\040\045\143\054\040\155\144\141\171\040\045\144\054\040\150\157\165\162\040\045\110\054\040\147\155\040\150\157\165\162\040\045\111\054\040\171\144\141\171\040\045\152\054\040\155\157\156\164\150\040\045\155\054\040\155\151\156\040\045\115\054\040\141\155\057\160\155\040\045\160\054\040\163\145\143\040\045\123\054\040\167\145\145\153\040\156\165\155\142\145\162\040\163\165\156\040\045\125\054\040\167\145\145\153\040\144\141\171\040\045\167\054\040\167\145\145\153\040\156\165\155\142\145\162\040\155\157\156\040\045\127\054\040\144\141\164\145\040\045\170\054\040\164\151\155\145\040\045\130\054\040\163\150\157\162\164\040\171\145\141\162\040\045\171\054\040\154\157\156\147\040\171\145\141\162\040\045\131" , & s ) ;
printf ( "\163\164\162\146\164\151\155\145\040\074\045\151\076\040\074\045\163\076\012" , i , buffer ) ;











}









































































}

