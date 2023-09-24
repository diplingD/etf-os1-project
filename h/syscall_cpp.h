#ifndef _syscall_cpp
#define _syscall_cpp

#include "syscall_c.h"

void* operator new (size_t);
void operator delete (void*);
void* operator new[] (size_t);
void operator delete[] (void* ptr);

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();

    int start ();

    static void dispatch ();

    void join();    // nestaticka metoda

    // MODIFIKACIJA
    int getThreadId();
    static void setMaximumThreads(int num_of_threads = 5);

    //static int sleep (time_t);
    static void wrapperRun(void*);     // dodao - mozda moze i na drugi nacin
protected:
    Thread ();
    virtual void run () {}
    static sem_t semafor;     // MODIFIKACIJA
private:
    thread_t myHandle;
    void (*body)(void*); void* arg;
};

class Semaphore {
public:
    Semaphore(unsigned init = 1);

    virtual ~Semaphore();

    int wait();

    int signal();

private:
    sem_t myHandle;
};

class Console {
public:
    static char getc();

    static void putc(char);
};

#endif