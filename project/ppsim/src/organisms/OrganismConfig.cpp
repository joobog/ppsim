/**
    \file OrganismConfig.cpp
    \author Eugen Betke
    \brief Organism configuration.
*/


#include "OrganismConfig.h"


namespace ppsim {

/** \brief Constructor.
*/
OrganismConfig::OrganismConfig() :
    _energy{0, 0, 0}
{}


/** \brief Randomizes organism configuration object.
*/
void
OrganismConfig::randomize_energy() {
    _energy.randomize();
}



/** \brief Scale energy.
    \param max_energy is the new upper bound
*/
void
OrganismConfig::scale_energy(const unsigned int max_energy) {
    unsigned int value = _energy.get_value();
    value = (float) value * ((float) max_energy / (float) _energy.get_max());
    _energy.set_max(max_energy);
    _energy = value;
    _energy.set_max(max_energy);

    assert(_energy.get_max() != 0);
}



// convenience functions

void
set_config(OrganismConfig& target, const OrganismConfig& source) {
    target.set_max_energy(source.get_max_energy());
    target.set_energy(source.get_energy());
}



void
scale(OrganismConfig& target, const OrganismConfig& source) {
    target.scale_energy(source.get_max_energy());
}



void
randomize(OrganismConfig& config){
    config.randomize_energy();
}

} /* namespace ppsim */
