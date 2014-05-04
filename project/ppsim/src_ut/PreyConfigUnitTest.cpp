#include "PreyConfigUnitTest.h"

CPPUNIT_TEST_SUITE_REGISTRATION( PreyConfigUnitTest );

PreyConfigUnitTest::PreyConfigUnitTest()
{
}

PreyConfigUnitTest::~PreyConfigUnitTest()
{
}

void
PreyConfigUnitTest::setUp() {
    prey_config = new ppsim::PreyConfig();
    prey_config->set_max_age(6000);
    prey_config->set_max_energy(3000);
    prey_config->set_max_satiation(4000);
}

void
PreyConfigUnitTest::tearDown(){
    delete prey_config;
    prey_config = nullptr;
}

void
PreyConfigUnitTest::test_init() {
    ppsim::PreyConfig* prey_config = new ppsim::PreyConfig();
    CPPUNIT_ASSERT_EQUAL(prey_config->get_max_age(), (unsigned int) 0);
    CPPUNIT_ASSERT_EQUAL(prey_config->get_age(), (unsigned int) 0);

    CPPUNIT_ASSERT_EQUAL(prey_config->get_max_energy(), (unsigned int) 0);
    CPPUNIT_ASSERT_EQUAL(prey_config->get_energy(), (unsigned int) 0);
    CPPUNIT_ASSERT_EQUAL(prey_config->get_energy_consumption(), (unsigned int) 0);

    CPPUNIT_ASSERT_EQUAL(prey_config->get_max_satiation(), (unsigned int) 0);
    CPPUNIT_ASSERT_EQUAL(prey_config->get_satiation(), (unsigned int) 0);
    CPPUNIT_ASSERT_EQUAL(prey_config->get_satiation_consumption(), (unsigned int) 0);

    CPPUNIT_ASSERT_EQUAL(prey_config->get_birth_rate(), (double) 0.0);
}


/** \brief Test set age value.
*/
void
PreyConfigUnitTest::test_set_value_age() {
    prey_config->set_max_age(5000);
    prey_config->set_age(2334);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 2334, prey_config->get_age());
}

/** \brief Test limits of age
*/
void
PreyConfigUnitTest::test_limits_age() {
    prey_config->set_max_age(6);
    prey_config->set_age(8);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 6, prey_config->get_age());
}

/** \brief Test scalability of age
*/
void
PreyConfigUnitTest::test_scale_age() {
    prey_config->set_max_age(60);
    prey_config->set_age(6);
    prey_config->scale_age(30);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 30, prey_config->get_max_age());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 3, prey_config->get_age());
}


/** \brief Test set energy value
*/
void
PreyConfigUnitTest::test_set_value_energy() {
    prey_config->set_max_energy(6000);
    prey_config->set_energy(2334);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 2334, prey_config->get_energy());
}

/** \brief Test limits of energy
*/
void
PreyConfigUnitTest::test_limits_energy() {
    prey_config->set_max_energy(6000);
    prey_config->set_energy(6041);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 6000, prey_config->get_energy());
}


/** \brief Test scalability of energy
*/
void
PreyConfigUnitTest::test_scale_energy() {
    prey_config->set_max_energy(8000);
    prey_config->set_energy(6000);
    prey_config->scale_energy(4000);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 4000, prey_config->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 3000, prey_config->get_energy());
}

/** \brief Test set satiation value
*/
void
PreyConfigUnitTest::test_set_value_satiation() {
    prey_config->set_max_satiation(6000);
    prey_config->set_satiation(2334);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 2334, prey_config->get_satiation());
}

/** \brief Test limits of satiation
*/
void
PreyConfigUnitTest::test_limits_satiation() {
    prey_config->set_max_satiation(6000);
    prey_config->set_satiation(6041);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 6000, prey_config->get_satiation());
}

/** \brief Test scalability of satiation
*/
void
PreyConfigUnitTest::test_scale_satiation() {
    prey_config->set_max_satiation(8000);
    prey_config->set_satiation(6000);
    prey_config->scale_satiation(4000);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 4000, prey_config->get_max_satiation());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 3000, prey_config->get_satiation());
}

/** \brief Test randomization
*/
void
PreyConfigUnitTest::test_randomize() {
    randomize(*prey_config);
    CPPUNIT_ASSERT(prey_config->get_energy() >= 0 && prey_config->get_energy() <= prey_config->get_max_energy());
}






