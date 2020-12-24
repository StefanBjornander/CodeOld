$C:\Users\Stefan\Documents\vagrant\homestead\code\code\errno.h,0$
   
   





























extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };


























extern int errno ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\String.c,0$
       
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
   
   

    
    

    
    

typedef struct {
int open ;
unsigned int handle ;
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
   
   

    
    

    

int scanf ( const char * format , ... ) ;
int vscanf ( const char * format , char * arg_list ) ;
int fscanf ( FILE * inStream , const char * format , ... ) ;
int vfscanf ( FILE * inStream , const char * format , char * arg_list ) ;
int sscanf ( char * inString , const char * format , ... ) ;
int vsscanf ( char * inString , const char * format , char * arg_list ) ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,9$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\printf.h,0$
   
   

    
    

extern int g_outStatus , g_charCount ;
extern void * g_outDevice ;

int putc ( int c , FILE * stream ) ;
int fputc ( int c , FILE * stream ) ;
int putchar ( int c ) ;

int printf ( const char * format , ... ) ;
int vprintf ( const char * format , char * arg_list ) ;
int fprintf ( FILE * outStream , const char * format , ... ) ;
int vfprintf ( FILE * outStream , const char * format , char * arg_list ) ;
int sprintf ( char * outString , const char * format , ... ) ;
int vsprintf ( char * outString , const char * format , char * arg_list ) ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,10$
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\String.c,1$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stddef.h,0$
   
   

          
    
    
    
    

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\String.c,2$
       
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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\String.c,3$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\locale.h,0$
   
   

    
    
    
    
    
    

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


extern char * setlocale ( int flag , char * name ) ;
extern struct lconv * localeconv ( void ) ;

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\String.c,4$
       

char * strcpy ( char * target , const char * source ) {
int index ;

for ( index = 0 ; source [ index ] != '\0' ; ++ index ) {
target [ index ] = source [ index ];
}

target [ index ] = '\0' ;
return target ;
}

char * strncpy ( char * target , const char * source , int size ) {
int index ;

for ( index = 0 ; ( index < size ) && ( source [ index ] != '\0' ) ; ++ index ) {
target [ index ] = source [ index ];
}

for ( ; index < size ; ++ index ) {
target [ index ] = '\0' ;
}

return target ;
}

char * strcat ( char * target , const char * source ) {
int index , targetLength = strlen ( target ) ;

for ( index = 0 ; source [ index ] != '\0' ; ++ index ) {
target [ targetLength + index ] = source [ index ];
}

target [ targetLength + index ] = '\0' ;
return target ;
}

char * strncat ( char * target , const char * source , int size ) {
int index ;
const int targetLength = strlen ( target ) ;

for ( index = 0 ; ( index < ( size - 1 ) ) && ( source [ index ] != '\0' ) ; ++ index ) {
target [ targetLength + index ] = source [ index ];
}

target [ targetLength + size - 1 ] = '\0' ;
return target ;
}

int strcmp ( const char * left , const char * right ) {
int index ;

for ( index = 0 ; 1 ; ++ index ) {
if ( ( left [ index ] == '\0' ) && ( right [ index ] == '\0' ) ) {
return 0 ;
}






else if ( left [ index ] < right [ index ] ) {
return -1 ;
}
else if ( left [ index ] > right [ index ] ) {
return 1 ;
}
}
}

int strncmp ( const char * left , const char * right , int size ) {
int index ;

for ( index = 0 ; index < size ; ++ index ) {
if ( ( left [ index ] == '\0' ) && ( right [ index ] == '\0' ) ) {
return 0 ;
}






else if ( left [ index ] < right [ index ] ) {
return -1 ;
}
else if ( left [ index ] > right [ index ] ) {
return 1 ;
}
}

return 0 ;
}

char * strchr ( const char * text , int i ) {
int index ;
char c = ( char ) i ;

for ( index = 0 ; text [ index ] != '\0' ; ++ index ) {
if ( text [ index ] == c ) {
return & text [ index ];
}
}

return ( ( void * ) 0 ) ;
}

char * strrchr ( const char * text , int i ) {
int index ;
char * result = ( ( void * ) 0 ) ;
char c = ( char ) i ;

for ( index = 0 ; text [ index ] != '\0' ; ++ index ) {
if ( text [ index ] == c ) {
result = & text [ index ];
}
}

return result ;
}

int strspn ( const char * mainString , const char * charSet ) {
int index ;

for ( index = 0 ; mainString [ index ] != '\0' ; ++ index ) {
if ( strchr ( charSet , mainString [ index ] ) == ( ( void * ) 0 ) ) {
return index ;
}
}

return -1 ;
}

int strcspn ( const char * mainString , const char * charSet ) {
int index ;

for ( index = 0 ; mainString [ index ] != '\0' ; ++ index ) {
if ( strchr ( charSet , mainString [ index ] ) != ( ( void * ) 0 ) ) {
return index ;
}
}

return -1 ;
}

char * strpbrk ( const char * mainString , const char * charSet ) {
int index ;

for ( index = 0 ; mainString [ index ] != '\0' ; ++ index ) {
if ( strchr ( charSet , mainString [ index ] ) != ( ( void * ) 0 ) ) {
return & mainString [ index ];
}
}

return ( ( void * ) 0 ) ;
}

char * strstr ( const char * mainString , const char * subString ) {
int index ;
const int subStringSize = strlen ( subString ) ;

for ( index = 0 ; mainString [ index ] != '\0' ; ++ index ) {
if ( strncmp ( mainString + index , subString , subStringSize ) == 0 ) {
return & mainString [ index ];
}
}

return ( ( void * ) 0 ) ;
}

int strlen ( const char * string ) {
int index ;

for ( index = 0 ; string [ index ] != '\0' ; ++ index ) {

}


return index ;
}



char * strerror ( int errno ) {
struct lconv * localeConvPtr = localeconv ( ) ;

if ( localeConvPtr != ( ( void * ) 0 ) ) {
char ** messageList = localeConvPtr -> messageList ;

if ( messageList != ( ( void * ) 0 ) ) {
return messageList [ errno ];
}
}

return ( ( void * ) 0 ) ;
}

static char * token = ( ( void * ) 0 ) ;

char * strtok ( char * string , const char * charSet ) {
int index ;
char * tokenStart ;

if ( string != ( ( void * ) 0 ) ) {
if ( string [ 0 ] == '\0' ) {
return ( ( void * ) 0 ) ;
}

for ( index = 0 ; string [ index ] != '\0' ; ++ index ) {
if ( strchr ( charSet , string [ index ] ) != ( ( void * ) 0 ) ) {
string [ index ] = '\0' ;
token = & string [ index + 1 ];
return string ;
}
}

token = & string [ index ];
return string ;
}
else if ( token == ( ( void * ) 0 ) ) {
return ( ( void * ) 0 ) ;
}
else {
if ( token [ 0 ] == '\0' ) {
return ( ( void * ) 0 ) ;
}

for ( index = 0 ; token [ index ] != '\0' ; ++ index ) {
if ( strchr ( charSet , token [ index ] ) != ( ( void * ) 0 ) ) {
char * tokenStart2 = token ;
token [ index ] = '\0' ;
token = & token [ index + 1 ];
return tokenStart2 ;
}
}

tokenStart = token ;
token = & token [ index ];
return tokenStart ;
}
}

void * memcpy ( void * target , const void * source , int size ) {
char * charTarget = ( char * ) target ;
const char * charSource = ( const char * ) source ;

int index ;
for ( index = 0 ; index < size ; ++ index ) {
charTarget [ index ] = charSource [ index ];
}

return ( ( void * ) target ) ;
}

void * memmove ( void * target , const void * source , int size ) {
char * charTarget = ( char * ) target ;
const char * charSource = ( const char * ) source ;

int index ;
if ( source < target ) {
for ( index = ( size - 1 ) ; index >= 0 ; -- index ) {
charTarget [ index ] = charSource [ index ];
}
}
else {
for ( index = 0 ; index < size ; ++ index ) {
charTarget [ index ] = charSource [ index ];
}
}

return ( ( void * ) target ) ;
}

int memcmp ( const void * left , const void * right , int size ) {
const char * charLeft = ( const char * ) left ;
const char * charRight = ( const char * ) right ;

int index ;
for ( index = 0 ; index < size ; ++ index ) {
if ( charLeft [ index ] < charRight [ index ] ) {
return -1 ;
}
else if ( charLeft [ index ] > charRight [ index ] ) {
return 1 ;
}
}

return 0 ;
}

void * memchr ( const void * block , int i , int size ) {
int index ;
const char * charBlock = ( const char * ) block ;
char c = ( char ) i ;

for ( index = 0 ; index < size ; ++ index ) {
if ( charBlock [ index ] == c ) {
return ( void * ) & charBlock [ index ];
}
}

return ( ( void * ) 0 ) ;
}

void * memset ( void * block , int i , int size ) {
char * charBlock = ( char * ) block ;
char c = ( char ) i ;

int index ;
for ( index = 0 ; index < size ; ++ index ) {
charBlock [ index ] = c ;
}

return block ;
}
