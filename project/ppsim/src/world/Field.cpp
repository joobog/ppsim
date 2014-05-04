/**
    \file Field.cpp
    \author Eugen Betke
    \brief Definition of the field.
*/



#include "Field.h"
#include "Helpers.h"
#include <cstdlib>

namespace ppsim {

/** \brief Constructor.
*/
Field::Field() :
    _plant{new Plant()}
{
    pthread_rwlock_init(&lock_preys_size, nullptr);
    pthread_rwlock_init(&lock_predators_size, nullptr);
}



/** \brief Destructor.
*/
Field::~Field() {
    pthread_rwlock_destroy(&lock_preys_size);
    pthread_rwlock_destroy(&lock_predators_size);
}



/** \brief Replace plant on the field.
    \param plant is a pointer to a plant

    The plant on the field is destroyed, when it is replaced. Replacing the
    by the same plant has no effect.
*/
void
Field::replace_plant(SPPlant plant) {
    assert(plant != nullptr);

    if (_plant != plant) {
        std::swap(_plant, plant);
    }

    assert(_plant != nullptr);
}



/** \brief Push a new prey on the field.
    \param prey that shall be pushed on the field

    If a preys is pushed on the field, it would not like to move, but stay on
    the field.
*/
void
Field::push(SPPrey& prey) {
    prey->set_next_field(this);
    WriteLockGuard{lock_preys_size};
    _preys.push_back(prey);
}



/** \brief Push a new predator on the field.
    \param predator that shall be pushed on the field.

    If a predator is pushed on the field, it would not like to move, but stay on
    the field.
*/
void
Field::push(SPPredator& predator) {
    predator->set_next_field(this);
	WriteLockGuard{lock_predators_size};
    _predators.push_back(predator);
}



/** \brief Getter.
    \param pointer to the plant
*/
SPPlant
Field::get_plant() {
    return _plant;
}



// NOTE (joobog#1#): for unit test only
/** \brief Getter.
    \param return all preys located on this field

    For unit tests only.
*/
PreyList*
Field::get_preys() {
    return &_preys;
}



// NOTE (joobog#1#): for unit test only
/** \brief Getter.
    \param return all predators located on this field

    For unit tests only.
*/
PredatorList*
Field::get_predators() {
    return &_predators;
}



/** \brief Check if at least one predator is on the field.
    \return true if at least one predator is on the field, else false
*/
const bool
Field::has_predator() {
	ReadLockGuard lck{lock_predators_size};
    return !_predators.empty();
}



/** \brief Check if at least one prey is on the field.
    \return true if at least one prey is on the field, else false
*/
const bool
Field::has_prey() {
	ReadLockGuard lck{lock_preys_size};
    return !_preys.empty();
}



/** \brief Check if plants are on the field.
    \return false if no plants are on the field, else true.
*/
const bool
Field::has_plant() {
    if (_plant->get_energy() > 0)
        return true;
    return false;
}



/** \brief Scale plant config.
    \param plant_config is a new plant config
*/
void
Field::scale_config(const PlantConfig& plant_config) {
    assert(_plant != nullptr);
    ppsim::scale(*_plant, plant_config);
}



/** \brief Scale prey configs of all preys on the field.
    \param prey_config is a new prey config
*/
void
Field::scale_config(const PreyConfig& prey_config) {
	for (auto& prey : _preys) {
        ppsim::scale(*prey, prey_config);
    }
}



/** \brief Scale predator configs of all predators on the field.
    \param predator_config is a new predator config
*/
void
Field::scale_config(const PredatorConfig& predator_config) {
	for (auto& predator : _predators) {
        ppsim::scale(*predator, predator_config);
    }
}



/** \brief Increase age of all organisms on the field.

    Creatures can die for some reason, when the age increases. In this case
    this function increases the corresponding death counter.
*/
void
Field::increase_age() {
    LivingState lv(LivingState::alive());

    _plant->grow();

	for (auto& prey : _preys) {
        prey->next_vital_state();
    }

	for (auto& predator : _predators) {
        predator->next_vital_state();
    }
}



/** \brief Try to create offsprings for all creatures.

    This simulator makes no difference between male and female creatures.
*/
void
Field::generate_offsprings() {

    // preys
    for (int i = 0; i < _preys.size(); i++)
    {
        SPPrey offspring = _preys[i]->get_offsprings();
        if (offspring != nullptr) {
            offspring->set_next_field(this);
			{
				WriteLockGuard{lock_preys_size};
				_preys.push_back(offspring);
			}
        }
    }

    // predators
    for (int i = 0; i < _predators.size(); i++)
	{
        SPPredator offspring = _predators[i]->get_offsprings();
        if (offspring != nullptr) {
            offspring->set_next_field(this);
            {
				WriteLockGuard{lock_predators_size};
				_predators.push_back(offspring);
            }
        }
    }
}



/** \brief Let preys eat plants.
*/
void
Field::preys_eat_plants() {
    for (auto& prey : _preys) {
        prey->eat(_plant.get());
    }
}



/** \brief Let predators eat preys.
 */
void
Field::predators_eat_preys() {
    for (auto& predator : _predators) {
        if (predator->is_hungry()) {
            if (!_preys.empty()) {
                SPPrey prey = _preys.back();
                {
					WriteLockGuard{lock_preys_size};
					_preys.pop_back();
                }
                predator->eat(prey.get());

                Countable<Prey>::eaten.increase();
            }
        }
    }
}



/** \brief First step of moving creatures.
    \param neighbors

    Creatures choose the direction where they like to move on the next
    simulation cycle.
 */
void
Field::choose_direction(std::vector<Field*> neighbors) {
    assert(neighbors.size() == 6);

	using std::vector;

    vector<Field*> best_fields;

    // preys
    //*

    for (auto& prey : _preys)
    {
        // find best fields
        // if a field has a predator -> go away
        // if neighborfield has more plants, go to this field
        if (this->has_predator()) {
			      for (auto& field : neighbors){
                best_fields.push_back(field);
            }
        }
        else {
            for (auto& field : neighbors) {
                if (field->has_plant() && !field->has_predator()){
                    best_fields.push_back(field);
                }
            }
        }

        if (best_fields.size() == 0) {
            prey->set_next_field(this);
        }

        else {
            unsigned int r = rand() % best_fields.size();
            vector<Field*>::iterator iter_best_fields = best_fields.begin();
            prey->set_next_field(*(iter_best_fields + r));
            assert(prey->get_next_field() != nullptr);
        }
    }

    best_fields.clear();

    // predators

    for (auto& predator : _predators) {
        // find best fields
        if (!this->has_prey()) { // && (*predators_iter)->is_hungry()) {
            for (auto& field : neighbors) {
                if (field->has_prey()){
                    best_fields.push_back(field);
                }
            }
        }

        // stay on the field if not hungry
        if (best_fields.size() == 0) {
            predator->set_next_field(this);
        }
        else {
            unsigned int r = rand() % best_fields.size();
            vector<Field*>::iterator iter_best_fields = best_fields.begin();
            predator->set_next_field(*(iter_best_fields + r));
            assert(predator->get_next_field() != nullptr);
        }
    }
}



/** \brief Second step of moving creatures.

    Move creatures to the field, they have chosen.
*/
void
Field::move() {
    while (!_preys.empty()) {
        SPPrey prey = _preys.back();
		{
			WriteLockGuard lck{lock_preys_size};
			_preys.pop_back();
			LivingState lv = prey->get_living_state();
			if (lv!= LivingState::alive())
			{
				if (lv == LivingState::aged())
					Countable<Prey>::aged.increase();
				else if (lv == LivingState::starved())
					Countable<Prey>::starved.increase();
				else if (lv == LivingState::underfed())
					Countable<Prey>::underfed.increase();
			}
			else
			{
				prey->get_next_field()->append_to_arrived_preys(std::move(prey));
			}
		}
    }

    while (!_predators.empty()) {
        SPPredator predator = _predators.back();
		{
			WriteLockGuard lck{lock_predators_size};
			_predators.pop_back();
			LivingState lv = predator->get_living_state();
			if (lv != LivingState::alive())
			{
				if (lv == LivingState::aged())
					Countable<Predator>::aged.increase();
				else if (lv == LivingState::starved())
					Countable<Predator>::starved.increase();
				else if (lv == LivingState::underfed())
					Countable<Predator>::underfed.increase();
			}
			else
			{
				predator->get_next_field()->append_to_arrived_predators(std::move(predator));
			}
		}
    }
}



/** \brief Part of the second step of moving creatures.
    \param pointer to the prey

    Add a prey to the incoming queue.
*/
void
Field::append_to_arrived_preys(SPPrey&& prey) {
    std::lock_guard<std::mutex> lck{lock_arrived_preys};
    _arrived_preys.push_back(std::move(prey));
}



/** \brief Part of the second step of moving creatures.
    \param pointer to the predator

    Add a predator to the predator incoming queue.
*/
void
Field::append_to_arrived_predators(SPPredator&& predator) {
    std::lock_guard<std::mutex> lck{lock_arrived_predators};
    _arrived_predators.push_back(std::move(predator));
}



/** \brief Third (last) phase of moving creatures.

    Creatures are moved from the incoming queue to the outgoing queue.
*/
void
Field::finish_move() {
    assert(_preys.size() == 0);
    assert(_predators.size() == 0);

	{
		WriteLockGuard lck{lock_preys_size};
		std::swap(_preys, _arrived_preys);
	}

	{
		WriteLockGuard lck{lock_predators_size};
		std::swap(_predators, _arrived_predators);
	}

    assert(_arrived_preys.size() == 0);
    assert(_arrived_predators.size() == 0);
}



/** \brief Count preys on the field.
    \return number of preys
*/
const size_t
Field::count_preys() {
    ReadLockGuard{lock_preys_size};
    return _preys.size() + _arrived_preys.size();
}



/** \brief Count predators on the field.
    \return number of predators
*/
const size_t
Field::count_predators() {
    ReadLockGuard{lock_predators_size};
    return _predators.size() + _arrived_predators.size();
}

} /* namespace ppsim */

