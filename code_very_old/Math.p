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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.c,1$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\errno.h,1$































extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };


























extern int errno ;



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.c,2$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,1$



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\math.h,1$







































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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.c,3$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stddef.h,1$














$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.c,4$
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


$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.c,5$




double exp ( double x ) {
double i = 0 , term , sum = 0 , faculty = 1 , power = 1 ;

do {
term = power / faculty ;
sum += term ;
power *= x ;
faculty *= i ;
} while ( fabs ( term ) >= 1e-9 ) ;

return sum ;
}

double log ( double x ) {
if ( x > 0 ) {
int n = 0 ;

if ( x > 1 ) {
while ( x > 1 ) {
x /= 2.7182818284590452353602874 ;
++ n ;
}
}
else if ( x < ( 1 / 2.7182818284590452353602874 ) ) {
while ( x < ( 1 / 2.7182818284590452353602874 ) ) {
x *= 2.7182818284590452353602874 ;
-- n ;
}
}

double i = 1 , term = 1 , sum = 0 , sign = 1 ,
x_minus_1 = x - 1 , power = x_minus_1 ;

do {
term = sign * power / i ;
sum += term ;
power *= x_minus_1 ;
sign *= -1.0 ;
} while ( fabs ( term ) >= 1e-9 ) ;

return sum + n ;
}
else {
errno = EDOM ;
return 0 ;
}
}



double log10 ( double x ) {
return log ( x ) / 2.3025850929940456840179914 ;
}

double pow ( double x , double y ) {
if ( x > 0 ) {
return exp ( y * log ( x ) ) ;
}
else if ( ( x == 0 ) && ( y > 0 ) ) {
return 0 ;
}
else if ( ( x < 0 ) && ( floor ( y ) == ceil ( y ) ) ) {
long long_y = ( long ) y ;

if ( ( long_y % 2 ) == 0 ) {
return exp ( y * log ( - x ) ) ;
}
else {
return - exp ( y * log ( - x ) ) ;
}
}
else {
errno = EDOM ;
return 0 ;
}
}

double ldexp ( double x , int n ) {
return x * pow ( 2 , n ) ;
}



static log2 ( double x ) {
return log ( x ) / 0.6931471805599453094172321 ;
}

double frexp ( double x , int * p ) {
if ( x != 0 ) {
int exponent = ( int ) ( log2 ( fabs ( x ) ) + 1 ) ;

if ( p != ( ( void * ) 0 ) ) {
* p = exponent ;
}

return ( x / pow ( 2 , exponent ) ) ;
}
else {
if ( p != ( ( void * ) 0 ) ) {
* p = 0 ;
}

return 0 ;
}
}

double sqrt ( double x ) {
if ( x >= 0 ) {
double root_i , root_i_plus_1 = 1 ;

do {
root_i = root_i_plus_1 ;
root_i_plus_1 = ( root_i + ( x / root_i ) ) / 2 ;
} while ( fabs ( root_i_plus_1 - root_i ) >= 1e-9 ) ;

return root_i_plus_1 ;
}
else {
errno = EDOM ;
return 0 ;
}
}

double modf ( double x , double * p ) {
double abs_x = fabs ( x ) ,
integral = ( double ) ( ( long ) abs_x ) ,
fractional = abs_x - integral ;

if ( p != ( ( void * ) 0 ) ) {
* p = ( x > 0 ) ? fractional : - fractional ;
}

return ( x > 0 ) ? integral : - integral ;
}

double fmod ( double x , double y ) {
if ( y != 0 ) {
double quotient = x / y ,
remainder = fabs ( quotient - ( ( double ) ( ( long ) quotient ) ) ) ;
return ( x > 0 ) ? remainder : - remainder ;
}
else {
errno = EDOM ;
return 0 ;
}
}

double sin ( double x ) {
if ( fabs ( x ) > ( 2 * 3.1415926535897932384626433 ) ) {
x = fmod ( x , 2 * 3.1415926535897932384626433 ) ;
}

double i = 0 , term , sum = 0 , sign = 1 , power = x , faculty = 1 ;

do {
term = sign * power / faculty ;
sum += term ;
sign *= -1 ;
power *= x * x ;
faculty *= ++ i * ++ i ;
} while ( fabs ( term ) >= 1e-9 ) ;

return sum ;
}

double cos ( double x ) {
if ( fabs ( x ) > ( 2 * 3.1415926535897932384626433 ) ) {
x = fmod ( x , 2 * 3.1415926535897932384626433 ) ;
}

double i = 0 , term , sum = 0 , sign = 1 , power = 1 , faculty = 1 ;

do {
term = sign * power / faculty ;
sum += term ;
sign *= -1 ;
power *= x * x ;
faculty *= ++ i * ++ i ;
} while ( fabs ( term ) >= 1e-9 ) ;

return sum ;
}

double tan ( double x ) {
double cos_x = cos ( x ) ;

if ( cos_x != 0 ) {
return ( sin ( x ) / cos_x ) ;
}
else {
errno = EDOM ;
return 0 ;
}
}

double asin ( double x ) {
if ( x == 1 ) {
return 3.1415926535897932384626433 / 2 ;
}
else if ( x == -1 ) {
return - 3.1415926535897932384626433 / 2 ;
}
else if ( fabs ( x ) < 1 ) {
return atan ( x / sqrt ( 1 - ( x * x ) ) ) ;
}
else {
errno = EDOM ;
return 0 ;
}
}

double acos ( double x ) {
if ( x == 0 ) {
return 3.1415926535897932384626433 / 2 ;
}
else if ( fabs ( x ) < 1 ) {
return atan ( x / sqrt ( 1 - ( x * x ) ) ) ;
}
else {
errno = EDOM ;
return 0 ;
}
}

double atan ( double x ) {
if ( x < 0 ) {
return - atan ( - x ) ;
}
else if ( x > 1 ) {
return 3.1415926535897932384626433 / 2 - atan ( 1 / x ) ;
}
else if ( x > 0.5 ) {
return 2 * atan ( x / ( 1 + sqrt ( 1 + ( x * x ) ) ) ) ;
}
else {
double term , sum = 0 , sign = 1 , denominator = 1 , product = x ;

do {
term = sign * product / denominator ;
sum += term ;
sign = - sign ;
product *= x * x ;
denominator += 2 ;
} while ( fabs ( term ) >= 1e-9 ) ;

return sum ;
}
}

double atan2 ( double x , double y ) {
if ( y != 0 ) {
return atan ( x / y ) ;
}
else {
errno = EDOM ;
return 0 ;
}
}

double sinh ( double x ) {
return ( exp ( x ) - exp ( - x ) ) / 2 ;
}

double cosh ( double x ) {
return ( exp ( x ) + exp ( - x ) ) / 2 ;
}

double tanh ( double x ) {
return sinh ( x ) / cosh ( x ) ;
}

double floor ( double x ) {
if ( x < 0 ) {
return - ceil ( - x ) ;
}

return ( double ) ( ( long ) x ) ;
}

double ceil ( double x ) {
if ( x < 0 ) {
return - floor ( - x ) ;
}

return ( double ) ( ( long ) ( x + 0.999999999999 ) ) ;
}

double round ( double x ) {
return ( double ) ( ( long ) ( ( x < 0 ) ? ( x - 0.5 ) : ( x + 0.5 ) ) ) ;
}

double fabs ( double x ) {
return ( x < 0 ) ? - x : x ;
}

