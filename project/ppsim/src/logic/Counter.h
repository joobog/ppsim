/**
    \file Counter.h
    \author Eugen Betke
    \brief Thread-safe counter.
*/

#ifndef COUNTER_H
#define COUNTER_H

#include <atomic>

namespace ppsim {

template <typename T>
class Counter {
	std::atomic<T> _counter{0};
public:
	Counter() : _counter{0}{};
	const T count() const {return _counter.load();}
	void increase() {_counter++;}
	void decrease() {_counter--;}
	void reset() {_counter.store(0);}
};
}

#endif // COUNTER_H
