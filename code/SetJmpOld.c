#include <setjmp.h>

int setjmp(jmp_buf buf) {
#ifdef __WINDOWS__
  int* bp_pointer = register_bp;
  buf[0] = bp_pointer[0]; // return address
  buf[1] = bp_pointer[1]; // normal stack 
  buf[2] = bp_pointer[2]; // ellipse stack 
#endif

#ifdef __LINUX__
  long int* rbp_pointer = register_rbp;
  buf[0] = rbp_pointer[0]; // return address
  buf[1] = rbp_pointer[1]; // normal stack 
  buf[2] = rbp_pointer[2]; // ellipse stack 
#endif
  return 0;
}

void longjmp(jmp_buf buf, int return_value) {
#ifdef __WINDOWS__
  register_bx = return_value;
  register_cx = buf[0]; // return address
  register_di = buf[2]; // ellipse stack
  register_bp = buf[1]; // normal stack
  jump_register(register_cx);
#endif

#ifdef __LINUX__
  register_ebx = return_value;
  register_rcx = buf[0]; // return address
  register_rdi = buf[2]; // ellipse stack
  register_rbp = buf[1]; // normal stack
  jump_register(register_rcx);
#endif
}

/*void longjmp(jmp_buf buf, int return_value) {
  //printf("longjmp %i\n", return_value);
    load_register(register_bx, return_value);
  load_register(register_cx, buf[0]); // return address
  load_register(register_bp, buf[1]); // normal stack
  load_register(register_di, buf[2]); // ellipse stack

#ifdef __WINDOWS__
  register_bx = return_value;
  register_cx = buf[0]; // return address
  register_bp = buf[1]; // normal stack
  register_di = buf[2]; // ellipse stack
  jump_register(register_cx);
#endif
}*/