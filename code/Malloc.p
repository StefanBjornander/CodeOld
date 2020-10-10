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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c,0$
       
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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c,1$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ErrNo.h,1$
   
   





























extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };


























extern int errno ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c,2$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,1$
   
   

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\math.h,1$
   
   

    
    
    

       
       
       
       
          
          

          
           

       
       
       

       
       
       

       

       
       
       
          

       
       
       
       

           
          

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,3$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ctype.h,1$
   
   

       
       
       
       
       
       
       
       
       
       
       
       
       

  

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
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c,3$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdarg.h,1$
   
   

     
                         
                    
               
      

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c,4$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stddef.h,1$
   
   

          

    
    

    
    
    

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c,5$
       
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
  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c,6$
       
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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c,7$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,1$
   
   

   
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,1$
   
   

       
       
       
       
       
       
       
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,4$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdlib.h,1$
   
   

          

       
       
       

           
              
               

     
       

         
        

     
      

         
      

    
    

      
      

       
           
          
       

             
                 

                   
               

      
      

  
    
  

         

  
    
  

         
  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,5$
       
              
     
            
  
      
  

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Malloc.c,8$
       

typedef struct block_header {
UINT size ;
struct block_header * next ;
} BLOCK_HEADER ;

BLOCK_HEADER * g_firstBlockPtr = ( ( void * ) 0 ) ;
              






