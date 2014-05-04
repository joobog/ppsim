#ifndef BARRIER_H
#define BARRIER_H

#include "LockBase.h"

namespace ppsim {

class Barrier : public LockBase
{
    public:
        Barrier(const long threshold);
        virtual ~Barrier();
        Barrier& operator++();
        Barrier operator++(int);
        const long get_counter() const {return _counter;}
        const long get_threshold() const {return _threshold;}
        const long set_threshold(const long threshold);

    private:
        pthread_cond_t _cond_var;
        long _counter;
        long _threshold;
};

} /* namespace ppsim */

#endif // BARRIER_H
