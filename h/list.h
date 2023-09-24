//
// Created by marko on 20.4.22..
//

#ifndef _list_hpp
#define _list_hpp

#include "../lib/mem.h"
#include "../h/MemoryAllocator.h"

template<typename T>
class List
{
private:      // bilo private
    struct Elem
    {
        T *data;
        Elem *next;

        Elem(T *data, Elem *next) : data(data), next(next) {}

        //void *operator new(size_t size) { return __mem_alloc(size); }
        //void operator delete(void *ptr) { __mem_free(ptr); }
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}

    List(const List<T> &) = delete;

    List<T> &operator=(const List<T> &) = delete;

    //unsigned getSize() {return cnt; }   // dodao!

    void addFirst(T *data)      // dodaje element na pocetak liste
    {
        Elem *elem = new Elem(data, head);
        //cnt++;
        head = elem;
        if (!tail) { tail = head; }
    }

    void addLast(T *data)       // dodaje element na kraj liste
    {
        Elem *elem = new Elem(data, 0);
        //cnt++;
        if (tail)
        {
            tail->next = elem;
            tail = elem;
        } else
        {
            head = tail = elem;
        }
    }

    T *removeFirst()        // uzima element sa pocetka liste
    {
        if (!head) { return 0; }
        //cnt--;
        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }

        T *ret = elem->data;
        delete elem;
        return ret;
    }

    T *peekFirst()      // samo pogleda element sa pocetka liste
    {
        if (!head) { return 0; }
        return head->data;
    }

    T *removeLast()     // uzima element sa kraja liste
    {
        if (!head) { return 0; }
        //cnt--;
        Elem *prev = 0;
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
        {
            prev = curr;
        }

        Elem *elem = tail;
        if (prev) { prev->next = 0; }
        else { head = 0; }
        tail = prev;

        T *ret = elem->data;
        delete elem;
        return ret;
    }

    T *peekLast()       // samo pogleda element sa kraja liste
    {
        if (!tail) { return 0; }
        return tail->data;
    }
};

#endif //_list_hpp