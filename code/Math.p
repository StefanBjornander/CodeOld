$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.h,1$
   
   

    
    
    

extern double exp ( double value ) ;
extern double log ( double value ) ;
extern double log10 ( double value ) ;
extern int log10_int ( double value ) ;
extern double pow ( double base , double exponent ) ;
extern double pow_int ( double base , int exponent ) ;

extern double ldexp ( double value , int exponent ) ;
extern double frexp ( double value , int * exponent ) ;

extern double sin ( double value ) ;
extern double cos ( double value ) ;
extern double tan ( double value ) ;

extern double sinh ( double value ) ;
extern double cosh ( double value ) ;
extern double tanh ( double value ) ;

extern double sqrt ( double value ) ;

extern double asin ( double value ) ;
extern double acos ( double value ) ;
extern double atan ( double value ) ;
extern double atan2 ( double num , double denum ) ;

extern double floor ( double value ) ;
extern double ceil ( double value ) ;
extern double round ( double value ) ;
extern double fabs ( double value ) ;

extern double modf ( double value , double * integralPart ) ;
extern double fmod ( double num , double denum ) ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.c,0$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ErrNo.h,1$
   
   





























extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };


























extern int errno ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.c,1$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdIO.h,1$
   
   

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.h,1$
   
   

    
    
    

       
       
       
       
          
          

          
           

       
       
       

       
       
       

       

       
       
       
          

       
       
       
       

           
          

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdIO.h,3$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\CType.h,1$
   
   

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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdIO.h,4$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdArg.h,1$
   
   

     
                         
                    
               
      

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdIO.h,5$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdDef.h,1$
   
   

          

    
    

    
    
    

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdIO.h,6$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\File.h,1$
   
   

    
    

    

    

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


  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdIO.h,7$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Temp.h,1$
   
   

    
    

FILE * tmpfile ( void ) ;
char * tmpnam ( char name [ 4 ] ) ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdIO.h,8$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.h,1$
   
   

    
    

    

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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdIO.h,9$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.h,1$
   
   

    
    

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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdIO.h,10$
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.c,2$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdDef.h,1$
   
   

          

    
    

    
    
    

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.c,3$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdlIB.h,1$
   
   

          

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
  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.c,4$
       

double exp ( double x ) {
double n = 0 , faculty = 1 , power = 1 , term , sum = 0 ;

do {
term = power / faculty ;
sum += term ;
power *= x ;
faculty *= ++ n ;
} while ( fabs ( term ) >= 1e-9 ) ;

return sum ;
}

















double log ( double x_plus_1 ) {
if ( x_plus_1 > 0 ) {
int expo = 0 ;


while ( x_plus_1 < ( 1 / 2.7182818284590452353 ) ) {
x_plus_1 *= 2.7182818284590452353 ;
-- expo ;
}


while ( x_plus_1 > ( 2 / 2.7182818284590452353 ) ) {
x_plus_1 /= 2.7182818284590452353 ;
++ expo ;
}


double n = 1 , plusMinusOne = 1 , x = x_plus_1 - 1 ,
term , sum = 0 , power = x ;





do {
term = plusMinusOne * ( power / n ++ ) ;
sum += term ;
power *= x ;
plusMinusOne *= -1.0 ;

} while ( fabs ( term ) > 1e-9 ) ;

return ( sum + expo ) ;
}
else {
errno = EDOM ;
return 0 ;
}
}



































































































double log10 ( double x ) {
return 0.4342944820 * log ( x ) ;









}

int log10_int ( double x ) {
if ( x > 0 ) {
if ( x == 1 ) {
return 0 ;
}
else if ( x > 1 ) {
int count = 0 ;

while ( x > 1 ) {
x /= 10 ;
++ count ;
}

return ( count - 1 ) ;
}
else {
int count = 0 ;

while ( x < 1 ) {
x *= 10 ;
++ count ;
}

return - count ;
}
}
else {
errno = EDOM ;
return 0 ;
}
}

double pow_int ( double x , int y ) {
int minus = 0 ;

if ( y < 0 ) {
y = - y ;
minus = 1 ;
}

double product = 1 ;
int index ;
for ( index = 0 ; index < y ; ++ index ) {
product *= x ;
}

return minus ? ( 1 / product ) : product ;
}

double pow ( double x , double y ) {
if ( x > 0 ) {











return exp ( y * log ( x ) ) ;
}
else {

errno = EDOM ;

return 0 ;
}
}

double ldexp ( double x , int n ) {
return x * pow ( 2 , ( double ) n ) ;
}

