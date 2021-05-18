#include <stddef.h>
#include <Signal.h>
#include <stdio.h>

void signal(int sig, handler func) {
#ifdef __WINDOWS__
  printf("Signal %i function %p\n", sig, func);
  register_al = (short)sig;
  register_ah = 0x25s;
  register_dx = func;
  /*load_register(register_al, (short) sig);
  load_register(register_ah, 0x25s);
  load_register(register_dx, func);*/
  interrupt(0x21s);
  printf("Signal done\n");
#else
#endif
}

int raise(int sig) {
#ifdef __WINDOWS__
  printf("\nRaise signal %i\n", sig);
  register_al = (short) sig;
  register_ah = 0x35s;
  //load_register(register_al, (short)sig);
  //load_register(register_ah, 0x35s);
  interrupt(0x21s);

  { handler func = register_bx;
    //store_register(register_bx, func);
    printf("Raise function %p\n", func);
#else
  { handler func = NULL;
#endif
    if (func == SIG_DFL) {
      printf("Raise default\n");
      return TRUE;
    }
    else if (func == SIG_ERR) {
      printf("Raise error\n");
      return FALSE;
    }
    else {
      printf("Raise function, calling %i with %i\n", func, sig);
      func(sig);
      return TRUE;
    }
  }
}