void * malloc ( int memorySize ) {
if ( ! ( memorySize >= 0 ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "memorySize >= 0" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\Malloc.c" , 25 ) ; abort ( ) ; } ;

if ( memorySize == 0 ) {
return ( ( void * ) 0 ) ;
}

UINT newBlockSize = ( ( UINT ) ( sizeof ( BLOCK_HEADER ) ) ) + ( ( UINT ) memorySize ) ,
minGap = 0 ;

   
     
  

   

UINT lastAddress = ( UINT ) ( stack_top + 1048572u ) ;

  

BLOCK_HEADER * minBlockPtr = ( ( void * ) 0 ) , * minPrevBlockPtr = ( ( void * ) 0 ) , * prevBlockPtr = ( ( void * ) 0 ) ,
* currBlockPtr = g_firstBlockPtr ;

while ( currBlockPtr != ( ( void * ) 0 ) ) {
UINT currAddress = ( UINT ) currBlockPtr ;
UINT currGap = lastAddress - ( currAddress + currBlockPtr -> size + ( ( UINT ) ( sizeof ( BLOCK_HEADER ) ) ) ) ;


if ( ( newBlockSize <= currGap ) && ( ( minGap == 0u ) || ( currGap < minGap ) ) ) {
minGap = currGap ;
minBlockPtr = currBlockPtr ;
minPrevBlockPtr = prevBlockPtr ;
}

lastAddress = currAddress ;
prevBlockPtr = currBlockPtr ;
currBlockPtr = currBlockPtr -> next ;
}

if ( minBlockPtr != ( ( void * ) 0 ) ) {
UINT newAddress = ( ( UINT ) minBlockPtr ) + minBlockPtr -> size + ( ( UINT ) ( sizeof ( BLOCK_HEADER ) ) ) ;


BLOCK_HEADER * newBlockPtr = ( BLOCK_HEADER * ) newAddress ;
newBlockPtr -> size = memorySize ;
newBlockPtr -> next = minBlockPtr ;

if ( minPrevBlockPtr != ( ( void * ) 0 ) ) {
minPrevBlockPtr -> next = newBlockPtr ;
}
else {
g_firstBlockPtr = newBlockPtr ;
}

return ( void * ) ( newAddress + ( ( UINT ) ( sizeof ( BLOCK_HEADER ) ) ) ) ;
}
else {
UINT newAddress = lastAddress - newBlockSize ;

   
     
  

   
 UINT stackTop = register_rbp ;
  



if ( stackTop <= newAddress ) {
BLOCK_HEADER * newBlockPtr = ( BLOCK_HEADER * ) newAddress ;
newBlockPtr -> size = memorySize ;
newBlockPtr -> next = ( ( void * ) 0 ) ;

if ( prevBlockPtr != ( ( void * ) 0 ) ) {
prevBlockPtr -> next = newBlockPtr ;
}
else {
g_firstBlockPtr = newBlockPtr ;
}



return ( void * ) ( newAddress + ( ( UINT ) ( sizeof ( BLOCK_HEADER ) ) ) ) ;
}
}

return ( ( void * ) 0 ) ;
}





























































void * calloc ( int number , int size ) {
void * pointer = malloc ( number * size ) ;

if ( pointer != ( ( void * ) 0 ) ) {
memset ( pointer , 0 , size ) ;
}

return pointer ;
}

void free ( void * freeMemoryPtr ) {
if ( freeMemoryPtr == ( ( void * ) 0 ) ) {
return ;
}

BLOCK_HEADER * freeBlockPtr = ( BLOCK_HEADER * ) ( ( ( UINT ) freeMemoryPtr ) - ( ( UINT ) ( sizeof ( BLOCK_HEADER ) ) ) ) ,
* prevBlockPtr = ( ( void * ) 0 ) , * currBlockPtr = g_firstBlockPtr ;

while ( currBlockPtr != ( ( void * ) 0 ) ) {
if ( currBlockPtr == freeBlockPtr ) {
if ( ( prevBlockPtr == ( ( void * ) 0 ) ) &&
( currBlockPtr -> next == ( ( void * ) 0 ) ) ) {
g_firstBlockPtr = ( ( void * ) 0 ) ;


}
else if ( prevBlockPtr == ( ( void * ) 0 ) ) {
g_firstBlockPtr = currBlockPtr -> next ;
}
else if ( currBlockPtr -> next == ( ( void * ) 0 ) ) {
prevBlockPtr -> next = ( ( void * ) 0 ) ;


}
else {
prevBlockPtr -> next = currBlockPtr -> next ;
}

return ;
}

prevBlockPtr = currBlockPtr ;
currBlockPtr = currBlockPtr -> next ;
}
}







































void * realloc ( void * oldMemoryPtr , int newMemorySize ) {
if ( ! ( newMemorySize >= 0 ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "newMemorySize >= 0" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\Malloc.c" , 259 ) ; abort ( ) ; } ;
if ( ! ( ( oldMemoryPtr != ( ( void * ) 0 ) ) || ( newMemorySize > 0 ) ) ) { fprintf ( stderr , "Assertion failed: \"%s\" in file %s at line %i\n" , "( oldMemoryPtr != NULL ) || ( newMemorySize > 0 )" , "C:\\Users\\Stefan\\Documents\\vagrant\\homestead\\code\\code\\Malloc.c" , 260 ) ; abort ( ) ; } ;

if ( oldMemoryPtr == ( ( void * ) 0 ) ) {
return malloc ( newMemorySize ) ;
}

if ( newMemorySize == 0 ) {
free ( oldMemoryPtr ) ;
return ( ( void * ) 0 ) ;
}

UINT newBlockSize = ( ( UINT ) newMemorySize ) + ( ( UINT ) ( sizeof ( BLOCK_HEADER ) ) ) ;
BLOCK_HEADER * oldBlockPtr = ( BLOCK_HEADER * ) ( ( ( UINT ) oldMemoryPtr ) - ( ( UINT ) ( sizeof ( BLOCK_HEADER ) ) ) ) ;

if ( newBlockSize <= oldBlockPtr -> size ) {
oldBlockPtr -> size = newBlockSize ;
return oldMemoryPtr ;
}

   
     
  

   

UINT lastAddress = ( UINT ) ( stack_top + 1048572u ) ;

  

BLOCK_HEADER * currBlockPtr = g_firstBlockPtr ;

while ( currBlockPtr != ( ( void * ) 0 ) ) {
if ( currBlockPtr == oldBlockPtr ) {
UINT availableSize = lastAddress - ( ( UINT ) currBlockPtr ) ;

if ( availableSize >= newBlockSize ) {
oldBlockPtr -> size = newBlockSize ;
return oldMemoryPtr ;
}
else {
break ;
}
}

lastAddress = ( UINT ) currBlockPtr ;
currBlockPtr = currBlockPtr -> next ;
}

void * newMemoryPtr = malloc ( newMemorySize ) ;

if ( newMemoryPtr != ( ( void * ) 0 ) ) {
memcpy ( newMemoryPtr , oldMemoryPtr , newMemorySize ) ;
free ( oldMemoryPtr ) ;
return newMemoryPtr ;
}

return ( ( void * ) 0 ) ;
}

void print_heap ( ) {
BLOCK_HEADER * currBlockPtr = g_firstBlockPtr ;
printf ( "Heap:\n" ) ;

while ( currBlockPtr != ( ( void * ) 0 ) ) {
printf ( "  Address %u, Size %u\n" , ( UINT ) currBlockPtr , currBlockPtr -> size ) ;
currBlockPtr = currBlockPtr -> next ;
}
printf ( "\n" ) ;



}
