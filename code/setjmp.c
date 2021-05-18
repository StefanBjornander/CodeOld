#include <setjmp.h>

#ifdef __LINUX__
  int setjmp(jmp_buf buf) {
    void** rbp_pointer = register_rbp;
    buf[0] = rbp_pointer[0];
    buf[1] = rbp_pointer[1];
    buf[2] = rbp_pointer[2];
    return 0;
  }

  void longjmp(jmp_buf buf, int return_value) {
    register_ebx = return_value;
    register_rcx = buf[0];
    register_rdi = buf[2];
    register_rbp = buf[1];
    jump_register(register_rcx);
  }
#endif

#ifdef __WINDOWS__
  int setjmp(jmp_buf buf) {
    void** bp_pointer = register_bp;
    buf[0] = bp_pointer[0];
    buf[1] = bp_pointer[1];
    buf[2] = bp_pointer[2];
    return 0;
  }

  void longjmp(jmp_buf buf, int return_value) {
    register_bx = return_value;
    register_cx = buf[0];
    register_di = buf[2];
    register_bp = buf[1];
    jump_register(register_cx);
  }
#endif