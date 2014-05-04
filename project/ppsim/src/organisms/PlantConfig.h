/**
    \file PlantConfig.h
    \author Eugen Betke
    \brief Plant configuration.
*/



#ifndef PLANTCONFIG_H
#define PLANTCONFIG_H

#include "OrganismConfig.h"

namespace ppsim {

/** \brief Plant configuration.
*/
class PlantConfig :
    virtual public OrganismConfig
{
private:
    double _growth_rate;

public:
    PlantConfig() : _growth_rate{0} {}
    const double get_growth_rate() const {return _growth_rate;}
    void set_growth_rate(const double growth_rate) {_growth_rate = growth_rate;}
};



// convenience functions

void set_config(
    PlantConfig& plant_config,
    const unsigned int energy,
    const unsigned int max_energy,
    const double growth_rate);
void set_config(PlantConfig& target, const PlantConfig& source);
void scale(PlantConfig& target, const PlantConfig& source);
void randomize(PlantConfig& conf);

} /* namespace ppsim */

#endif // PLANTCONFIG_H
