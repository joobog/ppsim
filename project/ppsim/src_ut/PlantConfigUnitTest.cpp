#include "PlantConfigUnitTest.h"

CPPUNIT_TEST_SUITE_REGISTRATION( PlantConfigUnitTest );

PlantConfigUnitTest::PlantConfigUnitTest()
{
    //ctor
}

PlantConfigUnitTest::~PlantConfigUnitTest()
{
    //dtor
}



void
PlantConfigUnitTest::setUp() {
    plant_config = new ppsim::PlantConfig();
    plant_config->set_max_energy(3000);
}


void
PlantConfigUnitTest::tearDown() {
    delete plant_config;
    plant_config = nullptr;
}


void
PlantConfigUnitTest::test_init() {
}



/** \brief Test set energy value
*/
void
PlantConfigUnitTest::test_set_value_energy() {
    plant_config->set_max_energy(6000);
    plant_config->set_energy(2334);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 2334, plant_config->get_energy());
}

/** \brief Test limits of energy
*/
void
PlantConfigUnitTest::test_limits_energy() {
    plant_config->set_max_energy(6000);
    plant_config->set_energy(6041);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 6000, plant_config->get_energy());
}


/** \brief Test scalability of energy
*/
void
PlantConfigUnitTest::test_scale_energy() {
    plant_config->set_max_energy(8000);
    plant_config->set_energy(6000);
    plant_config->scale_energy(4000);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 4000, plant_config->get_max_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 3000, plant_config->get_energy());
}


void
PlantConfigUnitTest::test_set_get_growth_rate() {
    plant_config->set_growth_rate(0.4);
    CPPUNIT_ASSERT_EQUAL((double) 0.4, plant_config->get_growth_rate());
}
