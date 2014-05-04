#include "PlantUnitTest.h"

CPPUNIT_TEST_SUITE_REGISTRATION( PlantUnitTest );

PlantUnitTest::PlantUnitTest()
{
    //ctor
}

PlantUnitTest::~PlantUnitTest()
{
    //dtor
}


void
PlantUnitTest::test_randomize() {
}

void
PlantUnitTest::test_scale_config() {
}

void
PlantUnitTest::test_set_config() {
    Plant plant;
    PlantConfig plant_config;

    set_config(plant, 1000, 1000, 0.3);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 1000, plant.get_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 1000, plant.get_max_energy());
    CPPUNIT_ASSERT_EQUAL((double) 0.3, plant.get_growth_rate());

    set_config(plant_config, 1200, 1200, 0.4);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 1200, plant_config.get_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 1200, plant_config.get_max_energy());
    CPPUNIT_ASSERT_EQUAL((double) 0.4, plant_config.get_growth_rate());

    set_config(plant, plant_config);
    CPPUNIT_ASSERT_EQUAL((unsigned int) 1200, plant.get_energy());
    CPPUNIT_ASSERT_EQUAL((unsigned int) 1200, plant.get_max_energy());
    CPPUNIT_ASSERT_EQUAL((double) 0.4, plant.get_growth_rate());

    Plant* plantp = new Plant();
    set_config(*plantp, plant_config);
}
