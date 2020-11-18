$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stddef.h,0$
   
   

          

    
    

    
    
    

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c,0$
       
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
  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c,1$
       
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
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c,2$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\math.h,0$
   
   


    

    


       
       
       

          
          
           

       
           
          

       
       
       

       
       
       

       
       
       
          

       
       
       
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c,3$
       
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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c,4$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ErrNo.h,0$
   
   





























extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };


























extern int errno ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c,5$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,0$
   
   

   
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,0$
   
   

       
       
       
       
       
       
       
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,4$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdlib.h,0$
   
   

          

       
       
       

           
              
               

     
       

         
        

     
      

         
      

    
    

      
      

       
           
          
       

            
               
             
     
               

      
      

  
    
  

         

  
    
  

         
  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,5$
       
              
     
            
  
      
  

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c,6$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Limits.h,0$
   
   

   
    

    
    
    

    
    
    

    
    
    

    
    
    
  

   
    

    
    
    

    
    
    

    
    
    

    
    

    
  

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c,7$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Time.h,0$
   
   

    
     
    

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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Main.c,8$
       

void math_test_1 ( double x ) ;
void file_test ( char * , char * ) ;
void signal_test ( void ) ;
void time_test ( void ) ;
void assert_test ( void ) ;
void assert_test2 ( int n ) ;
void malloc_test ( void ) ;
void print_test ( void ) ;
void limits_test ( void ) ;
void float_test ( void ) ;
void string_test ( void ) ;
void setjmp_test ( double x ) ;
void stdio_test ( void ) ;
void stdlib_test ( void ) ;
void strtol_test ( void ) ;
void strtoul_test ( void ) ;
void heap_test ( void ) ;
void stack_test ( void ) ;
void character_test ( char c ) ;
void locale_test ( void ) ;

void main_math ( void ) ;
void math_test_2 ( double x , double y ) ;
void acos_test ( double x ) ;
void atan_test ( double x ) ;

struct A ;
struct B ;

struct A {
struct A * p ;
struct B * q ;
};

struct B {
struct A * p ;
struct B * q ;
};

struct A a ;

void main2 ( void ) {
struct C {
struct C * p ;
struct B * q ;
};



a . p = ( ( void * ) 0 ) ;
a . q = ( ( void * ) 0 ) ;


file_test ( "test1.txt" , "test2.txt" ) ;










































}

void scanString ( char * string , int precision ) ;

void main33 ( ) {
char s [ 20 ] = "Hello" , t [ 20 ] = "World" ;
printf ( "<%s> <%s>\n" , s , t ) ;






}

void main34 ( ) {
g_outDevice = stdout ;
printChar ( 'X' ) ;
printChar ( '\n' ) ;
}

void mainc ( ) {
char c ;
printf ( "Please write a character: " ) ;
scanf ( "%c" , & c ) ;
printf ( "You wrote the character '%c'.\n" , c ) ;
}

void maini ( ) {
int i ;
printf ( "Please write an integer: " ) ;
scanf ( "%i" , & i ) ;
printf ( "You wrote the integer %i.\n" , i ) ;
}

void mains ( ) {
char s [ 20 ];
printf ( "Please write a string: " ) ;
scanf ( "%s" , s ) ;
printf ( "You wrote the string \"%s\".\n" , s ) ;
}

void maint ( ) {
limits_test ( ) ;
time_test ( ) ;
}

void mainY ( ) {
malloc_test ( ) ;
setjmp_test ( 10 ) ;
setjmp_test ( 0 ) ;
}










void mainX ( int argc , char * argv [] ) {
int index ;
for ( index = 129 ; index < 255 ; ++ index ) {
char c = * ( ( char * ) index ) ;
printf ( "%i: %i <%c>\n" , index , ( int ) c , c ) ;
}

printf ( "\nargc: %i\n" , argc ) ;

for ( index = 0 ; index < argc ; ++ index ) {
printf ( "%i: <%s>\n" , index , argv [ index ] ) ;
}

printf ( "\n" ) ;

for ( index = 0 ; argv [ index ] != ( ( void * ) 0 ) ; ++ index ) {
printf ( "%i: <%s>\n" , index , argv [ index ] ) ;
}
}

void mainm ( int argc , char * argv [] ) {


main_math ( ) ;
}

void maina ( ) {
if ( ! ( 1 < 2 ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "1 < 2" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\Main.c" , 196 ) ; abort ( ) ; } ;
if ( ! ( 1 > 2 ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "1 > 2" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\Main.c" , 197 ) ; abort ( ) ; } ;
}

void main ( ) {







time_test ( ) ;








}

void mainX4 ( int argc , char * argv [] ) {
















extern enum { ZERO , ONE };
static enum { ZERO = 0 , ONE = 1 };

extern enum { TWO , THREE };
static enum { TWO = 2 , THREE = 3 };

printf ( "argc: %i\n" , argc ) ;

{ int index ;
for ( index = 0 ; index < argc ; ++ index ) {
printf ( "%i: <%s>\n" , index , argv [ index ] ) ;
}
printf ( "\n" ) ;

for ( index = 0 ; argv [ index ] != ( ( void * ) 0 ) ; ++ index ) {
printf ( "%i: <%s>\n" , index , argv [ index ] ) ;
}
printf ( "\n" ) ;
}

{ int i ;
double d ;
char c , s [ 20 ];
mktime ( ( ( void * ) 0 ) ) ;
printf ( "Hello!\n" ) ;
printf ( "Please write a character, a string, an integer, and a double: " ) ;
scanf ( "%c %s %i %lf" , & c , s , & i , & d ) ;
printf ( "You wrote the character '%c', the string \"%s\", the integer %i, and the double %f.\n" , c , s , i , d ) ;
}
}

void main3 ( ) {
double x ;
printf ( ": " ) ;
scanf ( "%lf" , & x ) ;
printf ( "<%f>" , x ) ;
}

void mains2 ( void ) {
setjmp_test ( 3.14 ) ;
printf ( "---------------------------------------------\n" ) ;

setjmp_test ( 0 ) ;
printf ( "---------------------------------------------\n" ) ;

setjmp_test ( 2.71 ) ;
printf ( "---------------------------------------------\n" ) ;

setjmp_test ( 0 ) ;
}

void char_main ( void ) {
character_test ( 'a' ) ;
character_test ( 'B' ) ;
character_test ( '1' ) ;
character_test ( '.' ) ;
character_test ( '\n' ) ;
character_test ( 'f' ) ;
character_test ( 'g' ) ;
}

   
     
                  
               
                             



    
  
  
      
    
    
               
            


     
        
      


        
      


        
      


        
      


        
      


        
      


        
      


        
      


        
      


        
      



    
  
  
      
    
    
               
            


   
   
   

             

  

     
   
     
   
  
   
  

  

    
   
    
   
  
   
  

    
    
      
   



    
                    

         

         

      



















        
         
        
                           

     
         
     
     
     
     
     
      
     
     
     
     
     
      
     



      
         
         



     
      


     
    
    
    
    
    
    
    
    
    



















































































    
      
  
  
    
               
    
            









































































































    












































   


























































































         












      


           








      

  
             
           


    
                
           


































  

void assert_test ( void ) {
int n = 0 ;
printf ( "Please write a number (not 6 or 7): " ) ;
scanf ( "%i" , & n ) ;
if ( ! ( n != 6 ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "n != 6" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\Main.c" , 877 ) ; abort ( ) ; } ;
assert_test2 ( n ) ;
}

void assert_test2 ( int n ) {
if ( ! ( n != 7 ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "n != 7" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\Main.c" , 882 ) ; abort ( ) ; } ;
}
















