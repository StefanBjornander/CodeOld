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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLibTest.c,0$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdIO.h,1$
   
   

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
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLibTest.c,1$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLib.h,1$
   
   

          

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
  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLibTest.c,2$
       








int compare ( const void * valuePtr1 , const void * valuePtr2 ) {
int intValue1 = * ( ( int * ) valuePtr1 ) , intValue2 = * ( ( int * ) valuePtr2 ) ;
return ( intValue1 < intValue2 ) ? -1 : ( ( intValue1 == intValue2 ) ? 0 : 1 ) ;
}

int reverse_compare ( const void * valuePtr1 , const void * valuePtr2 ) {
int intValue1 = * ( ( int * ) valuePtr1 ) , intValue2 = * ( ( int * ) valuePtr2 ) ;
return ( intValue1 < intValue2 ) ? 1 : ( ( intValue1 == intValue2 ) ? 0 : -1 ) ;
}

void print_div ( div_t d ) {
printf ( "div_t quot %i rem %i\n" , d . quot , d . rem ) ;
}

void print_ldiv ( ldiv_t ld ) {
printf ( "ldiv_t quot %li rem %li\n" , ld . quot , ld . rem ) ;
}

void exit_handle1x ( void ) {
printf ( "exit1\n" ) ;
}

void exit_handle2x ( void ) {
printf ( "exit2\n" ) ;
}

void exit_handle3x ( void ) {
printf ( "exit3\n" ) ;
}

void stdlib_test ( void ) {
{ char s [ 100 ] , t [ 100 ] , w [ 100 ];
char * p = s , * q = t , * r = w ;

double x = strtod ( "123.456abc" , & p ) , y = atof ( "123.456" ) ;
long l = strtol ( "123abc" , & q , 8 ) ;
unsigned long ul = strtoul ( "123abc" , & r , 8 ) ;

printf ( "atof(\"123.456\") = %f\n" , y ) ;
printf ( "atoi(\"123\") = %i\n" , atoi ( "123" ) ) ;
printf ( "atol(\"123\") = %li\n\n" , atol ( "123" ) ) ;

printf ( "strtod(\"123.456abc\", &endp) = (%f, %s)\n" , x , p ) ;
printf ( "strtol(\"123abc\", &endp) = (%li, %s)\n" , l , q ) ;
printf ( "strtoul(\"123abc\", &endp) = (%lu, %s)\n" , ul , r ) ;
}

printf ( "\ngetenv(\"path\") = %s\n" , getenv ( "path" ) ) ;
printf ( "system(\"dir\")\n" ) ;
system ( "dir" ) ;

printf ( "abs(-3) = %i, abs(3) = %i, labs(-3l) = %li, labs(3l) = %li\n" ,
abs ( -3 ) , abs ( 3 ) , labs ( -3l ) , labs ( 3l ) ) ;

{ div_t i = div ( 10 , 3 ) ;
printf ( "div_t(10, 3) = (%i, %i),\n" , i . quot , i . rem ) ;
print_div ( i ) ;
}

{ ldiv_t li = ldiv ( 10 , 3 ) ;
printf ( "ldiv_t(10, 3) = (%li, %li)\n" , li . quot , li . rem ) ;
print_ldiv ( li ) ;
}

{ int list [] = { 3 , 4 , 2 , 1 , };
int size = sizeof list / sizeof list [ 0 ];

{ int index ;
printf ( "\nA List 1: " ) ;
for ( index = 0 ; index < size ; ++ index ) {

printf ( "%i " , * ( index + list ) ) ;
}
}

{ int index ;
printf ( "\nB List 2: " ) ;
qsort ( list , size , sizeof list [ 0 ] , reverse_compare ) ;
for ( index = 0 ; index < size ; ++ index ) {
printf ( "%i " , * ( list + index ) ) ;
}
}

{ int index ;
printf ( "\nC List 3: " ) ;
qsort ( list , size , sizeof list [ 0 ] , compare ) ;
for ( index = 0 ; index < size ; ++ index ) {
printf ( "%i " , * ( list + index ) ) ;
}
}

int key ;
printf ( "\n\nSearch:\n" ) ;
for ( key = 0 ; key < 6 ; ++ key ) {
int * p = ( int * ) bsearch ( & key , list , size , sizeof list [ 0 ] , compare ) ;
int index = ( p != ( ( void * ) 0 ) ) ? ( p - list ) : -1 ;
printf ( "  (%i, %i)\n" , key , index ) ;
}

printf ( "\n" ) ;
}



















}
