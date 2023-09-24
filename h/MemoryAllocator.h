//
// Created by os on 1/4/23.
//

#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_PP
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_PP

#include "../lib/hw.h"

typedef struct Node{
    struct Node *next, *prev;
    size_t size;
    bool status;   // 0 - free, 1 - allocated
} Node;

void tryToJoin(Node* cur);

class MemoryAllocator{
public:
    static Node* freeListHead;          // lista slobodnih free fragmenata

    static void mem_init();
    static void* mem_alloc(size_t);
    static int mem_free(void*);
};

#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_PP
