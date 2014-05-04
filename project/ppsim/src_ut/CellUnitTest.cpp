#include "CellUnitTest.h"


CPPUNIT_TEST_SUITE_REGISTRATION( CellUnitTest );

CellUnitTest::CellUnitTest() :
    _cell(nullptr)
{
    //ctor
}

CellUnitTest::~CellUnitTest()
{
    //dtor
}

void
CellUnitTest::setUp() {
    _cell = new ppsim::Cell();
}

void
CellUnitTest::tearDown() {
    if (_cell != nullptr) {
        delete _cell;
        _cell = nullptr;
    }
}

void
CellUnitTest::test_recalc_cell_center() {
    using namespace ppsim;
    TPoint center;
    Cell::set_outer_radius(12);
    _cell->recalc_cell_points(2, 2);
    center = _cell->get_center();
    CPPUNIT_ASSERT_EQUAL((TSize) 84, center.y);
    CPPUNIT_ASSERT_EQUAL(((TSize) (cos(M_PI * 30.0f / 180.0f) * 12.0f) * 3), center.x);
}