double frexp ( double x , int * p ) {
if ( p != ( ( void * ) 0 ) ) {
if ( x == 0 ) {
* p = 0 ;
return 0 ;
}
else {

















* p = ( int ) ( log ( fabs ( x ) ) / log ( 2 ) ) + 1 ;



double quotient = fabs ( x ) / pow ( 2 , * p ) ;
return ( x < 0 ) ? - quotient : quotient ;
}
}
else {
if ( x == 0 ) {

return 0 ;
}
else {

int n = ( int ) ( log ( fabs ( x ) ) / log ( 2 ) ) + 1 ;
double a = fabs ( x ) / pow ( 2 , n ) ;
return ( x < 0 ) ? - a : a ;
}
}
}

double sin ( double x ) {
double n = 0 , plusMinusOne = 1 , faculty = 1 , power = x , term , sum = 0 ;

do {
term = plusMinusOne * ( power / faculty ) ;
sum += term ;
plusMinusOne *= -1 ;
power *= x * x ;
faculty *= ( n + 2 ) * ( n + 3 ) ;
n += 2 ;
} while ( fabs ( term ) >= 1e-9 ) ;

return sum ;
}

double cos ( double x ) {
double n = 0 , plusMinusOne = 1 , faculty = 1 , power = 1 , term , sum = 0 ;

do {
term = plusMinusOne * ( power / faculty ) ;
sum += term ;
plusMinusOne *= -1 ;
power *= x * x ;
faculty *= ( n + 1 ) * ( n + 2 ) ;
n += 2 ;
} while ( fabs ( term ) >= 1e-9 ) ;

return sum ;
}

