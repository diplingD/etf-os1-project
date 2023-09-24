//
// Created by os on 8/21/23.
//

#ifndef PROJECT_BASE_V1_1_SEMAPHORE_H
#define PROJECT_BASE_V1_1_SEMAPHORE_H

#include "syscall_c.h"
#include "list.h"
#include "tcb.h"

class SEM {
public:
    SEM(sem_t *handle, unsigned init);

    virtual ~SEM();

    int close();
    int wait();
    int signal();

    // new i delete preklopljeni operatori
    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(size);
    }
    void operator delete(void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }

private:
    int val;
    int isClosed;     // promeni u isOpen
    List<TCB> waitingThreads;
};


#endif //PROJECT_BASE_V1_1_SEMAPHORE_H
