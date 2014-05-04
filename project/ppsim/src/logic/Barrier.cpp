#include "Barrier.h"
#include <assert.h>
#include <iostream>


using namespace std;

namespace ppsim {

Barrier::Barrier(const long threshold) :
    LockBase(),
    _counter(0),
    _threshold(threshold)
{
    pthread_cond_init(&_cond_var, nullptr);
}

Barrier::~Barrier()
{
    pthread_cond_destroy(&_cond_var);
}

Barrier&
Barrier::operator++() {
    pthread_mutex_lock(&_mutex);
    _counter++;
    if (_counter >= _threshold) {
        _counter = 0;
        pthread_cond_broadcast(&_cond_var);
    }
    else {
        while (pthread_cond_wait(&_cond_var, &_mutex) != 0);
    }
    pthread_mutex_unlock(&_mutex);
    return *this;
}

Barrier
Barrier::operator++(int) {
    Barrier b(*this);
    ++(*this);
    return b;
}


const long
Barrier::set_threshold(const long threshold) {
    if (threshold < 1) {
        _threshold = 1;
    }
    else {
        _threshold = threshold;
    }
    return _threshold;
}

} /* namespace ppsim */
