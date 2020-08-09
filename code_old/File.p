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
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\File.c,0$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ErrNo.h,1$
   
   





























extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };


























extern int errno ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\File.c,1$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Locale.h,1$
   
   

    
    
    
    
    
    

struct lconv {
int summerTimeZone , winterTimeZone ;
char ** shortDayList ;
char ** longDayList ;
char ** shortMonthList ;
char ** longMonthList ;
char * lowerCase ;
char * upperCase ;
char ** messageList ;
};

extern char * enMessageList [];
extern char * setlocale ( int flag , char * name ) ;
extern struct lconv * localeconv ( void ) ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\File.c,2$
       
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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\File.c,3$
       

FILE g_fileArray [ 20 ] = {{ 1 , 0 } , { 1 , 1 } , { 1 , 2 }};
FILE * stdin = & g_fileArray [ 0 ] , * stdout = & g_fileArray [ 1 ] , * stderr = & g_fileArray [ 2 ];

enum { EEXIST , ENOENT , EACCES };
enum { SEEK_SET = 0 , SEEK_CUR = 1 , SEEK_END = 2 };
enum { READ = 0x40 , WRITE = 0x41 , READ_WRITE = 0x42 };

                           

    

                        

static int filecreate ( const char * name ) {

   
    
   
   
    
    

    
   
  


  
  

   
 register_rax = 85L ;
register_rdi = ( unsigned long ) name ;
register_rsi = 0777L ;
syscall ( ) ;
return 0 ;
  
 }

int fileexists ( const char * name ) {
   
    
   
   
    
   
  

   
 return 1 ;
  
 }

static int fileopen ( const char * name , unsigned short mode ) {
   
    
   
   
    

    
   
  

 
  

  

   
 register_rax = 2L ;
register_rdi = ( unsigned long ) name ;
register_rsi = ( unsigned long ) mode ;
syscall ( ) ;
return register_rax ;
  
 }

FILE * fopen ( const char * name , const char * mode ) {

int index ;
for ( index = 0 ; index < 20 ; ++ index ) {


if ( ! g_fileArray [ index ]. open ) {

return freopen ( name , mode , & g_fileArray [ index ] ) ;
}
}

return ( ( void * ) 0 ) ;
}

FILE * freopen ( const char * name , const char * mode , FILE * stream ) {

int handle = -1 ;

if ( strcmp ( mode , "r" ) == 0 ) {
handle = fileopen ( name , ( unsigned short ) READ ) ;
}
else if ( strcmp ( mode , "w" ) == 0 ) {
handle = filecreate ( name ) ;
}
else if ( strcmp ( mode , "a" ) == 0 ) {
handle = fileopen ( name , ( unsigned short ) WRITE ) ;

if ( handle != -1 ) {
fseek ( stream , 0L , ( int ) SEEK_END ) ;
}
else {
handle = filecreate ( name ) ;
}
}
else if ( strcmp ( mode , "r+" ) == 0 ) {
handle = fileopen ( name , ( unsigned short ) READ_WRITE ) ;
}
else if ( strcmp ( mode , "w+" ) == 0 ) {
if ( fileexists ( name ) ) {
handle = fileopen ( name , ( unsigned short ) READ_WRITE ) ;
}
else {
handle = filecreate ( name ) ;
}
}
else if ( strcmp ( mode , "a+" ) == 0 ) {
handle = fileopen ( name , ( unsigned short ) READ_WRITE ) ;

if ( handle != -1 ) {
fseek ( stream , 0L , ( int ) SEEK_END ) ;
}
else {
handle = filecreate ( name ) ;
}
}

if ( handle != -1 ) {
stream -> open = 1 ;
stream -> handle = handle ;
stream -> size = 0l ;
strcpy ( stream -> name , name ) ;
stream -> temporary = 0 ;



return stream ;
}
else {
stream -> open = 0 ;
return ( ( void * ) 0 ) ;
}
}

int fflush ( FILE * stream ) {
if ( stream == ( ( void * ) 0 ) ) {
int index ;

for ( index = 0 ; index < 20 ; ++ index ) {
if ( g_fileArray [ index ]. open ) {
if ( fflush ( & g_fileArray [ index ] ) == -1 ) {
return -1 ;
}
}
}
}



return 0 ;
}

int fclose ( FILE * stream ) {
if ( stream != ( ( void * ) 0 ) ) {
   
    
     
    

    
   
  


      
      


     
  
  

   
 register_rax = 3L ;
register_rdi = ( unsigned long ) stream -> handle ;
syscall ( ) ;
return 0 ;
  
 }
else {
int index ;

for ( index = 0 ; index < 20 ; ++ index ) {
if ( g_fileArray [ index ]. open ) {
if ( fclose ( & g_fileArray [ index ] ) == -1 ) {
return -1 ;
}
}
}

return 0 ;
}
}

