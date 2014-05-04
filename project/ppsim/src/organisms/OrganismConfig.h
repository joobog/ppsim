/**
    \file OrganismConfig.h
    \author Eugen Betke
    \brief Organism configuration.
*/



#ifndef ORGANISMCONFIG_H
#define ORGANISMCONFIG_H

#include "Bounded.h"

namespace ppsim {

/** \brief Organism configuration.
*/
class OrganismConfig
{
public:
    TBoundedUI _energy;
    unsigned int _energy_consumption;

public:
    OrganismConfig();
    virtual void randomize_energy();
    virtual void scale_energy(const unsigned int max_energy);

    // getter
    virtual const unsigned int get_energy() const {return _energy.get_value();}
    virtual TBoundedUI get_raw_energy() const {return _energy;}
    virtual const unsigned int get_max_energy() const {return _energy.get_max();}
    virtual const double get_energy_ratio() const {return _energy.get_ratio();}

    // setter
    virtual void set_energy(const unsigned int energy){_energy = energy;}
    virtual void set_energy(const TBoundedUI energy) {_energy = energy.get_value();}
    virtual void set_max_energy(const unsigned int max_energy) {_energy.set_max(max_energy);}
};

// convenience functions
void set_config(OrganismConfig& target, const OrganismConfig& source);
void scale(OrganismConfig& target, const OrganismConfig& source);
void randomize(OrganismConfig& config);

} /* namespace ppsim */

#endif // ORGANISMCONFIG_H
