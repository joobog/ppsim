/**
    \file AbstractWorld.h
    \author Eugen Betke
    \brief Abstract representation of the world.

    The world consists of a number of fields, that are ordered in a coordinate
    system. A routine assigns the fields to different threads, that move the
    fields from current state to the next state. Moving a field from one state
    to another means increasing age of creatures, growing plants, move creatures
    from one field to another, ...
*/



#ifndef AbstractWorld_H_
#define AbstractWorld_H_

#include "Field.h"
#include "Plant.h"
#include "C2DVector.h"
#include "Lock.h"
#include "Barrier.h"
#include "BarrierCPP.h"

#include <mutex>
#include <atomic>



namespace ppsim {

class AbstractWorld;


/** \brief Interval.
*/
struct SInterval {
    int a;
    int b;
    SInterval() {
        a = 0;
        b = 0;
    }
};



/** \brief Abstract representation of the world.

    The world consists of a number of fields, that are ordered in a coordinate
    system. A routine assigns the fields to different threads, that move the
    fields from current state to the next state. Moving a field from one state
    to another means increasing age of creatures, growing plants, move creatures
    from one field to another, ...
*/
class AbstractWorld {
private:
    unsigned long cycle_counter;

    SInterval calc_interval(long thread_id);
    int interval_start_value(long thread_id);

    std::mutex _mutex_plant_config;
    std::mutex _mutex_prey_config;
    std::mutex _mutex_pred_config;


    PlantConfig _plant_config;
    PreyConfig _prey_config;
    PredatorConfig _predator_config;

    bool _plant_config_is_changed;
    bool _prey_config_is_changed;
    bool _predator_config_is_changed;
    int _new_preys;
    int _new_predators;

    void scale_plant_config_on_field(TIndex x, TIndex y);
    void scale_prey_configs_on_field(TIndex x, TIndex y);
    void scale_pred_configs_on_field(TIndex x, TIndex y);

public:
    void push_preys(int n);
	void push_predators(int n);

protected:
	std::vector<std::vector<Field>> _abstract_world;
	long _num_of_threads;
    Barrier _barrier;

public:
	AbstractWorld(
        TIndex size_x,
        TIndex size_y,
        PlantConfig plant_config,
        PreyConfig prey_config,
        PredatorConfig predator_config);
	virtual ~AbstractWorld();
	void create_abstract_world(
        TIndex size_x,
        TIndex size_y,
        PlantConfig plant_config,
        PreyConfig prey_config,
        PredatorConfig predator_config);
	void delete_abstract_world();
	void run_cycle();

	void phase_model (long thread_id);

	const unsigned long count_cycles() const;

	const int get_size_x() const;
	const int get_size_y() const;
	//std::shared_ptr<Field> get_field(TIndex x, TIndex y);
	Field* get_field(TIndex x, TIndex y);
	std::vector<Field*> get_neighbor_fields(TPosition pos);

	const long get_number_of_threads();
	const long set_number_of_threads(const long number_of_threads);

	void push_preys_before_next_run(int n);
	void push_predators_before_next_run(int n);

    void set_config(PlantConfig plant_config);
    void set_config(PreyConfig prey_config);
    void set_config(PredatorConfig predator_config);

    PlantConfig* get_plant_config();       // for unit tests only
    PreyConfig* get_prey_config();         // for unit tests only
    PredatorConfig* get_pred_config();     // for unit tests only
};



/** \brief Getter
    \param x is a valid x position in the hex grid
    \param y is a valid y position in the hex grid
    \return pointer to a field in the hex grid
*/
inline Field*
//inline std::shared_ptr<Field>
AbstractWorld::get_field(TIndex x, TIndex y) {
    assert(x >= 0 && x < _abstract_world.size());
    assert(y >= 0 && y < _abstract_world[0].size());
    assert(&_abstract_world[x][y] != nullptr);

	// todo: move operation
    // return std::shared_ptr<Field>{&_abstract_world[x][y]};
    return &_abstract_world[x][y];
}



/** \brief Getter.
    \return current cycle
*/
inline const unsigned long
AbstractWorld::count_cycles() const {
    return cycle_counter;
}



/** \brief Getter.
    \return number of columns
*/
inline const int
AbstractWorld::get_size_x() const {
    return _abstract_world.size();
}



/** \brief Getter.
    @return number of rows
*/
inline const int
AbstractWorld::get_size_y() const {
	if(_abstract_world.size() > 0)
		return _abstract_world[0].size();
	else
		return 0;
}



/** \brief Getter.
    \return number of threads
*/
inline const long
AbstractWorld::get_number_of_threads() {
    return _num_of_threads;
}



/** \brief Adds randomly a number of preys to the world.

    The preys aren't added immediately, but on the end of the simulation cycle.
    At the end of simulaton cycle the preys are added to the world and then the
    next simulation cycle is started.

    \param n number of preys
*/
inline void
AbstractWorld::push_preys_before_next_run(int n) {
    _new_preys = n;
}



/** \brief Adds randomly a number of predators to the world.

    The predators aren't added immediately, but on the end of the simulation
    cycle. At the end of simulaton cycle the predators are added to the world
    and then the next simulation cycle is started.

    \param n number of predators
*/
inline void
AbstractWorld::push_predators_before_next_run(int n) {
    _new_predators = n;
}

} /* namespace ppsim */

#endif /* AbstractWorld_H_ */
