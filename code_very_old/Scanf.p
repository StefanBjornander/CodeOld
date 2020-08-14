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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.c,0$
       
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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.c,1$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdIO.h,1$
   
   

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Math.h,1$
   
   

    
    
    

       
       
       
       
          
          

          
           

       
       
       

       
       
       

       

       
       
       
          

       
       
       
       

           
          

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdIO.h,3$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\CType.h,1$
   
   

       
       
       
       
       
       
       
       
       
       
       
       
       

  

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
       

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.c,2$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdDef.h,1$
   
   

          

    
    

    
    
    

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.c,3$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StdArg.h,1$
   
   

     
                         
                    
               
      

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.c,4$
       
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

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.c,5$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.h,1$
   
   

    
    

    

     
    

     
      
          
     
        
      

         
          
             
              
             
              

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.c,6$
       
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.h,1$
   
   

    
    

     
    

          
          
      

      
      
          
       
      
            
                  
                   
            
            
             
                   
          

       
         
          
             
              
             
              

  

$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.c,7$
       

                        

int g_inStatus , g_inChars ;
void * g_inDevice ;
int g_inCount ;











char scanChar ( void ) {
char c = '\0' ;
FILE * stream ;
int handle ;
char * inString ;

switch ( g_inStatus ) {
case 0 :
stream = ( FILE * ) g_inDevice ;





handle = stream -> handle ;






   
    
   
   
    
    



  

   
 register_rax = 0x00L ;
register_rdi = ( unsigned long ) stream -> handle ;
register_rsi = ( unsigned long ) & c ;
register_rdx = 1L ;
syscall ( ) ;
  

++ g_inChars ;
return c ;


case 1 :
inString = ( char * ) g_inDevice ;
return inString [ g_inChars ++];

default :
return '\0' ;
}
}

void unscanChar ( char ) {



switch ( g_inStatus ) {
case 0 :









-- g_inChars ;
break ;

case 1 :
-- g_inChars ;
break ;
}
}





















void scanPattern ( char * string , char * pattern , int not ) {
int index = 0 ;
char input = scanChar ( ) ;

while ( isspace ( input ) ) {
input = scanChar ( ) ;
}

if ( string != ( ( void * ) 0 ) ) {
while ( ( ! not && strchr ( pattern , input ) ) ||
( not && ! strchr ( pattern , input ) ) ) {

string [ index ++] = input ;
input = scanChar ( ) ;
}

string [ index ] = '\0' ;

}
else {
while ( ( ! not && strchr ( pattern , input ) ) ||
( not && ! strchr ( pattern , input ) ) ) {
input = scanChar ( ) ;
}
}
}

void scanString ( char * string , int precision ) {
int index = 0 ;
char input = scanChar ( ) ;
int found = 0 ;

while ( isspace ( input ) ) {
input = scanChar ( ) ;
}

if ( string != ( ( void * ) 0 ) ) {
if ( precision == 0 ) {
while ( ! isspace ( input ) && ( input != -1 ) && ( input != '\n' ) ) {
string [ index ++] = input ;
input = scanChar ( ) ;
found = 1 ;
++ g_inChars ;
}

string [ index ] = '\0' ;
++ g_inChars ;
}
else {
while ( ( precision -- > 0 ) && ( ! isspace ( input ) && ( input != -1 ) && ( input != '\n' ) ) ) {
string [ index ++] = input ;
input = scanChar ( ) ;
found = 1 ;
++ g_inChars ;
}

if ( precision > 0 ) {
string [ index ] = '\0' ;
++ g_inChars ;
}
}
}
else {
if ( precision == 0 ) {
while ( ! isspace ( input ) && ( input != -1 ) && ( input != '\n' ) ) {
input = scanChar ( ) ;
found = 1 ;
++ g_inChars ;
}

++ g_inChars ;
}
else {
while ( ( precision -- > 0 ) && ( ! isspace ( input ) && ( input != -1 ) && ( input != '\n' ) ) ) {
input = scanChar ( ) ;
found = 1 ;
++ g_inChars ;
}

if ( precision > 0 ) {
++ g_inChars ;
}
}
}

if ( found ) {
++ g_inCount ;
}
}