double tan ( double x ) {
double cos_value = cos ( x ) ;

if ( cos_value != 0 ) {
return sin ( x ) / cos_value ;
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
double coh = cosh ( x ) ;

if ( coh != 0 ) {
double sh = sinh ( x ) ;
double y = sh / coh ;

return y ;
}
else {
errno = EDOM ;
return 0 ;
}
}

double sqrt ( double v ) {
if ( v >= 0 ) {
double x_nplus1 = 1 , x ;
int count = 0 ;

do {
x = x_nplus1 ;
x_nplus1 = ( x + ( v / x ) ) / 2 ;
} while ( ( ( ++ count ) < 1000 ) && ( fabs ( x_nplus1 - x ) >= 1e-9 ) ) ;

return x_nplus1 ;
}
else {
errno = EDOM ;
return 0 ;
}
}




double asin ( double x ) {
if ( fabs ( x ) <= 1 ) {
return atan2 ( x , sqrt ( ( 1 + x ) * ( 1 - x ) ) ) ;
}
else {
errno = EDOM ;
return 0 ;
}
}

double acos ( double x ) {
if ( fabs ( x ) <= 1 ) {
return atan2 ( sqrt ( ( 1 + x ) * ( 1 - x ) ) , x ) ;
}
else {
errno = EDOM ;
return 0 ;
}
}

double asin2 ( double v ) {


if ( v == 1 ) {
return 3.1415926535897932384 / 2 ;
}
else if ( v == -1 ) {
return - 3.1415926535897932384 / 2 ;
}
else if ( fabs ( v ) < 1 ) {
double x_nplus1 = 1 , x ;
int count = 0 ;

do {
x = x_nplus1 ;
x_nplus1 = x - tan ( x ) + ( v / cos ( x ) ) ;

} while ( ( ( ++ count ) < 1000 ) && ( fabs ( x_nplus1 - x ) >= 1e-9 ) ) ;

return x_nplus1 ;
}
else {
errno = EDOM ;
return 0 ;
}
}

double acos2 ( double v ) {
if ( v == 1 ) {
return 0 ;
}
else if ( fabs ( v ) <= 1 ) {
double x_nplus1 = 1 , x_n ;

do {
x_n = x_nplus1 ;
x_nplus1 = x_n + ( ( cos ( x_n ) - v ) / sin ( x_n ) ) ;

printf ( "x_n %f, x_nplus1 %f\n" , x_n , x_nplus1 ) ;
} while ( fabs ( x_nplus1 - x_n ) >= 1e-9 ) ;

return x_nplus1 ;
}
else {
errno = EDOM ;
return 0 ;
}
}

double square ( double x ) {
return x * x ;
}

double atan ( double x ) {
if ( x == 0 ) {
return 0 ;
}
else if ( x == 1 ) {
return 3.1415926535897932384 / 4 ;
}
else if ( x == -1 ) {
return - 3.1415926535897932384 / 4 ;
}
else {
double sign = 1 , denominator = 1 , product = x , term , sum = 0 ;
int count = 0 ;

do {
term = sign * product / denominator ;
sum += term ;
sign = - sign ;
product *= x * x ;
denominator += 2 ;

} while ( ( ( ++ count ) < 1000 ) && ( fabs ( term ) >= 1e-9 ) ) ;

return sum ;
}
}

double atanY ( double v ) {


if ( v == 0 ) {

return 0 ;
}
else if ( v == 1 ) {

return 3.1415926535897932384 / 4 ;
}
else if ( v == -1 ) {

return - 3.1415926535897932384 / 4 ;
}
else if ( fabs ( v ) < 0.5 ) {

int sign = 1 , denominator = 1 , count = 0 ;
double product = v , term , sum = 0 ;

do {
term = sign * product / denominator ;
sum += term ;
sign = - sign ;
product *= v * v ;
denominator += 2 ;

} while ( ( ( ++ count ) < 1000 ) && ( fabs ( term ) >= 1e-9 ) ) ;

return sum ;
}
else if ( fabs ( v ) < 1 ) {
printf ( "atan 5\n" ) ;
double x_nplus1 = 1 , x ;

do {
x = x_nplus1 ;
x_nplus1 = x - ( ( tan ( x ) - v ) * square ( cos ( 2 * x ) + 1 ) ) / 2 ;
printf ( "atan x %f x_nplus1 %f\n" , x , x_nplus1 ) ;
} while ( fabs ( x_nplus1 - x ) >= 1e-9 ) ;

printf ( "atan 7\n" ) ;
return x_nplus1 ;
}
else {
errno = EDOM ;
return 0 ;
}
}

double atanX ( double v ) {
if ( v == 0 ) {
return 0 ;
}
else if ( fabs ( v ) <= 1 ) {
double x_nplus1 = 1 , x ;

do {
x = x_nplus1 ;
x_nplus1 = x - ( ( tan ( x ) - v ) * square ( cos ( 2 * x ) + 1 ) ) / 2 ;
} while ( fabs ( x_nplus1 - x ) >= 1e-9 ) ;

return x_nplus1 ;
}
else {
errno = EDOM ;
return 0 ;
}
}

double atan2 ( double y , double x ) {
if ( x > 0 ) {
return atan ( y / x ) ;
}
else if ( x < 0 ) {
if ( y >= 0 ) {
return atan ( y / x ) + 3.1415926535897932384 ;
}
else {
return atan ( y / x ) - 3.1415926535897932384 ;
}
}
else {
if ( y > 0 ) {
return ( 3.1415926535897932384 / 2 ) ;
}
else if ( y < 0 ) {
return ( - 3.1415926535897932384 / 2 ) ;
}
else {
errno = EDOM ;
return 0 ;
}
}
}

double atan2x ( double num , double denum ) {
if ( denum > 0 ) {

double y = atan ( num / denum ) ;
printf ( "2\n" ) ;
return y ;
}
else if ( ( num >= 0 ) && ( denum < 0 ) ) {
printf ( "2\n" ) ;
return 3.1415926535897932384 + atan ( num / denum ) ;
}
else if ( ( num < 0 ) && ( denum < 0 ) ) {
printf ( "3\n" ) ;
return ( - 3.1415926535897932384 ) + atan ( num / denum ) ;
}
else if ( ( num > 0 ) && ( denum == 0 ) ) {
printf ( "4\n" ) ;
return 3.1415926535897932384 / 2 ;
}
else if ( ( num < 0 ) && ( denum == 0 ) ) {
printf ( "5\n" ) ;
return ( - 3.1415926535897932384 ) / 2 ;
}
else {
printf ( "6\n" ) ;
errno = EDOM ;
return 0 ;
}
}

double floor ( double x ) {
if ( x < 0 ) {
return - ceil ( - x ) ;
}

return ( double ) ( long ) x ;
}

double ceil ( double x ) {
if ( x < 0 ) {
return - floor ( - x ) ;
}

return ( double ) ( long ) ( x + 0.999999999999 ) ;
}

double round ( double x ) {
return ( double ) ( long ) ( ( x < 0 ) ? ( x - 0.5 ) : ( x + 0.5 ) ) ;
}

double fabs ( double x ) {
return ( x < 0 ) ? - x : x ;
}

double modf ( double x , double * p ) {
double integral = ( double ) ( long ) fabs ( x ) ;

if ( p != ( ( void * ) 0 ) ) {
* p = ( x > 0 ) ? ( fabs ( x ) - integral ) : - ( fabs ( x ) - integral ) ;
}

return ( x > 0 ) ? integral : - integral ;
}

double fmod ( double x , double y ) {
if ( y != 0 ) {
double quotient = x / y ;
double remainder = fabs ( quotient - ( double ) ( long ) quotient ) ;
return ( x > 0 ) ? remainder : - remainder ;
}
else {
errno = EDOM ;
return 0 ;
}
}
