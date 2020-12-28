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
 
 extern int strftime ( char * buffer , int size , const char * format , 
 const struct tm * timeStruct ) ; 
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLibTest.c,0$
        
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
        
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLibTest.c,1$
        
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
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdLibTest.c,2$
        
 
 
 
 
 
 
 
 
 int compare ( const void * valuePtr1 , const void * valuePtr2 ) { 
 int intValue1 = * ( ( int * ) valuePtr1 ) , intValue2 = * ( ( int * ) valuePtr2 ) ; 
 return ( intValue1 < intValue2 ) ? -1 : ( ( intValue1 == intValue2 ) ? 0 : 1 ) ; 
 } 
 
 int reverse_compare ( const void * valuePtr1 , const void * valuePtr2 ) { 
 int intValue1 = * ( ( int * ) valuePtr1 ) , intValue2 = * ( ( int * ) valuePtr2 ) ; 
 return ( intValue1 < intValue2 ) ? 1 : ( ( intValue1 == intValue2 ) ? 0 : -1 ) ; 
 } 
 
 div_t print_div ( div_t d ) { 
 printf ( "div_t quot %i rem %i\n" , d . quot , d . rem ) ; 
 ++ d . quot ; 
 d . rem ++; 
 return d ; 
 } 
 
 ldiv_t print_ldiv ( ldiv_t ld ) { 
 printf ( "ldiv_t quot %li rem %li\n" , ld . quot , ld . rem ) ; 
 -- ld . quot ; 
 ld . rem --; 
 return ld ; 
 } 
 
 void exit_handle1x ( void ) { 
 printf ( "exit1\n" ) ; 
 } 
 
 void exit_handle2x ( void ) { 
 printf ( "exit2\n" ) ; 
 } 
 
 void exit_handle3x ( void ) { 
 printf ( "exit3\n" ) ; 
 } 
 
 void hello ( void ) { 
 printf ( "HelloFFF" ) ; 
 } 
 
 void qtest ( void f ( void ) ) { 
 printf ( "f: %u\n" , ( unsigned ) f ) ; 
 f ( ) ; 
 } 
 
 void stdlib_testZ ( void ) { 
 printf ( "hello: %u\n" , ( unsigned ) hello ) ; 
 qtest ( hello ) ; 
 printf ( "Y" ) ; 
 } 
 
 void stdlib_test ( void ) { 
 { char * p ; 
 printf ( "atof(\"123.456\") = %f\n" , atof ( "123.456" ) ) ; 
 printf ( "strtod(\"123.456789abc\", &p) = (%f, %s)\n" , strtod ( "123.456789abc" , & p ) , p ) ; 
 } 
 
 printf ( "\ngetenv(\"path\") = %s\n" , getenv ( "path" ) ) ; 
 printf ( "system(\"dir\")\n" ) ; 
 system ( "dir" ) ; 
 
 printf ( "\nabs(-3) = %i, abs(3) = %i\n" , abs ( -3 ) , abs ( 3 ) ) ; 
 printf ( "labs(-3l) = %li, labs(3l) = %li\n\n" , labs ( -3l ) , labs ( 3l ) ) ; 
 
 { div_t i = div ( 10 , 3 ) ; 
 printf ( "div_t(10, 3) = (%i, %i)\n" , i . quot , i . rem ) ; 
 
 { div_t j = print_div ( i ) ; 
 printf ( "div_t(10, 3) = (%i, %i)\n\n" , j . quot , j . rem ) ; 
 } 
 } 
 
 { ldiv_t li = ldiv ( 10 , 3 ) ; 
 printf ( "ldiv_t(10, 3) = (%li, %li)\n" , li . quot , li . rem ) ; 
 
 { ldiv_t lj = print_ldiv ( li ) ; 
 printf ( "ldiv_t(10, 3) = (%li, %li)\n\n" , lj . quot , lj . rem ) ; 
 } 
 } 
 
 { int list [] = { 3 , 4 , 2 , 1 , }; 
 int size = sizeof list / sizeof list [ 0 ]; 
 
 { int index ; 
 printf ( "\nA List 1: " ) ; 
 for ( index = 0 ; index < size ; ++ index ) { 
 printf ( "%i " , * ( list + index ) ) ; 
 } 
 } 
 
 { int index ; 
 printf ( "\nB List 2: " ) ; 
 qsort ( list , size , sizeof list [ 0 ] , compare ) ; 
 for ( index = 0 ; index < size ; ++ index ) { 
 printf ( "%i " , * ( list + index ) ) ; 
 } 
 } 
 
 { int index ; 
 printf ( "\nC List 3: " ) ; 
 qsort ( list , size , sizeof list [ 0 ] , reverse_compare ) ; 
 for ( index = 0 ; index < size ; ++ index ) { 
 printf ( "%i " , * ( list + index ) ) ; 
 } 
 } 
 
 { int key ; 
 printf ( "\n\nSearch:\n" ) ; 
 for ( key = 0 ; key < 6 ; ++ key ) { 
 int * p = ( int * ) bsearch ( & key , list , size , sizeof list [ 0 ] , compare ) ; 
 int index = ( p != ( ( void * ) 0 ) ) ? ( p - list ) : -1 ; 
 printf ( "  (%i, %i)\n" , key , index ) ; 
 } 
 } 
 
 printf ( "\n" ) ; 
 } 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 } 
