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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLib.c,0$
       
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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLib.c,1$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\errno.h,0$
   
   





























extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };


























extern int errno ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLib.c,2$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdarg.h,0$
   
   

     
                         
                    
               
      

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLib.c,3$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stddef.h,0$
   
   

          

    
    

    
    
    

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLib.c,4$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\string.h,0$
   
   

    

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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLib.c,5$
       
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
  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLib.c,6$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,0$
   
   

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\math.h,0$
   
   


    

    


       
       
       

          
          
           

       
           
          

       
       
       

       
       
       

       
       
       
          

       
       
       
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,3$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ctype.h,0$
   
   

       
       
       
       
       
       
       
       
       
       
       
       
       

  

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
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLib.c,7$
       

extern FILE g_fileArray [];

int atoi ( char * s ) {
return ( int ) strtol ( s , ( char ** ) ( ( void * ) 0 ) , 10 ) ;
}

long atol ( char * s ) {
return strtol ( s , ( char ** ) ( ( void * ) 0 ) , 10 ) ;
}


































extern int g_inStatus , g_inChars ;
extern void * g_inDevice ;

long strtol ( char * s , char ** endp , int base ) {
g_inStatus = 1 ;
g_inDevice = s ;
g_inChars = 0 ;

{ long value = scanLongInt ( base ) ;

if ( endp != ( ( void * ) 0 ) ) {
* endp = s + g_inChars ;
}

return value ;
}
}





















































void strtol_test ( void ) {
{ int base = 0 ;
char text [] = "   +123abc" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 0 ;
char text [] = "   +0123abc" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 0 ;
char text [] = "   +0x123ABC" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 0 ;
char text [] = "   +0X123abc" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 0 ;
char text [] = "   -123abc" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 0 ;
char text [] = "   -0123abc" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 0 ;
char text [] = "   -0x123ABC" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 0 ;
char text [] = "   -0X123abc" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 9 ;
char text [] = "   +123abc" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 10 ;
char text [] = "   +123abc" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 11 ;
char text [] = "   +123abc" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 12 ;
char text [] = "   +123ABC" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 13 ;
char text [] = "   +123abc" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 9 ;
char text [] = "   -123abc" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 10 ;
char text [] = "   -123abc" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 11 ;
char text [] = "   -123abc" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 12 ;
char text [] = "   -123ABC" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 13 ;
char text [] = "   -123abc" , * pointer ;
long value = strtol ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}
}

unsigned long strtoul ( char * s , char ** endp , int base ) {
g_inStatus = 1 ;
g_inDevice = s ;
g_inChars = 0 ;

{ unsigned long unsignedLongValue = scanUnsignedLongInt ( base ) ;

if ( endp != ( ( void * ) 0 ) ) {
* endp = s + g_inChars ;
}

return unsignedLongValue ;
}
}













































void strtoul_test ( void ) {
{ int base = 0 ;
char text [] = "   +123abc" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 0 ;
char text [] = "   +0123abc" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 0 ;
char text [] = "   +0x123ABC" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 0 ;
char text [] = "   +0X123abc" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 0 ;
char text [] = "   -123abc" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 0 ;
char text [] = "   -0123abc" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 0 ;
char text [] = "   -0x123ABC" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 0 ;
char text [] = "   -0X123abc" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 9 ;
char text [] = "   +123abc" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 10 ;
char text [] = "   +123abc" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 11 ;
char text [] = "   +123abc" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 12 ;
char text [] = "   +123ABC" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 13 ;
char text [] = "   +123abc" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 9 ;
char text [] = "   -123abc" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 10 ;
char text [] = "   -123abc" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 11 ;
char text [] = "   -123abc" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 12 ;
char text [] = "   -123ABC" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}

{ int base = 13 ;
char text [] = "   -123abc" , * pointer ;
long value = strtoul ( text , & pointer , base ) ;
printf ( "<%s> <%li> <%s> <%i>\n" , text , value , pointer , base ) ;
}
}

double atof ( char * s ) {
return strtod ( s , ( char ** ) ( ( void * ) 0 ) ) ;
}

double strtod ( char * s , char ** endp ) {
int chars = '\0' ;
double value = 0 ;
sscanf ( s , "%lf%n" , & value , & chars ) ;

if ( endp != ( ( void * ) 0 ) ) {
* endp = s + chars ;
}

return value ;
}

void abort ( void ) {
   
    
       
    
  

   
 register_rax = 60L ;
register_rdi = ( unsigned long ) -1 ;
syscall ( ) ;
  
 }

