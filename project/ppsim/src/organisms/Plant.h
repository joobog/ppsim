/**
    \file Plant.h
    \author Eugen Betke
    \brief Behaviour of plants.
*/



#ifndef PLANT_H_
#define PLANT_H_

#include "Organism.h"
#include "PlantConfig.h"
#include "Countable.h"
#include <memory>

namespace ppsim {

class Plant;

typedef std::shared_ptr<Plant> SPPlant;

/** \brief Behaviour of plants.
*/
class Plant :
    public PlantConfig,
    public Organism
{
    public:
        virtual void grow();

};

} /* namespace ppsim */

#endif /* PLANT_H_ */
