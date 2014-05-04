#ifndef BOUNDEDUNITTEST_H
#define BOUNDEDUNITTEST_H

#include "Bounded.h"
#include <cppunit/extensions/HelperMacros.h>


class BoundedUnitTest : public CppUnit::TestFixture{
private:
    ppsim::Bounded <unsigned int> ui;
    ppsim::Bounded <double> d;
    double precision;
public:
	BoundedUnitTest();
	virtual ~BoundedUnitTest();

	CPPUNIT_TEST_SUITE( BoundedUnitTest );
	CPPUNIT_TEST( testInit_ui );
	CPPUNIT_TEST( testInit_d );

	CPPUNIT_TEST( test_addition_01_1_ui );
    CPPUNIT_TEST( test_addition_02_1_ui );
    CPPUNIT_TEST( test_addition_03_1_ui );
    CPPUNIT_TEST( test_addition_04_1_ui );

    CPPUNIT_TEST( test_addition_01_2_ui );
    CPPUNIT_TEST( test_addition_02_2_ui );
    CPPUNIT_TEST( test_addition_03_2_ui );
    CPPUNIT_TEST( test_addition_04_2_ui );

    CPPUNIT_TEST( test_addition_01_d );
    CPPUNIT_TEST( test_addition_02_d );
    CPPUNIT_TEST( test_addition_03_d );
    CPPUNIT_TEST( test_addition_04_d );

	CPPUNIT_TEST( test_subtraction_01_1_ui );
    CPPUNIT_TEST( test_subtraction_02_1_ui );
    CPPUNIT_TEST( test_subtraction_03_1_ui );
    CPPUNIT_TEST( test_subtraction_04_1_ui );

    CPPUNIT_TEST( test_subtraction_01_2_ui );
    CPPUNIT_TEST( test_subtraction_02_2_ui );
    CPPUNIT_TEST( test_subtraction_03_2_ui );
    CPPUNIT_TEST( test_subtraction_04_2_ui );

    CPPUNIT_TEST( test_subtraction_01_d );
    CPPUNIT_TEST( test_subtraction_02_d );
    CPPUNIT_TEST( test_subtraction_03_d );
    CPPUNIT_TEST( test_subtraction_04_d );

    CPPUNIT_TEST( test_randomize_01_ui );
    CPPUNIT_TEST( test_randomize_02_ui );
    CPPUNIT_TEST( test_randomize_03_ui );

    //CPPUNIT_TEST( test_randomize_01_d );
    //CPPUNIT_TEST( test_randomize_02_d );
    //CPPUNIT_TEST( test_randomize_03_d );

    CPPUNIT_TEST( test_quotient_01_ui );
    //CPPUNIT_TEST( test_quotient_01_ui );

	CPPUNIT_TEST_SUITE_END();

public:
    void setUp();
    void tearDown();

	void testInit_ui();
	void testInit_d();

	void test_addition_01_1_ui();
	void test_addition_02_1_ui();
	void test_addition_03_1_ui();
	void test_addition_04_1_ui();

    void test_addition_01_2_ui();
	void test_addition_02_2_ui();
	void test_addition_03_2_ui();
	void test_addition_04_2_ui();

	void test_addition_01_d();
	void test_addition_02_d();
	void test_addition_03_d();
	void test_addition_04_d();

	void test_subtraction_01_1_ui();
	void test_subtraction_02_1_ui();
	void test_subtraction_03_1_ui();
	void test_subtraction_04_1_ui();

	void test_subtraction_01_2_ui();
	void test_subtraction_02_2_ui();
	void test_subtraction_03_2_ui();
	void test_subtraction_04_2_ui();

    void test_subtraction_01_d();
	void test_subtraction_02_d();
	void test_subtraction_03_d();
	void test_subtraction_04_d();

	void test_randomize_01_ui();
	void test_randomize_02_ui();
	void test_randomize_03_ui();

	//void test_randomize_01_d();
	//void test_randomize_02_d();
	//void test_randomize_03_d();

	void test_quotient_01_ui();
	//void test_quotient_01_d();
};

#endif // BOUNDEDUNITTEST_H
