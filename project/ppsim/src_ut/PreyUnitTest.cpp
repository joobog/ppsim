#include "PreyUnitTest.h"
#include "Helpers.h"

CPPUNIT_TEST_SUITE_REGISTRATION( PreyUnitTest );

PreyUnitTest::PreyUnitTest()
{
}



PreyUnitTest::~PreyUnitTest()
{
}



void
PreyUnitTest::setUp() {
}



void
PreyUnitTest::tearDown() {
}



void
PreyUnitTest::test_is_death_aged() {
    using namespace ppsim;
    Prey prey;
    set_config(prey, 1000, 1000, 0, 1000, 1000, 0, 10, 0.1);

    for (int i = 0; i < 9; i++) {
        prey.next_vital_state();
    }
    CPPUNIT_ASSERT_EQUAL(LivingState::alive(), prey.get_living_state());

    prey.next_vital_state();
    CPPUNIT_ASSERT_EQUAL(LivingState::aged(), prey.get_living_state());
}



/** \brief Test death if energy is lost
*/
void
PreyUnitTest::test_is_death_underfed() {
	using namespace ppsim;
    Prey prey;
    set_config(prey, 1000, 1000, 100, 10, 100, 0, 1000, 0.1);

    for (int i = 0; i < 12; i++) {
        prey.next_vital_state();
    }

    CPPUNIT_ASSERT_EQUAL(LivingState::alive(), prey.get_living_state());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 40, prey.get_energy());

    prey.next_vital_state();
    CPPUNIT_ASSERT_EQUAL(LivingState::underfed(), prey.get_living_state());
}



/** \brief Test death caused by hunger
*/
void
PreyUnitTest::test_is_death_hunger() {
	using namespace ppsim;
    Prey prey;
    set_config(prey, 1000, 1000, 100, 1000, 1000, 100, 1000, 0.1);

    for (int i = 0; i < 9; i++) {
        prey.next_vital_state();
    }
    CPPUNIT_ASSERT_EQUAL(LivingState::alive(), prey.get_living_state());

    prey.next_vital_state();
    CPPUNIT_ASSERT_EQUAL(LivingState::starved(), prey.get_living_state());
}



/** \brief Test death if energy is lost
*/
void
PreyUnitTest::test_is_death_killed() {
	using namespace ppsim;
    Prey prey;

    prey.kill();

    prey.next_vital_state();
    CPPUNIT_ASSERT_EQUAL(LivingState::killed(), prey.get_living_state());
}



/**
*/
void
PreyUnitTest::test_eat() {
	using namespace ppsim;
    Prey prey;
    Plant plant;

    set_config(prey, 1000, 1000, 100, 1000, 1000, 200, 1000, 0.1);
    set_config(plant, 1000, 1000, 0.1);

    prey.next_vital_state();
    prey.next_vital_state();

    CPPUNIT_ASSERT_EQUAL((unsigned int) 600, prey.get_satiation());

    prey.eat(&plant);

    CPPUNIT_ASSERT_EQUAL((unsigned int) 1000, prey.get_satiation());
}



void
PreyUnitTest::test_is_hungry() {
	using namespace ppsim;
    Prey prey;
    Plant plant;

    set_config(prey, 500, 1000, 100, 500, 2000, 100, 100, 0.1);
    set_config(plant, 499, 1000, 0.1);

    CPPUNIT_ASSERT_EQUAL(true, prey.is_hungry());
    prey.eat(&plant);

    CPPUNIT_ASSERT_EQUAL(true, prey.is_hungry());

    plant.set_energy(1);
    prey.eat(&plant);

    CPPUNIT_ASSERT_EQUAL(false, prey.is_hungry());
}



void
PreyUnitTest::test_randomize() {
	using namespace ppsim;
    Prey prey;
    const unsigned int max_val = -1;
    set_config(prey, 0, max_val, 0, 0, max_val, 0, 1000, 0.1);

    CPPUNIT_ASSERT( prey.get_age() == 0 );
    CPPUNIT_ASSERT( prey.get_energy() == 0 );
    CPPUNIT_ASSERT( prey.get_satiation() == 0);

    randomize(prey);

    // There is a small pobability that this test fail, although
    // the code is correct
    CPPUNIT_ASSERT( prey.get_age() > 0 );
    CPPUNIT_ASSERT( prey.get_energy() > 0 );
    CPPUNIT_ASSERT( prey.get_satiation() > 0);
}



void
PreyUnitTest::test_scale_config() {
	using namespace ppsim;
    Prey prey;
    PreyConfig prey_config;

    set_config(prey, 500, 1000, 0, 300, 1000, 0, 1000, 0.1);
    set_config(prey_config, 666, 3000, 340, 777, 4000, 680, 2000, 0.2);

    prey.next_vital_state();
    prey.next_vital_state();
    prey.next_vital_state();

    scale(prey, prey_config);


    CPPUNIT_ASSERT_EQUAL((unsigned int) 6, prey.get_age());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 1500, prey.get_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 3000, prey.get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 340, prey.get_energy_consumption());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 1200, prey.get_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 4000, prey.get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 680, prey.get_satiation_consumption());
    CPPUNIT_ASSERT_EQUAL((double) 0.2, prey.get_birth_rate());
}



void
PreyUnitTest::test_set_config() {
	using namespace ppsim;
    Prey prey;
    set_config(prey, 0, 1000, 100, 10, 2000, 300, 400, 0.3);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 0, prey.get_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 1000, prey.get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 100, prey.get_energy_consumption());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 10, prey.get_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 2000, prey.get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 300, prey.get_satiation_consumption());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 400, prey.get_max_age());
    CPPUNIT_ASSERT_EQUAL((double) 0.3, prey.get_birth_rate());

    PreyConfig prey_config;
    set_config(prey_config, 0, 1000, 100, 10, 2000, 300, 400, 0.3);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 0, prey_config.get_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 1000, prey_config.get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 100, prey_config.get_energy_consumption());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 10, prey_config.get_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 2000, prey_config.get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 300, prey_config.get_satiation_consumption());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 400, prey_config.get_max_age());
    CPPUNIT_ASSERT_EQUAL((double) 0.3, prey_config.get_birth_rate());
}
