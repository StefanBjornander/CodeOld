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
        
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Locale.c,0$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdlib.h,0$
    
    
 
     
           
 
 double atof ( const char * s ) ; 
 int atoi ( const char * s ) ; 
 long atol ( const char * s ) ; 
 
 double strtod ( const char * s , char ** endp ) ; 
 long strtol ( const char * s , char ** endp , int base ) ; 
 unsigned long strtoul ( const char * s , char ** endp , int base ) ; 
 
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
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Locale.c,1$
        
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
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Locale.c,2$
        
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
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Locale.c,3$
        
 
 static char * enShortDayList [] = { "Sun" , "Mon" , "Tue" , "Wed" , 
 "Thu" , "Fri" , "Sat" }; 
 static char * enLongDayList [] ={ "Sunday" , "Monday" , "Tuesday" , "Wednesday" , 
 "Thursday" , "Friday" , "Saturday" }; 
 
 static char * enShortMonthList [] = { "Jan" , "Feb" , "Mar" , "Apr" , "May" , "Jun" , 
 "Jul" , "Aug" , "Sep" , "Oct" , "Nov" , "Dec" }; 
 static char * enLongMonthList [] = { "January" , "February" , "March" , "April" , 
 "May" , "June" , "July" , "August" , 
 "September" , "October" , "November" , "December" }; 
 
 extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , 
 EDOM , ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , 
 FREAD , FSEEK , FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE }; 
 char * enMessageList [] = { "no error" , "function number invalid" , 
 "file not found" , "path not found" , 
 "no handle available" , "access denied" , 
 "out of domain" , "out of range" , 
 "invalid multibyte sequence" , "error while opening" , 
 "error while flushing" , "error while closing" , 
 "open mode invalid" , "error while writing" , 
 "error while reading" , "error while seeking" , 
 "error while telling" , "error while sizing" , 
 "error while removing file" , 
 "error while renaming file" }; 
 
 static struct lconv en_US_utf8 = { 1 , 1 , enShortDayList , enLongDayList , 
 enShortMonthList , enLongMonthList , 
 "abcdefghijklmnopqrstuvwxyz" , 
 "ABCDEFGHIJKLMNOPQRSTUVWXYZ" , 
 enMessageList }; 
 
 static const struct _s { 
 char * name ; 
 struct lconv * localePtr ; 
 } g_sArray [] = { { "" , & en_US_utf8 } , { "C" , & en_US_utf8 } , { "US" , & en_US_utf8 } }; 
 
 static const int g_sSize = ( sizeof g_sArray ) / ( sizeof g_sArray [ 0 ] ) ; 
 static struct _s * g_currStructPtr = & g_sArray [ 0 ]; 
 
 char * setlocale ( int , char * newName ) { 
 int index ; 
 char * oldName = ( g_currStructPtr != ( ( void * ) 0 ) ) ? g_currStructPtr -> name : ( ( void * ) 0 ) ; 
 g_currStructPtr = ( ( void * ) 0 ) ; 
 
 if ( newName != ( ( void * ) 0 ) ) { 
 for ( index = 0 ; index < g_sSize ; ++ index ) { 
 if ( strcmp ( newName , g_sArray [ index ]. name ) == 0 ) { 
 g_currStructPtr = & g_sArray [ index ]; 
 break ; 
 } 
 } 
 } 
 
 return oldName ; 
 } 
 
 struct lconv * localeconv ( void ) { 
 return ( g_currStructPtr != ( ( void * ) 0 ) ) ? g_currStructPtr -> localePtr : ( ( void * ) 0 ) ; 
 } 
