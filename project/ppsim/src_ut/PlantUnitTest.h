#ifndef PLANTUNITTEST_H
#define PLANTUNITTEST_H

#include "Plant.h"
#include "cppunit/extensions/HelperMacros.h"

using namespace CppUnit;

class PlantUnitTest : public TestFixture
{
    public:
        CPPUNIT_TEST_SUITE ( PlantUnitTest );
        CPPUNIT_TEST ( test_randomize );
        CPPUNIT_TEST ( test_scale_config );
        CPPUNIT_TEST ( test_set_config );
        CPPUNIT_TEST_SUITE_END();

    public:
        PlantUnitTest();
        virtual ~PlantUnitTest();
        void test_randomize();
        void test_scale_config();
        void test_set_config();
    protected:
    private:
};

#endif // PLANTUNITTEST_H
