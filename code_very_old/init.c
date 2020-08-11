void blockCopy(char* target, const char* source, int size) {
  int index;

  for (index = 0; index < size; ++index) {
    charTarget[index] = charSource[index];
  }
}

void message(const char* text) {
  int size = 0;

  while (text[size] != '\0') {
    ++size;
  }

  load_register(register_ah, 0x40s); // print string
  load_register(register_bx, 1);     // stdout
  load_register(register_cx, size);
  load_register(register_dx, text);
  interrupt(0x21s);

  load_register(register_ah, 0x4Cs); // exit
  load_register(register_al, 0x00);
  interrupt(0x21s);
}

void init() {
  call main();
}

void init_args() {
  // XXX
  call main(argc, argv);
}

void checkStackHeap() {
  // XXX
}
