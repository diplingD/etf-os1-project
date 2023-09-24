
#include "../h/MemoryAllocator.h"
#include "../lib/console.h"

Node* MemoryAllocator::freeListHead = nullptr;

// pokusava da spoji cur sa cur->next
void tryToJoin(Node* cur) {
    if(cur && cur->next && (((char*)cur + cur->size + MEM_BLOCK_SIZE) >= ((char*)(cur->next)) ) ) {
        cur->size += cur->next->size + MEM_BLOCK_SIZE;
        cur->next = cur->next->next;
        if(cur->next)
            cur->next->prev = cur;
    }
}

void MemoryAllocator::mem_init() {
    freeListHead = (Node*)HEAP_START_ADDR;
    freeListHead->next = freeListHead->prev = nullptr;
    freeListHead->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - MEM_BLOCK_SIZE); // jedan blok za zaglavlje
    freeListHead->status = 0;   //nije alociran
}

void* MemoryAllocator::mem_alloc(size_t size) {
    // zaokruzujemo na blokove
    if(size % MEM_BLOCK_SIZE != 0)
        size = (size/MEM_BLOCK_SIZE + 1) * MEM_BLOCK_SIZE;

    // Pokusavamo da nadjemo free node koji ima dovoljno mesta - u pocetku imamo samo jedan ogroman segment velicine ukupnog prostora koji posle delimo
    Node* node = freeListHead;
    Node* prev = nullptr;
    for(; node != nullptr; prev = node, node = node->next) {
        if(node->size >= size) break;
    }

    if(node == nullptr) return nullptr;  //nismo nasli slobodan fragment


    // Alociramo (zauzimamo) blok:
    size_t remainingSize = node->size - size;   // visak koji ce nam ostati nakon alociranja
    if(remainingSize > 0) {
        node->size = size;      // postavljamo trenutni node na velicinu size a ostatak ostavljamo za novi node
        Node* newNode = (Node*)((char*)node + node->size + MEM_BLOCK_SIZE);
        if(prev) {
            prev->next = newNode;
            newNode->prev = prev;
        } else {    // alociramo glavu liste (prvi element)
            freeListHead = newNode;
            newNode->prev = nullptr;
        }
        newNode->next = node->next;
        newNode->size = remainingSize - MEM_BLOCK_SIZE;
        newNode->status = 0;
    } else {    // nema viska; ako smo tek napravili blok ne bi trebalo da bude viska
        if(prev) {
            prev->next = node->next;
            node->next->prev = prev;
        } else {    // alociramo prvi blok u nizu
            freeListHead = node->next;
        }
    }

    node->next = node->prev = nullptr;
    node->status = 1;   // ALLOCATED
    return (void*)((char*)(node) + MEM_BLOCK_SIZE);
}

int MemoryAllocator::mem_free(void* ptr) {
    if(ptr == nullptr) return -1;  // neuspeh

    Node* node = (Node*)((char*)ptr - MEM_BLOCK_SIZE);   //argument ptr pokazuje na alociran prostor nakon zaglavlja (ne na zaglavlje)
    if(node->status != 1) return -1;    // ako segment nije vec prethodno alociran (1 == allocated)

    // ako je freeListHead == NULL znaci da uopste i nemamo slobodnih segmenata, pa nemamo ni sta da oslobodimo
    if(freeListHead == nullptr) return -1;

    node->status = 0;    // oslobadjamo segment da bude free (0 == free)

    // trazimo gde se nalazi cvor koji hocemo da oslobodimo
    Node* pomNode = freeListHead;
    Node* prevNode = nullptr;
    for(; pomNode != nullptr; prevNode = pomNode, pomNode = pomNode->next) {
        if(node < pomNode) {
            break;
        }
    }

    if(node < freeListHead) {   // ubacuje se pre glave
        node->next = freeListHead;
        node->prev = nullptr;

        freeListHead->prev = node;

        freeListHead = node;
    } else {     // dodajemo u sredinu ili na kraj liste(pomNode==nullptr)
        node->next = pomNode;
        node->prev = prevNode;

        prevNode->next = node;
        if(pomNode) pomNode->prev = node;
    }

    // ako treba - spojiti slobodne segmente u jedan veci
    tryToJoin(node->next);
    tryToJoin(node);
    tryToJoin(prevNode);

    return 0;   // uspeh
}
