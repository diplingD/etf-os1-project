#include "../h/scheduler.hpp"
#include "../h/syscall_c.h"

Elem* Scheduler::head = nullptr;
Elem* Scheduler::tail = nullptr;

TCB *Scheduler::get()
{
    if (!head) { return nullptr; }
    Elem *elem = head;
    head = head->next;
    if (!head) { tail = nullptr; }
    TCB *ret = elem->data;
    mem_free(elem);
    return ret;
}

void Scheduler::put(TCB *tcb)
{
    if (!tcb) return;
    Elem * elem = head;
    elem = (Elem*)mem_alloc((sizeof(Elem)));
    elem->data = tcb;
    elem->next = nullptr;
    if (tail != nullptr)
    {
        tail->next = elem;
        tail = elem;
    } else
    {
        head = tail = elem;
    }
}