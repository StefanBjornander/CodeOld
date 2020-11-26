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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,0$
       
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
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,1$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ctype.h,0$
   
   

       
       
       
       
       
       
       
       
       
       
       
       
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,2$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ErrNo.h,0$
   
   





























extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };


























extern int errno ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,3$
       
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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,4$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,0$
   
   

   
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,0$
   
   

       
       
       
       
       
       
       
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,4$
       
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
  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,5$
       
              
     
            
  
      
  

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,5$
       

extern int filecreate ( const char * name ) ;

void file_test ( ) {
{ FILE * inFilePtr = fopen ( "in.txt" , "r" ) ;
FILE * outFilePtr = fopen ( "outX.txt" , "w" ) ;

if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 14 ) ; abort ( ) ; } ;
if ( ! ( outFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "outFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 15 ) ; abort ( ) ; } ;



while ( ! feof ( inFilePtr ) ) {
double value ;
fscanf ( inFilePtr , "%lf" , & value ) ;
printf ( "X1 %f\n" , sqrt ( value ) ) ;
fprintf ( outFilePtr , "X2 %f\n" , sqrt ( value ) ) ;
}

printf ( "\n" ) ;
fclose ( inFilePtr ) ;
fclose ( outFilePtr ) ;
}

{ FILE * inFilePtr = fopen ( "in.txt" , "r" ) ;
FILE * outFilePtr = fopen ( "outY.txt" , "w" ) ;

if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 34 ) ; abort ( ) ; } ;
if ( ! ( outFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "outFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 35 ) ; abort ( ) ; } ;



{ int size = 0 , index ;
fscanf ( inFilePtr , "%i" , & size ) ;
printf ( "size %i\n" , size ) ;
fprintf ( outFilePtr , "Y size %i\n" , size ) ;

for ( index = 0 ; index < size ; ++ index ) {
double value ;
fscanf ( inFilePtr , "%lf" , & value ) ;
printf ( "Y1 %f\n" , sqrt ( value ) ) ;
fprintf ( outFilePtr , "Y2 %f\n" , sqrt ( value ) ) ;
}

printf ( "\n" ) ;
}

fclose ( inFilePtr ) ;
fclose ( outFilePtr ) ;
}

{ char * sourceFile = "X" ;
char * targetFile = "Y" ;

FILE * filePtr = fopen ( sourceFile , "w" ) ;
fprintf ( filePtr , "Hello X" ) ;
fclose ( filePtr ) ;

if ( rename ( sourceFile , targetFile ) == 0 ) {
printf ( "\"%s\" has been renamed to \"%s\".\n" , sourceFile , targetFile ) ;
}
else {
printf ( "Error %i: %s.\n" , errno , strerror ( errno ) ) ;
}
}

{ char * targetFilePtr = "Z" ;

FILE * filePtr = fopen ( "Z" , "w" ) ;
fprintf ( filePtr , "Hello Z" ) ;
fclose ( filePtr ) ;

if ( remove ( targetFilePtr ) == 0 ) {
printf ( "\"%s\" has been removed.\n" , targetFilePtr ) ;
}
else {
printf ( "Error %i: %s.\n" , errno , strerror ( errno ) ) ;
}
}

{ FILE * inFilePtr = fopen ( "PBook.txt" , "r" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 88 ) ; abort ( ) ; } ;



printf ( "\n%-24s %-24s\n" , "Name" , "Phone" ) ;
printf ( "%-24s %-24s\n" , "========================" ,
"========================" ) ;

{ int count , size ;
fscanf ( inFilePtr , "%i" , & size ) ;
printf ( "size %i\n" , size ) ;

for ( count = 0 ; count < size ; ++ count ) {
char name [ 20 ] , phone [ 20 ];

fscanf ( inFilePtr , "%s%s" , name , phone ) ;
printf ( "%-24s %-24s\n" , name , phone ) ;
}
}

printf ( "\n" ) ;
fclose ( inFilePtr ) ;
}




























{ FILE * outFilePtr = fopen ( "TestX.bin" , "w" ) ;
if ( ! ( outFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "outFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 140 ) ; abort ( ) ; } ;

{ int size = 10 , index ;
fwrite ( & size , sizeof size , 1 , outFilePtr ) ;

for ( index = 0 ; index < size ; ++ index ) {
double value = ( double ) ( index * index ) ;
fwrite ( & value , sizeof value , 1 , outFilePtr ) ;
}

fclose ( outFilePtr ) ;
}
}

{ FILE * inFilePtr = fopen ( "TestX.bin" , "r" ) ;
int size , index ;

if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 157 ) ; abort ( ) ; } ;
fread ( & size , sizeof size , 1 , inFilePtr ) ;
printf ( "size1: %i\n" , size ) ;

for ( index = 0 ; index < size ; ++ index ) {
double value ;
fread ( & value , sizeof value , 1 , inFilePtr ) ;
printf ( "index1: %i: value %f\n" , index , value ) ;
}

printf ( "\n" ) ;
fclose ( inFilePtr ) ;
}