unsigned long digitToValue ( char input ) {
if ( isdigit ( input ) ) {
return ( input - '0' ) ;
}
else if ( islower ( input ) ) {
return ( ( input - 'a' ) + 10ul ) ;
}
else {
return ( ( input - 'A' ) + 10ul ) ;
}
}

long scanLongInt ( void ) {
long longValue = 0l ;
int minus = 0 , found = 0 ;
char input = scanChar ( ) ;

while ( isspace ( input ) ) {
input = scanChar ( ) ;
}

if ( input == '+' ) {
input = scanChar ( ) ;
}
else if ( input == '-' ) {
minus = 1 ;
input = scanChar ( ) ;
}

while ( isdigit ( input ) ) {
longValue = ( 10l * longValue ) + ( input - '0' ) ;
input = scanChar ( ) ;
found = 1 ;
}

if ( minus ) {
longValue = - longValue ;
}

if ( found ) {
++ g_inCount ;
}

unscanChar ( input ) ;
return longValue ;
}

unsigned long scanUnsignedLongInt ( unsigned long base ) {
unsigned long unsignedLongValue = 0ul , digit ;
char input = scanChar ( ) ;
int found = 1 ;

while ( isspace ( input ) ) {
input = scanChar ( ) ;
}

if ( input == '0' ) {
input = scanChar ( ) ;

if ( tolower ( input ) == 'x' ) {
base = ( base == 0ul ) ? 16ul : base ;
input = scanChar ( ) ;
}
else {
base = ( base == 0ul ) ? 8ul : base ;
}
}

if ( base == 0ul ) {
base = 10ul ;
}

while ( isxdigit ( input ) ) {
digit = digitToValue ( input ) ;

if ( digit >= base ) {
break ;
}

unsignedLongValue = ( unsignedLongValue * base ) + digit ;
found = 1 ;
input = scanChar ( ) ;
}

if ( found ) {
++ g_inCount ;
}

unscanChar ( input ) ;
return unsignedLongValue ;
}



long double scanLongDouble ( void ) {
int minus = 0 , found = 0 ;
long double value = 0.0L , factor = 1.0L ;
char input = scanChar ( ) ;

while ( isspace ( input ) ) {
input = scanChar ( ) ;
}

if ( input == '+' ) {
input = scanChar ( ) ;
}
else if ( input == '-' ) {
minus = 1 ;
input = scanChar ( ) ;
}

while ( isdigit ( input ) ) {
value = ( 10.0L * value ) + ( ( long double ) ( input - '0' ) ) ;
input = scanChar ( ) ;
found = 1 ;
}

if ( input == '.' ) {
input = scanChar ( ) ;

while ( isdigit ( input ) ) {
factor /= 10.0L ;
value += factor * ( ( long double ) ( input - '0' ) ) ;
input = scanChar ( ) ;
found = 1 ;
}
}

unscanChar ( input ) ;

if ( tolower ( input ) == 'e' ) {
double exponent = ( double ) scanLongInt ( ) ;
value *= pow ( 10.0 , exponent ) ;
}
else {
unscanChar ( input ) ;
}

if ( minus ) {
value = - value ;
}

if ( found ) {
++ g_inCount ;
}

return value ;
}



