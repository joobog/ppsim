#ifndef CREATUREUNITTEST_H
#define CREATUREUNITTEST_H

#include "Creature.h"
#include "cppunit/extensions/HelperMacros.h"

using namespace CppUnit;

class CreatureUnitTest : public TestFixture
{
    public:
        CPPUNIT_TEST_SUITE ( CreatureUnitTest );
        CPPUNIT_TEST_SUITE_END();

    public:
        CreatureUnitTest();
        virtual ~CreatureUnitTest();
        void setUp();
        void tearDown();
    protected:
    private:
};

#endif // CREATUREUNITTEST_H
