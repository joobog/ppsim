#include "AWorldUnitTest.h"

CPPUNIT_TEST_SUITE_REGISTRATION( AWorldUnitTest );

AWorldUnitTest::AWorldUnitTest()
{

}

AWorldUnitTest::~AWorldUnitTest()
{

}

void
AWorldUnitTest::setUp() {
	using namespace ppsim;
    _aw = nullptr;
    _prey = new Prey();
    _pred = new Predator();
    _plant = new Plant();

    _plant->set_max_energy(1000);
    _plant->set_energy(200);
    _plant->set_growth_rate(1.54);

    _prey->set_max_age(10000);
    _prey->set_max_energy(2000);
    _prey->set_energy(223);
    _prey->set_energy_consumption(400);
    _prey->set_max_satiation(3000);
    _prey->set_satiation(423);
    _prey->set_satiation_consumption(222);
    _prey->set_birth_rate(0.01);

    _pred->set_max_age(10000);
    _pred->set_max_energy(3000);
    _pred->set_energy(22);
    _pred->set_energy_consumption(200);
    _pred->set_max_satiation(4000);
    _pred->set_satiation(23);
    _pred->set_satiation_consumption(333);
    _pred->set_birth_rate(0.02);
}

void
AWorldUnitTest::tearDown() {
	using namespace ppsim;
    delete _aw;
    delete _prey;
    delete _pred;
    delete _plant;
    _aw = nullptr;
    CPPUNIT_ASSERT_EQUAL((Countable<Prey>::value_type) 0, Countable<Prey>::total.count());
    CPPUNIT_ASSERT_EQUAL((Countable<Prey>::value_type) 0, Countable<Predator>::total.count());
}

void
AWorldUnitTest::test_init() {
	using namespace ppsim;
    // zero world
    _aw = new AbstractWorld(0, 0, *_plant, *_prey, *_pred);

    CPPUNIT_ASSERT_EQUAL((unsigned int) 1000,   _aw->get_plant_config()->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((double)       1.54,   _aw->get_plant_config()->get_growth_rate());

    CPPUNIT_ASSERT_EQUAL((unsigned int) 2000,   _aw->get_prey_config()->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 400,    _aw->get_prey_config()->get_energy_consumption());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 3000,   _aw->get_prey_config()->get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 222,    _aw->get_prey_config()->get_satiation_consumption());
    CPPUNIT_ASSERT_EQUAL((double)       0.01,   _aw->get_prey_config()->get_birth_rate());

    CPPUNIT_ASSERT_EQUAL((unsigned int) 3000,   _aw->get_pred_config()->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 200,    _aw->get_pred_config()->get_energy_consumption());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 4000,   _aw->get_pred_config()->get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 333,    _aw->get_pred_config()->get_satiation_consumption());
    CPPUNIT_ASSERT_EQUAL((double)       0.02,   _aw->get_pred_config()->get_birth_rate());
    delete _aw;
    _aw = nullptr;


    // non-zero world
    _aw = new AbstractWorld(10, 20, *_plant, *_prey, *_pred);

    CPPUNIT_ASSERT_EQUAL((unsigned int) 1000,   _aw->get_plant_config()->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((double)       1.54,   _aw->get_plant_config()->get_growth_rate());

    CPPUNIT_ASSERT_EQUAL((unsigned int) 2000,   _aw->get_prey_config()->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 400,    _aw->get_prey_config()->get_energy_consumption());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 3000,   _aw->get_prey_config()->get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 222,    _aw->get_prey_config()->get_satiation_consumption());
    CPPUNIT_ASSERT_EQUAL((double)       0.01,   _aw->get_prey_config()->get_birth_rate());

    CPPUNIT_ASSERT_EQUAL((unsigned int) 3000,   _aw->get_pred_config()->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 200,    _aw->get_pred_config()->get_energy_consumption());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 4000,   _aw->get_pred_config()->get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 333,    _aw->get_pred_config()->get_satiation_consumption());
    CPPUNIT_ASSERT_EQUAL((double)       0.02,   _aw->get_pred_config()->get_birth_rate());

    delete _aw;
    _aw = nullptr;
}

