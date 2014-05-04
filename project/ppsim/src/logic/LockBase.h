#ifndef LOCKBASE_H
#define LOCKBASE_H

extern "C" {
   #include <pthread.h>
}

namespace ppsim {

class LockBase
{
    public:
        virtual ~LockBase() {pthread_mutex_destroy(&_mutex);}

    protected:
        pthread_mutex_t _mutex;
        LockBase() {pthread_mutex_init(&_mutex, nullptr);}
};

} /* namespace ppsim */

#endif // LOCKBASE_H
