#ifndef ORGANISMCONFIGUNITTEST_H
#define ORGANISMCONFIGUNITTEST_H

#include "OrganismConfig.h"
#include "cppunit/extensions/HelperMacros.h"


class OrganismConfigUnitTest : public CppUnit::TestFixture
{
    public:
        CPPUNIT_TEST_SUITE ( OrganismConfigUnitTest );
        CPPUNIT_TEST ( test_set_get );
        CPPUNIT_TEST_SUITE_END();
    public:
        OrganismConfigUnitTest();
        virtual ~OrganismConfigUnitTest();
        void test_set_get();
    protected:
    private:
};

#endif // ORGANISMCONFIGUNITTEST_H
