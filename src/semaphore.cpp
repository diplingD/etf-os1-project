//
// Created by os on 8/21/23.
//

#include "../h/semaphore.h"

SEM::SEM(sem_t *handle, unsigned init) {
    *handle = this;
    val = (int)init;
    isClosed = false;
}

SEM::~SEM() {
    close();
}

int SEM::wait() {
    if(isClosed) {return -1;}

    if(--val < 0) {
        TCB::running->setBlocked(true);
        waitingThreads.addLast(TCB::running);
        TCB::dispatch();
    }

    if(isClosed) {return -1;}
    return 0;
}

int SEM::signal() {
    if(isClosed) {return -1;}

    if(++val <= 0) {
        TCB* deblokirana = waitingThreads.removeFirst();
        deblokirana->isBlocked = false;
        Scheduler::put(deblokirana);
    }

    return 0;
}

int SEM::close() {
    if(isClosed) {return -1;}

    isClosed = true;
    val = 0;

    while(this->waitingThreads.peekFirst()) {
        TCB* thread = this->waitingThreads.removeFirst();
        thread->isBlocked = false;
        Scheduler::put(thread);
    }

    return 0;
}