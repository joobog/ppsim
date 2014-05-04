#ifndef CELLUNITTEST_H
#define CELLUNITTEST_H

#include "Cell.h"
#include "cppunit/extensions/HelperMacros.h"


class CellUnitTest : public CppUnit::TestFixture
{
public:
    CellUnitTest();
    virtual ~CellUnitTest();
public:
    CPPUNIT_TEST_SUITE( CellUnitTest );
    CPPUNIT_TEST( test_recalc_cell_center );
    CPPUNIT_TEST_SUITE_END( );
public:
    void setUp();
    void tearDown();
    void test_recalc_cell_center();
protected:
private:
    ppsim::Cell* _cell;
};

#endif // CELLUNITTEST_H