int remove ( const char * name ) {
   
    
   
   
    

    
   
  


  
  

   
 register_rax = 88L ;
register_rdi = ( unsigned long ) name ;
syscall ( ) ;
return 0 ;
  
 }

int rename ( const char * oldName , const char * newName ) {
   
    
   
   
   
    

    
   
  

  

   
 register_rax = 82L ;
register_rdi = ( unsigned long ) oldName ;
register_rsi = ( unsigned long ) newName ;
syscall ( ) ;
  

return 0 ;
}

int setvbuf ( FILE * , char * , int , int ) {
return 0 ;














}

void setbuf ( FILE * , char * ) {









}









































































































































int fgetc ( FILE * stream ) {
char c = '\0' ;

if ( fread ( & c , sizeof ( char ) , 1 , stream ) > 0 ) {
return ( int ) c ;
}

return -1 ;
}

char * fgets ( char * text , int size , FILE * stream ) {
int count = 0 ;
char prevChar = '\0' ;

while ( ( count < ( size - 1 ) ) ) {
char currChar = '\0' ;
fscanf ( stream , "%c" , & currChar ) ;

if ( ( prevChar == '\r' ) && ( currChar == '\n' ) ) {
text [ count ] = '\0' ;
break ;
}

if ( currChar == -1 ) {
text [ count ] = '\0' ;
break ;
}

if ( ( currChar != '\r' ) && ( currChar != '\n' ) ) {
text [ count ++] = currChar ;
}

prevChar = currChar ;
}

return text ;
}








int fputs ( const char * s , FILE * stream ) {
int size = ( strlen ( s ) + 1 ) * sizeof ( char ) ;
return ( fwrite ( s , size , 1 , stream ) == size ) ? 0 : -1 ;
}

int getchar ( void ) {
return fgetc ( stdin ) ;
}

char * gets ( char * s ) {
if ( fgets ( s , -1 , stdin ) != ( ( void * ) 0 ) ) {
int size = strlen ( s ) ;

if ( size > 0 ) {
s [ size - 1 ] = '\0' ;
}

return s ;
}
else {
return ( ( void * ) 0 ) ;
}
}







int puts ( const char * s ) {
if ( fputs ( s , stdout ) != 0 ) {
return fputc ( '\n' , stdout ) ;
}

return -1 ;
}

int ungetc ( int c , FILE * stream ) {
if ( stream -> ungetc != -1 ) {
stream -> ungetc = ( char ) c ;
}

return c ;
}

int fread ( void * ptr , int size , int nobj , FILE * stream ) {









   
      
     
   
   
    

    
       
  

 
  

  

   
 register_rax = 0L ;
register_rdi = ( unsigned long ) stream -> handle ;
register_rsi = ( unsigned long ) ptr ;
register_rdx = ( unsigned long ) ( size * nobj ) ;
syscall ( ) ;
return 0 ;
  
 }

int fwrite ( const void * ptr , int size , int nobj , FILE * stream ) {
   
      
     
   
   
    

    
       
  

 
  

  


   
 register_rax = 0L ;
register_rdi = ( unsigned long ) stream -> handle ;
register_rsi = ( unsigned long ) ptr ;
register_rdx = ( unsigned long ) ( size * nobj ) ;
syscall ( ) ;
return 0 ;
  
 }

int fseek ( FILE * stream , int offset , int origin ) {
   
       
   
     
   
      
    

     
     
    

 
     
  

  

   
 register_rax = 8L ;
register_rdi = ( unsigned long ) stream -> handle ;
register_rsi = ( unsigned long ) offset ;
register_rdx = ( unsigned long ) origin ;
syscall ( ) ;
return 0 ;
  
 }

int ftell ( FILE * stream ) {
return fseek ( stream , 0 , SEEK_CUR ) ;
}

void rewind ( FILE * stream ) {
( void ) fseek ( stream , 0 , SEEK_SET ) ;
}

int fgetpos ( FILE * stream , int * ptr ) {
* ptr = ( int ) ftell ( stream ) ;
return 0 ;
}

int fsetpos ( FILE * stream , const int * ptr ) {
return ( ( int ) fseek ( stream , * ptr , ( int ) SEEK_SET ) ) ;
}

void clearerr ( FILE * stream ) {
stream -> errno = errno = 0 ;
}

int feof ( FILE * stream ) {
long unsigned currPosition = fseek ( stream , 0L , ( int ) SEEK_CUR ) ;
long unsigned lastPosition = fseek ( stream , 0L , ( int ) SEEK_END ) ;
fseek ( stream , currPosition , ( int ) SEEK_SET ) ;

{ int endOfFile = ( currPosition == lastPosition ) ;
return endOfFile ;
}
}

int ferror ( FILE * stream ) {
return stream -> errno ;
}






void perror ( const char * s ) {
printf ( "%s: %s.\n" , s , strerror ( errno ) ) ;
}
