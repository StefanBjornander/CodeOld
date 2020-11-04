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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLibTest.c,1$
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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLibTest.c,2$
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


$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLibTest.c,3$








int compare ( const void * valuePtr1 , const void * valuePtr2 ) {
int intValue1 = * ( ( int * ) valuePtr1 ) , intValue2 = * ( ( int * ) valuePtr2 ) ;
return ( intValue1 < intValue2 ) ? -1 : ( ( intValue1 == intValue2 ) ? 0 : 1 ) ;
}

int reverse_compare ( const void * valuePtr1 , const void * valuePtr2 ) {
int intValue1 = * ( ( int * ) valuePtr1 ) , intValue2 = * ( ( int * ) valuePtr2 ) ;
return ( intValue1 < intValue2 ) ? 1 : ( ( intValue1 == intValue2 ) ? 0 : -1 ) ;
}

void print_div ( div_t d ) {
printf ( "\144\151\166\137\164\040\161\165\157\164\040\045\151\040\162\145\155\040\045\151\012" , d . quot , d . rem ) ;
}

void print_ldiv ( ldiv_t ld ) {
printf ( "\154\144\151\166\137\164\040\161\165\157\164\040\045\154\151\040\162\145\155\040\045\154\151\012" , ld . quot , ld . rem ) ;
}

void exit_handle1x ( void ) {
printf ( "\145\170\151\164\061\012" ) ;
}

void exit_handle2x ( void ) {
printf ( "\145\170\151\164\062\012" ) ;
}

void exit_handle3x ( void ) {
printf ( "\145\170\151\164\063\012" ) ;
}

void stdlib_test ( void ) {
{ char s [ 100 ] , t [ 100 ] , w [ 100 ];
char * p = s , * q = t , * r = w ;

double x = strtod ( "\061\062\063\056\064\065\066\141\142\143" , & p ) , y = atof ( "\061\062\063\056\064\065\066" ) ;
long l = strtol ( "\061\062\063\141\142\143" , & q , 8 ) ;
unsigned long ul = strtoul ( "\061\062\063\141\142\143" , & r , 8 ) ;

printf ( "\141\164\157\146\050\042\061\062\063\056\064\065\066\042\051\040\075\040\045\146\012" , y ) ;
printf ( "\141\164\157\151\050\042\061\062\063\042\051\040\075\040\045\151\012" , atoi ( "\061\062\063" ) ) ;
printf ( "\141\164\157\154\050\042\061\062\063\042\051\040\075\040\045\154\151\012\012" , atol ( "\061\062\063" ) ) ;

printf ( "\163\164\162\164\157\144\050\042\061\062\063\056\064\065\066\141\142\143\042\054\040\046\145\156\144\160\051\040\075\040\050\045\146\054\040\045\163\051\012" , x , p ) ;
printf ( "\163\164\162\164\157\154\050\042\061\062\063\141\142\143\042\054\040\046\145\156\144\160\051\040\075\040\050\045\154\151\054\040\045\163\051\012" , l , q ) ;
printf ( "\163\164\162\164\157\165\154\050\042\061\062\063\141\142\143\042\054\040\046\145\156\144\160\051\040\075\040\050\045\154\165\054\040\045\163\051\012" , ul , r ) ;
}

printf ( "\012\147\145\164\145\156\166\050\042\160\141\164\150\042\051\040\075\040\045\163\012" , getenv ( "\160\141\164\150" ) ) ;
printf ( "\163\171\163\164\145\155\050\042\144\151\162\042\051\012" ) ;
system ( "\144\151\162" ) ;

printf ( "\141\142\163\050\055\063\051\040\075\040\045\151\054\040\141\142\163\050\063\051\040\075\040\045\151\054\040\154\141\142\163\050\055\063\154\051\040\075\040\045\154\151\054\040\154\141\142\163\050\063\154\051\040\075\040\045\154\151\012" ,
abs ( -3 ) , abs ( 3 ) , labs ( -3l ) , labs ( 3l ) ) ;

{ div_t i = div ( 10 , 3 ) ;
printf ( "\144\151\166\137\164\050\061\060\054\040\063\051\040\075\040\050\045\151\054\040\045\151\051\054\012" , i . quot , i . rem ) ;
print_div ( i ) ;
}

{ ldiv_t li = ldiv ( 10 , 3 ) ;
printf ( "\154\144\151\166\137\164\050\061\060\054\040\063\051\040\075\040\050\045\154\151\054\040\045\154\151\051\012" , li . quot , li . rem ) ;
print_ldiv ( li ) ;
}

{ int list [] = { 3 , 4 , 2 , 1 , };
int size = sizeof list / sizeof list [ 0 ];

{ int index ;
printf ( "\012\101\040\114\151\163\164\040\061\072\040" ) ;
for ( index = 0 ; index < size ; ++ index ) {

printf ( "\045\151\040" , * ( index + list ) ) ;
}
}

{ int index ;
printf ( "\012\102\040\114\151\163\164\040\062\072\040" ) ;
qsort ( list , size , sizeof list [ 0 ] , reverse_compare ) ;
for ( index = 0 ; index < size ; ++ index ) {
printf ( "\045\151\040" , * ( list + index ) ) ;
}
}

{ int index ;
printf ( "\012\103\040\114\151\163\164\040\063\072\040" ) ;
qsort ( list , size , sizeof list [ 0 ] , compare ) ;
for ( index = 0 ; index < size ; ++ index ) {
printf ( "\045\151\040" , * ( list + index ) ) ;
}
}

int key ;
printf ( "\012\012\123\145\141\162\143\150\072\012" ) ;
for ( key = 0 ; key < 6 ; ++ key ) {
int * p = ( int * ) bsearch ( & key , list , size , sizeof list [ 0 ] , compare ) ;
int index = ( p != ( ( void * ) 0 ) ) ? ( p - list ) : -1 ;
printf ( "\040\040\050\045\151\054\040\045\151\051\012" , key , index ) ;
}

printf ( "\012" ) ;
}



















}

