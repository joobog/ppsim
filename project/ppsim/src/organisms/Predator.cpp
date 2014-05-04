/**
    \file Predator.cpp
    \author Eugen Betke
    \brief Predator behaviour.
*/



#include "Predator.h"
#include <cstdlib>

namespace ppsim {

/** \brief Create an offspring (realistic mode).
    \return pointer to an offspring or nullptr, if no offspring was created

    To create offsprings some conditions need to be fulfilled.
    -# Offspring can only be created, if parent is not underfed. Energy level
    must be over half of energy maximum.
    -# An offspring are created with some probability (birth rate).
*/
SPPredator
Predator::get_offsprings() {
    SPPredator offspring;

    if (this->get_energy() > this->get_max_energy() / 2) {
        if (((double) rand() / (double) RAND_MAX) <= this->get_birth_rate()) {

            offspring = SPPredator(new Predator());
            ppsim::set_config(*offspring, *this);
            offspring->set_age(0);
            offspring->set_satiation(offspring->get_max_satiation() * 0.5);
            offspring->set_energy(offspring->get_max_energy() * 0.1);
            this->set_energy(this->get_energy() - this->get_max_energy() * 0.1);
        }
    }

    return offspring;
}

} /* namespace ppsim */
