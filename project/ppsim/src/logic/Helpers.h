/**
    \file Helpers.h
    \author Eugen Betke
    \brief Helper functions.
*/



#ifndef HELPERS_H
#define HELPERS_H

#include <string>
#include <sstream>


namespace ppsim {

/** \brief Definition of often used functions.
*/
class Helpers
{
    public:
        Helpers();
        virtual ~Helpers();
        template <typename T> static std::string to_str(T x);
};



/** \brief Convert a string to integer
    \param x is a number
    \return x converted to string
*/
template <typename T>
std::string
Helpers::to_str(T x) {
    std::stringstream ss;
    ss << x;
    return ss.str();
}


} /* namespace ppsim */

#endif // HELPERS_H
