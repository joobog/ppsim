/**
    \file CreatureConfig.h
    \author Eugen Betke
    \brief Creature configuration.
*/



#ifndef CREATURECONFIG_H
#define CREATURECONFIG_H

#include "OrganismConfig.h"

namespace ppsim {

/** \brief Creature configuration.
*/
class CreatureConfig :
    virtual public OrganismConfig
{
private:
    TBoundedUI _age;
    TBoundedUI _satiation;
    double _birth_rate;
    unsigned int _energy_consumption;
    unsigned int _satiation_consumption;

public:
    CreatureConfig();

    virtual void scale_age(const unsigned int max_age);
    virtual void scale_satiation(const unsigned int max_satiation);

    virtual void randomize_age() {_age.randomize();}
    virtual void randomize_satiation() {_satiation.randomize();}

    // getter

    virtual const unsigned int get_age() const {return _age.get_value();}
    virtual const unsigned int get_max_age() const {return _age.get_max();}
    virtual const TBoundedUI get_raw_age() const {return _age;}

    virtual const unsigned int get_satiation() const {return _satiation.get_value();}
    virtual const unsigned int get_max_satiation() const {return _satiation.get_max();}

    virtual const TBoundedUI get_raw_satiation() const {return _satiation;}
    virtual TBoundedUI get_raw_satiation() {return _satiation;}

    virtual const unsigned int get_satiation_consumption() const {return _satiation_consumption;}
    virtual const unsigned int get_energy_consumption() const {return _energy_consumption;}
    virtual const double get_birth_rate() const {return _birth_rate;}

    // setter

    virtual void set_age(const unsigned int age) {_age = age;}
    virtual void set_age(const TBoundedUI& age) {_age = age;}
    virtual void set_max_age(const unsigned int max_age) {_age.set_max(max_age);}

    virtual void set_satiation(const unsigned int satiation) {_satiation = satiation;}
    virtual void set_satiation(const TBoundedUI& satiation) {_satiation = satiation.get_value();}
    virtual void set_max_satiation(unsigned int max_satiation) {_satiation.set_max(max_satiation);}

    virtual void set_satiation_consumption(const unsigned int satiation_consumption) {_satiation_consumption = satiation_consumption;}
    virtual void set_energy_consumption(const unsigned int energy_consumption) {_energy_consumption = energy_consumption;}
    virtual void set_birth_rate(const double birth_rate) {_birth_rate = birth_rate;}
};



// convenience functions

void set_config(
    CreatureConfig& creature_config,
    const unsigned int energy,
    const unsigned int max_energy,
    const unsigned int energy_consumption,
    const unsigned int satiation,
    const unsigned int max_satiation,
    const unsigned int satiation_consumption,
    const unsigned int max_age,
    const double birth_rate);

void set_config(CreatureConfig& target, const CreatureConfig& source);

CreatureConfig get_config(const CreatureConfig& creature_config);

void scale(CreatureConfig& target, const CreatureConfig& source);
void randomize(CreatureConfig& config);

} /* namespace ppsim */

#endif // CREATURECONFIG_H
