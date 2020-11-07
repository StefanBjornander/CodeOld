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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,1$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,1$



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\math.h,1$









































$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,4$
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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,2$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ctype.h,1$



















$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,3$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ErrNo.h,1$































extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };


























extern int errno ;



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,4$
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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,5$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,1$




$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,1$














$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,5$
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


$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Assert.h,6$









$C:\Users\Stefan\Documents\vagrant\homestead\code\code\FileTest.c,6$

void file_test ( char * inFilePtrName , char * outFilePtrName ) {
{ FILE * inFilePtrPtr = fopen ( inFilePtrName , "\162" ) ;
if ( ! ( inFilePtrPtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "\101\163\163\145\162\164\151\157\156\040\146\141\151\154\145\144\072\040\042\045\163\042\040\151\156\040\146\151\154\145\040\045\163\040\141\164\040\154\151\156\145\040\045\151\012" , "\151\156\106\151\154\145\120\164\162\120\164\162\040\041\075\040\116\125\114\114" , "\103\072\134\125\163\145\162\163\134\123\164\145\146\141\156\134\104\157\143\165\155\145\156\164\163\134\166\141\147\162\141\156\164\134\150\157\155\145\163\164\145\141\144\134\143\157\144\145\134\143\157\144\145\134\106\151\154\145\124\145\163\164\056\143" , 10 ) ; abort ( ) ; } ;
FILE * outFilePtrPtr = fopen ( outFilePtrName , "\167" ) ;
if ( ! ( outFilePtrPtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "\101\163\163\145\162\164\151\157\156\040\146\141\151\154\145\144\072\040\042\045\163\042\040\151\156\040\146\151\154\145\040\045\163\040\141\164\040\154\151\156\145\040\045\151\012" , "\157\165\164\106\151\154\145\120\164\162\120\164\162\040\041\075\040\116\125\114\114" , "\103\072\134\125\163\145\162\163\134\123\164\145\146\141\156\134\104\157\143\165\155\145\156\164\163\134\166\141\147\162\141\156\164\134\150\157\155\145\163\164\145\141\144\134\143\157\144\145\134\143\157\144\145\134\106\151\154\145\124\145\163\164\056\143" , 12 ) ; abort ( ) ; } ;

int size = 0 , index ;
fscanf ( inFilePtrPtr , "\045\151" , & size ) ;

for ( index = 0 ; index < size ; ++ index ) {
double inValue = 0 ;
fscanf ( inFilePtrPtr , "\045\154\146" , & inValue ) ;
double outValue = sqrt ( ( double ) inValue ) ;
fprintf ( outFilePtrPtr , "\045\146\012" , outValue ) ;
}

fclose ( inFilePtrPtr ) ;
fclose ( outFilePtrPtr ) ;
}

{ char * sourceFilePtr = "\130" ;
char * targetFilePtr = "\131" ;

if ( rename ( sourceFilePtr , targetFilePtr ) == 0 ) {
printf ( "\042\045\163\042\040\150\141\163\040\142\145\145\156\040\162\145\156\141\155\145\144\040\164\157\040\042\045\163\042\056\012" , sourceFilePtr , targetFilePtr ) ;
}
else {
printf ( "\105\162\162\157\162\040\045\151\072\040\045\163\056\012" , errno , strerror ( errno ) ) ;
}
}

{ char * targetFilePtr = "\132" ;

if ( remove ( targetFilePtr ) == 0 ) {
printf ( "\042\045\163\042\040\150\141\163\040\142\145\145\156\040\162\145\155\157\166\145\144\056\012" , targetFilePtr ) ;
}
else {
printf ( "\105\162\162\157\162\040\045\151\072\040\045\163\056\012" , errno , strerror ( errno ) ) ;
}
}

{ FILE * inFilePtr = fopen ( "\120\102\157\157\153\056\164\170\164" , "\162" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "\101\163\163\145\162\164\151\157\156\040\146\141\151\154\145\144\072\040\042\045\163\042\040\151\156\040\146\151\154\145\040\045\163\040\141\164\040\154\151\156\145\040\045\151\012" , "\151\156\106\151\154\145\120\164\162\040\041\075\040\116\125\114\114" , "\103\072\134\125\163\145\162\163\134\123\164\145\146\141\156\134\104\157\143\165\155\145\156\164\163\134\166\141\147\162\141\156\164\134\150\157\155\145\163\164\145\141\144\134\143\157\144\145\134\143\157\144\145\134\106\151\154\145\124\145\163\164\056\143" , 50 ) ; abort ( ) ; } ;


printf ( "\012\045\055\062\064\163\040\045\055\062\064\163\012" , "\116\141\155\145" , "\120\150\157\156\145" ) ;
printf ( "\045\055\062\064\163\040\045\055\062\064\163\012" , "\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075" ,
"\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075\075" ) ;

int count , size ;
fscanf ( inFilePtr , "\045\151" , & size ) ;


for ( count = 0 ; count < size ; ++ count ) {
char name [ 20 ] , phone [ 20 ];

fscanf ( inFilePtr , "\045\163\045\163" , name , phone ) ;
printf ( "\045\055\062\064\163\040\045\055\062\064\163\012" , name , phone ) ;
}

printf ( "\012" ) ;
fclose ( inFilePtr ) ;
}

