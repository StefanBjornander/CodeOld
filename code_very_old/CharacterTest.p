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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\CharacterTest.c,1$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\ctype.h,1$



















$C:\Users\Stefan\Documents\vagrant\homestead\code\code\CharacterTest.c,2$



void character_test ( char c ) {
printf ( "\141\163\143\151\151\040\045\151\012" , ( int ) c ) ;

printf ( "\151\163\154\157\167\145\162\050\047\045\143\047\051\040\075\040\045\163\012" , c , ( islower ( ( int ) c ) != 0 ) ? "\131\145\163" : "\116\157" ) ;
printf ( "\151\163\165\160\160\145\162\050\047\045\143\047\051\040\075\040\045\163\012" , c , ( isupper ( ( int ) c ) != 0 ) ? "\131\145\163" : "\116\157" ) ;
printf ( "\151\163\141\154\160\150\141\050\047\045\143\047\051\040\075\040\045\163\012" , c , ( isalpha ( ( int ) c ) != 0 ) ? "\131\145\163" : "\116\157" ) ;
printf ( "\151\163\144\151\147\151\164\050\047\045\143\047\051\040\075\040\045\163\012" , c , ( isdigit ( ( int ) c ) != 0 ) ? "\131\145\163" : "\116\157" ) ;
printf ( "\151\163\141\154\156\165\155\050\047\045\143\047\051\040\075\040\045\163\012" , c , ( isalnum ( ( int ) c ) != 0 ) ? "\131\145\163" : "\116\157" ) ;
printf ( "\151\163\170\144\151\147\151\164\050\047\045\143\047\051\040\075\040\045\163\012" , c , ( isxdigit ( ( int ) c ) != 0 ) ? "\131\145\163" : "\116\157" ) ;
printf ( "\151\163\147\162\141\160\150\050\047\045\143\047\051\040\075\040\045\163\012" , c , ( isgraph ( ( int ) c ) != 0 ) ? "\131\145\163" : "\116\157" ) ;
printf ( "\151\163\160\162\151\156\164\050\047\045\143\047\051\040\075\040\045\163\012" , c , ( isprint ( ( int ) c ) != 0 ) ? "\131\145\163" : "\116\157" ) ;
printf ( "\151\163\160\165\156\143\164\050\047\045\143\047\051\040\075\040\045\163\012" , c , ( ispunct ( ( int ) c ) != 0 ) ? "\131\145\163" : "\116\157" ) ;
printf ( "\151\163\143\156\164\162\154\050\047\045\143\047\051\040\075\040\045\163\012" , c , ( iscntrl ( ( int ) c ) != 0 ) ? "\131\145\163" : "\116\157" ) ;
printf ( "\151\163\163\160\141\143\145\050\047\045\143\047\051\040\075\040\045\163\012" , c , ( isspace ( ( int ) c ) != 0 ) ? "\131\145\163" : "\116\157" ) ;

printf ( "\164\157\154\157\167\145\162\050\047\045\143\047\051\040\075\040\047\045\143\047\012" , c , ( char ) tolower ( c ) ) ;
printf ( "\164\157\165\160\160\145\162\050\047\045\143\047\051\040\075\040\047\045\143\047\012\012" , c , ( char ) toupper ( c ) ) ;
}

