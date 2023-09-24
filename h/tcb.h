#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "../h/syscall_c.h"
#include "MemoryAllocator.h"

typedef TCB* thread_t;

// Thread Control Node
class TCB
{
public:
    ~TCB()      // destruktor
    {
        delete[] stack;
    }

    bool isFinished() const { return finished; }
    void setFinished(bool value) { finished = value; }

    bool isThreadBlocked() const { return isBlocked; }
    void setBlocked(bool value) { isBlocked = value; }

    //uint64 getTimeSlice() const { return timeSlice; }

    using Body = void (*)(void*);	// pokazivac na f-ju koja nema telo ni povratnu vred

    static int createRunThread(thread_t*, Body, void*, uint64*);       // pravi nit i zapocinje je odmah
    static TCB *createThread(Body, void*, uint64*);          // pravi nit i ceka da je pokrenemo sa start()

    static void yield();

    static TCB *running;	// pokazivac na nit koja se trenutno izvrsava
    static TCB *main;

    int start();        // START

    // MODIFIKACIJA - get PID
    int getThreadId();
    static void ping(TCB* handle);
    void setPinged() { pinged = true; }

    // new i delete preklopljeni operatori u TCB-u
    void* operator new(size_t size) {
        return MemoryAllocator::mem_alloc(size);
    }
    void operator delete(void* ptr) {
        MemoryAllocator::mem_free(ptr);
    }
    void operator delete[](void *p) noexcept {
        MemoryAllocator::mem_free(p);
    }

    static void threadWrapper();    // bilo je private


private:

    TCB(Body body, void* arg, uint64* stk) :	        // KONSTRUKTOR (ako hoces inicijalizatorske liste stavi : dvotacku)
            body(body),
            arg(arg),

            stack(body != nullptr ? stk : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0     // sp ukazuje na poslednju lokaciju steka pa se smanjuje
                    }),

            finished(false),
            isBlocked(false)
    {

        if (body != nullptr) { Scheduler::put(this); }
        pid = ID++;     // MODIFIKACIJA - getPID
        pinged = false;
    }

    struct Context
    {
        uint64 ra;	// gde treba da se vrati nit nakon zavrsetka pozvane f-je yeild
        uint64 sp;	// gde je njen stack pointer
        // sve ostale registre cuvamo na steku
    };

    Body body;		// za svaku nit se pamti njeno telo
    void *arg;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    bool finished;	// da li je zavrsena nit
    bool isBlocked;

    // MODIFIKACIJA - getPid
    int pid;
    static int ID;
    bool pinged;

    friend class Riscv;     // da bismo u Riscv mogli da pristupamo privatnim poljima iz TCB
    friend class SEM;

    // definisi
    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void dispatch();	//trenutno izvrsavanu nit zamenjujemo nekom drugom

    static void join(thread_t* handle);

    static int exit();  //trenutno izvrsavanu nit gasimo


};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_2_INTERRUPT_TCB_HPP