{ FILE * outFilePtr = fopen ( "TestY.bin" , "w" ) ;
if ( ! ( outFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "outFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 172 ) ; abort ( ) ; } ;

{ int size = 10 , index ;

for ( index = 0 ; index < size ; ++ index ) {
double value = ( double ) ( index * index ) ;
fwrite ( & value , sizeof value , 1 , outFilePtr ) ;
}

fclose ( outFilePtr ) ;
}
}

{ FILE * inFilePtr = fopen ( "TestY.bin" , "r" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 186 ) ; abort ( ) ; } ;

{ int index = 0 ;
double value ;

while ( fread ( & value , sizeof value , 1 , inFilePtr ) > 0 ) {
printf ( "index2: %i: value %f\n" , index ++ , value ) ;
}
}

printf ( "\n" ) ;
fclose ( inFilePtr ) ;
}

{ FILE * inFilePtr = fopen ( "TestY.bin" , "r" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 201 ) ; abort ( ) ; } ;

{ int index = 0 ;

while ( ! feof ( inFilePtr ) ) {
double value ;
fread ( & value , sizeof value , 1 , inFilePtr ) ;
printf ( "index3: %i: value %f\n" , index ++ , value ) ;
}
}

printf ( "\n" ) ;
fclose ( inFilePtr ) ;
}

{ FILE * inFilePtr = fopen ( "TestX.bin" , "r" ) ;
int size ;

if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 219 ) ; abort ( ) ; } ;
fread ( & size , sizeof size , 1 , inFilePtr ) ;
printf ( "size4: %i total %i\n" , size , size * sizeof ( double ) ) ;

{ int total = size * sizeof ( double ) , index ;
double * p = malloc ( total ) ;
double * endPtr = p + size ;
if ( ! ( p != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "p != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 226 ) ; abort ( ) ; } ;
printf ( "malloc4: %u %u %u\n" , p , total , endPtr ) ;
fread ( p , total , 1 , inFilePtr ) ;

for ( index = 0 ; index < size ; ++ index ) {
printf ( "index4: %i: value %f\n" , index , p [ index ] ) ;
}

printf ( "\n" ) ;
free ( p ) ;
}
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
FILE * inFilePtr = fopen ( "Block.bin" , "r" ) ;

if ( ! ( outFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "outFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 253 ) ; abort ( ) ; } ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 254 ) ; abort ( ) ; } ;

fwrite ( personVector , sizeof personVector , 1 , outFilePtr ) ;
fclose ( outFilePtr ) ;

while ( ! feof ( inFilePtr ) ) {
fread ( & person , sizeof ( struct _Person ) , 1 , inFilePtr ) ;

printf ( "Name  : %s\n" , person . name ) ;
printf ( "Phone : %d\n" , person . phone ) ;
}

fclose ( inFilePtr ) ;
}

{ FILE * inFilePtr = fopen ( "outx.txt" , "r" ) ;
unsigned int u , index ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "inFilePtr != NULL" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\FileTest.c" , 271 ) ; abort ( ) ; } ;

{ int size = fseek ( inFilePtr , 0 , SEEK_END ) ;

printf ( "ftell %i\n" , ftell ( inFilePtr ) ) ;







for ( index = 0 ; index < size ; ++ index ) {
char c = ( char ) fgetc ( inFilePtr ) ;
printf ( "<%c> %i %i\n" , c , ( int ) c , ftell ( inFilePtr ) ) ;
fseek ( inFilePtr , size - index - 1 , SEEK_SET ) ;
}
}

printf ( "\n" ) ;
fclose ( inFilePtr ) ;
}

                     
 printf ( "fileexists X: %s\n" , fileexists ( "X" ) ? "Yes" : "No" ) ;
printf ( "fileexists Y: %s\n" , fileexists ( "Y" ) ? "Yes" : "No" ) ;
printf ( "fileexists Main.asm: %s\n" , fileexists ( "Main.asm" ) ? "Yes" : "No" ) ;
printf ( "fileexists MainX.asm: %s\n" , fileexists ( "MainX.asm" ) ? "Yes" : "No" ) ;
printf ( "fileexists Main.c: %s\n" , fileexists ( "Main.c" ) ? "Yes" : "No" ) ;
printf ( "fileexists MainX.c: %s\n" , fileexists ( "MainX.c" ) ? "Yes" : "No" ) ;
printf ( "fileexists File.c: %s\n" , fileexists ( "File.c" ) ? "Yes" : "No" ) ;
printf ( "fileexists File.x: %s\n" , fileexists ( "File.x" ) ? "Yes" : "No" ) ;
printf ( "fileexists File.h: %s\n" , fileexists ( "File.h" ) ? "Yes" : "No" ) ;
printf ( "fileexists File.y: %s\n" , fileexists ( "File.y" ) ? "Yes" : "No" ) ;
printf ( "fileexists File.p: %s\n" , fileexists ( "File.p" ) ? "Yes" : "No" ) ;
printf ( "fileexists File.z: %s\n" , fileexists ( "File.z" ) ? "Yes" : "No" ) ;




































}
