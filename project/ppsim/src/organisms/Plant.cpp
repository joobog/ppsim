/**
    \file Plant.cpp
    \author Eugen Betke
    \brief Behaviour of plants.
*/



#include <cstdlib>
#include "Plant.h"

namespace ppsim {

/** \brief Let plant grow.

    The energy of a plant grows constantly in each simulation cycle.
    The formula is:
    \f$ energy_{n+1} = energy_{n} + max\_energy \cdot growth\_rate \f$
*/
void
Plant::grow() {
    set_energy(get_energy() + get_max_energy() * get_growth_rate());
}

} /* namespace ppsim */