int scanFormat ( char * format , char * arg_list ) {
char c , * charPtr ;
int percent = 0 , shortInt = 0 , longIntOrDouble = 0 , longDouble = 0 , star = 0 ;

long longValue , * longPtr ;
short * shortPtr ;
int index , * intPtr , * charsPtr ;

unsigned long unsignedLongValue , * unsignedLongPtr ;
unsigned short * unsignedShortPtr ;
unsigned int * unsignedIntPtr ;

long double longDoubleValue ;

g_inCount = 0 ;
g_inChars = 0 ;

for ( index = 0 ; format [ index ] != '\0' ; ++ index ) {
c = format [ index ];
int d = c + 1 ;

if ( percent ) {
switch ( d - 1 ) {
case 'h' :
shortInt = 1 ;
break ;

case 'l' :
longIntOrDouble = 1 ;
break ;

case 'L' :
longDouble = 1 ;
break ;

case '*' :
star = 1 ;
break ;

case 'c' : {
char charValue = scanChar ( ) ;

if ( ! star ) {
charPtr = ( * ( ( arg_list += sizeof ( char * ) ) , ( ( char * * ) ( arg_list - sizeof ( char * ) ) ) ) ) ;
* charPtr = charValue ;
}

percent = 0 ;

if ( charValue != -1 ) {
++ g_inCount ;
}
}
break ;

case 's' :
if ( ! star ) {
charPtr = ( * ( ( arg_list += sizeof ( char * ) ) , ( ( char * * ) ( arg_list - sizeof ( char * ) ) ) ) ) ;
scanString ( charPtr , 0 ) ;
}
else {
scanString ( ( ( void * ) 0 ) , 0 ) ;
}

percent = 0 ;
break ;

case 'i' :
case 'd' :
longValue = scanLongInt ( ) ;

if ( ! star ) {
if ( shortInt ) {
shortPtr = ( * ( ( arg_list += sizeof ( short * ) ) , ( ( short * * ) ( arg_list - sizeof ( short * ) ) ) ) ) ;
* shortPtr = ( short ) longValue ;
}
else if ( ! longIntOrDouble ) {
intPtr = ( * ( ( arg_list += sizeof ( int * ) ) , ( ( int * * ) ( arg_list - sizeof ( int * ) ) ) ) ) ;
* intPtr = ( int ) longValue ;
}
else {
longPtr = ( * ( ( arg_list += sizeof ( long * ) ) , ( ( long * * ) ( arg_list - sizeof ( long * ) ) ) ) ) ;
* longPtr = longValue ;
}
}

percent = 0 ;
break ;

case 'o' :
unsignedLongValue = scanUnsignedLongInt ( 8ul ) ;

if ( ! star ) {
if ( shortInt ) {
unsignedShortPtr = ( * ( ( arg_list += sizeof ( unsigned short * ) ) , ( ( unsigned short * * ) ( arg_list - sizeof ( unsigned short * ) ) ) ) ) ;
* unsignedShortPtr = ( short ) unsignedLongValue ;
}
else if ( ! longIntOrDouble ) {
unsignedIntPtr = ( * ( ( arg_list += sizeof ( unsigned int * ) ) , ( ( unsigned int * * ) ( arg_list - sizeof ( unsigned int * ) ) ) ) ) ;
* unsignedIntPtr = ( int ) unsignedLongValue ;
}
else {
unsignedLongPtr = ( * ( ( arg_list += sizeof ( unsigned long * ) ) , ( ( unsigned long * * ) ( arg_list - sizeof ( unsigned long * ) ) ) ) ) ;
* unsignedLongPtr = unsignedLongValue ;
}
}

percent = 0 ;
break ;

case 'x' :
unsignedLongValue = scanUnsignedLongInt ( 16ul ) ;

if ( ! star ) {
if ( shortInt ) {
unsignedShortPtr = ( * ( ( arg_list += sizeof ( unsigned short * ) ) , ( ( unsigned short * * ) ( arg_list - sizeof ( unsigned short * ) ) ) ) ) ;
* unsignedShortPtr = ( short ) unsignedLongValue ;
}
else if ( ! longIntOrDouble ) {
unsignedIntPtr = ( * ( ( arg_list += sizeof ( unsigned int * ) ) , ( ( unsigned int * * ) ( arg_list - sizeof ( unsigned int * ) ) ) ) ) ;
* unsignedIntPtr = ( int ) unsignedLongValue ;
}
else {
unsignedLongPtr = ( * ( ( arg_list += sizeof ( unsigned long * ) ) , ( ( unsigned long * * ) ( arg_list - sizeof ( unsigned long * ) ) ) ) ) ;
* unsignedLongPtr = unsignedLongValue ;
}
}

percent = 0 ;
break ;

case 'u' :
unsignedLongValue = scanUnsignedLongInt ( 0ul ) ;

if ( ! star ) {
if ( shortInt ) {
unsignedShortPtr = ( * ( ( arg_list += sizeof ( unsigned short * ) ) , ( ( unsigned short * * ) ( arg_list - sizeof ( unsigned short * ) ) ) ) ) ;
* unsignedShortPtr = ( short ) unsignedLongValue ;
}
else if ( ! longIntOrDouble ) {
unsignedIntPtr = ( * ( ( arg_list += sizeof ( unsigned int * ) ) , ( ( unsigned int * * ) ( arg_list - sizeof ( unsigned int * ) ) ) ) ) ;
* unsignedIntPtr = ( int ) unsignedLongValue ;
}
else {
unsignedLongPtr = ( * ( ( arg_list += sizeof ( unsigned long * ) ) , ( ( unsigned long * * ) ( arg_list - sizeof ( unsigned long * ) ) ) ) ) ;
* unsignedLongPtr = unsignedLongValue ;
}
}

percent = 0 ;
break ;

case 'e' :
case 'f' :
case 'g' :
longDoubleValue = scanLongDouble ( ) ;

if ( ! star ) {
if ( longIntOrDouble ) {
double * doublePtr = ( * ( ( arg_list += sizeof ( double * ) ) , ( ( double * * ) ( arg_list - sizeof ( double * ) ) ) ) ) ;
* doublePtr = ( double ) longDoubleValue ;
}
else if ( longDouble ) {
long double * longDoublePtr = ( * ( ( arg_list += sizeof ( long double * ) ) , ( ( long double * * ) ( arg_list - sizeof ( long double * ) ) ) ) ) ;
* longDoublePtr = longDoubleValue ;
}
else {
float * floatPtr = ( * ( ( arg_list += sizeof ( float * ) ) , ( ( float * * ) ( arg_list - sizeof ( float * ) ) ) ) ) ;
* floatPtr = ( float ) longDoubleValue ;
}
}

percent = 0 ;
break ;

case '[' : {
int not = 0 ;
++ index ;

if ( format [ index ] == '^' ) {
not = 1 ;
++ index ;
}

int startIndex = index ;
while ( format [ index ] != ']' ) {
++ index ;
}
format [ index ] = '\0' ;

if ( ! star ) {
char * string = ( * ( ( arg_list += sizeof ( char * ) ) , ( ( char * * ) ( arg_list - sizeof ( char * ) ) ) ) ) ;
scanPattern ( string , & format [ startIndex ] , not ) ;
}
else {
scanPattern ( ( ( void * ) 0 ) , & format [ startIndex ] , not ) ;
}
}
break ;

case 'n' :
charsPtr = ( * ( ( arg_list += sizeof ( int * ) ) , ( ( int * * ) ( arg_list - sizeof ( int * ) ) ) ) ) ;
* charsPtr = g_inChars ;
percent = 0 ;
break ;

default :
printf ( "scanFormat c = '%c'\n" , c ) ;
break ;
}
}
else {
if ( c == '%' ) {
percent = 1 ;
shortInt = 0 ;
longIntOrDouble = 0 ;
longDouble = 0 ;
star = 0 ;
}
}
}


return g_inCount ;
}

int scanf ( char * format , ... ) {
char * arg_list ;
( arg_list = ( ( char * ) & format ) + sizeof ( format ) ) ;
return vscanf ( format , arg_list ) ;
}

int vscanf ( char * format , char * arg_list ) {

return vfscanf ( stdin , format , arg_list ) ;
}

int fscanf ( FILE * inStream , char * format , ... ) {

char * arg_list ;
( arg_list = ( ( char * ) & format ) + sizeof ( format ) ) ;
return vfscanf ( inStream , format , arg_list ) ;
}

int vfscanf ( FILE * inStream , char * format , char * arg_list ) {
g_inStatus = 0 ;
g_inDevice = ( void * ) inStream ;

return scanFormat ( format , arg_list ) ;
}

int sscanf ( char * inString , char * format , ... ) {
char * arg_list ;
( arg_list = ( ( char * ) & format ) + sizeof ( format ) ) ;
return vsscanf ( inString , format , arg_list ) ;
}

int vsscanf ( char * inString , char * format , char * arg_list ) {
g_inStatus = 1 ;
g_inDevice = ( void * ) inString ;
return scanFormat ( format , arg_list ) ;
}