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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\MathTest.c,0$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,0$
   
   

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\math.h,0$
   
   

    
    




       
       
       

          
          
           

       
           
          

       
       
       

       
       
       

       
       
       
          

       
       
       
       

  

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
typedef unsigned long ULONG ;

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
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\MathTest.c,1$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ErrNo.h,0$
   
   





























extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };


























extern int errno ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\MathTest.c,2$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\String.h,0$
   
   

    

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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\MathTest.c,3$
       

                             
                               

void math_test_1 ( double x ) ;
void math_test_2 ( double x , double y ) ;
void math_test_int ( double x , int i ) ;

void math_test_1x ( ) {
math_test_1 ( -2 * 3.14 ) ;
math_test_1 ( - 3.14 ) ;
math_test_1 ( - 3.14 / 2 ) ;
math_test_1 ( -1 ) ;
math_test_1 ( 0 ) ;
math_test_1 ( 1 ) ;
math_test_1 ( 3.14 / 2 ) ;
math_test_1 ( 3.14 ) ;
math_test_1 ( 2 * 3.14 ) ;
}

void acos_test ( double x ) {
{ printf ( "  acos(%f) = %f, errno = %i\n" , x , acos ( x ) , errno ) ; errno = 0 ; } ;
}

void atan_test ( double x ) {
{ printf ( "  atan(%f) = %f, errno = %i\n" , x , atan ( x ) , errno ) ; errno = 0 ; } ;
}

void math_test ( void ) {
math_test_1 ( 0.333333333 ) ;
math_test_1 ( 0.75 ) ;
math_test_1 ( 1.000010 ) ;
math_test_1 ( 1.0 ) ;
math_test_1 ( 0.999999 ) ;

math_test_1 ( 0.000010 ) ;
math_test_1 ( 0 ) ;
math_test_1 ( -0.000010 ) ;

math_test_1 ( -0.999999 ) ;
math_test_1 ( -1.0 ) ;
math_test_1 ( -1.000010 ) ;

math_test_1 ( 2 * 3.14 ) ;
math_test_1 ( 3.14 ) ;
math_test_1 ( 3.14 / 2 ) ;

math_test_1 ( - 3.14 / 2 ) ;
math_test_1 ( - 3.14 ) ;
math_test_1 ( -2 * 3.14 ) ;

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
printf ( "<%f>\n" , x ) ;
{ printf ( "  sin(%f) = %f, errno = %i\n" , x , sin ( x ) , errno ) ; errno = 0 ; } ;
{ printf ( "  cos(%f) = %f, errno = %i\n" , x , cos ( x ) , errno ) ; errno = 0 ; } ;
{ printf ( "  tan(%f) = %f, errno = %i\n" , x , tan ( x ) , errno ) ; errno = 0 ; } ;

{ printf ( "  asin(%f) = %f, errno = %i\n" , x , asin ( x ) , errno ) ; errno = 0 ; } ;
{ printf ( "  acos(%f) = %f, errno = %i\n" , x , acos ( x ) , errno ) ; errno = 0 ; } ;
{ printf ( "  atan(%f) = %f, errno = %i\n" , x , atan ( x ) , errno ) ; errno = 0 ; } ;

{ printf ( "  exp(%f) = %f, errno = %i\n" , x , exp ( x ) , errno ) ; errno = 0 ; } ;
{ printf ( "  log(%f) = %f, errno = %i\n" , x , log ( x ) , errno ) ; errno = 0 ; } ;
{ printf ( "  log10(%f) = %f, errno = %i\n" , x , log10 ( x ) , errno ) ; errno = 0 ; } ;

{ printf ( "  sinh(%f) = %f, errno = %i\n" , x , sinh ( x ) , errno ) ; errno = 0 ; } ;
{ printf ( "  cosh(%f) = %f, errno = %i\n" , x , cosh ( x ) , errno ) ; errno = 0 ; } ;
{ printf ( "  tanh(%f) = %f, errno = %i\n" , x , tanh ( x ) , errno ) ; errno = 0 ; } ;

{ printf ( "  sqrt(%f) = %f, errno = %i\n" , x , sqrt ( x ) , errno ) ; errno = 0 ; } ;
{ printf ( "  floor(%f) = %f, errno = %i\n" , x , floor ( x ) , errno ) ; errno = 0 ; } ;
{ printf ( "  ceil(%f) = %f, errno = %i\n" , x , ceil ( x ) , errno ) ; errno = 0 ; } ;
{ printf ( "  fabs(%f) = %f, errno = %i\n" , x , fabs ( x ) , errno ) ; errno = 0 ; } ;

{ int j = 0 ;
double z = frexp ( x , & j ) ;
printf ( "frexp (%f, p) = (%f, %i), errno = %i\n" , x , z , j , errno ) ;
if ( errno != 0 ) { perror ( "Error message:" ) ; errno = 0 ; }
}

{ double w = 0 ;
double z = modf ( x , & w ) ;
printf ( "modf (%f, p) = (%f, %f), errno = %i\n" , x , z , w , errno ) ;
if ( errno != 0 ) { perror ( "Error message:" ) ; errno = 0 ; }
}

printf ( "\n" ) ;
}

void math_test_2 ( double x , double y ) {
{ printf ( "fmod(%f, %f) = %f, errno = %i\n" , x , y , fmod ( x , y ) , errno ) ; errno = 0 ;} ;
{ printf ( "atan2(%f, %f) = %f, errno = %i\n" , x , y , atan2 ( x , y ) , errno ) ; errno = 0 ;} ;
{ printf ( "pow(%f, %f) = %f, errno = %i\n" , x , y , pow ( x , y ) , errno ) ; errno = 0 ;} ;
printf ( "\n" ) ;
printf ( "ldexp(%f, %i) = %f\n\n" , x , ( int ) y , ldexp ( x , ( int ) y ) ) ;
}

