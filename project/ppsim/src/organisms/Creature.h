/**
    \file Creature.h
    \author Eugen Betke
    \brief Behaviour of creatures.
*/



#ifndef CREATURE_H_
#define CREATURE_H_

#include "Organism.h"
#include "Bounded.h"
#include "CreatureConfig.h"
#include "LivingState.h"
#include <stack>
#include <memory>

namespace ppsim {

class Field;

/** \brief Behaviour of creatures.
*/
class Creature:
    public Organism,
    virtual public CreatureConfig
{
private:
    Field* _next_field;
    LivingState living_state;

protected:
    Creature();

public:

	virtual ~Creature(){}

    virtual void next_vital_state();
    virtual const bool is_hungry();
    virtual void kill();

    virtual void eat(Organism* org);

    // getter
    virtual const LivingState get_living_state() const;
    Field* get_next_field();

    // setter
    void set_next_field(Field* field);
};

} /* namespace ppsim */

#endif /* CREATURE_H_ */
