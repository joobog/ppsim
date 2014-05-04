/**
    \file PlantConfig.cpp
    \author Eugen Betke
    \brief Plant configuration.
*/



#include "PlantConfig.h"
#include "Bounded.h"

namespace ppsim {

// convenience functions

void
set_config(
    PlantConfig& target,
    const unsigned int energy,
    const unsigned int max_energy,
    const double growth_rate) {
    target.set_max_energy(max_energy);
    target.set_energy(energy);
    target.set_growth_rate(growth_rate);
}

void
set_config(PlantConfig& target, const PlantConfig& source) {
    set_config(target, static_cast<const OrganismConfig&>(source));
    target.set_growth_rate(source.get_growth_rate());
}


void
scale(PlantConfig& target, const PlantConfig& source) {
    scale(target, static_cast<const OrganismConfig&>(source));
    target.set_growth_rate(source.get_growth_rate());
}



void
randomize(PlantConfig& plant_config) {
    randomize(static_cast<OrganismConfig&>(plant_config));
}

} /* namespace ppsim */
