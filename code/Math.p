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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.c,0$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\errno.h,0$
   
   





























extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };


























extern int errno ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.c,1$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stddef.h,0$
   
   

          

    
    

    
    
    

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.c,2$
       
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
  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.c,3$
       


        
    

double exp ( double x ) {
double index = 1 , term , sum = 1 , faculty = 1 , power = x ;

do {
term = power / faculty ;
sum += term ;
power *= x ;
faculty *= ++ index ;
} while ( fabs ( term ) >= 1e-9 ) ;

return sum ;
}

double log ( double x ) {
if ( x > 0 ) {
int n = 0 ;

if ( x > 1 ) {
while ( x > 1 ) {
x /= 2.71 ;
++ n ;
}
}
else if ( x < ( 1 / 2.71 ) ) {
while ( x < ( 1 / 2.71 ) ) {
x *= 2.71 ;
-- n ;
}
}

{ double index = 1 , term , sum = 0 , sign = 1 ,
x_minus_1 = x - 1 , power = x_minus_1 ;

do {
term = sign * power / index ++;
sum += term ;
power *= x_minus_1 ;
sign *= -1.0 ;
} while ( fabs ( term ) >= 1e-9 ) ;

return sum + n ;
}
}
else {
errno = EDOM ;
return 0 ;
}
}

    


double log10 ( double x ) {
return log ( x ) / 2.30 ;
}

double pow ( double x , double y ) {
if ( x > 0 ) {
return exp ( y * log ( x ) ) ;
}
else if ( ( x == 0 ) && ( y == 0 ) ) {
return 1 ;
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
int exponent = ( int ) log2 ( fabs ( x ) ) ;

if ( pow ( 2 , exponent ) < x ) {
++ exponent ;
}

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
* p = ( x > 0 ) ? integral : - integral ;
}

return ( x > 0 ) ? fractional : - fractional ;
}

double fmod ( double x , double y ) {
if ( y != 0 ) {
double remainder = fabs ( x - ( y * ( ( int ) ( x / y ) ) ) ) ;
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

{ double index = 1 , term , sum = 0 , sign = 1 , power = x , faculty = 1 ;

do {
term = sign * power / faculty ;
sum += term ;
sign *= -1 ;
power *= x * x ;
faculty *= ++ index * ++ index ;
} while ( fabs ( term ) >= 1e-9 ) ;

return sum ;
}
}

double cos ( double x ) {
if ( fabs ( x ) > ( 2 * 3.1415926535897932384626433 ) ) {
x = fmod ( x , 2 * 3.1415926535897932384626433 ) ;
}

{ double index = 0 , term , sum = 0 , sign = 1 , power = 1 , faculty = 1 ;

do {
term = sign * power / faculty ;
sum += term ;
sign *= -1 ;
power *= x * x ;
faculty *= ++ index * ++ index ;
} while ( fabs ( term ) >= 1e-9 ) ;

return sum ;
}
}

double tan ( double x ) {
double cos_of_x = cos ( x ) ;

if ( cos_of_x != 0 ) {
return ( sin ( x ) / cos_of_x ) ;
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
else if ( x < 0 ) {
return - asin ( - x ) ;
}
else if ( x < 1 ) {
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
else if ( x < 0 ) {
return 3.1415926535897932384626433 - acos ( - x ) ;
}
else if ( x <= 1 ) {
return atan ( sqrt ( 1 - ( x * x ) ) / x ) ;
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
if ( y > 0 ) {
return atan ( x / y ) ;
}
else if ( ( x >= 0 ) && ( y < 0 ) ) {
return 3.1415926535897932384626433 + atan ( x / y ) ;
}
else if ( ( x < 0 ) && ( y < 0 ) ) {
return ( - 3.1415926535897932384626433 ) + atan ( x / y ) ;
}
else if ( ( x > 0 ) && ( y == 0 ) ) {
return 3.1415926535897932384626433 / 2 ;
}
else if ( ( x < 0 ) && ( y == 0 ) ) {
return ( - 3.1415926535897932384626433 ) / 2 ;
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
