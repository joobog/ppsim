/**
    \file Countable.h
    \author Eugen Betke
    \brief Thread-safe counters.
*/


#ifndef COUNTABLE_H_
#define COUNTABLE_H_

#include "Counter.h"

namespace ppsim {

/** \brief Thread-safe statistics counter.

    If a class extends this class it gets the ability to count its own
    instances, death statistics (ageing, starvation, underfeeding and kills).
*/
template <typename O, typename T = long>
struct Countable {
	using value_type = T;

	Countable() {total.increase();}
	~Countable() {total.decrease();}

	static Counter<T> total;
	static Counter<T> aged;
	static Counter<T> eaten;
	static Counter<T> starved;
	static Counter<T> underfed;
};

template <typename O, typename T> Counter<T> Countable<O, T>::total{};
template <typename O, typename T> Counter<T> Countable<O, T>::aged{};
template <typename O, typename T> Counter<T> Countable<O, T>::eaten{};
template <typename O, typename T> Counter<T> Countable<O, T>::starved{};
template <typename O, typename T> Counter<T> Countable<O, T>::underfed{};

} /* namespace ppsim */

#endif /* COUNTABLE_H_ */






















