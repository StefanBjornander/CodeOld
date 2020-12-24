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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.c,1$
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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.c,2$
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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,8$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\temp.h,1$






FILE * tmpfile ( void ) ;
char * tmpnam ( char name [ 4 ] ) ;



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,9$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\scanf.h,1$








int scanf ( const char * format , ... ) ;
int vscanf ( const char * format , char * arg_list ) ;
int fscanf ( FILE * inStream , const char * format , ... ) ;
int vfscanf ( FILE * inStream , const char * format , char * arg_list ) ;
int sscanf ( char * inString , const char * format , ... ) ;
int vsscanf ( char * inString , const char * format , char * arg_list ) ;



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,10$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\printf.h,1$






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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,11$



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.c,3$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stddef.h,1$











$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.c,4$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdarg.h,1$











$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.c,5$
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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.c,6$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\scanf.h,1$

















$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.c,7$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\printf.h,1$






















$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Scanf.c,8$



int g_inStatus , g_inChars ;
void * g_inDevice ;
int g_inCount ;

char scanChar ( void ) ;
void unscanChar ( char c ) ;
void scanString ( char * string , int precision ) ;
long scanLongInt ( int base ) ;
unsigned long scanUnsignedLongInt ( int base ) ;
long double scanLongDouble ( void ) ;

