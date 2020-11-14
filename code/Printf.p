$C:\Users\Stefan\Documents\vagrant\homestead\code\code\math.h,1$









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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.c,1$
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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.c,2$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,1$



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\math.h,1$









































$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,4$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ctype.h,1$



















$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,5$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdarg.h,1$











$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,6$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stddef.h,1$














$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,7$
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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,8$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\temp.h,1$






FILE * tmpfile ( void ) ;
char * tmpnam ( char name [ 4 ] ) ;



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,9$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\scanf.h,1$








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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,10$
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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,11$



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.c,3$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stddef.h,1$














$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.c,4$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdarg.h,1$











$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.c,5$
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


$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.c,6$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\scanf.h,1$
























$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.c,7$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\printf.h,1$









































$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Printf.c,8$







int g_outStatus , g_outChars ;
void * g_outDevice ;



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


register_ah = 0x40s ;
register_bx = stream -> handle ;
register_cx = 1 ;
register_dx = & c ;
interrupt ( 0x21s ) ;









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

void printString ( char * s , int precision ) {
if ( s != ( ( void * ) 0 ) ) {
int index ;

if ( precision == 0 ) {
for ( index = 0 ; s [ index ] != '\000' ; ++ index ) {
printChar ( s [ index ] ) ;
}
}
else {
for ( index = 0 ; ( precision -- > 0 ) && ( s [ index ] != '\000' ) ; ++ index ) {
printChar ( s [ index ] ) ;
}
}
}
else {
printChar ( '\074' ) ;
printChar ( '\116' ) ;
printChar ( '\125' ) ;
printChar ( '\114' ) ;
printChar ( '\114' ) ;
printChar ( '\076' ) ;
}
}

void printLongIntRec ( long longValue ) {
if ( longValue != 0 ) {
int digit = ( int ) ( longValue % 10L ) ;
printLongIntRec ( longValue / 10L ) ;
printChar ( ( char ) ( digit + '\060' ) ) ;
}
}

void printLongInt ( long longValue , int plus , int space ) {
if ( longValue < 0L ) {
longValue = - longValue ;
printChar ( '\055' ) ;
}
else if ( space ) {
printChar ( '\040' ) ;
}
else if ( plus ) {
printChar ( '\053' ) ;
}

if ( longValue == 0L ) {
printChar ( '\060' ) ;
}
else {
printLongIntRec ( longValue ) ;
}
}

char digitToChar ( int digit , int capital ) {
if ( digit < 10 ) {
return ( ( char ) ( '\060' + digit ) ) ;
}
else if ( capital ) {
return ( ( char ) ( '\101' + ( digit - 10 ) ) ) ;
}
else {
return ( ( char ) ( '\141' + ( digit - 10 ) ) ) ;
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
printChar ( '\053' ) ;
}

if ( space ) {
printChar ( '\040' ) ;
}

if ( grid ) {
if ( base == 8ul ) {
printChar ( '\060' ) ;
}

if ( base == 16ul ) {
printChar ( '\060' ) ;
printChar ( capital ? '\130' : '\170' ) ;
}
}

if ( unsignedValue == 0ul ) {
printChar ( '\060' ) ;
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
printChar ( '\056' ) ;
}

while ( precision -- > 0 ) {
long double longDoubleValue10 = 10.0L * longDoubleValue ;
int digitValue = ( int ) longDoubleValue10 ;
printChar ( ( char ) ( digitValue + '\060' ) ) ;
longDoubleValue = longDoubleValue10 - ( ( long double ) digitValue ) ;
}
}

