/**
    \file Predator.h
    \author Eugen Betke
    \brief Predator behaviour.
*/



#ifndef PREDATOR_H_
#define PREDATOR_H_

#include "Creature.h"
#include "Countable.h"
#include "PredatorConfig.h"


namespace ppsim {

class Predator;

typedef std::shared_ptr<Predator> SPPredator;

/** \brief Predator behaviour.
*/
class Predator :
    virtual public PredatorConfig,
    public Creature,
    public Countable<Predator>
{
public:
    virtual SPPredator get_offsprings();
};

} /* namespace ppsim */

#endif /* PREDATOR_H_ */
