/**
    \file Field.h
    \author Eugen Betke
    \brief Definition of the field.
*/



#ifndef FIELD_H_
#define FIELD_H_

#include "Predator.h"
#include "Prey.h"
#include "Plant.h"
#include "PredatorConfig.h"
#include "PreyConfig.h"
#include "PlantConfig.h"
#include <cstdlib>
#include <vector>
#include <cmath>
#include <list>
#include <iostream>
#include <mutex>


namespace ppsim {

class WriteLockGuard {
private:
	pthread_rwlock_t* _lck;
public:
	WriteLockGuard(pthread_rwlock_t& lck) : _lck{&lck} {
		pthread_rwlock_wrlock(_lck);
	}
	~WriteLockGuard() {
		pthread_rwlock_unlock(_lck);
	}
};

class ReadLockGuard {
private:
	pthread_rwlock_t* _lck;
public:
	ReadLockGuard(pthread_rwlock_t& lck) : _lck{&lck} {
		pthread_rwlock_rdlock(_lck);
	}
	~ReadLockGuard() {
		pthread_rwlock_unlock(_lck);
	}
};



typedef std::vector<SPPredator> PredatorList;
typedef std::vector<SPPrey> PreyList;

/** \brief Definition of the field.
*/
class Field {

private:
  PredatorList _predators;
  PreyList _preys;
  PredatorList _arrived_predators;
  PreyList _arrived_preys;
  SPPlant _plant;

	std::mutex lock_arrived_preys;
	std::mutex lock_arrived_predators;
	pthread_rwlock_t lock_preys_size;
	pthread_rwlock_t lock_predators_size;

	void append_to_arrived_preys(SPPrey&& _prey);
	void append_to_arrived_predators(SPPredator&& predator);


public:
	Field();
	virtual ~Field();

  void replace_plant(SPPlant plant);
	SPPlant get_plant();
	PreyList* get_preys();      // for unit tests only
	PredatorList* get_predators();  // for unit tests only

	void push(SPPrey& prey);
	void push(SPPredator& predator);

	const bool has_predator();
	const bool has_prey();
	const bool has_plant();

	void scale_config(const PlantConfig& plant_config);
	void scale_config(const PreyConfig& prey_config);
	void scale_config(const PredatorConfig& predator_config);

	const size_t count_preys();
	const size_t count_predators();


	//void call_vital_functions();
  void preys_eat_plants();
	void predators_eat_preys();
  void generate_offsprings();
	void increase_age();


	// move-operation splitted in three steps
	void choose_direction(std::vector<Field*> neighbors);
	void move();
	void finish_move();
};

} /* namespace ppsim */

#endif /* FIELD_H_ */
