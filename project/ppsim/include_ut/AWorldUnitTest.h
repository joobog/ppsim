#ifndef AWORLDUNITTEST_H
#define AWORLDUNITTEST_H

#include "AbstractWorld.h"
#include "cppunit/extensions/HelperMacros.h"


class AWorldUnitTest : public CppUnit::TestFixture
{
public:
    AWorldUnitTest();
    virtual ~AWorldUnitTest();
    CPPUNIT_TEST_SUITE( AWorldUnitTest );
    CPPUNIT_TEST( test_init );
    //CPPUNIT_TEST( test_set_config );
    //CPPUNIT_TEST( test_preys_eating );
    CPPUNIT_TEST_SUITE_END( );

public:
    void setUp();
    void tearDown();
    void test_init();
    void test_set_config();
    void test_preys_eating();
// TODO (joobog#1#): create_world

private:
    ppsim::Plant* _plant;
    ppsim::Prey* _prey;
    ppsim::Predator* _pred;
    ppsim::AbstractWorld* _aw;
};

#endif // AWORLDUNITTEST_H
