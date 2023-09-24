//
// Created by os on 8/22/23.
//

#include "../h/syscall_cpp.h"

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}