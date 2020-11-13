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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,11$



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdIOTest.c,1$

void stdio_test ( void ) {
{ int n = 0 ;
int * p = & n ;

printf ( "\074\045\151\076\040\074\045\151\076\040\074\045\154\151\076\040\074\045\154\151\076\040\074\045\165\076\040\074\045\154\165\076\012\012" , 123 , -123 , 123L , -123L , 123 , 123L ) ;

printf ( "\074\045\066\151\076\040\074\045\066\151\076\040\074\045\066\154\151\076\040\074\045\066\154\151\076\040\074\045\066\165\076\040\074\045\066\154\165\076\012" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "\074\045\053\066\151\076\040\074\045\053\066\151\076\040\074\045\053\066\154\151\076\040\074\045\053\066\154\151\076\040\074\045\053\066\165\076\040\074\045\053\066\154\165\076\012" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "\074\045\055\066\151\076\040\074\045\055\066\151\076\040\074\045\055\066\154\151\076\040\074\045\055\066\154\151\076\040\074\045\055\066\165\076\040\074\045\055\066\154\165\076\012" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "\074\045\053\055\066\151\076\040\074\045\053\055\066\151\076\040\074\045\053\055\066\154\151\076\040\074\045\053\055\066\154\151\076\040\074\045\053\055\066\165\076\040\074\045\053\055\066\154\165\076\012\012" , 123 , +- 123 , 123L , +- 123L , 123 , 123L ) ;

printf ( "\074\045\060\066\151\076\040\074\045\060\066\151\076\040\074\045\060\066\154\151\076\040\074\045\060\066\154\151\076\040\074\045\060\066\165\076\040\074\045\060\066\154\165\076\012" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "\074\045\053\060\066\151\076\040\074\045\053\060\066\151\076\040\074\045\053\060\066\154\151\076\040\074\045\053\060\066\154\151\076\040\074\045\053\060\066\165\076\040\074\045\053\060\066\154\165\076\012" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "\074\045\055\060\066\151\076\040\074\045\055\060\066\151\076\040\074\045\055\060\066\154\151\076\040\074\045\055\060\066\154\151\076\040\074\045\055\060\066\165\076\040\074\045\055\060\066\154\165\076\012" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "\074\045\053\055\060\066\151\076\040\074\045\053\055\060\066\151\076\040\074\045\053\055\060\066\154\151\076\040\074\045\053\055\060\066\154\151\076\040\074\045\053\055\060\066\165\076\040\074\045\053\055\060\066\154\165\076\012\012" , 123 , -123 , 123L , -123L , 123 , 123L ) ;

printf ( "\074\045\040\066\151\076\040\074\045\040\066\151\076\040\074\045\040\066\154\151\076\040\074\045\040\066\154\151\076\040\074\045\040\066\165\076\040\074\045\040\066\154\165\076\012" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "\074\045\053\040\066\151\076\040\074\045\053\040\066\151\076\040\074\045\053\040\066\154\151\076\040\074\045\053\040\066\154\151\076\040\074\045\053\040\066\165\076\040\074\045\053\040\066\154\165\076\012" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "\074\045\055\040\066\151\076\040\074\045\055\040\066\151\076\040\074\045\055\040\066\154\151\076\040\074\045\055\040\066\154\151\076\040\074\045\055\040\066\165\076\040\074\045\055\040\066\154\165\076\012" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "\074\045\053\055\040\066\151\076\040\074\045\053\055\040\066\151\076\040\074\045\053\055\040\066\154\151\076\040\074\045\053\055\040\066\154\151\076\040\074\045\053\055\040\066\165\076\040\074\045\053\055\040\066\154\165\076\012\012" , 123 , -123 , 123L , -123L , 123 , 123L ) ;

printf ( "\074\045\170\076\040\074\045\130\076\040\074\045\157\076\040\074\045\154\170\076\040\074\045\154\130\076\040\074\045\154\157\076\012" , 123 , 123 , 123 , 123L , 123L , 123L ) ;
printf ( "\074\045\043\170\076\040\074\045\043\130\076\040\074\045\043\157\076\040\074\045\043\154\170\076\040\074\045\043\154\130\076\040\074\045\043\154\157\076\012" , 123 , 123 , 123 , 123L , 123L , 123L ) ;
printf ( "\074\045\045\076\040\074\045\163\076\040\074\045\143\076\040\074\045\160\076\012\012" , "\110\145\154\154\157\054\040\127\157\162\154\144\041" , '\130' , p ) ;

printf ( "\074\045\146\076\040\074\045\145\076\040\074\045\105\076\040\074\045\147\076\040\074\045\107\076\012" , 123.456 , 123.456 , 123.456 , 123456.1 , 123456.1 ) ;
printf ( "\074\045\154\146\076\040\074\045\154\145\076\040\074\045\154\105\076\040\074\045\154\147\076\040\074\045\154\107\076\012" , 123.456L , 123.456L , 123.456L , 123456.1L , 123456.1L ) ;

printf ( "\074\045\043\146\076\040\074\045\043\145\076\040\074\045\043\105\076\040\074\045\043\147\076\040\074\045\043\107\076\012" , 123.456 , 123.456 , 123.456 , 123.456 , 123.456 ) ;
printf ( "\074\045\043\154\146\076\040\074\045\043\154\145\076\040\074\045\043\154\105\076\040\074\045\043\154\147\076\040\074\045\043\154\107\076\012" , 123.456L , 123.456L , 123.456L , 123.456L , 123.456L ) ;

printf ( "\074\045\066\056\063\146\076\040\074\045\066\056\063\145\076\040\074\045\066\056\063\105\076\040\074\045\066\056\063\147\076\040\074\045\066\056\063\107\076\012" , 123.456 , 123.456 , 123.456 , 123.456 , 123.456 ) ;
printf ( "\074\045\066\056\063\154\146\076\040\074\045\066\056\063\154\145\076\040\074\045\066\056\063\154\105\076\040\074\045\066\056\063\154\147\076\040\074\045\066\056\063\154\107\076\012\012" , 123.456L , 123.456L , 123.456L , 123.456L , 123.456L ) ;




printf ( "\074\045\146\076\040\074\045\145\076\040\074\045\105\076\040\074\045\147\076\040\074\045\107\076\012" , -123.456 , -123.456 , -123.456 , -0.000000123456 , -0.000000123456 ) ;
printf ( "\074\045\154\146\076\040\074\045\154\145\076\040\074\045\154\105\076\040\074\045\154\147\076\040\074\045\154\107\076\012" , -123.456L , -123.456L , -123.456L , -0.000000123456L , -0.000000123456L ) ;

printf ( "\074\045\043\146\076\040\074\045\043\145\076\040\074\045\043\105\076\040\074\045\043\147\076\040\074\045\043\107\076\012" , -123.456 , -123.456 , -123.456 , -123.456 , -123.456 ) ;
printf ( "\074\045\043\154\146\076\040\074\045\043\154\145\076\040\074\045\043\154\105\076\040\074\045\043\154\147\076\040\074\045\043\154\107\076\012" , -123.456L , -123.456L , -123.456L , -123.456L , -123.456L ) ;

printf ( "\074\045\066\056\063\146\076\040\074\045\066\056\063\145\076\040\074\045\066\056\063\105\076\040\074\045\066\056\063\147\076\040\074\045\066\056\063\107\076\012" , -123.456 , -123.456 , -123.456 , -123.456 , -123.456 ) ;
printf ( "\074\045\066\056\063\154\146\076\040\074\045\066\056\063\154\145\076\040\074\045\066\056\063\154\105\076\040\074\045\066\056\063\154\147\076\040\074\045\066\056\063\154\107\076\012\012" , -123.456L , -123.456L , -123.456L , -123.456L , -123.456L ) ;
}







{ char s [ 100 ];
printf ( "\120\154\145\141\163\145\040\167\162\151\164\145\040\164\150\145\040\160\141\164\164\145\162\156\163\040\133\141\142\143\135\072\040" ) ;
scanf ( "\045\133\141\142\143\135" , s ) ;
printf ( "\012\074\045\163\076\012" , s ) ;

printf ( "\120\154\145\141\163\145\040\167\162\151\164\145\040\164\150\145\040\160\141\164\164\145\162\156\163\040\133\136\141\142\143\135\072\040" ) ;
scanf ( "\045\133\136\141\142\143\135" , s ) ;
printf ( "\012\074\045\163\076" , s ) ;
}
}

