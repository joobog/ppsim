#ifndef VWORLDUNITTEST_H
#define VWORLDUNITTEST_H

#include "VisualWorld.h"
#include "gtkmm/window.h"
#include "cppunit/extensions/HelperMacros.h"


class VWorldUnitTest : public CppUnit::TestFixture
{
public:
    VWorldUnitTest();
    virtual ~VWorldUnitTest();
    CPPUNIT_TEST_SUITE( VWorldUnitTest );
    CPPUNIT_TEST( test_distance );
    CPPUNIT_TEST( test_point_to_pos );
    //CPPUNIT_TEST( test_compute_visual_area ); // difficult test
    CPPUNIT_TEST_SUITE_END( );
public:
    void setUp();
    void tearDown();
    void test_distance();
    void test_point_to_pos();
    void test_compute_visual_area();
protected:
private:
    ppsim::VisualWorld* _visual_world;
};

#endif // VWORLDUNITTEST_H
