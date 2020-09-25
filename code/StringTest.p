$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ErrNo.h,1$
   
   





























extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };


























extern int errno ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StringTest.c,0$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,1$
   
   

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\math.h,1$
   
   

    
    
    

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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,3$
       
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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,4$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdarg.h,1$
   
   

     
                         
                    
               
      

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,5$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stddef.h,1$
   
   

          

    
    

    
    
    

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,6$
       
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


  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,7$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\temp.h,1$
   
   

    
    

FILE * tmpfile ( void ) ;
char * tmpnam ( char name [ 4 ] ) ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,8$
       
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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,9$
       
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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,10$
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StringTest.c,1$
       
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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StringTest.c,2$
       

    

void string_test ( void ) {
int i ;
char * s = "Hello, World!" , t [ 100 ] , u [ 100 ] , * p ;
printf ( "strlen(\"%s\") = %i\n" , s , strlen ( s ) ) ;

strcpy ( t , s ) ;
strncpy ( u , s , 5 ) ;
u [ 5 ] = '\0' ;
printf ( "t = \"%s\", u = \"%s\"\n" , t , u ) ;

strcat ( t , "abc" ) ;
i = strlen ( u ) ;
strncat ( u , "abc" , 2 ) ;
u [ i + 2 ] = '\0' ;
printf ( "t = \"%s\", u = \"%s\"\n" , t , u ) ;

printf ( "strcmp(s, u) = %i\n" , strcmp ( s , u ) ) ;
printf ( "strncmp(s, u, 2) = %i\n" , strncmp ( s , u , 2 ) ) ;

p = strchr ( s , 'l' ) ;
printf ( "strchr(s, 'l') = %i\n" , ( p != ( ( void * ) 0 ) ) ? ( p - s ) : -1 ) ;

p = strrchr ( s , 'l' ) ;
printf ( "strrchr(s, 'l') = %i\n" , ( p != ( ( void * ) 0 ) ) ? ( p - s ) : -1 ) ;

p = strchr ( s , 'x' ) ;
printf ( "strchr(s, 'x') = %i\n" , ( p != ( ( void * ) 0 ) ) ? ( p - s ) : -1 ) ;

p = strrchr ( s , 'x' ) ;
printf ( "strrchr(s, 'x') = %i\n" , ( p != ( ( void * ) 0 ) ) ? ( p - s ) : -1 ) ;

memcpy ( s , "Hello, World!" , 20 * sizeof ( char ) ) ;
memmove ( t , "Hello, World!" , 20 * sizeof ( char ) ) ;
memset ( u , 'X' , 20 * sizeof ( char ) ) ;
u [ 20 - 1 ] = '\0' ;
printf ( "s = \"%s\", t = \"%s\", u = \"%s\"\n" , s , t , u ) ;

p = memchr ( s , 'l' , 20 * sizeof ( char ) ) ;
printf ( "memchr(s, 'l', SIZE * sizeof(char)) = %i\n" , ( p != ( ( void * ) 0 ) ) ? ( p - s ) : -1 ) ;

p = memchr ( s , 'x' , 20 * sizeof ( char ) ) ;
printf ( "memchr(s, 'x', SIZE * sizeof(char)) = %i\n" , ( p != ( ( void * ) 0 ) ) ? ( p - s ) : -1 ) ;

printf ( "memcmp(s, t, SIZE * sizeof(char)) = %i\n" , memcmp ( s , t , 20 * sizeof ( char ) ) ) ;

printf ( "strspn(s, \"Hello, C\") = %i\n" , strspn ( s , "Hello, C" ) ) ;
printf ( "strcspn(s, \"Hello, C\") = %i\n" , strcspn ( s , "Hello, C" ) ) ;

printf ( "strerror(errno) = \"%s\"\n" , strerror ( errno ) ) ;

p = strtok ( s , "," ) ;
while ( p != ( ( void * ) 0 ) ) {
printf ( "strtok(s, \",\") = \"%s\"\n" , p ) ;
p = strtok ( ( ( void * ) 0 ) , "," ) ;
}
}
