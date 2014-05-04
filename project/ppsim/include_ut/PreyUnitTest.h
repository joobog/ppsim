#ifndef PREYUNITTEST_H
#define PREYUNITTEST_H

#include "Prey.h"
#include "Plant.h"
#include "cppunit/extensions/HelperMacros.h"

class PreyUnitTest : public CppUnit::TestFixture
{
    public:
        CPPUNIT_TEST_SUITE ( PreyUnitTest );
        CPPUNIT_TEST ( test_is_death_aged );
        CPPUNIT_TEST ( test_is_death_underfed );
        CPPUNIT_TEST ( test_is_death_hunger );
        CPPUNIT_TEST ( test_is_death_killed );
        CPPUNIT_TEST ( test_eat );
        CPPUNIT_TEST ( test_is_hungry );
        CPPUNIT_TEST ( test_randomize );
        CPPUNIT_TEST ( test_scale_config );
        CPPUNIT_TEST ( test_set_config );
        CPPUNIT_TEST_SUITE_END();
    public:
        PreyUnitTest();
        virtual ~PreyUnitTest();
        void setUp();
        void tearDown();
        void test_is_death_aged();
        void test_is_death_underfed();
        void test_is_death_hunger();
        void test_is_death_killed();
        void test_eat();
        void test_is_hungry();
        void test_randomize();
        void test_scale_config();
        void test_set_config();
};

#endif // PREYUNITTEST_H