char scanChar ( void ) {
char c = '\000' ;
FILE * stream ;
int handle ;
char * inString ;

switch ( g_inStatus ) {
case 0 :
stream = ( FILE * ) g_inDevice ;

handle = stream -> handle ;

register_ah = 0x3Fs ;
register_bx = handle ;
register_cx = 1 ;
register_dx = & c ;
interrupt ( 0x21s ) ;










++ g_inChars ;
return c ;

case 1 :
inString = ( char * ) g_inDevice ;
return inString [ g_inChars ++];

default :
return '\000' ;
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

static char * strnchr ( const char * text , int size , int i ) {
int index ;
char c = ( char ) i ;

for ( index = 0 ; index < size ; ++ index ) {
if ( text [ index ] == c ) {
return & text [ index ];
}
}

return ( ( void * ) 0 ) ;
}

void scanPattern ( char * string , char * pattern , int size , int not ) {
int index = 0 ;
char input = scanChar ( ) ;

while ( isspace ( input ) ) {
input = scanChar ( ) ;
}

if ( string != ( ( void * ) 0 ) ) {
while ( ( ! not && strnchr ( pattern , size , input ) ) ||
( not && ! strnchr ( pattern , size , input ) ) ) {
string [ index ++] = input ;
input = scanChar ( ) ;
}

string [ index ] = '\000' ;
}
else {
while ( ( ! not && strnchr ( pattern , size , input ) ) ||
( not && ! strnchr ( pattern , size , input ) ) ) {
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
while ( ! isspace ( input ) && ( input != -1 ) && ( input != '\012' ) ) {
string [ index ++] = input ;
input = scanChar ( ) ;
found = 1 ;
++ g_inChars ;
}

string [ index ] = '\000' ;
++ g_inChars ;
}
else {
while ( ( precision -- > 0 ) && ( ! isspace ( input ) &&
( input != -1 ) && ( input != '\012' ) ) ) {
string [ index ++] = input ;
input = scanChar ( ) ;
found = 1 ;
++ g_inChars ;
}

if ( precision > 0 ) {
string [ index ] = '\000' ;
++ g_inChars ;
}
}
}
else {
if ( precision == 0 ) {
while ( ! isspace ( input ) && ( input != -1 ) &&
( input != '\012' ) ) {
input = scanChar ( ) ;
found = 1 ;
++ g_inChars ;
}

++ g_inChars ;
}
else {
while ( ( precision -- > 0 ) && ( ! isspace ( input ) &&
( input != -1 ) && ( input != '\012' ) ) ) {
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

static int isDigitInBase ( char c , int base ) {
if ( isdigit ( c ) ) {
int value = c - '\060' ;
return ( ( value >= 0 ) && ( value < base ) ) ;
}
else if ( islower ( c ) ) {
int value = ( c - '\141' ) + 10 ;
return ( ( value >= 0 ) && ( value < base ) ) ;
}
else if ( isupper ( c ) ) {
int value = ( c - '\101' ) + 10 ;
return ( ( value >= 0 ) && ( value < base ) ) ;
}
else {
return 0 ;
}
}

static int digitToValue ( char c ) {
if ( isdigit ( c ) ) {
return ( c - '\060' ) ;
}
else if ( islower ( c ) ) {
return ( ( c - '\141' ) + 10 ) ;
}
else if ( isupper ( c ) ) {
return ( ( c - '\101' ) + 10 ) ;
}
else {
return 0 ;
}
}

long scanLongInt ( int base ) {
long longValue = 0l ;
int minus = 0 , found = 0 ;
char input = scanChar ( ) ;

while ( isspace ( input ) ) {
input = scanChar ( ) ;
}

if ( input == '\053' ) {
input = scanChar ( ) ;
}
else if ( input == '\055' ) {
minus = 1 ;
input = scanChar ( ) ;
}

if ( base == 0 ) {
if ( input == '\060' ) {
input = scanChar ( ) ;

if ( tolower ( input ) == '\170' ) {
base = 16 ;
input = scanChar ( ) ;
}
else {
base = 8 ;
}
}
else {
base = 10 ;
}
}

while ( isDigitInBase ( input , base ) ) {
longValue *= base ;
longValue += digitToValue ( input ) ;
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

unsigned long scanUnsignedLongInt ( int base ) {
unsigned long unsignedLongValue = 0 , digit ;
char input = scanChar ( ) ;
int found = 1 ;

while ( isspace ( input ) ) {
input = scanChar ( ) ;
}

if ( input == '\053' ) {
input = scanChar ( ) ;
}

if ( base == 0 ) {
if ( input == '\060' ) {
input = scanChar ( ) ;

if ( tolower ( input ) == '\170' ) {
base = 16 ;
input = scanChar ( ) ;
}
else {
base = 8 ;
}
}
else {
base = 10 ;
}
}

while ( isDigitInBase ( input , base ) ) {
unsignedLongValue *= base ;
unsignedLongValue += digitToValue ( input ) ;
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

if ( input == '\053' ) {
input = scanChar ( ) ;
}
else if ( input == '\055' ) {
minus = 1 ;
input = scanChar ( ) ;
}

while ( isdigit ( input ) ) {
value = ( 10.0L * value ) + ( ( long double ) ( input - '\060' ) ) ;
input = scanChar ( ) ;
found = 1 ;
}

if ( input == '\056' ) {
input = scanChar ( ) ;

while ( isdigit ( input ) ) {
factor /= 10.0L ;
value += factor * ( ( long double ) ( input - '\060' ) ) ;
input = scanChar ( ) ;
found = 1 ;
}
}

if ( tolower ( input ) == '\145' ) {
double exponent = ( double ) scanLongInt ( 10 ) ;
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
int percent = 0 , shortInt = 0 , longIntOrDouble = 0 ,
longDouble = 0 , star = 0 ;

long longValue , * longPtr ;
short * shortPtr ;
int index , * intPtr , * charsPtr ;

unsigned long unsignedLongValue , * unsignedLongPtr ;
unsigned short * unsignedShortPtr ;
unsigned int * unsignedIntPtr ;
long double longDoubleValue ;

g_inCount = 0 ;
g_inChars = 0 ;

for ( index = 0 ; format [ index ] != '\000' ; ++ index ) {
c = format [ index ];

{ int d = c + 1 ;
if ( percent ) {
switch ( d - 1 ) {
case '\150' :
shortInt = 1 ;
break ;

case '\154' :
longIntOrDouble = 1 ;
break ;

case '\114' :
longDouble = 1 ;
break ;

case '\052' :
star = 1 ;
break ;

case '\143' : {
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

case '\163' :
if ( ! star ) {
charPtr = ( * ( ( arg_list += sizeof ( char * ) ) , ( ( char * * ) ( arg_list - sizeof ( char * ) ) ) ) ) ;
scanString ( charPtr , 0 ) ;
}
else {
scanString ( ( ( void * ) 0 ) , 0 ) ;
}

percent = 0 ;
break ;

case '\151' :
case '\144' :
longValue = scanLongInt ( 10 ) ;

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

case '\157' :
unsignedLongValue = scanUnsignedLongInt ( 8 ) ;

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

case '\170' :
unsignedLongValue = scanUnsignedLongInt ( 16 ) ;

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

case '\165' :
unsignedLongValue = scanUnsignedLongInt ( 0 ) ;

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

case '\145' :
case '\146' :
case '\147' :
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

case '\133' : {
int not = 0 ;
++ index ;

if ( format [ index ] == '\136' ) {
not = 1 ;
++ index ;
}

{ int startIndex = index ;

while ( format [ index ] != '\135' ) {
++ index ;
}

{ int size = index - startIndex ;
char c = format [ index ];
format [ index ] = '\000' ;

if ( ! star ) {
char * string = ( * ( ( arg_list += sizeof ( char * ) ) , ( ( char * * ) ( arg_list - sizeof ( char * ) ) ) ) ) ;
scanPattern ( string , & format [ startIndex ] , size , not ) ;
}
else {
scanPattern ( ( ( void * ) 0 ) , & format [ startIndex ] , size , not ) ;
}

format [ index ] = c ;
}
}
}
break ;

case '\156' :
charsPtr = ( * ( ( arg_list += sizeof ( int * ) ) , ( ( int * * ) ( arg_list - sizeof ( int * ) ) ) ) ) ;
* charsPtr = g_inChars ;
percent = 0 ;
break ;

default :

break ;
}
}
else {
if ( c == '\045' ) {
percent = 1 ;
shortInt = 0 ;
longIntOrDouble = 0 ;
longDouble = 0 ;
star = 0 ;
}
}
}
}

return g_inCount ;
}

int scanf ( const char * format , ... ) {
char * arg_list ;
( arg_list = ( ( char * ) & format ) + sizeof ( format ) ) ;
return vscanf ( format , arg_list ) ;
}

int vscanf ( const char * format , char * arg_list ) {
return vfscanf ( stdin , format , arg_list ) ;
}

int fscanf ( FILE * inStream , const char * format , ... ) {
char * arg_list ;
( arg_list = ( ( char * ) & format ) + sizeof ( format ) ) ;
return vfscanf ( inStream , format , arg_list ) ;
}

int vfscanf ( FILE * inStream , const char * format , char * arg_list ) {
g_inStatus = 0 ;
g_inDevice = ( void * ) inStream ;
return scanFormat ( format , arg_list ) ;
}

int sscanf ( char * inString , const char * format , ... ) {
char * arg_list ;
( arg_list = ( ( char * ) & format ) + sizeof ( format ) ) ;
return vsscanf ( inString , format , arg_list ) ;
}

int vsscanf ( char * inString , const char * format , char * arg_list ) {
g_inStatus = 1 ;
g_inDevice = ( void * ) inString ;
return scanFormat ( format , arg_list ) ;
}

