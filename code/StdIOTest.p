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
        
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdIOTest.c,0$
        

void stdio_test ( void ) {
{ int n = 0 ;
int * p = & n ;

printf ( "<%i> <%i> <%li> <%li> <%u> <%lu>\n\n" , 123 , -123 , 123L , -123L , 123 , 123L ) ;

printf ( "<%6i> <%6i> <%6li> <%6li> <%6u> <%6lu>\n" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "<%+6i> <%+6i> <%+6li> <%+6li> <%+6u> <%+6lu>\n" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "<%-6i> <%-6i> <%-6li> <%-6li> <%-6u> <%-6lu>\n" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "<%+-6i> <%+-6i> <%+-6li> <%+-6li> <%+-6u> <%+-6lu>\n\n" , 123 , +- 123 , 123L , +- 123L , 123 , 123L ) ;

printf ( "<%06i> <%06i> <%06li> <%06li> <%06u> <%06lu>\n" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "<%+06i> <%+06i> <%+06li> <%+06li> <%+06u> <%+06lu>\n" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "<%-06i> <%-06i> <%-06li> <%-06li> <%-06u> <%-06lu>\n" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "<%+-06i> <%+-06i> <%+-06li> <%+-06li> <%+-06u> <%+-06lu>\n\n" , 123 , -123 , 123L , -123L , 123 , 123L ) ;

printf ( "<% 6i> <% 6i> <% 6li> <% 6li> <% 6u> <% 6lu>\n" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "<%+ 6i> <%+ 6i> <%+ 6li> <%+ 6li> <%+ 6u> <%+ 6lu>\n" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "<%- 6i> <%- 6i> <%- 6li> <%- 6li> <%- 6u> <%- 6lu>\n" , 123 , -123 , 123L , -123L , 123 , 123L ) ;
printf ( "<%+- 6i> <%+- 6i> <%+- 6li> <%+- 6li> <%+- 6u> <%+- 6lu>\n\n" , 123 , -123 , 123L , -123L , 123 , 123L ) ;

printf ( "<%x> <%X> <%o> <%lx> <%lX> <%lo>\n" , 123 , 123 , 123 , 123L , 123L , 123L ) ;
printf ( "<%#x> <%#X> <%#o> <%#lx> <%#lX> <%#lo>\n" , 123 , 123 , 123 , 123L , 123L , 123L ) ;
printf ( "<%%> <%s> <%c> <%p>\n\n" , "Hello, World!" , 'X' , p ) ;

printf ( "<%f> <%e> <%E> <%g> <%G>\n" , 123.456 , 123.456 , 123.456 , 123456.1 , 123456.1 ) ;
printf ( "<%lf> <%le> <%lE> <%lg> <%lG>\n" , 123.456L , 123.456L , 123.456L , 123456.1L , 123456.1L ) ;

printf ( "<%#f> <%#e> <%#E> <%#g> <%#G>\n" , 123.456 , 123.456 , 123.456 , 123.456 , 123.456 ) ;
printf ( "<%#lf> <%#le> <%#lE> <%#lg> <%#lG>\n" , 123.456L , 123.456L , 123.456L , 123.456L , 123.456L ) ;

printf ( "<%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>\n" , 123.456 , 123.456 , 123.456 , 123.456 , 123.456 ) ;
printf ( "<%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>\n\n" , 123.456L , 123.456L , 123.456L , 123.456L , 123.456L ) ;




printf ( "<%f> <%e> <%E> <%g> <%G>\n" , -123.456 , -123.456 , -123.456 , -0.000000123456 , -0.000000123456 ) ;
printf ( "<%lf> <%le> <%lE> <%lg> <%lG>\n" , -123.456L , -123.456L , -123.456L , -0.000000123456L , -0.000000123456L ) ;

printf ( "<%#f> <%#e> <%#E> <%#g> <%#G>\n" , -123.456 , -123.456 , -123.456 , -123.456 , -123.456 ) ;
printf ( "<%#lf> <%#le> <%#lE> <%#lg> <%#lG>\n" , -123.456L , -123.456L , -123.456L , -123.456L , -123.456L ) ;

printf ( "<%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>\n" , -123.456 , -123.456 , -123.456 , -123.456 , -123.456 ) ;
printf ( "<%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>\n\n" , -123.456L , -123.456L , -123.456L , -123.456L , -123.456L ) ;
}

{ int a = 0 , b = 0 , n = 0 ;
printf ( "Please write three integers: " ) ;
sscanf ( "123 456 789" , "%i %*i %i %n" , & a , & b , & n ) ;
printf ( "<%i> <%i> <%i>\n" , a , b , n ) ;
}

{ char s [ 100 ];
printf ( "Please write the patterns [abc]: " ) ;
sscanf ( "abcdef" , "%[abc]" , s ) ;
printf ( "<%s>\n" , s ) ;

printf ( "Please write the patterns [^abc]: " ) ;
sscanf ( "defabc" , "%[^abc]" , s ) ;
printf ( "<%s>\n\n" , s ) ;
}
















} 