void printLongDoublePlain ( long double longDoubleValue , int plus ,
int space , int grid , int precision ) {
if ( longDoubleValue < 0.0L ) {
printChar ( '\055' ) ;
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
printChar ( '\060' ) ;
printLongDoubleFraction ( 0.0L , precision , grid ) ;
printChar ( capital ? '\105' : '\145' ) ;
printChar ( '\060' ) ;
}
else {
if ( value < 0.0L ) {
printChar ( '\055' ) ;
value = - value ;
}

{ int expo = ( int ) log10 ( value ) ;
value /= pow ( 10.0 , expo ) ;

printLongDoublePlain ( value , plus , space , grid , precision ) ;
printChar ( capital ? '\105' : '\145' ) ;
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

char * printArgument ( char * format , char * arg_list , int plus , int space ,
int grid , int * widthPtr , int precision , int shortInt ,
int longInt , int longDouble , int sign ,
int * negativePtr ) {
char c = format [ 0 ] , charValue ;
int * intPtr ;
long double longDoubleValue ;
void * ptrValue ;

switch ( c ) {
case '\151' :
case '\144' : {
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

case '\143' :
charValue = ( char ) ( * ( ( arg_list += sizeof ( int ) ) , ( ( int * ) ( arg_list - sizeof ( int ) ) ) ) ) ;
arg_list = checkWidthAndPrecision ( arg_list , widthPtr , & precision ) ;
printChar ( charValue ) ;
break ;

case '\163' : {
char * stringValue = ( * ( ( arg_list += sizeof ( char * ) ) , ( ( char * * ) ( arg_list - sizeof ( char * ) ) ) ) ) ;
arg_list = checkWidthAndPrecision ( arg_list , widthPtr , & precision ) ;
printString ( stringValue , precision ) ;
}
break ;

case '\165' :
case '\157' :
case '\142' :
case '\170' :
case '\130' : {
unsigned long base = ( ( c == '\165' ) ? 10ul : ( ( c == '\157' ) ? 8ul :
( ( c == '\142' ) ? 2ul : 16ul ) ) ) ;
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

case '\146' :
case '\145' :
case '\105' :
case '\147' :
case '\107' :
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

if ( c == '\146' ) {
printLongDoublePlain ( longDoubleValue , plus , space , grid , precision ) ;
}
else if ( tolower ( c ) == '\145' ) {
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

case '\160' :
ptrValue = ( * ( ( arg_list += sizeof ( void * ) ) , ( ( void * * ) ( arg_list - sizeof ( void * ) ) ) ) ) ;
arg_list = checkWidthAndPrecision ( arg_list , widthPtr , & precision ) ;
printUnsignedLong ( ( unsigned long ) ptrValue , 0 ,
0 , 0 , 10u , 0 ) ;
break ;

case '\156' :
ptrValue = ( * ( ( arg_list += sizeof ( void * ) ) , ( ( void * * ) ( arg_list - sizeof ( void * ) ) ) ) ) ;
intPtr = ( * ( ( arg_list += sizeof ( int * ) ) , ( ( int * * ) ( arg_list - sizeof ( int * ) ) ) ) ) ;
arg_list = checkWidthAndPrecision ( arg_list , widthPtr , & precision ) ;
* intPtr = g_outChars ;
break ;

case '\045' :
arg_list = checkWidthAndPrecision ( arg_list , widthPtr , & precision ) ;
printChar ( '\045' ) ;
break ;
}

return arg_list ;
}

int printFormat ( char * format , char * arg_list ) {
int index , width = 0 , precision = 0 ;
int percent = 0 , plus = 0 , minus = 0 , space = 0 ,
zero = 0 , grid = 0 , widthStar = 0 ,
period = 0 , precisionStar = 0 ,
shortInt = 0 , longInt = 0 , longDouble = 0 ;
g_outChars = 0 ;

for ( index = 0 ; format [ index ] != '\000' ; ++ index ) {
char c = format [ index ];

if ( percent ) {
switch ( c ) {
case '\053' :
plus = 1 ;
break ;

case '\055' :
minus = 1 ;
break ;

case '\040' :
space = 1 ;
break ;

case '\060' :
zero = 1 ;
break ;

case '\043' :
grid = 1 ;
break ;

case '\056' :
period = 1 ;
break ;

case '\052' :
if ( ! period ) {
width = -1 ;
}
else {
precision = -1 ;
}
break ;

case '\150' :
shortInt = 1 ;
break ;

case '\154' :
longInt = 1 ;
break ;

case '\114' :
longDouble = 1 ;
break ;

case '\151' :
case '\144' :
case '\165' :
case '\142' :
case '\157' :
case '\170' :
case '\130' :
case '\143' :
case '\163' :
case '\146' :
case '\145' :
case '\105' :
case '\147' :
case '\107' :
case '\160' :
case '\156' :
case '\045' : {
if ( minus ) {
int startChars = g_outChars ;
arg_list = printArgument ( & format [ index ] , arg_list , plus , space ,
grid , & width , precision , shortInt ,
longInt , longDouble , 1 , ( ( void * ) 0 ) ) ;

{ int field = g_outChars - startChars ;

while ( field ++ < width ) {
printChar ( '\040' ) ;
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
printChar ( '\055' ) ;
++ field ;
}
else if ( plus ) {
printChar ( '\053' ) ;
++ field ;
}
else if ( space ) {
printChar ( '\040' ) ;
++ field ;
}

while ( field ++ < width ) {
printChar ( '\060' ) ;
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
printChar ( '\040' ) ;
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
value = ( 10 * value ) + ( c - '\060' ) ;
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
if ( c == '\045' ) {
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
outString [ g_outChars ] = '\000' ;
}

return g_outChars ;
}

int printf ( char * format , ... ) {
char * arg_list ;
( arg_list = ( ( char * ) & format ) + sizeof ( format ) ) ;
return vprintf ( format , arg_list ) ;
}

int vprintf ( char * format , char * arg_list ) {
return vfprintf ( stdout , format , arg_list ) ;
}

int fprintf ( FILE * outStream , char * format , ... ) {
char * arg_list ;
( arg_list = ( ( char * ) & format ) + sizeof ( format ) ) ;
return vfprintf ( outStream , format , arg_list ) ;
}

int vfprintf ( FILE * outStream , char * format , char * arg_list ) {
g_outStatus = 0 ;
g_outDevice = ( void * ) outStream ;
return printFormat ( format , arg_list ) ;
}

int sprintf ( char * outString , char * format , ... ) {
char * arg_list ;
( arg_list = ( ( char * ) & format ) + sizeof ( format ) ) ;
return vsprintf ( outString , format , arg_list ) ;
}

int vsprintf ( char * outString , char * format , char * arg_list ) {
g_outStatus = 1 ;
g_outDevice = ( void * ) outString ;
return printFormat ( format , arg_list ) ;
}

