#include "BoundedUnitTest.h"

CPPUNIT_TEST_SUITE_REGISTRATION( BoundedUnitTest );

BoundedUnitTest::BoundedUnitTest() :
    precision(0.0001)
{
}

BoundedUnitTest::~BoundedUnitTest()
{
}

void
BoundedUnitTest::setUp() {
    ui.set_min(10);
    ui.set_max(30);
    ui = 15;

    d.set_min(45.22);
    d.set_max(223.9119);
    d = 122.9;
}

void
BoundedUnitTest::tearDown() {
}

void
BoundedUnitTest::testInit_ui () {
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 10,  ui.get_min() );
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 30, ui.get_max() );
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 15, ui.get_value() );
}

void
BoundedUnitTest::testInit_d () {
    CPPUNIT_ASSERT_EQUAL( (double) 45.22, d.get_min() );
    CPPUNIT_ASSERT_EQUAL( (double) 223.9119, d.get_max() );
    CPPUNIT_ASSERT_EQUAL( (double) 122.9, d.get_value() );
}


/*
    Addition
*/
/** \brief test addition with zero
*/
void
BoundedUnitTest::test_addition_01_1_ui() {
    ui = 15;
    ui = ui + 0;
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 15, ui.get_value() );
}

/** \brief value inside the bounds
*/
void
BoundedUnitTest::test_addition_02_1_ui() {
    ui = 15;
    ui = ui + 3;
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 18, ui.get_value() );
}

/** \brief test value exactly on the upper bound
*/
void
BoundedUnitTest::test_addition_03_1_ui() {
    ui = 18;
    ui = ui + 12;
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 30, ui.get_value() );
}

/** \brief test value beyound the upper bound
*/
void
BoundedUnitTest::test_addition_04_1_ui() {
    ui = 28;
    ui = ui + 10;
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 30, ui.get_value() );
}



/* === */



/** \brief test addition with zero
*/
void
BoundedUnitTest::test_addition_01_2_ui() {
    ui = 15;
    ui.add(0);
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 15, ui.get_value() );
}

/** \brief value inside the bounds
*/
void
BoundedUnitTest::test_addition_02_2_ui() {
    ui = 15;
    ui.add(3);
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 18, ui.get_value() );
}

/** \brief test value exactly on the upper bound
*/
void
BoundedUnitTest::test_addition_03_2_ui() {
    ui = 18;
    ui.add(12);
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 30, ui.get_value() );
}

/** \brief test value beyound the upper bound
*/
void
BoundedUnitTest::test_addition_04_2_ui() {
    ui = 28;
    ui.add(10);
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 30, ui.get_value() );
}


/* === */


/** \brief test addition with zero
*/
void
BoundedUnitTest::test_addition_01_d() {
    d = 140.78;
    d = d + 0;
    CPPUNIT_ASSERT_DOUBLES_EQUAL( (double) 140.78, d.get_value(), precision );
}

/** \brief value inside the bounds
*/
void
BoundedUnitTest::test_addition_02_d() {
    d = d + 50.39;
    CPPUNIT_ASSERT_DOUBLES_EQUAL( (double) 173.29, d.get_value(), precision );
}

/** \brief test value exactly on the upper bound
*/
void
BoundedUnitTest::test_addition_03_d() {
    d = d + 101.0119;
    CPPUNIT_ASSERT_DOUBLES_EQUAL( (double) 223.9119, d.get_value(), precision);
}

/** \brief test value beyound the upper bound
*/
void
BoundedUnitTest::test_addition_04_d() {
    d = d + 3444.223;
    CPPUNIT_ASSERT_DOUBLES_EQUAL( (double) 223.9119, d.get_value(), precision);
}



/*
    Subtraction
*/




/** \brief test subraction with zero
*/
void
BoundedUnitTest::test_subtraction_01_1_ui() {
    ui = ui - 0;
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 15, ui.get_value() );
}

/** \brief value inside the bounds
*/
void
BoundedUnitTest::test_subtraction_02_1_ui() {
    ui = ui - 3;
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 12, ui.get_value() );
}

/** \brief test value exactly on the lower bound
*/
void
BoundedUnitTest::test_subtraction_03_1_ui() {
    ui = ui - 5;
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 10, ui.get_value() );
}

/** \brief test value beyound the lower bound
*/
void
BoundedUnitTest::test_subtraction_04_1_ui() {
    ui = 15;
    ui = ui - 10;
    CPPUNIT_ASSERT_EQUAL( ui.get_min(), ui.get_value() );
}



/* === */



void
BoundedUnitTest::test_subtraction_01_2_ui() {
    ui.sub(0);
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 15, ui.get_value() );
}

/** \brief value inside the bounds
*/
void
BoundedUnitTest::test_subtraction_02_2_ui() {
    ui.sub(3);
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 12, ui.get_value() );
}

/** \brief test value exactly on the lower bound
*/
void
BoundedUnitTest::test_subtraction_03_2_ui() {
    ui.sub(5);
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 10, ui.get_value() );
}

/** \brief test value beyound the lower bound
*/
void
BoundedUnitTest::test_subtraction_04_2_ui() {
    ui = 15;
    ui.sub(10);
    CPPUNIT_ASSERT_EQUAL( ui.get_min(), ui.get_value() );
}



/* === */



/** \brief test addition with zero
*/
void
BoundedUnitTest::test_subtraction_01_d() {
    d = d - 0;
    CPPUNIT_ASSERT_DOUBLES_EQUAL( (double) 122.9, d.get_value(), precision );
}

/** \brief value inside the bounds
*/
void
BoundedUnitTest::test_subtraction_02_d() {
    d = d - 67.7512;
    CPPUNIT_ASSERT_DOUBLES_EQUAL( (double) 55.1488, d.get_value(), precision );
}

/** \brief test value exactly on the lower bound
*/
void
BoundedUnitTest::test_subtraction_03_d() {
    d = d - 77.68;
    CPPUNIT_ASSERT_DOUBLES_EQUAL( (double) 45.22, d.get_value(), precision );
}

/** \brief test value beyound the lower bound
*/
void
BoundedUnitTest::test_subtraction_04_d() {
    d = d - 1000.221;
    CPPUNIT_ASSERT_DOUBLES_EQUAL( d.get_min(), d.get_value(), precision );
}



/*
    Randomize
*/

/** \brief Randomize max - min = 0
*/
void
BoundedUnitTest::test_randomize_01_ui() {
    ui.set_min(44);
    ui.set_max(44);
    ui.randomize();
    CPPUNIT_ASSERT_EQUAL( (unsigned int) 44, ui.get_value() );
}

/** \brief Randomize max - min = 1
*/
void
BoundedUnitTest::test_randomize_02_ui() {
    ui.set_min(11);
    ui.set_max(12);
    ui.randomize();
}

/** \brief Randomize
*/
void
BoundedUnitTest::test_randomize_03_ui() {
    ui.set_min(23);
    ui.set_max(233);
    ui.randomize();
    CPPUNIT_ASSERT( (unsigned int) 23 <= ui.get_value() && (unsigned int) 233 >= ui.get_value() );
}


/*
    Quotient
*/
/** \brief test Quotient
*/
void
BoundedUnitTest::test_quotient_01_ui() {
    ui.set_min(23);
    ui.set_max(71);
    ui = 37;

    CPPUNIT_ASSERT_DOUBLES_EQUAL( (double) 37.0f / (double) 71.0f, ui.get_ratio(), precision );
}