char * getenv ( const char * ) {
return ( ( void * ) 0 ) ;
}

int system ( const char * ) {
return -1 ;
}

void * bsearch ( const void * keyPtr , const void * valueList ,
int listSize , int valueSize ,
int ( * compare ) ( const void * , const void * ) ) {
int firstIndex = 0 , lastIndex = listSize - 1 ;

if ( listSize == 0 ) {
return ( ( void * ) 0 ) ;
}

while ( 1 ) {
{ char * firstValuePtr = ( ( char * ) valueList ) + ( firstIndex * valueSize ) ;
int firstCompare = compare ( keyPtr , firstValuePtr ) ;

if ( firstCompare < 0 ) {
return ( ( void * ) 0 ) ;
}
else if ( firstCompare == 0 ) {
return firstValuePtr ;
}
}

{ char * lastValuePtr = ( ( char * ) valueList ) + ( lastIndex * valueSize ) ;
int lastCompare = compare ( keyPtr , lastValuePtr ) ;

if ( lastCompare > 0 ) {
return ( ( void * ) 0 ) ;
}
else if ( lastCompare == 0 ) {
return lastValuePtr ;
}
}

{ int middleIndex = ( firstIndex + lastIndex ) / 2 ;
char * middleValuePtr = ( ( char * ) valueList ) + ( middleIndex * valueSize ) ;
int middleCompare = compare ( keyPtr , middleValuePtr ) ;

if ( middleCompare < 0 ) {
lastIndex = middleIndex ;
}
else if ( middleCompare > 0 ) {
firstIndex = middleIndex ;
}
else {
return middleValuePtr ;
}
}
}
}

static long g_randValue ;

    
    
    

int rand ( void ) {
g_randValue = ( ( 1664525l * g_randValue ) + 1013904223l ) % 127 ;
return ( int ) g_randValue ;
}

void srand ( unsigned int seed ) {
g_randValue = ( long ) seed ;
}

    
    
    
            

FUNC_PTR g_funcArray [ 256 ] = { ( ( void * ) 0 ) };

int atexit ( FUNC_PTR fcn ) {
int index ;

for ( index = 0 ; index < 256 ; ++ index ) {
if ( g_funcArray [ index ] == ( ( void * ) 0 ) ) {
g_funcArray [ index ] = fcn ;
return 0 ;
}
}

return -1 ;
}

void exit ( int status ) {
int index ;

for ( index = ( 256 - 1 ) ; index >= 0 ; -- index ) {
if ( g_funcArray [ index ] != ( ( void * ) 0 ) ) {
g_funcArray [ index ] ( ) ;
}
}

   
       
   
    
  

   
 register_rax = 60L ;
register_rdi = ( unsigned long ) status ;
syscall ( ) ;
  
 }

static void memswap ( char * value1 , char * value2 , int valueSize ) {
int index ;
for ( index = 0 ; index < valueSize ; ++ index ) {
char tempValue = value1 [ index ];
value1 [ index ] = value2 [ index ];
value2 [ index ] = tempValue ;
}
}

void qsort ( void * valueList , int listSize , int valueSize ,
int ( * compare ) ( const void * , const void * ) ) {
char * charList = ( char * ) valueList ;
int size ;
for ( size = ( listSize - 1 ) ; size > 0 ; -- size ) {
int index ;
int update = 0 ;
for ( index = 0 ; index < size ; ++ index ) {
char * valuePtr1 = charList + ( index * valueSize ) ;
char * valuePtr2 = charList + ( ( index + 1 ) * valueSize ) ;

if ( compare ( valuePtr1 , valuePtr2 ) > 0 ) {
memswap ( valuePtr1 , valuePtr2 , valueSize ) ;
update = 1 ;
}
}

if ( ! update ) {
break ;
}
}
}

















































int abs ( int value ) {
return ( value < 0 ) ? - value : value ;
}

long labs ( long value ) {
return ( value < 0l ) ? - value : value ;
}

div_t div ( int num , int denum ) {
div_t result = { 0 , 0 };

if ( denum == 0 ) {
errno = EDOM ;
return result ;
}

result . quot = num / denum ;
result . rem = num % denum ;
return result ;
}

ldiv_t ldiv ( long num , long denum ) {
ldiv_t result = { 0 , 0 };

if ( denum == 0 ) {
errno = EDOM ;
return result ;
}

result . quot = num / denum ;
result . rem = num % denum ;
return result ;
}
