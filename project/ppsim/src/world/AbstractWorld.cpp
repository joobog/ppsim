/**
    \file AbstractWorld.cpp
    \author Eugen Betke
    \brief Abstract representation of the world.
*/



#include "AbstractWorld.h"
#include <unistd.h>
#include <cassert>
#include <vector>
#include <thread>

namespace ppsim {

/** Constructor
    \param size_x is the number of columns in the hex grid
    \param size_y is the number of rows in the hex grid
    \param plant_config is the configuration object of a plant
    \param prey_config is the configuration object of a prey
    \param predator_config is the configuration object of a predator
*/
AbstractWorld::AbstractWorld(
    TIndex size_x,
    TIndex size_y,
    PlantConfig plant_config,
    PreyConfig prey_config,
    PredatorConfig predator_config)
    :
    cycle_counter{0},
    _num_of_threads{4},
    _barrier{_num_of_threads},
    _plant_config_is_changed{false},
    _prey_config_is_changed{false},
    _predator_config_is_changed{false},
    _new_preys{0},
    _new_predators{0}
{
    create_abstract_world(
        size_x,
        size_y,
        plant_config,
        prey_config,
        predator_config);
}



/** \brief Destructor.
*/
AbstractWorld::~AbstractWorld() {
    delete_abstract_world();
}


// This function is used by other classed and can not be moved into destructor
/** \brief Delete abstract world.
*/
void
AbstractWorld::delete_abstract_world() {
	_abstract_world.clear();
}


// This function is used by other classed and can not be moved into consturctor
/** \brief Create abstract world.
    \param size_x is the number of columns in the hex grid
    \param size_y is the number of rows in the hex grid
    \param plant_config is the configuration object of a plant
    \param prey_config is the configuration object of a prey
    \param predator_config is the configuration object of a predator
*/
void
AbstractWorld::create_abstract_world(
    TIndex size_x,
    TIndex size_y,
    PlantConfig plant_config,
    PreyConfig prey_config,
    PredatorConfig predator_config)
{

    assert(size_x >= 0);
    assert(size_y >= 0);

    _plant_config = plant_config;
    _prey_config = prey_config;
    _predator_config = predator_config;

	for (int i = 0; i < size_x; i++) {
		_abstract_world.push_back(std::vector<Field>(size_y));
	}

	for (int x = 0; x < get_size_x(); x++) {
        for (int y = 0; y < get_size_y(); y++) {
            SPPlant plant(new Plant());
            ppsim::set_config(*plant, _plant_config);
            ppsim::randomize(*plant);
            _abstract_world[x][y].replace_plant(plant);
        }
	}
}



/** \brief Start simulation (vicious cycle)
    \param cycles is the number of cycles, that shoulb be simulated
*/
void
AbstractWorld::run_cycle() {
	using namespace std;

    cycle_counter++;

    thread tasks[_num_of_threads];

	for (int thread_id = 0; thread_id < _num_of_threads; thread_id++) {
		tasks[thread_id] = thread{&AbstractWorld::phase_model, this, thread_id};
		//cout << "create thread: " << thread_id << endl;
	}

	for (int thread_id = 0; thread_id < _num_of_threads; thread_id++) {
		tasks[thread_id].join();
		//cout << "join thread: " << thread_id << endl;
	}
}




/** \brief Thread function (implements phase model).

    Implements phase modell:
    -# Phase 0
        - update plant config objects
        - update prey config objects
        - update predator config objects
    -# Phase 1
        - breed plants
        - eat plants
        - eat preys
    -# Phase 2
        - choose direction
    -# Phase 3
        - move creatures
    -# Phase 4
        - finish moving creatures
    -# Phase 5
        - increase age of organisms
        - make creatures hungry
        - generate offsprings

    \param id and pointer to the object
 */
void
AbstractWorld::phase_model(long thread_id) {
    using namespace std;
    AbstractWorld* aw = this;


    SInterval interval = aw->calc_interval(thread_id);



    //* phase 0
    // - update organism config if changed
    // - push preys and predators
    if (aw->_plant_config_is_changed) {
        for (int x = interval.a; x <= interval.b; x++) {
            for (int y = 0; y < aw->get_size_y(); y++) {
                aw->scale_plant_config_on_field(x, y);
            }
        }
    }
    if (aw->_prey_config_is_changed) {
        for (int x = interval.a; x <= interval.b; x++) {
            for (int y = 0; y < aw->get_size_y(); y++) {
                aw->scale_prey_configs_on_field(x, y);
            }
        }
    }

    if (aw->_predator_config_is_changed) {
        for (int x = interval.a; x <= interval.b; x++) {
            for (int y = 0; y < aw->get_size_y(); y++) {
                aw->scale_pred_configs_on_field(x, y);
            }
        }
    }


    ++aw->_barrier;
    //*/



    //* serial code
    if (thread_id == 0) {
        aw->_plant_config_is_changed = false;
        aw->_prey_config_is_changed = false;
        aw->_predator_config_is_changed = false;


        if (aw->_new_preys) {
            aw->push_preys(aw->_new_preys);
            aw->_new_preys = 0;
        }

        if (aw->_new_predators) {
            aw->push_predators(aw->_new_predators);
            aw->_new_predators = 0;
        }
    }

    /*
        cout
            << "CAbstractWorld::run():\tFinish phase 0 by thread_id = "
            << thread_id
            << endl;
    //*/


// NOTE (joobog#1#): phase 1 is combined with phase 5 now

    /* phase 1
    // - eating
    for (int x = interval.a; x <= interval.b; x++) {
        for (int y = 0; y < aw->get_size_y(); y++) {
            aw->get_field(x, y)->preys_eat_plants();
            aw->get_field(x, y)->predators_eat_preys();
        }
    }

    pthread_mutex_lock(&aw->_mutex_1);
    aw->counter_1++;
    if (aw->counter_1 == aw->_num_of_threads) {
        aw->counter_1 = 0;
        pthread_cond_broadcast(&aw->_cond_var_1);
    }
    else {
        while (pthread_cond_wait(&aw->_cond_var_1, &aw->_mutex_1) != 0);
    }
    pthread_mutex_unlock(&aw->_mutex_1);
    /*
        cout
            << "CAbstractWorld::run():\tFinish phase 1 by thread_id = "
            << tp->thread_id
            << endl;
    //*/



    //* phase 2
    // - choose_direction
    for (int x = interval.a; x <= interval.b; x++) {
        for (int y = 0; y < aw->get_size_y(); y++) {

            std::vector<Field*> neighbor_fields =
                std::move(aw->get_neighbor_fields(TPosition(x, y)));
            aw->get_field(x, y)->choose_direction(neighbor_fields);
        }
    }


    ++aw->_barrier;

    /*
        cout
            << "CAbstractWorld::run():\tFinish phase 2 by thread_id = "
            << thread_id
            << endl;
    //*/



    //* phase 3
    // - move
    for (int shift = 0; shift <= 5; shift++) {
        //*
        for (int x = interval.a + shift; x <= interval.b; x = x + 5) {
            for (int y = 0; y < aw->get_size_y(); y++) {
                aw->get_field(x, y)->move();

            }
        }


    }

    ++aw->_barrier;
    /*
        cout
            << "CAbstractWorld::run():\tFinish phase 3 by thread_id = "
            << thread_id
            << endl;
    //*/



    //* phase 4
    // - finish move
    for (int x = interval.a; x <= interval.b; x++) {
        for (int y = 0; y < aw->get_size_y(); y++) {
            aw->get_field(x, y)->finish_move();

        }
    }

    ++aw->_barrier;

    /*
        cout
            << "CAbstractWorld::run():\tFinish phase 4 by thread_id = "
            << thread_id
            << endl;
    //*/



    //* phase 5
    // - increase age
    // - generate offsprings
    for (int x = interval.a; x <= interval.b; x++) {
        for (int y = 0; y < aw->get_size_y(); y++) {
            aw->get_field(x, y)->increase_age();
            aw->get_field(x, y)->preys_eat_plants();
            aw->get_field(x, y)->predators_eat_preys();
            aw->get_field(x, y)->generate_offsprings();
        }
    }

    ++aw->_barrier;

    /*
        cout
            << "CAbstractWorld::run():\tFinish phase 5 by thread_id = "
            << thread_id
            << endl;
    //*/

}







/** \brief Calculate interval of columns for a thread.
    \param threaad id is a thread id
    \return an interval of columns that should be processed by a thread
*/
SInterval AbstractWorld::calc_interval(long thread_id) {
    SInterval interval;

    interval.a = interval_start_value(thread_id);
    interval.b = interval_start_value(thread_id + 1) - 1;

    assert(interval.a >= 0);
    assert(interval.a < get_size_x());
    assert(interval.b >= 0);
    assert(interval.b < get_size_x());
    assert(interval.a < interval.b);

    return interval;
}



/** \brief Calculate the start column for a thread
    \param thread_id is a thread id
    \return start column
*/
int
AbstractWorld::interval_start_value(long thread_id) {
    int slot_size, rest;
    int start = 0;

    rest = get_size_x() % _num_of_threads;

    assert(rest == 0);

    slot_size = (get_size_x() - rest) / _num_of_threads;

    if ((slot_size == 0) && (thread_id + 1 > rest))
        return -1;

    if ((thread_id + 1) <= rest)
        start = (slot_size + 1) * thread_id;

    if ((thread_id + 1) > rest)
        start = (slot_size + 1) * rest + slot_size * (thread_id - rest);

    return start;
}





/** \brief Calculate neighbors of a field.

    Neighbors are packed into a vector. Index is mapped to the position. Mapping
    is described by the table below:

    0: above right
    1: right
    2: bottom right
    3: bottom left
    4: left
    5: above left

    \param pos is a position of a field
    \return 6 neighbors. Non-existent neighbors are set to nullptr.
*/
std::vector<Field*>
AbstractWorld::get_neighbor_fields(TPosition pos) {

    assert(pos.x >= 0 && pos.x < this->get_size_x());
    assert(pos.y >= 0 && pos.y < this->get_size_y());

    TIndex x;
    TIndex y;

    std::vector<Field*> neighbors;

	  TIndex _size_x = get_size_x();
	  TIndex _size_y = get_size_y();

    TPosition s(_size_x, _size_y);
    TPosition n(0, 0);

    if (pos.x % 2) {

        x = pos.x + 1;
        y = pos.y + 0;
        if (x < _size_x)
            neighbors.push_back(&_abstract_world[x][y]);

        x = pos.x + 2;
        y = pos.y + 0;
        if (x < _size_x)
            neighbors.push_back(&_abstract_world[x][y]);

        x = pos.x + 1;
        y = pos.y + 1;
        if (x < _size_x && y < _size_y)
            neighbors.push_back(&_abstract_world[x][y]);

        x = pos.x - 1;
        y = pos.y + 1;
        if (x >= 0 && y < _size_y)
            neighbors.push_back(&_abstract_world[x][y]);

        x = pos.x - 2;
        y = pos.y + 0;
        if (x >= 0)
            neighbors.push_back(&_abstract_world[x][y]);

        x = pos.x - 1;
        y = pos.y + 0;
        if (x >= 0)
            neighbors.push_back(&_abstract_world[x][y]);
    }
    else {
        x = pos.x + 1;
        y = pos.y - 1;
        if (x < _size_x && y >= 0)
            neighbors.push_back(&_abstract_world[x][y]);

        x = pos.x + 2;
        y = pos.y + 0;
        if (x < _size_x)
            neighbors.push_back(&_abstract_world[x][y]);

        x = pos.x + 1;
        y = pos.y + 0;
        if (x < _size_x)
            neighbors.push_back(&_abstract_world[x][y]);

        x = pos.x - 1;
        y = pos.y + 0;
        if (x >= 0)
            neighbors.push_back(&_abstract_world[x][y]);

        x = pos.x - 2;
        y = pos.y + 0;
        if (x >= 0)
            neighbors.push_back(&_abstract_world[x][y]);

        x = pos.x - 1;
        y = pos.y - 1;
        if (x >= 0 && y >= 0)
            neighbors.push_back(&_abstract_world[x][y]);
    }

    return std::move(neighbors);
}



/** \brief Setter.
    \param num_of_threads number of threads.
    \return number of threads

    Number of threads is automatically set to the next possible value, if out of
    bounds.
*/
const long
AbstractWorld::set_number_of_threads(const long num_of_threads) {
    _num_of_threads = num_of_threads;
    long max_num = get_size_x() / 5 + 1;
    if (_num_of_threads < 1) {
        _num_of_threads = 1;
    }
    _num_of_threads = max_num < _num_of_threads ? max_num : _num_of_threads;
    _num_of_threads = _barrier.set_threshold(_num_of_threads);
    return _num_of_threads;
}



/** \brief Scale plant configs linearly of all plants on the field.
    \param x x-coordinate of the field
    \param y y-coordinate of the field
*/
void
AbstractWorld::scale_plant_config_on_field(TIndex x, TIndex y) {
    std::lock_guard<std::mutex> lck{_mutex_plant_config};
    _abstract_world[x][y].scale_config(_plant_config);
}



/** \brief Scale prey configs linearly of all preys on the field.
    \param x x-coordinate of the field
    \param y y-coordinate of the field
*/
void
AbstractWorld::scale_prey_configs_on_field(TIndex x, TIndex y) {
    std::lock_guard<std::mutex> lck{_mutex_prey_config};
    _abstract_world[x][y].scale_config(_prey_config);
}



/** \brief Scale predator configs linearly of all predators on the field.
    \param x x-coordinate of the field
    \param y y-coordinate of the field
*/
void
AbstractWorld::scale_pred_configs_on_field(TIndex x, TIndex y) {
    std::lock_guard<std::mutex>{_mutex_pred_config};
    _abstract_world[x][y].scale_config(_predator_config);
}



/** \brief Adds a number of preys to to world in random order.

    New preys with random configs are created and pushed immediately on random
    positions in the world.

    (thread-safe)

    \param n number of preys
*/
void
AbstractWorld::push_preys(int n) {
    int x = 0;
    int y = 0;

    for(int i = 0; i < n; i++) {
        x = rand() % get_size_x();
        y = rand() % get_size_y();
        SPPrey prey(new Prey());
        ppsim::set_config(*prey, _prey_config);
        ppsim::randomize(*prey);

        // critical piece of code
        {
			std::lock_guard<std::mutex>{_mutex_prey_config};
			_abstract_world[x][y].push(prey);
        }
    }
}



/** \brief Adds a number of predators to to world in random order.

    New predators with random configs are created and pushed immediately on
    random positions in the world.

    (thread-safe)

    \param n number of predators
*/
void
AbstractWorld::push_predators(int n) {
    int x = 0;
    int y = 0;

    for(int i = 0; i < n; i++) {
        x = rand() % get_size_x();
        y = rand() % get_size_y();
        SPPredator predator(new Predator());
        ppsim::set_config(*predator, _predator_config);
        ppsim::randomize(*predator);

        // critical piece of code
		{
			std::lock_guard<std::mutex>{_mutex_pred_config};
			_abstract_world[x][y].push(predator);
		}
    }
}



/** \brief Setter.

    New plant config isn't replace immediately on all plants. Plants are
    updated just before next simulation cycle.

    \param plant_config new plant config
*/
void
AbstractWorld::set_config(PlantConfig plant_config) {
    std::lock_guard<std::mutex> lck{_mutex_plant_config};
    _plant_config = plant_config;
    _plant_config_is_changed = true;
}



/** \brief Setter.

    New prey config isn't replace immediately on all preys. Preys are
    updated just before next simulation cycle.

    \param prey_config new prey config
*/
void
AbstractWorld::set_config(PreyConfig prey_config) {
    std::lock_guard<std::mutex>{_mutex_prey_config};
    _prey_config = prey_config;
    _prey_config_is_changed = true;;
}



/** \brief Setter.

    New predator config isn't replace immediately on all predators. Predatorss
    are updated just before next simulation cycle.

    \param predator_config new predator config
*/
void
AbstractWorld::set_config(PredatorConfig predator_config) {
    std::lock_guard<std::mutex> lck{_mutex_pred_config};
    _predator_config = predator_config;
    _predator_config_is_changed = true;
}



/** \brief Getter.
    \return pointer to the plant configuration object
*/
PlantConfig*
AbstractWorld::get_plant_config() {
    return &_plant_config;
}



/** \brief Getter.
    \return pointer to the prey configuration object
*/
PreyConfig*
AbstractWorld::get_prey_config() {
    return &_prey_config;
}



/** \brief Getter.
    \return pointer to the predator configuration object
*/
PredatorConfig*
AbstractWorld::get_pred_config() {
    return &_predator_config;
}

} /* namespace ppsim */