{ char * sourceFilePtr = "\106\154\157\167\061\056\164\170\164" ;
char * targetFilePtr = "\106\154\157\167\062\056\164\170\164" ;

FILE * inFilePtr = fopen ( sourceFilePtr , "\162" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "\101\163\163\145\162\164\151\157\156\040\146\141\151\154\145\144\072\040\042\045\163\042\040\151\156\040\146\151\154\145\040\045\163\040\141\164\040\154\151\156\145\040\045\151\012" , "\151\156\106\151\154\145\120\164\162\040\041\075\040\116\125\114\114" , "\103\072\134\125\163\145\162\163\134\123\164\145\146\141\156\134\104\157\143\165\155\145\156\164\163\134\166\141\147\162\141\156\164\134\150\157\155\145\163\164\145\141\144\134\143\157\144\145\134\143\157\144\145\134\106\151\154\145\124\145\163\164\056\143" , 76 ) ; abort ( ) ; } ;

FILE * outFilePtr = fopen ( targetFilePtr , "\167" ) ;
if ( ! ( outFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "\101\163\163\145\162\164\151\157\156\040\146\141\151\154\145\144\072\040\042\045\163\042\040\151\156\040\146\151\154\145\040\045\163\040\141\164\040\154\151\156\145\040\045\151\012" , "\157\165\164\106\151\154\145\120\164\162\040\041\075\040\116\125\114\114" , "\103\072\134\125\163\145\162\163\134\123\164\145\146\141\156\134\104\157\143\165\155\145\156\164\163\134\166\141\147\162\141\156\164\134\150\157\155\145\163\164\145\141\144\134\143\157\144\145\134\143\157\144\145\134\106\151\154\145\124\145\163\164\056\143" , 79 ) ; abort ( ) ; } ;

while ( 1 ) {
char c = ( char ) fgetc ( inFilePtr ) ;

if ( c == -1 ) {
break ;
}

putc ( c , outFilePtr ) ;

if ( c == '\012' ) {
putc ( '\012' , outFilePtr ) ;
}
}

fclose ( inFilePtr ) ;
fclose ( outFilePtr ) ;
}

{ FILE * outFilePtr = fopen ( "\124\145\163\164\056\142\151\156" , "\167" ) ;
if ( ! ( outFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "\101\163\163\145\162\164\151\157\156\040\146\141\151\154\145\144\072\040\042\045\163\042\040\151\156\040\146\151\154\145\040\045\163\040\141\164\040\154\151\156\145\040\045\151\012" , "\157\165\164\106\151\154\145\120\164\162\040\041\075\040\116\125\114\114" , "\103\072\134\125\163\145\162\163\134\123\164\145\146\141\156\134\104\157\143\165\155\145\156\164\163\134\166\141\147\162\141\156\164\134\150\157\155\145\163\164\145\141\144\134\143\157\144\145\134\143\157\144\145\134\106\151\154\145\124\145\163\164\056\143" , 100 ) ; abort ( ) ; } ;

int size = 10 ;
fwrite ( & size , sizeof size , 1 , outFilePtr ) ;

int index ;
for ( index = 0 ; index < size ; ++ index ) {
double value = ( double ) ( index * index ) ;
fwrite ( & value , sizeof value , 1 , outFilePtr ) ;
}

fclose ( outFilePtr ) ;
}

