/*#ifdef __WINDOWS__
typedef int jmp_buf[3];
#endif

#ifdef __LINUX__
typedef long int jmp_buf[3];
#endif*/

typedef char* jmp_buf[3];
int setjmp(jmp_buf env);
void longjmp(jmp_buf env, int value);
