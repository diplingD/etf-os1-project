//
// Created by marko on 20.4.22..
//

#include "../lib/mem.h"
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.h"
#include "../h/MemoryAllocator.h"

using size_t = decltype(sizeof(0));


void *operator new(size_t n) {
    return mem_alloc(n);
}

void *operator new[](size_t n) {
    return mem_alloc(n);
}

void operator delete(void *p) {
    mem_free(p);
}

void operator delete[](void *p) {
    mem_free(p);
}
