typedef void (*handler)(int);

#define SIGINT   2
#define SIGILL   4
#define SIGFPE   8
#define SIGSEGV 11
#define SIGTERM 15
#define SIGABRT 22

#define SIG_DFL ((handler) 0)
#define SIG_ERR ((handler) 0)
#define SIG_IGN ((handler) 1)

void signal(int sig, handler func);
int raise(int sig);
