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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\MathTest.c,1$
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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\MathTest.c,2$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ErrNo.h,1$































extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };


























extern int errno ;



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\MathTest.c,3$
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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\MathTest.c,4$








void math_test_1 ( double x ) ;
void math_test_2 ( double x , double y ) ;
void math_test_int ( double x , int i ) ;

void math_test_1x ( ) {
math_test_1 ( -2 * 3.1415926535897932384626433 ) ;
math_test_1 ( - 3.1415926535897932384626433 ) ;
math_test_1 ( - 3.1415926535897932384626433 / 2 ) ;
math_test_1 ( -1 ) ;
math_test_1 ( 0 ) ;
math_test_1 ( 1 ) ;
math_test_1 ( 3.1415926535897932384626433 / 2 ) ;
math_test_1 ( 3.1415926535897932384626433 ) ;
math_test_1 ( 2 * 3.1415926535897932384626433 ) ;
}

void acos_test ( double x ) {
{ printf ( "\040\040\141\143\157\163\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , acos ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;
}

void atan_test ( double x ) {
{ printf ( "\040\040\141\164\141\156\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , atan ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;
}

void main_math ( void ) {
math_test_1 ( 1.000001 ) ;
math_test_1 ( 1.0 ) ;
math_test_1 ( 0.999999 ) ;

math_test_1 ( 0.000001 ) ;
math_test_1 ( 0 ) ;
math_test_1 ( -0.000001 ) ;

math_test_1 ( -0.999999 ) ;
math_test_1 ( -1.0 ) ;
math_test_1 ( -1.000001 ) ;

math_test_1 ( 2 * 3.1415926535897932384626433 ) ;
math_test_1 ( 3.1415926535897932384626433 ) ;
math_test_1 ( 3.1415926535897932384626433 / 2 ) ;

math_test_1 ( - 3.1415926535897932384626433 / 2 ) ;
math_test_1 ( - 3.1415926535897932384626433 ) ;
math_test_1 ( -2 * 3.1415926535897932384626433 ) ;

math_test_2 ( 1.0 , 2.0 ) ;
math_test_2 ( 3.0 , 4.0 ) ;
math_test_2 ( 0 , 2.0 ) ;
math_test_2 ( 0 , -2.0 ) ;
math_test_2 ( 1 , 2.0 ) ;
math_test_2 ( 1 , -2.0 ) ;
math_test_2 ( 0 , 0 ) ;
math_test_2 ( 2 , 0 ) ;
math_test_2 ( -2 , 0 ) ;
math_test_2 ( -1.0 , -1.0 ) ;
math_test_2 ( -2.0 , -4.0 ) ;
}

void math_test_1 ( double x ) {
printf ( "\074\045\146\076\012" , x ) ;
{ printf ( "\040\040\163\151\156\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , sin ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;
{ printf ( "\040\040\143\157\163\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , cos ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;
{ printf ( "\040\040\164\141\156\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , tan ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;

{ printf ( "\040\040\141\163\151\156\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , asin ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;
{ printf ( "\040\040\141\143\157\163\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , acos ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;
{ printf ( "\040\040\141\164\141\156\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , atan ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;

{ printf ( "\040\040\145\170\160\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , exp ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;
{ printf ( "\040\040\154\157\147\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , log ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;
{ printf ( "\040\040\154\157\147\061\060\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , log10 ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;

{ printf ( "\040\040\163\151\156\150\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , sinh ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;
{ printf ( "\040\040\143\157\163\150\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , cosh ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;
{ printf ( "\040\040\164\141\156\150\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , tanh ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;

{ printf ( "\040\040\163\161\162\164\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , sqrt ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;
{ printf ( "\040\040\146\154\157\157\162\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , floor ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;
{ printf ( "\040\040\143\145\151\154\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , ceil ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;
{ printf ( "\040\040\146\141\142\163\050\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , fabs ( x ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ; } ;

{ int j = 0 ;
double z = frexp ( x , & j ) ;
printf ( "\146\162\145\170\160\040\050\172\054\040\152\051\040\075\040\050\045\146\054\040\045\151\051\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\012" , z , j , errno , strerror ( errno ) ) ;
if ( errno != NO_ERROR ) { perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145\072" ) ; errno = 0 ; }
}

{ double w = 0 ;
double z = modf ( x , & w ) ;
printf ( "\155\157\144\146\040\050\172\054\040\167\051\040\075\040\050\045\146\054\040\045\146\051\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\012" , z , w , errno , strerror ( errno ) ) ;
if ( errno != NO_ERROR ) { perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145\072" ) ; errno = 0 ; }
}

printf ( "\012" ) ;
}

void math_test_2 ( double x , double y ) {
{ printf ( "\146\155\157\144\050\045\146\054\040\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , y , fmod ( x , y ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ;} ;
{ printf ( "\141\164\141\156\062\050\045\146\054\040\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , y , atan2 ( x , y ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ;} ;
{ printf ( "\160\157\167\050\045\146\054\040\045\146\051\040\075\040\045\146\054\040\145\162\162\156\157\040\075\040\045\151\040\074\045\163\076\054\040" , x , y , pow ( x , y ) , errno , strerror ( errno ) ) ; perror ( "\105\162\162\157\162\040\155\145\163\163\141\147\145" ) ; errno = 0 ;} ;
printf ( "\012" ) ;
printf ( "\154\144\145\170\160\050\045\146\054\040\045\151\051\040\075\040\045\146\012\012" , x , ( int ) y , ldexp ( x , y ) ) ;
}

