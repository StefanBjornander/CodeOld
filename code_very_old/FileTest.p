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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,0$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,1$
   
   

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\math.h,1$
   
   

    
    
    

       
       
       
       
          
          

          
           

       
       
       

       
       
       

       

       
       
       
          

       
       
       
       

           
          

  

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
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,1$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ctype.h,1$
   
   

       
       
       
       
       
       
       
       
       
       
       
       
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,2$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ErrNo.h,1$
   
   





























extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };


























extern int errno ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,3$
       
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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,4$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,1$
   
   

   
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,1$
   
   

       
       
       
       
       
       
       
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,4$
       
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
  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,5$
       
              
     
            
  
      
  

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,5$
       

void file_test ( char * inFilePtrName , char * outFilePtrName ) {
{ FILE * inFilePtrPtr = fopen ( inFilePtrName , "r" ) ;
if ( ! ( inFilePtrPtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtrPtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 10 ) ; abort ( ) ; } ;
FILE * outFilePtrPtr = fopen ( outFilePtrName , "w" ) ;
if ( ! ( outFilePtrPtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "outFilePtrPtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 12 ) ; abort ( ) ; } ;

int size = 0 , index ;
fscanf ( inFilePtrPtr , "%i" , & size ) ;

for ( index = 0 ; index < size ; ++ index ) {
double inValue = 0 ;
fscanf ( inFilePtrPtr , "%lf" , & inValue ) ;
double outValue = sqrt ( ( double ) inValue ) ;
fprintf ( outFilePtrPtr , "%f\n" , outValue ) ;
}

fclose ( inFilePtrPtr ) ;
fclose ( outFilePtrPtr ) ;
}

{ char * sourceFilePtr = "X" ;
char * targetFilePtr = "Y" ;

if ( rename ( sourceFilePtr , targetFilePtr ) == 0 ) {
printf ( "\"%s\" has been renamed to \"%s\".\n" , sourceFilePtr , targetFilePtr ) ;
}
else {
printf ( "Error %i: %s.\n" , errno , strerror ( errno ) ) ;
}
}

{ char * targetFilePtr = "Z" ;

if ( remove ( targetFilePtr ) == 0 ) {
printf ( "\"%s\" has been removed.\n" , targetFilePtr ) ;
}
else {
printf ( "Error %i: %s.\n" , errno , strerror ( errno ) ) ;
}
}

{ FILE * inFilePtr = fopen ( "PBook.txt" , "r" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 50 ) ; abort ( ) ; } ;


printf ( "\n%-24s %-24s\n" , "Name" , "Phone" ) ;
printf ( "%-24s %-24s\n" , "========================" ,
"========================" ) ;

int count , size ;
fscanf ( inFilePtr , "%i" , & size ) ;


for ( count = 0 ; count < size ; ++ count ) {
char name [ 20 ] , phone [ 20 ];

fscanf ( inFilePtr , "%s%s" , name , phone ) ;
printf ( "%-24s %-24s\n" , name , phone ) ;
}

printf ( "\n" ) ;
fclose ( inFilePtr ) ;
}

{ char * sourceFilePtr = "Flow1.txt" ;
char * targetFilePtr = "Flow2.txt" ;

FILE * inFilePtr = fopen ( sourceFilePtr , "r" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 76 ) ; abort ( ) ; } ;

FILE * outFilePtr = fopen ( targetFilePtr , "w" ) ;
if ( ! ( outFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "outFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 79 ) ; abort ( ) ; } ;

while ( 1 ) {
char c = ( char ) fgetc ( inFilePtr ) ;

if ( c == -1 ) {
break ;
}

putc ( c , outFilePtr ) ;

if ( c == '\n' ) {
putc ( '\n' , outFilePtr ) ;
}
}

fclose ( inFilePtr ) ;
fclose ( outFilePtr ) ;
}

{ FILE * outFilePtr = fopen ( "Test.bin" , "w" ) ;
if ( ! ( outFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "outFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 100 ) ; abort ( ) ; } ;

int size = 10 ;
fwrite ( & size , sizeof size , 1 , outFilePtr ) ;

int index ;
for ( index = 0 ; index < size ; ++ index ) {
double value = ( double ) ( index * index ) ;
fwrite ( & value , sizeof value , 1 , outFilePtr ) ;
}

fclose ( outFilePtr ) ;
}

{ FILE * inFilePtr = fopen ( "Test.bin" , "r" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 115 ) ; abort ( ) ; } ;

int size ;
fread ( & size , sizeof size , 1 , inFilePtr ) ;
printf ( "size1 %i\n" , size ) ;

double arr [ 10 ];
fread ( & arr , sizeof arr , 1 , inFilePtr ) ;
fclose ( inFilePtr ) ;

int index ;
for ( index = 0 ; index < 10 ; ++ index ) {
printf ( "index1 %i: value %f\n" , index , arr [ index ] ) ;
}
printf ( "\n" ) ;
}

{ FILE * inFilePtr = fopen ( "Test.bin" , "r" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 133 ) ; abort ( ) ; } ;

int size ;
fread ( & size , sizeof size , 1 , inFilePtr ) ;
printf ( "size2 %i\n" , size ) ;

int index ;
for ( index = 0 ; index < size ; ++ index ) {
double value ;
fread ( & value , sizeof value , 1 , inFilePtr ) ;
printf ( "index2 %i: value %f\n" , index , value ) ;
}

printf ( "\n" ) ;
fclose ( inFilePtr ) ;
}

{ FILE * inFilePtr = fopen ( "Test.bin" , "r" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 151 ) ; abort ( ) ; } ;

int size ;
fread ( & size , sizeof size , 1 , inFilePtr ) ;
printf ( "size3 %i total %i\n" , size , size * sizeof ( double ) ) ;

int total = size * sizeof ( double ) ;
double * p = malloc ( total ) ;
if ( ! ( p != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "p != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 159 ) ; abort ( ) ; } ;
double * endPtr = p + size ;
printf ( "malloc %u %u %u\n" , p , total , endPtr ) ;
fread ( p , total , 1 , inFilePtr ) ;

int index ;
for ( index = 0 ; index < size ; ++ index ) {
printf ( "index3 %i: value %f\n" , index , p [ index ] ) ;
}

printf ( "\n" ) ;
free ( p ) ;
fclose ( inFilePtr ) ;
}

{ struct _Person {
char name [ 48 ];
int phone ;
};

struct _Person personVector []={{ "Adam Bertilsson" , 12345 } ,
{ "Bertil Ceasarsson" , 23456 } ,
{ "Ceasar Davidsson" , 24567 }};
struct _Person person ;

FILE * outFilePtr = fopen ( "Block.bin" , "w" ) ;
if ( ! ( outFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "outFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 185 ) ; abort ( ) ; } ;

fwrite ( personVector , sizeof personVector , 1 , outFilePtr ) ;
fclose ( outFilePtr ) ;

FILE * inFilePtr = fopen ( "Block.bin" , "r" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 191 ) ; abort ( ) ; } ;

while ( ! feof ( inFilePtr ) ) {
fread ( & person , sizeof ( struct _Person ) , 1 , inFilePtr ) ;

printf ( "Name  : %s\n" , person . name ) ;
printf ( "Phone : %d\n" , person . phone ) ;
}

fclose ( inFilePtr ) ;
}

{ FILE * inFilePtr = fopen ( "Test1.txt" , "r" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 204 ) ; abort ( ) ; } ;
fseek ( inFilePtr , -1 , SEEK_END ) ;

unsigned int u ;
while ( ( u = ( unsigned int ) ftell ( inFilePtr ) ) >= 0u ) {
char c = ( char ) fgetc ( inFilePtr ) ;
putchar ( c ) ;

if ( u == 0u ) {
break ;
}

fseek ( inFilePtr , -2 , SEEK_CUR ) ;
}

printf ( "\n\n" ) ;
fclose ( inFilePtr ) ;
}

printf ( "fileexists X %s\n" , fileexists ( "X" ) ? "Yes" : "No" ) ;
printf ( "fileexists Y %s\n\n" , fileexists ( "Y" ) ? "Yes" : "No" ) ;

{ FILE * tempFilePtr ;
FILE * inOutFilePtr = fopen ( "PBookX.txt" , "r+" ) ;
if ( ! ( inOutFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inOutFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 228 ) ; abort ( ) ; } ;

tempFilePtr = tmpfile ( ) ;
if ( ! ( tempFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "tempFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 231 ) ; abort ( ) ; } ;

while ( 1 ) {
char c = ( char ) fgetc ( inOutFilePtr ) ;



if ( c == -1 ) {
break ;
}

putc ( toupper ( c ) , tempFilePtr ) ;
}

rewind ( tempFilePtr ) ;
fprintf ( inOutFilePtr , "\n------------\n" ) ;

while ( 1 ) {
char c = ( char ) fgetc ( tempFilePtr ) ;

if ( c == -1 ) {
break ;
}

putc ( c , inOutFilePtr ) ;
}

fclose ( inOutFilePtr ) ;
fclose ( tempFilePtr ) ;
}
}