{ FILE * inFilePtr = fopen ( "\124\145\163\164\056\142\151\156" , "\162" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "\101\163\163\145\162\164\151\157\156\040\146\141\151\154\145\144\072\040\042\045\163\042\040\151\156\040\146\151\154\145\040\045\163\040\141\164\040\154\151\156\145\040\045\151\012" , "\151\156\106\151\154\145\120\164\162\040\041\075\040\116\125\114\114" , "\103\072\134\125\163\145\162\163\134\123\164\145\146\141\156\134\104\157\143\165\155\145\156\164\163\134\166\141\147\162\141\156\164\134\150\157\155\145\163\164\145\141\144\134\143\157\144\145\134\143\157\144\145\134\106\151\154\145\124\145\163\164\056\143" , 115 ) ; abort ( ) ; } ;

int size ;
fread ( & size , sizeof size , 1 , inFilePtr ) ;
printf ( "\163\151\172\145\061\040\045\151\012" , size ) ;

double arr [ 10 ];
fread ( & arr , sizeof arr , 1 , inFilePtr ) ;
fclose ( inFilePtr ) ;

int index ;
for ( index = 0 ; index < 10 ; ++ index ) {
printf ( "\151\156\144\145\170\061\040\045\151\072\040\166\141\154\165\145\040\045\146\012" , index , arr [ index ] ) ;
}
printf ( "\012" ) ;
}

{ FILE * inFilePtr = fopen ( "\124\145\163\164\056\142\151\156" , "\162" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "\101\163\163\145\162\164\151\157\156\040\146\141\151\154\145\144\072\040\042\045\163\042\040\151\156\040\146\151\154\145\040\045\163\040\141\164\040\154\151\156\145\040\045\151\012" , "\151\156\106\151\154\145\120\164\162\040\041\075\040\116\125\114\114" , "\103\072\134\125\163\145\162\163\134\123\164\145\146\141\156\134\104\157\143\165\155\145\156\164\163\134\166\141\147\162\141\156\164\134\150\157\155\145\163\164\145\141\144\134\143\157\144\145\134\143\157\144\145\134\106\151\154\145\124\145\163\164\056\143" , 133 ) ; abort ( ) ; } ;

int size ;
fread ( & size , sizeof size , 1 , inFilePtr ) ;
printf ( "\163\151\172\145\062\040\045\151\012" , size ) ;

int index ;
for ( index = 0 ; index < size ; ++ index ) {
double value ;
fread ( & value , sizeof value , 1 , inFilePtr ) ;
printf ( "\151\156\144\145\170\062\040\045\151\072\040\166\141\154\165\145\040\045\146\012" , index , value ) ;
}

printf ( "\012" ) ;
fclose ( inFilePtr ) ;
}

{ FILE * inFilePtr = fopen ( "\124\145\163\164\056\142\151\156" , "\162" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "\101\163\163\145\162\164\151\157\156\040\146\141\151\154\145\144\072\040\042\045\163\042\040\151\156\040\146\151\154\145\040\045\163\040\141\164\040\154\151\156\145\040\045\151\012" , "\151\156\106\151\154\145\120\164\162\040\041\075\040\116\125\114\114" , "\103\072\134\125\163\145\162\163\134\123\164\145\146\141\156\134\104\157\143\165\155\145\156\164\163\134\166\141\147\162\141\156\164\134\150\157\155\145\163\164\145\141\144\134\143\157\144\145\134\143\157\144\145\134\106\151\154\145\124\145\163\164\056\143" , 151 ) ; abort ( ) ; } ;

int size ;
fread ( & size , sizeof size , 1 , inFilePtr ) ;
printf ( "\163\151\172\145\063\040\045\151\040\164\157\164\141\154\040\045\151\012" , size , size * sizeof ( double ) ) ;

