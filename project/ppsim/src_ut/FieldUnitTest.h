#ifndef FIELDUNITTEST_H
#define FIELDUNITTEST_H

#include "Field.h"
#include "cppunit/extensions/HelperMacros.h"


class FieldUnitTest : public TestFixture
{
public:
    FieldUnitTest();
    virtual ~FieldUnitTest();
    CPPUNIT_TEST_SUITE( FieldUnitTest );
    CPPUNIT_TEST( test_init );
    CPPUNIT_TEST( test_get_set_organisms );
    CPPUNIT_TEST( test_count_organisms );
    CPPUNIT_TEST( test_choose_direction_preds );
    CPPUNIT_TEST( test_choose_direction_preys );
    CPPUNIT_TEST( test_move );
    CPPUNIT_TEST( test_preys_eat_plants );
    CPPUNIT_TEST( test_preds_eat_preys );
    CPPUNIT_TEST( test_update_plant );
    CPPUNIT_TEST( test_update_preys );
    CPPUNIT_TEST( test_update_predators );
    CPPUNIT_TEST( test_preys_death );
    CPPUNIT_TEST_SUITE_END( );
public:
    void setUp();
    void tearDown();
    void test_init();
    void test_get_set_organisms();
    void test_count_organisms();
    void test_choose_direction_preds();
    void test_choose_direction_preys();
    void test_move();
    void test_preys_eat_plants();
    void test_preds_eat_preys();
    void test_update_plant();
    void test_update_preys();
    void test_update_predators();
    void test_preys_death();
// NOTE (joobog#1$): test generate_offspring can not be tested
// (probability function)


protected:
private:
};

#endif // FIELDUNITTEST_H