void
AWorldUnitTest::test_set_config() {
	using namespace ppsim;
    _aw = new AbstractWorld(10, 20, PlantConfig(), PreyConfig(), PredatorConfig());

    _aw->set_config(*_plant);
    _aw->set_config(*_prey);
    _aw->set_config(*_pred);

    CPPUNIT_ASSERT_EQUAL((unsigned int) 1000,   _aw->get_plant_config()->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((double)       1.54,   _aw->get_plant_config()->get_growth_rate());

    CPPUNIT_ASSERT_EQUAL((unsigned int) 2000,   _aw->get_prey_config()->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 400,    _aw->get_prey_config()->get_energy_consumption());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 3000,   _aw->get_prey_config()->get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 222,    _aw->get_prey_config()->get_satiation_consumption());
    CPPUNIT_ASSERT_EQUAL((double)       0.01,   _aw->get_prey_config()->get_birth_rate());

    CPPUNIT_ASSERT_EQUAL((unsigned int) 3000,   _aw->get_pred_config()->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 200,    _aw->get_pred_config()->get_energy_consumption());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 4000,   _aw->get_pred_config()->get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 333,    _aw->get_pred_config()->get_satiation_consumption());
    CPPUNIT_ASSERT_EQUAL((double)       0.02,   _aw->get_pred_config()->get_birth_rate());
}


// TODO (joobog#1#): test not finished
void
AWorldUnitTest::test_preys_eating() {
	using namespace ppsim;
    SPPlant plant;
    PreyConfig* prey_config = nullptr;
    int counter = 0;

    _plant->set_max_energy(1000);
    _plant->set_energy(0);
    _plant->set_growth_rate(0.0);

    _aw = new AbstractWorld(4, 2, *_plant, *_prey, *_pred);

    for (int x = 0; x < 4; x++) {
        for (int y = 0; y < 2; y++) {
            plant = _aw->get_field(x, y)->get_plant();
            plant->set_energy(0);
        }
    }

    for (int x = 0; x < 4; x++) {
        for (int y = 0; y < 2; y++) {
            CPPUNIT_ASSERT_EQUAL((unsigned int) 0, _aw->get_field(x, y)->get_plant()->get_energy());
        }
    }

    SPPrey prey(new Prey());
    prey->set_max_age(10000);
    prey->set_max_energy(20000);
    prey->set_energy(10000);
    prey->set_energy_consumption(0);
    prey->set_max_satiation(1500);
    prey->set_satiation(1200);
    prey->set_satiation_consumption(500);
    prey->set_birth_rate(0);

    _aw->get_field(2, 1)->push(prey);
    counter = 0;
    for (int x = 0; x < 4; x++) {
        for (int y = 0; y < 2; y++) {
            counter += _aw->get_field(x, y)->count_preys();
        }
    }
    CPPUNIT_ASSERT_EQUAL((int) 1, counter);

    counter = 0;
    _aw->run_cycle();
    for (int x = 0; x < 4; x++) {
        for (int y = 0; y < 2; y++) {
            counter += _aw->get_field(x, y)->count_preys();
        }
    }
    CPPUNIT_ASSERT_EQUAL((int) 1, counter);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 1500, prey->get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 500, prey->get_satiation_consumption());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 700, prey->get_satiation());


    counter = 0;
    _aw->run_cycle();
    for (int x = 0; x < 4; x++) {
        for (int y = 0; y < 2; y++) {
            counter += _aw->get_field(x, y)->count_preys();
        }
    }
    CPPUNIT_ASSERT_EQUAL((int) 1, counter);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 1500, prey->get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 500, prey->get_satiation_consumption());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 200, prey->get_satiation());

    counter = 0;
    _aw->run_cycle();
    for (int x = 0; x < 4; x++) {
        for (int y = 0; y < 2; y++) {
            counter += _aw->get_field(x, y)->count_preys();
        }
    }
    CPPUNIT_ASSERT_EQUAL((int) 0, counter);
}



