int total = size * sizeof ( double ) ;
double * p = malloc ( total ) ;
if ( ! ( p != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "\101\163\163\145\162\164\151\157\156\040\146\141\151\154\145\144\072\040\042\045\163\042\040\151\156\040\146\151\154\145\040\045\163\040\141\164\040\154\151\156\145\040\045\151\012" , "\160\040\041\075\040\116\125\114\114" , "\103\072\134\125\163\145\162\163\134\123\164\145\146\141\156\134\104\157\143\165\155\145\156\164\163\134\166\141\147\162\141\156\164\134\150\157\155\145\163\164\145\141\144\134\143\157\144\145\134\143\157\144\145\134\106\151\154\145\124\145\163\164\056\143" , 159 ) ; abort ( ) ; } ;
double * endPtr = p + size ;
printf ( "\155\141\154\154\157\143\040\045\165\040\045\165\040\045\165\012" , p , total , endPtr ) ;
fread ( p , total , 1 , inFilePtr ) ;

int index ;
for ( index = 0 ; index < size ; ++ index ) {
printf ( "\151\156\144\145\170\063\040\045\151\072\040\166\141\154\165\145\040\045\146\012" , index , p [ index ] ) ;
}

printf ( "\012" ) ;
free ( p ) ;
fclose ( inFilePtr ) ;
}

{ struct _Person {
char name [ 48 ];
int phone ;
};

struct _Person personVector []={{ "\101\144\141\155\040\102\145\162\164\151\154\163\163\157\156" , 12345 } ,
{ "\102\145\162\164\151\154\040\103\145\141\163\141\162\163\163\157\156" , 23456 } ,
{ "\103\145\141\163\141\162\040\104\141\166\151\144\163\163\157\156" , 24567 }};
struct _Person person ;

FILE * outFilePtr = fopen ( "\102\154\157\143\153\056\142\151\156" , "\167" ) ;
if ( ! ( outFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "\101\163\163\145\162\164\151\157\156\040\146\141\151\154\145\144\072\040\042\045\163\042\040\151\156\040\146\151\154\145\040\045\163\040\141\164\040\154\151\156\145\040\045\151\012" , "\157\165\164\106\151\154\145\120\164\162\040\041\075\040\116\125\114\114" , "\103\072\134\125\163\145\162\163\134\123\164\145\146\141\156\134\104\157\143\165\155\145\156\164\163\134\166\141\147\162\141\156\164\134\150\157\155\145\163\164\145\141\144\134\143\157\144\145\134\143\157\144\145\134\106\151\154\145\124\145\163\164\056\143" , 185 ) ; abort ( ) ; } ;

fwrite ( personVector , sizeof personVector , 1 , outFilePtr ) ;
fclose ( outFilePtr ) ;

FILE * inFilePtr = fopen ( "\102\154\157\143\153\056\142\151\156" , "\162" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "\101\163\163\145\162\164\151\157\156\040\146\141\151\154\145\144\072\040\042\045\163\042\040\151\156\040\146\151\154\145\040\045\163\040\141\164\040\154\151\156\145\040\045\151\012" , "\151\156\106\151\154\145\120\164\162\040\041\075\040\116\125\114\114" , "\103\072\134\125\163\145\162\163\134\123\164\145\146\141\156\134\104\157\143\165\155\145\156\164\163\134\166\141\147\162\141\156\164\134\150\157\155\145\163\164\145\141\144\134\143\157\144\145\134\143\157\144\145\134\106\151\154\145\124\145\163\164\056\143" , 191 ) ; abort ( ) ; } ;

while ( ! feof ( inFilePtr ) ) {
fread ( & person , sizeof ( struct _Person ) , 1 , inFilePtr ) ;

printf ( "\116\141\155\145\040\040\072\040\045\163\012" , person . name ) ;
printf ( "\120\150\157\156\145\040\072\040\045\144\012" , person . phone ) ;
}

fclose ( inFilePtr ) ;
}

