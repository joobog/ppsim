/**
    \file Organism.h
    \author Eugen Betke
    \brief Abstract definition of behaviour of organisms.
*/



#ifndef ORGANISM_H_
#define ORGANISM_H_

#include "OrganismConfig.h"

namespace ppsim {

/** \brief Abstract definition of behaviour of organisms.
*/
class Organism :
    virtual public OrganismConfig {
};

} /* namespace ppsim */

#endif /* ORGANISM_H_ */
