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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Locale.c,1$
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


$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Locale.c,2$
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



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Locale.c,3$
$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Locale.h,1$










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

extern char * enMessageList [];
extern char * setlocale ( int flag , char * name ) ;
extern struct lconv * localeconv ( void ) ;



$C:\Users\Stefan\Documents\vagrant\homestead\code\code\Locale.c,4$
































static char * enShortDayList [] = { "\123\165\156" , "\115\157\156" , "\124\165\145" , "\127\145\144" , "\124\150\165" , "\106\162\151" , "\123\141\164" };
static char * enLongDayList [] = { "\123\165\156\144\141\171" , "\115\157\156\144\141\171" , "\124\165\145\163\144\141\171" , "\127\145\144\156\145\163\144\141\171" , "\124\150\165\162\163\144\141\171" , "\106\162\151\144\141\171" , "\123\141\164\165\162\144\141\171" };
static char * enShortMonthList [] = { "\112\141\156" , "\106\145\142" , "\115\141\162" , "\101\160\162" , "\115\141\171" , "\112\165\156" , "\112\165\154" , "\101\165\147" , "\123\145\160" , "\117\143\164" , "\116\157\166" , "\104\145\143" };
static char * enLongMonthList [] = { "\112\141\156\165\141\162\171" , "\106\145\142\162\165\141\162\171" , "\115\141\162\143\150" , "\101\160\162\151\154" , "\115\141\171" , "\112\165\156\145" ,
"\112\165\154\171" , "\101\165\147\165\163\164" , "\123\145\160\164\145\155\142\145\162" , "\117\143\164\157\142\145\162" , "\116\157\166\145\155\142\145\162" , "\104\145\143\145\155\142\145\162" };


extern enum { NO_ERROR , NO_FUNCTION , NO_FILE , NO_PATH , NO_HANDLE , NO_ACCESS , EDOM ,
ERANGE , EILSEQ , FOPEN , FFLUSH , FCLOSE , NO_MODE , FWRITE , FREAD , FSEEK ,
FTELL , FSIZE , FREMOVE , FRENAME , FTEMPNAME , FTEMPFILE };
char * enMessageList [] = { "\156\157\040\145\162\162\157\162" , "\146\165\156\143\164\151\157\156\040\156\165\155\142\145\162\040\151\156\166\141\154\151\144" ,
"\146\151\154\145\040\156\157\164\040\146\157\165\156\144" , "\160\141\164\150\040\156\157\164\040\146\157\165\156\144" , "\156\157\040\150\141\156\144\154\145\040\141\166\141\151\154\141\142\154\145" , "\141\143\143\145\163\163\040\144\145\156\151\145\144" ,
"\157\165\164\040\157\146\040\144\157\155\141\151\156" , "\157\165\164\040\157\146\040\162\141\156\147\145" , "\151\156\166\141\154\151\144\040\155\165\154\164\151\142\171\164\145\040\163\145\161\165\145\156\143\145" ,
"\145\162\162\157\162\040\167\150\151\154\145\040\157\160\145\156\151\156\147" , "\145\162\162\157\162\040\167\150\151\154\145\040\146\154\165\163\150\151\156\147" , "\145\162\162\157\162\040\167\150\151\154\145\040\143\154\157\163\151\156\147" , "\157\160\145\156\040\155\157\144\145\040\151\156\166\141\154\151\144" ,
"\145\162\162\157\162\040\167\150\151\154\145\040\167\162\151\164\151\156\147" , "\145\162\162\157\162\040\167\150\151\154\145\040\162\145\141\144\151\156\147" , "\145\162\162\157\162\040\167\150\151\154\145\040\163\145\145\153\151\156\147" ,
"\145\162\162\157\162\040\167\150\151\154\145\040\164\145\154\154\151\156\147" , "\145\162\162\157\162\040\167\150\151\154\145\040\163\151\172\151\156\147" , "\145\162\162\157\162\040\167\150\151\154\145\040\162\145\155\157\166\151\156\147\040\146\151\154\145" , "\145\162\162\157\162\040\167\150\151\154\145\040\162\145\156\141\155\151\156\147\040\146\151\154\145" };

static struct lconv en_US_utf8 = {- 5 , -4 , enShortDayList , enLongDayList , enShortMonthList , enLongMonthList ,
"\141\142\143\144\145\146\147\150\151\152\153\154\155\156\157\160\161\162\163\164\165\166\167\170\171\172" , "\101\102\103\104\105\106\107\110\111\112\113\114\115\116\117\120\121\122\123\124\125\126\127\130\131\132" , enMessageList };

