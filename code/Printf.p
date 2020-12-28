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
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.c,0$
        
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
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.c,1$
        
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
        
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.c,2$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stddef.h,0$
    
    
 
           
     
     
     
     
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.c,3$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdarg.h,0$
    
    
 
      
                          
                                     
       
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.c,4$
        
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
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.c,5$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\scanf.h,0$
    
    
 
     
     
 
     
 
            
             
                
                 
                
                 
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.c,6$
        
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\printf.h,0$
    
    
 
     
     
 
       
      
 
            
            
        
 
            
             
                
                 
                
                 
 
   
 
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.c,7$
        
 
     
     
     
 
                         
 
 int g_outStatus , g_outChars ; 
 void * g_outDevice ; 
 
     
 
 void printChar ( char c ) ; 
 void printString ( const char * s , int precision ) ; 
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
 int printFormat ( const char * format , char * arg_list ) ; 
 
 int putc ( int i , FILE * stream ) { 
 g_outStatus = 0 ; 
 g_outDevice = ( void * ) stream ; 
 printChar ( ( char ) i ) ; 
 return 1 ; 
 } 
 
 int fputc ( int i , FILE * stream ) { 
 g_outStatus = 0 ; 
 g_outDevice = ( void * ) stream ; 
 printChar ( ( char ) i ) ; 
 return 1 ; 
 } 
 
 int putchar ( int i ) { 
 g_outStatus = 0 ; 
 g_outDevice = ( void * ) stdout ; 
 printChar ( ( char ) i ) ; 
 return 1 ; 
 } 
 
 void printChar ( char c ) { 
 int handle ; 
 char * outString ; 
 
 switch ( g_outStatus ) { 
 case 0 : { 
 FILE * stream = ( FILE * ) g_outDevice ; 
 
    
     
       
     
      
      
   
 
    
 register_rax = 0x01 ; 
 register_rdi = ( unsigned long ) stream -> handle ; 
 register_rsi = ( unsigned long ) & c ; 
 register_rdx = 1 ; 
 syscall ( ) ; 
   
 ++ g_outChars ; 
 break ; 
 } 
 
 case 1 : { 
 outString = ( char * ) g_outDevice ; 
 outString [ g_outChars ++] = c ; 
 } 
 break ; 
 
 case 2 : 
 g_outChars ++; 
 break ; 
 } 
 } 
 
 void printString ( const char * s , int precision ) { 
 if ( s != ( ( void * ) 0 ) ) { 
 int index ; 
 
 if ( precision == 0 ) { 
 for ( index = 0 ; s [ index ] != '\0' ; ++ index ) { 
 printChar ( s [ index ] ) ; 
 } 
 } 
 else { 
 for ( index = 0 ; ( precision -- > 0 ) && ( s [ index ] != '\0' ) ; ++ index ) { 
 printChar ( s [ index ] ) ; 
 } 
 } 
 } 
 else { 
 printChar ( '<' ) ; 
 printChar ( 'N' ) ; 
 printChar ( 'U' ) ; 
 printChar ( 'L' ) ; 
 printChar ( 'L' ) ; 
 printChar ( '>' ) ; 
 } 
 } 
 
 void printLongIntRec ( long longValue ) { 
 if ( longValue != 0 ) { 
 int digit = ( int ) ( longValue % 10L ) ; 
 printLongIntRec ( longValue / 10L ) ; 
 printChar ( ( char ) ( digit + '0' ) ) ; 
 } 
 } 
 
 void printLongInt ( long longValue , int plus , int space ) { 
 if ( longValue < 0L ) { 
 longValue = - longValue ; 
 printChar ( '-' ) ; 
 } 
 else if ( space ) { 
 printChar ( ' ' ) ; 
 } 
 else if ( plus ) { 
 printChar ( '+' ) ; 
 } 
 
 if ( longValue == 0L ) { 
 printChar ( '0' ) ; 
 } 
 else { 
 printLongIntRec ( longValue ) ; 
 } 
 } 
 
 char digitToChar ( int digit , int capital ) { 
 if ( digit < 10 ) { 
 return ( ( char ) ( '0' + digit ) ) ; 
 } 
 else if ( capital ) { 
 return ( ( char ) ( 'A' + ( digit - 10 ) ) ) ; 
 } 
 else { 
 return ( ( char ) ( 'a' + ( digit - 10 ) ) ) ; 
 } 
 } 
 
 void printUnsignedLongRec ( unsigned long unsignedValue , 
 unsigned long base , int capital ) { 
 if ( unsignedValue > 0ul ) { 
 int digit = ( int ) ( unsignedValue % base ) ; 
 printUnsignedLongRec ( unsignedValue / base , base , capital ) ; 
 
 { char c = digitToChar ( digit , capital ) ; 
 printChar ( c ) ; 
 } 
 } 
 } 
 
 void printUnsignedLong ( unsigned long unsignedValue , int plus , int space , 
 int grid , unsigned long base , int capital ) { 
 if ( plus ) { 
 printChar ( '+' ) ; 
 } 
 
 if ( space ) { 
 printChar ( ' ' ) ; 
 } 
 
 if ( grid ) { 
 if ( base == 8ul ) { 
 printChar ( '0' ) ; 
 } 
 
 if ( base == 16ul ) { 
 printChar ( '0' ) ; 
 printChar ( capital ? 'X' : 'x' ) ; 
 } 
 } 
 
 if ( unsignedValue == 0ul ) { 
 printChar ( '0' ) ; 
 } 
 else { 
 printUnsignedLongRec ( unsignedValue , base , capital ) ; 
 } 
 } 
 
 void printLongDoubleFraction ( long double longDoubleValue , 
 int grid , int precision ) { 
 longDoubleValue -= ( long ) longDoubleValue ; 
 
 if ( precision == 0 ) { 
 precision = 6 ; 
 } 
 
 if ( grid || ( precision > 0 ) ) { 
 printChar ( '.' ) ; 
 } 
 
 while ( precision -- > 0 ) { 
 long double longDoubleValue10 = 10.0L * longDoubleValue ; 
 int digitValue = ( int ) longDoubleValue10 ; 
 printChar ( ( char ) ( digitValue + '0' ) ) ; 
 longDoubleValue = longDoubleValue10 - ( ( long double ) digitValue ) ; 
 } 
 } 
 
 void printLongDoublePlain ( long double longDoubleValue , int plus , 
 int space , int grid , int precision ) { 
 if ( longDoubleValue < 0.0L ) { 
 printChar ( '-' ) ; 
 longDoubleValue = - longDoubleValue ; 
 plus = 0 ; 
 space = 0 ; 
 } 
 
 { long longValue = ( long ) longDoubleValue ; 
 printLongInt ( longValue , plus , space ) ; 
 longDoubleValue -= ( long double ) longValue ; 
 printLongDoubleFraction ( longDoubleValue , grid , precision ) ; 
 } 
 } 
 
 void printLongDoubleExpo ( long double value , int plus , int space , 
 int grid , int precision , int capital ) { 
 if ( value == 0.0L ) { 
 printChar ( '0' ) ; 
 printLongDoubleFraction ( 0.0L , precision , grid ) ; 
 printChar ( capital ? 'E' : 'e' ) ; 
 printChar ( '0' ) ; 
 } 
 else { 
 if ( value < 0.0L ) { 
 printChar ( '-' ) ; 
 value = - value ; 
 } 
 
 { int expo = ( int ) log10 ( value ) ; 
 value /= pow ( 10.0 , expo ) ; 
 
 printLongDoublePlain ( value , plus , space , grid , precision ) ; 
 printChar ( capital ? 'E' : 'e' ) ; 
 printLongInt ( expo , 1 , 0 ) ; 
 } 
 } 
 } 
 
 char * checkWidthAndPrecision ( char * arg_list , int * widthPtr , 
 int * precisionPtr ) { 
 if ( ( widthPtr != ( ( void * ) 0 ) ) && ( * widthPtr == -1 ) ) { 
 * widthPtr = ( * ( ( arg_list += sizeof ( int ) ) , ( ( int * ) ( arg_list - sizeof ( int ) ) ) ) ) ; 
 } 
 
 if ( ( precisionPtr != ( ( void * ) 0 ) ) && ( * precisionPtr == -1 ) ) { 
 * precisionPtr = ( * ( ( arg_list += sizeof ( int ) ) , ( ( int * ) ( arg_list - sizeof ( int ) ) ) ) ) ; 
 } 
 
 return arg_list ; 
 } 
 
 char * printArgument ( const char * format , char * arg_list , int plus , 
 int space , int grid , int * widthPtr , int precision , 
 int shortInt , int longInt , int longDouble , int sign , 
 int * negativePtr ) { 
 char c = format [ 0 ] , charValue ; 
 int * intPtr ; 
 long double longDoubleValue ; 
 void * ptrValue ; 
 
 switch ( c ) { 
 case 'i' : 
 case 'd' : { 
 long longValue ; 
 
 if ( shortInt ) { 
 longValue = ( long ) ( short ) ( * ( ( arg_list += sizeof ( int ) ) , ( ( int * ) ( arg_list - sizeof ( int ) ) ) ) ) ; 
 } 
 else if ( longInt ) { 
 longValue = ( * ( ( arg_list += sizeof ( long ) ) , ( ( long * ) ( arg_list - sizeof ( long ) ) ) ) ) ; 
 } 
 else { 
 longValue = ( long ) ( * ( ( arg_list += sizeof ( int ) ) , ( ( int * ) ( arg_list - sizeof ( int ) ) ) ) ) ; 
 } 
 
 if ( negativePtr != ( ( void * ) 0 ) ) { 
 * negativePtr = ( longValue < 0 ) ; 
 } 
 
 if ( ! sign ) { 
 longValue = labs ( longValue ) ; 
 } 
 
 arg_list = checkWidthAndPrecision ( arg_list , widthPtr , & precision ) ; 
 printLongInt ( longValue , plus , space ) ; 
 } 
 break ; 
 
 case 'c' : 
 charValue = ( char ) ( * ( ( arg_list += sizeof ( int ) ) , ( ( int * ) ( arg_list - sizeof ( int ) ) ) ) ) ; 
 arg_list = checkWidthAndPrecision ( arg_list , widthPtr , & precision ) ; 
 printChar ( charValue ) ; 
 break ; 
 
 case 's' : { 
 char * stringValue = ( * ( ( arg_list += sizeof ( char * ) ) , ( ( char * * ) ( arg_list - sizeof ( char * ) ) ) ) ) ; 
 arg_list = checkWidthAndPrecision ( arg_list , widthPtr , & precision ) ; 
 printString ( stringValue , precision ) ; 
 } 
 break ; 
 
 case 'u' : 
 case 'o' : 
 case 'b' : 
 case 'x' : 
 case 'X' : { 
 unsigned long base = ( ( c == 'u' ) ? 10ul : ( ( c == 'o' ) ? 8ul : 
 ( ( c == 'b' ) ? 2ul : 16ul ) ) ) ; 
 unsigned long value ; 
 
 if ( shortInt ) { 
 value = ( unsigned long ) ( unsigned short ) 
 ( * ( ( arg_list += sizeof ( unsigned int ) ) , ( ( unsigned int * ) ( arg_list - sizeof ( unsigned int ) ) ) ) ) ; 
 } 
 else if ( longInt ) { 
 value = ( * ( ( arg_list += sizeof ( unsigned long ) ) , ( ( unsigned long * ) ( arg_list - sizeof ( unsigned long ) ) ) ) ) ; 
 } 
 else { 
 value = ( unsigned long ) ( * ( ( arg_list += sizeof ( unsigned int ) ) , ( ( unsigned int * ) ( arg_list - sizeof ( unsigned int ) ) ) ) ) ; 
 } 
 
 arg_list = checkWidthAndPrecision ( arg_list , widthPtr , & precision ) ; 
 printUnsignedLong ( value , plus , space , grid , base , isupper ( c ) ) ; 
 } 
 break ; 
 
 case 'f' : 
 case 'e' : 
 case 'E' : 
 case 'g' : 
 case 'G' : 
 if ( longDouble ) { 
 longDoubleValue = ( * ( ( arg_list += sizeof ( long double ) ) , ( ( long double * ) ( arg_list - sizeof ( long double ) ) ) ) ) ; 
 printLongDoublePlain ( longDoubleValue , 0 , 0 , 0 , 3 ) ; 
 } 
 else { 
 longDoubleValue = ( long double ) ( * ( ( arg_list += sizeof ( double ) ) , ( ( double * ) ( arg_list - sizeof ( double ) ) ) ) ) ; 
 } 
 
 if ( negativePtr != ( ( void * ) 0 ) ) { 
 * negativePtr = ( longDoubleValue < 0 ) ; 
 } 
 
 if ( ! sign ) { 
 longDoubleValue = fabs ( longDoubleValue ) ; 
 } 
 
 arg_list = checkWidthAndPrecision ( arg_list , widthPtr , & precision ) ; 
 
 if ( c == 'f' ) { 
 printLongDoublePlain ( longDoubleValue , plus , space , grid , precision ) ; 
 } 
 else if ( tolower ( c ) == 'e' ) { 
 printLongDoubleExpo ( longDoubleValue , plus , space , 
 grid , precision , isupper ( c ) ) ; 
 } 
 else { 
 int expo = ( int ) log10 ( fabs ( longDoubleValue ) ) ; 
 
 if ( ( expo >= -3 ) && ( expo <= 2 ) ) { 
 printLongDoublePlain ( longDoubleValue , plus , space , grid , precision ) ; 
 } 
 else { 
 printLongDoubleExpo ( longDoubleValue , plus , space , 
 grid , precision , isupper ( c ) ) ; 
 } 
 } 
 break ; 
 
 case 'p' : 
 ptrValue = ( * ( ( arg_list += sizeof ( void * ) ) , ( ( void * * ) ( arg_list - sizeof ( void * ) ) ) ) ) ; 
 arg_list = checkWidthAndPrecision ( arg_list , widthPtr , & precision ) ; 
 printUnsignedLong ( ( void * ) ptrValue , 0 , 0 , 0 , 10u , 0 ) ; 
 break ; 
 
 case 'n' : 
 ptrValue = ( * ( ( arg_list += sizeof ( void * ) ) , ( ( void * * ) ( arg_list - sizeof ( void * ) ) ) ) ) ; 
 intPtr = ( * ( ( arg_list += sizeof ( int * ) ) , ( ( int * * ) ( arg_list - sizeof ( int * ) ) ) ) ) ; 
 arg_list = checkWidthAndPrecision ( arg_list , widthPtr , & precision ) ; 
 * intPtr = g_outChars ; 
 break ; 
 
 case '%' : 
 arg_list = checkWidthAndPrecision ( arg_list , widthPtr , & precision ) ; 
 printChar ( '%' ) ; 
 break ; 
 } 
 
 return arg_list ; 
 } 
 
 int printFormat ( const char * format , char * arg_list ) { 
 int index , width = 0 , precision = 0 ; 
 int percent = 0 , plus = 0 , minus = 0 , space = 0 , 
 zero = 0 , grid = 0 , widthStar = 0 , 
 period = 0 , precisionStar = 0 , 
 shortInt = 0 , longInt = 0 , longDouble = 0 ; 
 g_outChars = 0 ; 
 
 for ( index = 0 ; format [ index ] != '\0' ; ++ index ) { 
 char c = format [ index ]; 
 
 if ( percent ) { 
 switch ( c ) { 
 case '+' : 
 plus = 1 ; 
 break ; 
 
 case '-' : 
 minus = 1 ; 
 break ; 
 
 case ' ' : 
 space = 1 ; 
 break ; 
 
 case '0' : 
 zero = 1 ; 
 break ; 
 
 case '#' : 
 grid = 1 ; 
 break ; 
 
 case '.' : 
 period = 1 ; 
 break ; 
 
 case '*' : 
 if ( ! period ) { 
 width = -1 ; 
 } 
 else { 
 precision = -1 ; 
 } 
 break ; 
 
 case 'h' : 
 shortInt = 1 ; 
 break ; 
 
 case 'l' : 
 longInt = 1 ; 
 break ; 
 
 case 'L' : 
 longDouble = 1 ; 
 break ; 
 
 case 'i' : 
 case 'd' : 
 case 'u' : 
 case 'b' : 
 case 'o' : 
 case 'x' : 
 case 'X' : 
 case 'c' : 
 case 's' : 
 case 'f' : 
 case 'e' : 
 case 'E' : 
 case 'g' : 
 case 'G' : 
 case 'p' : 
 case 'n' : 
 case '%' : { 
 if ( minus ) { 
 int startChars = g_outChars ; 
 arg_list = printArgument ( & format [ index ] , arg_list , plus , space , 
 grid , & width , precision , shortInt , 
 longInt , longDouble , 1 , ( ( void * ) 0 ) ) ; 
 
 { int field = g_outChars - startChars ; 
 
 while ( field ++ < width ) { 
 printChar ( ' ' ) ; 
 } 
 } 
 } 
 else if ( zero ) { 
 int startChars = g_outChars , oldOutStatus = g_outStatus ; 
 int negative = 0 ; 
 
 g_outStatus = 2 ; 
 printArgument ( & format [ index ] , arg_list , 0 , 0 , grid , 
 & width , precision , shortInt , longInt , 
 longDouble , 0 , & negative ) ; 
 g_outStatus = oldOutStatus ; 
 
 { int field = g_outChars - startChars ; 
 g_outChars = startChars ; 
 
 if ( negative ) { 
 printChar ( '-' ) ; 
 ++ field ; 
 } 
 else if ( plus ) { 
 printChar ( '+' ) ; 
 ++ field ; 
 } 
 else if ( space ) { 
 printChar ( ' ' ) ; 
 ++ field ; 
 } 
 
 while ( field ++ < width ) { 
 printChar ( '0' ) ; 
 } 
 
 arg_list = printArgument ( & format [ index ] , arg_list , 0 , 0 , 
 grid , ( ( void * ) 0 ) , precision , shortInt , 
 longInt , longDouble , 0 , ( ( void * ) 0 ) ) ; 
 } 
 } 
 else { 
 int startChars = g_outChars , oldOutStatus = g_outStatus ; 
 
 g_outStatus = 2 ; 
 printArgument ( & format [ index ] , arg_list , plus , space , grid , 
 & width , precision , shortInt , longInt , 
 longDouble , 1 , ( ( void * ) 0 ) ) ; 
 g_outStatus = oldOutStatus ; 
 
 { int field = g_outChars - startChars ; 
 g_outChars = startChars ; 
 
 while ( field ++ < width ) { 
 printChar ( ' ' ) ; 
 } 
 
 arg_list = printArgument ( & format [ index ] , arg_list , plus , space , 
 grid , ( ( void * ) 0 ) , precision , shortInt , 
 longInt , longDouble , 1 , ( ( void * ) 0 ) ) ; 
 } 
 } 
 
 percent = 0 ; 
 } 
 break ; 
 
 default : { 
 int value = 0 ; 
 while ( isdigit ( c ) ) { 
 value = ( 10 * value ) + ( c - '0' ) ; 
 c = format [++ index ]; 
 } 
 -- index ; 
 
 if ( ! period ) { 
 width = value ; 
 } 
 else { 
 precision = value ; 
 } 
 } 
 break ; 
 } 
 } 
 else { 
 if ( c == '%' ) { 
 percent = 1 ; 
 plus = 0 ; 
 minus = 0 ; 
 space = 0 ; 
 zero = 0 ; 
 grid = 0 ; 
 widthStar = 0 ; 
 period = 0 ; 
 precisionStar = 0 ; 
 shortInt = 0 ; 
 longInt = 0 ; 
 longDouble = 0 ; 
 width = 0 ; 
 precision = 0 ; 
 } 
 else { 
 printChar ( c ) ; 
 } 
 } 
 } 
 
 if ( g_outStatus == 1 ) { 
 char * outString = ( char * ) g_outDevice ; 
 outString [ g_outChars ] = '\0' ; 
 } 
 
 return g_outChars ; 
 } 
 
 int printf ( const char * format , ... ) { 
 char * arg_list ; 
 ( arg_list = ( ( char * ) & format ) + sizeof ( format ) ) ; 
 return vprintf ( format , arg_list ) ; 
 } 
 
 int vprintf ( const char * format , char * arg_list ) { 
 return vfprintf ( stdout , format , arg_list ) ; 
 } 
 
 int fprintf ( FILE * outStream , const char * format , ... ) { 
 char * arg_list ; 
 ( arg_list = ( ( char * ) & format ) + sizeof ( format ) ) ; 
 return vfprintf ( outStream , format , arg_list ) ; 
 } 
 
 int vfprintf ( FILE * outStream , const char * format , char * arg_list ) { 
 g_outStatus = 0 ; 
 g_outDevice = ( void * ) outStream ; 
 return printFormat ( format , arg_list ) ; 
 } 
 
 int sprintf ( char * outString , const char * format , ... ) { 
 char * arg_list ; 
 ( arg_list = ( ( char * ) & format ) + sizeof ( format ) ) ; 
 return vsprintf ( outString , format , arg_list ) ; 
 } 
 
 int vsprintf ( char * outString , const char * format , char * arg_list ) { 
 g_outStatus = 1 ; 
 g_outDevice = ( void * ) outString ; 
 return printFormat ( format , arg_list ) ; 
 } 
