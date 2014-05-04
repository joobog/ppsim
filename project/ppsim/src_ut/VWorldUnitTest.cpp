#include "VWorldUnitTest.h"
#include "AbstractWorld.h"

CPPUNIT_TEST_SUITE_REGISTRATION( VWorldUnitTest );

VWorldUnitTest::VWorldUnitTest() :
    _visual_world(nullptr)
{

}

VWorldUnitTest::~VWorldUnitTest()
{
    //dtor
}

void
VWorldUnitTest::setUp() {
	using namespace ppsim;
    _visual_world = new VisualWorld(
    10,
    10,
    PlantConfig(),
    PreyConfig(),
    PredatorConfig());
    _visual_world->set_cell_outer_radius(10);
}

void
VWorldUnitTest::tearDown() {
    if (_visual_world != nullptr) {
        delete _visual_world;
        _visual_world = nullptr;
    }
}

void
VWorldUnitTest::test_distance() {
	using namespace ppsim;
    double dist = 0;
    TPoint a(10, 10);
    TPoint b(10, 10);
    TPoint c(1, 5);
    TPoint d(5, 8);

    dist = _visual_world->distance(a, b);
    CPPUNIT_ASSERT_EQUAL((double) 0, dist);

    dist = _visual_world->distance(c, d);
    CPPUNIT_ASSERT_EQUAL((double) 5, dist);
}

void
VWorldUnitTest::test_point_to_pos() {
	using namespace ppsim;
    TPoint point;
    TPosition pos;
    TSize inn_radius;
    TSize out_radius;

    out_radius = _visual_world->get_cell_outer_radius();
    inn_radius = _visual_world->get_cell_inner_radius();

    CPPUNIT_ASSERT_EQUAL((TSize) 10, out_radius);
    CPPUNIT_ASSERT_EQUAL((TSize) 8, inn_radius);

    point.x = 65;
    point.y = 123;

    pos = _visual_world->point_to_pos(point);

    CPPUNIT_ASSERT_EQUAL((TIndex) 8, pos.x);
    CPPUNIT_ASSERT_EQUAL((TIndex) 4, pos.y);
}

// NOTE (joobog#1#): Test is difficult, because drawing area needs to be toplevel.
void
VWorldUnitTest::test_compute_visual_area() {
    _visual_world->compute_visual_area(100, 200, 300, 800, 100, 400);\
    _visual_world->set_size_request(4000, 5000);
    Gtk::Allocation allocation;
    allocation.set_x(0);
    allocation.set_y(0);
    allocation.set_width(4000);
    allocation.set_height(5000);
    _visual_world->set_allocation(allocation);
    //_visual_world->set_visible(true);
    //CPPUNIT_ASSERT( _visual_world->is_visible());
    CPPUNIT_ASSERT( _visual_world->get_is_toplevel());
    CPPUNIT_ASSERT_EQUAL((int) 4000, _visual_world->get_allocation().get_width());
}