static char * swShortDayList [] = { "\123\157\156" , "\115\141\156" , "\124\151\163" , "\117\156\163" , "\124\157\162" , "\106\162\145" , "\114\157\162" };
static char * swLongDayList [] = { "\123\157\156\144\141\147" , "\115\141\156\144\141\147" , "\124\151\163\144\141\147" , "\117\156\163\144\141\147" , "\124\157\162\163\144\141\147" , "\106\162\145\144\141\147" , "\114\157\162\144\141\147" };
static char * swShortMonthList [] = { "\112\141\156" , "\106\145\142" , "\115\141\162" , "\101\160\162" , "\115\141\152" , "\112\165\156" , "\112\165\154" , "\101\165\147" , "\123\145\160" , "\117\153\164" , "\116\157\166" , "\104\145\143" };
static char * swLongMonthList [] = { "\112\141\156\165\141\162\151" , "\106\145\142\162\165\141\162\151" , "\115\141\162\163" , "\101\160\162\151\154" , "\115\141\152" , "\112\165\156\151" , "\112\165\154\151" , "\101\165\147\165\163\151\164" , "\123\145\160\164\145\155\142\145\162" , "\117\153\164\157\142\145\162" , "\116\157\166\145\155\142\145\162" , "\104\145\143\145\155\142\145\162" };
static char * swMessageList [] = { "\151\156\147\141\040\146\145\154" , "\146\145\154\141\153\164\151\147\164\040\146\165\156\143\164\151\157\156\163\156\165\155\155\145\162" ,
"\150\151\164\164\141\162\040\145\152\040\146\151\154\145\156" , "\150\151\164\164\141\162\040\145\152\040\163\157\153\166\141\147\145\156" , "\151\156\147\145\164\040\150\141\156\144\164\141\147\040\164\151\154\154\147\141\156\147\154\151\147\164" , "\141\164\153\157\155\163\164\040\156\145\153\141\144" ,
"\165\164\141\156\146\157\162\040\144\157\155\141\156" , "\165\164\141\156\146\157\162\040\162\141\156\147\145" , "\146\145\154\141\153\164\151\147\040\155\165\154\164\151\142\171\164\145\055\163\145\153\166\145\156\163" ,
"\146\145\154\040\166\151\144\040\157\160\160\156\151\156\147" , "\146\145\154\040\166\151\144\040\146\154\165\163\150\151\156\147" , "\146\145\154\040\166\151\144\040\163\164\141\156\147\156\151\156\147" , "\146\145\154\040\157\160\160\156\151\156\147\163\154\141\147\145" ,
"\146\145\154\040\166\151\144\040\163\153\162\151\166\156\151\156\147" , "\146\145\154\040\166\151\144\040\154\141\163\156\151\156\147" , "\146\145\154\040\166\151\144\040\163\157\153\156\151\156\147" ,
"\146\145\154\040\166\151\144\040\164\145\154\154\151\156\147" , "\146\145\154\040\166\151\144\040\142\157\162\164\164\141\147\156\151\156\147\040\141\166\040\146\151\154" , "\146\145\154\040\166\151\144\040\156\141\155\156\142\171\164\145\040\141\166\040\146\151\154" };
static struct lconv sw_EN_utf8 = { 1 , 2 , swShortDayList , swLongDayList , enShortMonthList , swLongMonthList ,
"\141\142\143\144\145\146\147\150\151\152\153\154\155\156\157\160\161\162\163\164\165\166\167\170\171\172" , "\101\102\103\104\105\106\107\110\111\112\113\114\115\116\117\120\121\122\123\124\125\126\127\130\131\132" , swMessageList };

static struct _s {
char * name ;
struct lconv * localePtr ;
} sArray [] = {{ "" , & sw_EN_utf8 } , { "\103" , & en_US_utf8 } , { "\125\123" , & en_US_utf8 } , { "\123\105" , & sw_EN_utf8 }};

static int sSize = ( sizeof sArray ) / ( sizeof sArray [ 0 ] ) ;
static struct _s * g_currStructPtr = & sArray [ 0 ];



char * setlocale ( int , char * newName ) {
int index ;
char * oldName = ( g_currStructPtr != ( ( void * ) 0 ) ) ? g_currStructPtr -> name : ( ( void * ) 0 ) ;


g_currStructPtr = ( ( void * ) 0 ) ;

if ( newName != ( ( void * ) 0 ) ) {
for ( index = 0 ; index < sSize ; ++ index ) {
if ( strcmp ( newName , sArray [ index ]. name ) == 0 ) {
g_currStructPtr = & sArray [ index ];

break ;
}
}
}

return oldName ;
}

struct lconv * localeconv ( void ) {


return ( g_currStructPtr != ( ( void * ) 0 ) ) ? g_currStructPtr -> localePtr : ( ( void * ) 0 ) ;
}

