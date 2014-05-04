#ifndef LOCK_H
#define LOCK_H

#include "LockBase.h"

namespace ppsim {

class Lock : public LockBase
{
    public:
        Lock() : LockBase(){}
        virtual ~Lock(){}
        void lock() {pthread_mutex_lock(&_mutex);}
        void unlock() {pthread_mutex_unlock(&_mutex);}
};

} /* namespace ppsim */

#endif // LOCK_H
