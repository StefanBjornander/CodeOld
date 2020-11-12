#include <stdio.h>
#include <stdlib.h>
#include <Signal.h>

/*void signal_handle1(int sig) {
  printf("Signal 1 Handle: %i\n", sig);
}

void signal_handle2(int sig) {
  printf("Signal 2 Handle: %i\n", sig);
}

void signal_handle3(int sig) {
  printf("Signal 3 Handle: %i\n", sig);
}

void signal_handle4(int sig) {
  printf("Signal 4 Handle: %i\n", sig);
}

void signal_handle5(int sig) {
  printf("Signal 5 Handle: %i\n", sig);
}

void signal_handle6(int sig) {
  printf("Signal 6 Handle: %i\n", sig);
}*/

void floating_point_error(int sig) {
  printf("Floating point error: %i\n", sig);
}

void exit_handle1(void) {
  printf("exit1\n");
}

void exit_handle2(void) {
  printf("exit2\n");
}

void exit_handle3(void) {
  printf("exit3\n");
}

void signal_test(void) {
/*  signal(SIGINT, signal_handle1);
  signal(SIGILL, signal_handle2);
  signal(SIGFPE, signal_handle3);
  signal(SIGSEGV, signal_handle4);
  signal(SIGTERM, signal_handle5);
  signal(SIGABRT, signal_handle6);

  /*raise(SIGINT);
  raise(SIGILL);
  raise(SIGFPE);
  raise(SIGSEGV);
  raise(SIGTERM);
  raise(SIGABRT);*/
  
  //signal(SIGFPE, floating_point_error);
  //raise(SIGFPE);

  int a = 1, b = 1, c = a / b;
  printf("%i\n", c);

  atexit(exit_handle1);
  atexit(exit_handle2);
  atexit(exit_handle3);
  exit(0);
}
