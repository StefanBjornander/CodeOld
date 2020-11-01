$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ErrNo.h,1$































extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };


























extern int errno ;



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StringTest.c,1$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,1$



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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\stdio.h,11$



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StringTest.c,2$
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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\StringTest.c,3$



void string_test ( void ) {
int i ;
char * s = "\110\145\154\154\157\054\040\127\157\162\154\144\041" , t [ 100 ] , u [ 100 ] , * p ;
printf ( "\163\164\162\154\145\156\050\042\045\163\042\051\040\075\040\045\151\012" , s , strlen ( s ) ) ;

strcpy ( t , s ) ;
strncpy ( u , s , 5 ) ;
u [ 5 ] = '\000' ;
printf ( "\164\040\075\040\042\045\163\042\054\040\165\040\075\040\042\045\163\042\012" , t , u ) ;

strcat ( t , "\141\142\143" ) ;
i = strlen ( u ) ;
strncat ( u , "\141\142\143" , 2 ) ;
u [ i + 2 ] = '\000' ;
printf ( "\164\040\075\040\042\045\163\042\054\040\165\040\075\040\042\045\163\042\012" , t , u ) ;

printf ( "\163\164\162\143\155\160\050\163\054\040\165\051\040\075\040\045\151\012" , strcmp ( s , u ) ) ;
printf ( "\163\164\162\156\143\155\160\050\163\054\040\165\054\040\062\051\040\075\040\045\151\012" , strncmp ( s , u , 2 ) ) ;

p = strchr ( s , '\154' ) ;
printf ( "\163\164\162\143\150\162\050\163\054\040\047\154\047\051\040\075\040\045\151\012" , ( p != ( ( void * ) 0 ) ) ? ( p - s ) : -1 ) ;

p = strrchr ( s , '\154' ) ;
printf ( "\163\164\162\162\143\150\162\050\163\054\040\047\154\047\051\040\075\040\045\151\012" , ( p != ( ( void * ) 0 ) ) ? ( p - s ) : -1 ) ;

p = strchr ( s , '\170' ) ;
printf ( "\163\164\162\143\150\162\050\163\054\040\047\170\047\051\040\075\040\045\151\012" , ( p != ( ( void * ) 0 ) ) ? ( p - s ) : -1 ) ;

p = strrchr ( s , '\170' ) ;
printf ( "\163\164\162\162\143\150\162\050\163\054\040\047\170\047\051\040\075\040\045\151\012" , ( p != ( ( void * ) 0 ) ) ? ( p - s ) : -1 ) ;

memcpy ( s , "\110\145\154\154\157\054\040\127\157\162\154\144\041" , 20 * sizeof ( char ) ) ;
memmove ( t , "\110\145\154\154\157\054\040\127\157\162\154\144\041" , 20 * sizeof ( char ) ) ;
memset ( u , '\130' , 20 * sizeof ( char ) ) ;
u [ 20 - 1 ] = '\000' ;
printf ( "\163\040\075\040\042\045\163\042\054\040\164\040\075\040\042\045\163\042\054\040\165\040\075\040\042\045\163\042\012" , s , t , u ) ;

p = memchr ( s , '\154' , 20 * sizeof ( char ) ) ;
printf ( "\155\145\155\143\150\162\050\163\054\040\047\154\047\054\040\123\111\132\105\040\052\040\163\151\172\145\157\146\050\143\150\141\162\051\051\040\075\040\045\151\012" , ( p != ( ( void * ) 0 ) ) ? ( p - s ) : -1 ) ;

p = memchr ( s , '\170' , 20 * sizeof ( char ) ) ;
printf ( "\155\145\155\143\150\162\050\163\054\040\047\170\047\054\040\123\111\132\105\040\052\040\163\151\172\145\157\146\050\143\150\141\162\051\051\040\075\040\045\151\012" , ( p != ( ( void * ) 0 ) ) ? ( p - s ) : -1 ) ;

printf ( "\155\145\155\143\155\160\050\163\054\040\164\054\040\123\111\132\105\040\052\040\163\151\172\145\157\146\050\143\150\141\162\051\051\040\075\040\045\151\012" , memcmp ( s , t , 20 * sizeof ( char ) ) ) ;

printf ( "\163\164\162\163\160\156\050\163\054\040\042\110\145\154\154\157\054\040\103\042\051\040\075\040\045\151\012" , strspn ( s , "\110\145\154\154\157\054\040\103" ) ) ;
printf ( "\163\164\162\143\163\160\156\050\163\054\040\042\110\145\154\154\157\054\040\103\042\051\040\075\040\045\151\012" , strcspn ( s , "\110\145\154\154\157\054\040\103" ) ) ;

printf ( "\163\164\162\145\162\162\157\162\050\145\162\162\156\157\051\040\075\040\042\045\163\042\012" , strerror ( errno ) ) ;

p = strtok ( s , "\054" ) ;
while ( p != ( ( void * ) 0 ) ) {
printf ( "\163\164\162\164\157\153\050\163\054\040\042\054\042\051\040\075\040\042\045\163\042\012" , p ) ;
p = strtok ( ( ( void * ) 0 ) , "\054" ) ;
}
}

