/**
    \file C2DVector.h
    \author Eugen Betke
    \brief Specialized vector.
*/



#ifndef C2DVector_H_
#define C2DVector_H_

#include <sstream>
#include <string>
#include <iostream>
#include "Bounded.h"


namespace ppsim {


/** \brief Template class that defines a vector.
*/
template <typename T>
class C2DVector {
public:
    C2DVector();
	C2DVector(T x, T y);
	virtual ~C2DVector();
	void set_point(T x, T y);
	const C2DVector<T> operator+(const C2DVector& p) const;
	const C2DVector<T> operator-(const C2DVector& p) const;
	const C2DVector<T> add(const C2DVector& v, const C2DVector& bound_tl, const C2DVector& bound_br) const;
	void operator=(const C2DVector& p);
	C2DVector<T> mirror_h_v();
	C2DVector<T> mirror_h();
	C2DVector<T> mirror_v();
	std::string toString();
	T x;
	T y;
private:
    T add(T p, T q, T b1, T b2);
};



typedef int TSize;
typedef C2DVector<TSize> TPoint;
struct SPointRect {
    TPoint a;
    TPoint b;
};

typedef int TIndex;
typedef C2DVector<TIndex> TPosition;

struct SPosRect {
    TPosition a;
    TPosition b;
};

template <typename T>
C2DVector<T>::C2DVector() {
	set_point(0, 0);
}

template <typename T>
C2DVector<T>::C2DVector(T x, T y) {
	set_point(x, y);
}

template <typename T>
C2DVector<T>::~C2DVector() {
}

template <typename T>
void C2DVector<T>::set_point(T x, T y) {
	this->x = x;
	this->y = y;
}

template <typename T>
const C2DVector<T>
C2DVector<T>::operator+(const C2DVector& p) const {
    C2DVector<T> v(this->x + p.x, this->y + p.y);
    return v;
}

template <typename T>
const C2DVector<T>
C2DVector<T>::operator-(const C2DVector& p) const {
    C2DVector<T> v(this->x - p.x, this->y - p.y);
    return v;
}

template <typename T>
const C2DVector<T>
C2DVector<T>::add(const C2DVector& p, const C2DVector& b1, const C2DVector& b2) const {
    C2DVector<T> v(add(this->x, p.x, b1.x, b2.x), add(this->y, p.y, b1.y, b2.y));
    return v;
}

template <typename T>
T C2DVector<T>::add(T p, T q, T b1, T b2) {

    assert(b1 < b2);
    assert(p >= b1 && p < b2);

    Bounded<T> value(p, b1, b2 - 1);
    value = value + q;
    T r = value.get_value();

    assert(r >= b1 && r < b2);

    return r;
}

template <typename T>
void C2DVector<T>::operator=(const C2DVector & p) {
    this->x = p.x;
    this->y = p.y;
}

template <typename T>
C2DVector<T> C2DVector<T>::mirror_h_v() {
    C2DVector<T> point(this->x * -1, this->y * -1);
    return point;
}

template <typename T>
C2DVector<T> C2DVector<T>::mirror_h() {
    C2DVector<T> point(this->x * 1, this->y * -1);
    return point;
}

template <typename T>
C2DVector<T> C2DVector<T>::mirror_v() {
    C2DVector<T> point(this->x * -1, this->y * 1);
    return point;
}

template <typename T>
std::string C2DVector<T>::toString() {
    std::ostringstream os;
    os << "x: " << x << "\t" << "y: " <<  y;
    return os.str();
}

} /* namespace ppsim */

#endif /* C2DVector_H_ */
