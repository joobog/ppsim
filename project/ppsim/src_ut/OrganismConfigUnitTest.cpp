#include "OrganismConfigUnitTest.h"

CPPUNIT_TEST_SUITE_REGISTRATION( OrganismConfigUnitTest );

OrganismConfigUnitTest::OrganismConfigUnitTest()
{
    //ctor
}

OrganismConfigUnitTest::~OrganismConfigUnitTest()
{
    //dtor
}


void
OrganismConfigUnitTest::test_set_get() {
    ppsim::OrganismConfig organism_config;

    organism_config.set_max_energy(300);
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 300, organism_config.get_max_energy() );

    organism_config.set_energy(230);
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 230, organism_config.get_energy() );
}
