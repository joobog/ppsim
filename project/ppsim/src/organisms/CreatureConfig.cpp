/**
    \file CreatureConfig.cpp
    \author Eugen Betke
    \brief Creature configuration.
*/



#include "CreatureConfig.h"

namespace ppsim {

/** \brief Constructor.
*/
CreatureConfig::CreatureConfig() :
    _age{0, 0, 0},
    _satiation{0, 0, 0},
    _energy_consumption{0},
    _satiation_consumption{0},
    _birth_rate{0.0}
{}



/** \brief Scale age linearly to the new maximum value.
    \param max_age new limit for maximum age
*/
void
CreatureConfig::scale_age(const unsigned int max_age) {
    unsigned int value = _age.get_value();
    value = (float) value * (float) max_age / (float) _age.get_max();
    _age.set_max(max_age);
    _age = value;
    assert(_age.get_max() != 0);
}



/** \brief Scale satiation linearly to the new maximum value.

    \param max_satiation new limit for satiation.
*/
void
CreatureConfig::scale_satiation(const unsigned int max_satiation) {
    unsigned int value = _satiation.get_value();
    value = (float) value * ((float) max_satiation / (float) _satiation.get_max());
    _satiation.set_max(max_satiation);
    _satiation = value;
	assert(_satiation.get_max() != 0);
}



// convenience functions

void
set_config(
    CreatureConfig& creature_config,
    const unsigned int energy,
    const unsigned int max_energy,
    const unsigned int energy_consumption,
    const unsigned int satiation,
    const unsigned int max_satiation,
    const unsigned int satiation_consumption,
    const unsigned int max_age,
    const double birth_rate) {
    creature_config.set_max_energy(max_energy);
    creature_config.set_energy(energy);
    creature_config.set_energy_consumption(energy_consumption);
    creature_config.set_max_satiation(max_satiation);
    creature_config.set_satiation(satiation);
    creature_config.set_satiation_consumption(satiation_consumption);
    creature_config.set_energy_consumption(energy_consumption);
    creature_config.set_max_age(max_age);
    creature_config.set_birth_rate(birth_rate);
}



void set_config(CreatureConfig& target, const CreatureConfig& source) {
    set_config(target, static_cast<const OrganismConfig&>(source));
    // target.set_energy(source.get_energy());
    target.set_max_age(source.get_max_age());
    target.set_max_satiation(source.get_max_satiation());
    target.set_satiation(source.get_satiation());
    target.set_satiation_consumption(source.get_satiation_consumption());
    target.set_energy_consumption(source.get_energy_consumption());
    target.set_birth_rate(source.get_birth_rate());
}



CreatureConfig get_config(const CreatureConfig& creature_config) {
    return static_cast<CreatureConfig>(creature_config);
}



void
scale(CreatureConfig& target, const CreatureConfig& source) {
    scale(target, static_cast<const OrganismConfig&>(source));
    target.scale_satiation(source.get_max_satiation());
    target.set_satiation_consumption(source.get_satiation_consumption());
    target.set_energy_consumption(source.get_energy_consumption());
    target.scale_age(source.get_max_age());
    target.set_birth_rate(source.get_birth_rate());
}



void
randomize(CreatureConfig& config) {
    randomize(static_cast<OrganismConfig&>(config));
    config.randomize_age();
    config.randomize_satiation();
}

} /* namespace ppsim */