{ FILE * inFilePtr = fopen ( "\124\145\163\164\061\056\164\170\164" , "\162" ) ;
if ( ! ( inFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "\101\163\163\145\162\164\151\157\156\040\146\141\151\154\145\144\072\040\042\045\163\042\040\151\156\040\146\151\154\145\040\045\163\040\141\164\040\154\151\156\145\040\045\151\012" , "\151\156\106\151\154\145\120\164\162\040\041\075\040\116\125\114\114" , "\103\072\134\125\163\145\162\163\134\123\164\145\146\141\156\134\104\157\143\165\155\145\156\164\163\134\166\141\147\162\141\156\164\134\150\157\155\145\163\164\145\141\144\134\143\157\144\145\134\143\157\144\145\134\106\151\154\145\124\145\163\164\056\143" , 204 ) ; abort ( ) ; } ;
fseek ( inFilePtr , -1 , SEEK_END ) ;

unsigned int u ;
while ( ( u = ( unsigned int ) ftell ( inFilePtr ) ) >= 0u ) {
char c = ( char ) fgetc ( inFilePtr ) ;
putchar ( c ) ;

if ( u == 0u ) {
break ;
}

fseek ( inFilePtr , -2 , SEEK_CUR ) ;
}

printf ( "\012\012" ) ;
fclose ( inFilePtr ) ;
}

printf ( "\146\151\154\145\145\170\151\163\164\163\040\130\040\045\163\012" , fileexists ( "\130" ) ? "\131\145\163" : "\116\157" ) ;
printf ( "\146\151\154\145\145\170\151\163\164\163\040\131\040\045\163\012\012" , fileexists ( "\131" ) ? "\131\145\163" : "\116\157" ) ;

{ FILE * tempFilePtr ;
FILE * inOutFilePtr = fopen ( "\120\102\157\157\153\130\056\164\170\164" , "\162\053" ) ;
if ( ! ( inOutFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "\101\163\163\145\162\164\151\157\156\040\146\141\151\154\145\144\072\040\042\045\163\042\040\151\156\040\146\151\154\145\040\045\163\040\141\164\040\154\151\156\145\040\045\151\012" , "\151\156\117\165\164\106\151\154\145\120\164\162\040\041\075\040\116\125\114\114" , "\103\072\134\125\163\145\162\163\134\123\164\145\146\141\156\134\104\157\143\165\155\145\156\164\163\134\166\141\147\162\141\156\164\134\150\157\155\145\163\164\145\141\144\134\143\157\144\145\134\143\157\144\145\134\106\151\154\145\124\145\163\164\056\143" , 228 ) ; abort ( ) ; } ;

tempFilePtr = tmpfile ( ) ;
if ( ! ( tempFilePtr != ( ( void * ) 0 ) ) ) { fprintf ( stderr , "\101\163\163\145\162\164\151\157\156\040\146\141\151\154\145\144\072\040\042\045\163\042\040\151\156\040\146\151\154\145\040\045\163\040\141\164\040\154\151\156\145\040\045\151\012" , "\164\145\155\160\106\151\154\145\120\164\162\040\041\075\040\116\125\114\114" , "\103\072\134\125\163\145\162\163\134\123\164\145\146\141\156\134\104\157\143\165\155\145\156\164\163\134\166\141\147\162\141\156\164\134\150\157\155\145\163\164\145\141\144\134\143\157\144\145\134\143\157\144\145\134\106\151\154\145\124\145\163\164\056\143" , 231 ) ; abort ( ) ; } ;

while ( 1 ) {
char c = ( char ) fgetc ( inOutFilePtr ) ;



if ( c == -1 ) {
break ;
}

putc ( toupper ( c ) , tempFilePtr ) ;
}

rewind ( tempFilePtr ) ;
fprintf ( inOutFilePtr , "\012\055\055\055\055\055\055\055\055\055\055\055\055\012" ) ;

while ( 1 ) {
char c = ( char ) fgetc ( tempFilePtr ) ;

if ( c == -1 ) {
break ;
}

putc ( c , inOutFilePtr ) ;
}

fclose ( inOutFilePtr ) ;
fclose ( tempFilePtr ) ;
}
}

