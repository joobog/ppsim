/**
    \file Creature.cpp
    \author Eugen Betke
    \brief Behaviour of creatures.
*/



#include "Creature.h"
#include "Field.h"

namespace ppsim {

/** \brief Constuctor.
*/
Creature::Creature() :
    _next_field{nullptr},
    living_state{LivingState::alive()}
{}



/** \brief Compute vital state (satiation, energy, age) for the next cycle.

    - Mark creature as aged, if age is greater as max age.
    - Mark creature as starved, if satiation falls under half of the maximum
    satiation.
    - Mark creature as underfed, if energy level falls under half of the maximum
    energy.
*/
void
Creature::next_vital_state() {

    if (living_state == LivingState::alive()) {

        set_age(get_age() + 1);
        if (get_age() == get_max_age()) {
            living_state = LivingState::aged();
        }
        else {
            set_satiation(get_raw_satiation() - get_satiation_consumption());
            if (get_satiation() == 0) {
                living_state = LivingState::starved();
            }
            else {

                // TODO (joobog#2#): code verbessern
                double value = 2 * get_energy_consumption() *
                    ((double) get_satiation() /
                     (double) get_max_satiation() - (double) 0.5);

                if ( value < 0) {
                    set_energy(get_raw_energy() - (unsigned int) (-value));
                }
                if ( value > 0) {
                    set_energy(get_raw_energy() + (unsigned int) value);
                }

                if (get_energy() == 0) {
                    living_state = LivingState::underfed();
                }
            }
        }
    }
}



/** \brief Check if a creature is hungry or not.

    A creature is hungry, if satiation level falls under the half of the maximal
    satiation

    \return true if creature is hungry, else false
*/
const bool
Creature::is_hungry() {
    bool result = false;

    if (get_satiation() < get_max_satiation() / 2) {
        result = true;
    }
    return result;
}



/** \brief Mark creature as killed.
*/
void
Creature::kill() {
    // kill only if alive
    if(living_state == LivingState::alive()) {
        living_state = LivingState::killed();
    }
}



/** \brief Check the living state of the creature.

    If creature is death, the function returns also the reason why it is death.

    \return living state of creature.
*/
const LivingState
Creature::get_living_state() const {
    return living_state;
}



/** \brief Let a creature eat an organism.

    When a creature eats an organism, it gets its energy. The energy, that the
    creature eats, is taken away from the organism. The organism is not
    destroyed, when it is eaten.
*/
void
Creature::eat(Organism* org) {
    unsigned int avail_energy;
    unsigned int curr_hunger;
    unsigned int transfer;

    avail_energy = org->get_energy();
    curr_hunger = get_max_satiation() - get_satiation();
    transfer = ((avail_energy > curr_hunger) ? curr_hunger : avail_energy);

    org->
        set_energy(org->get_raw_energy().get_value() - transfer);
    set_satiation(get_satiation() + transfer);
}



/** \brief Adapt the internal state of a creature to the new configuration.

    When max values of satiation, energy or/and age are change, the current
    values of scaled linearly
    to the max values.
*/
//void
//Creature::scale_config(OrganismConfig* conf) {
//    _conf->scale_energy(conf->get_max_energy());
//    CreatureConfig* _creature_conf = dynamic_cast<CreatureConfig*>(_conf);
//    CreatureConfig* creature_conf = dynamic_cast<CreatureConfig*>(conf);
//
//    _creature_conf->set_birth_rate(creature_conf->get_birth_rate());
//    _creature_conf->set_satiation_consumption(
//        creature_conf->get_satiation_consumption());
//    _creature_conf->set_energy_consumption(
//        creature_conf->get_energy_consumption());
//    _creature_conf->scale_age(creature_conf->get_max_age());
//    _creature_conf->scale_satiation(creature_conf->get_max_satiation());
//}



// getter
/** \brief Getter. Get the field, where the creature intends to jump on the next
    simulation cycle.

    \return pointer to the field
*/
Field*
Creature::get_next_field() {
    return _next_field;
}



// setter
/** \brief Setter. Set the field, the creature shall jump to on the next
    simulation cycle.
*/
void
Creature::set_next_field(Field* field) {
    assert(field != nullptr);
    _next_field = field;
}


} /* namespace ppsim */
