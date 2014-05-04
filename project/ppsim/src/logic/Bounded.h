/**
    \file Bounded.h
    \author Eugen Betke
    \brief Template class that defines lower and upper bounds for a value.
*/



#ifndef BOUNDED_H
#define BOUNDED_H

#include <iostream>
#include <cstdlib>
#include <assert.h>


namespace ppsim {

/** \brief Template class that defines lower and upper bounds for a value.

    Value is always between lower bound (min) and upper bound (max).
    \f$ min <= value <= max \$
*/
template <typename T>
class Bounded
{
        template <typename U, typename V> friend Bounded<U> operator+(const Bounded<U>& bounded, const V value);
        template <typename U, typename V> friend Bounded<U> operator-(const Bounded<U>& bounded, const V value);

    public:
        explicit Bounded();
        explicit Bounded(const T min, const T max);
        explicit Bounded(const T value, const T min, const T max);
        ~Bounded(){}

        Bounded<T>& operator=(const T value);


        Bounded<T> operator+(const Bounded<T>& bounded);
        Bounded<T> operator-(const Bounded<T>& bounded);

        void add(const T value);
        void sub(const T value);

        void add(const Bounded<T>& bounded);
        void sub(const Bounded<T>& bounded);

        void set_min(const T min);
        void set_max(const T max);
        void set_value(const T value);

        T get_max() const {return _max;}
        T get_min() const {return _min;}
        T get_value() const { return _value;}

        void randomize();
        //void scale(const T max);
        double get_ratio () const;

    private:
        T _value;
        T _min;
        T _max;
};

template <typename U, typename V> Bounded<U> operator+(const Bounded<U>& bounded, const V value);
template <typename U, typename V> Bounded<U> operator-(const Bounded<U>& bounded, const V value);


typedef Bounded<unsigned int> TBoundedUI;
typedef Bounded<unsigned long> TBoundedUL;



/** \brief Constructor.
*/
template <typename T>
Bounded <T>::Bounded() :
    _value{0},
    _min{0},
    _max{0}
{}



/** \brief Constructor.
    \param min is the lower bound
    \param max is the upper bound
*/
template <typename T>
Bounded <T>::Bounded(const T min, const T max)
{
    assert(min <= max);

    _min = min;
    _max = max;
    *this = 0;
}



/** \brief Constructor.
    \param min is the lower bound
    \param max is the upper bound
    \param value is any value
*/
template <typename T>
Bounded <T>::Bounded(const T value, const T min, const T max)
{
    assert(min <= max);

    _min = min;
    _max = max;
    *this = value;
}



/** \brief Assignment.
    \param value is any value
    \return a copy of this object
*/
template <typename T>
Bounded<T>&
Bounded<T>::operator=(const T value) {
    if (value > this->_max) {
        this->_value = this->_max;
    }
    if (value < this->_min) {
        this->_value = this->_min;
    }
    if (value >= this->_min && value <= this->_max) {
        this->_value = value;
    }
    return *this;
}



/** \brief Addition.
    \param value is any value
    \return sum
*/
template <typename U, typename V>
Bounded<U>
operator+(const Bounded<U>& bounded, const V value) {
    U result;

    if (value < 0) {
        result = (bounded - (-value))._value;
    } else {
        if (bounded._value + value > bounded._max) {
            result = bounded._max;
        } else {
            result = bounded._value + value;
        }
    }
    return Bounded<U>(result, bounded._min, bounded._max);
}



/** \brief Subtraction.
    \param value is any value
    \return difference
*/
template <typename U, typename V>
Bounded<U>
operator-(const Bounded<U>& bounded, const V value) {
    U result;

    if (value < 0) {
        result = (bounded + (-value))._value;
    } else {
        if (value > bounded._value - bounded._min) {
            result = bounded._min;
        } else {
            result = bounded._value - value;
        }
    }
    return Bounded<U>(result, bounded._min, bounded._max);
}



/** \brief Addition.
    \param bounded is any value
    \return sum
*/
template <typename T>
inline Bounded<T>
Bounded<T>::operator+(const Bounded<T>& bounded) {
    return *this + bounded.get_value();
}



/** \brief Subtraction
    \param bounded is any value
    \return difference
*/
template <typename T>
inline Bounded<T>
Bounded<T>::operator-(const Bounded<T>& bounded) {
    return *this - bounded.get_value();
}



/** \brief Addition.
    \param value is any value
*/
template <typename T>
void
Bounded<T>::add(const T value) {
    if (value < 0) {
        _value = (*this - (-value))._value;
    } else {
        if (this->_value + value > this->_max) {
            _value = this->_max;
        } else {
            _value = this->_value + value;
        }
    }
}



/** \brief Subtraction.
    \param value is any value
*/
template <typename T>
void
Bounded<T>::sub(const T value) {
    if (value < 0) {
        _value = (*this + (-value))._value;
    } else {
        if (value > this->_value - this->_min) {
            _value = this->_min;
        } else {
            _value = this->_value - value;
        }
    }
}



/** \brief Addition.
    \param bounded is any value
*/
template <typename T>
inline void
Bounded<T>::add(const Bounded<T>& bounded) {
    add(bounded.get_value());
}



/** \brief Subtraction
    \param bounded is any value
*/
template <typename T>
inline void
Bounded<T>::sub(const Bounded<T>& bounded) {
    sub(bounded.get_value());
}



/** \brief Set lower bound and adapt value.
    \param min is the lower bound
*/
template <typename T>
void
Bounded<T>::set_min(const T min) {
    this->_min = min;
    if ( _min > _max ) {
        _max = _min;
    }
    *this = this->_value;
}



/** \brief Set upper bound and adapt value.
    \param max is the upper bound
*/
template <typename T>
void
Bounded<T>::set_max(const T max) {
    this->_max = max;
    if( _min > _max) {
        _min = _max;
    }
    *this = this->_value;
}



/** \brief Set value
    \param value is any value
*/
template <typename T>
void
Bounded<T>::set_value(const T value) {
    if (value > this->_max) {
        this->_value = this->_max;
    }
    if (value < this->_min) {
        this->_value = this->_min;
    }
    if (value >= this->_min && value <= this->_max) {
        this->_value = value;
    }
}



/** \brief Set a random number between min and max.
*/
template <typename T>
void
Bounded<T>::randomize() {
    assert(_max >= _min);

    if ((_max - _min) > 0) {
        _value = _min + (rand() % (long)(_max - _min));
    }
}



/** \brief Compute quotient.
    \return quotient min/value or max/value

    If \f$ value < 0 \f$ , then return \f$ min / value \f$
    If \f$ value > 0 \f$ , then return \f$ max / value \f$
    Else return \f$ 0 \f$
*/
template <typename T>
double
Bounded<T>::get_ratio() const {
    assert(_min <= _value);
    assert(_max >= _value);

    double result = 0;
    if (_value < 0) {
        result = (double) _value / (double) _min;
    }
    if (_value > 0) {
        result = (double) _value / (double) _max;
    }
    if (_value == 0) {
        result = 0;
    }

    assert(result >= 0);
    assert(result <= 1);

    return result;
}

} /* namespace ppsim */

#endif // BOUNDED_H
