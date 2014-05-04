#ifndef PREYCONFIGUNITTEST_H
#define PREYCONFIGUNITTEST_H

#include "PreyConfig.h"
#include "cppunit/extensions/HelperMacros.h"


class PreyConfigUnitTest : public CppUnit::TestFixture
{
public:

    CPPUNIT_TEST_SUITE( PreyConfigUnitTest );

    CPPUNIT_TEST( test_init );

    // age
    CPPUNIT_TEST( test_set_value_age );
    CPPUNIT_TEST( test_limits_age );
    CPPUNIT_TEST( test_scale_age );

    // energy
    CPPUNIT_TEST( test_set_value_energy );
    CPPUNIT_TEST( test_limits_energy );
    CPPUNIT_TEST( test_scale_energy );

    // satiation
    CPPUNIT_TEST( test_set_value_satiation );
    CPPUNIT_TEST( test_limits_satiation );
    CPPUNIT_TEST( test_scale_satiation );

    CPPUNIT_TEST( test_randomize );
    CPPUNIT_TEST_SUITE_END();

public:
    PreyConfigUnitTest();
    virtual ~PreyConfigUnitTest();
    void setUp();
    void tearDown();
    void test_init();

    void test_set_value_age();
    void test_limits_age();
    void test_scale_age();

    void test_set_value_energy();
    void test_limits_energy();
    void test_scale_energy();

    void test_set_value_satiation();
    void test_limits_satiation();
    void test_scale_satiation();

    void test_randomize();

protected:
    ppsim::PreyConfig* prey_config;
private:
};

#endif // PREYCONFIGUNITTEST_H
