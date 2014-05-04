#ifndef PLANTCONFIGUNITTEST_H
#define PLANTCONFIGUNITTEST_H

#include "PlantConfig.h"
#include "cppunit/extensions/HelperMacros.h"

class PlantConfigUnitTest : public CppUnit::TestFixture
{
    public:
        CPPUNIT_TEST_SUITE ( PlantConfigUnitTest );
        CPPUNIT_TEST( test_init );
        CPPUNIT_TEST( test_set_value_energy );
        CPPUNIT_TEST( test_limits_energy );
        CPPUNIT_TEST( test_scale_energy );
        CPPUNIT_TEST( test_set_get_growth_rate );
        CPPUNIT_TEST_SUITE_END();
    public:
        PlantConfigUnitTest();
        virtual ~PlantConfigUnitTest();
        void setUp();
        void tearDown();
        void test_init();
            // energy
        void test_set_value_energy();
        void test_limits_energy();
        void test_scale_energy();
        void test_set_get_growth_rate();
    protected:
    private:

        ppsim::PlantConfig* plant_config;

};

#endif // PLANTCONFIGUNITTEST_H
