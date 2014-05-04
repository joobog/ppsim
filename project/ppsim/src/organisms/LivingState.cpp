#include "LivingState.h"


namespace ppsim {

std::ostream& operator<< (std::ostream &out, const LivingState ls)
{
    if (ls == LivingState::alive())
        out << "alive";
    else if (ls == LivingState::aged())
        out << "aged";
    else if (ls == LivingState::starved())
        out << "starved";
    else if (ls == LivingState::underfed())
        out << "underfed";
    else if (ls == LivingState::killed())
        out << "killed";
    else
        out << "undefined";
    return out;
}

} /* namespace ppsim */
