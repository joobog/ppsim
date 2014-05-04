/**
    \file Prey.cpp
    \author Eugen Betke
    \brief Behaviour of preys.
*/



#include "Prey.h"
#include "PlantConfig.h"
#include <cstdlib>


namespace ppsim {

/** \brief Eat plant.
	\param org is an organism configuration object
*/
void
Prey::eat(Organism* org) {
	unsigned int avail_energy;
	unsigned int curr_hunger;
	unsigned int transfer;

	avail_energy = org->get_energy();
	curr_hunger = get_max_satiation() - get_satiation();
	transfer = ((avail_energy > curr_hunger) ? curr_hunger : avail_energy);
	org->set_energy(org->get_energy() - transfer);
	set_satiation(get_satiation() + transfer);
}



/** \brief Create an offspring (realistic mode).
	\return pointer to an offspring or nullptr, if no offspring was created

	To create offsprings some conditions need to be fullfield.
	-# Offspring can only be created, if parent is not underfed. Energy level
	must be over half of maximum energy.
	-# An offspring are created with some probability (birth rate).
*/
SPPrey
Prey::get_offsprings() {
	SPPrey offspring;

	if (this->get_energy() > this->get_max_energy() / 2) {
		if (((double) rand() / (double) RAND_MAX) <= this->get_birth_rate()) {

			offspring = SPPrey(new Prey());
			ppsim::set_config(*offspring, *this);
			offspring->set_age(0);
			offspring->set_satiation(offspring->get_max_satiation() * 0.5);
			offspring->set_energy(this->get_max_energy() * 0.1);
			this->set_energy(this->get_energy() - this->get_max_energy() * 0.1);
		}
	}

	return offspring;
}
} /* namespace ppsim */
